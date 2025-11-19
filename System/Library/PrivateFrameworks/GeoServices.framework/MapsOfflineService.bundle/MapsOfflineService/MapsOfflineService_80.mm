char *sub_51777C(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = result;
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (1)
      {
        v13 = &v10[v11];
        if (*(a2 + 1) < *&v10[v11 + 8])
        {
          break;
        }

        v11 += 16;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v15 = -v12;
      v51 = a3;
      v52 = a7;
      v50 = a8;
      if (-v12 >= a6)
      {
        if (v12 == -1)
        {
          v54 = *&v10[v11];
          *&v10[v11] = *a2;
          *a2 = v54;
          return result;
        }

        v24 = v15 / 2;
        v25 = &v10[16 * (v15 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v26 = (a3 - a2) >> 4;
          v17 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v17[16 * (v26 >> 1)];
            v29 = *(v28 + 1);
            v30 = v28 + 16;
            v26 += ~(v26 >> 1);
            if (v29 < *&v25[v11 + 8])
            {
              v17 = v30;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v16 = (v17 - a2) >> 4;
        v18 = &v25[v11];
      }

      else
      {
        v16 = a6 / 2;
        v17 = &a2[16 * (a6 / 2)];
        v18 = a2;
        if (a2 - v10 != v11)
        {
          v19 = (a2 - v10 - v11) >> 4;
          v18 = &v10[v11];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[16 * (v19 >> 1)];
            v22 = *(v21 + 1);
            v23 = v21 + 16;
            v19 += ~(v19 >> 1);
            if (*(v17 + 1) < v22)
            {
              v19 = v20;
            }

            else
            {
              v18 = v23;
            }
          }

          while (v19);
        }

        v24 = (v18 - v10 - v11) >> 4;
      }

      a5 = -(v24 + v12);
      v49 = a6 - v16;
      v31 = a6;
      v32 = sub_517B1C(v18, a2, v17);
      v33 = v24;
      v34 = v32;
      if (v33 + v16 >= v31 - (v33 + v16) - v12)
      {
        a7 = v52;
        v35 = v33;
        result = sub_51777C(v32, v17, v51, a4, a5, v49, v52, v50);
        a8 = v50;
        a5 = v35;
        a3 = v34;
        a6 = v16;
        v10 = v13;
        a2 = v18;
        if (!v16)
        {
          return result;
        }
      }

      else
      {
        a7 = v52;
        result = sub_51777C(&v10[v11], v18, v32, a4, v33, v16, v52, v50);
        a8 = v50;
        a3 = v51;
        a6 = v49;
        v10 = v34;
        a2 = v17;
        if (!v49)
        {
          return result;
        }
      }
    }

    if (a5 <= a6)
    {
      if (a2 != v10)
      {
        v42 = -a7;
        v43 = a7;
        v44 = v10;
        do
        {
          v45 = *v44;
          v44 += 16;
          *v43++ = v45;
          v42 -= 16;
        }

        while (v44 != a2);
        while (a2 != a3)
        {
          if (*(a2 + 1) >= *(a7 + 8))
          {
            v46 = *a7;
            a7 += 16;
            *v10 = v46;
            v10 += 16;
            if (v43 == a7)
            {
              return result;
            }
          }

          else
          {
            v47 = *a2;
            a2 += 16;
            *v10 = v47;
            v10 += 16;
            if (v43 == a7)
            {
              return result;
            }
          }
        }

        return memmove(v10, a7, -(a7 + v42));
      }
    }

    else if (a2 != a3)
    {
      v36 = 0;
      do
      {
        *(a7 + v36) = *&a2[v36];
        v36 += 16;
      }

      while (&a2[v36] != a3);
      v37 = (a7 + v36);
      while (a2 != v10)
      {
        v38 = *(v37 - 1);
        v39 = *(a2 - 1);
        v40 = v38 < v39;
        if (v38 >= v39)
        {
          v41 = v37 - 16;
        }

        else
        {
          v41 = a2 - 16;
        }

        *(a3 - 1) = *v41;
        a3 -= 16;
        if (v40)
        {
          a2 -= 16;
        }

        else
        {
          v37 -= 16;
        }

        if (v37 == a7)
        {
          return result;
        }
      }

      if (v37 != a7)
      {
        v48 = -16;
        do
        {
          *&a3[v48] = *(v37 - 1);
          v48 -= 16;
          v37 -= 16;
        }

        while (v37 != a7);
      }
    }
  }

  return result;
}

char *sub_517B1C(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v28 = *__src;
      v7 = __src;
      memmove(__src, __src + 16, v6);
      v4 = &v7[v6];
      *v4 = v28;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v29 = *(a3 - 1);
      v8 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        v9 = __src;
        memmove(__src + 16, __src, v8);
        __src = v9;
      }

      *__src = v29;
    }

    else
    {
      v10 = v5 >> 4;
      v11 = v6 >> 4;
      if (v5 >> 4 == v6 >> 4)
      {
        v12 = __src + 16;
        v13 = a2 + 16;
        do
        {
          v14 = *(v12 - 1);
          *(v12 - 1) = *(v13 - 1);
          *(v13 - 1) = v14;
          if (v12 == a2)
          {
            break;
          }

          v12 += 16;
          v15 = v13 == a3;
          v13 += 16;
        }

        while (!v15);
        return a2;
      }

      else
      {
        v16 = v5 >> 4;
        do
        {
          v17 = v16;
          v16 = v11;
          v11 = v17 % v11;
        }

        while (v11);
        v18 = &__src[16 * v16];
        do
        {
          v19 = *(v18 - 1);
          v18 -= 16;
          v20 = &v18[v5];
          v21 = v18;
          do
          {
            v22 = v20;
            *v21 = *v20;
            v23 = (a3 - v20) >> 4;
            v24 = __OFSUB__(v10, v23);
            v26 = v10 - v23;
            v25 = (v26 < 0) ^ v24;
            v20 = &__src[16 * v26];
            if (v25)
            {
              v20 = &v22[16 * v10];
            }

            v21 = v22;
          }

          while (v20 != v18);
          *v22 = v19;
        }

        while (v18 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

void sub_517CAC(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) < *(a1 + 8))
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = (a1 + 16 * (a4 >> 1));
      v20 = a4 - (a4 >> 1);
      v21 = a1;
      if (a4 <= a6)
      {
        v27 = a5;
        v28.n128_f64[0] = sub_517EDC(a1, v19, a3, a4 >> 1, a5, a7);
        v29 = v27 + 16 * v18;
        sub_517EDC(v19, a2, a3, v20, v29, v28);
        v30 = v27 + 16 * a4;
        v31 = v29;
        while (v31 != v30)
        {
          if (*(v31 + 8) >= *(v27 + 8))
          {
            v32 = *v27;
            v27 += 16;
            *v21 = v32;
            v21 += 16;
            if (v27 == v29)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v33 = *v31;
            v31 += 16;
            *v21 = v33;
            v21 += 16;
            if (v27 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                v35 = *v31;
                v31 += 16;
                *v21 = v35;
                v21 += 16;
              }

              return;
            }
          }
        }

        while (v27 != v29)
        {
          v34 = *v27;
          v27 += 16;
          *v21 = v34;
          v21 += 16;
        }
      }

      else
      {
        sub_517CAC(a1, v19, a3, a4 >> 1, a5, a6);
        sub_517CAC(v19, a2, a3, v20, a5, a6);

        sub_51777C(v21, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (a1 != a2)
    {
      v8 = (a1 + 16);
      if ((a1 + 16) != a2)
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v12 = v10[3];
          v13 = v10[1];
          v10 = v8;
          if (v12 < v13)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *(a1 + v15 + 16) = *(a1 + v15);
              if (!v15)
              {
                v11 = a1;
                goto LABEL_11;
              }

              v16 = *(a1 + v15 - 8);
              v15 -= 16;
            }

            while (v12 < v16);
            v11 = (a1 + v15 + 16);
LABEL_11:
            *v11 = v14;
            v11[1] = v12;
          }

          v8 = v10 + 2;
          v9 += 16;
        }

        while (v10 + 2 != a2);
      }
    }
  }
}

double sub_517EDC(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 1);
      if (*(a2 - 1) >= *(a1 + 1))
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = a4 >> 1;
      v16 = &a1[v15];
      v17 = a1;
      v21 = a5;
      (sub_517CAC)();
      sub_517CAC(v16, a2, a3, a4 - v14, &v21[v15], a4 - v14);
      v22 = v16;
      while (v22 != a2)
      {
        if (*(v22 + 1) >= *(v17 + 1))
        {
          v23 = *v17++;
          a6.n128_u64[0] = v23;
          *v21++ = v23;
          if (v17 == v16)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v24 = *v22++;
          a6.n128_u64[0] = v24;
          *v21++ = v24;
          if (v17 == v16)
          {
LABEL_30:
            while (v22 != a2)
            {
              v26 = *v22++;
              a6.n128_u64[0] = v26;
              *v21++ = v26;
            }

            return a6.n128_f64[0];
          }
        }
      }

      while (v17 != v16)
      {
        v25 = *v17++;
        a6.n128_u64[0] = v25;
        *v21++ = v25;
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (*(v10 + 3) < *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (*(v10 + 3) >= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 1;
          v8 += 16;
        }

        while (a1 + 1 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

void sub_5180F4(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) < *(a1 + 8))
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = (a1 + 16 * (a4 >> 1));
      v20 = a4 - (a4 >> 1);
      v21 = a1;
      if (a4 <= a6)
      {
        v27 = a5;
        v28.n128_f64[0] = sub_518324(a1, v19, a3, a4 >> 1, a5, a7);
        v29 = v27 + 16 * v18;
        sub_518324(v19, a2, a3, v20, v29, v28);
        v30 = v27 + 16 * a4;
        v31 = v29;
        while (v31 != v30)
        {
          if (*(v31 + 8) >= *(v27 + 8))
          {
            v32 = *v27;
            v27 += 16;
            *v21 = v32;
            v21 += 16;
            if (v27 == v29)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v33 = *v31;
            v31 += 16;
            *v21 = v33;
            v21 += 16;
            if (v27 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                v35 = *v31;
                v31 += 16;
                *v21 = v35;
                v21 += 16;
              }

              return;
            }
          }
        }

        while (v27 != v29)
        {
          v34 = *v27;
          v27 += 16;
          *v21 = v34;
          v21 += 16;
        }
      }

      else
      {
        sub_5180F4(a1, v19, a3, a4 >> 1, a5, a6);
        sub_5180F4(v19, a2, a3, v20, a5, a6);

        sub_51777C(v21, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (a1 != a2)
    {
      v8 = (a1 + 16);
      if ((a1 + 16) != a2)
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v12 = v10[3];
          v13 = v10[1];
          v10 = v8;
          if (v12 < v13)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *(a1 + v15 + 16) = *(a1 + v15);
              if (!v15)
              {
                v11 = a1;
                goto LABEL_11;
              }

              v16 = *(a1 + v15 - 8);
              v15 -= 16;
            }

            while (v12 < v16);
            v11 = (a1 + v15 + 16);
LABEL_11:
            *v11 = v14;
            v11[1] = v12;
          }

          v8 = v10 + 2;
          v9 += 16;
        }

        while (v10 + 2 != a2);
      }
    }
  }
}

double sub_518324(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 1);
      if (*(a2 - 1) >= *(a1 + 1))
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = a4 >> 1;
      v16 = &a1[v15];
      v17 = a1;
      v21 = a5;
      (sub_5180F4)();
      sub_5180F4(v16, a2, a3, a4 - v14, &v21[v15], a4 - v14);
      v22 = v16;
      while (v22 != a2)
      {
        if (*(v22 + 1) >= *(v17 + 1))
        {
          v23 = *v17++;
          a6.n128_u64[0] = v23;
          *v21++ = v23;
          if (v17 == v16)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v24 = *v22++;
          a6.n128_u64[0] = v24;
          *v21++ = v24;
          if (v17 == v16)
          {
LABEL_30:
            while (v22 != a2)
            {
              v26 = *v22++;
              a6.n128_u64[0] = v26;
              *v21++ = v26;
            }

            return a6.n128_f64[0];
          }
        }
      }

      while (v17 != v16)
      {
        v25 = *v17++;
        a6.n128_u64[0] = v25;
        *v21++ = v25;
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (*(v10 + 3) < *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (*(v10 + 3) >= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 1;
          v8 += 16;
        }

        while (a1 + 1 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

void sub_51853C()
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
  xmmword_27904E0 = 0u;
  *algn_27904F0 = 0u;
  dword_2790500 = 1065353216;
  sub_3A9A34(&xmmword_27904E0, v0);
  sub_3A9A34(&xmmword_27904E0, v3);
  sub_3A9A34(&xmmword_27904E0, __p);
  sub_3A9A34(&xmmword_27904E0, v9);
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
    qword_27904B8 = 0;
    qword_27904C0 = 0;
    qword_27904B0 = 0;
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

void sub_518784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27904C8)
  {
    qword_27904D0 = qword_27904C8;
    operator delete(qword_27904C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_518830(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_527724((a1 + 2), a4);
  v8[23] = 19;
  strcpy(v8, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v7 = sub_3AEC94(a2, v8, __p);
  sub_EE90((a1 + 199), v7);
}

void sub_518AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_3D2A1C(v24 + 2168);
  sub_528A1C(v24 + 2048);
  sub_321B00(v24 + 1592);
  sub_528AB4(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_518B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  sub_1A104(&a22);
  if (a18 < 0)
  {
    operator delete(__p);
    sub_528AB4(v22 + 16);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x518B04);
}

void **sub_518B48(void **a1)
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
        v3 = sub_52E078(v3 - 2608);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_518BA4(unsigned __int8 *a1, unsigned int ***a2)
{
  sub_518C74(a1, a2);
  v4 = *a2;
  for (i = a2[1]; v4 != i; v4 += 976)
  {
    sub_518FF4(a1, v4, &__p);
    sub_539994((a1 + 2248), &__p, v4);
    v6 = __p;
    if (__p)
    {
      v7 = v10;
      v8 = __p;
      if (v10 != __p)
      {
        do
        {
          v7 = sub_52E078(v7 - 2608);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v10 = v6;
      operator delete(v8);
    }
  }
}

void sub_518C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_518B48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_518C74(uint64_t result, unsigned int ***a2)
{
  v2 = result;
  v3 = *a2;
  v4 = a2[1];
  *(result + 2128) = 0x4FBCDA3AC10C9715 * ((v4 - *a2) >> 7);
  if (*(result + 1238) & 1) != 0 || (*(result + 1236) & 1) != 0 || (*(result + 1237) & 1) != 0 || (*(result + 1239) & 1) != 0 || (*(result + 1240) & 1) != 0 || (*(result + 1241) & 1) != 0 || (*(result + 1242) & 1) != 0 || (*(result + 1244) & 1) != 0 || (*(result + 1247) & 1) != 0 || (*(result + 1245) & 1) != 0 || (*(result + 1246))
  {
    v5 = 1;
    if (*(result + 1579) == 1)
    {
      goto LABEL_13;
    }

LABEL_16:
    LOBYTE(v6) = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v5 = *(result + 2097);
  if (*(result + 1579) != 1)
  {
    goto LABEL_16;
  }

LABEL_13:
  v6 = *(result + 2123);
  if (((v5 | v6) & 1) == 0)
  {
    return result;
  }

LABEL_17:
  *(result + 2138) = v6 & 1;
  if (v3 == v4)
  {
    return result;
  }

  if (v5)
  {
    while (1)
    {
      v7 = sub_68C850(v3);
      if (v7 < 0)
      {
        v8 = -5;
      }

      else
      {
        v8 = 5;
      }

      v9 = ceil((v7 / 10 + (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
      if (v9 >= 0.0)
      {
        if (v9 < 4.50359963e15)
        {
          v10 = (v9 + v9) + 1;
          goto LABEL_29;
        }
      }

      else if (v9 > -4.50359963e15)
      {
        v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_29:
        v9 = (v10 >> 1);
      }

      v11 = v9;
      if (sub_68D828(v3, 4) & 1) != 0 || (sub_68D828(v3, 9))
      {
        v12 = *(v2 + 2140);
        if (v12 >= v11)
        {
          v12 = v11;
        }

        *(v2 + 2140) = v12;
        if ((sub_68D828(v3, 5) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        *(v2 + 2136) = 0;
        v14 = *(v2 + 2144);
        if (v14 >= v11)
        {
          v14 = v11;
        }

        *(v2 + 2144) = v14;
        if ((sub_68D828(v3, 5) & 1) == 0)
        {
LABEL_42:
          *(v2 + 2137) = 0;
          if (!sub_68F064(v3))
          {
            goto LABEL_46;
          }

LABEL_43:
          v15 = *(v2 + 2152);
          if (v15 >= v11)
          {
            v15 = v11;
          }

          *(v2 + 2152) = v15;
          goto LABEL_46;
        }
      }

      v13 = *(v2 + 2148);
      if (v13 >= v11)
      {
        v13 = v11;
      }

      *(v2 + 2148) = v13;
      if (sub_68F064(v3))
      {
        goto LABEL_43;
      }

LABEL_46:
      if (sub_68EF88(v3))
      {
        v16 = *(v2 + 2156);
        if (v16 >= v11)
        {
          v16 = v11;
        }

        *(v2 + 2156) = v16;
      }

      v17 = sub_68F104(v3);
      v18 = *(v2 + 2088);
      v19 = v18 * sub_68C7DC(v3);
      if (v19 >= 0.0)
      {
        if (v19 < 4.50359963e15)
        {
          v20 = (v19 + v19) + 1;
          goto LABEL_55;
        }
      }

      else if (v19 > -4.50359963e15)
      {
        v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
LABEL_55:
        v19 = (v20 >> 1);
      }

      if (v17 >= v19)
      {
        v21 = *(v2 + 2160);
        if (v21 >= v11)
        {
          v21 = v11;
        }

        *(v2 + 2160) = v21;
      }

      result = sub_68F890(v3);
      *(v2 + 2138) &= result ^ 1;
      v3 += 976;
      if (v3 == v4)
      {
        return result;
      }
    }
  }

  do
  {
    result = sub_68F890(v3);
    *(v2 + 2138) &= result ^ 1;
    v3 += 976;
  }

  while (v3 != v4);
  return result;
}

uint64_t sub_518FF4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_519304(a1, a3);
  sub_5193C8(a1, a2, a3);
  sub_519C5C(a1, a2, a3);
  sub_51A594(a1, a2, a3);
  sub_51AB8C(a1, a2, a3);
  sub_51AD58(a1, a2, a3);
  sub_51AF08(a1, a2, a3);
  sub_51B108(a1, a2, a3);
  sub_51B240(a1, a2, a3);
  sub_51B408(a1, a2, a3);
  sub_5DF518((a1 + 2168), a2, __p);
  if (sub_51BBA8(__p))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52D920(a3, __p);
    }

    else
    {
      sub_52DA74(a3[1], __p);
      v7 = v6 + 2608;
    }

    a3[1] = v7;
  }

  sub_52E078(__p);
  if (a1[2138] == 1)
  {
    v19 = 51;
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_528BA0(a3, &v19);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_528DAC(v8, 51, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v8 + 2608;
    }

    a3[1] = v9;
  }

  v10 = nullsub_1(a2);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    do
    {
      sub_51B570(a1, v11, a3);
      v11 += 1582;
    }

    while (v11 != v12);
  }

  v13 = a3[1];
  v14 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((v13 - *a3) >> 4));
  if (v13 == *a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_531B08(*a3, v13, __p, v15, 1);
  return sub_534BE0(a3);
}

void sub_519204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  sub_518B48(v15);
  _Unwind_Resume(a1);
}

void sub_51922C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_52E078(va);
  sub_518B48(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_519290(uint64_t *a1, int *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v5 = sub_528BA0(a1, a2);
    a1[1] = v5;
    return v5 - 2608;
  }

  else
  {
    sub_528D34(a1, a1[1], a2);
    a1[1] = v3 + 2608;
    a1[1] = v3 + 2608;
    return v3;
  }
}

uint64_t sub_519304(uint64_t a1, uint64_t *a2)
{
  result = sub_E6F06C(a1 + 1256);
  if (result && *(a1 + 2109) == 1)
  {
    v6 = 46;
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      result = sub_528BA0(a2, &v6);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      sub_528DAC(v5, 46, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      result = v5 + 2608;
      a2[1] = v5 + 2608;
    }

    a2[1] = result;
  }

  return result;
}

void sub_5193A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5193C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_68D828(a2, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_68D828(a2, 9);
  }

  v7 = sub_68D828(a2, 5);
  v8 = sub_68C850(a2);
  if (v8 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = ceil((v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v11 = (v10 + v10) + 1;
      goto LABEL_12;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_12:
    v10 = (v11 >> 1);
  }

  v12 = v10;
  if (*(a1 + 2097) != 1 || v6 & 1 | ((sub_68D7D8(a2) & 1) == 0))
  {
    v13 = 0;
    if (*(a1 + 1241) == 1)
    {
      goto LABEL_16;
    }

LABEL_31:
    v14 = 0;
    if (*(a1 + 1451))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v15 = *(a1 + 2140);
  v13 = v15 < *(a1 + 2144) && v15 < v12;
  if (*(a1 + 1241) != 1)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((*(a1 + 1431) & 1) != 0 || *(a1 + 2136) != 1)
  {
    v14 = 0;
    if ((v6 & 1) == 0)
    {
LABEL_19:
      v13 |= *(a1 + 2140) < v12;
      if (*(a1 + 1451))
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v14 = *(a1 + 2128) > 1uLL;
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (*(a1 + 1451))
  {
LABEL_37:
    if (*(a1 + 1431) & v6)
    {
      if (sub_68D828(a2, 4))
      {
        v18 = sub_68F6D8(a2);
        LODWORD(__p) = 0;
        *v46 = 0u;
        memset(v47, 0, sizeof(v47));
        if (&v47[1] != v18)
        {
          if (*(v18 + 23) < 0)
          {
            sub_13A68(&v47[1], *v18, *(v18 + 8));
          }

          else
          {
            v19 = *v18;
            v47[3] = *(v18 + 16);
            *&v47[1] = v19;
          }
        }

        v20 = a3[1];
        if (v20 >= a3[2])
        {
          v21 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v21 = v20 + 2608;
          a3[1] = v20 + 2608;
        }

        a3[1] = v21;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v22 = v46[0];
        if (v46[0])
        {
          v23 = v46[1];
          v24 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v23 = sub_52A624(v23 - 168);
            }

            while (v23 != v22);
            v24 = v46[0];
          }

          v46[1] = v22;
          operator delete(v24);
        }
      }

      if (sub_68D828(a2, 9))
      {
        sub_690E18(a2, &v43);
        memset(v47, 0, sizeof(v47));
        *v46 = 0u;
        LODWORD(__p) = 1;
        sub_52ABAC(v46, v43, v44, 0xCF3CF3CF3CF3CF3DLL * ((v44 - v43) >> 3));
        v25 = a3[1];
        if (v25 >= a3[2])
        {
          v26 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v26 = v25 + 2608;
          a3[1] = v25 + 2608;
        }

        a3[1] = v26;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v27 = v46[0];
        if (v46[0])
        {
          v28 = v46[1];
          v29 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v28 = sub_52A624(v28 - 168);
            }

            while (v28 != v27);
            v29 = v46[0];
          }

          v46[1] = v27;
          operator delete(v29);
        }

        v30 = v43;
        if (v43)
        {
          v31 = v44;
          v32 = v43;
          if (v44 != v43)
          {
            do
            {
              v31 = sub_52A624((v31 - 168));
            }

            while (v31 != v30);
            v32 = v43;
          }

          v44 = v30;
          operator delete(v32);
        }
      }
    }

    goto LABEL_70;
  }

LABEL_32:
  if ((v6 ^ 1))
  {
    goto LABEL_37;
  }

  LODWORD(v43) = 21;
  v17 = a3[1];
  if (v17 >= a3[2])
  {
    a3[1] = sub_528BA0(a3, &v43);
  }

  else
  {
    __p = 0;
    v46[0] = 0;
    v46[1] = 0;
    sub_528DAC(v17, 21, &__p);
    if (SHIBYTE(v46[1]) < 0)
    {
      operator delete(__p);
    }

    a3[1] = v17 + 2608;
    a3[1] = v17 + 2608;
  }

LABEL_70:
  if (*(a1 + 1242) != 1)
  {
    if (!v14)
    {
      if (!v13)
      {
        return;
      }

      goto LABEL_106;
    }

    v35 = 0;
LABEL_90:
    LODWORD(v43) = 0;
    v36 = a3[1];
    if (v36 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v36, 0, &__p);
      goto LABEL_92;
    }

    goto LABEL_100;
  }

  if (*(a1 + 1431))
  {
    if (v7)
    {
      LODWORD(v43) = 13;
      v33 = a3[1];
      if (v33 >= a3[2])
      {
        v42 = sub_528BA0(a3, &v43);
        v34 = 0;
        v35 = 0;
        a3[1] = v42;
      }

      else
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v33, 13, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        a3[1] = v33 + 2608;
        v34 = 0;
        v35 = 0;
        a3[1] = v33 + 2608;
      }
    }

    else
    {
      v34 = 0;
      v35 = *(a1 + 2148) < v12;
    }

    goto LABEL_89;
  }

  if (*(a1 + 2137) == 1)
  {
    v34 = *(a1 + 2128) > 1uLL;
    if ((v7 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v34 = 0;
    if ((v7 & 1) == 0)
    {
LABEL_81:
      v35 = *(a1 + 2148) < v12;
      if (v14 && v34)
      {
        goto LABEL_82;
      }

LABEL_89:
      if (v14)
      {
        goto LABEL_90;
      }

      if (!v34)
      {
        goto LABEL_102;
      }

      LODWORD(v43) = 1;
      v37 = a3[1];
      if (v37 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v37, 1, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v38 = v37 + 2608;
        a3[1] = v37 + 2608;
        goto LABEL_101;
      }

LABEL_100:
      v38 = sub_528BA0(a3, &v43);
LABEL_101:
      a3[1] = v38;
      goto LABEL_102;
    }
  }

  v35 = 0;
  if (!v14 || !v34)
  {
    goto LABEL_89;
  }

LABEL_82:
  LODWORD(v43) = 2;
  v36 = a3[1];
  if (v36 >= a3[2])
  {
    goto LABEL_100;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v36, 2, &__p);
LABEL_92:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v36 + 2608;
  a3[1] = v36 + 2608;
LABEL_102:
  if ((v13 & v35) != 1)
  {
    if ((v13 & 1) == 0)
    {
      if (!v35)
      {
        return;
      }

      LODWORD(v43) = 4;
      v40 = a3[1];
      if (v40 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v40, 4, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v41 = v40 + 2608;
        a3[1] = v40 + 2608;
        goto LABEL_117;
      }

LABEL_116:
      v41 = sub_528BA0(a3, &v43);
LABEL_117:
      a3[1] = v41;
      return;
    }

LABEL_106:
    LODWORD(v43) = 3;
    v39 = a3[1];
    if (v39 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v39, 3, &__p);
      goto LABEL_108;
    }

    goto LABEL_116;
  }

  LODWORD(v43) = 5;
  v39 = a3[1];
  if (v39 >= a3[2])
  {
    goto LABEL_116;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v39, 5, &__p);
LABEL_108:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v39 + 2608;
  a3[1] = v39 + 2608;
}

void sub_519B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_51B6E0((v21 + 8));
  _Unwind_Resume(a1);
}

void sub_519B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v24 + 8) = v25;
  _Unwind_Resume(exception_object);
}

void sub_519C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v17 + 8) = v18;
  _Unwind_Resume(exception_object);
}

void sub_519C5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!sub_6905BC(a2))
  {
    return;
  }

  if (sub_68D944(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 8;
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v6, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v8 = sub_E6F454(a1 + 1256);
  if (v8 == 0x7FFFFFFF || v8 < *(a1 + 2104))
  {
    goto LABEL_18;
  }

  v9 = sub_E6F454(a1 + 1256);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 9;
  *&v39[40] = v9;
  v10 = a3[1];
  if (v10 >= a3[2])
  {
    v11 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v10, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v10 + 2608;
    a3[1] = v10 + 2608;
  }

  a3[1] = v11;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_18:
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 1545))
  {
    goto LABEL_28;
  }

  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 7;
  v12 = a3[1];
  if (v12 >= a3[2])
  {
    v13 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v12, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v12 + 2608;
    a3[1] = v12 + 2608;
  }

  a3[1] = v13;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_28:
    if (*(a1 + 2111) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  operator delete(v40);
  if (*(a1 + 2111) != 1)
  {
    goto LABEL_40;
  }

LABEL_29:
  if (sub_E6F0DC(a1 + 1256) && sub_E6F36C(a1 + 1256))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 10;
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v15 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v14, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v14 + 2608;
      a3[1] = v14 + 2608;
    }

    a3[1] = v15;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_40:
  if (*(a1 + 2112) == 1 && *(a1 + 1545) == 1 && sub_68D938(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 11;
    v16 = a3[1];
    if (v16 >= a3[2])
    {
      v17 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v16, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v16 + 2608;
      a3[1] = v16 + 2608;
    }

    a3[1] = v17;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v18 = sub_453478(a2);
  if (!v18)
  {
    sub_6900C0(a2, &v37);
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *v39 = 0;
    *&v39[8] = v37;
    *&v39[24] = v38;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
LABEL_84:
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      a3[1] = v23 + 2608;
      return;
    }

    v24 = sub_52B080(a3, v39);
    goto LABEL_94;
  }

  v19 = v18;
  if (*(a1 + 1545))
  {
    goto LABEL_65;
  }

  v20 = sub_68C454(a2, 0);
  v21 = sub_69B1BC(v20);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 1;
  *&v39[24] = 0;
  *&v39[32] = v19;
  if (&v40 != v21)
  {
    if (*(v21 + 23) < 0)
    {
      sub_13A68(&v40, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      v41 = *(v21 + 16);
      v40 = v22;
    }
  }

  v25 = a3[1];
  if (v25 >= a3[2])
  {
    v26 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    *__p = v40;
    v45 = v41;
    v40 = 0uLL;
    v41 = 0;
    sub_52B230(v25, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v26 = v25 + 2608;
    a3[1] = v25 + 2608;
  }

  a3[1] = v26;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_65:
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  if (sub_68F5E4(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    if (v19 == 1)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = v27;
    v28 = a3[1];
    if (v28 >= a3[2])
    {
      v29 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v28, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = v28 + 2608;
      a3[1] = v28 + 2608;
    }

    a3[1] = v29;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_79:
  v30 = sub_4536C8(a2, 10);
  v31 = sub_E6F808(a1 + 1256, 10);
  if (!sub_4D1F6C(a2))
  {
    v32 = sub_68C454(a2, 0);
    v33 = sub_73F54(v32);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);
    while (v34 != v35)
    {
      if (*v34 != 10 && (sub_96E04(v34) & 1) != 0)
      {
        return;
      }

      v34 += 16;
    }
  }

  if (!v31 && (*(a1 + 2113) & 1) != 0 && v30)
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 12;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
      goto LABEL_84;
    }

    v24 = sub_52B080(a3, v39);
LABEL_94:
    v36 = SHIBYTE(v41);
    a3[1] = v24;
    if (v36 < 0)
    {
      operator delete(v40);
    }
  }
}

void sub_51A420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_51A594(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_68C850(a2);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = ceil((v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_10:
  v10 = v8;
  if (*(a1 + 1237) != 1)
  {
    v12 = 0;
    v11 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!sub_68EFF0(a2) || sub_68F064(a2))
  {
    v11 = 0;
    if (sub_68EFF0(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  v11 = *(a1 + 2152) < v10;
  if (!sub_68EFF0(a2))
  {
LABEL_24:
    v12 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (sub_68EF88(a2))
    {
      v13 = 0;
      v14 = 1;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = 0;
      v13 = *(a1 + 2156) < v10;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v15 = 0;
    v16 = 0;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

LABEL_14:
  v12 = sub_68F064(a2);
  if (*(a1 + 1238) == 1)
  {
    goto LABEL_17;
  }

LABEL_25:
  v14 = 0;
  v13 = 0;
  if (*(a1 + 1236) != 1)
  {
    goto LABEL_21;
  }

LABEL_26:
  v17 = sub_68F104(a2);
  v18 = *(a1 + 2088);
  v19 = v18 * sub_68C7DC(a2);
  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_32:
  if (v17 >= v19)
  {
    v15 = 0;
    v16 = 1;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = 0;
    v15 = *(a1 + 2160) < v10;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_36:
  if (*(a1 + 2110) == 1)
  {
    v32 = 47;
    v21 = a3[1];
    if (v21 >= a3[2])
    {
      v22 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v21, 47, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v22 = v21 + 2608;
      a3[1] = v21 + 2608;
    }

    a3[1] = v22;
  }

LABEL_43:
  if (v11 && v13 && v15)
  {
    v32 = 11;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 11, &__p);
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  if (v11 && v13)
  {
    v32 = 9;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 9, &__p);
      goto LABEL_55;
    }

LABEL_58:
    p_p = &v32;
LABEL_59:
    a3[1] = sub_528BA0(a3, p_p);
    goto LABEL_60;
  }

  if (v11 && v15)
  {
    v32 = 10;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 10, &__p);
LABEL_55:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_57;
  }

  if (v13 && v15)
  {
    v32 = 12;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 12, &__p);
    goto LABEL_55;
  }

  if (v11)
  {
    LODWORD(__p) = 6;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      sub_528D34(a3, a3[1], &__p);
LABEL_57:
      a3[1] = v23 + 2608;
      a3[1] = v23 + 2608;
      goto LABEL_60;
    }

    p_p = &__p;
    goto LABEL_59;
  }

  if (v13)
  {
    v31 = 7;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_60;
    }

    v31 = 8;
  }

  LODWORD(__p) = v31;
  sub_519290(a3, &__p);
LABEL_60:
  if (v12)
  {
    v32 = 14;
    v25 = a3[1];
    if (v25 >= a3[2])
    {
      v26 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v25, 14, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v26 = v25 + 2608;
      a3[1] = v25 + 2608;
    }

    a3[1] = v26;
  }

  if (v16)
  {
    v32 = 15;
    v27 = a3[1];
    if (v27 >= a3[2])
    {
      v28 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v27, 15, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v28 = v27 + 2608;
      a3[1] = v27 + 2608;
    }

    a3[1] = v28;
  }

  if (v14)
  {
    v32 = 16;
    v29 = a3[1];
    if (v29 >= a3[2])
    {
      v30 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v29, 16, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v30 = v29 + 2608;
      a3[1] = v29 + 2608;
    }

    a3[1] = v30;
  }
}

void sub_51AB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

uint64_t sub_51AB8C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (*(result + 2099) == 1)
  {
    v5 = result;
    result = sub_68EF20(a2);
    if (result)
    {
      v9 = 40;
      v6 = a3[1];
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v9);
      }

      else
      {
        __p = 0;
        v11 = 0;
        v12 = 0;
        sub_528DAC(v6, 40, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        result = v6 + 2608;
        a3[1] = v6 + 2608;
      }

      a3[1] = result;
    }

    if (*(v5 + 1246) == 1)
    {
      result = sub_68F064(a2);
      if (result)
      {
        v9 = 43;
        v7 = a3[1];
        if (v7 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v7, 43, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v7 + 2608;
          a3[1] = v7 + 2608;
        }

        a3[1] = result;
      }
    }

    if (*(v5 + 1247) == 1)
    {
      result = sub_68EF88(a2);
      if (result)
      {
        v9 = 44;
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v8, 44, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v8 + 2608;
          a3[1] = v8 + 2608;
        }

        a3[1] = result;
      }
    }
  }

  return result;
}

void sub_51AD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_51AD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_51AD58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_690D80(a2, &v20);
  sub_690F48(a2, &__p);
  sub_690EB0(a2, &v16);
  if (v20 != v21 || __p != v19 || (v5 = v16, v16 != v17))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_529D50(a3, &v20, &__p, &v16);
    }

    else
    {
      sub_529EBC(a3[1], &v20, &__p, &v16);
      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    v5 = v16;
  }

  if (v5)
  {
    v8 = v17;
    v9 = v5;
    if (v17 != v5)
    {
      do
      {
        v8 = sub_52A624(v8 - 168);
      }

      while (v8 != v5);
      v9 = v16;
    }

    v17 = v5;
    operator delete(v9);
  }

  v10 = __p;
  if (__p)
  {
    v11 = v19;
    v12 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = sub_52A624(v11 - 168);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v19 = v10;
    operator delete(v12);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v14 = sub_52A624(v14 - 168);
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }
}

void sub_51AEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_51B6E0(va);
  sub_51B6E0(va1);
  sub_51B6E0((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_51AF08(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C454(a2, 0);
  v7 = sub_45AC50(v6);
  v8 = (a1 + 1512);
  if (*(a1 + 1535) < 0)
  {
    v9 = *(a1 + 1520);
    if (v9)
    {
      sub_325C(v23, *v8, v9);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 1535))
  {
    *v23 = *v8;
    v24 = *(a1 + 1528);
    goto LABEL_7;
  }

  sub_51B7A8(*(a1 + 8), *(v7 + 32) | (*(v7 + 36) << 32), v23);
LABEL_7:
  v10 = sub_68F328(a2);
  v22 = 0;
  v11 = 0uLL;
  *__p = 0u;
  v12 = *v10;
  v13 = v10[1];
  if (*v10 != v13)
  {
    do
    {
      if (sub_658A08(v12 + 744, 0))
      {
        v15 = __p[1];
        if (__p[1] >= v22)
        {
          v14 = sub_52B440(__p, v12, v23);
        }

        else
        {
          sub_52B5A4(__p[1], v12, v23);
          v14 = v15 + 2608;
        }

        __p[1] = v14;
      }

      v12 += 1120;
    }

    while (v12 != v13);
    v11 = *__p;
  }

  v16 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((*(&v11 + 1) - v11) >> 4));
  if (*(&v11 + 1) == v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_531B08(v11, *(&v11 + 1), &v25, v17, 1);
  sub_51B90C(__p[0], __p[1], a3);
  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = sub_52E078(v19 - 2608);
      }

      while (v19 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_51B0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_51B108(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 2122) == 1)
  {
    v4 = sub_68F370(a2);
    v14 = 0;
    v5 = 0uLL;
    *__p = 0u;
    v6 = *v4;
    v7 = v4[1];
    if (*v4 != v7)
    {
      do
      {
        if (sub_658A08(v6 + 744, 1))
        {
          v9 = __p[1];
          if (__p[1] >= v14)
          {
            v8 = sub_52C6A4(__p, v6);
          }

          else
          {
            sub_52C7F8(__p[1], v6);
            v8 = v9 + 2608;
          }

          __p[1] = v8;
        }

        v6 += 1120;
      }

      while (v6 != v7);
      v5 = *__p;
    }

    sub_51B90C(v5, *(&v5 + 1), a3);
    v10 = __p[0];
    if (__p[0])
    {
      v11 = __p[1];
      v12 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v11 = sub_52E078(v11 - 2608);
        }

        while (v11 != v10);
        v12 = __p[0];
      }

      __p[1] = v10;
      operator delete(v12);
    }
  }
}

uint64_t sub_51B240(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 1479) != 1)
  {
    return result;
  }

  v5 = result;
  result = sub_3B6890(*result);
  v7 = *result;
  v6 = *(result + 4);
  if (*result == 0x7FFFFFFF || v7 <= v6)
  {
    return result;
  }

  v9 = *(result + 8);
  result = sub_68F8AC();
  if (result)
  {
    return result;
  }

  if (v9 == 1)
  {
    v11 = sub_68C848(a2);
    v12 = *(v5 + 2100);
    *&v15 = __PAIR64__(v6, v7);
    DWORD2(v15) = 1;
    HIDWORD(v15) = v11;
    v16 = v12;
    v10 = a3[1];
    if (v10 < a3[2])
    {
LABEL_13:
      result = sub_52D71C(a3[1], &v15);
      a3[1] = v10 + 2608;
      a3[1] = v10 + 2608;
      return result;
    }

LABEL_14:
    result = sub_52D5C8(a3, &v15);
    a3[1] = result;
    return result;
  }

  if (!v9)
  {
    v16 = 0;
    *&v15 = __PAIR64__(v6, v7);
    *(&v15 + 1) = 0x7FFFFFFF00000000;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v15);
    sub_4A5C(&v15, "Unknown timepoint type given.", 29);
    sub_1959680(&v15, __p);
    sub_7E854(__p, 1u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_1959728(&v15);
  }

  return result;
}

void sub_51B3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_51B408(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 2108) == 1)
  {
    v4 = result;
    result = sub_68F8AC();
    if (!result && *(v4 + 1479) == 1)
    {
      v5 = *a3;
      v6 = a3[1];
      if (*a3 != v6)
      {
        do
        {
          v7 = v5[352];
          if (v7)
          {
            if (v7 == 1)
            {
              v8 = v5[350];
              v9 = v8 != 0x7FFFFFFF && v5[351] < v8;
              if (v9 && v5[353] != 0x7FFFFFFF)
              {
                return result;
              }
            }
          }

          else
          {
            v10 = v5[350];
            if (v10 != 0x7FFFFFFF && v5[351] < v10)
            {
              return result;
            }
          }

          v5 += 652;
        }

        while (v5 != v6);
      }

      v11 = 45;
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v11);
        a3[1] = result;
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
        sub_528DAC(v6, 45, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        result = v6 + 2608;
        a3[1] = v6 + 2608;
        a3[1] = v6 + 2608;
      }
    }
  }

  return result;
}

void sub_51B550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_51B570(unsigned __int8 *a1, void *a2, uint64_t *a3)
{
  sub_51BCB0(a1, a2);
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      sub_51BFCC(a1, a2, i);
    }
  }

  sub_51C348(a1, a2);
  sub_51C678(a1, a2);
  sub_51C7CC(a1, a2);
  sub_51C880(a1, a2);
  sub_52E208(a3, a3[1], 0, 0, 0);
}

void **sub_51B6E0(void **a1)
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
        v3 = sub_52A624(v3 - 168);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_51B73C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_52A624(v3 - 168);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

int *sub_51B7A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = sub_2B51D8(a1, a2);
  v6 = (v5 - *v5);
  if (*v6 >= 0xDu && (v7 = v6[6]) != 0)
  {
    v8 = 4 * *(v5 + v7);
  }

  else
  {
    v8 = 0;
  }

  result = sub_2AF704(a1 + 3896, 1u, 0);
  v10 = (result - *result);
  if (*v10 < 0xBu)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10[5];
    if (v11)
    {
      v11 += result + *(result + v11);
    }
  }

  v12 = (v11 + v8 + 4 + *(v11 + v8 + 4));
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = (v12 + v14);
    v16 = *v15;
    v17 = *(v15 + v16);
    if (v17 >= 0x17)
    {
      operator new();
    }

    a3[23] = v17;
    if (v17)
    {
      result = memcpy(a3, v15 + v16 + 4, v17);
    }

    a3[v17] = 0;
  }

  else
  {
    a3[23] = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t *sub_51B90C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a3[1];
    do
    {
      while (v6 >= a3[2])
      {
        v6 = sub_52C3D8(a3, v5);
        a3[1] = v6;
        v5 += 2608;
        if (v5 == a2)
        {
          return a3;
        }
      }

      _X27 = v5 + 9200;
      _X28 = v5 + 9072;
      _X23 = v5 + 9000;
      _X8 = v5 + 7824;
      __asm { PRFM            #0, [X8] }

      *v6 = *v5;
      v16 = *(v5 + 8);
      *(v6 + 24) = *(v5 + 24);
      *(v6 + 8) = v16;
      *(v5 + 16) = 0u;
      *(v5 + 8) = 0;
      sub_529850(v6 + 32, v5 + 32);
      v17 = *(v5 + 1152);
      *(v6 + 1168) = *(v5 + 1168);
      *(v6 + 1152) = v17;
      *(v5 + 1152) = 0u;
      *(v5 + 1168) = 0;
      *(v6 + 1192) = 0;
      *(v6 + 1176) = 0u;
      __asm { PRFM            #0, [X23] }

      *(v6 + 1176) = *(v5 + 1176);
      *(v6 + 1184) = *(v5 + 1184);
      *(v5 + 1192) = 0;
      *(v5 + 1176) = 0u;
      *(v6 + 1216) = 0;
      *(v6 + 1200) = 0u;
      *(v6 + 1200) = *(v5 + 1200);
      *(v6 + 1216) = *(v5 + 1216);
      *(v5 + 1216) = 0;
      *(v5 + 1200) = 0u;
      *(v6 + 1240) = 0;
      *(v6 + 1224) = 0u;
      *(v6 + 1224) = *(v5 + 1224);
      *(v6 + 1232) = *(v5 + 1232);
      *(v5 + 1240) = 0;
      *(v5 + 1224) = 0u;
      __asm { PRFM            #0, [X28] }

      *(v6 + 1248) = *(v5 + 1248);
      *(v6 + 1256) = 0;
      *(v6 + 1264) = 0u;
      *(v6 + 1256) = *(v5 + 1256);
      *(v6 + 1264) = *(v5 + 1264);
      *(v5 + 1272) = 0;
      *(v5 + 1256) = 0u;
      v20 = *(v5 + 1280);
      *(v6 + 1296) = *(v5 + 1296);
      *(v6 + 1280) = v20;
      *(v5 + 1280) = 0;
      *(v5 + 1288) = 0u;
      v21 = *(v5 + 1304);
      v22 = *(v5 + 1320);
      *(v6 + 1332) = *(v5 + 1332);
      *(v6 + 1304) = v21;
      *(v6 + 1320) = v22;
      v23 = *(v5 + 1352);
      *(v6 + 1368) = *(v5 + 1368);
      *(v6 + 1352) = v23;
      *(v5 + 1360) = 0u;
      *(v5 + 1352) = 0;
      *(v6 + 1392) = 0;
      *(v6 + 1376) = 0u;
      __asm { PRFM            #0, [X27] }

      *(v6 + 1376) = *(v5 + 1376);
      *(v6 + 1392) = *(v5 + 1392);
      *(v5 + 1392) = 0;
      *(v5 + 1376) = 0u;
      v25 = *(v5 + 1400);
      *(v6 + 1416) = *(v5 + 1416);
      *(v6 + 1400) = v25;
      v26 = *(v5 + 1424);
      *(v6 + 1440) = *(v5 + 1440);
      *(v6 + 1424) = v26;
      *(v5 + 1432) = 0u;
      *(v5 + 1424) = 0;
      v27 = *(v5 + 1448);
      *(v6 + 1456) = *(v5 + 1456);
      *(v6 + 1448) = v27;
      v28 = *(v5 + 1464);
      *(v6 + 1480) = *(v5 + 1480);
      *(v6 + 1464) = v28;
      *(v5 + 1480) = 0;
      *(v5 + 1464) = 0u;
      sub_529850(v6 + 1488, v5 + 1488);
      v6 += 2608;
      a3[1] = v6;
      v5 += 2608;
    }

    while (v5 != a2);
  }

  return a3;
}

BOOL sub_51BBA8(uint64_t a1)
{
  if (*a1 != 52)
  {
    return 1;
  }

  if (sub_659540(a1 + 32))
  {
    if ((*(a1 + 1175) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 1160))
      {
        goto LABEL_8;
      }
    }

    else if (!*(a1 + 1175))
    {
      goto LABEL_8;
    }

    return 1;
  }

LABEL_8:
  if (sub_659BD0(a1 + 1488) || *(a1 + 1176) != *(a1 + 1184) || *(a1 + 1200) != *(a1 + 1208) || *(a1 + 1224) != *(a1 + 1232) || *(a1 + 1248) != 2 || *(a1 + 1304) != 13 || *(a1 + 1376) != *(a1 + 1384) || sub_52D8B0((a1 + 1400)))
  {
    return 1;
  }

  v3 = *(a1 + 1447);
  if (v3 < 0)
  {
    v3 = *(a1 + 1432);
  }

  if (v3 || *(a1 + 1448) != -1)
  {
    return 1;
  }

  return *(a1 + 1452) != -1;
}

uint64_t sub_51BCB0(uint64_t result, uint64_t a2)
{
  if (*(result + 2101) == 1)
  {
    v3 = *(a2 + 1112) - *(a2 + 1104);
    if (v3)
    {
      v4 = 0;
      v5 = 0x3795876FF3795877 * (v3 >> 3);
      while (1)
      {
        result = sub_50EA30((a2 + 1104), v4);
        if (*(result + 2352) != 1)
        {
          goto LABEL_4;
        }

        v6 = result;
        v7 = *(result + 2383);
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(result + 2368);
        }

        if (!v7)
        {
          goto LABEL_4;
        }

        v8 = *(result + 2384);
        if (v8 != 3)
        {
          break;
        }

        if (v4 + 1 < 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3))
        {
          result = sub_50EA30((a2 + 1104), v4 + 1);
          v8 = *(v6 + 2384);
          if (v8 != 3 || *(result + 2384) != 2)
          {
            break;
          }

          v9 = *(v6 + 2351);
          if (v9 >= 0)
          {
            v10 = *(v6 + 2351);
          }

          else
          {
            v10 = *(v6 + 2336);
          }

          v11 = *(result + 2415);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(result + 2400);
          }

          if (v10 == v11)
          {
            v13 = v9 >= 0 ? (v6 + 2328) : *(v6 + 2328);
            v14 = v12 >= 0 ? (result + 2392) : *(result + 2392);
            v15 = result;
            result = memcmp(v13, v14, v10);
            if (!result)
            {
              v16 = *(v6 + 2415);
              if (v16 >= 0)
              {
                v17 = *(v6 + 2415);
              }

              else
              {
                v17 = *(v6 + 2400);
              }

              v18 = *(v15 + 2351);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v15 + 2336);
              }

              if (v17 == v18)
              {
                v20 = v16 >= 0 ? (v6 + 2392) : *(v6 + 2392);
                v21 = v19 >= 0 ? (v15 + 2328) : *(v15 + 2328);
                result = memcmp(v20, v21, v17);
                if (!result)
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v23 = 0;
                  if (__p != (v6 + 2360))
                  {
                    if (*(v6 + 2383) < 0)
                    {
                      sub_13A68(__p, *(v6 + 2360), *(v6 + 2368));
                    }

                    else
                    {
                      *__p = *(v6 + 2360);
                      v23 = *(v6 + 2376);
                    }
                  }

                  sub_51D17C();
                }
              }
            }
          }
        }

LABEL_4:
        if (v5 == ++v4)
        {
          return result;
        }
      }

      if (v8 == 1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        if (__p != (v6 + 2360))
        {
          if (*(v6 + 2383) < 0)
          {
            sub_13A68(__p, *(v6 + 2360), *(v6 + 2368));
          }

          else
          {
            *__p = *(v6 + 2360);
            v23 = *(v6 + 2376);
          }
        }

        sub_51D17C();
      }

      goto LABEL_4;
    }
  }

  return result;
}

void sub_51BF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_51BF6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_52E078((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_51BFCC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = v6;
  v8 = (*v6 - **v6);
  if (*v8 >= 0x9Bu)
  {
    v9 = v8[77];
    if (v9)
    {
      if ((*(*v6 + v9) & 0x80000208) == 8)
      {
        if (*(a1 + 2099) == 1)
        {
          v10 = 41;
        }

        else
        {
          v10 = 33;
        }

        LODWORD(__p[0]) = v10;
        sub_51CB00();
      }
    }
  }

  v11 = (*v6 - **v6);
  if (*v11 >= 0x9Bu)
  {
    v12 = v11[77];
    if (v12)
    {
      if ((*(*v6 + v12 + 1) & 2) != 0)
      {
        if (*(a1 + 2099) == 1)
        {
          v13 = 41;
        }

        else
        {
          v13 = 33;
        }

        if (*(a1 + 2114))
        {
          ++v13;
        }

        LODWORD(__p[0]) = v13;
        sub_51CB00();
      }
    }
  }

  v14 = v6[4];
  v15 = HIWORD(v14);
  v16 = sub_2B51D8(*(a1 + 8), v14 & 0xFFFFFFFFFFFFLL);
  v17 = (v16 - *v16);
  if (*v17 >= 0x41u && (v18 = v17[32]) != 0)
  {
    v19 = (v16 + v18 + *(v16 + v18));
  }

  else
  {
    v19 = 0;
  }

  sub_40C268(v19, v15, 1, &v28);
  v20 = v28;
  if (v28 != v29)
  {
    sub_51B7A8(*(a1 + 8), *(v7 + 8) | (*(v7 + 18) << 32), __p);
    v21 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v21 = __p[1];
    }

    if (v21)
    {
      sub_25BE0(v27, __p);
    }

    else
    {
      sub_25AE0(v27);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    sub_386C(__p, *(a2[150] + 4 * a3));
  }

  if (v28)
  {
    v22 = v29;
    v23 = v28;
    if (v29 != v28)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v20);
      v23 = v28;
    }

    v29 = v20;
    operator delete(v23);
  }
}

void sub_51C2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25)
{
  sub_3874(&__p);
  sub_25F00(&a25);
  sub_1A104((v25 - 88));
  _Unwind_Resume(a1);
}

void *sub_51C348(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (!result)
  {
    return result;
  }

  v5 = sub_4D1DC0(a2);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = sub_4D1F50(a2, v10);
      v13 = *v11;
      v14 = (*v11 - **v11);
      v15 = *v14;
      if (v15 >= 0x2F && v14[23])
      {
        v16 = v13[v14[23]] == 9;
        if (!*(v11 + 38))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v16 = 0;
        if (!*(v11 + 38))
        {
LABEL_8:
          if (v15 >= 0x47)
          {
            v17 = v14[35];
            if (v14[35])
            {
              v18 = 0x8000;
              v19 = 1;
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          goto LABEL_4;
        }
      }

      if (v15 >= 0x47)
      {
        v17 = v14[35];
        if (v14[35])
        {
          v18 = 0x10000;
          v19 = 2;
LABEL_15:
          v17 = *&v13[v17];
          v16 |= (v17 & v19) != 0;
          LOBYTE(v17) = (v17 & v18) != 0;
        }

LABEL_16:
        v8 |= v17;
        if (v15 >= 0x9B)
        {
          v20 = v14[77];
          if (v20)
          {
            if ((v13[v20 + 2] & 0x20) != 0)
            {
              v9 += sub_4D23F8(a2, v10, v12);
            }
          }
        }
      }

LABEL_4:
      v7 |= v16 ^ 1;
      if (v6 == ++v10)
      {
        goto LABEL_21;
      }
    }
  }

  v9 = 0;
  v8 = 0;
  v7 = 0;
LABEL_21:
  v21 = a2[138];
  v22 = a2[139];
  if (v21 == v22)
  {
    v24 = 0;
    goto LABEL_29;
  }

  v23 = v22 - v21 - 2616;
  if (v23 <= 0xA37)
  {
    v24 = 0;
    v25 = a2[138];
    do
    {
LABEL_28:
      v24 |= *(v25 + 624) != -1;
      v25 += 2616;
    }

    while (v25 != v22);
    goto LABEL_29;
  }

  v26 = 0;
  v27 = 0;
  v28 = v23 / 0xA38 + 1;
  v25 = v21 + 2616 * (v28 & 0x3FFFFFFFFFFFFELL);
  v29 = v28 & 0x3FFFFFFFFFFFFELL;
  do
  {
    v26 |= *(v21 + 624) != -1;
    v27 |= *(v21 + 3240) != -1;
    v21 += 5232;
    v29 -= 2;
  }

  while (v29);
  v24 = v27 | v26;
  if (v28 != (v28 & 0x3FFFFFFFFFFFFELL))
  {
    goto LABEL_28;
  }

LABEL_29:
  result = sub_45AC50(a2);
  v30 = (*result - **result);
  if (*v30 < 0x2Fu || (v31 = v30[23]) == 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    if ((*(a1 + 1238) & 1) == 0)
    {
      sub_51CB00();
    }

    goto LABEL_36;
  }

  v24 |= *(*result + v31) == 9;
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_36:
  if ((v7 & 1) != 0 || !(v24 & 1 | ((*(a1 + 2096) & v8 & 1) == 0)))
  {
    sub_51CB00();
  }

  if (v9 > *(a1 + 2048))
  {
    sub_51CB00();
  }

  if (*(a1 + 1479) == 1 && a2[1537] != a2[1538])
  {
    sub_5316BC();
  }

  return result;
}

void sub_51C678(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_52F220(*(a2 + 7488), *(a2 + 7496), &__p);
  sub_51D02C(&__p);
  v12 = 0;
  v11[0] = &v12;
  v11[1] = a1;
  v3 = __p;
  v4 = v14;
  if (__p != v14 && __p + 24 != v14)
  {
    do
    {
      sub_5346DC(v11, v3, (v3 + 24));
      v6 = (v3 + 48);
      v3 += 24;
    }

    while (v6 != v4);
    if (v12)
    {
      LODWORD(v11[0]) = 22;
      sub_51CB00();
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v14;
    v9 = __p;
    if (v14 != __p)
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
      v9 = __p;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_51C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_51C790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_51C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_51C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

unint64_t sub_51C7CC(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (result >= 3)
  {
    v5 = sub_3B2A90(*a1);
    v6 = sub_4B7810(v5, a2, *(a1 + 1448));
    v7 = sub_45AC50(a2);
    v9 = *(v7 + 32) | (*(v7 + 36) << 32);
    result = sub_4B79AC(v5, &v9, *(a1 + 1448));
    if (result == 2 && v6 != 2)
    {
      sub_51CB00();
    }
  }

  return result;
}

unint64_t sub_51C880(unsigned __int8 *a1, void *a2)
{
  if (sub_4D20B0(a2, 3) && a1[2120] == 1)
  {
    sub_51CB00();
  }

  if ((sub_4D20B0(a2, 14) & 1) == 0 && !sub_4D20B0(a2, 16))
  {
    if (!sub_4D20B0(a2, 15) || (a1[2118] & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v4 = a1[2118];
  if (sub_4D20B0(a2, 15))
  {
    if (v4 && a1[2118])
    {
      sub_51CB00();
    }

    if (v4)
    {
LABEL_16:
      sub_51CB00();
    }

    if (!a1[2118])
    {
LABEL_21:
      if (*(sub_3AF234(a2) + 21) != 1)
      {
        goto LABEL_22;
      }

LABEL_18:
      v5 = a1[2117] ^ 1;
      if (*(sub_73F1C(a2) + 21))
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    sub_51CB00();
  }

  if (v4)
  {
    goto LABEL_16;
  }

  if (*(sub_3AF234(a2) + 21) == 1)
  {
    goto LABEL_18;
  }

LABEL_22:
  v5 = 1;
  if (*(sub_73F1C(a2) + 21))
  {
    goto LABEL_25;
  }

LABEL_23:
  v6 = *(a2[139] - 2456);
  if (v6 != 39 && v6 != 16)
  {
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

LABEL_25:
  v7 = a1[2117] ^ 1;
  if (((v5 | v7) & 1) == 0)
  {
    sub_51CC78();
  }

LABEL_28:
  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    sub_51CB00();
  }

  result = sub_51CDF0(a1, a2);
  if (result)
  {
    sub_51CB00();
  }

  return result;
}

void sub_51CC64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52F610(va);
  _Unwind_Resume(a1);
}

void sub_51CDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52F610(va);
  _Unwind_Resume(a1);
}

unint64_t sub_51CDF0(uint64_t a1, void *a2)
{
  if (*(a1 + 2098) != 1)
  {
    return 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = sub_45AC50(a2);
    sub_51B7A8(v5, *(v6 + 32) | (*(v6 + 36) << 32), &__p);
    v7 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v7 = v19;
    }

    if (v7)
    {
      sub_25BE0(v17, &__p);
    }

    else
    {
      sub_25AE0(v17);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    v8 = *(a1 + 8);
    v9 = sub_4D1F60(a2);
    sub_51B7A8(v8, *(v9 + 32) | (*(v9 + 36) << 32), &__p);
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v10 = v19;
    }

    if (v10)
    {
      sub_25BE0(v16, &__p);
    }

    else
    {
      sub_25AE0(v16);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    LODWORD(__p) = sub_4D26AC(a2);
    v11 = *(a2[151] - 4);
    v15 = v11;
    if (__p == 0x7FFFFFFF)
    {
      v12 = 0;
      if (v11 == 0x7FFFFFFF)
      {
LABEL_21:
        v13 = 0;
LABEL_24:
        v14 = sub_29CB0(v17, v16) & (v12 | v13);
        sub_25F00(v16);
        sub_25F00(v17);
        return v14;
      }
    }

    else
    {
      v12 = !sub_259D8(v17, &__p, v16, &__p);
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    v13 = !sub_259D8(v17, &v15, v16, &v15);
    goto LABEL_24;
  }

  return result;
}

void sub_51CFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_25F00(&a10);
  sub_25F00(&a12);
  _Unwind_Resume(a1);
}

void sub_51D02C(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    for (i = v3 + 3; ; i += 3)
    {
      v5 = *(i - 1);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(i - 2);
      }

      if (!v5)
      {
        break;
      }

      if (i == v2)
      {
        return;
      }
    }

    v3 = i - 3;
    if (i - 3 != v2 && i != v2)
    {
      do
      {
        v8 = *(i + 23);
        if (v8 < 0)
        {
          v8 = i[1];
        }

        if (v8)
        {
          if (*(v3 + 23) < 0)
          {
            operator delete(*v3);
          }

          v7 = *i;
          v3[2] = i[2];
          *v3 = v7;
          v3 += 3;
          *(i + 23) = 0;
          *i = 0;
        }

        i += 3;
      }

      while (i != v2);
      v2 = a1[1];
    }
  }

  if (v3 != v2)
  {
    while (v2 != v3)
    {
      v9 = *(v2 - 1);
      v2 -= 3;
      if (v9 < 0)
      {
        operator delete(*v2);
      }
    }

    a1[1] = v3;
  }
}

void sub_51D2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52F610(va);
  _Unwind_Resume(a1);
}

void sub_51E020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90((v21 + 16));
  _Unwind_Resume(a1);
}

void sub_51E160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x51E150);
}

void sub_51E180(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_51E46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1AA90(v22);
    _Unwind_Resume(a1);
  }

  sub_1AA90(v22);
  _Unwind_Resume(a1);
}

void sub_51E514(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_527724((a1 + 2), a4);
  v8[23] = 19;
  strcpy(v8, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v7 = sub_3AEC94(a2, v8, __p);
  sub_EE90((a1 + 199), v7);
}

void sub_51E794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_3D2A1C(v24 + 2168);
  sub_528A1C(v24 + 2048);
  sub_321B00(v24 + 1592);
  sub_528AB4(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_51E7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  sub_1A104(&a22);
  if (a18 < 0)
  {
    operator delete(__p);
    sub_528AB4(v22 + 16);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x51E7E8);
}

void sub_51E82C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_51E8BC(a1, a2, a3, &__p);
  sub_545248(a1 + 2248, &__p, a4);
  v6 = __p;
  if (__p)
  {
    v7 = v10;
    v8 = __p;
    if (v10 != __p)
    {
      do
      {
        v7 = sub_52E078(v7 - 2608);
      }

      while (v7 != v6);
      v8 = __p;
    }

    v10 = v6;
    operator delete(v8);
  }
}

void sub_51E8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_518B48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_51E8BC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5 != 3)
  {
    return result;
  }

  v7 = v6 >= 0 ? a3 : *a3;
  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 != 21062 || v9 != 65)
  {
    return result;
  }

  v11 = result;
  if (*(result + 2116) != 1 || (v12 = *a2, v13 = a2[1], *a2 == v13))
  {
LABEL_16:
    if (*(v11 + 2115) != 1)
    {
      return result;
    }

    goto LABEL_17;
  }

  while (1)
  {
    result = sub_68F7E4(v12);
    if (result == 1)
    {
      break;
    }

    v12 += 7808;
    if (v12 == v13)
    {
      goto LABEL_16;
    }
  }

  v16 = 49;
  v15 = a4[1];
  if (v15 >= a4[2])
  {
    result = sub_528BA0(a4, &v16);
  }

  else
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_528DAC(v15, 49, &__p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    result = v15 + 2608;
  }

  a4[1] = result;
  if (*(v11 + 2115) == 1)
  {
LABEL_17:
    v16 = 48;
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      result = sub_528BA0(a4, &v16);
    }

    else
    {
      __p = 0;
      v18 = 0;
      v19 = 0;
      sub_528DAC(v14, 48, &__p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }

      result = v14 + 2608;
    }

    a4[1] = result;
  }

  return result;
}

void sub_51EA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  sub_518B48(v15);
  _Unwind_Resume(a1);
}

void sub_51EAC8(unsigned __int8 *a1, unsigned int ***a2)
{
  sub_518C74(a1, a2);
  v4 = *a2;
  for (i = a2[1]; v4 != i; v4 += 976)
  {
    sub_51EB98(a1, v4, &__p);
    sub_545970((a1 + 2248), &__p, v4);
    v6 = __p;
    if (__p)
    {
      v7 = v10;
      v8 = __p;
      if (v10 != __p)
      {
        do
        {
          v7 = sub_52E078(v7 - 2608);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v10 = v6;
      operator delete(v8);
    }
  }
}

void sub_51EB84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_518B48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_51EB98@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_51EE34(a1, a3);
  sub_51EEF8(a1, a2, a3);
  sub_51F78C(a1, a2, a3);
  sub_5200C4(a1, a2, a3);
  sub_5206BC(a1, a2, a3);
  sub_520888(a1, a2, a3);
  sub_520A38(a1, a2, a3);
  sub_520C38(a1, a2, a3);
  sub_520D70(a1, a2, a3);
  sub_520F38(a1, a2, a3);
  sub_5DF398((a1 + 2168), a2, __p);
  if (sub_51BBA8(__p))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52D920(a3, __p);
    }

    else
    {
      sub_52DA74(a3[1], __p);
      v7 = v6 + 2608;
    }

    a3[1] = v7;
  }

  sub_52E078(__p);
  if (a1[2138] == 1)
  {
    v19 = 51;
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_528BA0(a3, &v19);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_528DAC(v8, 51, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v8 + 2608;
    }

    a3[1] = v9;
  }

  v10 = nullsub_1(a2);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    do
    {
      sub_5210A0(a1, v11, a3);
      v11 += 1582;
    }

    while (v11 != v12);
  }

  v13 = a3[1];
  v14 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((v13 - *a3) >> 4));
  if (v13 == *a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_531B08(*a3, v13, __p, v15, 1);
  return sub_534BE0(a3);
}

void sub_51EDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  sub_518B48(v15);
  _Unwind_Resume(a1);
}

void sub_51EDD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_52E078(va);
  sub_518B48(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_51EE34(uint64_t a1, uint64_t *a2)
{
  result = sub_E6F06C(a1 + 1256);
  if (result && *(a1 + 2109) == 1)
  {
    v6 = 46;
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      result = sub_528BA0(a2, &v6);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      sub_528DAC(v5, 46, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      result = v5 + 2608;
      a2[1] = v5 + 2608;
    }

    a2[1] = result;
  }

  return result;
}

void sub_51EED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_51EEF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_68D828(a2, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_68D828(a2, 9);
  }

  v7 = sub_68D828(a2, 5);
  v8 = sub_68C850(a2);
  if (v8 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = ceil((v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v11 = (v10 + v10) + 1;
      goto LABEL_12;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_12:
    v10 = (v11 >> 1);
  }

  v12 = v10;
  if (*(a1 + 2097) != 1 || v6 & 1 | ((sub_68D7D8(a2) & 1) == 0))
  {
    v13 = 0;
    if (*(a1 + 1241) == 1)
    {
      goto LABEL_16;
    }

LABEL_31:
    v14 = 0;
    if (*(a1 + 1451))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v15 = *(a1 + 2140);
  v13 = v15 < *(a1 + 2144) && v15 < v12;
  if (*(a1 + 1241) != 1)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((*(a1 + 1431) & 1) != 0 || *(a1 + 2136) != 1)
  {
    v14 = 0;
    if ((v6 & 1) == 0)
    {
LABEL_19:
      v13 |= *(a1 + 2140) < v12;
      if (*(a1 + 1451))
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v14 = *(a1 + 2128) > 1uLL;
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (*(a1 + 1451))
  {
LABEL_37:
    if (*(a1 + 1431) & v6)
    {
      if (sub_68D828(a2, 4))
      {
        v18 = sub_68F6D8(a2);
        LODWORD(__p) = 0;
        *v46 = 0u;
        memset(v47, 0, sizeof(v47));
        if (&v47[1] != v18)
        {
          if (*(v18 + 23) < 0)
          {
            sub_13A68(&v47[1], *v18, *(v18 + 8));
          }

          else
          {
            v19 = *v18;
            v47[3] = *(v18 + 16);
            *&v47[1] = v19;
          }
        }

        v20 = a3[1];
        if (v20 >= a3[2])
        {
          v21 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v21 = v20 + 2608;
          a3[1] = v20 + 2608;
        }

        a3[1] = v21;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v22 = v46[0];
        if (v46[0])
        {
          v23 = v46[1];
          v24 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v23 = sub_52A624(v23 - 168);
            }

            while (v23 != v22);
            v24 = v46[0];
          }

          v46[1] = v22;
          operator delete(v24);
        }
      }

      if (sub_68D828(a2, 9))
      {
        sub_68E258(a2, &v43);
        memset(v47, 0, sizeof(v47));
        *v46 = 0u;
        LODWORD(__p) = 1;
        sub_52ABAC(v46, v43, v44, 0xCF3CF3CF3CF3CF3DLL * ((v44 - v43) >> 3));
        v25 = a3[1];
        if (v25 >= a3[2])
        {
          v26 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v26 = v25 + 2608;
          a3[1] = v25 + 2608;
        }

        a3[1] = v26;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v27 = v46[0];
        if (v46[0])
        {
          v28 = v46[1];
          v29 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v28 = sub_52A624(v28 - 168);
            }

            while (v28 != v27);
            v29 = v46[0];
          }

          v46[1] = v27;
          operator delete(v29);
        }

        v30 = v43;
        if (v43)
        {
          v31 = v44;
          v32 = v43;
          if (v44 != v43)
          {
            do
            {
              v31 = sub_52A624((v31 - 168));
            }

            while (v31 != v30);
            v32 = v43;
          }

          v44 = v30;
          operator delete(v32);
        }
      }
    }

    goto LABEL_70;
  }

LABEL_32:
  if ((v6 ^ 1))
  {
    goto LABEL_37;
  }

  LODWORD(v43) = 21;
  v17 = a3[1];
  if (v17 >= a3[2])
  {
    a3[1] = sub_528BA0(a3, &v43);
  }

  else
  {
    __p = 0;
    v46[0] = 0;
    v46[1] = 0;
    sub_528DAC(v17, 21, &__p);
    if (SHIBYTE(v46[1]) < 0)
    {
      operator delete(__p);
    }

    a3[1] = v17 + 2608;
    a3[1] = v17 + 2608;
  }

LABEL_70:
  if (*(a1 + 1242) != 1)
  {
    if (!v14)
    {
      if (!v13)
      {
        return;
      }

      goto LABEL_106;
    }

    v35 = 0;
LABEL_90:
    LODWORD(v43) = 0;
    v36 = a3[1];
    if (v36 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v36, 0, &__p);
      goto LABEL_92;
    }

    goto LABEL_100;
  }

  if (*(a1 + 1431))
  {
    if (v7)
    {
      LODWORD(v43) = 13;
      v33 = a3[1];
      if (v33 >= a3[2])
      {
        v42 = sub_528BA0(a3, &v43);
        v34 = 0;
        v35 = 0;
        a3[1] = v42;
      }

      else
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v33, 13, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        a3[1] = v33 + 2608;
        v34 = 0;
        v35 = 0;
        a3[1] = v33 + 2608;
      }
    }

    else
    {
      v34 = 0;
      v35 = *(a1 + 2148) < v12;
    }

    goto LABEL_89;
  }

  if (*(a1 + 2137) == 1)
  {
    v34 = *(a1 + 2128) > 1uLL;
    if ((v7 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v34 = 0;
    if ((v7 & 1) == 0)
    {
LABEL_81:
      v35 = *(a1 + 2148) < v12;
      if (v14 && v34)
      {
        goto LABEL_82;
      }

LABEL_89:
      if (v14)
      {
        goto LABEL_90;
      }

      if (!v34)
      {
        goto LABEL_102;
      }

      LODWORD(v43) = 1;
      v37 = a3[1];
      if (v37 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v37, 1, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v38 = v37 + 2608;
        a3[1] = v37 + 2608;
        goto LABEL_101;
      }

LABEL_100:
      v38 = sub_528BA0(a3, &v43);
LABEL_101:
      a3[1] = v38;
      goto LABEL_102;
    }
  }

  v35 = 0;
  if (!v14 || !v34)
  {
    goto LABEL_89;
  }

LABEL_82:
  LODWORD(v43) = 2;
  v36 = a3[1];
  if (v36 >= a3[2])
  {
    goto LABEL_100;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v36, 2, &__p);
LABEL_92:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v36 + 2608;
  a3[1] = v36 + 2608;
LABEL_102:
  if ((v13 & v35) != 1)
  {
    if ((v13 & 1) == 0)
    {
      if (!v35)
      {
        return;
      }

      LODWORD(v43) = 4;
      v40 = a3[1];
      if (v40 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v40, 4, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v41 = v40 + 2608;
        a3[1] = v40 + 2608;
        goto LABEL_117;
      }

LABEL_116:
      v41 = sub_528BA0(a3, &v43);
LABEL_117:
      a3[1] = v41;
      return;
    }

LABEL_106:
    LODWORD(v43) = 3;
    v39 = a3[1];
    if (v39 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v39, 3, &__p);
      goto LABEL_108;
    }

    goto LABEL_116;
  }

  LODWORD(v43) = 5;
  v39 = a3[1];
  if (v39 >= a3[2])
  {
    goto LABEL_116;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v39, 5, &__p);
LABEL_108:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v39 + 2608;
  a3[1] = v39 + 2608;
}

void sub_51F634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_51B6E0((v21 + 8));
  _Unwind_Resume(a1);
}

void sub_51F658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v24 + 8) = v25;
  _Unwind_Resume(exception_object);
}

void sub_51F76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v17 + 8) = v18;
  _Unwind_Resume(exception_object);
}

void sub_51F78C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!sub_68D058(a2))
  {
    return;
  }

  if (sub_68D944(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 8;
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v6, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v8 = sub_E6F454(a1 + 1256);
  if (v8 == 0x7FFFFFFF || v8 < *(a1 + 2104))
  {
    goto LABEL_18;
  }

  v9 = sub_E6F454(a1 + 1256);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 9;
  *&v39[40] = v9;
  v10 = a3[1];
  if (v10 >= a3[2])
  {
    v11 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v10, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v10 + 2608;
    a3[1] = v10 + 2608;
  }

  a3[1] = v11;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_18:
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 1545))
  {
    goto LABEL_28;
  }

  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 7;
  v12 = a3[1];
  if (v12 >= a3[2])
  {
    v13 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v12, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v12 + 2608;
    a3[1] = v12 + 2608;
  }

  a3[1] = v13;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_28:
    if (*(a1 + 2111) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  operator delete(v40);
  if (*(a1 + 2111) != 1)
  {
    goto LABEL_40;
  }

LABEL_29:
  if (sub_E6F0DC(a1 + 1256) && sub_E6F36C(a1 + 1256))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 10;
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v15 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v14, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v14 + 2608;
      a3[1] = v14 + 2608;
    }

    a3[1] = v15;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_40:
  if (*(a1 + 2112) == 1 && *(a1 + 1545) == 1 && sub_68D938(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 11;
    v16 = a3[1];
    if (v16 >= a3[2])
    {
      v17 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v16, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v16 + 2608;
      a3[1] = v16 + 2608;
    }

    a3[1] = v17;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v18 = sub_453478(a2);
  if (!v18)
  {
    sub_68CB5C(a2, &v37);
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *v39 = 0;
    *&v39[8] = v37;
    *&v39[24] = v38;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
LABEL_84:
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      a3[1] = v23 + 2608;
      return;
    }

    v24 = sub_52B080(a3, v39);
    goto LABEL_94;
  }

  v19 = v18;
  if (*(a1 + 1545))
  {
    goto LABEL_65;
  }

  v20 = sub_68C454(a2, 0);
  v21 = sub_69B1BC(v20);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 1;
  *&v39[24] = 0;
  *&v39[32] = v19;
  if (&v40 != v21)
  {
    if (*(v21 + 23) < 0)
    {
      sub_13A68(&v40, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      v41 = *(v21 + 16);
      v40 = v22;
    }
  }

  v25 = a3[1];
  if (v25 >= a3[2])
  {
    v26 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    *__p = v40;
    v45 = v41;
    v40 = 0uLL;
    v41 = 0;
    sub_52B230(v25, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v26 = v25 + 2608;
    a3[1] = v25 + 2608;
  }

  a3[1] = v26;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_65:
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  if (sub_68F5E4(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    if (v19 == 1)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = v27;
    v28 = a3[1];
    if (v28 >= a3[2])
    {
      v29 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v28, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = v28 + 2608;
      a3[1] = v28 + 2608;
    }

    a3[1] = v29;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_79:
  v30 = sub_4536C8(a2, 10);
  v31 = sub_E6F808(a1 + 1256, 10);
  if (!sub_4D1F6C(a2))
  {
    v32 = sub_68C454(a2, 0);
    v33 = sub_73F54(v32);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);
    while (v34 != v35)
    {
      if (*v34 != 10 && (sub_96E04(v34) & 1) != 0)
      {
        return;
      }

      v34 += 16;
    }
  }

  if (!v31 && (*(a1 + 2113) & 1) != 0 && v30)
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 12;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
      goto LABEL_84;
    }

    v24 = sub_52B080(a3, v39);
LABEL_94:
    v36 = SHIBYTE(v41);
    a3[1] = v24;
    if (v36 < 0)
    {
      operator delete(v40);
    }
  }
}

void sub_51FF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5200C4(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_68C850(a2);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = ceil((v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_10:
  v10 = v8;
  if (*(a1 + 1237) != 1)
  {
    v12 = 0;
    v11 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!sub_68EFF0(a2) || sub_68F064(a2))
  {
    v11 = 0;
    if (sub_68EFF0(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  v11 = *(a1 + 2152) < v10;
  if (!sub_68EFF0(a2))
  {
LABEL_24:
    v12 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (sub_68EF88(a2))
    {
      v13 = 0;
      v14 = 1;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = 0;
      v13 = *(a1 + 2156) < v10;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v15 = 0;
    v16 = 0;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

LABEL_14:
  v12 = sub_68F064(a2);
  if (*(a1 + 1238) == 1)
  {
    goto LABEL_17;
  }

LABEL_25:
  v14 = 0;
  v13 = 0;
  if (*(a1 + 1236) != 1)
  {
    goto LABEL_21;
  }

LABEL_26:
  v17 = sub_68F104(a2);
  v18 = *(a1 + 2088);
  v19 = v18 * sub_68C7DC(a2);
  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_32:
  if (v17 >= v19)
  {
    v15 = 0;
    v16 = 1;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = 0;
    v15 = *(a1 + 2160) < v10;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_36:
  if (*(a1 + 2110) == 1)
  {
    v32 = 47;
    v21 = a3[1];
    if (v21 >= a3[2])
    {
      v22 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v21, 47, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v22 = v21 + 2608;
      a3[1] = v21 + 2608;
    }

    a3[1] = v22;
  }

LABEL_43:
  if (v11 && v13 && v15)
  {
    v32 = 11;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 11, &__p);
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  if (v11 && v13)
  {
    v32 = 9;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 9, &__p);
      goto LABEL_55;
    }

LABEL_58:
    p_p = &v32;
LABEL_59:
    a3[1] = sub_528BA0(a3, p_p);
    goto LABEL_60;
  }

  if (v11 && v15)
  {
    v32 = 10;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 10, &__p);
LABEL_55:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_57;
  }

  if (v13 && v15)
  {
    v32 = 12;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 12, &__p);
    goto LABEL_55;
  }

  if (v11)
  {
    LODWORD(__p) = 6;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      sub_528D34(a3, a3[1], &__p);
LABEL_57:
      a3[1] = v23 + 2608;
      a3[1] = v23 + 2608;
      goto LABEL_60;
    }

    p_p = &__p;
    goto LABEL_59;
  }

  if (v13)
  {
    v31 = 7;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_60;
    }

    v31 = 8;
  }

  LODWORD(__p) = v31;
  sub_519290(a3, &__p);
LABEL_60:
  if (v12)
  {
    v32 = 14;
    v25 = a3[1];
    if (v25 >= a3[2])
    {
      v26 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v25, 14, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v26 = v25 + 2608;
      a3[1] = v25 + 2608;
    }

    a3[1] = v26;
  }

  if (v16)
  {
    v32 = 15;
    v27 = a3[1];
    if (v27 >= a3[2])
    {
      v28 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v27, 15, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v28 = v27 + 2608;
      a3[1] = v27 + 2608;
    }

    a3[1] = v28;
  }

  if (v14)
  {
    v32 = 16;
    v29 = a3[1];
    if (v29 >= a3[2])
    {
      v30 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v29, 16, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v30 = v29 + 2608;
      a3[1] = v29 + 2608;
    }

    a3[1] = v30;
  }
}

void sub_520680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5206BC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (*(result + 2099) == 1)
  {
    v5 = result;
    result = sub_68EF20(a2);
    if (result)
    {
      v9 = 40;
      v6 = a3[1];
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v9);
      }

      else
      {
        __p = 0;
        v11 = 0;
        v12 = 0;
        sub_528DAC(v6, 40, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        result = v6 + 2608;
        a3[1] = v6 + 2608;
      }

      a3[1] = result;
    }

    if (*(v5 + 1246) == 1)
    {
      result = sub_68F064(a2);
      if (result)
      {
        v9 = 43;
        v7 = a3[1];
        if (v7 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v7, 43, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v7 + 2608;
          a3[1] = v7 + 2608;
        }

        a3[1] = result;
      }
    }

    if (*(v5 + 1247) == 1)
    {
      result = sub_68EF88(a2);
      if (result)
      {
        v9 = 44;
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v8, 44, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v8 + 2608;
          a3[1] = v8 + 2608;
        }

        a3[1] = result;
      }
    }
  }

  return result;
}

void sub_520844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_520864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_520888(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_68E0D8(a2, &v20);
  sub_68E470(a2, &__p);
  sub_68E2F0(a2, &v16);
  if (v20 != v21 || __p != v19 || (v5 = v16, v16 != v17))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_529D50(a3, &v20, &__p, &v16);
    }

    else
    {
      sub_529EBC(a3[1], &v20, &__p, &v16);
      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    v5 = v16;
  }

  if (v5)
  {
    v8 = v17;
    v9 = v5;
    if (v17 != v5)
    {
      do
      {
        v8 = sub_52A624(v8 - 168);
      }

      while (v8 != v5);
      v9 = v16;
    }

    v17 = v5;
    operator delete(v9);
  }

  v10 = __p;
  if (__p)
  {
    v11 = v19;
    v12 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = sub_52A624(v11 - 168);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v19 = v10;
    operator delete(v12);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v14 = sub_52A624(v14 - 168);
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }
}

void sub_5209E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_51B6E0(va);
  sub_51B6E0(va1);
  sub_51B6E0((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_520A38(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C454(a2, 0);
  v7 = sub_45AC50(v6);
  v8 = (a1 + 1512);
  if (*(a1 + 1535) < 0)
  {
    v9 = *(a1 + 1520);
    if (v9)
    {
      sub_325C(v23, *v8, v9);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 1535))
  {
    *v23 = *v8;
    v24 = *(a1 + 1528);
    goto LABEL_7;
  }

  sub_51B7A8(*(a1 + 8), *(v7 + 32) | (*(v7 + 36) << 32), v23);
LABEL_7:
  v10 = sub_68F328(a2);
  v22 = 0;
  v11 = 0uLL;
  *__p = 0u;
  v12 = *v10;
  v13 = v10[1];
  if (*v10 != v13)
  {
    do
    {
      if (sub_658A08(v12 + 744, 0))
      {
        v15 = __p[1];
        if (__p[1] >= v22)
        {
          v14 = sub_52B440(__p, v12, v23);
        }

        else
        {
          sub_52B5A4(__p[1], v12, v23);
          v14 = v15 + 2608;
        }

        __p[1] = v14;
      }

      v12 += 1120;
    }

    while (v12 != v13);
    v11 = *__p;
  }

  v16 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((*(&v11 + 1) - v11) >> 4));
  if (*(&v11 + 1) == v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_531B08(v11, *(&v11 + 1), &v25, v17, 1);
  sub_51B90C(__p[0], __p[1], a3);
  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = sub_52E078(v19 - 2608);
      }

      while (v19 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_520BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_520C38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 2122) == 1)
  {
    v4 = sub_68F370(a2);
    v14 = 0;
    v5 = 0uLL;
    *__p = 0u;
    v6 = *v4;
    v7 = v4[1];
    if (*v4 != v7)
    {
      do
      {
        if (sub_658A08(v6 + 744, 1))
        {
          v9 = __p[1];
          if (__p[1] >= v14)
          {
            v8 = sub_52C6A4(__p, v6);
          }

          else
          {
            sub_52C7F8(__p[1], v6);
            v8 = v9 + 2608;
          }

          __p[1] = v8;
        }

        v6 += 1120;
      }

      while (v6 != v7);
      v5 = *__p;
    }

    sub_51B90C(v5, *(&v5 + 1), a3);
    v10 = __p[0];
    if (__p[0])
    {
      v11 = __p[1];
      v12 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v11 = sub_52E078(v11 - 2608);
        }

        while (v11 != v10);
        v12 = __p[0];
      }

      __p[1] = v10;
      operator delete(v12);
    }
  }
}

uint64_t sub_520D70(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 1479) != 1)
  {
    return result;
  }

  v5 = result;
  result = sub_3B6890(*result);
  v7 = *result;
  v6 = *(result + 4);
  if (*result == 0x7FFFFFFF || v7 <= v6)
  {
    return result;
  }

  v9 = *(result + 8);
  result = sub_394BD0();
  if (result)
  {
    return result;
  }

  if (v9 == 1)
  {
    v11 = sub_68C848(a2);
    v12 = *(v5 + 2100);
    *&v15 = __PAIR64__(v6, v7);
    DWORD2(v15) = 1;
    HIDWORD(v15) = v11;
    v16 = v12;
    v10 = a3[1];
    if (v10 < a3[2])
    {
LABEL_13:
      result = sub_52D71C(a3[1], &v15);
      a3[1] = v10 + 2608;
      a3[1] = v10 + 2608;
      return result;
    }

LABEL_14:
    result = sub_52D5C8(a3, &v15);
    a3[1] = result;
    return result;
  }

  if (!v9)
  {
    v16 = 0;
    *&v15 = __PAIR64__(v6, v7);
    *(&v15 + 1) = 0x7FFFFFFF00000000;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v15);
    sub_4A5C(&v15, "Unknown timepoint type given.", 29);
    sub_1959680(&v15, __p);
    sub_7E854(__p, 1u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_1959728(&v15);
  }

  return result;
}

void sub_520EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_520F38(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 2108) == 1)
  {
    v4 = result;
    result = sub_394BD0();
    if (!result && *(v4 + 1479) == 1)
    {
      v5 = *a3;
      v6 = a3[1];
      if (*a3 != v6)
      {
        do
        {
          v7 = v5[352];
          if (v7)
          {
            if (v7 == 1)
            {
              v8 = v5[350];
              v9 = v8 != 0x7FFFFFFF && v5[351] < v8;
              if (v9 && v5[353] != 0x7FFFFFFF)
              {
                return result;
              }
            }
          }

          else
          {
            v10 = v5[350];
            if (v10 != 0x7FFFFFFF && v5[351] < v10)
            {
              return result;
            }
          }

          v5 += 652;
        }

        while (v5 != v6);
      }

      v11 = 45;
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v11);
        a3[1] = result;
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
        sub_528DAC(v6, 45, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        result = v6 + 2608;
        a3[1] = v6 + 2608;
        a3[1] = v6 + 2608;
      }
    }
  }

  return result;
}

void sub_521080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5210A0(unsigned __int8 *a1, void *a2, uint64_t *a3)
{
  sub_521210(a1, a2);
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      sub_5214CC(a1, a2, i);
    }
  }

  sub_521848(a1, a2);
  sub_521ABC(a1, a2);
  sub_521C10(a1, a2);
  sub_521CC4(a1, a2);
  sub_52E208(a3, a3[1], 0, 0, 0);
}

uint64_t sub_521210(uint64_t result, uint64_t a2)
{
  if (*(result + 2101) == 1)
  {
    v3 = *(a2 + 1112) - *(a2 + 1104);
    if (v3)
    {
      v4 = 0;
      v5 = 0x3795876FF3795877 * (v3 >> 3);
      while (1)
      {
        result = sub_50EA30((a2 + 1104), v4);
        if (*(result + 2352) != 1)
        {
          goto LABEL_4;
        }

        v6 = result;
        v7 = *(result + 2383);
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(result + 2368);
        }

        if (!v7)
        {
          goto LABEL_4;
        }

        v8 = *(result + 2384);
        if (v8 != 3)
        {
          break;
        }

        if (v4 + 1 < 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3))
        {
          result = sub_50EA30((a2 + 1104), v4 + 1);
          v8 = *(v6 + 2384);
          if (v8 != 3 || *(result + 2384) != 2)
          {
            break;
          }

          v9 = *(v6 + 2351);
          if (v9 >= 0)
          {
            v10 = *(v6 + 2351);
          }

          else
          {
            v10 = *(v6 + 2336);
          }

          v11 = *(result + 2415);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(result + 2400);
          }

          if (v10 == v11)
          {
            v13 = v9 >= 0 ? (v6 + 2328) : *(v6 + 2328);
            v14 = v12 >= 0 ? (result + 2392) : *(result + 2392);
            v15 = result;
            result = memcmp(v13, v14, v10);
            if (!result)
            {
              v16 = *(v6 + 2415);
              if (v16 >= 0)
              {
                v17 = *(v6 + 2415);
              }

              else
              {
                v17 = *(v6 + 2400);
              }

              v18 = *(v15 + 2351);
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v15 + 2336);
              }

              if (v17 == v18)
              {
                v20 = v16 >= 0 ? (v6 + 2392) : *(v6 + 2392);
                v21 = v19 >= 0 ? (v15 + 2328) : *(v15 + 2328);
                result = memcmp(v20, v21, v17);
                if (!result)
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v23 = 0;
                  if (__p != (v6 + 2360))
                  {
                    if (*(v6 + 2383) < 0)
                    {
                      sub_13A68(__p, *(v6 + 2360), *(v6 + 2368));
                    }

                    else
                    {
                      *__p = *(v6 + 2360);
                      v23 = *(v6 + 2376);
                    }
                  }

                  sub_51D17C();
                }
              }
            }
          }
        }

LABEL_4:
        if (v5 == ++v4)
        {
          return result;
        }
      }

      if (v8 == 1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        if (__p != (v6 + 2360))
        {
          if (*(v6 + 2383) < 0)
          {
            sub_13A68(__p, *(v6 + 2360), *(v6 + 2368));
          }

          else
          {
            *__p = *(v6 + 2360);
            v23 = *(v6 + 2376);
          }
        }

        sub_51D17C();
      }

      goto LABEL_4;
    }
  }

  return result;
}

void sub_5214A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5214CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = v6;
  v8 = (*v6 - **v6);
  if (*v8 >= 0x9Bu)
  {
    v9 = v8[77];
    if (v9)
    {
      if ((*(*v6 + v9) & 0x80000208) == 8)
      {
        if (*(a1 + 2099) == 1)
        {
          v10 = 41;
        }

        else
        {
          v10 = 33;
        }

        LODWORD(__p[0]) = v10;
        sub_51CB00();
      }
    }
  }

  v11 = (*v6 - **v6);
  if (*v11 >= 0x9Bu)
  {
    v12 = v11[77];
    if (v12)
    {
      if ((*(*v6 + v12 + 1) & 2) != 0)
      {
        if (*(a1 + 2099) == 1)
        {
          v13 = 41;
        }

        else
        {
          v13 = 33;
        }

        if (*(a1 + 2114))
        {
          ++v13;
        }

        LODWORD(__p[0]) = v13;
        sub_51CB00();
      }
    }
  }

  v14 = v6[4];
  v15 = HIWORD(v14);
  v16 = sub_2B51D8(*(a1 + 8), v14 & 0xFFFFFFFFFFFFLL);
  v17 = (v16 - *v16);
  if (*v17 >= 0x41u && (v18 = v17[32]) != 0)
  {
    v19 = (v16 + v18 + *(v16 + v18));
  }

  else
  {
    v19 = 0;
  }

  sub_40C268(v19, v15, 1, &v28);
  v20 = v28;
  if (v28 != v29)
  {
    sub_51B7A8(*(a1 + 8), *(v7 + 8) | (*(v7 + 18) << 32), __p);
    v21 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v21 = __p[1];
    }

    if (v21)
    {
      sub_25BE0(v27, __p);
    }

    else
    {
      sub_25AE0(v27);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    sub_386C(__p, *(a2[150] + 4 * a3));
  }

  if (v28)
  {
    v22 = v29;
    v23 = v28;
    if (v29 != v28)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v20);
      v23 = v28;
    }

    v29 = v20;
    operator delete(v23);
  }
}

void sub_5217CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25)
{
  sub_3874(&__p);
  sub_25F00(&a25);
  sub_1A104((v25 - 88));
  _Unwind_Resume(a1);
}

unint64_t sub_521848(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (!result)
  {
    v7 = 0;
    v9 = 0;
    if (*(a1 + 2048) < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  for (i = 0; i != v5; ++i)
  {
    while (1)
    {
      result = sub_4D1F50(a2, i);
      v12 = *result;
      v13 = **result;
      v14 = -v13;
      v15 = (*result - v13);
      v16 = *v15;
      if (*(result + 38))
      {
        if (v16 < 0x9B)
        {
          goto LABEL_13;
        }

        v17 = v15[77];
        if (!v17)
        {
          v6 = 1;
LABEL_16:
          v22 = &v12[v14];
          if (*&v12[v14] < 0x9Bu)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

        v18 = 2;
      }

      else if (v16 < 0x9B || (v17 = v15[77], v18 = 1, !v17))
      {
LABEL_13:
        v6 = 1;
        v22 = &v12[v14];
        if (*&v12[v14] < 0x9Bu)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v19 = *&v12[v17];
      v6 |= (v19 & v18) == 0;
      if ((v19 & 0x200000) == 0)
      {
        goto LABEL_16;
      }

      v20 = result;
      v21 = sub_4D23F8(a2, i, v11);
      result = v20;
      v8 += v21;
      v12 = *v20;
      v14 = -**v20;
      v22 = &(*v20)[-**v20];
      if (*v22 < 0x9Bu)
      {
        goto LABEL_20;
      }

LABEL_17:
      v23 = *(v22 + 77);
      if (v23 && v12[v23 + 2] < 0)
      {
        v24 = result;
        result = sub_4D23F8(a2, i, v11);
        v9 += result;
        v12 = *v24;
        v14 = -**v24;
      }

LABEL_20:
      v25 = &v12[v14];
      if (*v25 >= 0x2Fu)
      {
        v26 = *(v25 + 23);
        if (v26)
        {
          break;
        }
      }

      if (v5 == ++i)
      {
        goto LABEL_23;
      }
    }

    v7 |= v12[v26] == 21;
  }

LABEL_23:
  if ((v6 & 1) != 0 && *(a1 + 2119) == 1)
  {
    sub_51CB00();
  }

  if (v8 > *(a1 + 2048))
  {
LABEL_27:
    sub_51CB00();
  }

LABEL_31:
  if (v9 > *(a1 + 2056))
  {
    sub_51CB00();
  }

  if ((v7 & 1) != 0 && *(a1 + 2121) == 1)
  {
    sub_51CB00();
  }

  return result;
}

void sub_521ABC(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_52F220(*(a2 + 7488), *(a2 + 7496), &__p);
  sub_51D02C(&__p);
  v12 = 0;
  v11[0] = &v12;
  v11[1] = a1;
  v3 = __p;
  v4 = v14;
  if (__p != v14 && __p + 24 != v14)
  {
    do
    {
      sub_534CF4(v11, v3, (v3 + 24));
      v6 = (v3 + 48);
      v3 += 24;
    }

    while (v6 != v4);
    if (v12)
    {
      LODWORD(v11[0]) = 22;
      sub_51CB00();
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v14;
    v9 = __p;
    if (v14 != __p)
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
      v9 = __p;
    }

    v14 = v7;
    operator delete(v9);
  }
}

void sub_521BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_521BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_521BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_521BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

unint64_t sub_521C10(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (result >= 3)
  {
    v5 = sub_3B2A90(*a1);
    v6 = sub_4B7C5C(v5, a2, *(a1 + 1448));
    v7 = sub_45AC50(a2);
    v9 = *(v7 + 32) | (*(v7 + 36) << 32);
    result = sub_4B79AC(v5, &v9, *(a1 + 1448));
    if (result == 2 && v6 != 2)
    {
      sub_51CB00();
    }
  }

  return result;
}

unint64_t sub_521CC4(unsigned __int8 *a1, void *a2)
{
  if (sub_4D20B0(a2, 3) && a1[2120] == 1)
  {
    sub_51CB00();
  }

  if ((sub_4D20B0(a2, 14) & 1) == 0 && !sub_4D20B0(a2, 16))
  {
    if (!sub_4D20B0(a2, 15) || (a1[2118] & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v4 = a1[2118];
  if (sub_4D20B0(a2, 15))
  {
    if (v4 && a1[2118])
    {
      sub_51CB00();
    }

    if (v4)
    {
LABEL_16:
      sub_51CB00();
    }

    if (!a1[2118])
    {
LABEL_21:
      if (*(sub_3AF234(a2) + 21) != 1)
      {
        goto LABEL_22;
      }

LABEL_18:
      v5 = a1[2117] ^ 1;
      if (*(sub_73F1C(a2) + 21))
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    sub_51CB00();
  }

  if (v4)
  {
    goto LABEL_16;
  }

  if (*(sub_3AF234(a2) + 21) == 1)
  {
    goto LABEL_18;
  }

LABEL_22:
  v5 = 1;
  if (*(sub_73F1C(a2) + 21))
  {
    goto LABEL_25;
  }

LABEL_23:
  v6 = *(a2[139] - 2456);
  if (v6 != 39 && v6 != 16)
  {
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

LABEL_25:
  v7 = a1[2117] ^ 1;
  if (((v5 | v7) & 1) == 0)
  {
    sub_51CC78();
  }

LABEL_28:
  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    sub_51CB00();
  }

  result = sub_521F44(a1, a2);
  if (result)
  {
    sub_51CB00();
  }

  return result;
}

unint64_t sub_521F44(uint64_t a1, void *a2)
{
  if (*(a1 + 2098) != 1)
  {
    return 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = sub_45AC50(a2);
    sub_51B7A8(v5, *(v6 + 32) | (*(v6 + 36) << 32), &__p);
    v7 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v7 = v19;
    }

    if (v7)
    {
      sub_25BE0(v17, &__p);
    }

    else
    {
      sub_25AE0(v17);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    v8 = *(a1 + 8);
    v9 = sub_4D1F60(a2);
    sub_51B7A8(v8, *(v9 + 32) | (*(v9 + 36) << 32), &__p);
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v10 = v19;
    }

    if (v10)
    {
      sub_25BE0(v16, &__p);
    }

    else
    {
      sub_25AE0(v16);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    LODWORD(__p) = sub_4D26AC(a2);
    v11 = *(a2[151] - 4);
    v15 = v11;
    if (__p == 0x7FFFFFFF)
    {
      v12 = 0;
      if (v11 == 0x7FFFFFFF)
      {
LABEL_21:
        v13 = 0;
LABEL_24:
        v14 = sub_29CB0(v17, v16) & (v12 | v13);
        sub_25F00(v16);
        sub_25F00(v17);
        return v14;
      }
    }

    else
    {
      v12 = !sub_259D8(v17, &__p, v16, &__p);
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    v13 = !sub_259D8(v17, &v15, v16, &v15);
    goto LABEL_24;
  }

  return result;
}

void sub_522108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_25F00(&a10);
  sub_25F00(&a12);
  _Unwind_Resume(a1);
}

void sub_522EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90((v21 + 16));
  _Unwind_Resume(a1);
}

void sub_522FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x522FDCLL);
}

void sub_52300C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_527724((a1 + 2), a4);
  v8[23] = 19;
  strcpy(v8, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v7 = sub_3AEC94(a2, v8, __p);
  sub_EE90((a1 + 199), v7);
}

void sub_52328C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_3D2A1C(v24 + 2168);
  sub_528A1C(v24 + 2048);
  sub_321B00(v24 + 1592);
  sub_528AB4(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_5232F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  sub_1A104(&a22);
  if (a18 < 0)
  {
    operator delete(__p);
    sub_528AB4(v22 + 16);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x5232E0);
}

void sub_523324(unsigned __int8 *a1, unsigned int ***a2)
{
  sub_518C74(a1, a2);
  v4 = *a2;
  for (i = a2[1]; v4 != i; v4 += 976)
  {
    sub_5233F4(a1, v4, &__p);
    sub_55010C((a1 + 2248), &__p, v4);
    v6 = __p;
    if (__p)
    {
      v7 = v10;
      v8 = __p;
      if (v10 != __p)
      {
        do
        {
          v7 = sub_52E078(v7 - 2608);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v10 = v6;
      operator delete(v8);
    }
  }
}

void sub_5233E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_518B48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5233F4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_523690(a1, a3);
  sub_523754(a1, a2, a3);
  sub_523FE8(a1, a2, a3);
  sub_524920(a1, a2, a3);
  sub_524F18(a1, a2, a3);
  sub_5250E4(a1, a2, a3);
  sub_525294(a1, a2, a3);
  sub_525494(a1, a2, a3);
  sub_5255CC(a1, a2, a3);
  sub_525794(a1, a2, a3);
  sub_5DF698((a1 + 2168), a2, __p);
  if (sub_51BBA8(__p))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52D920(a3, __p);
    }

    else
    {
      sub_52DA74(a3[1], __p);
      v7 = v6 + 2608;
    }

    a3[1] = v7;
  }

  sub_52E078(__p);
  if (a1[2138] == 1)
  {
    v19 = 51;
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_528BA0(a3, &v19);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_528DAC(v8, 51, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v8 + 2608;
    }

    a3[1] = v9;
  }

  v10 = nullsub_1(a2);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    do
    {
      sub_5258FC(a1, v11, a3);
      v11 += 1582;
    }

    while (v11 != v12);
  }

  v13 = a3[1];
  v14 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((v13 - *a3) >> 4));
  if (v13 == *a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  sub_531B08(*a3, v13, __p, v15, 1);
  return sub_534BE0(a3);
}

void sub_523604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  sub_518B48(v15);
  _Unwind_Resume(a1);
}

void sub_52362C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_52E078(va);
  sub_518B48(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_523690(uint64_t a1, uint64_t *a2)
{
  result = sub_E6F06C(a1 + 1256);
  if (result && *(a1 + 2109) == 1)
  {
    v6 = 46;
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      result = sub_528BA0(a2, &v6);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      sub_528DAC(v5, 46, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      result = v5 + 2608;
      a2[1] = v5 + 2608;
    }

    a2[1] = result;
  }

  return result;
}

void sub_523734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_523754(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_68D828(a2, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_68D828(a2, 9);
  }

  v7 = sub_68D828(a2, 5);
  v8 = sub_68C850(a2);
  if (v8 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = ceil((v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v11 = (v10 + v10) + 1;
      goto LABEL_12;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_12:
    v10 = (v11 >> 1);
  }

  v12 = v10;
  if (*(a1 + 2097) != 1 || v6 & 1 | ((sub_68D7D8(a2) & 1) == 0))
  {
    v13 = 0;
    if (*(a1 + 1241) == 1)
    {
      goto LABEL_16;
    }

LABEL_31:
    v14 = 0;
    if (*(a1 + 1451))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v15 = *(a1 + 2140);
  v13 = v15 < *(a1 + 2144) && v15 < v12;
  if (*(a1 + 1241) != 1)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((*(a1 + 1431) & 1) != 0 || *(a1 + 2136) != 1)
  {
    v14 = 0;
    if ((v6 & 1) == 0)
    {
LABEL_19:
      v13 |= *(a1 + 2140) < v12;
      if (*(a1 + 1451))
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v14 = *(a1 + 2128) > 1uLL;
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (*(a1 + 1451))
  {
LABEL_37:
    if (*(a1 + 1431) & v6)
    {
      if (sub_68D828(a2, 4))
      {
        v18 = sub_68F6D8(a2);
        LODWORD(__p) = 0;
        *v46 = 0u;
        memset(v47, 0, sizeof(v47));
        if (&v47[1] != v18)
        {
          if (*(v18 + 23) < 0)
          {
            sub_13A68(&v47[1], *v18, *(v18 + 8));
          }

          else
          {
            v19 = *v18;
            v47[3] = *(v18 + 16);
            *&v47[1] = v19;
          }
        }

        v20 = a3[1];
        if (v20 >= a3[2])
        {
          v21 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v21 = v20 + 2608;
          a3[1] = v20 + 2608;
        }

        a3[1] = v21;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v22 = v46[0];
        if (v46[0])
        {
          v23 = v46[1];
          v24 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v23 = sub_52A624(v23 - 168);
            }

            while (v23 != v22);
            v24 = v46[0];
          }

          v46[1] = v22;
          operator delete(v24);
        }
      }

      if (sub_68D828(a2, 9))
      {
        sub_69250C(a2, &v43);
        memset(v47, 0, sizeof(v47));
        *v46 = 0u;
        LODWORD(__p) = 1;
        sub_52ABAC(v46, v43, v44, 0xCF3CF3CF3CF3CF3DLL * ((v44 - v43) >> 3));
        v25 = a3[1];
        if (v25 >= a3[2])
        {
          v26 = sub_52A774(a3, &__p);
        }

        else
        {
          sub_52A8C8(a3[1], &__p);
          v26 = v25 + 2608;
          a3[1] = v25 + 2608;
        }

        a3[1] = v26;
        if (SHIBYTE(v47[3]) < 0)
        {
          operator delete(v47[1]);
        }

        v27 = v46[0];
        if (v46[0])
        {
          v28 = v46[1];
          v29 = v46[0];
          if (v46[1] != v46[0])
          {
            do
            {
              v28 = sub_52A624(v28 - 168);
            }

            while (v28 != v27);
            v29 = v46[0];
          }

          v46[1] = v27;
          operator delete(v29);
        }

        v30 = v43;
        if (v43)
        {
          v31 = v44;
          v32 = v43;
          if (v44 != v43)
          {
            do
            {
              v31 = sub_52A624((v31 - 168));
            }

            while (v31 != v30);
            v32 = v43;
          }

          v44 = v30;
          operator delete(v32);
        }
      }
    }

    goto LABEL_70;
  }

LABEL_32:
  if ((v6 ^ 1))
  {
    goto LABEL_37;
  }

  LODWORD(v43) = 21;
  v17 = a3[1];
  if (v17 >= a3[2])
  {
    a3[1] = sub_528BA0(a3, &v43);
  }

  else
  {
    __p = 0;
    v46[0] = 0;
    v46[1] = 0;
    sub_528DAC(v17, 21, &__p);
    if (SHIBYTE(v46[1]) < 0)
    {
      operator delete(__p);
    }

    a3[1] = v17 + 2608;
    a3[1] = v17 + 2608;
  }

LABEL_70:
  if (*(a1 + 1242) != 1)
  {
    if (!v14)
    {
      if (!v13)
      {
        return;
      }

      goto LABEL_106;
    }

    v35 = 0;
LABEL_90:
    LODWORD(v43) = 0;
    v36 = a3[1];
    if (v36 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v36, 0, &__p);
      goto LABEL_92;
    }

    goto LABEL_100;
  }

  if (*(a1 + 1431))
  {
    if (v7)
    {
      LODWORD(v43) = 13;
      v33 = a3[1];
      if (v33 >= a3[2])
      {
        v42 = sub_528BA0(a3, &v43);
        v34 = 0;
        v35 = 0;
        a3[1] = v42;
      }

      else
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v33, 13, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        a3[1] = v33 + 2608;
        v34 = 0;
        v35 = 0;
        a3[1] = v33 + 2608;
      }
    }

    else
    {
      v34 = 0;
      v35 = *(a1 + 2148) < v12;
    }

    goto LABEL_89;
  }

  if (*(a1 + 2137) == 1)
  {
    v34 = *(a1 + 2128) > 1uLL;
    if ((v7 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v34 = 0;
    if ((v7 & 1) == 0)
    {
LABEL_81:
      v35 = *(a1 + 2148) < v12;
      if (v14 && v34)
      {
        goto LABEL_82;
      }

LABEL_89:
      if (v14)
      {
        goto LABEL_90;
      }

      if (!v34)
      {
        goto LABEL_102;
      }

      LODWORD(v43) = 1;
      v37 = a3[1];
      if (v37 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v37, 1, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v38 = v37 + 2608;
        a3[1] = v37 + 2608;
        goto LABEL_101;
      }

LABEL_100:
      v38 = sub_528BA0(a3, &v43);
LABEL_101:
      a3[1] = v38;
      goto LABEL_102;
    }
  }

  v35 = 0;
  if (!v14 || !v34)
  {
    goto LABEL_89;
  }

LABEL_82:
  LODWORD(v43) = 2;
  v36 = a3[1];
  if (v36 >= a3[2])
  {
    goto LABEL_100;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v36, 2, &__p);
LABEL_92:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v36 + 2608;
  a3[1] = v36 + 2608;
LABEL_102:
  if ((v13 & v35) != 1)
  {
    if ((v13 & 1) == 0)
    {
      if (!v35)
      {
        return;
      }

      LODWORD(v43) = 4;
      v40 = a3[1];
      if (v40 < a3[2])
      {
        __p = 0;
        v46[0] = 0;
        v46[1] = 0;
        sub_528DAC(v40, 4, &__p);
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(__p);
        }

        v41 = v40 + 2608;
        a3[1] = v40 + 2608;
        goto LABEL_117;
      }

LABEL_116:
      v41 = sub_528BA0(a3, &v43);
LABEL_117:
      a3[1] = v41;
      return;
    }

LABEL_106:
    LODWORD(v43) = 3;
    v39 = a3[1];
    if (v39 < a3[2])
    {
      __p = 0;
      v46[0] = 0;
      v46[1] = 0;
      sub_528DAC(v39, 3, &__p);
      goto LABEL_108;
    }

    goto LABEL_116;
  }

  LODWORD(v43) = 5;
  v39 = a3[1];
  if (v39 >= a3[2])
  {
    goto LABEL_116;
  }

  __p = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_528DAC(v39, 5, &__p);
LABEL_108:
  if (SHIBYTE(v46[1]) < 0)
  {
    operator delete(__p);
  }

  a3[1] = v39 + 2608;
  a3[1] = v39 + 2608;
}

void sub_523E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_51B6E0((v21 + 8));
  _Unwind_Resume(a1);
}

void sub_523EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v24 + 8) = v25;
  _Unwind_Resume(exception_object);
}

void sub_523FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v17 + 8) = v18;
  _Unwind_Resume(exception_object);
}

void sub_523FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!sub_6905BC(a2))
  {
    return;
  }

  if (sub_68D944(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 8;
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v6, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v8 = sub_E6F454(a1 + 1256);
  if (v8 == 0x7FFFFFFF || v8 < *(a1 + 2104))
  {
    goto LABEL_18;
  }

  v9 = sub_E6F454(a1 + 1256);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 9;
  *&v39[40] = v9;
  v10 = a3[1];
  if (v10 >= a3[2])
  {
    v11 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v10, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v10 + 2608;
    a3[1] = v10 + 2608;
  }

  a3[1] = v11;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_18:
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 1545))
  {
    goto LABEL_28;
  }

  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 7;
  v12 = a3[1];
  if (v12 >= a3[2])
  {
    v13 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v12, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v12 + 2608;
    a3[1] = v12 + 2608;
  }

  a3[1] = v13;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_28:
    if (*(a1 + 2111) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  operator delete(v40);
  if (*(a1 + 2111) != 1)
  {
    goto LABEL_40;
  }

LABEL_29:
  if (sub_E6F0DC(a1 + 1256) && sub_E6F36C(a1 + 1256))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 10;
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v15 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v14, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v14 + 2608;
      a3[1] = v14 + 2608;
    }

    a3[1] = v15;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_40:
  if (*(a1 + 2112) == 1 && *(a1 + 1545) == 1 && sub_68D938(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 11;
    v16 = a3[1];
    if (v16 >= a3[2])
    {
      v17 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v16, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v16 + 2608;
      a3[1] = v16 + 2608;
    }

    a3[1] = v17;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v18 = sub_453478(a2);
  if (!v18)
  {
    sub_6900C0(a2, &v37);
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *v39 = 0;
    *&v39[8] = v37;
    *&v39[24] = v38;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
LABEL_84:
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      a3[1] = v23 + 2608;
      return;
    }

    v24 = sub_52B080(a3, v39);
    goto LABEL_94;
  }

  v19 = v18;
  if (*(a1 + 1545))
  {
    goto LABEL_65;
  }

  v20 = sub_68C454(a2, 0);
  v21 = sub_69B1BC(v20);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 1;
  *&v39[24] = 0;
  *&v39[32] = v19;
  if (&v40 != v21)
  {
    if (*(v21 + 23) < 0)
    {
      sub_13A68(&v40, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      v41 = *(v21 + 16);
      v40 = v22;
    }
  }

  v25 = a3[1];
  if (v25 >= a3[2])
  {
    v26 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    *__p = v40;
    v45 = v41;
    v40 = 0uLL;
    v41 = 0;
    sub_52B230(v25, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v26 = v25 + 2608;
    a3[1] = v25 + 2608;
  }

  a3[1] = v26;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_65:
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  if (sub_68F5E4(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    if (v19 == 1)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = v27;
    v28 = a3[1];
    if (v28 >= a3[2])
    {
      v29 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v28, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = v28 + 2608;
      a3[1] = v28 + 2608;
    }

    a3[1] = v29;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_79:
  v30 = sub_4536C8(a2, 10);
  v31 = sub_E6F808(a1 + 1256, 10);
  if (!sub_4D1F6C(a2))
  {
    v32 = sub_68C454(a2, 0);
    v33 = sub_73F54(v32);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);
    while (v34 != v35)
    {
      if (*v34 != 10 && (sub_96E04(v34) & 1) != 0)
      {
        return;
      }

      v34 += 16;
    }
  }

  if (!v31 && (*(a1 + 2113) & 1) != 0 && v30)
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 12;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
      goto LABEL_84;
    }

    v24 = sub_52B080(a3, v39);
LABEL_94:
    v36 = SHIBYTE(v41);
    a3[1] = v24;
    if (v36 < 0)
    {
      operator delete(v40);
    }
  }
}

void sub_5247AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_524920(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_68C850(a2);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = ceil((v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_10:
  v10 = v8;
  if (*(a1 + 1237) != 1)
  {
    v12 = 0;
    v11 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!sub_68EFF0(a2) || sub_68F064(a2))
  {
    v11 = 0;
    if (sub_68EFF0(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  v11 = *(a1 + 2152) < v10;
  if (!sub_68EFF0(a2))
  {
LABEL_24:
    v12 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (sub_68EF88(a2))
    {
      v13 = 0;
      v14 = 1;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = 0;
      v13 = *(a1 + 2156) < v10;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v15 = 0;
    v16 = 0;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

LABEL_14:
  v12 = sub_68F064(a2);
  if (*(a1 + 1238) == 1)
  {
    goto LABEL_17;
  }

LABEL_25:
  v14 = 0;
  v13 = 0;
  if (*(a1 + 1236) != 1)
  {
    goto LABEL_21;
  }

LABEL_26:
  v17 = sub_68F104(a2);
  v18 = *(a1 + 2088);
  v19 = v18 * sub_68C7DC(a2);
  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_32:
  if (v17 >= v19)
  {
    v15 = 0;
    v16 = 1;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = 0;
    v15 = *(a1 + 2160) < v10;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_36:
  if (*(a1 + 2110) == 1)
  {
    v32 = 47;
    v21 = a3[1];
    if (v21 >= a3[2])
    {
      v22 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v21, 47, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v22 = v21 + 2608;
      a3[1] = v21 + 2608;
    }

    a3[1] = v22;
  }

LABEL_43:
  if (v11 && v13 && v15)
  {
    v32 = 11;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 11, &__p);
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  if (v11 && v13)
  {
    v32 = 9;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 9, &__p);
      goto LABEL_55;
    }

LABEL_58:
    p_p = &v32;
LABEL_59:
    a3[1] = sub_528BA0(a3, p_p);
    goto LABEL_60;
  }

  if (v11 && v15)
  {
    v32 = 10;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 10, &__p);
LABEL_55:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_57;
  }

  if (v13 && v15)
  {
    v32 = 12;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 12, &__p);
    goto LABEL_55;
  }

  if (v11)
  {
    LODWORD(__p) = 6;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      sub_528D34(a3, a3[1], &__p);
LABEL_57:
      a3[1] = v23 + 2608;
      a3[1] = v23 + 2608;
      goto LABEL_60;
    }

    p_p = &__p;
    goto LABEL_59;
  }

  if (v13)
  {
    v31 = 7;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_60;
    }

    v31 = 8;
  }

  LODWORD(__p) = v31;
  sub_519290(a3, &__p);
LABEL_60:
  if (v12)
  {
    v32 = 14;
    v25 = a3[1];
    if (v25 >= a3[2])
    {
      v26 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v25, 14, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v26 = v25 + 2608;
      a3[1] = v25 + 2608;
    }

    a3[1] = v26;
  }

  if (v16)
  {
    v32 = 15;
    v27 = a3[1];
    if (v27 >= a3[2])
    {
      v28 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v27, 15, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v28 = v27 + 2608;
      a3[1] = v27 + 2608;
    }

    a3[1] = v28;
  }

  if (v14)
  {
    v32 = 16;
    v29 = a3[1];
    if (v29 >= a3[2])
    {
      v30 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v29, 16, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v30 = v29 + 2608;
      a3[1] = v29 + 2608;
    }

    a3[1] = v30;
  }
}

void sub_524EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

uint64_t sub_524F18(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (*(result + 2099) == 1)
  {
    v5 = result;
    result = sub_68EF20(a2);
    if (result)
    {
      v9 = 40;
      v6 = a3[1];
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v9);
      }

      else
      {
        __p = 0;
        v11 = 0;
        v12 = 0;
        sub_528DAC(v6, 40, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        result = v6 + 2608;
        a3[1] = v6 + 2608;
      }

      a3[1] = result;
    }

    if (*(v5 + 1246) == 1)
    {
      result = sub_68F064(a2);
      if (result)
      {
        v9 = 43;
        v7 = a3[1];
        if (v7 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v7, 43, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v7 + 2608;
          a3[1] = v7 + 2608;
        }

        a3[1] = result;
      }
    }

    if (*(v5 + 1247) == 1)
    {
      result = sub_68EF88(a2);
      if (result)
      {
        v9 = 44;
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v8, 44, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v8 + 2608;
          a3[1] = v8 + 2608;
        }

        a3[1] = result;
      }
    }
  }

  return result;
}

void sub_5250A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5250C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5250E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_692474(a2, &v20);
  sub_69263C(a2, &__p);
  sub_6925A4(a2, &v16);
  if (v20 != v21 || __p != v19 || (v5 = v16, v16 != v17))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_529D50(a3, &v20, &__p, &v16);
    }

    else
    {
      sub_529EBC(a3[1], &v20, &__p, &v16);
      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    v5 = v16;
  }

  if (v5)
  {
    v8 = v17;
    v9 = v5;
    if (v17 != v5)
    {
      do
      {
        v8 = sub_52A624(v8 - 168);
      }

      while (v8 != v5);
      v9 = v16;
    }

    v17 = v5;
    operator delete(v9);
  }

  v10 = __p;
  if (__p)
  {
    v11 = v19;
    v12 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = sub_52A624(v11 - 168);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v19 = v10;
    operator delete(v12);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v14 = sub_52A624(v14 - 168);
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }
}

void sub_525244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_51B6E0(va);
  sub_51B6E0(va1);
  sub_51B6E0((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_525294(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C454(a2, 0);
  v7 = sub_45AC50(v6);
  v8 = (a1 + 1512);
  if (*(a1 + 1535) < 0)
  {
    v9 = *(a1 + 1520);
    if (v9)
    {
      sub_325C(v23, *v8, v9);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 1535))
  {
    *v23 = *v8;
    v24 = *(a1 + 1528);
    goto LABEL_7;
  }

  sub_51B7A8(*(a1 + 8), *(v7 + 32) | ((*(v7 + 36) & 0x1FFFFFFF) << 32), v23);
LABEL_7:
  v10 = sub_68F328(a2);
  v22 = 0;
  v11 = 0uLL;
  *__p = 0u;
  v12 = *v10;
  v13 = v10[1];
  if (*v10 != v13)
  {
    do
    {
      if (sub_658A08(v12 + 744, 0))
      {
        v15 = __p[1];
        if (__p[1] >= v22)
        {
          v14 = sub_52B440(__p, v12, v23);
        }

        else
        {
          sub_52B5A4(__p[1], v12, v23);
          v14 = v15 + 2608;
        }

        __p[1] = v14;
      }

      v12 += 1120;
    }

    while (v12 != v13);
    v11 = *__p;
  }

  v16 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((*(&v11 + 1) - v11) >> 4));
  if (*(&v11 + 1) == v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_531B08(v11, *(&v11 + 1), &v25, v17, 1);
  sub_51B90C(__p[0], __p[1], a3);
  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = sub_52E078(v19 - 2608);
      }

      while (v19 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_525458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_525494(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 2122) == 1)
  {
    v4 = sub_68F370(a2);
    v14 = 0;
    v5 = 0uLL;
    *__p = 0u;
    v6 = *v4;
    v7 = v4[1];
    if (*v4 != v7)
    {
      do
      {
        if (sub_658A08(v6 + 744, 1))
        {
          v9 = __p[1];
          if (__p[1] >= v14)
          {
            v8 = sub_52C6A4(__p, v6);
          }

          else
          {
            sub_52C7F8(__p[1], v6);
            v8 = v9 + 2608;
          }

          __p[1] = v8;
        }

        v6 += 1120;
      }

      while (v6 != v7);
      v5 = *__p;
    }

    sub_51B90C(v5, *(&v5 + 1), a3);
    v10 = __p[0];
    if (__p[0])
    {
      v11 = __p[1];
      v12 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v11 = sub_52E078(v11 - 2608);
        }

        while (v11 != v10);
        v12 = __p[0];
      }

      __p[1] = v10;
      operator delete(v12);
    }
  }
}

uint64_t sub_5255CC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 1479) != 1)
  {
    return result;
  }

  v5 = result;
  result = sub_3B6890(*result);
  v7 = *result;
  v6 = *(result + 4);
  if (*result == 0x7FFFFFFF || v7 <= v6)
  {
    return result;
  }

  v9 = *(result + 8);
  result = sub_6910B0();
  if (result)
  {
    return result;
  }

  if (v9 == 1)
  {
    v11 = sub_68C848(a2);
    v12 = *(v5 + 2100);
    *&v15 = __PAIR64__(v6, v7);
    DWORD2(v15) = 1;
    HIDWORD(v15) = v11;
    v16 = v12;
    v10 = a3[1];
    if (v10 < a3[2])
    {
LABEL_13:
      result = sub_52D71C(a3[1], &v15);
      a3[1] = v10 + 2608;
      a3[1] = v10 + 2608;
      return result;
    }

LABEL_14:
    result = sub_52D5C8(a3, &v15);
    a3[1] = result;
    return result;
  }

  if (!v9)
  {
    v16 = 0;
    *&v15 = __PAIR64__(v6, v7);
    *(&v15 + 1) = 0x7FFFFFFF00000000;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v15);
    sub_4A5C(&v15, "Unknown timepoint type given.", 29);
    sub_1959680(&v15, __p);
    sub_7E854(__p, 1u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_1959728(&v15);
  }

  return result;
}