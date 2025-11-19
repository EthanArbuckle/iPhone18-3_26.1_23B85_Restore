uint64_t sub_9A619C(uint64_t a1)
{
  if (*a1 != *(a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 71);
      if (v4 < 0)
      {
        v4 = *(a1 + 56);
      }

      if (v4)
      {
        return 0;
      }
    }

    else if (v2 == 4)
    {
      v3 = *(a1 + 71);
      if (v3 < 0)
      {
        v3 = *(a1 + 56);
      }

      if (v3)
      {
        return 0;
      }
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 48) != -1)
    {
      return 0;
    }
  }

  else if (v2 == 2)
  {
    if (*(a1 + 52) != -1)
    {
      return 0;
    }

    if (*(a1 + 48) != -1)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a1 + 64))
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = *(a1 + 192);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 != 4)
    {
      return v5 ^ 1u;
    }

    v7 = *(a1 + 183);
    if (v7 < 0)
    {
      v7 = *(a1 + 168);
    }

    v8 = v7 == 0;
    goto LABEL_37;
  }

  if (v6 == 1)
  {
    v8 = *(a1 + 160) == -1;
    goto LABEL_37;
  }

  if (v6 != 2)
  {
    return v5 ^ 1u;
  }

  if (*(a1 + 164) != -1)
  {
    return 0;
  }

  if (*(a1 + 160) == -1)
  {
    v8 = *(a1 + 168) == *(a1 + 176);
LABEL_37:
    v5 = !v8;
    return v5 ^ 1u;
  }

  return 0;
}

uint64_t sub_9A6304(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_9A6368(a1, i))
    {
      i -= 3;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9A6368(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      v6 = a2[1];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 2);
              if (v11 != -1)
              {
                (off_266F4E0[v11])(&v12, v10 - 42);
              }

              *(v10 - 2) = -1;
              v10 -= 44;
            }

            while (v10 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = *a2;
    }

    a2[1] = v2;
    operator delete(v5);
  }
}

void sub_9A644C(uint64_t a1, uint64_t a2)
{
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
    (off_266F4F0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

void sub_9A64E4(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_9A67C8(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x249249249249249)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_5410A0(v8, v6);
        v6 += 112;
        v8 += 112;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    if (v11 == v8)
    {
LABEL_31:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v11 - 9) < 0)
      {
        operator delete(*(v11 - 4));
        if ((*(v11 - 41) & 0x80000000) == 0)
        {
LABEL_26:
          v15 = (v11 - 14);
          v16 = *(v11 - 20);
          if (v16 == -1)
          {
            goto LABEL_23;
          }

LABEL_30:
          (off_266F4F0[v16])(v17, v15);
          goto LABEL_23;
        }
      }

      else if ((*(v11 - 41) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(*(v11 - 8));
      v15 = (v11 - 14);
      v16 = *(v11 - 20);
      if (v16 != -1)
      {
        goto LABEL_30;
      }

LABEL_23:
      *(v11 - 20) = -1;
      v11 = v15;
      if (v15 == v8)
      {
        goto LABEL_31;
      }
    }
  }

  v13 = a2 + v12;
  if (v11 != v8)
  {
    do
    {
      sub_5410A0(v8, v6);
      v6 += 112;
      v8 += 112;
      v12 -= 112;
    }

    while (v12);
    v11 = a1[1];
  }

  v19 = v11;
  v20 = v11;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v14 = v11;
  v18 = 0;
  if (v13 != a3)
  {
    v14 = v11;
    do
    {
      sub_55F1E8(v14, v13);
      v13 += 112;
      v14 = (v20 + 14);
      v20 += 14;
    }

    while (v13 != a3);
  }

  a1[1] = v14;
}

void sub_9A6798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9A68B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9A67B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9A68B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9A67C8(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = v3 - 14;
        v6 = *(v3 - 20);
        if (v6 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266F4F0[v6])(&v7, v5);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = v3 - 14;
    v6 = *(v3 - 20);
    if (v6 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 = v5;
  }

  while (v5 != v1);
  v4 = *a1;
LABEL_13:
  a1[1] = v1;
  operator delete(v4);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_9A68B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 32));
          if ((*(v4 - 41) & 0x80000000) == 0)
          {
LABEL_7:
            v6 = v4 - 112;
            v7 = *(v4 - 80);
            if (v7 == -1)
            {
              goto LABEL_4;
            }

LABEL_11:
            (off_266F4F0[v7])(&v9, v6);
            goto LABEL_4;
          }
        }

        else if ((*(v4 - 41) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 - 64));
        v6 = v4 - 112;
        v7 = *(v4 - 80);
        if (v7 != -1)
        {
          goto LABEL_11;
        }

LABEL_4:
        *(v4 - 80) = -1;
        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_9A698C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 119) < 0)
      {
        operator delete(v2[12]);
        if ((*(v2 + 87) & 0x80000000) == 0)
        {
LABEL_6:
          v4 = *(v2 + 12);
          if (v4 == -1)
          {
            goto LABEL_3;
          }

LABEL_10:
          (off_266F4F0[v4])(&v7, v2 + 2);
          goto LABEL_3;
        }
      }

      else if ((*(v2 + 87) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(v2[8]);
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        goto LABEL_10;
      }

LABEL_3:
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_9A6A54(uint64_t a1, uint64_t a2)
{
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
    (off_266F4F0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

uint64_t sub_9A6AF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 168;
      *(a1 + 16) = v3 - 168;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_266F540[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9A6BA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v2 + 96) = v3;
  v4 = *(a2 + 104);
  *(v2 + 108) = *(a2 + 108);
  *(v2 + 104) = v4;
  v5 = *(a2 + 112);
  *(v2 + 128) = *(a2 + 128);
  *(v2 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a2 + 136);
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_9A6C6C(unsigned int **a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  *(sub_55BD50(v15, a2) + 160) = 1;
  v6 = 168 * v2 + 168;
  v7 = *a1;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = v15 + *a1 - v8;
    v11 = *a1;
    do
    {
      *v10 = 0;
      *(v10 + 160) = -1;
      v12 = v11[40];
      if (v12 != -1)
      {
        v16 = v10;
        (off_266F550[v12])(&v16, v11);
        *(v10 + 160) = v12;
      }

      v11 += 42;
      v10 += 168;
    }

    while (v11 != v8);
    do
    {
      v13 = v7[40];
      if (v13 != -1)
      {
        (off_266F540[v13])(&v16, v7);
      }

      v7[40] = -1;
      v7 += 42;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void *sub_9A6E7C(void *a1, uint64_t a2)
{
  v4 = sub_94AD3C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v6)
        {
          if (sub_55DD5C((v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v13 == v6)
      {
        if (sub_55DD5C((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t sub_9A6FB4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_55F1E8(v11, a2);
  v6 = 112 * v2 + 112;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_55EF68(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_9A70F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void *sub_9A7108(void *a1, uint64_t a2)
{
  v4 = sub_94AD3C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_55DD5C((v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_55DD5C((v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_9A7460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9A7488(va);
  _Unwind_Resume(a1);
}

void sub_9A7474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9A7488(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A7488(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_9A6A54(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_9A74DC()
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
  xmmword_27B3178 = 0u;
  unk_27B3188 = 0u;
  dword_27B3198 = 1065353216;
  sub_3A9A34(&xmmword_27B3178, v0);
  sub_3A9A34(&xmmword_27B3178, v3);
  sub_3A9A34(&xmmword_27B3178, __p);
  sub_3A9A34(&xmmword_27B3178, v9);
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
    qword_27B3150 = 0;
    qword_27B3158 = 0;
    qword_27B3148 = 0;
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

void sub_9A7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3160)
  {
    qword_27B3168 = qword_27B3160;
    operator delete(qword_27B3160);
  }

  _Unwind_Resume(exception_object);
}

void sub_9A77D0(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *&v18[3] = -1;
  *v18 = -1;
  memset(&v18[7], 0, 25);
  v7 = *(a1 + 31);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    __len[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 40, __len))
    {
      a4 = sub_9D69F4(a1 + 8, __len);
      v8 = HIBYTE(v14);
      if (v14 < 0)
      {
        v8 = __len[1];
      }

      if (v8)
      {
        v9 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v9 = v16;
        }

        if (v9)
        {
          if (SHIBYTE(v14) < 0)
          {
            sub_13A68(&v18[8], __len[0], __len[1]);
          }

          else
          {
            HIDWORD(a4) = HIDWORD(__len[0]);
            *&v18[8] = *__len;
            *&v18[24] = v14;
          }
        }
      }

      if (v17 < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v14) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(__len[0]);
    }
  }

LABEL_16:
  *v18 = *a1;
  LODWORD(a4) = *(a1 + 4);
  v10 = vmovl_u8(*&a4).u64[0];
  if (vuzp1_s8(v10, v10).u32[0] != 0xFFFFFF)
  {
    *&v18[4] = *(a1 + 4);
  }

  *a3 = *v18;
  v11 = (a3 + 8);
  if ((v18[31] & 0x80000000) != 0)
  {
    sub_325C(v11, *&v18[8], *&v18[16]);
    v12 = v18[31];
    *(a3 + 32) = 1;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 63) = 0;
    *(a3 + 55) = 0;
    *(a3 + 71) = 0;
    *(a3 + 72) = a2;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    *(a3 + 104) = 0;
    if (v12 < 0)
    {
      operator delete(*&v18[8]);
    }
  }

  else
  {
    *v11 = *&v18[8];
    *(a3 + 24) = *&v18[24];
    *(a3 + 32) = 1;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 63) = 0;
    *(a3 + 55) = 0;
    *(a3 + 71) = 0;
    *(a3 + 72) = a2;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    *(a3 + 104) = 0;
  }
}

void sub_9A79E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_509680(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9A7A18(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_503310(a1, a2, 0, "access point");
  v5 = (v4 - *v4);
  if (*v5 < 0x1Bu || (v6 = v5[13]) == 0)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  v7 = (v4 + v6 + *(v4 + v6));
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 7)
  {
    v10 = 0;
    v11 = 0xFFFFFFLL;
    if (v9 < 5)
    {
      goto LABEL_16;
    }

    v12 = v8[2];
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v8[3])
  {
    v10 = *(v7 + v8[3]);
    if (v9 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v9 >= 9)
    {
LABEL_6:
      if (v8[4])
      {
        v11 = *(v7 + v8[4]);
        v12 = v8[2];
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v11 = 0xFFFFFFLL;
        v12 = v8[2];
        if (!v12)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      v13 = (v7 + v12 + *(v7 + v12));
      goto LABEL_17;
    }
  }

  v11 = 0xFFFFFFLL;
  v12 = v8[2];
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  sub_509164(v13, &v26);
  v19 = v26;
  *v20 = *v27;
  *&v20[7] = *&v27[7];
  v18 = v10 | (v11 << 32);
  v21 = v28;
  v22 = v29;
  *__p = v30;
  v24 = v31;
  v25 = 1;
  LOBYTE(v26) = 0;
  nullsub_1(&v26);
  sub_9A77D0(&v18, 5, a3, v14);
  if (v25)
  {
    v15 = __p[0];
    if (__p[0])
    {
      v16 = __p[1];
      v17 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 3));
          }

          v16 -= 4;
        }

        while (v16 != v15);
        v17 = __p[0];
      }

      __p[1] = v15;
      operator delete(v17);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }
  }
}

uint64_t sub_9A7C50(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void sub_9A7CF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_92FC60(a1, a2, 0, "line");
  v5 = (v4 - *v4);
  if (*v5 < 0x17u || (v6 = v5[11]) == 0)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  v7 = (v4 + v6 + *(v4 + v6));
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 7)
  {
    v10 = 0;
    v11 = 0xFFFFFFLL;
    if (v9 < 5)
    {
      goto LABEL_16;
    }

    v12 = v8[2];
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v8[3])
  {
    v10 = *(v7 + v8[3]);
    if (v9 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v9 >= 9)
    {
LABEL_6:
      if (v8[4])
      {
        v11 = *(v7 + v8[4]);
        v12 = v8[2];
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v11 = 0xFFFFFFLL;
        v12 = v8[2];
        if (!v12)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      v13 = (v7 + v12 + *(v7 + v12));
      goto LABEL_17;
    }
  }

  v11 = 0xFFFFFFLL;
  v12 = v8[2];
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  sub_509164(v13, &v26);
  v19 = v26;
  *v20 = *v27;
  *&v20[7] = *&v27[7];
  v18 = v10 | (v11 << 32);
  v21 = v28;
  v22 = v29;
  *__p = v30;
  v24 = v31;
  v25 = 1;
  LOBYTE(v26) = 0;
  nullsub_1(&v26);
  sub_9A77D0(&v18, 2, a3, v14);
  if (v25)
  {
    v15 = __p[0];
    if (__p[0])
    {
      v16 = __p[1];
      v17 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 3));
          }

          v16 -= 4;
        }

        while (v16 != v15);
        v17 = __p[0];
      }

      __p[1] = v15;
      operator delete(v17);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }
  }
}

__n128 sub_9A7F2C@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_92FC60(a1, *a2, 0, "line");
  v6 = (v4 - *v4);
  if (*v6 < 0x17u || (v7 = v6[11]) == 0)
  {
    *a3 = 0;
    *(a3 + 72) = 0;
    return result;
  }

  v8 = (v4 + v7 + *(v4 + v7));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 <= 6)
  {
    v11 = 0;
    v12 = 0xFFFFFFLL;
    if (v10 < 5)
    {
      goto LABEL_15;
    }

    v13 = v9[2];
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v9[3])
  {
    v11 = *(v8 + v9[3]);
    if (v10 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v10 >= 9)
    {
LABEL_6:
      if (v9[4])
      {
        v12 = *(v8 + v9[4]);
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0xFFFFFFLL;
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_12;
    }
  }

  v12 = 0xFFFFFFLL;
  v13 = v9[2];
  if (!v13)
  {
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v14 = (v8 + v13 + *(v8 + v13));
LABEL_16:
  sub_509164(v14, &v18);
  v15 = *v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = v15;
  *(a3 + 23) = *&v19[7];
  LOBYTE(v15) = v20;
  result = v21;
  v16 = v23;
  v17 = v22;
  *a3 = v11 | (v12 << 32);
  *(a3 + 31) = v15;
  *(a3 + 32) = result;
  *(a3 + 48) = v17;
  *(a3 + 64) = v16;
  *(a3 + 72) = 1;
  return result;
}

int *sub_9A809C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_93E04C(a1, a2, 0, "system");
  v7 = (v6 - *v6);
  if (*v7 >= 0x11u && (v8 = v7[8]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = -1;
  }

  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_93E04C(a1, a2, 0, "system");
  v12 = (result - *result);
  v13 = *v12;
  if (v13 < 0xF)
  {
    if (v13 < 0xD)
    {
      if (v9 != -1)
      {
        v17 = *&v9 | 0xFFFFFFFF00000000;
LABEL_28:
        *a3 = v17;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = 2;
        *(a3 + 40) = -1;
        *(a3 + 43) = -1;
        *(a3 + 47) = 0;
        *(a3 + 63) = 0;
        *(a3 + 55) = 0;
        *(a3 + 71) = 768;
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else if (v12[7])
  {
    v14 = *(result + v12[7]);
    v15 = v12[6];
    if (!v12[6])
    {
      goto LABEL_11;
    }

LABEL_17:
    v16 = *(result + v15);
    if (v14 == 0x7FFF)
    {
      v14 = v16;
    }

    if (v14 != 0x7FFF)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v14 = 0x7FFF;
  v15 = v12[6];
  if (v12[6])
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v14 == 0x7FFF)
  {
    v14 = 0x7FFF;
  }

  if (v14 != 0x7FFF)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v9 != -1)
  {
LABEL_22:
    v17 = *&v10 | 0xFFFFFFFF00000000;
    if (v9 == -1)
    {
      v17 = -1;
    }

    if (v14 != 0x7FFF)
    {
      v17 = v17 | (v14 << 32);
    }

    goto LABEL_28;
  }

LABEL_21:
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 64) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 55) = 0;
  *(a3 + 63) = 0;
  *(a3 + 71) = 0;
LABEL_29:
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  *(a3 + 96) = 0;
  return result;
}

void sub_9A8248(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X5>, uint64_t a6@<X8>)
{
  v62 = a3;
  v12 = *a5;
  v11 = a5[1];
  if (*a5 == v11)
  {
LABEL_91:
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 40) = -1;
    *(a6 + 43) = -1;
    *(a6 + 47) = 0;
    *(a6 + 55) = 0;
    *(a6 + 63) = 0;
    *(a6 + 71) = 0;
    *(a6 + 80) = 0;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
    *(a6 + 104) = 0;
    return;
  }

  v14 = a4 > 0xFFFFFFFEFFFFFFFFLL || a4 == 0;
  v49 = v14;
  while (1)
  {
    v15 = *v12;
    LOBYTE(v53) = 0;
    v61 = 0;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        sub_9A7F2C(a2, &v62, &v63);
        if (v68 == 1)
        {
          v8 = v63;
          v9 = *v64;
          v69[0] = *&v64[8];
          *(v69 + 7) = *&v64[15];
          v6 = v64[23];
          v52 = *&v64[24];
          v7 = v65;
          v10 = v66;
          v29 = 1;
          v30 = v67;
          v31 = 2;
          if (v61 != 1)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v29 = 0;
          v8 &= 0xFFFFFFFFFFFFFF00;
          v31 = 2;
        }

        goto LABEL_44;
      }

      if (v15 != 3)
      {
        if (v15 != 4)
        {
          goto LABEL_41;
        }

        v16 = sub_92FC60(a2, v62, 0, "line");
        v17 = (v16 - *v16);
        if (*v17 < 0x41u)
        {
          goto LABEL_36;
        }

        v18 = v17[32];
        if (!v18)
        {
          goto LABEL_36;
        }

        v19 = (v16 + v18 + *(v16 + v18));
        v20 = (v19 - *v19);
        v21 = *v20;
        if (v21 < 7)
        {
          if (v21 < 5)
          {
            v22 = 0;
            v40 = 0;
            v38 = 0xFFFFFFLL;
            goto LABEL_89;
          }

          v22 = 0;
          v38 = 0xFFFFFFLL;
          v41 = v20[2];
          if (v41)
          {
            goto LABEL_82;
          }

          goto LABEL_64;
        }

        if (v20[3])
        {
          v22 = *(v19 + v20[3]);
          if (v21 >= 9)
          {
LABEL_78:
            if (v20[4])
            {
              v38 = *(v19 + v20[4]);
              v41 = v20[2];
              if (!v41)
              {
                goto LABEL_64;
              }

              goto LABEL_82;
            }
          }
        }

        else
        {
          v22 = 0;
          if (v21 >= 9)
          {
            goto LABEL_78;
          }
        }

        v38 = 0xFFFFFFLL;
        v41 = v20[2];
        if (v41)
        {
LABEL_82:
          v40 = (v19 + v41 + *(v19 + v41));
          goto LABEL_89;
        }

LABEL_64:
        v40 = 0;
        goto LABEL_89;
      }

      v32 = sub_92FC60(a2, v62, 0, "line");
      v33 = (v32 - *v32);
      if (*v33 < 0x43u)
      {
        goto LABEL_36;
      }

      v34 = v33[33];
      if (!v34)
      {
        goto LABEL_36;
      }

      v35 = (v32 + v34 + *(v32 + v34));
      v36 = (v35 - *v35);
      v37 = *v36;
      if (v37 < 7)
      {
        if (v37 < 5)
        {
          v22 = 0;
          v40 = 0;
          v38 = 0xFFFFFFLL;
          goto LABEL_89;
        }

        v22 = 0;
        v38 = 0xFFFFFFLL;
        v39 = v36[2];
        if (v39)
        {
          goto LABEL_76;
        }

        goto LABEL_61;
      }

      if (v36[3])
      {
        v22 = *(v35 + v36[3]);
        if (v37 >= 9)
        {
LABEL_72:
          if (v36[4])
          {
            v38 = *(v35 + v36[4]);
            v39 = v36[2];
            if (!v39)
            {
              goto LABEL_61;
            }

LABEL_76:
            v40 = (v35 + v39 + *(v35 + v39));
            goto LABEL_89;
          }
        }
      }

      else
      {
        v22 = 0;
        if (v37 >= 9)
        {
          goto LABEL_72;
        }
      }

      v38 = 0xFFFFFFLL;
      v39 = v36[2];
      if (v39)
      {
        goto LABEL_76;
      }

LABEL_61:
      v40 = 0;
      goto LABEL_89;
    }

    if (v15)
    {
      if (v15 != 1)
      {
LABEL_41:
        v31 = 0;
        v29 = 0;
        v8 &= 0xFFFFFFFFFFFFFF00;
        goto LABEL_44;
      }

      v23 = sub_92FC60(a2, v62, 0, "line");
      v24 = (v23 - *v23);
      if (*v24 < 0x15u || (v25 = v24[10]) == 0)
      {
LABEL_36:
        v29 = 0;
        v8 &= 0xFFFFFFFFFFFFFF00;
        v31 = 1;
        goto LABEL_44;
      }

      v26 = (v23 + v25 + *(v23 + v25));
      v27 = (v26 - *v26);
      v28 = *v27;
      if (v28 < 7)
      {
        if (v28 < 5)
        {
          v22 = 0;
          v40 = 0;
          v38 = 0xFFFFFFLL;
          goto LABEL_89;
        }

        v22 = 0;
        v38 = 0xFFFFFFLL;
        v42 = v27[2];
        if (v42)
        {
          goto LABEL_88;
        }

        goto LABEL_67;
      }

      if (v27[3])
      {
        v22 = *(v26 + v27[3]);
        if (v28 >= 9)
        {
LABEL_84:
          if (v27[4])
          {
            v38 = *(v26 + v27[4]);
            v42 = v27[2];
            if (!v42)
            {
              goto LABEL_67;
            }

LABEL_88:
            v40 = (v26 + v42 + *(v26 + v42));
LABEL_89:
            sub_509164(v40, &v63);
            v9 = v63;
            v8 = v22 | (v38 << 32);
            v69[0] = *v64;
            *(v69 + 7) = *&v64[7];
            v6 = v64[15];
            v52 = *&v64[16];
            v7 = *&v64[32];
            v10 = v65;
            v31 = 1;
            v29 = 1;
            v30 = v66;
            if (v61 != 1)
            {
LABEL_42:
              v53 = v8;
              __p = v9;
              *v55 = v69[0];
              *&v55[7] = *(v69 + 7);
              v56 = v6;
              v69[0] = 0;
              *(v69 + 7) = 0;
              v57 = v52;
              v58 = v7;
              v59 = v10;
              v60 = v30;
              v61 = 1;
              v10 = 0;
              v7 = 0;
              v6 = 0;
              v9 = 0;
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v22 = 0;
        if (v28 >= 9)
        {
          goto LABEL_84;
        }
      }

      v38 = 0xFFFFFFLL;
      v42 = v27[2];
      if (v42)
      {
        goto LABEL_88;
      }

LABEL_67:
      v40 = 0;
      goto LABEL_89;
    }

    if (v49 || (sub_9A94B4(a1, a4, v62, &v63), (v68 & 1) == 0))
    {
      v29 = 0;
      v8 &= 0xFFFFFFFFFFFFFF00;
      v31 = 7;
    }

    else
    {
      v8 = v63;
      v9 = *v64;
      v69[0] = *&v64[8];
      *(v69 + 7) = *&v64[15];
      v6 = v64[23];
      v52 = *&v64[24];
      v7 = v65;
      v10 = v66;
      v29 = 1;
      v30 = v67;
      v31 = 7;
      if (v61 != 1)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_45:
    if (v7)
    {
      break;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_55;
    }

LABEL_53:
    operator delete(v9);
    if (v61 == 1)
    {
      goto LABEL_93;
    }

LABEL_56:
    if (++v12 == v11)
    {
      goto LABEL_91;
    }
  }

  while (v10 != v7)
  {
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 3));
    }

    v10 -= 4;
  }

  operator delete(v7);
  v10 = v7;
  if (v6 < 0)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v61 != 1)
  {
    goto LABEL_56;
  }

LABEL_93:
  LOBYTE(v63) = 0;
  nullsub_1(&v63);
  sub_9A77D0(&v53, v31, a6, v43);
  if (v61 == 1)
  {
    v44 = v58;
    if (v58)
    {
      v45 = v59;
      v46 = v58;
      if (v59 != v58)
      {
        do
        {
          if (*(v45 - 1) < 0)
          {
            operator delete(*(v45 - 3));
          }

          v45 -= 4;
        }

        while (v45 != v44);
        v46 = v58;
      }

      v59 = v44;
      operator delete(v46);
    }

    if (v56 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_9A8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9A8A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9A8A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = sub_92FC60(a3, a4, 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x45u)
  {
    v8 = v7[34];
    if (v8)
    {
      if (*(v6 + v8 + *(v6 + v8)))
      {
        operator new();
      }
    }
  }

  if (*(a5 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A8DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A8ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_92FC60(a3, a4, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 >= 0x45u)
  {
    v13 = v12[34];
    if (v13)
    {
      if (*(v11 + v13 + *(v11 + v13)))
      {
        operator new();
      }
    }
  }

  sub_9A8DA8(a2, a3, a4, a5, a6);
}

void sub_9A9160(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_92FC60(a3, a4, 0, "line");
  v8 = (v7 - *v7);
  if (*v8 >= 0x45u)
  {
    v9 = v8[34];
    if (v9)
    {
      if (*(v7 + v9 + *(v7 + v9)))
      {
        operator new();
      }
    }
  }

  if (*(a6 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A94B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_93D480(a1, a2, 0, "station");
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Fu && (v8 = v7[15]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v18 = 0uLL;
    v19 = 0;
    sub_9A9974(&v18, *v9);
    v21 = v9 + 1;
    v20 = &v9[*v9 + 1];
    sub_9A9C28(&v21, &v20, &v18, sub_9A97C4);
    v17 = v18;
    v10 = v18;
    v11 = v18;
    if (v18 != *(&v18 + 1))
    {
      v11 = v18;
      while (*(v11 + 80) != a3)
      {
        v11 += 88;
        if (v11 == *(&v18 + 1))
        {
          goto LABEL_11;
        }
      }
    }

    if (v11 != *(&v18 + 1))
    {
      *a4 = *v11;
      if (*(v11 + 31) < 0)
      {
        sub_325C((a4 + 8), *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        *(a4 + 24) = *(v11 + 24);
        *(a4 + 8) = v12;
      }

      *(a4 + 32) = *(v11 + 32);
      sub_39A3D8((a4 + 48), (v11 + 48));
      *(a4 + 72) = 1;
      v10 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v17 = 0uLL;
  }

LABEL_11:
  *a4 = 0;
  *(a4 + 72) = 0;
  if (!v10)
  {
    return;
  }

LABEL_12:
  for (i = *(&v17 + 1); i != v10; i -= 88)
  {
    v14 = *(i - 5);
    if (v14)
    {
      v15 = *(i - 4);
      v16 = *(i - 5);
      if (v15 != v14)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 24));
          }

          v15 -= 32;
        }

        while (v15 != v14);
        v16 = *(i - 5);
      }

      *(i - 4) = v14;
      operator delete(v16);
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 10));
    }
  }

  operator delete(v10);
}

void sub_9A96C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_9A9700(&a9);
  _Unwind_Resume(a1);
}

void sub_9A96EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_9A9700(va);
  _Unwind_Resume(a1);
}

void **sub_9A9700(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          v6 = *(v3 - 4);
          v7 = *(v3 - 5);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 5);
          }

          *(v3 - 4) = v5;
          operator delete(v7);
        }

        if (*(v3 - 57) < 0)
        {
          operator delete(*(v3 - 10));
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_9A97C4@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  if (*v4 < 9u)
  {
    v5 = 0;
    v6 = (&loc_1120530 + 1);
    v7 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) >= 7u)
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
    v9 = 0xFFFFFFLL;
    if (v7 < 5)
    {
      goto LABEL_16;
    }

    v10 = v6[2];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v5 = v4[4];
  if (v5)
  {
    v5 = (v5 + a1 + *(v5 + a1));
  }

  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 7)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v6[3])
  {
    v8 = *(v5 + v6[3]);
    if (v7 >= 9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (v7 >= 9)
    {
LABEL_7:
      if (v6[4])
      {
        v9 = *(v5 + v6[4]);
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0xFFFFFFLL;
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_13;
    }
  }

  v9 = 0xFFFFFFLL;
  v10 = v6[2];
  if (!v10)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v11 = (v5 + v10 + *(v5 + v10));
LABEL_17:
  sub_509164(v11, &v20);
  v12 = v20;
  v26[0] = *v21;
  *(v26 + 7) = *&v21[7];
  v13 = v22;
  result = v23;
  v15 = v24;
  v16 = v25;
  v17 = a1 - *a1;
  v18 = *(a1 + *(v17 + 2));
  v19 = *(a1 + *(v17 + 3));
  *a2 = v8 | (v9 << 32);
  *(a2 + 8) = v12;
  *(a2 + 16) = v26[0];
  *(a2 + 23) = *(v26 + 7);
  *(a2 + 31) = v13;
  *(a2 + 32) = result;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  return result;
}

void *sub_9A9974(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9A9A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9A9A68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A9A68(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    v4 = *(i - 40);
    if (v4)
    {
      v5 = *(i - 32);
      v6 = *(i - 40);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v6 = *(i - 40);
      }

      *(i - 32) = v4;
      operator delete(v6);
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9A9B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = *(v6 + 72);
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *(v5 + 48);
      if (v8)
      {
        v9 = *(v5 + 56);
        v10 = *(v5 + 48);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(v5 + 48);
        }

        *(v5 + 56) = v8;
        operator delete(v10);
      }

      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 88;
    }
  }
}

uint64_t *sub_9A9C28(unsigned int **a1, unsigned int **a2, uint64_t *a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v16, *a1 + **a1);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        sub_9A9DA0(a3, &v16);
        v11 = __p[0];
        a3[1] = v12;
        if (v11)
        {
          v13 = __p[1];
          v14 = v11;
          if (__p[1] != v11)
          {
            do
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
              }

              v13 -= 4;
            }

            while (v13 != v11);
            v14 = __p[0];
          }

          __p[1] = v11;
          operator delete(v14);
        }
      }

      else
      {
        *v9 = v16;
        v10 = v17;
        *(v9 + 24) = v18;
        *(v9 + 8) = v10;
        v18 = 0;
        v17 = 0uLL;
        *(v9 + 32) = v19;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        *(v9 + 48) = 0;
        *(v9 + 48) = *__p;
        *(v9 + 64) = v21;
        __p[0] = 0;
        __p[1] = 0;
        v21 = 0;
        *(v9 + 72) = v22;
        a3[1] = v9 + 88;
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17);
      }

      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(&v16, v8 + *v8);
    }
  }

  return a3;
}

void sub_9A9D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A2284(va);
  _Unwind_Resume(a1);
}

double sub_9A9DA0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(v6 + 72) = *(a2 + 72);
  v8 = a1[1];
  v9 = 88 * v2 + *a1 - v8;
  sub_9A9B20(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = (88 * v2 + 88);
  *(a1 + 1) = v11;
  if (v10)
  {
    operator delete(v10);
    *&v11 = 88 * v2 + 88;
  }

  return *&v11;
}

void sub_9A9F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9A9A68(va);
  _Unwind_Resume(a1);
}

void *sub_9A9F28(uint64_t *a1, uint64_t a2, int a3)
{
  result = &unk_22A5C60;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        if (*(a2 + 792))
        {
          return (a2 + 600);
        }

        break;
      case 5:
        if (*(a2 + 952) == 1)
        {
          v29 = *(a2 + 856);
          if (v29 != -1)
          {
            v30 = (*a1 + 120);
            v31 = *v30 + 304 * v29 + 192;
            if (0x86BCA1AF286BCA1BLL * ((v30[1] - *v30) >> 4) > v29)
            {
              return v31;
            }
          }
        }

        break;
      case 7:
        v11 = *(a2 + 48);
        if (v11 != -1 && *(a2 + 792) == 1)
        {
          v12 = *(a2 + 752);
          if (v12 != -1)
          {
            v13 = *a1;
            v14 = *(*a1 + 72);
            if (0x66FD0EB66FD0EB67 * ((v13[10] - v14) >> 3) > v12 && 0xCF3CF3CF3CF3CF3DLL * ((v13[1] - *v13) >> 3) > v11)
            {
              v15 = *(*v13 + 168 * v11 + 104);
              if (v15 != -1)
              {
                v16 = v13[3];
                if (v15 < 0x8E38E38E38E38E39 * ((v13[4] - v16) >> 4))
                {
                  v17 = *(v16 + 144 * v15 + 104);
                  if (v17 != -1)
                  {
                    v18 = v13[6];
                    result = &unk_22A5C60;
                    if (v17 < 0xF0F0F0F0F0F0F0F1 * ((v13[7] - v18) >> 3))
                    {
                      v19 = v18 + 136 * v17;
                      v20 = *(v19 + 112);
                      v21 = *(v19 + 120);
                      if (v20 != v21)
                      {
                        v22 = *(v14 + 696 * v12 + 48);
                        result = &unk_22A5C60;
                        while (*(v20 + 8) != v22)
                        {
                          v20 += 128;
                          if (v20 == v21)
                          {
                            return result;
                          }
                        }
                      }

                      if (v20 == v21)
                      {
                        return &unk_22A5C60;
                      }

                      else
                      {
                        return (v20 + 16);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        break;
    }
  }

  else if (a3 == 1)
  {
    if (*(a2 + 792) == 1)
    {
      v23 = *(a2 + 752);
      if (v23 != -1)
      {
        v24 = (*a1 + 72);
        v25 = *v24 + 696 * v23 + 104;
        if (0x66FD0EB66FD0EB67 * ((v24[1] - *v24) >> 3) > v23)
        {
          return v25;
        }
      }
    }
  }

  else if (a3 == 2)
  {
    if (*(a2 + 792) == 1)
    {
      v26 = *(a2 + 752);
      if (v26 != -1)
      {
        v27 = (*a1 + 72);
        v28 = *v27 + 696 * v26 + 216;
        if (0x66FD0EB66FD0EB67 * ((v27[1] - *v27) >> 3) > v26)
        {
          return v28;
        }
      }
    }
  }

  else if (a3 == 3 && *(a2 + 792) == 1)
  {
    v5 = *a1;
    v6 = *(*(*a1 + 72) + 696 * *(a2 + 752) + 64);
    if (v6 != -1)
    {
      v8 = v5 + 96;
      v7 = *(v5 + 96);
      v9 = 0x4EC4EC4EC4EC4EC5 * ((*(v8 + 8) - v7) >> 4);
      v10 = v7 + 208 * v6 + 88;
      if (v9 > v6)
      {
        return v10;
      }
    }
  }

  return result;
}

void *sub_9AA228(uint64_t *a1, unint64_t a2, int a3)
{
  if (a3 == 3)
  {
    v9 = *a1;
    v10 = *(*(*a1 + 72) + 696 * a2 + 64);
    result = &unk_22A5C60;
    if (v10 != -1)
    {
      v12 = v9 + 96;
      v11 = *(v9 + 96);
      v13 = 0x4EC4EC4EC4EC4EC5 * ((*(v12 + 8) - v11) >> 4);
      v14 = v11 + 208 * v10 + 88;
      if (v13 > v10)
      {
        return v14;
      }
    }
  }

  else
  {
    result = &unk_22A5C60;
    if (a3 == 2)
    {
      if (a2 != -1)
      {
        v7 = (*a1 + 72);
        v8 = *v7 + 696 * a2 + 216;
        if (0x66FD0EB66FD0EB67 * ((v7[1] - *v7) >> 3) > a2)
        {
          return v8;
        }
      }
    }

    else if (a2 != -1)
    {
      v5 = (*a1 + 72);
      v6 = *v5 + 696 * a2 + 104;
      if (0x66FD0EB66FD0EB67 * ((v5[1] - *v5) >> 3) > a2)
      {
        return v6;
      }
    }
  }

  return result;
}

void sub_9AA338(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 27) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = a2 | 0xFFFFFF00000000;
  *(a3 + 31) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 63) = 0;
  *(a3 + 55) = 0;
  *(a3 + 80) = 0;
  v4 = a3 + 80;
  *(a3 + 71) = 1536;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  if (a2 > 210012)
  {
    if (a2 == 210013)
    {
      v8 = *(a1 + 8);
      v14 = 8;
      strcpy(__p, "Transfer");
      v6 = sub_9274F4(v8, __p);
      if (v4 == v6)
      {
        goto LABEL_29;
      }

      v9 = *(v6 + 23);
      if ((*(a3 + 103) & 0x80000000) == 0)
      {
        if ((*(v6 + 23) & 0x80) != 0)
        {
LABEL_28:
          sub_13A68(v4, *v6, v6[1]);
LABEL_29:
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_14:
        v10 = *v6;
        *(v4 + 16) = v6[2];
        *v4 = v10;
        goto LABEL_29;
      }

      if (v9 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if (v9 >= 0)
      {
        v12 = *(v6 + 23);
      }

      else
      {
        v12 = v6[1];
      }

LABEL_21:
      sub_13B38(v4, v11, v12);
      goto LABEL_29;
    }

    if (a2 != 211002)
    {
      return;
    }

LABEL_7:
    v5 = *(a1 + 8);
    v14 = 12;
    strcpy(__p, "WALK_COMMAND");
    v6 = sub_9274F4(v5, __p);
    if (v4 == v6)
    {
      goto LABEL_29;
    }

    v7 = *(v6 + 23);
    if ((*(a3 + 103) & 0x80000000) == 0)
    {
      if ((*(v6 + 23) & 0x80) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v7 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = v6[1];
    }

    goto LABEL_21;
  }

  if (a2 == 210002 || a2 == 210004)
  {
    goto LABEL_7;
  }
}

void sub_9AA52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5CEBB8(v15);
  _Unwind_Resume(a1);
}

void sub_9AA554()
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
  xmmword_27B31D0 = 0u;
  unk_27B31E0 = 0u;
  dword_27B31F0 = 1065353216;
  sub_3A9A34(&xmmword_27B31D0, v0);
  sub_3A9A34(&xmmword_27B31D0, v3);
  sub_3A9A34(&xmmword_27B31D0, __p);
  sub_3A9A34(&xmmword_27B31D0, v9);
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
    qword_27B31A8 = 0;
    qword_27B31B0 = 0;
    qword_27B31A0 = 0;
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

void sub_9AA79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B31B8)
  {
    qword_27B31C0 = qword_27B31B8;
    operator delete(qword_27B31B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9AA980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9AA9A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 968);
  v4 = sub_3AF4C0(a2);
  sub_21E2C18(v4, 5, v3);
}

void sub_9AAA88(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *(a2 + 1444) > 1u;
  v12 = 17;
  strcpy(__p, "countdown_max_num");
  v5 = sub_63FDC(a3, __p);
  if (v12 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *(a1 + 8) = v5;
  strcpy(__p, "timestamp_list_max_num");
  v12 = 22;
  v7 = sub_63FDC(a3, __p);
  if (v12 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 16) = v7;
  v12 = 17;
  strcpy(__p, "exit_plan_enabled");
  v9 = sub_5F9D0(a3, __p);
  if (v12 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  *(a1 + 24) = v9;
  operator new();
}

void sub_9AAD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9AAD88(void *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *a2;
    v3 = *(a2 + 8);
    if (*a2 != v3)
    {
      v4 = result;
      do
      {
        sub_A21C90(v30, v2);
        while (1)
        {
          sub_A21CE8(v30, v20);
          v5 = sub_A21B4C(v30, v20);
          v6 = v26;
          v7 = v27;
          if (v27 == v26)
          {
            v7 = v26;
            v29 = 0;
            v14 = 0;
          }

          else
          {
            v8 = &v26[v28 >> 7];
            v9 = *v8;
            v10 = *v8 + 32 * (v28 & 0x7F);
            v11 = *(v26 + (((v29 + v28) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v29 + v28) & 0x7F);
            if (v10 != v11)
            {
              do
              {
                v12 = *v10;
                if (*v10)
                {
                  *(v10 + 8) = v12;
                  operator delete(v12);
                  v9 = *v8;
                }

                v10 += 32;
                if (v10 - v9 == 4096)
                {
                  v13 = v8[1];
                  ++v8;
                  v9 = v13;
                  v10 = v13;
                }
              }

              while (v10 != v11);
              v6 = v26;
              v7 = v27;
            }

            v29 = 0;
            v14 = v7 - v6;
            if (v14 >= 3)
            {
              do
              {
                operator delete(*v6);
                v7 = v27;
                v6 = v26 + 1;
                v26 = v6;
                v14 = v27 - v6;
              }

              while (v14 > 2);
            }
          }

          if (v14 == 1)
          {
            v15 = 64;
            goto LABEL_23;
          }

          if (v14 == 2)
          {
            v15 = 128;
LABEL_23:
            v28 = v15;
          }

          if (v6 != v7)
          {
            do
            {
              v16 = *v6++;
              operator delete(v16);
            }

            while (v6 != v7);
            if (v27 != v26)
            {
              v27 = (v27 + ((v26 - v27 + 7) & 0xFFFFFFFFFFFFFFF8));
            }
          }

          if (__p)
          {
            operator delete(__p);
          }

          v17 = v24;
          if (v24)
          {
            do
            {
              v18 = *v17;
              operator delete(v17);
              v17 = v18;
            }

            while (v18);
          }

          v19 = v23;
          v23 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (!v5)
          {
            break;
          }

          if (*sub_A21CB8(v30) == 2)
          {
            sub_9AB014(v4, v30);
          }

          sub_A21708(v30);
        }

        result = sub_98ED24(v30);
        v2 += 412;
      }

      while (v2 != v3);
    }
  }

  return result;
}

void sub_9AAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_9AB014(uint64_t a1, uint64_t a2)
{
  v4 = sub_A21CB8(a2);
  v5 = v4;
  v6 = *(v4 + 1008);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (*(a1 + 16) >= (0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2)))
        {
          v16 = 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2);
        }

        else
        {
          v16 = *(a1 + 16);
        }

        if (v16)
        {
          v17 = 0;
          v18 = *(v4 + 2232);
          do
          {
            while (1)
            {
              v19 = *(v5 + 488);
              if (v18 < *(v5 + 2240))
              {
                break;
              }

              v18 = sub_9ADC7C((v5 + 2224), (v19 + v17));
              *(v5 + 2232) = v18;
              v17 += 28;
              if (!--v16)
              {
                goto LABEL_37;
              }
            }

            sub_9ADE20(v18, (v19 + v17));
            v18 += 696;
            *(v5 + 2232) = v18;
            *(v5 + 2232) = v18;
            v17 += 28;
            --v16;
          }

          while (v16);
        }

        break;
      case 4:
        if (*(a1 + 8) >= (0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2)))
        {
          v20 = 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2);
        }

        else
        {
          v20 = *(a1 + 8);
        }

        if (v20)
        {
          v21 = 0;
          v22 = *(v4 + 2232);
          do
          {
            while (1)
            {
              v23 = *(v5 + 488);
              if (v22 < *(v5 + 2240))
              {
                break;
              }

              v22 = sub_9ADC7C((v5 + 2224), (v23 + v21));
              *(v5 + 2232) = v22;
              v21 += 28;
              if (!--v20)
              {
                goto LABEL_37;
              }
            }

            sub_9ADE20(v22, (v23 + v21));
            v22 += 696;
            *(v5 + 2232) = v22;
            *(v5 + 2232) = v22;
            v21 += 28;
            --v20;
          }

          while (v20);
        }

        break;
      case 5:
        v7 = *(v4 + 768);
        v37 = *(v4 + 40) | (*(v4 + 40) << 32);
        v38 = 0;
        v39 = v7;
        v40 = *(v4 + 776);
        v8 = *(v4 + 2232);
        if (v8 >= *(v4 + 2240))
        {
          v9 = sub_9AE1D0((v4 + 2224), &v37);
        }

        else
        {
          sub_9AE374(*(v4 + 2232), &v37);
          v9 = v8 + 696;
          *(v5 + 2232) = v8 + 696;
        }

        goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_37;
    }

    v10 = (v4 + 116);
    v11 = *(v4 + 116);
    v12 = *(v4 + 2232);
    if (v12 >= *(v4 + 2240))
    {
      v13 = sub_9ADF80((v4 + 2224));
      *(v5 + 2232) = v13;
      v14 = (v13 - 696);
      if (v11 != 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    else
    {
      bzero(*(v4 + 2232), 0x2B8uLL);
      sub_9AE128(v12);
      v13 = v12 + 696;
      *(v5 + 2232) = v12 + 696;
      *(v5 + 2232) = v12 + 696;
      v14 = v12;
      if (v11 != 0x7FFFFFFF)
      {
LABEL_11:
        v15 = *v10;
        *(v14 + 12) = *(v5 + 128);
        *v14 = v15;
        goto LABEL_37;
      }
    }

    v25 = *(v5 + 768);
    v26 = *(v5 + 776);
    *v14 = *(v5 + 40) | (*(v5 + 40) << 32);
    *(v13 - 688) = 0;
    *(v13 - 684) = v25;
    *(v13 - 676) = v26;
    goto LABEL_37;
  }

  v24 = *(v4 + 2232);
  if (v24 >= *(v4 + 2240))
  {
    v9 = sub_9AD494((v4 + 2224), (v4 + 116));
LABEL_34:
    *(v5 + 2232) = v9;
    goto LABEL_37;
  }

  sub_9AD638(*(v4 + 2232), (v4 + 116));
  *(v5 + 2232) = v24 + 696;
  *(v5 + 2232) = v24 + 696;
LABEL_37:
  v27 = *(v5 + 2224);
  v28 = *(v5 + 2232);
  while (v27 != v28)
  {
    v30 = *(v27 + 20);
    if (v30 != -1)
    {
      v31 = *(a1 + 64);
      v32 = **(v31 + 3896);
      if (v32)
      {
        if (sub_3A7E8C(v32, *(v27 + 12), v30, *(v31 + 3904)))
        {
          v33 = *(a1 + 64);
          v34 = *(v27 + 12);
          v35 = *(v27 + 20);
          v36 = **(v33 + 3896);
          if (v35 == -1)
          {
            v29 = sub_3A7F20(v36, v34, *(v33 + 3904));
          }

          else
          {
            v29 = sub_3A7E8C(v36, v34, v35, *(v33 + 3904));
          }

          *(v27 + 688) = *(v29 + 64);
        }
      }
    }

    v27 += 696;
  }

  if (*(a1 + 24))
  {
    sub_9AB3B4(a1, a2);
  }
}

void sub_9AB3B4(uint64_t a1, uint64_t a2)
{
  sub_A21834(a2, 0xFFFFFFFFFFFFFFFFLL, &v53);
  v4 = v53;
  if (v53 != __p[0])
  {
    v5 = &qword_22A5CE0;
    v4 = v53;
    while ((**v4 & 0xFFFFFFFD) != 5)
    {
      if (++v4 == __p[0])
      {
        goto LABEL_16;
      }
    }
  }

  if (v4 != __p[0])
  {
    v6 = *v4;
    v7 = **v4;
    if (v7 == 7)
    {
      if (*(v6 + 952) == 1 && *(v6 + 115) != *(v6 + 116))
      {
        v5 = (v6 + 230);
        v8 = *(v6 + 118);
        goto LABEL_17;
      }
    }

    else if (v7 == 5 && *(v6 + 1000) == 1 && *(v6 + 121) != *(v6 + 122))
    {
      v5 = (v6 + 242);
      v8 = *(v6 + 124);
      goto LABEL_17;
    }
  }

  v5 = &qword_22A5CE0;
LABEL_16:
  v8 = 0xFFFFFFFF00000000;
LABEL_17:
  if (v53)
  {
    __p[0] = v53;
    operator delete(v53);
  }

  if (*v5 != v5[1])
  {
    v59 = 0;
    v60 = 0uLL;
    v9 = sub_994FB4(*(a1 + 72), v8, 0, "transfer graph");
    v10 = (v9 - *v9);
    if (*v10 >= 0x15u)
    {
      v11 = v10[10];
      if (v11)
      {
        if (*(v9 + v11 + *(v9 + v11)))
        {
          v52 = a2;
          v12 = sub_504BC8(*(a1 + 72), **v5, 0, "transfer");
          v13 = *(v12 + *(v12 - *v12 + 6));
          v14 = sub_504BC8(*(a1 + 72), *(v5[1] - 8), 0, "transfer");
          sub_9AC220(*(a1 + 72), v8, v13, *(v14 + *(v14 - *v14 + 8)), &v53);
          v15 = v53;
          v59 = v53;
          v60 = *__p;
          v16 = __p[0];
          if (v53 == __p[0])
          {
            goto LABEL_84;
          }

          v17 = sub_A21CB8(a2);
          if ((*(v17 + 792) & 1) == 0)
          {
            sub_4F0F0C();
          }

          v18 = (v17 + 768);
          v19 = sub_9AC394(*(a1 + 80), (v17 + 768), *(v17 + 780));
          if (v19 && v19 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            operator new();
          }

          v20 = *(a1 + 80);
          v21 = sub_3A25A8(v20, *v18, 0, "trip");
          v22 = sub_92FC60(v20, *(v21 + *(v21 - *v21 + 6)), 0, "line");
          v23 = (v22 - *v22);
          if (*v23 >= 0x4Bu && (v24 = v23[37]) != 0 && (v25 = (v22 + v24 + *(v22 + v24)), v26 = *v25, v26))
          {
            v27 = 8 * v26;
            v28 = v25 + 1;
            do
            {
              if (*(v20 + 3888) != 1 || sub_2D5204(*(v20 + 3872)))
              {
                operator new();
              }

              v28 += 2;
              v27 -= 8;
            }

            while (v27);
            v15 = v59;
            v16 = v60;
            v29 = v59;
            if (v59 == v60)
            {
LABEL_39:
              if (v29 != v16)
              {
                v30 = v29 + 32;
                if (v29 + 32 == v16)
                {
                  v31 = v29;
                  if (v29 != v16)
                  {
LABEL_47:
                    while (v16 != v31)
                    {
                      v33 = *(v16 - 3);
                      if (v33)
                      {
                        *(v16 - 2) = v33;
                        operator delete(v33);
                      }

                      v16 -= 32;
                    }

                    *&v60 = v31;
                    v15 = v59;
                    if (v59 == v31)
                    {
                      goto LABEL_83;
                    }

                    goto LABEL_54;
                  }
                }

                else
                {
                  v31 = v29;
                  do
                  {
                    v32 = v30;
                    v30 += 32;
                  }

                  while (v32 + 32 != v16);
                  v15 = v59;
                  v16 = v60;
                  if (v31 != v60)
                  {
                    goto LABEL_47;
                  }
                }
              }

              v31 = v16;
              if (v15 == v16)
              {
LABEL_83:
                v15 = v59;
LABEL_84:
                if (v15)
                {
                  for (i = v60; i != v15; i -= 32)
                  {
                    v51 = *(i - 3);
                    if (v51)
                    {
                      *(i - 2) = v51;
                      operator delete(v51);
                    }
                  }

                  operator delete(v15);
                }

                return;
              }

LABEL_54:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              do
              {
                sub_9AC500(a1, v15, &v53);
                v34 = v57;
                if (v57 >= v58)
                {
                  v36 = sub_9AEC9C(&v56, &v53);
                }

                else
                {
                  v35 = v53;
                  v57[1] = 0;
                  *v34 = v35;
                  v34[2] = 0;
                  v34[3] = 0;
                  if (__p[1] != __p[0])
                  {
                    if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  sub_55BD50((v34 + 4), v55);
                  v36 = v34 + 24;
                }

                v57 = v36;
                sub_53A868(v55);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                v15 += 32;
              }

              while (v15 != v31);
              v37 = v56;
              v38 = v57;
              if (v57 == v56)
              {
                sub_6FAB4();
              }

              if (v57 - v56 == 192 || (v39 = v56 + 24, v56 + 24 == v57))
              {
LABEL_72:
                v44 = sub_A21CB8(v52);
                v45 = v44;
                *(v44 + 2248) = *v37;
                if (v44 + 2248 != v37)
                {
                  sub_31F64((v44 + 2256), *(v37 + 8), *(v37 + 16), (*(v37 + 16) - *(v37 + 8)) >> 3);
                }

                sub_594568(v45 + 2280, v37 + 32);
              }

              else
              {
                while (*v39 == *v37)
                {
                  v40 = v39[1];
                  v41 = v39[2] - v40;
                  v42 = *(v37 + 8);
                  if (v41 != *(v37 + 16) - v42)
                  {
                    break;
                  }

                  if (memcmp(v40, v42, v41))
                  {
                    break;
                  }

                  v43 = v39 + 4;
                  if ((sub_64AFB4(v39 + 4, (v37 + 32)) & 1) == 0)
                  {
                    break;
                  }

                  v39 += 24;
                  if (v43 + 20 == v38)
                  {
                    goto LABEL_72;
                  }
                }
              }

              v46 = v56;
              if (v56)
              {
                v47 = v57;
                v48 = v56;
                if (v57 != v56)
                {
                  do
                  {
                    sub_53A868((v47 - 20));
                    v49 = *(v47 - 23);
                    if (v49)
                    {
                      *(v47 - 22) = v49;
                      operator delete(v49);
                    }

                    v47 -= 24;
                  }

                  while (v47 != v46);
                  v48 = v56;
                }

                v57 = v46;
                operator delete(v48);
              }

              goto LABEL_83;
            }
          }

          else
          {
            v29 = v15;
            if (v15 == v16)
            {
              goto LABEL_39;
            }
          }

          v29 = v15;
          goto LABEL_39;
        }
      }
    }
  }
}

void sub_9ABBEC(_Unwind_Exception *a1)
{
  sub_9AF038((v2 - 136));
  if (v1)
  {
    operator delete(v1);
  }

  sub_37484((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_9ABCF0(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1 / a2;
  v6 = a1 % a2;
  v11 = a1 / a2;
  do
  {
    if (v6 >= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v4;
    v9 = v4 >> 3;
    if (((v4 >> 3) + 1) >> 61)
    {
      a3[1] = v4;
      a3[2] = 0;
      *a3 = 0;
      sub_1794();
    }

    if (v4 >> 3 != -1)
    {
      if (!(((v4 >> 3) + 1) >> 61))
      {
        operator new();
      }

      a3[1] = v4;
      a3[2] = 0;
      *a3 = 0;
      sub_1808();
    }

    *(8 * v9) = v7 + v3 * v5;
    v4 = 8 * v9 + 8;
    memcpy(0, 0, v8);
    v5 = v11;
    ++v3;
  }

  while (a2 != v3);
  a3[1] = v4;
  a3[2] = 0;
  *a3 = 0;
}

void sub_9ABE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9ABE8C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 2 && a3[1] - *a3 == 8)
  {
    return 0;
  }

  result = 1;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = a2[1] - *a2;
    if (v5 != 2)
    {
      v6 = v5 >> 1;
      if (v6 >= 2)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          if (*(*a2 + 2 * v7) + 1 != *(*a2 + 2 * v7 + 2))
          {
            operator new();
          }

          ++v8;
          ++v7;
        }

        while (v6 - 1 != v7);
      }

      operator new();
    }
  }

  return result;
}

void sub_9AC200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_9AC220@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  result = sub_994FB4(a1, a2, 0, "transfer graph");
  v18 = result;
  v7 = (result - *result);
  if (*v7 >= 0x15u && (v8 = v7[10]) != 0 && (v9 = (result + v8 + *(result + v8)), v10 = *v9, v10) && (v23 = &v9[v10 + 1], v24 = v9 + 1, *&v21 = &v18, *(&v21 + 1) = &v20, v22 = &v19, result = sub_9AE4D4(&v24, &v23, &v21, &v17), v17 != &v9[*v9 + 1]))
  {
    v11 = (v17 + *v17);
    v12 = (v11 - *v11);
    if (*v12 >= 9u && (v13 = v12[4]) != 0)
    {
      v14 = (v11 + v13 + *(v11 + v13));
      v21 = 0uLL;
      v22 = 0;
      sub_9AE7B4(&v21, *v14);
      v24 = v14 + 1;
      v23 = &v14[*v14 + 1];
      result = sub_9AE8D4(&v24, &v23, &v21);
      v15 = v21;
      v16 = v22;
    }

    else
    {
      v16 = 0;
      v15 = 0uLL;
    }

    *a5 = v15;
    *(a5 + 16) = v16;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  return result;
}

void sub_9AC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_37484(va);
  _Unwind_Resume(a1);
}

unint64_t sub_9AC394(uint64_t a1, unint64_t *a2, int a3)
{
  v6 = sub_3A25A8(a1, *a2, 0, "trip");
  v7 = (v6 - *v6);
  if (*v7 >= 0x2Du && (v8 = v7[22]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0xFFFFFFFF00000000;
  }

  v10 = *a2;
  v11 = sub_3A231C(a1, v10, 0);
  v12 = &v11[-*v11];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v13 += &v11[*&v11[v13]];
    }
  }

  v14 = (v13 + 4 * HIDWORD(v10) + 4 + *(v13 + 4 * HIDWORD(v10) + 4));
  v15 = (v14 - *v14);
  if (*v15 < 0x29u || (v16 = v15[20]) == 0 || (v17 = *(&v14[a3 + 1] + v16 + *(v14 + v16)), v17 == -1) || (v18 = &v11[4 * v17 + *(v12 + 10) + *&v11[*(v12 + 10)]], v19 = (v18 + 4 + *(v18 + 4)), v20 = (v19 - *v19), *v20 < 9u) || (v21 = v20[4]) == 0 || ((v23 = *(v19 + v21), v22 = HIDWORD(v23), v23 = v23, v23) ? (v24 = v22 == 0xFFFFFFFF) : (v24 = 1), v24))
  {
    v22 = HIDWORD(v9);
    v23 = v9;
  }

  return v23 | (v22 << 32);
}

void sub_9AC500(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_9AF0B4(*(a1 + 80), *a2, 0, "vehicle configuration");
  v7 = (v6 - *v6);
  if (*v7 < 7u || (v8 = v7[3]) == 0 || (v9 = *(v6 + v8), v9 <= 1) || v9 == (a2[2] - a2[1]) >> 1)
  {
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    sub_64B998(a3 + 32);
  }

  else
  {
    v49 = (a2 + 1);
    if (*(a1 + 32) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 32);
    }

    sub_9ABCF0(v9, v10, &v55);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    sub_64B998(a3 + 32);
    v48 = a1;
    *a3 = v10;
    v12 = a2[1];
    v11 = a2[2];
    v47 = a2;
    if (v12 != v11)
    {
      v14 = v55;
      v13 = v56;
      v50 = (v56 - v55) >> 3;
      do
      {
        if (v13 == v14)
        {
          v17 = v13;
        }

        else
        {
          v16 = v50;
          v17 = v14;
          do
          {
            v18 = v16 >> 1;
            v19 = &v17[8 * (v16 >> 1)];
            v21 = *v19;
            v20 = v19 + 1;
            v16 += ~(v16 >> 1);
            if (v21 > *v12)
            {
              v16 = v18;
            }

            else
            {
              v17 = v20;
            }
          }

          while (v16);
        }

        if (v14 != v17)
        {
          v17 -= 8;
        }

        v22 = (v17 - v14) >> 3;
        v24 = *(a3 + 16);
        v23 = *(a3 + 24);
        if (v24 < v23)
        {
          *v24 = v22;
          v15 = v24 + 1;
        }

        else
        {
          v25 = *(a3 + 8);
          v26 = v24 - v25;
          v27 = (v24 - v25) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v29 = v23 - v25;
          if (v29 >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v31 = v27;
          v32 = (8 * v27);
          v33 = &v32[-v31];
          *v32 = v22;
          v15 = v32 + 1;
          memcpy(v33, v25, v26);
          *(a3 + 8) = v33;
          *(a3 + 16) = v15;
          *(a3 + 24) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        *(a3 + 16) = v15;
        ++v12;
      }

      while (v12 != v11);
    }

    std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
    v35 = *(a3 + 8);
    v34 = *(a3 + 16);
    if (v35 != v34)
    {
      v36 = v35 + 1;
      while (v36 != v34)
      {
        v37 = *(v36 - 1);
        v38 = *v36++;
        if (v37 == v38)
        {
          v39 = v36 - 2;
          while (v36 != v34)
          {
            v40 = v37;
            v37 = *v36;
            if (v40 != *v36)
            {
              v39[1] = v37;
              ++v39;
            }

            ++v36;
          }

          if (v39 + 1 != v34)
          {
            *(a3 + 16) = v39 + 1;
          }

          break;
        }
      }
    }

    if (sub_9ABE8C(v48, v49, (a3 + 8), v10))
    {
      v41 = sub_9AF0B4(*(v48 + 80), *v47, 0, "vehicle configuration");
      v42 = (v41 - *v41);
      if (*v42 >= 9u && (v43 = v42[4]) != 0)
      {
        v44 = (v41 + v43 + *(v41 + v43));
        v51 = 0;
        v52 = 0uLL;
        sub_943AEC(&v51, *v44);
        v58 = v44 + 1;
        v57 = &v44[*v44 + 1];
        sub_943E24(&v58, &v57, &v51, sub_509164);
        v45 = v51;
        v46 = v52;
      }

      else
      {
        v45 = 0;
        v46 = 0uLL;
      }

      v53 = v45;
      v54 = v46;
      sub_9ACA50(v48, v49, &v53);
    }

    sub_9ACEA4(v48, a3 + 8, v10, &v51);
    sub_53D784(a3 + 32, &v51);
    sub_53A868(&v51);
    if (v55)
    {
      operator delete(v55);
    }
  }
}

void sub_9AC9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_941AEC(va);
  sub_9749E0(v8);
  v11 = *(v9 - 128);
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_9ACA50(uint64_t a1, unsigned __int16 **a2, uint64_t *a3)
{
  v5 = *(a1 + 96);
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "Board: Car {CarList}");
  v6 = sub_9274F4(v5, &__p);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v17, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v17.__r_.__value_.__r.__words[2] = v6[2];
    *&v17.__r_.__value_.__l.__data_ = v7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v8 = *a2;
    v9 = a2[1];
    v10 = v9 - *a2;
    if (v9 == *a2)
    {
LABEL_10:
      v19 = &v14;
      while (1)
      {
        if (v8 == v9)
        {
          operator new();
        }

        v11 = *v8;
        v13 = *a3;
        v12 = a3[1];
        if (*a3 == v12 || v11 >= (v12 - v13) >> 6)
        {
          std::to_string(&v18, v11 + 1);
          goto LABEL_21;
        }

        nullsub_1(&v20);
        sub_9D69F4(v13 + (v11 << 6), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = __p;
        }

        if (v23 < 0)
        {
          operator delete(v22);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_21:
        sub_9A5A0(&v19, &v18);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        ++v8;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v8 = *a2;
    v9 = a2[1];
    v10 = v9 - *a2;
    if (v9 == *a2)
    {
      goto LABEL_10;
    }
  }

  if ((v10 >> 1) < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1794();
}

void sub_9ACE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_9ACEA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    v11 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_39;
  }

  v8 = *a2;
  while (*v8)
  {
    if (++v8 == v7)
    {
      v8 = *(a2 + 8);
      break;
    }
  }

  v9 = *a2;
  while (*v9 != a3 - 1)
  {
    if (++v9 == v7)
    {
      v9 = *(a2 + 8);
      break;
    }
  }

  if (a3 != 3)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v9 == v7)
    {
      v11 = 0;
      goto LABEL_31;
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (v6 != v7)
  {
    while (*v6 != 1)
    {
      if (++v6 == v7)
      {
        v6 = *(a2 + 8);
        break;
      }
    }
  }

  v10 = v6 != v7;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v9 != v7)
  {
LABEL_21:
    v12 = a3 == 2 || v10;
    if (v8 != v7 && v12)
    {
      v11 = sub_9AF240(&v23, "Any Section");
LABEL_38:
      v24 = v11;
      goto LABEL_39;
    }

    v11 = sub_9AF3F0(&v23, "Rear");
    v24 = v11;
    if (!v10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v11 = 0;
  if (v6 == v7)
  {
LABEL_31:
    if (v8 == v7)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_28:
  if (v11 >= v25)
  {
    v11 = sub_9AF5A0(&v23, "Middle");
  }

  else
  {
    v11[23] = 6;
    strcpy(v11, "Middle");
    v11 += 24;
  }

  v24 = v11;
  if (v8 != v7)
  {
LABEL_35:
    if (v11 >= v25)
    {
      v11 = sub_9AF750(&v23, "Front");
    }

    else
    {
      v11[23] = 5;
      strcpy(v11, "Front");
      v11 += 24;
    }

    goto LABEL_38;
  }

LABEL_39:
  sub_73F5C(v23, v11, ", ", &v20);
  v13 = std::string::insert(&v20, 0, "Board: ", 7uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v22 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v15 = sub_9274F4(*(a1 + 96), __p);
  sub_64BC50(a4, v15, (*(a1 + 88) + 1177));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v23;
  if (v23)
  {
    v17 = v24;
    v18 = v23;
    if (v24 != v23)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v23;
    }

    v24 = v16;
    operator delete(v18);
  }
}

void sub_9AD16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_9AD180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD1CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v24);
  if (a1 != a2)
  {
    v9 = *(a1 - 24);
    v10 = *(a1 - 16);
    v11 = a1 - 24;
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v10;
    }

    while (1)
    {
      sub_4A5C(&v24, v13, v14);
      if (v11 == a2)
      {
        break;
      }

      v15 = *(a3 + 23);
      if (v15 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if (v15 >= 0)
      {
        v17 = *(a3 + 23);
      }

      else
      {
        v17 = *(a3 + 8);
      }

      sub_4A5C(&v24, v16, v17);
      v19 = *(v11 - 24);
      v11 -= 24;
      v18 = v19;
      v20 = *(v11 + 23);
      if (v20 >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v18;
      }

      if (v20 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = *(v11 + 8);
      }
    }
  }

  if ((v34 & 0x10) != 0)
  {
    v21 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v21 = v30;
    }

    v22 = v29;
    v8 = v21 - v29;
    if (v21 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_32;
    }

    v22 = v27;
    v8 = v28 - v27;
    if ((v28 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_36:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v22, v8);
  }

LABEL_32:
  a4[v8] = 0;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_9AD458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9AD46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9AD480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD494(__int128 **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9AD638(v15, a2);
  v6 = 696 * v2 + 696;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = (v15 + v9);
  if (v8 != *a1)
  {
    v11 = v15 + v9;
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 = (v12 + 696);
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868(v7 + 520);
      sub_53A868(v7 + 360);
      sub_53A868((v7 + 12));
      sub_53A868((v7 + 2));
      v7 = (v7 + 696);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9AD624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD638(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9AD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_53A868(v54 + 160);
  sub_53A868(&a11);
  sub_53A868(v53 + 160);
  sub_53A868(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD798(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v9;
  sub_55BD50(a1 + 32, a3);
  sub_55BD50(a1 + 192, a3 + 160);
  *(a1 + 352) = *(a3 + 320);
  sub_55BD50(a1 + 360, a4);
  sub_55BD50(a1 + 520, a4 + 160);
  *(a1 + 680) = *(a4 + 320);
  *(a1 + 688) = *a5;
  return a1;
}

void sub_9AD824(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD864(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 696;
    sub_53A868(i - 176);
    sub_53A868(i - 336);
    sub_53A868(i - 504);
    sub_53A868(i - 664);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9AD8E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 6) = 0;
  a2[2] = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 9) = 0;
  *(a2 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 12) = 0;
  a2[5] = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 104) = *(a2 + 104);
  v3 = *(a2 + 16);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 104) = 0u;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a1 + 128) = v3;
  v4 = *(a2 + 34);
  *(a1 + 140) = *(a2 + 70);
  *(a1 + 136) = v4;
  v5 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v5;
  *(a2 + 18) = 0;
  *(a2 + 152) = 0u;
  v6 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v6;
  a2[11] = 0u;
  *(a2 + 21) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 26) = 0;
  a2[12] = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 29) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 240) = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a2 + 32) = 0;
  a2[15] = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 272) = a2[17];
  *(a2 + 264) = 0u;
  v7 = *(a2 + 36);
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a1 + 288) = v7;
  LODWORD(v7) = *(a2 + 74);
  *(a1 + 300) = *(a2 + 150);
  *(a1 + 296) = v7;
  v8 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 304) = v8;
  *(a2 + 38) = 0;
  *(a2 + 312) = 0u;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 43);
  *(a1 + 328) = v9;
  a2[21] = 0u;
  *(a2 + 41) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 368) = a2[23];
  *(a2 + 47) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a2 + 50) = 0;
  a2[24] = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 416) = a2[26];
  *(a2 + 53) = 0;
  *(a2 + 408) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 432) = a2[27];
  v10 = *(a2 + 57);
  *(a1 + 448) = *(a2 + 56);
  a2[27] = 0u;
  *(a2 + 56) = 0;
  *(a2 + 57) = 0;
  *(a1 + 456) = v10;
  LODWORD(v7) = *(a2 + 116);
  *(a1 + 468) = *(a2 + 234);
  *(a1 + 464) = v7;
  v11 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 61);
  *(a1 + 472) = v11;
  *(a2 + 59) = 0;
  a2[30] = 0u;
  v12 = a2[31];
  *(a1 + 512) = *(a2 + 64);
  *(a1 + 496) = v12;
  *(a2 + 504) = 0u;
  *(a2 + 62) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 528) = a2[33];
  *(a2 + 67) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = a2[34];
  *(a1 + 560) = *(a2 + 70);
  *(a2 + 70) = 0;
  a2[34] = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 71);
  *(a1 + 576) = a2[36];
  *(a2 + 73) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = a2[37];
  *(a1 + 608) = *(a2 + 76);
  *(a2 + 76) = 0;
  a2[37] = 0u;
  v13 = *(a2 + 77);
  *(a2 + 77) = 0;
  *(a1 + 616) = v13;
  LODWORD(v13) = *(a2 + 156);
  *(a1 + 628) = *(a2 + 314);
  *(a1 + 624) = v13;
  v14 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 81);
  *(a1 + 632) = v14;
  *(a2 + 79) = 0;
  *(a2 + 81) = 0;
  *(a2 + 80) = 0;
  result = a2[41];
  *(a1 + 672) = *(a2 + 84);
  *(a1 + 656) = result;
  *(a2 + 84) = 0;
  *(a2 + 83) = 0;
  *(a2 + 82) = 0;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  return result;
}

uint64_t sub_9ADC7C(__int128 **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9ADE20(v15, a2);
  v6 = 696 * v2 + 696;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = (v15 + v9);
  if (v8 != *a1)
  {
    v11 = v15 + v9;
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 = (v12 + 696);
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868(v7 + 520);
      sub_53A868(v7 + 360);
      sub_53A868((v7 + 12));
      sub_53A868((v7 + 2));
      v7 = (v7 + 696);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9ADE0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9ADE20(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9ADF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_53A868(v54 + 160);
  sub_53A868(&a11);
  sub_53A868(v53 + 160);
  sub_53A868(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_9ADF80(__int128 **a1)
{
  v1 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v4 = 0x5E293205E29320;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = (8 * ((a1[1] - *a1) >> 3));
  bzero(v14, 0x2B8uLL);
  sub_9AE128(696 * v1);
  v5 = 696 * v1 + 696;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - v7;
  v9 = &v14[v8];
  if (v7 != *a1)
  {
    v10 = &v14[v8];
    v11 = *a1;
    do
    {
      sub_9AD8E4(v10, v11);
      v11 = (v11 + 696);
      v10 = v12 + 696;
    }

    while (v11 != v7);
    do
    {
      sub_53A868(v6 + 520);
      sub_53A868(v6 + 360);
      sub_53A868((v6 + 12));
      sub_53A868((v6 + 2));
      v6 = (v6 + 696);
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v9;
  a1[1] = v5;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5;
}

void sub_9AE114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AE128(uint64_t a1)
{
  *a1 = 0x8000000080000000;
  *(a1 + 8) = 0;
  *(a1 + 12) = xmmword_22A5CD0;
  sub_64B998(a1 + 32);
  sub_64B998(a1 + 192);
  *(a1 + 352) = 0;
  sub_64B998(a1 + 360);
  sub_64B998(a1 + 520);
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  return a1;
}

void sub_9AE190(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_9AE1D0(__int128 **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9AE374(v15, a2);
  v6 = 696 * v2 + 696;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = (v15 + v9);
  if (v8 != *a1)
  {
    v11 = v15 + v9;
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 = (v12 + 696);
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868(v7 + 520);
      sub_53A868(v7 + 360);
      sub_53A868((v7 + 12));
      sub_53A868((v7 + 2));
      v7 = (v7 + 696);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9AE360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AE374(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9AE484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_53A868(v54 + 160);
  sub_53A868(&a11);
  sub_53A868(v53 + 160);
  sub_53A868(&a53);
  _Unwind_Resume(a1);
}

unsigned int **sub_9AE4D4@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, int ***a3@<X2>, unsigned int **a4@<X8>)
{
  v4 = *result;
  if (*result != *a2)
  {
    v5 = a3[1];
    v6 = **a3;
    v7 = (v6 - *v6);
    v8 = *v5;
    if (*v7 > 6u)
    {
      v9 = v7[3];
      if (v9)
      {
        v10 = v6 + v9 + *(v6 + v9);
        v11 = v10 + 4;
        while (1)
        {
          v12 = *v4;
          v13 = v12 - *(v4 + v12);
          v14 = *(v4 + v13);
          if (v14 <= 4)
          {
            v20 = 0;
            v17 = *(v10 + 2);
            if (*(v10 + 1) != v8)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v15 = *(v4 + v13 + 4);
            if (*(v4 + v13 + 4))
            {
              v15 = 8 * *(v4 + v12 + v15);
            }

            v16 = &v11[v15];
            v18 = *v16;
            v17 = *(v16 + 1);
            if (v14 >= 7 && (v19 = *(v4 + v13 + 6)) != 0)
            {
              v20 = 8 * *(v4 + v12 + v19);
              if (v18 != v8)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v20 = 0;
              if (v18 != v8)
              {
                goto LABEL_5;
              }
            }
          }

          if (v17 == *(v5 + 1))
          {
            v21 = a3[2];
            if (*v21 == *&v11[v20] && *(v21 + 1) == *&v11[v20 + 4])
            {
              goto LABEL_51;
            }
          }

LABEL_5:
          *result = ++v4;
          if (v4 == *a2)
          {
            goto LABEL_51;
          }
        }
      }

      while (1)
      {
        v32 = *v4;
        v33 = v32 - *(v4 + v32);
        v34 = *(v4 + v33);
        if (v34 <= 4)
        {
          v40 = 0;
          v37 = -2147483646;
          if (v8 != 16777228)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v35 = *(v4 + v33 + 4);
          if (*(v4 + v33 + 4))
          {
            v35 = 8 * *(v4 + v32 + v35);
          }

          v36 = (v35 + 4);
          v38 = *v36;
          v37 = v36[1];
          if (v34 >= 7 && (v39 = *(v4 + v33 + 6)) != 0)
          {
            v40 = 8 * *(v4 + v32 + v39);
            if (v38 != v8)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v40 = 0;
            if (v38 != v8)
            {
              goto LABEL_37;
            }
          }
        }

        if (v37 == *(v5 + 1))
        {
          v41 = a3[2];
          if (*v41 == *(v40 + 4) && *(v41 + 1) == *(v40 + 8))
          {
            goto LABEL_51;
          }
        }

LABEL_37:
        *result = ++v4;
        if (v4 == *a2)
        {
          goto LABEL_51;
        }
      }
    }

    do
    {
      v22 = *v4;
      v23 = v22 - *(v4 + v22);
      v24 = *(v4 + v23);
      if (v24 <= 4)
      {
        v30 = 0;
        v27 = -2147483646;
        if (v8 != 16777228)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *(v4 + v23 + 4);
        if (*(v4 + v23 + 4))
        {
          v25 = 8 * *(v4 + v22 + v25);
        }

        v26 = (v25 + 4);
        v28 = *v26;
        v27 = v26[1];
        if (v24 >= 7 && (v29 = *(v4 + v23 + 6)) != 0)
        {
          v30 = 8 * *(v4 + v22 + v29);
          if (v28 != v8)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v30 = 0;
          if (v28 != v8)
          {
            goto LABEL_21;
          }
        }
      }

      if (v27 == *(v5 + 1))
      {
        v31 = a3[2];
        if (*v31 == *(v30 + 4) && *(v31 + 1) == *(v30 + 8))
        {
          break;
        }
      }

LABEL_21:
      *result = ++v4;
    }

    while (v4 != *a2);
  }

LABEL_51:
  *a4 = v4;
  return result;
}

void *sub_9AE7B4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t *sub_9AE8D4(unsigned int **a1, unsigned int **a2, uint64_t *a3)
{
  v4 = *a1;
  for (i = *a2; v4 != i; i = *a2)
  {
    v6 = (v4 + *v4);
    v7 = (v6 - *v6);
    v8 = *(v6 + v7[2]);
    if (*v7 >= 7u)
    {
      v9 = v7[3];
      if (v9)
      {
        if (*(v6 + v9 + *(v6 + v9)))
        {
          operator new();
        }
      }
    }

    v16 = v8;
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      *v10 = v8;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      *(v10 + 1) = *__p;
      v10[3] = v18;
      a3[1] = (v10 + 4);
    }

    else
    {
      v11 = sub_9AEB40(a3, &v16);
      v12 = __p[0];
      a3[1] = v11;
      if (v12)
      {
        __p[1] = v12;
        operator delete(v12);
      }
    }

    v4 = *a1 + 1;
    *a1 = v4;
  }

  return a3;
}

void sub_9AEB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9AEB40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = v7 + *a1 - v10;
    v13 = *a1;
    do
    {
      *v12 = *v13;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v13 + 1);
      *(v12 + 24) = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v12 += 32;
    }

    while (v13 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void *sub_9AEC9C(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6) + 1;
  if (v2 > 0x155555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v4 = 0x155555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x155555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = ((a1[1] - *a1) >> 6 << 6);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v7 = a2[2];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55BD50((v5 + 4), (a2 + 4));
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  sub_9AEE70(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = (v5 + 24);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v5 + 24;
}

void sub_9AEE34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9AEFC8(va);
  _Unwind_Resume(a1);
}

void sub_9AEE48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_9AEFC8(va);
  _Unwind_Resume(a1);
}

void sub_9AEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      v7 = *(v6 + 128);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(a4 + 128) = v7;
      v8 = *(v6 + 136);
      *(a4 + 140) = *(v6 + 140);
      *(a4 + 136) = v8;
      v9 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v9;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 144) = 0;
      v10 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v10;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(v6 + 168) = 0;
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_53A868(v5 + 32);
      v11 = *(v5 + 8);
      if (v11)
      {
        *(v5 + 16) = v11;
        operator delete(v11);
      }

      v5 += 192;
    }
  }
}

uint64_t sub_9AEFC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_53A868(i - 160);
    v4 = *(i - 184);
    if (v4)
    {
      *(i - 176) = v4;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_9AF038(void **a1)
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
        sub_53A868((v3 - 160));
        v5 = *(v3 - 23);
        if (v5)
        {
          *(v3 - 22) = v5;
          operator delete(v5);
        }

        v3 -= 192;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9AF0B4(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x2Fu)
  {
    v9 = *(v8 + 23);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_9AF210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_9AF240(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_9AF3F0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_9AF5A0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF73C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_9AF750(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void sub_9AF900()
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
  xmmword_27B3228 = 0u;
  unk_27B3238 = 0u;
  dword_27B3248 = 1065353216;
  sub_3A9A34(&xmmword_27B3228, v0);
  sub_3A9A34(&xmmword_27B3228, v3);
  sub_3A9A34(&xmmword_27B3228, __p);
  sub_3A9A34(&xmmword_27B3228, v9);
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
    qword_27B3200 = 0;
    qword_27B3208 = 0;
    qword_27B31F8 = 0;
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

void sub_9AFB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3210)
  {
    qword_27B3218 = qword_27B3210;
    operator delete(qword_27B3210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9AFBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8;
  }

  result = *(a1 + v5);
  if (!result)
  {
    v7 = a5;
    sub_527724(v12, a4);
    v20 = v7 ^ 1;
    v19 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

    v9 = __p;
    if (v17 == __p)
    {
      if (v17)
      {
        v16 = __p;
        operator delete(__p);
        __p = 0;
        v16 = 0;
        v17 = 0;
      }

      operator new();
    }

    v10 = v16;
    v11 = v16 - __p;
    if (v16 == __p)
    {
      *v16 = 0;
      v16 = &v10[v11 + 4];
      v21 = 0;
      if (!*(a4 + 1444))
      {
LABEL_14:
        operator new();
      }
    }

    else
    {
      *__p = 0;
      v16 = v9 + 4;
      v21 = 0;
      if (!*(a4 + 1444))
      {
        goto LABEL_14;
      }
    }

    v14 = v13;
    v18 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_9AFD88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_528AB4(va);
  _Unwind_Resume(a1);
}

void sub_9AFDC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_528AB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AFDDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  result = *(a1 + v4);
  if (!result)
  {
    v7[23] = 19;
    strcpy(v7, "TransitRouteBuilder");
    memset(v6, 0, sizeof(v6));
    sub_3AEC94(a2, v7, v6);
    operator new();
  }

  return result;
}

void sub_9AFFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a18);
  _Unwind_Resume(a1);
}

uint64_t sub_9B0054(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = sub_3AFEE8(a3);
  *(a1 + 24) = sub_3AFB1C(a3);
  *(a1 + 32) = sub_3AFC64(a3);
  nullsub_1(a1 + 40);
  nullsub_1(a1 + 41);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a5;
  *(a1 + 88) = a4;
  *(a1 + 96) = *(a4 + 968);
  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v11 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v11;
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  return a1;
}

uint64_t sub_9B018C(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_446608(a1 + 16, a2);
  if (!v4)
  {
    sub_7E9A4(v58);
    v6 = a1[10];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 16))
    {
      v8 = sub_9B6E18(a1[10]);
    }

    else
    {
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 152) = 0u;
      *(v7 + 136) = 0u;
      *(v7 + 120) = 0u;
      *v7 = -1;
      *(v7 + 8) = 0x7FFFFFFF;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0;
      *(v7 + 88) = -1;
      *(v7 + 100) = -1;
      *(v7 + 104) = -1;
      *(v7 + 157) = 0;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      v8 = v7 + 168;
      *(v7 + 112) = 0u;
    }

    *(v6 + 8) = v8;
    v9 = *(a1[10] + 8);
    v10 = sub_502FF8(a1[3], *a2, 0, "stop");
    v11 = v10 + *(v10 - *v10 + 6);
    v12 = *v11;
    LODWORD(v11) = *(v11 + 4);
    if (v11 >= 0xFFFFFFFE)
    {
      v11 = 4294967294;
    }

    else
    {
      v11 = v11;
    }

    *(v9 - 168) = v12 | (v11 << 32);
    *(v9 - 160) = 0x7FFFFFFF;
    v13 = a1[3];
    v14 = sub_502FF8(v13, *a2, 0, "stop");
    v15 = (v14 - *v14);
    if (*v15 >= 5u && (v16 = v15[2]) != 0)
    {
      v17 = *(v14 + v16);
      v18 = sub_2C939C(v13, 1u, 0);
      if (!v18)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0;
      v18 = sub_2C939C(v13, 1u, 0);
      if (!v18)
      {
        goto LABEL_57;
      }
    }

    v19 = &v18[-*v18];
    if (*v19 < 0xDu || (v20 = *(v19 + 6)) == 0)
    {
LABEL_57:
      exception = __cxa_allocate_exception(0x40uLL);
      v51 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v21 = &v18[v20 + *&v18[v20]];
    v22 = &v21[-*v21];
    if (*v22 >= 0xBu)
    {
      v23 = *(v22 + 5);
      if (v23)
      {
        if (v21[v23])
        {
          v17 = nullsub_1(v17);
        }
      }
    }

    *(v9 - 80) = v17;
    *(v9 - 72) = *a2;
    v24 = sub_502FF8(a1[3], *a2, 0, "stop");
    v25 = (v24 - *v24);
    if (*v25 >= 9u && (v26 = v25[4]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
      __dst = 0uLL;
      v53 = 0;
      sub_943AEC(&__dst, *v27);
      v60 = v27 + 1;
      v59 = &v27[*v27 + 1];
      sub_943E24(&v60, &v59, &__dst, sub_509164);
      v28 = __dst;
      v29 = v53;
    }

    else
    {
      v29 = 0;
      v28 = 0uLL;
    }

    v54 = v28;
    v55 = v29;
    sub_9D6590(&v54, a1[11] + 968, &v56);
    v30 = (v9 - 152);
    v31 = *(v9 - 152);
    if (!v31)
    {
LABEL_34:
      *(v9 - 152) = v56;
      *(v9 - 136) = v57;
      v56 = 0uLL;
      v57 = 0;
      v35 = v54;
      if (v54)
      {
        v36 = *(&v54 + 1);
        v37 = v54;
        if (*(&v54 + 1) != v54)
        {
          do
          {
            v38 = *(v36 - 24);
            if (v38)
            {
              v39 = *(v36 - 16);
              v40 = *(v36 - 24);
              if (v39 != v38)
              {
                do
                {
                  if (*(v39 - 1) < 0)
                  {
                    operator delete(*(v39 - 24));
                  }

                  v39 -= 32;
                }

                while (v39 != v38);
                v40 = *(v36 - 24);
              }

              *(v36 - 16) = v38;
              operator delete(v40);
            }

            v41 = (v36 - 64);
            if (*(v36 - 41) < 0)
            {
              operator delete(*v41);
            }

            v36 -= 64;
          }

          while (v41 != v35);
          v37 = v54;
        }

        *(&v54 + 1) = v35;
        operator delete(v37);
      }

      sub_9D43A4((v9 - 152), &__dst);
      v42 = (v9 - 128);
      if (*(v9 - 105) < 0)
      {
        operator delete(*v42);
      }

      v43 = __dst;
      *(v9 - 112) = v53;
      *v42 = v43;
      v44 = sub_502FF8(a1[3], *a2, 0, "stop");
      v45 = (v44 - *v44);
      if (*v45 >= 0x31u && (v46 = v45[24]) != 0)
      {
        v47 = (v44 + v46 + *(v44 + v46));
        __dst = 0uLL;
        v53 = 0;
        sub_9B717C(&__dst, *v47);
        v60 = v47 + 1;
        v59 = &v47[*v47 + 1];
        sub_9B7574(&v60, &v59, &__dst, sub_9B7070);
        v48 = __dst;
        v49 = v53;
      }

      else
      {
        v49 = 0;
        v48 = 0uLL;
      }

      v54 = v48;
      v55 = v49;
      sub_9D79D4((a1 + 5), &v54);
    }

    v32 = *(v9 - 144);
    v33 = *(v9 - 152);
    if (v32 == v31)
    {
LABEL_33:
      *(v9 - 144) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v9 - 144) = 0;
      *(v9 - 136) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_32:
          v33 = *v30;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_32;
        }
      }
    }
  }

  return v4[3];
}

void sub_9B0E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 121) < 0)
  {
    operator delete(*(v3 - 144));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9B0ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B0EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B0EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    *(v11 - 136) = a9;
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_9B0F68(void **a1)
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
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9B102C(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    operator new();
  }

  return 0;
}

void sub_9B123C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9B1270(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_446608(a1 + 21, a2);
  if (!v4)
  {
    sub_7E9A4(v56);
    v6 = a1[10];
    v7 = *(v6 + 32);
    if (v7 >= *(v6 + 40))
    {
      v8 = sub_9B78C4(v6 + 24);
    }

    else
    {
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *v7 = -1;
      *(v7 + 8) = 0x7FFFFFFF;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0;
      *(v7 + 88) = -1;
      *(v7 + 100) = -1;
      *(v7 + 104) = -1;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      v8 = v7 + 144;
      *(v7 + 136) = 0;
    }

    *(v6 + 32) = v8;
    v9 = *(a1[10] + 32);
    v10 = sub_93D2F4(a1[3], *a2, 0, "hall");
    v11 = v10 + *(v10 - *v10 + 6);
    v12 = *v11;
    LODWORD(v11) = *(v11 + 4);
    if (v11 >= 0xFFFFFFFE)
    {
      v11 = 4294967294;
    }

    else
    {
      v11 = v11;
    }

    *(v9 - 144) = v12 | (v11 << 32);
    *(v9 - 136) = 0x7FFFFFFF;
    v13 = a1[3];
    v14 = sub_93D2F4(v13, *a2, 0, "hall");
    v15 = (v14 - *v14);
    if (*v15 >= 5u && (v16 = v15[2]) != 0)
    {
      v17 = *(v14 + v16);
      v18 = sub_2C939C(v13, 1u, 0);
      if (!v18)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0;
      v18 = sub_2C939C(v13, 1u, 0);
      if (!v18)
      {
        goto LABEL_57;
      }
    }

    v19 = &v18[-*v18];
    if (*v19 < 0xDu || (v20 = *(v19 + 6)) == 0)
    {
LABEL_57:
      exception = __cxa_allocate_exception(0x40uLL);
      v51 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v21 = &v18[v20 + *&v18[v20]];
    v22 = &v21[-*v21];
    if (*v22 >= 0xBu)
    {
      v23 = *(v22 + 5);
      if (v23)
      {
        if (v21[v23])
        {
          v17 = nullsub_1(v17);
        }
      }
    }

    *(v9 - 56) = v17;
    *(v9 - 48) = *a2;
    v24 = sub_93D2F4(a1[3], *a2, 0, "hall");
    v25 = (v24 - *v24);
    if (*v25 >= 9u && (v26 = v25[4]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
      v58 = 0uLL;
      v59 = 0;
      sub_943AEC(&v58, *v27);
      v60 = v27 + 1;
      v57 = &v27[*v27 + 1];
      sub_943E24(&v60, &v57, &v58, sub_509164);
      v28 = v58;
      v29 = v59;
    }

    else
    {
      v29 = 0;
      v28 = 0uLL;
    }

    *__p = v28;
    v53 = v29;
    sub_9D6590(__p, a1[11] + 968, &v54);
    v30 = (v9 - 128);
    v31 = *(v9 - 128);
    if (!v31)
    {
LABEL_34:
      *(v9 - 128) = v54;
      *(v9 - 112) = v55;
      v54 = 0uLL;
      v55 = 0;
      v35 = __p[0];
      if (__p[0])
      {
        v36 = __p[1];
        v37 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v38 = *(v36 - 3);
            if (v38)
            {
              v39 = *(v36 - 2);
              v40 = *(v36 - 3);
              if (v39 != v38)
              {
                do
                {
                  if (*(v39 - 1) < 0)
                  {
                    operator delete(*(v39 - 24));
                  }

                  v39 -= 32;
                }

                while (v39 != v38);
                v40 = *(v36 - 3);
              }

              *(v36 - 2) = v38;
              operator delete(v40);
            }

            v41 = (v36 - 64);
            if (*(v36 - 41) < 0)
            {
              operator delete(*v41);
            }

            v36 -= 64;
          }

          while (v41 != v35);
          v37 = __p[0];
        }

        __p[1] = v35;
        operator delete(v37);
      }

      sub_9D43A4((v9 - 128), &v58);
      v42 = (v9 - 104);
      if (*(v9 - 81) < 0)
      {
        operator delete(*v42);
      }

      v43 = v58;
      *(v9 - 88) = v59;
      *v42 = v43;
      v44 = sub_93D2F4(a1[3], *a2, 0, "hall");
      v45 = (v44 - *v44);
      if (*v45 >= 0x25u && (v46 = v45[18]) != 0)
      {
        v47 = (v44 + v46 + *(v44 + v46));
        v58 = 0uLL;
        v59 = 0;
        sub_9B717C(&v58, *v47);
        v60 = v47 + 1;
        v57 = &v47[*v47 + 1];
        sub_9B7574(&v60, &v57, &v58, sub_9B7070);
        v48 = v58;
        v49 = v59;
      }

      else
      {
        v49 = 0;
        v48 = 0uLL;
      }

      *__p = v48;
      v53 = v49;
      sub_9D79D4((a1 + 5), __p);
    }

    v32 = *(v9 - 120);
    v33 = *(v9 - 128);
    if (v32 == v31)
    {
LABEL_33:
      *(v9 - 120) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v9 - 120) = 0;
      *(v9 - 112) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_32:
          v33 = *v30;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_32;
        }
      }
    }
  }

  return v4[3];
}

void sub_9B1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B1B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a9)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9B1B84(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_446608(a1 + 26, a2);
  if (!v4)
  {
    sub_7E9A4(v43);
    v6 = a1[10];
    v7 = *(v6 + 56);
    if (v7 >= *(v6 + 64))
    {
      v8 = sub_9B7AE4(v6 + 48);
    }

    else
    {
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *v7 = -1;
      *(v7 + 8) = 0x7FFFFFFF;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0;
      *(v7 + 88) = -1;
      *(v7 + 100) = -1;
      v8 = v7 + 136;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
    }

    *(v6 + 56) = v8;
    v9 = *(a1[10] + 56);
    v10 = sub_93D480(a1[3], *a2, 0, "station");
    v11 = v10 + *(v10 - *v10 + 6);
    v12 = *v11;
    LODWORD(v11) = *(v11 + 4);
    if (v11 >= 0xFFFFFFFE)
    {
      v11 = 4294967294;
    }

    else
    {
      v11 = v11;
    }

    *(v9 - 136) = v12 | (v11 << 32);
    *(v9 - 128) = 0x7FFFFFFF;
    *(v9 - 48) = sub_9B2454(a1[3], a2);
    *(v9 - 40) = *a2;
    v13 = sub_93D480(a1[3], *a2, 0, "station");
    v14 = (v13 - *v13);
    if (*v14 >= 9u && (v15 = v14[4]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
      v45 = 0uLL;
      v46 = 0;
      sub_943AEC(&v45, *v16);
      v47 = v16 + 1;
      v44 = &v16[*v16 + 1];
      sub_943E24(&v47, &v44, &v45, sub_509164);
      v17 = v45;
      v18 = v46;
    }

    else
    {
      v18 = 0;
      v17 = 0uLL;
    }

    *__p = v17;
    v40 = v18;
    sub_9D6590(__p, a1[11] + 968, &v41);
    v19 = (v9 - 120);
    v20 = *(v9 - 120);
    if (!v20)
    {
LABEL_23:
      *(v9 - 120) = v41;
      *(v9 - 104) = v42;
      v41 = 0uLL;
      v42 = 0;
      v24 = __p[0];
      if (__p[0])
      {
        v25 = __p[1];
        v26 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v27 = *(v25 - 3);
            if (v27)
            {
              v28 = *(v25 - 2);
              v29 = *(v25 - 3);
              if (v28 != v27)
              {
                do
                {
                  if (*(v28 - 1) < 0)
                  {
                    operator delete(*(v28 - 24));
                  }

                  v28 -= 32;
                }

                while (v28 != v27);
                v29 = *(v25 - 3);
              }

              *(v25 - 2) = v27;
              operator delete(v29);
            }

            v30 = (v25 - 64);
            if (*(v25 - 41) < 0)
            {
              operator delete(*v30);
            }

            v25 -= 64;
          }

          while (v30 != v24);
          v26 = __p[0];
        }

        __p[1] = v24;
        operator delete(v26);
      }

      sub_9D43A4((v9 - 120), &v45);
      v31 = (v9 - 96);
      if (*(v9 - 73) < 0)
      {
        operator delete(*v31);
      }

      v32 = v45;
      *(v9 - 80) = v46;
      *v31 = v32;
      v33 = sub_93D480(a1[3], *a2, 0, "station");
      v34 = (v33 - *v33);
      if (*v34 >= 0x29u && (v35 = v34[20]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
        v45 = 0uLL;
        v46 = 0;
        sub_9B717C(&v45, *v36);
        v47 = v36 + 1;
        v44 = &v36[*v36 + 1];
        sub_9B7574(&v47, &v44, &v45, sub_9B7070);
        v37 = v45;
        v38 = v46;
      }

      else
      {
        v38 = 0;
        v37 = 0uLL;
      }

      *__p = v37;
      v40 = v38;
      sub_9D79D4((a1 + 5), __p);
    }

    v21 = *(v9 - 112);
    v22 = *(v9 - 120);
    if (v21 == v20)
    {
LABEL_22:
      *(v9 - 112) = v20;
      operator delete(v22);
      *v19 = 0;
      *(v9 - 112) = 0;
      *(v9 - 104) = 0;
      goto LABEL_23;
    }

    while (1)
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 3));
        v23 = v21 - 7;
        if ((*(v21 - 33) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:
        operator delete(*v23);
        v21 = v23;
        if (v23 == v20)
        {
LABEL_21:
          v22 = *v19;
          goto LABEL_22;
        }
      }

      else
      {
        v23 = v21 - 7;
        if (*(v21 - 33) < 0)
        {
          goto LABEL_20;
        }

LABEL_17:
        v21 = v23;
        if (v23 == v20)
        {
          goto LABEL_21;
        }
      }
    }
  }

  return v4[3];
}

void sub_9B23BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a9)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9B2454(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D480(a1, *a2, 0, "station");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v6;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v6;
  }

  return nullsub_1(v6);
}

void sub_9B257C(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_93D480(*(a1 + 24), *a2, 0, "station");
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Fu && (v8 = v7[15]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v33 = 0uLL;
    v34.__locale_ = 0;
    sub_9A9974(&v33, *v9);
    __dst = v9 + 1;
    v48[0] = &v9[*v9 + 1];
    sub_9A9C28(&__dst, v48, &v33, sub_9A97C4);
    v10 = v33;
    locale = v34.__locale_;
  }

  else
  {
    locale = 0;
    v10 = 0uLL;
  }

  v46 = v10;
  v47 = locale;
  *a3 = 0;
  a3[1] = 0;
  v12 = *(&v10 + 1);
  a3[2] = 0;
  v13 = v10;
  sub_9B6D40(a3, 0x2E8BA2E8BA2E8BA3 * ((*(&v10 + 1) - v10) >> 3));
  v48[0] = sub_9B2454(*(a1 + 24), a2);
  if (v13 != v12)
  {
    v15 = (v13 + 80);
    while (1)
    {
      if (!*v15 || *(v15 + 1) == -1)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v33);
          sub_4A5C(&v33, "Invalid station line shield for station ", 40);
          std::ostream::operator<<();
          if ((v45 & 0x10) != 0)
          {
            v22 = v44;
            v23 = &v38;
            if (v44 < v39)
            {
              v44 = v39;
              v22 = v39;
              v23 = &v38;
            }
          }

          else
          {
            if ((v45 & 8) == 0)
            {
              v20 = 0;
              v32 = 0;
LABEL_34:
              *(&__dst + v20) = 0;
              sub_7E854(&__dst, 1u);
              if (v32 < 0)
              {
                operator delete(__dst);
              }

              *&v33 = v30;
              *(&v33 + *(v30 - 24)) = v29;
              if (v43 < 0)
              {
                operator delete(v41);
              }

              std::locale::~locale(&v34);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_8;
            }

            v22 = v37;
            v23 = &v35;
          }

          v24 = *v23;
          v20 = v22 - *v23;
          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v20 >= 0x17)
          {
            operator new();
          }

          v32 = v22 - *v23;
          if (v20)
          {
            memmove(&__dst, v24, v20);
          }

          goto LABEL_34;
        }
      }

      else
      {
        sub_9A77D0((v15 - 10), 7, &v33, v14);
        v17 = sub_9B4704(*(a1 + 32), v15);
        __dst = v17;
        v18 = a3[1];
        if (v18 >= a3[2])
        {
          v19 = sub_9B96A0(a3, v48, &__dst, &v33);
        }

        else
        {
          *v18 = v48[0];
          *(v18 + 8) = v17;
          sub_55F1E8(v18 + 16, &v33);
          v19 = v18 + 128;
        }

        a3[1] = v19;
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_20:
            v21 = v36;
            if (v36 == -1)
            {
              goto LABEL_8;
            }

LABEL_26:
            (off_266F5B0[v21])(&__dst, &v33);
            goto LABEL_8;
          }
        }

        else if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        operator delete(v38);
        v21 = v36;
        if (v36 != -1)
        {
          goto LABEL_26;
        }
      }

LABEL_8:
      v16 = (v15 + 1);
      v15 += 11;
      if (v16 == v12)
      {
        v13 = v46;
        break;
      }
    }
  }

  if (v13)
  {
    for (i = *(&v46 + 1); i != v13; i -= 88)
    {
      v26 = *(i - 5);
      if (v26)
      {
        v27 = *(i - 4);
        v28 = *(i - 5);
        if (v27 != v26)
        {
          do
          {
            if (*(v27 - 1) < 0)
            {
              operator delete(*(v27 - 24));
            }

            v27 -= 32;
          }

          while (v27 != v26);
          v28 = *(i - 5);
        }

        *(i - 4) = v26;
        operator delete(v28);
      }

      if (*(i - 57) < 0)
      {
        operator delete(*(i - 10));
      }
    }

    *(&v46 + 1) = v13;
    operator delete(v13);
  }
}

void sub_9B2A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9A9700(va);
  _Unwind_Resume(a1);
}

void sub_9B2A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_9B7DAC(v20);
  sub_9A9700((v21 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_9B2B2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *a3;
  *&v53 = *a2;
  *(&v53 + 1) = v6;
  v7 = sub_9BA254((a1 + 248), &v53);
  if (!v7)
  {
    v50 = a3;
    sub_7E9A4(v61);
    v9 = *(v5 + 80);
    v10 = v9[10];
    if (v10 >= v9[11])
    {
      v11 = sub_9B7DE8(v9 + 9);
    }

    else
    {
      bzero(v9[10], 0x288uLL);
      *(v10 + 48) = -1;
      *(v10 + 60) = -1;
      *(v10 + 64) = -1;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0u;
      *(v10 + 96) = -1;
      *(v10 + 98) = -1;
      *(v10 + 144) = -1;
      *(v10 + 147) = -1;
      *(v10 + 151) = 0;
      *(v10 + 159) = 0u;
      *(v10 + 175) = 0;
      *(v10 + 184) = 0;
      *(v10 + 192) = 0u;
      *(v10 + 208) = 0;
      *(v10 + 259) = -1;
      *(v10 + 256) = -1;
      *(v10 + 263) = 0u;
      *(v10 + 287) = 0;
      *(v10 + 279) = 0;
      *(v10 + 320) = 0;
      *(v10 + 312) = 0;
      *(v10 + 296) = 0u;
      *(v10 + 368) = -1;
      *(v10 + 371) = -1;
      *(v10 + 391) = 0;
      *(v10 + 375) = 0u;
      *(v10 + 399) = 0;
      *(v10 + 424) = 0;
      *(v10 + 408) = 0u;
      *(v10 + 432) = 0;
      *(v10 + 480) = -1;
      *(v10 + 483) = -1;
      *(v10 + 503) = 0;
      *(v10 + 487) = 0u;
      *(v10 + 511) = 0;
      *(v10 + 544) = 0;
      *(v10 + 536) = 0;
      *(v10 + 520) = 0u;
      *(v10 + 552) = 0x7FFF;
      *(v10 + 554) = 2;
      *(v10 + 556) = 2;
      *(v10 + 568) = 0u;
      *(v10 + 584) = 0u;
      *(v10 + 600) = 0u;
      *(v10 + 616) = 0u;
      *(v10 + 626) = 0u;
      *(v10 + 664) = 0u;
      *(v10 + 680) = 0u;
      v11 = v10 + 696;
      *(v10 + 648) = 0u;
    }

    v9[10] = v11;
    v12 = *(*(v5 + 80) + 80);
    *(v12 - 648) = sub_9B4704(*(v5 + 32), a2);
    *(v12 - 640) = *a2;
    v13 = sub_92FC60(*(v5 + 32), *a2, 0, "line");
    *&v53 = *(v13 + *(v13 - *v13 + 6));
    sub_9B482C(v5, &v53);
    v14 = (v12 - 632);
    *(v12 - 632) = v15;
    v52 = a2;
    v16 = sub_92FC60(*(v5 + 32), *a2, 0, "line");
    v17 = (v16 - *v16);
    if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
      v53 = 0uLL;
      *&v54 = 0;
      sub_943AEC(&v53, *v19);
      v65 = v19 + 1;
      v64 = &v19[*v19 + 1];
      sub_943E24(&v65, &v64, &v53, sub_509164);
      v20 = v53;
      v21 = v54;
    }

    else
    {
      v21 = 0;
      v20 = 0uLL;
    }

    *__p = v20;
    v60 = v21;
    sub_9D6590(__p, *(v5 + 88) + 968, &v62);
    v22 = (v12 - 696);
    v23 = *(v12 - 696);
    v51 = v5;
    if (!v23)
    {
LABEL_20:
      *v22 = v62;
      *(v12 - 680) = v63;
      v62 = 0uLL;
      v63 = 0;
      v27 = __p[0];
      if (__p[0])
      {
        v28 = __p[1];
        v29 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v30 = *(v28 - 3);
            if (v30)
            {
              v31 = *(v28 - 2);
              v32 = *(v28 - 3);
              if (v31 != v30)
              {
                do
                {
                  if (*(v31 - 1) < 0)
                  {
                    operator delete(*(v31 - 24));
                  }

                  v31 -= 32;
                }

                while (v31 != v30);
                v32 = *(v28 - 3);
              }

              *(v28 - 2) = v30;
              operator delete(v32);
            }

            v33 = (v28 - 64);
            if (*(v28 - 41) < 0)
            {
              operator delete(*v33);
            }

            v28 -= 64;
          }

          while (v33 != v27);
          v29 = __p[0];
        }

        __p[1] = v27;
        operator delete(v29);
        v5 = v51;
      }

      sub_9D4538((v12 - 696), &v53);
      v34 = (v12 - 672);
      if (*(v12 - 649) < 0)
      {
        operator delete(*v34);
      }

      v35 = v53;
      *(v12 - 656) = v54;
      *v34 = v35;
      v36 = sub_92FC60(*(v5 + 32), *v52, 0, "line");
      v37 = (v36 - *v36);
      if (*v37 >= 0x13u && (v38 = v37[9]) != 0)
      {
        *(v12 - 600) = *(v36 + v38);
        v39 = *v5;
        if (*v5 == 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(v12 - 600) = 0xFFFFFF;
        v39 = *v5;
        if (*v5 == 1)
        {
LABEL_41:
          sub_9A8ED8(*(v5 + 16), *(v5 + 24), *(v5 + 32), *v52, *v50, *(v5 + 88));
        }
      }

      if (!v39)
      {
        operator new();
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      *v56 = -1;
      *&v56[3] = -1;
      memset(&v56[7], 0, 33);
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0uLL;
      v40 = (v12 - 592);
      v41 = (v12 - 560);
      *&v62 = v12 - 592;
      (sub_55D784)(&v62, v12 - 592, &v53);
      *(v12 - 552) = *v56;
      v42 = (v12 - 544);
      if (*(v12 - 521) < 0)
      {
        operator delete(*v42);
      }

      v43 = *&v56[8];
      *(v12 - 528) = *&v56[24];
      *v42 = v43;
      v56[31] = 0;
      v56[8] = 0;
      *(v12 - 520) = v56[32];
      v44 = (v12 - 512);
      if (*(v12 - 489) < 0)
      {
        operator delete(*v44);
      }

      v45 = *v57;
      *(v12 - 496) = v58;
      *v44 = v45;
      BYTE7(v58) = 0;
      LOBYTE(v57[0]) = 0;
      *(v12 - 488) = BYTE8(v58);
      if (SBYTE7(v58) < 0)
      {
        operator delete(v57[0]);
        if ((v56[31] & 0x80000000) == 0)
        {
LABEL_51:
          v46 = v55;
          if (v55 == -1)
          {
LABEL_56:
            v47 = *v41;
            if (*v41 > 2)
            {
              if (v47 != 3 && v47 != 4)
              {
                goto LABEL_75;
              }

              if ((*(v12 - 569) & 0x8000000000000000) != 0)
              {
                if (!*(v12 - 584))
                {
                  goto LABEL_75;
                }
              }

              else if (!*(v12 - 569))
              {
                goto LABEL_75;
              }
            }

            else if (v47 == 1)
            {
              if (*v40 == -1)
              {
                goto LABEL_75;
              }
            }

            else if (v47 != 2 || *(v12 - 588) == -1 && *v40 == -1 && *(v12 - 584) == *(v12 - 576))
            {
              goto LABEL_75;
            }

            v48 = *(*(v5 + 80) + 96);
            if ((0x4EC4EC4EC4EC4EC5 * ((*(*(v5 + 80) + 104) - v48) >> 4)) <= *v14)
            {
              sub_6FAB4();
            }

            sub_9BC758((v12 - 696), (v48 + 208 * *v14), &v53);
            if (*(v12 - 489) < 0)
            {
              operator delete(*v44);
            }

            v49 = v53;
            *(v12 - 496) = v54;
            *v44 = v49;
LABEL_75:
            v62 = 0uLL;
            v63 = 0;
            operator new();
          }

LABEL_55:
          (off_266F5B0[v46])(&v62, &v53);
          goto LABEL_56;
        }
      }

      else if ((v56[31] & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(*&v56[8]);
      v46 = v55;
      if (v55 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v24 = *(v12 - 688);
    v25 = *(v12 - 696);
    if (v24 == v23)
    {
LABEL_19:
      *(v12 - 688) = v23;
      operator delete(v25);
      *v22 = 0;
      *(v12 - 688) = 0;
      *(v12 - 680) = 0;
      v5 = v51;
      goto LABEL_20;
    }

    while (1)
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
        v26 = v24 - 7;
        if ((*(v24 - 33) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        operator delete(*v26);
        v24 = v26;
        if (v26 == v23)
        {
LABEL_18:
          v25 = *v22;
          goto LABEL_19;
        }
      }

      else
      {
        v26 = v24 - 7;
        if (*(v24 - 33) < 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        v24 = v26;
        if (v26 == v23)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return v7[4];
}

void sub_9B4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9B4704(uint64_t a1, unint64_t *a2)
{
  v3 = sub_92FC60(a1, *a2, 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v6;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v6;
  }

  return nullsub_1(v6);
}

double sub_9B482C(uint64_t a1, unint64_t *a2)
{
  if (sub_446608((a1 + 288), a2))
  {
    return result;
  }

  sub_7E9A4(v70);
  v5 = *(a1 + 80);
  v6 = v5[13];
  if (v6 >= v5[14])
  {
    sub_9B83F0(v5 + 12);
  }

  else
  {
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 176) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 48) = -1;
    *(v6 + 60) = -1;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 128) = -1;
    *(v6 + 131) = -1;
    *(v6 + 143) = 0;
    *(v6 + 135) = 0;
    *(v6 + 159) = 0;
    *(v6 + 151) = 0;
    *(v6 + 168) = 0;
    *(v6 + 176) = 0;
    *(v6 + 192) = 0;
    v7 = v6 + 208;
    *(v6 + 184) = 0;
  }

  v5[13] = v7;
  v8 = *(*(a1 + 80) + 104);
  v9 = *(a1 + 16);
  v10 = sub_93E04C(v9, *a2, 0, "system");
  v11 = (v10 - *v10);
  if (*v11 >= 5u && (v12 = v11[2]) != 0)
  {
    v13 = *(v10 + v12);
    v14 = sub_2C939C(v9, 1u, 0);
    if (!v14)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v13 = 0;
    v14 = sub_2C939C(v9, 1u, 0);
    if (!v14)
    {
      goto LABEL_79;
    }
  }

  v15 = &v14[-*v14];
  if (*v15 < 0xDu || (v16 = *(v15 + 6)) == 0)
  {
LABEL_79:
    exception = __cxa_allocate_exception(0x40uLL);
    v55 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v17 = &v14[v16 + *&v14[v16]];
  v18 = &v17[-*v17];
  if (*v18 >= 0xBu)
  {
    v19 = *(v18 + 5);
    if (v19)
    {
      if (v17[v19])
      {
        v13 = nullsub_1(v13);
      }
    }
  }

  *(v8 - 160) = v13;
  *(v8 - 152) = *a2;
  v20 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
  v21 = (v20 - *v20);
  if (*v21 < 0x13u)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = v21[9];
    if (v22)
    {
      LOBYTE(v22) = *(v20 + v22) != 0;
    }
  }

  *(v8 - 8) = v22;
  v23 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
  v24 = (v23 - *v23);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = (v23 + v25 + *(v23 + v25));
    v56 = 0uLL;
    v57 = 0;
    sub_943AEC(&v56, *v26);
    v72 = v26 + 1;
    v71 = &v26[*v26 + 1];
    sub_943E24(&v72, &v71, &v56, sub_509164);
    v27 = v56;
    v28 = v57;
  }

  else
  {
    v28 = 0;
    v27 = 0uLL;
  }

  *__p = v27;
  v67 = v28;
  sub_9D6590(__p, *(a1 + 88) + 968, &v68);
  v29 = (v8 - 208);
  v30 = *(v8 - 208);
  if (v30)
  {
    v31 = *(v8 - 200);
    v32 = *(v8 - 208);
    if (v31 == v30)
    {
LABEL_33:
      *(v8 - 200) = v30;
      operator delete(v32);
      *v29 = 0;
      *(v8 - 200) = 0;
      *(v8 - 192) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v31 - 1) < 0)
      {
        operator delete(*(v31 - 3));
        v33 = v31 - 7;
        if ((*(v31 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v33);
        v31 = v33;
        if (v33 == v30)
        {
LABEL_32:
          v32 = *v29;
          goto LABEL_33;
        }
      }

      else
      {
        v33 = v31 - 7;
        if (*(v31 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v31 = v33;
        if (v33 == v30)
        {
          goto LABEL_32;
        }
      }
    }
  }

LABEL_34:
  *(v8 - 208) = v68;
  *(v8 - 192) = v69;
  v68 = 0uLL;
  v69 = 0;
  v34 = __p[0];
  if (__p[0])
  {
    v35 = __p[1];
    v36 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v37 = *(v35 - 3);
        if (v37)
        {
          v38 = *(v35 - 2);
          v39 = *(v35 - 3);
          if (v38 != v37)
          {
            do
            {
              if (*(v38 - 1) < 0)
              {
                operator delete(*(v38 - 24));
              }

              v38 -= 32;
            }

            while (v38 != v37);
            v39 = *(v35 - 3);
          }

          *(v35 - 2) = v37;
          operator delete(v39);
        }

        v40 = (v35 - 64);
        if (*(v35 - 41) < 0)
        {
          operator delete(*v40);
        }

        v35 -= 64;
      }

      while (v40 != v34);
      v36 = __p[0];
    }

    __p[1] = v34;
    operator delete(v36);
  }

  if (*a1 == 1)
  {
    v51 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
    v52 = (v51 - *v51);
    if (*v52 >= 0x27u && (v53 = v52[19]) != 0)
    {
      sub_9D4650(*(v51 + v53), (v8 - 208), &v56);
      v41 = v8 - 184;
      if (*(v8 - 161) < 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      sub_9D4650(127, (v8 - 208), &v56);
      v41 = v8 - 184;
      if (*(v8 - 161) < 0)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (!*a1)
    {
      sub_9D43A4((v8 - 208), &v56);
      v41 = v8 - 184;
      if ((*(v8 - 161) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v56 = 0uLL;
    v57 = 0;
    v41 = v8 - 184;
    if (*(v8 - 161) < 0)
    {
LABEL_53:
      operator delete(*v41);
    }
  }

LABEL_54:
  v42 = v56;
  *(v41 + 16) = v57;
  *v41 = v42;
  sub_9A809C(*(a1 + 16), *a2, &v56);
  v43 = *(v8 - 88);
  if (v43 == -1)
  {
    if (v58 == -1)
    {
      goto LABEL_59;
    }
  }

  else if (v58 == -1)
  {
    (off_266F5B0[v43])(&v68, v8 - 120);
    *(v8 - 88) = -1;
    goto LABEL_59;
  }

  *&v68 = v8 - 120;
  (off_266F600[v58])(&v68);
LABEL_59:
  *(v8 - 80) = v59;
  v44 = (v8 - 72);
  if (*(v8 - 49) < 0)
  {
    operator delete(*v44);
  }

  v45 = *v60;
  *(v8 - 56) = v61;
  *v44 = v45;
  HIBYTE(v61) = 0;
  LOBYTE(v60[0]) = 0;
  *(v8 - 48) = v62;
  v46 = (v8 - 40);
  if (*(v8 - 17) < 0)
  {
    operator delete(*v46);
  }

  v47 = v63;
  *(v8 - 24) = v64;
  *v46 = v47;
  HIBYTE(v64) = 0;
  LOBYTE(v63) = 0;
  *(v8 - 16) = v65;
  if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    v48 = v58;
    if (v58 == -1)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  operator delete(v60[0]);
  v48 = v58;
  if (v58 != -1)
  {
LABEL_67:
    (off_266F5B0[v48])(&v68, &v56);
  }

LABEL_68:
  sub_9BC8E0((v8 - 208), &v56);
  if (*(v8 - 17) < 0)
  {
    operator delete(*v46);
  }

  v49 = v56;
  *(v8 - 24) = v57;
  *v46 = v49;
  v50 = 0x4EC4EC4EC4EC4EC5 * ((*(*(a1 + 80) + 104) - *(*(a1 + 80) + 96)) >> 4) - 1;
  *&v56 = a2;
  sub_9BA81C((a1 + 288), a2)[3] = v50;
  result = sub_7EA60(v70) + *(a1 + 448);
  *(a1 + 448) = result;
  return result;
}

void sub_9B4EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B4F04(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_9B50B0(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_9B50DC(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  v4 = sub_446608((a1 + 328), a2);
  if (v4)
  {
    return v4[3];
  }

  sub_7E9A4(v123);
  v6 = *(a1 + 80);
  v7 = *(v6 + 128);
  if (v7 >= *(v6 + 136))
  {
    v8 = sub_9B8764(v6 + 120);
  }

  else
  {
    *(v7 + 8) = 0u;
    *(v7 + 264) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0;
    *(v7 + 248) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 184) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *v7 = -1;
    *(v7 + 8) = 0x7FFFFFFF;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 160) = -1;
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 232) = -1;
    *(v7 + 235) = -1;
    *(v7 + 247) = 0;
    *(v7 + 255) = 0;
    *(v7 + 239) = 0;
    *(v7 + 263) = 0;
    *(v7 + 272) = 0;
    *(v7 + 280) = 0;
    *(v7 + 296) = 0;
    v8 = v7 + 304;
    *(v7 + 288) = 0;
  }

  *(v6 + 128) = v8;
  v9 = *(*(a1 + 80) + 128);
  v10 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v11 = v10 + *(v10 - *v10 + 14);
  v12 = *v11;
  LODWORD(v11) = *(v11 + 4);
  if (v11 >= 0xFFFFFFFE)
  {
    v11 = 4294967294;
  }

  else
  {
    v11 = v11;
  }

  *(v9 - 304) = v12 | (v11 << 32);
  *(v9 - 296) = 0x7FFFFFFF;
  v13 = *(a1 + 24);
  v14 = sub_503310(v13, *v2, 0, "access point");
  v15 = (v14 - *v14);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = *(v14 + v16);
    v18 = sub_2C939C(v13, 1u, 0);
    if (!v18)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v17 = 0;
    v18 = sub_2C939C(v13, 1u, 0);
    if (!v18)
    {
      goto LABEL_164;
    }
  }

  v19 = &v18[-*v18];
  if (*v19 < 0xDu || (v20 = *(v19 + 6)) == 0)
  {
LABEL_164:
    exception = __cxa_allocate_exception(0x40uLL);
    v104 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v21 = &v18[v20 + *&v18[v20]];
  v22 = &v21[-*v21];
  if (*v22 >= 0xBu)
  {
    v23 = *(v22 + 5);
    if (v23)
    {
      if (v21[v23])
      {
        v17 = nullsub_1(v17);
      }
    }
  }

  *(v9 - 144) = v17;
  v24 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v25 = (v24 - *v24);
  if (*v25 >= 0xBu && (v26 = v25[5]) != 0)
  {
    v27 = (v24 + v26 + *(v24 + v26));
    memset(v106, 0, sizeof(v106));
    sub_943AEC(v106, *v27);
    v125[0] = v27 + 1;
    v124 = &v27[*v27 + 1];
    sub_943E24(v125, &v124, v106, sub_509164);
    v28 = *v106;
    v29 = v106[2];
  }

  else
  {
    v29 = 0;
    v28 = 0uLL;
  }

  v121 = v28;
  v122 = v29;
  sub_9D6590(&v121, *(a1 + 88) + 968, v114);
  v30 = (v9 - 288);
  v31 = *(v9 - 288);
  if (v31)
  {
    v32 = *(v9 - 280);
    v33 = *(v9 - 288);
    if (v32 == v31)
    {
LABEL_33:
      *(v9 - 280) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v9 - 280) = 0;
      *(v9 - 272) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_32:
          v33 = *v30;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_32;
        }
      }
    }
  }

LABEL_34:
  *v30 = *v114;
  *(v9 - 272) = *v115;
  v114[0] = 0;
  v114[1] = 0;
  *v115 = 0;
  v35 = v121;
  if (v121)
  {
    v36 = *(&v121 + 1);
    v37 = v121;
    if (*(&v121 + 1) != v121)
    {
      do
      {
        v38 = *(v36 - 24);
        if (v38)
        {
          v39 = *(v36 - 16);
          v40 = *(v36 - 24);
          if (v39 != v38)
          {
            do
            {
              if (*(v39 - 1) < 0)
              {
                operator delete(*(v39 - 24));
              }

              v39 -= 32;
            }

            while (v39 != v38);
            v40 = *(v36 - 24);
          }

          *(v36 - 16) = v38;
          operator delete(v40);
        }

        v41 = (v36 - 64);
        if (*(v36 - 41) < 0)
        {
          operator delete(*v41);
        }

        v36 -= 64;
      }

      while (v41 != v35);
      v37 = v121;
    }

    *(&v121 + 1) = v35;
    operator delete(v37);
  }

  v42 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v43 = (v42 - *v42);
  if (*v43 >= 0xDu && (v44 = v43[6]) != 0)
  {
    v45 = (v42 + v44 + *(v42 + v44));
    memset(v106, 0, sizeof(v106));
    sub_943AEC(v106, *v45);
    v125[0] = v45 + 1;
    v124 = &v45[*v45 + 1];
    sub_943E24(v125, &v124, v106, sub_509164);
    v46 = *v106;
    v47 = v106[2];
  }

  else
  {
    v47 = 0;
    v46 = 0uLL;
  }

  v121 = v46;
  v122 = v47;
  sub_9D6590(&v121, *(a1 + 88) + 968, v114);
  v48 = (v9 - 264);
  v49 = *(v9 - 264);
  if (v49)
  {
    v50 = *(v9 - 256);
    v51 = *(v9 - 264);
    if (v50 == v49)
    {
LABEL_63:
      *(v9 - 256) = v49;
      operator delete(v51);
      *v48 = 0;
      *(v9 - 256) = 0;
      *(v9 - 248) = 0;
      goto LABEL_64;
    }

    while (1)
    {
      if (*(v50 - 1) < 0)
      {
        operator delete(*(v50 - 3));
        v52 = v50 - 7;
        if ((*(v50 - 33) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_61:
        operator delete(*v52);
        v50 = v52;
        if (v52 == v49)
        {
LABEL_62:
          v51 = *v48;
          goto LABEL_63;
        }
      }

      else
      {
        v52 = v50 - 7;
        if (*(v50 - 33) < 0)
        {
          goto LABEL_61;
        }

LABEL_58:
        v50 = v52;
        if (v52 == v49)
        {
          goto LABEL_62;
        }
      }
    }
  }

LABEL_64:
  *v48 = *v114;
  *(v9 - 248) = *v115;
  v114[0] = 0;
  v114[1] = 0;
  *v115 = 0;
  v53 = v121;
  if (v121)
  {
    v54 = *(&v121 + 1);
    v55 = v121;
    if (*(&v121 + 1) != v121)
    {
      do
      {
        v56 = *(v54 - 24);
        if (v56)
        {
          v57 = *(v54 - 16);
          v58 = *(v54 - 24);
          if (v57 != v56)
          {
            do
            {
              if (*(v57 - 1) < 0)
              {
                operator delete(*(v57 - 24));
              }

              v57 -= 32;
            }

            while (v57 != v56);
            v58 = *(v54 - 24);
          }

          *(v54 - 16) = v56;
          operator delete(v58);
        }

        v59 = (v54 - 64);
        if (*(v54 - 41) < 0)
        {
          operator delete(*v59);
        }

        v54 -= 64;
      }

      while (v59 != v53);
      v55 = v121;
    }

    *(&v121 + 1) = v53;
    operator delete(v55);
  }

  sub_9D8578((v9 - 288), v106);
  v61 = (v9 - 192);
  v60 = *(v9 - 192);
  if (v60)
  {
    v62 = *(v9 - 184);
    v63 = *(v9 - 192);
    if (v62 == v60)
    {
LABEL_89:
      *(v9 - 184) = v60;
      operator delete(v63);
      *v61 = 0;
      *(v9 - 184) = 0;
      *(v9 - 176) = 0;
      goto LABEL_90;
    }

    while (1)
    {
      if (*(v62 - 1) < 0)
      {
        operator delete(*(v62 - 24));
        if ((*(v62 - 33) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

LABEL_87:
        operator delete(*(v62 - 56));
        v62 -= 64;
        if (v62 == v60)
        {
LABEL_88:
          v63 = *v61;
          goto LABEL_89;
        }
      }

      else
      {
        if (*(v62 - 33) < 0)
        {
          goto LABEL_87;
        }

LABEL_84:
        v62 -= 64;
        if (v62 == v60)
        {
          goto LABEL_88;
        }
      }
    }
  }

LABEL_90:
  *(v9 - 192) = *v106;
  *(v9 - 176) = v106[2];
  sub_9D8650((v9 - 264), v106);
  v65 = (v9 - 168);
  v64 = *(v9 - 168);
  if (!v64)
  {
    goto LABEL_100;
  }

  v66 = *(v9 - 160);
  v67 = *(v9 - 168);
  if (v66 != v64)
  {
    while (1)
    {
      if (*(v66 - 1) < 0)
      {
        operator delete(*(v66 - 24));
        if ((*(v66 - 33) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_97:
        operator delete(*(v66 - 56));
        v66 -= 64;
        if (v66 == v64)
        {
LABEL_98:
          v67 = *v65;
          break;
        }
      }

      else
      {
        if (*(v66 - 33) < 0)
        {
          goto LABEL_97;
        }

LABEL_94:
        v66 -= 64;
        if (v66 == v64)
        {
          goto LABEL_98;
        }
      }
    }
  }

  *(v9 - 160) = v64;
  operator delete(v67);
  *v65 = 0;
  *(v9 - 160) = 0;
  *(v9 - 152) = 0;
LABEL_100:
  *(v9 - 168) = *v106;
  *(v9 - 152) = v106[2];
  sub_9D4608((v9 - 288), v106);
  v68 = (v9 - 240);
  if (*(v9 - 217) < 0)
  {
    operator delete(*v68);
  }

  v69 = *v106;
  *(v9 - 224) = v106[2];
  *v68 = v69;
  HIBYTE(v106[2]) = 0;
  LOBYTE(v106[0]) = 0;
  if ((v108[15] & 0x80000000) != 0)
  {
    operator delete(*(&v107 + 1));
    if (SHIBYTE(v106[2]) < 0)
    {
      operator delete(v106[0]);
    }
  }

  sub_9D4608((v9 - 264), v106);
  v70 = (v9 - 216);
  if (*(v9 - 193) < 0)
  {
    operator delete(*v70);
  }

  v71 = *v106;
  *(v9 - 200) = v106[2];
  *v70 = v71;
  HIBYTE(v106[2]) = 0;
  LOBYTE(v106[0]) = 0;
  if ((v108[15] & 0x80000000) != 0)
  {
    operator delete(*(&v107 + 1));
    if (SHIBYTE(v106[2]) < 0)
    {
      operator delete(v106[0]);
    }
  }

  v72 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v73 = (v72 - *v72);
  if (*v73 < 0x1Bu || (v74 = v73[13]) == 0)
  {
    LOBYTE(v114[0]) = 0;
    v120 = 0;
    goto LABEL_141;
  }

  v75 = (v72 + v74 + *(v72 + v74));
  v76 = (v75 - *v75);
  v77 = *v76;
  if (v77 < 7)
  {
    v78 = 0;
    v79 = 0xFFFFFFLL;
    if (v77 < 5)
    {
      goto LABEL_124;
    }

    v80 = v76[2];
    if (!v80)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

  if (v76[3])
  {
    v78 = *(v75 + v76[3]);
    if (v77 >= 9)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v78 = 0;
    if (v77 >= 9)
    {
LABEL_115:
      if (v76[4])
      {
        v79 = *(v75 + v76[4]);
        v80 = v76[2];
        if (!v80)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v79 = 0xFFFFFFLL;
        v80 = v76[2];
        if (!v80)
        {
          goto LABEL_124;
        }
      }

LABEL_121:
      v81 = (v75 + v80 + *(v75 + v80));
      goto LABEL_125;
    }
  }

  v79 = 0xFFFFFFLL;
  v80 = v76[2];
  if (v80)
  {
    goto LABEL_121;
  }

LABEL_124:
  v81 = 0;
LABEL_125:
  sub_509164(v81, v106);
  v114[1] = v106[0];
  *v115 = v106[1];
  *&v115[7] = *(&v106[1] + 7);
  v114[0] = (v78 | (v79 << 32));
  v116 = HIBYTE(v106[2]);
  v117 = v107;
  *v118 = *v108;
  v119 = *&v108[16];
  v120 = 1;
  sub_9A77D0(v114, 5, v106, *&v107);
  v82 = *(v9 - 80);
  if (v82 == -1)
  {
    if (DWORD2(v107) == -1)
    {
      goto LABEL_130;
    }
  }

  else if (DWORD2(v107) == -1)
  {
    (off_266F5B0[v82])(&v121, v9 - 112);
    *(v9 - 80) = -1;
    goto LABEL_130;
  }

  *&v121 = v9 - 112;
  (off_266F600[DWORD2(v107)])(&v121);
LABEL_130:
  *(v9 - 72) = *v108;
  v83 = (v9 - 64);
  if (*(v9 - 41) < 0)
  {
    operator delete(*v83);
  }

  v84 = *&v108[8];
  *(v9 - 48) = v109;
  *v83 = v84;
  HIBYTE(v109) = 0;
  v108[8] = 0;
  *(v9 - 40) = v110;
  v85 = (v9 - 32);
  if (*(v9 - 9) < 0)
  {
    operator delete(*v85);
  }

  v86 = *v111;
  *(v9 - 16) = v112;
  *v85 = v86;
  HIBYTE(v112) = 0;
  LOBYTE(v111[0]) = 0;
  *(v9 - 8) = v113;
  if ((SHIBYTE(v112) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v109) & 0x80000000) == 0)
    {
      goto LABEL_136;
    }

LABEL_139:
    operator delete(*&v108[8]);
    v87 = DWORD2(v107);
    if (DWORD2(v107) == -1)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  operator delete(v111[0]);
  if (SHIBYTE(v109) < 0)
  {
    goto LABEL_139;
  }

LABEL_136:
  v87 = DWORD2(v107);
  if (DWORD2(v107) != -1)
  {
LABEL_140:
    (off_266F5B0[v87])(&v121, v106);
  }

LABEL_141:
  v88 = *(a1 + 24);
  v89 = sub_503310(v88, *v2, 0, "access point");
  v90 = (v89 - *v89);
  if (*v90 >= 0x11u)
  {
    v91 = v90[8];
    if (v91)
    {
      v92 = (v89 + v91 + *(v89 + v91));
      v93 = *v92;
      if (v93)
      {
        v105 = v2;
        v94 = 8 * v93;
        v95 = v92 + 1;
        do
        {
          if (*(v88 + 3888) != 1 || sub_2D5204(*(v88 + 3872)))
          {
            operator new();
          }

          v95 += 2;
          v94 -= 8;
        }

        while (v94);
        v2 = v105;
      }
    }
  }

  v96 = *(a1 + 80);
  v98 = *(v96 + 120);
  v97 = *(v96 + 128);
  v106[0] = v2;
  v99 = 0x86BCA1AF286BCA1BLL * ((v97 - v98) >> 4) - 1;
  sub_9BAB9C((a1 + 328), v2)[3] = v99;
  *(a1 + 448) = sub_7EA60(v123) + *(a1 + 448);
  if (v120 == 1)
  {
    v100 = v118[0];
    if (v118[0])
    {
      v101 = v118[1];
      v102 = v118[0];
      if (v118[1] != v118[0])
      {
        do
        {
          if (*(v101 - 1) < 0)
          {
            operator delete(*(v101 - 3));
          }

          v101 -= 4;
        }

        while (v101 != v100);
        v102 = v118[0];
      }

      v118[1] = v100;
      operator delete(v102);
    }

    if (v116 < 0)
    {
      operator delete(v114[1]);
    }
  }

  return v99;
}