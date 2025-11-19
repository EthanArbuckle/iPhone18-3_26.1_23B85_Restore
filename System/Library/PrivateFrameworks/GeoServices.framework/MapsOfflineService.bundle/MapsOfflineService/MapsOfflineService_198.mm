uint64_t (***sub_BE366C(uint64_t (***result)(), uint64_t *a2))()
{
  v2 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    v4 = result;
    while (1)
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 88);
      v20 = v6;
      v21 = v2;
      if (v5 != v6)
      {
        break;
      }

LABEL_3:
      v2 += 112;
      if (v2 == v19)
      {
        return result;
      }
    }

    while (1)
    {
      if (((*(v4 + 72) >> *(v2 + 104)) & 1) == 0 || ((*(v4 + 80) >> *(v5 + 104)) & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = *(v4 + 88);
      switch(v7)
      {
        case 2:
          v23 = off_2671B58;
          v24 = v4;
          v25 = v4;
          result = &v23;
          v26 = &v23;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
            goto LABEL_30;
          }

          break;
        case 1:
          v8 = off_2671AD8;
LABEL_15:
          v23 = v8;
          v24 = v4;
          result = &v23;
          v26 = &v23;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
            goto LABEL_30;
          }

          break;
        case 0:
          v8 = off_2671A48;
          goto LABEL_15;
        default:
          result = 0;
          v26 = 0;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
LABEL_30:
            if (result != &v23)
            {
              goto LABEL_31;
            }

            goto LABEL_6;
          }

          break;
      }

      v22 = v5;
      do
      {
        while (1)
        {
          v11 = a2[3] + 160 * *v10;
          v12 = *(v11 + 72);
          v13 = *(v11 + 80);
          if (v12 != v13)
          {
            break;
          }

LABEL_26:
          *(v11 + 157) = *(v11 + 157);
          v10 += 4;
          if (v10 == v9)
          {
            goto LABEL_27;
          }
        }

        while (1)
        {
          v14 = (a2[6] + 248 * *v12);
          v15 = v14[9];
          v16 = v14[10];
          if (v15 != v16)
          {
            break;
          }

LABEL_22:
          v17 = v14[12];
          v18 = v14[13];
          if (v17 != v18)
          {
            while ((sub_BE3A0C(v4, v17, &v23) & 1) != 0)
            {
              v17 += 60;
              if (v17 == v18)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_17;
          }

LABEL_25:
          v12 += 4;
          if (v12 == v13)
          {
            goto LABEL_26;
          }
        }

        while ((sub_BE3A0C(v4, v15, &v23) & 1) != 0)
        {
          v15 += 60;
          if (v15 == v16)
          {
            goto LABEL_22;
          }
        }

LABEL_17:
        *(v11 + 157) |= 1u;
        v10 += 4;
      }

      while (v10 != v9);
LABEL_27:
      result = v26;
      v2 = v21;
      v5 = v22;
      v6 = v20;
      if (v26 != &v23)
      {
LABEL_31:
        if (result)
        {
          result = ((*result)[5])(result);
        }

        goto LABEL_7;
      }

LABEL_6:
      result = ((*result)[4])(result);
LABEL_7:
      v5 += 112;
      if (v5 == v6)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_BE3958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE3980(uint64_t a1)
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

uint64_t sub_BE3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BE3BE4(a1, *(a2 + 28), *(a2 + 48), &__p);
  sub_BE3EA4(a1, *(a2 + 28), *(a2 + 48), &v19);
  v6 = v19;
  v7 = v20;
  if (v19 != v20)
  {
    v8 = v19;
    while (1)
    {
      v9 = *v8;
      v10 = *(a3 + 24);
      v24 = *(a2 + 48);
      v23 = v9;
      if (!v10)
      {
        sub_2B7420();
      }

      if ((*(*v10 + 48))(v10, a2, &v24, &v23))
      {
        break;
      }

      if (++v8 == v7)
      {
        goto LABEL_6;
      }
    }

    result = 1;
LABEL_15:
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_6:
  v11 = v22;
  if (__p != v22)
  {
    v12 = __p + 4;
    do
    {
      v13 = *(v12 - 1);
      v14 = *(a3 + 24);
      v24 = *(a2 + 48);
      v23 = v13;
      if (!v14)
      {
        sub_2B7420();
      }

      result = (*(*v14 + 48))(v14, a2, &v24, &v23);
      if (v12 == v11)
      {
        v16 = 1;
      }

      else
      {
        v16 = result;
      }

      v12 += 4;
    }

    while (v16 != 1);
    goto LABEL_15;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    v17 = result;
    operator delete(v6);
    result = v17;
  }

LABEL_17:
  if (__p)
  {
    v18 = result;
    operator delete(__p);
    return v18;
  }

  return result;
}

void sub_BE3B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_BE3BE4(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v30 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = sub_A794D0((a1 + 112), &v30);
  if (!v7)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v8 = *(v7 + 6);
  v9 = sub_A57920((*(a1 + 96) + 4136), v30);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = sub_A571D4((v9 + v11 + *(v9 + v11)), a3);
    if (v8 >= a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = sub_A571D4(0, a3);
    if (v8 >= a3)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
  v29 = *(v12 + 14);
  do
  {
    v14 = sub_A57920((*(a1 + 96) + 4136), v30);
    v15 = (v14 - *v14);
    if (*v15 >= 9u && (v16 = v15[4]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_A571D4(v17, --a3);
    if ((*(a1 + 92) & 1) == 0 && *(v18 + 14) != v29)
    {
      break;
    }

    v19 = sub_A57920((*(a1 + 96) + 4136), v30);
    v20 = (v19 - *v19);
    if (*v20 >= 9u && (v21 = v20[4]) != 0)
    {
      v22 = (v19 + v21 + *(v19 + v21));
    }

    else
    {
      v22 = 0;
    }

    if ((*(sub_A571D4(v22, a3) + 15) & 2) != 0)
    {
      v23 = a4[2];
      if (v13 < v23)
      {
        *v13 = a3;
        v13 += 4;
        a4[1] = v13;
        if (*(a1 + 93) != 1)
        {
          break;
        }
      }

      else
      {
        v24 = v13;
        v25 = v13 >> 2;
        v26 = v25 + 1;
        if ((v25 + 1) >> 62)
        {
          *a4 = 0;
          sub_1794();
        }

        if (v23 >> 1 > v26)
        {
          v26 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          if (!(v27 >> 62))
          {
            operator new();
          }

          *a4 = 0;
          sub_1808();
        }

        v28 = (4 * v25);
        *v28 = a3;
        v13 = (v28 + 1);
        memcpy(0, 0, v24);
        a4[1] = v13;
        a4[2] = 0;
        a4[1] = v13;
        if (*(a1 + 93) != 1)
        {
          break;
        }
      }
    }
  }

  while (a3 > v8);
LABEL_5:
  *a4 = 0;
}

void sub_BE3E7C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE3EA4(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v33 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = sub_A57920((*(a1 + 96) + 4136), a2);
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v32 = *(sub_A571D4(v10, a3) + 14);
  v11 = sub_BE4464(a1, v33, v32);
  v12 = sub_A794D0((a1 + 112), &v33);
  if (!v12)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v13 = *(v12 + 7);
  v14 = a3 + 1;
  if (v11 != -1 && v14 <= v13)
  {
    v16 = 0;
    do
    {
      v17 = sub_A57920((*(a1 + 96) + 4136), v33);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_A571D4(v20, v14);
      if ((*(a1 + 92) & 1) == 0 && *(v21 + 14) != v32)
      {
        break;
      }

      if (v11 == v14 || ((v22 = sub_A57920((*(a1 + 96) + 4136), v33), v23 = (v22 - *v22), *v23 < 9u) || (v24 = v23[4]) == 0 ? (v25 = 0) : (v25 = (v22 + v24 + *(v22 + v24))), (*(sub_A571D4(v25, v14) + 15) & 2) != 0))
      {
        v26 = a4[2];
        if (v16 < v26)
        {
          *v16 = v14;
          v16 += 4;
          a4[1] = v16;
          if (*(a1 + 94) != 1)
          {
            break;
          }
        }

        else
        {
          v27 = v16;
          v28 = v16 >> 2;
          v29 = v28 + 1;
          if ((v28 + 1) >> 62)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v26 >> 1 > v29)
          {
            v29 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v30 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            if (!(v30 >> 62))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v31 = (4 * v28);
          *v31 = v14;
          v16 = (v31 + 1);
          memcpy(0, 0, v27);
          a4[1] = v16;
          a4[2] = 0;
          a4[1] = v16;
          if (*(a1 + 94) != 1)
          {
            break;
          }
        }
      }

      ++v14;
    }

    while (v14 <= v13);
  }

  *a4 = 0;
}

void sub_BE4150(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BE4178(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = sub_A57920((*(a1 + 96) + 4136), a2);
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
  }

  else
  {
    v8 = 0;
  }

  v9 = __ROR8__(*sub_A571D4(v8, a3), 32);
  v16[0] = 0x1FFFFFFFELL;
  v16[1] = v9;
  if (!sub_A5436C(*(a1 + 104), v16))
  {
    return 0x7FFFFFFFLL;
  }

  v10 = sub_A5436C(*(a1 + 104), v16);
  if (!v10)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v11 = v10;
  v12 = *(v10 + 8);
  result = 0x7FFFFFFFLL;
  if (v12 != 0x7FFFFFFF)
  {
    v14 = *(v11 + 9);
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(v11 + 10);
      if (v15 != 0x7FFFFFFF)
      {
        return (v14 + v12 + v15);
      }
    }
  }

  return result;
}

uint64_t sub_BE4270(uint64_t a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = sub_A5706C((*(a1 + 96) + 4136), a2);
  v11 = v10;
  v12 = &v10[-*v10];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v13 += &v10[*&v10[v13]];
    }
  }

  v14 = 4 * a2;
  v15 = (v13 + v14 + 4 + *(v13 + v14 + 4));
  v16 = (v15 - *v15);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_A7AC40(v18, a3);
  v20 = (v11 - *v11);
  if (*v20 < 7u)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20[3];
    if (v21)
    {
      v21 = (v21 + v11 + *(v21 + v11));
    }
  }

  v22 = *(sub_A7AEE0(v21, *(v19 + 4) + a4) + 4);
  v23 = sub_A5706C((*(a1 + 96) + 4136), a2);
  v24 = v23;
  v25 = &v23[-*v23];
  if (*v25 < 5u)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 + 2);
    if (v26)
    {
      v26 += &v23[*&v23[v26]];
    }
  }

  v27 = (v26 + v14 + 4 + *(v26 + v14 + 4));
  v28 = (v27 - *v27);
  if (*v28 >= 7u && (v29 = v28[3]) != 0)
  {
    v30 = (v27 + v29 + *(v27 + v29));
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_A7AC40(v30, a3);
  v32 = (v24 - *v24);
  if (*v32 < 7u)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32[3];
    if (v33)
    {
      v33 = (v33 + v24 + *(v33 + v24));
    }
  }

  return (10 * (*(sub_A7AEE0(v33, *(v31 + 4) + a5) + 4) - v22));
}

uint64_t sub_BE4464(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_A57920((*(a1 + 96) + 4136), a2);
  v7 = (v6 - *v6);
  if (*v7 >= 9u)
  {
    v8 = v7[4];
    if (v8)
    {
      v9 = *(v6 + v8 + *(v6 + v8));
      if (v9)
      {
        v10 = (v9 - 1);
        while (1)
        {
          v11 = sub_A57920((*(a1 + 96) + 4136), a2);
          v12 = (v11 - *v11);
          if (*v12 >= 9u && (v13 = v12[4]) != 0)
          {
            v14 = sub_A571D4((v11 + v13 + *(v11 + v13)), v10);
            if (*(a1 + 92))
            {
              goto LABEL_13;
            }
          }

          else
          {
            v14 = sub_A571D4(0, v10);
            if (*(a1 + 92))
            {
              goto LABEL_13;
            }
          }

          if (a3 == *(v14 + 14))
          {
LABEL_13:
            v15 = sub_A57920((*(a1 + 96) + 4136), a2);
            v16 = (v15 - *v15);
            if (*v16 >= 9u && (v17 = v16[4]) != 0)
            {
              if (*(sub_A571D4((v15 + v17 + *(v15 + v17)), v10) + 15))
              {
                return v10;
              }
            }

            else if (*(sub_A571D4(0, v10) + 15))
            {
              return v10;
            }
          }

          v10 = (v10 - 1);
          if (v10 == -1)
          {
            return v10;
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_BE45F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_BE4670(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_BE4670(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_BE4A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BE4A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_BE4AA0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_BE4C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        *v7 = *v4;
        v9 = *(v4 + 16);
        v10 = *(v4 + 32);
        v11 = *(v4 + 64);
        *(v7 + 48) = *(v4 + 48);
        *(v7 + 64) = v11;
        *(v7 + 16) = v9;
        *(v7 + 32) = v10;
        v12 = (v7 + 80);
        v13 = *(v7 + 80);
        if (v13)
        {
          v14 = *(v7 + 88);
          v8 = *(v7 + 80);
          if (v14 != v13)
          {
            do
            {
              v15 = *(v14 - 32);
              if (v15)
              {
                *(v14 - 24) = v15;
                operator delete(v15);
              }

              v14 -= 112;
            }

            while (v14 != v13);
            v8 = *v12;
          }

          *(v7 + 88) = v13;
          operator delete(v8);
          *v12 = 0;
          *(v7 + 88) = 0;
          *(v7 + 96) = 0;
        }

        *(v7 + 80) = *(v4 + 80);
        *(v7 + 96) = *(v4 + 96);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v7 + 104) = *(v4 + 104);
        v4 += 112;
        v7 += 112;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v17 = *(v6 - 32);
      if (v17)
      {
        v18 = *(v6 - 24);
        v16 = *(v6 - 32);
        if (v18 != v17)
        {
          do
          {
            v19 = *(v18 - 32);
            if (v19)
            {
              *(v18 - 24) = v19;
              operator delete(v19);
            }

            v18 -= 112;
          }

          while (v18 != v17);
          v16 = *(v6 - 32);
        }

        *(v6 - 24) = v17;
        operator delete(v16);
      }

      v6 -= 112;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_BE4E24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671A48;
  a2[1] = v2;
  return result;
}

BOOL sub_BE4E50(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = sub_BE4178(v5, *(a2 + 28), *a3);
  v9 = sub_BE4178(v5, *(a2 + 28), v7);
  if (v9 == 0x7FFFFFFF)
  {
    return 0;
  }

  v11 = v8 < v9;
  if (v9 < v8)
  {
    v11 = -1;
  }

  if (v7 < v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v7 == v6)
  {
    v12 = 0;
  }

  if (!v11)
  {
    v11 = v12;
  }

  return v11 < 1;
}

uint64_t sub_BE4F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BE4FEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671AD8;
  a2[1] = v2;
  return result;
}

BOOL sub_BE5018(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = sub_BE4178(v5, *(a2 + 28), *a3);
  v9 = sub_BE4178(v5, *(a2 + 28), v7);
  v10 = sub_BE4270(v5, *(a2 + 28), *(a2 + 36), v6, v7) + v8;
  return v9 != 0x7FFFFFFF && v9 <= v10;
}

uint64_t sub_BE50A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BE5194(uint64_t a1, uint64_t a2)
{
  *a2 = off_2671B58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_BE51C4(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = sub_BE4178(v8, *(a2 + 28), *a3);
  v10 = sub_BE4178(v8, *(a2 + 28), v7);
  if (v10 == 0x7FFFFFFF)
  {
    return 0;
  }

  v12 = v9 < v10;
  if (v10 < v9)
  {
    v12 = -1;
  }

  if (v7 < v6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 == v6)
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = v13;
  }

  if (v12 > 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = sub_BE4178(v14, *(a2 + 28), v6);
  v16 = sub_BE4178(v14, *(a2 + 28), v7);
  v17 = sub_BE4270(v14, *(a2 + 28), *(a2 + 36), v6, v7) + v15;
  return v16 != 0x7FFFFFFF && v16 <= v17;
}

uint64_t sub_BE52EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *sub_BE5364(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    while (1)
    {
      result = sub_A794D0(a3 + 14, (v5 + 28));
      if (result)
      {
        goto LABEL_4;
      }

      v6 = v4;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        v8 = 0;
        do
        {
          v9 = sub_A57920((a3[12] + 4136), *(v5 + 28));
          v10 = (v9 - *v9);
          if (*v10 >= 9u && (v11 = v10[4]) != 0)
          {
            v12 = sub_A571D4((v9 + v11 + *(v9 + v11)), v8);
            v13 = a3[13];
            v14 = v13[1];
            if (v14)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v12 = sub_A571D4(0, v8);
            v13 = a3[13];
            v14 = v13[1];
            if (v14)
            {
LABEL_14:
              v15 = __ROR8__(*v12, 32);
              v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v15 ^ (v15 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v15 ^ (v15 >> 33))) >> 33));
              v17 = ((v16 ^ (v16 >> 33)) + 0x300357C1825D9FCCLL) ^ 0x506F9DC1424E4A4ELL;
              v18 = vcnt_s8(v14);
              v18.i16[0] = vaddlv_u8(v18);
              if (v18.u32[0] > 1uLL)
              {
                v19 = v17;
                if (v17 >= *&v14)
                {
                  v19 = v17 % *&v14;
                }
              }

              else
              {
                v19 = v17 & (*&v14 - 1);
              }

              v20 = *(*v13 + 8 * v19);
              if (v20)
              {
                v21 = *v20;
                if (v21)
                {
                  if (v18.u32[0] < 2uLL)
                  {
                    v22 = *&v14 - 1;
                    while (1)
                    {
                      v23 = v21[1];
                      if (v17 == v23)
                      {
                        v24 = *(v21 + 5) == 1 && *(v21 + 4) == -2;
                        if (v24 && v21[3] == v15)
                        {
                          goto LABEL_44;
                        }
                      }

                      else if ((v23 & v22) != v19)
                      {
                        goto LABEL_8;
                      }

                      v21 = *v21;
                      if (!v21)
                      {
                        goto LABEL_8;
                      }
                    }
                  }

                  do
                  {
                    v25 = v21[1];
                    if (v17 == v25)
                    {
                      v26 = *(v21 + 5) == 1 && *(v21 + 4) == -2;
                      if (v26 && v21[3] == v15)
                      {
                        goto LABEL_44;
                      }
                    }

                    else
                    {
                      if (v25 >= *&v14)
                      {
                        v25 %= *&v14;
                      }

                      if (v25 != v19)
                      {
                        break;
                      }
                    }

                    v21 = *v21;
                  }

                  while (v21);
                }
              }
            }
          }

LABEL_8:
          v24 = v8++ == v7;
        }

        while (!v24);
      }

LABEL_44:
      v27 = sub_A57920((a3[12] + 4136), *(v5 + 28));
      v28 = (v27 - *v27);
      v4 = v6;
      if (*v28 >= 9u)
      {
        v29 = v28[4];
        if (v29)
        {
          v30 = *(v27 + v29 + *(v27 + v29));
          v31 = *(v5 + 12);
          v32 = v31 >= v30 ? v30 : *(v5 + 12);
          if (v30 > v31)
          {
            break;
          }
        }
      }

LABEL_3:
      result = sub_BE580C(a3 + 14, (v5 + 28));
LABEL_4:
      v5 = (v5 + 60);
      if (v5 == v4)
      {
        return result;
      }
    }

    while (1)
    {
      v33 = sub_A57920((a3[12] + 4136), *(v5 + 28));
      v34 = (v33 - *v33);
      if (*v34 >= 9u && (v35 = v34[4]) != 0)
      {
        v36 = sub_A571D4((v33 + v35 + *(v33 + v35)), --v30);
        v37 = a3[13];
        v38 = v37[1];
        if (v38)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v36 = sub_A571D4(0, --v30);
        v37 = a3[13];
        v38 = v37[1];
        if (v38)
        {
LABEL_57:
          v39 = __ROR8__(*v36, 32);
          v40 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) >> 33));
          v41 = ((v40 ^ (v40 >> 33)) + 0x300357C1825D9FCCLL) ^ 0x506F9DC1424E4A4ELL;
          v42 = vcnt_s8(v38);
          v42.i16[0] = vaddlv_u8(v42);
          if (v42.u32[0] > 1uLL)
          {
            v43 = v41;
            if (v41 >= *&v38)
            {
              v43 = v41 % *&v38;
            }
          }

          else
          {
            v43 = v41 & (*&v38 - 1);
          }

          v44 = *(*v37 + 8 * v43);
          if (v44)
          {
            v45 = *v44;
            if (v45)
            {
              if (v42.u32[0] < 2uLL)
              {
                v46 = *&v38 - 1;
                while (1)
                {
                  v49 = v45[1];
                  if (v41 == v49)
                  {
                    v50 = *(v45 + 5) == 1 && *(v45 + 4) == -2;
                    if (v50 && v45[3] == v39)
                    {
                      goto LABEL_3;
                    }
                  }

                  else if ((v49 & v46) != v43)
                  {
                    goto LABEL_51;
                  }

                  v45 = *v45;
                  if (!v45)
                  {
                    goto LABEL_51;
                  }
                }
              }

              do
              {
                v47 = v45[1];
                if (v41 == v47)
                {
                  v48 = *(v45 + 5) == 1 && *(v45 + 4) == -2;
                  if (v48 && v45[3] == v39)
                  {
                    goto LABEL_3;
                  }
                }

                else
                {
                  if (v47 >= *&v38)
                  {
                    v47 %= *&v38;
                  }

                  if (v47 != v43)
                  {
                    break;
                  }
                }

                v45 = *v45;
              }

              while (v45);
            }
          }
        }
      }

LABEL_51:
      if (v30 == v32)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t *sub_BE580C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_BE6204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_BE62C0(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 8) != 17)
    {
      goto LABEL_13;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (v1 != 17)
    {
      goto LABEL_31;
    }
  }

  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  if (v3 == 0x5F6E6F6974617473 && v4 == 0x6F74735F6E656874 && v5 == 112)
  {
    return 0;
  }

LABEL_13:
  if ((v1 & 0x80000000) == 0 || *(a1 + 8) != 40 || (**a1 == 0x5F6E6F6974617473 ? (v8 = *(*a1 + 8) == 0x6E696C5F6E656874) : (v8 = 0), v8 ? (v9 = *(*a1 + 16) == 0x696C61636F6C5F65) : (v9 = 0), v9 ? (v10 = *(*a1 + 24) == 0x6E6172745F64657ALL) : (v10 = 0), v10 ? (v11 = *(*a1 + 32) == 0x657079745F746973) : (v11 = 0), !v11))
  {
LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" provided in configuration", &v17, &v18);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v16 = sub_2D390(exception, v14, size);
  }

  return 1;
}

void sub_BE6454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE64D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[3];
  v47 = a3 + 3;
  for (i = a3[4]; i != v5; i -= 160)
  {
    v7 = *(i - 88);
    if (v7)
    {
      *(i - 80) = v7;
      operator delete(v7);
    }
  }

  a3[4] = v5;
  v8 = *a3;
  for (j = a3[1]; j != v8; j -= 112)
  {
    v11 = *(j - 32);
    if (v11)
    {
      v12 = *(j - 24);
      v10 = *(j - 32);
      if (v12 != v11)
      {
        do
        {
          v13 = *(v12 - 32);
          if (v13)
          {
            *(v12 - 24) = v13;
            operator delete(v13);
          }

          v12 -= 112;
        }

        while (v12 != v11);
        v10 = *(j - 32);
      }

      *(j - 24) = v11;
      operator delete(v10);
    }
  }

  a3[1] = v8;
  sub_BE6A44(a1, a3 + 6, *(a1 + 4), __p);
  v14 = a3[3];
  if (v14)
  {
    v15 = a3[4];
    v16 = a3[3];
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 88);
        if (v17)
        {
          *(v15 - 80) = v17;
          operator delete(v17);
        }

        v15 -= 160;
      }

      while (v15 != v14);
      v16 = *v47;
    }

    a3[4] = v14;
    operator delete(v16);
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
  }

  *(a3 + 3) = *__p;
  a3[5] = v51;
  v18 = *(a2 + 152);
  v19 = a1;
  if (v18 == 1)
  {
    if (*a1 == 1)
    {
      sub_BE703C(a1, v47, 0, __p);
      sub_BE9458(a3, a3[1], __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4));
      v20 = __p[0];
      if (__p[0])
      {
        v21 = __p[1];
        v22 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v24 = *(v21 - 4);
            if (v24)
            {
              v25 = *(v21 - 3);
              v23 = *(v21 - 4);
              if (v25 != v24)
              {
                do
                {
                  v26 = *(v25 - 32);
                  if (v26)
                  {
                    *(v25 - 24) = v26;
                    operator delete(v26);
                  }

                  v25 -= 112;
                }

                while (v25 != v24);
                v23 = *(v21 - 4);
              }

              *(v21 - 3) = v24;
              operator delete(v23);
            }

            v21 -= 112;
          }

          while (v21 != v20);
          v22 = __p[0];
        }

        __p[1] = v20;
        operator delete(v22);
        v19 = a1;
      }
    }

    sub_BE703C(v19, v47, *(v19 + 8), __p);
    sub_BE9458(a3, a3[1], __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4));
    v27 = __p[0];
    if (__p[0])
    {
      v28 = __p[1];
      v29 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v31 = *(v28 - 4);
          if (v31)
          {
            v32 = *(v28 - 3);
            v30 = *(v28 - 4);
            if (v32 != v31)
            {
              do
              {
                v33 = *(v32 - 32);
                if (v33)
                {
                  *(v32 - 24) = v33;
                  operator delete(v33);
                }

                v32 -= 112;
              }

              while (v32 != v31);
              v30 = *(v28 - 4);
            }

            *(v28 - 3) = v31;
            operator delete(v30);
          }

          v28 -= 112;
        }

        while (v28 != v27);
        v29 = __p[0];
        v19 = a1;
      }

      __p[1] = v27;
      operator delete(v29);
    }

    v35 = *a3;
    v34 = a3[1];
    v46 = v34;
    while (v35 != v34)
    {
      v36 = 16;
      if (!*(v35 + 104))
      {
        v36 = 12;
      }

      v37 = *(v19 + v36);
      v38 = *(v35 + 80);
      v48 = (v35 + 80);
      memset(v49, 0, sizeof(v49));
      v40 = *(v38 + 80);
      v39 = *(v38 + 88);
      if (v39 != v40)
      {
        if (!(((v39 - v40) >> 4) >> 62))
        {
          operator new();
        }

        sub_1794();
      }

      sub_BE77AC(v19, v47, v49, v37, __p);
      v41 = *v48;
      if (*v48)
      {
        v42 = *(v35 + 88);
        v43 = *v48;
        if (v42 != v41)
        {
          do
          {
            v44 = *(v42 - 4);
            if (v44)
            {
              *(v42 - 3) = v44;
              operator delete(v44);
            }

            v42 -= 112;
          }

          while (v42 != v41);
          v43 = *v48;
        }

        *(v35 + 88) = v41;
        operator delete(v43);
        *v48 = 0;
        *(v35 + 88) = 0;
        *(v35 + 96) = 0;
      }

      *(v35 + 80) = *__p;
      *(v35 + 96) = v51;
      __p[1] = 0;
      v51 = 0;
      __p[0] = 0;
      v35 += 112;
      v34 = v46;
    }
  }
}

void sub_BE69F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_BE76FC(va);
  _Unwind_Resume(a1);
}

void sub_BE6A44(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v8 = *a2;
  v7 = a2[1];
  v46 = 0;
  v47 = 0;
  v45 = 0;
  if (v7 != v8)
  {
    if (!((0xEF7BDEF7BDEF7BDFLL * ((v7 - v8) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 == 1)
  {
    v9 = off_2671C68;
    goto LABEL_8;
  }

  if (!a3)
  {
    v9 = off_2671BD8;
LABEL_8:
    v48[0] = v9;
    v48[1] = a1;
    v49 = v48;
    goto LABEL_10;
  }

  v49 = 0;
LABEL_10:
  sub_BE7C9C(&v45, v48);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v10 = v45;
  if (v45 != v46)
  {
    v11 = v45 - 1;
    v35 = v4;
    do
    {
      if (v10 == v45)
      {
        goto LABEL_15;
      }

      if (!v49)
      {
        sub_2B7420();
      }

      if ((*(*v49 + 48))(v49, v11, v10))
      {
LABEL_15:
        LOBYTE(v37) = 0;
        *(&v37 + 4) = 0x8000000080000000;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        *&v43 = 0x8000000080000000;
        DWORD2(v43) = 0x7FFFFFFF;
        WORD6(v43) = 0;
        *v44 = 0x8000000080000000;
        *&v44[8] = 0;
        *&v44[12] = xmmword_22A7450;
        *&v44[28] = -COERCE_DOUBLE(0x8000000080000000);
        *&v44[36] = -1;
        v44[40] = 1;
        *&v44[44] = 256;
        v44[44] = sub_BE7DF8(a1, *v10, v4);
        v12 = *v10;
        v13 = *(*v10 + 124);
        v14 = *(*v10 + 156);
        *v44 = *(*v10 + 140);
        *&v44[16] = v14;
        *&v44[25] = *(v12 + 165);
        v43 = v13;
        v15 = a4[1];
        if (v15 >= a4[2])
        {
          v22 = sub_BE85C8(a4, &v37);
        }

        else
        {
          *v15 = v37;
          v16 = v38;
          v17 = v39;
          v18 = v40;
          *(v15 + 64) = v41;
          *(v15 + 32) = v17;
          *(v15 + 48) = v18;
          *(v15 + 72) = 0;
          *(v15 + 16) = v16;
          *(v15 + 80) = 0;
          *(v15 + 88) = 0;
          if (v42 != *(&v41 + 1))
          {
            if (((v42 - *(&v41 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v19 = v43;
          v20 = *v44;
          v21 = *&v44[16];
          *(v15 + 142) = *&v44[30];
          *(v15 + 112) = v20;
          *(v15 + 128) = v21;
          *(v15 + 96) = v19;
          v22 = v15 + 160;
        }

        a4[1] = v22;
        if (*(&v41 + 1))
        {
          *&v42 = *(&v41 + 1);
          operator delete(*(&v41 + 1));
        }
      }

      v23 = a4[1];
      v25 = *(v23 - 80);
      v24 = *(v23 - 72);
      if (v25 >= v24)
      {
        v27 = *(v23 - 88);
        v28 = v25 - v27;
        v29 = (v25 - v27) >> 4;
        v30 = v29 + 1;
        if ((v29 + 1) >> 60)
        {
          sub_1794();
        }

        v31 = v24 - v27;
        if (v31 >> 3 > v30)
        {
          v30 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (!(v32 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v33 = (16 * v29);
        *v33 = 0xFFFFFFFFLL;
        v33[1] = 0;
        v26 = 16 * v29 + 16;
        memcpy(0, v27, v28);
        *(v23 - 88) = 0;
        *(v23 - 80) = v26;
        *(v23 - 72) = 0;
        if (v27)
        {
          operator delete(v27);
        }

        v4 = v35;
      }

      else
      {
        *v25 = 0xFFFFFFFFLL;
        *(v25 + 1) = 0;
        v26 = (v25 + 16);
      }

      *(v23 - 80) = v26;
      *(*(a4[1] - 80) - 16) = sub_314EB0(0xEF7BDEF7BDEF7BDFLL * ((*v10++ - *a2) >> 3));
      ++v11;
    }

    while (v10 != v46);
  }

  if (v49 == v48)
  {
    (*(*v49 + 32))(v49);
    v34 = v45;
    if (v45)
    {
LABEL_42:
      v46 = v34;
      operator delete(v34);
    }
  }

  else
  {
    if (v49)
    {
      (*(*v49 + 40))();
    }

    v34 = v45;
    if (v45)
    {
      goto LABEL_42;
    }
  }
}

void sub_BE6FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  sub_BE7F20(v24 - 160);
  v26 = *(v24 - 184);
  if (v26)
  {
    *(v24 - 176) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_BE703C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (v8 != v7)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 5)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 > 2)
  {
    if ((a3 - 3) < 2)
    {
      v48 = off_2671E78;
      v49 = a3;
      v50 = a1;
      v51 = &v48;
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        v48 = off_2671CE8;
        v51 = &v48;
        goto LABEL_15;
      case 1:
        v9 = off_2671D78;
        goto LABEL_13;
      case 2:
        v9 = off_2671DF8;
LABEL_13:
        v48 = v9;
        v49 = a1;
        v51 = &v48;
        goto LABEL_15;
    }
  }

  v51 = 0;
LABEL_15:
  sub_BE7FAC(&v43, &v48);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v10 = v43;
  if (v43 != v44)
  {
    while (1)
    {
      if (v10 != v43)
      {
        if (!v51)
        {
          sub_2B7420();
        }

        if (!((*v51)[6])(v51, v10 - 1, v10))
        {
          goto LABEL_42;
        }
      }

      LOBYTE(v37) = 0;
      *(&v37 + 4) = 0x8000000080000000;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(__p, 0, 25);
      LOBYTE(__p[3]) = sub_BE8188(a1, v10, a3);
      v11 = __p[1];
      v12 = 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4);
      if (__p[1] == __p[0])
      {
        break;
      }

      if (v12 < 2)
      {
        goto LABEL_27;
      }

      v13 = __p[0] + 112;
      while (v11 != v13)
      {
        v14 = *(v11 - 4);
        if (v14)
        {
          *(v11 - 3) = v14;
          operator delete(v14);
        }

        v11 -= 112;
      }

      __p[1] = v13;
      v15 = a4[1];
      if (v15 < a4[2])
      {
LABEL_28:
        *v15 = v37;
        v16 = v38;
        v17 = v39;
        v18 = v41;
        *(v15 + 48) = v40;
        *(v15 + 64) = v18;
        *(v15 + 16) = v16;
        *(v15 + 32) = v17;
        *(v15 + 80) = 0;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        v46 = v15 + 80;
        v47 = 0;
        if (__p[1] != __p[0])
        {
          if ((0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4)) < 0x24924924924924ALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v15 + 104) = __p[3];
        v19 = v15 + 112;
        goto LABEL_34;
      }

LABEL_33:
      v19 = sub_BE8BA4(a4, &v37);
LABEL_34:
      a4[1] = v19;
      v20 = __p[0];
      if (__p[0])
      {
        v21 = __p[1];
        v22 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v23 = *(v21 - 4);
            if (v23)
            {
              *(v21 - 3) = v23;
              operator delete(v23);
            }

            v21 -= 112;
          }

          while (v21 != v20);
          v22 = __p[0];
        }

        __p[1] = v20;
        operator delete(v22);
      }

LABEL_42:
      v24 = *(a4[1] - 24);
      v26 = *(v24 - 24);
      v25 = *(v24 - 16);
      if (v26 >= v25)
      {
        v28 = *(v24 - 32);
        v29 = v26 - v28;
        v30 = (v26 - v28) >> 4;
        v31 = v30 + 1;
        if ((v30 + 1) >> 60)
        {
          sub_1794();
        }

        v32 = v25 - v28;
        if (v32 >> 3 > v31)
        {
          v31 = v32 >> 3;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF0)
        {
          v33 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v34 = (16 * v30);
        *v34 = 0xFFFFFFFFLL;
        v34[1] = 0;
        v27 = 16 * v30 + 16;
        memcpy(0, v28, v29);
        *(v24 - 32) = 0;
        *(v24 - 24) = v27;
        *(v24 - 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v26 = 0xFFFFFFFFLL;
        *(v26 + 1) = 0;
        v27 = (v26 + 16);
      }

      *(v24 - 24) = v27;
      *(*(*(a4[1] - 24) - 24) - 16) = sub_314EB0(0xCCCCCCCCCCCCCCCDLL * ((*v10++ - *a2) >> 5));
      if (v10 == v44)
      {
        goto LABEL_56;
      }
    }

    sub_BE8890(__p, 1 - v12);
LABEL_27:
    v15 = a4[1];
    if (v15 < a4[2])
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_56:
  if (v51 == &v48)
  {
    ((*v51)[4])(v51);
    v35 = v43;
    if (v43)
    {
LABEL_60:
      v44 = v35;
      operator delete(v35);
    }
  }

  else
  {
    if (v51)
    {
      (*v51)[5]();
    }

    v35 = v43;
    if (v43)
    {
      goto LABEL_60;
    }
  }
}

void sub_BE7674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  sub_BE8340(v27 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_BE76FC(void **a1)
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
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 32);
              if (v8)
              {
                *(v7 - 24) = v8;
                operator delete(v8);
              }

              v7 -= 112;
            }

            while (v7 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_BE77AC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v8 = a3[1];
  if (v8 != *a3)
  {
    if (!(((v8 - *a3) >> 2) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  *&v31 = &v37;
  if (a4 == 1)
  {
    v9 = off_2671F78;
    goto LABEL_8;
  }

  if (!a4)
  {
    v9 = off_2671EF8;
LABEL_8:
    v40[0] = v9;
    v40[1] = a1;
    v41 = v40;
    goto LABEL_10;
  }

  v41 = 0;
LABEL_10:
  sub_BE7FAC(&v37, v40);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = v37;
  if (v37 != v38)
  {
    v11 = v37 - 8;
    v29 = v5;
    do
    {
      if (v10 == v37)
      {
        goto LABEL_15;
      }

      if (!v41)
      {
        sub_2B7420();
      }

      if ((*(*v41 + 48))(v41, v11, v10))
      {
LABEL_15:
        LOBYTE(v31) = 0;
        *(&v31 + 4) = 0x8000000080000000;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        memset(__p, 0, 25);
        LOBYTE(__p[3]) = sub_BE83CC(a1, v10, v5);
        v12 = a5[1];
        if (v12 >= a5[2])
        {
          v16 = sub_BE920C(a5, &v31);
        }

        else
        {
          *v12 = v31;
          v13 = v32;
          v14 = v33;
          v15 = v35;
          *(v12 + 48) = v34;
          *(v12 + 64) = v15;
          *(v12 + 80) = 0;
          *(v12 + 16) = v13;
          *(v12 + 32) = v14;
          *(v12 + 88) = 0;
          *(v12 + 96) = 0;
          if (__p[1] != __p[0])
          {
            if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          *(v12 + 104) = __p[3];
          v16 = v12 + 112;
        }

        a5[1] = v16;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      v17 = a5[1];
      v19 = *(v17 - 24);
      v18 = *(v17 - 16);
      if (v19 >= v18)
      {
        v21 = *(v17 - 32);
        v22 = v19 - v21;
        v23 = (v19 - v21) >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          sub_1794();
        }

        v25 = v18 - v21;
        if (v25 >> 3 > v24)
        {
          v24 = v25 >> 3;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF0)
        {
          v26 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (!(v26 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v27 = (16 * v23);
        *v27 = 0xFFFFFFFFLL;
        v27[1] = 0;
        v20 = 16 * v23 + 16;
        memcpy(0, v21, v22);
        *(v17 - 32) = 0;
        *(v17 - 24) = v20;
        *(v17 - 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }

        v5 = v29;
      }

      else
      {
        *v19 = 0xFFFFFFFFLL;
        *(v19 + 1) = 0;
        v20 = (v19 + 16);
      }

      *(v17 - 24) = v20;
      *(*(a5[1] - 24) - 16) = sub_314EB0(0xCCCCCCCCCCCCCCCDLL * ((*v10++ - *a2) >> 5));
      v11 += 8;
    }

    while (v10 != v38);
  }

  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    v28 = v37;
    if (v37)
    {
LABEL_42:
      v38 = v28;
      operator delete(v28);
    }
  }

  else
  {
    if (v41)
    {
      (*(*v41 + 40))();
    }

    v28 = v37;
    if (v37)
    {
      goto LABEL_42;
    }
  }
}

void sub_BE7C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  sub_BE8340(v27 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_BE7C9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_BEA084(v2, v3, v6);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_BE7DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

BOOL sub_BE7DF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    return 0;
  }

  v4 = *(a2 + 172);
  v5 = sub_A57920((*(a1 + 24) + 4136), *(a2 + 152));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (v6[2])
  {
    v8 = v5 + v6[2] + *(v5 + v6[2]);
    if (v7 < 9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (v7 < 9)
    {
      goto LABEL_8;
    }
  }

  v15 = v6[4];
  if (v15)
  {
    v10 = (v5 + v15 + *(v5 + v15));
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
LABEL_9:
  v11 = sub_A571D4(v10, v4);
  v12 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v8[8 * *(v11 + 14) + 4], 0, "line");
  v13 = (v12 - *v12);
  return *v13 >= 0x4Du && (v14 = v13[38]) != 0 && *(v12 + v14) == 2;
}

uint64_t sub_BE7F20(uint64_t a1)
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

uint64_t sub_BE7FAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v12 = 0;
  }

  if (&v3[-v2] >> 3 < 129)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = &v3[-v2] >> 3;
    while (1)
    {
      v6 = operator new(8 * v5, &std::nothrow);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        v9 = 0;
        v5 = v7;
        goto LABEL_13;
      }
    }

    v9 = v6;
  }

LABEL_13:
  sub_BEBBC4(v2, v3, v11, &v3[-v2] >> 3, v9, v5);
  if (v9)
  {
    operator delete(v9);
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))();
  }

  return result;
}

void sub_BE8168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  sub_BE8340(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8188(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 3) >= 2)
  {
    if (a3 == 2)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      LOBYTE(v4) = a3 == 1;
    }

    return v4;
  }

  v7 = *(*a2 + 144);
  v8 = sub_A57920((*(a1 + 24) + 4136), *(*a2 + 124));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 5)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!v9[2])
  {
    v11 = 0;
    if (v10 >= 9)
    {
      goto LABEL_25;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = v8 + v9[2] + *(v8 + v9[2]);
  if (v10 < 9)
  {
    goto LABEL_11;
  }

LABEL_25:
  v22 = v9[4];
  if (!v22)
  {
    goto LABEL_11;
  }

  v12 = (v8 + v22 + *(v8 + v22));
LABEL_12:
  v13 = sub_A571D4(v12, v7);
  v14 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v11[8 * *(v13 + 14) + 4], 0, "line");
  v15 = (v14 - *v14);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(v14 + v16 + 4) | (*(v14 + v16) << 32);
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v18 = sub_93E04C(*(*(a1 + 24) + 4144) + 24, __ROR8__(v17, 32), 0, "system");
  v19 = (v18 - *v18);
  if (*v19 < 0x25u)
  {
    goto LABEL_20;
  }

  v20 = v19[18];
  if (!v20)
  {
    goto LABEL_20;
  }

  v4 = *(v18 + v20);
  if (v4 == 1)
  {
    return v4;
  }

  if (v4)
  {
    return 0;
  }

LABEL_20:
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_BE8340(uint64_t a1)
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

uint64_t sub_BE83CC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*a2 + 144);
  v6 = sub_A57920((*(a1 + 24) + 4136), *(*a2 + 124));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_A571D4(v9, v5);
  v11 = sub_502FF8(*(*(a1 + 24) + 4120) + 24, *v10, 0, "stop");
  v12 = (v11 - *v11);
  if (*v12 >= 0xDu && (v13 = v12[6]) != 0)
  {
    v14 = *(v11 + v13 + 4) | (*(v11 + v13) << 32);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (HIDWORD(v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  if (v14 == -1)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  if (v14 == -1)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * (HIDWORD(v14) == 0);
  }

  if (a3)
  {
    v17 = 0;
  }

  if (a3 == 1)
  {
    return v16;
  }

  else
  {
    return v17;
  }
}

void **sub_BE84E0(void **a1)
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
        v5 = *(v3 - 11);
        if (v5)
        {
          *(v3 - 10) = v5;
          operator delete(v5);
        }

        v3 -= 160;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_BE8554(void **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BE85C8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v4 = 0x199999999999999;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  v7 = *(a2 + 72);
  *(v5 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9 != v7)
  {
    if (((v9 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v10;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 142) = *(a2 + 142);
  v11 = *a1;
  v12 = a1[1];
  v13 = v5 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v5 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v18 = v14[8];
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v17;
      *(v15 + 16) = v16;
      *(v15 + 64) = v18;
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 72) = *(v14 + 9);
      *(v15 + 88) = v14[11];
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
      v19 = *(v14 + 6);
      v20 = *(v14 + 7);
      v21 = *(v14 + 8);
      *(v15 + 142) = *(v14 + 142);
      *(v15 + 112) = v20;
      *(v15 + 128) = v21;
      *(v15 + 96) = v19;
      v14 += 20;
      v15 += 160;
    }

    while (v14 != v12);
    do
    {
      v22 = v11[9];
      if (v22)
      {
        v11[10] = v22;
        operator delete(v22);
      }

      v11 += 20;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v5 + 160;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v5 + 160;
}

void sub_BE87FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  sub_BE8820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8820(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 160;
        *(a1 + 16) = v2 - 160;
        v5 = *(v2 - 88);
        if (!v5)
        {
          break;
        }

        *(v2 - 80) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 160;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BE8890(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 112 * a2;
      do
      {
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 4) = 0x8000000080000000;
        *(v3 + 89) = 0uLL;
        v3 += 112;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x249249249249249)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x124924924924924)
    {
      v8 = 0x249249249249249;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x249249249249249)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 112 * v5;
    v11 = 112 * v5 + 112 * a2;
    v12 = 112 * v5;
    do
    {
      *(v12 + 80) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 4) = 0x8000000080000000;
      *(v12 + 89) = 0uLL;
      v12 += 112;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = *v16;
        v18 = *(v16 + 1);
        v19 = *(v16 + 2);
        v20 = *(v16 + 4);
        *(v17 + 48) = *(v16 + 3);
        *(v17 + 64) = v20;
        *(v17 + 16) = v18;
        *(v17 + 32) = v19;
        *(v17 + 88) = 0;
        *(v17 + 96) = 0;
        *(v17 + 80) = 0;
        *(v17 + 80) = *(v16 + 5);
        *(v17 + 96) = v16[12];
        v16[10] = 0;
        v16[11] = 0;
        v16[12] = 0;
        *(v17 + 104) = *(v16 + 104);
        v16 += 14;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        v21 = v13[10];
        if (v21)
        {
          v13[11] = v21;
          operator delete(v21);
        }

        v13 += 14;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_BE8AD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 112;
        *(a1 + 16) = v2 - 112;
        v5 = *(v2 - 32);
        if (!v5)
        {
          break;
        }

        *(v2 - 24) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 112;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_BE8B40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 112;
    }
  }

  return a1;
}

uint64_t sub_BE8BA4(uint64_t *a1, uint64_t a2)
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

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(&stru_20.filesize + 14 * v2) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  if (v10 != v9)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4)) <= 0x249249249249249)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 104) = *(a2 + 104);
  v11 = *a1;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v6 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 4);
      *(v15 + 48) = *(v14 + 3);
      *(v15 + 64) = v18;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      *(v15 + 88) = 0;
      *(v15 + 96) = 0;
      *(v15 + 80) = 0;
      *(v15 + 80) = *(v14 + 5);
      *(v15 + 96) = v14[12];
      v14[10] = 0;
      v14[11] = 0;
      v14[12] = 0;
      *(v15 + 104) = *(v14 + 104);
      v14 += 14;
      v15 += 112;
    }

    while (v14 != v12);
    do
    {
      v20 = v11[10];
      if (v20)
      {
        v21 = v11[11];
        v19 = v11[10];
        if (v21 != v20)
        {
          do
          {
            v22 = *(v21 - 32);
            if (v22)
            {
              *(v21 - 24) = v22;
              operator delete(v22);
            }

            v21 -= 112;
          }

          while (v21 != v20);
          v19 = v11[10];
        }

        v11[11] = v20;
        operator delete(v19);
      }

      v11 += 14;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v6 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v6 + 112;
}

void sub_BE8E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  *(v3 + 88) = v2;
  sub_BE8FA8(va1);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

void sub_BE8E58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_BE8FA8(va1);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      v8 = *(v5 + 64);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 64) = v8;
      *(a4 + 16) = v6;
      *(a4 + 32) = v7;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      v10 = *(v5 + 80);
      v9 = *(v5 + 88);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(a4 + 104) = *(v5 + 104);
      v5 += 112;
      a4 += 112;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_BE8F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 88) = v12;
    operator delete(v12);
  }

  sub_BE8B40(&a9);
  _Unwind_Resume(a1);
}

void ***sub_BE8FA8(void ***a1)
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
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v4 -= 112;
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

uint64_t sub_BE902C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 112;
        *(a1 + 16) = i - 112;
        v5 = *(i - 32);
        if (v5)
        {
          break;
        }

        i -= 112;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }

      v6 = *(i - 24);
      v7 = *(i - 32);
      if (v6 != v5)
      {
        break;
      }

      *(i - 24) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_12;
      }
    }

    do
    {
      v8 = *(v6 - 32);
      if (v8)
      {
        *(v6 - 24) = v8;
        operator delete(v8);
      }

      v6 -= 112;
    }

    while (v6 != v5);
    v9 = *(i - 32);
    *(i - 24) = v5;
    operator delete(v9);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_BE90F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        v7 = *(v3 - 24);
        v5 = *(v3 - 32);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 32);
            if (v8)
            {
              *(v7 - 24) = v8;
              operator delete(v8);
            }

            v7 -= 112;
          }

          while (v7 != v6);
          v5 = *(v3 - 32);
        }

        *(v3 - 24) = v6;
        operator delete(v5);
      }

      v3 -= 112;
    }
  }

  return a1;
}

uint64_t sub_BE9198(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BE920C(uint64_t *a1, __int128 *a2)
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

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = a2[3];
  *(v6 + 32) = a2[2];
  *(v6 + 48) = v7;
  *(v6 + 64) = a2[4];
  v9 = *a2;
  v8 = a2[1];
  *(&stru_20.filesize + 14 * v2) = 0;
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v11 = *(a2 + 10);
  v10 = *(a2 + 11);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 104) = *(a2 + 104);
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v6 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 4);
      *(v16 + 48) = *(v15 + 3);
      *(v16 + 64) = v19;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 0;
      *(v16 + 80) = *(v15 + 5);
      *(v16 + 96) = v15[12];
      v15[10] = 0;
      v15[11] = 0;
      v15[12] = 0;
      *(v16 + 104) = *(v15 + 104);
      v15 += 14;
      v16 += 112;
    }

    while (v15 != v13);
    do
    {
      v20 = v12[10];
      if (v20)
      {
        v12[11] = v20;
        operator delete(v20);
      }

      v12 += 14;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v6 + 112;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 112;
}

void sub_BE9434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 88) = v5;
    operator delete(v5);
  }

  sub_BE8AD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE9458(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v8 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 4) >= a5)
    {
      v14 = v8 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v8 - a2) >> 4) >= a5)
      {
        sub_BE992C(a1, a2, v8, a2 + 112 * a5);
        v24 = 112 * a5 + a3;
        v25 = v5 + 80;
        v26 = a3 + 88;
        do
        {
          v27 = v26 - 88;
          *(v25 - 80) = *(v26 - 88);
          v28 = *(v26 - 72);
          v29 = *(v26 - 56);
          v30 = *(v26 - 24);
          *(v25 - 32) = *(v26 - 40);
          *(v25 - 16) = v30;
          *(v25 - 64) = v28;
          *(v25 - 48) = v29;
          if (v25 - 80 != v26 - 88)
          {
            sub_BE9DB4(v25, *(v26 - 8), *v26, 0x6DB6DB6DB6DB6DB7 * ((*v26 - *(v26 - 8)) >> 4));
          }

          *(v25 + 24) = *(v26 + 16);
          v25 += 112;
          v26 += 112;
        }

        while (v27 + 112 != v24);
      }

      else
      {
        v15 = v14 + a3;
        v55 = a1[1];
        v56[0] = v8;
        __p = a1;
        v51 = &v55;
        v52 = v56;
        v16 = v8;
        LOBYTE(v53) = 0;
        if (v14 + a3 != a4)
        {
          v49 = v14 + a3;
          v16 = v8;
          v17 = v14 + a3;
          do
          {
            *v16 = *v17;
            v18 = *(v17 + 16);
            v19 = *(v17 + 32);
            v20 = *(v17 + 64);
            *(v16 + 48) = *(v17 + 48);
            *(v16 + 64) = v20;
            *(v16 + 16) = v18;
            *(v16 + 32) = v19;
            *(v16 + 80) = 0;
            *(v16 + 88) = 0;
            *(v16 + 96) = 0;
            v21 = *(v17 + 80);
            v22 = *(v17 + 88);
            v56[1] = v16 + 80;
            v57 = 0;
            v23 = v16;
            if (v22 != v21)
            {
              if ((0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4)) <= 0x249249249249249)
              {
                operator new();
              }

              sub_1794();
            }

            *(v16 + 104) = *(v17 + 104);
            v17 += 112;
            v16 += 112;
            v56[0] = v23 + 112;
          }

          while (v17 != a4);
          v5 = a2;
          v14 = v8 - a2;
          v15 = v49;
        }

        a1[1] = v16;
        if (v14 >= 1)
        {
          sub_BE992C(a1, v5, v8, v5 + 112 * a5);
          v42 = v5 + 80;
          v43 = a3 + 88;
          do
          {
            v44 = v43 - 88;
            *(v42 - 80) = *(v43 - 88);
            v45 = *(v43 - 72);
            v46 = *(v43 - 56);
            v47 = *(v43 - 24);
            *(v42 - 32) = *(v43 - 40);
            *(v42 - 16) = v47;
            *(v42 - 64) = v45;
            *(v42 - 48) = v46;
            if (v42 - 80 != v43 - 88)
            {
              sub_BE9DB4(v42, *(v43 - 8), *v43, 0x6DB6DB6DB6DB6DB7 * ((*v43 - *(v43 - 8)) >> 4));
            }

            *(v42 + 24) = *(v43 + 16);
            v42 += 112;
            v43 += 112;
          }

          while (v44 + 112 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 4);
      if (v11 > 0x249249249249249)
      {
        sub_1794();
      }

      v12 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x124924924924924)
      {
        v13 = 0x249249249249249;
      }

      else
      {
        v13 = v11;
      }

      v54 = a1;
      if (v13)
      {
        if (v13 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 16 * ((a2 - v10) >> 4);
      __p = 0;
      v51 = v32;
      v52 = v32;
      v53 = 0;
      v33 = 112 * a5;
      v34 = (v32 + 112 * a5);
      do
      {
        sub_BE9C8C(v54, v32, a3);
        v32 += 112;
        a3 += 112;
        v33 -= 112;
      }

      while (v33);
      v52 = v34;
      v5 = sub_BE9A78(a1, &__p, v5);
      v35 = v51;
      for (i = v52; v52 != v35; i = v52)
      {
        while (1)
        {
          v38 = i - 14;
          v52 = i - 14;
          v39 = *(i - 4);
          if (v39)
          {
            break;
          }

          i -= 14;
          if (v38 == v35)
          {
            goto LABEL_26;
          }
        }

        v40 = *(i - 3);
        v37 = *(i - 4);
        if (v40 != v39)
        {
          do
          {
            v41 = *(v40 - 32);
            if (v41)
            {
              *(v40 - 24) = v41;
              operator delete(v41);
            }

            v40 -= 112;
          }

          while (v40 != v39);
          v37 = *(i - 4);
        }

        *(i - 3) = v39;
        operator delete(v37);
      }

LABEL_26:
      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_BE98CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

void sub_BE98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_BE8FA8(va1);
  sub_BE90F8(va);
  *(a6 + 8) = a5;
  _Unwind_Resume(a1);
}

void sub_BE9914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

__n128 sub_BE992C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = a2 + v5 - a4;
  v7 = v5;
  if (v6 < a3)
  {
    v8 = a2 + v5 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 32);
      v11 = *(v8 + 64);
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 64) = v11;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      result = *(v8 + 80);
      *(v7 + 80) = result;
      *(v7 + 96) = *(v8 + 96);
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v7 + 104) = *(v8 + 104);
      v8 += 112;
      v7 += 112;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v7;
  if (v5 != a4)
  {
    do
    {
      v14 = (v5 - 32);
      v15 = *(v5 - 32);
      *(v5 - 112) = *(v6 - 112);
      v16 = *(v6 - 96);
      v17 = *(v6 - 80);
      v18 = *(v6 - 48);
      *(v5 - 64) = *(v6 - 64);
      *(v5 - 48) = v18;
      *(v5 - 96) = v16;
      *(v5 - 80) = v17;
      if (v15)
      {
        v19 = *(v5 - 24);
        v13 = v15;
        if (v19 != v15)
        {
          do
          {
            v20 = *(v19 - 4);
            if (v20)
            {
              *(v19 - 3) = v20;
              operator delete(v20);
            }

            v19 -= 112;
          }

          while (v19 != v15);
          v13 = *v14;
        }

        *(v5 - 24) = v15;
        operator delete(v13);
        *v14 = 0;
        *(v5 - 24) = 0;
        *(v5 - 16) = 0;
      }

      result = *(v6 - 32);
      *(v5 - 32) = result;
      *(v5 - 16) = *(v6 - 16);
      *(v6 - 32) = 0;
      *(v6 - 24) = 0;
      *(v6 - 16) = 0;
      *(v5 - 8) = *(v6 - 8);
      v5 -= 112;
      v6 -= 112;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_BE9A78(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 64);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 64) = v12;
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v8 + 104) = *(v9 + 104);
      v9 += 112;
      v8 += 112;
    }

    while (v9 != v7);
    v13 = a3;
    do
    {
      v15 = *(v13 + 80);
      if (v15)
      {
        v16 = *(v13 + 88);
        v14 = *(v13 + 80);
        if (v16 != v15)
        {
          do
          {
            v17 = *(v16 - 32);
            if (v17)
            {
              *(v16 - 24) = v17;
              operator delete(v17);
            }

            v16 -= 112;
          }

          while (v16 != v15);
          v14 = *(v13 + 80);
        }

        *(v13 + 88) = v15;
        operator delete(v14);
      }

      v13 += 112;
    }

    while (v13 != v7);
  }

  v18 = *a1;
  v19 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v20 = v19 + v18 - a3;
  if (v18 != a3)
  {
    v21 = v18;
    v22 = v19 + v18 - a3;
    do
    {
      *v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 32);
      v25 = *(v21 + 64);
      *(v22 + 48) = *(v21 + 48);
      *(v22 + 64) = v25;
      *(v22 + 16) = v23;
      *(v22 + 32) = v24;
      *(v22 + 88) = 0;
      *(v22 + 96) = 0;
      *(v22 + 80) = 0;
      *(v22 + 80) = *(v21 + 80);
      *(v22 + 96) = *(v21 + 96);
      *(v21 + 80) = 0;
      *(v21 + 88) = 0;
      *(v21 + 96) = 0;
      *(v22 + 104) = *(v21 + 104);
      v21 += 112;
      v22 += 112;
    }

    while (v21 != a3);
    do
    {
      v27 = *(v18 + 80);
      if (v27)
      {
        v28 = *(v18 + 88);
        v26 = *(v18 + 80);
        if (v28 != v27)
        {
          do
          {
            v29 = *(v28 - 32);
            if (v29)
            {
              *(v28 - 24) = v29;
              operator delete(v29);
            }

            v28 -= 112;
          }

          while (v28 != v27);
          v26 = *(v18 + 80);
        }

        *(v18 + 88) = v27;
        operator delete(v26);
      }

      v18 += 112;
    }

    while (v18 != a3);
  }

  a2[1] = v20;
  v30 = *a1;
  *a1 = v20;
  a1[1] = v30;
  a2[1] = v30;
  v31 = a1[1];
  a1[1] = a2[2];
  a2[2] = v31;
  v32 = a1[2];
  a1[2] = a2[3];
  a2[3] = v32;
  *a2 = a2[1];
  return v6;
}

void sub_BE9C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v6 = *(a3 + 80);
  v7 = *(a3 + 88);
  if (v7 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 104) = *(a3 + 104);
}

void sub_BE9D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 88) = v10;
  sub_BE8FA8(&a9);
  _Unwind_Resume(a1);
}

void sub_BE9DB4(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 4) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v11 = *(v9 - 4);
          if (v11)
          {
            *(v9 - 3) = v11;
            operator delete(v11);
          }

          v9 -= 14;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x249249249249249)
    {
      v25 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
      v26 = 2 * v25;
      if (2 * v25 <= a4)
      {
        v26 = a4;
      }

      if (v25 >= 0x124924924924924)
      {
        v27 = 0x249249249249249;
      }

      else
      {
        v27 = v26;
      }

      if (v27 <= 0x249249249249249)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v7) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v20 = a2 + 88;
      do
      {
        v21 = v20 - 88;
        *v7 = *(v20 - 88);
        v22 = *(v20 - 72);
        v23 = *(v20 - 56);
        v24 = *(v20 - 24);
        *(v7 + 3) = *(v20 - 40);
        *(v7 + 4) = v24;
        *(v7 + 1) = v22;
        *(v7 + 2) = v23;
        if (v7 != (v20 - 88))
        {
          sub_4AEA34(v7 + 10, *(v20 - 8), *v20, (*v20 - *(v20 - 8)) >> 4);
        }

        *(v7 + 104) = *(v20 + 16);
        v7 += 14;
        v20 += 112;
      }

      while (v21 + 112 != a3);
      v12 = a1[1];
    }

    while (v12 != v7)
    {
      v28 = *(v12 - 32);
      if (v28)
      {
        *(v12 - 24) = v28;
        operator delete(v28);
      }

      v12 -= 112;
    }

    a1[1] = v7;
  }

  else
  {
    v13 = a2 + v12 - v7;
    if (v12 != v7)
    {
      v14 = (v7 + 10);
      v15 = a2 + 88;
      do
      {
        v16 = v15 - 88;
        *(v14 - 5) = *(v15 - 88);
        v17 = *(v15 - 72);
        v18 = *(v15 - 56);
        v19 = *(v15 - 24);
        *(v14 - 2) = *(v15 - 40);
        *(v14 - 1) = v19;
        *(v14 - 4) = v17;
        *(v14 - 3) = v18;
        if (v14 - 80 != (v15 - 88))
        {
          sub_4AEA34(v14, *(v15 - 8), *v15, (*v15 - *(v15 - 8)) >> 4);
        }

        v14[24] = *(v15 + 16);
        v14 += 112;
        v15 += 112;
      }

      while (v16 + 112 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_BE8E74(a1, v13, a3, v12);
  }
}

void sub_BEA084(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = &a2[-a1] >> 3;
  if (v3 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    v7 = &a2[-a1] >> 3;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
LABEL_8:
    a3 = v6;
    a2 = v5;
    a1 = v4;
  }

  sub_BEA174(a1, a2, a3, v3, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_BEA15C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BEA174(uint64_t result, char *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      v10 = a2 - 8;
      result = (*(*v9 + 48))(v9, a2 - 8, v8);
      if (result)
      {
        v11 = *v8;
        *v8 = *v10;
        *v10 = v11;
      }

      return result;
    }

    goto LABEL_56;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v12 = (result + 8);
    if ((result + 8) == a2)
    {
      return result;
    }

    v13 = 0;
    v14 = result;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        break;
      }

      v17 = v12;
      result = (*(*v16 + 48))(v16, v12, v14);
      if (result)
      {
        v54 = *v17;
        v18 = v13;
        do
        {
          *(v8 + v18 + 8) = *(v8 + v18);
          if (!v18)
          {
            v15 = v8;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_56;
          }

          v18 -= 8;
          result = (*(*v19 + 48))(v19, &v54, v8 + v18);
        }

        while ((result & 1) != 0);
        v15 = (v8 + v18 + 8);
LABEL_12:
        *v15 = v54;
      }

      v12 = v17 + 1;
      v13 += 8;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }

LABEL_56:
    sub_2B7420();
  }

  v21 = a4 >> 1;
  v22 = a4 >> 1;
  v23 = a4 - (a4 >> 1);
  v24 = (v22 * 8 + result);
  if (a4 <= a6)
  {
    sub_BEA56C(result, v24, a3, a4 >> 1, a5);
    v27 = &a5[v21];
    result = sub_BEA56C(&v8[v22], a2, a3, v23, v27);
    v28 = v27;
    v29 = a5;
    v30 = v8;
    v31 = &a5[a4];
    do
    {
      if (v28 == v31)
      {
        if (v29 == v27)
        {
          return result;
        }

        v45 = &a5[v22] - v29 - 8;
        if (v45 >= 0x38)
        {
          if ((v8 - v29) >= 0x20)
          {
            v47 = v30 + 2;
            v48 = (v45 >> 3) + 1;
            v49 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            v46 = &v29[v49];
            v30 = (v30 + v49 * 8);
            v50 = (v29 + 2);
            v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v52 = *v50;
              *(v47 - 1) = *(v50 - 1);
              *v47 = v52;
              v47 += 2;
              v50 += 2;
              v51 -= 4;
            }

            while (v51);
            if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v46 = v29;
          }
        }

        else
        {
          v46 = v29;
        }

        do
        {
          v53 = *v46++;
          *v30++ = v53;
        }

        while (v46 != v27);
        return result;
      }

      v32 = *(a3 + 24);
      if (!v32)
      {
        goto LABEL_56;
      }

      v33 = v28;
      result = (*(*v32 + 48))(v32, v28, v29);
      if (result)
      {
        v34 = v33;
      }

      else
      {
        v34 = v29;
      }

      if (result)
      {
        v35 = 0;
      }

      else
      {
        v35 = 8;
      }

      v29 = (v29 + v35);
      if (result)
      {
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v28 = &v33[v36];
      *v30++ = *v34;
      ++v8;
    }

    while (v29 != v27);
    if (v28 != v31)
    {
      v37 = v31 - v33 - v36 * 8 - 8;
      if (v37 <= 0x57)
      {
        goto LABEL_59;
      }

      if ((v8 - v33 - v36 * 8) < 0x20)
      {
        goto LABEL_59;
      }

      v38 = v30 + 2;
      v39 = (v37 >> 3) + 1;
      v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
      v28 = (v28 + v40);
      v30 = (v30 + v40);
      v41 = &v33[v36 + 2];
      v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v43 = *v41;
        *(v38 - 1) = *(v41 - 1);
        *v38 = v43;
        v38 += 2;
        v41 += 4;
        v42 -= 4;
      }

      while (v42);
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v44 = *v28++;
          *v30++ = v44;
        }

        while (v28 != v31);
      }
    }
  }

  else
  {
    sub_BEA174(result, v24, a3, a4 >> 1, a5, a6);
    sub_BEA174(&v8[v22], a2, a3, v23, a5, a6);

    return sub_BEA8F0(v8, &v8[v22], a2, a3, v21, v23, a5, a6);
  }

  return result;
}

char *sub_BEA56C(char *result, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v6;
      return result;
    }

    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (v9)
      {
        v10 = a2 - 8;
        result = (*(*v9 + 48))(v9, a2 - 1, v6);
        if (result)
        {
          v11 = v10;
        }

        else
        {
          v11 = v6;
        }

        *v5++ = *v11;
        if (!result)
        {
          v6 = v10;
        }

        goto LABEL_10;
      }

LABEL_57:
      sub_2B7420();
    }

    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v12 = result + 8;
      *a5 = *result;
      if (result + 8 == a2)
      {
        return result;
      }

      v13 = 0;
      v14 = a5;
      while (1)
      {
        v17 = *(a3 + 24);
        if (!v17)
        {
          goto LABEL_57;
        }

        v18 = v14++;
        result = (*(*v17 + 48))(v17, v12, v18);
        v15 = v14;
        if (result)
        {
          v18[1] = *v18;
          v15 = v5;
          if (v18 != v5)
          {
            v19 = v13;
            do
            {
              v20 = *(a3 + 24);
              if (!v20)
              {
                goto LABEL_57;
              }

              result = (*(*v20 + 48))(v20, v12, v5 + v19 - 8);
              if (!result)
              {
                v15 = (v5 + v19);
                goto LABEL_17;
              }

              *(v5 + v19) = *(v5 + v19 - 8);
              v19 -= 8;
            }

            while (v19);
            v15 = v5;
          }
        }

LABEL_17:
        v16 = *v12;
        v12 += 8;
        *v15 = v16;
        v13 += 8;
        if (v12 == a2)
        {
          return result;
        }
      }
    }

    v21 = a4 >> 1;
    v22 = a4 >> 1;
    v23 = &result[v22 * 8];
    sub_BEA174(result, &result[v22 * 8], a3, v21, a5, v21);
    result = sub_BEA174(&v6[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
    v25 = v5;
    v26 = v23;
    do
    {
      if (v26 == a2)
      {
        if (v6 == v23)
        {
          return result;
        }

        v42 = v23 - v6 - 8;
        if (v42 >= 0x38)
        {
          if ((v25 - v6) >= 0x20)
          {
            v44 = v5 + 2;
            v45 = (v42 >> 3) + 1;
            v46 = v45 & 0x3FFFFFFFFFFFFFFCLL;
            v5 = (v5 + v46 * 8);
            v43 = &v6[v46];
            v47 = (v6 + 2);
            v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v49 = *v47;
              *(v44 - 1) = *(v47 - 1);
              *v44 = v49;
              v47 += 2;
              v44 += 2;
              v48 -= 4;
            }

            while (v48);
            if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v43 = v6;
          }
        }

        else
        {
          v43 = v6;
        }

        do
        {
          v50 = *v43++;
          *v5++ = v50;
        }

        while (v43 != v23);
        return result;
      }

      v27 = *(a3 + 24);
      if (!v27)
      {
        goto LABEL_57;
      }

      v28 = v26;
      result = (*(*v27 + 48))(v27, v26, v6);
      if (result)
      {
        v29 = v28;
      }

      else
      {
        v29 = v6;
      }

      if (result)
      {
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      v26 = &v28[v30];
      if (result)
      {
        v31 = 0;
      }

      else
      {
        v31 = 8;
      }

      v6 = (v6 + v31);
      *v5++ = *v29;
      v25 += 8;
    }

    while (v6 != v23);
    if (v26 != a2)
    {
      v32 = a2 - v28 - v30 * 8 - 8;
      if (v32 < 0x58)
      {
        goto LABEL_60;
      }

      if ((v25 - v28 - v30 * 8) < 0x20)
      {
        goto LABEL_60;
      }

      v33 = 0;
      v34 = (v32 >> 3) + 1;
      v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      v36 = &v5[v35];
      v26 = (v26 + v35 * 8);
      v37 = &v28[v30 + 2];
      v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = &v5[v33];
        v40 = *v37;
        *v39 = *(v37 - 1);
        *(v39 + 1) = v40;
        v37 += 2;
        v33 += 4;
        v38 -= 4;
      }

      while (v38);
      v5 = v36;
      if (v34 != (v34 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_60:
        do
        {
          v41 = *v26++;
          *v5++ = v41;
        }

        while (v26 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_BEA8F0(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v54 = a6;
  if (a6)
  {
    v11 = result;
    while (1)
    {
      if (v54 <= a8 || a5 <= a8)
      {
        return sub_BEAE64(v11, a2, a3, a4, a5, v54, a7);
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        result = (*(*v14 + 48))(v14, a2, &v11[v12]);
        if (result)
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      if (-v13 < v54)
      {
        break;
      }

      if (v13 == -1)
      {
        v48 = *&v11[v12];
        *&v11[v12] = *a2;
        *a2 = v48;
        return result;
      }

      v23 = *(a4 + 24);
      if (v23)
      {
        if (v23 == a4)
        {
          v56 = v55;
          (*(*v23 + 24))(v23, v55);
        }

        else
        {
          v56 = (*(*v23 + 16))(v23);
        }
      }

      else
      {
        v56 = 0;
      }

      v49 = v16 / 2;
      v18 = &v11[8 * (v16 / 2) + v12];
      v17 = a2;
      if (a2 != a3)
      {
        v24 = (a3 - a2) >> 3;
        v17 = a2;
        do
        {
          if (!v56)
          {
            sub_2B7420();
          }

          v25 = &v17[8 * (v24 >> 1)];
          v26 = (*(*v56 + 48))(v56, v25, v18);
          if (v26)
          {
            v24 += ~(v24 >> 1);
          }

          else
          {
            v24 >>= 1;
          }

          if (v26)
          {
            v17 = v25 + 8;
          }
        }

        while (v24);
      }

      if (v56 == v55)
      {
        (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        (*(*v56 + 40))();
      }

      v50 = (v17 - a2) >> 3;
      v21 = v17;
      v22 = a2 - v18;
      if (a2 != v18)
      {
        goto LABEL_42;
      }

LABEL_64:
      a5 = -v13 - v49;
      v47 = v54 - v50;
      if (v49 + v50 >= v54 - (v49 + v50) - v13)
      {
        result = sub_BEA8F0(v21, v17, a3, a4, -v13 - v49, v54 - v50, a7, a8);
        a2 = v18;
        a5 = v49;
        a3 = v21;
        v11 += v12;
        v54 = v50;
        if (!v50)
        {
          return result;
        }
      }

      else
      {
        result = sub_BEA8F0(&v11[v12], v18, v21, a4, v49, v50, a7, a8);
        v11 = v21;
        a2 = v17;
        v54 -= v50;
        if (!v47)
        {
          return result;
        }
      }
    }

    v50 = v54 / 2;
    v17 = &a2[8 * (v54 / 2)];
    v18 = a2;
    if (a2 - v11 != v12)
    {
      v19 = (a2 - v11 - v12) >> 3;
      v18 = &v11[v12];
      do
      {
        v20 = *(a4 + 24);
        if (!v20)
        {
          sub_2B7420();
        }

        if ((*(*v20 + 48))(v20, v17, &v18[8 * (v19 >> 1)]))
        {
          v19 >>= 1;
        }

        else
        {
          v18 += 8 * (v19 >> 1) + 8;
          v19 += ~(v19 >> 1);
        }
      }

      while (v19);
    }

    v49 = (v18 - v11 - v12) >> 3;
    v21 = &a2[8 * (v54 / 2)];
    v22 = a2 - v18;
    if (a2 == v18)
    {
      goto LABEL_64;
    }

LABEL_42:
    v21 = v18;
    if (a2 != v17)
    {
      if (v18 + 8 == a2)
      {
        v27 = *v18;
        memmove(v18, a2, v17 - a2);
        v21 = &v18[v17 - a2];
        *v21 = v27;
      }

      else if (a2 + 8 == v17)
      {
        v28 = *(v17 - 1);
        v21 = v18 + 8;
        if (v17 - 8 != v18)
        {
          memmove(v18 + 8, v18, v17 - 8 - v18);
        }

        *v18 = v28;
      }

      else
      {
        v29 = v22 >> 3;
        v30 = (v17 - a2) >> 3;
        if (v22 >> 3 == v30)
        {
          v31 = v18 + 8;
          v32 = a2 + 8;
          do
          {
            v33 = *(v31 - 1);
            *(v31 - 1) = *(v32 - 1);
            *(v32 - 1) = v33;
            if (v31 == a2)
            {
              break;
            }

            v31 += 8;
            v34 = v32 == v17;
            v32 += 8;
          }

          while (!v34);
          v21 = a2;
        }

        else
        {
          v35 = v22 >> 3;
          do
          {
            v36 = v35;
            v35 = v30;
            v30 = v36 % v30;
          }

          while (v30);
          v37 = &v18[8 * v35];
          do
          {
            v39 = *(v37 - 1);
            v37 -= 8;
            v38 = v39;
            v40 = &v37[v22];
            v41 = v37;
            do
            {
              v42 = v40;
              *v41 = *v40;
              v43 = (v17 - v40) >> 3;
              v44 = __OFSUB__(v29, v43);
              v46 = v29 - v43;
              v45 = (v46 < 0) ^ v44;
              v40 = &v18[8 * v46];
              if (v45)
              {
                v40 = &v42[8 * v29];
              }

              v41 = v42;
            }

            while (v40 != v37);
            *v42 = v38;
          }

          while (v37 != v18);
          v21 = &v18[v17 - a2];
        }
      }
    }

    goto LABEL_64;
  }

  return result;
}

void sub_BEAE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

void sub_BEAE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

char *sub_BEAE64(char *__dst, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst == a2)
    {
      return __dst;
    }

    v21 = a2 - __dst - 8;
    if (v21 < 0x18)
    {
      v22 = __src;
      v23 = __dst;
    }

    else
    {
      v22 = __src;
      v23 = __dst;
      if ((__src - __dst) > 0x1F)
      {
        v24 = (v21 >> 3) + 1;
        v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
        v22 = &__src[v25];
        v23 = &__dst[v25];
        v26 = (__dst + 16);
        v27 = __src + 16;
        v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 4;
        }

        while (v28);
        if (v24 == (v24 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_38:
          while (v10 != v9)
          {
            v39 = *(a4 + 24);
            if (!v39)
            {
LABEL_58:
              sub_2B7420();
            }

            __dst = (*(*v39 + 48))(v39, v10, v7);
            if (__dst)
            {
              v40 = v10;
            }

            else
            {
              v40 = v7;
            }

            if (__dst)
            {
              v41 = 8;
            }

            else
            {
              v41 = 0;
            }

            v10 += v41;
            if (__dst)
            {
              v42 = 0;
            }

            else
            {
              v42 = 8;
            }

            v7 += v42;
            *v11 = *v40;
            v11 += 8;
            if (v7 == v22)
            {
              return __dst;
            }
          }

          return memmove(v11, v7, v22 - v7);
        }
      }
    }

    do
    {
      v38 = *v23;
      v23 += 8;
      *v22 = v38;
      v22 += 8;
    }

    while (v23 != a2);
    goto LABEL_38;
  }

  if (a2 == a3)
  {
    return __dst;
  }

  v12 = a3 - a2 - 8;
  if (v12 < 0x18)
  {
    v13 = __src;
    v14 = a2;
  }

  else
  {
    v13 = __src;
    v14 = a2;
    if ((__src - a2) > 0x1F)
    {
      v15 = (v12 >> 3) + 1;
      v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
      v13 = &__src[v16];
      v14 = &a2[v16];
      v17 = (a2 + 16);
      v18 = __src + 16;
      v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 == (v15 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_18;
      }
    }
  }

  do
  {
    v30 = *v14;
    v14 += 8;
    *v13 = v30;
    v13 += 8;
  }

  while (v14 != a3);
LABEL_18:
  v31 = a3;
  while (v10 != v11)
  {
    v32 = *(a4 + 24);
    if (!v32)
    {
      goto LABEL_58;
    }

    __dst = (*(*v32 + 48))(v32, v13 - 8, v10 - 1);
    if (__dst)
    {
      v33 = v10;
    }

    else
    {
      v33 = v13;
    }

    if (__dst)
    {
      v10 -= 8;
    }

    else
    {
      v13 -= 8;
    }

    *(v31 - 1) = *(v33 - 1);
    v31 -= 8;
    v9 -= 8;
    if (v13 == v7)
    {
      return __dst;
    }
  }

  if (v13 != v7)
  {
    v34 = v13 - v7 - 8;
    if (v34 < 0x48 || (v13 - v9) < 0x20)
    {
      v35 = v13;
LABEL_33:
      v36 = v31 - 8;
      do
      {
        v37 = *(v35 - 1);
        v35 -= 8;
        *v36 = v37;
        v36 -= 8;
      }

      while (v35 != v7);
      return __dst;
    }

    v43 = v31 - 16;
    v44 = (v34 >> 3) + 1;
    v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
    v35 = &v13[-v45];
    v31 -= v45;
    v46 = v13 - 16;
    v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v48 = *v46;
      *(v43 - 1) = *(v46 - 1);
      *v43 = v48;
      v43 -= 32;
      v46 -= 32;
      v47 -= 4;
    }

    while (v47);
    if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }
  }

  return __dst;
}

uint64_t sub_BEB1DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671BD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_BEB208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *(*a2 + 172);
  v7 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 152));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_A571D4(v10, v6);
  v12 = *v11;
  v13 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v11, 0, "stop");
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15 + 4) | (*(v13 + v15) << 32);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v17 = *(v5 + 172);
  v18 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v19 = (v18 - *v18);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v22 = __ROR8__(v12, 32);
  v23 = sub_A571D4(v21, v17);
  v24 = __ROR8__(*v23, 32);
  v25 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v23, 0, "stop");
  v26 = (v25 - *v25);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = *(v25 + v27 + 4) | (*(v25 + v27) << 32);
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  if (HIDWORD(v16))
  {
    v29 = v16 == -1;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (HIDWORD(v28))
  {
    v31 = v28 == -1;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (v30)
  {
    v16 = v22;
  }

  if (!v32)
  {
    v24 = v28;
  }

  v33 = *(v4 + 172);
  v34 = sub_A57920((*(v3 + 24) + 4136), *(v4 + 152));
  v35 = (v34 - *v34);
  v36 = *v35;
  if (v36 < 5)
  {
    v37 = 0;
    goto LABEL_38;
  }

  if (!v35[2])
  {
    v37 = 0;
    if (v36 >= 9)
    {
      goto LABEL_56;
    }

LABEL_38:
    v38 = 0;
    goto LABEL_39;
  }

  v37 = v34 + v35[2] + *(v34 + v35[2]);
  if (v36 < 9)
  {
    goto LABEL_38;
  }

LABEL_56:
  v52 = v35[4];
  if (!v52)
  {
    goto LABEL_38;
  }

  v38 = (v34 + v52 + *(v34 + v52));
LABEL_39:
  v39 = __ROR8__(*&v37[8 * *(sub_A571D4(v38, v33) + 14) + 4], 32);
  v40 = HIDWORD(v39);
  v41 = *(v5 + 172);
  v42 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v43 = (v42 - *v42);
  v44 = *v43;
  if (v44 < 5)
  {
    v45 = 0;
    goto LABEL_44;
  }

  if (!v43[2])
  {
    v45 = 0;
    if (v44 >= 9)
    {
      goto LABEL_59;
    }

LABEL_44:
    v46 = 0;
    goto LABEL_45;
  }

  v45 = v42 + v43[2] + *(v42 + v43[2]);
  if (v44 < 9)
  {
    goto LABEL_44;
  }

LABEL_59:
  v53 = v43[4];
  if (!v53)
  {
    goto LABEL_44;
  }

  v46 = (v42 + v53 + *(v42 + v53));
LABEL_45:
  v47 = __ROR8__(*&v45[8 * *(sub_A571D4(v46, v41) + 14) + 4], 32);
  v48 = HIDWORD(v47);
  v49 = v39 < v47;
  if (v40 != HIDWORD(v47))
  {
    v49 = v40 < HIDWORD(v47);
  }

  if (v49)
  {
    return 1;
  }

  v51 = v47 < v39;
  if (v40 != v48)
  {
    v51 = v48 < v40;
  }

  if (v51)
  {
    return 0;
  }

  if (v30 != v32)
  {
    return v32 & (v30 ^ 1u);
  }

  if (HIDWORD(v16) == HIDWORD(v24))
  {
    return v16 < v24;
  }

  return HIDWORD(v16) < HIDWORD(v24);
}

uint64_t sub_BEB56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BEB654(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671C68;
  a2[1] = v2;
  return result;
}

uint64_t sub_BEB680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *(*a2 + 172);
  v7 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 152));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_A571D4(v10, v6);
  v12 = *v11;
  v13 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v11, 0, "stop");
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15 + 4) | (*(v13 + v15) << 32);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v17 = *(v5 + 172);
  v18 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v19 = (v18 - *v18);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v22 = __ROR8__(v12, 32);
  v23 = sub_A571D4(v21, v17);
  v24 = __ROR8__(*v23, 32);
  v25 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v23, 0, "stop");
  v26 = (v25 - *v25);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = *(v25 + v27 + 4) | (*(v25 + v27) << 32);
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  if (HIDWORD(v16))
  {
    v29 = v16 == -1;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (HIDWORD(v28))
  {
    v31 = v28 == -1;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (v30)
  {
    v16 = v22;
  }

  if (!v32)
  {
    v24 = v28;
  }

  v33 = *(v4 + 172);
  v34 = sub_A57920((*(v3 + 24) + 4136), *(v4 + 152));
  v35 = (v34 - *v34);
  v36 = *v35;
  if (v36 < 5)
  {
    v37 = 0;
    goto LABEL_38;
  }

  if (v35[2])
  {
    v37 = v34 + v35[2] + *(v34 + v35[2]);
    if (v36 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v37 = 0;
    if (v36 < 9)
    {
      goto LABEL_38;
    }
  }

  v68 = v35[4];
  if (v68)
  {
    v38 = (v34 + v68 + *(v34 + v68));
    goto LABEL_39;
  }

LABEL_38:
  v38 = 0;
LABEL_39:
  v39 = *&v37[8 * *(sub_A571D4(v38, v33) + 14) + 4];
  v40 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, v39, 0, "line");
  v41 = (v40 - *v40);
  if (*v41 >= 7u && (v42 = v41[3]) != 0)
  {
    v43 = *(v40 + v42 + 4) | (*(v40 + v42) << 32);
  }

  else
  {
    v43 = 0xFFFFFFFFLL;
  }

  v44 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, v39, 0, "line");
  v45 = (v44 - *v44);
  if (*v45 >= 0x4Du && (v46 = v45[38]) != 0 && *(v44 + v46) == 2)
  {
    v47 = 0;
  }

  else
  {
    v43 = __ROR8__(v39, 32);
    v47 = 1;
  }

  v48 = *(v5 + 172);
  v49 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v50 = (v49 - *v49);
  v51 = *v50;
  if (v51 < 5)
  {
    v52 = 0;
    goto LABEL_53;
  }

  if (v50[2])
  {
    v52 = v49 + v50[2] + *(v49 + v50[2]);
    if (v51 < 9)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v52 = 0;
    if (v51 < 9)
    {
      goto LABEL_53;
    }
  }

  v69 = v50[4];
  if (v69)
  {
    v53 = (v49 + v69 + *(v49 + v69));
    goto LABEL_54;
  }

LABEL_53:
  v53 = 0;
LABEL_54:
  v54 = *&v52[8 * *(sub_A571D4(v53, v48) + 14) + 4];
  v55 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, v54, 0, "line");
  v56 = (v55 - *v55);
  if (*v56 >= 7u && (v57 = v56[3]) != 0)
  {
    v58 = *(v55 + v57 + 4) | (*(v55 + v57) << 32);
  }

  else
  {
    v58 = 0xFFFFFFFFLL;
  }

  v59 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, v54, 0, "line");
  v60 = (v59 - *v59);
  if (*v60 < 0x4Du || (v61 = v60[38]) == 0)
  {
    if ((v47 & 1) == 0)
    {
      return 1;
    }

LABEL_67:
    v58 = __ROR8__(v54, 32);
    goto LABEL_68;
  }

  v62 = *(v59 + v61);
  if (v62 == 2)
  {
    result = 0;
  }

  else
  {
    result = v47 ^ 1u;
  }

  if ((v47 ^ (v62 != 2)))
  {
    return result;
  }

  if (v62 != 2)
  {
    goto LABEL_67;
  }

LABEL_68:
  v64 = HIDWORD(v43);
  v65 = HIDWORD(v58);
  v66 = v43 < v58;
  if (HIDWORD(v43) != HIDWORD(v58))
  {
    v66 = HIDWORD(v43) < HIDWORD(v58);
  }

  if (v66)
  {
    return 1;
  }

  if (v64 == v65)
  {
    v67 = v58 < v43;
  }

  else
  {
    v67 = v65 < v64;
  }

  if (v67)
  {
    return 0;
  }

  if (v30 != v32)
  {
    return v32 & (v30 ^ 1u);
  }

  if (HIDWORD(v16) == HIDWORD(v24))
  {
    return v16 < v24;
  }

  return HIDWORD(v16) < HIDWORD(v24);
}

uint64_t sub_BEBB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping19get_cell_comparatorENS2_13cell_scheme_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BEBBC4(uint64_t result, char *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      v10 = a2 - 8;
      result = (*(*v9 + 48))(v9, a2 - 8, v8);
      if (result)
      {
        v11 = *v8;
        *v8 = *v10;
        *v10 = v11;
      }

      return result;
    }

    goto LABEL_56;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v12 = (result + 8);
    if ((result + 8) == a2)
    {
      return result;
    }

    v13 = 0;
    v14 = result;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        break;
      }

      v17 = v12;
      result = (*(*v16 + 48))(v16, v12, v14);
      if (result)
      {
        v54 = *v17;
        v18 = v13;
        do
        {
          *(v8 + v18 + 8) = *(v8 + v18);
          if (!v18)
          {
            v15 = v8;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_56;
          }

          v18 -= 8;
          result = (*(*v19 + 48))(v19, &v54, v8 + v18);
        }

        while ((result & 1) != 0);
        v15 = (v8 + v18 + 8);
LABEL_12:
        *v15 = v54;
      }

      v12 = v17 + 1;
      v13 += 8;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }

LABEL_56:
    sub_2B7420();
  }

  v21 = a4 >> 1;
  v22 = a4 >> 1;
  v23 = a4 - (a4 >> 1);
  v24 = (v22 * 8 + result);
  if (a4 <= a6)
  {
    sub_BEBFBC(result, v24, a3, a4 >> 1, a5);
    v27 = &a5[v21];
    result = sub_BEBFBC(&v8[v22], a2, a3, v23, v27);
    v28 = v27;
    v29 = a5;
    v30 = v8;
    v31 = &a5[a4];
    do
    {
      if (v28 == v31)
      {
        if (v29 == v27)
        {
          return result;
        }

        v45 = &a5[v22] - v29 - 8;
        if (v45 >= 0x38)
        {
          if ((v8 - v29) >= 0x20)
          {
            v47 = v30 + 2;
            v48 = (v45 >> 3) + 1;
            v49 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            v46 = &v29[v49];
            v30 = (v30 + v49 * 8);
            v50 = (v29 + 2);
            v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v52 = *v50;
              *(v47 - 1) = *(v50 - 1);
              *v47 = v52;
              v47 += 2;
              v50 += 2;
              v51 -= 4;
            }

            while (v51);
            if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v46 = v29;
          }
        }

        else
        {
          v46 = v29;
        }

        do
        {
          v53 = *v46++;
          *v30++ = v53;
        }

        while (v46 != v27);
        return result;
      }

      v32 = *(a3 + 24);
      if (!v32)
      {
        goto LABEL_56;
      }

      v33 = v28;
      result = (*(*v32 + 48))(v32, v28, v29);
      if (result)
      {
        v34 = v33;
      }

      else
      {
        v34 = v29;
      }

      if (result)
      {
        v35 = 0;
      }

      else
      {
        v35 = 8;
      }

      v29 = (v29 + v35);
      if (result)
      {
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v28 = &v33[v36];
      *v30++ = *v34;
      ++v8;
    }

    while (v29 != v27);
    if (v28 != v31)
    {
      v37 = v31 - v33 - v36 * 8 - 8;
      if (v37 <= 0x57)
      {
        goto LABEL_59;
      }

      if ((v8 - v33 - v36 * 8) < 0x20)
      {
        goto LABEL_59;
      }

      v38 = v30 + 2;
      v39 = (v37 >> 3) + 1;
      v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
      v28 = (v28 + v40);
      v30 = (v30 + v40);
      v41 = &v33[v36 + 2];
      v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v43 = *v41;
        *(v38 - 1) = *(v41 - 1);
        *v38 = v43;
        v38 += 2;
        v41 += 4;
        v42 -= 4;
      }

      while (v42);
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v44 = *v28++;
          *v30++ = v44;
        }

        while (v28 != v31);
      }
    }
  }

  else
  {
    sub_BEBBC4(result, v24, a3, a4 >> 1, a5, a6);
    sub_BEBBC4(&v8[v22], a2, a3, v23, a5, a6);

    return sub_BEC340(v8, &v8[v22], a2, a3, v21, v23, a5, a6);
  }

  return result;
}

char *sub_BEBFBC(char *result, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v6;
      return result;
    }

    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (v9)
      {
        v10 = a2 - 8;
        result = (*(*v9 + 48))(v9, a2 - 1, v6);
        if (result)
        {
          v11 = v10;
        }

        else
        {
          v11 = v6;
        }

        *v5++ = *v11;
        if (!result)
        {
          v6 = v10;
        }

        goto LABEL_10;
      }

LABEL_57:
      sub_2B7420();
    }

    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v12 = result + 8;
      *a5 = *result;
      if (result + 8 == a2)
      {
        return result;
      }

      v13 = 0;
      v14 = a5;
      while (1)
      {
        v17 = *(a3 + 24);
        if (!v17)
        {
          goto LABEL_57;
        }

        v18 = v14++;
        result = (*(*v17 + 48))(v17, v12, v18);
        v15 = v14;
        if (result)
        {
          v18[1] = *v18;
          v15 = v5;
          if (v18 != v5)
          {
            v19 = v13;
            do
            {
              v20 = *(a3 + 24);
              if (!v20)
              {
                goto LABEL_57;
              }

              result = (*(*v20 + 48))(v20, v12, v5 + v19 - 8);
              if (!result)
              {
                v15 = (v5 + v19);
                goto LABEL_17;
              }

              *(v5 + v19) = *(v5 + v19 - 8);
              v19 -= 8;
            }

            while (v19);
            v15 = v5;
          }
        }

LABEL_17:
        v16 = *v12;
        v12 += 8;
        *v15 = v16;
        v13 += 8;
        if (v12 == a2)
        {
          return result;
        }
      }
    }

    v21 = a4 >> 1;
    v22 = a4 >> 1;
    v23 = &result[v22 * 8];
    sub_BEBBC4(result, &result[v22 * 8], a3, v21, a5, v21);
    result = sub_BEBBC4(&v6[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
    v25 = v5;
    v26 = v23;
    do
    {
      if (v26 == a2)
      {
        if (v6 == v23)
        {
          return result;
        }

        v42 = v23 - v6 - 8;
        if (v42 >= 0x38)
        {
          if ((v25 - v6) >= 0x20)
          {
            v44 = v5 + 2;
            v45 = (v42 >> 3) + 1;
            v46 = v45 & 0x3FFFFFFFFFFFFFFCLL;
            v5 = (v5 + v46 * 8);
            v43 = &v6[v46];
            v47 = (v6 + 2);
            v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v49 = *v47;
              *(v44 - 1) = *(v47 - 1);
              *v44 = v49;
              v47 += 2;
              v44 += 2;
              v48 -= 4;
            }

            while (v48);
            if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v43 = v6;
          }
        }

        else
        {
          v43 = v6;
        }

        do
        {
          v50 = *v43++;
          *v5++ = v50;
        }

        while (v43 != v23);
        return result;
      }

      v27 = *(a3 + 24);
      if (!v27)
      {
        goto LABEL_57;
      }

      v28 = v26;
      result = (*(*v27 + 48))(v27, v26, v6);
      if (result)
      {
        v29 = v28;
      }

      else
      {
        v29 = v6;
      }

      if (result)
      {
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      v26 = &v28[v30];
      if (result)
      {
        v31 = 0;
      }

      else
      {
        v31 = 8;
      }

      v6 = (v6 + v31);
      *v5++ = *v29;
      v25 += 8;
    }

    while (v6 != v23);
    if (v26 != a2)
    {
      v32 = a2 - v28 - v30 * 8 - 8;
      if (v32 < 0x58)
      {
        goto LABEL_60;
      }

      if ((v25 - v28 - v30 * 8) < 0x20)
      {
        goto LABEL_60;
      }

      v33 = 0;
      v34 = (v32 >> 3) + 1;
      v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      v36 = &v5[v35];
      v26 = (v26 + v35 * 8);
      v37 = &v28[v30 + 2];
      v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = &v5[v33];
        v40 = *v37;
        *v39 = *(v37 - 1);
        *(v39 + 1) = v40;
        v37 += 2;
        v33 += 4;
        v38 -= 4;
      }

      while (v38);
      v5 = v36;
      if (v34 != (v34 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_60:
        do
        {
          v41 = *v26++;
          *v5++ = v41;
        }

        while (v26 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_BEC340(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v54 = a6;
  if (a6)
  {
    v11 = result;
    while (1)
    {
      if (v54 <= a8 || a5 <= a8)
      {
        return sub_BEC8B4(v11, a2, a3, a4, a5, v54, a7);
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        result = (*(*v14 + 48))(v14, a2, &v11[v12]);
        if (result)
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      if (-v13 < v54)
      {
        break;
      }

      if (v13 == -1)
      {
        v48 = *&v11[v12];
        *&v11[v12] = *a2;
        *a2 = v48;
        return result;
      }

      v23 = *(a4 + 24);
      if (v23)
      {
        if (v23 == a4)
        {
          v56 = v55;
          (*(*v23 + 24))(v23, v55);
        }

        else
        {
          v56 = (*(*v23 + 16))(v23);
        }
      }

      else
      {
        v56 = 0;
      }

      v49 = v16 / 2;
      v18 = &v11[8 * (v16 / 2) + v12];
      v17 = a2;
      if (a2 != a3)
      {
        v24 = (a3 - a2) >> 3;
        v17 = a2;
        do
        {
          if (!v56)
          {
            sub_2B7420();
          }

          v25 = &v17[8 * (v24 >> 1)];
          v26 = (*(*v56 + 48))(v56, v25, v18);
          if (v26)
          {
            v24 += ~(v24 >> 1);
          }

          else
          {
            v24 >>= 1;
          }

          if (v26)
          {
            v17 = v25 + 8;
          }
        }

        while (v24);
      }

      if (v56 == v55)
      {
        (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        (*(*v56 + 40))();
      }

      v50 = (v17 - a2) >> 3;
      v21 = v17;
      v22 = a2 - v18;
      if (a2 != v18)
      {
        goto LABEL_42;
      }

LABEL_64:
      a5 = -v13 - v49;
      v47 = v54 - v50;
      if (v49 + v50 >= v54 - (v49 + v50) - v13)
      {
        result = sub_BEC340(v21, v17, a3, a4, -v13 - v49, v54 - v50, a7, a8);
        a2 = v18;
        a5 = v49;
        a3 = v21;
        v11 += v12;
        v54 = v50;
        if (!v50)
        {
          return result;
        }
      }

      else
      {
        result = sub_BEC340(&v11[v12], v18, v21, a4, v49, v50, a7, a8);
        v11 = v21;
        a2 = v17;
        v54 -= v50;
        if (!v47)
        {
          return result;
        }
      }
    }

    v50 = v54 / 2;
    v17 = &a2[8 * (v54 / 2)];
    v18 = a2;
    if (a2 - v11 != v12)
    {
      v19 = (a2 - v11 - v12) >> 3;
      v18 = &v11[v12];
      do
      {
        v20 = *(a4 + 24);
        if (!v20)
        {
          sub_2B7420();
        }

        if ((*(*v20 + 48))(v20, v17, &v18[8 * (v19 >> 1)]))
        {
          v19 >>= 1;
        }

        else
        {
          v18 += 8 * (v19 >> 1) + 8;
          v19 += ~(v19 >> 1);
        }
      }

      while (v19);
    }

    v49 = (v18 - v11 - v12) >> 3;
    v21 = &a2[8 * (v54 / 2)];
    v22 = a2 - v18;
    if (a2 == v18)
    {
      goto LABEL_64;
    }

LABEL_42:
    v21 = v18;
    if (a2 != v17)
    {
      if (v18 + 8 == a2)
      {
        v27 = *v18;
        memmove(v18, a2, v17 - a2);
        v21 = &v18[v17 - a2];
        *v21 = v27;
      }

      else if (a2 + 8 == v17)
      {
        v28 = *(v17 - 1);
        v21 = v18 + 8;
        if (v17 - 8 != v18)
        {
          memmove(v18 + 8, v18, v17 - 8 - v18);
        }

        *v18 = v28;
      }

      else
      {
        v29 = v22 >> 3;
        v30 = (v17 - a2) >> 3;
        if (v22 >> 3 == v30)
        {
          v31 = v18 + 8;
          v32 = a2 + 8;
          do
          {
            v33 = *(v31 - 1);
            *(v31 - 1) = *(v32 - 1);
            *(v32 - 1) = v33;
            if (v31 == a2)
            {
              break;
            }

            v31 += 8;
            v34 = v32 == v17;
            v32 += 8;
          }

          while (!v34);
          v21 = a2;
        }

        else
        {
          v35 = v22 >> 3;
          do
          {
            v36 = v35;
            v35 = v30;
            v30 = v36 % v30;
          }

          while (v30);
          v37 = &v18[8 * v35];
          do
          {
            v39 = *(v37 - 1);
            v37 -= 8;
            v38 = v39;
            v40 = &v37[v22];
            v41 = v37;
            do
            {
              v42 = v40;
              *v41 = *v40;
              v43 = (v17 - v40) >> 3;
              v44 = __OFSUB__(v29, v43);
              v46 = v29 - v43;
              v45 = (v46 < 0) ^ v44;
              v40 = &v18[8 * v46];
              if (v45)
              {
                v40 = &v42[8 * v29];
              }

              v41 = v42;
            }

            while (v40 != v37);
            *v42 = v38;
          }

          while (v37 != v18);
          v21 = &v18[v17 - a2];
        }
      }
    }

    goto LABEL_64;
  }

  return result;
}

void sub_BEC888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE8340(va);
  _Unwind_Resume(a1);
}

void sub_BEC89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BE8340(va);
  _Unwind_Resume(a1);
}

char *sub_BEC8B4(char *__dst, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst == a2)
    {
      return __dst;
    }

    v21 = a2 - __dst - 8;
    if (v21 < 0x18)
    {
      v22 = __src;
      v23 = __dst;
    }

    else
    {
      v22 = __src;
      v23 = __dst;
      if ((__src - __dst) > 0x1F)
      {
        v24 = (v21 >> 3) + 1;
        v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
        v22 = &__src[v25];
        v23 = &__dst[v25];
        v26 = (__dst + 16);
        v27 = __src + 16;
        v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 4;
        }

        while (v28);
        if (v24 == (v24 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_38:
          while (v10 != v9)
          {
            v39 = *(a4 + 24);
            if (!v39)
            {
LABEL_58:
              sub_2B7420();
            }

            __dst = (*(*v39 + 48))(v39, v10, v7);
            if (__dst)
            {
              v40 = v10;
            }

            else
            {
              v40 = v7;
            }

            if (__dst)
            {
              v41 = 8;
            }

            else
            {
              v41 = 0;
            }

            v10 += v41;
            if (__dst)
            {
              v42 = 0;
            }

            else
            {
              v42 = 8;
            }

            v7 += v42;
            *v11 = *v40;
            v11 += 8;
            if (v7 == v22)
            {
              return __dst;
            }
          }

          return memmove(v11, v7, v22 - v7);
        }
      }
    }

    do
    {
      v38 = *v23;
      v23 += 8;
      *v22 = v38;
      v22 += 8;
    }

    while (v23 != a2);
    goto LABEL_38;
  }

  if (a2 == a3)
  {
    return __dst;
  }

  v12 = a3 - a2 - 8;
  if (v12 < 0x18)
  {
    v13 = __src;
    v14 = a2;
  }

  else
  {
    v13 = __src;
    v14 = a2;
    if ((__src - a2) > 0x1F)
    {
      v15 = (v12 >> 3) + 1;
      v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
      v13 = &__src[v16];
      v14 = &a2[v16];
      v17 = (a2 + 16);
      v18 = __src + 16;
      v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 == (v15 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_18;
      }
    }
  }

  do
  {
    v30 = *v14;
    v14 += 8;
    *v13 = v30;
    v13 += 8;
  }

  while (v14 != a3);
LABEL_18:
  v31 = a3;
  while (v10 != v11)
  {
    v32 = *(a4 + 24);
    if (!v32)
    {
      goto LABEL_58;
    }

    __dst = (*(*v32 + 48))(v32, v13 - 8, v10 - 1);
    if (__dst)
    {
      v33 = v10;
    }

    else
    {
      v33 = v13;
    }

    if (__dst)
    {
      v10 -= 8;
    }

    else
    {
      v13 -= 8;
    }

    *(v31 - 1) = *(v33 - 1);
    v31 -= 8;
    v9 -= 8;
    if (v13 == v7)
    {
      return __dst;
    }
  }

  if (v13 != v7)
  {
    v34 = v13 - v7 - 8;
    if (v34 < 0x48 || (v13 - v9) < 0x20)
    {
      v35 = v13;
LABEL_33:
      v36 = v31 - 8;
      do
      {
        v37 = *(v35 - 1);
        v35 -= 8;
        *v36 = v37;
        v36 -= 8;
      }

      while (v35 != v7);
      return __dst;
    }

    v43 = v31 - 16;
    v44 = (v34 >> 3) + 1;
    v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
    v35 = &v13[-v45];
    v31 -= v45;
    v46 = v13 - 16;
    v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v48 = *v46;
      *(v43 - 1) = *(v46 - 1);
      *v43 = v48;
      v43 -= 32;
      v46 -= 32;
      v47 -= 4;
    }

    while (v47);
    if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }
  }

  return __dst;
}

uint64_t sub_BECC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BECD34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671D78;
  a2[1] = v2;
  return result;
}

BOOL sub_BECD60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  v5 = *(*a2 + 144);
  v6 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 124));
  v7 = (v6 - *v6);
  v8 = *v7;
  if (v8 < 5)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (!v7[2])
  {
    v9 = 0;
    if (v8 >= 9)
    {
      goto LABEL_25;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v9 = v6 + v7[2] + *(v6 + v7[2]);
  if (v8 < 9)
  {
    goto LABEL_6;
  }

LABEL_25:
  v31 = v7[4];
  if (!v31)
  {
    goto LABEL_6;
  }

  v10 = (v6 + v31 + *(v6 + v31));
LABEL_7:
  v11 = __ROR8__(*&v9[8 * *(sub_A571D4(v10, v5) + 14) + 4], 32);
  v12 = *(v4 + 144);
  v13 = sub_A57920((*(v3 + 24) + 4136), *(v4 + 124));
  v14 = (v13 - *v13);
  v15 = *v14;
  if (v15 < 5)
  {
    v16 = 0;
    goto LABEL_12;
  }

  if (v14[2])
  {
    v16 = v13 + v14[2] + *(v13 + v14[2]);
    if (v15 < 9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if (v15 < 9)
    {
      goto LABEL_12;
    }
  }

  v32 = v14[4];
  if (v32)
  {
    v17 = (v13 + v32 + *(v13 + v32));
    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  v18 = __ROR8__(*&v16[8 * *(sub_A571D4(v17, v12) + 14) + 4], 32);
  v19 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v11, 32), 0, "line");
  v20 = (v19 - *v19);
  if (*v20 >= 7u && (v21 = v20[3]) != 0)
  {
    v22 = *(v19 + v21 + 4) | (*(v19 + v21) << 32);
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  v23 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v18, 32), 0, "line");
  v24 = (v23 - *v23);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(v23 + v25 + 4) | (*(v23 + v25) << 32);
  }

  else
  {
    v26 = 0xFFFFFFFFLL;
  }

  v27 = v22 < v26;
  v28 = HIDWORD(v22) == HIDWORD(v26);
  v29 = HIDWORD(v22) < HIDWORD(v26);
  if (v28)
  {
    return v27;
  }

  else
  {
    return v29;
  }
}

uint64_t sub_BECF70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BED058(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671DF8;
  a2[1] = v2;
  return result;
}

BOOL sub_BED084(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  v5 = *(*a2 + 144);
  v6 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 124));
  v7 = (v6 - *v6);
  v8 = *v7;
  if (v8 < 5)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (!v7[2])
  {
    v9 = 0;
    if (v8 >= 9)
    {
      goto LABEL_30;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v9 = v6 + v7[2] + *(v6 + v7[2]);
  if (v8 < 9)
  {
    goto LABEL_6;
  }

LABEL_30:
  v35 = v7[4];
  if (!v35)
  {
    goto LABEL_6;
  }

  v10 = (v6 + v35 + *(v6 + v35));
LABEL_7:
  v11 = __ROR8__(*&v9[8 * *(sub_A571D4(v10, v5) + 14) + 4], 32);
  v12 = *(v4 + 144);
  v13 = sub_A57920((*(v3 + 24) + 4136), *(v4 + 124));
  v14 = (v13 - *v13);
  v15 = *v14;
  if (v15 < 5)
  {
    v16 = 0;
    goto LABEL_12;
  }

  if (v14[2])
  {
    v16 = v13 + v14[2] + *(v13 + v14[2]);
    if (v15 < 9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if (v15 < 9)
    {
      goto LABEL_12;
    }
  }

  v36 = v14[4];
  if (v36)
  {
    v17 = (v13 + v36 + *(v13 + v36));
    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  v18 = __ROR8__(*&v16[8 * *(sub_A571D4(v17, v12) + 14) + 4], 32);
  v19 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v11, 32), 0, "line");
  v20 = (v19 - *v19);
  if (*v20 >= 7u && (v21 = v20[3]) != 0)
  {
    v22 = *(v19 + v21 + 4) | (*(v19 + v21) << 32);
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  v23 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v18, 32), 0, "line");
  v24 = (v23 - *v23);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(v23 + v25 + 4) | (*(v23 + v25) << 32);
  }

  else
  {
    v26 = 0xFFFFFFFFLL;
  }

  v27 = sub_93E04C(*(*(v3 + 24) + 4144) + 24, __ROR8__(v22, 32), 0, "system");
  v28 = (v27 - *v27);
  if (*v28 >= 0x23u && (v29 = v28[17]) != 0)
  {
    v30 = *(v27 + v29);
  }

  else
  {
    v30 = 2;
  }

  v31 = sub_93E04C(*(*(v3 + 24) + 4144) + 24, __ROR8__(v26, 32), 0, "system");
  v32 = (v31 - *v31);
  if (*v32 >= 0x23u && (v33 = v32[17]) != 0)
  {
    return v30 < *(v31 + v33);
  }

  else
  {
    return v30 < 2;
  }
}

uint64_t sub_BED328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BED414(uint64_t a1, uint64_t a2)
{
  *a2 = off_2671E78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_BED444(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a2 + 144);
  v6 = *(a1 + 16);
  v7 = sub_A57920((*(v6 + 24) + 4136), *(*a2 + 124));
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 5)
  {
    v10 = 0;
    goto LABEL_6;
  }

  if (!v8[2])
  {
    v10 = 0;
    if (v9 >= 9)
    {
      goto LABEL_38;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v7 + v8[2] + *(v7 + v8[2]);
  if (v9 < 9)
  {
    goto LABEL_6;
  }

LABEL_38:
  v44 = v8[4];
  if (!v44)
  {
    goto LABEL_6;
  }

  v11 = (v7 + v44 + *(v7 + v44));
LABEL_7:
  v12 = __ROR8__(*&v10[8 * *(sub_A571D4(v11, v5) + 14) + 4], 32);
  v13 = *(v4 + 144);
  v14 = sub_A57920((*(v6 + 24) + 4136), *(v4 + 124));
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 5)
  {
    v17 = 0;
    goto LABEL_12;
  }

  if (v15[2])
  {
    v17 = v14 + v15[2] + *(v14 + v15[2]);
    if (v16 < 9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
    if (v16 < 9)
    {
      goto LABEL_12;
    }
  }

  v45 = v15[4];
  if (v45)
  {
    v18 = (v14 + v45 + *(v14 + v45));
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  v19 = __ROR8__(*&v17[8 * *(sub_A571D4(v18, v13) + 14) + 4], 32);
  v20 = __ROR8__(v12, 32);
  v21 = sub_92FC60(*(*(v6 + 24) + 4056) + 24, v20, 0, "line");
  v22 = (v21 - *v21);
  if (*v22 >= 7u && (v23 = v22[3]) != 0)
  {
    v24 = *(v21 + v23 + 4) | (*(v21 + v23) << 32);
  }

  else
  {
    v24 = 0xFFFFFFFFLL;
  }

  v25 = __ROR8__(v19, 32);
  v26 = sub_92FC60(*(*(v6 + 24) + 4056) + 24, v25, 0, "line");
  v27 = (v26 - *v26);
  if (*v27 >= 7u && (v28 = v27[3]) != 0)
  {
    v29 = *(v26 + v28 + 4) | (*(v26 + v28) << 32);
  }

  else
  {
    v29 = 0xFFFFFFFFLL;
  }

  v30 = __ROR8__(v24, 32);
  v31 = sub_93E04C(*(*(v6 + 24) + 4144) + 24, v30, 0, "system");
  v32 = (v31 - *v31);
  if (*v32 >= 0x25u && (v33 = v32[18]) != 0)
  {
    v34 = *(v31 + v33);
  }

  else
  {
    v34 = 0;
  }

  v35 = __ROR8__(v29, 32);
  v36 = sub_93E04C(*(*(v6 + 24) + 4144) + 24, v35, 0, "system");
  v37 = (v36 - *v36);
  if (*v37 < 0x25u)
  {
    v39 = 1;
    if (v34)
    {
      return !v39;
    }
  }

  else
  {
    v38 = v37[18];
    if (v38)
    {
      LODWORD(v38) = *(v36 + v38);
    }

    v39 = v34 >= v38;
    if (v34 != v38)
    {
      return !v39;
    }
  }

  if (v34 != 1)
  {
    if (v34)
    {
      return 0;
    }

    v40 = *(v6 + 24);
    if (*(a1 + 8) == 3)
    {
      v41 = sub_93E04C(*(v40 + 4144) + 24, v30, 0, "system");
      v42 = (v41 - *v41);
      if (*v42 < 0x23u)
      {
        goto LABEL_53;
      }

      v43 = v42[17];
      if (!v43)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v41 = sub_92FC60(*(v40 + 4056) + 24, v20, 0, "line");
      v47 = (v41 - *v41);
      if (*v47 < 0x2Bu || (v43 = v47[21]) == 0)
      {
LABEL_53:
        v48 = 2;
        v49 = *(v6 + 24);
        if (*(a1 + 8) == 3)
        {
          goto LABEL_54;
        }

        goto LABEL_50;
      }
    }

    v48 = *(v41 + v43);
    v49 = *(v6 + 24);
    if (*(a1 + 8) == 3)
    {
LABEL_54:
      v50 = sub_93E04C(*(v49 + 4144) + 24, v35, 0, "system");
      v53 = (v50 - *v50);
      if (*v53 >= 0x23u)
      {
        v52 = v53[17];
        if (v52)
        {
LABEL_56:
          v54 = *(v50 + v52);
LABEL_58:
          v39 = v48 >= v54;
          return !v39;
        }
      }

LABEL_57:
      v54 = 2;
      goto LABEL_58;
    }

LABEL_50:
    v50 = sub_92FC60(*(v49 + 4056) + 24, v25, 0, "line");
    v51 = (v50 - *v50);
    if (*v51 >= 0x2Bu)
    {
      v52 = v51[21];
      if (v52)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  if (HIDWORD(v24) == HIDWORD(v29))
  {
    return v24 < v29;
  }

  else
  {
    return HIDWORD(v24) < HIDWORD(v29);
  }
}

uint64_t sub_BED86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping23get_category_comparatorENS2_17category_scheme_tEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BED954(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671EF8;
  a2[1] = v2;
  return result;
}

BOOL sub_BED980(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  v5 = *(*a2 + 144);
  v6 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 124));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_A571D4(v9, v5);
  v11 = *v10;
  v12 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v10, 0, "stop");
  v13 = (v12 - *v12);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(v12 + v14 + 4) | (*(v12 + v14) << 32);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v16 = *(v4 + 124);
  v17 = *(v4 + 144);
  v18 = sub_A57920((*(v3 + 24) + 4136), v16);
  v19 = (v18 - *v18);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v22 = HIDWORD(v15);
  v23 = sub_A571D4(v21, v17);
  v24 = *v23;
  v25 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v23, 0, "stop");
  v26 = (v25 - *v25);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = *(v25 + v27 + 4) | (*(v25 + v27) << 32);
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  result = v22 != 0;
  if (HIDWORD(v28))
  {
    v30 = v28 == -1;
  }

  else
  {
    v30 = 1;
  }

  v31 = !v30;
  if (!v22 || v15 == -1)
  {
    if (v31)
    {
      if (v15 == -1)
      {
        return 0;
      }
    }

    else
    {
      v34 = __ROR8__(v11, 32);
      v35 = __ROR8__(v24, 32);
      v36 = HIDWORD(v34);
      v37 = v34 < v35;
      v30 = v36 == HIDWORD(v35);
      v38 = v36 < HIDWORD(v35);
      if (v30)
      {
        return v37;
      }

      else
      {
        return v38;
      }
    }
  }

  else if (v31)
  {
    v32 = v15 < v28;
    v30 = v22 == HIDWORD(v28);
    v33 = v22 < HIDWORD(v28);
    if (v30)
    {
      return v32;
    }

    else
    {
      return v33;
    }
  }

  return result;
}

uint64_t sub_BEDBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BEDC9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671F78;
  a2[1] = v2;
  return result;
}

BOOL sub_BEDCC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *(*a2 + 144);
  v7 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 124));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_A571D4(v10, v6);
  v12 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v11, 0, "stop");
  v13 = (v12 - *v12);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(v12 + v14 + 4) | (*(v12 + v14) << 32);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v16 = *(v5 + 144);
  v17 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 124));
  v18 = (v17 - *v17);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = (v17 + v19 + *(v17 + v19));
  }

  else
  {
    v20 = 0;
  }

  v21 = HIDWORD(v15);
  v22 = sub_A571D4(v20, v16);
  v23 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v22, 0, "stop");
  v24 = (v23 - *v23);
  if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
  {
    v26 = *(v23 + v25 + 4) | (*(v23 + v25) << 32);
  }

  else
  {
    v26 = 0xFFFFFFFFLL;
  }

  result = v21 != 0;
  if (HIDWORD(v26))
  {
    v28 = v26 == -1;
  }

  else
  {
    v28 = 1;
  }

  v29 = !v28;
  if (!v21 || v15 == -1)
  {
    if (v29)
    {
      if (v15 == -1)
      {
        return 0;
      }
    }

    else
    {
      v32 = sub_A56F04((*(v3 + 24) + 4136), *(v4 + 124), *(v4 + 144), *(v4 + 132));
      v33 = sub_3A25A8(*(*(v3 + 24) + 4184) + 24, __ROR8__(v32, 32), 0, "trip");
      v34 = (v33 - *v33);
      if (*v34 >= 7u && (v35 = v34[3]) != 0)
      {
        v36 = *(v33 + v35 + 4) | (*(v33 + v35) << 32);
      }

      else
      {
        v36 = 0xFFFFFFFFLL;
      }

      v37 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v36, 32), 0, "line");
      v38 = (v37 - *v37);
      if (*v38 >= 0x2Bu && (v39 = v38[21]) != 0)
      {
        v40 = *(v37 + v39);
      }

      else
      {
        v40 = 2;
      }

      v41 = sub_A56F04((*(v3 + 24) + 4136), *(v5 + 124), *(v5 + 144), *(v5 + 132));
      v42 = sub_3A25A8(*(*(v3 + 24) + 4184) + 24, __ROR8__(v41, 32), 0, "trip");
      v43 = (v42 - *v42);
      if (*v43 >= 7u && (v44 = v43[3]) != 0)
      {
        v45 = *(v42 + v44 + 4) | (*(v42 + v44) << 32);
      }

      else
      {
        v45 = 0xFFFFFFFFLL;
      }

      v46 = sub_92FC60(*(*(v3 + 24) + 4056) + 24, __ROR8__(v45, 32), 0, "line");
      v47 = (v46 - *v46);
      if (*v47 >= 0x2Bu && (v48 = v47[21]) != 0)
      {
        v49 = *(v46 + v48);
      }

      else
      {
        v49 = 2;
      }

      return v40 < v49;
    }
  }

  else if (v29)
  {
    v30 = v15 < v26;
    v28 = v21 == HIDWORD(v26);
    v31 = v21 < HIDWORD(v26);
    if (v28)
    {
      return v30;
    }

    else
    {
      return v31;
    }
  }

  return result;
}

uint64_t sub_BEE04C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning16ScheduleGrouping20get_group_comparatorENS2_14group_scheme_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BEE0C4(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&qword_27B3E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B3E88))
  {
    v18 = 0;
    sub_BEE920(__p, "in_service", &v18);
    v17 = 1;
    sub_BEE920(v21, "min_total_walking_duration", &v17);
    v16 = 2;
    sub_BEE920(v23, "min_on_street_walking_duration", &v16);
    v15 = 3;
    sub_BEE920(&v25, "max_absolute_system_popularity", &v15);
    v14 = 4;
    sub_BEE920(&v27, "max_absolute_system_popularity_log", &v14);
    v13 = 5;
    sub_BEE920(&v29, "max_absolute_line_popularity", &v13);
    v12 = 6;
    sub_BEE920(&v31, "max_absolute_line_popularity_log", &v12);
    v11 = 7;
    sub_BEE920(&v33, "max_absolute_stop_or_station_popularity", &v11);
    v10 = 8;
    sub_BEE920(&v35, "max_absolute_stop_or_station_popularity_log", &v10);
    v9 = 9;
    sub_BEE920(&v37, "max_system_significance", &v9);
    sub_BEF6E0(qword_27B3EA0, __p, 10);
    if (v38 < 0)
    {
      operator delete(v37);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_16:
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_41;
      }
    }

    else if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v35);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }

LABEL_41:
    operator delete(v33);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    }

LABEL_42:
    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_19:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_44;
    }

LABEL_43:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_20:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_45;
    }

LABEL_44:
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_21:
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v25);
    if ((v24 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_47;
    }

LABEL_46:
    operator delete(v23[0]);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v20 & 0x80000000) == 0)
      {
LABEL_24:
        __cxa_guard_release(&qword_27B3E88);
        goto LABEL_2;
      }

LABEL_48:
      operator delete(*__p);
      goto LABEL_24;
    }

LABEL_47:
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_2:
  if ((atomic_load_explicit(&qword_27B3E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B3E90))
  {
    v18 = 0;
    sub_BEE920(__p, "sum", &v18);
    v17 = 1;
    sub_BEE920(v21, "max", &v17);
    v16 = 2;
    sub_BEE920(v23, "scale", &v16);
    sub_BEFB88(qword_27B3EC8, __p, 3);
    if (v24 < 0)
    {
      operator delete(v23[0]);
      if ((v22 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v20 & 0x80000000) == 0)
        {
LABEL_29:
          __cxa_guard_release(&qword_27B3E90);
          goto LABEL_3;
        }

LABEL_38:
        operator delete(*__p);
        goto LABEL_29;
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_3:
  if ((atomic_load_explicit(&qword_27B3E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B3E98))
  {
    v18 = 0;
    sub_BEE920(__p, "weighted_sum", &v18);
    v17 = 1;
    sub_BEE920(v21, "weighted_product", &v17);
    sub_BF0030(qword_27B3EF0, __p, 2);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v20 < 0)
    {
      operator delete(*__p);
    }

    __cxa_guard_release(&qword_27B3E98);
  }

  v20 = 19;
  strcpy(__p, "schedule_properties");
  v4 = sub_5F5AC(a2, __p);
  sub_BEE9E4(a1, v4);
  if (v20 < 0)
  {
    operator delete(*__p);
  }

  v20 = 15;
  strcpy(__p, "cell_properties");
  v5 = sub_5F5AC(a2, __p);
  sub_BEE9E4(a1 + 88, v5);
  if (v20 < 0)
  {
    operator delete(*__p);
  }

  v20 = 16;
  strcpy(__p, "group_properties");
  v6 = sub_5F5AC(a2, __p);
  sub_BEE9E4(a1 + 176, v6);
  if (v20 < 0)
  {
    operator delete(*__p);
  }

  v20 = 19;
  strcpy(__p, "category_properties");
  v7 = sub_5F5AC(a2, __p);
  sub_BEE9E4(a1 + 264, v7);
  if (v20 < 0)
  {
    operator delete(*__p);
  }

  return a1;
}

void sub_BEE664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_27B3E98);
      _Unwind_Resume(a1);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  __cxa_guard_abort(&qword_27B3E98);
  _Unwind_Resume(a1);
}

void sub_BEE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a16 & 0x80000000) == 0)
      {
LABEL_8:
        __cxa_guard_abort(&qword_27B3E90);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a11);
      __cxa_guard_abort(&qword_27B3E90);
      _Unwind_Resume(a1);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_BEE8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_BEE920(_BYTE *a1, char *__s, _BYTE *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  a1[24] = *a3;
  return a1;
}

void sub_BEE9E4(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v16 = 16;
  strcpy(__p, "enabled_criteria");
  v4 = sub_5F5AC(a2, __p);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v5 = sub_588E0(v4);
  v6 = sub_5FC5C();
  if (v5 != v6)
  {
    v11 = v6;
    do
    {
      v12 = sub_BEF1B8(qword_27B3EA0, v5 + 16);
      if (!v12)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      if (*(v5 + 48) != 5)
      {
        sub_5AF20();
      }

      v13 = *(v12 + 40);
      v14 = *(v5 + 40);
      v16 = 6;
      strcpy(__p, "weight");
      *(a1 + 8 * v13) = sub_63D34(v14, __p);
      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v5 = *v5;
    }

    while (v5 != v11);
  }

  strcpy(__p, "criteria_normalisation");
  v16 = 22;
  v7 = sub_5F8FC(a2, __p);
  v8 = sub_BEF370(qword_27B3EC8, v7);
  if (!v8)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  *(a1 + 80) = *(v8 + 40);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v16 = 17;
  strcpy(__p, "scoring_algorithm");
  v9 = sub_5F8FC(a2, __p);
  v10 = sub_BEF528(qword_27B3EF0, v9);
  if (!v10)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  *(a1 + 81) = *(v10 + 40);
  if (v16 < 0)
  {
    operator delete(*__p);
  }
}

void sub_BEEBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_BEEC20(uint64_t a1, void *a2)
{
  v2 = sub_BEE0C4(a1, a2);
  result = 0.0;
  *(v2 + 352) = xmmword_22AA250;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 368) = 0;
  return result;
}

void sub_BEEC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  for (i = *(a2 + 32); v2 != i; v2 += 160)
  {
    sub_BF04D8(a1, a2, (v2 + 72));
  }
}

void sub_BEECA0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v6 = *(v2 + 80);
    i = *(v2 + 88);
    if (v6 != i)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v2 += 112;
      if (v2 == v3)
      {
        break;
      }

      v6 = *(v2 + 80);
      for (i = *(v2 + 88); v6 != i; v6 += 112)
      {
LABEL_5:
        sub_BF1EFC(a1, a2, (v6 + 80));
      }
    }
  }
}

void sub_BEED24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_BF2368(a1, a2, (v2 + 80));
      v2 += 112;
    }

    while (v2 != v3);
  }
}

void sub_BEED80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 368);
  *(a1 + 376) = v5;
  *(a1 + 352) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v31 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
    do
    {
      v9 = 0;
      v10 = v8 + 1;
      do
      {
        v12 = *a3 + 112 * v8;
        if (v9 > 4u)
        {
          if (v9 <= 6u)
          {
            if (v9 == 5)
            {
              v13 = *(v12 + 32);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (v9 != 6)
              {
LABEL_67:
                exception = __cxa_allocate_exception(0x40uLL);
                v30 = sub_2D390(exception, "Requested to evaluate unknown criterion", 0x27uLL);
              }

              v13 = *(v12 + 40);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            switch(v9)
            {
              case 7u:
                v13 = *(v12 + 48);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              case 8u:
                v13 = *(v12 + 56);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              case 9u:
                v13 = *(v12 + 64);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              default:
                goto LABEL_67;
            }
          }
        }

        else
        {
          if (v9 <= 1u)
          {
            if (!v9)
            {
              if (*v12)
              {
                v13 = 1.0;
              }

              else
              {
                v13 = 0.0;
              }

              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }

              goto LABEL_45;
            }

            v14 = *(v12 + 4);
          }

          else
          {
            if (v9 != 2)
            {
              if (v9 == 3)
              {
                v13 = *(v12 + 16);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (v9 != 4)
                {
                  goto LABEL_67;
                }

                v13 = *(v12 + 24);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }
              }

              goto LABEL_45;
            }

            v14 = *(v12 + 8);
          }

          v15 = v14 / 10;
          v16 = v14 % 10;
          if (v14 < 0)
          {
            v17 = -5;
          }

          else
          {
            v17 = 5;
          }

          v13 = (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
          if (*(a1 + 352) > v8)
          {
            goto LABEL_7;
          }
        }

LABEL_45:
        *(a1 + 352) = v10;
        v18 = *(a1 + 360) * v10;
        v19 = *(a1 + 376);
        v20 = (v19 - v5) >> 3;
        v21 = v18 - v20;
        if (v18 > v20)
        {
          v22 = *(a1 + 384);
          if (v21 > (v22 - v19) >> 3)
          {
            if (!(v18 >> 61))
            {
              v23 = v22 - v5;
              if (v23 >> 2 > v18)
              {
                v18 = v23 >> 2;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF8)
              {
                v18 = 0x1FFFFFFFFFFFFFFFLL;
              }

              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            sub_1794();
          }

          bzero(*(a1 + 376), 8 * v21);
          v10 = v8 + 1;
          v11 = v19 + 8 * v21;
          goto LABEL_6;
        }

        if (v18 < v20)
        {
          v11 = v5 + 8 * v18;
LABEL_6:
          *(a1 + 376) = v11;
        }

LABEL_7:
        *(v5 + v7 * *(a1 + 360) + 8 * v9++) = v13;
      }

      while (v9 != 10);
      v7 += 8;
      v8 = v10;
    }

    while (v10 != v31);
  }

  sub_BF09F8(a1 + 352, *(a1 + 344));
  sub_BF1420(&v32, (a1 + 352));
  v24 = v32;
  if (v33 == v32)
  {
    if (!v32)
    {
      return;
    }
  }

  else
  {
    v25 = (v33 - v32) >> 3;
    v26 = (*a3 + 72);
    v27 = v32;
    do
    {
      v28 = *v27++;
      *v26 = v28;
      v26 += 14;
      --v25;
    }

    while (v25);
  }

  operator delete(v24);
}

uint64_t **sub_BEF1B8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}