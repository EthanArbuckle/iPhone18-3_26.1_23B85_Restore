void sub_704240(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

double sub_704264@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 52);
  v7 = a1[1];
  v29 = *a1;
  v30 = v7;
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = DWORD1(v8);
  if (v8 != v5 || DWORD1(v8) != v6)
  {
    while (1)
    {
      v13 = *(&v30 + 1) + 4 * v9;
      v14 = *(v13 + 4);
      v15 = *(v13 + 6);
      v16 = sub_57A90(DWORD2(v31));
      v17 = DWORD2(v31) & ~(-1 << (v16 & 0xFE));
      v18 = sub_581D8(v17);
      v19 = sub_581D8(v17 >> 1);
      v20 = (v30 - *v30);
      v21 = *v20;
      if (v21 < 0xD)
      {
        break;
      }

      if (!v20[6])
      {
        goto LABEL_11;
      }

      v22 = *(v30 + v20[6] + *(v30 + v20[6]) + 4 * DWORD1(v32) + 4);
LABEL_18:
      v26 = 1 << -(v16 >> 1);
      if (v16 < 2)
      {
        v26 = -2;
      }

      LODWORD(v27) = v26 * v19 + 4 * v15;
      if (v27 >= 0xFFFFFFFE)
      {
        v27 = 4294967294;
      }

      else
      {
        v27 = v27;
      }

      *a3 = (v26 * v18 + 4 * v14) | (v27 << 32);
      *(a3 + 8) = v22;
      if (BYTE8(v32))
      {
        sub_31EA68(&v29);
        a3 += 12;
        v9 = DWORD1(v32);
        if (v32 == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_31E948(&v29);
        a3 += 12;
        v9 = DWORD1(v32);
        if (v32 == v5)
        {
LABEL_6:
          if (v9 == v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    if (v21 >= 0xB)
    {
LABEL_11:
      if (v20[5])
      {
        v23 = *(v30 + v20[5] + *(v30 + v20[5]) + 2 * DWORD1(v32) + 4);
        if (v23 != 0xFFFF)
        {
          v24 = v20[4];
          if (v24)
          {
            v25 = *(v30 + v24);
          }

          else
          {
            v25 = 0;
          }

          v22 = HIDWORD(v31) + v23 + v25;
          goto LABEL_18;
        }
      }
    }

    v22 = 0x7FFFFFFF;
    goto LABEL_18;
  }

LABEL_3:
  v10 = v30;
  *a4 = v29;
  *(a4 + 16) = v10;
  result = *&v31;
  v12 = v32;
  *(a4 + 32) = v31;
  *(a4 + 48) = v12;
  *(a4 + 64) = a3;
  return result;
}

char *sub_704450(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v19 = a3 - a2;
    if (v19)
    {
      v20 = result;
      memmove(result, a2, v19);
      result = v20;
    }

    a1[1] = &result[v19];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        *(v16 + 4) = *(v14 + 4);
        *v16 = v17;
        *(v16 + 1) = v18;
        v14 += 40;
        v16 += 40;
        v15 += 40;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_704640(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_7049B8(__p, v37, v2);
  v33 = v37;
  if (sub_70EE0C((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_70EE70((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_704998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_7049B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = sub_30CC30(*a3, *v3);
      v7 = (v6 - *v6);
      if (*v7 >= 0xFu && v7[7] && (*(v6 + v7[7]) & 4) != 0 && (!v7[2] || !*(v6 + v7[2])) && !v7[4])
      {
        break;
      }

      if (++v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

BOOL sub_704A54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1 + 8;
  do
  {
    v8 = sub_4D1F50(a3, a4);
    result = *(v7 - 8) == *(v8 + 32) && *(v7 - 4) == *(v8 + 36);
    ++a4;
    v11 = !result || v7 == a2;
    v7 += 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_704AE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  if (v8 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 111) < 0)
  {
    sub_325C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v9 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 112);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 112) = v10;
  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
  }

  return a1;
}

void sub_704C88(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_310494(v3);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_704D10(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      *(v4 + 48) = *(v6 + 6);
      v6 = (v6 + 56);
      v4 = v10 + 56;
      v10 += 56;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_704DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_704E18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_704E18(uint64_t a1)
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
          operator delete(*(v4 - 4));
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_704EA4(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

unint64_t sub_704F54(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6ABEA8((v2 + 460), v15);
  }
}

BOOL sub_705090(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 2), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 2;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = v13 + 1;
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_705278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7052A4(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_70561C(__p, v37, v2);
  v33 = v37;
  if (sub_712D18((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_713A2C((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_7055FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_70561C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  do
  {
    v6 = sub_30CC30(*a3, *v3);
    v7 = (v6 - *v6);
    v8 = *v7;
    if (v8 < 0xF)
    {
      if (v8 < 5)
      {
        return v3;
      }
    }

    else if (v7[7] && (*(v6 + v7[7]) & 1) == 0)
    {
      goto LABEL_3;
    }

    if ((!v7[2] || !*(v6 + v7[2])) && (v8 < 9 || !v7[4]))
    {
      return v3;
    }

LABEL_3:
    ++v3;
  }

  while (v3 != a2);
  return a2;
}

unint64_t sub_7056DC(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6AE0E8((v2 + 460), v15);
  }
}

BOOL sub_705818(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 2), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 2;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = v13 + 1;
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_705A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_705A2C(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_705DA4(__p, v37, v2);
  v33 = v37;
  if (sub_716E70((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_716EE4((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_705D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_705DA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = sub_30CC30(*a3, *v3);
      v7 = (v6 - *v6);
      if (*v7 >= 0xFu && v7[7] && (*(v6 + v7[7]) & 2) != 0 && (!v7[2] || !*(v6 + v7[2])) && !v7[4])
      {
        break;
      }

      if (++v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

BOOL sub_705E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1 + 8;
  do
  {
    v8 = sub_4D1F50(a3, a4);
    result = *(v7 - 8) == *(v8 + 32) && (*(v8 + 36) & 0x1FFFFFFF) == *(v7 - 4);
    ++a4;
    v11 = !result || v7 == a2;
    v7 += 8;
  }

  while (!v11);
  return result;
}

void sub_705EC8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = a1[15];
  v7 = a1[14];
  if (v7 != v6)
  {
    v8 = a1[11];
    v9 = a1[12] - v8;
    v11 = *a2;
    v10 = a2[1];
    v12 = v10 % v9;
    v13 = v9 - 1;
    while (1)
    {
      if (*(v8 + v12) == 2)
      {
        v14 = v7 + 32 * v12;
        if (*(v14 + 16) == v10 && __PAIR64__(*(v14 + 4), *v14) == __PAIR64__(WORD2(*v11), *v11) && *(v14 + 6) == BYTE6(*v11) && *(v14 + 8) == *(v11 + 8) && *(v14 + 9) == *(v11 + 9) && *(v14 + 10) == *(v11 + 10))
        {
          v7 += 32 * v12;
          break;
        }
      }

      else if (!*(v8 + v12))
      {
        goto LABEL_24;
      }

      if (v12 == v13)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_24:
    ++a1[24];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v21 = (a1 + 3);
  }

  else
  {
    ++a1[23];
    v15 = *(v7 + 24);
    if (v15 != a1)
    {
      v16 = v15[1];
      if (v16 != a1)
      {
        v17 = *v15;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *a1;
        *(v18 + 8) = v15;
        *v15 = v18;
        *a1 = v15;
        v15[1] = a1;
      }
    }

    v20 = v15[5];
    v19 = v15[6];
    *a3 = v20;
    *(a3 + 8) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v21 = (a1 + 3);
  }

  std::mutex::unlock(v21);
}

void sub_706094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_7060E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 == v1)
    {
      *(a1 + 32) = v1;
    }

    else
    {
      do
      {
        v5 = *(v3 - 208);
        if (v5)
        {
          *(v3 - 200) = v5;
          operator delete(v5);
        }

        v6 = v3 - 248;
        v7 = *(v3 - 248);
        if (v7)
        {
          *(v3 - 240) = v7;
          operator delete(v7);
        }

        v3 -= 248;
      }

      while (v6 != v1);
      v4 = *(a1 + 24);
      *(a1 + 32) = v1;
    }

    operator delete(v4);
  }
}

void *sub_7061AC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15 - 1);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (a3 != __src)
  {
    result = memmove(*result, __src, v19 - 1);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_706504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::mutex::unlock((v9 + 208));
  _Unwind_Resume(a1);
}

void sub_706520(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::mutex::unlock((v1 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_706554(uint64_t a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (*(a1 + 168) < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v49);
    v7 = sub_4A5C(&v49, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, *(a1 + 168));
    sub_4A5C(v10, ")", 1);
    if ((v60 & 0x10) != 0)
    {
      v43 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v43 = v56;
      }

      v44 = v55;
      v11 = v43 - v55;
      if (v43 - v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v48) = 0;
LABEL_47:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__dst);
        }

        if (v58 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v51);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v44 = v52;
      v11 = v54 - v52;
      if (v54 - v52 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v48) = v11;
    if (v11)
    {
      memmove(&__dst, v44, v11);
    }

    goto LABEL_47;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v48 = 0;
  std::mutex::lock((a1 + 24));
  v15 = *(a1 + 120);
  v16 = *(a1 + 112);
  if (v16 == v15)
  {
    goto LABEL_23;
  }

  v17 = (*(a2 + 2) + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v18 = *(a2 + 8);
  v19 = ((v18 | (v17 << 6)) + (v17 >> 2) + 2654435769u) ^ v17;
  v20 = *(a2 + 9);
  v21 = ((v20 | (v19 << 6)) + (v19 >> 2) + 2654435769u) ^ v19;
  v22 = *(a2 + 10);
  v23 = (v22 + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96) - v24;
  v26 = v23 % v25;
  v27 = v25 - 1;
  while (*(v24 + v26) != 2)
  {
    if (!*(v24 + v26))
    {
      goto LABEL_26;
    }

LABEL_9:
    if (v26 == v27)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }
  }

  v28 = v16 + 32 * v26;
  if (*(v28 + 16) != v23 || *v28 != *a2)
  {
    goto LABEL_9;
  }

  v29 = *(v28 + 4) == WORD2(*a2) && *(v28 + 6) == BYTE6(*a2);
  if (!v29 || *(v28 + 8) != v18 || __PAIR64__(*(v28 + 10), *(v28 + 9)) != __PAIR64__(v22, v20))
  {
    goto LABEL_9;
  }

  v16 += 32 * v26;
LABEL_23:
  if (v16 == v15)
  {
LABEL_26:
    ++*(a1 + 176);
    v30 = *(a1 + 8);
    if (v30 != a1)
    {
      v31 = *(a1 + 168) - a4;
      do
      {
        if (*(a1 + 160) <= v31)
        {
          break;
        }

        sub_3D2F04(a1, v30, &__dst);
        v30 = *(a1 + 8);
      }

      while (v30 != a1);
    }

    v49 = *a2;
    LODWORD(v50) = a2[2];
    v32 = WORD2(v49) + 2654435769 + (v49 << 6) + (v49 >> 2);
    v33 = (v50 + 2654435769 + ((v32 ^ v49) << 6) + ((v32 ^ v49) >> 2)) ^ v32 ^ v49;
    v34 = (BYTE1(v50) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v36 = *a3;
    v35 = a3[1];
    v51.__locale_ = ((BYTE2(v50) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34);
    v52 = v36;
    v53 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
    }

    v54 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D2F04(a1, *(v16 + 24), &__dst);
    goto LABEL_26;
  }

  std::mutex::unlock((a1 + 24));
  if (v48)
  {
    v37 = p_dst;
    v38 = *(__dst + 1);
    v39 = *p_dst;
    v39[1] = v38;
    *v38 = v39;
    v48 = 0;
    if (v37 != &__dst)
    {
      do
      {
        v40 = v37[1];
        v41 = v37[6];
        if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v42 = v37;
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
          v37 = v42;
        }

        operator delete(v37);
        v37 = v40;
      }

      while (v40 != &__dst);
    }
  }

  return 0;
}

void sub_706B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::mutex::unlock((v17 + 24));
  sub_3D2E3C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_706C24(uint64_t *a1, __int128 *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[3];
  v7 = v6;
  if (v6 != v5)
  {
    v8 = *(a2 + 2);
    v9 = a1[1] - *a1;
    v10 = v8 % v9;
    v11 = v9 - 1;
    while (1)
    {
      if (*(*a1 + v10) == 2)
      {
        v7 = v6 + 32 * v10;
        if (*(v7 + 16) == v8 && __PAIR64__(*(v7 + 4), *v7) == __PAIR64__(WORD2(*a2), *a2) && *(v7 + 6) == BYTE6(*a2) && *(v7 + 8) == *(a2 + 8) && *(v7 + 9) == *(a2 + 9) && *(v7 + 10) == *(a2 + 10))
        {
          break;
        }
      }

      else if (!*(*a1 + v10))
      {
        goto LABEL_16;
      }

      if (v10 == v11)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }
  }

  if (v7 != v5)
  {
    return 0;
  }

LABEL_16:
  if (2 * a1[8] + 2 > ((v5 - v6) >> 5))
  {
    sub_3D30B8(a1);
  }

  v13 = *a1;
  v14 = *(a2 + 2) % (a1[1] - *a1);
  v15 = *(*a1 + v14);
  if (*(*a1 + v14))
  {
    while (v15 != 1)
    {
      if (v14 == ((a1[4] - a1[3]) >> 5) - 1)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      v15 = *(v13 + v14);
      if (!*(v13 + v14))
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    ++a1[8];
  }

  ++a1[7];
  *(v13 + v14) = 2;
  v16 = 32 * v14;
  v17 = a1[3] + v16;
  v18 = *a2;
  *(v17 + 16) = *(a2 + 2);
  *v17 = v18;
  *(a1[3] + v16 + 24) = *a3;
  return 1;
}

uint64_t sub_706DE0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_706E58(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v11 = vnegq_f64(v6);
    do
    {
      v7 = *v5++;
      v8 = sub_6D3F8C((a3 + 10096), v7);
      *(v8 + 24) = 0;
      *(v8 + 8) = *v8;
      *(v8 + 48) = *(v8 + 40);
      *(v8 + 64) = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      *(v8 + 72) = v9;
      *(v8 + 88) = v9;
      *(v8 + 104) = v9;
      *(v8 + 120) = -1;
      *(v8 + 128) = 0;
      *(v8 + 136) = -1;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 160) = v11;
      *(v8 + 176) = 0;
      *(v8 + 184) = 98;
      *(v8 + 192) = 0;
      *(v8 + 200) = 0;
      *(v8 + 208) = xmmword_229B660;
      *(v8 + 232) = 0;
      *(v8 + 245) = 0;
      *(v8 + 224) = 0;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_706F3C(uint64_t result, unsigned int *a2, uint64_t (**a3)(unint64_t, unint64_t), uint64_t a4, __int32 a5)
{
  v118.i32[0] = a5;
  v9 = result;
LABEL_2:
  v10 = (a2 - 1);
  v116 = a2 - 3;
  v117 = a2 - 2;
  v11 = v9;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v9 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3:
        v73 = v11 + 1;
        v74 = (*a3)(v11[1], *v11);
        v75 = *(a2 - 1);
        v78 = a2 - 1;
        result = (*a3)(v75, v11[1]);
        if (v74)
        {
          v76 = *v11;
          if (result)
          {
            goto LABEL_81;
          }

          *v11 = *v73;
          *(v11 + 2) = *(v11 + 6);
          *(v11 + 6) = BYTE2(v76);
          *(v11 + 2) = v76;
          result = (*a3)(*v78, v11[1]);
          if (!result)
          {
            return result;
          }

          v76 = *v73;
          v77 = *v78;
          *(v11 + 6) = *(v78 + 2);
          *v73 = v77;
LABEL_82:
          *(v78 + 2) = BYTE2(v76);
          *v78 = v76;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v97 = v11[1];
        v98 = *v78;
        *(v11 + 6) = *(v78 + 2);
        *v73 = v98;
        *(v78 + 2) = BYTE2(v97);
        *v78 = v97;
        result = (*a3)(v11[1], *v11);
        goto LABEL_124;
      case 4:
        v73 = v11 + 1;
        v81 = (*a3)(v11[1], *v11);
        v82 = v11 + 2;
        v83 = (*a3)(v11[2], v11[1]);
        if (v81)
        {
          v84 = *v11;
          if (v83)
          {
            *v11 = *v82;
            *(v11 + 2) = *(v11 + 10);
            *(v11 + 10) = BYTE2(v84);
            *(v11 + 4) = v84;
          }

          else
          {
            *v11 = *v73;
            *(v11 + 2) = *(v11 + 6);
            *(v11 + 6) = BYTE2(v84);
            *(v11 + 2) = v84;
            if ((*a3)(v11[2], v11[1]))
            {
              v108 = *v73;
              *v73 = *v82;
              *(v11 + 6) = *(v11 + 10);
              *v82 = v108;
              *(v11 + 10) = BYTE2(v108);
            }
          }
        }

        else if (v83)
        {
          v99 = *v11;
          v100 = v11[1];
          *(v11 + 6) = *(v11 + 10);
          *v73 = *v82;
          *(v11 + 4) = v100;
          *(v11 + 10) = BYTE2(v100);
          if ((*a3)(v11[1], v99))
          {
            v101 = *v11;
            *v11 = *v73;
            *(v11 + 2) = *(v11 + 6);
            *(v11 + 2) = v101;
            *(v11 + 6) = BYTE2(v101);
          }
        }

        result = (*a3)(*v10, *v82);
        if (!result)
        {
          return result;
        }

        v109 = *v82;
        v110 = *v10;
        *(v11 + 10) = *(v10 + 2);
        *v82 = v110;
        *(v10 + 2) = BYTE2(v109);
        *v10 = v109;
        result = (*a3)(*v82, *v73);
        if (!result)
        {
          return result;
        }

        v111 = *v11;
        v112 = v11[1];
        *(v11 + 6) = *(v11 + 10);
        *v73 = *v82;
        *(v11 + 4) = v112;
        *(v11 + 10) = BYTE2(v112);
        result = (*a3)(v11[1], v111);
LABEL_124:
        if (result)
        {
          v113 = *v11;
          *v11 = *v73;
          *(v11 + 2) = *(v73 + 2);
          *(v11 + 2) = v113;
          *(v11 + 6) = BYTE2(v113);
        }

        return result;
      case 5:

        return sub_707A78(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v14 <= 23)
    {
      v85 = v11 + 1;
      v87 = v11 == a2 || v85 == a2;
      if (v118.i8[0])
      {
        if (!v87)
        {
          v88 = 0;
          v89 = v11;
          do
          {
            v91 = *v89;
            v89 = v85;
            v92.i64[0] = 0xFFFFFFFF00000000;
            v92.i64[1] = 0xFFFFFFFF00000000;
            v93.i64[0] = v91;
            v93.i64[1] = HIDWORD(v91);
            v118 = vorrq_s8(vandq_s8(v118, v92), v93);
            result = (*a3)(v118.u64[1], v118.i64[0]);
            if (result)
            {
              v94 = *v89;
              v95 = v88;
              do
              {
                v96 = v9 + v95;
                *(v96 + 2) = *(v9 + v95);
                v96[6] = *(v9 + v95 + 2);
                if (!v95)
                {
                  v90 = v9;
                  goto LABEL_96;
                }

                v6 = v6 & 0xFFFFFFFF00000000 | v94;
                v10 = v10 & 0xFFFFFFFF00000000 | *(v96 - 1);
                result = (*a3)(v6, v10);
                v95 -= 4;
              }

              while ((result & 1) != 0);
              v90 = v9 + v95 + 4;
LABEL_96:
              *v90 = v94;
              *(v90 + 2) = BYTE2(v94);
            }

            v85 = v89 + 1;
            v88 += 4;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v103 = *v9;
          v102 = v9[1];
          v9 = v85;
          v5 = v5 & 0xFFFFFFFF00000000 | v102;
          v13 = v13 & 0xFFFFFFFF00000000 | v103;
          result = (*a3)(v5, v13);
          if (result)
          {
            v104 = *v9;
            v105 = v9;
            do
            {
              v106 = v105;
              v107 = *(v105-- - 2);
              *v106 = v107;
              *(v106 + 2) = *(v106 - 2);
              v6 = v6 & 0xFFFFFFFF00000000 | v104;
              v10 = v10 & 0xFFFFFFFF00000000 | *(v106 - 2);
              result = (*a3)(v6, v10);
            }

            while ((result & 1) != 0);
            *v105 = v104;
            *(v105 + 2) = BYTE2(v104);
          }

          v85 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_70859C(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(*v15, *v11);
      v18 = (*a3)(*v10, *v15);
      v114 = v6;
      if (v17)
      {
        v19 = *v9;
        if (v18)
        {
          v20 = *v10;
          *(v9 + 2) = *(a2 - 2);
          *v9 = v20;
          goto LABEL_29;
        }

        v33 = *v15;
        *(v9 + 2) = *(v15 + 2);
        *v9 = v33;
        *(v15 + 2) = BYTE2(v19);
        *v15 = v19;
        if ((*a3)(*v10, *v15))
        {
          v19 = *v15;
          v34 = *v10;
          *(v15 + 2) = *(a2 - 2);
          *v15 = v34;
LABEL_29:
          *(a2 - 2) = BYTE2(v19);
          *v10 = v19;
        }
      }

      else if (v18)
      {
        v25 = *v15;
        v26 = *v10;
        *(v15 + 2) = *(a2 - 2);
        *v15 = v26;
        *(a2 - 2) = BYTE2(v25);
        *v10 = v25;
        if ((*a3)(*v15, *v9))
        {
          v27 = *v9;
          v28 = *v15;
          *(v9 + 2) = *(v15 + 2);
          *v9 = v28;
          *(v15 + 2) = BYTE2(v27);
          *v15 = v27;
        }
      }

      v35 = v9 + 1;
      v36 = v15 - 1;
      v37 = (*a3)(*(v15 - 1), v9[1]);
      v38 = (*a3)(*v117, *(v15 - 1));
      v115 = v5;
      if (v37)
      {
        v39 = *v35;
        if (v38)
        {
          v40 = a2 - 2;
          v41 = *v117;
          *(v9 + 6) = *(a2 - 6);
          *v35 = v41;
          goto LABEL_43;
        }

        v48 = *v36;
        *(v9 + 6) = *(v15 - 2);
        *v35 = v48;
        *(v15 - 2) = BYTE2(v39);
        *v36 = v39;
        if ((*a3)(*v117, *v36))
        {
          v39 = *v36;
          v40 = a2 - 2;
          v49 = *v117;
          *(v15 - 2) = *(a2 - 6);
          *v36 = v49;
LABEL_43:
          *(v40 + 2) = BYTE2(v39);
          *v40 = v39;
        }
      }

      else if (v38)
      {
        v42 = *v36;
        v43 = *v117;
        *(v15 - 2) = *(a2 - 6);
        *v36 = v43;
        *(a2 - 6) = BYTE2(v42);
        *v117 = v42;
        if ((*a3)(*v36, *v35))
        {
          v44 = *v35;
          v45 = *v36;
          *(v9 + 6) = *(v15 - 2);
          *v35 = v45;
          *(v15 - 2) = BYTE2(v44);
          *v36 = v44;
        }
      }

      v50 = v9 + 2;
      v51 = v15 + 1;
      v52 = (*a3)(v15[1], v9[2]);
      v53 = (*a3)(*v116, v15[1]);
      if (v52)
      {
        v54 = *v50;
        if (v53)
        {
          v55 = a2 - 3;
          v56 = *v116;
          *(v9 + 10) = *(a2 - 10);
          *v50 = v56;
          goto LABEL_52;
        }

        v61 = *v51;
        *(v9 + 10) = *(v15 + 6);
        *v50 = v61;
        *(v15 + 6) = BYTE2(v54);
        *v51 = v54;
        if ((*a3)(*v116, *v51))
        {
          v54 = *v51;
          v55 = a2 - 3;
          v62 = *v116;
          *(v15 + 6) = *(a2 - 10);
          *v51 = v62;
LABEL_52:
          *(v55 + 2) = BYTE2(v54);
          *v55 = v54;
        }
      }

      else if (v53)
      {
        v57 = *v51;
        v58 = *v116;
        *(v15 + 6) = *(a2 - 10);
        *v51 = v58;
        *(a2 - 10) = BYTE2(v57);
        *v116 = v57;
        if ((*a3)(*v51, *v50))
        {
          v59 = *v50;
          v60 = *v51;
          *(v9 + 10) = *(v15 + 6);
          *v50 = v60;
          *(v15 + 6) = BYTE2(v59);
          *v51 = v59;
        }
      }

      v63 = (*a3)(*v15, *v36);
      v64 = (*a3)(*v51, *v15);
      if (v63)
      {
        v65 = *v36;
        v5 = v115;
        if (v64)
        {
          *v36 = *v51;
          *(v15 - 2) = *(v15 + 6);
          goto LABEL_61;
        }

        *v36 = *v15;
        *(v15 - 2) = *(v15 + 2);
        *v15 = v65;
        *(v15 + 2) = BYTE2(v65);
        if ((*a3)(*v51, *v15))
        {
          v65 = *v15;
          *v15 = *v51;
          *(v15 + 2) = *(v15 + 6);
LABEL_61:
          *v51 = v65;
          *(v15 + 6) = BYTE2(v65);
        }
      }

      else
      {
        v5 = v115;
        if (v64)
        {
          v66 = *v15;
          *(v15 + 2) = *(v15 + 6);
          *v15 = *v51;
          *v51 = v66;
          *(v15 + 6) = BYTE2(v66);
          if ((*a3)(*v15, *v36))
          {
            v67 = *v36;
            *v36 = *v15;
            *(v15 - 2) = *(v15 + 2);
            *v15 = v67;
            *(v15 + 2) = BYTE2(v67);
          }
        }
      }

      v68 = *v9;
      v69 = *v15;
      *(v9 + 2) = *(v15 + 2);
      *v9 = v69;
      *(v15 + 2) = BYTE2(v68);
      *v15 = v68;
      v6 = v114;
      if (v118.i8[0])
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v21 = v16(*v11, *v15);
    v22 = (*a3)(*v10, *v9);
    if (v21)
    {
      v23 = *v15;
      if (v22)
      {
        v24 = *v10;
        *(v15 + 2) = *(a2 - 2);
        *v15 = v24;
        goto LABEL_38;
      }

      v46 = *v9;
      *(v15 + 2) = *(v9 + 2);
      *v15 = v46;
      *(v9 + 2) = BYTE2(v23);
      *v9 = v23;
      if ((*a3)(*v10, *v9))
      {
        v23 = *v9;
        v47 = *v10;
        *(v9 + 2) = *(a2 - 2);
        *v9 = v47;
LABEL_38:
        *(a2 - 2) = BYTE2(v23);
        *v10 = v23;
      }

LABEL_39:
      if (v118.i8[0])
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (!v22)
    {
      goto LABEL_39;
    }

    v29 = *v9;
    v30 = *v10;
    *(v9 + 2) = *(a2 - 2);
    *v9 = v30;
    *(a2 - 2) = BYTE2(v29);
    *v10 = v29;
    if (!(*a3)(*v9, *v15))
    {
      goto LABEL_39;
    }

    v31 = *v15;
    v32 = *v9;
    *(v15 + 2) = *(v9 + 2);
    *v15 = v32;
    *(v9 + 2) = BYTE2(v31);
    *v9 = v31;
    if (v118.i8[0])
    {
      goto LABEL_64;
    }

LABEL_63:
    v6 = v6 & 0xFFFFFFFF00000000 | *(v9 - 1);
    v5 = v5 & 0xFFFFFFFF00000000 | *v9;
    if (((*a3)(v6, v5) & 1) == 0)
    {
      result = sub_707D20(v9, a2, a3);
      v11 = result;
      goto LABEL_69;
    }

LABEL_64:
    v70 = sub_707EC8(v9, a2, a3);
    if ((v71 & 1) == 0)
    {
      goto LABEL_67;
    }

    v72 = sub_70807C(v9, v70, a3);
    v11 = v70 + 1;
    result = sub_70807C(v70 + 1, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v70;
      if (v72)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v72)
    {
LABEL_67:
      result = sub_706F3C(v9, v70, a3, -v13, v118.i8[0] & 1);
      v11 = v70 + 1;
LABEL_69:
      v118.i32[0] = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  v79 = *(a2 - 1);
  v78 = a2 - 1;
  result = (*a3)(v79, *v11);
  if (result)
  {
    v76 = *v11;
LABEL_81:
    v80 = *v78;
    *(v11 + 2) = *(v78 + 2);
    *v11 = v80;
    goto LABEL_82;
  }

  return result;
}

uint64_t sub_707A78(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t (**a6)(void, void))
{
  v12 = (*a6)(*a2, *a1);
  v13 = (*a6)(*a3, *a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      v15 = *a3;
      *(a1 + 2) = *(a3 + 2);
      *a1 = v15;
LABEL_9:
      *(a3 + 2) = BYTE2(v14);
      *a3 = v14;
      goto LABEL_10;
    }

    v20 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *a1 = v20;
    *(a2 + 2) = BYTE2(v14);
    *a2 = v14;
    if ((*a6)(*a3, *a2))
    {
      v14 = *a2;
      v21 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v21;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v16 = *a2;
    v17 = *a3;
    *(a2 + 2) = *(a3 + 2);
    *a2 = v17;
    *(a3 + 2) = BYTE2(v16);
    *a3 = v16;
    if ((*a6)(*a2, *a1))
    {
      v18 = *a1;
      v19 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *a1 = v19;
      *(a2 + 2) = BYTE2(v18);
      *a2 = v18;
    }
  }

LABEL_10:
  if ((*a6)(*a4, *a3))
  {
    v22 = *a3;
    v23 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *a3 = v23;
    *(a4 + 2) = BYTE2(v22);
    *a4 = v22;
    if ((*a6)(*a3, *a2))
    {
      v24 = *a2;
      v25 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v25;
      *(a3 + 2) = BYTE2(v24);
      *a3 = v24;
      if ((*a6)(*a2, *a1))
      {
        v26 = *a1;
        v27 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *a1 = v27;
        *(a2 + 2) = BYTE2(v26);
        *a2 = v26;
      }
    }
  }

  result = (*a6)(*a5, *a4);
  if (result)
  {
    v29 = *a4;
    v30 = *a5;
    *(a4 + 2) = *(a5 + 2);
    *a4 = v30;
    *(a5 + 2) = BYTE2(v29);
    *a5 = v29;
    result = (*a6)(*a4, *a3);
    if (result)
    {
      v31 = *a3;
      v32 = *a4;
      *(a3 + 2) = *(a4 + 2);
      *a3 = v32;
      *(a4 + 2) = BYTE2(v31);
      *a4 = v31;
      result = (*a6)(*a3, *a2);
      if (result)
      {
        v33 = *a2;
        v34 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v34;
        *(a3 + 2) = BYTE2(v33);
        *a3 = v33;
        result = (*a6)(*a2, *a1);
        if (result)
        {
          v35 = *a1;
          v36 = *a2;
          *(a1 + 2) = *(a2 + 2);
          *a1 = v36;
          *(a2 + 2) = BYTE2(v35);
          *a2 = v35;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_707D20(unsigned int *a1, unint64_t a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v8 = a2;
  v10 = *a1;
  if ((*a3)(v10, *(a2 - 4)))
  {
    v11 = a1;
    do
    {
      v12 = v11[1];
      ++v11;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | v12;
    }

    while (((*a3)(v4, v3) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 1);
    do
    {
      v11 = v5;
      if (v5 >= v8)
      {
        break;
      }

      v5 += 4;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | *v11;
    }

    while (!(*a3)(v4, v3));
  }

  if (v11 < v8)
  {
    do
    {
      v13 = *(v8 - 4);
      v8 -= 4;
      v3 = v3 & 0xFFFFFFFF00000000 | v10;
      v4 = v4 & 0xFFFFFFFF00000000 | v13;
    }

    while (((*a3)(v3, v4) & 1) != 0);
  }

  while (v11 < v8)
  {
    v14 = *v11;
    v15 = *v8;
    *(v11 + 2) = *(v8 + 2);
    *v11 = v15;
    *(v8 + 2) = BYTE2(v14);
    *v8 = v14;
    do
    {
      v16 = v11[1];
      ++v11;
      v6 = v6 & 0xFFFFFFFF00000000 | v10;
      v5 = v5 & 0xFFFFFFFF00000000 | v16;
    }

    while (!(*a3)(v6, v5));
    do
    {
      v17 = *(v8 - 4);
      v8 -= 4;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | v17;
    }

    while (((*a3)(v4, v3) & 1) != 0);
  }

  if (v11 - 1 != a1)
  {
    v18 = *(v11 - 2);
    *(a1 + 2) = *(v11 - 2);
    *a1 = v18;
  }

  *(v11 - 2) = v10;
  *(v11 - 2) = BYTE2(v10);
  return v11;
}

unint64_t sub_707EC8(unsigned int *a1, unint64_t a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v10 = 0;
  v11 = *a1;
  do
  {
    v4 = v4 & 0xFFFFFFFF00000000 | a1[v10 + 1];
    v3 = v3 & 0xFFFFFFFF00000000 | v11;
    ++v10;
  }

  while (((*a3)(v4, v3) & 1) != 0);
  v12 = &a1[v10];
  v13 = &a1[v10 - 1];
  if (v10 == 1)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      v15 = *(a2 - 4);
      a2 -= 4;
      v5 = v5 & 0xFFFFFFFF00000000 | v15;
      v4 = v4 & 0xFFFFFFFF00000000 | v11;
    }

    while (((*a3)(v5, v4) & 1) == 0);
  }

  else
  {
    do
    {
      v14 = *(a2 - 4);
      a2 -= 4;
      v5 = v5 & 0xFFFFFFFF00000000 | v14;
      v4 = v4 & 0xFFFFFFFF00000000 | v11;
    }

    while (!(*a3)(v5, v4));
  }

  if (v12 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v12;
      v18 = *v16;
      *(v12 + 2) = *(v16 + 2);
      *v12 = v18;
      *(v16 + 2) = BYTE2(v17);
      *v16 = v17;
      do
      {
        v19 = v12[1];
        ++v12;
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v5 = v5 & 0xFFFFFFFF00000000 | v11;
      }

      while (((*a3)(v6, v5) & 1) != 0);
      do
      {
        v20 = *(v16 - 4);
        v16 -= 4;
        v4 = v4 & 0xFFFFFFFF00000000 | v20;
        v13 = v13 & 0xFFFFFFFF00000000 | v11;
      }

      while (!(*a3)(v4, v13));
    }

    while (v12 < v16);
    v13 = (v12 - 1);
  }

  if (v13 != a1)
  {
    v21 = *v13;
    *(a1 + 2) = *(v13 + 2);
    *a1 = v21;
  }

  *v13 = v11;
  *(v13 + 2) = BYTE2(v11);
  return v13;
}

BOOL sub_70807C(unsigned int *a1, unsigned int *a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 1;
        v10 = (*a3)(a1[1], *a1);
        v11 = *(a2 - 1);
        v7 = a2 - 1;
        v12 = (*a3)(v11, *v9);
        if (v10)
        {
          v8 = *a1;
          if (!v12)
          {
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 6) = BYTE2(v8);
            *(a1 + 2) = v8;
            if (!(*a3)(*v7, a1[1]))
            {
              return 1;
            }

            v8 = *v9;
            v33 = *v7;
            *(a1 + 6) = *(v7 + 2);
            *v9 = v33;
            goto LABEL_13;
          }

LABEL_12:
          v13 = *v7;
          *(a1 + 2) = *(v7 + 2);
          *a1 = v13;
LABEL_13:
          *(v7 + 2) = BYTE2(v8);
          *v7 = v8;
          return 1;
        }

        if (!v12)
        {
          return 1;
        }

        v24 = a1[1];
        v25 = *v7;
        *(a1 + 6) = *(v7 + 2);
        *v9 = v25;
        *(v7 + 2) = BYTE2(v24);
        *v7 = v24;
        v26 = (*a3)(a1[1], *a1);
        break;
      case 4:
        v9 = a1 + 1;
        v19 = (*a3)(a1[1], *a1);
        v20 = a1 + 2;
        v21 = a2 - 1;
        v22 = (*a3)(a1[2], *v9);
        if (v19)
        {
          v23 = *a1;
          if (v22)
          {
            *a1 = *v20;
            *(a1 + 2) = *(a1 + 10);
            *(a1 + 10) = BYTE2(v23);
            *(a1 + 4) = v23;
          }

          else
          {
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 6) = BYTE2(v23);
            *(a1 + 2) = v23;
            if ((*a3)(a1[2], a1[1]))
            {
              v43 = *v9;
              *v9 = *v20;
              *(a1 + 6) = *(a1 + 10);
              *v20 = v43;
              *(a1 + 10) = BYTE2(v43);
            }
          }
        }

        else if (v22)
        {
          v30 = *a1;
          v31 = a1[1];
          *(a1 + 6) = *(a1 + 10);
          *v9 = *v20;
          *(a1 + 4) = v31;
          *(a1 + 10) = BYTE2(v31);
          if ((*a3)(a1[1], v30))
          {
            v32 = *a1;
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 2) = v32;
            *(a1 + 6) = BYTE2(v32);
          }
        }

        if (!(*a3)(*v21, *v20))
        {
          return 1;
        }

        v44 = *v20;
        v45 = *v21;
        *(a1 + 10) = *(v21 + 2);
        *v20 = v45;
        *(v21 + 2) = BYTE2(v44);
        *v21 = v44;
        if (!(*a3)(*v20, *v9))
        {
          return 1;
        }

        v46 = *a1;
        v47 = a1[1];
        *(a1 + 6) = *(a1 + 10);
        *v9 = *v20;
        *(a1 + 4) = v47;
        *(a1 + 10) = BYTE2(v47);
        v26 = (*a3)(a1[1], v46);
        break;
      case 5:
        sub_707A78(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_14;
    }

    if (v26)
    {
      v48 = *a1;
      *a1 = *v9;
      *(a1 + 2) = *(v9 + 2);
      *(a1 + 2) = v48;
      *(a1 + 6) = BYTE2(v48);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(*(a2 - 1), *a1))
    {
      v8 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v14 = (a1 + 1);
  v15 = (*a3)(a1[1], *a1);
  v16 = a1 + 2;
  v17 = (*a3)(a1[2], *v14);
  if (v15)
  {
    v18 = *a1;
    if (v17)
    {
      *a1 = *v16;
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 10) = BYTE2(v18);
      *(a1 + 4) = v18;
    }

    else
    {
      *a1 = *v14;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 6) = BYTE2(v18);
      *(a1 + 2) = v18;
      if ((*a3)(a1[2], a1[1]))
      {
        v34 = *v14;
        *v14 = *v16;
        *(a1 + 6) = *(a1 + 10);
        *v16 = v34;
        *(a1 + 10) = BYTE2(v34);
      }
    }
  }

  else if (v17)
  {
    v27 = *a1;
    v28 = a1[1];
    *(a1 + 6) = *(a1 + 10);
    *v14 = *v16;
    *(a1 + 4) = v28;
    *(a1 + 10) = BYTE2(v28);
    if ((*a3)(a1[1], v27))
    {
      v29 = *a1;
      *a1 = *v14;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 2) = v29;
      *(a1 + 6) = BYTE2(v29);
    }
  }

  v35 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  while (1)
  {
    v38.i64[0] = 0xFFFFFFFF00000000;
    v38.i64[1] = 0xFFFFFFFF00000000;
    v39.i64[0] = *v16;
    v39.i64[1] = HIDWORD(*v16);
    v50 = vorrq_s8(vandq_s8(v50, v38), v39);
    if ((*a3)(v50.u64[1], v50.i64[0]))
    {
      break;
    }

LABEL_41:
    v16 = v35;
    v36 += 4;
    if (++v35 == a2)
    {
      return 1;
    }
  }

  v40 = *v35;
  v41 = v36;
  do
  {
    v42 = a1 + v41;
    *(v42 + 6) = *(a1 + v41 + 8);
    v42[14] = *(a1 + v41 + 10);
    if (v41 == -8)
    {
      *a1 = v40;
      *(a1 + 2) = BYTE2(v40);
      if (++v37 != 8)
      {
        goto LABEL_41;
      }

      return v35 + 1 == a2;
    }

    v14 = v14 & 0xFFFFFFFF00000000 | v40;
    v15 = v15 & 0xFFFFFFFF00000000 | *(v42 + 1);
    v41 -= 4;
  }

  while (((*a3)(v14, v15) & 1) != 0);
  *(a1 + v41 + 12) = v40;
  *(a1 + v41 + 14) = BYTE2(v40);
  if (++v37 != 8)
  {
    goto LABEL_41;
  }

  return v35 + 1 == a2;
}

unsigned int *sub_70859C(unint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int (**a4)(unint64_t, unint64_t))
{
  if (a1 == a2)
  {
    return a3;
  }

  v8 = a1;
  v56 = a2;
  v9 = a2 - a1;
  v10 = (a2 - a1) >> 2;
  if (v10 >= 2)
  {
    v11 = (v10 - 2) >> 1;
    v12 = v11 + 1;
    v4 = a1 + 4 * v11;
    do
    {
      sub_7089FC(v8, a4, v10, v4);
      v4 -= 4;
      --v12;
    }

    while (v12);
  }

  v13 = v56;
  v60 = v8;
  if (v56 != a3)
  {
    if (v10 < 2)
    {
      v13 = v56;
      do
      {
        v9 = v9 & 0xFFFFFFFF00000000 | *v13;
        v4 = v4 & 0xFFFFFFFF00000000 | *v8;
        if ((*a4)(v9, v4))
        {
          v14 = *v13;
          v15 = *v8;
          *(v13 + 2) = *(v8 + 2);
          *v13 = v15;
          *(v8 + 2) = BYTE2(v14);
          *v8 = v14;
        }

        ++v13;
      }

      while (v13 != a3);
      goto LABEL_32;
    }

    v4 = v8 + 4;
    v48 = (v8 + 8);
    v49 = v8 + 4;
    v13 = v56;
    v50 = v9;
    v51 = a3;
    do
    {
      v5 = v5 & 0xFFFFFFFF00000000 | *v8;
      v55 = v55 & 0xFFFFFFFF00000000 | *v13;
      if ((*a4)())
      {
        v16 = *v13;
        v17 = *v8;
        *(v13 + 2) = *(v8 + 2);
        *v13 = v17;
        *(v8 + 2) = BYTE2(v16);
        *v8 = v16;
        if (v9 == 8)
        {
          v18 = v4;
          v19 = 1;
          if (((*a4)(*v4, *v8) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v20 = (*a4)(*v4, *v48);
          if (v20)
          {
            v18 = v48;
          }

          else
          {
            v18 = v4;
          }

          if (v20)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          if (((*a4)(*v18, *v8) & 1) == 0)
          {
LABEL_25:
            v52 = v5;
            v53 = v13;
            v21 = *v8;
            v22 = v8;
            do
            {
              v24 = v18;
              v25 = *v18;
              *(v22 + 2) = *(v18 + 2);
              *v22 = v25;
              if (((v10 - 2) >> 1) < v19)
              {
                break;
              }

              v26 = (2 * v19) | 1;
              v18 = (v60 + 4 * v26);
              v27 = 2 * v19 + 2;
              if (v27 < v10)
              {
                v57 = v57 & 0xFFFFFFFF00000000 | v18[1];
                v58 = v58 & 0xFFFFFFFF00000000 | *v18;
                if ((*a4)())
                {
                  ++v18;
                  v26 = v27;
                }
              }

              v8 = v8 & 0xFFFFFFFF00000000 | *v18;
              v4 = v4 & 0xFFFFFFFF00000000 | v21;
              v23 = (*a4)(v8, v4);
              v22 = v24;
              v19 = v26;
            }

            while (!v23);
            *v24 = v21;
            *(v24 + 2) = BYTE2(v21);
            v8 = v60;
            v5 = v52;
            v13 = v53;
            v9 = v50;
            a3 = v51;
            v4 = v49;
          }
        }
      }

      ++v13;
    }

    while (v13 != a3);
  }

LABEL_32:
  if (v10 >= 2)
  {
    v54 = v13;
    while (1)
    {
      v30 = 0;
      v59 = *v8;
      do
      {
        v35 = v8 + 4 * v30;
        v33 = (v35 + 4);
        v36 = (2 * v30) | 1;
        v37 = 2 * v30 + 2;
        if (v37 < v10)
        {
          v32 = *(v35 + 8);
          v31 = (v35 + 8);
          v4 = v4 & 0xFFFFFFFF00000000 | *(v31 - 1);
          v9 = v9 & 0xFFFFFFFF00000000 | v32;
          if ((*a4)(v4, v9))
          {
            v33 = v31;
            v30 = v37;
          }

          else
          {
            v30 = v36;
          }
        }

        else
        {
          v30 = (2 * v30) | 1;
        }

        v34 = *v33;
        *(v8 + 2) = *(v33 + 2);
        *v8 = v34;
        v8 = v33;
      }

      while (v30 <= ((v10 - 2) >> 1));
      v38 = v56 - 1;
      if (v33 == --v56)
      {
        LODWORD(v28) = v59;
        v8 = v60;
      }

      else
      {
        v40 = *v38;
        *(v33 + 2) = *(v38 + 2);
        *v33 = v40;
        v8 = v60;
        *(v38 + 2) = BYTE2(v59);
        *v38 = v59;
        v41 = (v33 - v60 + 4) >> 2;
        v29 = v41 < 2;
        v42 = v41 - 2;
        if (v29)
        {
          goto LABEL_36;
        }

        v43 = v42 >> 1;
        v44 = (v60 + 4 * (v42 >> 1));
        if (!(*a4)(*v44, *v33))
        {
          goto LABEL_36;
        }

        v28 = *v33;
        do
        {
          v45 = v44;
          v46 = *v44;
          *(v33 + 2) = *(v44 + 2);
          *v33 = v46;
          if (!v43)
          {
            break;
          }

          v43 = (v43 - 1) >> 1;
          v44 = (v60 + 4 * v43);
          v4 = v4 & 0xFFFFFFFF00000000 | *v44;
          v9 = v9 & 0xFFFFFFFF00000000 | v28;
          v33 = v45;
        }

        while (((*a4)(v4, v9) & 1) != 0);
        v33 = v45;
      }

      *v33 = v28;
      *(v33 + 2) = BYTE2(v28);
LABEL_36:
      v29 = v10-- <= 2;
      if (v29)
      {
        return v54;
      }
    }
  }

  return v13;
}

uint64_t sub_7089FC(uint64_t result, unsigned int (**a2)(unint64_t, unint64_t), uint64_t a3, unsigned int *a4)
{
  v7 = a3 - 2;
  if (a3 >= 2)
  {
    v8 = a4;
    v9 = result;
    v21 = v7 >> 1;
    if ((v7 >> 1) >= (a4 - result) >> 2)
    {
      v11 = (a4 - result) >> 1;
      v12 = v11 + 1;
      v13 = (result + 4 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v4 = (v13 + 1);
        if ((*a2)(*v13, v13[1]))
        {
          ++v13;
          v12 = v14;
        }
      }

      result = (*a2)(*v13, *v8);
      if ((result & 1) == 0)
      {
        v19 = v9;
        v20 = *v8;
        do
        {
          v15 = v13;
          v16 = *v13;
          *(v8 + 2) = *(v13 + 2);
          *v8 = v16;
          if (v21 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = (v19 + 4 * v17);
          v18 = 2 * v12 + 2;
          if (v18 < a3)
          {
            v4 = v4 & 0xFFFFFFFF00000000 | *v13;
            v9 = v9 & 0xFFFFFFFF00000000 | v13[1];
            if ((*a2)(v4, v9))
            {
              ++v13;
              v17 = v18;
            }
          }

          v5 = v5 & 0xFFFFFFFF00000000 | *v13;
          v6 = v6 & 0xFFFFFFFF00000000 | v20;
          result = (*a2)(v5, v6);
          v8 = v15;
          v12 = v17;
        }

        while (!result);
        *v15 = v20;
        *(v15 + 2) = BYTE2(v20);
      }
    }
  }

  return result;
}

BOOL sub_708B8C(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_70EE0C(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_708D84(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_70EE0C(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_70EE0C(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

int **sub_708F08(int **result, int **a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = *(a3 + 32);
    while (1)
    {
      if (*(result + 8) != v3 || (*(result + 18) == WORD2(v3) ? (v4 = *(result + 38) == BYTE6(v3)) : (v4 = 0), !v4))
      {
        v5 = (*result - **result);
        if (*v5 >= 0x2Fu)
        {
          v6 = v5[23];
          if (v6)
          {
            if (!*(*result + v6))
            {
              break;
            }
          }
        }
      }

      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_708F80(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_70ED3C(v4 + 1432, a1[1], a2);
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_709188(int **a1, int **a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      v4 = *result;
      v5 = (*result - **result);
      v6 = *v5;
      if (*(result + 38))
      {
        if (v6 < 0x9B)
        {
          break;
        }

        if (!v5[77])
        {
          break;
        }

        v7 = *(v4 + v5[77]);
        if ((v7 & 2) == 0 && (v7 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v6 < 0x9B)
        {
          break;
        }

        if (!v5[77])
        {
          break;
        }

        v8 = *(v4 + v5[77]);
        if ((v8 & 1) == 0 && (v8 & 2) == 0)
        {
          break;
        }
      }

      v9 = v5[23];
      if (v9)
      {
        v10 = *(v4 + v9);
        v11 = v10 > 0x2F;
        v12 = (1 << v10) & 0xA08040000000;
        if (!v11 && v12 != 0)
        {
          break;
        }
      }

      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }

    if (result != a2)
    {
      for (i = result + 5; i != a2; i += 5)
      {
        v17 = *i;
        v18 = (*i - **i);
        v19 = *v18;
        if (*(i + 38))
        {
          if (v19 >= 0x9B)
          {
            if (v18[77])
            {
              v20 = *(v17 + v18[77]);
              if (v20 & 2) != 0 || (v20)
              {
                goto LABEL_35;
              }
            }
          }
        }

        else if (v19 >= 0x9B)
        {
          if (v18[77])
          {
            v21 = *(v17 + v18[77]);
            if ((v21 & 1) != 0 || (v21 & 2) != 0)
            {
LABEL_35:
              v22 = v18[23];
              if (!v22 || ((v23 = *(v17 + v22), v11 = v23 > 0x2F, v24 = (1 << v23) & 0xA08040000000, !v11) ? (v25 = v24 == 0) : (v25 = 1), v25))
              {
                v15 = *i;
                v16 = *(i + 1);
                result[4] = i[4];
                *result = v15;
                *(result + 1) = v16;
                result += 5;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int **sub_709314(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 16);
        v11 = *(v7 + 32);
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 16) = v13;
        *(v7 + 32) = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_709A48(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_709A48(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            *(v7 + 32) = *(v23 + 32);
            *v7 = v26;
            *(v7 + 16) = v27;
            v23 += 40;
            v7 += 40;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                *(v7 + 32) = *(v23 + 32);
                *v7 = v30;
                *(v7 + 16) = v31;
                v23 += 40;
                v7 += 40;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = *(v14 + 16);
            *(v7 + 32) = *(v14 + 32);
            *v7 = v24;
            *(v7 + 16) = v25;
            v14 += 40;
            v7 += 40;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = *(v14 + 16);
          *(v7 + 32) = *(v14 + 32);
          *v7 = v28;
          *(v7 + 16) = v29;
          v14 += 40;
          v7 += 40;
        }
      }

      else
      {
        sub_709314(result, v17, a3, a4 >> 1, a5, a6);
        sub_709314(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_709574(int ***a1, int **a2, int **a3)
{
  v3 = **a1;
  v4 = (v3 - *v3);
  v5 = *v4;
  if (*(*a1 + 38))
  {
    if (v5 < 0x49)
    {
      goto LABEL_11;
    }

    v6 = v4[36];
    if (!v4[36])
    {
      goto LABEL_11;
    }
  }

  else if (v5 < 0x4B || (v6 = v4[37]) == 0)
  {
LABEL_11:
    v7 = 0xFFFF;
    v8 = *a2;
    v9 = (*a2 - **a2);
    v10 = *v9;
    if (*(a2 + 38))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v7 = *(v3 + v6);
  v8 = *a2;
  v9 = (*a2 - **a2);
  v10 = *v9;
  if (*(a2 + 38))
  {
LABEL_12:
    if (v10 >= 0x4B)
    {
      v11 = v9[37];
      if (v11)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v12 = 0xFFFF;
    if (!*(*a1 + 38))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v10 < 0x49)
  {
    goto LABEL_18;
  }

  v11 = v9[36];
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = *&v8[v11];
  if (!*(*a1 + 38))
  {
LABEL_15:
    if (v5 < 0x4B)
    {
      goto LABEL_25;
    }

    v13 = v4[37];
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (v5 < 0x49 || (v13 = v4[36]) == 0)
  {
LABEL_25:
    v14 = 0xFFFF;
    v15 = *a3;
    v16 = (*a3 - **a3);
    v17 = *v16;
    if (*(a3 + 38))
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v17 >= 0x49)
    {
      v18 = v16[36];
      if (v18)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    v19 = 0xFFFF;
    goto LABEL_30;
  }

LABEL_21:
  v14 = *(v3 + v13);
  v15 = *a3;
  v16 = (*a3 - **a3);
  v17 = *v16;
  if (!*(a3 + 38))
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v17 < 0x4B)
  {
    goto LABEL_29;
  }

  v18 = v16[37];
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_28:
  v19 = *&v15[v18];
LABEL_30:
  v20 = vdup_n_s32(0x4650u);
  v21 = vadd_s32(__PAIR64__(v14, v7), v20);
  v22 = vdup_n_s32(0x8CA0u);
  v23 = vsub_s32(__PAIR64__(v19, v12), vand_s8(vbsl_s8(vcgt_u32(v22, vand_s8(v21, 0xFFFF0000FFFFLL)), v21, vadd_s32(__PAIR64__(v14, v7), vdup_n_s32(0xB9B0u))), 0xFFFF0000FFFFLL));
  v24 = vadd_s32(v23, vand_s8(vcgt_s32(v23, v20), vdup_n_s32(0xFFFF7360)));
  v25 = vadd_s32(v24, vand_s8(vcgt_s32(vdup_n_s32(0xFFFFB9B1), v24), v22));
  v26.i64[0] = v25.i32[0];
  v26.i64[1] = v25.i32[1];
  v27 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v26), vdupq_n_s64(0x4059000000000000uLL)));
  return *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v27, 1), v27)) & 1;
}

uint64_t sub_70974C(uint64_t result, int **a2, int ***a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = (result + 40);
  if ((result + 40) == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = vdup_n_s32(0x4650u);
  v9 = vdup_n_s32(0xB9B0u);
  v10 = vdup_n_s32(0x8CA0u);
  v11 = vdup_n_s32(0xFFFF7360);
  v12 = vdup_n_s32(0xFFFFB9B1);
  v13 = result;
  v44 = vdupq_n_s64(0x4059000000000000uLL);
  while (2)
  {
    v15 = v5;
    result = sub_709574(a3, v5, v13);
    if (!result)
    {
      goto LABEL_6;
    }

    v16 = *v15;
    *v45 = *(v13 + 3);
    *&v45[14] = *(v13 + 62);
    v17 = *(v13 + 78);
    v18 = *(v13 + 79);
    v19 = v7;
    do
    {
      v27 = v4 + v19;
      v28 = *(v4 + v19 + 16);
      *(v27 + 40) = *(v4 + v19);
      *(v27 + 56) = v28;
      *(v27 + 72) = *(v4 + v19 + 32);
      if (!v19)
      {
        v14 = v4;
        goto LABEL_5;
      }

      v29 = **a3;
      v30 = (v29 - *v29);
      v31 = *v30;
      if (*(*a3 + 38))
      {
        if (v31 >= 0x49)
        {
          v32 = v30[36];
          if (v30[36])
          {
            goto LABEL_18;
          }
        }
      }

      else if (v31 >= 0x4B)
      {
        v32 = v30[37];
        if (v30[37])
        {
LABEL_18:
          v33 = *(v29 + v32);
          v34 = (v16 - *v16);
          v35 = *v34;
          if (v17)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      v33 = 0xFFFF;
      v34 = (v16 - *v16);
      v35 = *v34;
      if (v17)
      {
LABEL_23:
        if (v35 >= 0x4B)
        {
          v36 = v34[37];
          if (v36)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_29;
      }

LABEL_19:
      if (v35 >= 0x49)
      {
        v36 = v34[36];
        if (v36)
        {
LABEL_25:
          v37 = *(v16 + v36);
          if (!*(*a3 + 38))
          {
            goto LABEL_26;
          }

          goto LABEL_30;
        }
      }

LABEL_29:
      v37 = 0xFFFF;
      if (!*(*a3 + 38))
      {
LABEL_26:
        if (v31 >= 0x4B)
        {
          v38 = v30[37];
          if (v38)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_33;
      }

LABEL_30:
      if (v31 >= 0x49)
      {
        v38 = v30[36];
        if (v38)
        {
LABEL_32:
          v39 = *(v29 + v38);
          goto LABEL_34;
        }
      }

LABEL_33:
      v39 = 0xFFFF;
LABEL_34:
      result = *(v4 + v19 - 2);
      v40 = *(v27 - 40);
      v41 = (v40 - *v40);
      v42 = *v41;
      if (*(v4 + v19 - 2))
      {
        if (v42 < 0x4B)
        {
          goto LABEL_9;
        }

        v43 = v41[37];
        if (!v43)
        {
          goto LABEL_9;
        }
      }

      else if (v42 < 0x49 || (v43 = v41[36]) == 0)
      {
LABEL_9:
        v20 = 0xFFFF;
        goto LABEL_10;
      }

      v20 = *(v40 + v43);
LABEL_10:
      v21 = vadd_s32(__PAIR64__(v39, v33), v8);
      v22 = vsub_s32(__PAIR64__(v20, v37), vand_s8(vbsl_s8(vcgt_u32(v10, vand_s8(v21, 0xFFFF0000FFFFLL)), v21, vadd_s32(__PAIR64__(v39, v33), v9)), 0xFFFF0000FFFFLL));
      v23 = vadd_s32(v22, vand_s8(vcgt_s32(v22, v8), v11));
      v24 = vadd_s32(v23, vand_s8(vcgt_s32(v12, v23), v10));
      v25.i64[0] = v24.i32[0];
      v25.i64[1] = v24.i32[1];
      v26 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v25), v44));
      v19 -= 40;
    }

    while ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v26, 1), v26)).u8[0] & 1) != 0);
    v14 = v4 + v19 + 40;
LABEL_5:
    *v14 = v16;
    *(v14 + 8) = *v45;
    *(v14 + 22) = *&v45[14];
    *(v14 + 38) = v17;
    *(v14 + 39) = v18;
LABEL_6:
    v5 = v15 + 5;
    v7 += 40;
    v13 = v15;
    if (v15 + 5 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_709A48(uint64_t result, int **a2, int ***a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 16);
        v16 = *(v8 + 32);
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 16);
      *(a5 + 32) = *(result + 32);
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 40 * (a4 >> 1);
      v21 = v20 + result;
      sub_709314(result, v20 + result, a3, v19, a5, v19);
      result = sub_709314(v20 + v8, a2, a3, a4 - v19, v5 + v20, a4 - v19);
      v23 = v20 + v8;
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 16);
          *(v5 + 32) = *(v23 + 32);
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 40;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 16);
              *(v5 + 32) = *(v23 + 32);
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 40;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 16);
          *(v5 + 32) = *(v8 + 32);
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 40;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 40;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t sub_709C5C(uint64_t result, int **a2, int **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a6;
  if (a6)
  {
    v13 = result;
    v70 = a4;
    while (v69 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = &v13[v14 / 8];
        result = sub_709574(a4, a2, &v13[v14 / 8]);
        if (result)
        {
          break;
        }

        v14 += 40;
        v17 = __CFADD__(v15++, 1);
        a4 = v70;
        if (v17)
        {
          return result;
        }
      }

      v18 = v69;
      v66 = a7;
      v67 = a3;
      v65 = a8;
      if (-v15 >= v69)
      {
        if (v15 == -1)
        {
          v56 = &v13[v14 / 8];
          v57 = *&v13[v14 / 8];
          v58 = *&v13[v14 / 8 + 2];
          v73 = v13[v14 / 8 + 4];
          v71 = v57;
          v72 = v58;
          v59 = *a2;
          v60 = *(a2 + 1);
          *(v56 + 4) = a2[4];
          *v56 = v59;
          *(v56 + 1) = v60;
          *a2 = v71;
          *(a2 + 1) = v72;
          a2[4] = v73;
          return result;
        }

        v23 = -v15 / 2;
        *&v71 = *v70;
        v24 = a3;
        v20 = a2;
        if (a2 != v24)
        {
          v25 = &v13[5 * v23];
          v26 = 0xCCCCCCCCCCCCCCCDLL * (v67 - a2);
          v20 = a2;
          do
          {
            v27 = &v20[5 * (v26 >> 1)];
            v28 = sub_709574(&v71, v27, &v25[v14]);
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v20 = v27 + 5;
            }
          }

          while (v26);
          v18 = v69;
          v23 = -v15 / 2;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * (v20 - a2);
        v21 = &(&v13[5 * v23])[v14 / 8];
      }

      else
      {
        v19 = v69 / 2;
        v20 = &a2[5 * (v69 / 2)];
        v21 = a2;
        if (a2 - v13 != v14)
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13 - v14) >> 3);
          v21 = &v13[v14 / 8];
          do
          {
            if (sub_709574(v70, v20, &v21[40 * (v22 >> 1)]))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 40 * (v22 >> 1) + 40;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v69 / 2;
          v18 = v69;
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v13 - v14) >> 3);
      }

      a5 = -(v23 + v15);
      v69 = v18 - v19;
      v29 = a2;
      v30 = v18;
      v31 = v23;
      v32 = sub_70A410(v21, v29, v20);
      v33 = v31;
      v34 = v32;
      if (v33 + v19 >= v30 - (v33 + v19) - v15)
      {
        v36 = v33;
        v37 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_709C5C(v32, v20, v67, v70, a5, v69, v66, v65);
        v38 = v37;
        a5 = v36;
        v68 = v34;
        v69 = v37;
        v13 = v16;
        a2 = v21;
        a3 = v68;
        a4 = v70;
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v35 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_709C5C(&v13[v14 / 8], v21, v32, v70, v33, v35, v66, v65);
        a4 = v70;
        v13 = v34;
        a2 = v20;
        a3 = v67;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a5 <= v69)
    {
      if (a2 != v13)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v13;
        do
        {
          v50 = *v49;
          v51 = *(v49 + 1);
          *(v48 + 32) = v49[4];
          *v48 = v50;
          *(v48 + 16) = v51;
          v49 += 5;
          v48 += 40;
          v47 -= 40;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          result = sub_709574(a4, a2, a7);
          if (result)
          {
            v54 = *a2;
            v55 = *(a2 + 1);
            v13[4] = a2[4];
            *v13 = v54;
            *(v13 + 1) = v55;
            a2 += 5;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }

          else
          {
            v52 = *a7;
            v53 = *(a7 + 16);
            v13[4] = *(a7 + 32);
            *v13 = v52;
            *(v13 + 1) = v53;
            a7 += 40;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }
        }

        return memmove(v13, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v39 = 0;
      do
      {
        v40 = a7 + v39 * 8;
        v41 = *&a2[v39];
        v42 = *&a2[v39 + 2];
        *(v40 + 32) = a2[v39 + 4];
        *v40 = v41;
        *(v40 + 16) = v42;
        v39 += 5;
      }

      while (&a2[v39] != a3);
      v43 = a7 + v39 * 8;
      while (a2 != v13)
      {
        result = sub_709574(a4, (v43 - 40), a2 - 5);
        a4 = v70;
        if (result)
        {
          v44 = a2 - 5;
        }

        else
        {
          v44 = (v43 - 40);
        }

        v45 = v44[4];
        v46 = *(v44 + 1);
        *(a3 - 5) = *v44;
        *(a3 - 3) = v46;
        *(a3 - 1) = v45;
        a3 -= 5;
        if (result)
        {
          a2 -= 5;
        }

        else
        {
          v43 -= 40;
        }

        if (v43 == a7)
        {
          return result;
        }
      }

      if (v43 != a7)
      {
        v61 = 0x1FFFFFFFFFFFFFFBLL;
        do
        {
          v62 = *(v43 - 40);
          v63 = *(v43 - 24);
          v64 = &a3[v61];
          v64[4] = *(v43 - 8);
          *v64 = v62;
          *(v64 + 1) = v63;
          v61 -= 5;
          v43 -= 40;
        }

        while (v43 != a7);
      }
    }
  }

  return result;
}

uint64_t sub_70A118(uint64_t result, int **a2, uint64_t a3, int ***a4)
{
  if (result != a2)
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 16);
    *(a3 + 32) = *(result + 32);
    *a3 = v7;
    *(a3 + 16) = v8;
    v9 = (result + 40);
    if ((result + 40) != a2)
    {
      v11 = 0;
      v12 = vdup_n_s32(0x4650u);
      v13 = vdup_n_s32(0xB9B0u);
      v14 = vdup_n_s32(0x8CA0u);
      v15 = vdup_n_s32(0xFFFF7360);
      v16 = vdup_n_s32(0xFFFFB9B1);
      v17 = a3;
      v50 = vdupq_n_s64(0x4059000000000000uLL);
      while (1)
      {
        v21 = v6;
        v22 = v17;
        v6 = v9;
        v17 += 40;
        result = sub_709574(a4, v9, v22);
        v18 = v17;
        if (result)
        {
          v23 = *(v22 + 16);
          *v17 = *v22;
          *(v17 + 16) = v23;
          *(v17 + 32) = *(v22 + 32);
          v18 = a3;
          if (v22 != a3)
          {
            break;
          }
        }

LABEL_5:
        v19 = *v6;
        v20 = *(v6 + 1);
        *(v18 + 32) = v6[4];
        *v18 = v19;
        *(v18 + 16) = v20;
        v9 = v6 + 5;
        v11 += 40;
        if (v6 + 5 == a2)
        {
          return result;
        }
      }

      v24 = v11;
      while (1)
      {
        v25 = **a4;
        v26 = (v25 - *v25);
        v27 = *v26;
        if (*(*a4 + 38))
        {
          if (v27 >= 0x49)
          {
            v28 = v26[36];
            if (v26[36])
            {
              goto LABEL_15;
            }
          }
        }

        else if (v27 >= 0x4B)
        {
          v28 = v26[37];
          if (v26[37])
          {
LABEL_15:
            v29 = *(v25 + v28);
            v30 = *v6;
            v31 = (*v6 - **v6);
            v32 = *v31;
            if (*(v21 + 78))
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }
        }

        v29 = 0xFFFF;
        v30 = *v6;
        v31 = (*v6 - **v6);
        v32 = *v31;
        if (*(v21 + 78))
        {
LABEL_20:
          if (v32 >= 0x4B)
          {
            v33 = v31[37];
            if (v33)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_26;
        }

LABEL_16:
        if (v32 >= 0x49)
        {
          v33 = v31[36];
          if (v33)
          {
LABEL_22:
            v34 = *(v30 + v33);
            if (!*(*a4 + 38))
            {
              goto LABEL_23;
            }

            goto LABEL_27;
          }
        }

LABEL_26:
        v34 = 0xFFFF;
        if (!*(*a4 + 38))
        {
LABEL_23:
          if (v27 >= 0x4B)
          {
            v35 = v26[37];
            if (v35)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_30;
        }

LABEL_27:
        if (v27 >= 0x49)
        {
          v35 = v26[36];
          if (v35)
          {
LABEL_29:
            v36 = *(v25 + v35);
            goto LABEL_31;
          }
        }

LABEL_30:
        v36 = 0xFFFF;
LABEL_31:
        v37 = a3 + v24;
        v38 = (a3 + v24 - 40);
        v39 = (*v38 - **v38);
        v40 = *v39;
        if (*(a3 + v24 - 2))
        {
          if (v40 < 0x4B)
          {
            goto LABEL_38;
          }

          v41 = v39[37];
          if (!v41)
          {
            goto LABEL_38;
          }
        }

        else if (v40 < 0x49 || (v41 = v39[36]) == 0)
        {
LABEL_38:
          v42 = 0xFFFF;
          goto LABEL_39;
        }

        v42 = *(*v38 + v41);
LABEL_39:
        v43 = vadd_s32(__PAIR64__(v36, v29), v12);
        v44 = vsub_s32(__PAIR64__(v42, v34), vand_s8(vbsl_s8(vcgt_u32(v14, vand_s8(v43, 0xFFFF0000FFFFLL)), v43, vadd_s32(__PAIR64__(v36, v29), v13)), 0xFFFF0000FFFFLL));
        v45 = vadd_s32(v44, vand_s8(vcgt_s32(v44, v12), v15));
        v46 = vadd_s32(v45, vand_s8(vcgt_s32(v16, v45), v14));
        v47.i64[0] = v46.i32[0];
        v47.i64[1] = v46.i32[1];
        v48 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v47), v50));
        if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v48, 1), v48)).u8[0] & 1) == 0)
        {
          v18 = a3 + v24;
          goto LABEL_5;
        }

        v49 = *(a3 + v24 - 24);
        *v37 = *v38;
        *(v37 + 16) = v49;
        *(v37 + 32) = *(a3 + v24 - 8);
        v24 -= 40;
        if (!v24)
        {
          v18 = a3;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

char *sub_70A410(char *__src, char *a2, char *a3)
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

    else if (__src + 40 == a2)
    {
      v32 = *__src;
      v35 = *(__src + 1);
      v38 = *(__src + 4);
      v7 = __src;
      memmove(__src, __src + 40, v6);
      v4 = v7 + v6;
      *v4 = v32;
      *(v4 + 1) = v35;
      *(v4 + 4) = v38;
    }

    else if (a2 + 40 == a3)
    {
      v4 = __src + 40;
      v33 = *(a3 - 40);
      v36 = *(a3 - 24);
      v39 = *(a3 - 1);
      v8 = a3 - 40 - __src;
      if (a3 - 40 != __src)
      {
        v9 = __src;
        memmove(__src + 40, __src, v8);
        __src = v9;
      }

      *__src = v33;
      *(__src + 1) = v36;
      *(__src + 4) = v39;
    }

    else
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      if (0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) == v10)
      {
        v11 = __src + 40;
        v12 = a2 + 40;
        do
        {
          v13 = *(v11 - 40);
          v14 = *(v11 - 24);
          v15 = *(v11 - 1);
          v16 = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v11 - 40) = *(v12 - 40);
          *(v11 - 24) = v17;
          *(v11 - 1) = v16;
          *(v12 - 1) = v15;
          *(v12 - 24) = v14;
          *(v12 - 40) = v13;
          if (v11 == a2)
          {
            break;
          }

          v11 += 40;
          v18 = v12 == a3;
          v12 += 40;
        }

        while (!v18);
        return a2;
      }

      else
      {
        v19 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
        do
        {
          v20 = v19;
          v19 = v10;
          v10 = v20 % v10;
        }

        while (v10);
        v21 = &__src[40 * v19];
        do
        {
          v22 = *(v21 - 40);
          v23 = *(v21 - 24);
          v24 = *(v21 - 1);
          v21 -= 40;
          v34 = v22;
          v37 = v23;
          v40 = v24;
          v25 = &v21[v5];
          v26 = v21;
          do
          {
            v27 = v25;
            v28 = *v25;
            v29 = *(v25 + 1);
            *(v26 + 4) = *(v25 + 4);
            *v26 = v28;
            *(v26 + 1) = v29;
            v30 = a3 - v25;
            v25 += 8 * (v5 >> 3);
            if (v5 >= v30)
            {
              v25 = &a2[-v30];
            }

            v26 = v27;
          }

          while (v25 != v21);
          *(v27 + 4) = v40;
          *v27 = v34;
          *(v27 + 1) = v37;
        }

        while (v21 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

void sub_70A610(int **a1, int **a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, a1))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &a1[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70ACC0(a1, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70ACC0(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = *(v28 + 16);
            *(v9 + 32) = *(v28 + 32);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 += 40;
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = *(v28 + 16);
          *(v9 + 32) = *(v28 + 32);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 += 40;
          v9 += 40;
        }
      }

      else
      {
        sub_70A610(a1, v30, a3, a4 >> 1, a5, a6);
        sub_70A610(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (a1 != a2)
    {
      v16 = a1 + 5;
      if (a1 + 5 != a2)
      {
        v17 = 0;
        v18 = a1;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while ((sub_70A8E8(a3, &v46, (v25 + v9)) & 1) != 0);
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

unint64_t sub_70A8E8(double *a1, int **a2, int **a3)
{
  v3 = *a2;
  v4 = *(a2 + 38);
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v5[77])
      {
        v8 = 2;
LABEL_8:
        v9 = (*(v3 + v7) & v8) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v7 = v5[77];
    if (v5[77])
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = *a3;
  v11 = *(a3 + 38);
  v12 = (*a3 - **a3);
  v13 = *v12;
  if (*(a3 + 38))
  {
    if (v13 >= 0x9B && v12[77])
    {
      if (v9 == ((*(v10 + v12[77]) & 2) != 0))
      {
        goto LABEL_14;
      }

LABEL_38:
      if (*(a2 + 38))
      {
        if (v6 >= 0x9B && v5[77])
        {
          return (*(v3 + v5[77]) & 2) != 0;
        }
      }

      else if (v6 >= 0x9B && v5[77])
      {
        return (*(v3 + v5[77]) & 1) != 0;
      }

      return 0;
    }

    goto LABEL_37;
  }

  if (v13 < 0x9B || !v12[77])
  {
LABEL_37:
    if (v9)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v9 != ((*(v10 + v12[77]) & 1) != 0))
  {
    goto LABEL_38;
  }

LABEL_14:
  if (v6 < 0x2F || !v5[23] || ((v14 = *(v3 + v5[23]), v15 = v14 > 0x2D, v16 = (1 << v14) & 0x208040000000, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    if (v13 <= 0x2E)
    {
      v23 = 0;
      if (v6 < 0x2F)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    v18 = v12[23];
    if (!v12[23])
    {
      goto LABEL_31;
    }

    v19 = 0;
  }

  else
  {
    if (v13 <= 0x2E)
    {
      return 0;
    }

    v18 = v12[23];
    if (!v12[23])
    {
      return v18 & 1;
    }

    v19 = 1;
  }

  v20 = *(v10 + v18);
  v15 = v20 > 0x2D;
  v21 = (1 << v20) & 0x208040000000;
  if (!v15 && v21 != 0)
  {
    if (v19)
    {
      goto LABEL_31;
    }

LABEL_97:
    v44 = *(v10 + v18);
    if (v44 < 0x2E)
    {
      return (0x208040000000uLL >> v44) & 1;
    }

    return 0;
  }

  if (v19)
  {
    goto LABEL_97;
  }

LABEL_31:
  v23 = 1;
  if (v6 < 0x2F)
  {
LABEL_32:
    LODWORD(v24) = 0;
    goto LABEL_45;
  }

LABEL_43:
  v24 = v5[23];
  if (v5[23])
  {
    LODWORD(v24) = *(v3 + v24) == 47;
  }

LABEL_45:
  if (!v23 || !v12[23])
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  v18 = *(v10 + v12[23]) == 47;
  if ((v24 ^ v18))
  {
    return v18 & 1;
  }

LABEL_50:
  v26 = **a1;
  v27 = (v26 - *v26);
  v28 = *v27;
  if (*(*a1 + 38))
  {
    if (v28 < 0x49)
    {
      goto LABEL_63;
    }

    v29 = v27[36];
    if (!v27[36])
    {
      goto LABEL_63;
    }
  }

  else if (v28 < 0x4B || (v29 = v27[37]) == 0)
  {
LABEL_63:
    v30 = -1;
    if (v4)
    {
      goto LABEL_64;
    }

LABEL_60:
    if (v6 >= 0x49)
    {
      v31 = v5[36];
      if (v31)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_67;
  }

  v30 = *(v26 + v29);
  if (!v4)
  {
    goto LABEL_60;
  }

LABEL_64:
  if (v6 >= 0x4B)
  {
    v31 = v5[37];
    if (v31)
    {
LABEL_66:
      v32 = *(v3 + v31);
      goto LABEL_68;
    }
  }

LABEL_67:
  v32 = 0xFFFF;
LABEL_68:
  v33 = v30 + 18000;
  if (((v30 + 18000) >> 5) >= 0x465u)
  {
    v33 = v30 - 18000;
  }

  v34 = v32 - v33;
  if (v34 > 18000)
  {
    v34 -= 36000;
  }

  if (v34 < -17999)
  {
    v34 += 36000;
  }

  v35 = v34;
  if (*(*a1 + 38))
  {
    if (v28 < 0x49)
    {
      goto LABEL_84;
    }

    v36 = v27[36];
    if (!v27[36])
    {
      goto LABEL_84;
    }
  }

  else if (v28 < 0x4B || (v36 = v27[37]) == 0)
  {
LABEL_84:
    v37 = -1;
    v38 = v35 / 100.0;
    if (v11)
    {
      goto LABEL_85;
    }

LABEL_81:
    if (v13 >= 0x49)
    {
      v39 = v12[36];
      if (v39)
      {
        goto LABEL_87;
      }
    }

LABEL_88:
    v40 = 0xFFFF;
    goto LABEL_89;
  }

  v37 = *(v26 + v36);
  v38 = v35 / 100.0;
  if (!v11)
  {
    goto LABEL_81;
  }

LABEL_85:
  if (v13 < 0x4B)
  {
    goto LABEL_88;
  }

  v39 = v12[37];
  if (!v39)
  {
    goto LABEL_88;
  }

LABEL_87:
  v40 = *(v10 + v39);
LABEL_89:
  v41 = v37 + 18000;
  v42 = v37 - 18000;
  if ((v41 >> 5) < 0x465u)
  {
    v42 = v41;
  }

  v43 = v40 - v42;
  if (v43 > 18000)
  {
    v43 -= 36000;
  }

  if (v43 < -17999)
  {
    v43 += 36000;
  }

  return vabdd_f64(v38, a1[1]) < vabdd_f64(v43 / 100.0, a1[1]);
}

__n128 sub_70ACC0(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 40;
      if (sub_70A8E8(a3, (a2 - 40), a1))
      {
        v12 = *v11;
        v13 = *(v11 + 16);
        *(v6 + 32) = *(v11 + 32);
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 16);
        v15 = *(v11 + 32);
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70A610(a1, v29 + a1, a3, v28, a5, v28);
      sub_70A610(v29 + v9, a2, a3, a4 - v28, v6 + v29, a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if (a1 + 40 != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

unint64_t sub_70AF5C(unint64_t result, int **a2, int **a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a6;
  if (a6)
  {
    v13 = result;
    v70 = a4;
    while (v69 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = &v13[v14 / 8];
        result = sub_70A8E8(a4, a2, &v13[v14 / 8]);
        if (result)
        {
          break;
        }

        v14 += 40;
        v17 = __CFADD__(v15++, 1);
        a4 = v70;
        if (v17)
        {
          return result;
        }
      }

      v18 = v69;
      v66 = a7;
      v67 = a3;
      v65 = a8;
      if (-v15 >= v69)
      {
        if (v15 == -1)
        {
          v56 = &v13[v14 / 8];
          v57 = *&v13[v14 / 8];
          v58 = *&v13[v14 / 8 + 2];
          v73 = v13[v14 / 8 + 4];
          v71 = v57;
          v72 = v58;
          v59 = *a2;
          v60 = *(a2 + 1);
          *(v56 + 4) = a2[4];
          *v56 = v59;
          *(v56 + 1) = v60;
          *a2 = v71;
          *(a2 + 1) = v72;
          a2[4] = v73;
          return result;
        }

        v23 = -v15 / 2;
        v71 = *v70;
        v24 = a3;
        v20 = a2;
        if (a2 != v24)
        {
          v25 = &v13[5 * v23];
          v26 = 0xCCCCCCCCCCCCCCCDLL * (v67 - a2);
          v20 = a2;
          do
          {
            v27 = &v20[5 * (v26 >> 1)];
            v28 = sub_70A8E8(&v71, v27, &v25[v14]);
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v20 = v27 + 5;
            }
          }

          while (v26);
          v18 = v69;
          v23 = -v15 / 2;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * (v20 - a2);
        v21 = &(&v13[5 * v23])[v14 / 8];
      }

      else
      {
        v19 = v69 / 2;
        v20 = &a2[5 * (v69 / 2)];
        v21 = a2;
        if (a2 - v13 != v14)
        {
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13 - v14) >> 3);
          v21 = &v13[v14 / 8];
          do
          {
            if (sub_70A8E8(v70, v20, &v21[40 * (v22 >> 1)]))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 40 * (v22 >> 1) + 40;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v69 / 2;
          v18 = v69;
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v13 - v14) >> 3);
      }

      a5 = -(v23 + v15);
      v69 = v18 - v19;
      v29 = a2;
      v30 = v18;
      v31 = v23;
      v32 = sub_70A410(v21, v29, v20);
      v33 = v31;
      v34 = v32;
      if (v33 + v19 >= v30 - (v33 + v19) - v15)
      {
        v36 = v33;
        v37 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_70AF5C(v32, v20, v67, v70, a5, v69, v66, v65);
        v38 = v37;
        a5 = v36;
        v68 = v34;
        v69 = v37;
        v13 = v16;
        a2 = v21;
        a3 = v68;
        a4 = v70;
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v35 = v19;
        a8 = v65;
        a7 = v66;
        result = sub_70AF5C(&v13[v14 / 8], v21, v32, v70, v33, v35, v66, v65);
        a4 = v70;
        v13 = v34;
        a2 = v20;
        a3 = v67;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a5 <= v69)
    {
      if (a2 != v13)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v13;
        do
        {
          v50 = *v49;
          v51 = *(v49 + 1);
          *(v48 + 32) = v49[4];
          *v48 = v50;
          *(v48 + 16) = v51;
          v49 += 5;
          v48 += 40;
          v47 -= 40;
        }

        while (v49 != a2);
        while (a2 != a3)
        {
          result = sub_70A8E8(a4, a2, a7);
          if (result)
          {
            v54 = *a2;
            v55 = *(a2 + 1);
            v13[4] = a2[4];
            *v13 = v54;
            *(v13 + 1) = v55;
            a2 += 5;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }

          else
          {
            v52 = *a7;
            v53 = *(a7 + 16);
            v13[4] = *(a7 + 32);
            *v13 = v52;
            *(v13 + 1) = v53;
            a7 += 40;
            v13 += 5;
            a4 = v70;
            if (v48 == a7)
            {
              return result;
            }
          }
        }

        return memmove(v13, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v39 = 0;
      do
      {
        v40 = a7 + v39 * 8;
        v41 = *&a2[v39];
        v42 = *&a2[v39 + 2];
        *(v40 + 32) = a2[v39 + 4];
        *v40 = v41;
        *(v40 + 16) = v42;
        v39 += 5;
      }

      while (&a2[v39] != a3);
      v43 = a7 + v39 * 8;
      while (a2 != v13)
      {
        result = sub_70A8E8(a4, (v43 - 40), a2 - 5);
        a4 = v70;
        if (result)
        {
          v44 = a2 - 5;
        }

        else
        {
          v44 = (v43 - 40);
        }

        v45 = v44[4];
        v46 = *(v44 + 1);
        *(a3 - 5) = *v44;
        *(a3 - 3) = v46;
        *(a3 - 1) = v45;
        a3 -= 5;
        if (result)
        {
          a2 -= 5;
        }

        else
        {
          v43 -= 40;
        }

        if (v43 == a7)
        {
          return result;
        }
      }

      if (v43 != a7)
      {
        v61 = 0x1FFFFFFFFFFFFFFBLL;
        do
        {
          v62 = *(v43 - 40);
          v63 = *(v43 - 24);
          v64 = &a3[v61];
          v64[4] = *(v43 - 8);
          *v64 = v62;
          *(v64 + 1) = v63;
          v61 -= 5;
          v43 -= 40;
        }

        while (v43 != a7);
      }
    }
  }

  return result;
}

uint64_t *sub_70B418(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
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
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_70B794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_302964(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_70B7A8(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
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
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

BOOL sub_70BB20(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_712D18(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_70BD18(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_712D18(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_712D18(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

uint64_t sub_70BE9C(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_71395C(v4 + 1432, a1[1], a2);
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_70C0A4(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 16);
        v11 = *(v7 + 32);
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 16) = v13;
        *(v7 + 32) = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_70C304(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_70C304(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            *(v7 + 32) = *(v23 + 32);
            *v7 = v26;
            *(v7 + 16) = v27;
            v23 += 40;
            v7 += 40;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                *(v7 + 32) = *(v23 + 32);
                *v7 = v30;
                *(v7 + 16) = v31;
                v23 += 40;
                v7 += 40;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = *(v14 + 16);
            *(v7 + 32) = *(v14 + 32);
            *v7 = v24;
            *(v7 + 16) = v25;
            v14 += 40;
            v7 += 40;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = *(v14 + 16);
          *(v7 + 32) = *(v14 + 32);
          *v7 = v28;
          *(v7 + 16) = v29;
          v14 += 40;
          v7 += 40;
        }
      }

      else
      {
        sub_70C0A4(result, v17, a3, a4 >> 1, a5, a6);
        sub_70C0A4(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_70C304(uint64_t result, int **a2, int ***a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 16);
        v16 = *(v8 + 32);
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 16);
      *(a5 + 32) = *(result + 32);
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 40 * (a4 >> 1);
      v21 = v20 + result;
      sub_70C0A4(result, v20 + result, a3, v19, a5, v19);
      result = sub_70C0A4(v20 + v8, a2, a3, a4 - v19, v5 + v20, a4 - v19);
      v23 = v20 + v8;
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 16);
          *(v5 + 32) = *(v23 + 32);
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 40;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 16);
              *(v5 + 32) = *(v23 + 32);
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 40;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 16);
          *(v5 + 32) = *(v8 + 32);
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 40;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 40;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_70C518(int **a1, int **a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, a1))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &a1[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70C7F0(a1, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70C7F0(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = *(v28 + 16);
            *(v9 + 32) = *(v28 + 32);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 += 40;
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = *(v28 + 16);
          *(v9 + 32) = *(v28 + 32);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 += 40;
          v9 += 40;
        }
      }

      else
      {
        sub_70C518(a1, v30, a3, a4 >> 1, a5, a6);
        sub_70C518(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (a1 != a2)
    {
      v16 = a1 + 5;
      if (a1 + 5 != a2)
      {
        v17 = 0;
        v18 = a1;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while ((sub_70A8E8(a3, &v46, (v25 + v9)) & 1) != 0);
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

__n128 sub_70C7F0(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 40;
      if (sub_70A8E8(a3, (a2 - 40), a1))
      {
        v12 = *v11;
        v13 = *(v11 + 16);
        *(v6 + 32) = *(v11 + 32);
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 16);
        v15 = *(v11 + 32);
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70C518(a1, v29 + a1, a3, v28, a5, v28);
      sub_70C518(v29 + v9, a2, a3, a4 - v28, v6 + v29, a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if (a1 + 40 != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_70CA8C(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = sub_311A24(*a2, *(a2 + 38));
  v6 = **a1;
  if (v6 < 1 || v5 < 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v6 - v5;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    v8 = v11 > *(v4 + 1152);
    v9 = *a2;
    v10 = (*a2 - **a2);
    if (*v10 < 0x43u)
    {
      goto LABEL_13;
    }
  }

  v12 = v10[33];
  if (v12)
  {
    v13 = *(v9 + v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = **(a1 + 16) - v13;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = *(v4 + 1153);
  v17 = v15 > v16;
  v18 = *(*(a1 + 24) + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) != __PAIR64__(WORD2(v18), v18) || *(a2 + 38) != BYTE6(v18))
  {
    result = sub_716E70(v4 + 1432, a2);
    if (!result)
    {
      return result;
    }

    v21 = *a2;
    v22 = (*a2 - **a2);
    v23 = *v22;
    if (v23 < 0x2F || !v22[23])
    {
      goto LABEL_37;
    }

    v24 = *(v21 + v22[23]);
    if (v24 - 15 >= 0x21 || ((0x1C5C08009uLL >> (v24 - 15)) & 1) == 0)
    {
      v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
      if (v25 || v23 >= 0x9B && (v26 = v22[77]) != 0 && (*(v21 + v26 + 2) & 0x20) != 0)
      {
        v17 = v24 == 44 || v15 > v16;
LABEL_37:
        if (!v17 && !v8)
        {
          return **(a1 + 40) - fabs(sub_70E16C(v4 + 1432, *(a1 + 32), a2, v20)) > *(v4 + 1160);
        }
      }
    }
  }

  return 0;
}

int **sub_70CC84(int **a1, int **a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (!sub_716E70(a3 + 1432, v3))
      {
LABEL_16:
        if (v3 == a2)
        {
          return v3;
        }

        v15 = v3 + 5;
        if (v3 + 5 == a2)
        {
          return v3;
        }

        while (2)
        {
          if (sub_716E70(a3 + 1432, v15))
          {
            v18 = *v15;
            v19 = (*v15 - **v15);
            v20 = *v19;
            if (v20 < 0x9B)
            {
              if (v20 >= 0x2F)
              {
LABEL_29:
                v21 = v19[23];
                if (v21)
                {
                  v22 = *(v18 + v21);
                  v12 = v22 > 0x2A;
                  v23 = (1 << v22) & 0x50400000000;
                  if (!v12 && v23 != 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = *v15;
              v17 = *(v15 + 1);
              v3[4] = v15[4];
              *v3 = v16;
              *(v3 + 1) = v17;
              v3 += 5;
              goto LABEL_22;
            }

            if (!v19[77] || (*(v18 + v19[77] + 3) & 4) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_22:
          v15 += 5;
          if (v15 == a2)
          {
            return v3;
          }

          continue;
        }
      }

      v7 = *v3;
      v8 = (*v3 - **v3);
      v9 = *v8;
      if (v9 >= 0x9B)
      {
        break;
      }

      if (v9 >= 0x2F)
      {
        goto LABEL_11;
      }

LABEL_4:
      v3 += 5;
      if (v3 == a2)
      {
        return a2;
      }
    }

    if (v8[77] && (*(v7 + v8[77] + 3) & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v8[23];
    if (v10)
    {
      v11 = *(v7 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50400000000;
      if (!v12 && v13 != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  return v3;
}

uint64_t sub_70CE08(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v5 = *(a1[2] + 32);
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v5), v5) && *(a2 + 38) == BYTE6(v5))
  {
    return 0;
  }

  if (fabs(sub_70E2E0(v4 + 1432, a1[1], a2)) >= *(v4 + 200))
  {
    return 0;
  }

  result = sub_6EECC();
  if (result)
  {
    result = sub_31EE90(*v4, *(a1[1] + 32) & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v7 = *a2;
      v8 = (*a2 - **a2);
      v9 = *v8;
      if (v9 >= 0x2F && v8[23])
      {
        v10 = *(v7 + v8[23]);
        v11 = v10 > 0x2B || ((1 << v10) & 0x80000001040) == 0;
        v13 = !v11 && (v9 < 0x9B || (v12 = v8[77]) == 0 || (*(v7 + v12 + 2) & 0x20) == 0) || v10 == 44;
      }

      else
      {
        v13 = 0;
      }

      v14 = *a1[1];
      v15 = (v14 - *v14);
      v16 = *v15;
      if (v16 >= 0x2F && v15[23])
      {
        v17 = *(v14 + v15[23]);
        if (v17 > 0x2B || ((1 << v17) & 0x80000001040) == 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        if (v16 >= 0x9B && (v19 = v15[77]) != 0 && (*(v14 + v19 + 2) & 0x20) != 0)
        {
          return v13 ^ (v17 == 44) ^ 1u;
        }

        else
        {
          return v13;
        }
      }

      else
      {
        return !v13;
      }
    }
  }

  return result;
}

int **sub_70D010(int **result, int **a2, int ***a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v9 = *v7;
        v10 = *(v7 + 16);
        v11 = *(v7 + 32);
        v12 = v8[4];
        v13 = *(v8 + 1);
        *v7 = *v8;
        *(v7 + 16) = v13;
        *(v7 + 32) = v12;
        v8[4] = v11;
        *v8 = v9;
        *(v8 + 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a5;
      v16 = a4 >> 1;
      v17 = &result[5 * (a4 >> 1)];
      v18 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        sub_70D270(result, v17, a3, a4 >> 1, a5);
        v21 = v14 + 40 * v16;
        result = sub_70D270(v17, a2, a3, v18, v21);
        v22 = v14 + 40 * a4;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_709574(a3, v23, v14);
          if (result)
          {
            v26 = *v23;
            v27 = *(v23 + 16);
            *(v7 + 32) = *(v23 + 32);
            *v7 = v26;
            *(v7 + 16) = v27;
            v23 += 40;
            v7 += 40;
            if (v14 == v21)
            {
LABEL_24:
              while (v23 != v22)
              {
                v30 = *v23;
                v31 = *(v23 + 16);
                *(v7 + 32) = *(v23 + 32);
                *v7 = v30;
                *(v7 + 16) = v31;
                v23 += 40;
                v7 += 40;
              }

              return result;
            }
          }

          else
          {
            v24 = *v14;
            v25 = *(v14 + 16);
            *(v7 + 32) = *(v14 + 32);
            *v7 = v24;
            *(v7 + 16) = v25;
            v14 += 40;
            v7 += 40;
            if (v14 == v21)
            {
              goto LABEL_24;
            }
          }
        }

        while (v14 != v21)
        {
          v28 = *v14;
          v29 = *(v14 + 16);
          *(v7 + 32) = *(v14 + 32);
          *v7 = v28;
          *(v7 + 16) = v29;
          v14 += 40;
          v7 += 40;
        }
      }

      else
      {
        sub_70D010(result, v17, a3, a4 >> 1, a5, a6);
        sub_70D010(v17, a2, a3, v18, v14, a6);

        return sub_709C5C(v7, v17, a2, a3, v16, v18, v14, a6);
      }
    }

    else
    {

      return sub_70974C(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_70D270(uint64_t result, int **a2, int ***a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v11 = a2 - 5;
      result = sub_709574(a3, a2 - 5, result);
      if (result)
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v5 + 32) = v11[4];
        *v5 = v12;
        *(v5 + 16) = v13;
        v14 = *v8;
        v15 = *(v8 + 16);
        v16 = *(v8 + 32);
      }

      else
      {
        v17 = *v8;
        v18 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v17;
        *(v5 + 16) = v18;
        v14 = *v11;
        v15 = *(v11 + 1);
        v16 = v11[4];
      }

      *(v5 + 72) = v16;
      *(v5 + 56) = v15;
      *(v5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = *(result + 16);
      *(a5 + 32) = *(result + 32);
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v19 = a4 >> 1;
      v20 = 40 * (a4 >> 1);
      v21 = v20 + result;
      sub_70D010(result, v20 + result, a3, v19, a5, v19);
      result = sub_70D010(v20 + v8, a2, a3, a4 - v19, v5 + v20, a4 - v19);
      v23 = v20 + v8;
      while (v23 != a2)
      {
        result = sub_709574(a3, v23, v8);
        if (result)
        {
          v26 = *v23;
          v27 = *(v23 + 16);
          *(v5 + 32) = *(v23 + 32);
          *v5 = v26;
          *(v5 + 16) = v27;
          v23 += 40;
          v5 += 40;
          if (v8 == v21)
          {
LABEL_24:
            while (v23 != a2)
            {
              v30 = *v23;
              v31 = *(v23 + 16);
              *(v5 + 32) = *(v23 + 32);
              *v5 = v30;
              *(v5 + 16) = v31;
              v23 += 40;
              v5 += 40;
            }

            return result;
          }
        }

        else
        {
          v24 = *v8;
          v25 = *(v8 + 16);
          *(v5 + 32) = *(v8 + 32);
          *v5 = v24;
          *(v5 + 16) = v25;
          v8 += 40;
          v5 += 40;
          if (v8 == v21)
          {
            goto LABEL_24;
          }
        }
      }

      while (v8 != v21)
      {
        v28 = *v8;
        v29 = *(v8 + 16);
        *(v5 + 32) = *(v8 + 32);
        *v5 = v28;
        *(v5 + 16) = v29;
        v8 += 40;
        v5 += 40;
      }
    }

    else
    {

      return sub_70A118(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_70D484(int **a1, int **a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 5;
      if (sub_70A8E8(a3, a2 - 5, a1))
      {
        v11 = *v9;
        v12 = *(v9 + 16);
        v13 = *(v9 + 32);
        v14 = *(a2 - 1);
        v15 = *(a2 - 3);
        *v9 = *v10;
        *(v9 + 16) = v15;
        *(v9 + 32) = v14;
        *(a2 - 1) = v13;
        *v10 = v11;
        *(a2 - 3) = v12;
      }
    }

    else if (a4 > 128)
    {
      v28 = a5;
      v29 = a4 >> 1;
      v30 = &a1[5 * (a4 >> 1)];
      v31 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v34 = sub_70D75C(a1, v30, a3, a4 >> 1, a5, a7);
        v35 = v28 + 40 * v29;
        sub_70D75C(v30, a2, a3, v31, v35, v34);
        v36 = v28 + 40 * a4;
        v37 = v35;
        while (v37 != v36)
        {
          if (sub_70A8E8(a3, v37, v28))
          {
            v40 = *v37;
            v41 = *(v37 + 16);
            *(v9 + 32) = *(v37 + 32);
            *v9 = v40;
            *(v9 + 16) = v41;
            v37 += 40;
            v9 += 40;
            if (v28 == v35)
            {
LABEL_32:
              while (v37 != v36)
              {
                v44 = *v37;
                v45 = *(v37 + 16);
                *(v9 + 32) = *(v37 + 32);
                *v9 = v44;
                *(v9 + 16) = v45;
                v37 += 40;
                v9 += 40;
              }

              return;
            }
          }

          else
          {
            v38 = *v28;
            v39 = *(v28 + 16);
            *(v9 + 32) = *(v28 + 32);
            *v9 = v38;
            *(v9 + 16) = v39;
            v28 += 40;
            v9 += 40;
            if (v28 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        while (v28 != v35)
        {
          v42 = *v28;
          v43 = *(v28 + 16);
          *(v9 + 32) = *(v28 + 32);
          *v9 = v42;
          *(v9 + 16) = v43;
          v28 += 40;
          v9 += 40;
        }
      }

      else
      {
        sub_70D484(a1, v30, a3, a4 >> 1, a5, a6);
        sub_70D484(v30, a2, a3, v31, v28, a6);

        sub_70AF5C(v9, v30, a2, a3, v29, v31, v28, a6);
      }
    }

    else if (a1 != a2)
    {
      v16 = a1 + 5;
      if (a1 + 5 != a2)
      {
        v17 = 0;
        v18 = a1;
        do
        {
          v22 = v18;
          v18 = v16;
          if (sub_70A8E8(a3, v16, v22))
          {
            v23 = *v18;
            v24 = *(v18 + 1);
            v48 = v18[4];
            v46 = v23;
            v47 = v24;
            v25 = v17;
            do
            {
              v26 = v9 + v25;
              v27 = *(v9 + v25 + 16);
              *(v26 + 40) = *(v9 + v25);
              *(v26 + 56) = v27;
              *(v26 + 72) = *(v9 + v25 + 32);
              if (!v25)
              {
                v19 = v9;
                goto LABEL_11;
              }

              v25 -= 40;
            }

            while ((sub_70A8E8(a3, &v46, (v25 + v9)) & 1) != 0);
            v19 = v9 + v25 + 40;
LABEL_11:
            v20 = v46;
            v21 = v47;
            *(v19 + 32) = v48;
            *v19 = v20;
            *(v19 + 16) = v21;
          }

          v16 = v18 + 5;
          v17 += 40;
        }

        while (v18 + 5 != a2);
      }
    }
  }
}

__n128 sub_70D75C(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = a2 - 40;
      if (sub_70A8E8(a3, (a2 - 40), a1))
      {
        v12 = *v11;
        v13 = *(v11 + 16);
        *(v6 + 32) = *(v11 + 32);
        *v6 = v12;
        *(v6 + 16) = v13;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v26 = *v9;
        v27 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = v26;
        *(v6 + 16) = v27;
        result = *v11;
        v14 = *(v11 + 16);
        v15 = *(v11 + 32);
      }

      *(v6 + 72) = v15;
      *(v6 + 56) = v14;
      *(v6 + 40) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      v28 = a4 >> 1;
      v29 = 40 * (a4 >> 1);
      v30 = v29 + a1;
      sub_70D484(a1, v29 + a1, a3, v28, a5, v28);
      sub_70D484(v29 + v9, a2, a3, a4 - v28, v6 + v29, a4 - v28);
      v32 = v29 + v9;
      while (v32 != a2)
      {
        if (sub_70A8E8(a3, v32, v9))
        {
          result = *v32;
          v34 = *(v32 + 16);
          *(v6 + 32) = *(v32 + 32);
          *v6 = result;
          *(v6 + 16) = v34;
          v32 += 40;
          v6 += 40;
          if (v9 == v30)
          {
LABEL_30:
            while (v32 != a2)
            {
              result = *v32;
              v36 = *(v32 + 16);
              *(v6 + 32) = *(v32 + 32);
              *v6 = result;
              *(v6 + 16) = v36;
              v32 += 40;
              v6 += 40;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v33 = *(v9 + 16);
          *(v6 + 32) = *(v9 + 32);
          *v6 = result;
          *(v6 + 16) = v33;
          v9 += 40;
          v6 += 40;
          if (v9 == v30)
          {
            goto LABEL_30;
          }
        }
      }

      while (v9 != v30)
      {
        result = *v9;
        v35 = *(v9 + 16);
        *(v6 + 32) = *(v9 + 32);
        *v6 = result;
        *(v6 + 16) = v35;
        v9 += 40;
        v6 += 40;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 16);
      *(a5 + 32) = *(a1 + 32);
      *a5 = result;
      *(a5 + 16) = v16;
      v17 = a1 + 40;
      if (a1 + 40 != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          v21 = v19;
          v19 += 40;
          v22 = v19;
          if (sub_70A8E8(a3, v17, v21))
          {
            v23 = *(v21 + 16);
            *v19 = *v21;
            *(v19 + 16) = v23;
            *(v19 + 32) = *(v21 + 32);
            v22 = v6;
            if (v21 != v6)
            {
              v24 = v18;
              while (1)
              {
                v22 = v6 + v24;
                if (!sub_70A8E8(a3, v17, (v6 + v24 - 40)))
                {
                  break;
                }

                v25 = *(v6 + v24 - 24);
                *v22 = *(v6 + v24 - 40);
                *(v22 + 16) = v25;
                *(v22 + 32) = *(v6 + v24 - 8);
                v24 -= 40;
                if (!v24)
                {
                  v22 = v6;
                  break;
                }
              }
            }
          }

          result = *v17;
          v20 = *(v17 + 16);
          *(v22 + 32) = *(v17 + 32);
          *v22 = result;
          *(v22 + 16) = v20;
          v17 += 40;
          v18 += 40;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

void sub_70D9F8()
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
  xmmword_27A4058 = 0u;
  unk_27A4068 = 0u;
  dword_27A4078 = 1065353216;
  sub_3A9A34(&xmmword_27A4058, v0);
  sub_3A9A34(&xmmword_27A4058, v3);
  sub_3A9A34(&xmmword_27A4058, __p);
  sub_3A9A34(&xmmword_27A4058, v9);
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
    qword_27A4030 = 0;
    qword_27A4038 = 0;
    qword_27A4028 = 0;
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

void sub_70DC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4040)
  {
    qword_27A4048 = qword_27A4040;
    operator delete(qword_27A4040);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_70DCEC(uint64_t a1, void *a2, const void *a3, _OWORD *a4, char a5)
{
  *(sub_71AEDC(a1) + 880) = a2;
  *(a1 + 888) = sub_3AF6B4(a2);
  *(a1 + 896) = *a4;
  *(a1 + 912) = a5;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 1065353216;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 1065353216;
  memcpy((a1 + 1000), a3, 0x4E0uLL);
  return a1;
}

uint64_t sub_70DD90(double *a1, int a2, double a3)
{
  v3 = a1[140];
  if (a2)
  {
    if (v3 < a3)
    {
      return 61;
    }

    v5 = a1[138];
    if (v5 < a3)
    {
      return 2;
    }

    if (a1[272] < a3)
    {
      return 63;
    }

    if (a1[135] < a3)
    {
      return 21;
    }

    if (-a1[136] < a3)
    {
      return 20;
    }

    if (-v5 < a3)
    {
      return 62;
    }
  }

  else
  {
    if (v3 < a3)
    {
      return 61;
    }

    v6 = a1[138];
    if (v6 < a3)
    {
      return 2;
    }

    v7 = a1[136];
    if (v7 < a3)
    {
      return 63;
    }

    if (a1[135] < a3)
    {
      return 21;
    }

    if (-v7 < a3)
    {
      return 20;
    }

    if (-v6 < a3)
    {
      return 62;
    }
  }

  if (-v3 < a3)
  {
    return 1;
  }

  else
  {
    return 60;
  }
}

double sub_70DE9C(uint64_t a1, int **a2, int **a3)
{
  v6 = sub_3116D0(a2);
  if (v6 == sub_311544(a3))
  {
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      if (v8 < 0x49)
      {
        goto LABEL_28;
      }

      v9 = v7[36];
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    else if (v8 < 0x4B || (v9 = v7[37]) == 0)
    {
LABEL_28:
      v22 = -1;
      v23 = *a3;
      v24 = (*a3 - **a3);
      v25 = *v24;
      if (*(a3 + 38))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v22 = *(*a2 + v9);
    v23 = *a3;
    v24 = (*a3 - **a3);
    v25 = *v24;
    if (*(a3 + 38))
    {
LABEL_29:
      if (v25 >= 0x4B)
      {
        v26 = v24[37];
        if (v26)
        {
LABEL_31:
          v17 = *(v23 + v26);
          goto LABEL_37;
        }
      }

      goto LABEL_32;
    }

LABEL_25:
    if (v25 >= 0x49)
    {
      v26 = v24[36];
      if (v26)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v17 = 0xFFFF;
    goto LABEL_37;
  }

  v10 = sub_335660(a1, a2, 1);
  v11 = sub_335660(a1, a3, 0);
  if (v11 == v10)
  {
    v12 = HIDWORD(v10);
    v13 = HIDWORD(v11);
    i = 0.0;
    if (HIDWORD(v10) == HIDWORD(v11))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = HIDWORD(v11);
    v12 = HIDWORD(v10);
  }

  v15 = -(v10 - v11);
  if (v11 - v10 < (v10 - v11))
  {
    v15 = (v11 - v10);
  }

    ;
  }

    ;
  }

LABEL_16:
  v16 = llround(i * 100.0) % 36000;
  v17 = v16 + 36000;
  if (v16 <= 0xFFFF735F)
  {
    v17 = v16;
  }

  v18 = a2[1];
  v19 = (v18 - *v18);
  v20 = *v19;
  if (!*(a2 + 38))
  {
    if (v20 < 9)
    {
      goto LABEL_36;
    }

    v21 = v19[4];
    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_35:
    v22 = *(v18 + v21);
    goto LABEL_37;
  }

  if (v20 >= 5)
  {
    v21 = v19[2];
    if (v21)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v22 = 0;
LABEL_37:
  v27 = v22 + 18000;
  v28 = v22 - 18000;
  if ((v27 >> 5) < 0x465u)
  {
    v28 = v27;
  }

  v29 = v17 - v28;
  if (v29 > 18000)
  {
    v29 -= 36000;
  }

  if (v29 < -17999)
  {
    v29 += 36000;
  }

  return v29 / 100.0;
}

double sub_70E16C(uint64_t a1, int **a2, int **a3, double a4)
{
  LODWORD(a4) = *(a1 + 1552);
  if (sub_4346FC(*(a1 + 888), a2, a3, *(a1 + 1952), *(a1 + 1944), *&a4, *(a1 + 1936)))
  {
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      if (v8 < 0x49)
      {
        goto LABEL_15;
      }

      v9 = v7[36];
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else if (v8 < 0x4B || (v9 = v7[37]) == 0)
    {
LABEL_15:
      v11 = -1;
      v12 = *a3;
      v13 = (*a3 - **a3);
      v14 = *v13;
      if (*(a3 + 38))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v11 = *(*a2 + v9);
    v12 = *a3;
    v13 = (*a3 - **a3);
    v14 = *v13;
    if (*(a3 + 38))
    {
LABEL_16:
      if (v14 >= 0x4B)
      {
        v15 = v13[37];
        if (v15)
        {
LABEL_18:
          v16 = *(v12 + v15);
LABEL_20:
          v17 = v11 + 18000;
          v18 = v11 - 18000;
          if ((v17 >> 5) < 0x465u)
          {
            v18 = v17;
          }

          v19 = v16 - v18;
          if (v19 > 18000)
          {
            v19 -= 36000;
          }

          if (v19 < -17999)
          {
            v19 += 36000;
          }

          return v19 / 100.0;
        }
      }

LABEL_19:
      v16 = 0xFFFF;
      goto LABEL_20;
    }

LABEL_12:
    if (v14 >= 0x49)
    {
      v15 = v13[36];
      if (v15)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  return sub_70E2E0(a1, a2, a3);
}

double sub_70E2E0(uint64_t a1, int **a2, int **a3)
{
  if (*(a1 + 912) == 1)
  {
    v3 = a2[1];
    v4 = (v3 - *v3);
    v5 = *v4;
    if (*(a2 + 38))
    {
      if (v5 < 5)
      {
        goto LABEL_16;
      }

      v6 = v4[2];
      if (!v4[2])
      {
        goto LABEL_16;
      }
    }

    else if (v5 < 9 || (v6 = v4[4]) == 0)
    {
LABEL_16:
      v10 = 0;
      v11 = a3[1];
      v12 = (v11 - *v11);
      v13 = *v12;
      if (*(a3 + 38))
      {
        goto LABEL_17;
      }

LABEL_13:
      if (v13 < 5)
      {
        goto LABEL_19;
      }

      v14 = v12[2];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    v10 = *(v3 + v6);
    v11 = a3[1];
    v12 = (v11 - *v11);
    v13 = *v12;
    if (*(a3 + 38))
    {
LABEL_17:
      if (v13 < 9 || (v14 = v12[4]) == 0)
      {
LABEL_19:
        v15 = 0;
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v7 = (*a2 - **a2);
  v8 = *v7;
  if (*(a2 + 38))
  {
    if (v8 < 0x49)
    {
      goto LABEL_26;
    }

    v9 = v7[36];
    if (!v7[36])
    {
      goto LABEL_26;
    }
  }

  else if (v8 < 0x4B || (v9 = v7[37]) == 0)
  {
LABEL_26:
    v10 = -1;
    v11 = *a3;
    v16 = (*a3 - **a3);
    v17 = *v16;
    if (*(a3 + 38))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v17 >= 0x49)
    {
      v14 = v16[36];
      if (v14)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  v10 = *(*a2 + v9);
  v11 = *a3;
  v16 = (*a3 - **a3);
  v17 = *v16;
  if (!*(a3 + 38))
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v17 >= 0x4B)
  {
    v14 = v16[37];
    if (v14)
    {
LABEL_29:
      v15 = *(v11 + v14);
      goto LABEL_31;
    }
  }

LABEL_30:
  v15 = 0xFFFF;
LABEL_31:
  v18 = v10 + 18000;
  v19 = v10 - 18000;
  if ((v18 >> 5) < 0x465u)
  {
    v19 = v18;
  }

  v20 = v15 - v19;
  if (v20 > 18000)
  {
    v20 -= 36000;
  }

  if (v20 < -17999)
  {
    v20 += 36000;
  }

  return v20 / 100.0;
}

double sub_70E484(uint64_t a1, uint64_t a2, int **a3, int **a4, int a5, double a6)
{
  if (a5 && (v8 = a1, v9 = sub_70E510(a1, a2, a3, a4), a1 = v8, v9))
  {

    return sub_70E2E0(v8, a3, a4);
  }

  else
  {

    return sub_70E16C(a1, a3, a4, a6);
  }
}

uint64_t *sub_70E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 2168) != 1)
  {
    return 0;
  }

  if (*(a2 + 10120) != 1)
  {
    return 0;
  }

  v6 = *(a3 + 8);
  v7 = (v6 - *v6);
  if (*v7 < 0x11u)
  {
    return 0;
  }

  v8 = v7[8];
  if (!v8)
  {
    return 0;
  }

  if ((*(v6 + v8) & 0x40) == 0)
  {
    return 0;
  }

  v9 = *(a4 + 8);
  v10 = (v9 - *v9);
  if (*v10 < 0x11u)
  {
    return 0;
  }

  v11 = v10[8];
  if (!v11 || (*(v9 + v11) & 0x40) == 0)
  {
    return 0;
  }

  v27[5] = v4;
  v27[6] = v5;
  v15 = *(a3 + 32);
  LODWORD(v26) = v15;
  BYTE6(v26) = BYTE6(v15);
  WORD2(v26) = WORD2(v15);
  v17 = sub_4727F8((a1 + 960), &v26);
  if (v17)
  {
    v18 = v17[3];
  }

  else
  {
    v18 = -1;
  }

  v27[0] = v18;
  v19 = *(a4 + 32);
  LODWORD(v25) = v19;
  BYTE6(v25) = BYTE6(v19);
  WORD2(v25) = WORD2(v19);
  result = sub_4727F8((a1 + 960), &v25);
  if (result)
  {
    v20 = result;
    result = 0;
    v21 = v20[3];
    v26 = v21;
    if (v18 != -1 && v21 != -1)
    {
      v22 = a2;
      v23 = sub_710C28((a2 + 12544), v27);
      v24 = sub_710C28((v22 + 12544), &v26);
      result = 0;
      if (v26 == v27[0] + 1 && v23 && v24)
      {
        if ((*(v23 + 6) - 3) > 1)
        {
          return 0;
        }

        else
        {
          return ((*(v24 + 6) - 3) < 2);
        }
      }
    }
  }

  return result;
}

void sub_70E6E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v4 - *a3) >> 3));
  v6 = v4 == *a3;
  v8[0] = a2;
  v8[1] = a1;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  sub_71B06C(v3, v4, v8, v7, 1);
}

uint64_t sub_70E748(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = &(*a2)[-**a2];
  v4 = *v3;
  if (v4 < 0x2F)
  {
    return 0;
  }

  if (*(v3 + 23))
  {
    v5 = v2[*(v3 + 23)];
    if (v5 <= 0x2C)
    {
      if (((1 << v5) & 0x180000105240) != 0)
      {
        return *(a1 + 1588);
      }

      if (!v2[*(v3 + 23)])
      {
        return *(a1 + 1584);
      }
    }
  }

  if (v4 >= 0x43 && (v7 = *(v3 + 33)) != 0)
  {
    return v2[v7];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_70E7C4(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, double a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_70E87C(a1, a2, a3, &v8, a5);
  if (v8 == v9)
  {
    a4 = -1;
LABEL_8:
    if (!v8)
    {
      return a4;
    }
  }

  else
  {
    v6 = v8;
    while (*v6 != a4)
    {
      if (++v6 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v6 != v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    a4 = *v8;
  }

  v9 = v8;
  operator delete(v8);
  return a4;
}

void sub_70E860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_70E87C(uint64_t a1, int **a2, uint64_t *a3, void *a4, double a5)
{
  a4[1] = *a4;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_710D00(a1, a2, a3, &v42, a5);
  v9 = v42;
  v10 = v43;
  if (v42 == v43)
  {
    goto LABEL_50;
  }

  do
  {
    v11 = *v9;
    v41 = v11;
    if (v11 == -1 || !sub_70EB5C(a1, a2, a3, v11))
    {
      goto LABEL_4;
    }

    v12 = sub_605E3C(a3, v41);
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (*(a2 + 38))
    {
      if (v14 >= 0x49)
      {
        v15 = v13[36];
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v14 >= 0x4B)
    {
      v15 = v13[37];
      if (v15)
      {
LABEL_14:
        v16 = *(*a2 + v15);
        v17 = *v12;
        v18 = (*v12 - **v12);
        v19 = *v18;
        if (*(v12 + 38))
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    v16 = -1;
    v17 = *v12;
    v18 = (*v12 - **v12);
    v19 = *v18;
    if (*(v12 + 38))
    {
LABEL_19:
      if (v19 >= 0x4B)
      {
        v20 = v18[37];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_15:
    if (v19 >= 0x49)
    {
      v20 = v18[36];
      if (v20)
      {
LABEL_21:
        v21 = *&v17[v20];
        goto LABEL_23;
      }
    }

LABEL_22:
    v21 = 0xFFFF;
LABEL_23:
    v22 = v16 + 18000;
    v23 = v16 - 18000;
    if ((v22 >> 5) < 0x465u)
    {
      v23 = v22;
    }

    v24 = v21 - v23;
    if (v24 > 18000)
    {
      v24 -= 36000;
    }

    if (v24 >= -17999)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 36000;
    }

    v26 = sub_605E3C(a3, v41);
    v27 = sub_70E2E0(a1, a2, v26);
    v28 = fabs(v25 / 100.0);
    v29 = fabs(v27);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    if (v29 <= *(a1 + 1152) || (v30 = (*a2 - **a2), *v30 < 0x2Fu) || (v31 = v30[23]) == 0 || ((v32 = *(*a2 + v31), v33 = v32 > 0x2A, v34 = (1 << v32) & 0x50426810004, !v33) ? (v35 = v34 == 0) : (v35 = 1), v35))
    {
      if (v29 <= *(a1 + 1144) || (v36 = (*a2 - **a2), *v36 >= 0x2Fu) && (v37 = v36[23]) != 0 && ((v38 = *(*a2 + v37), v33 = v38 > 0x2A, v39 = (1 << v38) & 0x50426810004, !v33) ? (v40 = v39 == 0) : (v40 = 1), !v40))
      {
        sub_2512DC(a4, &v41);
LABEL_4:
        sub_2512DC(a4, &v41);
      }
    }

    ++v9;
  }

  while (v9 != v10);
  v9 = v42;
LABEL_50:
  if (v9)
  {
    v43 = v9;
    operator delete(v9);
  }
}

void sub_70EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_70EB5C(uint64_t a1, int **a2, uint64_t *a3, unint64_t a4)
{
  v7 = sub_605E3C(a3, a4);
  v8 = sub_70E2E0(a1, a2, v7);
  v9 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
    return 0;
  }

  v11 = fabs(v8);
  while (1)
  {
    v12 = *(a1 + 888);
    v13 = *(v9 + 32);
    v14 = (v13 & 0xFF000000000000) == 0;
    v15 = v13 & 0xFFFFFFFFFFFFLL;
    v16 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
    if (*(v12 + 7772) == 1)
    {
      v17 = sub_30C50C(v12 + 3896, v13, 0);
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

      v20 = (v19 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v19 + ((v13 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_31D7E8(v12, v15, 1);
    v30[0] = v16;
    v30[1] = v20;
    v30[2] = v21;
    v30[3] = v22;
    v31 = v15 | (v14 << 48);
    v23 = sub_70E2E0(a1, v30, v7);
    v25 = (v30[0] - *v30[0]);
    v26 = *v25;
    if (BYTE6(v31))
    {
      if (v26 < 0x9B)
      {
        goto LABEL_4;
      }

      v27 = v25[77];
      if (!v27 || (*(v30[0] + v27) & 2) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v26 < 0x9B)
      {
        goto LABEL_4;
      }

      v28 = v25[77];
      if (!v28 || (*(v30[0] + v28) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v24.i16[0] = *(a1 + 1416);
    if (fabs(v23) + vmovl_s16(v24).i32[0] < v11)
    {
      return 1;
    }

LABEL_4:
    v9 += 40;
    if (v9 == v10)
    {
      return 0;
    }
  }
}

BOOL sub_70ED3C(uint64_t a1, int **a2, int **a3)
{
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v5)
      {
        v6 = 2;
LABEL_8:
        v7 = (*(*a2 + v5) & v6) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v4 >= 0x47)
  {
    v5 = v3[35];
    if (v5)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:
  v8 = *a3;
  v9 = (*a3 - **a3);
  v10 = *v9;
  if (*(a3 + 38))
  {
    if (v10 >= 0x47)
    {
      v11 = v9[35];
      if (v11)
      {
        return v7 ^ ((*&v8[v11] & 2) != 0) ^ 1;
      }
    }
  }

  else if (v10 >= 0x47)
  {
    v13 = v9[35];
    if (v13)
    {
      return v7 ^ ((*&v8[v13] & 1) != 0) ^ 1;
    }
  }

  return !v7;
}

BOOL sub_70EE0C(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      v5 = v3[35];
      if (v5)
      {
        return (*&v2[v5] & 2) != 0;
      }
    }
  }

  else if (v4 >= 0x47)
  {
    v7 = v3[35];
    if (v7)
    {
      return (*&v2[v7] & 1) != 0;
    }
  }

  return 0;
}