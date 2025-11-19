uint64_t sub_31F6E0(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = WORD2(a1);
  v9 = BYTE6(a1);
  if (BYTE6(a1) != BYTE6(*a5) || a1 != *a5 || WORD2(a1) != WORD2(*a5))
  {
    *a5 = a1;
    *(a5 + 4) = WORD2(a1);
    *(a5 + 6) = BYTE6(a1);
    sub_31F838(a4, a1, a3, (a5 + 8), (a5 + 32));
  }

  v12 = *(a5 + 8);
  v13 = *(a5 + 16);
  if (v12 != v13)
  {
    while (__PAIR64__(*(v12 + 4), *v12) != __PAIR64__(WORD2(a2), a2) || *(v12 + 6) != BYTE6(a2))
    {
      v12 += 8;
      if (v12 == v13)
      {
        v12 = *(a5 + 16);
        v15 = *(a5 + 32);
        v14 = *(a5 + 40);
        if (v15 != v14)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }
  }

  v15 = *(a5 + 32);
  v14 = *(a5 + 40);
  if (v15 == v14)
  {
LABEL_17:
    v16 = 0;
  }

  else
  {
LABEL_19:
    while (1)
    {
      if (*v15 == v7)
      {
        v17 = *(v15 + 4) == v8 && *(v15 + 6) == v9;
        if (v17 && __PAIR64__(*(v15 + 12), *(v15 + 8)) == __PAIR64__(WORD2(a2), a2) && *(v15 + 14) == BYTE6(a2))
        {
          break;
        }
      }

      v15 += 16;
      if (v15 == v14)
      {
        v15 = v14;
        break;
      }
    }

    v16 = v15 == v14;
  }

  return v12 != v13 || v16;
}

void sub_31F838(uint64_t a1, unint64_t a2, int a3, void *a4, unint64_t **a5)
{
  a4[1] = *a4;
  a5[1] = *a5;
  v10 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  if (*v11 >= 0x21u)
  {
    v12 = v11[16];
    if (v12)
    {
      v13 = (v10 + v12 + *(v10 + v12));
      v14 = *v13;
      if (v14)
      {
        v15 = 8 * v14;
        v16 = (v13 + 1);
        v17 = a2 & 0xFFFFFFFFFFFFLL;
        v18 = HIWORD(a2);
        do
        {
          if (!sub_31F18C(a1, *v16))
          {
            goto LABEL_6;
          }

          v19 = sub_30CC30(a1, *v16);
          if (a3 == 3)
          {
            v20 = *v19;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14) || (*(v19 + *(v19 - v20 + 14)) & 4) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (a3 == 2)
          {
            v20 = *v19;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14) || (*(v19 + *(v19 - v20 + 14)) & 2) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (a3)
            {
              goto LABEL_6;
            }

            v20 = *v19;
            v21 = -v20;
            if (*(v19 - v20) < 0xFu || !*(v19 - v20 + 14))
            {
              goto LABEL_23;
            }

            if ((*(v19 + *(v19 - v20 + 14)) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v21 = -v20;
LABEL_23:
          v22 = (v19 + v21);
          v23 = (v19 + *(v19 + v21 + 6));
          v24 = v23 + *v23;
          v25 = *(v24 + 4);
          v26 = v25 & 0xFF000000000000;
          if ((v25 & 0xFFFFFFFFFFFFLL) != v17 || ((v25 & 0xFF000000000000) == 0) != v18 || *v22 >= 9u && v22[4])
          {
            goto LABEL_6;
          }

          v27 = v22[2];
          if (v27)
          {
            if (!*(v19 + v27) && *v24 == 2)
            {
LABEL_34:
              v54 = v18;
              v33 = *(v24 + 12);
              v34 = v33 & 0xFF000000000000;
              v36 = a4[1];
              v35 = a4[2];
              if (v36 >= v35)
              {
                v53 = v17;
                v38 = *a4;
                v39 = v36 - *a4;
                v40 = (v39 >> 3) + 1;
                if (v40 >> 61)
                {
                  sub_1794();
                }

                v41 = v35 - v38;
                if (v41 >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  if (!(v42 >> 61))
                  {
                    operator new();
                  }

LABEL_66:
                  sub_1808();
                }

                v49 = (8 * (v39 >> 3));
                *v49 = v33 & 0xFFFFFFFFFFFFLL | ((v34 == 0) << 48);
                v37 = v49 + 1;
                memcpy(0, v38, v39);
                *a4 = 0;
                a4[1] = v37;
                a4[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                v17 = v53;
              }

              else
              {
                *v36 = v33 & 0xFFFFFFFFFFFFLL | ((v34 == 0) << 48);
                v37 = v36 + 1;
              }

              a4[1] = v37;
            }

            else
            {
              if (*(v19 + v27) != 1 || *v24 < 2u)
              {
                goto LABEL_6;
              }

              v54 = v18;
              v28 = *(v24 + 12);
              v29 = v28 & 0xFF000000000000;
              v30 = a5[1];
              v31 = a5[2];
              if (v30 >= v31)
              {
                v43 = *a5;
                v44 = v30 - *a5;
                v45 = v44 >> 4;
                v46 = (v44 >> 4) + 1;
                if (v46 >> 60)
                {
                  sub_1794();
                }

                v47 = v31 - v43;
                if (v47 >> 3 > v46)
                {
                  v46 = v47 >> 3;
                }

                if (v47 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v48 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (!(v48 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_66;
                }

                v50 = (16 * v45);
                *v50 = v25 & 0xFFFFFFFFFFFFLL | ((v26 == 0) << 48);
                v50[1] = v28 & 0xFFFFFFFFFFFFLL | ((v29 == 0) << 48);
                v32 = 16 * v45 + 16;
                v51 = &v50[-2 * (v44 >> 4)];
                v52 = v43;
                memcpy(v51, v43, v44);
                *a5 = v51;
                a5[1] = v32;
                a5[2] = 0;
                if (v52)
                {
                  operator delete(v52);
                }
              }

              else
              {
                *v30 = v25 & 0xFFFFFFFFFFFFLL | ((v26 == 0) << 48);
                v30[1] = v28 & 0xFFFFFFFFFFFFLL | ((v29 == 0) << 48);
                v32 = (v30 + 2);
              }

              a5[1] = v32;
            }

            v18 = v54;
            goto LABEL_6;
          }

          if (*v24 == 2)
          {
            goto LABEL_34;
          }

LABEL_6:
          ++v16;
          v15 -= 8;
        }

        while (v15);
      }

      if (*a5 != a5[1])
      {
        a4[1] = *a4;
      }
    }
  }
}

uint64_t sub_31FC98(uint64_t **a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 == a1[1] - 1)
  {
    v33 = 0;
    return v33 & 1;
  }

  v4 = a3;
  v5 = a2;
  do
  {
    v46 = *v3;
    v43 = 0;
    v44 = 0;
    __p = 0;
    v45[0] = v4;
    v45[1] = &v46;
    sub_32140C(v4, v46, &__p, v45);
    v6 = __p;
    v7 = v43;
    if (__p != v43)
    {
      v37 = 0;
      v41 = 1;
      v38 = v3;
      v39 = v43;
      while (1)
      {
        v9 = sub_30CC30(v4, *v6);
        v10 = (v9 - *v9);
        v11 = *v10;
        if (v11 < 5)
        {
          goto LABEL_22;
        }

        if (!v10[2] || !*(v9 + v10[2]))
        {
          break;
        }

        if (*(v9 + v10[2]) != 1)
        {
          goto LABEL_8;
        }

        if (v11 < 9)
        {
          v12 = 2;
        }

        else
        {
          if (v10[4])
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

          if (v12)
          {
            goto LABEL_8;
          }
        }

LABEL_23:
        v13 = sub_30CC30(v4, *v6);
        switch(v5)
        {
          case 3:
            v18 = (v13 - *v13);
            if (*v18 >= 0xFu)
            {
              v19 = v18[7];
              if (v19)
              {
                if ((*(v13 + v19) & 4) != 0)
                {
LABEL_37:
                  v20 = sub_30CC30(v4, *v6);
                  v21 = (v20 - *v20);
                  if (*v21 >= 7u)
                  {
                    v22 = v21[3];
                    if (v22)
                    {
                      if (*(v20 + v22 + *(v20 + v22)))
                      {
                        operator new();
                      }
                    }
                  }

                  v23 = a1[1];
                  v3 = v38;
                  if (v23 - v38 >= 0)
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = v23 - v38;
                  }

                  v25 = 8 * v24;
                  if (v12)
                  {
                    v26 = v38;
                    v27 = 0;
                    v7 = v39;
                    if (v24)
                    {
                      v28 = 8 * v24;
                      v26 = v38;
                      v27 = 0;
                      while (__PAIR64__(*(v27 + 4), *v27) == __PAIR64__(WORD2(*v26), *v26) && *(v27 + 6) == BYTE6(*v26))
                      {
                        v27 += 8;
                        ++v26;
                        v28 -= 8;
                        if (!v28)
                        {
                          v27 = v25;
                          break;
                        }
                      }
                    }

                    v8 = v26 != v23;
                    if (!v27)
                    {
                      v8 = 0;
                    }

                    v41 &= v8;
                    v37 = 1;
                    v4 = a3;
                    v5 = a2;
                  }

                  else
                  {
                    v7 = v39;
                    if (v24)
                    {
                      v29 = 8 * v24;
                      v30 = v38;
                      v31 = 0;
                      do
                      {
                        if (__PAIR64__(*(v31 + 4), *v31) != __PAIR64__(WORD2(*v30), *v30))
                        {
                          break;
                        }

                        if (*(v31 + 6) != BYTE6(*v30))
                        {
                          break;
                        }

                        v31 += 8;
                        ++v30;
                        v29 -= 8;
                      }

                      while (v29);
                    }

                    v4 = a3;
                    v5 = a2;
                  }
                }
              }
            }

            break;
          case 2:
            v16 = (v13 - *v13);
            if (*v16 >= 0xFu)
            {
              v17 = v16[7];
              if (v17)
              {
                if ((*(v13 + v17) & 2) != 0)
                {
                  goto LABEL_37;
                }
              }
            }

            break;
          case 0:
            v14 = (v13 - *v13);
            if (*v14 < 0xFu)
            {
              goto LABEL_37;
            }

            v15 = v14[7];
            if (!v15 || (*(v13 + v15) & 1) != 0)
            {
              goto LABEL_37;
            }

            break;
        }

LABEL_8:
        if (++v6 == v7)
        {
          v32 = v37 & v41 ^ 1;
          v6 = __p;
          if (__p)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      if (v11 >= 9)
      {
        v12 = v10[4] != 0;
        if (v10[4])
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }

LABEL_22:
      v12 = 0;
      goto LABEL_23;
    }

    v32 = 1;
    if (__p)
    {
LABEL_59:
      v43 = v6;
      operator delete(v6);
    }

LABEL_60:
    if ((v32 & 1) == 0)
    {
      break;
    }

    ++v3;
  }

  while (v3 != a1[1] - 1);
  v33 = v32 ^ 1;
  return v33 & 1;
}

void sub_3201C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_320200@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_30CC30(a1, a2);
  v4 = (result - *result);
  if (*v4 >= 7u)
  {
    v5 = v4[3];
    if (v5)
    {
      if (*(result + v5 + *(result + v5)))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_3203E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v10;
  a10[2] = v11;
  *a10 = v12;
  if (v12)
  {
    a10[1] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_32041C(int **a1, uint64_t a2, uint64_t *a3, int a4)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = *a3;
    while (*(v8 + 32) != *(a1 + 8) || *(v8 + 36) != *(a1 + 18))
    {
      v8 += 40;
      if (v8 == v7)
      {
        v8 = a3[1];
        break;
      }
    }

    v10 = *a1;
    v11 = (*a1 - **a1);
    if (*v11 < 0x9Bu)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v8 = *a3;
  v10 = *a1;
  v11 = (*a1 - **a1);
  if (*v11 >= 0x9Bu)
  {
LABEL_12:
    v12 = v11[77];
    if (v12)
    {
      v13 = *(v10 + v12 + 1) >> 7;
      goto LABEL_15;
    }
  }

LABEL_14:
  LOBYTE(v13) = 0;
  while (1)
  {
LABEL_15:
    if (v13)
    {
      if (v8 == v6)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      v8 = v14 - 40;
      if (sub_321FD8((v14 - 40), a4))
      {
        return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
      }

      goto LABEL_25;
    }

    if (v8 == v7 - 40)
    {
      v8 = v6;
    }

    else
    {
      v8 += 40;
    }

    if (sub_321FD8(v8, a4))
    {
      return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
    }

LABEL_25:
    v15 = *v8;
    if (a4)
    {
      if (a4 == 2)
      {
        v18 = (v15 - *v15);
        v19 = *v18;
        if (*(v8 + 38))
        {
          if (v19 >= 0x39 && v18[28])
          {
            v20 = *(v15 + v18[28]);
            if (v20)
            {
              return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
            }

LABEL_46:
            if ((v20 & 7) == 4 || (v20 & 0x23) == 0x20)
            {
              return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
            }
          }
        }

        else if (v19 >= 0x39 && v18[28])
        {
          v20 = *(v15 + v18[28]);
          if ((v20 & 2) != 0)
          {
            return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
          }

          goto LABEL_46;
        }
      }

      else if (a4 == 3)
      {
        v16 = (v15 - *v15);
        v17 = *v16;
        if (*(v8 + 38))
        {
          if (v17 >= 0x47 && v16[35] && (*(v15 + v16[35]) & 1) != 0)
          {
            return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
          }
        }

        else if (v17 >= 0x47 && v16[35] && (*(v15 + v16[35]) & 2) != 0)
        {
          return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
        }
      }
    }

    else
    {
      v21 = (v15 - *v15);
      v22 = *v21;
      if (*(v8 + 38))
      {
        if (v22 >= 0x9B && v21[77] && (*(v15 + v21[77]) & 1) != 0)
        {
          return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
        }
      }

      else if (v22 >= 0x9B && v21[77] && (*(v15 + v21[77]) & 2) != 0)
      {
        return *(v8 + 32) == *(a2 + 32) && *(v8 + 36) == *(a2 + 36);
      }
    }
  }
}

uint64_t sub_320670(uint64_t a1, uint64_t a2, char a3)
{
  v5 = **a2;
  LOBYTE(v48) = a3;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  *&__src = a1;
  *(&__src + 1) = &v48;
  sub_3216E0(a1, v5, &v55, &__src);
  v6 = v55;
  v7 = v56;
  if (v55 != v56)
  {
    v8 = 0;
    v47 = v56;
    while (1)
    {
      v9 = *v6;
      sub_320200(a1, *v6, &__p);
      v10 = __p;
      if (*(a2 + 8) - *a2 < (v54 - __p))
      {
        goto LABEL_5;
      }

      if (__p != v54)
      {
        break;
      }

LABEL_15:
      v15 = sub_30CC30(a1, v9);
      v16 = (v15 - *v15);
      if (*v16 >= 9u && (v17 = v16[4]) != 0)
      {
        v18 = *(v15 + v17);
        __src = 0uLL;
        v59 = 0;
        if (*(v15 + v17 + v18))
        {
          operator new();
        }

        sub_3219E8((v15 + v17 + v18), &__src);
        v19 = __src;
        v20 = v59;
        v7 = v47;
      }

      else
      {
        v20 = 0;
        v19 = 0uLL;
      }

      v51 = v19;
      v52 = v20;
      v21 = sub_30CC30(a1, v9);
      v22 = (v21 - *v21);
      if (*v22 >= 0x13u && (v23 = v22[9]) != 0)
      {
        v24 = (v21 + v23 + *(v21 + v23));
        v25 = (v24 - *v24);
        if (*v25 > 8u && (v26 = v25[4]) != 0)
        {
          v27 = *(v24 + v26);
          __src = 0uLL;
          v59 = 0;
          if (*(v24 + v26 + v27))
          {
            operator new();
          }

          sub_3219E8((v24 + v26 + v27), &__src);
          v28 = __src;
          v29 = v59;
          v7 = v47;
        }

        else
        {
          v29 = 0;
          v28 = 0uLL;
        }

        v49 = v28;
        v50 = v29;
      }

      else
      {
        v49 = 0uLL;
        v50 = 0;
      }

      v30 = sub_30CC30(a1, v9);
      v31 = (v30 - *v30);
      if (*v31 >= 0x13u && (v32 = v31[9]) != 0 && (v33 = (v30 + v32 + *(v30 + v32)), v34 = (v33 - *v33), *v34 >= 7u) && (v35 = v34[3]) != 0)
      {
        v36 = *(v33 + v35) != 0;
        if (v51 != *(&v51 + 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v36 = 0;
        if (v51 != *(&v51 + 1))
        {
          goto LABEL_39;
        }
      }

      v37 = v49;
      if (v49 != *(&v49 + 1))
      {
LABEL_39:
        sub_925C4(&__src);
      }

      if (v36)
      {
        v11 = 1;
      }

      else
      {
        v11 = 3;
      }

      v8 = 1;
      if (v49)
      {
        v38 = *(&v49 + 1);
        v39 = v49;
        if (*(&v49 + 1) != v49)
        {
          do
          {
            v40 = *(v38 - 1);
            v38 -= 3;
            if (v40 < 0)
            {
              operator delete(*v38);
            }
          }

          while (v38 != v37);
          v39 = v49;
        }

        *(&v49 + 1) = v37;
        operator delete(v39);
      }

      v41 = v51;
      if (v51)
      {
        v42 = *(&v51 + 1);
        v43 = v51;
        if (*(&v51 + 1) != v51)
        {
          do
          {
            v44 = *(v42 - 1);
            v42 -= 3;
            if (v44 < 0)
            {
              operator delete(*v42);
            }
          }

          while (v42 != v41);
          v43 = v51;
        }

        *(&v51 + 1) = v41;
        operator delete(v43);
      }

      v10 = __p;
      if (__p)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v11 != 3)
      {
        v45 = 0;
        v6 = v55;
        if (v55)
        {
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (++v6 == v7)
      {
        v45 = 1;
        v6 = v55;
        if (!v55)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = __p + v12;
      v14 = *(*a2 + v12);
      if (*(__p + v12) != v14 || *(v13 + 2) != WORD2(v14) || v13[6] != BYTE6(v14))
      {
        break;
      }

      v12 += 8;
      if (v13 + 8 == v54)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    v11 = 3;
    if (!__p)
    {
      goto LABEL_7;
    }

LABEL_6:
    v54 = v10;
    operator delete(v10);
    goto LABEL_7;
  }

  v8 = 0;
  v45 = 1;
  if (v55)
  {
LABEL_63:
    v56 = v6;
    operator delete(v6);
  }

LABEL_64:
  if (v45)
  {
    return v8 & 1;
  }

  else
  {
    return 2;
  }
}

void sub_320DE8(_Unwind_Exception *a1)
{
  sub_1A104(&STACK[0x2B0]);
  sub_1A104(&STACK[0x260]);
  v2 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x298];
  if (STACK[0x298])
  {
    STACK[0x2A0] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_320EC8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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

  v9 = sub_2AF704(a1 + 3896, 1u, 0);
  v10 = &v9[-*v9];
  if (*v10 < 0xBu)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 5);
    if (v11)
    {
      v11 += &v9[*&v9[v11]];
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

    v22 = *(v15 + v16);
    if (v17)
    {
      memcpy(__dst, v15 + v16 + 4, v17);
    }

    v18 = (__dst + v17);
  }

  else
  {
    v22 = 0;
    v18 = __dst;
  }

  *v18 = 0;
  v19 = v22;
  v20 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v19 = __dst[1];
  }

  if (v19)
  {
    sub_25BE0(a3, __dst);
    v20 = v22;
  }

  else
  {
    sub_25AE0(a3);
  }

  if ((v20 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_321078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_321164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
  if ((a2 & 0xFFFFFFFFFFFFFFLL) == (a4 & 0xFFFFFFFFFFFFFFLL) || a3 == a5 && WORD2(a3) == WORD2(a5) && BYTE6(a3) == BYTE6(a5))
  {
    return 1;
  }

  sub_2B3A8C(a1, v10, &__p);
  v12 = __p;
  v13 = v46;
  if (__p == v46)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p;
    while (1)
    {
      v15 = *v14;
      v16 = *(v14 + 2);
      v17 = v14[6];
      v18 = *v14 == a2 && v16 == WORD2(a2);
      if (!v18 || v17 != BYTE6(a2))
      {
        v20 = v15 == a3 && v16 == WORD2(a3);
        if (!v20 || v17 != BYTE6(a3))
        {
          v22 = v15 == a4 && v16 == WORD2(a4);
          v23 = v22 && v17 == BYTE6(a4);
          if (!v23 && (v15 != a5 || v16 != WORD2(a5) || v17 != BYTE6(a5)))
          {
            break;
          }
        }
      }

      v14 += 8;
      if (v14 == v46)
      {
        goto LABEL_66;
      }
    }

    if (v14 != v46)
    {
      v24 = v14 + 8;
      if (v14 + 8 != v46)
      {
        do
        {
          v26 = *v24;
          v27 = *(v24 + 2);
          v28 = v24[6];
          v30 = *v24 == a2 && v27 == WORD2(a2) && v28 == BYTE6(a2);
          if (v30 || (v26 == a3 ? (v31 = v27 == WORD2(a3)) : (v31 = 0), v31 ? (v32 = v28 == BYTE6(a3)) : (v32 = 0), v32 || (v26 == a4 ? (v33 = v27 == WORD2(a4)) : (v33 = 0), v33 ? (v34 = v28 == BYTE6(a4)) : (v34 = 0), v34 || v26 == a5 && v27 == WORD2(a5) && v28 == BYTE6(a5))))
          {
            v25 = *v24;
            *(v14 + 3) = *(v24 + 3);
            *v14 = v25;
            v14 += 8;
          }

          v24 += 8;
        }

        while (v24 != v13);
        v12 = __p;
        v13 = v46;
        if (v14 == v46)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }
  }

  if (v14 != v46)
  {
LABEL_65:
    v13 = v14;
    v46 = v14;
  }

LABEL_66:
  if (v12 != v13)
  {
    v35 = v12;
    while (__PAIR64__(*(v35 + 2), *v35) != __PAIR64__(WORD2(a2), a2) || v35[6] != BYTE6(a2))
    {
      v35 += 8;
      if (v35 == v13)
      {
        goto LABEL_72;
      }
    }

    v13 = v35;
  }

LABEL_72:
  v36 = ((v13 - v12) >> 3) + 2;
  v37 = v36 & 3;
  v39 = -v36;
  v38 = v39 < 0;
  v40 = v39 & 3;
  if (v38)
  {
    v41 = v37;
  }

  else
  {
    v41 = -v40;
  }

  v42 = *&v12[8 * v41];
  v44 = a3 == v42 && WORD2(a3) == WORD2(v42) && BYTE6(a3) == BYTE6(v42);
  v46 = v12;
  operator delete(v12);
  return v44;
}

int *sub_32140C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = a2;
  a3[1] = *a3;
  result = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v8 = (result - *result);
  if (*v8 >= 0x21u)
  {
    v9 = v8[16];
    if (v9)
    {
      v10 = (result + v9 + *(result + v9));
      if (*v10 > ((a3[2] - *a3) >> 3))
      {
        operator new();
      }

      v11[0] = a1;
      v11[1] = &v13;
      v11[2] = a4;
      v15 = (v10 + 1);
      v14 = &v10[2 * *v10 + 1];
      return sub_321538(&v15, &v14, a3, &v12, v11);
    }
  }

  return result;
}

uint64_t sub_321538(unint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v28 = a3;
  v5 = *a1;
  if (*a1 != *a2)
  {
    while (1)
    {
      v9 = *v5;
      v10 = *a5;
      if (sub_31F18C(*a5, *v5))
      {
        v11 = sub_30CC30(v10, v9);
        v12 = (v11 - *v11);
        if (*v12 < 7u || (v13 = v12[3]) == 0)
        {
          v14 = 0;
          v15 = 4277009103;
LABEL_10:
          v16 = 8 * v15;
          v17 = a5[1];
          v18 = *v17 | (((*(v17 + 2) | (*(v17 + 6) << 16)) & 0xFFFFFF) << 32);
          v19 = v14 + 1;
          v20 = *(v17 + 6);
          while ((*v19 & 0xFFFFFFFFFFFFLL) != (v18 & 0xFFFFFFFFFFFFLL) || v20 != ((*v19 & 0xFF000000000000) == 0))
          {
            ++v19;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_3;
            }
          }

          v21 = a5[2];
          v22 = sub_30CC30(*v21, v9);
          v23 = (v22 + *(v22 - *v22 + 6));
          v24 = *(v23 + *v23 + 4);
          v25 = **(v21 + 8);
          if ((v24 & 0xFFFFFFFFFFFFLL) == (v25 & 0xFFFFFFFFFFFFLL) && ((v24 & 0xFF000000000000) == 0) == BYTE6(v25))
          {
            v27 = **a1;
            sub_A2324(&v28, &v27);
          }

          goto LABEL_3;
        }

        v14 = (v11 + v13 + *(v11 + v13));
        v15 = *v14;
        if (v15)
        {
          goto LABEL_10;
        }
      }

LABEL_3:
      v5 = *a1 + 1;
      *a1 = v5;
      if (v5 == *a2)
      {
        return v28;
      }
    }
  }

  return a3;
}

int *sub_3216E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15 = a2;
  a3[1] = *a3;
  result = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v8 = (result - *result);
  if (*v8 >= 0x21u)
  {
    v9 = v8[16];
    if (v9)
    {
      v10 = (result + v9 + *(result + v9));
      if (*v10 > ((a3[2] - *a3) >> 3))
      {
        operator new();
      }

      v14[0] = a1;
      v14[1] = &v15;
      v14[2] = a4;
      v11 = *v10;
      v17 = a3;
      if (v11)
      {
        v12 = 8 * v11;
        v13 = (v10 + 1);
        do
        {
          result = sub_32182C(v14, *v13);
          if (result)
          {
            v16 = *v13;
            result = sub_A2324(&v17, &v16);
          }

          ++v13;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  return result;
}

int *sub_32182C(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  result = sub_31F18C(*a1, a2);
  if (result)
  {
    v6 = sub_30CC30(v4, a2);
    v7 = (v6 - *v6);
    if (*v7 >= 7u && (v8 = v7[3]) != 0)
    {
      v9 = (v6 + v8 + *(v6 + v8));
      v10 = *v9;
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 4277009103;
    }

    v11 = 8 * v10;
    v12 = a1[1];
    v13 = *v12 | (((*(v12 + 2) | (*(v12 + 6) << 16)) & 0xFFFFFF) << 32);
    v14 = v9 + 1;
    v15 = *(v12 + 6);
    while ((*v14 & 0xFFFFFFFFFFFFLL) != (v13 & 0xFFFFFFFFFFFFLL) || v15 != ((*v14 & 0xFF000000000000) == 0))
    {
      ++v14;
      v11 -= 8;
      if (!v11)
      {
        return 0;
      }
    }

    v16 = a1[2];
    v17 = sub_30CC30(*v16, a2);
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 5 || !v18[2] || *(v17 + v18[2]) != 5)
    {
      return 0;
    }

    v20 = **(v16 + 8);
    if (v20 == 3)
    {
      if (v19 < 0xF)
      {
        return 0;
      }

      v21 = v18[7];
      if (!v21)
      {
        return 0;
      }

      v22 = 4;
    }

    else if (v20 == 2)
    {
      if (v19 < 0xF)
      {
        return 0;
      }

      v21 = v18[7];
      if (!v21)
      {
        return 0;
      }

      v22 = 2;
    }

    else
    {
      if (**(v16 + 8))
      {
        return 0;
      }

      if (v19 < 0xF)
      {
        return &dword_0 + 1;
      }

      v21 = v18[7];
      v22 = 1;
      if (!v21)
      {
        return &dword_0 + 1;
      }
    }

    return ((*(v17 + v21) & v22) != 0);
  }

  return result;
}

uint64_t sub_3219E8(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v11 = a2;
  if (v2)
  {
    v3 = 4 * v2;
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
      v6 = a1 + v5;
      v7 = *(v6 + 1);
      if (v7 >= 0x17)
      {
        operator new();
      }

      v10 = *(v6 + 1);
      if (v7)
      {
        memcpy(__p, v6 + 8, v7);
      }

      *(__p + v7) = 0;
      sub_9A5A0(&v11, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a1 = v4;
      v3 -= 4;
    }

    while (v3);
    return v11;
  }

  return a2;
}

void sub_321AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_321B00(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_321B60(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    v3 = *(a1 + 472);
    v4 = *(a1 + 464);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 472) = v2;
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
        v4 = *(a1 + 464);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v6 = *(a1 + 440);
  if (v6)
  {
    v7 = *(a1 + 448);
    v8 = *(a1 + 440);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 3);
        if (v9)
        {
          do
          {
            v12 = *v9;
            v13 = *(v9 + 12);
            if (v13 != -1)
            {
              (off_2668E98[v13])(&v42, v9 + 5);
            }

            *(v9 + 12) = -1;
            if (*(v9 + 39) < 0)
            {
              operator delete(v9[2]);
            }

            operator delete(v9);
            v9 = v12;
          }

          while (v12);
        }

        v11 = *(v7 - 5);
        v7 -= 5;
        v10 = v11;
        *v7 = 0;
        if (v11)
        {
          operator delete(v10);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 440);
    }

    *(a1 + 448) = v6;
    operator delete(v8);
  }

  v14 = *(a1 + 416);
  if (v14)
  {
    do
    {
      v15 = *v14;
      sub_8DBE8((v14 + 2));
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(a1 + 376);
  if (v17)
  {
    *(a1 + 384) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 352);
  if (v18)
  {
    *(a1 + 360) = v18;
    operator delete(v18);
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
    if ((*(a1 + 327) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 303) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else if ((*(a1 + 327) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 304));
  if (*(a1 + 303) < 0)
  {
LABEL_41:
    operator delete(*(a1 + 280));
    std::mutex::~mutex((a1 + 216));
    v19 = *(a1 + 192);
    if (!v19)
    {
      goto LABEL_42;
    }

    while (1)
    {
LABEL_47:
      v22 = *v19;
      if (*(v19 + 63) < 0)
      {
        operator delete(v19[5]);
        if (*(v19 + 39) < 0)
        {
LABEL_51:
          operator delete(v19[2]);
        }
      }

      else if (*(v19 + 39) < 0)
      {
        goto LABEL_51;
      }

      operator delete(v19);
      v19 = v22;
      if (!v22)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_37:
  std::mutex::~mutex((a1 + 216));
  v19 = *(a1 + 192);
  if (v19)
  {
    goto LABEL_47;
  }

LABEL_42:
  v20 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 152);
  if (v21)
  {
    do
    {
      v23 = *v21;
      v24 = *(v21 + 7);
      if (v24)
      {
        do
        {
          v26 = *v24;
          v27 = *(v24 + 7);
          if (v27)
          {
            do
            {
              v29 = *v27;
              v30 = *(v27 + 12);
              if (v30 != -1)
              {
                (off_2668E98[v30])(&v43, v27 + 5);
              }

              *(v27 + 12) = -1;
              if (*(v27 + 39) < 0)
              {
                operator delete(v27[2]);
              }

              operator delete(v27);
              v27 = v29;
            }

            while (v29);
          }

          v28 = *(v24 + 5);
          *(v24 + 5) = 0;
          if (v28)
          {
            operator delete(v28);
          }

          if (v24[39] < 0)
          {
            operator delete(*(v24 + 2));
          }

          operator delete(v24);
          v24 = v26;
        }

        while (v26);
      }

      v25 = *(v21 + 5);
      *(v21 + 5) = 0;
      if (v25)
      {
        operator delete(v25);
      }

      if (v21[39] < 0)
      {
        operator delete(*(v21 + 2));
      }

      operator delete(v21);
      v21 = v23;
    }

    while (v23);
  }

  v31 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v31)
  {
    operator delete(v31);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_73:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_78;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

  operator delete(*(a1 + 88));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_74:
    v32 = *(a1 + 56);
    if (!v32)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(*(a1 + 64));
  v32 = *(a1 + 56);
  if (!v32)
  {
    goto LABEL_81;
  }

LABEL_79:
  if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_81:
  v33 = *(a1 + 24);
  if (v33)
  {
    v34 = *(a1 + 32);
    v35 = *(a1 + 24);
    if (v34 != v33)
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = *(a1 + 24);
    }

    *(a1 + 32) = v33;
    operator delete(v35);
  }

  v37 = *a1;
  if (*a1)
  {
    v38 = *(a1 + 8);
    v39 = *a1;
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = *a1;
    }

    *(a1 + 8) = v37;
    operator delete(v39);
  }

  return a1;
}

uint64_t sub_321FD8(int **a1, int a2)
{
  if (!a2)
  {
    v12 = *a1;
    v13 = (*a1 - **a1);
    v14 = *v13;
    if (*(a1 + 38))
    {
      if (v14 >= 0x9B)
      {
        v15 = v13[77];
        if (v15)
        {
          return (*&v12[v15] & 2) != 0;
        }
      }
    }

    else if (v14 >= 0x9B)
    {
      v17 = v13[77];
      if (v17)
      {
        return (*&v12[v17] & 1) != 0;
      }
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v2 = *a1;
      v3 = (*a1 - **a1);
      v4 = *v3;
      if (*(a1 + 38))
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
        v18 = v3[35];
        if (v18)
        {
          return (*&v2[v18] & 1) != 0;
        }
      }
    }

    return 0;
  }

  v7 = *a1;
  v8 = (*a1 - **a1);
  v9 = *v8;
  if (*(a1 + 38))
  {
    if (v9 < 0x39)
    {
      return 0;
    }

    v10 = v8[28];
    if (!v10)
    {
      return 0;
    }

    v11 = *&v7[v10];
    if ((v11 & 2) != 0)
    {
      return 1;
    }
  }

  else
  {
    if (v9 < 0x39)
    {
      return 0;
    }

    v16 = v8[28];
    if (!v16)
    {
      return 0;
    }

    v11 = *&v7[v16];
    if (v11)
    {
      return 1;
    }
  }

  if ((v11 & 7) == 4)
  {
    return 1;
  }

  if ((v11 & 3) != 0)
  {
    return 0;
  }

  return (v11 >> 5) & 1;
}

uint64_t sub_322118(uint64_t result, int *a2)
{
  *result = 0x7FFFFFFFFFFFFFFFLL;
  *(result + 8) = -1;
  *(result + 16) = 0x7FFFFFFF;
  *(result + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(result + 32) = 0xFFFFFFFF00000000;
  *(result + 40) = 16842752;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 2139095039;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  if (!a2)
  {
    return result;
  }

  *(result + 32) = *(a2 + *(a2 - *a2 + 4));
  v2 = *a2;
  if (*(a2 - v2) < 7u)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v3 = *(a2 - v2 + 6);
  if (!*(a2 - v2 + 6) || (v3 = *(a2 + v3), v3 != -1))
  {
LABEL_11:
    *result = v3;
    v4 = -*a2;
    v5 = (a2 - *a2);
    if (*v5 >= 9u)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v4 = -v2;
  v5 = (a2 + v4);
  if (*(a2 + v4) < 9u)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = v5[4];
  if (!v6 || (v6 = *(a2 + v6), v6 != -1))
  {
LABEL_13:
    *(result + 24) = v6;
    v7 = (a2 - *a2);
    if (*v7 < 0xBu)
    {
      return result;
    }

    goto LABEL_14;
  }

  v7 = (a2 + v4);
  if (*v7 < 0xBu)
  {
    return result;
  }

LABEL_14:
  v8 = v7[5];
  if (v8)
  {
    v9 = *(a2 + v8);
    if (v9)
    {
      if (v9 == 3)
      {
        *(result + 42) = 258;
      }

      else if (v9 == 1)
      {
        *(result + 42) = 257;
      }
    }

    else
    {
      *(result + 42) = 256;
    }
  }

  return result;
}

void sub_322274(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_322298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_2B7420();
  }

  v5 = *(*v4 + 48);

  return v5();
}

void sub_3222E0()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

void sub_322320()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

void sub_322360()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

void sub_3223A0()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

void sub_3223E0()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

void sub_322420()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_2D390(exception, "Method is not supported by the storage class", 0x2CuLL);
}

uint64_t sub_322460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2732E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732E18))
      {
        qword_2732E10 = *sub_322668() >> 3;
        __cxa_guard_release(&qword_2732E18);
      }

      v7 = qword_2732E10;
      if ((atomic_load_explicit(&qword_2732E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732E48))
      {
        v14 = *sub_3225D8();
        qword_2732E40 = v14 + (*sub_3225D8() >> 1);
        __cxa_guard_release(&qword_2732E48);
      }

      _X8 = v3 + 8 * v7 * v6 + 8 * qword_2732E40;
      __asm { PRFM            #0, [X8] }

      v3 = *(a1 + 24);
      v2 = *(a1 + 32);
      if (*a2 <= *(v3 + 8 * v6))
      {
        v6 = 2 * v6 + 1;
      }

      else
      {
        v6 = 2 * v6 + 2;
      }
    }

    while (v6 < v2);
    v15 = __clz(__rbit64(-2 - v6));
    if (v6 == -2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = (v6 + 1) >> v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v2 = v17 - 1;
  }

  return v3 + 8 * v2;
}

uint64_t *sub_3225D8()
{
  if ((atomic_load_explicit(&qword_2732E18, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2732E18))
  {
    return &qword_2732E10;
  }

  qword_2732E10 = *sub_322668() >> 3;
  __cxa_guard_release(&qword_2732E18);
  return &qword_2732E10;
}

uint64_t *sub_322668()
{
  if ((atomic_load_explicit(&qword_2732E28, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2732E28))
  {
    return &qword_2732E20;
  }

  qword_2732E20 = sub_3226F0();
  __cxa_guard_release(&qword_2732E28);
  return &qword_2732E20;
}

uint64_t sub_3226F0()
{
  if ((atomic_load_explicit(&qword_2732E38, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2732E38))
  {
    return qword_2732E30;
  }

  sub_3608D0(v4, "hw.cachelinesize");
  if (sub_322854(v4))
  {
    sub_3608D0(__p, "hw.cachelinesize");
    v1 = sub_322854(__p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v1 = 64;
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  qword_2732E30 = v1;
  __cxa_guard_release(&qword_2732E38);
  return qword_2732E30;
}

void sub_3227C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_2732E38);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  __cxa_guard_abort(&qword_2732E38);
  _Unwind_Resume(a1);
}

uint64_t sub_322854(uint64_t a1)
{
  v1 = a1;
  v9 = 8;
  v10 = 0;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (!sysctlbyname(a1, &v10, &v9, 0, 0))
  {
    return v10;
  }

  v2 = sub_4A5C(&std::cout, "WARN | Retrieving hardware information failed: ", 47);
  v3 = *(v1 + 23);
  if (v3 >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  if (v3 >= 0)
  {
    v5 = *(v1 + 23);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  v6 = sub_4A5C(v2, v4, v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

void *sub_322988(void *a1)
{
  *a1 = off_2668F00;
  bzero(a1 + 1, 0x298uLL);
  return a1;
}

unint64_t sub_3229D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8 * a2 + 328);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = a3;
  v4 = sub_322460((v3 + 4), &v13);
  v6 = v3[7];
  v5 = v3[8];
  v7 = (v6 + 8 * v5);
  if (v4 == v7 || *v4 != v13)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v3[10];
  v9 = (v4 + v8 - v6);
  v10 = (v8 + 8 * v5);
  v11 = v4 == v7 && v9 == v10;
  if (v11 || *v4 != v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v9[1] & 0xFFFFFFF | (*v9 << 32);
  }
}

uint64_t sub_322AC4@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 8 * a2 + 328);
  if (v3)
  {
    return sub_323B38(v3 + 32, a3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_322B04(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = 8; i != 328; i += 8)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      v6 = sub_3F80(v5);
      sub_DD38(a2, &v6);
    }
  }
}

void sub_322B74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_322B90@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_322BA0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((*(*a1 + 96))(a1))
  {
    return sub_2FEA90(*(a1 + 8 * a2 + 8), a3);
  }

  else
  {
    return 0;
  }
}

void *sub_322C20@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  result = (*(*a1 + 96))(a1);
  if (result)
  {
    result = sub_57478(*(a1 + 8 * a2 + 8));
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v7 = result[1];
    if (v7 != *result)
    {
      if (((v7 - *result) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_322CEC(uint64_t a1, unsigned int a2)
{
  if (!(*(*a1 + 96))(a1))
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 8);

  return sub_2FEA84(v4);
}

void *sub_322DE4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 8 * a2 + 8);
  if (!v4)
  {
    operator new();
  }

  return sub_2FED4C(v4, a3, a4);
}

void sub_322E98(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_322EE8(a1, a2);
  v7 = *a4 & 0xFFFFFFF | (*(a4 + 8) << 28);
  LODWORD(v8) = HIDWORD(*a4);
  HIDWORD(v8) = v7;
  sub_322FDC(v6, a3, &v8);
}

uint64_t sub_322EE8(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 328 + 8 * a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_322FDC(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v6 < v5)
  {
    *v6 = a2;
    *(v6 + 1) = *a3;
    v7 = (v6 + 16);
LABEL_3:
    a1[2] = v7;
    return;
  }

  v8 = a1[1];
  v9 = v6 - v8;
  v10 = (v6 - v8) >> 4;
  v11 = v10 + 1;
  if ((v10 + 1) >> 60)
  {
    sub_1794();
  }

  v12 = v5 - v8;
  if (v12 >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v14 = (16 * v10);
  v15 = *a3;
  *v14 = a2;
  v14[1] = v15;
  v7 = 16 * v10 + 16;
  memcpy(0, v8, v9);
  a1[1] = 0;
  a1[2] = v7;
  a1[3] = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  a1[2] = v7;
}

void sub_32310C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 8);
  if (!v2)
  {
    operator new();
  }

  sub_2FF0E8(v2);
}

uint64_t *sub_3231C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8 * a2 + 8);
  if (!v3)
  {
    operator new();
  }

  return sub_2FEB80(v3, a3);
}

uint64_t sub_323268(uint64_t a1, unsigned int a2)
{
  v2 = sub_322EE8(a1, a2);

  return sub_323290(v2);
}

uint64_t sub_323290(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 8);
    v3 = *(v1 + 16);
    v4 = (v1 + 8);
    v5 = 126 - 2 * __clz((v3 - v2) >> 4);
    if (v3 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    sub_323C04(v2, v3, &v17, v6, 1);
    v8 = *v4;
    v7 = v4[1];
    if (*v4 != v7)
    {
      v9 = v8 + 2;
      do
      {
        if (v9 == v7)
        {
          goto LABEL_28;
        }

        v10 = *(v9 - 2);
        v11 = *v9;
        v9 += 2;
      }

      while (v10 != v11);
      v8 = v9 - 4;
    }

    if (v8 == v7 || !sub_7E7E4(3u))
    {
LABEL_28:
      sub_324F18(&v17, v4);
    }

    sub_19594F8(&v17);
    sub_4A5C(&v17, "Duplicate geoid found during finalize:", 38);
    std::ostream::operator<<();
    if ((v27 & 0x10) != 0)
    {
      v13 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v13 = v23;
      }

      v14 = v22;
      v12 = v13 - v22;
      if (v13 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v12 = 0;
        v16 = 0;
LABEL_23:
        *(__p + v12) = 0;
        sub_7E854(__p, 3u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&v19);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_28;
      }

      v14 = v20;
      v12 = *(&v21 + 1) - v20;
      if (*(&v21 + 1) - v20 >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_31:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v16 = v12;
    if (v12)
    {
      memmove(__p, v14, v12);
    }

    goto LABEL_23;
  }

  return result;
}

void sub_323658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

double sub_32369C(void *a1, void *a2)
{
  sub_32A85C(&v5, a2);
  v3 = a1[81];
  if (v3)
  {
    a1[82] = v3;
    operator delete(v3);
  }

  result = *&v5;
  *(a1 + 81) = v5;
  a1[83] = v6;
  return result;
}

void *sub_3236F0(void *a1)
{
  *a1 = off_2668F00;
  v2 = a1[81];
  if (v2)
  {
    a1[82] = v2;
    operator delete(v2);
  }

  sub_32386C((a1 + 41));
  sub_323934(a1 + 1);
  return a1;
}

void sub_323750(void *a1)
{
  *a1 = off_2668F00;
  v2 = a1[81];
  if (v2)
  {
    a1[82] = v2;
    operator delete(v2);
  }

  v3 = 80;
  while (1)
  {
    v4 = a1[v3];
    a1[v3] = 0;
    if (v4)
    {
      break;
    }

    if (--v3 == 40)
    {
      sub_323934(a1 + 1);

      operator delete();
    }
  }

  v5 = *(v4 + 80);
  *(v4 + 80) = 0;
  if (v5 && (*(v4 + 88) & 1) == 0)
  {
    operator delete[]();
  }

  v6 = *(v4 + 32);
  *(v4 + 32) = 0;
  if (v6 && (*(v4 + 48) & 1) == 0)
  {
    free(v6);
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    *(v4 + 16) = v7;
    operator delete(v7);
  }

  operator delete();
}

uint64_t sub_32386C(uint64_t result)
{
  for (i = 312; i != -8; i -= 8)
  {
    v2 = *(result + i);
    *(result + i) = 0;
    if (v2)
    {
      v3 = *(v2 + 80);
      *(v2 + 80) = 0;
      if (v3 && (*(v2 + 88) & 1) == 0)
      {
        operator delete[]();
      }

      v4 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v4 && (*(v2 + 48) & 1) == 0)
      {
        free(v4);
      }

      v5 = *(v2 + 8);
      if (v5)
      {
        *(v2 + 16) = v5;
        operator delete(v5);
      }

      operator delete();
    }
  }

  return result;
}

void *sub_323934(void *a1)
{
  sub_325564(a1 + 39, 0);
  sub_325564(a1 + 38, 0);
  sub_325564(a1 + 37, 0);
  sub_325564(a1 + 36, 0);
  sub_325564(a1 + 35, 0);
  sub_325564(a1 + 34, 0);
  sub_325564(a1 + 33, 0);
  sub_325564(a1 + 32, 0);
  sub_325564(a1 + 31, 0);
  sub_325564(a1 + 30, 0);
  sub_325564(a1 + 29, 0);
  sub_325564(a1 + 28, 0);
  sub_325564(a1 + 27, 0);
  sub_325564(a1 + 26, 0);
  sub_325564(a1 + 25, 0);
  sub_325564(a1 + 24, 0);
  sub_325564(a1 + 23, 0);
  sub_325564(a1 + 22, 0);
  sub_325564(a1 + 21, 0);
  sub_325564(a1 + 20, 0);
  sub_325564(a1 + 19, 0);
  sub_325564(a1 + 18, 0);
  sub_325564(a1 + 17, 0);
  sub_325564(a1 + 16, 0);
  sub_325564(a1 + 15, 0);
  sub_325564(a1 + 14, 0);
  sub_325564(a1 + 13, 0);
  sub_325564(a1 + 12, 0);
  sub_325564(a1 + 11, 0);
  sub_325564(a1 + 10, 0);
  sub_325564(a1 + 9, 0);
  sub_325564(a1 + 8, 0);
  sub_325564(a1 + 7, 0);
  sub_325564(a1 + 6, 0);
  sub_325564(a1 + 5, 0);
  sub_325564(a1 + 4, 0);
  sub_325564(a1 + 3, 0);
  sub_325564(a1 + 2, 0);
  sub_325564(a1 + 1, 0);
  sub_325564(a1, 0);
  return a1;
}

uint64_t sub_323B38@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 32);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_323BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_323C04(uint64_t *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 8;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = (a2 - v11) >> 4;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:
              v99 = v11[2];
              v100 = *v11;
              v101 = *(a2 - 2);
              if (v99 >= *v11)
              {
                if (v101 >= v99)
                {
                  return result;
                }

                v11[2] = v101;
                *(a2 - 2) = v99;
                v10 = (v11 + 3);
                v120 = v11[3];
                v11[3] = *(a2 - 1);
                *(a2 - 1) = v120;
                v121 = v11[2];
                v122 = *v11;
                if (v121 >= *v11)
                {
                  return result;
                }

                *v11 = v121;
                v11[2] = v122;
                v102 = (v11 + 1);
              }

              else
              {
                if (v101 >= v99)
                {
                  v102 = (v11 + 3);
                  v134 = v11[3];
                  v135 = v11[1];
                  *v11 = v99;
                  v11[1] = v134;
                  v11[2] = v100;
                  v11[3] = v135;
                  v136 = *(a2 - 2);
                  if (v136 >= v100)
                  {
                    return result;
                  }

                  v11[2] = v136;
                }

                else
                {
                  v102 = (v11 + 1);
                  *v11 = v101;
                }

                *(a2 - 2) = v100;
              }

              v137 = *v102;
              *v102 = *v10;
              *v10 = v137;
              return result;
            case 4:
              v103 = v11[2];
              v104 = *v11;
              v105 = v11[4];
              if (v103 >= *v11)
              {
                if (v105 >= v103)
                {
                  v103 = v11[4];
                }

                else
                {
                  v123 = (v11 + 3);
                  v124 = v11[3];
                  v125 = v11[5];
                  v11[2] = v105;
                  v11[3] = v125;
                  v11[4] = v103;
                  v11[5] = v124;
                  if (v105 < v104)
                  {
                    *v11 = v105;
                    v11[2] = v104;
                    v106 = (v11 + 1);
                    goto LABEL_163;
                  }
                }

                v141 = *(a2 - 2);
                if (v141 >= v103)
                {
                  return result;
                }
              }

              else
              {
                if (v105 < v103)
                {
                  v106 = (v11 + 1);
                  *v11 = v105;
                  goto LABEL_162;
                }

                v106 = (v11 + 3);
                v138 = v11[3];
                v139 = v11[1];
                *v11 = v103;
                v11[1] = v138;
                v11[2] = v104;
                v11[3] = v139;
                if (v105 >= v104)
                {
                  v103 = v105;
                  v141 = *(a2 - 2);
                  if (v141 >= v105)
                  {
                    return result;
                  }
                }

                else
                {
                  v11[2] = v105;
LABEL_162:
                  v11[4] = v104;
                  v123 = (v11 + 5);
LABEL_163:
                  v140 = *v106;
                  *v106 = *v123;
                  *v123 = v140;
                  v103 = v11[4];
                  v141 = *(a2 - 2);
                  if (v141 >= v103)
                  {
                    return result;
                  }
                }
              }

              v11[4] = v141;
              *(a2 - 2) = v103;
              v142 = v11[5];
              v11[5] = *(a2 - 1);
              *(a2 - 1) = v142;
              v143 = v11[4];
              v144 = v11[2];
              if (v143 < v144)
              {
                v145 = v11[3];
                v146 = v11[5];
                v11[2] = v143;
                v11[3] = v146;
                v11[4] = v144;
                v11[5] = v145;
                v147 = *v11;
                if (v143 < *v11)
                {
                  v148 = v11[1];
                  *v11 = v143;
                  v11[1] = v146;
                  v11[2] = v147;
                  v11[3] = v148;
                }
              }

              return result;
            case 5:

              return sub_3245E0(v11, v11 + 2, v11 + 4, v11 + 6, a2 - 2);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v96 = *(a2 - 2);
            v97 = *v11;
            if (v96 < *v11)
            {
              *v11 = v96;
              *(a2 - 2) = v97;
              v98 = v11[1];
              v11[1] = *(a2 - 1);
              *(a2 - 1) = v98;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          v107 = (v11 + 2);
          v109 = v11 == a2 || v107 == a2;
          if (a5)
          {
            if (!v109)
            {
              v110 = 0;
              v111 = v11;
              do
              {
                v113 = v107;
                v114 = v111[2];
                v115 = *v111;
                if (v114 < *v111)
                {
                  v116 = v111[3];
                  v117 = v110;
                  do
                  {
                    v118 = v11 + v117;
                    v119 = *(v11 + v117 + 8);
                    *(v118 + 2) = v115;
                    *(v118 + 3) = v119;
                    if (!v117)
                    {
                      v112 = v11;
                      goto LABEL_132;
                    }

                    v115 = *(v118 - 2);
                    v117 -= 16;
                  }

                  while (v114 < v115);
                  v112 = (v11 + v117 + 16);
LABEL_132:
                  *v112 = v114;
                  v112[1] = v116;
                }

                v107 = v113 + 16;
                v110 += 16;
                v111 = v113;
              }

              while (v113 + 16 != a2);
            }
          }

          else if (!v109)
          {
            v126 = v11 + 3;
            do
            {
              v127 = v107;
              v128 = v9[2];
              v129 = *v9;
              if (v128 < *v9)
              {
                v130 = v9[3];
                v131 = v126;
                do
                {
                  v132 = v131;
                  v133 = *(v131 - 2);
                  v131 -= 2;
                  *(v132 - 1) = v129;
                  *v132 = v133;
                  v129 = *(v132 - 5);
                }

                while (v128 < v129);
                *(v131 - 1) = v128;
                *v131 = v130;
              }

              v107 = v127 + 16;
              v126 += 2;
              v9 = v127;
            }

            while (v127 + 16 != a2);
          }

          return result;
        }

        if (!a4)
        {
          if (v11 != a2)
          {

            return sub_324B5C(v11, a2, a2);
          }

          return result;
        }

        v13 = &v11[2 * (v12 >> 1)];
        v14 = v13;
        v15 = *(a2 - 2);
        if (v12 >= 0x81)
        {
          v16 = *v13;
          v17 = *v11;
          if (*v13 >= *v11)
          {
            if (v15 >= v16 || (*v13 = v15, *(a2 - 2) = v16, v22 = (v13 + 1), v23 = v13[1], v13[1] = *(a2 - 1), *(a2 - 1) = v23, v24 = *v11, *v13 >= *v11))
            {
LABEL_29:
              v32 = v13 - 2;
              v33 = *(v13 - 2);
              v34 = v11[2];
              v35 = *(a2 - 4);
              if (v33 >= v34)
              {
                if (v35 >= v33 || (*v32 = v35, *(a2 - 4) = v33, v38 = (v13 - 1), v37 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v37, v39 = v11[2], *v32 >= v39))
                {
LABEL_42:
                  v49 = v13[2];
                  v47 = v13 + 2;
                  v48 = v49;
                  v50 = v11[4];
                  v51 = *(a2 - 6);
                  if (v49 >= v50)
                  {
                    if (v51 >= v48 || (*v47 = v51, *(a2 - 6) = v48, v54 = (v47 + 1), v53 = v47[1], v47[1] = *(a2 - 5), *(a2 - 5) = v53, v48 = *v47, v55 = v11[4], *v47 >= v55))
                    {
LABEL_52:
                      v60 = *v14;
                      v61 = *v32;
                      if (*v14 < *v32)
                      {
LABEL_53:
                        if (v48 >= v60)
                        {
                          v64 = v14[1];
                          *v14 = v61;
                          v65 = v32[1];
                          *v32 = v60;
                          v32[1] = v64;
                          v14[1] = v65;
                          if (v48 >= v61)
                          {
                            v60 = v61;
                            goto LABEL_63;
                          }

                          *v14 = v48;
                          *v47 = v61;
                          v63 = (v47 + 1);
                          v62 = (v14 + 1);
                        }

                        else
                        {
                          *v32 = v48;
                          v62 = (v32 + 1);
                          *v47 = v61;
                          v63 = (v47 + 1);
                        }

                        v66 = v63;
                        goto LABEL_62;
                      }

LABEL_59:
                      if (v48 >= v60)
                      {
LABEL_63:
                        v69 = *v11;
                        *v11 = v60;
                        v21 = (v11 + 1);
                        *v14 = v69;
                        v27 = (v14 + 1);
                        goto LABEL_64;
                      }

                      v66 = (v14 + 1);
                      v67 = v14[1];
                      *v14 = v48;
                      v14[1] = v47[1];
                      *v47 = v60;
                      v47[1] = v67;
                      if (v48 >= v61)
                      {
                        v60 = v48;
                        goto LABEL_63;
                      }

                      *v32 = v48;
                      v62 = (v32 + 1);
                      *v14 = v61;
LABEL_62:
                      v68 = *v62;
                      *v62 = *v66;
                      *v66 = v68;
                      v60 = *v14;
                      goto LABEL_63;
                    }

                    v11[4] = v48;
                    *v47 = v55;
                    v52 = (v11 + 5);
                  }

                  else
                  {
                    if (v51 >= v48)
                    {
                      v52 = (v47 + 1);
                      v56 = v47[1];
                      v57 = v11[5];
                      v11[4] = v48;
                      v11[5] = v56;
                      *v47 = v50;
                      v47[1] = v57;
                      v58 = *(a2 - 6);
                      if (v58 >= v50)
                      {
                        v48 = v50;
                        v60 = *v14;
                        v61 = *v32;
                        if (*v14 < *v32)
                        {
                          goto LABEL_53;
                        }

                        goto LABEL_59;
                      }

                      *v47 = v58;
                    }

                    else
                    {
                      v52 = (v11 + 5);
                      v11[4] = v51;
                    }

                    *(a2 - 6) = v50;
                    v54 = a2 - 40;
                  }

                  v59 = *v52;
                  *v52 = *v54;
                  *v54 = v59;
                  v48 = *v47;
                  goto LABEL_52;
                }

                v11[2] = *v32;
                *v32 = v39;
                v36 = v11 + 3;
              }

              else
              {
                if (v35 >= v33)
                {
                  v36 = v13 - 1;
                  v43 = *(v13 - 1);
                  v44 = v11[3];
                  v11[2] = v33;
                  v11[3] = v43;
                  *v32 = v34;
                  *(v13 - 1) = v44;
                  v45 = *(a2 - 4);
                  if (v45 >= v34)
                  {
                    goto LABEL_42;
                  }

                  *v32 = v45;
                }

                else
                {
                  v36 = v11 + 3;
                  v11[2] = v35;
                }

                *(a2 - 4) = v34;
                v38 = a2 - 24;
              }

              v46 = *v36;
              *v36 = *v38;
              *v38 = v46;
              goto LABEL_42;
            }

            *v11 = *v13;
            v18 = (v11 + 1);
            *v13 = v24;
          }

          else
          {
            if (v15 >= v16)
            {
              v18 = (v13 + 1);
              v28 = v13[1];
              v29 = v11[1];
              *v11 = v16;
              v11[1] = v28;
              *v13 = v17;
              v13[1] = v29;
              v30 = *(a2 - 2);
              if (v30 >= v17)
              {
                goto LABEL_29;
              }

              *v13 = v30;
            }

            else
            {
              v18 = (v11 + 1);
              *v11 = v15;
            }

            *(a2 - 2) = v17;
            v22 = a2 - 8;
          }

          v31 = *v18;
          *v18 = *v22;
          *v22 = v31;
          goto LABEL_29;
        }

        v19 = *v11;
        v20 = *v13;
        if (*v11 >= *v13)
        {
          if (v15 < v19)
          {
            *v11 = v15;
            *(a2 - 2) = v19;
            v25 = v11[1];
            v11[1] = *(a2 - 1);
            *(a2 - 1) = v25;
            v26 = *v14;
            if (*v11 < *v14)
            {
              *v14 = *v11;
              *v11 = v26;
              v21 = (v14 + 1);
              v27 = (v11 + 1);
LABEL_64:
              v70 = *v21;
              *v21 = *v27;
              *v27 = v70;
            }
          }
        }

        else
        {
          if (v15 < v19)
          {
            v21 = (v13 + 1);
            *v14 = v15;
LABEL_37:
            *(a2 - 2) = v20;
            v27 = a2 - 8;
            goto LABEL_64;
          }

          v21 = (v11 + 1);
          v40 = v11[1];
          v41 = v14[1];
          *v14 = v19;
          v14[1] = v40;
          *v11 = v20;
          v11[1] = v41;
          v42 = *(a2 - 2);
          if (v42 < v20)
          {
            *v11 = v42;
            goto LABEL_37;
          }
        }

        --a4;
        v71 = *v11;
        if ((a5 & 1) != 0 || *(v11 - 2) < v71)
        {
          break;
        }

        if (v71 >= *(a2 - 2))
        {
          v87 = v11 + 2;
          do
          {
            v11 = v87;
            if (v87 >= a2)
            {
              break;
            }

            v87 += 2;
          }

          while (v71 >= *v11);
        }

        else
        {
          do
          {
            v86 = v11[2];
            v11 += 2;
          }

          while (v71 >= v86);
        }

        v88 = a2;
        if (v11 < a2)
        {
          v88 = a2;
          do
          {
            v89 = *(v88 - 2);
            v88 -= 2;
          }

          while (v71 < v89);
        }

        v90 = v9[1];
        if (v11 < v88)
        {
          v91 = *v11;
          v92 = *v88;
          do
          {
            *v11 = v92;
            *v88 = v91;
            v93 = v11[1];
            v11[1] = v88[1];
            v88[1] = v93;
            do
            {
              v94 = v11[2];
              v11 += 2;
              v91 = v94;
            }

            while (v71 >= v94);
            do
            {
              v95 = *(v88 - 2);
              v88 -= 2;
              v92 = v95;
            }

            while (v71 < v95);
          }

          while (v11 < v88);
        }

        if (v11 - 2 != v9)
        {
          *v9 = *(v11 - 2);
          v9[1] = *(v11 - 1);
        }

        a5 = 0;
        *(v11 - 2) = v71;
        *(v11 - 1) = v90;
      }

      v72 = 0;
      v73 = v11[1];
      do
      {
        v74 = v11[v72 + 2];
        v72 += 2;
      }

      while (v74 < v71);
      v75 = &v11[v72];
      v76 = a2;
      if (v72 == 2)
      {
        v76 = a2;
        do
        {
          if (v75 >= v76)
          {
            break;
          }

          v78 = *(v76 - 2);
          v76 -= 16;
        }

        while (v78 >= v71);
      }

      else
      {
        do
        {
          v77 = *(v76 - 2);
          v76 -= 16;
        }

        while (v77 >= v71);
      }

      if (v75 >= v76)
      {
        v11 = (v11 + v72 * 8);
        v84 = v75 - 16;
        if (v75 - 16 != v9)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v79 = *v76;
        v11 = (v11 + v72 * 8);
        v80 = v76;
        do
        {
          *v11 = v79;
          *v80 = v74;
          v81 = v11[1];
          v11[1] = v80[1];
          v80[1] = v81;
          do
          {
            v82 = v11[2];
            v11 += 2;
            v74 = v82;
          }

          while (v82 < v71);
          do
          {
            v83 = *(v80 - 2);
            v80 -= 2;
            v79 = v83;
          }

          while (v83 >= v71);
        }

        while (v11 < v80);
        v84 = (v11 - 2);
        if (v11 - 2 != v9)
        {
LABEL_82:
          *v9 = *(v11 - 2);
          v9[1] = *(v11 - 1);
        }
      }

      *(v11 - 2) = v71;
      *(v11 - 1) = v73;
      if (v75 < v76)
      {
        goto LABEL_86;
      }

      v85 = sub_3247B0(v9, v84);
      result = sub_3247B0(v11, a2);
      if (result)
      {
        break;
      }

      if (!v85)
      {
LABEL_86:
        result = sub_323C04(v9, v84, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    a2 = v84;
    if (!v85)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_3245E0(uint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_3247B0(unint64_t *a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[2];
      v8 = *a1;
      v9 = *(a2 - 2);
      if (v7 >= *a1)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        a1[2] = v9;
        *(a2 - 2) = v7;
        v21 = (a1 + 3);
        v20 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v20;
        v22 = a1[2];
        v23 = *a1;
        if (v22 >= *a1)
        {
          return 1;
        }

        *a1 = v22;
        a1[2] = v23;
        v10 = (a1 + 1);
      }

      else
      {
        if (v9 >= v7)
        {
          v10 = (a1 + 3);
          v30 = a1[3];
          v31 = a1[1];
          *a1 = v7;
          a1[1] = v30;
          a1[2] = v8;
          a1[3] = v31;
          v32 = *(a2 - 2);
          if (v32 >= v8)
          {
            return 1;
          }

          a1[2] = v32;
        }

        else
        {
          v10 = (a1 + 1);
          *a1 = v9;
        }

        *(a2 - 2) = v8;
        v21 = a2 - 8;
      }

      v33 = *v10;
      *v10 = *v21;
      *v21 = v33;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_3245E0(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

LABEL_14:
      v11 = (a1 + 4);
      v12 = a1[4];
      v13 = a1[2];
      v14 = *a1;
      if (v13 >= *a1)
      {
        if (v12 >= v13)
        {
          goto LABEL_37;
        }

        v25 = (a1 + 3);
        v24 = a1[3];
        v26 = a1[5];
        a1[2] = v12;
        a1[3] = v26;
        a1[4] = v13;
        a1[5] = v24;
        if (v12 >= v14)
        {
          goto LABEL_37;
        }

        *a1 = v12;
        a1[2] = v14;
        v15 = (a1 + 1);
      }

      else
      {
        if (v12 >= v13)
        {
          v15 = (a1 + 3);
          v34 = a1[3];
          v35 = a1[1];
          *a1 = v13;
          a1[1] = v34;
          a1[2] = v14;
          a1[3] = v35;
          if (v12 >= v14)
          {
LABEL_37:
            v37 = (a1 + 6);
            if (a1 + 6 == a2)
            {
              return 1;
            }

            v38 = 0;
            v39 = 0;
            while (1)
            {
              v40 = *v37;
              v41 = *v11;
              if (*v37 < *v11)
              {
                break;
              }

LABEL_46:
              v11 = v37;
              v38 += 16;
              v37 += 16;
              if (v37 == a2)
              {
                return 1;
              }
            }

            v42 = *(v37 + 1);
            v43 = v38;
            do
            {
              v44 = (a1 + v43);
              v45 = *(a1 + v43 + 40);
              v44[6] = v41;
              v44[7] = v45;
              if (v43 == -32)
              {
                *a1 = v40;
                a1[1] = v42;
                if (++v39 != 8)
                {
                  goto LABEL_46;
                }

                return v37 + 16 == a2;
              }

              v41 = v44[2];
              v43 -= 16;
            }

            while (v40 < v41);
            v46 = a1 + v43;
            *(v46 + 6) = v40;
            *(v46 + 7) = v42;
            if (++v39 != 8)
            {
              goto LABEL_46;
            }

            return v37 + 16 == a2;
          }

          a1[2] = v12;
        }

        else
        {
          v15 = (a1 + 1);
          *a1 = v12;
        }

        a1[4] = v14;
        v25 = (a1 + 5);
      }

      v36 = *v15;
      *v15 = *v25;
      *v25 = v36;
      goto LABEL_37;
    }

    v16 = a1[2];
    v17 = *a1;
    v18 = a1[4];
    if (v16 >= *a1)
    {
      if (v18 >= v16)
      {
        goto LABEL_53;
      }

      v28 = (a1 + 3);
      v27 = a1[3];
      v29 = a1[5];
      a1[2] = v18;
      a1[3] = v29;
      a1[4] = v16;
      a1[5] = v27;
      if (v18 >= v17)
      {
        goto LABEL_52;
      }

      *a1 = v18;
      a1[2] = v17;
      v19 = (a1 + 1);
    }

    else
    {
      if (v18 >= v16)
      {
        v19 = (a1 + 3);
        v47 = a1[3];
        v48 = a1[1];
        *a1 = v16;
        a1[1] = v47;
        a1[2] = v17;
        a1[3] = v48;
        if (v18 >= v17)
        {
          goto LABEL_53;
        }

        a1[2] = v18;
      }

      else
      {
        v19 = (a1 + 1);
        *a1 = v18;
      }

      a1[4] = v17;
      v28 = (a1 + 5);
      v16 = v17;
    }

    v49 = *v19;
    *v19 = *v28;
    *v28 = v49;
LABEL_52:
    v18 = v16;
LABEL_53:
    v50 = *(a2 - 2);
    if (v50 >= v18)
    {
      return 1;
    }

    a1[4] = v50;
    *(a2 - 2) = v18;
    v51 = a1[5];
    a1[5] = *(a2 - 1);
    *(a2 - 1) = v51;
    v52 = a1[4];
    v53 = a1[2];
    if (v52 >= v53)
    {
      return 1;
    }

    v54 = a1[3];
    v55 = a1[5];
    a1[2] = v52;
    a1[3] = v55;
    a1[4] = v53;
    a1[5] = v54;
    v56 = *a1;
    if (v52 >= *a1)
    {
      return 1;
    }

    v57 = a1[1];
    *a1 = v52;
    a1[1] = v55;
    a1[2] = v56;
    a1[3] = v57;
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

  v4 = *(a2 - 2);
  v5 = *a1;
  if (v4 >= *a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 2) = v5;
  v6 = a1[1];
  a1[1] = *(a2 - 1);
  *(a2 - 1) = v6;
  return 1;
}

char *sub_324B5C(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0xFFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[16 * v7];
        if (2 * (v5 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[16 * v5];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *(v8 + 2);
          v10 = *v8 >= v9;
          if (*v8 > v9)
          {
            v9 = *v8;
          }

          if (!v10)
          {
            v8 += 16;
            v7 = 2 * (v5 & 0xFFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[16 * v5];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_15:
            v13 = *(v11 + 1);
            while (1)
            {
              v15 = v11;
              v11 = v8;
              *v15 = v9;
              v15[1] = *(v8 + 1);
              if (v4 < v7)
              {
                break;
              }

              v16 = (2 * v7) | 1;
              v8 = &a1[16 * v16];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v14 = *(v8 + 2);
                if (*v8 <= v14)
                {
                  v9 = *(v8 + 2);
                }

                if (*v8 >= v14)
                {
                  v7 = v16;
                }

                else
                {
                  v8 += 16;
                }

                if (v9 < v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v16;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 1) = v13;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        v18 = *i;
        if (*i < *a1)
        {
          *i = *a1;
          *a1 = v18;
          v19 = *(i + 1);
          *(i + 1) = *(a1 + 1);
          *(a1 + 1) = v19;
        }

        i += 16;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v20 = (a1 + 32);
    for (i = a2; i != a3; i += 16)
    {
      v21 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v21;
        v22 = *(i + 1);
        *(i + 1) = *(a1 + 1);
        *(a1 + 1) = v22;
        v23 = *(a1 + 2);
        if (a2 - a1 == 32)
        {
          v24 = a1 + 16;
          v25 = 1;
          v26 = *a1;
          if (v23 >= *a1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v27 = v23 >= *v20;
          if (v23 <= *v20)
          {
            v23 = *v20;
          }

          if (v27)
          {
            v24 = a1 + 16;
          }

          else
          {
            v24 = a1 + 32;
          }

          if (v27)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          v26 = *a1;
          if (v23 >= *a1)
          {
LABEL_48:
            v28 = a1;
            while (1)
            {
              v30 = v28;
              v28 = v24;
              *v30 = v23;
              v30[1] = *(v24 + 1);
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v31 = (2 * v25) | 1;
              v24 = &a1[16 * v31];
              v25 = 2 * v25 + 2;
              if (v25 < v3)
              {
                v23 = *v24;
                v29 = *(v24 + 2);
                if (*v24 <= v29)
                {
                  v23 = *(v24 + 2);
                }

                if (*v24 >= v29)
                {
                  v25 = v31;
                }

                else
                {
                  v24 += 16;
                }

                if (v23 < v26)
                {
                  break;
                }
              }

              else
              {
                v23 = *v24;
                v25 = v31;
                if (*v24 < v26)
                {
                  break;
                }
              }
            }

            *v28 = v26;
            *(v28 + 1) = v22;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v33 = 0;
      v34 = *a1;
      v35 = *(a1 + 1);
      v36 = (v3 - 2) >> 1;
      v37 = a1;
      do
      {
        while (1)
        {
          v44 = &v37[16 * v33];
          v43 = v44 + 16;
          v45 = (2 * v33) | 1;
          v33 = 2 * v33 + 2;
          if (v33 < v3)
          {
            break;
          }

          v33 = v45;
          *v37 = *v43;
          *(v37 + 1) = *(v44 + 3);
          v37 = v44 + 16;
          if (v45 > v36)
          {
            goto LABEL_73;
          }
        }

        v40 = *(v44 + 4);
        v38 = v44 + 32;
        v39 = v40;
        v41 = *(v38 - 2);
        v42 = v41 >= v40;
        if (v41 > v40)
        {
          v39 = *(v38 - 2);
        }

        if (v42)
        {
          v33 = v45;
        }

        else
        {
          v43 = v38;
        }

        *v37 = v39;
        *(v37 + 1) = *(v43 + 1);
        v37 = v43;
      }

      while (v33 <= v36);
LABEL_73:
      if (v43 == a2 - 16)
      {
        *v43 = v34;
        *(v43 + 1) = v35;
      }

      else
      {
        *v43 = *(a2 - 2);
        *(v43 + 1) = *(a2 - 1);
        *(a2 - 2) = v34;
        *(a2 - 1) = v35;
        v46 = (v43 - a1 + 16) >> 4;
        v6 = v46 < 2;
        v47 = v46 - 2;
        if (!v6)
        {
          v48 = v47 >> 1;
          v49 = &a1[16 * v48];
          v50 = *v49;
          v51 = *v43;
          if (*v49 < *v43)
          {
            v52 = *(v43 + 1);
            do
            {
              v53 = v43;
              v43 = v49;
              *v53 = v50;
              *(v53 + 1) = *(v49 + 1);
              if (!v48)
              {
                break;
              }

              v48 = (v48 - 1) >> 1;
              v49 = &a1[16 * v48];
              v50 = *v49;
            }

            while (*v49 < v51);
            *v43 = v51;
            *(v43 + 1) = v52;
          }
        }
      }

      a2 -= 16;
      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void sub_324F18(void *a1, void *a2)
{
  v2 = a2[1] - *a2;
  *a1 = 0;
  a1[1] = (v2 >> 4) + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2 >> 4;
  a1[5] = 1;
  operator new[]();
}

void sub_325034(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4 && (*(v1 + 56) & 1) == 0)
  {
    operator delete[]();
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    if ((*v2 & 1) == 0)
    {
      free(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_325088(uint64_t result, void *a2, uint64_t *a3, int a4)
{
  v4 = *(result + 32);
  if (v4)
  {
      ;
    }

    *(result + 40) = i - 1;
    sub_3251D8(result);
    if (a4)
    {
      v10 = 0;
      sub_3252CC();
    }

    v9 = *a3;
    if (v9 != *a2)
    {
      if (((v9 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_323C04(0, 0, &v10, 0, 1);
    v10 = 0;
    sub_3252CC();
  }

  return result;
}

void sub_3251BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3251D8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2732E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732E28))
  {
    qword_2732E20 = sub_3226F0();
    __cxa_guard_release(&qword_2732E28);
  }

  if (malloc_type_posix_memalign((a1 + 24), qword_2732E20, 8 * *(a1 + 32) + 8, 0x5B22F590uLL))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Memory allocation failed.", 0x19uLL);
  }

  v2 = *(a1 + 24);
  v3 = *a1;
  *a1 = v2;
  if (v3 && (*(a1 + 16) & 1) == 0)
  {
    free(v3);
    v2 = *a1;
  }

  *v2 = 0;
  *(a1 + 24) = v2 + 1;
}

void sub_325540(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_325564(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v2[10] = v3;
      operator delete(v3);
    }

    v4 = v2[6];
    if (v4)
    {
      v2[7] = v4;
      operator delete(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = v2[1];
    v2[1] = 0;
    if (v7)
    {
      operator delete(v7);
    }

    operator delete();
  }

  return result;
}

void sub_325604(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_2668FF0;
  *(a1 + 24) = 0;
  *(a1 + 32) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_325A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_21E1388(v4);
  }

  sub_1F1A8(va1);
  sub_1F1A8(va2);
  sub_1F1A8(va);
  sub_1F1A8(v3);
  v7 = *(v2 + 16);
  if (!v7)
  {
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_325AD8()
{
  if (!sub_7E7E4(1u))
  {
    return 0xFFFFFFFFLL;
  }

  sub_19594F8(&v8);
  v0 = sub_4A5C(&v8, "Unsupported method ", 19);
  v1 = sub_4A5C(v0, "virtual RawEntityLookupEntry msl::data::OfflineDataProviderStorage::get_entity_by_id(LayerId, entity_id_t) const", 112);
  sub_4A5C(v1, " called; returning default value", 32);
  if ((v18 & 0x10) != 0)
  {
    v3 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v3 = v14;
    }

    v4 = v13;
    v2 = v3 - v13;
    if (v3 - v13 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }

LABEL_8:
    if (v2 >= 0x17)
    {
      operator new();
    }

    v7 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_13;
  }

  if ((v18 & 8) != 0)
  {
    v4 = v11;
    v2 = v12 - v11;
    if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v2 = 0;
  v7 = 0;
LABEL_13:
  *(&__p + v2) = 0;
  sub_7E854(&__p, 1u);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::locale::~locale(&v10);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0xFFFFFFFFLL;
}

void sub_325D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_325D94@<X0>(void *a1@<X8>)
{
  result = sub_7E7E4(1u);
  if (!result)
  {
    goto LABEL_18;
  }

  sub_19594F8(&v10);
  v3 = sub_4A5C(&v10, "Unsupported method ", 19);
  v4 = sub_4A5C(v3, "virtual common::Vector<entity_id_t> msl::data::OfflineDataProviderStorage::get_entity_ids(LayerId) const", 104);
  sub_4A5C(v4, " called; returning default value", 32);
  if ((v20 & 0x10) != 0)
  {
    v6 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v6 = v16;
    }

    v7 = v15;
    v5 = v6 - v15;
    if (v6 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }

LABEL_8:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_13;
  }

  if ((v20 & 8) != 0)
  {
    v7 = v13;
    v5 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v5 = 0;
  v9 = 0;
LABEL_13:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  result = std::ios::~ios();
LABEL_18:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_326008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void *sub_326054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 64))(a1, 35, 1);
  if (v4)
  {
    v4 = v3 + *v3;
  }

  sub_2AFE90(&v6, v4);
  return sub_2B04F0(&v6, a2);
}

double sub_3260C8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_3260D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = memcpy(a2, (a1 + 216), 0x8F8uLL);
  a2[2296] = 1;
  return result;
}

uint64_t sub_326110(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 2456) = *(a1 + 2456) + 1.0;
  std::mutex::lock((a1 + 152));
  v8[0] = a2;
  v8[1] = a3;
  v6 = **sub_32619C(a1, v8);
  std::mutex::unlock((a1 + 152));
  return v6;
}

uint64_t *sub_32619C(uint64_t a1, unsigned int *a2)
{
  if (!sub_32951C((a1 + 72), a2))
  {
    *(a1 + 8 * *a2 + 1816) = *(a1 + 8 * *a2 + 1816) + 1.0;
    sub_7E9A4(v16);
    v6 = *(a1 + 32);
    sub_2FF7C4(a2, v11);
    (*(*v6 + 24))(&v14, v6, v11);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    *(a1 + 2488) = sub_7EA60(v16) + *(a1 + 2488);
    v9 = v14;
    v14 = 0uLL;
    v10 = v15;
    sub_327174(a1, a2, &v9);
    v7 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v4 = sub_329E94((a1 + 72), a2);
  if (!v4)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v4 + 3;
}

void sub_326338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a17);
  _Unwind_Resume(a1);
}

void sub_326354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_32672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (!atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    sub_21E1388(v5);
  }

  sub_3267DC(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_3267DC(uint64_t result)
{
  v1 = *(result + 16);
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

unsigned int *sub_326854(uint64_t a1, int a2)
{
  v3 = (*(*a1 + 64))(a1, 35, 1);
  if (v4)
  {
    v4 = v3 + *v3;
  }

  sub_2AFE90(&v6, v4);
  return sub_2B065C(&v6, a2);
}

BOOL sub_3268C8(uint64_t a1, int a2)
{
  v3 = (*(*a1 + 64))(a1, 35, 1);
  if (v4)
  {
    v4 = v3 + *v3;
  }

  sub_2AFE90(&v6, v4);
  return sub_2B0708(&v6, a2);
}

BOOL sub_32693C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 2464) = *(a1 + 2464) + 1.0;
  std::mutex::lock((a1 + 152));
  v8[0] = a2;
  v8[1] = a3;
  v6 = sub_3269C0(a1, v8);
  std::mutex::unlock((a1 + 152));
  return v6;
}

BOOL sub_3269C0(uint64_t a1, unsigned int *a2)
{
  if (sub_32951C((a1 + 72), a2))
  {
    v4 = sub_329E94((a1 + 72), a2);
    if (v4)
    {
      return *(v4[3] + 8) != 0;
    }

LABEL_10:
    sub_49EC("unordered_map::at: key not found");
  }

  if (!sub_32951C((a1 + 112), a2))
  {
    *(a1 + 8 * *a2 + 1816) = *(a1 + 8 * *a2 + 1816) + 1.0;
    sub_7E9A4(v12);
    v6 = *(a1 + 32);
    sub_2FF7C4(a2, v9);
    v7 = (*(*v6 + 40))(v6, v9);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    *(a1 + 2488) = sub_7EA60(v12) + *(a1 + 2488);
    v9[0] = v7;
    *(a1 + 8 * *a2 + 856) = *(a1 + 8 * *a2 + 856) + 1.0;
    sub_32A4B8((a1 + 112), a2);
  }

  v8 = sub_329E94((a1 + 112), a2);
  if (!v8)
  {
    goto LABEL_10;
  }

  return v8[3] & 1;
}

void sub_326B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_326B54(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 2472) = *(a1 + 2472) + 1.0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_329254(&v15, (a2[1] - *a2) >> 3);
  v7 = *a2;
  for (i = a2[1]; v7 != i; ++v7)
  {
    while (1)
    {
      v14[0] = *v7;
      sub_2FF7C4(v14, __p);
      v8 = v16;
      if (v16 >= v17)
      {
        break;
      }

      *v16 = *__p;
      v8[2] = 0;
      v8[3] = 0;
      v8[1] = 0;
      *(v8 + 1) = *&__p[8];
      v8[3] = v19;
      v16 = v8 + 4;
      if (++v7 == i)
      {
        goto LABEL_8;
      }
    }

    v16 = sub_329374(&v15, __p);
    if (*&__p[8])
    {
      *&__p[16] = *&__p[8];
      operator delete(*&__p[8]);
    }
  }

LABEL_8:
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v14[0] = v10;
  if (!v9 || (v11 = std::__shared_weak_count::lock(v9), (v14[1] = v11) == 0))
  {
    sub_3294D0();
  }

  v12 = v11;
  sub_7E9A4(__p);
  v20 = v10;
  v21 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = *__p;
  v23 = __p[16];
  v13 = *(a3 + 24);
  if (v13)
  {
    if (v13 == a3)
    {
      v25 = v24;
      (*(*v13 + 24))(v13, v24);
LABEL_15:
      v26 = 0;
      operator new();
    }

    v13 = (*(*v13 + 16))(v13);
  }

  v25 = v13;
  goto LABEL_15;
}

void sub_326FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_1F1A8(v3);
  operator delete(v2);
  sub_327094(va2);
  sub_1F1A8(va);
  sub_37484(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_327094(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 64);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }
  }

  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_327174(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (*(a3 + 16) || (v12 = *a3) == 0 || !*v12 || !v12[1])
  {
    operator new();
  }

  v13 = *(a3 + 8);
  v31 = *a3;
  v32 = v13;
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = v12[1];
  if (v5)
  {
    if (!*v12)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::to_string(&v28, v12[1]);
      sub_23E08("Obtained data from data provider which is nullptr but with size of ", &v28, &v29);
      sub_30F54("; key: ", &v29, &v30);
      sub_2FF878(a2, v26);
      if ((v27 & 0x80u) == 0)
      {
        v15 = v26;
      }

      else
      {
        v15 = v26[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v26[1];
      }

      v17 = std::string::append(&v30, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v34 = v17->__r_.__value_.__r.__words[2];
      v33 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (v34 >= 0)
      {
        v19 = &v33;
      }

      else
      {
        v19 = v33;
      }

      if (v34 >= 0)
      {
        v20 = HIBYTE(v34);
      }

      else
      {
        v20 = *(&v33 + 1);
      }

      v21 = sub_2D390(exception, v19, v20);
    }

    if (*(a1 + 24) == 1)
    {
      sub_7E9A4(&v33);
      if ((sub_2D801C(*a2, *v31, v31[1]) & 1) == 0)
      {
        v22 = __cxa_allocate_exception(0x40uLL);
        sub_2FF878(a2, &v28);
        sub_23E08("Could not verify integrity of Flatbuffer data (", &v28, &v29);
        sub_30F54(")", &v29, &v30);
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v30;
        }

        else
        {
          v23 = v30.__r_.__value_.__r.__words[0];
        }

        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v30.__r_.__value_.__l.__size_;
        }

        v25 = sub_2D390(v22, v23, size);
      }

      *(a1 + 2504) = sub_7EA60(&v33) + *(a1 + 2504);
      v5 = v31[1];
    }
  }

  v6 = vcvtd_n_f64_u64(v5, 0xAuLL) * 0.0009765625;
  v7 = 1.0;
  if (v5)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = (a1 + 8 * *a2);
  v9[27] = v9[27] + v8;
  if (!v5)
  {
    v7 = 0.0;
  }

  v9[67] = v9[67] + v7;
  v9[147] = v6 + v9[147];
  if (v5 >= 0x4000)
  {
    v6 = 0.0;
  }

  v9[187] = v6 + v9[187];
  v10 = sub_329E94((a1 + 112), a2);
  if (v10)
  {
    sub_24C14((a1 + 112), v10, &v33);
    v11 = v33;
    *&v33 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v9[107] = v9[107] + -1.0;
  }

  sub_32A058((a1 + 72), a2);
  if (v32)
  {
    if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }
  }
}

void sub_3274E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_7:
      operator delete(a27);
      if (a26 < 0)
      {
LABEL_10:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_14:
        sub_1F1A8(v32 - 80);
        _Unwind_Resume(a1);
      }

LABEL_13:
      operator delete(a15);
      goto LABEL_14;
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_7;
  }

  if (a26 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

void sub_327638(uint64_t a1)
{
  sub_328330(a1);

  operator delete();
}

void sub_327690(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3276F0(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_32775C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_3277DC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 144);
    if (v1)
    {
      *(a1 + 152) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void *sub_32784C(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void *sub_3279C8(void *result)
{
  *result = off_26691A8;
  v1 = result[2];
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

void sub_327A5C(void *a1)
{
  *a1 = off_26691A8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_327B70(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_26691A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_327BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_327C24(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_327CBC(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*a3)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_24;
    }

    sub_19594F8(&v10);
    sub_4A5C(&v10, "Unable to fetch the available regions from the offline data provider; creating a dummy region containing the entire world", 121);
    if ((v20 & 0x10) != 0)
    {
      v6 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v6 = v16;
      }

      v7 = v15;
      v3 = v6 - v15;
      if (v6 - v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v3 = 0;
        v9 = 0;
LABEL_19:
        *(&__dst + v3) = 0;
        sub_7E854(&__dst, 1u);
        if (v9 < 0)
        {
          operator delete(__dst);
        }

        if (v18 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v12);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_24:
        sub_32410();
        operator new();
      }

      v7 = v13;
      v3 = v14 - v13;
      if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_29:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v9 = v3;
    if (v3)
    {
      memmove(&__dst, v7, v3);
    }

    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  v12.__locale_ = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 5)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v21 = &v10;
  v5 = **(a1 + 8);
  if (!v5)
  {
    sub_2D328(3u);
  }

  sub_32810C(v5, &v10);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_32802C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_328068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_328094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl4data12_GLOBAL__N_140get_available_regions_from_data_providerENSt3__110shared_ptrIN4maps7offline12DataProviderEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl4data12_GLOBAL__N_140get_available_regions_from_data_providerENSt3__110shared_ptrIN4maps7offline12DataProviderEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl4data12_GLOBAL__N_140get_available_regions_from_data_providerENSt3__110shared_ptrIN4maps7offline12DataProviderEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl4data12_GLOBAL__N_140get_available_regions_from_data_providerENSt3__110shared_ptrIN4maps7offline12DataProviderEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_32810C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_2D328(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_3281C4(uint64_t a1)
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

void sub_328250(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_328300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_328330(uint64_t a1)
{
  *a1 = off_2668FF0;
  std::mutex::~mutex((a1 + 152));
  v2 = *(a1 + 128);
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

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 88);
  while (v5)
  {
    v6 = v5;
    v5 = *v5;
    v7 = v6[4];
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v8;
    }

    operator delete(v6);
  }

  v9 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(a1 + 56) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 40);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

uint64_t sub_328490(uint64_t a1)
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

uint64_t sub_32851C(uint64_t a1)
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

void sub_3285C8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_328628(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_328694(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_328714(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 144);
    if (v1)
    {
      *(a1 + 152) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void *sub_328784(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void *sub_3288DC(void *result)
{
  *result = off_26692D0;
  v1 = result[3];
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

void sub_328970(void *a1)
{
  *a1 = off_26692D0;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_328A8C(uint64_t result, uint64_t a2)
{
  *a2 = off_26692D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_328ACC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_328B48(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_328BE0(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*a3)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_26:
      v11 = *(a1 + 16);
      v15 = 0;
      v16 = 0;
      v17.__locale_ = 0;
      if (!*v11)
      {
        sub_2D328(3u);
      }

      sub_3290BC(*v11, &v15);
      goto LABEL_28;
    }

    sub_19594F8(&v15);
    sub_4A5C(&v15, "An error occurred fetching the available keys from the offline data provider in get_quad_ids()", 94);
    if ((v25 & 0x10) != 0)
    {
      v9 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v9 = v21;
      }

      v10 = v20;
      v4 = v9 - v20;
      if (v9 - v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v4 = 0;
        v14 = 0;
LABEL_21:
        *(&__dst + v4) = 0;
        sub_7E854(&__dst, 1u);
        if (v14 < 0)
        {
          operator delete(__dst);
        }

        if (v23 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v17);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_26;
      }

      v10 = v18;
      v4 = v19 - v18;
      if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_32:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v14 = v4;
    if (v4)
    {
      memmove(&__dst, v10, v4);
    }

    goto LABEL_21;
  }

  v5 = *a2;
  v6 = a2[1];
  v15 = 0;
  v16 = 0;
  v17.__locale_ = 0;
  if (v5 != v6)
  {
    v7 = *(a1 + 8);
    do
    {
      if (v7 == sub_2FF760(v5))
      {
        sub_2FF760(v5);
        operator new();
      }

      v5 += 32;
    }

    while (v5 != v6);
  }

  v8 = **(a1 + 16);
  if (!v8)
  {
    sub_2D328(3u);
  }

  sub_3290BC(v8, &v15);
LABEL_28:
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_328FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_329004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_329044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl4data26OfflineDataProviderStorage12get_quad_idsENS0_7LayerIdEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl4data26OfflineDataProviderStorage12get_quad_idsENS0_7LayerIdEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl4data26OfflineDataProviderStorage12get_quad_idsENS0_7LayerIdEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl4data26OfflineDataProviderStorage12get_quad_idsENS0_7LayerIdEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_3290BC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_2D328(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_329174(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_329224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_329254(void *result, unint64_t a2)
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

uint64_t sub_329374(uint64_t *a1, uint64_t a2)
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
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v10);
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

void sub_3294D0()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *sub_32951C(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    if (v8.u32[0] < 2uLL)
    {
      v12 = *&v2 - 1;
      while (1)
      {
        v14 = result[1];
        if (v7 == v14)
        {
          if (*(result + 4) == v3 && *(result + 5) == v4)
          {
            return result;
          }
        }

        else if ((v14 & v12) != v9)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v16 = result[1];
      if (v7 == v16)
      {
        if (*(result + 4) == v3 && *(result + 5) == v4)
        {
          return result;
        }
      }

      else
      {
        if (v16 >= *&v2)
        {
          v16 %= *&v2;
        }

        if (v16 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_329664(void *a1)
{
  *a1 = off_2669360;
  v2 = a1 + 6;
  v3 = a1[9];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[2];
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[2];
    if (!v4)
    {
      return a1;
    }
  }

  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_329760(void *a1)
{
  *a1 = off_2669360;
  v2 = a1 + 6;
  v3 = a1[9];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[2];
    if (!v4)
    {
LABEL_9:

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_329980(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_32999C(uint64_t a1, uint64_t a2)
{
  *a2 = off_2669360;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v4;
  v5 = *(a1 + 72);
  if (!v5)
  {
    result = 0;
    goto LABEL_7;
  }

  if (v5 != a1 + 48)
  {
    result = (*(*v5 + 16))(*(a1 + 72));
LABEL_7:
    *(a2 + 72) = result;
    return result;
  }

  *(a2 + 72) = a2 + 48;
  return (*(**(a1 + 72) + 24))(*(a1 + 72));
}

void sub_329AA0(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 16);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_329B88(char *__p)
{
  v2 = __p + 48;
  v3 = *(__p + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 2);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 2);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_5:
    v5 = __p;

    goto LABEL_7;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  v5 = __p;

LABEL_7:
  operator delete(v5);
}

uint64_t sub_329C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_7EA60(a1 + 24);
  v5 = *(a1 + 8);
  *(v5 + 2496) = v4 + *(v5 + 2496);
  std::mutex::lock((v5 + 152));
  for (i = *(a2 + 16); i; i = *i)
  {
    v15 = sub_2FF760((i + 2));
    if (!sub_32951C((*(a1 + 8) + 72), &v15))
    {
      v7 = *(a1 + 8);
      *(v7 + 8 * v15 + 2136) = *(v7 + 8 * v15 + 2136) + 1.0;
      v8 = i[7];
      v12 = i[6];
      v13 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(i + 64);
      sub_327174(v7, &v15, &v12);
      v9 = v13;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  std::mutex::unlock((v5 + 152));
  v10 = *(a1 + 72);
  if (!v10)
  {
    sub_2B7420();
  }

  return (*(*v10 + 48))(v10);
}

void sub_329DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::mutex::unlock((v9 + 152));
  _Unwind_Resume(a1);
}

uint64_t sub_329E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl4data26OfflineDataProviderStorage24prefetch_quad_data_asyncERKNS_6common6VectorINS0_15AbstractStorage14LayerAndQuadIdENSt3__19allocatorIS5_EEEENS6_8functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl4data26OfflineDataProviderStorage24prefetch_quad_data_asyncERKNS_6common6VectorINS0_15AbstractStorage14LayerAndQuadIdENSt3__19allocatorIS5_EEEENS6_8functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl4data26OfflineDataProviderStorage24prefetch_quad_data_asyncERKNS_6common6VectorINS0_15AbstractStorage14LayerAndQuadIdENSt3__19allocatorIS5_EEEENS6_8functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl4data26OfflineDataProviderStorage24prefetch_quad_data_asyncERKNS_6common6VectorINS0_15AbstractStorage14LayerAndQuadIdENSt3__19allocatorIS5_EEEENS6_8functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *sub_329E94(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    if (v8.u32[0] < 2uLL)
    {
      v12 = *&v2 - 1;
      while (1)
      {
        v14 = result[1];
        if (v14 == v7)
        {
          if (*(result + 4) == v3 && *(result + 5) == v4)
          {
            return result;
          }
        }

        else if ((v14 & v12) != v9)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v16 = result[1];
      if (v16 == v7)
      {
        if (*(result + 4) == v3 && *(result + 5) == v4)
        {
          return result;
        }
      }

      else
      {
        if (v16 >= *&v2)
        {
          v16 %= *&v2;
        }

        if (v16 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_329FFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26693F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_32A058(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 5) == v3)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 5) != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_32A400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_32A414(va);
  _Unwind_Resume(a1);
}

void **sub_32A414(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *sub_32A4B8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 5) == v3)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 5) != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

void *sub_32A85C(void *result, void *a2)
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

  return result;
}

void sub_32A8DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_32A8F8(void **a1)
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
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2669430[v6])(&v8, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_32A9CC(double *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[25] + (a1[24] + (a1[23] + (a1[22] + (a1[21] + (a1[20] + (a1[19] + (a1[18] + (a1[17] + (a1[16] + (a1[15] + (a1[14] + (a1[13] + (a1[12] + (a1[11] + (a1[10] + (a1[9] + (a1[8] + (a1[7] + (a1[6] + (a1[5] + (a1[4] + (a1[3] + (a1[2] + (a1[1] + (*a1 + v2)))))))))))))))))))))))));
  return (a1[39] + (a1[38] + (a1[37] + (a1[36] + (a1[35] + (a1[34] + (a1[33] + (a1[32] + (a1[31] + (a1[30] + (a1[29] + (a1[28] + (a1[27] + (a1[26] + v3))))))))))))));
}

BOOL sub_32AEC8(char **a1, int a2, void **a3)
{
  v5 = &a1[1][*a1];
  v62 = *a1;
  v63 = v5;
  v64 = 0x2C700000000;
  v61 = 0uLL;
  if (!sub_32BB58(&v62))
  {
    goto LABEL_110;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v64 == 2)
    {
      v9 = sub_32BDF0(&v62, v63);
      if (v9 == 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      if (v9 == 3)
      {
        v10 = 3;
      }

      if (v9 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      if (v9 == 1)
      {
        v11 = 1;
      }

      if (v9 <= 2)
      {
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    else if (v64 == 1)
    {
      v7 = sub_32BDF0(&v62, v63);
      v8 = v62;
      v62 += v7;
      if (v62 > v63)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v50 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }
    }

    else
    {
      sub_32BC3C(&v62);
    }
  }

  while (sub_32BB58(&v62));
  if (!v8)
  {
LABEL_110:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v67);
    sub_4A5C(&v67, "Encountered a TrafficColor that does not reference any segments.", 64);
    if ((v77 & 0x10) != 0)
    {
      v44 = v76;
      if (v76 < v73)
      {
        v76 = v73;
        v44 = v73;
      }

      v45 = v72;
      v43 = v44 - v72;
      if (v44 - v72 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if ((v77 & 8) == 0)
      {
        v43 = 0;
        v66 = 0;
LABEL_122:
        *(&__dst + v43) = 0;
        sub_7E854(&__dst, 3u);
        if (v66 < 0)
        {
          operator delete(__dst);
        }

        if (v75 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v69);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v45 = v70[0];
      v43 = v71 - v70[0];
      if (v71 - v70[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_136:
        sub_3244();
      }
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    v66 = v43;
    if (!v43)
    {
      goto LABEL_122;
    }

LABEL_121:
    memmove(&__dst, v45, v43);
    goto LABEL_122;
  }

  if (!v6)
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v67);
    sub_4A5C(&v67, "Encountered a TrafficColor with unknwon color.", 46);
    if ((v77 & 0x10) != 0)
    {
      v47 = v76;
      if (v76 < v73)
      {
        v76 = v73;
        v47 = v73;
      }

      v48 = &v72;
    }

    else
    {
      if ((v77 & 8) == 0)
      {
        v43 = 0;
        v66 = 0;
        goto LABEL_122;
      }

      v48 = v70;
      v47 = v71;
    }

    v45 = *v48;
    v43 = v47 - *v48;
    if (v43 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    v66 = v47 - *v48;
    if (!v43)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v53 = *a3;
  v54 = a3[1];
  v58 = v8;
  v59 = &v8[v7];
  v60 = 0x2C700000000;
  if (sub_32BB58(&v58))
  {
    v12 = 0;
    v57 = 0;
    while (1)
    {
      if (v60 == 4)
      {
        v19 = *v58++;
        if (v58 > v59)
        {
LABEL_147:
          v51 = __cxa_allocate_exception(0x40uLL);
          v52 = sub_2D390(v51, "Skipping over bytes exceeded message length.", 0x2CuLL);
        }

        if (v19 < 0.0)
        {
          if (sub_7E7E4(1u))
          {
            sub_19594F8(&v67);
            sub_4A5C(&v67, "Encountered a TrafficColor with a negative end offset (", 55);
            v20 = std::ostream::operator<<();
            sub_4A5C(v20, ").", 2);
            if ((v77 & 0x10) != 0)
            {
              v39 = v76;
              v40 = &v72;
              if (v76 < v73)
              {
                v76 = v73;
                v39 = v73;
                v40 = &v72;
              }
            }

            else
            {
              if ((v77 & 8) == 0)
              {
                v18 = 0;
                v66 = 0;
                goto LABEL_105;
              }

              v39 = v71;
              v40 = v70;
            }

            v41 = *v40;
            v18 = v39 - *v40;
            if (v18 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v18 >= 0x17)
            {
              operator new();
            }

            v66 = v39 - *v40;
            if (!v18)
            {
              goto LABEL_105;
            }

LABEL_104:
            memmove(&__dst, v41, v18);
            goto LABEL_105;
          }

          goto LABEL_27;
        }

        v30 = v19 * 100.0;
        if (v30 >= 0.0)
        {
          v31 = v19 * 100.0;
          if (v30 < 4.50359963e15)
          {
            v32 = (v30 + v30) + 1;
LABEL_70:
            v31 = (v32 >> 1);
          }
        }

        else
        {
          v31 = v19 * 100.0;
          if (v30 > -4.50359963e15)
          {
            v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
            goto LABEL_70;
          }
        }

        if (v31 < 9.22337204e18)
        {
          if (v30 >= 0.0)
          {
            if (v30 < 4.50359963e15)
            {
              v34 = (v30 + v30) + 1;
LABEL_85:
              v30 = (v34 >> 1);
            }
          }

          else if (v30 > -4.50359963e15)
          {
            v34 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
            goto LABEL_85;
          }

          v57 = v30;
          goto LABEL_27;
        }

        v57 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_27;
      }

      if (v60 != 3)
      {
        if (v60 == 2)
        {
          v13 = sub_32C014(&v58, v59);
          v14 = a3[1];
          v15 = a3[2];
          if (v14 >= v15)
          {
            v21 = *a3;
            v22 = v14 - *a3;
            v23 = v22 >> 5;
            v24 = (v22 >> 5) + 1;
            if (v24 >> 59)
            {
              sub_1794();
            }

            v25 = v15 - v21;
            if (v25 >> 4 > v24)
            {
              v24 = v25 >> 4;
            }

            if (v25 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              if (!(v26 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v35 = 32 * v23;
            *v35 = v13;
            *(v35 + 8) = a2;
            *(v35 + 12) = v6;
            *(v35 + 16) = v61;
            v36 = 32 * v23 + 32;
            memcpy(0, v21, v22);
            *a3 = 0;
            a3[1] = v36;
            a3[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }

            a3[1] = v36;
          }

          else
          {
            *v14 = v13;
            *(v14 + 2) = a2;
            *(v14 + 3) = v6;
            *(v14 + 1) = v61;
            a3[1] = v14 + 32;
          }
        }

        else
        {
          sub_32BC3C(&v58);
        }

        goto LABEL_27;
      }

      v16 = *v58++;
      if (v58 > v59)
      {
        goto LABEL_147;
      }

      if (v16 < 0.0)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v67);
          sub_4A5C(&v67, "Encountered a TrafficColor with a negative start offset (", 57);
          v17 = std::ostream::operator<<();
          sub_4A5C(v17, ").", 2);
          if ((v77 & 0x10) != 0)
          {
            v37 = v76;
            v38 = &v72;
            if (v76 < v73)
            {
              v76 = v73;
              v37 = v73;
              v38 = &v72;
            }
          }

          else
          {
            if ((v77 & 8) == 0)
            {
              v18 = 0;
              v66 = 0;
LABEL_105:
              *(&__dst + v18) = 0;
              sub_7E854(&__dst, 1u);
              if (v66 < 0)
              {
                operator delete(__dst);
              }

              v67 = v56;
              *(&v67 + *(v56 - 3)) = v55;
              if (v75 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v69);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_27;
            }

            v37 = v71;
            v38 = v70;
          }

          v41 = *v38;
          v18 = v37 - *v38;
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          v66 = v37 - *v38;
          if (!v18)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }

        goto LABEL_27;
      }

      v27 = v16 * 100.0;
      if (v27 >= 0.0)
      {
        v28 = v16 * 100.0;
        if (v27 < 4.50359963e15)
        {
          v29 = (v27 + v27) + 1;
          goto LABEL_62;
        }
      }

      else
      {
        v28 = v16 * 100.0;
        if (v27 > -4.50359963e15)
        {
          v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
LABEL_62:
          v28 = (v29 >> 1);
        }
      }

      if (v28 < 9.22337204e18)
      {
        if (v27 >= 0.0)
        {
          if (v27 < 4.50359963e15)
          {
            v33 = (v27 + v27) + 1;
LABEL_81:
            v27 = (v33 >> 1);
          }
        }

        else if (v27 > -4.50359963e15)
        {
          v33 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
          goto LABEL_81;
        }

        v12 = v27;
        goto LABEL_27;
      }

      v12 = 0x7FFFFFFFFFFFFFFELL;
LABEL_27:
      if (!sub_32BB58(&v58))
      {
        goto LABEL_133;
      }
    }
  }

  v57 = 0;
  v12 = 0;
LABEL_133:
  v46 = a3[1] - *a3;
  result = v54 - v53 < v46;
  if (v54 - v53 < v46)
  {
    *(*a3 + v54 - v53 + 16) = v12;
    *(a3[1] - 1) = v57;
  }

  return result;
}

void sub_32BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
    sub_1959728(&a30);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a30);
  _Unwind_Resume(a1);
}

BOOL sub_32BB58(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*a1 < v1)
  {
    v4 = sub_32BDF0(a1, *(a1 + 8));
    *(a1 + 16) = v4 >> 3;
    if (v4 < 8 || (v4 - 152000) >> 6 <= 0x7C)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v8 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
    }

    *(a1 + 20) = v4 & 7;
    if ((v4 & 7) >= 3 && (v4 & 7) != 5)
    {
      v9 = __cxa_allocate_exception(0x40uLL);
      v10 = sub_2D390(v9, "Unknown wire type.", 0x12uLL);
    }
  }

  return v2 < v1;
}

unint64_t sub_32BC3C(unint64_t result)
{
  v1 = *(result + 20);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v11 = result;
      result = sub_32BDF0(result, *(result + 8));
      v12 = v11[1];
      v13 = *v11 + result;
      *v11 = v13;
      if (v13 > v12)
      {
        goto LABEL_17;
      }

      return result;
    }

    if (v1 == 5)
    {
      v4 = *(result + 8);
      v5 = *result + 4;
      *result = v5;
      if (v5 > v4)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_21:
    exception = __cxa_allocate_exception(0x40uLL);
    v19 = sub_2D390(exception, "Unknown wire type.", 0x12uLL);
  }

  if (!v1)
  {
    v6 = *(result + 8);
    if (*result == v6)
    {
LABEL_14:
      if (&v6[-*result] <= 9)
      {
        v16 = __cxa_allocate_exception(0x40uLL);
        v17 = sub_2D390(v16, "Buffer overflow.", 0x10uLL);
      }
    }

    else
    {
      v7 = 0;
      v8 = *result;
      while (*v8 < 0)
      {
        ++v8;
        ++v7;
        if (v8 == v6)
        {
          goto LABEL_14;
        }
      }

      if (v7 < 10)
      {
        *result = v8 + 1;
        return result;
      }
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "VarInt longer than expected.", 0x1CuLL);
  }

  if (v1 != 1)
  {
    goto LABEL_21;
  }

  v2 = *(result + 8);
  v3 = *result + 8;
  *result = v3;
  if (v3 > v2)
  {
LABEL_17:
    v14 = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(v14, "Skipping over bytes exceeded message length.", 0x2CuLL);
  }

  return result;
}

unint64_t sub_32BDF0(char **a1, char *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    if (a2 - v2 <= 9)
    {
LABEL_14:
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Buffer overflow.", 0x10uLL);
    }
  }

  else
  {
    v3 = *v2;
    if ((v3 & 0x80000000) == 0)
    {
      *a1 = v2 + 1;
      return v3;
    }

    if (a2 - v2 <= 9)
    {
      v8 = 0;
      v9 = 0;
      v10 = *a1;
      while (1)
      {
        v11 = *v10++;
        v12 = v11;
        if ((v11 & 0x80000000) == 0)
        {
          break;
        }

        v9 |= (v12 & 0x7F) << v8;
        v8 += 7;
        v2 = v10;
        if (v10 == a2)
        {
          goto LABEL_14;
        }
      }

      *a1 = v2 + 1;
      return (v12 << v8) | v9;
    }
  }

  v5 = v2 + 1;
  v6 = *v2 & 0x7F;
  if ((*v2 & 0x80) == 0)
  {
LABEL_8:
    *a1 = v5;
    return v6;
  }

  v7 = *v2 & 0x7F | ((v2[1] & 0x7F) << 7);
  if (v2[1] < 0)
  {
    v15 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14);
    if (v2[2] < 0)
    {
      v16 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFFFFFFF01FFFFFLL | ((v2[3] & 0x7F) << 21);
      if (v2[3] < 0)
      {
        v6 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFFFFF8001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28);
        if (v2[4] < 0)
        {
          if (v2[5] < 0)
          {
            if (v2[6] < 0)
            {
              if (v2[7] < 0)
              {
                v5 = v2 + 9;
                if ((v2[8] & 0x80000000) == 0)
                {
                  goto LABEL_8;
                }

                if (*v5 < 0)
                {
                  v17 = __cxa_allocate_exception(0x40uLL);
                  v18 = sub_2D390(v17, "VarInt longer than expected.", 0x1CuLL);
                }

                *a1 = v2 + 10;
                return v6;
              }

              else
              {
                *a1 = v2 + 8;
                return v6;
              }
            }

            else
            {
              *a1 = v2 + 7;
              return v6;
            }
          }

          else
          {
            *a1 = v2 + 6;
            return v6;
          }
        }

        else
        {
          *a1 = v2 + 5;
          return v6;
        }
      }

      else
      {
        *a1 = v2 + 4;
        return v16;
      }
    }

    else
    {
      *a1 = v2 + 3;
      return v15;
    }
  }

  else
  {
    *a1 = v2 + 2;
    return v7;
  }
}

unint64_t sub_32C014(char **a1, char *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    if (a2 - v2 <= 9)
    {
LABEL_7:
      exception = __cxa_allocate_exception(0x40uLL);
      v10 = sub_2D390(exception, "Buffer overflow.", 0x10uLL);
    }
  }

  else
  {
    v3 = *v2;
    if ((v3 & 0x80) == 0)
    {
LABEL_14:
      *a1 = v2 + 1;
      return v3;
    }

    if (a2 - v2 <= 9)
    {
      v4 = 0;
      v5 = 0;
      v6 = *a1;
      while (1)
      {
        v7 = *v6++;
        v8 = v7;
        if ((v7 & 0x80000000) == 0)
        {
          break;
        }

        v5 |= (v8 & 0x7F) << v4;
        v4 += 7;
        v2 = v6;
        if (v6 == a2)
        {
          goto LABEL_7;
        }
      }

      v3 = (v8 << v4) | v5;
      goto LABEL_14;
    }
  }

  v11 = v2 + 1;
  v12 = *v2 & 0x7F;
  if ((*v2 & 0x80) == 0)
  {
LABEL_10:
    *a1 = v11;
    return v12;
  }

  v14 = *v2 & 0x7F | ((v2[1] & 0x7F) << 7);
  if ((v2[1] & 0x80) == 0)
  {
    *a1 = v2 + 2;
    return v14;
  }

  v15 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14);
  if (v2[2] < 0)
  {
    v16 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFFFFFFF01FFFFFLL | ((v2[3] & 0x7F) << 21);
    if (v2[3] < 0)
    {
      v17 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFFFFF8001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28);
      if (v2[4] < 0)
      {
        v18 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFFFC00001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28) & 0xFFFFFC07FFFFFFFFLL | ((v2[5] & 0x7F) << 35);
        if (v2[5] < 0)
        {
          v19 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFFFE0000001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28) & 0xFFFE0007FFFFFFFFLL | ((v2[5] & 0x7F) << 35) & 0xFFFE03FFFFFFFFFFLL | ((v2[6] & 0x7F) << 42);
          if (v2[6] < 0)
          {
            v20 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0xFF000000001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28) & 0xFF000007FFFFFFFFLL | ((v2[5] & 0x7F) << 35) & 0xFF0003FFFFFFFFFFLL | ((v2[6] & 0x7F) << 42) & 0xFF01FFFFFFFFFFFFLL | ((v2[7] & 0x7F) << 49);
            if (v2[7] < 0)
            {
              v11 = v2 + 9;
              v12 = *v2 & 0x7F | (((v2[1] & 0x7F) << 7) & 0x3FFF) | ((v2[2] & 0x7F) << 14) & 0x80000000001FFFFFLL | ((v2[3] & 0x7F) << 21) & 0xFFFFFFF | ((v2[4] & 0x7F) << 28) & 0x80000007FFFFFFFFLL | ((v2[5] & 0x7F) << 35) & 0x800003FFFFFFFFFFLL | ((v2[6] & 0x7F) << 42) & 0x8001FFFFFFFFFFFFLL | ((v2[7] & 0x7F) << 49) & 0x80FFFFFFFFFFFFFFLL | ((v2[8] & 0x7F) << 56);
              if ((v2[8] & 0x80) == 0)
              {
                goto LABEL_10;
              }

              v21 = *v11;
              if (v21 < 0)
              {
                v22 = __cxa_allocate_exception(0x40uLL);
                v23 = sub_2D390(v22, "VarInt longer than expected.", 0x1CuLL);
              }

              *a1 = v2 + 10;
              return v12 | (v21 << 63);
            }

            else
            {
              *a1 = v2 + 8;
              return v20;
            }
          }

          else
          {
            *a1 = v2 + 7;
            return v19;
          }
        }

        else
        {
          *a1 = v2 + 6;
          return v18;
        }
      }

      else
      {
        *a1 = v2 + 5;
        return v17;
      }
    }

    else
    {
      *a1 = v2 + 4;
      return v16;
    }
  }

  else
  {
    *a1 = v2 + 3;
    return v15;
  }
}

uint64_t sub_32C234(char **a1, uint64_t a2)
{
  v4 = &a1[1][*a1];
  v29 = *a1;
  v30 = v4;
  v31 = 0x2C700000000;
  if (!sub_32BB58(&v29))
  {
    return 0xFFFFFFFFLL;
  }

  while (v31 != 1)
  {
    sub_32BC3C(&v29);
    if (!sub_32BB58(&v29))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *v29;
  v29 += 8;
  if (v29 > v30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v27 = sub_2D390(exception, "Skipping over bytes exceeded message length.", 0x2CuLL);
  }

  v8 = (a2 + 48);
  v9 = *(a2 + 48);
  if (v9 != -2)
  {
    v8 = v28;
  }

  if (v9 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v9 + 1);
  }

  if (v9 == -1)
  {
    v8 = v28;
  }

  LODWORD(v28[0]) = v5;
  *(a2 + 48) = *v8;
  v10 = *a2;
  v11 = (*(a2 + 8) - *a2) >> 3;
  if (v5 + 1 > v11)
  {
    v12 = (v5 + 1);
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= v11)
  {
    if (v12 < v11)
    {
      *(a2 + 8) = v10 + 8 * v12;
    }
  }

  else
  {
    sub_32EF70(a2, v12 - v11);
    v10 = *a2;
  }

  *(v10 + 8 * v5) = v7;
  v13 = &a1[1][*a1];
  v29 = *a1;
  v30 = v13;
  v31 = 0x2C700000000;
  while (sub_32BB58(&v29))
  {
    v14 = v31;
    while (v14 != 4)
    {
      sub_32BC3C(&v29);
      if (v29 >= v30)
      {
        return v5;
      }

      v15 = sub_32BDF0(&v29, v30);
      v14 = v15 >> 3;
      LODWORD(v31) = v15 >> 3;
      if (v15 < 8 || (v15 - 152000) >> 6 <= 0x7C)
      {
        v20 = __cxa_allocate_exception(0x40uLL);
        v21 = sub_2D390(v20, "Parsed invalid tag.", 0x13uLL);
      }

      HIDWORD(v31) = v15 & 7;
      if (HIDWORD(v31) >= 3 && (v15 & 7) != 5)
      {
        v22 = __cxa_allocate_exception(0x40uLL);
        v23 = sub_2D390(v22, "Unknown wire type.", 0x12uLL);
      }
    }

    v17 = sub_32BDF0(&v29, v30);
    v18 = v29;
    v29 += v17;
    if (v29 > v30)
    {
      v24 = __cxa_allocate_exception(0x40uLL);
      v25 = sub_2D390(v24, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v28[0] = v18;
    v28[1] = v17;
    v19 = sub_32C234(v28, a2);
    if (v19 != -1)
    {
      LODWORD(v28[0]) = v5;
      sub_32C4F8(a2, v19, v28);
    }
  }

  return v5;
}

void sub_32C4F8(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = *a3;
  v32 = v6;
  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  if (v7 >= v6)
  {
    v9 = (a1 + 48);
  }

  else
  {
    v9 = &v32;
  }

  if (v6 == -1)
  {
    v10 = (a1 + 48);
  }

  else
  {
    v10 = v9;
  }

  if (v7 == -1)
  {
    v10 = &v32;
  }

  *(a1 + 48) = *v10;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11 >= v12)
  {
    v15 = *(a1 + 24);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v15) >> 2) + 1;
    if (v16 > 0x1555555555555555)
    {
      goto LABEL_44;
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 2);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0xAAAAAAAAAAAAAAALL)
    {
      v18 = 0x1555555555555555;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_45:
      sub_1808();
    }

    v19 = 4 * ((v11 - v15) >> 2);
    v13 = *a3;
    *v19 = a2;
    *(v19 + 4) = v13;
    *(v19 + 8) = 0;
    v14 = v19 + 12;
    v20 = (v19 - (v11 - v15));
    memcpy(v20, v15, v11 - v15);
    *(a1 + 24) = v20;
    *(a1 + 32) = v14;
    *(a1 + 40) = 0;
    if (v15)
    {
      operator delete(v15);
      v13 = *a3;
    }
  }

  else
  {
    *v11 = a2;
    v13 = *a3;
    *(v11 + 4) = *a3;
    *(v11 + 8) = 0;
    v14 = v11 + 12;
  }

  *(a1 + 32) = v14;
  v33 = a2;
  v21 = *(a1 + 48);
  if (v21 >= a2)
  {
    v22 = v8;
  }

  else
  {
    v22 = &v33;
  }

  if (a2 == -1)
  {
    v22 = v8;
  }

  if (v21 == -1)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v22;
  }

  *(a1 + 48) = *v23;
  v24 = *(a1 + 40);
  if (v14 < v24)
  {
    *v14 = v13;
    *(v14 + 4) = a2;
    *(v14 + 8) = 1;
    v25 = v14 + 12;
    goto LABEL_43;
  }

  v26 = *(a1 + 24);
  v27 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v26) >> 2) + 1;
  if (v27 > 0x1555555555555555)
  {
LABEL_44:
    sub_1794();
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 2);
  if (2 * v28 > v27)
  {
    v27 = 2 * v28;
  }

  if (v28 >= 0xAAAAAAAAAAAAAAALL)
  {
    v29 = 0x1555555555555555;
  }

  else
  {
    v29 = v27;
  }

  if (v29)
  {
    if (v29 <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_45;
  }

  v30 = 4 * ((v14 - v26) >> 2);
  *v30 = v13;
  *(v30 + 4) = a2;
  *(v30 + 8) = 1;
  v25 = v30 + 12;
  v31 = (v30 - (v14 - v26));
  memcpy(v31, v26, v14 - v26);
  *(a1 + 24) = v31;
  *(a1 + 32) = v25;
  *(a1 + 40) = 0;
  if (v26)
  {
    operator delete(v26);
  }

LABEL_43:
  *(a1 + 32) = v25;
}

BOOL sub_32C798@<W0>(void *a1@<X1>, const void **a2@<X2>, __int128 **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1 + a1[1];
  *&v47 = *a1;
  *(&v47 + 1) = v5;
  v48 = 0x2C700000000;
  v6 = sub_32CCA4(&v47, 3);
  sub_32CB40(a3, v6);
  while (1)
  {
    result = sub_32BB58(&v47);
    if (!result)
    {
      break;
    }

    while (v48 != 3)
    {
      sub_32BC3C(&v47);
      result = sub_32BB58(&v47);
      if (!result)
      {
        return result;
      }
    }

    v8 = sub_32BDF0(&v47, *(&v47 + 1));
    v9 = v47;
    *&v47 = v47 + v8;
    if (v47 > *(&v47 + 1))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v20[0] = v9;
    v20[1] = v8;
    sub_32CDE4(v20, a2, &v21);
    v10 = HIBYTE(v22);
    if (v22 < 0)
    {
      v10 = *(&v21 + 1);
    }

    if (v10 && ((*(&v27 + 1) - v27) & 0x3FFFFFFFCLL) != 4 && ((*(&v37 + 1) - v37) & 0x3FFFFFFFCLL) != 4 && 0xAAAAAAAAAAAAAAABLL * ((*(&v43 + 1) - v43) >> 2) >= 2)
    {
      v11 = a3[1];
      if (v11 >= a3[2])
      {
        v17 = sub_32EC80(a3, &v21);
      }

      else
      {
        v12 = v22;
        *v11 = v21;
        *(v11 + 2) = v12;
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 5) = 0;
        *(v11 + 24) = v23;
        *(v11 + 5) = v24;
        *(v11 + 6) = 0;
        *(v11 + 7) = 0;
        *(v11 + 8) = 0;
        v11[3] = v25;
        *(v11 + 8) = v26;
        *(v11 + 9) = 0;
        *(v11 + 10) = 0;
        *(v11 + 11) = 0;
        *(v11 + 72) = v27;
        *(v11 + 11) = v28;
        *(v11 + 12) = 0;
        *(v11 + 13) = 0;
        *(v11 + 14) = 0;
        v11[6] = v29;
        *(v11 + 15) = 0;
        *(v11 + 16) = 0;
        *(v11 + 17) = 0;
        *(v11 + 18) = 0;
        *(v11 + 120) = v31;
        v13 = v32;
        *(v11 + 14) = v30;
        *(v11 + 17) = v13;
        *(v11 + 19) = 0;
        *(v11 + 20) = 0;
        v11[9] = v33;
        *(v11 + 21) = 0;
        *(v11 + 22) = 0;
        *(v11 + 23) = 0;
        *(v11 + 24) = 0;
        *(v11 + 168) = v35;
        v14 = v36;
        *(v11 + 20) = v34;
        *(v11 + 23) = v14;
        *(v11 + 25) = 0;
        *(v11 + 26) = 0;
        v11[12] = v37;
        *(v11 + 27) = 0;
        *(v11 + 28) = 0;
        *(v11 + 29) = 0;
        *(v11 + 30) = 0;
        *(v11 + 216) = v39;
        v15 = v40;
        *(v11 + 26) = v38;
        *(v11 + 29) = v15;
        *(v11 + 31) = 0;
        *(v11 + 32) = 0;
        v11[15] = v41;
        *(v11 + 33) = 0;
        *(v11 + 34) = 0;
        *(v11 + 35) = 0;
        *(v11 + 264) = v43;
        v16 = v44;
        *(v11 + 32) = v42;
        v22 = 0;
        v21 = 0uLL;
        v23 = 0uLL;
        v24 = 0;
        v25 = 0uLL;
        v26 = 0;
        v27 = 0uLL;
        v28 = 0;
        v29 = 0uLL;
        v30 = 0;
        v31 = 0uLL;
        v32 = 0;
        v33 = 0uLL;
        v34 = 0;
        v35 = 0uLL;
        v36 = 0;
        v37 = 0uLL;
        v38 = 0;
        v39 = 0uLL;
        v40 = 0;
        v41 = 0uLL;
        v42 = 0;
        *(v11 + 35) = v16;
        *(v11 + 36) = 0;
        v43 = 0uLL;
        v44 = 0;
        *(v11 + 37) = 0;
        *(v11 + 38) = 0;
        v11[18] = v45;
        *(v11 + 38) = v46;
        v45 = 0uLL;
        v46 = 0;
        v17 = v11 + 312;
      }

      a3[1] = v17;
    }

    sub_32D510(&v21);
  }

  return result;
}

void sub_32CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_32D510(va);
  sub_32EE50(v3);
  _Unwind_Resume(a1);
}

void *sub_32CB40(void *result, unint64_t a2)
{
  if (0x6F96F96F96F96F97 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xD20D20D20D20D3)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_32CCA4(__int128 *a1, int a2)
{
  v12 = *a1;
  v13 = 0x2C700000000;
  v3 = 0;
  while (sub_32BB58(&v12))
  {
    v4 = v13;
    while (v4 != a2)
    {
      sub_32BC3C(&v12);
      if (v12 >= *(&v12 + 1))
      {
        return v3;
      }

      v5 = sub_32BDF0(&v12, *(&v12 + 1));
      v4 = v5 >> 3;
      LODWORD(v13) = v5 >> 3;
      if (v5 < 8 || (v5 - 152000) >> 6 <= 0x7C)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v11 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
      }

      HIDWORD(v13) = v5 & 7;
      if (HIDWORD(v13) >= 3 && (v5 & 7) != 5)
      {
        v7 = __cxa_allocate_exception(0x40uLL);
        v8 = sub_2D390(v7, "Unknown wire type.", 0x12uLL);
      }
    }

    ++v3;
    sub_32BC3C(&v12);
  }

  return v3;
}

BOOL sub_32CDE4@<W0>(char **a1@<X1>, const void **a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_2C09CC(a3 + 24, 0);
  sub_2C09CC(a3 + 144, 0);
  v6 = (a3 + 264);
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  *(a3 + 264) = 0u;
  if (a3 != a2)
  {
    v7 = *(a2 + 23);
    if (*(a3 + 23) < 0)
    {
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = a2[1];
      }

      sub_13B38(a3, v8, v9);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_13A68(a3, *a2, a2[1]);
    }

    else
    {
      *a3 = *a2;
      *(a3 + 16) = a2[2];
    }
  }

  v10 = &a1[1][*a1];
  v48 = *a1;
  v49 = v10;
  v50 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v48);
    if (!result)
    {
      break;
    }

    if (v50 == 1)
    {
      v18 = sub_32BDF0(&v48, v49);
      v19 = v48;
      v48 += v18;
      if (v48 > v49)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v23 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v46 = v19;
      v47 = v18;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v54 = -1;
      sub_32C234(&v46, &v51);
      sub_32E328(&v51, v26);
      if (*(&v52 + 1))
      {
        *&v53 = *(&v52 + 1);
        operator delete(*(&v52 + 1));
      }

      if (v51)
      {
        *(&v51 + 1) = v51;
        operator delete(v51);
      }

      sub_32D614(a3 + 24, v26);
      v17 = __p[0];
      if (__p[0])
      {
LABEL_30:
        __p[1] = v17;
        operator delete(v17);
      }

LABEL_31:
      if (*(&v30 + 1))
      {
        *&v31 = *(&v30 + 1);
        operator delete(*(&v30 + 1));
      }

      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }

      if (v27[1])
      {
        *&v28 = v27[1];
        operator delete(v27[1]);
      }

      if (v26[0])
      {
        v26[1] = v26[0];
        operator delete(v26[0]);
      }
    }

    else
    {
      if (v50 == 2)
      {
        v15 = sub_32BDF0(&v48, v49);
        v16 = v48;
        v48 += v15;
        if (v48 > v49)
        {
          v20 = __cxa_allocate_exception(0x40uLL);
          v21 = sub_2D390(v20, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v46 = v16;
        v47 = v15;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v54 = -1;
        sub_32C234(&v46, &v51);
        sub_32E328(&v51, v26);
        if (*(&v52 + 1))
        {
          *&v53 = *(&v52 + 1);
          operator delete(*(&v52 + 1));
        }

        if (v51)
        {
          *(&v51 + 1) = v51;
          operator delete(v51);
        }

        sub_32D614(a3 + 144, v26);
        v17 = __p[0];
        if (__p[0])
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v50 == 3 && *(a3 + 264) == *(a3 + 272))
      {
        v12 = sub_32BDF0(&v48, v49);
        v13 = v48;
        v48 += v12;
        if (v48 > v49)
        {
          v24 = __cxa_allocate_exception(0x40uLL);
          v25 = sub_2D390(v24, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        *&v51 = v13;
        *(&v51 + 1) = v12;
        sub_32D744(&v51, v26);
        v14 = *v6;
        if (*v6)
        {
          *(a3 + 272) = v14;
          operator delete(v14);
        }

        *v6 = *v26;
        *(a3 + 280) = v27[0];
      }

      else
      {
        sub_32BC3C(&v48);
      }
    }
  }

  if (((*(a3 + 80) - *(a3 + 72)) & 0x3FFFFFFFCLL) == 4 || ((*(a3 + 200) - *(a3 + 192)) & 0x3FFFFFFFCLL) == 4 || *(a3 + 264) == *(a3 + 272))
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    *__p = 0u;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    *v26 = 0u;
    operator new();
  }

  return result;
}

void sub_32D364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v40 = a33;
    if (!a33)
    {
LABEL_3:
      v41 = a30;
      if (!a30)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v40 = a33;
    if (!a33)
    {
      goto LABEL_3;
    }
  }

  operator delete(v40);
  v41 = a30;
  if (!a30)
  {
LABEL_4:
    sub_54774(v38 + 24);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v41);
  sub_54774(v38 + 24);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_5:
    sub_32D510(v37);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a9);
  sub_32D510(v37);
  _Unwind_Resume(a1);
}

void sub_32D408(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_32D510(v1);
  _Unwind_Resume(a1);
}

void sub_32D438(_Unwind_Exception *a1)
{
  sub_54774(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_32D4DC(_Unwind_Exception *a1)
{
  sub_21DB4B4(v2 - 128);
  sub_32D510(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_32D510(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 296) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 264);
  if (v3)
  {
    *(a1 + 272) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    *(a1 + 248) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    *(a1 + 224) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    *(a1 + 200) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    *(a1 + 176) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    *(a1 + 152) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    *(a1 + 128) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    *(a1 + 104) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    *(a1 + 80) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(a1 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    *(a1 + 32) = v13;
    operator delete(v13);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_32D614(uint64_t a1, uint64_t a2)
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
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

unint64_t sub_32D744@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v224 = a2;
  v4 = *a1 + a1[1];
  *&v222 = *a1;
  *(&v222 + 1) = v4;
  v223 = 0x2C700000000;
  v5 = sub_32CCA4(&v222, 3);
  result = sub_32CCA4(&v222, 4);
  if (!v5 || !result)
  {
    return result;
  }

  v7 = sub_32BB58(&v222);
  if (v223 != 3 && v7)
  {
    do
    {
      sub_32BC3C(&v222);
      v9 = sub_32BB58(&v222);
    }

    while (v223 != 3 && v9);
  }

  v11 = sub_32BDF0(&v222, *(&v222 + 1));
  v12 = v222;
  v13 = (v222 + v11);
  v219 = v222;
  v220 = v13;
  v221 = *(&v222 + 1);
  *&v222 = v13;
  if (v13 > *(&v222 + 1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v213 = sub_2D390(exception, "Skipping over bytes exceeded message length.", 0x2CuLL);
  }

  if (!v12 || !v11)
  {
    v14 = 0;
    v16 = a2 + 1;
    v17 = *a2;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
    goto LABEL_31;
  }

  if (v11 < 8)
  {
    v14 = 0;
    v15 = v12;
    goto LABEL_28;
  }

  if (v11 >= 0x20)
  {
    v20 = 0uLL;
    v21 = vdupq_n_s64(1uLL);
    v22 = 0uLL;
    v19 = v11 & 0xFFFFFFE0;
    v23 = 0uLL;
    v24 = v12 + 1;
    v25 = 0uLL;
    v26 = v19;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v39 = vcgezq_s8(v24[-1]);
      v40 = vmovl_u8(*v39.i8);
      v41 = vmovl_high_u8(v39);
      v42 = vmovl_high_u16(v41);
      v43.i64[0] = v42.u32[2];
      v43.i64[1] = v42.u32[3];
      v30 = vaddq_s64(v30, vandq_s8(v43, v21));
      v44 = vmovl_high_u16(v40);
      v45 = vmovl_u16(*v41.i8);
      v43.i64[0] = v42.u32[0];
      v43.i64[1] = v42.u32[1];
      v29 = vaddq_s64(v29, vandq_s8(v43, v21));
      v43.i64[0] = v45.u32[2];
      v43.i64[1] = v45.u32[3];
      v28 = vaddq_s64(v28, vandq_s8(v43, v21));
      v43.i64[0] = v44.u32[2];
      v43.i64[1] = v44.u32[3];
      v25 = vaddq_s64(v25, vandq_s8(v43, v21));
      v46 = vmovl_u16(*v40.i8);
      v43.i64[0] = v45.u32[0];
      v43.i64[1] = v45.u32[1];
      v27 = vaddq_s64(v27, vandq_s8(v43, v21));
      v43.i64[0] = v46.u32[0];
      v43.i64[1] = v46.u32[1];
      v47 = vandq_s8(v43, v21);
      v43.i64[0] = v46.u32[2];
      v43.i64[1] = v46.u32[3];
      v48 = vandq_s8(v43, v21);
      v43.i64[0] = v44.u32[0];
      v43.i64[1] = v44.u32[1];
      v49 = vcgezq_s8(*v24);
      v23 = vaddq_s64(v23, vandq_s8(v43, v21));
      v50 = vmovl_u8(*v49.i8);
      v51 = vmovl_high_u8(v49);
      v22 = vaddq_s64(v22, v48);
      v52 = vmovl_high_u16(v51);
      v20 = vaddq_s64(v20, v47);
      v43.i64[0] = v52.u32[2];
      v43.i64[1] = v52.u32[3];
      v38 = vaddq_s64(v38, vandq_s8(v43, v21));
      v53 = vmovl_high_u16(v50);
      v54 = vmovl_u16(*v51.i8);
      v43.i64[0] = v52.u32[0];
      v43.i64[1] = v52.u32[1];
      v37 = vaddq_s64(v37, vandq_s8(v43, v21));
      v43.i64[0] = v54.u32[2];
      v43.i64[1] = v54.u32[3];
      v36 = vaddq_s64(v36, vandq_s8(v43, v21));
      v43.i64[0] = v53.u32[2];
      v43.i64[1] = v53.u32[3];
      v34 = vaddq_s64(v34, vandq_s8(v43, v21));
      v43.i64[0] = v54.u32[0];
      v43.i64[1] = v54.u32[1];
      v35 = vaddq_s64(v35, vandq_s8(v43, v21));
      v55 = vmovl_u16(*v50.i8);
      v43.i64[0] = v53.u32[0];
      v43.i64[1] = v53.u32[1];
      v33 = vaddq_s64(v33, vandq_s8(v43, v21));
      v43.i64[0] = v55.u32[2];
      v43.i64[1] = v55.u32[3];
      v32 = vaddq_s64(v32, vandq_s8(v43, v21));
      v43.i64[0] = v55.u32[0];
      v43.i64[1] = v55.u32[1];
      v31 = vaddq_s64(v31, vandq_s8(v43, v21));
      v24 += 2;
      v26 -= 32;
    }

    while (v26);
    v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v31, v20), vaddq_s64(v35, v27)), vaddq_s64(vaddq_s64(v33, v23), vaddq_s64(v37, v29))), vaddq_s64(vaddq_s64(vaddq_s64(v32, v22), vaddq_s64(v36, v28)), vaddq_s64(vaddq_s64(v34, v25), vaddq_s64(v38, v30)))));
    if (v19 == v11)
    {
      goto LABEL_29;
    }

    if ((v11 & 0x18) == 0)
    {
      v15 = &v12->u8[v19];
      do
      {
LABEL_28:
        v71 = *v15++;
        v14 += (v71 >> 7) ^ 1;
      }

      while (v15 != v13);
      goto LABEL_29;
    }
  }

  else
  {
    v14 = 0;
    v19 = 0;
  }

  v15 = &v12->u8[v11 & 0xFFFFFFF8];
  v56 = 0uLL;
  v57 = v14;
  v58 = &v12->i8[v19];
  v59 = v19 - (v11 & 0xFFFFFFF8);
  v60 = vdupq_n_s64(1uLL);
  v61 = 0uLL;
  v62 = 0uLL;
  do
  {
    v63 = *v58++;
    v64 = vmovl_u8(vcgez_s8(v63));
    v65 = vmovl_u16(*v64.i8);
    v66.i64[0] = v65.u32[0];
    v66.i64[1] = v65.u32[1];
    v67 = vandq_s8(v66, v60);
    v66.i64[0] = v65.u32[2];
    v66.i64[1] = v65.u32[3];
    v68 = vandq_s8(v66, v60);
    v69 = vmovl_high_u16(v64);
    v66.i64[0] = v69.u32[0];
    v66.i64[1] = v69.u32[1];
    v70 = vandq_s8(v66, v60);
    v66.i64[0] = v69.u32[2];
    v66.i64[1] = v69.u32[3];
    v62 = vaddq_s64(v62, vandq_s8(v66, v60));
    v61 = vaddq_s64(v61, v70);
    v56 = vaddq_s64(v56, v68);
    v57 = vaddq_s64(v57, v67);
    v59 += 8;
  }

  while (v59);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(v57, v61), vaddq_s64(v56, v62)));
  if ((v11 & 0xFFFFFFF8) != v11)
  {
    goto LABEL_28;
  }

LABEL_29:
  v16 = a2 + 1;
  v17 = *a2;
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  if (v14 > v18)
  {
    sub_38004(a2, v14 - v18);
    goto LABEL_33;
  }

LABEL_31:
  if (v18 > v14)
  {
    *v16 = v17 + 12 * v14;
  }

LABEL_33:
  sub_32E54C(&v224, &v219, 1);
  v72 = *a1 + a1[1];
  *&v219 = *a1;
  *(&v219 + 1) = v72;
  v220 = 0x2C700000000;
  v73 = sub_32BB58(&v219);
  if (v220 != 4 && v73)
  {
    do
    {
      sub_32BC3C(&v219);
      v75 = sub_32BB58(&v219);
    }

    while (v220 != 4 && v75);
  }

  result = sub_32BDF0(&v219, *(&v219 + 1));
  v77 = *(&v219 + 1);
  v78 = v219;
  v79 = (v219 + result);
  *&v219 = v79;
  if (v79 > *(&v219 + 1))
  {
    v214 = __cxa_allocate_exception(0x40uLL);
    v215 = sub_2D390(v214, "Skipping over bytes exceeded message length.", 0x2CuLL);
  }

  v80 = 0;
  if (!v78 || !result)
  {
    goto LABEL_58;
  }

  if (result < 8)
  {
    v80 = 0;
    v81 = v78;
    goto LABEL_57;
  }

  if (result < 0x20)
  {
    v80 = 0;
    v82 = 0;
    goto LABEL_52;
  }

  v83 = 0uLL;
  v84 = vdupq_n_s64(1uLL);
  v85 = 0uLL;
  v82 = result & 0xFFFFFFE0;
  v86 = 0uLL;
  v87 = v78 + 1;
  v88 = 0uLL;
  v89 = v82;
  v90 = 0uLL;
  v91 = 0uLL;
  v92 = 0uLL;
  v93 = 0uLL;
  v94 = 0uLL;
  v95 = 0uLL;
  v96 = 0uLL;
  v97 = 0uLL;
  v98 = 0uLL;
  v99 = 0uLL;
  v100 = 0uLL;
  v101 = 0uLL;
  do
  {
    v102 = vcgezq_s8(v87[-1]);
    v103 = vmovl_u8(*v102.i8);
    v104 = vmovl_high_u8(v102);
    v105 = vmovl_high_u16(v104);
    v106.i64[0] = v105.u32[2];
    v106.i64[1] = v105.u32[3];
    v93 = vaddq_s64(v93, vandq_s8(v106, v84));
    v107 = vmovl_high_u16(v103);
    v108 = vmovl_u16(*v104.i8);
    v106.i64[0] = v105.u32[0];
    v106.i64[1] = v105.u32[1];
    v92 = vaddq_s64(v92, vandq_s8(v106, v84));
    v106.i64[0] = v108.u32[2];
    v106.i64[1] = v108.u32[3];
    v91 = vaddq_s64(v91, vandq_s8(v106, v84));
    v106.i64[0] = v107.u32[2];
    v106.i64[1] = v107.u32[3];
    v88 = vaddq_s64(v88, vandq_s8(v106, v84));
    v109 = vmovl_u16(*v103.i8);
    v106.i64[0] = v108.u32[0];
    v106.i64[1] = v108.u32[1];
    v90 = vaddq_s64(v90, vandq_s8(v106, v84));
    v106.i64[0] = v109.u32[0];
    v106.i64[1] = v109.u32[1];
    v110 = vandq_s8(v106, v84);
    v106.i64[0] = v109.u32[2];
    v106.i64[1] = v109.u32[3];
    v111 = vandq_s8(v106, v84);
    v106.i64[0] = v107.u32[0];
    v106.i64[1] = v107.u32[1];
    v112 = vcgezq_s8(*v87);
    v86 = vaddq_s64(v86, vandq_s8(v106, v84));
    v113 = vmovl_u8(*v112.i8);
    v114 = vmovl_high_u8(v112);
    v85 = vaddq_s64(v85, v111);
    v115 = vmovl_high_u16(v114);
    v83 = vaddq_s64(v83, v110);
    v106.i64[0] = v115.u32[2];
    v106.i64[1] = v115.u32[3];
    v101 = vaddq_s64(v101, vandq_s8(v106, v84));
    v116 = vmovl_high_u16(v113);
    v117 = vmovl_u16(*v114.i8);
    v106.i64[0] = v115.u32[0];
    v106.i64[1] = v115.u32[1];
    v100 = vaddq_s64(v100, vandq_s8(v106, v84));
    v106.i64[0] = v117.u32[2];
    v106.i64[1] = v117.u32[3];
    v99 = vaddq_s64(v99, vandq_s8(v106, v84));
    v106.i64[0] = v116.u32[2];
    v106.i64[1] = v116.u32[3];
    v97 = vaddq_s64(v97, vandq_s8(v106, v84));
    v106.i64[0] = v117.u32[0];
    v106.i64[1] = v117.u32[1];
    v98 = vaddq_s64(v98, vandq_s8(v106, v84));
    v118 = vmovl_u16(*v113.i8);
    v106.i64[0] = v116.u32[0];
    v106.i64[1] = v116.u32[1];
    v96 = vaddq_s64(v96, vandq_s8(v106, v84));
    v106.i64[0] = v118.u32[2];
    v106.i64[1] = v118.u32[3];
    v95 = vaddq_s64(v95, vandq_s8(v106, v84));
    v106.i64[0] = v118.u32[0];
    v106.i64[1] = v118.u32[1];
    v94 = vaddq_s64(v94, vandq_s8(v106, v84));
    v87 += 2;
    v89 -= 32;
  }

  while (v89);
  v80 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v94, v83), vaddq_s64(v98, v90)), vaddq_s64(vaddq_s64(v96, v86), vaddq_s64(v100, v92))), vaddq_s64(vaddq_s64(vaddq_s64(v95, v85), vaddq_s64(v99, v91)), vaddq_s64(vaddq_s64(v97, v88), vaddq_s64(v101, v93)))));
  if (v82 == result)
  {
    goto LABEL_58;
  }

  if ((result & 0x18) != 0)
  {
LABEL_52:
    v81 = &v78->u8[result & 0xFFFFFFF8];
    v119 = 0uLL;
    v120 = v80;
    v121 = &v78->i8[v82];
    v122 = v82 - (result & 0xFFFFFFF8);
    v123 = vdupq_n_s64(1uLL);
    v124 = 0uLL;
    v125 = 0uLL;
    do
    {
      v126 = *v121++;
      v127 = vmovl_u8(vcgez_s8(v126));
      v128 = vmovl_u16(*v127.i8);
      v129.i64[0] = v128.u32[0];
      v129.i64[1] = v128.u32[1];
      v130 = vandq_s8(v129, v123);
      v129.i64[0] = v128.u32[2];
      v129.i64[1] = v128.u32[3];
      v131 = vandq_s8(v129, v123);
      v132 = vmovl_high_u16(v127);
      v129.i64[0] = v132.u32[0];
      v129.i64[1] = v132.u32[1];
      v133 = vandq_s8(v129, v123);
      v129.i64[0] = v132.u32[2];
      v129.i64[1] = v132.u32[3];
      v125 = vaddq_s64(v125, vandq_s8(v129, v123));
      v124 = vaddq_s64(v124, v133);
      v119 = vaddq_s64(v119, v131);
      v120 = vaddq_s64(v120, v130);
      v122 += 8;
    }

    while (v122);
    v80 = vaddvq_s64(vaddq_s64(vaddq_s64(v120, v124), vaddq_s64(v119, v125)));
    if ((result & 0xFFFFFFF8) == result)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v81 = &v78->u8[v82];
  do
  {
LABEL_57:
    v134 = *v81++;
    v80 += (v134 >> 7) ^ 1;
  }

  while (v81 != v79);
LABEL_58:
  v135 = *a2;
  if (v80 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2))
  {
    goto LABEL_86;
  }

  *&v222 = v78;
  *(&v222 + 1) = *(&v219 + 1);
  if (!result)
  {
    goto LABEL_85;
  }

  v136 = vdupq_n_s64(1uLL);
  v137 = *(&v219 + 1);
  v138 = 0.0;
  v139 = v78;
  v217 = v136;
  do
  {
    v140 = 0;
    if (!v78)
    {
      goto LABEL_78;
    }

    v141 = v139 - v78;
    if (v139 == v78)
    {
      goto LABEL_78;
    }

    if (v141 < 8)
    {
      v140 = 0;
      v142 = v78;
      goto LABEL_77;
    }

    if (v141 < 0x20)
    {
      v140 = 0;
      v143 = 0;
      goto LABEL_72;
    }

    v216 = v138;
    v144 = 0uLL;
    v143 = v141 & 0xFFFFFFFFFFFFFFE0;
    v145 = 0uLL;
    v146 = v141 & 0xFFFFFFFFFFFFFFE0;
    v147 = 0uLL;
    v148 = v78 + 1;
    v149 = 0uLL;
    v150 = 0uLL;
    v151 = 0uLL;
    v152 = 0uLL;
    v153 = 0uLL;
    v154 = 0uLL;
    v155 = 0uLL;
    v156 = 0uLL;
    v157 = 0uLL;
    v158 = 0uLL;
    v159 = 0uLL;
    v160 = 0uLL;
    v161 = 0uLL;
    do
    {
      v162 = vcgezq_s8(v148[-1]);
      v163 = vmovl_u8(*v162.i8);
      v164 = vmovl_u16(*v163.i8);
      v165.i64[0] = v164.u32[0];
      v165.i64[1] = v164.u32[1];
      v166 = vdupq_n_s64(1uLL);
      v218 = vandq_s8(v165, v166);
      v165.i64[0] = v164.u32[2];
      v165.i64[1] = v164.u32[3];
      v167 = vandq_s8(v165, v166);
      v168 = vmovl_high_u16(v163);
      v165.i64[0] = v168.u32[0];
      v165.i64[1] = v168.u32[1];
      v169 = vandq_s8(v165, v166);
      v170 = vmovl_high_u8(v162);
      v171 = vmovl_u16(*v170.i8);
      v165.i64[0] = v171.u32[0];
      v165.i64[1] = v171.u32[1];
      v172 = vandq_s8(v165, v166);
      v165.i64[0] = v168.u32[2];
      v165.i64[1] = v168.u32[3];
      v173 = vandq_s8(v165, v166);
      v165.i64[0] = v171.u32[2];
      v165.i64[1] = v171.u32[3];
      v174 = vandq_s8(v165, v166);
      v175 = vmovl_high_u16(v170);
      v165.i64[0] = v175.u32[0];
      v165.i64[1] = v175.u32[1];
      v176 = vandq_s8(v165, v166);
      v165.i64[0] = v175.u32[2];
      v165.i64[1] = v175.u32[3];
      v177 = vandq_s8(v165, v166);
      v178 = vcgezq_s8(*v148);
      v179 = vmovl_u8(*v178.i8);
      v180 = vmovl_u16(*v179.i8);
      v165.i64[0] = v180.u32[0];
      v165.i64[1] = v180.u32[1];
      v181 = vandq_s8(v165, v166);
      v165.i64[0] = v180.u32[2];
      v165.i64[1] = v180.u32[3];
      v182 = vandq_s8(v165, v166);
      v183 = vmovl_high_u16(v179);
      v165.i64[0] = v183.u32[0];
      v165.i64[1] = v183.u32[1];
      v184 = vandq_s8(v165, v166);
      v185 = vmovl_high_u8(v178);
      v186 = vmovl_u16(*v185.i8);
      v165.i64[0] = v186.u32[0];
      v165.i64[1] = v186.u32[1];
      v187 = vandq_s8(v165, v166);
      v165.i64[0] = v183.u32[2];
      v165.i64[1] = v183.u32[3];
      v188 = vandq_s8(v165, v166);
      v165.i64[0] = v186.u32[2];
      v165.i64[1] = v186.u32[3];
      v189 = vandq_s8(v165, v166);
      v190 = vmovl_high_u16(v185);
      v165.i64[0] = v190.u32[0];
      v165.i64[1] = v190.u32[1];
      v191 = vandq_s8(v165, v166);
      v165.i64[0] = v190.u32[2];
      v165.i64[1] = v190.u32[3];
      v153 = vaddq_s64(v153, v177);
      v152 = vaddq_s64(v152, v176);
      v151 = vaddq_s64(v151, v174);
      v149 = vaddq_s64(v149, v173);
      v150 = vaddq_s64(v150, v172);
      v147 = vaddq_s64(v147, v169);
      v145 = vaddq_s64(v145, v167);
      v144 = vaddq_s64(v144, v218);
      v161 = vaddq_s64(v161, vandq_s8(v165, v166));
      v160 = vaddq_s64(v160, v191);
      v159 = vaddq_s64(v159, v189);
      v157 = vaddq_s64(v157, v188);
      v158 = vaddq_s64(v158, v187);
      v156 = vaddq_s64(v156, v184);
      v155 = vaddq_s64(v155, v182);
      v154 = vaddq_s64(v154, v181);
      v148 += 2;
      v146 -= 32;
    }

    while (v146);
    v140 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v154, v144), vaddq_s64(v158, v150)), vaddq_s64(vaddq_s64(v156, v147), vaddq_s64(v160, v152))), vaddq_s64(vaddq_s64(vaddq_s64(v155, v145), vaddq_s64(v159, v151)), vaddq_s64(vaddq_s64(v157, v149), vaddq_s64(v161, v153)))));
    if (v141 != v143)
    {
      v136 = v217;
      v138 = v216;
      if ((v141 & 0x18) == 0)
      {
        v142 = &v78->i8[v143];
        do
        {
LABEL_77:
          v206 = *v142++;
          v140 += (v206 & 0x80) == 0;
        }

        while (v142 != v139);
        goto LABEL_78;
      }

LABEL_72:
      v142 = &v78->i8[v141 & 0xFFFFFFFFFFFFFFF8];
      v192 = 0uLL;
      v193 = v140;
      v194 = &v78->i8[v143];
      v195 = v143 - (v141 & 0xFFFFFFFFFFFFFFF8);
      v196 = 0uLL;
      v197 = 0uLL;
      do
      {
        v198 = *v194++;
        v199 = vmovl_u8(vcgez_s8(v198));
        v200 = vmovl_u16(*v199.i8);
        v201.i64[0] = v200.u32[0];
        v201.i64[1] = v200.u32[1];
        v202 = vandq_s8(v201, v136);
        v201.i64[0] = v200.u32[2];
        v201.i64[1] = v200.u32[3];
        v203 = vandq_s8(v201, v136);
        v204 = vmovl_high_u16(v199);
        v201.i64[0] = v204.u32[0];
        v201.i64[1] = v204.u32[1];
        v205 = vandq_s8(v201, v136);
        v201.i64[0] = v204.u32[2];
        v201.i64[1] = v204.u32[3];
        v197 = vaddq_s64(v197, vandq_s8(v201, v136));
        v196 = vaddq_s64(v196, v205);
        v192 = vaddq_s64(v192, v203);
        v193 = vaddq_s64(v193, v202);
        v195 += 8;
      }

      while (v195);
      v140 = vaddvq_s64(vaddq_s64(vaddq_s64(v193, v196), vaddq_s64(v192, v197)));
      if (v141 == (v141 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v138 = v216;
LABEL_78:
    v225 = v139;
    v207 = sub_32C014(&v225, v77);
    v208 = (-(v207 & 1) ^ (v207 >> 1));
    v209 = v208 / 1000000.0;
    if (v140)
    {
      v210 = v208 / 1000000.0;
    }

    else
    {
      v210 = 0.0;
    }

    v211 = *a2;
    if (v140 >= 1)
    {
      LODWORD(v209) = *(v211 + 12 * v140 - 12);
      v209 = *&v209 * 360.0 / 4294967300.0 + -180.0;
    }

    v138 = v138 + v210;
    *(v211 + 12 * v140) = ((v138 + v209 + 180.0) / 360.0 * 4294967300.0);
    result = sub_32EEAC(&v222);
    v77 = *(&v222 + 1);
    v139 = v222;
    v136 = v217;
  }

  while (v222 != __PAIR128__(v137, v79));
  v135 = *a2;
LABEL_85:
  if (0xAAAAAAAAAAAAAAABLL * ((*v16 - v135) >> 2) <= 1)
  {
LABEL_86:
    *v16 = v135;
  }

  return result;
}