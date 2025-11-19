void sub_9678EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_96790C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v28 = a4;
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      sub_967AF8(&v28, *i, &v16);
      v8 = a3[1];
      if (v8 >= a3[2])
      {
        sub_94A210(a3, &v16);
        v13 = SHIBYTE(v27);
        a3[1] = v14;
        if (v13 < 0)
        {
          operator delete(__p);
          if ((SHIBYTE(v24) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = v16;
        *(v8 + 8) = 0;
        *(v8 + 40) = -1;
        v9 = v18;
        if (v18 != -1)
        {
          v29 = v8 + 8;
          (off_266DEE0[v18])(&v29, v17);
          *(v8 + 40) = v9;
        }

        *(v8 + 48) = v19;
        v10 = v20;
        *(v8 + 72) = v21;
        *(v8 + 56) = v10;
        v21 = 0;
        v20 = 0uLL;
        *(v8 + 80) = v22;
        v11 = v23;
        *(v8 + 104) = v24;
        *(v8 + 88) = v11;
        v24 = 0;
        v23 = 0uLL;
        *(v8 + 112) = v25;
        v12 = __p;
        *(v8 + 136) = v27;
        *(v8 + 120) = v12;
        v27 = 0;
        __p = 0uLL;
        a3[1] = v8 + 144;
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
LABEL_12:
          if ((SHIBYTE(v21) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      operator delete(v23);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
LABEL_13:
        v15 = v18;
        if (v18 == -1)
        {
          continue;
        }

LABEL_18:
        (off_266DEB8[v15])(&v29, v17);
        continue;
      }

LABEL_17:
      operator delete(v20);
      v15 = v18;
      if (v18 != -1)
      {
        goto LABEL_18;
      }
    }
  }

  return a3;
}

void sub_967AF8(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_9A8248(*(*a1 + 72), *(v5 + 88), a2, 0xFFFFFFFF00000000, (v5 + 24), &v10);
  LODWORD(v19[0]) = -1;
  *(v19 + 3) = -1;
  memset(v19 + 7, 0, 26);
  memset(&v20, 0, sizeof(v20));
  v21 = 0;
  v23 = 0;
  v22 = 0uLL;
  v18 = 0;
  v16 = 3;
  sub_5410A0(v17, &v10);
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12);
    v6 = v11;
    if (v11 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v11;
  if (v11 != -1)
  {
LABEL_7:
    (off_266DEB8[v6])(&v24, &v10);
  }

LABEL_8:
  sub_9BC28C(a2, *(v5 + 64), *(v5 + 88), *(v5 + 56), &v10);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v20 = v10;
  v7 = v18;
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 40) = -1;
  if (v7 != -1)
  {
    v10.__r_.__value_.__r.__words[0] = a3 + 8;
    (off_266DEE0[v7])(&v10, v17);
    *(a3 + 40) = v7;
  }

  v8 = v19[3];
  *(a3 + 48) = v19[0];
  *(a3 + 56) = *&v19[1];
  *(a3 + 72) = v8;
  memset(&v19[1], 0, 24);
  *(a3 + 80) = v19[4];
  *(a3 + 88) = v20;
  memset(&v20, 0, sizeof(v20));
  *(a3 + 112) = v21;
  v9 = v22;
  *(a3 + 136) = v23;
  *(a3 + 120) = v9;
  v22 = 0uLL;
  v23 = 0;
  if (v18 != -1)
  {
    (off_266DEB8[v18])(&v10, v17);
  }
}

void sub_967D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_948038(va);
  _Unwind_Resume(a1);
}

void sub_967D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_948038(va1);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_967D3C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    while (1)
    {
      v9 = *v4;
      if (*a3 == *v4)
      {
        break;
      }

      v10 = *(a4 + 56);
      if ((*(v10 + 1432) & 1) == 0)
      {
        if (sub_94C60C(*(a4 + 64), *v4))
        {
          break;
        }

        v10 = *(a4 + 56);
      }

      v11 = *(v10 + 1433);
      if (v11 < sub_94C828(*(a4 + 64), v9))
      {
        break;
      }

      if (++v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = v4 + 1; ; ++i)
      {
        if (i == a2)
        {
          return v4;
        }

        v13 = *i;
        if (*a3 != *i)
        {
          v14 = *(a4 + 56);
          if ((*(v14 + 1432) & 1) == 0)
          {
            if (sub_94C60C(*(a4 + 64), *i))
            {
              continue;
            }

            v14 = *(a4 + 56);
          }

          v15 = *(v14 + 1433);
          if (v15 >= sub_94C828(*(a4 + 64), v13))
          {
            *v4++ = *i;
          }
        }
      }
    }
  }

  return v4;
}

uint64_t *sub_967E78(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v9 = sub_9480E4(*i, *(a4 + 64), *(a4 + 56), &v18);
      v10 = a3[1];
      if (v10 >= a3[2])
      {
        sub_94A210(a3, &v18);
        v15 = SHIBYTE(v29);
        a3[1] = v16;
        if (v15 < 0)
        {
          operator delete(__p);
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v10 = v18;
        *(v10 + 8) = 0;
        *(v10 + 40) = -1;
        v11 = v20;
        if (v20 != -1)
        {
          v30[0] = v10 + 8;
          (off_266DEE0[v20])(v30, v19, v9);
          *(v10 + 40) = v11;
        }

        *(v10 + 48) = v21;
        v12 = v22;
        *(v10 + 72) = v23;
        *(v10 + 56) = v12;
        v23 = 0;
        v22 = 0uLL;
        *(v10 + 80) = v24;
        v13 = v25;
        *(v10 + 104) = v26;
        *(v10 + 88) = v13;
        v26 = 0;
        v25 = 0uLL;
        *(v10 + 112) = v27;
        v14 = __p;
        *(v10 + 136) = v29;
        *(v10 + 120) = v14;
        v29 = 0;
        __p = 0uLL;
        a3[1] = v10 + 144;
        if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
LABEL_12:
          if ((SHIBYTE(v23) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      operator delete(v25);
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
LABEL_13:
        v17 = v20;
        if (v20 == -1)
        {
          continue;
        }

LABEL_18:
        (off_266DEB8[v17])(v30, v19);
        continue;
      }

LABEL_17:
      operator delete(v22);
      v17 = v20;
      if (v20 != -1)
      {
        goto LABEL_18;
      }
    }
  }

  return a3;
}

void sub_968064(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_936658(a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v10 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xE38E38E38E38E3)
      {
        v12 = 0x1C71C71C71C71C7;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x8E38E38E38E38E39 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v25 = a2 + v22;
        v26 = (a2 + v22 + 120);
        *(v8 + v22) = *(a2 + v22);
        sub_5410A0(v8 + v22 + 8, a2 + v22 + 8);
        if (v8 != a2)
        {
          v27 = *(v25 + 143);
          if (*(v8 + v22 + 143) < 0)
          {
            if (v27 >= 0)
            {
              v23 = (a2 + v22 + 120);
            }

            else
            {
              v23 = *v26;
            }

            if (v27 >= 0)
            {
              v24 = *(v25 + 143);
            }

            else
            {
              v24 = *(a2 + v22 + 128);
            }

            sub_13B38(v8 + v22 + 120, v23, v24);
          }

          else if ((*(v25 + 143) & 0x80) != 0)
          {
            sub_13A68((v8 + v22 + 120), *v26, *(a2 + v22 + 128));
          }

          else
          {
            v28 = *v26;
            *(v8 + v22 + 136) = *(a2 + v22 + 136);
            *(v8 + v22 + 120) = v28;
          }
        }

        v22 += 144;
      }

      while (v25 + 144 != a3);
      v13 = a1[1];
      v8 += v22;
    }

    if (v13 == v8)
    {
LABEL_58:
      a1[1] = v8;
      return;
    }

    v29 = (v13 - 65);
    while (1)
    {
      if (v29[64] < 0)
      {
        operator delete(*(v29 + 41));
        if ((v29[32] & 0x80000000) == 0)
        {
LABEL_51:
          if ((*v29 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_56;
        }
      }

      else if ((v29[32] & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(*(v29 + 9));
      if ((*v29 & 0x80000000) == 0)
      {
LABEL_52:
        v31 = *(v29 - 39);
        if (v31 == -1)
        {
          goto LABEL_48;
        }

LABEL_57:
        (off_266DEB8[v31])(&v32, v29 - 71);
        goto LABEL_48;
      }

LABEL_56:
      operator delete(*(v29 - 23));
      v31 = *(v29 - 39);
      if (v31 != -1)
      {
        goto LABEL_57;
      }

LABEL_48:
      *(v29 - 39) = -1;
      v30 = v29 - 79;
      v29 -= 144;
      if (v30 == v8)
      {
        goto LABEL_58;
      }
    }
  }

  v14 = a2 + v13 - v8;
  if (v13 != v8)
  {
    v15 = 0;
    do
    {
      v18 = a2 + v15;
      v19 = (a2 + v15 + 120);
      *(v8 + v15) = *(a2 + v15);
      sub_5410A0(v8 + v15 + 8, a2 + v15 + 8);
      if (v8 != a2)
      {
        v20 = *(v18 + 143);
        if (*(v8 + v15 + 143) < 0)
        {
          if (v20 >= 0)
          {
            v16 = (a2 + v15 + 120);
          }

          else
          {
            v16 = *v19;
          }

          if (v20 >= 0)
          {
            v17 = *(v18 + 143);
          }

          else
          {
            v17 = *(a2 + v15 + 128);
          }

          sub_13B38(v8 + v15 + 120, v16, v17);
        }

        else if ((*(v18 + 143) & 0x80) != 0)
        {
          sub_13A68((v8 + v15 + 120), *v19, *(a2 + v15 + 128));
        }

        else
        {
          v21 = *v19;
          *(v8 + v15 + 136) = *(a2 + v15 + 136);
          *(v8 + v15 + 120) = v21;
        }
      }

      v15 += 144;
    }

    while (v18 + 144 != v14);
    v13 = a1[1];
  }

  a1[1] = sub_94C3A8(a1, v14, a3, v13);
}

void sub_9683F4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_936658(a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v10 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xE38E38E38E38E3)
      {
        v12 = 0x1C71C71C71C71C7;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x8E38E38E38E38E39 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v25 = a2 + v22;
        v26 = (a2 + v22 + 120);
        *(v8 + v22) = *(a2 + v22);
        sub_5410A0(v8 + v22 + 8, a2 + v22 + 8);
        if (v8 != a2)
        {
          v27 = *(v25 + 143);
          if (*(v8 + v22 + 143) < 0)
          {
            if (v27 >= 0)
            {
              v23 = (a2 + v22 + 120);
            }

            else
            {
              v23 = *v26;
            }

            if (v27 >= 0)
            {
              v24 = *(v25 + 143);
            }

            else
            {
              v24 = *(a2 + v22 + 128);
            }

            sub_13B38(v8 + v22 + 120, v23, v24);
          }

          else if ((*(v25 + 143) & 0x80) != 0)
          {
            sub_13A68((v8 + v22 + 120), *v26, *(a2 + v22 + 128));
          }

          else
          {
            v28 = *v26;
            *(v8 + v22 + 136) = *(a2 + v22 + 136);
            *(v8 + v22 + 120) = v28;
          }
        }

        v22 += 144;
      }

      while (v25 + 144 != a3);
      v13 = a1[1];
      v8 += v22;
    }

    if (v13 == v8)
    {
LABEL_58:
      a1[1] = v8;
      return;
    }

    v29 = (v13 - 65);
    while (1)
    {
      if (v29[64] < 0)
      {
        operator delete(*(v29 + 41));
        if ((v29[32] & 0x80000000) == 0)
        {
LABEL_51:
          if ((*v29 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_56;
        }
      }

      else if ((v29[32] & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(*(v29 + 9));
      if ((*v29 & 0x80000000) == 0)
      {
LABEL_52:
        v31 = *(v29 - 39);
        if (v31 == -1)
        {
          goto LABEL_48;
        }

LABEL_57:
        (off_266DEB8[v31])(&v32, v29 - 71);
        goto LABEL_48;
      }

LABEL_56:
      operator delete(*(v29 - 23));
      v31 = *(v29 - 39);
      if (v31 != -1)
      {
        goto LABEL_57;
      }

LABEL_48:
      *(v29 - 39) = -1;
      v30 = v29 - 79;
      v29 -= 144;
      if (v30 == v8)
      {
        goto LABEL_58;
      }
    }
  }

  v14 = v13 - v8 + a2;
  if (v13 != v8)
  {
    v15 = 0;
    do
    {
      v18 = a2 + v15;
      v19 = (a2 + v15 + 120);
      *(v8 + v15) = *(a2 + v15);
      sub_5410A0(v8 + v15 + 8, a2 + v15 + 8);
      if (v8 != a2)
      {
        v20 = *(v18 + 143);
        if (*(v8 + v15 + 143) < 0)
        {
          if (v20 >= 0)
          {
            v16 = (a2 + v15 + 120);
          }

          else
          {
            v16 = *v19;
          }

          if (v20 >= 0)
          {
            v17 = *(v18 + 143);
          }

          else
          {
            v17 = *(a2 + v15 + 128);
          }

          sub_13B38(v8 + v15 + 120, v16, v17);
        }

        else if ((*(v18 + 143) & 0x80) != 0)
        {
          sub_13A68((v8 + v15 + 120), *v19, *(a2 + v15 + 128));
        }

        else
        {
          v21 = *v19;
          *(v8 + v15 + 136) = *(a2 + v15 + 136);
          *(v8 + v15 + 120) = v21;
        }
      }

      v15 += 144;
    }

    while (v18 + 144 != v14);
    v13 = a1[1];
  }

  a1[1] = sub_94A014(a1, v14, a3, v13);
}

uint64_t sub_968784(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    do
    {
      v6 = *v2;
      if (*v2 != 4)
      {
        if (v6 == 3)
        {
          v8 = *(v2 + 40);
          if (v8 > 2)
          {
            if (v8 != 3 && v8 != 4)
            {
              goto LABEL_27;
            }

            v5 = *(v2 + 31);
            if ((v5 & 0x80u) != 0)
            {
              v5 = *(v2 + 16);
            }

            if (!v5)
            {
              goto LABEL_27;
            }
          }

          else if (v8 == 1)
          {
            if (*(v2 + 8) == -1)
            {
              goto LABEL_27;
            }
          }

          else if (v8 != 2 || *(v2 + 12) == -1 && *(v2 + 8) == -1 && *(v2 + 16) == *(v2 + 24))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v6 != 1)
          {
            goto LABEL_27;
          }

          v7 = *(v2 + 143);
          if ((v7 & 0x80u) != 0)
          {
            v7 = *(v2 + 128);
          }

          if (!v7)
          {
            goto LABEL_27;
          }
        }
      }

      v2 += 144;
    }

    while (v2 != a2);
    v2 = a2;
LABEL_27:
    if (v2 != a2)
    {
      for (i = v2 + 144; ; i += 144)
      {
        if (i == a2)
        {
          return v2;
        }

        v10 = *i;
        if (*i == 4)
        {
          goto LABEL_30;
        }

        if (v10 == 3)
        {
          v12 = *(i + 40);
          if (v12 > 2)
          {
            if (v12 == 3 || v12 == 4)
            {
              v13 = *(i + 31);
              if ((v13 & 0x80u) != 0)
              {
                v13 = *(i + 16);
              }

              if (v13)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            if (v12 == 1)
            {
              if (*(i + 8) == -1)
              {
                continue;
              }

LABEL_30:
              sub_94BC18(v2, i);
              v2 += 144;
              continue;
            }

            if (v12 == 2 && (*(i + 12) != -1 || *(i + 8) != -1 || *(i + 16) != *(i + 24)))
            {
              goto LABEL_30;
            }
          }
        }

        else if (v10 == 1)
        {
          v11 = *(i + 143);
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(i + 128);
          }

          if (v11)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  return v2;
}

void sub_968970(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  v7 = sub_3A25A8(*(a1 + 88), a2, 0, "trip");
  v31 = *(v7 + *(v7 - *v7 + 6));
  v8 = sub_92FC60(*(a1 + 88), v31, 0, "line");
  v30 = *(v8 + *(v8 - *v8 + 6));
  v9 = *(a1 + 72);
  v10 = sub_502FF8(v9, a3, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x39u || (v12 = v11[28]) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v29 = a4 + 1;
LABEL_12:
    v17 = *(a1 + 72);
    v18 = sub_502FF8(v17, a3, 0, "stop");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu && (v20 = v19[7]) != 0 && (v21 = (v18 + v20 + *(v18 + v20)), v22 = *v21, v22))
    {
      v23 = 0;
      v24 = 0;
      v25 = 8 * v22;
      v26 = v21 + 1;
      do
      {
        if (*(v17 + 3888) != 1 || sub_2D5204(*(v17 + 3872)))
        {
          operator new();
        }

        v26 += 2;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v27 = *a4;
    if (*a4)
    {
      a4[1] = v27;
      operator delete(v27);
      a4[1] = 0;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_24;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
    {
      v32[0] = *v16;
      sub_2512DC(a4, v32);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v24 = *a4;
  v23 = a4[1];
  v29 = a4 + 1;
  if (*a4 == v23)
  {
    goto LABEL_12;
  }

LABEL_24:
  v32[0] = a1;
  v32[1] = &v31;
  v32[2] = &v30;
  if (v24 == v23)
  {
LABEL_27:
    v24 = v23;
  }

  else
  {
    while ((sub_9691B4(v32, *v24) & 1) == 0)
    {
      if (++v24 == v23)
      {
        goto LABEL_27;
      }
    }

    if (v24 != v23)
    {
      for (i = v24 + 1; i != v23; ++i)
      {
        if ((sub_9691B4(v32, *i) & 1) == 0)
        {
          *v24++ = *i;
        }
      }
    }
  }

  if (v24 != a4[1])
  {
    *v29 = v24;
  }
}

void sub_968D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v12 = *v10;
  if (*v10)
  {
    *a10 = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_968D54(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v6 = sub_3A25A8(*(a1 + 88), a2, 0, "trip");
  v7 = sub_92FC60(*(v5 + 88), *(v6 + *(v6 - *v6 + 6)), 0, "line");
  v30 = *(v7 + *(v7 - *v7 + 6));
  v8 = *(v5 + 72);
  v9 = sub_502FF8(v8, a3, 0, "stop");
  v10 = (v9 - *v9);
  v29 = v5;
  if (*v10 < 0x37u)
  {
    goto LABEL_13;
  }

  v11 = v10[27];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = (v9 + v11 + *(v9 + v11));
  v13 = *v12;
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 8 * v13;
  v16 = v12 + 1;
  do
  {
    if (*(v8 + 3888) != 1 || sub_2D5204(*(v8 + 3872)))
    {
      v17 = v14;
      v18 = v14 >> 3;
      if (((v14 >> 3) + 1) >> 61)
      {
        sub_1794();
      }

      if (v14 >> 3 != -1)
      {
        if (!(((v14 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v18) = *v16;
      v14 = 8 * v18 + 8;
      memcpy(0, 0, v17);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v5 = v29;
  if (!v14)
  {
LABEL_13:
    v19 = *(v5 + 72);
    v20 = sub_502FF8(v19, a3, 0, "stop");
    v21 = (v20 - *v20);
    if (*v21 >= 0x11u && (v22 = v21[8]) != 0 && (v23 = (v20 + v22 + *(v20 + v22)), v24 = *v23, v24))
    {
      v14 = 0;
      v25 = 8 * v24;
      v26 = v23 + 1;
      do
      {
        if (*(v19 + 3888) != 1 || sub_2D5204(*(v19 + 3872)))
        {
          operator new();
        }

        v26 += 2;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v14 = 0;
    }

    v5 = v29;
  }

  v27 = sub_967D3C(0, v14, &v30, v5);
  if (v27 != v14)
  {
    v14 = v27;
  }

  *a4 = v30;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  if (v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_969164(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9691B4(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = sub_92FC60(*(*a1 + 88), a2, 0, "line");
  v6 = (v5 + *(v5 - *v5 + 6));
  v8 = *v6;
  v7 = v6[1];
  if (*a1[1] == a2)
  {
    return 1;
  }

  v9 = a1[2];
  if (*v9 != v8 || v9[1] != v7)
  {
    return 1;
  }

  v10 = sub_92FC60(*(v4 + 88), a2, 0, "line");
  v11 = (v10 - *v10);
  if (*v11 >= 0x45u)
  {
    v12 = v11[34];
    if (v12)
    {
      if (*(v10 + v12 + *(v10 + v12)))
      {
        operator new();
      }
    }
  }

  return 1;
}

void sub_96944C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_96946C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v28 = a4;
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      sub_969658(&v28, *i, &v16);
      v8 = a3[1];
      if (v8 >= a3[2])
      {
        sub_94A210(a3, &v16);
        v13 = SHIBYTE(v27);
        a3[1] = v14;
        if (v13 < 0)
        {
          operator delete(__p);
          if ((SHIBYTE(v24) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = v16;
        *(v8 + 8) = 0;
        *(v8 + 40) = -1;
        v9 = v18;
        if (v18 != -1)
        {
          v29 = v8 + 8;
          (off_266DEE0[v18])(&v29, v17);
          *(v8 + 40) = v9;
        }

        *(v8 + 48) = v19;
        v10 = v20;
        *(v8 + 72) = v21;
        *(v8 + 56) = v10;
        v21 = 0;
        v20 = 0uLL;
        *(v8 + 80) = v22;
        v11 = v23;
        *(v8 + 104) = v24;
        *(v8 + 88) = v11;
        v24 = 0;
        v23 = 0uLL;
        *(v8 + 112) = v25;
        v12 = __p;
        *(v8 + 136) = v27;
        *(v8 + 120) = v12;
        v27 = 0;
        __p = 0uLL;
        a3[1] = v8 + 144;
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
LABEL_12:
          if ((SHIBYTE(v21) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      operator delete(v23);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
LABEL_13:
        v15 = v18;
        if (v18 == -1)
        {
          continue;
        }

LABEL_18:
        (off_266DEB8[v15])(&v29, v17);
        continue;
      }

LABEL_17:
      operator delete(v20);
      v15 = v18;
      if (v18 != -1)
      {
        goto LABEL_18;
      }
    }
  }

  return a3;
}

void sub_969658(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_9A8248(*(*a1 + 72), *(v5 + 88), a2, 0xFFFFFFFF00000000, (v5 + 24), &v10);
  LODWORD(v19[0]) = -1;
  *(v19 + 3) = -1;
  memset(v19 + 7, 0, 26);
  memset(&v20, 0, sizeof(v20));
  v21 = 0;
  v23 = 0;
  v22 = 0uLL;
  v18 = 0;
  v16 = 3;
  sub_5410A0(v17, &v10);
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12);
    v6 = v11;
    if (v11 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v11;
  if (v11 != -1)
  {
LABEL_7:
    (off_266DEB8[v6])(&v24, &v10);
  }

LABEL_8:
  sub_9BC28C(a2, *(v5 + 64), *(v5 + 88), *(v5 + 56), &v10);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v20 = v10;
  v7 = v18;
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 40) = -1;
  if (v7 != -1)
  {
    v10.__r_.__value_.__r.__words[0] = a3 + 8;
    (off_266DEE0[v7])(&v10, v17);
    *(a3 + 40) = v7;
  }

  v8 = v19[3];
  *(a3 + 48) = v19[0];
  *(a3 + 56) = *&v19[1];
  *(a3 + 72) = v8;
  memset(&v19[1], 0, 24);
  *(a3 + 80) = v19[4];
  *(a3 + 88) = v20;
  memset(&v20, 0, sizeof(v20));
  *(a3 + 112) = v21;
  v9 = v22;
  *(a3 + 136) = v23;
  *(a3 + 120) = v9;
  v22 = 0uLL;
  v23 = 0;
  if (v18 != -1)
  {
    (off_266DEB8[v18])(&v10, v17);
  }
}

void sub_96986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_948038(va);
  _Unwind_Resume(a1);
}

void sub_969880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_948038(va1);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_96989C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; ++i)
    {
      v9 = sub_9480E4(*i, *(a4 + 64), *(a4 + 56), &v18);
      v10 = a3[1];
      if (v10 >= a3[2])
      {
        sub_94A210(a3, &v18);
        v15 = SHIBYTE(v29);
        a3[1] = v16;
        if (v15 < 0)
        {
          operator delete(__p);
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v10 = v18;
        *(v10 + 8) = 0;
        *(v10 + 40) = -1;
        v11 = v20;
        if (v20 != -1)
        {
          v30[0] = v10 + 8;
          (off_266DEE0[v20])(v30, v19, v9);
          *(v10 + 40) = v11;
        }

        *(v10 + 48) = v21;
        v12 = v22;
        *(v10 + 72) = v23;
        *(v10 + 56) = v12;
        v23 = 0;
        v22 = 0uLL;
        *(v10 + 80) = v24;
        v13 = v25;
        *(v10 + 104) = v26;
        *(v10 + 88) = v13;
        v26 = 0;
        v25 = 0uLL;
        *(v10 + 112) = v27;
        v14 = __p;
        *(v10 + 136) = v29;
        *(v10 + 120) = v14;
        v29 = 0;
        __p = 0uLL;
        a3[1] = v10 + 144;
        if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
LABEL_12:
          if ((SHIBYTE(v23) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }
      }

      operator delete(v25);
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
LABEL_13:
        v17 = v20;
        if (v20 == -1)
        {
          continue;
        }

LABEL_18:
        (off_266DEB8[v17])(v30, v19);
        continue;
      }

LABEL_17:
      operator delete(v22);
      v17 = v20;
      if (v20 != -1)
      {
        goto LABEL_18;
      }
    }
  }

  return a3;
}

void sub_969A88()
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
  xmmword_27B1B98 = 0u;
  unk_27B1BA8 = 0u;
  dword_27B1BB8 = 1065353216;
  sub_3A9A34(&xmmword_27B1B98, v0);
  sub_3A9A34(&xmmword_27B1B98, v3);
  sub_3A9A34(&xmmword_27B1B98, __p);
  sub_3A9A34(&xmmword_27B1B98, v9);
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
    qword_27B1B70 = 0;
    qword_27B1B78 = 0;
    qword_27B1B68 = 0;
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

void sub_969CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1B80)
  {
    qword_27B1B88 = qword_27B1B80;
    operator delete(qword_27B1B80);
  }

  _Unwind_Resume(exception_object);
}

void sub_969E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_969FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_969FF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0x27FFFFFFFLL;
  *a3 = &off_266DAD0;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  if (sub_95A88C(a2))
  {
    sub_959954(a2, v11);
    sub_96A128(a1, v11, a2, *(a2 + 596), v8);
    a3[1] = v8[1];
    v6 = a3[2];
    if (v6)
    {
      a3[3] = v6;
      operator delete(v6);
    }

    *(a3 + 1) = v9;
    v7 = v11[0];
    a3[4] = v10;
    if (v7)
    {
      v11[1] = v7;
      operator delete(v7);
    }
  }

  *(a3 + 2) = *(a1 + 4);
}

void sub_96A0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    *v16 = v17;
    v19 = v16[2];
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v16 = v17;
    v19 = v16[2];
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  v16[3] = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}

void sub_96A128(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  a5[1] = 0x27FFFFFFFLL;
  a5[2] = 0;
  v28 = (a5 + 2);
  *a5 = &off_266DAD0;
  a5[3] = 0;
  a5[4] = 0;
  v6 = *a2;
  if (a2[1] == *a2)
  {
    sub_6FAB4();
  }

  v10 = *(v6 + 12);
  v11 = __ROR8__(*(v6 + 4), 32);
  v12 = sub_3A25A8(*(a1 + 24), v11, 0, "trip");
  v13 = (v12 - *v12);
  if (*v13 >= 9u)
  {
    v14 = v13[4];
    if (v14)
    {
      v15 = *(v12 + v14);
      if (v15)
      {
        v16 = 0;
        v29 = a4;
        v27 = a3;
        do
        {
          if (sub_95A8EC(v11, v10, v16, *(a1 + 16), *(a1 + 24)))
          {
            sub_96A3AC(a1, v16, a2, a3, v29, &v31);
            v18 = a5[3];
            v19 = a5[4];
            if (v18 < v19)
            {
              *v18 = v31;
              *(v18 + 16) = v32;
              v17 = v18 + 24;
            }

            else
            {
              v20 = *v28;
              v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v28) >> 3);
              v22 = v21 + 1;
              if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3);
              if (2 * v23 > v22)
              {
                v22 = 2 * v23;
              }

              if (v23 >= 0x555555555555555)
              {
                v24 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (v24 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 8 * ((v18 - *v28) >> 3);
              *v25 = v31;
              *(v25 + 16) = v32;
              v17 = 24 * v21 + 24;
              v26 = 24 * v21 - (v18 - v20);
              memcpy((v25 - (v18 - v20)), v20, v18 - v20);
              a5[2] = v26;
              a5[3] = v17;
              a5[4] = 0;
              if (v20)
              {
                operator delete(v20);
              }

              a3 = v27;
            }

            a5[3] = v17;
          }

          ++v16;
        }

        while (v15 != v16);
      }
    }
  }
}

void sub_96A378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *v9 = a9;
  v11 = v9[2];
  if (v11)
  {
    v9[3] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_96A3AC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *a3;
  if (a3[1] == *a3)
  {
    sub_6FAB4();
  }

  v12 = *(v7 + 4);
  v13 = *(v7 + 12);
  v14 = *(v7 + 16);
  v15 = __ROR8__(v12, 32);
  v16 = sub_3A231C(*(a1 + 24), v15, 0);
  v17 = &v16[-*v16];
  if (*v17 < 5u)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 2);
    if (*(v17 + 2))
    {
      v18 += &v16[*&v16[v18]];
    }
  }

  v19 = (v18 + ((4 * v12) & 0x3FFFFFFFFLL) + 4 + *(v18 + ((4 * v12) & 0x3FFFFFFFFLL) + 4));
  v20 = (v19 - *v19);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = *(v19 + v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = *&v16[24 * v22 + 4 + 24 * a2 + *(v17 + 3) + *&v16[*(v17 + 3)]];
  result = sub_2C939C(*(a1 + 8), v23, 1);
  if (!result || (v25 = (result - *result), *v25 < 0x1Du) || (v26 = v25[14]) == 0 || *(result + v26 + *(result + v26)) <= HIDWORD(v23) || *a1 == 1 && ((v44 = *(a1 + 8), v27 = sub_502FF8(v44, v23, 0, "stop"), v28 = v27 + *(v27 - *v27 + 6), v29 = *v28, LODWORD(v28) = *(v28 + 4), v28 >= 0xFFFFFFFE) ? (v28 = 4294967294) : (v28 = v28), v45 = v29 | (v28 << 32), v46 = 0x7FFFFFFF, result = sub_7FDC0((v44 + 3872), &v45), (result & 1) == 0))
  {
    *a6 = -1;
    goto LABEL_24;
  }

  v30 = sub_957C08(v23, a4, *(a1 + 8));
  result = sub_3A25A8(*(a1 + 24), v15, 0, "trip");
  v31 = (result - *result);
  if (*v31 >= 0x13u)
  {
    v32 = v31[9];
    if (v32)
    {
      if (*(result + v32 + *(result + v32)))
      {
        *a6 = v30;
LABEL_24:
        *(a6 + 8) = 0x8000000080000000;
        *(a6 + 16) = 0;
        return result;
      }
    }
  }

  v33 = *(a1 + 24);
  v45 = __PAIR64__(v12, HIDWORD(v12));
  if (v14 >= a2)
  {
    v34 = sub_96A748(v33, &v45, v13, a2);
  }

  else
  {
    v34 = sub_96A8FC(v33, &v45, v13, a2);
  }

  if (a5 < 0)
  {
    v35 = -5;
  }

  else
  {
    v35 = 5;
  }

  v36 = a5 / -10 + (((-103 * (v35 + a5 % 10)) >> 15) & 1) + ((-103 * (v35 + a5 % 10)) >> 10);
  v37 = v36 + v34;
  v38 = *(a1 + 16);
  result = **(v38 + 3896);
  if (result && (result = sub_39F47C(result, v15, v13, *(v38 + 3904))) != 0 && (v39 = *(a1 + 16), (result = **(v39 + 3896)) != 0) && (result = sub_39F47C(result, v15, v13, *(v39 + 3904))) != 0 && (v40 = *(result + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(result + 48) - v40) >> 2) > a2) && *(v40 + 20 * a2) != 255)
  {
    v41 = *(a1 + 16);
    if (v14 >= a2)
    {
      result = sub_96AAB0(v41, v15, v13, a2);
    }

    else
    {
      result = sub_96AC64(v41, v15, v13, a2);
    }

    v43 = v36 + result;
    v42 = 1;
  }

  else
  {
    v42 = 0;
    v43 = v37;
  }

  *a6 = v30;
  *(a6 + 8) = v37 | (v43 << 32);
  *(a6 + 16) = v42;
  return result;
}

uint64_t sub_96A748(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_3A231C(a1, *a2, 0);
  v8 = &v7[-*v7];
  v9 = *v8;
  if (v9 <= 4)
  {
    v13 = 0;
    v12 = (4 * *(a2 + 4) + 4 + dword_4[*(a2 + 4)]);
    v14 = (v12 - *(&dword_4[*(a2 + 4)] + dword_4[*(a2 + 4)]));
    v15 = *v14;
    if (v15 >= 0x15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v10 = v8[2];
  if (v8[2])
  {
    v10 += &v7[*&v7[v10]];
  }

  v11 = v10 + 4 * *(a2 + 4);
  v12 = (v11 + 4 + *(v11 + 4));
  if (v9 < 0xD || !v8[6])
  {
    v13 = 0;
    v14 = (v12 - *v12);
    v15 = *v14;
    if (v15 >= 0x15)
    {
      goto LABEL_9;
    }

LABEL_12:
    v17 = *&v13[((8 * a3 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8];
    if (v15 >= 0xB)
    {
      v18 = v14[5];
      if (v14[5])
      {
        goto LABEL_14;
      }
    }

    goto LABEL_19;
  }

  v13 = &v7[v8[6] + *&v7[v8[6]]];
  v14 = (v12 - *v12);
  v15 = *v14;
  if (v15 < 0x15)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v14[10])
  {
    v16 = *(v12 + v14[10]);
  }

  else
  {
    v16 = -1;
  }

  v17 = *&v13[8 * (v16 + a3) + 8];
  v18 = v14[5];
  if (v14[5])
  {
LABEL_14:
    v19 = *(v12 + v18);
    if (v9 < 7)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  v19 = 0x7FFFFFFF;
  if (v9 < 7)
  {
LABEL_15:
    v20 = 0;
    if (v15 < 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_20:
  v20 = v8[3];
  if (v20)
  {
    v20 += &v7[*&v7[v20]];
  }

  if (v15 < 0xD)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v14[6])
  {
    v21 = *(v12 + v14[6]);
    goto LABEL_26;
  }

LABEL_25:
  v21 = -1;
LABEL_26:
  v22 = (v19 + v17 + *(v20 + 24 * (v21 + a4) + 16));

  return sub_96AE18(v22);
}

uint64_t sub_96A8FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_3A231C(a1, *a2, 0);
  v8 = &v7[-*v7];
  v9 = *v8;
  if (v9 <= 4)
  {
    v13 = 0;
    v12 = (4 * *(a2 + 4) + 4 + dword_4[*(a2 + 4)]);
    v14 = (v12 - *(&dword_4[*(a2 + 4)] + dword_4[*(a2 + 4)]));
    v15 = *v14;
    if (v15 >= 0x15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v10 = v8[2];
  if (v8[2])
  {
    v10 += &v7[*&v7[v10]];
  }

  v11 = v10 + 4 * *(a2 + 4);
  v12 = (v11 + 4 + *(v11 + 4));
  if (v9 < 0xD || !v8[6])
  {
    v13 = 0;
    v14 = (v12 - *v12);
    v15 = *v14;
    if (v15 >= 0x15)
    {
      goto LABEL_9;
    }

LABEL_12:
    v17 = *&v13[((8 * a3 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8];
    if (v15 >= 0xB)
    {
      v18 = v14[5];
      if (v14[5])
      {
        goto LABEL_14;
      }
    }

    goto LABEL_19;
  }

  v13 = &v7[v8[6] + *&v7[v8[6]]];
  v14 = (v12 - *v12);
  v15 = *v14;
  if (v15 < 0x15)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v14[10])
  {
    v16 = *(v12 + v14[10]);
  }

  else
  {
    v16 = -1;
  }

  v17 = *&v13[8 * (v16 + a3) + 8];
  v18 = v14[5];
  if (v14[5])
  {
LABEL_14:
    v19 = *(v12 + v18);
    if (v9 < 7)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  v19 = 0x7FFFFFFF;
  if (v9 < 7)
  {
LABEL_15:
    v20 = 0;
    if (v15 < 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_20:
  v20 = v8[3];
  if (v20)
  {
    v20 += &v7[*&v7[v20]];
  }

  if (v15 < 0xD)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v14[6])
  {
    v21 = *(v12 + v14[6]);
    goto LABEL_26;
  }

LABEL_25:
  v21 = -1;
LABEL_26:
  v22 = (v19 + v17 + *(v20 + 24 * (v21 + a4) + 12));

  return sub_96AE18(v22);
}

uint64_t sub_96AAB0(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = sub_3A231C(a1, a2, 0);
  v9 = v8;
  v10 = &v8[-*v8];
  if (*v10 < 5u)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 2);
    if (v11)
    {
      v11 += &v8[*&v8[v11]];
    }
  }

  v12 = (v11 + 4 * HIDWORD(a2) + 4 + *(v11 + 4 * HIDWORD(a2) + 4));
  v13 = sub_95AE74(a1, a2, a3, a4, 0);
  v14 = (v9 - *v9);
  if (*v14 < 0xDu)
  {
    v15 = 0;
    v16 = (v12 - *v12);
    v17 = *v16;
    if (v17 >= 0x15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v14[6];
    if (v15)
    {
      v15 += v9 + *(v9 + v15);
    }

    v16 = (v12 - *v12);
    v17 = *v16;
    if (v17 >= 0x15)
    {
LABEL_9:
      if (v16[10])
      {
        v18 = *(v12 + v16[10]);
      }

      else
      {
        v18 = -1;
      }

      v19 = *(v15 + 8 * (v18 + a3) + 8);
      v20 = v16[5];
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_14:
      v21 = *(v12 + v20);
      goto LABEL_18;
    }
  }

  v19 = *(v15 + ((8 * a3 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8);
  if (v17 >= 0xB)
  {
    v20 = v16[5];
    if (v20)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v21 = 0x7FFFFFFF;
LABEL_18:
  v22 = *(v13 + 12);
  v23 = v22 / 10;
  v24 = v22 % 10;
  if (v22 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  return sub_96AE18(v21 + v19 + v23 + (((103 * (v25 + v24)) >> 15) & 1) + ((103 * (v25 + v24)) >> 10));
}

uint64_t sub_96AC64(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = sub_3A231C(a1, a2, 0);
  v9 = v8;
  v10 = &v8[-*v8];
  if (*v10 < 5u)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 2);
    if (v11)
    {
      v11 += &v8[*&v8[v11]];
    }
  }

  v12 = (v11 + 4 * HIDWORD(a2) + 4 + *(v11 + 4 * HIDWORD(a2) + 4));
  v13 = sub_95AE74(a1, a2, a3, a4, 0);
  v14 = (v9 - *v9);
  if (*v14 < 0xDu)
  {
    v15 = 0;
    v16 = (v12 - *v12);
    v17 = *v16;
    if (v17 >= 0x15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v14[6];
    if (v15)
    {
      v15 += v9 + *(v9 + v15);
    }

    v16 = (v12 - *v12);
    v17 = *v16;
    if (v17 >= 0x15)
    {
LABEL_9:
      if (v16[10])
      {
        v18 = *(v12 + v16[10]);
      }

      else
      {
        v18 = -1;
      }

      v19 = *(v15 + 8 * (v18 + a3) + 8);
      v20 = v16[5];
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_14:
      v21 = *(v12 + v20);
      goto LABEL_18;
    }
  }

  v19 = *(v15 + ((8 * a3 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8);
  if (v17 >= 0xB)
  {
    v20 = v16[5];
    if (v20)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v21 = 0x7FFFFFFF;
LABEL_18:
  v22 = *(v13 + 8);
  v23 = v22 / 10;
  v24 = v22 % 10;
  if (v22 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  return sub_96AE18(v21 + v19 + v23 + (((103 * (v25 + v24)) >> 15) & 1) + ((103 * (v25 + v24)) >> 10));
}

uint64_t sub_96AE18(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_96AED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_96AF50()
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
  xmmword_27B1BF0 = 0u;
  unk_27B1C00 = 0u;
  dword_27B1C10 = 1065353216;
  sub_3A9A34(&xmmword_27B1BF0, v0);
  sub_3A9A34(&xmmword_27B1BF0, v3);
  sub_3A9A34(&xmmword_27B1BF0, __p);
  sub_3A9A34(&xmmword_27B1BF0, v9);
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
    qword_27B1BC8 = 0;
    qword_27B1BD0 = 0;
    qword_27B1BC0 = 0;
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

void sub_96B198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1BD8)
  {
    qword_27B1BE0 = qword_27B1BD8;
    operator delete(qword_27B1BD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_96B244(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266DB30;
  *(a3 + 16) = -1;
  v6 = (a3 + 16);
  *(a3 + 24) = -1;
  *(a3 + 32) = 0x8000000080000000;
  *(a3 + 40) = -29536;
  *(a3 + 48) = 0xBFF0000000000000;
  *(a3 + 56) = 0xFFFFFF;
  *(a3 + 96) = 0;
  *(a3 + 104) = -1;
  *(a3 + 107) = -1;
  *(a3 + 144) = 0;
  v7 = (a3 + 144);
  *(a3 + 111) = 0;
  *(a3 + 127) = 0;
  *(a3 + 119) = 0;
  *(a3 + 135) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v8 = sub_3AFC64(*a1);
  v9 = sub_3B0530(*a1);
  *(a3 + 8) = 0x100000000;
  if (*(a2 + 584) != 3)
  {
    return;
  }

  v10 = *a2;
  *v6 = *(a2 + 8);
  if (v10 > 0xFFFFFFFEFFFFFFFFLL || !v10)
  {
    return;
  }

  v11 = v9;
  v12 = sub_3A25A8(v8, v10, 0, "trip");
  v13 = *(v12 + *(v12 - *v12 + 6));
  v14 = **(v11 + 3896);
  if (v14 && sub_3A7F20(v14, v10, *(v11 + 3904)))
  {
    *(a3 + 36) = *(sub_3A7F20(**(v11 + 3896), v10, *(v11 + 3904)) + 11);
    v15 = sub_3A7F20(**(v11 + 3896), v10, *(v11 + 3904));
    v16 = *(v15 + 10);
    *(a3 + 24) = v15[4];
    *(a3 + 32) = v16;
    *(a3 + 40) = *(sub_3A7F20(**(v11 + 3896), v10, *(v11 + 3904)) + 24);
    *(a3 + 48) = sub_3A7F20(**(v11 + 3896), v10, *(v11 + 3904))[7];
  }

  v17 = sub_92FC60(v8, v13, 0, "line");
  v18 = (v17 - *v17);
  if (*v18 >= 0x13u && (v19 = v18[9]) != 0)
  {
    v20 = *(v17 + v19);
  }

  else
  {
    v20 = 0xFFFFFF;
  }

  *(a3 + 56) = v20;
  sub_9A7CF4(v8, v13, v23);
  v21 = *(a3 + 96);
  if (v21 == -1)
  {
    if (v24 == -1)
    {
      goto LABEL_16;
    }

LABEL_15:
    v32 = a3 + 64;
    (off_266DF30[v24])(&v32);
    goto LABEL_16;
  }

  if (v24 != -1)
  {
    goto LABEL_15;
  }

  (off_266DF08[v21])(&v32, a3 + 64);
  *(a3 + 96) = -1;
LABEL_16:
  *(a3 + 104) = v25;
  if (*(a3 + 135) < 0)
  {
    operator delete(*(a3 + 112));
  }

  *(a3 + 112) = *__p;
  *(a3 + 128) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(__p[0]) = 0;
  *(a3 + 136) = v28;
  if (*(a3 + 167) < 0)
  {
    operator delete(*(a3 + 144));
    v22 = SHIBYTE(v27);
    *v7 = v29;
    *(a3 + 160) = v30;
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
    *(a3 + 168) = v31;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v7 = v29;
    *(a3 + 160) = v30;
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
    *(a3 + 168) = v31;
  }

  if (v24 != -1)
  {
    (off_266DF08[v24])(&v32, v23);
  }
}

uint64_t sub_96B664(uint64_t a1)
{
  *a1 = &off_266DB30;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 96);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
LABEL_7:
    (off_266DF08[v2])(&v4, a1 + 64);
  }

LABEL_8:
  *(a1 + 96) = -1;
  return a1;
}

void sub_96B714()
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
  xmmword_27B1C48 = 0u;
  unk_27B1C58 = 0u;
  dword_27B1C68 = 1065353216;
  sub_3A9A34(&xmmword_27B1C48, v0);
  sub_3A9A34(&xmmword_27B1C48, v3);
  sub_3A9A34(&xmmword_27B1C48, __p);
  sub_3A9A34(&xmmword_27B1C48, v9);
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
    qword_27B1C20 = 0;
    qword_27B1C28 = 0;
    qword_27B1C18 = 0;
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

void sub_96B95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1C30)
  {
    qword_27B1C38 = qword_27B1C30;
    operator delete(qword_27B1C30);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_96BA08(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (*(sub_3CF22C(a1) + 4) > 18000)
  {
    return 0;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = *a2 == -1 && v7 == -1;
  if (v9 || ((v11 = *a3, v10 = a3[1], v11 == -1) ? (v12 = v10 == -1) : (v12 = 0), v12))
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_15;
  }

  v13 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15.i64[0] = v8;
  v15.i64[1] = v11;
  v16 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
  v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
  v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v34 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
  v19 = sin((v14 - v17) * 0.5);
  v20 = v19 * v19;
  v21 = cos(v14);
  v22 = v21 * cos(v17);
  v23 = sin(0.5 * v34);
  v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
  v25 = (v24 + v24) * 6372797.56 * 100.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v27 = (v25 + v25) + 1;
  }

  else
  {
    v26 = v25;
    if (v25 <= -4.50359963e15)
    {
      goto LABEL_26;
    }

    v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_26:
  if (v26 >= 9.22337204e18)
  {
    v28 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_15;
  }

  if (v25 >= 0.0)
  {
    if (v25 < 4.50359963e15)
    {
      v33 = (v25 + v25) + 1;
      goto LABEL_33;
    }
  }

  else if (v25 > -4.50359963e15)
  {
    v33 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
LABEL_33:
    v25 = (v33 >> 1);
  }

  v28 = v25;
LABEL_15:
  v29 = sub_3AF234(a1);
  v30 = sub_73F1C(a1);
  if (v28 < 5001)
  {
    return 1;
  }

  v31 = *v29 + *v30;
  return sub_4D1DB8(a1) < 5001 || v28 < v31;
}

uint64_t sub_96BD18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266DF68;
  *(v4 + 520) = 0;
  *(v4 + 524) = 0;
  v5 = *(v4 + 72);
  if (*(v5 + 80) == 1)
  {
    *(a1 + 524) = *(v5 + 72);
  }

  v6 = *(v5 + 56);
  if (v6 != -1)
  {
    *(a1 + 520) = sub_9BCBDC(*(a1 + 80), v6);
    v7 = *(*(a1 + 72) + 56);
    v8 = **(a1 + 80);
    if (0xCF3CF3CF3CF3CF3DLL * ((*(*(a1 + 80) + 8) - v8) >> 3) <= v7)
    {
      sub_6FAB4();
    }

    v9 = sub_A189D4(a1, v8 + 168 * v7);
    if (v9)
    {
      *(a1 + 521) = *(v9 + 104);
    }
  }

  return a1;
}

uint64_t sub_96BE24(uint64_t a1)
{
  *a1 = off_266FA10;
  v2 = *(a1 + 496);
  if (v2)
  {
    v3 = *(a1 + 504);
    v4 = *(a1 + 496);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 504) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 496);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  sub_55A03C(a1 + 472);
  v6 = *(a1 + 448);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 456);
  v8 = *(a1 + 448);
  if (v7 != v6)
  {
    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_20:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_20;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *(a1 + 448);
        break;
      }
    }
  }

  *(a1 + 456) = v6;
  operator delete(v8);
LABEL_23:
  v10 = *(a1 + 424);
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = *(a1 + 432);
  v12 = *(a1 + 424);
  if (v11 != v10)
  {
    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 3));
        v13 = v11 - 7;
        if (*(v11 - 33) < 0)
        {
LABEL_31:
          operator delete(*v13);
        }
      }

      else
      {
        v13 = v11 - 7;
        if (*(v11 - 33) < 0)
        {
          goto LABEL_31;
        }
      }

      v11 = v13;
      if (v13 == v10)
      {
        v12 = *(a1 + 424);
        break;
      }
    }
  }

  *(a1 + 432) = v10;
  operator delete(v12);
LABEL_34:
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_50:
    operator delete(*(a1 + 368));
    v14 = *(a1 + 344);
    if (!v14)
    {
LABEL_37:
      v15 = *(a1 + 320);
      if (v15)
      {
        goto LABEL_61;
      }

      goto LABEL_38;
    }

    goto LABEL_51;
  }

  operator delete(*(a1 + 400));
  if (*(a1 + 391) < 0)
  {
    goto LABEL_50;
  }

LABEL_36:
  v14 = *(a1 + 344);
  if (!v14)
  {
    goto LABEL_37;
  }

LABEL_51:
  v22 = *(a1 + 352);
  if (v22 == v14)
  {
    *(a1 + 352) = v14;
    operator delete(v14);
    v15 = *(a1 + 320);
    if (v15)
    {
      goto LABEL_61;
    }

    goto LABEL_38;
  }

  do
  {
    if (*(v22 - 1) < 0)
    {
      operator delete(*(v22 - 3));
      v23 = v22 - 7;
      if ((*(v22 - 33) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v23 = v22 - 7;
      if ((*(v22 - 33) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    operator delete(*v23);
LABEL_54:
    v22 = v23;
  }

  while (v23 != v14);
  v24 = *(a1 + 344);
  *(a1 + 352) = v14;
  operator delete(v24);
  v15 = *(a1 + 320);
  if (!v15)
  {
LABEL_38:
    v16 = *(a1 + 224);
    if (v16)
    {
      goto LABEL_71;
    }

    goto LABEL_39;
  }

LABEL_61:
  v25 = *(a1 + 328);
  if (v25 == v15)
  {
    *(a1 + 328) = v15;
    operator delete(v15);
    v16 = *(a1 + 224);
    if (v16)
    {
      goto LABEL_71;
    }

LABEL_39:
    if (*(a1 + 215) < 0)
    {
      goto LABEL_73;
    }

LABEL_40:
    v17 = *(a1 + 168);
    if (v17)
    {
      goto LABEL_74;
    }

    goto LABEL_41;
  }

  while (2)
  {
    if (*(v25 - 1) < 0)
    {
      operator delete(*(v25 - 3));
      v26 = v25 - 7;
      if (*(v25 - 33) < 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v26 = v25 - 7;
      if (*(v25 - 33) < 0)
      {
LABEL_69:
        operator delete(*v26);
      }
    }

    v25 = v26;
    if (v26 != v15)
    {
      continue;
    }

    break;
  }

  v27 = *(a1 + 320);
  *(a1 + 328) = v15;
  operator delete(v27);
  v16 = *(a1 + 224);
  if (!v16)
  {
    goto LABEL_39;
  }

LABEL_71:
  v28 = *(a1 + 232);
  if (v28 == v16)
  {
    *(a1 + 232) = v16;
    operator delete(v16);
    if (*(a1 + 215) < 0)
    {
      goto LABEL_73;
    }

    goto LABEL_40;
  }

  while (2)
  {
    if (*(v28 - 1) < 0)
    {
      operator delete(*(v28 - 3));
      v30 = v28 - 7;
      if (*(v28 - 33) < 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v30 = v28 - 7;
      if (*(v28 - 33) < 0)
      {
LABEL_83:
        operator delete(*v30);
      }
    }

    v28 = v30;
    if (v30 != v16)
    {
      continue;
    }

    break;
  }

  v32 = *(a1 + 224);
  *(a1 + 232) = v16;
  operator delete(v32);
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_73:
  operator delete(*(a1 + 192));
  v17 = *(a1 + 168);
  if (!v17)
  {
LABEL_41:
    if (*(a1 + 159) < 0)
    {
      goto LABEL_76;
    }

    goto LABEL_42;
  }

LABEL_74:
  v29 = *(a1 + 176);
  if (v29 == v17)
  {
    *(a1 + 176) = v17;
    operator delete(v17);
    if (*(a1 + 159) < 0)
    {
      goto LABEL_76;
    }

LABEL_42:
    v18 = *(a1 + 48);
    if (v18)
    {
LABEL_43:
      *(a1 + 56) = v18;
      operator delete(v18);
    }
  }

  else
  {
    do
    {
      v31 = *(v29 - 1);
      v29 -= 3;
      if (v31 < 0)
      {
        operator delete(*v29);
      }
    }

    while (v29 != v17);
    v33 = *(a1 + 168);
    *(a1 + 176) = v17;
    operator delete(v33);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_76:
    operator delete(*(a1 + 136));
    v18 = *(a1 + 48);
    if (v18)
    {
      goto LABEL_43;
    }
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    *(a1 + 32) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  return a1;
}

void sub_96C29C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_A16EA8(a1, a2);
  v4 = *(*(a1 + 72) + 56);
  if (v4 == -1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
  }

  else
  {
    v5 = sub_A18C04(a1, **(a1 + 80) + 168 * v4);
    sub_9D43A4(v5, v10);
  }

  v9 = 17;
  strcpy(__p, "{WalkDestination}");
  v12 = __p;
  v6 = sub_7F7DD4(a2, __p);
  if (*(v6 + 63) < 0)
  {
    v7 = v6;
    operator delete(v6[5]);
    v6 = v7;
  }

  *(v6 + 5) = *v10;
  v6[7] = v11;
  HIBYTE(v11) = 0;
  LOBYTE(v10[0]) = 0;
  if (v9 < 0)
  {
    operator delete(*__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_96C3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      sub_2CD04(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  sub_2CD04(v20);
  _Unwind_Resume(a1);
}

void sub_96C410(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 72) + 56);
  if (v3 == -1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = sub_A18C04(a1, **(a1 + 80) + 168 * v3);

    sub_9D43A4(v4, a2);
  }
}

void sub_96C47C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 57) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  sub_64B998(a4 + 80);
  v8 = *(a1 + 524);
  if (a2 == 2 && !a3 && v8 != 3)
  {
    strcpy(&v18, "WalkList_WalkDistance");
    *(&v18.__r_.__value_.__s + 23) = 21;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    sub_64B998(v23);
    sub_96CCDC(a4, &v18);
    sub_9721FC(&v18);
    v18.__r_.__value_.__r.__words[0] = *(*(a1 + 72) + 1888);
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_64E428((a4 + 80), "{WalkDistance}", &v18, &__p);
    return;
  }

  if (a2 == 2 && a3 == 1 && v8 != 3)
  {
    v9 = *(sub_A182F0(a1) + 40) - *(*(a1 + 72) + 40);
    if (v9 <= 59)
    {
      operator new();
    }

    strcpy(&v18, "WalkList_WalkTime");
    *(&v18.__r_.__value_.__s + 23) = 17;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    sub_64B998(v23);
    sub_96CCDC(a4, &v18);
    sub_9721FC(&v18);
    sub_64E914((a4 + 80), "{WalkTime}", 10 * v9);
    return;
  }

  if (a2 != 1 || a3)
  {
    if (a2 == 1 && a3 == 1 && v8 != 3)
    {
      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          sub_3608D0(&__p, "WALK_DISTANCE_AWAY");
          sub_96CC3C(&v18, &__p);
          sub_96CCDC(a4, &v18);
          sub_9721FC(&v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v18.__r_.__value_.__r.__words[0] = *(*(a1 + 72) + 1888);
          __p.__r_.__value_.__s.__data_[0] = 1;
          sub_64E428((a4 + 80), "{WalkDistance}", &v18, &__p);
        }
      }

      else
      {
        v11 = *(sub_A182F0(a1) + 40) - *(*(a1 + 72) + 40);
        if (v11 > 59)
        {
          sub_3608D0(&__p, "WALK_DISTANCE_ABOUT_TIME");
          sub_96CC3C(&v18, &__p);
          v12 = 10 * v11;
          sub_96CCDC(a4, &v18);
          sub_9721FC(&v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          sub_3608D0(&__p, "WALK_DISTANCE_LESS_THAN_ONE_MINUTE");
          sub_96CC3C(&v18, &__p);
          sub_96CCDC(a4, &v18);
          sub_9721FC(&v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v12 = 600;
        }

        v18.__r_.__value_.__r.__words[0] = *(*(a1 + 72) + 1888);
        __p.__r_.__value_.__s.__data_[0] = 1;
        sub_64E428((a4 + 80), "{WalkDistance}", &v18, &__p);
        sub_64E914((a4 + 80), "{WalkTime}", v12);
      }
    }

    return;
  }

  v10 = *(a1 + 48);
  if (v10 == *(a1 + 56) || **v10 != 9)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        sub_A17808(*(a1 + 520), &__p);
        sub_23E08("WALK_TO_NEAR", &__p, &v18);
      }

      else
      {
        if (v8 != 1)
        {
          return;
        }

        sub_A17808(*(a1 + 520), &__p);
        sub_23E08("WALK_TO_FAR", &__p, &v18);
      }
    }

    else
    {
      sub_A17808(*(a1 + 520), &__p);
      sub_23E08("WALK_TO_NORMAL", &__p, &v18);
    }

    v13 = *&v18.__r_.__value_.__l.__data_;
    *v16 = v18.__r_.__value_.__r.__words[2];
    *&v16[3] = *(&v18.__r_.__value_.__r.__words[2] + 3);
    v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    *(&v18.__r_.__value_.__s + 23) = 0;
    v18.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v14 & 0x80) != 0)
    {
      if (!*(&v13 + 1))
      {
LABEL_44:
        v15 = v13;
LABEL_45:
        operator delete(v15);
        return;
      }

      sub_325C(&v18, v13, *(&v13 + 1));
    }

    else
    {
      if (!v14)
      {
        return;
      }

      *&v18.__r_.__value_.__l.__data_ = v13;
      LODWORD(v18.__r_.__value_.__r.__words[2]) = *v16;
      *(&v18.__r_.__value_.__r.__words[2] + 3) = *&v16[3];
      *(&v18.__r_.__value_.__s + 23) = v14;
    }

    v22 = 0;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    sub_64B998(v23);
    sub_96CCDC(a4, &v18);
    sub_9721FC(&v18);
    if ((v14 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v8 - 1 < 3)
  {
    strcpy(&v18, "GO_TO_DESTINATION");
    *(&v18.__r_.__value_.__s + 23) = 17;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    sub_64B998(v23);
    sub_96CCDC(a4, &v18);
    sub_9721FC(&v18);
    return;
  }

  if (!v8)
  {
    sub_3608D0(&__p, "WALK_TO_DESTINATION");
    sub_96CC3C(&v18, &__p);
    sub_96CCDC(a4, &v18);
    sub_9721FC(&v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v15 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }
  }
}

void sub_96CA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_9721FC(v21);
    _Unwind_Resume(a1);
  }

  sub_9721FC(v21);
  _Unwind_Resume(a1);
}

void sub_96CBAC(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_96CBD8(_OWORD *a1)
{
  *(a1 + 57) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_64B998((a1 + 5));
  return a1;
}

void sub_96CC10(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_96CC3C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
  }

  *(a1 + 24) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_64B998(a1 + 80);
  return a1;
}

void sub_96CCB0(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_96CCDC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 32) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v10 = (a1 + 48);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 48);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *v10;
    }

    *(a1 + 56) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a1 + 72) = *(a2 + 72);
  sub_53D784(a1 + 80, (a2 + 5));
  return a1;
}

uint64_t sub_96CE28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = off_266E018;
  v5 = v4 + 520;
  *(v4 + 520) = 0;
  *(v4 + 536) = 0;
  *(v4 + 528) = 0;
  *(v4 + 548) = 3;
  v6 = *(v4 + 72);
  v7 = *(v6 + 1008);
  *(v4 + 248) = v7;
  *(a1 + 544) = sub_A19AB8(v4, v7, v6);
  v8 = sub_A16A78(a1, 3);
  v9 = *(a1 + 72);
  if (*(v9 + 116) == 0x7FFFFFFF)
  {
    v10 = 0;
    v11 = (v9 + 768);
    v12 = (v9 + 776);
    v13 = (v9 + 780);
    v14 = v8[10] | (v8[10] << 32);
  }

  else
  {
    v14 = *(v9 + 116);
    v10 = *(v9 + 124);
    v11 = (v9 + 128);
    v12 = (v9 + 136);
    v13 = (v9 + 140);
    LOWORD(v9) = *(v9 + 126);
  }

  v15 = *v13;
  v16 = *v11;
  v17 = *v12;
  *(a1 + 252) = v14;
  *(a1 + 260) = v10;
  *(a1 + 262) = v9;
  *(a1 + 264) = v16;
  *(a1 + 272) = v17;
  *(a1 + 276) = v15;
  *(a1 + 308) = v8[10];
  v18 = sub_A16A78(a1, 4);
  if (v18[22] == 0x7FFFFFFF)
  {
    v20 = 0;
    v21 = (v18 + 192);
    v22 = v18 + 194;
    v23 = v18 + 195;
    v24 = v18[10] | (v18[10] << 32);
  }

  else
  {
    v24 = *(v18 + 11);
    v20 = *(v18 + 48);
    v21 = (v18 + 25);
    v22 = v18 + 27;
    v23 = v18 + 28;
    v19 = *(v18 + 49);
  }

  v25 = *v21;
  v26 = *v22;
  v27 = *v23;
  *(a1 + 280) = v24;
  *(a1 + 288) = v20;
  *(a1 + 290) = v19;
  *(a1 + 292) = v25;
  *(a1 + 300) = v26;
  *(a1 + 304) = v27;
  *(a1 + 312) = v18[10];
  sub_96D0DC(*(a1 + 72), &v40);
  v28 = *v5;
  if (*v5)
  {
    *(a1 + 528) = v28;
    operator delete(v28);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *v5 = v40;
  *(a1 + 536) = v41;
  *(a1 + 545) = sub_9BCBDC(*(a1 + 80), *(*(a1 + 72) + 48));
  v30 = *(a1 + 48);
  v29 = *(a1 + 56);
  if (v30 == v29 || (v31 = *v30, **v30 == 4))
  {
LABEL_11:
    v32 = 3;
  }

  else
  {
    v34 = *(a1 + 80);
    if (*(v31 + 792) == 1 && (*(v31 + 157) & 1) != 0)
    {
      v32 = 3;
    }

    else
    {
      v35 = sub_9BCBDC(*(a1 + 80), *(v31 + 6));
      v32 = sub_9BCDB4(v35, 0);
    }

    while (++v30 != v29)
    {
      v36 = *v30;
      if (**v30 == 4)
      {
        break;
      }

      if (*(v36 + 792) != 1 || (*(v36 + 157) & 1) == 0)
      {
        v37 = sub_9BCBDC(v34, *(v36 + 6));
        v38 = sub_9BCDB4(v37, 0);
        if (v32 != v38 && v38 != 3)
        {
          goto LABEL_11;
        }
      }
    }
  }

  *(a1 + 548) = v32;
  return a1;
}

void sub_96D0A4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 528) = v4;
    operator delete(v4);
  }

  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_96D0DC(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 792) != 1 || *(a1 + 440) == *(a1 + 448) || (v4 = *(a1 + 116), v4 == 0x7FFFFFFF))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v9 = v4;
    sub_DD38(a2, &v9);
    v5 = *(a1 + 448) - *(a1 + 440);
    if (v5)
    {
      v6 = 0;
      if ((0x6DB6DB6DB6DB6DB7 * (v5 >> 2)) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      do
      {
        v8 = *(*(a1 + 440) + v6);
        sub_DD38(a2, &v8);
        v6 += 28;
        --v7;
      }

      while (v7);
    }
  }
}

void sub_96D1B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_96D1D8(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 72);
  if ((*(v6 + 792) & 1) == 0)
  {
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 80) = 0u;
    sub_64B998(a4 + 80);
    return;
  }

  if (a2 == 2 && !a3)
  {
    operator new();
  }

  if (a3 == 1)
  {
    v8 = *(a1 + 159);
    if (v8 < 0)
    {
      v8 = *(a1 + 144);
    }

    v9 = *(a1 + 215);
    if (v8)
    {
      goto LABEL_35;
    }

    if ((v9 & 0x80) != 0)
    {
      if (!*(a1 + 200))
      {
        goto LABEL_34;
      }
    }

    else if (!*(a1 + 215))
    {
LABEL_34:
      if (*(a1 + 168) != *(a1 + 176))
      {
        goto LABEL_35;
      }

      goto LABEL_60;
    }

LABEL_35:
    if ((v9 & 0x80) != 0)
    {
      v9 = *(a1 + 200);
    }

    if (!v9 || *(a1 + 544) != 1 || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 3) < *(*(a1 + 112) + 32) || *(v6 + 592) != 1 || !sub_96DAD0(a1))
    {
      operator new();
    }

    sub_3608D0(&v23, "Board_Secondary_Any_Direction");
    sub_96CC3C(a4, &v23);
    goto LABEL_54;
  }

  if (a2 == 2 && a3 == 2)
  {
    if (*(*(a1 + 88) + 1444))
    {
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      sub_64B998(a4 + 80);
    }

    else
    {
      *(a4 + 57) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      sub_64B998(a4 + 80);
      v10 = *(*(a1 + 72) + 1008);
      if ((v10 - 3) < 2)
      {
        sub_195A048(a4, "Board_info_Ride_FutureTimestampList", 0x23uLL);
        v16 = sub_A1D0A4(a1, *(a1 + 72));
        sub_64E398((a4 + 80), "{FutureTimestampList}", (a1 + 520), v16, 0);
      }

      else if (v10 == 2)
      {
        sub_195A048(a4, "Board_Info_Ride_HighFreq", 0x18uLL);
        v18 = *(a1 + 72);
        v19 = nullsub_1(v18 + 144);
        v20 = sub_B718(v18 + 144);
        sub_64BDC8((a4 + 80), "{TripFrequency}", v19, v20);
      }

      else if (v10 == 1)
      {
        LODWORD(v23.__r_.__value_.__l.__data_) = sub_96DB40(a1);
        v11 = *(*(a1 + 72) + 56);
        v12 = **(a1 + 80);
        v22 = sub_96DBB4(a1);
        v13 = sub_96DC14(a1);
        v14 = v12 + 168 * v11;
        if (sub_25900((v14 + 136), &v23, v13, &v22))
        {
          v15 = 0;
        }

        else
        {
          v15 = 5;
        }

        sub_195A048(a4, "Board_Info_Ride_LowFreq", 0x17uLL);
        sub_64E308((a4 + 80), "{BoardTime}", &v23, v14 + 136, v15);
        sub_64E308((a4 + 80), "{AlightTime}", &v22, v13, v15);
      }

      v21 = (*(*a1 + 160))(a1);
      sub_64E914((a4 + 80), "{StepDuration}", v21);
    }

    return;
  }

  if (a2 == 1 && !a3)
  {
    if (*(a1 + 128) == 2)
    {
      sub_3608D0(&v23, "Board_System_Line_{Mode}");
      sub_96CC3C(a4, &v23);
    }

    else if (sub_96DC4C())
    {
      sub_3608D0(&v23, "Transfer_To_System_Line_{Mode}_nextBoardStation");
      if (sub_9BCDB4(*(a1 + 545), 0) == 1)
      {
        std::string::append(&v23, "_station", 8uLL);
      }

      sub_96CC3C(a4, &v23);
    }

    else
    {
      sub_3608D0(&v23, "Transfer_To_System_Line_{Mode}");
      sub_96CC3C(a4, &v23);
    }

    goto LABEL_54;
  }

  if (a2 == 1 && a3 == 2)
  {
    if (sub_A1989C(a1, v6))
    {
      sub_A198E8(a1, *(a1 + 72), *(*(a1 + 72) + 56), &v23);
      sub_96CC3C(a4, &v23);
      goto LABEL_54;
    }

    v17 = *(a1 + 161);
    if (v17 == 3)
    {
      sub_3608D0(&v23, "PickupCoordinateDriver");
      sub_96CC3C(a4, &v23);
LABEL_54:
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (v17 == 2)
    {
      sub_3608D0(&v23, "PickupContactAgency");
      sub_96CC3C(a4, &v23);
      goto LABEL_54;
    }

LABEL_60:
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;

    sub_96CBD8(a4);
    return;
  }

  if (a2 != 2 || a3 != 3 || *(*(a1 + 88) + 1177) < 8u)
  {
    goto LABEL_60;
  }

  sub_A19F9C(a1, a4);
}

void sub_96D9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_96DAD0(uint64_t a1)
{
  if (*(*(a1 + 112) + 40) != 1)
  {
    return 1;
  }

  v1 = *(*(a1 + 72) + 56);
  v2 = **(a1 + 80);
  if (0xCF3CF3CF3CF3CF3DLL * ((*(*(a1 + 80) + 8) - v2) >> 3) <= v1)
  {
    sub_6FAB4();
  }

  return *(v2 + 168 * v1 + 164) & 1;
}

uint64_t sub_96DB40(void *a1)
{
  v1 = a1[9];
  v3 = *(v1 + 116);
  v2 = v1 + 116;
  if (v3 == 0x7FFFFFFF)
  {
    return sub_A16A78(a1, 3)[10];
  }

  else
  {
    return *(v2 + 4 * (*(a1[9] + 120) != 0x7FFFFFFF));
  }
}

uint64_t sub_96DBB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 == v2)
  {
    return 0x7FFFFFFFLL;
  }

  while (1)
  {
    v3 = *v1;
    if (**v1 == 4)
    {
      break;
    }

    if (++v1 == v2)
    {
      return 0x7FFFFFFFLL;
    }
  }

  if (v3[22] == 0x7FFFFFFF)
  {
    return v3[10];
  }

  else
  {
    return v3[(v3[23] != 0x7FFFFFFF) + 22];
  }
}

void *sub_96DC14(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 == v2)
  {
    return &unk_22A4B48;
  }

  while (**v1 != 4)
  {
    if (++v1 == v2)
    {
      return &unk_22A4B48;
    }
  }

  return sub_A1D0A4(a1, *v1);
}

BOOL sub_96DC4C()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 32);
  if (v1 == *(v0 + 24))
  {
    return 0;
  }

  v2 = v0;
  while (1)
  {
    v3 = *(v1 - 8);
    v1 -= 8;
    sub_9722E4(v6, v3);
    if (v6[0] == 4)
    {
      break;
    }

    sub_9750F8(v6);
    if (v1 == *(v2 + 24))
    {
      return 0;
    }
  }

  v5 = sub_A18A20(v2, v7, *(*(v2 + 72) + 48));
  sub_9750F8(v6);
  return v5;
}

void sub_96DD10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9750F8(va);
  _Unwind_Resume(a1);
}

void sub_96DD24(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B9C4(a2, (a1[11] + 1177));
  memset(&__p, 0, sizeof(__p));
  v4 = *(a1[9] + 1008);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_195A048(&__p, "DepartureBar_Board_FutureTimestampList", 0x26uLL);
      v10 = sub_A1D0A4(a1, a1[9]);
      sub_64E398(a2, "{FutureTimestampList}", a1 + 65, v10, 0);
      goto LABEL_13;
    }

    if (v4 != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_13;
    }

LABEL_7:
    sub_195A048(&__p, "DepartureBar_Board_HighFreq", 0x1BuLL);
    v5 = a1[9];
    v6 = nullsub_1(v5 + 144);
    v7 = sub_B718(v5 + 144);
    sub_64BDC8(a2, "{TripFrequency}", v6, v7);
    goto LABEL_13;
  }

  sub_195A048(&__p, "DepartureBar_Board_LowFreq", 0x1AuLL);
  v8 = a1[9];
  if (*(v8 + 116) == 0x7FFFFFFF)
  {
    v9 = sub_A16A78(a1, 3) + 10;
    v8 = a1[9];
  }

  else
  {
    v9 = (v8 + 116 + 4 * (*(v8 + 120) != 0x7FFFFFFF));
  }

  v15 = *v9;
  v11 = sub_A1D0A4(a1, v8);
  sub_64E308(a2, "{DepartureTime}", &v15, v11, 0);
LABEL_13:
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v14 = sub_9274F4(a1[12], &__p);
    sub_64C184(a2, v14);
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v13 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_96DF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_96DF3C(uint64_t a1)
{
  LODWORD(result) = sub_A1D4FC(a1);
  if (result <= 600)
  {
    return 600;
  }

  else
  {
    return result;
  }
}

uint64_t sub_96DF60(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *v1;
    v5 = **v1;
    if (v5 == 4)
    {
      break;
    }

    if (*(v4 + 792) != 1 || (*(v4 + 157) & 1) == 0)
    {
      if (v5 == 3)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }

    ++v1;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_96DFB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = off_266E0D0;
  v6 = v4 + 520;
  *(v4 + 520) = 0;
  *(v4 + 536) = 0;
  *(v4 + 528) = 0;
  *(v4 + 544) = 1;
  *(v4 + 548) = 3;
  v7 = *(v4 + 32);
  while (v7 != *(v4 + 24))
  {
    v9 = *(v7 - 8);
    v7 -= 8;
    v8 = v9;
    if (*(v9 + 792) == 1 && (*(v8 + 157) & 1) == 0)
    {
      v10 = *(v8 + 48);
      if (v10 != -1)
      {
        v11 = sub_A18C04(a1, **(a1 + 80) + 168 * v10);
        if ((a1 + 224) != v11)
        {
          sub_942014((a1 + 224), *v11, v11[1], 0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 3));
        }

        break;
      }
    }
  }

  v12 = *(a1 + 72);
  if (*(v12 + 88) == 0x7FFFFFFF)
  {
    v13 = 0;
    v14 = (v12 + 768);
    v15 = (v12 + 776);
    v16 = (v12 + 780);
    v17 = *(v12 + 40) | (*(v12 + 40) << 32);
  }

  else
  {
    v17 = *(v12 + 88);
    v13 = *(v12 + 96);
    v14 = (v12 + 100);
    v15 = (v12 + 108);
    v16 = (v12 + 112);
    v5 = *(v12 + 98);
  }

  v18 = 0;
  v19 = *v16;
  v20 = *v15;
  v21 = *v14;
  *(a1 + 280) = v17;
  *(a1 + 288) = v13;
  *(a1 + 290) = v5;
  *(a1 + 292) = v21;
  *(a1 + 300) = v20;
  *(a1 + 304) = v19;
  *(a1 + 312) = *(v12 + 40);
  v22 = *(a1 + 32);
  while (v22 != *(a1 + 24))
  {
    v23 = v18;
    v25 = *(v22 - 8);
    v22 -= 8;
    v24 = v25;
    v26 = *v25;
    if (*v25 == 3)
    {
      v18 = v24;
    }

    if (v26 == 2)
    {
      if (*(v24 + 116) == 0x7FFFFFFF)
      {
        v27 = 0;
        v28 = (v24 + 768);
        v29 = (v24 + 776);
        v30 = (v24 + 780);
        v31 = *(v23 + 40) | (*(v23 + 40) << 32);
      }

      else
      {
        v31 = *(v24 + 116);
        v27 = *(v24 + 124);
        v28 = (v24 + 128);
        v29 = (v24 + 136);
        v30 = (v24 + 140);
        LOWORD(v19) = *(v24 + 126);
      }

      v32 = *v28;
      v33 = *v29;
      v34 = *v30;
      *(a1 + 252) = v31;
      *(a1 + 260) = v27;
      *(a1 + 262) = v19;
      *(a1 + 264) = v32;
      *(a1 + 272) = v33;
      *(a1 + 276) = v34;
      *(a1 + 308) = *(v23 + 40);
      *(a1 + 248) = *(v24 + 1008);
      v35 = sub_A1D0A4(a1, v24);
      if (v6 != v35)
      {
        v36 = *(v35 + 23);
        if (*(a1 + 543) < 0)
        {
          if (v36 >= 0)
          {
            v38 = v35;
          }

          else
          {
            v38 = *v35;
          }

          if (v36 >= 0)
          {
            v39 = *(v35 + 23);
          }

          else
          {
            v39 = *(v35 + 8);
          }

          sub_13B38(v6, v38, v39);
        }

        else if ((*(v35 + 23) & 0x80) != 0)
        {
          sub_13A68(v6, *v35, *(v35 + 8));
        }

        else
        {
          v37 = *v35;
          *(v6 + 16) = *(v35 + 16);
          *v6 = v37;
        }
      }

      if (*(v24 + 792) == 1)
      {
        *(a1 + 544) = *(v24 + 432);
      }

      break;
    }
  }

  v41 = *(a1 + 24);
  v40 = *(a1 + 32);
  if (v40 == v41 || (v44 = *(v40 - 8), v43 = v40 - 8, v42 = v44, *v44 == 2))
  {
LABEL_35:
    v45 = 3;
  }

  else
  {
    v47 = *(a1 + 80);
    if (*(v42 + 792) == 1 && (*(v42 + 157) & 1) != 0)
    {
      v45 = 3;
    }

    else
    {
      v48 = sub_9BCBDC(*(a1 + 80), *(v42 + 6));
      v45 = sub_9BCDB4(v48, 0);
    }

    while (v43 != v41)
    {
      v50 = *(v43 - 8);
      v43 -= 8;
      v49 = v50;
      if (*v50 == 2)
      {
        break;
      }

      if (*(v49 + 792) != 1 || (*(v49 + 157) & 1) == 0)
      {
        v51 = sub_9BCBDC(v47, *(v49 + 6));
        v52 = sub_9BCDB4(v51, 0);
        if (v45 != v52 && v52 != 3)
        {
          goto LABEL_35;
        }
      }
    }
  }

  *(a1 + 548) = v45;
  return a1;
}

void sub_96E2E8(_Unwind_Exception *a1)
{
  if (*(v1 + 543) < 0)
  {
    operator delete(*v2);
  }

  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_96E31C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && !a3)
  {
    strcpy(a4, "Transit_Stop");
    *(a4 + 23) = 12;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
    sub_64B998(a4 + 80);
    return;
  }

  if (a2 != 2 || a3 != 1)
  {
    if (a3 == 2)
    {
      v9 = *(a1 + 161);
      if (v9 == 3)
      {
        operator new();
      }

      if (v9 == 2)
      {
        strcpy(a4, "DropoffContactAgency");
        *(a4 + 23) = 20;
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0;
        sub_64B998(a4 + 80);
        return;
      }

      goto LABEL_52;
    }

    if (a2 == 1 && !a3)
    {
      operator new();
    }

    if (a2 == 1 && a3 == 1 && *(a1 + 544) == 1)
    {
      if (!sub_A16DDC(a1))
      {
        sub_3608D0(&__dst, "Exit_After_PreviousStop");
        sub_96CC3C(a4, &__dst);
        goto LABEL_71;
      }

      v12 = *(a1 + 548);
      if (v12 <= 1)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            sub_3608D0(&__dst, "Alight_At_Next_Station");
            sub_96CC3C(a4, &__dst);
            goto LABEL_71;
          }

          goto LABEL_52;
        }

LABEL_51:
        sub_3608D0(&__dst, "Alight_At_Next_Stop");
        sub_96CC3C(a4, &__dst);
        goto LABEL_71;
      }

      if (v12 == 2)
      {
        sub_3608D0(&__dst, "Alight_At_Next_Terminal");
        sub_96CC3C(a4, &__dst);
        goto LABEL_71;
      }

      if (v12 == 3)
      {
        goto LABEL_51;
      }
    }

LABEL_52:
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 80) = 0u;
    sub_64B998(a4 + 80);
    return;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 == v7)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v8 = **v6;
    if (v8 != 5)
    {
      break;
    }

    if (++v6 == v7)
    {
      goto LABEL_23;
    }
  }

  if (v8 != 2)
  {
LABEL_23:
    if (*(a1 + 163) == 1)
    {
      operator new();
    }

    strcpy(a4, "Exit_Vehicle_{Mode}");
    *(a4 + 23) = 19;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
    sub_64B998(a4 + 80);
    return;
  }

  memset(&__dst, 0, sizeof(__dst));
  if (sub_A16BEC(a1))
  {
    sub_A18308(a1, &__p);
    if (v28 < 0)
    {
      v17 = v27;
      operator delete(__p);
      if (v17)
      {
        goto LABEL_22;
      }
    }

    else if (v28)
    {
LABEL_22:
      v10 = "Transfer_To_Line_{Mode}";
      v11 = 23;
      goto LABEL_57;
    }

    sub_A18468(a1, &__p);
    v18 = __p;
    v19 = v27;
    if (__p)
    {
      v20 = __p;
      if (__p != v27)
      {
        v21 = v27;
        do
        {
          v22 = *(v21 - 1);
          v21 -= 3;
          if (v22 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v18);
        v20 = __p;
      }

      v27 = v18;
      operator delete(v20);
    }

    if (v18 != v19)
    {
      v10 = "Transfer_To_Headsign_{Mode}";
      v11 = 27;
LABEL_57:
      sub_195A048(&__dst, v10, v11);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      if (v15 != v16)
      {
LABEL_58:
        while (**v15 != 2)
        {
          v15 += 8;
          if (v15 == v16)
          {
            goto LABEL_67;
          }
        }

        if (sub_A18A20(a1, *(*(a1 + 72) + 56), *(*v15 + 48)))
        {
          std::string::append(&__dst, "_nextBoardStation", 0x11uLL);
          v23 = sub_A16A78(a1, 2);
          v24 = *v23 == 2 ? sub_9BCBDC(*(a1 + 80), *(v23 + 6)) : 0;
          if (sub_9BCDB4(v24, 0) == 1)
          {
            std::string::append(&__dst, "_station", 8uLL);
          }
        }
      }

      goto LABEL_67;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = 8;
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = 8;
      p_dst = &__dst;
    }

    p_dst->__r_.__value_.__r.__words[0] = 0x726566736E617254;
    v14 = &p_dst->__r_.__value_.__s.__data_[8];
  }

  else
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = 18;
      v13 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = 18;
      v13 = &__dst;
    }

    LOWORD(v13->__r_.__value_.__r.__words[2]) = 28005;
    *&v13->__r_.__value_.__l.__data_ = *"Transfer_To_System";
    v14 = &v13->__r_.__value_.__s.__data_[18];
  }

  *v14 = 0;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  if (v15 != v16)
  {
    goto LABEL_58;
  }

LABEL_67:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    *a4 = __dst;
  }

  *(a4 + 24) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  sub_64B998(a4 + 80);
LABEL_71:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_96E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_96EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B9C4(&v52, (*(a1 + 88) + 1177));
  memset(&__dst, 0, sizeof(__dst));
  if (!sub_A1D4E8(a1))
  {
    sub_195A048(&__dst, "DepartureBar_ExitVehicle_HighFreq", 0x21uLL);
    v8 = *(a1 + 548);
    if (v8 <= 3)
    {
      std::string::append(&__dst, off_266E5D8[v8], qword_22A4D90[v8]);
    }

    v9 = (*(*a1 + 128))(a1);
    v47 = 4;
    strcpy(v46, "Stop");
    sub_A1BB1C(a1, v9, v46, &v48);
    v10 = std::string::insert(&v48, 0, "_", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v50 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v50 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v50 >= 0)
    {
      v13 = HIBYTE(v50);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&__dst, v12, v13);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((v47 & 0x80000000) == 0)
        {
LABEL_19:
          v14 = (*(*a1 + 160))(a1);
          sub_64EA58(&v52, "{StepDuration}", v14);
          v15 = 0;
          goto LABEL_42;
        }

LABEL_23:
        operator delete(v46[0]);
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v48.__r_.__value_.__l.__data_);
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v4 = *(a1 + 72);
  v5 = *(v4 + 96);
  if (*(v4 + 96))
  {
    v6 = *(v4 + 97);
    if (v6 == 1)
    {
      sub_A1D1DC(a1, *(v4 + 56), a2);
LABEL_6:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return sub_53A868(&v52);
      }

LABEL_71:
      operator delete(__dst.__r_.__value_.__l.__data_);
      return sub_53A868(&v52);
    }

    if (v6 == 2)
    {
      sub_A1D2E0(a1, a2);
      goto LABEL_6;
    }

    v16 = *(v4 + 88);
    v17 = *(v4 + 92);
    if (v16 != 0x7FFFFFFF && v6 == 0 && v5 == 1 && v17 != 0x7FFFFFFF && v16 / 60 == v17 / 60)
    {
      v15 = 1;
    }

    else if (v17 <= v16)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_195A048(&__dst, "DepartureBar_ExitVehicle_LowFreq", 0x20uLL);
  LODWORD(__p[0]) = (*(*a1 + 168))(a1);
  v22 = sub_A1D0A4(a1, *(a1 + 72));
  sub_64E308(&v52, "{ArrivalTime}", __p, v22, 0);
LABEL_42:
  if (sub_A1D4E8(a1))
  {
    sub_9CE3F8(&v52, v15);
    v23 = 0x2020100u >> (8 * v15);
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  v24 = sub_9274F4(*(a1 + 96), &__dst);
  LOBYTE(__p[0]) = 0;
  sub_64C770(&v52, v24, &unk_22A4D78, v23, __p);
  v25 = *(&v52 + 1);
  __p[0] = *"{StopsCount}";
  LODWORD(__p[1]) = 2104782453;
  v26 = (*(*a1 + 128))(a1);
  std::to_string(&v48, v26);
  v27 = (v25 - 24);
  v28 = *(v25 - 1);
  v29 = *(v25 - 16);
  if ((v28 & 0x80u) == 0)
  {
    v30 = (v25 - 24);
  }

  else
  {
    v30 = *(v25 - 24);
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = v29;
  }

  if (v28 >= 12)
  {
    v31 = &v30[v28];
    v32 = v30;
    do
    {
      v33 = memchr(v32, 123, v28 - 11);
      if (!v33)
      {
        break;
      }

      if (*v33 == __p[0] && *(v33 + 2) == LODWORD(__p[1]))
      {
        if (v33 != v31 && v33 - v30 != -1)
        {
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v48;
          }

          else
          {
            v35 = v48.__r_.__value_.__r.__words[0];
          }

          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v48.__r_.__value_.__l.__size_;
          }

          std::string::replace(v27, v33 - v30, 0xCuLL, v35, size);
        }

        break;
      }

      v32 = v33 + 1;
      v28 = v31 - v32;
    }

    while (v31 - v32 >= 12);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v37 = *&v56[32];
  v38 = v52;
  v39 = v53;
  v52 = 0u;
  v53 = 0u;
  *a2 = v38;
  *(a2 + 16) = v39;
  v40 = v54;
  v41 = v55;
  v54 = 0uLL;
  *(a2 + 32) = v40;
  *(a2 + 48) = v41;
  v55 = 0uLL;
  v42 = *&v56[16];
  *(a2 + 64) = *v56;
  *(a2 + 80) = v42;
  memset(&v56[8], 0, 32);
  *(a2 + 96) = v37;
  LODWORD(v37) = v57;
  *(a2 + 108) = v58;
  *(a2 + 104) = v37;
  v43 = v59;
  v44 = v62;
  *(a2 + 128) = v60;
  *(a2 + 112) = v43;
  *v56 = 0;
  v59 = 0uLL;
  v45 = v61;
  *(a2 + 152) = v44;
  *(a2 + 136) = v45;
  v62 = 0;
  v60 = 0;
  v61 = 0uLL;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

  return sub_53A868(&v52);
}

void sub_96EF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_53A868(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_96F014(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(v1 - 8);
    v1 -= 8;
    v4 = v5;
    v6 = *v5;
    if (*v5 == 2)
    {
      break;
    }

    if (*(v4 + 792) != 1 || (*(v4 + 157) & 1) == 0)
    {
      if (v6 == 3)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_96F068(uint64_t a1)
{
  LODWORD(result) = sub_A1D4FC(a1);
  if (result <= 600)
  {
    return 600;
  }

  else
  {
    return result;
  }
}

uint64_t sub_96F08C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0x7FFFFFFFLL;
  }

  for (i = v1 - 8; **(i - 8) != 2; i -= 8)
  {
    v1 -= 8;
    if (v1 == v2)
    {
      return 0x7FFFFFFFLL;
    }
  }

  return *(*(v1 - 8) + 40);
}

uint64_t sub_96F0D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266E190;
  *(v4 + 520) = 0;
  *(a1 + 520) = sub_9BCBDC(*(v4 + 80), *(*(a1 + 72) + 56));
  return a1;
}

uint64_t sub_96F140(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266E190;
  *(v4 + 520) = 0;
  *(a1 + 520) = sub_9BCBDC(*(v4 + 80), *(*(a1 + 72) + 56));
  return a1;
}

uint64_t sub_96F1B0(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 32) - *(a1 + 24) == 8;
  }

  else
  {
    return sub_A16E88();
  }
}

void sub_96F1D0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && !a3)
  {
    strcpy(a4, "Transit_Stop");
    *(a4 + 23) = 12;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
    sub_64B998(a4 + 80);
    return;
  }

  if (a2 == 2 && a3 == 1)
  {
    sub_A17808(*(a1 + 520), &__p);
    v5 = std::string::insert(&__p, 0, "GOTO_STOP_LIST", 0xEuLL);
    v7 = v5->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
    v14[0] = v5->__r_.__value_.__r.__words[2];
    *(v14 + 3) = *(&v5->__r_.__value_.__r.__words[2] + 3);
    v8 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
LABEL_8:
      *a4 = v7;
      *(a4 + 8) = size;
      *(a4 + 16) = v14[0];
      *(a4 + 19) = *(v14 + 3);
      *(a4 + 23) = v8;
LABEL_24:
      *(a4 + 24) = 0u;
      *(a4 + 72) = 0;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      sub_64B998(a4 + 80);
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

      v12 = v7;
LABEL_27:
      operator delete(v12);
      return;
    }

LABEL_23:
    sub_325C(a4, v7, size);
    goto LABEL_24;
  }

  if (a2 != 2 || a3 != 2)
  {
    if (a2 == 1 && !a3 && *(a1 + 32) - *(a1 + 24) == 8)
    {
      sub_A17808(*(a1 + 520), &__p);
      v11 = std::string::insert(&__p, 0, "START_AT", 8uLL);
      v7 = v11->__r_.__value_.__r.__words[0];
      size = v11->__r_.__value_.__l.__size_;
      v14[0] = v11->__r_.__value_.__r.__words[2];
      *(v14 + 3) = *(&v11->__r_.__value_.__r.__words[2] + 3);
      v8 = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v8 & 0x80000000) == 0)
      {
        *a4 = v7;
        *(a4 + 8) = size;
        *(a4 + 16) = v14[0];
        *(a4 + 19) = *(v14 + 3);
        *(a4 + 23) = v8;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_21:
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 80) = 0u;
    sub_64B998(a4 + 80);
    return;
  }

  v10 = sub_A182F0(a1);
  if (!sub_A1989C(a1, v10))
  {
    goto LABEL_21;
  }

  sub_A198E8(a1, v10, *(*(a1 + 72) + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *a4 = __p;
  }

  *(a4 + 24) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  sub_64B998(a4 + 80);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_27;
  }
}

uint64_t sub_96F584(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = off_266E240;
  *(v4 + 520) = 0;
  *(v4 + 536) = 0;
  *(v4 + 528) = 0;
  *(v4 + 544) = 0;
  *(a1 + 544) = sub_9BCBDC(*(v4 + 80), *(*(a1 + 72) + 48));
  v5 = *(a1 + 72);
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 888) - *(v5 + 880)) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 536) - *(a1 + 520)) >> 3) < v6)
  {
    if (v6 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(v5 + 880);
  v8 = *(v5 + 888);
  while (v7 != v8)
  {
    if ((*(v7 + 32) & 1) == 0)
    {
      v10 = *(a1 + 528);
      if (v10 >= *(a1 + 536))
      {
        v9 = sub_1CEE8(a1 + 520, v7 + 8);
      }

      else
      {
        if (*(v7 + 31) < 0)
        {
          sub_325C(*(a1 + 528), *(v7 + 8), *(v7 + 16));
        }

        else
        {
          v11 = *(v7 + 8);
          *(v10 + 16) = *(v7 + 24);
          *v10 = v11;
        }

        v9 = v10 + 24;
        *(a1 + 528) = v10 + 24;
      }

      *(a1 + 528) = v9;
    }

    v7 += 40;
  }

  return a1;
}

void sub_96F734(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 520));
  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_96F77C(uint64_t a1, int a2)
{
  if (a2 == 1 && ((*(a1 + 163) & 1) == 0 && *(*(a1 + 72) + 880) == *(*(a1 + 72) + 888) || *(a1 + 162) != 1))
  {
    return 0;
  }

  else
  {
    return sub_A16E88();
  }
}

void sub_96F7B8(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 != 2 || a3)
  {
    if (a2 != 1 || a3)
    {
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      if (*(a1 + 163) == 1)
      {
        operator new();
      }

      if (a2 != 2)
      {
        goto LABEL_21;
      }

      v7 = a4;
      sub_A179D0(*(a1 + 544), 0, &v10);
      v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v10.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::operator+<char>();
        v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      a4 = v7;
      if (v8 < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
        a4 = v7;
      }

      if (!size)
      {
LABEL_21:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }
    }

    else
    {
      v4 = a4;
      sub_A179D0(*(a1 + 544), 1, &v10);
      v5 = std::string::insert(&v10, 0, "Exit", 4uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      *(v4 + 16) = *(&v5->__r_.__value_.__l + 2);
      *v4 = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    *(a4 + 23) = 12;
    strcpy(a4, "Transit_Stop");
  }
}

void sub_96F964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_96F984(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 57) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  sub_64B998(a4 + 80);
  if (a3 != 1 || a1[65] == a1[66])
  {
    sub_96F7B8(a1, a2, a3, __p);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = __p[0];
    return;
  }

  v42 = a2;
  v43 = a4;
  v8 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[66] - a1[65]) >> 3))
  {
    std::to_string(__p, ++v8);
    v9 = std::string::insert(__p, 0, "Follow_Sign", 0xBuLL);
    v10 = v9->__r_.__value_.__r.__words[0];
    *&v50 = v9->__r_.__value_.__l.__size_;
    *(&v50 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v12 = v46;
    if (v46 >= v47)
    {
      v13 = v45;
      v14 = v46 - v45;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((v47 - v45) >> 3) > v16)
      {
        v16 = 0x5555555555555556 * ((v47 - v45) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = 8 * ((v46 - v45) >> 3);
      v19 = v50;
      *v18 = v10;
      *(v18 + 8) = v19;
      *(v18 + 15) = *(&v50 + 7);
      *(v18 + 23) = v11;
      v20 = 24 * v15 + 24;
      v21 = v18 - v14;
      memcpy((v18 - v14), v13, v14);
      v45 = v21;
      v46 = v20;
      v47 = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v46 = v20;
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *v46 = v10;
      v12[1] = v50;
      *(v12 + 15) = *(&v50 + 7);
      *(v12 + 23) = v11;
      v46 = v12 + 3;
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    operator delete(__p[0].__r_.__value_.__l.__data_);
LABEL_5:
    if (v8 == 8)
    {
      break;
    }
  }

  if ((*(a1[9] + 904) & 1) == 0)
  {
    sub_96F7B8(a1, v42, 1, __p);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (size + 5 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (size + 5 > 0x16)
      {
        operator new();
      }

      v51 = 0;
      v50 = 0x5F6E656854uLL;
      HIBYTE(v51) = size + 5;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0].__r_.__value_.__r.__words[0];
      }

      memmove(&v50 + 5, v23, size);
      *(&v50 + size + 5) = 0;
      v24 = v46;
      if (v46 >= v47)
      {
        v26 = v45;
        v27 = v46 - v45;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
        v29 = v28 + 1;
        if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v47 - v45) >> 3) > v29)
        {
          v29 = 0x5555555555555556 * ((v47 - v45) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) >= 0x555555555555555)
        {
          v30 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          if (v30 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v31 = 8 * ((v46 - v45) >> 3);
        *v31 = v50;
        *(v31 + 16) = v51;
        v25 = 24 * v28 + 24;
        v32 = 24 * v28 - v27;
        memcpy((v31 - v27), v26, v27);
        v45 = v32;
        v46 = v25;
        v47 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v46 = v50;
        v24[2] = v51;
        v25 = (v24 + 3);
      }

      v46 = v25;
      if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_53:
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_53;
    }
  }

  v33 = v45;
  v34 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
  if (v34)
  {
    if (v34 != 1)
    {
      v50 = 0uLL;
      v51 = 0;
      v48 = &v50;
      v49 = 0;
      if (v34 - 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v50 = 0uLL;
    v51 = 0;
    sub_975394(__p, &v45, &v50, 0);
    sub_96CCDC(v43, __p);
    sub_9721FC(__p);
    v35 = v50;
    if (v50)
    {
      v36 = *(&v50 + 1);
      v37 = v50;
      if (*(&v50 + 1) != v50)
      {
        do
        {
          v38 = *(v36 - 1);
          v36 -= 3;
          if (v38 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v35);
        v37 = v50;
      }

      *(&v50 + 1) = v35;
      operator delete(v37);
    }

    v33 = v45;
  }

  if (v33)
  {
    v39 = v46;
    v40 = v33;
    if (v46 != v33)
    {
      do
      {
        v41 = *(v39 - 1);
        v39 -= 3;
        if (v41 < 0)
        {
          operator delete(*v39);
        }
      }

      while (v39 != v33);
      v40 = v45;
    }

    v46 = v33;
    operator delete(v40);
  }
}

void sub_970078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1A104((v10 - 120));
  sub_1A104((v10 - 160));
  sub_9721FC(a10);
  _Unwind_Resume(a1);
}

void sub_9700A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 97) < 0)
  {
    operator delete(*(v16 - 120));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v16 - 160));
  sub_9721FC(a10);
  _Unwind_Resume(a1);
}

void sub_970190(void *a1@<X0>, void *a2@<X8>)
{
  sub_A16EA8(a1, a2);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1[65];
    if (v5 >= 0xAAAAAAAAAAAAAAABLL * ((a1[66] - v6) >> 3))
    {
      break;
    }

    std::to_string(&v22, ++v5);
    v7 = std::string::insert(&v22, 0, "{Sign", 5uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v23, "}", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v25 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v26 = __p;
    v11 = sub_7F7DD4(a2, __p);
    v12 = (v6 + v4);
    v13 = (v11 + 5);
    if ((v6 + v4) != v11 + 5)
    {
      v14 = *(v11 + 63);
      v15 = (v6 + v4);
      v16 = *(v6 + v4 + 23);
      if (v14 < 0)
      {
        v19 = *v15;
        v18 = v15[1];
        if (v16 >= 0)
        {
          v20 = (v6 + v4);
        }

        else
        {
          v20 = v19;
        }

        if (v16 >= 0)
        {
          v21 = *(v6 + v4 + 23);
        }

        else
        {
          v21 = v18;
        }

        sub_13B38(v13, v20, v21);
      }

      else if ((*(v6 + v4 + 23) & 0x80) != 0)
      {
        sub_13A68(v13, *(v6 + v4), *(v6 + v4 + 8));
      }

      else
      {
        v17 = *v12;
        *(v13 + 16) = *(v12 + 2);
        *v13 = v17;
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_2;
      }
    }

    else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v23.__r_.__value_.__l.__data_);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_22:
      operator delete(v22.__r_.__value_.__l.__data_);
    }

LABEL_2:
    v4 += 24;
  }

  while (v5 != 8);
}

void sub_970364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((a15 & 0x80000000) == 0)
  {
    sub_2CD04(v28);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_2CD04(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_9703FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266E2F0;
  sub_A18468(v4, __p);
  v5 = (a1 + 168);
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = *(a1 + 176);
    v8 = *(a1 + 168);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 176) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *__p;
  *(a1 + 184) = v14;
  v10 = sub_A182F0(a1);
  sub_A197B0(v10, __p);
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  *(a1 + 368) = *__p;
  *(a1 + 384) = v14;
  HIBYTE(v14) = 0;
  LOBYTE(__p[0]) = 0;
  *(a1 + 392) = v15;
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
    *(a1 + 400) = v16;
    *(a1 + 416) = v17;
    return a1;
  }

  operator delete(*(a1 + 400));
  v12 = SHIBYTE(v14);
  *(a1 + 400) = v16;
  *(a1 + 416) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  if ((v12 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

uint64_t sub_970590(void *a1)
{
  v2 = 2;
  v3 = sub_A16A78(a1, 2);
  if (*v3 == 2 && *(v3 + 792) == 1)
  {
    v4 = *(v3 + 94);
    if (v4 != -1)
    {
      return *(*(a1[10] + 72) + 696 * v4 + 556);
    }
  }

  return v2;
}

uint64_t sub_9705F8(uint64_t a1, int a2)
{
  if (a2 == 1 && *(a1 + 128) == 6 && *(*(a1 + 72) + 48) == *(*(a1 + 72) + 56))
  {
    return 0;
  }

  else
  {
    return sub_A16E88();
  }
}

void sub_970628(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  *(a4 + 57) = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  sub_64B998((a4 + 5));
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v8 = sub_9BCBDC(*(a1 + 80), *(*(a1 + 72) + 56));
  v9 = sub_9BCDB4(v8, 0);
  if (a2 == 1 && !a3)
  {
    if (*(a1 + 128) != 6)
    {
      goto LABEL_83;
    }

    *(&__p.__r_.__value_.__s + 23) = 18;
    strcpy(&__p, "Transfer_To_System");
    if (sub_A18A20(a1, *(*(a1 + 72) + 48), *(*(a1 + 72) + 56)))
    {
      std::string::append(&__p, "_nextBoardStation", 0x11uLL);
      if (v9 == 1)
      {
        std::string::append(&__p, "_station", 8uLL);
      }
    }

    v10 = v51;
    if (v51 < v52)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_9:
        sub_325C(v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_78:
        v32 = v10 + 3;
LABEL_80:
        v51 = v32;
        goto LABEL_81;
      }

LABEL_77:
      v31 = *&__p.__r_.__value_.__l.__data_;
      v10[2] = __p.__r_.__value_.__r.__words[2];
      *v10 = v31;
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  if (a2 != 1 || a3 != 1)
  {
    if (a2 != 2 || a3 != 1)
    {
      goto LABEL_83;
    }

    memset(&__p, 0, sizeof(__p));
    if (*(a1 + 128) == 6)
    {
      *(&__p.__r_.__value_.__s + 23) = 18;
      LOWORD(__p.__r_.__value_.__r.__words[2]) = 28005;
      *&__p.__r_.__value_.__l.__data_ = *"Transfer_To_System";
      goto LABEL_72;
    }

    sub_A18308(a1, &v47);
    if (SHIBYTE(v49) < 0)
    {
      v30 = v48;
      operator delete(v47);
      if (v30)
      {
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v49))
    {
LABEL_37:
      v18 = "Transfer_To_Line_{Mode}";
      v19 = 23;
      goto LABEL_71;
    }

    if (*(a1 + 168) == *(a1 + 176))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 8;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 8;
        p_p = &__p;
      }

      strcpy(p_p, "Transfer");
LABEL_72:
      if (sub_A18A20(a1, *(*(a1 + 72) + 48), *(*(a1 + 72) + 56)))
      {
        std::string::append(&__p, "_nextBoardStation", 0x11uLL);
        if (v9 == 1)
        {
          std::string::append(&__p, "_station", 8uLL);
        }
      }

      v10 = v51;
      if (v51 < v52)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_9;
        }

        goto LABEL_77;
      }

LABEL_79:
      v32 = sub_1CEE8(&v50, &__p);
      goto LABEL_80;
    }

    v18 = "Transfer_To_Headsign_{Mode}";
    v19 = 27;
LABEL_71:
    sub_195A048(&__p, v18, v19);
    goto LABEL_72;
  }

  if (*(a1 + 128) != 6)
  {
    goto LABEL_83;
  }

  memset(&__p, 0, sizeof(__p));
  sub_A18308(a1, &v47);
  v11 = HIBYTE(v49);
  if (v49 < 0)
  {
    v11 = v48;
  }

  if (!v11)
  {
    goto LABEL_42;
  }

  sub_A18380(a1, &v46);
  if (v49 >= 0)
  {
    v12 = HIBYTE(v49);
  }

  else
  {
    v12 = v48;
  }

  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  v14 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (v12 != size)
  {
    v17 = 1;
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v49 >= 0)
  {
    v15 = &v47;
  }

  else
  {
    v15 = v47;
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v46;
  }

  else
  {
    v16 = v46.__r_.__value_.__r.__words[0];
  }

  v17 = memcmp(v15, v16, v12) != 0;
  if (v14 < 0)
  {
LABEL_39:
    operator delete(v46.__r_.__value_.__l.__data_);
  }

LABEL_40:
  if (v17)
  {
    sub_195A048(&__p, "Follow_Signs_Line_{Mode}", 0x18uLL);
    goto LABEL_62;
  }

LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = 15;
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 15;
    v20 = &__p;
  }

  strcpy(v20, "Follow_Sign_for");
  v21 = *(a1 + 168);
  v22 = *(a1 + 176);
  if (v21 != v22)
  {
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3);
    if (v23 >= 2 && *(a1 + 48) != *(a1 + 56))
    {
      v24 = sub_A16A78(a1, 2);
      if (!sub_A19AB8(a1, v24[252], v24))
      {
        v23 = 1;
      }
    }

    std::string::append(&__p, "_MultipleHeadsign", 0x11uLL);
    if (v23 >= 5)
    {
      v25 = 5;
    }

    else
    {
      v25 = v23;
    }

    std::to_string(&v46, v25);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v46;
    }

    else
    {
      v26 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v46.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, v26, v27);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(&__p, "_{Mode}", 7uLL);
LABEL_62:
  v28 = v51;
  if (v51 >= v52)
  {
    v51 = sub_1CEE8(&v50, &__p);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_67;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v29 = *&__p.__r_.__value_.__l.__data_;
    v51[2] = __p.__r_.__value_.__r.__words[2];
    *v28 = v29;
    v51 = v28 + 3;
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_67;
  }

  sub_325C(v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v51 = v28 + 3;
  if (SHIBYTE(v49) < 0)
  {
LABEL_67:
    operator delete(v47);
  }

LABEL_81:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_83:
  v33 = v50;
  v34 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
  if (v34)
  {
    if (v34 != 1)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46.__r_.__value_.__r.__words[0] = &v47;
      v46.__r_.__value_.__s.__data_[8] = 0;
      if (v34 - 1 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(v50 + 23) < 0)
    {
      sub_325C(&__p, *v50, *(v50 + 1));
    }

    else
    {
      v35 = *v50;
      __p.__r_.__value_.__r.__words[2] = *(v50 + 2);
      *&__p.__r_.__value_.__l.__data_ = v35;
    }

    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    sub_64B998(&v45);
    sub_96CCDC(a4, &__p);
    sub_9721FC(&__p);
    v33 = v50;
  }

  if (v33)
  {
    v36 = v51;
    v37 = v33;
    if (v51 != v33)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v33);
      v37 = v50;
    }

    v51 = v33;
    operator delete(v37);
  }
}

void sub_970CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v16 - 64) = v15;
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_6:
      sub_1A104((v16 - 72));
      sub_9721FC(v14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p);
  sub_1A104((v16 - 72));
  sub_9721FC(v14);
  _Unwind_Resume(a1);
}

void sub_970E4C(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_970E84(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_A16EA8(a1, a2);
  if (sub_A18A20(a1, *(*(a1 + 72) + 48), *(*(a1 + 72) + 56)))
  {
    v4 = sub_A18C04(a1, **(a1 + 80) + 168 * *(*(a1 + 72) + 56));
    sub_9D43A4(v4, v11);
    v10 = 18;
    strcpy(__p, "{nextBoardStation}");
    v13 = __p;
    v5 = sub_7F7DD4(a2, __p);
    v6 = v5 + 5;
    if (v5 + 5 != v11)
    {
      if (*(v5 + 63) < 0)
      {
        if (SHIBYTE(v12) >= 0)
        {
          v7 = v11;
        }

        else
        {
          v7 = v11[0];
        }

        if (SHIBYTE(v12) >= 0)
        {
          v8 = HIBYTE(v12);
        }

        else
        {
          v8 = v11[1];
        }

        sub_13B38(v6, v7, v8);
      }

      else if ((HIBYTE(v12) & 0x80) != 0)
      {
        sub_13A68(v6, v11[0], v11[1]);
      }

      else
      {
        *v6 = *v11;
        v5[7] = v12;
      }
    }

    if ((v10 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v12) & 0x80000000) == 0)
      {
        return;
      }

LABEL_18:
      operator delete(v11[0]);
      return;
    }

    operator delete(*__p);
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_18;
    }
  }
}

void sub_970FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      sub_2CD04(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  sub_2CD04(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_971040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_A18C14(a1, a3, a4);
  *v6 = off_266E3A0;
  sub_4E9DA4((v6 + 65), a2);
  return a1;
}

void sub_9710B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_A16EA8(a1, a2);
  v12 = 13;
  strcpy(__p, "{Destination}");
  v13 = __p;
  v4 = sub_7F7DD4(a2, __p);
  v5 = (v4 + 5);
  if (v4 + 5 != (a1 + 712))
  {
    v6 = *(v4 + 63);
    v7 = *(a1 + 735);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = (a1 + 712);
      }

      else
      {
        v9 = *(a1 + 712);
      }

      if (v7 >= 0)
      {
        v10 = *(a1 + 735);
      }

      else
      {
        v10 = *(a1 + 720);
      }

      sub_13B38(v5, v9, v10);
    }

    else if ((*(a1 + 735) & 0x80) != 0)
    {
      sub_13A68(v5, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      v8 = *(a1 + 712);
      *(v5 + 16) = *(a1 + 728);
      *v5 = v8;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_9711B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(v15);
  _Unwind_Resume(a1);
}

double sub_9711D4@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 1 && !a3)
  {
    strcpy(a4, "Arrive_At");
    *(a4 + 23) = 9;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
    return sub_64B998(a4 + 80);
  }

  if (a2 == 1 && a3 == 1)
  {
    v6 = *(a1 + 72);
    if ((*(a1 + 735) & 0x8000000000000000) != 0)
    {
      v7 = *(v6 + 1912);
      if (*(a1 + 720))
      {
LABEL_8:
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }
    }

    else
    {
      v7 = *(v6 + 1912);
      if (*(a1 + 735))
      {
        goto LABEL_8;
      }
    }

    if (v7 == 1)
    {
      strcpy(a4, "Arrive_Left");
      *(a4 + 23) = 11;
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0;
      return sub_64B998(a4 + 80);
    }

    else
    {
      if (v7 == 2)
      {
        strcpy(a4, "Arrive_Right");
        *(a4 + 23) = 12;
      }

      else
      {
        strcpy(a4, "Arrive_Unknown_Side");
        *(a4 + 23) = 19;
      }

      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0;
      return sub_64B998(a4 + 80);
    }
  }

  else
  {
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 80) = 0u;
    return sub_64B998(a4 + 80);
  }
}

void sub_9714CC(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_971560(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266E450;
  *(v4 + 520) = 0;
  *(a1 + 520) = sub_9715C4(v4);
  return a1;
}

BOOL sub_9715C4(uint64_t a1)
{
  sub_A1777C(a1, &__p);
  if (v24 < 0)
  {
    v2 = v23;
    operator delete(__p);
    if (!v2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v24)
  {
    return 0;
  }

LABEL_5:
  if ((*(a1 + 159) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 144))
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 159))
  {
    goto LABEL_17;
  }

  sub_A17784(a1, &__p);
  v3 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v3 = v23;
  }

  if (v3)
  {
    v4 = *(a1 + 216);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 1;
    if ((v24 & 0x80000000) == 0)
    {
LABEL_13:
      if (v4)
      {
        return 1;
      }

      goto LABEL_17;
    }
  }

  operator delete(__p);
  if (v4)
  {
    return 1;
  }

LABEL_17:
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  while (v5 != v6)
  {
    v8 = *(v5 - 8);
    v5 -= 8;
    v7 = v8;
    if (*v8 == 2)
    {
      goto LABEL_22;
    }
  }

  v7 = *(v6 - 8);
LABEL_22:
  if ((v7[198] & 1) == 0)
  {
    sub_4F0F0C();
  }

  v9 = *(v7 + 94);
  v10 = *(*(a1 + 80) + 72);
  v11 = 0x66FD0EB66FD0EB67 * ((*(*(a1 + 80) + 80) - v10) >> 3);
  if (v11 <= v9 || (v12 = *(*(a1 + 72) + 752), v11 <= v12))
  {
    sub_6FAB4();
  }

  if (*(v10 + 696 * v9 + 64) != *(v10 + 696 * v12 + 64))
  {
    return 0;
  }

  v13 = *(a1 + 168);
  if (v13 == *(a1 + 176))
  {
    return 1;
  }

  v14 = *(v7 + 28);
  if (v14 == *(v7 + 29))
  {
    return 0;
  }

  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = *(v14 + 23);
  }

  else
  {
    v16 = v14[1];
  }

  v17 = *(v13 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v13 + 8);
  }

  if (v16 != v17)
  {
    return 0;
  }

  if (v15 >= 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = *v14;
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 168);
  }

  else
  {
    v20 = *v13;
  }

  return memcmp(v19, v20, v16) == 0;
}

uint64_t sub_97179C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266E450;
  *(v4 + 520) = 0;
  *(a1 + 520) = sub_9715C4(v4);
  return a1;
}

void sub_971800(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  if (*(a1 + 520) == 1)
  {
    if (a2 == 1 && !a3 || a2 == 2 && a3 == 2)
    {
      operator new();
    }
  }

  else
  {
    if (a2 == 2 && a3 == 2)
    {
      operator new();
    }

    if (a2 == 1 && !a3)
    {
      operator new();
    }

    if (a2 == 1 && a3 == 1)
    {
      operator new();
    }

    if (a2 == 1 && a3 == 2)
    {
      operator new();
    }
  }

  if (*(*(a1 + 88) + 1177) >= 8u && a2 == 2 && a3 == 3)
  {

    sub_A19F9C(a1, a4);
  }

  else
  {
    a4[13] = 0u;
    a4[14] = 0u;
    a4[11] = 0u;
    a4[12] = 0u;
    a4[9] = 0u;
    a4[10] = 0u;
    a4[7] = 0u;
    a4[8] = 0u;
    a4[6] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    a4[5] = 0u;
    sub_64B998((a4 + 5));
  }
}

void sub_971B3C(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4(v3);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_971BC0(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_971C08(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

void sub_971C6C(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_971CE0(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 520));
    a1 = v3;
  }

  return sub_96BE24(a1);
}

void sub_971D54(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_971DCC(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_971E04(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  return sub_96BE24(a1);
}

void sub_971EA4(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_971F5C(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_971F94(void *a1)
{
  *a1 = off_266E3A0;
  sub_44FDEC((a1 + 65));

  return sub_96BE24(a1);
}

void sub_971FEC(void *a1)
{
  *a1 = off_266E3A0;
  sub_44FDEC((a1 + 65));
  sub_96BE24(a1);

  operator delete();
}

void sub_97205C(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_972094(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
LABEL_4:
    sub_53A868(v2);
    operator delete();
  }

LABEL_5:
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 72);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 72);
    }

    *(a1 + 80) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 != v7)
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
      v9 = *(a1 + 48);
    }

    *(a1 + 56) = v7;
    operator delete(v9);
  }

  sub_55A03C(a1 + 24);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *a1;
    }

    *(a1 + 8) = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_9721FC(uint64_t a1)
{
  sub_53A868(a1 + 80);
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 24);
    }

    *(a1 + 32) = v6;
    operator delete(v8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9722E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v7;
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_972B74(a1 + 88, a2 + 88);
    *(a1 + 792) = 1;
  }

  *(a1 + 800) = 0;
  *(a1 + 840) = 0;
  if (*(a2 + 840) == 1)
  {
    v8 = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 800) = v8;
    if (*(a2 + 839) < 0)
    {
      sub_325C((a1 + 816), *(a2 + 816), *(a2 + 824));
    }

    else
    {
      v9 = *(a2 + 816);
      *(a1 + 832) = *(a2 + 832);
      *(a1 + 816) = v9;
    }

    *(a1 + 840) = 1;
  }

  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  if (*(a2 + 952) == 1)
  {
    sub_9734F4(a1 + 848, (a2 + 848));
    *(a1 + 952) = 1;
  }

  sub_9737CC(a1 + 960, (a2 + 960));
  *(a1 + 1008) = *(a2 + 1008);
  sub_9738C8(a1 + 1016, a2 + 1016);
  sub_973A4C((a1 + 1600), (a2 + 1600));
  sub_55BD50(a1 + 1696, a2 + 1696);
  *(a1 + 1856) = *(a2 + 1856);
  sub_973D7C((a1 + 1864), (a2 + 1864));
  v10 = *(a2 + 1888);
  *(a1 + 1901) = *(a2 + 1901);
  *(a1 + 1888) = v10;
  *(a1 + 1920) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1928) = 0;
  v11 = *(a2 + 1920);
  v12 = *(a2 + 1928);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1960) = 0;
  *(a1 + 1944) = 0u;
  v13 = *(a2 + 1944);
  v14 = *(a2 + 1952);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 1968);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1968) = v15;
  *(a1 + 2000) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2008) = 0;
  v16 = *(a2 + 2000);
  v17 = *(a2 + 2008);
  if (v17 != v16)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v17 - v16) >> 2)) < 0x924924924924925)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2024) = 0;
  *(a1 + 2104) = 0;
  if (*(a2 + 2104) == 1)
  {
    sub_9740B0(a1 + 2024, a2 + 2024);
    *(a1 + 2104) = 1;
  }

  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  if (*(a2 + 2144) == 1)
  {
    sub_97422C((a1 + 2112), (a2 + 2112));
    *(a1 + 2136) = *(a2 + 2136);
    *(a1 + 2144) = 1;
  }

  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  v18 = *(a2 + 2152);
  v19 = *(a2 + 2160);
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *(a2 + 2176);
  *(a1 + 2192) = *(a2 + 2192);
  *(a1 + 2176) = v20;
  *(a1 + 2200) = 0;
  *(a1 + 2216) = 0;
  *(a1 + 2208) = 0;
  v21 = *(a2 + 2200);
  v22 = *(a2 + 2208);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_974500(a1 + 2224, a2 + 2224);
  *(a1 + 3440) = 0;
  *(a1 + 3424) = 0u;
  sub_974AAC(a1 + 3424, *(a2 + 3424), *(a2 + 3432), 0x34F72C234F72C235 * ((*(a2 + 3432) - *(a2 + 3424)) >> 4));
  *(a1 + 3464) = 0;
  *(a1 + 3448) = 0u;
  v23 = *(a2 + 3448);
  v24 = *(a2 + 3456);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  v25 = *(a2 + 3472);
  v26 = *(a2 + 3480);
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F4380(a1 + 3496, (a2 + 3496));
  sub_5F4380(a1 + 4584, (a2 + 4584));
  *(a1 + 5672) = *(a2 + 5672);
  *(a1 + 5680) = 0;
  *(a1 + 5696) = 0;
  *(a1 + 5688) = 0;
  v27 = *(a2 + 5680);
  v28 = *(a2 + 5688);
  if (v28 != v27)
  {
    if (((v28 - v27) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_972900(_Unwind_Exception *a1)
{
  if (*(v1 + 840) == 1 && *(v1 + 839) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 792) == 1)
  {
    sub_973264(v2);
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v1 + 39) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_972B4C()
{
  if (!*v0)
  {
    JUMPOUT(0x972A94);
  }

  JUMPOUT(0x972A8CLL);
}

void sub_972B64()
{
  if (!*v0)
  {
    JUMPOUT(0x972AB8);
  }

  JUMPOUT(0x972AB0);
}

uint64_t sub_972B74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  sub_973044(a1 + 72, (a2 + 72));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v7 = *(a2 + 136);
  v8 = *(a2 + 144);
  if (v8 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 183) < 0)
  {
    sub_325C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v9 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v9;
  }

  *(a1 + 184) = *(a2 + 184);
  if (*(a2 + 215) < 0)
  {
    sub_325C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v10 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v10;
  }

  *(a1 + 216) = *(a2 + 216);
  sub_55F1E8(a1 + 224, a2 + 224);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  v12 = *(a2 + 352);
  v11 = *(a2 + 360);
  if (v11 != v12)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v14 = *(a2 + 376);
  v13 = *(a2 + 384);
  if (v13 != v14)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v16 = *(a2 + 400);
  v15 = *(a2 + 408);
  if (v15 != v16)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  v17 = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 424) = v17;
  sub_973044(a1 + 440, (a2 + 440));
  *(a1 + 504) = *(a2 + 504);
  sub_55F1E8(a1 + 512, a2 + 512);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  v18 = *(a2 + 632);
  v19 = *(a2 + 640);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *(a2 + 656);
  v21 = *(a2 + 672);
  *(a1 + 681) = *(a2 + 681);
  *(a1 + 656) = v20;
  *(a1 + 672) = v21;
  return a1;
}

void sub_972EE0(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
    sub_9354C4(v2);
    sub_973124(v1 + 72);
    _Unwind_Resume(a1);
  }

  sub_9354C4(v2);
  sub_973124(v1 + 72);
  _Unwind_Resume(a1);
}

void sub_973008()
{
  if (*(v0 + 376))
  {
    JUMPOUT(0x972FF4);
  }

  JUMPOUT(0x972FB4);
}

void sub_973018()
{
  if (!*(v0 + 352))
  {
    JUMPOUT(0x972FC4);
  }

  JUMPOUT(0x972FBCLL);
}

void sub_973028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  sub_9356F0(&a9);
  sub_973124(v9 + 72);
  _Unwind_Resume(a1);
}

uint64_t sub_973044(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_325C(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 24);
    if (*(a2 + 55) < 0)
    {
      sub_325C((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_9730EC(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_973124(v1);
    _Unwind_Resume(a1);
  }

  sub_973124(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_973124(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_973194(uint64_t a1)
{
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 112));
    v2 = *(a1 + 96);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
LABEL_7:
    (off_266E5B0[v2])(&v4, a1 + 64);
  }

LABEL_8:
  *(a1 + 96) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_973264(uint64_t a1)
{
  v2 = *(a1 + 632);
  if (v2)
  {
    *(a1 + 640) = v2;
    operator delete(v2);
  }

  if ((*(a1 + 615) & 0x80000000) == 0)
  {
    if ((*(a1 + 583) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(a1 + 560));
    v3 = *(a1 + 544);
    if (v3 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 592));
  if (*(a1 + 583) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = *(a1 + 544);
  if (v3 != -1)
  {
LABEL_9:
    (off_266E5B0[v3])(&v13, a1 + 512);
  }

LABEL_10:
  *(a1 + 544) = -1;
  if (*(a1 + 496) != 1)
  {
    goto LABEL_13;
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
LABEL_13:
      v4 = *(a1 + 400);
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 463) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(*(a1 + 440));
  v4 = *(a1 + 400);
  if (v4)
  {
LABEL_14:
    *(a1 + 408) = v4;
    operator delete(v4);
  }

LABEL_15:
  v5 = *(a1 + 376);
  if (v5)
  {
    *(a1 + 384) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 352);
  if (v6)
  {
    *(a1 + 360) = v6;
    operator delete(v6);
  }

  if ((*(a1 + 327) & 0x80000000) == 0)
  {
    if ((*(a1 + 295) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(*(a1 + 272));
    v7 = *(a1 + 256);
    if (v7 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(*(a1 + 304));
  if (*(a1 + 295) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v7 = *(a1 + 256);
  if (v7 != -1)
  {
LABEL_25:
    (off_266E5B0[v7])(&v14, a1 + 224);
  }

LABEL_26:
  *(a1 + 256) = -1;
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    operator delete(*(a1 + 160));
    v8 = *(a1 + 136);
    if (!v8)
    {
LABEL_29:
      if (*(a1 + 128) == 1)
      {
        goto LABEL_43;
      }

      return a1;
    }

    goto LABEL_33;
  }

  operator delete(*(a1 + 192));
  if (*(a1 + 183) < 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v8 = *(a1 + 136);
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_33:
  v10 = *(a1 + 144);
  if (v10 == v8)
  {
    *(a1 + 144) = v8;
    operator delete(v8);
    if (*(a1 + 128) != 1)
    {
      return a1;
    }

LABEL_43:
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else if ((*(a1 + 95) & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(*(a1 + 72));
    return a1;
  }

  do
  {
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 3));
      v11 = v10 - 7;
      if ((*(v10 - 33) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = v10 - 7;
      if ((*(v10 - 33) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    operator delete(*v11);
LABEL_36:
    v10 = v11;
  }

  while (v11 != v8);
  v12 = *(a1 + 136);
  *(a1 + 144) = v8;
  operator delete(v12);
  if (*(a1 + 128) == 1)
  {
    goto LABEL_43;
  }

  return a1;
}

uint64_t sub_9734F4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = v4;
  sub_9735D8((a1 + 32), a2 + 4);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = *(a2 + 12);
  return a1;
}

void sub_9735B4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  sub_3108E8((v1 + 32));
  _Unwind_Resume(a1);
}

void *sub_9735D8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_97371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_55C6CC(&a11);
  *(v11 + 8) = v12;
  sub_55C730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_97373C(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 9) < 0)
          {
            operator delete(*(v4 - 32));
          }

          v4 -= 40;
        }

        while (v4 != v3);
        v5 = *(a1 + 32);
      }

      *(a1 + 40) = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_9737CC(uint64_t result, int *a2)
{
  *result = 0;
  *(result + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v2 = *a2;
    *(result + 4) = *(a2 + 4);
    *(result + 8) = 0;
    *result = v2;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (v3 != v4)
    {
      if (((v3 - v4) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    *(result + 32) = *(a2 + 4);
    *(result + 40) = 1;
  }

  return result;
}

void sub_973890(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  if (*(v1 + 40) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v5;
      operator delete(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9738C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5CEC4C(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_5CEC4C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_5CEC4C(a1 + 48, *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_5CEC4C(a1 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 5));
  sub_55BD50(a1 + 96, a2 + 96);
  sub_55BD50(a1 + 256, a2 + 256);
  sub_55BD50(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void sub_9739C8(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 32));
  sub_53A868((v1 + 12));
  sub_5C0ED8(v4);
  sub_5C0ED8(v3);
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void sub_973A1C(_Unwind_Exception *a1)
{
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void *sub_973A4C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_5CEC4C(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_5CEC4C((a1 + 3), a2[3], a2[4], 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 5));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_5CEC4C((a1 + 6), a2[6], a2[7], 0xCCCCCCCCCCCCCCCDLL * ((a2[7] - a2[6]) >> 5));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_5CEC4C((a1 + 9), a2[9], a2[10], 0xCCCCCCCCCCCCCCCDLL * ((a2[10] - a2[9]) >> 5));
  return a1;
}

void sub_973B1C(_Unwind_Exception *a1)
{
  sub_5C0ED8(v3);
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void **sub_973B5C(void **a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_53A868(v12 - 160);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

void **sub_973C60(void **a1)
{
  sub_53A868((a1 + 52));
  sub_53A868((a1 + 32));
  sub_53A868((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_53A868(v12 - 160);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

void *sub_973D7C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v2 - *a2) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_973E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_973EB8(&a11);
  *(v11 + 8) = v12;
  sub_973FB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_973EB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 272;
        sub_973F20(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_973F20(uint64_t a1, uint64_t a2)
{
  sub_53A868(a2 + 112);
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 32);
      if (v3 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 48));
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
LABEL_7:
    (off_266E5B0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

void sub_973FB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    sub_53A868((v4 - 20));
    if (*(v4 - 169) < 0)
    {
      operator delete(*(v4 - 24));
      if (*(v4 - 201) < 0)
      {
LABEL_10:
        operator delete(*(v4 - 28));
        v6 = v4 - 34;
        v7 = *(v4 - 60);
        if (v7 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266E5B0[v7])(&v8, v6);
        goto LABEL_4;
      }
    }

    else if (*(v4 - 201) < 0)
    {
      goto LABEL_10;
    }

    v6 = v4 - 34;
    v7 = *(v4 - 60);
    if (v7 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v4 - 60) = -1;
    v4 = v6;
  }

  while (v6 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;
  operator delete(v5);
}

uint64_t sub_9740B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 40) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_97418C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_9741C8(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    v1 = *(result + 48);
    if (v1)
    {
      *(result + 56) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    if (*(result + 31) < 0)
    {
      v3 = result;
      operator delete(*(result + 8));
      return v3;
    }
  }

  return result;
}

void *sub_97422C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_974378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_974398(&a11);
  *(v11 + 8) = v12;
  sub_9743FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_974398(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 40));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_9743FC(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 17) < 0)
          {
            operator delete(*(v4 - 5));
          }

          v4 -= 6;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_974480(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 17) < 0)
          {
            operator delete(*(v3 - 5));
          }

          v3 -= 6;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_974500(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_9746D4(a1, *a2, *(a2 + 8), 0x66FD0EB66FD0EB67 * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55BD50(a1 + 56, a2 + 56);
  sub_55BD50(a1 + 216, a2 + 216);
  sub_55BD50(a1 + 376, a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_55BD50(a1 + 544, a2 + 544);
  sub_55BD50(a1 + 704, a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_55BD50(a1 + 872, a2 + 872);
  sub_55BD50(a1 + 1032, a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

void sub_974640(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 109));
  sub_53A868((v1 + 88));
  sub_53A868((v1 + 68));
  sub_53A868((v1 + 47));
  sub_53A868((v1 + 27));
  sub_9749E0(v2);
  sub_974A1C(v1);
  _Unwind_Resume(a1);
}

void sub_9746AC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
    sub_974A1C(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x974694);
}

void sub_9746D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x5E293205E29321)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9747D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_9748B4(&a11);
  *(v11 + 8) = v12;
  sub_97493C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9747F8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_55BD50(a1 + 32, (a2 + 2));
  sub_55BD50(a1 + 192, (a2 + 12));
  *(a1 + 352) = *(a2 + 352);
  sub_55BD50(a1 + 360, a2 + 360);
  sub_55BD50(a1 + 520, a2 + 520);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  return a1;
}

void sub_974874(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_9748B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 696)
    {
      sub_53A868(v4 - 176);
      sub_53A868(v4 - 336);
      sub_53A868(v4 - 504);
      sub_53A868(v4 - 664);
    }
  }

  return a1;
}

void ***sub_97493C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          sub_53A868((v4 - 176));
          sub_53A868((v4 - 336));
          sub_53A868((v4 - 504));
          sub_53A868((v4 - 664));
          v4 -= 696;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_9749E0(uint64_t a1)
{
  sub_53A868(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void **sub_974A1C(void **a1)
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
        sub_53A868((v3 - 176));
        sub_53A868((v3 - 336));
        sub_53A868((v3 - 504));
        sub_53A868((v3 - 664));
        v3 -= 696;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_974AAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x8D3DCB08D3DCB1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_974B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 464;
    v15 = -v12;
    do
    {
      sub_974D90(v14);
      v14 -= 464;
      v15 += 464;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_974E40(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_974BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55F1E8(a1 + 320, a2 + 320);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  v6 = *(a2 + 432);
  v5 = *(a2 + 440);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 456) = *(a2 + 456);
  return a1;
}

void sub_974C9C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_974CCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 432);
  if (v3)
  {
    *(v1 + 440) = v3;
    operator delete(v3);
  }

  sub_974CF0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_974CF0(uint64_t a1)
{
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 352);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 368));
  v2 = *(a1 + 352);
  if (v2 != -1)
  {
LABEL_7:
    (off_266E5B0[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

uint64_t sub_974D90(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 352);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 368));
  v3 = *(a1 + 352);
  if (v3 != -1)
  {
LABEL_9:
    (off_266E5B0[v3])(&v5, a1 + 320);
  }

LABEL_10:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

void ***sub_974E40(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 464;
          sub_974D90(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void **sub_974EB8(void **a1)
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
        v3 -= 464;
        sub_974D90(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_974F1C(void **a1)
{
  sub_53A868((a1 + 129));
  sub_53A868((a1 + 109));
  sub_53A868((a1 + 88));
  sub_53A868((a1 + 68));
  sub_53A868((a1 + 47));
  sub_53A868((a1 + 27));
  sub_53A868((a1 + 7));
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        sub_53A868((v4 - 176));
        sub_53A868((v4 - 336));
        sub_53A868((v4 - 504));
        sub_53A868((v4 - 664));
        v4 -= 696;
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_974FF4(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 88);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 17) < 0)
          {
            operator delete(*(v3 - 40));
          }

          v3 -= 48;
        }

        while (v3 != v2);
        v4 = *(a1 + 88);
      }

      *(a1 + 96) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 80) != 1)
  {
    return a1;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}