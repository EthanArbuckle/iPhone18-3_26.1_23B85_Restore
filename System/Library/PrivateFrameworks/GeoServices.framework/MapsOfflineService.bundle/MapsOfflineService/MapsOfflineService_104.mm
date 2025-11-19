void sub_6A4794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6A47B4(BOOL *a1, void *a2)
{
  v6 = 19;
  strcpy(__p, "add_multiple_labels");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_6A48B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6A4B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_5135D0((v20 + 4848));
  sub_5135D0((v20 + 1312));
  _Unwind_Resume(a1);
}

void sub_6A4B84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t sub_6A4BA0(uint64_t a1, int **a2, int a3)
{
  v6 = a1 + 4096;
  result = 1 << sub_6A2D94(a1, a2, a3);
  if (*(v6 + 3016) == 1)
  {
    v8 = *a2;
    v9 = (*a2 - **a2);
    v10 = *v9;
    if (*(a2 + 38))
    {
      if (v10 < 0x47)
      {
        return result;
      }

      v11 = v9[35];
      if (!v11)
      {
        return result;
      }

      v12 = *(v8 + v11);
      if ((v12 & 0x141512) != 2 || (v12 & 0x40) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v10 < 0x47)
      {
        return result;
      }

      v13 = v9[35];
      if (!v13)
      {
        return result;
      }

      v14 = *(v8 + v13);
      if ((v14 & 0xA0A89) != 1 || (v14 & 0x20) != 0)
      {
        return result;
      }
    }

    v15 = result;
    sub_31D6E8(*(a1 + 7104), *(a2 + 8) | (*(a2 + 18) << 32), v26);
    if (!v27)
    {
      return v15;
    }

    result = v15;
    if (v26[0] && v26[1])
    {
      v16 = sub_6A2D94(a1, v26, a3);
      v17 = (v26[0] - *v26[0]);
      v18 = *v17;
      if (v28)
      {
        if (v18 >= 0x47)
        {
          v19 = v17[35];
          v20 = v15;
          if (!v17[35])
          {
            goto LABEL_29;
          }

          if ((*(v26[0] + v17[35]) & 0x10) == 0)
          {
            v21 = 0x100000;
LABEL_25:
            LOBYTE(v19) = (*(v26[0] + v19) & v21) != 0;
            goto LABEL_29;
          }

LABEL_28:
          LOBYTE(v19) = 1;
LABEL_29:
          if (*(v6 + 3017) == 1)
          {
            if (v28)
            {
              if (v18 < 0x47)
              {
                return v20 | (1 << v16);
              }

              v22 = v17[35];
              if (!v22)
              {
                return v20 | (1 << v16);
              }

              v23 = *(v26[0] + v22);
              if ((v23 & 0x141510) == 0)
              {
                v24 = 64;
                goto LABEL_42;
              }
            }

            else
            {
              if (v18 < 0x47)
              {
                return v20 | (1 << v16);
              }

              v25 = v17[35];
              if (!v25)
              {
                return v20 | (1 << v16);
              }

              v23 = *(v26[0] + v25);
              if ((v23 & 0xA0A88) == 0)
              {
                v24 = 32;
LABEL_42:
                if (((v23 & v24) == 0) | v19 & 1)
                {
                  return v20 | (1 << v16);
                }

                goto LABEL_39;
              }
            }

            if ((v19 & 1) == 0)
            {
LABEL_39:
              v20 = 1 << v16;
            }
          }

          return v20 | (1 << v16);
        }
      }

      else if (v18 >= 0x47)
      {
        v19 = v17[35];
        v20 = v15;
        if (!v17[35])
        {
          goto LABEL_29;
        }

        if ((*(v26[0] + v17[35]) & 8) == 0)
        {
          v21 = 0x80000;
          goto LABEL_25;
        }

        goto LABEL_28;
      }

      LOBYTE(v19) = 0;
      v20 = v15;
      goto LABEL_29;
    }
  }

  return result;
}

unint64_t sub_6A4E08(uint64_t a1, uint64_t a2)
{
  result = sub_4D1DC0(a2);
  if (result)
  {
    v5 = *(a2 + 12496);
    v6 = sub_4D1F50(a2, 0);
    v7 = sub_6A4BA0(a1, v6, v5);
    v36 = v7;
    v39 = 0;
    v9 = sub_4D23F8(a2, 0, v8);
    v38 = v9;
    v10 = *(a2 + 11992);
    if (v10 < *(a2 + 12000))
    {
      sub_681624(*(a2 + 11992), v7, 0, v9);
      *(a2 + 11992) = v10 + 24;
      *(a2 + 11992) = v10 + 24;
      result = sub_4D1DC0(a2);
      if (result < 2)
      {
        return result;
      }

      goto LABEL_7;
    }

    *(a2 + 11992) = sub_6A514C(a2 + 11984, &v36, &v39, &v38);
    result = sub_4D1DC0(a2);
    if (result >= 2)
    {
LABEL_7:
      v11 = result;
      for (i = 1; v11 != i; ++i)
      {
        v16 = sub_4D1F50(a2, i - 1);
        v17 = sub_4D1F50(a2, i);
        v18 = v17;
        v19 = *v17;
        v20 = **v17;
        v21 = (*v17 - v20);
        v22 = *v21;
        if (v22 >= 0x9B && (v23 = v21[77]) != 0 && (*(v19 + v23 + 3) & 4) != 0)
        {
          v24 = (v19 - v20);
          v25 = v22 >= 0x47;
          if (*(v17 + 38))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (!sub_6A9E6C(a1 + 3576, v17))
          {
            goto LABEL_37;
          }

          v19 = *v18;
          v24 = (*v18 - **v18);
          v25 = *v24 >= 0x47u;
          if (*(v18 + 38))
          {
LABEL_16:
            if (v25)
            {
              v26 = v24[35];
              if (v24[35])
              {
                v27 = 2;
LABEL_25:
                v28 = (*(v19 + v26) & v27) != 0;
                goto LABEL_27;
              }
            }

            goto LABEL_26;
          }
        }

        if (v25)
        {
          v26 = v24[35];
          if (v24[35])
          {
            v27 = 1;
            goto LABEL_25;
          }
        }

LABEL_26:
        v28 = 0;
LABEL_27:
        v29 = *v16;
        v30 = (*v16 - **v16);
        v31 = *v30;
        if (*(v16 + 38))
        {
          if (v31 >= 0x47)
          {
            v32 = v30[35];
            if (v32)
            {
              if (v28 != ((*&v29[v32] & 2) != 0))
              {
                goto LABEL_37;
              }

              goto LABEL_10;
            }
          }
        }

        else if (v31 >= 0x47)
        {
          v33 = v30[35];
          if (v33)
          {
            if (v28 != ((*&v29[v33] & 1) != 0))
            {
              goto LABEL_37;
            }

            goto LABEL_10;
          }
        }

        if (v28)
        {
LABEL_37:
          v34 = sub_6A4BA0(a1, v18, v5);
          v39 = v34;
          v35 = *(a2 + 11992);
          if (*(v35 - 3) != v34)
          {
            v37 = 0;
            v38 = i;
            if (v35 >= *(a2 + 12000))
            {
              v13 = sub_6A514C(a2 + 11984, &v39, &v38, &v37);
            }

            else
            {
              sub_681624(v35, v34, i, 0);
              v13 = v35 + 3;
              *(a2 + 11992) = v35 + 3;
            }

            *(a2 + 11992) = v13;
          }
        }

LABEL_10:
        v15 = *(a2 + 11992);
        result = sub_4D23F8(a2, i, v14);
        *(v15 - 8) += result;
      }
    }
  }

  return result;
}

uint64_t *sub_6A50F4(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    do
    {
      result = sub_6A4E08(a1, v4);
      v4 += 12656;
    }

    while (v4 != v5);
  }

  return result;
}

void *sub_6A514C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = sub_681624((8 * ((*(a1 + 8) - *a1) >> 3)), *a2, *a3, *a4);
  v8 = v7 + 3;
  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy(v7 - v10, *a1, v10);
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_6A5278(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_6A5290()
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
  xmmword_27A1BE8 = 0u;
  unk_27A1BF8 = 0u;
  dword_27A1C08 = 1065353216;
  sub_3A9A34(&xmmword_27A1BE8, v0);
  sub_3A9A34(&xmmword_27A1BE8, v3);
  sub_3A9A34(&xmmword_27A1BE8, __p);
  sub_3A9A34(&xmmword_27A1BE8, v9);
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
    qword_27A1BC0 = 0;
    qword_27A1BC8 = 0;
    qword_27A1BB8 = 0;
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

void sub_6A54D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A1BD0)
  {
    qword_27A1BD8 = qword_27A1BD0;
    operator delete(qword_27A1BD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_6A5584(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = sub_9274F4(a3, a1);
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    v9 = *v8;
    v13 = v8[2];
    *__p = v9;
    v10 = HIBYTE(v13);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v10 = *(&v9 + 1);
    }

    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_6A56A4(__p, a2);
    goto LABEL_10;
  }

  sub_325C(__p, *v8, v8[1]);
  v11 = HIBYTE(v13);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v11 = __p[1];
  }

  if (v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a4)
  {
    sub_74A744(__p, a5);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a5 = *__p;
    *(a5 + 16) = v13;
  }
}

void sub_6A5688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6A56A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = *(v2 + 39);
      v5 = *(v2 + 39);
      v6 = v2[3];
      if (v4 >= 0)
      {
        v7 = *(v2 + 39);
      }

      else
      {
        v7 = v2[3];
      }

      if (v7)
      {
        size = HIBYTE(v3->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v9 = v3;
        }

        else
        {
          v9 = v3->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = v3->__r_.__value_.__l.__size_;
        }

        v10 = v4 >= 0 ? v2 + 2 : v2[2];
        if (size >= v7)
        {
          v11 = v9 + size;
          v12 = *v10;
          result = v9;
          do
          {
            v13 = size - v7;
            if (v13 == -1)
            {
              break;
            }

            result = memchr(result, v12, v13 + 1);
            if (!result)
            {
              break;
            }

            v14 = result;
            result = memcmp(result, v10, v7);
            if (!result)
            {
              if (v14 != v11)
              {
                v15 = v14 - v9;
                if (v14 - v9 != -1)
                {
                  v16 = *(v2 + 63);
                  v32 = v2[6];
                  while (1)
                  {
                    v17 = (v5 >= 0 ? v5 : v6);
                    v18 = v16 >= 0 ? (v2 + 5) : v2[5];
                    v19 = (v16 >= 0 ? v16 : v32);
                    result = std::string::replace(v3, v15, v17, v18, v19);
                    v16 = *(v2 + 63);
                    v32 = v2[6];
                    v20 = v16 >= 0 ? *(v2 + 63) : v2[6];
                    v15 += v20;
                    v21 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
                    v22 = v21 >= 0 ? v3 : v3->__r_.__value_.__r.__words[0];
                    v31 = v22;
                    v23 = v21 >= 0 ? HIBYTE(v3->__r_.__value_.__r.__words[2]) : v3->__r_.__value_.__l.__size_;
                    v5 = *(v2 + 39);
                    v6 = v2[3];
                    v24 = v5 >= 0 ? v2 + 2 : v2[2];
                    v25 = v5 >= 0 ? *(v2 + 39) : v2[3];
                    v26 = v23 - v15;
                    if (v23 < v15)
                    {
                      break;
                    }

                    if (v25)
                    {
                      if (v26 >= v25)
                      {
                        v27 = v31 + v23;
                        result = v31 + v15;
                        v28 = *v24;
                        while (1)
                        {
                          v29 = v26 - v25;
                          if (v29 == -1)
                          {
                            break;
                          }

                          result = memchr(result, v28, v29 + 1);
                          if (!result)
                          {
                            break;
                          }

                          v30 = result;
                          result = memcmp(result, v24, v25);
                          if (!result)
                          {
                            if (v30 == v27)
                            {
                              goto LABEL_3;
                            }

                            v15 = v30 - v31;
                            goto LABEL_61;
                          }

                          result = v30 + 1;
                          v26 = v27 - (v30 + 1);
                          if (v26 < v25)
                          {
                            goto LABEL_3;
                          }
                        }
                      }

                      goto LABEL_3;
                    }

LABEL_61:
                    if (v15 == -1)
                    {
                      goto LABEL_3;
                    }
                  }
                }
              }

              break;
            }

            result = v14 + 1;
            size = v11 - (v14 + 1);
          }

          while (size >= v7);
        }
      }

LABEL_3:
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_6A58C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = *a3;
  if (v5)
  {
    sub_6A5584(a1, a2, v5, a4, a5);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

uint64_t sub_6A58DC(char **a1)
{
  if (sub_6A5930(a1))
  {
    return 3;
  }

  if (sub_6A5BC8(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

BOOL sub_6A5930(uint64_t a1)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = (v3 + v4);
  if (v4 >= 7)
  {
    v6 = v4;
    v7 = v3;
    do
    {
      v8 = memchr(v7, 65, v6 - 6);
      if (!v8)
      {
        break;
      }

      if (*v8 == 1919181889 && *(v8 + 3) == 1936942450)
      {
        if (v8 != v5 && &v8[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v7 = v8 + 1;
      v6 = v5 - v7;
    }

    while (v5 - v7 >= 7);
  }

  if (v4 >= 4)
  {
    v10 = v4;
    v11 = v3;
    do
    {
      v12 = memchr(v11, 72, v10 - 3);
      if (!v12)
      {
        break;
      }

      if (*v12 == 1701670728)
      {
        if (v12 != v5 && &v12[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v11 = v12 + 1;
      v10 = v5 - v11;
    }

    while (v5 - v11 >= 4);
    v13 = v4;
    v14 = v3;
    do
    {
      v15 = memchr(v14, 87, v13 - 3);
      if (!v15)
      {
        break;
      }

      if (*v15 == 1802661719)
      {
        if (v15 != v5 && &v15[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v14 = v15 + 1;
      v13 = v5 - v14;
    }

    while (v5 - v14 >= 4);
    if (v4 >= 11)
    {
      v16 = v3;
      do
      {
        v17 = memchr(v16, 67, v4 - 10);
        if (!v17)
        {
          break;
        }

        if (*v17 == 0x48746361746E6F43 && *(v17 + 3) == 0x656D6F4874636174)
        {
          if (v17 == v5 || &v17[-v3] == -1)
          {
            break;
          }

          return 1;
        }

        v16 = v17 + 1;
        v4 = v5 - v16;
      }

      while (v5 - v16 >= 11);
    }
  }

  return sub_6B93C(a1, "ContactWork", 0) != -1 || sub_6B93C(a1, "Other_Contact", 0) != -1;
}

uint64_t sub_6A5BC8(char **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = &v2[v3];
  if (v3 >= 8)
  {
    v5 = v3;
    v6 = v2;
    do
    {
      v7 = memchr(v6, 66, v5 - 7);
      if (!v7)
      {
        break;
      }

      if (*v7 == 0x7373656E69737542)
      {
        if (v7 != v4 && v7 - v2 != -1)
        {
          return 1;
        }

        break;
      }

      v6 = v7 + 1;
      v5 = v4 - v6;
    }

    while (v4 - v6 >= 8);
  }

  if (v3 >= 5)
  {
    v9 = v2;
    do
    {
      v10 = memchr(v9, 95, v3 - 4);
      if (!v10)
      {
        break;
      }

      if (*v10 == 1835093599 && v10[4] == 101)
      {
        return v10 != v4 && v10 - v2 != -1;
      }

      v9 = v10 + 1;
      v3 = v4 - v9;
    }

    while (v4 - v9 > 4);
  }

  v10 = v4;
  return v10 != v4 && v10 - v2 != -1;
}

uint64_t sub_6A5CEC(uint64_t a1)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2 >= 9)
  {
    v4 = &v3[v2];
    v5 = v3;
    do
    {
      v6 = memchr(v5, 123, v2 - 8);
      if (!v6)
      {
        break;
      }

      if (*v6 == 0x737365726464417BLL && v6[8] == 125)
      {
        if (v6 != v4 && v6 - v3 != -1)
        {
          return 3;
        }

        break;
      }

      v5 = v6 + 1;
      v2 = v4 - v5;
    }

    while (v4 - v5 >= 9);
  }

  if (sub_6A5DD8(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_6A5DD8(char **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = &v2[v3];
  if (v3 >= 19)
  {
    v5 = v3;
    v6 = v2;
    do
    {
      v7 = memchr(v6, 123, v5 - 18);
      if (!v7)
      {
        break;
      }

      if (*v7 == 0x536567726168437BLL && *(v7 + 1) == 0x614E6E6F69746174 && *(v7 + 11) == 0x7D656D614E6E6F69)
      {
        if (v7 != v4 && v7 - v2 != -1)
        {
          return 1;
        }

        break;
      }

      v6 = v7 + 1;
      v5 = v4 - v6;
    }

    while (v4 - v6 >= 19);
  }

  if (v3 >= 6)
  {
    v11 = v2;
    do
    {
      v12 = memchr(v11, 123, v3 - 5);
      if (!v12)
      {
        break;
      }

      if (*v12 == 1835093627 && *(v12 + 2) == 32101)
      {
        return v12 != v4 && v12 - v2 != -1;
      }

      v11 = v12 + 1;
      v3 = v4 - v11;
    }

    while (v4 - v11 > 5);
  }

  v12 = v4;
  return v12 != v4 && v12 - v2 != -1;
}

void sub_6A8DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

unint64_t sub_6A907C(uint64_t a1, int **a2)
{
  v4 = (*a2 - **a2);
  if (*v4 < 0x2Fu || (v5 = v4[23]) == 0)
  {
    v7 = (a1 + 3521);
LABEL_6:
    if (*(a1 + 3521))
    {
      v8 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
      v9 = (v8 - *v8);
      if (*v9 >= 0x9Bu)
      {
        v10 = v9[77];
        if (v10)
        {
          if ((*(v8 + v10 + 3) & 8) != 0)
          {
            return 0;
          }
        }
      }
    }

    goto LABEL_12;
  }

  v6 = *(*a2 + v5);
  if (v6 == 42)
  {
    v7 = (a1 + 3521);
    goto LABEL_12;
  }

  v7 = (a1 + 3521);
  if (v6 != 34)
  {
    goto LABEL_6;
  }

LABEL_12:
  if (*v7 == 1)
  {
    v11 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
    v12 = (v11 - *v11);
    if (*v12 >= 0x9Bu)
    {
      v13 = v12[77];
      if (v13)
      {
        if ((*(v11 + v13 + 3) & 4) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (*(a1 + 708) == 1 && *(a1 + 3520) == 1)
  {
    v14 = a2[1];
    if (!v14)
    {
      return v14 & 1;
    }

    v15 = (v14 - *v14);
    if (*v15 >= 0x11u)
    {
      v16 = v15[8];
      if (v16)
      {
        LODWORD(v14) = (*(v14 + v16) >> 2) & 1;
        return v14 & 1;
      }
    }

    return 0;
  }

  v18 = (*a2 - **a2);
  if (*v18 >= 0x2Fu)
  {
    v19 = v18[23];
    if (v19)
    {
      if (*(*a2 + v19) == 14)
      {
        return 1;
      }
    }
  }

  if (sub_6A9434(a1, a2))
  {
    return 1;
  }

  v20 = *a2;
  v21 = (*a2 - **a2);
  v22 = *v21;
  if (v22 < 0x2F)
  {
    if (v22 < 9)
    {
      goto LABEL_37;
    }
  }

  else if (v21[23])
  {
    v23 = *(v20 + v21[23]);
    if (v23 < 0x37 && ((0x44000010000409uLL >> v23) & 1) != 0)
    {
      return (0x7FFFFFFFFFFFFEuLL >> v23) & 1;
    }
  }

  v24 = v21[4];
  if (v24)
  {
    if (*(v20 + v24) >= *(a1 + 560))
    {
      return *(a1 + 713) == 1 && (sub_6A966C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_70EED4((a1 + 1272), a2);
    }

    goto LABEL_38;
  }

LABEL_37:
  if (*(a1 + 560) <= 0)
  {
    return *(a1 + 713) == 1 && (sub_6A966C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_70EED4((a1 + 1272), a2);
  }

LABEL_38:
  v31 = sub_3116D0(a2);
  if (sub_420B0C((a1 + 8), &v31))
  {
    return 0;
  }

  v25 = *a1;
  v26 = sub_311544(a2);
  sub_6A956C(v25, v26, 0, &v31);
  v27 = *a1;
  v28 = sub_3116D0(a2);
  sub_6A956C(v27, v28, 0, &__p);
  if (sub_6A95F8(v31, v32, a1) >= 3 && sub_6A95F8(__p, v30, a1) > 2)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    return 1;
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return *(a1 + 713) == 1 && (sub_6A966C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_70EED4((a1 + 1272), a2);
}

void sub_6A93E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_6A9434(uint64_t *a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  if (*v3 < 0x2Fu || !v3[23])
  {
    return 0;
  }

  v4 = *(v2 + v3[23]);
  if (v4 > 0x2A)
  {
    if (v4 != 43)
    {
      if (v4 != 44)
      {
        return 0;
      }

      v6 = v3[4];
      if (v3[4])
      {
        v6 = *(v2 + v6);
      }

      if (v6 > a1[100])
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else if (v4 != 6 && v4 != 12)
  {
    return 0;
  }

  v11 = v3[4];
  if (v3[4])
  {
    v11 = *(v2 + v11);
  }

  if (v11 > a1[101])
  {
    return 0;
  }

LABEL_14:
  v9 = sub_311544(a2);
  if (sub_6AA6AC(a1, a2, v9))
  {
    return 1;
  }

  v12 = sub_3116D0(a2);

  return sub_6AA6AC(a1, a2, v12);
}

uint64_t sub_6A956C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  result = sub_2B365C(a1, a2, a3, (a1 + 7800));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = *(a1 + 7800);
  v8 = *(a1 + 7808);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_6A95F8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = 0;
  do
  {
    v8 = *v6++;
    v7 += sub_6ADF94(a3, v8);
  }

  while (v6 != a2);
  return v7;
}

uint64_t sub_6A966C(uint64_t a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 9)
  {
    if ((*(a1 + 560) + *(a1 + 720)) < 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5[4];
    if (v5[4])
    {
      v7 = *&v4[v7];
    }

    if (v7 > *(a1 + 560) + *(a1 + 720))
    {
      return 0;
    }
  }

  if (v6 >= 0x2F)
  {
    v9 = v5[23];
    if (v9)
    {
      v10 = v4[v9] - 2;
      if (v10 < 0x29 && ((0x14109A04001uLL >> v10) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v85 = a1;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v11 = *(a2 + 38);
  v12 = *(a2 + 1);
  v74[0] = *a2;
  v74[1] = v12;
  v75 = a2[4];
  if (v11)
  {
    BYTE6(v75) = BYTE6(v75) == 0;
    v13 = *(a2 + 1);
    v71 = *a2;
    v72 = v13;
    v73 = a2[4];
  }

  else
  {
    v73 = a2[4];
    v14 = *(a2 + 1);
    v71 = *a2;
    v72 = v14;
    BYTE6(v73) = BYTE6(v73) == 0;
  }

  sub_31B8F4(*a1, v74, &v79);
  sub_31B8F4(*a1, &v71, &v82);
  if (v82 == v83)
  {
LABEL_22:
    for (i = v79; i != v80; i += 5)
    {
      v19 = (*i - **i);
      if (*v19 >= 0x2Fu)
      {
        v20 = v19[23];
        if (v20)
        {
          if (*(*i + v20) == 14)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  else
  {
    v15 = v82;
    while (1)
    {
      v16 = (*v15 - **v15);
      if (*v16 >= 0x2Fu)
      {
        v17 = v16[23];
        if (v17)
        {
          if (*(*v15 + v17) == 14)
          {
            break;
          }
        }
      }

      v15 = (v15 + 40);
      if (v15 == v83)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    if ((*(a1 + 714) & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  if (v78 - __p < (v83 - v82))
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v83 - v82) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = v82;
  v22 = v83;
  p_p = &__p;
  if (v82 != v83)
  {
    do
    {
      v23 = *v21;
      v24 = v21[1];
      v87 = *(v21 + 4);
      v86[0] = v23;
      v86[1] = v24;
      BYTE6(v87) = BYTE6(v87) == 0;
      sub_31F2E4(&p_p, v86);
      v21 = (v21 + 40);
    }

    while (v21 != v22);
  }

  v25 = sub_6AE7F0(__p, v77, v74, a1);
  if (v25 != v77)
  {
    v77 = v25;
  }

  v26 = sub_6AEAC8(v79, v80, v74, a1);
  v27 = v80;
  if (v26 != v80)
  {
    v27 = v26;
    v80 = v26;
  }

  v28 = __p;
  v70 = v77;
  if (__p == v77)
  {
    v8 = 0;
    if (!__p)
    {
      goto LABEL_128;
    }

LABEL_127:
    v77 = v28;
    operator delete(v28);
    goto LABEL_128;
  }

  if (v79 == v27)
  {
LABEL_126:
    v8 = 0;
    v28 = __p;
    if (!__p)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_42:
  v29 = v79;
  v30 = v80;
  while (1)
  {
    if (v29 == v30)
    {
      v28 += 5;
      if (v28 == v70)
      {
        goto LABEL_126;
      }

      goto LABEL_42;
    }

    v32 = *v28;
    v33 = (*v28 - **v28);
    v34 = *v33;
    if (*(v28 + 38))
    {
      if (v34 >= 0x49)
      {
        v35 = v33[36];
        if (v33[36])
        {
          goto LABEL_53;
        }
      }
    }

    else if (v34 >= 0x4B)
    {
      v35 = v33[37];
      if (v33[37])
      {
LABEL_53:
        v36 = *(v32 + v35);
        v37 = *(v29 + 38);
        v38 = *v29;
        v39 = (*v29 - **v29);
        v40 = *v39;
        if (*(v29 + 38))
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }
    }

    v36 = -1;
    v37 = *(v29 + 38);
    v38 = *v29;
    v39 = (*v29 - **v29);
    v40 = *v39;
    if (*(v29 + 38))
    {
LABEL_58:
      if (v40 >= 0x4B)
      {
        v41 = v39[37];
        if (v39[37])
        {
          goto LABEL_60;
        }
      }

      goto LABEL_61;
    }

LABEL_54:
    if (v40 >= 0x49)
    {
      v41 = v39[36];
      if (v39[36])
      {
LABEL_60:
        v42 = *(v38 + v41);
        goto LABEL_62;
      }
    }

LABEL_61:
    v42 = 0xFFFF;
LABEL_62:
    v43 = v36 + 18000;
    v44 = v36 - 18000;
    if ((v43 >> 5) < 0x465u)
    {
      v44 = v43;
    }

    v45 = v42 - v44;
    if (v45 > 18000)
    {
      v45 -= 36000;
    }

    if (v45 < -17999)
    {
      v45 += 36000;
    }

    if (*(v28 + 38))
    {
      if (v34 < 0x9B || (v46 = v33[77]) == 0)
      {
LABEL_79:
        v47 = 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      v47 = 1;
      if ((*(v32 + v46) & 2) == 0)
      {
        v47 = (*(v32 + v46) & 1) != 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v34 < 0x9B)
    {
      goto LABEL_79;
    }

    if (!v33[77])
    {
      v47 = 0;
LABEL_86:
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }

      goto LABEL_87;
    }

    if (*(v32 + v33[77]))
    {
      v47 = 1;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
LABEL_80:
        if (!v48)
        {
          goto LABEL_93;
        }

        v49 = v39[77];
        if (!v49)
        {
          LODWORD(v50) = 0;
LABEL_96:
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        if (*(v38 + v49))
        {
          LODWORD(v50) = 1;
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        v50 = 2;
LABEL_91:
        LODWORD(v50) = (*(v38 + v49) & v50) != 0;
        v51 = *a2;
        v52 = (*a2 - **a2);
        if (*v52 < 9u)
        {
          goto LABEL_102;
        }

        goto LABEL_97;
      }
    }

    else
    {
      v47 = (*(v32 + v33[77]) & 2) != 0;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }
    }

LABEL_87:
    if (v48)
    {
      v49 = v39[77];
      if (v49)
      {
        v50 = 1;
        if ((*(v38 + v49) & 2) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_91;
      }
    }

LABEL_93:
    LODWORD(v50) = 0;
    v51 = *a2;
    v52 = (*a2 - **a2);
    if (*v52 < 9u)
    {
      goto LABEL_102;
    }

LABEL_97:
    v53 = v52[4];
    if (v53)
    {
      v54 = *(v51 + v53);
      goto LABEL_103;
    }

LABEL_102:
    v54 = 0;
LABEL_103:
    v55 = fabs(v45 / 100.0);
    if (v54 <= *(a1 + 720) && v55 <= *(a1 + 728) && ((v47 ^ v50) & 1) != 0)
    {
      break;
    }

    v56 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v28), 1uLL);
    v57 = (v56 + v56);
    v58 = ((v57 - 1) / 2);
    if (v56 <= -4.50359963e15)
    {
      v58 = v56;
    }

    v59 = ((v57 + 1) >> 1);
    if (v56 >= 4.50359963e15)
    {
      v59 = v56;
    }

    v60 = v56 >= 0.0 ? v59 : v58;
    v61 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v29), 1uLL);
    v62 = (v61 + v61);
    v63 = v61 > -4.50359963e15 ? ((v62 - 1) / 2) : v61;
    v64 = (v62 + 1) >> 1;
    v65 = v61 < 4.50359963e15 ? v64 : v61;
    v66 = v61 >= 0.0 ? v65 : v63;
    if (v55 <= *(a1 + 728))
    {
      v67 = (*a2 - **a2);
      if (*v67 >= 9u && (v68 = v67[4]) != 0)
      {
        v31 = *(*a2 + v68);
      }

      else
      {
        v31 = 0;
      }

      if (v31 <= v66 + v60 + *(a1 + 560))
      {
        break;
      }
    }

    v29 += 5;
  }

  v8 = 1;
  v28 = __p;
  if (__p)
  {
    goto LABEL_127;
  }

LABEL_128:
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v8;
}

void sub_6A9E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a26;
    if (!a26)
    {
LABEL_3:
      v32 = a29;
      if (!a29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v31 = a26;
    if (!a26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  v32 = a29;
  if (!a29)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

unint64_t sub_6A9E6C(uint64_t a1, int **a2)
{
  if (*(a1 + 522) == 1)
  {
    v4 = (*a2 - **a2);
    if (*v4 >= 0x9Bu)
    {
      v5 = v4[77];
      if (v5)
      {
        return *(*a2 + v5 + 2) & 1;
      }
    }

    return 0;
  }

  if (*(a1 + 523) != 1)
  {
    goto LABEL_38;
  }

  v7 = (*a2 - **a2);
  if (*v7 < 0x63u)
  {
    goto LABEL_38;
  }

  v8 = v7[49];
  if (!v8)
  {
    goto LABEL_38;
  }

  v9 = *(*a2 + v8);
  if (v9 > 6)
  {
    if (*(*a2 + v8) > 9u)
    {
      if (v9 == 10)
      {
        if ((*(a1 + 533) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 != 11)
        {
          if (v9 == 12 && (*(a1 + 535) & 1) != 0)
          {
            return 1;
          }

          goto LABEL_38;
        }

        if ((*(a1 + 534) & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v9 == 7)
    {
      if ((*(a1 + 530) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 8)
      {
        if (v9 == 9 && (*(a1 + 532) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_38;
      }

      if ((*(a1 + 531) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    return 1;
  }

  if (*(*a2 + v8) > 3u)
  {
    if (v9 == 4)
    {
      if ((*(a1 + 527) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 5)
      {
        if (v9 == 6 && (*(a1 + 529) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_38;
      }

      if ((*(a1 + 528) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    return 1;
  }

  if (v9 == 1)
  {
    if ((*(a1 + 524) & 1) == 0)
    {
      goto LABEL_38;
    }

    return 1;
  }

  if (v9 == 2)
  {
    if ((*(a1 + 525) & 1) == 0)
    {
      goto LABEL_38;
    }

    return 1;
  }

  if (v9 == 3 && (*(a1 + 526) & 1) != 0)
  {
    return 1;
  }

LABEL_38:
  if (*(a1 + 536) != 1)
  {
    return 0;
  }

  v19[11] = v2;
  v19[12] = v3;
  v11 = *a1;
  v12 = a2[4];
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

    v17 = (v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v19[0] = v13;
  v19[1] = v17;
  v19[2] = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v19[3] = v18;
  v19[4] = (v12 & 0xFFFFFFFFFFFFFFLL);
  return sub_6A907C(a1, v19);
}

unint64_t sub_6AA0E0(_BYTE *a1, int **a2)
{
  if (a1[523] == 1)
  {
    v2 = (*a2 - **a2);
    if (*v2 >= 0x63u)
    {
      v3 = v2[49];
      if (v3)
      {
        v4 = *(*a2 + v3);
        if (v4 > 6)
        {
          if (*(*a2 + v3) > 9u)
          {
            if (v4 == 10)
            {
              if (a1[533])
              {
                return 1;
              }
            }

            else if (v4 == 11)
            {
              if (a1[534])
              {
                return 1;
              }
            }

            else if (v4 == 12 && (a1[535] & 1) != 0)
            {
              return 1;
            }
          }

          else if (v4 == 7)
          {
            if (a1[530])
            {
              return 1;
            }
          }

          else if (v4 == 8)
          {
            if (a1[531])
            {
              return 1;
            }
          }

          else if (v4 == 9 && (a1[532] & 1) != 0)
          {
            return 1;
          }
        }

        else if (*(*a2 + v3) > 3u)
        {
          if (v4 == 4)
          {
            if (a1[527])
            {
              return 1;
            }
          }

          else if (v4 == 5)
          {
            if (a1[528])
            {
              return 1;
            }
          }

          else if (v4 == 6 && (a1[529] & 1) != 0)
          {
            return 1;
          }
        }

        else if (v4 == 1)
        {
          if (a1[524])
          {
            return 1;
          }
        }

        else if (v4 == 2)
        {
          if (a1[525])
          {
            return 1;
          }
        }

        else if (v4 == 3 && (a1[526] & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[536] == 1)
  {
    return sub_6A907C(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6AA264(_BYTE *a1, void *a2)
{
  if (a1[522] == 1)
  {
    v2 = (*a2 - **a2);
    if (*v2 >= 0x9Bu)
    {
      v3 = v2[77];
      if (v3)
      {
        if (*(*a2 + v3 + 2))
        {
          return 1;
        }
      }
    }
  }

  if (a1[523] != 1)
  {
    return 0;
  }

  v4 = (*a2 - **a2);
  if (*v4 < 0x63u)
  {
    return 0;
  }

  v5 = v4[49];
  if (!v4[49])
  {
    return 0;
  }

  v6 = 0;
  v7 = *(*a2 + v5);
  if (v7 > 6)
  {
    if (*(*a2 + v5) > 9u)
    {
      switch(v7)
      {
        case 0xAu:
          return a1[533] & 1;
        case 0xBu:
          v6 = a1[534];
          break;
        case 0xCu:
          return a1[535] & 1;
      }
    }

    else
    {
      switch(v7)
      {
        case 7u:
          return a1[530] & 1;
        case 8u:
          return a1[531] & 1;
        case 9u:
          return a1[532] & 1;
      }
    }
  }

  else if (*(*a2 + v5) > 3u)
  {
    switch(v7)
    {
      case 4u:
        return a1[527] & 1;
      case 5u:
        return a1[528] & 1;
      case 6u:
        return a1[529] & 1;
    }
  }

  else
  {
    switch(v7)
    {
      case 1u:
        return a1[524] & 1;
      case 2u:
        return a1[525] & 1;
      case 3u:
        return a1[526] & 1;
    }
  }

  return v6 & 1;
}

uint64_t sub_6AA3EC(uint64_t *a1, int **a2)
{
  v3 = *a1;
  v4 = sub_311A24(*a2, *(a2 + 38));
  v5 = sub_311A24(*a2, *(a2 + 38) == 0) + v4;
  v6 = *a2;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (*(a2 + 38))
  {
    if (v8 < 0x29 || (v9 = v7[20]) == 0)
    {
      v10 = 0;
      v11 = *v7;
      goto LABEL_16;
    }
  }

  else if (v8 < 0x27 || (v9 = v7[19]) == 0)
  {
    v10 = 0;
    v11 = *v7;
    goto LABEL_19;
  }

  v12 = (v6 + v9 + *(v6 + v9));
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 4 * v13;
    do
    {
      v17 = v12[v14 / 4 + 1];
      v18 = &v12[v14 / 4] + v17 - *(&v12[v14 / 4 + 1] + v17);
      if (*(v18 + 2) >= 5u)
      {
        v19 = *(v18 + 4);
        if (v19)
        {
          v15 += (*(&v12[v14 / 4 + 1] + v17 + v19) >> 2) & 1;
        }
      }

      v14 += 4;
    }

    while (v16 != v14);
  }

  else
  {
    v15 = 0;
  }

  v10 = sub_314EB0(v15);
  v6 = *a2;
  v7 = (*a2 - **a2);
  v11 = *v7;
  if (!*(a2 + 38))
  {
LABEL_19:
    if (v11 < 0x29)
    {
      goto LABEL_27;
    }

    v20 = v7[20];
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_16:
  if (v11 < 0x27 || (v20 = v7[19]) == 0)
  {
LABEL_27:
    v29 = 0;
    goto LABEL_30;
  }

LABEL_21:
  v21 = (v6 + v20 + *(v6 + v20));
  v22 = *v21;
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 4 * v22;
    do
    {
      v26 = v21[v23 / 4 + 1];
      v27 = &v21[v23 / 4] + v26 - *(&v21[v23 / 4 + 1] + v26);
      if (*(v27 + 2) >= 5u)
      {
        v28 = *(v27 + 4);
        if (v28)
        {
          v24 += (*(&v21[v23 / 4 + 1] + v26 + v28) >> 2) & 1;
        }
      }

      v23 += 4;
    }

    while (v25 != v23);
  }

  else
  {
    v24 = 0;
  }

  v29 = sub_314EB0(v24);
LABEL_30:
  v30 = v5 * *(v3 + 784);
  if (v30 >= 0.0)
  {
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v31 = (v30 + v30) + 1;
  }

  else
  {
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v30 = (v31 >> 1);
LABEL_36:
  v32 = (v29 + v10) * *(v3 + 792);
  if (v32 >= 0.0)
  {
    if (v32 >= 4.50359963e15)
    {
      goto LABEL_42;
    }

    v33 = (v32 + v32) + 1;
  }

  else
  {
    if (v32 <= -4.50359963e15)
    {
      goto LABEL_42;
    }

    v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
  }

  v32 = (v33 >> 1);
LABEL_42:
  if (v32 + v30)
  {
    return v32 + v30;
  }

  else
  {
    return *(v3 + 784);
  }
}

uint64_t sub_6AA6AC(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v26 = 0u;
  v27 = 0u;
  *__p = 0u;
  sub_6AE35C(__p);
  v6 = *(__p[1] + (*(&v27 + 1) + v27) / 0x55uLL) + 48 * ((*(&v27 + 1) + v27) % 0x55uLL);
  *v6 = a3;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 40) = *(a2 + 4);
  *(v6 + 24) = v8;
  *(v6 + 8) = v7;
  v9 = __CFADD__(*(&v27 + 1), 1);
  v10 = ++*(&v27 + 1);
  if (!v9)
  {
    v11 = 0;
    do
    {
      v12 = *(*(__p[1] + v27 / 0x55) + 48 * (v27 % 0x55));
      *&v27 = v27 + 1;
      *(&v27 + 1) = v10 - 1;
      if (v27 >= 0xAA)
      {
        operator delete(*__p[1]);
        __p[1] = __p[1] + 8;
        *&v27 = v27 - 85;
      }

      v13 = 0;
      if (v11)
      {
        v13 = 0;
        while (*v13 != v12)
        {
          if (++v13 == v11)
          {
            goto LABEL_12;
          }
        }
      }

      if (v13 == v11)
      {
LABEL_12:
        v14 = v11;
        v15 = v11 >> 3;
        if (((v11 >> 3) + 1) >> 61)
        {
          sub_1794();
        }

        if (v11 >> 3 != -1)
        {
          if (!(((v11 >> 3) + 1) >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v15) = v12;
        v11 = 8 * v15 + 8;
        memcpy(0, 0, v14);
        v16 = *a1;
        sub_2B365C(*a1, v12, 0, (*a1 + 7800));
        v17 = *(v16 + 7800);
        v18 = *(v16 + 7808);
        if (v18 != v17)
        {
          if (((v18 - v17) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      v10 = *(&v27 + 1);
    }

    while (*(&v27 + 1));
  }

  v19 = __p[1];
  v20 = v26;
  *(&v27 + 1) = 0;
  v21 = (v26 - __p[1]) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v20 = v26;
      v19 = (__p[1] + 8);
      __p[1] = v19;
      v21 = (v26 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 42;
    goto LABEL_25;
  }

  if (v21 == 2)
  {
    v22 = 85;
LABEL_25:
    *&v27 = v22;
  }

  if (v19 != v20)
  {
    do
    {
      v23 = *v19++;
      operator delete(v23);
    }

    while (v19 != v20);
    if (v26 != __p[1])
    {
      *&v26 = v26 + ((__p[1] - v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_6AABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6AE724(va);
  _Unwind_Resume(a1);
}

void sub_6AABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_6AE724(&a19);
  _Unwind_Resume(a1);
}

unint64_t sub_6AACAC(uint64_t a1, int **a2)
{
  v4 = (*a2 - **a2);
  if (*v4 < 0x2Fu || (v5 = v4[23]) == 0)
  {
    v7 = (a1 + 3521);
LABEL_6:
    if (*(a1 + 3521))
    {
      v8 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
      v9 = (v8 - *v8);
      if (*v9 >= 0x9Bu)
      {
        v10 = v9[77];
        if (v10)
        {
          if ((*(v8 + v10 + 3) & 8) != 0)
          {
            return 0;
          }
        }
      }
    }

    goto LABEL_12;
  }

  v6 = *(*a2 + v5);
  if (v6 == 42)
  {
    v7 = (a1 + 3521);
    goto LABEL_12;
  }

  v7 = (a1 + 3521);
  if (v6 != 34)
  {
    goto LABEL_6;
  }

LABEL_12:
  if (*v7 == 1)
  {
    v11 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
    v12 = (v11 - *v11);
    if (*v12 >= 0x9Bu)
    {
      v13 = v12[77];
      if (v13)
      {
        if ((*(v11 + v13 + 3) & 4) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (*(a1 + 708) == 1 && *(a1 + 3520) == 1)
  {
    v14 = a2[1];
    if (!v14)
    {
      return v14 & 1;
    }

    v15 = (v14 - *v14);
    if (*v15 >= 0x11u)
    {
      v16 = v15[8];
      if (v16)
      {
        LODWORD(v14) = (*(v14 + v16) >> 2) & 1;
        return v14 & 1;
      }
    }

    return 0;
  }

  v18 = (*a2 - **a2);
  if (*v18 >= 0x2Fu)
  {
    v19 = v18[23];
    if (v19)
    {
      if (*(*a2 + v19) == 14)
      {
        return 1;
      }
    }
  }

  if (sub_6AB064(a1, a2))
  {
    return 1;
  }

  v20 = *a2;
  v21 = (*a2 - **a2);
  v22 = *v21;
  if (v22 < 0x2F)
  {
    if (v22 < 9)
    {
      goto LABEL_37;
    }
  }

  else if (v21[23])
  {
    v23 = *(v20 + v21[23]);
    if (v23 < 0x37 && ((0x44000010000409uLL >> v23) & 1) != 0)
    {
      return (0x7FFFFFFFFFFFFEuLL >> v23) & 1;
    }
  }

  v24 = v21[4];
  if (v24)
  {
    if (*(v20 + v24) >= *(a1 + 560))
    {
      return *(a1 + 713) == 1 && (sub_6AB2B4(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_713A90((a1 + 1272), a2);
    }

    goto LABEL_38;
  }

LABEL_37:
  if (*(a1 + 560) <= 0)
  {
    return *(a1 + 713) == 1 && (sub_6AB2B4(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_713A90((a1 + 1272), a2);
  }

LABEL_38:
  v31 = sub_3116D0(a2);
  if (sub_420B0C((a1 + 8), &v31))
  {
    return 0;
  }

  v25 = *a1;
  v26 = sub_311544(a2);
  sub_6A956C(v25, v26, 0, &v31);
  v27 = *a1;
  v28 = sub_3116D0(a2);
  sub_6A956C(v27, v28, 0, &__p);
  if (sub_6AB19C(v31, v32, a1) >= 3 && sub_6AB19C(__p, v30, a1) > 2)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    return 1;
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return *(a1 + 713) == 1 && (sub_6AB2B4(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_713A90((a1 + 1272), a2);
}

void sub_6AB018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_6AB064(uint64_t *a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  if (*v3 < 0x2Fu || !v3[23])
  {
    return 0;
  }

  v4 = *(v2 + v3[23]);
  if (v4 > 0x2A)
  {
    if (v4 != 43)
    {
      if (v4 != 44)
      {
        return 0;
      }

      v6 = v3[4];
      if (v3[4])
      {
        v6 = *(v2 + v6);
      }

      if (v6 > a1[100])
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else if (v4 != 6 && v4 != 12)
  {
    return 0;
  }

  v11 = v3[4];
  if (v3[4])
  {
    v11 = *(v2 + v11);
  }

  if (v11 > a1[101])
  {
    return 0;
  }

LABEL_14:
  v9 = sub_311544(a2);
  if (sub_6ABEAC(a1, a2, v9))
  {
    return 1;
  }

  v12 = sub_3116D0(a2);

  return sub_6ABEAC(a1, a2, v12);
}

uint64_t sub_6AB19C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v3 = 0;
  do
  {
    while (1)
    {
      v7 = *v6;
      v8 = *a3;
      v9 = sub_2B51D8(*a3, *v6 & 0xFFFFFFFFFFFFLL);
      if (*(v8 + 7772) == 1)
      {
        sub_30C50C(v8 + 3896, v7, 0);
      }

      sub_31D7E8(v8, v7 & 0xFFFFFFFFFFFFLL, 1);
      v10 = (v9 - *v9);
      if (*v10 >= 0x2Fu)
      {
        v11 = v10[23];
        if (v11)
        {
          v12 = *(v9 + v11);
          v13 = v12 > 0x2F;
          v14 = (1 << v12) & 0xA58466810004;
          if (!v13 && v14 != 0)
          {
            break;
          }
        }
      }

      ++v3;
      if (++v6 == a2)
      {
        return v3;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  return v3;
}

uint64_t sub_6AB2B4(uint64_t a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 9)
  {
    if ((*(a1 + 560) + *(a1 + 720)) < 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5[4];
    if (v5[4])
    {
      v7 = *&v4[v7];
    }

    if (v7 > *(a1 + 560) + *(a1 + 720))
    {
      return 0;
    }
  }

  if (v6 >= 0x2F)
  {
    v9 = v5[23];
    if (v9)
    {
      v10 = v4[v9] - 2;
      if (v10 < 0x29 && ((0x14109A04001uLL >> v10) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v85 = a1;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v11 = *(a2 + 38);
  v12 = *(a2 + 1);
  v74[0] = *a2;
  v74[1] = v12;
  v75 = a2[4];
  if (v11)
  {
    BYTE6(v75) = BYTE6(v75) == 0;
    v13 = *(a2 + 1);
    v71 = *a2;
    v72 = v13;
    v73 = a2[4];
  }

  else
  {
    v73 = a2[4];
    v14 = *(a2 + 1);
    v71 = *a2;
    v72 = v14;
    BYTE6(v73) = BYTE6(v73) == 0;
  }

  sub_31B8F4(*a1, v74, &v79);
  sub_31B8F4(*a1, &v71, &v82);
  if (v82 == v83)
  {
LABEL_22:
    for (i = v79; i != v80; i += 5)
    {
      v19 = (*i - **i);
      if (*v19 >= 0x2Fu)
      {
        v20 = v19[23];
        if (v20)
        {
          if (*(*i + v20) == 14)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  else
  {
    v15 = v82;
    while (1)
    {
      v16 = (*v15 - **v15);
      if (*v16 >= 0x2Fu)
      {
        v17 = v16[23];
        if (v17)
        {
          if (*(*v15 + v17) == 14)
          {
            break;
          }
        }
      }

      v15 = (v15 + 40);
      if (v15 == v83)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    if ((*(a1 + 714) & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  if (v78 - __p < (v83 - v82))
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v83 - v82) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = v82;
  v22 = v83;
  p_p = &__p;
  if (v82 != v83)
  {
    do
    {
      v23 = *v21;
      v24 = v21[1];
      v87 = *(v21 + 4);
      v86[0] = v23;
      v86[1] = v24;
      BYTE6(v87) = BYTE6(v87) == 0;
      sub_31F2E4(&p_p, v86);
      v21 = (v21 + 40);
    }

    while (v21 != v22);
  }

  v25 = sub_6AE7F0(__p, v77, v74, a1);
  if (v25 != v77)
  {
    v77 = v25;
  }

  v26 = sub_6AEAC8(v79, v80, v74, a1);
  v27 = v80;
  if (v26 != v80)
  {
    v27 = v26;
    v80 = v26;
  }

  v28 = __p;
  v70 = v77;
  if (__p == v77)
  {
    v8 = 0;
    if (!__p)
    {
      goto LABEL_128;
    }

LABEL_127:
    v77 = v28;
    operator delete(v28);
    goto LABEL_128;
  }

  if (v79 == v27)
  {
LABEL_126:
    v8 = 0;
    v28 = __p;
    if (!__p)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_42:
  v29 = v79;
  v30 = v80;
  while (1)
  {
    if (v29 == v30)
    {
      v28 += 5;
      if (v28 == v70)
      {
        goto LABEL_126;
      }

      goto LABEL_42;
    }

    v32 = *v28;
    v33 = (*v28 - **v28);
    v34 = *v33;
    if (*(v28 + 38))
    {
      if (v34 >= 0x49)
      {
        v35 = v33[36];
        if (v33[36])
        {
          goto LABEL_53;
        }
      }
    }

    else if (v34 >= 0x4B)
    {
      v35 = v33[37];
      if (v33[37])
      {
LABEL_53:
        v36 = *(v32 + v35);
        v37 = *(v29 + 38);
        v38 = *v29;
        v39 = (*v29 - **v29);
        v40 = *v39;
        if (*(v29 + 38))
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }
    }

    v36 = -1;
    v37 = *(v29 + 38);
    v38 = *v29;
    v39 = (*v29 - **v29);
    v40 = *v39;
    if (*(v29 + 38))
    {
LABEL_58:
      if (v40 >= 0x4B)
      {
        v41 = v39[37];
        if (v39[37])
        {
          goto LABEL_60;
        }
      }

      goto LABEL_61;
    }

LABEL_54:
    if (v40 >= 0x49)
    {
      v41 = v39[36];
      if (v39[36])
      {
LABEL_60:
        v42 = *(v38 + v41);
        goto LABEL_62;
      }
    }

LABEL_61:
    v42 = 0xFFFF;
LABEL_62:
    v43 = v36 + 18000;
    v44 = v36 - 18000;
    if ((v43 >> 5) < 0x465u)
    {
      v44 = v43;
    }

    v45 = v42 - v44;
    if (v45 > 18000)
    {
      v45 -= 36000;
    }

    if (v45 < -17999)
    {
      v45 += 36000;
    }

    if (*(v28 + 38))
    {
      if (v34 < 0x9B || (v46 = v33[77]) == 0)
      {
LABEL_79:
        v47 = 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      v47 = 1;
      if ((*(v32 + v46) & 2) == 0)
      {
        v47 = (*(v32 + v46) & 1) != 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v34 < 0x9B)
    {
      goto LABEL_79;
    }

    if (!v33[77])
    {
      v47 = 0;
LABEL_86:
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }

      goto LABEL_87;
    }

    if (*(v32 + v33[77]))
    {
      v47 = 1;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
LABEL_80:
        if (!v48)
        {
          goto LABEL_93;
        }

        v49 = v39[77];
        if (!v49)
        {
          LODWORD(v50) = 0;
LABEL_96:
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        if (*(v38 + v49))
        {
          LODWORD(v50) = 1;
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        v50 = 2;
LABEL_91:
        LODWORD(v50) = (*(v38 + v49) & v50) != 0;
        v51 = *a2;
        v52 = (*a2 - **a2);
        if (*v52 < 9u)
        {
          goto LABEL_102;
        }

        goto LABEL_97;
      }
    }

    else
    {
      v47 = (*(v32 + v33[77]) & 2) != 0;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }
    }

LABEL_87:
    if (v48)
    {
      v49 = v39[77];
      if (v49)
      {
        v50 = 1;
        if ((*(v38 + v49) & 2) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_91;
      }
    }

LABEL_93:
    LODWORD(v50) = 0;
    v51 = *a2;
    v52 = (*a2 - **a2);
    if (*v52 < 9u)
    {
      goto LABEL_102;
    }

LABEL_97:
    v53 = v52[4];
    if (v53)
    {
      v54 = *(v51 + v53);
      goto LABEL_103;
    }

LABEL_102:
    v54 = 0;
LABEL_103:
    v55 = fabs(v45 / 100.0);
    if (v54 <= *(a1 + 720) && v55 <= *(a1 + 728) && ((v47 ^ v50) & 1) != 0)
    {
      break;
    }

    v56 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v28), 1uLL);
    v57 = (v56 + v56);
    v58 = ((v57 - 1) / 2);
    if (v56 <= -4.50359963e15)
    {
      v58 = v56;
    }

    v59 = ((v57 + 1) >> 1);
    if (v56 >= 4.50359963e15)
    {
      v59 = v56;
    }

    v60 = v56 >= 0.0 ? v59 : v58;
    v61 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v29), 1uLL);
    v62 = (v61 + v61);
    v63 = v61 > -4.50359963e15 ? ((v62 - 1) / 2) : v61;
    v64 = (v62 + 1) >> 1;
    v65 = v61 < 4.50359963e15 ? v64 : v61;
    v66 = v61 >= 0.0 ? v65 : v63;
    if (v55 <= *(a1 + 728))
    {
      v67 = (*a2 - **a2);
      if (*v67 >= 9u && (v68 = v67[4]) != 0)
      {
        v31 = *(*a2 + v68);
      }

      else
      {
        v31 = 0;
      }

      if (v31 <= v66 + v60 + *(a1 + 560))
      {
        break;
      }
    }

    v29 += 5;
  }

  v8 = 1;
  v28 = __p;
  if (__p)
  {
    goto LABEL_127;
  }

LABEL_128:
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v8;
}

void sub_6ABA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a26;
    if (!a26)
    {
LABEL_3:
      v32 = a29;
      if (!a29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v31 = a26;
    if (!a26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  v32 = a29;
  if (!a29)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

unint64_t sub_6ABAB4(uint64_t a1, int **a2)
{
  if (*(a1 + 522) == 1)
  {
    v4 = (*a2 - **a2);
    if (*v4 >= 0x9Bu)
    {
      v5 = v4[77];
      if (v5)
      {
        return *(*a2 + v5 + 2) & 1;
      }
    }

    return 0;
  }

  if (*(a1 + 523) != 1)
  {
    goto LABEL_38;
  }

  v7 = (*a2 - **a2);
  if (*v7 < 0x63u)
  {
    goto LABEL_38;
  }

  v8 = v7[49];
  if (!v8)
  {
    goto LABEL_38;
  }

  v9 = *(*a2 + v8);
  if (v9 > 6)
  {
    if (*(*a2 + v8) > 9u)
    {
      if (v9 == 10)
      {
        if ((*(a1 + 533) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 != 11)
        {
          if (v9 == 12 && (*(a1 + 535) & 1) != 0)
          {
            return 1;
          }

          goto LABEL_38;
        }

        if ((*(a1 + 534) & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v9 == 7)
    {
      if ((*(a1 + 530) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 8)
      {
        if (v9 == 9 && (*(a1 + 532) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_38;
      }

      if ((*(a1 + 531) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    return 1;
  }

  if (*(*a2 + v8) > 3u)
  {
    if (v9 == 4)
    {
      if ((*(a1 + 527) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 5)
      {
        if (v9 == 6 && (*(a1 + 529) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_38;
      }

      if ((*(a1 + 528) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    return 1;
  }

  if (v9 == 1)
  {
    if ((*(a1 + 524) & 1) == 0)
    {
      goto LABEL_38;
    }

    return 1;
  }

  if (v9 == 2)
  {
    if ((*(a1 + 525) & 1) == 0)
    {
      goto LABEL_38;
    }

    return 1;
  }

  if (v9 == 3 && (*(a1 + 526) & 1) != 0)
  {
    return 1;
  }

LABEL_38:
  if (*(a1 + 536) != 1)
  {
    return 0;
  }

  v19[11] = v2;
  v19[12] = v3;
  v11 = *a1;
  v12 = a2[4];
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

    v17 = (v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v19[0] = v13;
  v19[1] = v17;
  v19[2] = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v19[3] = v18;
  v19[4] = (v12 & 0xFFFFFFFFFFFFFFLL);
  return sub_6AACAC(a1, v19);
}

unint64_t sub_6ABD28(_BYTE *a1, int **a2)
{
  if (a1[523] == 1)
  {
    v2 = (*a2 - **a2);
    if (*v2 >= 0x63u)
    {
      v3 = v2[49];
      if (v3)
      {
        v4 = *(*a2 + v3);
        if (v4 > 6)
        {
          if (*(*a2 + v3) > 9u)
          {
            if (v4 == 10)
            {
              if (a1[533])
              {
                return 1;
              }
            }

            else if (v4 == 11)
            {
              if (a1[534])
              {
                return 1;
              }
            }

            else if (v4 == 12 && (a1[535] & 1) != 0)
            {
              return 1;
            }
          }

          else if (v4 == 7)
          {
            if (a1[530])
            {
              return 1;
            }
          }

          else if (v4 == 8)
          {
            if (a1[531])
            {
              return 1;
            }
          }

          else if (v4 == 9 && (a1[532] & 1) != 0)
          {
            return 1;
          }
        }

        else if (*(*a2 + v3) > 3u)
        {
          if (v4 == 4)
          {
            if (a1[527])
            {
              return 1;
            }
          }

          else if (v4 == 5)
          {
            if (a1[528])
            {
              return 1;
            }
          }

          else if (v4 == 6 && (a1[529] & 1) != 0)
          {
            return 1;
          }
        }

        else if (v4 == 1)
        {
          if (a1[524])
          {
            return 1;
          }
        }

        else if (v4 == 2)
        {
          if (a1[525])
          {
            return 1;
          }
        }

        else if (v4 == 3 && (a1[526] & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[536] == 1)
  {
    return sub_6AACAC(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6ABEAC(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v26 = 0u;
  v27 = 0u;
  *__p = 0u;
  sub_6AE35C(__p);
  v6 = *(__p[1] + (*(&v27 + 1) + v27) / 0x55uLL) + 48 * ((*(&v27 + 1) + v27) % 0x55uLL);
  *v6 = a3;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 40) = *(a2 + 4);
  *(v6 + 24) = v8;
  *(v6 + 8) = v7;
  v9 = __CFADD__(*(&v27 + 1), 1);
  v10 = ++*(&v27 + 1);
  if (!v9)
  {
    v11 = 0;
    do
    {
      v12 = *(*(__p[1] + v27 / 0x55) + 48 * (v27 % 0x55));
      *&v27 = v27 + 1;
      *(&v27 + 1) = v10 - 1;
      if (v27 >= 0xAA)
      {
        operator delete(*__p[1]);
        __p[1] = __p[1] + 8;
        *&v27 = v27 - 85;
      }

      v13 = 0;
      if (v11)
      {
        v13 = 0;
        while (*v13 != v12)
        {
          if (++v13 == v11)
          {
            goto LABEL_12;
          }
        }
      }

      if (v13 == v11)
      {
LABEL_12:
        v14 = v11;
        v15 = v11 >> 3;
        if (((v11 >> 3) + 1) >> 61)
        {
          sub_1794();
        }

        if (v11 >> 3 != -1)
        {
          if (!(((v11 >> 3) + 1) >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v15) = v12;
        v11 = 8 * v15 + 8;
        memcpy(0, 0, v14);
        v16 = *a1;
        sub_2B365C(*a1, v12, 0, (*a1 + 7800));
        v17 = *(v16 + 7800);
        v18 = *(v16 + 7808);
        if (v18 != v17)
        {
          if (((v18 - v17) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      v10 = *(&v27 + 1);
    }

    while (*(&v27 + 1));
  }

  v19 = __p[1];
  v20 = v26;
  *(&v27 + 1) = 0;
  v21 = (v26 - __p[1]) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v20 = v26;
      v19 = (__p[1] + 8);
      __p[1] = v19;
      v21 = (v26 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 42;
    goto LABEL_25;
  }

  if (v21 == 2)
  {
    v22 = 85;
LABEL_25:
    *&v27 = v22;
  }

  if (v19 != v20)
  {
    do
    {
      v23 = *v19++;
      operator delete(v23);
    }

    while (v19 != v20);
    if (v26 != __p[1])
    {
      *&v26 = v26 + ((__p[1] - v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_6AC3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6AE724(va);
  _Unwind_Resume(a1);
}

void sub_6AC3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_6AE724(&a19);
  _Unwind_Resume(a1);
}

unint64_t sub_6AC4AC(uint64_t a1, int **a2)
{
  v4 = (*a2 - **a2);
  if (*v4 >= 0x2Fu && (v5 = v4[23]) != 0)
  {
    v6 = *(*a2 + v5);
    if (v6 == 42)
    {
      v7 = (a1 + 3521);
      goto LABEL_12;
    }

    v7 = (a1 + 3521);
    if (v6 == 34)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = (a1 + 3521);
  }

  if (*(a1 + 3521))
  {
    v8 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
    v9 = (v8 - *v8);
    if (*v9 >= 0x9Bu)
    {
      v10 = v9[77];
      if (v10)
      {
        if ((*(v8 + v10 + 3) & 8) != 0)
        {
          return 0;
        }
      }
    }
  }

LABEL_12:
  if (*v7 == 1)
  {
    v11 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
    v12 = (v11 - *v11);
    if (*v12 >= 0x9Bu)
    {
      v13 = v12[77];
      if (v13)
      {
        if ((*(v11 + v13 + 3) & 4) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (*(a1 + 708) != 1 || *(a1 + 3520) != 1)
  {
    v19 = (*a2 - **a2);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        if (*(*a2 + v20) == 14)
        {
          return 1;
        }
      }
    }

    if (sub_6AC884(a1, a2))
    {
      return 1;
    }

    v22 = *a2;
    v23 = (*a2 - **a2);
    v24 = *v23;
    if (v24 < 0x2F)
    {
      if (v24 < 9)
      {
        goto LABEL_39;
      }
    }

    else if (v23[23])
    {
      v25 = *(v22 + v23[23]);
      if (v25 < 0x37 && ((0x44000010000409uLL >> v25) & 1) != 0)
      {
        return (0x7FFFFFFFFFFFFEuLL >> v25) & 1;
      }
    }

    v26 = v23[4];
    if (v26)
    {
      if (*(v22 + v26) >= *(a1 + 560))
      {
        return *(a1 + 713) == 1 && (sub_6ACA8C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_716F58((a1 + 1272), a2);
      }

LABEL_40:
      v33 = sub_3116D0(a2);
      if (sub_420B0C((a1 + 8), &v33))
      {
        return 0;
      }

      v27 = *a1;
      v28 = sub_311544(a2);
      sub_6A956C(v27, v28, 0, &v33);
      v29 = *a1;
      v30 = sub_3116D0(a2);
      sub_6A956C(v29, v30, 0, &__p);
      if (sub_6AC9BC(v33, v34, a1, a2) >= 3 && sub_6AC9BC(__p, v32, a1, a2) > 2)
      {
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (v33)
        {
          v34 = v33;
          operator delete(v33);
        }

        return 1;
      }

      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      return *(a1 + 713) == 1 && (sub_6ACA8C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_716F58((a1 + 1272), a2);
    }

LABEL_39:
    if (*(a1 + 560) <= 0)
    {
      return *(a1 + 713) == 1 && (sub_6ACA8C(a1, a2) & 1) != 0 || *(a1 + 709) == 1 && sub_716F58((a1 + 1272), a2);
    }

    goto LABEL_40;
  }

  v14 = a2[1];
  if (!v14)
  {
    return 0;
  }

  if (*(a2 + 38))
  {
    v15 = 1024;
  }

  else
  {
    v15 = 512;
  }

  v16 = (v14 - *v14);
  if (*v16 >= 0x11u && (v17 = v16[8]) != 0)
  {
    v18 = *(v14 + v17);
  }

  else
  {
    v18 = 0;
  }

  return (v18 & v15) != 0;
}

void sub_6AC838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_6AC884(uint64_t *a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  if (*v3 < 0x2Fu || !v3[23])
  {
    return 0;
  }

  v4 = *(v2 + v3[23]);
  if (v4 > 0x2A)
  {
    if (v4 != 43)
    {
      if (v4 != 44)
      {
        return 0;
      }

      v6 = v3[4];
      if (v3[4])
      {
        v6 = *(v2 + v6);
      }

      if (v6 > a1[100])
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else if (v4 != 6 && v4 != 12)
  {
    return 0;
  }

  v11 = v3[4];
  if (v3[4])
  {
    v11 = *(v2 + v11);
  }

  if (v11 > a1[101])
  {
    return 0;
  }

LABEL_14:
  v9 = sub_311544(a2);
  if (sub_6AD8F4(a1, a2, v9))
  {
    return 1;
  }

  v12 = sub_3116D0(a2);

  return sub_6AD8F4(a1, a2, v12);
}

uint64_t sub_6AC9BC(int **a1, int **a2, uint64_t *a3, void *a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v8 = a1;
  v9 = 0;
  do
  {
    while (1)
    {
      v11 = (*a4 - **a4);
      if (*v11 >= 0x2Fu)
      {
        v12 = v11[23];
        if (v12)
        {
          break;
        }
      }

      v10 = *v8++;
      v9 += sub_6ADE64(a3, v10, 0);
      if (v8 == a2)
      {
        return v9;
      }
    }

    v13 = *(*a4 + v12);
    v15 = v13 == 9 || v13 == 20;
    v16 = *v8++;
    v9 += sub_6ADE64(a3, v16, v15);
  }

  while (v8 != a2);
  return v9;
}

uint64_t sub_6ACA8C(uint64_t a1, int **a2)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 9)
  {
    if ((*(a1 + 560) + *(a1 + 720)) < 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5[4];
    if (v5[4])
    {
      v7 = *&v4[v7];
    }

    if (v7 > *(a1 + 560) + *(a1 + 720))
    {
      return 0;
    }
  }

  if (v6 >= 0x2F)
  {
    v9 = v5[23];
    if (v9)
    {
      v10 = v4[v9] - 2;
      if (v10 < 0x29 && ((0x14109A04001uLL >> v10) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v85 = a1;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v11 = *(a2 + 38);
  v12 = *(a2 + 1);
  v74[0] = *a2;
  v74[1] = v12;
  v75 = a2[4];
  if (v11)
  {
    BYTE6(v75) = BYTE6(v75) == 0;
    v13 = *(a2 + 1);
    v71 = *a2;
    v72 = v13;
    v73 = a2[4];
  }

  else
  {
    v73 = a2[4];
    v14 = *(a2 + 1);
    v71 = *a2;
    v72 = v14;
    BYTE6(v73) = BYTE6(v73) == 0;
  }

  sub_31B8F4(*a1, v74, &v79);
  sub_31B8F4(*a1, &v71, &v82);
  if (v82 == v83)
  {
LABEL_22:
    for (i = v79; i != v80; i += 5)
    {
      v19 = (*i - **i);
      if (*v19 >= 0x2Fu)
      {
        v20 = v19[23];
        if (v20)
        {
          if (*(*i + v20) == 14)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  else
  {
    v15 = v82;
    while (1)
    {
      v16 = (*v15 - **v15);
      if (*v16 >= 0x2Fu)
      {
        v17 = v16[23];
        if (v17)
        {
          if (*(*v15 + v17) == 14)
          {
            break;
          }
        }
      }

      v15 = (v15 + 40);
      if (v15 == v83)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    if ((*(a1 + 714) & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  if (v78 - __p < (v83 - v82))
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v83 - v82) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = v82;
  v22 = v83;
  p_p = &__p;
  if (v82 != v83)
  {
    do
    {
      v23 = *v21;
      v24 = v21[1];
      v87 = *(v21 + 4);
      v86[0] = v23;
      v86[1] = v24;
      BYTE6(v87) = BYTE6(v87) == 0;
      sub_31F2E4(&p_p, v86);
      v21 = (v21 + 40);
    }

    while (v21 != v22);
  }

  v25 = sub_6AE7F0(__p, v77, v74, a1);
  if (v25 != v77)
  {
    v77 = v25;
  }

  v26 = sub_6AEAC8(v79, v80, v74, a1);
  v27 = v80;
  if (v26 != v80)
  {
    v27 = v26;
    v80 = v26;
  }

  v28 = __p;
  v70 = v77;
  if (__p == v77)
  {
    v8 = 0;
    if (!__p)
    {
      goto LABEL_128;
    }

LABEL_127:
    v77 = v28;
    operator delete(v28);
    goto LABEL_128;
  }

  if (v79 == v27)
  {
LABEL_126:
    v8 = 0;
    v28 = __p;
    if (!__p)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_42:
  v29 = v79;
  v30 = v80;
  while (1)
  {
    if (v29 == v30)
    {
      v28 += 5;
      if (v28 == v70)
      {
        goto LABEL_126;
      }

      goto LABEL_42;
    }

    v32 = *v28;
    v33 = (*v28 - **v28);
    v34 = *v33;
    if (*(v28 + 38))
    {
      if (v34 >= 0x49)
      {
        v35 = v33[36];
        if (v33[36])
        {
          goto LABEL_53;
        }
      }
    }

    else if (v34 >= 0x4B)
    {
      v35 = v33[37];
      if (v33[37])
      {
LABEL_53:
        v36 = *(v32 + v35);
        v37 = *(v29 + 38);
        v38 = *v29;
        v39 = (*v29 - **v29);
        v40 = *v39;
        if (*(v29 + 38))
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }
    }

    v36 = -1;
    v37 = *(v29 + 38);
    v38 = *v29;
    v39 = (*v29 - **v29);
    v40 = *v39;
    if (*(v29 + 38))
    {
LABEL_58:
      if (v40 >= 0x4B)
      {
        v41 = v39[37];
        if (v39[37])
        {
          goto LABEL_60;
        }
      }

      goto LABEL_61;
    }

LABEL_54:
    if (v40 >= 0x49)
    {
      v41 = v39[36];
      if (v39[36])
      {
LABEL_60:
        v42 = *(v38 + v41);
        goto LABEL_62;
      }
    }

LABEL_61:
    v42 = 0xFFFF;
LABEL_62:
    v43 = v36 + 18000;
    v44 = v36 - 18000;
    if ((v43 >> 5) < 0x465u)
    {
      v44 = v43;
    }

    v45 = v42 - v44;
    if (v45 > 18000)
    {
      v45 -= 36000;
    }

    if (v45 < -17999)
    {
      v45 += 36000;
    }

    if (*(v28 + 38))
    {
      if (v34 < 0x9B || (v46 = v33[77]) == 0)
      {
LABEL_79:
        v47 = 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      v47 = 1;
      if ((*(v32 + v46) & 2) == 0)
      {
        v47 = (*(v32 + v46) & 1) != 0;
        v48 = v40 >= 0x9B;
        if (!v37)
        {
          goto LABEL_80;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v34 < 0x9B)
    {
      goto LABEL_79;
    }

    if (!v33[77])
    {
      v47 = 0;
LABEL_86:
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }

      goto LABEL_87;
    }

    if (*(v32 + v33[77]))
    {
      v47 = 1;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
LABEL_80:
        if (!v48)
        {
          goto LABEL_93;
        }

        v49 = v39[77];
        if (!v49)
        {
          LODWORD(v50) = 0;
LABEL_96:
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        if (*(v38 + v49))
        {
          LODWORD(v50) = 1;
          v51 = *a2;
          v52 = (*a2 - **a2);
          if (*v52 < 9u)
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

        v50 = 2;
LABEL_91:
        LODWORD(v50) = (*(v38 + v49) & v50) != 0;
        v51 = *a2;
        v52 = (*a2 - **a2);
        if (*v52 < 9u)
        {
          goto LABEL_102;
        }

        goto LABEL_97;
      }
    }

    else
    {
      v47 = (*(v32 + v33[77]) & 2) != 0;
      v48 = v40 >= 0x9B;
      if (!v37)
      {
        goto LABEL_80;
      }
    }

LABEL_87:
    if (v48)
    {
      v49 = v39[77];
      if (v49)
      {
        v50 = 1;
        if ((*(v38 + v49) & 2) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_91;
      }
    }

LABEL_93:
    LODWORD(v50) = 0;
    v51 = *a2;
    v52 = (*a2 - **a2);
    if (*v52 < 9u)
    {
      goto LABEL_102;
    }

LABEL_97:
    v53 = v52[4];
    if (v53)
    {
      v54 = *(v51 + v53);
      goto LABEL_103;
    }

LABEL_102:
    v54 = 0;
LABEL_103:
    v55 = fabs(v45 / 100.0);
    if (v54 <= *(a1 + 720) && v55 <= *(a1 + 728) && ((v47 ^ v50) & 1) != 0)
    {
      break;
    }

    v56 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v28), 1uLL);
    v57 = (v56 + v56);
    v58 = ((v57 - 1) / 2);
    if (v56 <= -4.50359963e15)
    {
      v58 = v56;
    }

    v59 = ((v57 + 1) >> 1);
    if (v56 >= 4.50359963e15)
    {
      v59 = v56;
    }

    v60 = v56 >= 0.0 ? v59 : v58;
    v61 = vcvtd_n_f64_s64(sub_6AA3EC(&v85, v29), 1uLL);
    v62 = (v61 + v61);
    v63 = v61 > -4.50359963e15 ? ((v62 - 1) / 2) : v61;
    v64 = (v62 + 1) >> 1;
    v65 = v61 < 4.50359963e15 ? v64 : v61;
    v66 = v61 >= 0.0 ? v65 : v63;
    if (v55 <= *(a1 + 728))
    {
      v67 = (*a2 - **a2);
      if (*v67 >= 9u && (v68 = v67[4]) != 0)
      {
        v31 = *(*a2 + v68);
      }

      else
      {
        v31 = 0;
      }

      if (v31 <= v66 + v60 + *(a1 + 560))
      {
        break;
      }
    }

    v29 += 5;
  }

  v8 = 1;
  v28 = __p;
  if (__p)
  {
    goto LABEL_127;
  }

LABEL_128:
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v8;
}

void sub_6AD220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a26;
    if (!a26)
    {
LABEL_3:
      v32 = a29;
      if (!a29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v31 = a26;
    if (!a26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  v32 = a29;
  if (!a29)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

unint64_t sub_6AD28C(uint64_t a1, int **a2)
{
  if (*(a1 + 522) == 1)
  {
    v4 = (*a2 - **a2);
    if (*v4 >= 0x9Bu)
    {
      v5 = v4[77];
      if (v5)
      {
        return *(*a2 + v5 + 2) & 1;
      }
    }

    return 0;
  }

  if (*(a1 + 523) != 1)
  {
    goto LABEL_53;
  }

  v7 = *a2;
  v8 = (*a2 - **a2);
  v9 = *v8;
  if (v9 < 0x63)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = v8[49];
    if (v8[49])
    {
      LOBYTE(v10) = v7[v10];
    }
  }

  v11 = *(a2 + 9);
  v12 = v11 >> 31;
  if ((v11 & 0x40000000) != 0)
  {
    v12 = 2;
  }

  if (v12 == 1)
  {
    if ((v11 & 0x20000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (!v12)
  {
    if ((v11 & 0x20000000) == 0)
    {
LABEL_15:
      if (v9 < 0x6B)
      {
        goto LABEL_22;
      }

      v13 = v8[53];
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_21:
      v14 = v7[v13];
      if (v14 != 127)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_19:
    if (v9 < 0x69)
    {
      goto LABEL_22;
    }

    v13 = v8[52];
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_22:
  v14 = v10;
LABEL_23:
  if (v14 > 6u)
  {
    if (v14 > 9u)
    {
      if (v14 == 10)
      {
        if ((*(a1 + 533) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v14 != 11)
        {
          if (v14 == 12 && (*(a1 + 535) & 1) != 0)
          {
            return 1;
          }

          goto LABEL_53;
        }

        if ((*(a1 + 534) & 1) == 0)
        {
          goto LABEL_53;
        }
      }
    }

    else if (v14 == 7)
    {
      if ((*(a1 + 530) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v14 != 8)
      {
        if (v14 == 9 && (*(a1 + 532) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_53;
      }

      if ((*(a1 + 531) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    return 1;
  }

  if (v14 > 3u)
  {
    if (v14 == 4)
    {
      if ((*(a1 + 527) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v14 != 5)
      {
        if (v14 == 6 && (*(a1 + 529) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_53;
      }

      if ((*(a1 + 528) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    return 1;
  }

  if (v14 == 1)
  {
    if ((*(a1 + 524) & 1) == 0)
    {
      goto LABEL_53;
    }

    return 1;
  }

  if (v14 == 2)
  {
    if ((*(a1 + 525) & 1) == 0)
    {
      goto LABEL_53;
    }

    return 1;
  }

  if (v14 == 3 && (*(a1 + 526) & 1) != 0)
  {
    return 1;
  }

LABEL_53:
  if (*(a1 + 536) != 1)
  {
    return 0;
  }

  v26[13] = v2;
  v26[14] = v3;
  v16 = *a1;
  v17 = *(a2 + 8);
  v18 = *(a2 + 9);
  v19 = ((v18 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v18 << 32) | v17;
  v20 = sub_2B51D8(*a1, ((v18 & 0x20000000u) << 19) | (v18 << 32) & 0xFFFFFFFFFFFFLL | v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v21 = sub_30C50C(v16 + 3896, v17, 0);
    v22 = &v21[-*v21];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v21[*&v21[v23]];
      }
    }

    v24 = (v23 + 4 * v18 + 4 + *(v23 + 4 * v18 + 4));
  }

  else
  {
    v24 = 0;
  }

  v26[0] = v20;
  v26[1] = v24;
  v26[2] = sub_31D7E8(v16, v19 & 0xFFFFFFFFFFFFLL, 1);
  v26[3] = v25;
  v26[4] = (v19 ^ 0x1000000000000);
  return sub_6AC4AC(a1, v26);
}

unint64_t sub_6AD580(_BYTE *a1, int **a2)
{
  if (a1[523] == 1)
  {
    v2 = (*a2 - **a2);
    if (*v2 >= 0x63u)
    {
      v3 = v2[49];
      if (v3)
      {
        v4 = *(*a2 + v3);
        if (v4 > 6)
        {
          if (*(*a2 + v3) > 9u)
          {
            if (v4 == 10)
            {
              if (a1[533])
              {
                return 1;
              }
            }

            else if (v4 == 11)
            {
              if (a1[534])
              {
                return 1;
              }
            }

            else if (v4 == 12 && (a1[535] & 1) != 0)
            {
              return 1;
            }
          }

          else if (v4 == 7)
          {
            if (a1[530])
            {
              return 1;
            }
          }

          else if (v4 == 8)
          {
            if (a1[531])
            {
              return 1;
            }
          }

          else if (v4 == 9 && (a1[532] & 1) != 0)
          {
            return 1;
          }
        }

        else if (*(*a2 + v3) > 3u)
        {
          if (v4 == 4)
          {
            if (a1[527])
            {
              return 1;
            }
          }

          else if (v4 == 5)
          {
            if (a1[528])
            {
              return 1;
            }
          }

          else if (v4 == 6 && (a1[529] & 1) != 0)
          {
            return 1;
          }
        }

        else if (v4 == 1)
        {
          if (a1[524])
          {
            return 1;
          }
        }

        else if (v4 == 2)
        {
          if (a1[525])
          {
            return 1;
          }
        }

        else if (v4 == 3 && (a1[526] & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[536] == 1)
  {
    return sub_6AC4AC(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6AD700(_BYTE *a1, int **a2)
{
  if (a1[522] == 1)
  {
    v2 = (*a2 - **a2);
    if (*v2 >= 0x9Bu)
    {
      v3 = v2[77];
      if (v3)
      {
        if (*(*a2 + v3 + 2))
        {
          return 1;
        }
      }
    }
  }

  if (a1[523] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 0x63)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v5[49];
    if (v5[49])
    {
      LOBYTE(v7) = v4[v7];
    }
  }

  v9 = *(a2 + 9);
  v10 = v9 >> 31;
  if ((v9 & 0x40000000) != 0)
  {
    v10 = 2;
  }

  if (v10 == 1)
  {
    if ((v9 & 0x20000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    if ((v9 & 0x20000000) == 0)
    {
LABEL_16:
      if (v6 < 0x6B)
      {
        goto LABEL_23;
      }

      v11 = v5[53];
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_22:
      v12 = v4[v11];
      if (v12 != 127)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_20:
    if (v6 < 0x69)
    {
      goto LABEL_23;
    }

    v11 = v5[52];
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  v12 = v7;
LABEL_24:
  v13 = 0;
  if (v12 > 6u)
  {
    if (v12 > 9u)
    {
      switch(v12)
      {
        case 0xAu:
          return a1[533] & 1;
        case 0xBu:
          v13 = a1[534];
          break;
        case 0xCu:
          return a1[535] & 1;
      }

      return v13 & 1;
    }

    if (v12 == 7)
    {
      return a1[530] & 1;
    }

    else if (v12 == 8)
    {
      return a1[531] & 1;
    }

    else
    {
      return a1[532] & 1;
    }
  }

  else
  {
    if (v12 <= 3u)
    {
      switch(v12)
      {
        case 1u:
          return a1[524] & 1;
        case 2u:
          return a1[525] & 1;
        case 3u:
          return a1[526] & 1;
      }

      return v13 & 1;
    }

    if (v12 == 4)
    {
      return a1[527] & 1;
    }

    else if (v12 == 5)
    {
      return a1[528] & 1;
    }

    else
    {
      return a1[529] & 1;
    }
  }
}

uint64_t sub_6AD8F4(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v26 = 0u;
  v27 = 0u;
  *__p = 0u;
  sub_6AE35C(__p);
  v6 = *(__p[1] + (*(&v27 + 1) + v27) / 0x55uLL) + 48 * ((*(&v27 + 1) + v27) % 0x55uLL);
  *v6 = a3;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 40) = *(a2 + 4);
  *(v6 + 24) = v8;
  *(v6 + 8) = v7;
  v9 = __CFADD__(*(&v27 + 1), 1);
  v10 = ++*(&v27 + 1);
  if (!v9)
  {
    v11 = 0;
    do
    {
      v12 = *(*(__p[1] + v27 / 0x55) + 48 * (v27 % 0x55));
      *&v27 = v27 + 1;
      *(&v27 + 1) = v10 - 1;
      if (v27 >= 0xAA)
      {
        operator delete(*__p[1]);
        __p[1] = __p[1] + 8;
        *&v27 = v27 - 85;
      }

      v13 = 0;
      if (v11)
      {
        v13 = 0;
        while (*v13 != v12)
        {
          if (++v13 == v11)
          {
            goto LABEL_12;
          }
        }
      }

      if (v13 == v11)
      {
LABEL_12:
        v14 = v11;
        v15 = v11 >> 3;
        if (((v11 >> 3) + 1) >> 61)
        {
          sub_1794();
        }

        if (v11 >> 3 != -1)
        {
          if (!(((v11 >> 3) + 1) >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v15) = v12;
        v11 = 8 * v15 + 8;
        memcpy(0, 0, v14);
        v16 = *a1;
        sub_2B365C(*a1, v12, 0, (*a1 + 7800));
        v17 = *(v16 + 7800);
        v18 = *(v16 + 7808);
        if (v18 != v17)
        {
          if (((v18 - v17) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      v10 = *(&v27 + 1);
    }

    while (*(&v27 + 1));
  }

  v19 = __p[1];
  v20 = v26;
  *(&v27 + 1) = 0;
  v21 = (v26 - __p[1]) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v20 = v26;
      v19 = (__p[1] + 8);
      __p[1] = v19;
      v21 = (v26 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 42;
    goto LABEL_25;
  }

  if (v21 == 2)
  {
    v22 = 85;
LABEL_25:
    *&v27 = v22;
  }

  if (v19 != v20)
  {
    do
    {
      v23 = *v19++;
      operator delete(v23);
    }

    while (v19 != v20);
    if (v26 != __p[1])
    {
      *&v26 = v26 + ((__p[1] - v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_6ADE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6AE724(va);
  _Unwind_Resume(a1);
}

void sub_6ADE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_6AE724(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_6ADE64(uint64_t *a1, int *a2, int a3)
{
  v6 = *a1;
  v7 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    v8 = sub_30C50C(v6 + 3896, a2, 0);
    v9 = &v8[-*v8];
    if (*v9 < 5u)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v9 + 2);
      if (v10)
      {
        v10 += &v8[*&v8[v10]];
      }
    }

    v11 = (v10 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v10 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  v19[0] = v7;
  v19[1] = v11;
  v19[2] = sub_31D7E8(v6, a2 & 0xFFFFFFFFFFFFLL, 1);
  v19[3] = v13;
  v19[4] = a2;
  if (a3)
  {
    v14 = (v7 - *v7);
    if (*v14 >= 0x2Fu && (v15 = v14[23]) != 0)
    {
      v16 = *(v7 + v15);
      v12 = v16 == 9 || v16 == 20;
    }

    else
    {
      v12 = 0;
    }
  }

  return sub_716E70((a1 + 159), v19) & v12;
}

uint64_t sub_6ADF94(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 708))
  {
    return 1;
  }

  v5 = *a1;
  v6 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = (v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v10 = 0;
  }

  v2 = 1;
  v17[0] = v6;
  v17[1] = v10;
  v17[2] = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  v17[3] = v11;
  v18 = a2;
  if (!sub_70EE0C(a1 + 1272, v17))
  {
    v12 = (v17[0] - *v17[0]);
    v13 = *v12;
    if (BYTE6(v18))
    {
      if (v13 >= 0x9B)
      {
        v14 = v12[77];
        if (v14)
        {
          v15 = 2;
          return (*(v17[0] + v14) & v15) != 0;
        }
      }
    }

    else if (v13 >= 0x9B)
    {
      v14 = v12[77];
      if (v14)
      {
        v15 = 1;
        return (*(v17[0] + v14) & v15) != 0;
      }
    }

    return 0;
  }

  return v2;
}

unint64_t sub_6AE0E8(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = -v3;
  v5 = (*a2 - v3);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 0x39 || !v5[28] || (*(v2 + v5[28]) & 0x23) != 0x20)
    {
      if (*v5 <= 0x38u)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }
  }

  else if (v6 < 0x39 || !v5[28] || (*(v2 + v5[28]) & 7) != 4)
  {
    if (*v5 <= 0x38u)
    {
      goto LABEL_30;
    }

LABEL_15:
    v13 = v5[28];
    if (v13 && (*(v2 + v13) & 0x23) == 0x20)
    {
      goto LABEL_17;
    }

LABEL_30:
    v20 = (v2 + v4);
    if (*v20 <= 0x38u)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v8 = a2[3];
  v9 = a2[4];
  v26 = *a2;
  v10 = a2;
  v27 = *(a2 + 1);
  v28 = v8;
  v29 = v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 61);
  v11 = a1;
  if (sub_6AD28C(a1, &v26))
  {
    return 1;
  }

  a2 = v10;
  v2 = *v10;
  v18 = **v10;
  v4 = -v18;
  v5 = (*v10 - v18);
  v19 = *v5;
  a1 = v11;
  if (!*(v10 + 38))
  {
    if (v19 < 0x39)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  if (v19 < 0x39)
  {
    goto LABEL_21;
  }

LABEL_6:
  v7 = v5[28];
  if (v7 && (*(v2 + v7) & 7) == 4)
  {
LABEL_17:
    v14 = a2[3];
    v15 = a2[4];
    v26 = v2;
    v16 = a2;
    v27 = *(a2 + 1);
    v28 = v14;
    v29 = v15 & 0xFFFFFFFFFFFFLL | (((v15 & 0xFF000000000000) == 0) << 61) | 0x8000000000000000;
    v17 = a1;
    if (sub_6AD28C(a1, &v26))
    {
      return 1;
    }

    a2 = v16;
    v2 = *v16;
    v20 = (*v16 - **v16);
    v22 = *v20;
    a1 = v17;
    if (*(v16 + 38))
    {
      if (v22 >= 0x39)
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (v22 < 0x39)
    {
      return 0;
    }

LABEL_31:
    v23 = v20[28];
    if (!v23 || (*(v2 + v23) & 1) == 0 && (*(v2 + v23) & 2) == 0)
    {
      return 0;
    }

    goto LABEL_34;
  }

LABEL_21:
  v20 = (v2 + v4);
  if (*v20 > 0x38u)
  {
LABEL_22:
    v21 = v20[28];
    if (!v21 || (*(v2 + v21) & 2) == 0 && (*(v2 + v21) & 1) == 0)
    {
      return 0;
    }

LABEL_34:
    v24 = a2[3];
    v25 = a2[4];
    v26 = v2;
    v27 = *(a2 + 1);
    v28 = v24;
    v29 = v25 & 0xFFFFFFFFFFFFLL | (((v25 & 0xFF000000000000) == 0) << 61) | 0x4000000000000000;
    return sub_6AD28C(a1, &v26);
  }

  return 0;
}

void *sub_6AE35C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_6AE6CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6AE724(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 85;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

int **sub_6AE7F0(int **a1, int **a2, int **a3, uint64_t a4)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      v6 = *result;
      v7 = (*result - **result);
      v8 = *v7;
      if (v8 >= 0x2F && v7[23])
      {
        v9 = *(v6 + v7[23]);
        v10 = v9 > 0x2F;
        v11 = (1 << v9) & 0xE2E040048000;
        if (!v10 && v11 != 0)
        {
LABEL_35:
          if (result == a2)
          {
            return result;
          }

          v23 = result + 5;
          if (result + 5 == a2)
          {
            return result;
          }

          while (2)
          {
            v27 = *v23;
            v28 = (*v23 - **v23);
            v29 = *v28;
            if (v29 >= 0x2F && v28[23])
            {
              v24 = *(v27 + v28[23]);
              v10 = v24 > 0x2F;
              v25 = (1 << v24) & 0xE2E040048000;
              if (!v10 && v25 != 0)
              {
LABEL_43:
                v23 += 5;
                if (v23 == a2)
                {
                  return result;
                }

                continue;
              }
            }

            break;
          }

          if (*(v23 + 38))
          {
            if (v29 < 0x49)
            {
              goto LABEL_55;
            }

            v30 = v28[36];
            if (!v30)
            {
              goto LABEL_55;
            }

LABEL_51:
            v31 = *(v27 + v30);
            v32 = *a3;
            v33 = (*a3 - **a3);
            v34 = *v33;
            if (!*(a3 + 38))
            {
              goto LABEL_52;
            }

LABEL_56:
            if (v34 >= 0x4B)
            {
              v35 = v33[37];
              if (v35)
              {
                goto LABEL_58;
              }
            }

LABEL_59:
            v36 = 0xFFFF;
          }

          else
          {
            if (v29 >= 0x4B)
            {
              v30 = v28[37];
              if (v30)
              {
                goto LABEL_51;
              }
            }

LABEL_55:
            v31 = -1;
            v32 = *a3;
            v33 = (*a3 - **a3);
            v34 = *v33;
            if (*(a3 + 38))
            {
              goto LABEL_56;
            }

LABEL_52:
            if (v34 < 0x49)
            {
              goto LABEL_59;
            }

            v35 = v33[36];
            if (!v35)
            {
              goto LABEL_59;
            }

LABEL_58:
            v36 = *&v32[v35];
          }

          v37 = v31 + 18000;
          v38 = v31 - 18000;
          if ((v37 >> 5) < 0x465u)
          {
            v38 = v37;
          }

          v39 = v36 - v38;
          if (v39 > 18000)
          {
            v39 -= 36000;
          }

          if (v39 < -17999)
          {
            v39 += 36000;
          }

          if (fabs(v39 / 100.0) > *(a4 + 96))
          {
            v40 = *v23;
            v41 = *(v23 + 1);
            result[4] = v23[4];
            *result = v40;
            *(result + 1) = v41;
            result += 5;
          }

          goto LABEL_43;
        }
      }

      if (*(result + 38))
      {
        if (v8 >= 0x49)
        {
          v13 = v7[36];
          if (v13)
          {
            goto LABEL_17;
          }
        }
      }

      else if (v8 >= 0x4B)
      {
        v13 = v7[37];
        if (v13)
        {
LABEL_17:
          v14 = *(v6 + v13);
          v15 = *a3;
          v16 = (*a3 - **a3);
          v17 = *v16;
          if (*(a3 + 38))
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }
      }

      v14 = -1;
      v15 = *a3;
      v16 = (*a3 - **a3);
      v17 = *v16;
      if (*(a3 + 38))
      {
LABEL_22:
        if (v17 < 0x4B)
        {
          goto LABEL_25;
        }

        v18 = v16[37];
        if (!v18)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_18:
      if (v17 < 0x49 || (v18 = v16[36]) == 0)
      {
LABEL_25:
        v19 = 0xFFFF;
        goto LABEL_26;
      }

LABEL_24:
      v19 = *&v15[v18];
LABEL_26:
      v20 = v14 + 18000;
      v21 = v14 - 18000;
      if ((v20 >> 5) < 0x465u)
      {
        v21 = v20;
      }

      v22 = v19 - v21;
      if (v22 > 18000)
      {
        v22 -= 36000;
      }

      if (v22 < -17999)
      {
        v22 += 36000;
      }

      if (fabs(v22 / 100.0) <= *(a4 + 96))
      {
        goto LABEL_35;
      }

      result += 5;
      if (result == a2)
      {
        result = a2;
        goto LABEL_35;
      }
    }
  }

  return result;
}

int **sub_6AEAC8(int **a1, int **a2, int **a3, uint64_t a4)
{
  result = a2;
  if (a1 == a2)
  {
    return result;
  }

  result = a1;
  while (1)
  {
    v6 = *result;
    v7 = (*result - **result);
    v8 = *v7;
    if (v8 >= 0x2F)
    {
      if (v7[23])
      {
        v9 = *(v6 + v7[23]);
        v10 = v9 > 0x2F;
        v11 = (1 << v9) & 0xE2E040048000;
        if (!v10 && v11 != 0)
        {
          break;
        }
      }
    }

    v13 = (*a3 - **a3);
    v14 = *v13;
    if (*(a3 + 38))
    {
      if (v14 >= 0x49)
      {
        v15 = v13[36];
        if (v15)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v14 >= 0x4B)
    {
      v15 = v13[37];
      if (v15)
      {
LABEL_16:
        v16 = *(*a3 + v15);
        if (*(result + 38))
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    v16 = -1;
    if (*(result + 38))
    {
LABEL_21:
      if (v8 < 0x4B)
      {
        goto LABEL_24;
      }

      v17 = v7[37];
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_17:
    if (v8 < 0x49 || (v17 = v7[36]) == 0)
    {
LABEL_24:
      v18 = 0xFFFF;
      goto LABEL_25;
    }

LABEL_23:
    v18 = *(v6 + v17);
LABEL_25:
    v19 = v16 + 18000;
    if (((v16 + 18000) >> 5) >= 0x465u)
    {
      v19 = v16 - 18000;
    }

    v20 = v18 - v19;
    if (v20 > 18000)
    {
      v20 -= 36000;
    }

    if (v20 < -17999)
    {
      v20 += 36000;
    }

    if (fabs(v20 / 100.0) <= *(a4 + 96))
    {
      break;
    }

    result += 5;
    if (result == a2)
    {
      result = a2;
      break;
    }
  }

  if (result != a2)
  {
    v21 = result + 5;
    if (result + 5 != a2)
    {
      while (1)
      {
        v25 = *v21;
        v26 = (*v21 - **v21);
        v27 = *v26;
        if (v27 < 0x2F || !v26[23])
        {
          break;
        }

        v22 = *(v25 + v26[23]);
        v10 = v22 > 0x2F;
        v23 = (1 << v22) & 0xE2E040048000;
        if (v10 || v23 == 0)
        {
          break;
        }

LABEL_42:
        v21 += 5;
        if (v21 == a2)
        {
          return result;
        }
      }

      v28 = (*a3 - **a3);
      v29 = *v28;
      if (*(a3 + 38))
      {
        if (v29 < 0x49)
        {
          goto LABEL_54;
        }

        v30 = v28[36];
        if (!v30)
        {
          goto LABEL_54;
        }

LABEL_50:
        v31 = *(*a3 + v30);
        if (!*(v21 + 38))
        {
          goto LABEL_51;
        }

LABEL_55:
        if (v27 >= 0x4B)
        {
          v32 = v26[37];
          if (v32)
          {
            goto LABEL_57;
          }
        }

LABEL_58:
        v33 = 0xFFFF;
      }

      else
      {
        if (v29 >= 0x4B)
        {
          v30 = v28[37];
          if (v30)
          {
            goto LABEL_50;
          }
        }

LABEL_54:
        v31 = -1;
        if (*(v21 + 38))
        {
          goto LABEL_55;
        }

LABEL_51:
        if (v27 < 0x49)
        {
          goto LABEL_58;
        }

        v32 = v26[36];
        if (!v32)
        {
          goto LABEL_58;
        }

LABEL_57:
        v33 = *(v25 + v32);
      }

      v34 = v31 + 18000;
      if (((v31 + 18000) >> 5) >= 0x465u)
      {
        v34 = v31 - 18000;
      }

      v35 = v33 - v34;
      if (v35 > 18000)
      {
        v35 -= 36000;
      }

      if (v35 < -17999)
      {
        v35 += 36000;
      }

      if (fabs(v35 / 100.0) > *(a4 + 96))
      {
        v36 = *v21;
        v37 = *(v21 + 1);
        result[4] = v21[4];
        *result = v36;
        *(result + 1) = v37;
        result += 5;
      }

      goto LABEL_42;
    }
  }

  return result;
}

void *sub_6AED88(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  HIBYTE(v40[2]) = 21;
  strcpy(v40, "JunctionViewOverrides");
  __p = 0uLL;
  v39 = 0;
  v3 = sub_3AEC94(a2, v40, &__p);
  sub_41D598(v3, v41);
  v4 = __p;
  if (__p)
  {
    v5 = *(&__p + 1);
    v6 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    *(&__p + 1) = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v40[2]) < 0)
  {
    operator delete(v40[0]);
  }

  HIBYTE(v40[2]) = 9;
  strcpy(v40, "overrides");
  v8 = sub_5F680(v41, v40);
  if (SHIBYTE(v40[2]) < 0)
  {
    v10 = v8;
    operator delete(v40[0]);
    v9 = *v10;
    v32 = v10[1];
    if (*v10 == v32)
    {
      goto LABEL_42;
    }

    while (1)
    {
LABEL_17:
      if (*(v9 + 8) != 5)
      {
        sub_5AF20();
      }

      v11 = *v9;
      HIBYTE(v40[2]) = 5;
      strcpy(v40, "bg_id");
      v12 = sub_6AF338(v11, v40);
      HIBYTE(v39) = 8;
      strcpy(&__p, "arrow_id");
      v13 = sub_6AF338(v11, &__p);
      HIBYTE(v37[2]) = 16;
      strcpy(v37, "start_segment_id");
      v14 = sub_6AF4AC(v11, v37);
      v36 = 14;
      strcpy(v35, "end_segment_id");
      v15 = sub_6AF4AC(v11, v35);
      v34 = 14;
      strcpy(v33, "display_length");
      v16 = sub_6AF620(v11, v33);
      v18 = a1[1];
      v17 = a1[2];
      if (v18 >= v17)
      {
        v20 = *a1;
        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a1) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v20) >> 3);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v25 = (8 * ((v18 - *a1) >> 3));
        *v25 = v12;
        v25[1] = v13;
        v25[2] = 100 * v16;
        v25[3] = v14;
        v25[4] = v15;
        v19 = 40 * v21 + 40;
        v26 = v25 - (v18 - v20);
        memcpy(v26, v20, v18 - v20);
        *a1 = v26;
        a1[1] = v19;
        a1[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v18 = v12;
        v18[1] = v13;
        v18[2] = 100 * v16;
        v18[3] = v14;
        v18[4] = v15;
        v19 = (v18 + 5);
      }

      a1[1] = v19;
      if (v34 < 0)
      {
        operator delete(v33[0]);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_33:
          if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }
      }

      else if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v35[0]);
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(v37[0]);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_35:
        if (SHIBYTE(v40[2]) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }

LABEL_40:
      operator delete(__p);
      if (SHIBYTE(v40[2]) < 0)
      {
LABEL_41:
        operator delete(v40[0]);
      }

LABEL_16:
      v9 += 16;
      if (v9 == v32)
      {
        goto LABEL_42;
      }
    }
  }

  v9 = *v8;
  v32 = v8[1];
  if (*v8 != v32)
  {
    goto LABEL_17;
  }

LABEL_42:
  v27 = v42;
  if (v42)
  {
    do
    {
      v28 = *v27;
      v29 = *(v27 + 12);
      if (v29 != -1)
      {
        (off_266C150[v29])(v40, v27 + 5);
      }

      *(v27 + 12) = -1;
      if (*(v27 + 39) < 0)
      {
        operator delete(v27[2]);
      }

      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v30 = v41[0];
  v41[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return a1;
}

void sub_6AF208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v41 - 128);
  v43 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_6AF338(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_6AF474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6AF4AC(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_6AF5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6AF620(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_6AF75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_6AF798(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  HIBYTE(v40[2]) = 21;
  strcpy(v40, "JunctionViewOverrides");
  __p = 0uLL;
  v39 = 0;
  v3 = sub_3AEC94(a2, v40, &__p);
  sub_41D7AC(v3, v41);
  v4 = __p;
  if (__p)
  {
    v5 = *(&__p + 1);
    v6 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    *(&__p + 1) = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v40[2]) < 0)
  {
    operator delete(v40[0]);
  }

  HIBYTE(v40[2]) = 9;
  strcpy(v40, "overrides");
  v8 = sub_5F680(v41, v40);
  if (SHIBYTE(v40[2]) < 0)
  {
    v10 = v8;
    operator delete(v40[0]);
    v9 = *v10;
    v32 = v10[1];
    if (*v10 == v32)
    {
      goto LABEL_42;
    }

    while (1)
    {
LABEL_17:
      if (*(v9 + 8) != 5)
      {
        sub_5AF20();
      }

      v11 = *v9;
      HIBYTE(v40[2]) = 5;
      strcpy(v40, "bg_id");
      v12 = sub_6AF338(v11, v40);
      HIBYTE(v39) = 8;
      strcpy(&__p, "arrow_id");
      v13 = sub_6AF338(v11, &__p);
      HIBYTE(v37[2]) = 16;
      strcpy(v37, "start_segment_id");
      v14 = sub_6AF4AC(v11, v37);
      v36 = 14;
      strcpy(v35, "end_segment_id");
      v15 = sub_6AF4AC(v11, v35);
      v34 = 14;
      strcpy(v33, "display_length");
      v16 = sub_6AF620(v11, v33);
      v18 = a1[1];
      v17 = a1[2];
      if (v18 >= v17)
      {
        v20 = *a1;
        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a1) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v20) >> 3);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v25 = (8 * ((v18 - *a1) >> 3));
        *v25 = v12;
        v25[1] = v13;
        v25[2] = 100 * v16;
        v25[3] = v14;
        v25[4] = v15;
        v19 = 40 * v21 + 40;
        v26 = v25 - (v18 - v20);
        memcpy(v26, v20, v18 - v20);
        *a1 = v26;
        a1[1] = v19;
        a1[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v18 = v12;
        v18[1] = v13;
        v18[2] = 100 * v16;
        v18[3] = v14;
        v18[4] = v15;
        v19 = (v18 + 5);
      }

      a1[1] = v19;
      if (v34 < 0)
      {
        operator delete(v33[0]);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_33:
          if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }
      }

      else if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v35[0]);
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(v37[0]);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_35:
        if (SHIBYTE(v40[2]) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }

LABEL_40:
      operator delete(__p);
      if (SHIBYTE(v40[2]) < 0)
      {
LABEL_41:
        operator delete(v40[0]);
      }

LABEL_16:
      v9 += 16;
      if (v9 == v32)
      {
        goto LABEL_42;
      }
    }
  }

  v9 = *v8;
  v32 = v8[1];
  if (*v8 != v32)
  {
    goto LABEL_17;
  }

LABEL_42:
  v27 = v42;
  if (v42)
  {
    do
    {
      v28 = *v27;
      v29 = *(v27 + 12);
      if (v29 != -1)
      {
        (off_266C150[v29])(v40, v27 + 5);
      }

      *(v27 + 12) = -1;
      if (*(v27 + 39) < 0)
      {
        operator delete(v27[2]);
      }

      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v30 = v41[0];
  v41[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return a1;
}

void sub_6AFC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v41 - 128);
  v43 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_6AFD4C@<X0>(__int128 **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[138] + 2616 * a3;
  v8 = *(v7 + 40);
  v9 = *(v7 + 24);
  result = sub_4D1DC0(a2);
  if (v8 != v9 && v9 + 1 < result)
  {
    result = sub_4D1F44(a2, *(v7 + 40), *(v7 + 24) + 1, &v39);
    v14 = *a1;
    v15 = a1[1];
    while (v14 != v15)
    {
      v16 = *v14;
      v17 = v14[1];
      v38 = *(v14 + 4);
      v36 = v16;
      v37 = v17;
      result = sub_6AFFA4(v39, v40, v41, v42, &v36);
      v19 = v18;
      v21 = v41;
      v20 = v42;
      if (result)
      {
        v22 = result;
        result = sub_4D1DC0(result);
        v23 = result;
        if (v21)
        {
          result = sub_4D1DC0(v21);
          if (v19 >= v23 || v20 >= result)
          {
            if (v19 < v23 == v20 < result)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v25 = sub_4D1F50(v22, v19);
            result = sub_4D1F50(v21, v20);
            if (v25 == result)
            {
              goto LABEL_9;
            }
          }
        }

        else if (v19 >= result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!v41)
        {
          goto LABEL_9;
        }

        result = sub_4D1DC0(v41);
        if (v20 >= result)
        {
          goto LABEL_9;
        }
      }

      v26 = *v14;
      v27 = v14[1];
      v38 = *(v14 + 4);
      v36 = v26;
      v37 = v27;
      result = sub_6B0190(v39, v40, v41, v42, &v36);
      v29 = v28;
      v31 = v41;
      v30 = v42;
      if (result)
      {
        v32 = result;
        result = sub_4D1DC0(result);
        v33 = result;
        if (v31)
        {
          result = sub_4D1DC0(v31);
          if (v29 >= v33 || v30 >= result)
          {
            if (v29 < v33 == v30 < result)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v34 = sub_4D1F50(v32, v29);
            result = sub_4D1F50(v31, v30);
            if (v34 == result)
            {
              goto LABEL_9;
            }
          }
        }

        else if (v29 >= result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!v41)
        {
          goto LABEL_9;
        }

        result = sub_4D1DC0(v41);
        if (v30 >= result)
        {
          goto LABEL_9;
        }
      }

      if (v19 - v40 < v29 - v40)
      {
        v35 = v14[1];
        *a4 = *v14;
        *(a4 + 16) = v35;
        v13 = *(v14 + 4);
        goto LABEL_7;
      }

LABEL_9:
      v14 = (v14 + 40);
    }
  }

  *a4 = -1;
  *(a4 + 8) = -1;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  *(a4 + 16) = vnegq_f64(v12);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  *(a4 + 32) = v13;
  return result;
}

void *sub_6AFFA4(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return a1;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return a1;
          }
        }

        v13 = sub_4D1F50(a1, a2);
        v14 = (*v13 - **v13);
        if (*v14 >= 0x1Du && (v15 = v14[14]) != 0)
        {
          if (*(*v13 + v15) == *(a5 + 24))
          {
            return a1;
          }
        }

        else if (!*(a5 + 24))
        {
          return a1;
        }

        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v16 = sub_4D1F50(a1, a2);
      v17 = (*v16 - **v16);
      if (*v17 >= 0x1Du && (v18 = v17[14]) != 0)
      {
        if (*(*v16 + v18) == *(a5 + 24))
        {
          return a1;
        }
      }

      else if (!*(a5 + 24))
      {
        return a1;
      }

      ++a2;
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      v19 = sub_4D1F50(0, a2);
      v20 = (*v19 - **v19);
      if (*v20 >= 0x1Du && (v21 = v20[14]) != 0)
      {
        if (*(*v19 + v21) == *(a5 + 24))
        {
          return a1;
        }
      }

      else if (!*(a5 + 24))
      {
        return a1;
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

void *sub_6B0190(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return a1;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return a1;
          }
        }

        v13 = sub_4D1F50(a1, a2);
        v14 = (*v13 - **v13);
        if (*v14 >= 0x1Du && (v15 = v14[14]) != 0)
        {
          if (*(*v13 + v15) == *(a5 + 32))
          {
            return a1;
          }
        }

        else if (!*(a5 + 32))
        {
          return a1;
        }

        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v16 = sub_4D1F50(a1, a2);
      v17 = (*v16 - **v16);
      if (*v17 >= 0x1Du && (v18 = v17[14]) != 0)
      {
        if (*(*v16 + v18) == *(a5 + 32))
        {
          return a1;
        }
      }

      else if (!*(a5 + 32))
      {
        return a1;
      }

      ++a2;
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      v19 = sub_4D1F50(0, a2);
      v20 = (*v19 - **v19);
      if (*v20 >= 0x1Du && (v21 = v20[14]) != 0)
      {
        if (*(*v19 + v21) == *(a5 + 32))
        {
          return a1;
        }
      }

      else if (!*(a5 + 32))
      {
        return a1;
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

void *sub_6B037C(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  HIBYTE(v40[2]) = 21;
  strcpy(v40, "JunctionViewOverrides");
  __p = 0uLL;
  v39 = 0;
  v3 = sub_3AEC94(a2, v40, &__p);
  sub_41D820(v3, v41);
  v4 = __p;
  if (__p)
  {
    v5 = *(&__p + 1);
    v6 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    *(&__p + 1) = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v40[2]) < 0)
  {
    operator delete(v40[0]);
  }

  HIBYTE(v40[2]) = 9;
  strcpy(v40, "overrides");
  v8 = sub_5F680(v41, v40);
  if (SHIBYTE(v40[2]) < 0)
  {
    v10 = v8;
    operator delete(v40[0]);
    v9 = *v10;
    v32 = v10[1];
    if (*v10 == v32)
    {
      goto LABEL_42;
    }

    while (1)
    {
LABEL_17:
      if (*(v9 + 8) != 5)
      {
        sub_5AF20();
      }

      v11 = *v9;
      HIBYTE(v40[2]) = 5;
      strcpy(v40, "bg_id");
      v12 = sub_6AF338(v11, v40);
      HIBYTE(v39) = 8;
      strcpy(&__p, "arrow_id");
      v13 = sub_6AF338(v11, &__p);
      HIBYTE(v37[2]) = 16;
      strcpy(v37, "start_segment_id");
      v14 = sub_6AF4AC(v11, v37);
      v36 = 14;
      strcpy(v35, "end_segment_id");
      v15 = sub_6AF4AC(v11, v35);
      v34 = 14;
      strcpy(v33, "display_length");
      v16 = sub_6AF620(v11, v33);
      v18 = a1[1];
      v17 = a1[2];
      if (v18 >= v17)
      {
        v20 = *a1;
        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a1) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v20) >> 3);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v25 = (8 * ((v18 - *a1) >> 3));
        *v25 = v12;
        v25[1] = v13;
        v25[2] = 100 * v16;
        v25[3] = v14;
        v25[4] = v15;
        v19 = 40 * v21 + 40;
        v26 = v25 - (v18 - v20);
        memcpy(v26, v20, v18 - v20);
        *a1 = v26;
        a1[1] = v19;
        a1[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v18 = v12;
        v18[1] = v13;
        v18[2] = 100 * v16;
        v18[3] = v14;
        v18[4] = v15;
        v19 = (v18 + 5);
      }

      a1[1] = v19;
      if (v34 < 0)
      {
        operator delete(v33[0]);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_33:
          if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }
      }

      else if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v35[0]);
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(v37[0]);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_35:
        if (SHIBYTE(v40[2]) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }

LABEL_40:
      operator delete(__p);
      if (SHIBYTE(v40[2]) < 0)
      {
LABEL_41:
        operator delete(v40[0]);
      }

LABEL_16:
      v9 += 16;
      if (v9 == v32)
      {
        goto LABEL_42;
      }
    }
  }

  v9 = *v8;
  v32 = v8[1];
  if (*v8 != v32)
  {
    goto LABEL_17;
  }

LABEL_42:
  v27 = v42;
  if (v42)
  {
    do
    {
      v28 = *v27;
      v29 = *(v27 + 12);
      if (v29 != -1)
      {
        (off_266C150[v29])(v40, v27 + 5);
      }

      *(v27 + 12) = -1;
      if (*(v27 + 39) < 0)
      {
        operator delete(v27[2]);
      }

      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v30 = v41[0];
  v41[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return a1;
}

void sub_6B07FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v41 - 128);
  v43 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v43;
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_6B0930()
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
  xmmword_27A2C78 = 0u;
  unk_27A2C88 = 0u;
  dword_27A2C98 = 1065353216;
  sub_3A9A34(&xmmword_27A2C78, v0);
  sub_3A9A34(&xmmword_27A2C78, v3);
  sub_3A9A34(&xmmword_27A2C78, __p);
  sub_3A9A34(&xmmword_27A2C78, v9);
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
    qword_27A2C50 = 0;
    qword_27A2C58 = 0;
    qword_27A2C48 = 0;
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

void sub_6B0B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2C60)
  {
    qword_27A2C68 = qword_27A2C60;
    operator delete(qword_27A2C60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6B0C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_3AF6B4(a2);
  sub_6E4EC0(a1 + 8, a2, 1, 1, a3 + 2352);
  *(a1 + 7568) = a3;
  sub_6BEBC0(a1 + 7576, a2, *(a4 + 1432));
  sub_919618((a1 + 7592), a1 + 8, a2, a3, a4);
  *(a1 + 7736) = 0;
  *(a1 + 7704) = 0u;
  *(a1 + 7720) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0u;
  *(a1 + 7640) = 0u;
  *(a1 + 7656) = 0u;
  *(a1 + 7624) = 0u;
  return a1;
}

uint64_t *sub_6B0CE8(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2[139];
  v6 = a2[138];
  do
  {
    if (v5 + v4 == v6)
    {
      return result;
    }

    v7 = *(v5 + v4 - 2232);
    v4 -= 2616;
  }

  while (v7 != 5);
  v8 = 0x3795876FF3795877 * ((v5 - v6) >> 3);
  v9 = 0x3795876FF3795877 * ((-2616 - v4) >> 3);
  v56 = v8 - v9;
  if (v8 != v9)
  {
    v10 = 0;
    v55 = v8 + ~v9;
    do
    {
      while (1)
      {
        v11 = sub_578320(a2 + 138, v10);
        v12 = v11;
        v13 = *(v11 + 16) == -1 ? *(v11 + 24) - 1 : *(v11 + 16);
        v14 = sub_53A634(a2 + 936, v13);
        if (sub_6BEE6C((v3 + 947), v12, v14))
        {
          break;
        }

        *(v12 + 2058) = 1;
        if (++v10 == v56)
        {
          goto LABEL_24;
        }
      }

      sub_6B12A0(v3, a2, v12);
      sub_6B1544((v12 + 2008), *(v12 + 24) - *(v12 + 40));
      v15 = *(v12 + 40);
      v16 = *(v12 + 24);
      if (v15 <= v16)
      {
        v17 = *(v12 + 24);
      }

      else
      {
        v17 = *(v12 + 40);
      }

      if (v15 < v16)
      {
        do
        {
          v18 = sub_4D1F50(a2, v15);
          sub_6B1674(v3, a2, v12, v15);
          sub_6B1900(v3, a2, v12, v15);
          v19 = sub_6B1BFC((v12 + 2008), v15 - *(v12 + 40));
          sub_6B1E18(v3, v18, v19);
          sub_6B21AC(v3, a2, v12, v15);
          sub_6B2338(v3, a2, v12, v15);
          if ((*(v12 + 2058) & 1) == 0 && sub_6B2EC8(v3, a2, v12, v18, v15))
          {
            *(v12 + 2058) = 1;
          }

          ++v15;
        }

        while (v17 != v15);
      }

      if (*(v3[946] + 2347))
      {
        sub_6B35DC(v3, a2, v12);
      }

      sub_6B38D0(v3, a2, v12);
      ++v10;
    }

    while (v10 != v56);
LABEL_24:
    v20 = 0;
    while (1)
    {
      result = sub_578320(a2 + 138, v20);
      if (result[251] != result[252])
      {
        v21 = result;
        if (v20 < v55)
        {
          result = sub_578320(a2 + 138, v20 + 1);
        }

        v57 = result;
        v22 = (v21 + 385);
        if (!*(v21 + 386))
        {
          v22 = a2 + 1097;
        }

        v23 = *(v21 + 40);
        v24 = *(v21 + 24);
        v25 = v23 >= v24;
        if (v23 > v24)
        {
          v24 = *(v21 + 40);
        }

        v59 = v24;
        if (!v25)
        {
          break;
        }
      }

LABEL_25:
      if (++v20 == v56)
      {
        return result;
      }
    }

    v26 = 0;
    v60 = *v22;
    v58 = v20;
    while (1)
    {
      v27 = sub_6B1BFC((v21 + 2008), v23 - *(v21 + 40));
      v28 = sub_69CD18(a2, v20, v23);
      v29 = v28 + v26;
      sub_681624(&v62, *(v21 + 1008) - v29 + v28, *(v21 + 1008) - v29, *(v21 + 120));
      sub_6C8FE4(v27, &v62);
      if (*(v21 + 2008) != *(v21 + 2016))
      {
        v30 = sub_6B1BFC((v21 + 2008), v23 - *(v21 + 40));
        if (sub_4D1DC0(a2) - 1 > v23)
        {
          if (*(v21 + 64) == v23)
          {
            v31 = *(v21 + 72);
          }

          else
          {
            v31 = v23 + 1;
          }

          v32 = v31 - *(v21 + 40);
          if (v32 >= 0x4FA4FA4FA4FA4FA5 * ((*(v21 + 2016) - *(v21 + 2008)) >> 3))
          {
            v34 = v31 - v57[5];
            if (v34 >= 0x4FA4FA4FA4FA4FA5 * ((v57[252] - v57[251]) >> 3))
            {
              v35 = sub_6C6A34(v63);
              sub_6B6624(v35, v30, v63);
              sub_5C3168(v63);
              goto LABEL_47;
            }

            v33 = sub_5DBECC(v57 + 251, v34);
          }

          else
          {
            v33 = sub_6B1BFC((v21 + 2008), v32);
          }

          sub_6B6624(v33, v30, v33);
        }
      }

LABEL_47:
      v61 = v29;
      sub_6CAA4C(v27);
      v36 = sub_4D1F50(a2, v23);
      sub_6B3A9C(v3, v36, v27, a2, v21);
      v37 = sub_4D1F50(a2, v23);
      sub_6B4C98(v3, v37, v27);
      sub_6B5148(v3, v27, v60);
      v38 = sub_4D2130(v27);
      v40 = *v38;
      v39 = v38[1];
      result = sub_6C8E78(v27);
      v41 = *result;
      v42 = result[1];
      if (v39 != v40 || v42 != v41)
      {
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 3);
        if (v60 == 1)
        {
          v45 = 0;
        }

        else
        {
          result = sub_6C6B88(v27);
          v45 = result - v44;
        }

        v46 = (v45 + v44);
        if (v46 <= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = (v45 + v44);
        }

        v48 = v45;
        if (v45 < v46)
        {
          do
          {
            v49 = sub_4D2130(v27);
            result = sub_6C8830(v27, v48++, *v49);
          }

          while (v47 != v48);
        }

        v50 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3);
        if (v60 == 1)
        {
          result = sub_6C6B88(v27);
          v51 = result - v50;
        }

        else
        {
          v51 = 0;
        }

        v52 = (v51 + v50);
        if (v52 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = (v51 + v50);
        }

        if (v51 < v52)
        {
          do
          {
            v54 = sub_6C8E78(v27);
            result = sub_6C8830(v27, v51++, *v54);
          }

          while (v53 != v51);
        }
      }

      ++v23;
      v20 = v58;
      v26 = v61;
      if (v23 == v59)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

void sub_6B128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6B12A0(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  if (v3 == -1)
  {
    v3 = v4 - 1;
  }

  *(a3 + 64) = v3;
  *(a3 + 72) = v4;
  v5 = *(a3 + 160);
  v7 = v5 - 25 <= 0x3F && ((1 << (v5 - 25)) & 0x9000000000000001) != 0 || v5 == 17;
  if (!v7 && v5 - 82 >= 3 && (v5 > 0x27 || ((1 << v5) & 0x8600050000) == 0))
  {
    v11 = sub_4D1F50(a2, v3);
    v12 = sub_4D1F50(a2, *(a3 + 24));
    if (!sub_312B7C(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL))
    {
      v13 = a3;
      v14 = *(a3 + 16);
      v15 = *(a3 + 24);
      v16 = v15 + 0xFFFFFFFFLL;
      if (v14 == -1)
      {
        LODWORD(v17) = v15 - 1;
      }

      else
      {
        v17 = *(a3 + 16);
      }

      if (v17 + 1 > v15)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = *(a3 + 24);
      }

      if (v17 + 1 < v15)
      {
        v19 = v17 + 1;
        v20 = -v18;
        v21 = a2;
        do
        {
          v22 = sub_4D1F50(v21, v19);
          v23 = sub_312B7C(v11, *(v22 + 32) & 0xFFFFFFFFFFFFFFLL);
          if (v23)
          {
            if (sub_6B8850(a1, a2, v19, v15, v23))
            {
              goto LABEL_29;
            }

            v24 = sub_6B89EC(a1, a2, v19, *(a3 + 24));
            if (v24 != -1)
            {
LABEL_28:
              *(a3 + 64) = v19;
              v19 = v24;
LABEL_29:
              *(a3 + 72) = v19;
              return;
            }
          }

          ++v19;
          v21 = a2;
        }

        while (v20 + v19);
        v13 = a3;
        v14 = *(a3 + 16);
        v16 = *(a3 + 24) + 0xFFFFFFFFLL;
      }

      if (v14 == -1)
      {
        v19 = v16;
      }

      else
      {
        v19 = v14;
      }

      v25 = *(v13 + 40);
      v26 = sub_6B82E0(v19);
      sub_69D1C4(a2, v26, &__p);
      v27 = sub_7494F0(&__p);
      v28 = v25 - 1;
      v29 = *(a1[946] + 2048);
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v28 >= v19)
      {
        v28 = v19;
      }

      if (v25 <= v19)
      {
        v30 = a2;
        v31 = 0;
        v32 = v29 + v27;
        v19 = v19;
        do
        {
          v33 = v30;
          v34 = sub_6B82E0(v19);
          sub_69D1C4(v33, v34, &__p);
          v35 = sub_7494F0(&__p);
          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }

          v31 += v35;
          if (v31 > v32)
          {
            break;
          }

          v24 = sub_6B89EC(a1, a2, v19, *(a3 + 24));
          if (v24 != -1)
          {
            goto LABEL_28;
          }

          --v19;
          v30 = a2;
        }

        while (v28 != v19);
      }
    }
  }
}

void sub_6B1524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_6B1544(void *result, unint64_t a2)
{
  if (0x4FA4FA4FA4FA4FA5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xB60B60B60B60B7)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_6B1674(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_4D1F50(a2, a4);
  v9 = v8[4];
  v10 = v9 & 0xFF000000000000;
  v11 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  v12 = (v11 - *v11);
  v13 = *v12;
  if (!v10)
  {
    if (v13 < 0x27)
    {
      goto LABEL_8;
    }

    v14 = v12[19];
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = *(v11 + v14 + *(v11 + v14));
    goto LABEL_9;
  }

  if (v13 >= 0x29)
  {
    v14 = v12[20];
    if (v14)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = 0;
LABEL_9:
  v16 = sub_6B56AC(v15);
  sub_6C6A3C(v33, v16);
  v17 = sub_6ABAB4((a1 + 461), v8);
  sub_6C8F9C(v33, v17);
  v18 = (*v8 - **v8);
  if (*v18 >= 0x9Bu && (v19 = v18[77]) != 0)
  {
    v20 = (*(*v8 + v19 + 3) >> 2) & 1;
  }

  else
  {
    v20 = 0;
  }

  sub_6C8FB0(v33, v20);
  sub_6E5620((a1 + 1), v8, 0, &v34);
  for (i = *v34; i != v34[1]; i += 248)
  {
    if (*(i + 241) == 1 && (*(i + 243) & 1) == 0)
    {
      v22 = *(i + 24);
      if (v22 != 3 && v22 != 0)
      {
        v24 = 0;
        v25 = v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }
  }

  v24 = 1;
  v25 = v35;
  if (!v35)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v26 = v24;
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v24 = v26;
  }

LABEL_27:
  sub_6C8F04(v33, v24);
  v27 = sub_6B57E8(a2 + 1479, a4);
  sub_6C8FD8(v33, v27);
  v28 = v8[4];
  LODWORD(v34) = v28;
  BYTE6(v34) = BYTE6(v28);
  WORD2(v34) = WORD2(v28);
  sub_6C9064(v33, &v34);
  sub_6C6B54(v33, a4);
  v29 = *(a3 + 2016);
  if (v29 >= *(a3 + 2024))
  {
    v31 = sub_6B91D4((a3 + 2008), v33);
  }

  else
  {
    sub_6B8F84(v29, v33);
    v31 = v30 + 360;
  }

  *(a3 + 2016) = v31;
  return sub_5C3168(v33);
}

void sub_6B18D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6B18EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6B1900(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  if (sub_4D1DC0(a2) - 1 != a4)
  {
    v8 = *(sub_4D1F50(v6, v4) + 32);
    if (a3[8] == v4)
    {
      v9 = a3[9];
    }

    else
    {
      v9 = sub_6B68C8(a1, v6, a3, v4);
    }

    v10 = *(sub_4D1F50(v6, v9) + 32);
    sub_59DC48(*a1, v8 & 0xFFFFFFFFFFFFFFLL, 0, a1 + 956);
    v11 = a1[957];
    v12 = a1[956];
    if (v12 != v11)
    {
      while (__PAIR64__(*(v12 + 4), *v12) != __PAIR64__(WORD2(v10), v10) || *(v12 + 6) != BYTE6(v10))
      {
        v12 += 48;
        if (v12 == v11)
        {
          goto LABEL_35;
        }
      }
    }

    if (v12 != v11)
    {
      v33 = v9;
      v13 = sub_6B1BFC(a3 + 251, v4 - a3[5]);
      v36 = 0;
      v37 = 0;
      v14 = *(v12 + 16);
      v34 = *(v12 + 24);
      __p = 0;
      if (v14 != v34)
      {
        v15 = v13;
        v29 = a1;
        v30 = v6;
        v31 = a3;
        v32 = v4;
        do
        {
          v16 = sub_6C7F04(v15, *v14);
          v36 = __p;
          v17 = *(v14 + 8);
          v18 = *(v14 + 16);
          while (v17 != v18)
          {
            v20 = sub_6C7F04(v15, *v17);
            v21 = v36;
            if (v36 < v37)
            {
              *v36 = v20;
              v19 = v21 + 1;
            }

            else
            {
              v22 = __p;
              v23 = (v36 - __p);
              v24 = v36 - __p + 1;
              if (v24 < 0)
              {
                sub_1794();
              }

              v25 = v37 - __p;
              if (2 * (v37 - __p) > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v24;
              }

              if (v26)
              {
                operator new();
              }

              v27 = v36 - __p;
              *v23 = v20;
              v19 = v23 + 1;
              memcpy(0, v22, v27);
              __p = 0;
              v36 = v23 + 1;
              v37 = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            v36 = v19;
            ++v17;
          }

          v28 = !sub_6CA980(v15, v16) && *(v14 + 8) == *(v14 + 16);
          sub_6C9288(v15, v16, v28);
          sub_6CA924(v15, v16, &__p);
          v14 += 32;
        }

        while (v14 != v34);
        a3 = v31;
        v4 = v32;
        a1 = v29;
        v6 = v30;
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }
      }

      v9 = v33;
    }

LABEL_35:
    if (v9 == a3[8])
    {
      sub_6B6A40(a1, v6, a3, v4);
    }
  }
}

void sub_6B1BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6B1BFC(void *a1, unint64_t a2)
{
  if (0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 360 * a2;
}

void sub_6B1D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_6B1E18(uint64_t *a1, int **a2, uint64_t *a3)
{
  v6 = a2[4];
  if (sub_6C6B88(a3))
  {
    v7 = sub_6C6B88(a3);
    if (v7 < 2)
    {
      return;
    }

LABEL_3:
    v8 = (*a2 - **a2);
    if (*v8 >= 0x9Bu && (v9 = v8[77]) != 0)
    {
      v40 = *(*a2 + v9 + 1) >> 7;
      v39 = v7;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v40 = 0;
      v39 = v7;
      if (!v7)
      {
        return;
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = v6 & 0xFF000000000000;
    v17 = 0xFFFFFFFFLL;
    while (1)
    {
      v19 = *a1;
      v20 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v40)
      {
        if (v16)
        {
          if (v22 < 0x29)
          {
            goto LABEL_36;
          }

          v23 = v21[20];
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v22 < 0x27)
          {
            goto LABEL_36;
          }

          v23 = v21[19];
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        if (*(v20 + v23 + *(v20 + v23)) > v14)
        {
          v25 = sub_3EC10C(v19, v6 & 0xFFFFFFFFFFFFFFLL, v14);
          v26 = (v25 - *v25);
          if (*v26 >= 9u)
          {
            v27 = v26[4];
            if (v27)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        if (v16)
        {
          if (v22 < 0x29)
          {
            goto LABEL_36;
          }

          v24 = v21[20];
          if (!v24)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v22 < 0x27)
          {
            goto LABEL_36;
          }

          v24 = v21[19];
          if (!v24)
          {
            goto LABEL_36;
          }
        }

        if (*(v20 + v24 + *(v20 + v24)) > v14)
        {
          v25 = sub_3EC10C(v19, v6 & 0xFFFFFFFFFFFFFFLL, v14);
          v28 = (v25 - *v25);
          if (*v28 >= 7u)
          {
            v27 = v28[3];
            if (v27)
            {
LABEL_35:
              v29 = *(v25 + v27) - 1 < 2;
              goto LABEL_37;
            }
          }
        }
      }

LABEL_36:
      v29 = 0;
LABEL_37:
      v30 = *a1;
      v31 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
      v32 = (v31 - *v31);
      v33 = *v32;
      if (v16)
      {
        if (v33 < 0x29)
        {
          goto LABEL_47;
        }

        v34 = v32[20];
        if (!v34)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v33 < 0x27)
        {
          goto LABEL_47;
        }

        v34 = v32[19];
        if (!v34)
        {
          goto LABEL_47;
        }
      }

      if (*(v31 + v34 + *(v31 + v34)) > v14)
      {
        v35 = sub_3EC10C(v30, v6 & 0xFFFFFFFFFFFFFFLL, v14);
        v36 = (v35 - *v35);
        if (*v36 >= 5u)
        {
          v37 = v36[2];
          if (v37)
          {
            if ((*(v35 + v37) & 4) != 0)
            {
              sub_6C7FEC(a3, v14, 0xFFu);
              sub_6C922C(a3, v14, 1);
              goto LABEL_49;
            }
          }
        }
      }

LABEL_47:
      if (v15 >= v14 || !v29)
      {
        v17 = (v17 + 1);
        if (v14 == v17)
        {
          v17 = v14;
        }

        else
        {
          v18 = sub_6B59E0(v17);
          sub_6C7FEC(a3, v14, v18);
        }

        goto LABEL_14;
      }

      v38 = sub_6B59E0(v17);
      sub_6C7FEC(a3, v14, v38);
      sub_6C922C(a3, v14, 1);
      sub_6C9148(a3, v14, 1);
      sub_6C91BC(a3, v38, v14);
LABEL_49:
      ++v15;
LABEL_14:
      if (v39 == ++v14)
      {
        return;
      }
    }
  }

  v10 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  v12 = *v11;
  if ((v6 & 0xFF000000000000) != 0)
  {
    if (v12 < 0x29)
    {
      return;
    }

    v13 = v11[20];
    if (!v13)
    {
      return;
    }

LABEL_55:
    v7 = *(v10 + v13 + *(v10 + v13));
    if (v7 < 2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v12 >= 0x27)
  {
    v13 = v11[19];
    if (v13)
    {
      goto LABEL_55;
    }
  }
}

void sub_6B21AC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 2008) == *(a3 + 2016))
  {
    return;
  }

  v9 = *(sub_4D1F50(a2, a4) + 32);
  v10 = sub_6B1BFC((a3 + 2008), a4 - *(a3 + 40));
  v11 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  v12 = (v11 - *v11);
  v13 = *v12;
  if ((v9 & 0xFF000000000000) == 0)
  {
    if (v13 < 0x17)
    {
      goto LABEL_10;
    }

    v14 = v12[11];
    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_9:
    v15 = *(v11 + v14);
    goto LABEL_11;
  }

  if (v13 >= 0x19)
  {
    v14 = v12[12];
    if (v14)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = 0;
LABEL_11:
  v16 = sub_6B56AC(v15);
  sub_68DB2C(v10, v16);
  v17 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  v18 = (v17 - *v17);
  v19 = *v18;
  if ((v9 & 0xFF000000000000) != 0)
  {
    if (v19 < 0x17 || (v20 = v18[11]) == 0)
    {
LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 < 0x19)
    {
      goto LABEL_18;
    }

    v20 = v18[12];
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  v21 = *(v17 + v20);
LABEL_19:
  v22 = sub_6B56AC(v21);
  sub_68F8A4(v10, v22);
  v23 = (a3 + 385);
  if (!*(a3 + 386))
  {
    v23 = a2 + 1097;
  }

  v24 = *v23;
  v25 = sub_68D7F4(v10);
  sub_6C89B4(v10, v25, v24 == 0);
  v26 = sub_6C8E70(v10);

  sub_6C89B4(v10, v26, v24 == 1);
}

void sub_6B2338(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 2008) != *(a3 + 2016))
  {
    v8 = *(sub_4D1F50(a2, a4) + 32);
    v9 = (a3 + 385);
    if (!*(a3 + 386))
    {
      v9 = a2 + 1097;
    }

    v35 = *v9;
    v10 = sub_6B1BFC((a3 + 2008), a4 - *(a3 + 40));
    sub_6B85E0(*a1, v8 & 0xFFFFFFFFFFFFFFLL, 0, &v52);
    sub_6B85E0(*a1, v8 & 0xFFFFFFFFFFFFFFLL, 1, &v48);
    v11 = v53;
    v12 = v54;
    v13 = v49;
    v14 = v50;
    if (v53 != v54 || v49 != v50)
    {
      if (a4)
      {
        v15 = a4 - 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_4D1F50(a2, v15);
      sub_6E5620((a1 + 1), v16, 0, &v46);
      if (v11 != v12)
      {
        v17 = sub_59D570(*a1, v52);
        sub_6B56AC(v17);
        v18 = v46[1];
        v19 = *v46;
        if (*v46 != v18)
        {
          while (1)
          {
            v20 = *v19;
            v21 = v19[1];
            if (*v19 != v21 && *(v19 + 241) == 1)
            {
              break;
            }

LABEL_12:
            v19 += 31;
            if (v19 == v18)
            {
              goto LABEL_21;
            }
          }

          while (__PAIR64__(*(v20 + 4), *v20) != __PAIR64__(WORD2(v52), v52) || *(v20 + 6) != BYTE6(v52))
          {
            v20 += 8;
            if (v20 == v21)
            {
              goto LABEL_12;
            }
          }
        }

LABEL_21:
        v43 = v52;
        memset(__p, 0, sizeof(__p));
        v41 = __p;
        LOBYTE(v42) = 0;
        if (v54 != v53)
        {
          if (((v54 - v53) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v45 = v55;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        operator new();
      }

      if (v13 != v14)
      {
        v22 = sub_59D570(*a1, v48);
        sub_6B56AC(v22);
        v23 = v46[1];
        v24 = *v46;
        if (*v46 != v23)
        {
          while (1)
          {
            v25 = *v24;
            v26 = v24[1];
            if (*v24 != v26 && *(v24 + 241) == 1)
            {
              break;
            }

LABEL_28:
            v24 += 31;
            if (v24 == v23)
            {
              goto LABEL_37;
            }
          }

          while (__PAIR64__(*(v25 + 4), *v25) != __PAIR64__(WORD2(v48), v48) || *(v25 + 6) != BYTE6(v48))
          {
            v25 += 8;
            if (v25 == v26)
            {
              goto LABEL_28;
            }
          }
        }

LABEL_37:
        memset(v36, 0, sizeof(v36));
        v41 = v36;
        LOBYTE(v42) = 0;
        if (v50 != v49)
        {
          if (((v50 - v49) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v37 = v51;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        operator new();
      }

      sub_6C89B4(v10, 0, v35 == 0);
      sub_6C89B4(v10, 0, v35 == 1);
      v27 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }

      v13 = v49;
    }

    if (v13)
    {
      v28 = v50;
      v29 = v13;
      if (v50 != v13)
      {
        do
        {
          v30 = *(v28 - 3);
          if (v30)
          {
            *(v28 - 2) = v30;
            operator delete(v30);
          }

          v28 -= 32;
        }

        while (v28 != v13);
        v29 = v49;
      }

      v50 = v13;
      operator delete(v29);
    }

    v31 = v53;
    if (v53)
    {
      v32 = v54;
      v33 = v53;
      if (v54 != v53)
      {
        do
        {
          v34 = *(v32 - 3);
          if (v34)
          {
            *(v32 - 2) = v34;
            operator delete(v34);
          }

          v32 -= 32;
        }

        while (v32 != v31);
        v33 = v53;
      }

      v54 = v31;
      operator delete(v33);
    }
  }
}