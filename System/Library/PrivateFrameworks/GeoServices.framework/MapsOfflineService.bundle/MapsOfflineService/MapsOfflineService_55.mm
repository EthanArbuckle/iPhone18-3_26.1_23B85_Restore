BOOL sub_38E27C(uint64_t a1, uint64_t a2)
{
  if (((*a1 >> 30) & 0xFFFFFFFCLL | (*a1 << 32) | (*a1 >> 63) | (*a1 >> 61) & 2) != ((*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32) | (*a2 >> 63) | (*a2 >> 61) & 2) || *(a2 + 16) != *(a1 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  return ((*(a1 + 8) >> 30) & 0xFFFFFFFCLL | (*(a1 + 8) << 32) | (*(a1 + 8) >> 63) | (*(a1 + 8) >> 61) & 2) == ((*(a2 + 8) >> 30) & 0xFFFFFFFCLL | (*(a2 + 8) << 32) | (*(a2 + 8) >> 63) | (*(a2 + 8) >> 61) & 2) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
}

uint64_t sub_38E340(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = *(a1 + 8);
  v3 = *(a1 + 18) ^ 1;
  v15 = v2;
  v16 = *(a1 + 3);
  v17 = v3;
  v18 = a1[5];
  v4 = *(a2 + 18) ^ 1;
  v5 = a2[1];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = v5;
  v10 = *(a2 + 3);
  v11 = v4;
  v12 = a2[5];
  return (sub_3907D8(&v13, &v7) >> 7) & 1;
}

uint64_t sub_38E3D4(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  return result;
}

BOOL sub_38E440(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2;
  result = *a1 < *a2;
  if (v3)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    result = v5 < v6;
    if (v6 == v5)
    {
      v7 = *(a1 + 16);
      v8 = *(a2 + 16);
      result = v7 < v8;
      if (v8 == v7)
      {
        return *(a1 + 24) < *(a2 + 24);
      }
    }
  }

  return result;
}

uint64_t sub_38E49C(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  return result;
}

BOOL sub_38E4A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2;
  result = *a1 < *a2;
  if (v3)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  return result;
}

uint64_t sub_38E500(uint64_t result, int a2, double a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

double sub_38E50C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  result = NAN;
  *(a1 + 56) = xmmword_2291230;
  return result;
}

uint64_t sub_38E530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x8E38E38E38E38E39 * ((v3 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_38E758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38E790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x8E38E38E38E38E39 * ((v3 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_38E95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_38E9BC(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a1 + 24;
  v4[2] = a1 + 32;
  v4[3] = a1 + 48;
  v4[4] = a1 + 72;
  v4[5] = a1 + 96;
  v4[6] = a1 + 104;
  v4[7] = a1 + 128;
  v4[8] = a1 + 152;
  v4[9] = a1 + 156;
  v4[10] = a1 + 160;
  v4[11] = a1 + 164;
  v4[12] = a1 + 165;
  v4[13] = a1 + 166;
  v4[14] = a1 + 167;
  v4[15] = a1 + 168;
  v4[16] = a1 + 176;
  v4[17] = a1 + 200;
  v4[18] = a1 + 224;
  v4[19] = a1 + 236;
  v3[0] = a2;
  v3[1] = a2 + 24;
  v3[2] = a2 + 32;
  v3[3] = a2 + 48;
  v3[4] = a2 + 72;
  v3[5] = a2 + 96;
  v3[6] = a2 + 104;
  v3[7] = a2 + 128;
  v3[8] = a2 + 152;
  v3[9] = a2 + 156;
  v3[10] = a2 + 160;
  v3[11] = a2 + 164;
  v3[12] = a2 + 165;
  v3[13] = a2 + 166;
  v3[14] = a2 + 167;
  v3[15] = a2 + 168;
  v3[16] = a2 + 176;
  v3[17] = a2 + 200;
  v3[18] = a2 + 224;
  v3[19] = a2 + 236;
  return sub_38EADC(v4, v3);
}

BOOL sub_38EADC(uint64_t a1, uint64_t a2)
{
  if (sub_39096C(&v24, a1, a2) && **(a1 + 80) == **(a2 + 80) && **(a1 + 88) == **(a2 + 88) && **(a1 + 96) == **(a2 + 96) && **(a1 + 104) == **(a2 + 104) && **(a1 + 112) == **(a2 + 112) && **(a1 + 120) == **(a2 + 120))
  {
    v4 = *(a1 + 128);
    v5 = *(a2 + 128);
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 == v8)
    {
      v10 = v6 >= 0 ? *(a1 + 128) : *v4;
      v11 = v9 >= 0 ? *(a2 + 128) : *v5;
      if (!memcmp(v10, v11, v7))
      {
        v12 = *(a1 + 136);
        v13 = *(a2 + 136);
        v15 = *v12;
        v14 = v12[1];
        v16 = *v13;
        if (v14 - *v12 == v13[1] - *v13)
        {
          if (v15 == v14)
          {
LABEL_37:
            if (**(a1 + 144) == **(a2 + 144))
            {
              return **(a1 + 152) == **(a2 + 152);
            }
          }

          else
          {
            while (1)
            {
              v17 = *(v15 + 23);
              if (v17 >= 0)
              {
                v18 = *(v15 + 23);
              }

              else
              {
                v18 = *(v15 + 8);
              }

              v19 = *(v16 + 23);
              v20 = v19;
              if ((v19 & 0x80u) != 0)
              {
                v19 = *(v16 + 8);
              }

              if (v18 != v19)
              {
                break;
              }

              v21 = v17 >= 0 ? v15 : *v15;
              v22 = v20 >= 0 ? v16 : *v16;
              if (memcmp(v21, v22, v18))
              {
                break;
              }

              v15 += 24;
              v16 += 24;
              if (v15 == v14)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_38ECE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  if (!v3 || ((v4 = *(a2 + 71), v4 >= 0) ? (v5 = *(a2 + 71)) : (v5 = *(a2 + 56)), !v5 || (v2 >= 0 ? (v6 = (a1 + 48)) : (v6 = *(a1 + 48)), v4 >= 0 ? (v7 = (a2 + 48)) : (v7 = *(a2 + 48)), v3 == v5 && (v8 = a1, v9 = a2, v10 = memcmp(v6, v7, v3), a2 = v9, v11 = v10, a1 = v8, !v11))))
  {
    v16 = *a1;
    v15 = *(a1 + 8);
    v17 = *a2;
    if ((v15 - *a1) == (*(a2 + 8) - *a2))
    {
      if (v16 == v15)
      {
LABEL_31:
        v21 = *(a2 + 96);
        if (*(a1 + 96) != v21)
        {
          return *(a1 + 96) < v21;
        }

        v22 = *(a1 + 152);
        v23 = *(a2 + 152);
        v24 = v22 < v23;
        if (v22 == v23)
        {
          v25 = *(a1 + 156);
          v26 = *(a2 + 156);
          v24 = v25 < v26;
          if (v25 == v26)
          {
            return *(a1 + 160) < *(a2 + 160);
          }
        }

        return v24;
      }

      while (1)
      {
        v19 = *v16;
        v18 = v16[1];
        v20 = *v17;
        if (v18 - *v16 != *(v17 + 8) - *v17)
        {
          break;
        }

        if (v19 != v18)
        {
          while (__PAIR64__(*(v19 + 2), *v19) == __PAIR64__(WORD2(*v20), *v20) && v19[6] == BYTE6(*v20))
          {
            v19 += 8;
            ++v20;
            if (v19 == v18)
            {
              goto LABEL_30;
            }
          }

          break;
        }

LABEL_30:
        v16 += 3;
        v17 += 24;
        if (v16 == v15)
        {
          goto LABEL_31;
        }
      }
    }

    return (sub_38EEFC(a1, a2) & 0x80u) != 0;
  }

  if (v5 >= v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  v13 = memcmp(v6, v7, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v3 >= v5)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_38EEFC(char ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v5 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  }

  if (v6 < 1)
  {
LABEL_23:
    if (v4 < v5)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *v2;
      v9 = *v3;
      v10 = (v2[1] - *v2) >> 3;
      v11 = (*(v3 + 8) - *v3) >> 3;
      v12 = v11 >= v10 ? (v2[1] - *v2) >> 3 : (*(v3 + 8) - *v3) >> 3;
      if (v12 >= 1)
      {
        break;
      }

LABEL_21:
      if (v10 != v11)
      {
        if (v10 < v11)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }

      v2 += 3;
      v3 += 24;
      if (++v7 == v6)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v13 = *v9;
      v14 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!v8[6])
      {
        ++v14;
      }

      if ((v13 & 0xFF000000000000) != 0)
      {
        v15 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
      }

      else
      {
        v15 = ((v13 >> 16) & 0xFFFF0000 | (v13 << 32)) + 1;
      }

      if (v14 < v15)
      {
        return 255;
      }

      v16 = (*v8 & 0xFF000000000000) != 0 ? (*v8 >> 16) & 0xFFFF0000 | (*v8 << 32) : ((*v8 >> 16) & 0xFFFF0000 | (*v8 << 32)) + 1;
      if (v15 < v16)
      {
        return 1;
      }

      v8 += 8;
      ++v9;
      if (!--v12)
      {
        goto LABEL_21;
      }
    }
  }
}

uint64_t sub_38F018@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_38F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_38F270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_38F434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_38F46C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_38F018(a1, &v9);
  sub_38F270(a1, &v4);
  sub_3632D4(a2, &v9);
  sub_3632D4(a2 + 64, &v4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_38F504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_38F538(uint64_t a1, char a2)
{
  if (((*(a1 + 24) >> a2) & 1) == 0 || (*(a1 + 96) & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  if (*(a1 + 312) == 1)
  {
    return *(a1 + 352) & 1;
  }

  return 1;
}

uint64_t sub_38F580(uint64_t a1)
{
  if ((*(a1 + 24) & 8) == 0 || (*(a1 + 96) & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  if (*(a1 + 312) == 1)
  {
    return *(a1 + 352) & 1;
  }

  return 1;
}

uint64_t sub_38F5C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0 || (*(a1 + 96) & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  if (*(a1 + 312) == 1)
  {
    return *(a1 + 352) & 1;
  }

  return 1;
}

uint64_t sub_38F608(uint64_t a1)
{
  if ((*(a1 + 24) & 4) == 0 || (*(a1 + 96) & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  if (*(a1 + 312) == 1)
  {
    return *(a1 + 352) & 1;
  }

  return 1;
}

uint64_t sub_38F720(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    v2 = *(a1 + 96);
    v3 = v2 > 0xF;
    v1 = 0x2013u >> v2;
    if (v3)
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

BOOL sub_38F744(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 232))
  {
    v1 = 228;
  }

  return *(a1 + v1) == 13;
}

BOOL sub_38F768(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 232))
  {
    v1 = 228;
  }

  return *(a1 + v1) == 15;
}

BOOL sub_38F7D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 152) > a2;
  *(a1 + 456) = v2;
  return v2;
}

uint64_t sub_38F7F8(uint64_t *a1)
{
  sub_38F46C(a1, &v16);
  v2 = sub_38FAAC(&v16);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v2 == 1)
  {
    return 0;
  }

  sub_38F46C(a1, &v16);
  v4 = sub_38FAAC(&v16);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v4 != 2)
  {
    return 1;
  }

  sub_38F018(a1, &v16);
  v5 = v17;
  if (v18 != v17)
  {
    if (((v18 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v20 != v19)
  {
    if (((v20 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = (v16 + 8);
  if (*(&v16 + 1) != -1 && v6 == *(8 * *(&v16 + 1)))
  {
    v7 = (8 * *(&v16 + 1) + 8);
    v8 = -*(&v16 + 1) - 2;
    v9 = v7;
    do
    {
      v10 = *v9++;
      v6 = v10;
      if (!v8)
      {
        break;
      }

      v11 = *v7++;
      --v8;
    }

    while (v11 == v6);
  }

  v12 = *v6;
  v13 = *(v6 + 2);
  v3 = *v16 != v12 || *(v16 + 4) != v13;
  if (v19)
  {
    operator delete(v19);
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v3;
}

void sub_38FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
    sub_334D18(&a9);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_38FAAC(__int128 *a1)
{
  v18 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v4 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = a1[4];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = *(a1 + 10);
  v5 = *(a1 + 11);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 13);
  v7 = *(a1 + 14);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_35EF30(&v18, &v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v9;
}

BOOL sub_38FD30(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  while (v3 != v2)
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = *v4;
    if (v5 - *v3 != v4[1] - *v4)
    {
      return 0;
    }

    for (; v6 != v5; v7 += 24)
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v10 = *v7;
      if ((v8 - *v6) != (*(v7 + 8) - *v7))
      {
        return 0;
      }

      if (v9 != v8)
      {
        while (*v9 == *v10 && v9[1] == v10[1] && v9[2] == v10[2])
        {
          v9 += 3;
          v10 += 3;
          if (v9 == v8)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      v6 += 24;
    }

    v3 += 3;
    v4 += 3;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v13 = *(a2 + 24);
  if (v11 - v12 != *(a2 + 32) - v13)
  {
    return 0;
  }

  if (v12 != v11)
  {
    while (__PAIR64__(*(v12 + 4), *v12) == __PAIR64__(WORD2(*v13), *v13) && *(v12 + 6) == BYTE6(*v13))
    {
      v12 += 8;
      ++v13;
      if (v12 == v11)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a2 + 48);
  if (v15 - v14 != *(a2 + 56) - v16)
  {
    return 0;
  }

  for (; v14 != v15; v16 += 6)
  {
    result = sub_58D9C(v14, v16);
    if (!result)
    {
      return result;
    }

    v14 += 48;
  }

  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a2 + 72);
  if (v21 - v20 != *(a2 + 80) - v22)
  {
    return 0;
  }

  for (; v20 != v21; v22 += 6)
  {
    result = sub_58D9C(v20, v22);
    if (!result)
    {
      return result;
    }

    v20 += 48;
  }

  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  v25 = *(a2 + 96);
  if (v24 - v23 != *(a2 + 104) - v25)
  {
    return 0;
  }

  if (v23 == v24)
  {
LABEL_30:
    if (*(a1 + 120) == *(a2 + 120))
    {
      return *(a1 + 124) == *(a2 + 124);
    }

    return 0;
  }

  while (1)
  {
    result = sub_58D9C(v23, v25);
    if (!result)
    {
      return result;
    }

    v23 += 48;
    v25 += 6;
    if (v23 == v24)
    {
      goto LABEL_30;
    }
  }
}

BOOL sub_38FFE0(uint64_t *a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = *(a1 + 168);
  if (v7 == 2)
  {
    v12 = a1[3];
    v13 = a1[4];
    if (v13 == v12)
    {
      return 0;
    }

    v14 = (v13 - v12) >> 3;
    v15 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
    if ((a2 & 0xFF000000000000) == 0)
    {
      ++v15;
    }

    do
    {
      v16 = v14 >> 1;
      v17 = &v12[2 * (v14 >> 1)];
      v18 = (*v17 << 32) | (*(v17 + 2) << 16);
      if (!*(v17 + 6))
      {
        ++v18;
      }

      v19 = v17 + 2;
      v14 += ~v16;
      if (v18 < v15)
      {
        v12 = v19;
      }

      else
      {
        v14 = v16;
      }
    }

    while (v14);
    if (v12 == v13)
    {
      return 0;
    }

    v20 = *v12;
    if ((v20 & 0xFF000000000000) != 0)
    {
      v21 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
    }

    else
    {
      v21 = ((v20 >> 16) & 0xFFFF0000 | (v20 << 32)) + 1;
    }

    return v15 >= v21;
  }

  else
  {
    if (v7 != 1)
    {
      return 0;
    }

    v8 = *a3;
    v9 = *(a3 + 8);
    if (*a3 == v9)
    {
      return 0;
    }

    v10 = *a1;
    v11 = a1[1];
    if (*a1 == v11)
    {
      return 0;
    }

LABEL_23:
    v23 = v8[1];
    LODWORD(a5) = *v8;
    a5 = *&a5;
    v24 = v10;
    while (1)
    {
      v25 = *v24;
      v26 = *(v24 + 8);
      if (*v24 != v26)
      {
        v27 = 0;
        do
        {
          v28 = v25[1];
          v29 = (*v25 + 12);
          if (*v25 != v28 && v29 != v28)
          {
            do
            {
              v31 = *(v29 - 2);
              v32 = v29[1];
              if (v31 < v23 != v32 < v23)
              {
                LODWORD(a6) = *v29;
                LODWORD(a7) = *(v29 - 3);
                a7 = *&a7;
                a6 = (v23 - v31) / (v32 - v31) * (*&a6 - a7) + a7;
                if (a6 < a5)
                {
                  v27 ^= 1u;
                }
              }

              v29 += 3;
            }

            while (v29 != v28);
          }

          v25 += 3;
        }

        while (v25 != v26);
        if (v27)
        {
          return 1;
        }
      }

      v24 += 24;
      if (v24 == v11)
      {
        result = 0;
        v8 += 3;
        if (v8 == v9)
        {
          return result;
        }

        goto LABEL_23;
      }
    }
  }
}

BOOL sub_39018C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4[0] = a1;
  v4[1] = a1 + 8;
  v4[2] = a1 + 56;
  v4[3] = a1 + 64;
  v4[4] = a1 + 88;
  v4[5] = a1 + 112;
  v4[6] = a1 + 136;
  v3[0] = a2;
  v3[1] = a2 + 8;
  v3[2] = a2 + 56;
  v3[3] = a2 + 64;
  v3[4] = a2 + 88;
  v3[5] = a2 + 112;
  v3[6] = a2 + 136;
  return sub_390204(v4, v3);
}

BOOL sub_390204(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (**a1 != **a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *v3;
  if ((v5 - *v2) != (*(v3 + 1) - *v3))
  {
    return 0;
  }

  if (v4 == v5)
  {
LABEL_6:
    v10 = *(v2 + 3);
    v11 = *(v2 + 4);
    v12 = *(v3 + 3);
    if (v11 - v10 == *(v3 + 4) - v12)
    {
      for (; v10 != v11; v12 += 6)
      {
        result = sub_58D9C(v10, v12);
        if (!result)
        {
          return result;
        }

        v10 += 48;
      }

      if (*a1[2] == *a2[2])
      {
        v13 = a1[3];
        v14 = a2[3];
        v15 = *v13;
        v16 = *(v13 + 1);
        v17 = *v14;
        if ((v16 - *v13) == (*(v14 + 1) - *v14))
        {
          for (; v15 != v16; v17 += 6)
          {
            result = sub_58D9C(v15, v17);
            if (!result)
            {
              return result;
            }

            v15 += 6;
          }

          v18 = a1[4];
          v19 = a2[4];
          v21 = *v18;
          v20 = *(v18 + 1);
          v22 = *v19;
          if (&v20[-*v18] == (*(v19 + 1) - *v19))
          {
            v23 = a1;
            v24 = a2;
            if (v21 == v20)
            {
LABEL_23:
              v28 = v23[5];
              v29 = v24[5];
              v30 = v28[23];
              if (v30 >= 0)
              {
                v31 = v28[23];
              }

              else
              {
                v31 = *(v28 + 1);
              }

              v32 = v29[23];
              v33 = v32;
              if ((v32 & 0x80u) != 0)
              {
                v32 = *(v29 + 1);
              }

              if (v31 == v32)
              {
                v34 = v30 >= 0 ? v28 : *v28;
                v35 = v33 >= 0 ? v29 : *v29;
                if (!memcmp(v34, v35, v31))
                {
                  v36 = a1[6];
                  v37 = a2[6];
                  if (*v36 == *v37 && v36[1] == v37[1] && *(v36 + 1) == *(v37 + 1) && *(v36 + 2) == *(v37 + 2))
                  {
                    return *(v36 + 3) == *(v37 + 3);
                  }
                }
              }
            }

            else
            {
              while (*v21 == *v22)
              {
                v25 = *(v21 + 1);
                v26 = *(v21 + 2);
                v27 = *(v22 + 1);
                if (v26 - v25 != *(v22 + 2) - v27)
                {
                  break;
                }

                for (; v25 != v26; v27 += 6)
                {
                  result = sub_58D9C(v25, v27);
                  if (!result)
                  {
                    return result;
                  }

                  v25 += 48;
                }

                v21 += 32;
                v22 += 32;
                v24 = a2;
                v23 = a1;
                if (v21 == v20)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  while (1)
  {
    result = sub_58D9C(v4, v6);
    if (!result)
    {
      return result;
    }

    v4 += 6;
    v6 += 6;
    if (v4 == v5)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_3904C0(uint64_t a1, char a2)
{
  if (*(a1 + 688) == 7)
  {
    return (*(a1 + 24) >> a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3904E4(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

void *sub_3904F0(void *result, uint64_t *a2, void *a3, void *a4)
{
  v4 = *a2;
  result[1] = 0;
  *result = v4;
  result[2] = 0;
  result[3] = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result[4] = *a4;
  return result;
}

void sub_390590(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3905AC(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v7 = a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v6 + 6) != *(v7 + 6) || v6[4] != v7[4])
  {
    return 0;
  }

  v8 = *(v6 + 63);
  if (v8 >= 0)
  {
    v9 = *(v6 + 63);
  }

  else
  {
    v9 = v6[6];
  }

  v10 = *(v7 + 63);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v7[6];
  }

  if (v9 != v10)
  {
    return 0;
  }

  if (v8 >= 0)
  {
    v12 = v6 + 5;
  }

  else
  {
    v12 = v6[5];
  }

  if (v11 >= 0)
  {
    v13 = v7 + 5;
  }

  else
  {
    v13 = v7[5];
  }

  return memcmp(v12, v13, v9) == 0;
}

uint64_t sub_3906BC(uint64_t *a1, uint64_t *a2)
{
  v4[0] = a1 + 4;
  v4[1] = a1 + 3;
  v4[2] = a1;
  v4[3] = a1 + 5;
  v3[0] = a2 + 4;
  v3[1] = a2 + 3;
  v3[2] = a2;
  v3[3] = a2 + 5;
  return (sub_390C74(v4, v3) >> 7) & 1;
}

BOOL sub_390710(uint64_t a1)
{
  if (*(a1 + 32) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    return *(a1 + 8) != 0;
  }

  else
  {
    return v2 != 0;
  }
}

uint64_t sub_39074C(uint64_t result, int a2, __int16 a3, char a4)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 6) = a4;
  return result;
}

BOOL sub_3907A8(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (*a2 == v3)
  {
    return *(a1 + 2) < *(a2 + 4);
  }

  return result;
}

uint64_t sub_3907D8(unsigned int *a1, uint64_t a2)
{
  v2 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32) | (*a2 >> 63) | (*a2 >> 61) & 2;
  if (((4 * a1[1]) | (*a1 << 32) | (a1[1] >> 31) | (a1[1] >> 29) & 2) < v2)
  {
    return 255;
  }

  if (v2 < ((*a1 >> 30) & 0xFFFFFFFCLL | (*a1 << 32) | (*a1 >> 63) | (*a1 >> 61) & 2uLL))
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = v4 == v5;
  if (v4 < v5)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = *(a1 + 9);
    v9 = *(a2 + 9);
    v10 = v8 == v9;
    v7 = v8 < v9 ? 0xFFFFFFFFLL : 1;
    if (v10)
    {
      v11 = (*(a2 + 12) >> 30) & 0xFFFFFFFCLL | (*(a2 + 12) << 32) | (*(a2 + 12) >> 63) | (*(a2 + 12) >> 61) & 2;
      if (((4 * a1[4]) | (a1[3] << 32) | (a1[4] >> 31) | (a1[4] >> 29) & 2) < v11)
      {
        return 255;
      }

      if (v11 < ((*(a1 + 3) >> 30) & 0xFFFFFFFCLL | (*(a1 + 3) << 32) | (*(a1 + 3) >> 63) | (*(a1 + 3) >> 61) & 2uLL))
      {
        return 1;
      }

      v12 = *(a1 + 3);
      v13 = *(a2 + 24);
      if (v12 < v13)
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v13 < v12;
      }

      if (!v7)
      {
        v14 = *(a1 + 4);
        v15 = *(a2 + 32);
        v7 = v14 < v15 ? 0xFFFFFFFFLL : v15 < v14;
        if (!v7)
        {
          v16 = *(a1 + 40);
          v17 = *(a2 + 40);
          v18 = v16 == v17;
          if (v16 < v17)
          {
            v7 = 0xFFFFFFFFLL;
          }

          else
          {
            v7 = 1;
          }

          if (v18)
          {
            v19 = *(a1 + 6);
            v20 = *(a2 + 48);
            if (v19 < v20)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v20 < v19;
            }
          }
        }
      }
    }
  }

  return v7;
}

BOOL sub_39096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_390B10(&v27, a2, a3))
  {
    v5 = *(a2 + 32);
    v6 = *(a3 + 32);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *v6;
    if ((v8 - *v5) == (*(v6 + 8) - *v6))
    {
      if (v7 == v8)
      {
LABEL_6:
        if (**(a2 + 40) == **(a3 + 40))
        {
          v10 = *(a2 + 48);
          v11 = *(a3 + 48);
          v12 = *(v10 + 23);
          if (v12 >= 0)
          {
            v13 = *(v10 + 23);
          }

          else
          {
            v13 = *(v10 + 8);
          }

          v14 = *(v11 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v11 + 8);
          }

          if (v13 == v14)
          {
            v16 = v12 >= 0 ? *(a2 + 48) : *v10;
            v17 = v15 >= 0 ? *(a3 + 48) : *v11;
            if (!memcmp(v16, v17, v13))
            {
              v18 = *(a2 + 56);
              v19 = *(a3 + 56);
              v20 = *(v18 + 23);
              if (v20 >= 0)
              {
                v21 = *(v18 + 23);
              }

              else
              {
                v21 = *(v18 + 8);
              }

              v22 = *(v19 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v19 + 8);
              }

              if (v21 == v22)
              {
                v24 = v20 >= 0 ? *(a2 + 56) : *v18;
                v25 = v23 >= 0 ? *(a3 + 56) : *v19;
                if (!memcmp(v24, v25, v21) && **(a2 + 64) == **(a3 + 64))
                {
                  return **(a2 + 72) == **(a3 + 72);
                }
              }
            }
          }
        }
      }

      else
      {
        while (sub_58D9C(v7, v9))
        {
          v7 += 6;
          v9 += 6;
          if (v7 == v8)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_390B10(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = **a2;
  v3 = *(*a2 + 8);
  v5 = **a3;
  if (v3 - v4 != (*a3)[1] - v5)
  {
    return 0;
  }

  for (; v4 != v3; v5 += 24)
  {
    v7 = *v4;
    v6 = *(v4 + 1);
    v8 = *v5;
    if (v6 - *v4 != *(v5 + 8) - *v5)
    {
      return 0;
    }

    if (v7 != v6)
    {
      while (__PAIR64__(*(v7 + 4), *v7) == __PAIR64__(WORD2(*v8), *v8) && *(v7 + 6) == BYTE6(*v8))
      {
        v7 += 8;
        ++v8;
        if (v7 == v6)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    v4 += 24;
  }

  if (**(a2 + 8) != *a3[1])
  {
    return 0;
  }

  v9 = *(a2 + 16);
  v10 = a3[2];
  if (*v9 != *v10 || v9[1] != *(v10 + 1) || v9[2] != *(v10 + 2))
  {
    return 0;
  }

  v11 = *(a2 + 24);
  v12 = a3[3];
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if (v15 < 0)
  {
    v15 = v12[1];
  }

  if (v14 != v15)
  {
    return 0;
  }

  if (v13 >= 0)
  {
    v17 = *(a2 + 24);
  }

  else
  {
    v17 = *v11;
  }

  if (v16 >= 0)
  {
    v18 = v12;
  }

  else
  {
    v18 = *v12;
  }

  return memcmp(v17, v18, v14) == 0;
}

uint64_t sub_390C74(uint64_t **a1, uint64_t **a2)
{
  v3 = **a1;
  v4 = **a2;
  if (v3 < v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == v4)
  {
    v6 = *a1[1];
    v7 = *a2[1];
    result = v6 < v7 ? 0xFFFFFFFFLL : v7 < v6;
    if (!result)
    {
      v8 = a1;
      v9 = a1[2];
      v11 = a2[2];
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = v9;
      }

      else
      {
        v13 = *v9;
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 23);
      }

      else
      {
        v14 = v9[1];
      }

      v15 = *(v11 + 23);
      if (v15 >= 0)
      {
        v16 = a2[2];
      }

      else
      {
        v16 = *v11;
      }

      if (v15 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = v11[1];
      }

      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v13, v16, v18);
      if (v19)
      {
        if ((v19 & 0x80000000) == 0)
        {
          return 1;
        }

        return 255;
      }

      if (v14 == v17)
      {
        v20 = v8[3];
        v21 = a2[3];
        v22 = *(v20 + 23);
        if (v22 >= 0)
        {
          v23 = v8[3];
        }

        else
        {
          v23 = *v20;
        }

        if (v22 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = v20[1];
        }

        v25 = *(v21 + 23);
        if (v25 >= 0)
        {
          v26 = v21;
        }

        else
        {
          v26 = *v21;
        }

        if (v25 >= 0)
        {
          v27 = *(v21 + 23);
        }

        else
        {
          v27 = v21[1];
        }

        if (v27 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = v27;
        }

        v29 = memcmp(v23, v26, v28);
        if (v29)
        {
          if ((v29 & 0x80000000) == 0)
          {
            return 1;
          }

          return 255;
        }

        if (v24 == v27)
        {
          return 0;
        }

        if (v24 < v27)
        {
          return 255;
        }
      }

      else if (v14 < v17)
      {
        return 255;
      }

      return 1;
    }
  }

  return result;
}

double sub_390E00(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

void sub_390E18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = (*a2 + *(a2 + 8));
  v64 = *a2;
  v8 = v64;
  v65 = v9;
  v66 = 0x2C700000000;
  *a4 = 0x8000000080000000;
  *(a4 + 8) = 0x7FFFFFFF;
  *(a4 + 12) = 0u;
  v10 = (a4 + 12);
  *(a4 + 28) = 0u;
  *(a4 + 44) = 0u;
  *(a4 + 60) = 0;
  v50 = v8;
  v51 = v9;
  v52.__locale_ = 0x2C700000000;
  if (!sub_32BB58(&v50))
  {
    *v10 = 0;
    return;
  }

  v11 = 0;
  do
  {
    while (LODWORD(v52.__locale_) != 8)
    {
      sub_32BC3C(&v50);
      if (!sub_32BB58(&v50))
      {
        goto LABEL_7;
      }
    }

    sub_32BC3C(&v50);
    ++v11;
  }

  while (sub_32BB58(&v50));
LABEL_7:
  *v10 = v11;
  if (v11)
  {
    v12 = sub_32BB58(&v64);
    if (v66 != 8 && v12)
    {
      do
      {
        sub_32BC3C(&v64);
        v14 = sub_32BB58(&v64);
      }

      while (v66 != 8 && v14);
    }

    v16 = sub_32BDF0(&v64, v65);
    v17 = v64;
    v18 = &v64[v16];
    v64 = v18;
    if (v18 > v65)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v61 = v17;
    v62 = v18;
    v63 = 0x2C700000000;
    while (sub_32BB58(&v61))
    {
      if (v63 == 1)
      {
        v21 = sub_32C014(&v61, v62);
        if (!(v21 >> 31))
        {
          *a4 = v21;
        }
      }

      else if (v63 == 2)
      {
        v20 = sub_32C014(&v61, v62);
        if (!(v20 >> 31))
        {
          *(a4 + 8) = 10 * v20;
        }
      }

      else
      {
        sub_32BC3C(&v61);
      }
    }

    v22 = *a4;
    if (*a4 == 0x7FFFFFFF)
    {
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v50);
        sub_4A5C(&v50, "Invalid start_time parsed in Forecast message.", 46);
        if ((v60 & 0x10) != 0)
        {
          v36 = v59;
          if (v59 < v56)
          {
            v59 = v56;
            v36 = v56;
          }

          v37 = &v55;
        }

        else
        {
          if ((v60 & 8) == 0)
          {
            v23 = 0;
            v49 = 0;
LABEL_91:
            *(&__p + v23) = 0;
            sub_7E854(&__p, 3u);
            if (v49 < 0)
            {
              operator delete(__p);
            }

            if (v58 < 0)
            {
              operator delete(v57);
            }

            std::locale::~locale(&v52);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_96;
          }

          v37 = v53;
          v36 = v54;
        }

        v38 = *v37;
        v23 = v36 - *v37;
        if (v23 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        v49 = v36 - *v37;
        if (!v23)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      goto LABEL_96;
    }

    v24 = *(a4 + 8);
    if (v24 == 0x7FFFFFFF)
    {
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v50);
        sub_4A5C(&v50, "Invalid duration_seconds parsed in Forecast message.", 52);
        if ((v60 & 0x10) != 0)
        {
          v39 = v59;
          if (v59 < v56)
          {
            v59 = v56;
            v39 = v56;
          }

          v40 = &v55;
        }

        else
        {
          if ((v60 & 8) == 0)
          {
            v23 = 0;
            v49 = 0;
            goto LABEL_91;
          }

          v40 = v53;
          v39 = v54;
        }

        v38 = *v40;
        v23 = v39 - *v40;
        if (v23 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        v49 = v39 - *v40;
        if (!v23)
        {
          goto LABEL_91;
        }

LABEL_90:
        memmove(&__p, v38, v23);
        goto LABEL_91;
      }

LABEL_96:
      *a4 = xmmword_2291180;
      v44 = *(a4 + 16);
      if (v44)
      {
        *(a4 + 24) = v44;
        operator delete(v44);
      }

      v45 = *(a4 + 40);
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      if (v45)
      {
        *(a4 + 48) = v45;
        operator delete(v45);
      }

      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      return;
    }

    LODWORD(v19) = *v10;
    v25 = v24 * v19;
    if (v25 >= 0.0)
    {
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_43;
      }

      v26 = (v25 + v25) + 1;
    }

    else
    {
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_43;
      }

      v26 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v25 = (v26 >> 1);
LABEL_43:
    if (v25 < 0)
    {
      v27 = -5;
    }

    else
    {
      v27 = 5;
    }

    v28 = v25 / 10 + v22 + (((103 * (v27 + v25 % 10)) >> 15) & 1) + ((103 * (v27 + v25 % 10)) >> 10);
    *(a4 + 4) = v28;
    if (v28 != 0x7FFFFFFF && v28 >= v22)
    {
      sub_39175C(a1, a2, a3, a4);
      return;
    }

    if (!sub_7E7E4(3u))
    {
      goto LABEL_96;
    }

    sub_19594F8(&v50);
    v30 = sub_4A5C(&v50, "Invalid forecast end time based on start_time (", 47);
    v31 = sub_258D4(v30);
    v32 = sub_4A5C(v31, ") and duration (", 16);
    LODWORD(v33) = *(a4 + 12);
    v34 = v33 * *(a4 + 8);
    if (v34 >= 0.0)
    {
      if (v34 < 4.50359963e15)
      {
        v35 = (v34 + v34) + 1;
        goto LABEL_77;
      }
    }

    else if (v34 > -4.50359963e15)
    {
      v35 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
LABEL_77:
      v34 = (v35 >> 1);
    }

    v41 = sub_72140(v32, v34);
    sub_4A5C(v41, ").", 2);
    if ((v60 & 0x10) != 0)
    {
      v42 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v42 = v56;
      }

      v43 = &v55;
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v23 = 0;
        v49 = 0;
        goto LABEL_91;
      }

      v43 = v53;
      v42 = v54;
    }

    v38 = *v43;
    v23 = v42 - *v43;
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    v49 = v42 - *v43;
    if (!v23)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }
}

void sub_391608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_334D18(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_334D18(v15);
  _Unwind_Resume(a1);
}

void sub_39175C(uint64_t a1, void (__cdecl ***a2)(std::ostringstream *__hidden this), uint64_t a3, uint64_t a4)
{
  sub_7E9A4(v199);
  sub_7E9A4(v198);
  *(a1 + 48) = *(a4 + 12);
  v8 = a2[1] + *a2;
  v170 = *a2;
  v171 = v8;
  v172.__locale_ = 0x2C700000000;
  if (!sub_32BB58(&v170))
  {
    goto LABEL_13;
  }

  while (LODWORD(v172.__locale_) != 8)
  {
    sub_32BC3C(&v170);
    if (!sub_32BB58(&v170))
    {
      goto LABEL_13;
    }
  }

  v9 = sub_32BDF0(&v170, v171);
  v10 = v170;
  v11 = v170 + v9;
  v170 = v11;
  if (v11 > v171)
  {
    goto LABEL_243;
  }

  v203 = v10;
  v204 = v11;
  v205 = 0x2C700000000;
  if (!sub_32BB58(&v203))
  {
    goto LABEL_13;
  }

  while (v205 != 3)
  {
    sub_32BC3C(&v203);
    if (!sub_32BB58(&v203))
    {
      goto LABEL_13;
    }
  }

  v12 = sub_32BDF0(&v203, v204);
  v13 = v203;
  v14 = &v203[v12];
  v203 = v14;
  if (v14 > v204)
  {
    goto LABEL_243;
  }

  v200 = v13;
  v201 = v14;
  v202 = 0x2C700000000;
  if (sub_32BB58(&v200))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (v202 == 2)
      {
        v15 = sub_32BDF0(&v200, v201);
      }

      else if (v202 == 1)
      {
        v16 = sub_32BDF0(&v200, v201);
      }

      else
      {
        sub_32BC3C(&v200);
      }
    }

    while (sub_32BB58(&v200));
    v18 = v15 << 32;
    v17 = v16;
  }

  else
  {
LABEL_13:
    v17 = 0;
    v18 = 0;
  }

  sub_39318C(a1, v18 | v17, HIDWORD(v18), a3, a4);
  *(a1 + 16) = sub_7EA60(v198);
  sub_7E974(v198);
  v19 = a2[1] + *a2;
  v170 = *a2;
  v171 = v19;
  v172.__locale_ = 0x2C700000000;
  if (sub_32BB58(&v170))
  {
    while (LODWORD(v172.__locale_) != 1)
    {
      sub_32BC3C(&v170);
      if (!sub_32BB58(&v170))
      {
        goto LABEL_28;
      }
    }

    v20 = sub_32BDF0(&v170, v171);
    v21 = v170;
    v22 = v170 + v20;
    v170 = v22;
    if (v22 > v171)
    {
      goto LABEL_243;
    }

    v203 = v21;
    v204 = v22;
    v205 = 0x2C700000000;
    if (sub_32BB58(&v203))
    {
      while (v205 != 2)
      {
        sub_32BC3C(&v203);
        if (!sub_32BB58(&v203))
        {
          goto LABEL_28;
        }
      }

      v120 = sub_32BDF0(&v203, v204);
      v121 = v120;
      v122 = v203;
      v203 += v120;
      if (v203 <= v204)
      {
        if (v120 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v197) = v120;
        if (v120)
        {
          memmove(&v195, v122, v120);
        }

        *(&v195 + v121) = 0;
        goto LABEL_29;
      }

LABEL_243:
      exception = __cxa_allocate_exception(0x40uLL);
      v148 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }
  }

LABEL_28:
  v195 = 0;
  v196 = 0;
  v197 = 0;
LABEL_29:
  v155 = a1;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v161 = a4;
  sub_39363C(&v192, *(a4 + 12));
  v23 = a2[1] + *a2;
  v189 = *a2;
  v190 = v23;
  v191 = 0x2C700000000;
  v24 = &v174 + 1;
  while (1)
  {
    while (1)
    {
LABEL_30:
      if (!sub_32BB58(&v189))
      {
LABEL_53:
        *(a1 + 24) = sub_7EA60(v198);
        sub_7E974(v198);
        v34 = a4;
        v35 = *(a4 + 24) - *(a4 + 16);
        v162 = (a4 + 40);
        if (*(a4 + 56) - *(a4 + 40) < v35)
        {
          if ((v35 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v36 = *(a4 + 16);
        v156 = *(a4 + 24);
        if (v36 != v156)
        {
          if (*(a4 + 12))
          {
            while (1)
            {
              v36[1] = *(v34 + 48) - *(v34 + 40);
              v164 = *(v34 + 12);
              if (v164)
              {
                break;
              }

LABEL_59:
              v36 += 2;
              if (v36 == v156)
              {
                goto LABEL_167;
              }
            }

            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v167 = v36;
            while (1)
            {
              v41 = v192;
              if (v38 >= (v193 - v192) >> 5)
              {
                sub_6FAB4();
              }

              v165 = v40;
              v42 = sub_57A90(*v36);
              v43 = sub_57A90(*v167);
              v44 = *v167 & ~(-1 << (v43 & 0xFE));
              v45 = sub_581D8(v44);
              v46 = sub_581D8(v44 >> 1);
              v49 = 0x7FFFFFFFu >> (v42 >> 1);
              v50 = 1 << -(v43 >> 1);
              if (v43 < 2)
              {
                v50 = -2;
              }

              v51 = v49 + v45 * v50;
              LODWORD(v52) = v49 + v46 * v50;
              if (v52 >= 0xFFFFFFFE)
              {
                v52 = 4294967294;
              }

              else
              {
                v52 = v52;
              }

              v170 = (v51 | (v52 << 32));
              LODWORD(v171) = 0x7FFFFFFF;
              v53 = sub_394BF0(v41 + v37, &v170, v47, v48) / 1000.0 + -273.15;
              if (v53 >= 0.0)
              {
                if (v53 < 4.50359963e15)
                {
                  v54 = (v53 + v53) + 1;
                  goto LABEL_74;
                }
              }

              else if (v53 > -4.50359963e15)
              {
                v54 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
LABEL_74:
                v53 = (v54 >> 1);
              }

              v55 = v53;
              if ((v53 - 61) > 0xFFFFFF68 || !sub_7E7E4(1u))
              {
                goto LABEL_96;
              }

              v180 = 0;
              v170 = v158;
              *(&v170 + *(v158 - 3)) = v157;
              v56 = (&v170 + *(v170 - 3));
              std::ios_base::init(v56, &v171);
              v56[1].__vftable = 0;
              v56[1].__fmtflags_ = -1;
              std::locale::locale(&v172);
              v174 = 0u;
              v175 = 0u;
              v173 = 0u;
              memset(&__p, 0, sizeof(__p));
              v178 = 16;
              p_p = &__p;
              std::string::append(&__p, 0x16uLL, 0);
              size = __p.__r_.__value_.__l.__size_;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              *(&v174 + 1) = &__p;
              *&v175 = &__p;
              *(&v175 + 1) = &__p + size;
              sub_4A5C(&v170, "Weather forecast data contains a temperature (", 46);
              v58 = std::ostream::operator<<();
              sub_4A5C(v58, " C) that is outside of the temperature range typically found on Earth [-90, 60].", 80);
              if ((v178 & 0x10) != 0)
              {
                v60 = p_p;
                v61 = &v174 + 1;
                if (p_p < v175)
                {
                  p_p = v175;
                  v60 = v175;
                  v61 = &v174 + 1;
                }

                goto LABEL_85;
              }

              if ((v178 & 8) != 0)
              {
                v60 = v174;
                v61 = &v173;
LABEL_85:
                v62 = *v61;
                v59 = v60 - *v61;
                if (v59 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v59 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v205) = v60 - *v61;
                if (v59)
                {
                  memmove(&v203, v62, v59);
                }

                goto LABEL_91;
              }

              v59 = 0;
              HIBYTE(v205) = 0;
LABEL_91:
              *(&v203 + v59) = 0;
              sub_7E854(&v203, 1u);
              v34 = v161;
              if (SHIBYTE(v205) < 0)
              {
                operator delete(v203);
              }

              v170 = v159;
              *(&v170 + *(v159 - 3)) = v160;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              std::locale::~locale(&v172);
              std::ostream::~ostream();
              std::ios::~ios();
              v39 = v39;
LABEL_96:
              v63 = v55 ^ 0xFFFFFF80;
              if (!v38)
              {
                v88 = *(v34 + 48);
                v87 = *(v34 + 56);
                if (v88 >= v87)
                {
                  v90 = *v162;
                  v91 = (v88 - *v162);
                  v92 = (v91 + 1);
                  if ((v91 + 1) < 0)
                  {
                    sub_1794();
                  }

                  v93 = v87 - v90;
                  if (2 * v93 > v92)
                  {
                    v92 = 2 * v93;
                  }

                  if (v93 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v94 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v94 = v92;
                  }

                  if (v94)
                  {
                    operator new();
                  }

                  v95 = v88 - *v162;
                  *v91 = v63;
                  v89 = v91 + 1;
                  memcpy(0, v90, v95);
                  *(v34 + 40) = 0;
                  *(v34 + 48) = v91 + 1;
                  *(v34 + 56) = 0;
                  if (v90)
                  {
                    operator delete(v90);
                  }
                }

                else
                {
                  *v88 = v55 ^ 0x80;
                  v89 = v88 + 1;
                }

                v40 = v165;
                goto LABEL_161;
              }

              if (v39 != (v55 ^ 0x80) || v165 > 6u)
              {
                v65 = v39;
                v66 = ((v55 ^ 0x80) - v39);
                if (v66 >= 0)
                {
                  v67 = v66;
                }

                else
                {
                  v67 = -v66;
                }

                if (v67 >= 0x10)
                {
                  v163 = v65;
                  if (sub_7E7E4(1u))
                  {
                    v180 = 0;
                    v170 = v158;
                    *(&v170 + *(v158 - 3)) = v157;
                    v68 = (&v170 + *(v170 - 3));
                    std::ios_base::init(v68, &v171);
                    v68[1].__vftable = 0;
                    v68[1].__fmtflags_ = -1;
                    std::locale::locale(&v172);
                    v174 = 0u;
                    v175 = 0u;
                    v173 = 0u;
                    memset(&__p, 0, sizeof(__p));
                    v178 = 16;
                    p_p = &__p;
                    std::string::append(&__p, 0x16uLL, 0);
                    v69 = __p.__r_.__value_.__l.__size_;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    }

                    *(&v174 + 1) = &__p;
                    *&v175 = &__p;
                    *(&v175 + 1) = &__p + v69;
                    v70 = sub_4A5C(&v170, "Temperature difference at ", 26);
                    v71 = sub_57A90(*v167);
                    v72 = sub_57A90(*v167);
                    v73 = *v167 & ~(-1 << (v72 & 0xFE));
                    v74 = sub_581D8(v73);
                    v75 = sub_581D8(v73 >> 1);
                    v77 = 0x7FFFFFFFu >> (v71 >> 1);
                    v78 = 1 << -(v72 >> 1);
                    if (v72 < 2)
                    {
                      v78 = -2;
                    }

                    v79 = v77 + v74 * v78;
                    LODWORD(v80) = v77 + v75 * v78;
                    if (v80 >= 0xFFFFFFFE)
                    {
                      v80 = 4294967294;
                    }

                    else
                    {
                      v80 = v80;
                    }

                    v203 = (v79 | (v80 << 32));
                    LODWORD(v204) = 0x7FFFFFFF;
                    v81 = sub_35820(v70, &v203, v76);
                    sub_4A5C(v81, " between previous (", 19);
                    v82 = std::ostream::operator<<();
                    sub_4A5C(v82, " C) and current (", 17);
                    v83 = std::ostream::operator<<();
                    v84 = sub_4A5C(v83, " C)", 3);
                    sub_4A5C(v84, " at forecast_hour ", 18);
                    v85 = std::ostream::operator<<();
                    sub_4A5C(v85, " exceeds the maximum supported 15 Kelvin.", 41);
                    if ((v178 & 0x10) != 0)
                    {
                      v96 = p_p;
                      v97 = &v174 + 1;
                      if (p_p < v175)
                      {
                        p_p = v175;
                        v96 = v175;
                        v97 = &v174 + 1;
                      }
                    }

                    else
                    {
                      if ((v178 & 8) == 0)
                      {
                        v86 = 0;
                        HIBYTE(v205) = 0;
                        goto LABEL_139;
                      }

                      v96 = v174;
                      v97 = &v173;
                    }

                    v98 = *v97;
                    v86 = v96 - *v97;
                    if (v86 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v86 >= 0x17)
                    {
                      operator new();
                    }

                    HIBYTE(v205) = v96 - *v97;
                    if (v86)
                    {
                      memmove(&v203, v98, v86);
                    }

LABEL_139:
                    *(&v203 + v86) = 0;
                    sub_7E854(&v203, 1u);
                    v34 = v161;
                    if (SHIBYTE(v205) < 0)
                    {
                      operator delete(v203);
                    }

                    v170 = v159;
                    *(&v170 + *(v159 - 3)) = v160;
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::locale::~locale(&v172);
                    std::ostream::~ostream();
                    std::ios::~ios();
                  }

                  if (v66 < 0)
                  {
                    v99 = -15;
                  }

                  else
                  {
                    v99 = 15;
                  }

                  v63 = (v99 + v163);
                }

                v100 = sub_394BD0();
                v102 = *(v34 + 48);
                v101 = *(v34 + 56);
                if (v102 >= v101)
                {
                  v103 = *v162;
                  v104 = v102 - *v162 + 1;
                  if (v104 < 0)
                  {
                    sub_1794();
                  }

                  v105 = v101 - v103;
                  if (2 * v105 > v104)
                  {
                    v104 = 2 * v105;
                  }

                  if (v105 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v106 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v106 = v104;
                  }

                  if (v106)
                  {
                    operator new();
                  }

                  v107 = (v102 - *v162);
                  *v107 = v100;
                  v89 = v107 + 1;
                  memcpy(0, v103, v107);
                  *(v34 + 40) = 0;
                  *(v34 + 48) = v89;
                  *(v34 + 56) = 0;
                  if (v103)
                  {
                    operator delete(v103);
                  }
                }

                else
                {
                  *v102 = v100;
                  v89 = v102 + 1;
                }

                v40 = 0;
LABEL_161:
                *(v34 + 48) = v89;
                goto LABEL_62;
              }

              v40 = v165 + 1;
              v63 = v39;
LABEL_62:
              ++v38;
              v37 += 32;
              v39 = v63;
              v36 = v167;
              if (v164 == v38)
              {
                goto LABEL_59;
              }
            }
          }

          v108 = *(a4 + 48) - *(a4 + 40);
          v109 = v156 - v36 - 8;
          if (v109 < 8)
          {
            goto LABEL_251;
          }

          v110 = (v109 >> 3) + 1;
          v111 = &v36[2 * (v110 & 0x3FFFFFFFFFFFFFFELL)];
          v112 = (v36 + 3);
          v113 = v110 & 0x3FFFFFFFFFFFFFFELL;
          do
          {
            *(v112 - 2) = v108;
            *v112 = v108;
            v112 += 4;
            v113 -= 2;
          }

          while (v113);
          v36 = v111;
          if (v110 != (v110 & 0x3FFFFFFFFFFFFFFELL))
          {
LABEL_251:
            do
            {
              v36[1] = v108;
              v36 += 2;
            }

            while (v36 != v156);
          }
        }

LABEL_167:
        sub_39375C(v34 + 16);
        sub_393854(v162);
        v155[5] = *(v34 + 32) + *(v34 + 56) - (*(v34 + 16) + *(v34 + 40)) + 64;
        v155[4] = sub_7EA60(v198);
        v155[1] = sub_7EA60(v199);
        goto LABEL_168;
      }

      while (v191 != 8)
      {
        sub_32BC3C(&v189);
        if (!sub_32BB58(&v189))
        {
          goto LABEL_53;
        }
      }

      v25 = sub_32BDF0(&v189, v190);
      v26 = v189;
      v27 = &v189[v25];
      v189 = v27;
      if (v27 > v190)
      {
        v145 = __cxa_allocate_exception(0x40uLL);
        v146 = sub_2D390(v145, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v186 = v26;
      v187 = v27;
      v188 = 0x2C700000000;
      if (sub_32BB58(&v186))
      {
        while (v188 != 3)
        {
          sub_32BC3C(&v186);
          if (!sub_32BB58(&v186))
          {
            goto LABEL_30;
          }
        }

        v28 = sub_32BDF0(&v186, v187);
        v29 = v186;
        v30 = &v186[v28];
        v186 = v30;
        if (v30 > v187)
        {
          v149 = __cxa_allocate_exception(0x40uLL);
          v150 = sub_2D390(v149, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v183 = v29;
        v184 = v30;
        v185 = 0x2C700000000;
        if (sub_32BB58(&v183))
        {
          break;
        }
      }
    }

    while (v185 != 3)
    {
      sub_32BC3C(&v183);
      if (!sub_32BB58(&v183))
      {
        goto LABEL_30;
      }
    }

    v166 = v24;
    v31 = sub_32BDF0(&v183, v184);
    v32 = v31;
    v33 = v183;
    v183 += v31;
    if (v183 > v184)
    {
      v151 = __cxa_allocate_exception(0x40uLL);
      v152 = sub_2D390(v151, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v182 = v31;
    if (v31)
    {
      memmove(&__dst, v33, v31);
    }

    *(&__dst + v32) = 0;
    v24 = v166;
    if ((sub_394BD0() & 1) == 0)
    {
      break;
    }

    if (v182 < 0)
    {
      operator delete(__dst);
    }
  }

  v123 = a4;
  if (!sub_7E7E4(3u))
  {
    goto LABEL_228;
  }

  sub_19594F8(&v170);
  v124 = sub_4A5C(&v170, "Could not parse the temperature data from feed: ", 49);
  if (v197 >= 0)
  {
    v125 = &v195;
  }

  else
  {
    v125 = v195;
  }

  if (v197 >= 0)
  {
    v126 = HIBYTE(v197);
  }

  else
  {
    v126 = v196;
  }

  v127 = sub_4A5C(v124, v125, v126);
  sub_4A5C(v127, ". Data length: ", 16);
  v128 = std::ostream::operator<<();
  v129 = sub_4A5C(v128, ", snapshot_id: ", 16);
  v130 = a2[1] + *a2;
  v203 = *a2;
  v204 = v130;
  v205 = 0x2C700000000;
  v131 = v166;
  if (!sub_32BB58(&v203))
  {
    goto LABEL_202;
  }

  while (v205 != 1)
  {
    sub_32BC3C(&v203);
    if (!sub_32BB58(&v203))
    {
      goto LABEL_202;
    }
  }

  v132 = sub_32BDF0(&v203, v204);
  v133 = v203;
  v134 = &v203[v132];
  v203 = v134;
  if (v134 > v204)
  {
LABEL_248:
    v153 = __cxa_allocate_exception(0x40uLL);
    v154 = sub_2D390(v153, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
  }

  v200 = v133;
  v201 = v134;
  v202 = 0x2C700000000;
  v131 = v166;
  if (!sub_32BB58(&v200))
  {
LABEL_202:
    v135 = 0;
    v169 = 0;
    LOBYTE(v168[0]) = 0;
    goto LABEL_203;
  }

  while (v202 != 6)
  {
    sub_32BC3C(&v200);
    if (!sub_32BB58(&v200))
    {
      goto LABEL_202;
    }
  }

  v142 = sub_32BDF0(&v200, v201);
  v143 = v142;
  v144 = v200;
  v200 += v142;
  if (v200 > v201)
  {
    goto LABEL_248;
  }

  if (v142 >= 0x17)
  {
    operator new();
  }

  v169 = v142;
  if (v142)
  {
    memmove(v168, v144, v142);
  }

  *(v168 + v143) = 0;
  v135 = v169;
  v123 = a4;
  v131 = v166;
LABEL_203:
  if ((v135 & 0x80u) == 0)
  {
    v136 = v168;
  }

  else
  {
    v136 = v168[0];
  }

  if ((v135 & 0x80u) == 0)
  {
    v137 = v135;
  }

  else
  {
    v137 = v168[1];
  }

  v138 = sub_4A5C(v129, v136, v137);
  sub_4A5C(v138, "", 1);
  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if ((v178 & 0x10) != 0)
  {
    v140 = p_p;
    if (p_p < v175)
    {
      p_p = v175;
      v140 = v175;
    }
  }

  else
  {
    if ((v178 & 8) == 0)
    {
      v139 = 0;
      HIBYTE(v205) = 0;
      goto LABEL_223;
    }

    v140 = v174;
    v131 = &v173;
  }

  v141 = *v131;
  v139 = v140 - *v131;
  if (v139 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v139 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v205) = v139;
  if (v139)
  {
    memmove(&v203, v141, v139);
  }

LABEL_223:
  *(&v203 + v139) = 0;
  sub_7E854(&v203, 3u);
  if (SHIBYTE(v205) < 0)
  {
    operator delete(v203);
  }

  v170 = v159;
  *(&v170 + *(v159 - 3)) = v160;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::locale::~locale(&v172);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_228:
  *(v123 + 24) = *(v123 + 16);
  *v123 = 0x7FFFFFFF;
  if (v182 < 0)
  {
    operator delete(__dst);
  }

LABEL_168:
  v114 = v192;
  if (v192)
  {
    v115 = v193;
    v116 = v192;
    if (v193 != v192)
    {
      v117 = v193;
      do
      {
        v119 = *(v117 - 4);
        v117 -= 32;
        v118 = v119;
        if (v119)
        {
          *(v115 - 3) = v118;
          operator delete(v118);
        }

        v115 = v117;
      }

      while (v117 != v114);
      v116 = v192;
    }

    v193 = v114;
    operator delete(v116);
  }

  if (SHIBYTE(v197) < 0)
  {
    operator delete(v195);
  }
}

void sub_392F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1959728(&a33);
  if (a71 < 0)
  {
    operator delete(__p);
    sub_39393C((v71 - 248));
    if (*(v71 - 201) < 0)
    {
LABEL_5:
      operator delete(*(v71 - 224));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_39393C((v71 - 248));
    if (*(v71 - 201) < 0)
    {
      goto LABEL_5;
    }
  }

  _Unwind_Resume(a1);
}

__n128 sub_393174@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  *(a2 + 32) = result;
  return result;
}

void sub_39318C(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  v9 = vcvtpd_u64_f64(log2(v8));
  v10 = *(a4 + 16);
  if (v10 != *(a4 + 24) && v9 == sub_57A90(*v10) >> 1)
  {
    if (a5 != a4)
    {
      sub_31F64((a5 + 16), *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 3);
    }

    v11 = *(a4 + 48) - *(a4 + 40);
    if (*(a5 + 56) - *(a5 + 40) < v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    return;
  }

  sub_7E9A4(v49);
  sub_2D5400(*a1);
  v12 = v47;
  if (v47 != v48)
  {
    v13 = sub_57A90(*v47) >> 1;
    if (v13 >= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v13;
    }

    *v44 = 0u;
    *__p = 0u;
    v46 = 1.0;
    v15 = (((v48 - v47) >> 2) >> 3);
    prime = v15;
    if (v15 == 1)
    {
      prime = 2;
LABEL_31:
      sub_B07C(v44, prime);
LABEL_32:
      v22 = v47;
      v23 = v48;
      if (v47 != v48)
      {
        v24 = 2 * v14;
        do
        {
          v43 = *v22 >> ((sub_57A90(*v22) - v24) & 0xFE);
          sub_3939B4(v44, &v43);
          ++v22;
        }

        while (v22 != v23);
      }

      if (__p[1] > ((*(a5 + 32) - *(a5 + 16)) >> 3))
      {
        if (!(__p[1] >> 61))
        {
          operator new();
        }

        sub_1794();
      }

      v25 = __p[0];
      v26 = *(a5 + 24);
      if (__p[0])
      {
        do
        {
          v27 = *(a5 + 32);
          if (v26 < v27)
          {
            v26->i64[0] = *(v25 + 4);
            v26 = (v26 + 8);
          }

          else
          {
            v28 = *(a5 + 16);
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              sub_1794();
            }

            v32 = v27 - v28;
            if (v32 >> 2 > v31)
            {
              v31 = v32 >> 2;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = v30;
            v35 = (8 * v30);
            *v35 = *(v25 + 4);
            v26 = (8 * v30 + 8);
            v36 = &v35[-v34];
            memcpy(v36, v28, v29);
            *(a5 + 16) = v36;
            *(a5 + 24) = v26;
            *(a5 + 32) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          *(a5 + 24) = v26;
          v25 = *v25;
        }

        while (v25);
      }

      v37 = *(a5 + 16);
      v38 = 126 - 2 * __clz((v26 - v37) >> 3);
      if (v26 == v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      sub_393CEC(v37, v26, v39, 1);
      v40 = __p[0];
      if (__p[0])
      {
        do
        {
          v41 = *v40;
          operator delete(v40);
          v40 = v41;
        }

        while (v41);
      }

      v42 = v44[0];
      v44[0] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v12 = v47;
      goto LABEL_62;
    }

    if ((prime & (v15 - 1)) != 0)
    {
      prime = std::__next_prime(v15);
      v17 = v44[1];
      v18 = prime >= v44[1];
      if (prime > v44[1])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = 0;
      v18 = 1;
      if (prime)
      {
        goto LABEL_31;
      }
    }

    if (v18)
    {
      goto LABEL_32;
    }

    v19 = vcvtps_u32_f32(__p[1] / v46);
    if (v17 < 3 || (v20 = vcnt_s8(v17), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
    {
      v19 = std::__next_prime(v19);
    }

    else
    {
      v21 = 1 << -__clz(v19 - 1);
      if (v19 >= 2)
      {
        v19 = v21;
      }
    }

    if (prime <= v19)
    {
      prime = v19;
    }

    if (prime >= v17)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_62:
  if (v12)
  {
    v48 = v12;
    operator delete(v12);
  }
}

void sub_393604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_39363C(void *result, unint64_t a2)
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

void sub_39375C(uint64_t a1)
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

void sub_393854(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = &v4[v2 - v7];
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void **sub_39393C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 4);
        v5 -= 32;
        v6 = v7;
        if (v7)
        {
          *(v3 - 3) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_3939B4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

int8x16_t *sub_393CEC(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v68 = v8->u32[2];
          v69 = a2[-1].u32[2];
          if (v68 >= v8->i32[0])
          {
            if (v69 < v68)
            {
              v112 = v8->i64[1];
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v112;
              if (v8->i32[2] < v8->i32[0])
              {
                *v8 = vextq_s8(*v8, *v8, 8uLL);
              }
            }

            return result;
          }

          v67 = v8->i64[0];
          if (v69 >= v68)
          {
            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v67;
            if (a2[-1].i32[2] < v67)
            {
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v67;
            }

            return result;
          }

LABEL_114:
          v8->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v67;
          return result;
        case 4:
          v70 = v8->u32[2];
          v71 = v8->i32[0];
          LODWORD(v72) = v8[1].i32[0];
          if (v70 >= v8->i32[0])
          {
            if (v72 < v70)
            {
              v72 = v8->i64[1];
              v113 = v8[1].i64[0];
              v8->i64[1] = v113;
              v8[1].i64[0] = v72;
              if (v71 > v113)
              {
                v114 = v8->i64[0];
                v8->i64[0] = v113;
                v8->i64[1] = v114;
              }
            }
          }

          else
          {
            v73 = v8->i64[0];
            if (v72 < v70)
            {
              v8->i64[0] = v8[1].i64[0];
              goto LABEL_193;
            }

            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v73;
            if (v72 < v73)
            {
              v8->i64[1] = v8[1].i64[0];
LABEL_193:
              v8[1].i64[0] = v73;
              LODWORD(v72) = v73;
            }
          }

          if (a2[-1].i32[2] < v72)
          {
            v120 = v8[1].i64[0];
            v8[1].i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v120;
            if (v8[1].i32[0] < v8->i32[2])
            {
              v122 = v8->i64[1];
              v121 = v8[1].i64[0];
              v8->i64[1] = v121;
              v8[1].i64[0] = v122;
              if (v8->i32[0] > v121)
              {
                v123 = v8->i64[0];
                v8->i64[0] = v121;
                v8->i64[1] = v123;
              }
            }
          }

          return result;
        case 5:

          return sub_394740(v8->i64, &v8->u32[2], &v8[1], &v8[1].i64[1], &a2[-1].i64[1]);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[2] >= v8->i32[0])
        {
          return result;
        }

        v67 = v8->i64[0];
        goto LABEL_114;
      }
    }

    if (v9 <= 23)
    {
      v74 = &v8->u64[1];
      v76 = v8 == a2 || v74 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v76)
        {
          do
          {
            v115 = v7->u32[2];
            v116 = v7->i32[0];
            v7 = v74;
            if (v115 < v116)
            {
              v117 = v74->i64[0];
              do
              {
                v118 = v74;
                v119 = v74[-1].i64[1];
                v74 = (v74 - 8);
                *v118 = v119;
              }

              while (*(v118 - 4) > v117);
              v74->i64[0] = v117;
            }

            v74 = &v7->u64[1];
          }

          while (&v7->u64[1] != a2);
        }

        return result;
      }

      if (v76)
      {
        return result;
      }

      v77 = 0;
      v78 = v8;
      while (1)
      {
        v80 = v78->u32[2];
        v81 = v78->i32[0];
        v78 = v74;
        if (v80 < v81)
        {
          v82 = v74->i64[0];
          v83 = v77;
          do
          {
            *(&v8->i64[1] + v83) = *(v8->i64 + v83);
            if (!v83)
            {
              v79 = v8;
              goto LABEL_129;
            }

            v84 = *(&v8->u32[-2] + v83);
            v83 -= 8;
          }

          while (v84 > v82);
          v79 = (&v8->i64[1] + v83);
LABEL_129:
          *v79 = v82;
        }

        v74 = &v78->u64[1];
        v77 += 8;
        if (&v78->u64[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = &v8->i32[2 * (v9 >> 1)];
    v11 = v10;
    v12 = a2[-1].u32[2];
    if (v9 < 0x81)
    {
      v15 = v8->i32[0];
      if (v8->i32[0] < *v11)
      {
        v16 = *v11;
        if (v12 < v15)
        {
          *v11 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v11 = v8->i64[0];
        v8->i64[0] = v16;
        if (a2[-1].i32[2] < v16)
        {
          v8->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      v19 = v8->i64[0];
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v19;
      if (v8->i32[0] >= *v11)
      {
        goto LABEL_38;
      }

      v20 = *v11;
      *v11 = v8->i64[0];
      v8->i64[0] = v20;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v13 = *v10;
    if (*v10 >= v8->i32[0])
    {
      if (v12 < v13)
      {
        v17 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (*v10 < v8->i32[0])
        {
          v18 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v18;
        }
      }
    }

    else
    {
      v14 = v8->i64[0];
      if (v12 >= v13)
      {
        v8->i64[0] = *v10;
        *v10 = v14;
        if (a2[-1].i32[2] >= v14)
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i64[1];
      }

      else
      {
        v8->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v14;
    }

LABEL_29:
    v21 = (v10 - 2);
    v22 = *(v10 - 2);
    v23 = a2[-1].u32[0];
    if (v22 >= v8->i32[2])
    {
      if (v23 < v22)
      {
        v25 = *v21;
        *v21 = a2[-1].i64[0];
        a2[-1].i64[0] = v25;
        if (*v21 < v8->i32[2])
        {
          v26 = v8->i64[1];
          v8->i64[1] = *v21;
          *v21 = v26;
        }
      }
    }

    else
    {
      v24 = v8->i64[1];
      if (v23 >= v22)
      {
        v8->i64[1] = *v21;
        *v21 = v24;
        if (a2[-1].i32[0] >= v24)
        {
          goto LABEL_43;
        }

        *v21 = a2[-1].i64[0];
      }

      else
      {
        v8->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v24;
    }

LABEL_43:
    v30 = v10[2];
    v28 = (v10 + 2);
    v29 = v30;
    v31 = a2[-2].u32[2];
    if (v30 >= v8[1].i32[0])
    {
      if (v31 < v29)
      {
        v33 = *v28;
        *v28 = a2[-2].i64[1];
        a2[-2].i64[1] = v33;
        if (*v28 < v8[1].i32[0])
        {
          v34 = v8[1].i64[0];
          v8[1].i64[0] = *v28;
          *v28 = v34;
        }
      }

      goto LABEL_52;
    }

    v32 = v8[1].i64[0];
    if (v31 < v29)
    {
      v8[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v32;
      goto LABEL_52;
    }

    v8[1].i64[0] = *v28;
    *v28 = v32;
    if (a2[-2].i32[2] < v32)
    {
      *v28 = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v35 = *v11;
    v36 = *v21;
    v37 = *v28;
    if (*v11 >= *v21)
    {
      v38 = *v11;
      if (v37 >= v35)
      {
        goto LABEL_62;
      }

      v40 = *v28;
      *v11 = *v28;
      *v28 = v38;
      if (v36 <= v40)
      {
        v58 = v8->i64[0];
        v8->i64[0] = v40;
        *v11 = v58;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v41 = *v21;
        *v21 = v40;
        *v11 = v41;
        v42 = v8->i64[0];
        v8->i64[0] = v41;
        *v11 = v42;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v27 = v8->i64[0];
      if (v8[-1].i32[2] < v8->i32[0])
      {
        goto LABEL_64;
      }

      if (a2[-1].i32[2] <= v27)
      {
        v60 = &v8->u64[1];
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v60 = (v60 + 8);
        }

        while (v8->i32[0] <= v27);
      }

      else
      {
        do
        {
          v59 = v8->u32[2];
          v8 = (v8 + 8);
        }

        while (v59 <= v27);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v61 = a2;
        do
        {
          v62 = v61[-1].u32[2];
          v61 = (v61 - 8);
        }

        while (v62 > v27);
      }

      while (v8 < v61)
      {
        v63 = v8->i64[0];
        v8->i64[0] = v61->i64[0];
        v61->i64[0] = v63;
        do
        {
          v64 = v8->u32[2];
          v8 = (v8 + 8);
        }

        while (v64 <= v27);
        do
        {
          v65 = v61[-1].u32[2];
          v61 = (v61 - 8);
        }

        while (v65 > v27);
      }

      v66 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v66;
      }

      a4 = 0;
      *v66 = v27;
    }

    else
    {
      v38 = *v21;
      if (v37 >= v35)
      {
        *v21 = *v11;
        *v11 = v38;
        if (v37 < v38)
        {
          v43 = *v28;
          *v11 = *v28;
          *v28 = v38;
          v38 = v43;
        }

LABEL_62:
        v44 = v8->i64[0];
        v8->i64[0] = v38;
        *v11 = v44;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v21 = *v28;
      *v28 = v38;
      v39 = v8->i64[0];
      v8->i64[0] = *v11;
      *v11 = v39;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v27 = v8->i64[0];
LABEL_64:
      v45 = 0;
      do
      {
        v46 = v8->u32[v45 + 2];
        v45 += 2;
      }

      while (v46 < v27);
      v47 = &v8->i8[v45 * 4];
      v48 = a2;
      if (v45 == 2)
      {
        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = v48[-1].u32[2];
          v48 = (v48 - 8);
        }

        while (v50 >= v27);
      }

      else
      {
        do
        {
          v49 = v48[-1].u32[2];
          v48 = (v48 - 8);
        }

        while (v49 >= v27);
      }

      if (v47 >= v48)
      {
        v56 = v47 - 8;
        if (v47 - 8 == v8)
        {
          goto LABEL_82;
        }

LABEL_81:
        v8->i64[0] = *v56;
        goto LABEL_82;
      }

      v51 = &v8->i8[v45 * 4];
      v52 = v48;
      do
      {
        v53 = *v51;
        *v51 = *v52;
        *v52 = v53;
        do
        {
          v54 = *(v51 + 2);
          v51 += 8;
        }

        while (v54 < v27);
        do
        {
          v55 = *(v52 - 2);
          v52 -= 8;
        }

        while (v55 >= v27);
      }

      while (v51 < v52);
      v56 = v51 - 8;
      if (v51 - 8 != v8)
      {
        goto LABEL_81;
      }

LABEL_82:
      *v56 = v27;
      if (v47 < v48)
      {
        goto LABEL_85;
      }

      v57 = sub_3948B4(v8, v56);
      v8 = (v56 + 8);
      result = sub_3948B4((v56 + 8), a2);
      if (result)
      {
        a2 = v56;
        if (v57)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v57)
      {
LABEL_85:
        result = sub_393CEC(v7, v56, a3, a4 & 1);
        a4 = 0;
        v8 = (v56 + 8);
      }
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v85 = (v9 - 2) >> 1;
  v86 = v85;
  while (2)
  {
    if (v85 >= v86)
    {
      v88 = (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
      v89 = &v8->i8[8 * v88];
      if (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
      {
        v92 = &v8->i64[v86];
        if (*v89 >= *v92)
        {
LABEL_149:
          v93 = *v92;
          while (1)
          {
            v95 = v92;
            v92 = v89;
            *v95 = *v89;
            if (v85 < v88)
            {
              break;
            }

            v96 = (2 * v88) | 1;
            v89 = &v8->i8[8 * v96];
            v88 = 2 * v88 + 2;
            if (v88 < v9)
            {
              v94 = *v89;
              result = *(v89 + 2);
              if (*v89 <= result)
              {
                v94 = *(v89 + 2);
              }

              if (*v89 >= result)
              {
                v88 = v96;
              }

              else
              {
                v89 += 8;
              }

              if (v94 < v93)
              {
                break;
              }
            }

            else
            {
              v88 = v96;
              if (*v89 < v93)
              {
                break;
              }
            }
          }

          *v92 = v93;
        }
      }

      else
      {
        v90 = *v89;
        v91 = *(v89 + 2);
        if (*v89 <= v91)
        {
          v90 = *(v89 + 2);
        }

        if (*v89 < v91)
        {
          v89 += 8;
          v88 = 2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v92 = &v8->i64[v86];
        if (v90 >= *v92)
        {
          goto LABEL_149;
        }
      }
    }

    v87 = v86-- <= 0;
    if (!v87)
    {
      continue;
    }

    break;
  }

  do
  {
    v97 = 0;
    v98 = v8->i64[0];
    v99 = (v9 - 2) >> 1;
    v100 = v8;
    do
    {
      while (1)
      {
        v104 = &v100[v97];
        v103 = (v104 + 1);
        v105 = (2 * v97) | 1;
        v97 = 2 * v97 + 2;
        if (v97 < v9)
        {
          break;
        }

        v97 = v105;
        *v100 = v103->i64[0];
        v100 = v104 + 1;
        if (v105 > v99)
        {
          goto LABEL_169;
        }
      }

      v102 = *(v104 + 4);
      v101 = (v104 + 2);
      if (v101[-1].i32[2] >= v102)
      {
        v97 = v105;
      }

      else
      {
        v103 = v101;
      }

      *v100 = v103->i64[0];
      v100 = v103;
    }

    while (v97 <= v99);
LABEL_169:
    a2 = (a2 - 8);
    if (v103 == a2)
    {
      v103->i64[0] = v98;
    }

    else
    {
      v103->i64[0] = a2->i64[0];
      a2->i64[0] = v98;
      v106 = (v103 - v8 + 8) >> 3;
      v87 = v106 < 2;
      v107 = v106 - 2;
      if (!v87)
      {
        v108 = v107 >> 1;
        v109 = &v8->i64[v108];
        if (*v109 < v103->i32[0])
        {
          v110 = v103->i64[0];
          do
          {
            v111 = v103;
            v103 = v109;
            *v111 = *v109;
            if (!v108)
            {
              break;
            }

            v108 = (v108 - 1) >> 1;
            v109 = &v8->i64[v108];
          }

          while (*v109 < v110);
          v103->i64[0] = v110;
        }
      }
    }

    v87 = v9-- <= 2;
  }

  while (!v87);
  return result;
}

uint64_t *sub_394740(uint64_t *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5)
{
  v5 = *a2;
  LODWORD(v6) = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 < *result)
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v7;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result)
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  if (*a5 < *a4)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    if (*a4 < *a3)
    {
      v12 = *a3;
      *a3 = *a4;
      *a4 = v12;
      if (*a3 < *a2)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
        if (*a2 < *result)
        {
          v14 = *result;
          *result = *a2;
          *a2 = v14;
        }
      }
    }
  }

  return result;
}

BOOL sub_3948B4(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1->u32[2];
      v6 = a2[-1].u32[2];
      if (v5 >= a1->i32[0])
      {
        if (v6 >= v5)
        {
          return 1;
        }

        v17 = a1->i64[1];
        a1->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (a1->i32[2] >= a1->i32[0])
        {
          return 1;
        }

        *a1 = vextq_s8(*a1, *a1, 8uLL);
        return 1;
      }

      else
      {
        v7 = a1->i64[0];
        if (v6 >= v5)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v7;
          if (a2[-1].i32[2] >= v7)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }

        else
        {
          a1->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_394740(a1->i64, &a1->u32[2], &a1[1], &a1[1].i64[1], &a2[-1].i64[1]);
        return 1;
      }

LABEL_14:
      v8 = a1 + 1;
      v9 = a1[1].u32[0];
      v10 = a1->u32[2];
      v11 = a1->i32[0];
      if (v10 >= a1->i32[0])
      {
        if (v9 < v10)
        {
          v19 = a1->i64[1];
          v18 = a1[1].i64[0];
          a1->i64[1] = v18;
          a1[1].i64[0] = v19;
          if (v11 > v18)
          {
            v20 = a1->i64[0];
            a1->i64[0] = v18;
            a1->i64[1] = v20;
          }
        }

        goto LABEL_34;
      }

      v12 = a1->i64[0];
      if (v9 >= v10)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v12;
        if (v9 >= v12)
        {
LABEL_34:
          v23 = &a1[1].i32[2];
          if (&a1[1].u64[1] == a2)
          {
            return 1;
          }

          v24 = 0;
          v25 = 0;
          while (*v23 >= v8->i32[0])
          {
LABEL_43:
            v8 = v23;
            v24 += 8;
            v23 += 2;
            if (v23 == a2)
            {
              return 1;
            }
          }

          v26 = *v23;
          v27 = v24;
          do
          {
            *(&a1[1].i64[1] + v27) = *(a1[1].i64 + v27);
            if (v27 == -16)
            {
              a1->i64[0] = v26;
              if (++v25 != 8)
              {
                goto LABEL_43;
              }

              return v23 + 2 == a2;
            }

            v28 = *(&a1->u32[2] + v27);
            v27 -= 8;
          }

          while (v28 > v26);
          *(&a1[1].i64[1] + v27) = v26;
          if (++v25 != 8)
          {
            goto LABEL_43;
          }

          return v23 + 2 == a2;
        }

        a1->i64[1] = a1[1].i64[0];
      }

      else
      {
        a1->i64[0] = a1[1].i64[0];
      }

      a1[1].i64[0] = v12;
      goto LABEL_34;
    }

    v13 = a1->u32[2];
    v14 = a1->i32[0];
    LODWORD(v15) = a1[1].i32[0];
    if (v13 >= a1->i32[0])
    {
      if (v15 < v13)
      {
        v15 = a1->i64[1];
        v21 = a1[1].i64[0];
        a1->i64[1] = v21;
        a1[1].i64[0] = v15;
        if (v14 > v21)
        {
          v22 = a1->i64[0];
          a1->i64[0] = v21;
          a1->i64[1] = v22;
        }
      }

      goto LABEL_48;
    }

    v16 = a1->i64[0];
    if (v15 >= v13)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v16;
      if (v15 >= v16)
      {
        goto LABEL_48;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v16;
    LODWORD(v15) = v16;
LABEL_48:
    if (a2[-1].i32[2] >= v15)
    {
      return 1;
    }

    v29 = a1[1].i64[0];
    a1[1].i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v29;
    if (a1[1].i32[0] >= a1->i32[2])
    {
      return 1;
    }

    v31 = a1->i64[1];
    v30 = a1[1].i64[0];
    a1->i64[1] = v30;
    a1[1].i64[0] = v31;
    if (a1->i32[0] <= v30)
    {
      return 1;
    }

    v32 = a1->i64[0];
    a1->i64[0] = v30;
    a1->i64[1] = v32;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].i32[2] >= a1->i32[0])
  {
    return 1;
  }

  v4 = a1->i64[0];
  a1->i64[0] = a2[-1].i64[1];
  a2[-1].i64[1] = v4;
  return 1;
}

uint64_t sub_394BD8(unsigned int a1)
{
  v1 = a1 & 0xF;
  if ((a1 & 0x10) != 0)
  {
    v1 = -v1;
  }

  return (a1 >> 5) | (v1 << 8);
}

uint64_t sub_394BF0(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  LODWORD(a3) = *a2;
  v5 = *(a1 + 24);
  v6 = (*&a3 / 4294967300.0 * v5);
  v7 = v6 - (v5 == v6);
  LODWORD(a4) = a2[1];
  v8 = exp(*&a4 * -6.28318531 / 4294967300.0 + 3.14159265);
  v9 = atan((v8 + -1.0 / v8) * 0.5);
  HIDWORD(v10) = 1080459264;
  LODWORD(v10) = *(a1 + 28);
  v11 = ((95 * sub_394D64(a1, v7 | (((v9 * -57.2957795 + 90.0) / 180.0 * v10) << 32))) / 255.0 + -40.0 + 273.15) * 1000.0;
  if (v11 >= 0.0)
  {
    if (v11 < 4.50359963e15)
    {
      v12 = (v11 + v11) + 1;
      return (v12 >> 1);
    }
  }

  else if (v11 > -4.50359963e15)
  {
    v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    return (v12 >> 1);
  }

  return v11;
}

uint64_t sub_394D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 <= a2 || *(a1 + 28) <= HIDWORD(a2))
  {
    sub_D7B0(v21);
    v12 = sub_4A5C(&v22, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/data/src/traffic/WeatherPngPixelGrid.cpp", 117);
    sub_4A5C(v12, ":", 1);
    v13 = std::ostream::operator<<();
    v14 = sub_4A5C(v13, ":", 1);
    sub_4A5C(v14, "WeatherPngPixelGrid::out_of_bounds.", 35);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_66B8(v23, v19);
    if ((v20 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v17 = v20;
    }

    else
    {
      v17 = v19[1];
    }

    v18 = sub_2D390(exception, v16, v17);
  }

  v3 = *(a1 + 8) - *a1;
  v4 = (v2 * HIDWORD(a2));
  v5 = v4 - v2;
  if (v4 < v2)
  {
    v5 = 0;
  }

  v6 = ((v2 <= v4) | (4 * v4)) + v5 / v2;
  if (v6 + 1 < v3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = *(a1 + 8) - *a1;
  }

  v8 = v2 - ((~(v7 / ((4 * v2) | 1) * ((4 * v2) | 1)) + v7) >> 2);
  v9 = a2 - v8;
  if (a2 < v8)
  {
    v9 = 0;
  }

  v10 = v7 + 4 * a2 + v9 / v2;
  if (v8 <= a2)
  {
    ++v10;
  }

  if (v10 >= v3)
  {
    v10 = *(a1 + 8) - *a1;
  }

  return *(v10 + *a1);
}

void sub_394EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_394F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = sub_12331FC();
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 24) = *(a1 + 56);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &off_2779920;
  }

  v6 = v5[5] & 0xFFFFFFFFFFFFFFFELL;
  if (v6 != a2)
  {
    if (*(v6 + 23) < 0)
    {
      sub_13A68(a2, *v6, *(v6 + 8));
      v4 = *(a1 + 48);
    }

    else
    {
      v7 = *v6;
      *(a2 + 16) = *(v6 + 16);
      *a2 = v7;
    }
  }

  if (!v4)
  {
    v4 = &off_2779920;
  }

  v8 = v4[3] & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (!v9)
  {
    result = sub_12330DC(0);
    goto LABEL_28;
  }

  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *v8;
  }

  if (v9 >= 0x1F)
  {
    v12 = 31;
  }

  else
  {
    v12 = v9;
  }

  switch(v9)
  {
    case 1uLL:
      v13 = *v11;
      v14 = 1;
      break;
    case 2uLL:
      v13 = *v11;
      v14 = 2;
      break;
    case 3uLL:
      v13 = *v11 | (v11[2] << 16);
      v14 = 3;
      break;
    default:
      sub_852E4(v11, v12, &v33);
      goto LABEL_27;
  }

  v33 = v13;
  v34 = v14;
  v35 = 0u;
  v36 = 0u;
LABEL_27:
  result = sub_1232F28(&v33, 0);
LABEL_28:
  *(a2 + 32) = result;
  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 8 * v18; i; i -= 8)
    {
      v20 = *v17;
      v21 = *(*v17 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      if (!v22)
      {
        result = sub_12330DC(0);
        goto LABEL_54;
      }

      if (v23 >= 0)
      {
        v24 = (*(*v17 + 24) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v24 = *v21;
      }

      if (v22 >= 0x1F)
      {
        v25 = 31;
      }

      else
      {
        v25 = v22;
      }

      switch(v22)
      {
        case 1uLL:
          v33 = *v24;
          v34 = 1;
          break;
        case 2uLL:
          v33 = *v24;
          v34 = 2;
          break;
        case 3uLL:
          v33 = *v24 | (v24[2] << 16);
          v34 = 3;
          break;
        default:
          sub_852E4(v24, v25, &v33);
          goto LABEL_53;
      }

      v35 = 0u;
      v36 = 0u;
LABEL_53:
      result = sub_1232F28(&v33, 0);
LABEL_54:
      v32 = result;
      v26 = *(v20 + 40) & 0xFFFFFFFFFFFFFFFELL;
      if ((*(v26 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v26 + 8))
        {
LABEL_58:
          v33 = sub_12330DC(0);
          result = sub_1232EBC(&v33, &v32);
          if ((result & 1) == 0)
          {
            v31 = sub_12330DC(1u);
            result = sub_1232EBC(&v31, &v32);
            if ((result & 1) == 0)
            {
              v30 = sub_12331FC();
              result = sub_1232EBC(&v30, &v32);
              if ((result & 1) == 0)
              {
                v27 = *(a2 + 48);
                if (v27 >= *(a2 + 56))
                {
                  result = sub_395334(a2 + 40, &v32, v26);
                }

                else
                {
                  *v27 = v32;
                  v28 = v27 + 1;
                  if (*(v26 + 23) < 0)
                  {
                    sub_325C(v28, *v26, *(v26 + 8));
                  }

                  else
                  {
                    v29 = *v26;
                    v27[3] = *(v26 + 16);
                    *v28 = v29;
                  }

                  result = (v27 + 4);
                }

                *(a2 + 48) = result;
              }
            }
          }
        }
      }

      else if (*(v26 + 23))
      {
        goto LABEL_58;
      }

      ++v17;
    }
  }

  return result;
}

void sub_3952A4(_Unwind_Exception *a1)
{
  *(v1 + 48) = v2;
  sub_395478(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_395334(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = (32 * v3);
  v13 = v8;
  *v8 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((32 * v3 + 8), *a3, *(a3 + 8));
    v8 = v13;
  }

  else
  {
    *&dword_8[8 * v3] = *a3;
    *&dword_18[8 * v3] = *(a3 + 16);
  }

  v9 = *(a1 + 8) - *a1;
  v10 = v8 - v9;
  memcpy(v8 - v9, *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = 32 * v3 + 32;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return 32 * v3 + 32;
}

void sub_395464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_395478(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
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
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_395510(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a3;
  sub_398014(a3);
  v6 = *(a2 + 40);
  v202 = v5;
  if ((v6 & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Mandatory field muid is not present");
    goto LABEL_596;
  }

  if ((v6 & 0x10000) != 0)
  {
    v7 = *(a2 + 184);
  }

  else
  {
    v7 = *(a2 + 128);
  }

  *v5 = *(a2 + 128);
  *(v5 + 8) = v7;
  v203 = a2;
  v208 = a1;
  if ((atomic_load_explicit(&qword_278F2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278F2C0))
  {
    sub_3608D0(v235, "");
    v197 = sub_12330DC(1u);
    v198 = v197;
    if (SHIBYTE(v236.__locale_) < 0)
    {
      sub_325C(&xmmword_278F2C8, v235[0], v235[1]);
      LOBYTE(xmmword_278F2E0) = 0;
      *(&xmmword_278F2E0 + 1) = v198;
      qword_278F2F0 = 0;
      qword_278F2F8 = 0;
      unk_278F300 = 0;
      if (SHIBYTE(v236.__locale_) < 0)
      {
        operator delete(v235[0]);
      }
    }

    else
    {
      xmmword_278F2C8 = *v235;
      unk_278F2D8 = v236.__locale_;
      LOBYTE(xmmword_278F2E0) = 0;
      *(&xmmword_278F2E0 + 1) = v197;
      qword_278F2F0 = 0;
      qword_278F2F8 = 0;
      unk_278F300 = 0;
    }

    __cxa_guard_release(&qword_278F2C0);
  }

  if (*(a2 + 40))
  {
    sub_394F30(*(a2 + 72), v235);
  }

  else
  {
    if (byte_278F2DF < 0)
    {
      sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
    }

    else
    {
      *v235 = xmmword_278F2C8;
      v236.__locale_ = unk_278F2D8;
    }

    v237 = xmmword_278F2E0;
    v239 = 0;
    v240 = 0;
    __p = 0;
    sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
  }

  v8 = (v5 + 16);
  if ((v5 + 16) == v235)
  {
    *(v5 + 40) = v237;
  }

  else
  {
    if (*(v5 + 39) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v9 = v235;
      }

      else
      {
        v9 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        locale_high = HIBYTE(v236.__locale_);
      }

      else
      {
        locale_high = v235[1];
      }

      sub_13B38(v8, v9, locale_high);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v8, v235[0], v235[1]);
    }

    else
    {
      *v8 = *v235;
      *(v5 + 32) = v236;
    }

    *(v5 + 40) = v237;
    sub_398424((v5 + 56), __p, v239, (v239 - __p) >> 5);
  }

  v11 = __p;
  if (__p)
  {
    v12 = v239;
    v13 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 32;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v239 = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    if ((*(a2 + 40) & 4) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    sub_394F30(*(a2 + 88), v235);
    goto LABEL_42;
  }

  if ((*(a2 + 40) & 4) != 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (byte_278F2DF < 0)
  {
    sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
  }

  else
  {
    *v235 = xmmword_278F2C8;
    v236.__locale_ = unk_278F2D8;
  }

  v237 = xmmword_278F2E0;
  v239 = 0;
  v240 = 0;
  __p = 0;
  sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
LABEL_42:
  v14 = (v5 + 80);
  if ((v5 + 80) == v235)
  {
    *(v5 + 104) = v237;
  }

  else
  {
    if (*(v5 + 103) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v15 = v235;
      }

      else
      {
        v15 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v16 = HIBYTE(v236.__locale_);
      }

      else
      {
        v16 = v235[1];
      }

      sub_13B38(v14, v15, v16);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v14, v235[0], v235[1]);
    }

    else
    {
      *v14 = *v235;
      *(v5 + 96) = v236;
    }

    *(v5 + 104) = v237;
    sub_398424((v5 + 120), __p, v239, (v239 - __p) >> 5);
  }

  v17 = __p;
  if (__p)
  {
    v18 = v239;
    v19 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 3));
        }

        v18 -= 32;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v239 = v17;
    operator delete(v19);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    sub_394F30(*(a2 + 80), v235);
    goto LABEL_72;
  }

  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  if (byte_278F2DF < 0)
  {
    sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
  }

  else
  {
    *v235 = xmmword_278F2C8;
    v236.__locale_ = unk_278F2D8;
  }

  v237 = xmmword_278F2E0;
  v239 = 0;
  v240 = 0;
  __p = 0;
  sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
LABEL_72:
  v20 = (v5 + 144);
  if ((v5 + 144) == v235)
  {
    *(v5 + 168) = v237;
  }

  else
  {
    if (*(v5 + 167) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v21 = v235;
      }

      else
      {
        v21 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v22 = HIBYTE(v236.__locale_);
      }

      else
      {
        v22 = v235[1];
      }

      sub_13B38(v20, v21, v22);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v20, v235[0], v235[1]);
    }

    else
    {
      *v20 = *v235;
      *(v5 + 160) = v236;
    }

    *(v5 + 168) = v237;
    sub_398424((v5 + 184), __p, v239, (v239 - __p) >> 5);
  }

  v23 = __p;
  if (__p)
  {
    v24 = v239;
    v25 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
        }

        v24 -= 32;
      }

      while (v24 != v23);
      v25 = __p;
    }

    v239 = v23;
    operator delete(v25);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    if ((*(a2 + 40) & 8) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    sub_394F30(*(a2 + 96), v235);
    goto LABEL_102;
  }

  if ((*(a2 + 40) & 8) != 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (byte_278F2DF < 0)
  {
    sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
  }

  else
  {
    *v235 = xmmword_278F2C8;
    v236.__locale_ = unk_278F2D8;
  }

  v237 = xmmword_278F2E0;
  v239 = 0;
  v240 = 0;
  __p = 0;
  sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
LABEL_102:
  v26 = (v5 + 208);
  if ((v5 + 208) == v235)
  {
    *(v5 + 232) = v237;
  }

  else
  {
    if (*(v5 + 231) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v27 = v235;
      }

      else
      {
        v27 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v28 = HIBYTE(v236.__locale_);
      }

      else
      {
        v28 = v235[1];
      }

      sub_13B38(v26, v27, v28);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v26, v235[0], v235[1]);
    }

    else
    {
      *v26 = *v235;
      *(v5 + 224) = v236;
    }

    *(v5 + 232) = v237;
    sub_398424((v5 + 248), __p, v239, (v239 - __p) >> 5);
  }

  v29 = __p;
  if (__p)
  {
    v30 = v239;
    v31 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v30 - 1) < 0)
        {
          operator delete(*(v30 - 3));
        }

        v30 -= 32;
      }

      while (v30 != v29);
      v31 = __p;
    }

    v239 = v29;
    operator delete(v31);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    if ((*(a2 + 40) & 0x10) == 0)
    {
      goto LABEL_126;
    }

LABEL_129:
    sub_394F30(*(a2 + 104), v235);
    goto LABEL_132;
  }

  if ((*(a2 + 40) & 0x10) != 0)
  {
    goto LABEL_129;
  }

LABEL_126:
  if (byte_278F2DF < 0)
  {
    sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
  }

  else
  {
    *v235 = xmmword_278F2C8;
    v236.__locale_ = unk_278F2D8;
  }

  v237 = xmmword_278F2E0;
  v239 = 0;
  v240 = 0;
  __p = 0;
  sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
LABEL_132:
  v32 = (v5 + 272);
  if ((v5 + 272) == v235)
  {
    *(v5 + 296) = v237;
  }

  else
  {
    if (*(v5 + 295) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v33 = v235;
      }

      else
      {
        v33 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v34 = HIBYTE(v236.__locale_);
      }

      else
      {
        v34 = v235[1];
      }

      sub_13B38(v32, v33, v34);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v32, v235[0], v235[1]);
    }

    else
    {
      *v32 = *v235;
      *(v5 + 288) = v236;
    }

    *(v5 + 296) = v237;
    sub_398424((v5 + 312), __p, v239, (v239 - __p) >> 5);
  }

  v35 = __p;
  if (__p)
  {
    v36 = v239;
    v37 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v36 - 1) < 0)
        {
          operator delete(*(v36 - 3));
        }

        v36 -= 32;
      }

      while (v36 != v35);
      v37 = __p;
    }

    v239 = v35;
    operator delete(v37);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    if ((*(a2 + 40) & 0x20) == 0)
    {
      goto LABEL_156;
    }

LABEL_159:
    sub_394F30(*(a2 + 112), v235);
    goto LABEL_162;
  }

  if ((*(a2 + 40) & 0x20) != 0)
  {
    goto LABEL_159;
  }

LABEL_156:
  if (byte_278F2DF < 0)
  {
    sub_325C(v235, xmmword_278F2C8, *(&xmmword_278F2C8 + 1));
  }

  else
  {
    *v235 = xmmword_278F2C8;
    v236.__locale_ = unk_278F2D8;
  }

  v237 = xmmword_278F2E0;
  v239 = 0;
  v240 = 0;
  __p = 0;
  sub_3981E4(&__p, qword_278F2F0, qword_278F2F8, (qword_278F2F8 - qword_278F2F0) >> 5);
LABEL_162:
  v38 = (v5 + 336);
  if ((v5 + 336) == v235)
  {
    *(v5 + 360) = v237;
  }

  else
  {
    if (*(v5 + 359) < 0)
    {
      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v39 = v235;
      }

      else
      {
        v39 = v235[0];
      }

      if (SHIBYTE(v236.__locale_) >= 0)
      {
        v40 = HIBYTE(v236.__locale_);
      }

      else
      {
        v40 = v235[1];
      }

      sub_13B38(v38, v39, v40);
    }

    else if ((HIBYTE(v236.__locale_) & 0x80) != 0)
    {
      sub_13A68(v38, v235[0], v235[1]);
    }

    else
    {
      *v38 = *v235;
      *(v5 + 352) = v236;
    }

    *(v5 + 360) = v237;
    sub_398424((v5 + 376), __p, v239, (v239 - __p) >> 5);
  }

  v41 = __p;
  if (__p)
  {
    v42 = v239;
    v43 = __p;
    if (v239 != __p)
    {
      do
      {
        if (*(v42 - 1) < 0)
        {
          operator delete(*(v42 - 3));
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = __p;
    }

    v239 = v41;
    operator delete(v43);
  }

  if (SHIBYTE(v236.__locale_) < 0)
  {
    operator delete(v235[0]);
    v44 = *(a2 + 168);
    if (!v44)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v44 = *(a2 + 168);
    if (!v44)
    {
      goto LABEL_189;
    }
  }

  if (v44 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected icon type encountered");
LABEL_596:
  }

LABEL_189:
  *(v5 + 400) = v44;
  v45 = *(a2 + 40);
  if ((v45 & 0x100) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Mandatory field start_datetime is not present");
    goto LABEL_596;
  }

  v46 = 2147483646;
  if (*(a2 + 136) <= 0x7FFFFFFEuLL)
  {
    v46 = sub_39881C(*(a2 + 136));
    v45 = *(a2 + 40);
  }

  *(v5 + 404) = v46;
  if ((v45 & 0x200) != 0)
  {
    v47 = 2147483646;
    if (*(a2 + 144) <= 0x7FFFFFFEuLL)
    {
      v47 = sub_39881C(*(a2 + 144));
    }
  }

  else
  {
    v47 = 2147483646;
  }

  *(v5 + 408) = v47;
  v48 = 2147483646;
  if (*(a2 + 152) <= 0x7FFFFFFEuLL)
  {
    v48 = sub_39881C(*(a2 + 152));
  }

  *(v5 + 412) = v48;
  if ((*(a2 + 41) & 8) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Mandatory field updated_datetime is not present");
    goto LABEL_596;
  }

  v49 = 2147483646;
  if (*(a2 + 160) <= 0x7FFFFFFEuLL)
  {
    v49 = sub_39881C(*(a2 + 160));
  }

  *(v5 + 416) = v49;
  v50 = 2147483646;
  if (*(a2 + 176) <= 0x7FFFFFFEuLL)
  {
    v50 = sub_39881C(*(a2 + 176));
  }

  *(v5 + 420) = v50;
  if (*(v5 + 404) > *(v5 + 408))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Start datetime is after end datetime");
    goto LABEL_596;
  }

  v51 = *(a2 + 64);
  v52 = (v51 + 8);
  if (!v51)
  {
    v52 = 0;
  }

  v53 = *(a2 + 56);
  if (v53)
  {
    v200 = &v52[v53];
    do
    {
      v54 = *v52;
      if ((*(*v52 + 40) & 2) == 0)
      {
        v193 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v193, "Mandatory field muid of incident entity is not present");
      }

      v223 = 0;
      LOBYTE(v224[0]) = 0;
      v232 = 0;
      v55 = *(v54 + 56);
      v56 = *(v54 + 72);
      v201 = v52;
      if (v56 <= 4)
      {
        if (v56 <= 2)
        {
          if (v56 != 1)
          {
            if (v56)
            {
              if (v56 == 2)
              {
                v194 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v194, "Incident entity type TRIP is not supported");
              }

              else
              {
LABEL_583:
                v194 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v194, "Incident entity type has an unknown value");
              }
            }

            else
            {
              v194 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v194, "Incident entity type UNKNOWN is deprecated");
            }
          }

          v235[0] = -1;
          LODWORD(v235[1]) = 0x7FFFFFFF;
          v92 = sub_2C7D20(a1, v55, v235);
          v93 = v92 >= 0xFFFFFFFF00000000 || v92 == 0;
          v94 = !v93;
          v222 = v92;
          v223 = v94;
          if (v93)
          {
            goto LABEL_322;
          }

          if ((*(v54 + 40) & 1) == 0)
          {
            goto LABEL_302;
          }
        }

        else if (v56 == 3)
        {
          v235[0] = -1;
          LODWORD(v235[1]) = 0x7FFFFFFF;
          v57 = sub_2C7D44(a1, v55, v235);
          if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
          {
            goto LABEL_321;
          }

          v222 = v57;
          v223 = 3;
          if ((*(v54 + 40) & 1) == 0)
          {
            goto LABEL_302;
          }
        }

        else
        {
          v235[0] = -1;
          LODWORD(v235[1]) = 0x7FFFFFFF;
          v57 = sub_2C7C90(a1, v55, v235);
          if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
          {
            goto LABEL_321;
          }

          v222 = v57;
          v223 = 6;
          if ((*(v54 + 40) & 1) == 0)
          {
            goto LABEL_302;
          }
        }
      }

      else if (v56 > 15)
      {
        if (v56 == 20)
        {
          v235[0] = -1;
          LODWORD(v235[1]) = 0x7FFFFFFF;
          v57 = sub_2C7C6C(a1, v55, v235);
          if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
          {
            goto LABEL_321;
          }

          v222 = v57;
          v223 = 2;
          if ((*(v54 + 40) & 1) == 0)
          {
LABEL_302:
            *&v209 = v222;
            DWORD2(v209) = v223;
            LOBYTE(v210[0]) = 0;
            LOBYTE(v214) = 0;
            if (v232)
            {
              goto LABEL_544;
            }

            goto LABEL_549;
          }
        }

        else
        {
          if (v56 != 16)
          {
            goto LABEL_583;
          }

          v235[0] = -1;
          LODWORD(v235[1]) = 0x7FFFFFFF;
          v57 = sub_2C7CB4(a1, v55, v235);
          if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
          {
LABEL_321:
            v222 = v57;
            v223 = 0;
LABEL_322:
            if (sub_7E7E4(1u))
            {
              sub_19594F8(v235);
              sub_4A5C(v235, "Transit incident (", 18);
              v98 = std::ostream::operator<<();
              sub_4A5C(v98, "): Unable to resolve transit entity muid ", 41);
              v99 = std::ostream::operator<<();
              v100 = sub_4A5C(v99, " of type ", 9);
              v101 = sub_15E1490(*(v54 + 72));
              v102 = *(v101 + 23);
              if (v102 >= 0)
              {
                v103 = v101;
              }

              else
              {
                v103 = *v101;
              }

              if (v102 >= 0)
              {
                v104 = *(v101 + 23);
              }

              else
              {
                v104 = v101[1];
              }

              sub_4A5C(v100, v103, v104);
              if ((v244 & 0x10) != 0)
              {
                v107 = v243;
                v108 = &v239;
                if (v243 < v240)
                {
                  v243 = v240;
                  v107 = v240;
                  v108 = &v239;
                }
              }

              else
              {
                if ((v244 & 8) == 0)
                {
                  v105 = 0;
                  v216 = 0;
                  goto LABEL_434;
                }

                v107 = __p;
                v108 = &v237;
              }

              v152 = *v108;
              v105 = v107 - *v108;
              if (v105 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v105 >= 0x17)
              {
                operator new();
              }

              v216 = v107 - *v108;
              if (v105)
              {
                memmove(v215, v152, v105);
              }

              a1 = v208;
LABEL_434:
              *(v215 + v105) = 0;
              sub_7E854(v215, 1u);
              if (v216 < 0)
              {
                operator delete(v215[0]);
              }

              v235[0] = v205;
              *(v235 + *(v205 - 3)) = v204;
              if (v242 < 0)
              {
                operator delete(v241);
              }

              std::locale::~locale(&v236);
              std::ostream::~ostream();
              std::ios::~ios();
            }

            v214 = 0;
            memset(v213, 0, sizeof(v213));
            v211 = 0u;
            *v212 = 0u;
            v209 = 0u;
            *v210 = 0u;
            if (v232)
            {
              if (v230)
              {
                *(&v230 + 1) = v230;
                operator delete(v230);
              }

              goto LABEL_545;
            }

LABEL_549:
            if (DWORD2(v209))
            {
              v189 = *(v5 + 432);
              if (v189 >= *(v5 + 440))
              {
                sub_398DC8((v5 + 424), &v209);
              }

              else
              {
                v190 = v209;
                *(v189 + 8) = DWORD2(v209);
                *v189 = v190;
                *(v189 + 16) = 0;
                *(v189 + 96) = 0;
                if (v214 == 1)
                {
                  sub_398970(v189 + 16, v210);
                  *(v189 + 96) = 1;
                }

                v191 = v189 + 104;
              }

              *(v5 + 432) = v191;
            }

            goto LABEL_556;
          }

          v222 = v57;
          v223 = 4;
          if ((*(v54 + 40) & 1) == 0)
          {
            goto LABEL_302;
          }
        }
      }

      else if (v56 == 5)
      {
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v57 = sub_2C7D68(a1, v55, v235);
        if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
        {
          goto LABEL_321;
        }

        v222 = v57;
        v223 = 5;
        if ((*(v54 + 40) & 1) == 0)
        {
          goto LABEL_302;
        }
      }

      else
      {
        if (v56 != 10)
        {
          goto LABEL_583;
        }

        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v57 = sub_2C7A3C(a1, v55, v235);
        if (v57 > 0xFFFFFFFEFFFFFFFFLL || v57 == 0)
        {
          goto LABEL_321;
        }

        v222 = v57;
        v223 = 7;
        if ((*(v54 + 40) & 1) == 0)
        {
          goto LABEL_302;
        }
      }

      v60 = *(v54 + 48);
      v245 = 0;
      v246 = 0;
      memset(v247, 0, 11);
      v249 = 0u;
      v250 = 0u;
      v248 = 0u;
      v61 = *(v60 + 40);
      v199 = v60;
      if (!v61)
      {
        goto LABEL_279;
      }

      v62 = *(v60 + 48);
      v63 = 8 * v61;
      do
      {
        v65 = *v62;
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v66 = sub_2C7C90(a1, v65, v235);
        v67 = v66;
        if (v66 <= 0xFFFFFFFEFFFFFFFFLL && v66 != 0)
        {
          v73 = v246;
          if (v246 < v247[0])
          {
            *v246 = v66;
            v64 = (v73 + 8);
          }

          else
          {
            v74 = v245;
            v75 = v246 - v245;
            v76 = (v246 - v245) >> 3;
            v77 = v76 + 1;
            if ((v76 + 1) >> 61)
            {
              sub_1794();
            }

            v78 = v247[0] - v245;
            if ((v247[0] - v245) >> 2 > v77)
            {
              v77 = v78 >> 2;
            }

            if (v78 >= 0x7FFFFFFFFFFFFFF8)
            {
              v79 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v79 = v77;
            }

            if (v79)
            {
              if (!(v79 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v76) = v66;
            v64 = 8 * v76 + 8;
            memcpy(0, v74, v75);
            v245 = 0;
            v246 = v64;
            v247[0] = 0;
            if (v74)
            {
              operator delete(v74);
            }

            a1 = v208;
          }

          v246 = v64;
          goto LABEL_231;
        }

        if (!sub_7E7E4(1u))
        {
          goto LABEL_231;
        }

        sub_19594F8(v235);
        sub_4A5C(v235, "Transit incident (", 18);
        v69 = std::ostream::operator<<();
        v70 = sub_4A5C(v69, "): Unable to resolve line muid ", 31);
        v71 = sub_2FF718(v70, __ROR8__(v67, 32));
        sub_4A5C(v71, " on node incident details", 25);
        if ((v244 & 0x10) != 0)
        {
          v80 = v243;
          v81 = &v239;
          if (v243 < v240)
          {
            v243 = v240;
            v80 = v240;
            v81 = &v239;
          }

          goto LABEL_257;
        }

        if ((v244 & 8) != 0)
        {
          v80 = __p;
          v81 = &v237;
LABEL_257:
          v82 = *v81;
          v72 = v80 - *v81;
          if (v72 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v72 >= 0x17)
          {
            operator new();
          }

          v234 = v80 - *v81;
          if (v72)
          {
            memmove(&__dst, v82, v72);
          }

          a1 = v208;
          goto LABEL_264;
        }

        v72 = 0;
        v234 = 0;
LABEL_264:
        *(&__dst + v72) = 0;
        sub_7E854(&__dst, 1u);
        if (v234 < 0)
        {
          operator delete(__dst);
        }

        v235[0] = v205;
        *(v235 + *(v205 - 3)) = v204;
        if (v242 < 0)
        {
          operator delete(v241);
        }

        std::locale::~locale(&v236);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_231:
        ++v62;
        v63 -= 8;
      }

      while (v63);
      v60 = v199;
      if (*(v199 + 40) >= 1 && v245 == v246)
      {
        goto LABEL_526;
      }

LABEL_279:
      v84 = *(v60 + 56);
      if (v84)
      {
        v85 = *(v60 + 64);
        v86 = BYTE2(v247[1]);
        v87 = v247[1];
        v88 = 4 * v84;
        v89 = BYTE1(v247[1]);
        do
        {
          v91 = *v85;
          if (*v85 > 1)
          {
            if (v91 == 3)
            {
              v90 = 1;
            }

            else
            {
              v90 = v86;
            }

            if (v91 == 2)
            {
              v87 = 1;
            }

            else
            {
              v86 = v90;
            }
          }

          else if (v91 == 1)
          {
            v89 = 1;
          }

          else if (!v91)
          {
            BYTE2(v247[1]) = v86;
            LOBYTE(v247[1]) = v87;
            BYTE1(v247[1]) = v89;
            v192 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v192, "Incident manoeuvre type UNKNOWN is deprecated");
          }

          ++v85;
          v88 -= 4;
        }

        while (v88);
        BYTE2(v247[1]) = v86;
        LOBYTE(v247[1]) = v87;
        BYTE1(v247[1]) = v89;
        if (v89)
        {
LABEL_333:
          v106 = BYTE2(v247[1]);
          goto LABEL_339;
        }
      }

      else
      {
        v89 = BYTE1(v247[1]);
        if ((v247[1] & 0x100) != 0)
        {
          goto LABEL_333;
        }
      }

      v106 = BYTE2(v247[1]);
      if ((v247[1] & 1) == 0 && (v247[1] & 0x10000) == 0)
      {
        v195 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v195, "Node incident details specify no manoeuvre");
LABEL_587:
      }

LABEL_339:
      v109 = *(v60 + 80);
      if (v109 >= 1 && ((v106 | v89) & 1) == 0)
      {
        v195 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v195, "Node incident details specify an outgoing stop pair but do not specify PASS or BOARD manoeuvre");
        goto LABEL_587;
      }

      v110 = *(v60 + 88);
      if (v110)
      {
        v111 = (v110 + 8);
      }

      else
      {
        v111 = 0;
      }

      if (!v109)
      {
LABEL_419:
        v148 = v199;
        v149 = *(v199 + 104);
        if (v149 < 1)
        {
          goto LABEL_443;
        }

        goto LABEL_420;
      }

      v112 = 8 * v109;
      while (2)
      {
        v206 = v112;
        v115 = *v111;
        v116 = *(*v111 + 24);
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v117 = sub_2C7D44(v208, v116, v235);
        v118 = *(v115 + 32);
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v119 = sub_2C7D44(v208, v118, v235);
        v120 = v117 > 0xFFFFFFFEFFFFFFFFLL || v117 == 0;
        if (v120 && sub_7E7E4(1u))
        {
          sub_19594F8(v235);
          sub_4A5C(v235, "Transit incident (", 18);
          v121 = std::ostream::operator<<();
          sub_4A5C(v121, "): Unable to resolve from stop muid ", 36);
          v122 = std::ostream::operator<<();
          sub_4A5C(v122, " on node incident details outgoing stop pair", 44);
          if ((v244 & 0x10) != 0)
          {
            v124 = v243;
            v125 = &v239;
            if (v243 < v240)
            {
              v243 = v240;
              v124 = v240;
              v125 = &v239;
            }
          }

          else
          {
            if ((v244 & 8) == 0)
            {
              v123 = 0;
              v234 = 0;
              goto LABEL_367;
            }

            v124 = __p;
            v125 = &v237;
          }

          v126 = *v125;
          v123 = v124 - *v125;
          if (v123 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v123 >= 0x17)
          {
            operator new();
          }

          v234 = v124 - *v125;
          if (v123)
          {
            memmove(&__dst, v126, v123);
          }

LABEL_367:
          *(&__dst + v123) = 0;
          sub_7E854(&__dst, 1u);
          v5 = v202;
          if (v234 < 0)
          {
            operator delete(__dst);
          }

          v235[0] = v205;
          *(v235 + *(v205 - 3)) = v204;
          if (v242 < 0)
          {
            operator delete(v241);
          }

          std::locale::~locale(&v236);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v127 = HIDWORD(v119);
        if (v119)
        {
          v128 = v127 == 0xFFFFFFFF;
        }

        else
        {
          v128 = 1;
        }

        if (v128 && sub_7E7E4(1u))
        {
          sub_19594F8(v235);
          sub_4A5C(v235, "Transit incident (", 18);
          v129 = std::ostream::operator<<();
          sub_4A5C(v129, "): Unable to resolve to stop muid ", 34);
          v130 = std::ostream::operator<<();
          sub_4A5C(v130, " on node incident details outgoing stop pair", 44);
          if ((v244 & 0x10) != 0)
          {
            v132 = v243;
            v133 = &v239;
            if (v243 < v240)
            {
              v243 = v240;
              v132 = v240;
              v133 = &v239;
            }
          }

          else
          {
            if ((v244 & 8) == 0)
            {
              v131 = 0;
              v234 = 0;
              goto LABEL_390;
            }

            v132 = __p;
            v133 = &v237;
          }

          v134 = *v133;
          v131 = v132 - *v133;
          if (v131 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v131 >= 0x17)
          {
            operator new();
          }

          v234 = v132 - *v133;
          if (v131)
          {
            memmove(&__dst, v134, v131);
          }

LABEL_390:
          *(&__dst + v131) = 0;
          sub_7E854(&__dst, 1u);
          v5 = v202;
          if (v234 < 0)
          {
            operator delete(__dst);
          }

          v235[0] = v205;
          *(v235 + *(v205 - 3)) = v204;
          if (v242 < 0)
          {
            operator delete(v241);
          }

          std::locale::~locale(&v236);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        if (v117)
        {
          v135 = v117 > 0xFFFFFFFEFFFFFFFFLL;
        }

        else
        {
          v135 = 1;
        }

        v137 = v135 || v119 == 0 || v127 == 0xFFFFFFFF;
        v114 = v206;
        if (!v137)
        {
          v138 = *(&v248 + 1);
          if (*(&v248 + 1) < v249)
          {
            **(&v248 + 1) = v117;
            *(v138 + 8) = v119;
            v113 = v138 + 16;
          }

          else
          {
            v139 = v248;
            v140 = *(&v248 + 1) - v248;
            v141 = (*(&v248 + 1) - v248) >> 4;
            v142 = v141 + 1;
            if ((v141 + 1) >> 60)
            {
              sub_1794();
            }

            v143 = v249 - v248;
            if ((v249 - v248) >> 3 > v142)
            {
              v142 = v143 >> 3;
            }

            if (v143 >= 0x7FFFFFFFFFFFFFF0)
            {
              v144 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v144 = v142;
            }

            if (v144)
            {
              if (!(v144 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v145 = (*(&v248 + 1) - v248) >> 4;
            v146 = (16 * v141);
            *v146 = v117;
            v146[1] = v119;
            v113 = 16 * v141 + 16;
            v147 = 16 * v141 - 16 * v145;
            memcpy(&v146[-2 * v145], v139, v140);
            *&v248 = v147;
            *(&v248 + 1) = v113;
            *&v249 = 0;
            if (v139)
            {
              operator delete(v139);
            }
          }

          *(&v248 + 1) = v113;
          v114 = v206;
        }

        ++v111;
        v112 = v114 - 8;
        if (v112)
        {
          continue;
        }

        break;
      }

      a2 = v203;
      if (*(v199 + 80) < 1 || v248 != *(&v248 + 1))
      {
        goto LABEL_419;
      }

      *(&v247[1] + 1) = 0;
      v148 = v199;
      v149 = *(v199 + 104);
      if (v149 < 1)
      {
LABEL_443:
        v153 = *(v148 + 112);
        if (v153)
        {
          v151 = (v153 + 8);
        }

        else
        {
          v151 = 0;
        }

        if (v149)
        {
          v149 = v149;
          goto LABEL_448;
        }

LABEL_523:
        a1 = v208;
        if ((v247[1] & 0x100) != 0)
        {
          goto LABEL_529;
        }

LABEL_524:
        if ((v247[1] & 1) != 0 || BYTE2(v247[1]) == 1)
        {
          goto LABEL_529;
        }

LABEL_526:
        LOBYTE(v215[0]) = 0;
        v221 = 0;
        v188 = *(&v249 + 1);
        if (*(&v249 + 1))
        {
          goto LABEL_530;
        }

        goto LABEL_531;
      }

LABEL_420:
      if (LOBYTE(v247[1]) != 1)
      {
        v195 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v195, "Node incident details specify an incoming stop pair but do not specify ALIGHT manoeuvre");
        goto LABEL_587;
      }

      v150 = *(v148 + 112);
      if (v150)
      {
        v151 = (v150 + 8);
      }

      else
      {
        v151 = 0;
      }

LABEL_448:
      v207 = &v151[v149];
      while (2)
      {
        v155 = *v151;
        v156 = *(*v151 + 24);
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v157 = sub_2C7D44(v208, v156, v235);
        v158 = *(v155 + 32);
        v235[0] = -1;
        LODWORD(v235[1]) = 0x7FFFFFFF;
        v159 = sub_2C7D44(v208, v158, v235);
        v160 = v157 > 0xFFFFFFFEFFFFFFFFLL || v157 == 0;
        if (v160 && sub_7E7E4(1u))
        {
          sub_19594F8(v235);
          sub_4A5C(v235, "Transit incident (", 18);
          v161 = std::ostream::operator<<();
          sub_4A5C(v161, "): Unable to resolve from stop muid ", 36);
          v162 = std::ostream::operator<<();
          sub_4A5C(v162, " on node incident details incoming stop pair", 44);
          if ((v244 & 0x10) != 0)
          {
            v164 = v243;
            v165 = &v239;
            if (v243 < v240)
            {
              v243 = v240;
              v164 = v240;
              v165 = &v239;
            }
          }

          else
          {
            if ((v244 & 8) == 0)
            {
              v163 = 0;
              v234 = 0;
              goto LABEL_471;
            }

            v164 = __p;
            v165 = &v237;
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

          v234 = v164 - *v165;
          if (v163)
          {
            memmove(&__dst, v166, v163);
          }

          v5 = v202;
LABEL_471:
          *(&__dst + v163) = 0;
          sub_7E854(&__dst, 1u);
          if (v234 < 0)
          {
            operator delete(__dst);
          }

          v235[0] = v205;
          *(v235 + *(v205 - 3)) = v204;
          if (v242 < 0)
          {
            operator delete(v241);
          }

          std::locale::~locale(&v236);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v167 = HIDWORD(v159);
        if (v159)
        {
          v168 = v167 == 0xFFFFFFFF;
        }

        else
        {
          v168 = 1;
        }

        if (v168 && sub_7E7E4(1u))
        {
          sub_19594F8(v235);
          sub_4A5C(v235, "Transit incident (", 18);
          v169 = std::ostream::operator<<();
          sub_4A5C(v169, "): Unable to resolve to stop muid ", 34);
          v170 = std::ostream::operator<<();
          sub_4A5C(v170, " on node incident details incoming stop pair", 44);
          if ((v244 & 0x10) != 0)
          {
            v172 = v243;
            v173 = &v239;
            if (v243 < v240)
            {
              v243 = v240;
              v172 = v240;
              v173 = &v239;
            }
          }

          else
          {
            if ((v244 & 8) == 0)
            {
              v171 = 0;
              v234 = 0;
              goto LABEL_494;
            }

            v172 = __p;
            v173 = &v237;
          }

          v174 = *v173;
          v171 = v172 - *v173;
          if (v171 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v171 >= 0x17)
          {
            operator new();
          }

          v234 = v172 - *v173;
          if (v171)
          {
            memmove(&__dst, v174, v171);
          }

LABEL_494:
          *(&__dst + v171) = 0;
          sub_7E854(&__dst, 1u);
          v5 = v202;
          if (v234 < 0)
          {
            operator delete(__dst);
          }

          v235[0] = v205;
          *(v235 + *(v205 - 3)) = v204;
          if (v242 < 0)
          {
            operator delete(v241);
          }

          std::locale::~locale(&v236);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        if (v157)
        {
          v175 = v157 > 0xFFFFFFFEFFFFFFFFLL;
        }

        else
        {
          v175 = 1;
        }

        if (!v175 && v159 != 0 && v167 != 0xFFFFFFFF)
        {
          v178 = v250;
          if (v250 < *(&v250 + 1))
          {
            *v250 = v157;
            *(v178 + 8) = v159;
            v154 = v178 + 16;
          }

          else
          {
            v179 = *(&v249 + 1);
            v180 = v250 - *(&v249 + 1);
            v181 = (v250 - *(&v249 + 1)) >> 4;
            v182 = v181 + 1;
            if ((v181 + 1) >> 60)
            {
              sub_1794();
            }

            v183 = *(&v250 + 1) - *(&v249 + 1);
            if ((*(&v250 + 1) - *(&v249 + 1)) >> 3 > v182)
            {
              v182 = v183 >> 3;
            }

            if (v183 >= 0x7FFFFFFFFFFFFFF0)
            {
              v184 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v184 = v182;
            }

            if (v184)
            {
              if (!(v184 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v185 = (v250 - *(&v249 + 1)) >> 4;
            v186 = (16 * v181);
            *v186 = v157;
            v186[1] = v159;
            v154 = 16 * v181 + 16;
            v187 = 16 * v181 - 16 * v185;
            memcpy(&v186[-2 * v185], v179, v180);
            *(&v249 + 1) = v187;
            v250 = v154;
            if (v179)
            {
              operator delete(v179);
            }
          }

          *&v250 = v154;
        }

        if (++v151 != v207)
        {
          continue;
        }

        break;
      }

      a2 = v203;
      if (*(v199 + 104) < 1 || *(&v249 + 1) != v250)
      {
        goto LABEL_523;
      }

      LOBYTE(v247[1]) = 0;
      a1 = v208;
      if ((v247[1] & 0x100) == 0)
      {
        goto LABEL_524;
      }

LABEL_529:
      sub_398970(v215, &v245);
      v221 = 1;
      v188 = *(&v249 + 1);
      if (*(&v249 + 1))
      {
LABEL_530:
        *&v250 = v188;
        operator delete(v188);
      }

LABEL_531:
      if (v248)
      {
        *(&v248 + 1) = v248;
        operator delete(v248);
      }

      if (v245)
      {
        v246 = v245;
        operator delete(v245);
      }

      sub_398B80(v224, v215);
      if (v221 == 1)
      {
        if (v219)
        {
          v220 = v219;
          operator delete(v219);
        }

        if (v217)
        {
          v218 = v217;
          operator delete(v217);
        }

        if (v215[0])
        {
          v215[1] = v215[0];
          operator delete(v215[0]);
        }
      }

      if (v232)
      {
        *&v209 = v222;
        DWORD2(v209) = v223;
LABEL_544:
        *&v211 = v225;
        WORD4(v211) = v226;
        BYTE10(v211) = v227;
        v213[0] = v229;
        *v210 = *v224;
        v224[1] = 0;
        v225 = 0;
        v224[0] = 0;
        *v212 = *v228;
        v228[0] = 0;
        v228[1] = 0;
        *&v213[1] = v230;
        v213[3] = v231;
        v229 = 0;
        v230 = 0uLL;
        v231 = 0;
        LOBYTE(v214) = 1;
LABEL_545:
        if (v228[0])
        {
          v228[1] = v228[0];
          operator delete(v228[0]);
        }

        if (v224[0])
        {
          v224[1] = v224[0];
          operator delete(v224[0]);
        }

        goto LABEL_549;
      }

      v214 = 0;
      memset(v213, 0, sizeof(v213));
      v211 = 0u;
      *v212 = 0u;
      v209 = 0u;
      *v210 = 0u;
LABEL_556:
      if (v214 == 1)
      {
        if (v213[1])
        {
          v213[2] = v213[1];
          operator delete(v213[1]);
        }

        if (v212[0])
        {
          v212[1] = v212[0];
          operator delete(v212[0]);
        }

        if (v210[0])
        {
          v210[1] = v210[0];
          operator delete(v210[0]);
        }
      }

      v52 = v201 + 1;
    }

    while (v201 + 1 != v200);
  }

  *(v5 + 448) = *(a2 + 172);
}

void sub_397B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_guard_abort(&qword_278F2C0);
  sub_399184(a15);
  _Unwind_Resume(a1);
}

void sub_397BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_free_exception(v15);
  sub_399184(a15);
  _Unwind_Resume(a1);
}

void sub_397D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  __cxa_free_exception(v47);
  sub_398B2C(v48 - 176);
  sub_397FB4(&a47);
  sub_399184(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_397FB4(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      *(a1 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 24) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_398014(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = -1;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 48) = sub_12331FC();
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 2;
  *(a1 + 112) = sub_12331FC();
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 2;
  *(a1 + 176) = sub_12331FC();
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 2;
  v2 = sub_12331FC();
  *(a1 + 248) = 0u;
  *(a1 + 240) = v2;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 2;
  *(a1 + 304) = sub_12331FC();
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 2;
  *(a1 + 368) = sub_12331FC();
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a1 + 404) = v3;
  *(a1 + 420) = 0x7FFFFFFF;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  return a1;
}

void sub_398118(_Unwind_Exception *a1)
{
  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  sub_395478(v3 + 24);
  sub_395478(v1 + 208);
  sub_395478(v1 + 144);
  sub_395478(v1 + 80);
  sub_395478(v2);
  _Unwind_Resume(a1);
}

void sub_39818C()
{
  if (*(v0 + 167) < 0)
  {
    operator delete(*(v0 + 144));
  }

  JUMPOUT(0x398174);
}

void sub_3981A4(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
    sub_395478(v2);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x39817CLL);
}

void sub_3981C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_3981E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_39831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_39833C(&a11);
  *(v11 + 8) = v12;
  sub_3983A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_39833C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void ***sub_3983A0(void ***a1)
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
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          v4 -= 4;
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

void sub_398424(char **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 3));
          }

          v10 -= 4;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v30 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v30 = a4;
      }

      v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v32 = 0x7FFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v32 = v30;
      }

      if (!(v32 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = &a2[v23 + 8];
        *&v8[v23] = *&a2[v23];
        v27 = &v8[v23 + 8];
        if (a2 != v8)
        {
          v28 = a2[v23 + 31];
          if (v8[v23 + 31] < 0)
          {
            if (v28 >= 0)
            {
              v24 = &a2[v23 + 8];
            }

            else
            {
              v24 = *v26;
            }

            if (v28 >= 0)
            {
              v25 = a2[v23 + 31];
            }

            else
            {
              v25 = *&a2[v23 + 16];
            }

            sub_13B38(v27, v24, v25);
          }

          else if (a2[v23 + 31] < 0)
          {
            sub_13A68(v27, *v26, *&a2[v23 + 16]);
          }

          else
          {
            v29 = *v26;
            *&v8[v23 + 24] = *&a2[v23 + 24];
            *v27 = v29;
          }
        }

        v23 += 32;
      }

      while (&a2[v23] != a3);
      v12 = a1[1];
      v8 += v23;
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    v14 = &a2[v13];
    v15 = v12 - v8;
    if (v12 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &a2[v16 + 8];
        *&v8[v16] = *&a2[v16];
        v20 = &v8[v16 + 8];
        if (a2 != v8)
        {
          v21 = a2[v16 + 31];
          if (v8[v16 + 31] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &a2[v16 + 8];
            }

            else
            {
              v17 = *v19;
            }

            if (v21 >= 0)
            {
              v18 = a2[v16 + 31];
            }

            else
            {
              v18 = *&a2[v16 + 16];
            }

            sub_13B38(v20, v17, v18);
          }

          else if (a2[v16 + 31] < 0)
          {
            sub_13A68(v20, *v19, *&a2[v16 + 16]);
          }

          else
          {
            v22 = *v19;
            *&v8[v16 + 24] = *&a2[v16 + 24];
            *v20 = v22;
          }
        }

        v16 += 32;
      }

      while (v13 != v16);
      v12 = a1[1];
    }

    v38 = v12;
    v33 = v12;
    if (v14 != a3)
    {
      v34 = &a2[v15 + 8];
      v33 = v12;
      do
      {
        while (1)
        {
          v36 = v34 - 8;
          *v33 = *(v34 - 8);
          v37 = v33 + 8;
          if (*(v34 + 23) < 0)
          {
            break;
          }

          v35 = *v34;
          *(v33 + 3) = *(v34 + 16);
          *v37 = v35;
          v33 += 32;
          v38 = v33;
          v34 += 32;
          if ((v36 + 32) == a3)
          {
            goto LABEL_54;
          }
        }

        sub_325C(v37, *v34, *(v34 + 8));
        v33 = v38 + 32;
        v38 += 32;
        v34 += 32;
      }

      while ((v36 + 32) != a3);
    }

LABEL_54:
    a1[1] = v33;
  }
}

void sub_3987EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_39833C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_398804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_39833C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unint64_t sub_39881C(unint64_t result)
{
  if (result >> 31)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, v1);
    sub_23E08("narrowing ", &v8, &v9);
    v3 = std::string::append(&v9, " failed", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    v10 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = *(&v10 + 1);
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return result;
}

void sub_3988F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_398970(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 26);
  *(result + 32) = 0;
  *(result + 26) = v4;
  *(result + 24) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_398ABC(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      v7 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 40) = v6;
  operator delete(v6);
  v7 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v7;
  operator delete(v7);
  goto LABEL_5;
}

void sub_398B1C()
{
  if (!*v0)
  {
    JUMPOUT(0x398AE0);
  }

  JUMPOUT(0x398AD8);
}

uint64_t sub_398B2C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_398B80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {

      sub_398C90(a1, a2);
    }
  }

  else if (*(a1 + 80))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      *(a1 + 64) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      *(a1 + 40) = v5;
      operator delete(v5);
    }

    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 80) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v7 = *(a2 + 24);
    *(a1 + 26) = *(a2 + 26);
    *(a1 + 24) = v7;
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
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t sub_398C90(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 24);
  v6 = *(a1 + 32);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 24) = v5;
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return a1;
}

uint64_t sub_398D68(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

double sub_398DC8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v13 + 1) = 0;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  v7 = 104 * v2;
  *(v7 + 16) = 0;
  v8 = v7 + 16;
  *(v6 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    sub_398970(v8, a2 + 16);
    *(v6 + 96) = 1;
  }

  *&v13 = v6 + 104;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  sub_398F80(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *&result = v6 + 104;
  *(a1 + 1) = v13;
  if (v11)
  {
    operator delete(v11);
    *&result = v6 + 104;
  }

  return result;
}

void sub_398F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_398D68(v4);
  sub_3990C4(va);
  _Unwind_Resume(a1);
}

void sub_398F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3990C4(va);
  _Unwind_Resume(a1);
}

void sub_398F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 48;
    v7 = a2 + 48;
    do
    {
      v8 = v7 - 48;
      v9 = *(v7 - 48);
      v10 = *(v7 - 40);
      *(v6 - 32) = 0;
      *(v6 - 40) = v10;
      *(v6 - 48) = v9;
      *(v6 + 48) = 0;
      if (*(v7 + 48) == 1)
      {
        *(v6 - 32) = 0;
        *(v6 - 24) = 0;
        *(v6 - 16) = 0;
        *(v6 - 32) = *(v7 - 32);
        *(v6 - 16) = *(v7 - 16);
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        v11 = *(v7 - 8);
        *(v6 - 6) = *(v7 - 6);
        *(v6 - 8) = v11;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = 0;
        *v6 = *v7;
        *(v6 + 16) = *(v7 + 16);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 24) = *(v7 + 24);
        *(v6 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v6 + 48) = 1;
      }

      v6 += 104;
      v7 += 104;
    }

    while (v8 + 104 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 96) == 1)
      {
        v12 = *(v5 + 72);
        if (v12)
        {
          *(v5 + 80) = v12;
          operator delete(v12);
        }

        v13 = *(v5 + 48);
        if (v13)
        {
          *(v5 + 56) = v13;
          operator delete(v13);
        }

        v14 = *(v5 + 16);
        if (v14)
        {
          *(v5 + 24) = v14;
          operator delete(v14);
        }
      }

      v5 += 104;
    }
  }
}

void **sub_3990C4(void **a1)
{
  sub_3990F8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3990F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    if (*(i - 8) == 1)
    {
      v4 = *(i - 32);
      if (v4)
      {
        *(i - 24) = v4;
        operator delete(v4);
      }

      v5 = *(i - 56);
      if (v5)
      {
        *(i - 48) = v5;
        operator delete(v5);
      }

      v6 = *(i - 88);
      if (v6)
      {
        *(i - 80) = v6;
        operator delete(v6);
      }
    }
  }
}

uint64_t sub_399184(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (v2)
  {
    v3 = *(a1 + 432);
    v4 = *(a1 + 424);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 8) == 1)
        {
          v5 = *(v3 - 32);
          if (v5)
          {
            *(v3 - 24) = v5;
            operator delete(v5);
          }

          v6 = *(v3 - 56);
          if (v6)
          {
            *(v3 - 48) = v6;
            operator delete(v6);
          }

          v7 = *(v3 - 88);
          if (v7)
          {
            *(v3 - 80) = v7;
            operator delete(v7);
          }
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = *(a1 + 424);
    }

    *(a1 + 432) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 376);
  if (v8)
  {
    v9 = *(a1 + 384);
    v10 = *(a1 + 376);
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
      v10 = *(a1 + 376);
    }

    *(a1 + 384) = v8;
    operator delete(v10);
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v11 = *(a1 + 312);
  if (v11)
  {
    v12 = *(a1 + 320);
    v13 = *(a1 + 312);
    if (v12 != v11)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 24));
        }

        v12 -= 32;
      }

      while (v12 != v11);
      v13 = *(a1 + 312);
    }

    *(a1 + 320) = v11;
    operator delete(v13);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v14 = *(a1 + 248);
  if (v14)
  {
    v15 = *(a1 + 256);
    v16 = *(a1 + 248);
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
      v16 = *(a1 + 248);
    }

    *(a1 + 256) = v14;
    operator delete(v16);
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v17 = *(a1 + 184);
  if (v17)
  {
    v18 = *(a1 + 192);
    v19 = *(a1 + 184);
    if (v18 != v17)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 24));
        }

        v18 -= 32;
      }

      while (v18 != v17);
      v19 = *(a1 + 184);
    }

    *(a1 + 192) = v17;
    operator delete(v19);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v20 = *(a1 + 120);
  if (v20)
  {
    v21 = *(a1 + 128);
    v22 = *(a1 + 120);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 32;
      }

      while (v21 != v20);
      v22 = *(a1 + 120);
    }

    *(a1 + 128) = v20;
    operator delete(v22);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    v24 = *(a1 + 64);
    v25 = *(a1 + 56);
    if (v24 != v23)
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 24));
        }

        v24 -= 32;
      }

      while (v24 != v23);
      v25 = *(a1 + 56);
    }

    *(a1 + 64) = v23;
    operator delete(v25);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_399448(uint64_t a1, uint64_t a2)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  *a1 = std::chrono::system_clock::to_time_t(&__t);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  return a1;
}

unint64_t sub_399530(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = 4;
  if (*(a2 + 448))
  {
    v3 = 1;
  }

  v4 = &a1[v3];
  v5 = a1[v3];
  v6 = a1[v3 + 1];
  if (v6 >= a1[v3 + 2])
  {
    v7 = sub_399DB8(v4, a2);
  }

  else
  {
    sub_39A0FC(v6, a2);
    v7 = v6 + 456;
    v4[1] = (v6 + 456);
  }

  v70 = 0x823EE08FB823EE09 * ((v6 - v5) >> 3);
  v4[1] = v7;
  v8 = *(v2 + 424);
  v9 = *(v2 + 432);
  if (v8 == v9)
  {
    v64 = *(v2 + 448);
    return v70 | (v64 << 32);
  }

  v10 = 0;
  v11 = 0;
  v66 = v2;
  v68 = *(v2 + 432);
  do
  {
    v12 = v10;
    if (v10 != v11)
    {
      v12 = v10;
      while (1)
      {
        v13 = *(v12 + 8);
        v14 = *(v8 + 2);
        if (v13 != -1 && v14 == v13)
        {
          v72 = &v71;
          if ((off_2669560[v13])(&v72, v12, v8))
          {
            break;
          }
        }

        else if (v14 == v13)
        {
          break;
        }

        v12 += 12;
        if (v12 == v11)
        {
          goto LABEL_20;
        }
      }
    }

    if (v12 == v11)
    {
LABEL_20:
      v16 = *(v2 + 448);
      v17 = *(v2 + 408);
      v18 = *(v8 + 2);
      if (v18 <= 3)
      {
        switch(v18)
        {
          case 1:
            v19 = *(v2 + 404);
            v72 = v8;
            v38 = sub_39A8EC(a1 + 28, v8);
            v21 = v38;
            v22 = v38[4];
            v39 = v38[5];
            if (v22 >= v39)
            {
              v67 = v17;
              v24 = v38[3];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 4;
              v40 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                sub_1794();
              }

              v41 = v39 - v24;
              if (v41 >> 3 > v40)
              {
                v40 = v41 >> 3;
              }

              if (v41 >= 0x7FFFFFFFFFFFFFF0)
              {
                v29 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v40;
              }

              if (v29)
              {
                if (!(v29 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              goto LABEL_99;
            }

            goto LABEL_89;
          case 2:
            v19 = *(v2 + 404);
            v72 = v8;
            v50 = sub_39AC6C(a1 + 13, v8);
            v21 = v50;
            v22 = v50[4];
            v51 = v50[5];
            if (v22 >= v51)
            {
              v67 = v17;
              v24 = v50[3];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 4;
              v53 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                sub_1794();
              }

              v54 = v51 - v24;
              if (v54 >> 3 > v53)
              {
                v53 = v54 >> 3;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFF0)
              {
                v29 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v53;
              }

              if (v29)
              {
                if (!(v29 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              goto LABEL_99;
            }

            goto LABEL_89;
          case 3:
            v19 = *(v2 + 404);
            v72 = v8;
            v30 = sub_39AFEC(a1 + 33, v8);
            v21 = v30;
            v22 = v30[4];
            v31 = v30[5];
            if (v22 >= v31)
            {
              v67 = v17;
              v24 = v30[3];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 4;
              v32 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                sub_1794();
              }

              v33 = v31 - v24;
              if (v33 >> 3 > v32)
              {
                v32 = v33 >> 3;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF0)
              {
                v29 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v32;
              }

              if (v29)
              {
                if (!(v29 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              goto LABEL_99;
            }

            goto LABEL_89;
        }
      }

      else
      {
        if (v18 <= 5)
        {
          if (v18 == 4)
          {
            v19 = *(v2 + 404);
            v72 = v8;
            v42 = sub_39B36C(a1 + 23, v8);
            v21 = v42;
            v22 = v42[4];
            v43 = v42[5];
            if (v22 >= v43)
            {
              v67 = v17;
              v24 = v42[3];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 4;
              v44 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                sub_1794();
              }

              v45 = v43 - v24;
              if (v45 >> 3 > v44)
              {
                v44 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v29 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v44;
              }

              if (v29)
              {
                if (!(v29 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              goto LABEL_99;
            }
          }

          else
          {
            v19 = *(v2 + 404);
            v72 = v8;
            v20 = sub_39B6EC(a1 + 38, v8);
            v21 = v20;
            v22 = v20[4];
            v23 = v20[5];
            if (v22 >= v23)
            {
              v67 = v17;
              v24 = v20[3];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 4;
              v27 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                sub_1794();
              }

              v28 = v23 - v24;
              if (v28 >> 3 > v27)
              {
                v27 = v28 >> 3;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFF0)
              {
                v29 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                if (!(v29 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

LABEL_99:
              v55 = v26;
              v56 = 16 * v26;
              *v56 = v70;
              *(v56 + 4) = v16;
              *(v56 + 8) = v19;
              *(v56 + 12) = v67;
              v52 = 16 * v26 + 16;
              v57 = (v56 - 16 * v55);
              memcpy(v57, v24, v25);
              v21[3] = v57;
              v21[4] = v52;
              v21[5] = 16 * v29;
              if (v24)
              {
                operator delete(v24);
              }

              v2 = v66;
              goto LABEL_102;
            }
          }

LABEL_89:
          *v22 = v70;
          *(v22 + 4) = v16;
          v52 = v22 + 16;
          *(v22 + 8) = v19;
          *(v22 + 12) = v17;
LABEL_102:
          v9 = v68;
          v21[4] = v52;
          goto LABEL_103;
        }

        if (v18 == 6)
        {
          v19 = *(v2 + 404);
          v72 = v8;
          v46 = sub_39BA6C(a1 + 18, v8);
          v21 = v46;
          v22 = v46[4];
          v47 = v46[5];
          if (v22 >= v47)
          {
            v67 = v17;
            v24 = v46[3];
            v25 = v22 - v24;
            v26 = (v22 - v24) >> 4;
            v48 = v26 + 1;
            if ((v26 + 1) >> 60)
            {
              sub_1794();
            }

            v49 = v47 - v24;
            if (v49 >> 3 > v48)
            {
              v48 = v49 >> 3;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF0)
            {
              v29 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v48;
            }

            if (v29)
            {
              if (!(v29 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            goto LABEL_99;
          }

          goto LABEL_89;
        }

        if (v18 == 7)
        {
          v19 = *(v2 + 404);
          v72 = v8;
          v34 = sub_39BDEC(a1 + 8, v8);
          v21 = v34;
          v22 = v34[4];
          v35 = v34[5];
          if (v22 >= v35)
          {
            v67 = v17;
            v24 = v34[3];
            v25 = v22 - v24;
            v26 = (v22 - v24) >> 4;
            v36 = v26 + 1;
            if ((v26 + 1) >> 60)
            {
              sub_1794();
            }

            v37 = v35 - v24;
            if (v37 >> 3 > v36)
            {
              v36 = v37 >> 3;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF0)
            {
              v29 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v36;
            }

            if (v29)
            {
              if (!(v29 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            goto LABEL_99;
          }

          goto LABEL_89;
        }
      }

LABEL_103:
      v58 = v11 - v10;
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2);
      v60 = v59 + 1;
      if (v59 + 1 > 0x1555555555555555)
      {
        sub_1794();
      }

      if (0x5555555555555556 * (-v10 >> 2) > v60)
      {
        v60 = 0x5555555555555556 * (-v10 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v61 = 0x1555555555555555;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        if (v61 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v62 = 12 * v59;
      v63 = *v8;
      *(v62 + 8) = *(v8 + 2);
      *v62 = v63;
      v11 = 12 * v59 + 12;
      memcpy((12 * v59 + 12 * (v58 / -12)), v10, v58);
      if (v10)
      {
        operator delete(v10);
      }

      v10 = 12 * v59 + 12 * (v58 / -12);
    }

    v8 += 13;
  }

  while (v8 != v9);
  v64 = *(v2 + 448);
  if (v10)
  {
    operator delete(v10);
  }

  return v70 | (v64 << 32);
}