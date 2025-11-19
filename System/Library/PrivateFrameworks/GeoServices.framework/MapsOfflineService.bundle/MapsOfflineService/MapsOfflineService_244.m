void sub_F0C8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_F0C8D0(uint64_t a1, int **a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v4 = *(a3 + 64);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v4 = sub_14BD268(v7);
    *(a3 + 64) = v4;
  }

  v8 = *a2;
  v9 = *(a2 + 9) & 0x20000000;
  v10 = (*a2 - **a2);
  v11 = *v10;
  result = -1.0;
  if (v9)
  {
    if (v11 < 0xF)
    {
      goto LABEL_13;
    }

    v13 = v10[7];
    if (!v10[7])
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v11 < 0x11)
    {
      goto LABEL_13;
    }

    v13 = v10[8];
    if (!v10[8])
    {
      goto LABEL_13;
    }
  }

  v14 = v8[v13];
  result = v14;
  if (!v14)
  {
    result = -1.0;
  }

LABEL_13:
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&result == 0)
  {
    v17 = -1.0;
    if (v9)
    {
      if (v11 < 0xF)
      {
        goto LABEL_29;
      }

      v18 = v10[7];
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else if (v11 < 0x11 || (v18 = v10[8]) == 0)
    {
LABEL_29:
      result = v17 / 3.6;
      *(v4 + 4) |= 1u;
      *(v4 + 3) = result;
      v9 = *(a2 + 9) & 0x20000000;
      goto LABEL_30;
    }

    v19 = v8[v18];
    v17 = v19;
    if (!v19)
    {
      v17 = -1.0;
    }

    goto LABEL_29;
  }

LABEL_30:
  v20 = 2;
  if (!v9)
  {
    v20 = 3;
  }

  v21 = a2[v20];
  if (v21)
  {
    v22 = (v21 - *v21);
    if (*v22 >= 9u)
    {
      result = -1.0;
      if (v22[4])
      {
        v23 = *(v21 + v22[4]);
        if ((v23 - 1) <= 0xFFFDu)
        {
          result = v23 / 100.0;
        }
      }

      if (*&result >> 52 <= 0x7FEuLL)
      {
        v24 = v22[4];
        v25 = -1.0;
        if (v24)
        {
          v26 = *(v21 + v24);
          if ((v26 - 1) <= 0xFFFDu)
          {
            v25 = v26 / 100.0;
          }
        }

        result = v25 / 3.6;
        *(v4 + 4) |= 2u;
        *(v4 + 4) = result;
      }
    }
  }

  return result;
}

void sub_F0CAC0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_5E94A4(a1[2], a4, 1, &v50);
  sub_4E51E0(a1[2], a4 & 0xFFFFFFFFFFFFLL, &v48);
  sub_64AC90(&v46, &v48, 0);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_73BE28(&v50, v36);
  if (a3 && sub_734E58(v36, a5))
  {
    v12 = *(a6 + 696);
    if (v12 && (v13 = *(a6 + 688), v13 < *v12))
    {
      *(a6 + 688) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = sub_14BD6BC(*(a6 + 680));
      v14 = sub_19593CC(a6 + 680, v17);
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
LABEL_8:
        v18 = *(v14 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v16 = sub_16F5CD4(v19);
        *(v14 + 24) = v16;
      }
    }

    sub_ECAE3C(a5, v15, v16);
    *(v14 + 16) |= 2u;
    *(v14 + 32) = a3 - 1;
  }

  sub_4D1DDC(a2, &__p);
  if (v35 + ~v33 != a3)
  {
    goto LABEL_22;
  }

  v20 = *(a6 + 696);
  if (v20 && (v21 = *(a6 + 688), v21 < *v20))
  {
    *(a6 + 688) = v21 + 1;
    v22 = *&v20[2 * v21 + 2];
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = (a6 + 680);
    v26 = sub_14BD6BC(*v25);
    v22 = sub_19593CC(v25, v26);
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
LABEL_18:
      v27 = *(v22 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v24 = sub_16F5CD4(v28);
      *(v22 + 24) = v24;
    }
  }

  sub_ECAE3C(v36, v23, v24);
  *(v22 + 16) |= 2u;
  *(v22 + 32) = a3;
LABEL_22:
  sub_52CB8C(a5, v36);
  if (v45 < 0)
  {
    operator delete(v44);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v40);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v36[0]);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v46);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_29:
    v29 = v50;
    if (!v50)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v48);
  v29 = v50;
  if (!v50)
  {
    return;
  }

LABEL_38:
  v30 = v51;
  v31 = v29;
  if (v51 != v29)
  {
    do
    {
      v30 = sub_310F30(v30 - 144);
    }

    while (v30 != v29);
    v31 = v50;
  }

  v51 = v29;
  operator delete(v31);
}

void sub_F0CE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3E5388(va);
  if (*(v6 - 121) < 0)
  {
    operator delete(*(v6 - 144));
    if ((*(v6 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v6 - 88));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v6 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v6 - 112));
  sub_5E9738((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_F0CED8(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (sub_6834F4(a2))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (v7 != v8)
    {
      v39 = *(a2 + 40);
      do
      {
        if (sub_683140(v7))
        {
          v12 = *(a4 + 240);
          if (v12 && (v13 = *(a4 + 232), v13 < *v12))
          {
            *(a4 + 232) = v13 + 1;
            v14 = *&v12[2 * v13 + 2];
          }

          else
          {
            sub_14BE174(*(a4 + 224));
            v14 = sub_19593CC(a4 + 224, v15);
          }

          v16 = *(a2 + 4) != 0;
          *(v14 + 16) |= 0x20u;
          *(v14 + 76) = v16;
          if (sub_683530(a2))
          {
            v17 = *(v14 + 16);
            *(v14 + 72) = *(a2 + 16);
            *(v14 + 88) = *(v7 + 22);
            v18 = *(v7 + 24);
            *(v14 + 16) = v17 | 0x190;
            *(v14 + 84) = v18;
          }

          v19 = *(v7 + 16);
          if (v19 <= 2)
          {
            if (v19 == 1)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v26 = *(a3 + 23);
              }

              else
              {
                v26 = a3[1];
              }

              if (v26 + 13 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_107:
                sub_3244();
              }

              if (v26 + 13 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v26 + 13;
              if (v26)
              {
                if (*(a3 + 23) >= 0)
                {
                  v31 = a3;
                }

                else
                {
                  v31 = *a3;
                }

                memmove(__p, v31, v26);
              }

              strcpy(__p + v26, "_TrafficLight");
              *(v14 + 16) |= 1u;
              v32 = *(v14 + 8);
              v11 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
              if (v32)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }

            if (v19 == 2)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v22 = *(a3 + 23);
              }

              else
              {
                v22 = a3[1];
              }

              if (v22 + 9 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_107;
              }

              if (v22 + 9 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v22 + 9;
              if (v22)
              {
                if (*(a3 + 23) >= 0)
                {
                  v37 = a3;
                }

                else
                {
                  v37 = *a3;
                }

                memmove(__p, v37, v22);
              }

              strcpy(__p + v22, "_StopSign");
              *(v14 + 16) |= 1u;
              v38 = *(v14 + 8);
              v11 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }
          }

          else
          {
            switch(v19)
            {
              case 3:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v23 = *(a3 + 23);
                }

                else
                {
                  v23 = a3[1];
                }

                if (v23 + 15 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v23 + 15 >= 0x17)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v23 + 15;
                if (v23)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v9 = a3;
                  }

                  else
                  {
                    v9 = *a3;
                  }

                  memmove(__p, v9, v23);
                }

                strcpy(__p + v23, "_RedLightCamera");
                *(v14 + 16) |= 1u;
                v10 = *(v14 + 8);
                v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
                if (v10)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 4:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v24 = *(a3 + 23);
                }

                else
                {
                  v24 = a3[1];
                }

                if (byte_27BF3E7 >= 0)
                {
                  v25 = byte_27BF3E7;
                }

                else
                {
                  v25 = qword_27BF3D8;
                }

                if (v25 + v24 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v25 + v24 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v25 + v24;
                v8 = v39;
                if (v24)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v27 = a3;
                  }

                  else
                  {
                    v27 = *a3;
                  }

                  memmove(__p, v27, v24);
                }

                v28 = __p + v24;
                if (v25)
                {
                  if (byte_27BF3E7 >= 0)
                  {
                    v29 = &qword_27BF3D0;
                  }

                  else
                  {
                    v29 = qword_27BF3D0;
                  }

                  memmove(v28, v29, v25);
                }

                v28[v25] = 0;
                *(v14 + 16) |= 1u;
                v30 = *(v14 + 8);
                v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
                if (v30)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 5:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v20 = *(a3 + 23);
                }

                else
                {
                  v20 = a3[1];
                }

                if (byte_27BF3FF >= 0)
                {
                  v21 = byte_27BF3FF;
                }

                else
                {
                  v21 = qword_27BF3F0;
                }

                if (v21 + v20 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v21 + v20 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v21 + v20;
                v8 = v39;
                if (v20)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v33 = a3;
                  }

                  else
                  {
                    v33 = *a3;
                  }

                  memmove(__p, v33, v20);
                }

                v34 = __p + v20;
                if (v21)
                {
                  if (byte_27BF3FF >= 0)
                  {
                    v35 = &qword_27BF3E8;
                  }

                  else
                  {
                    v35 = qword_27BF3E8;
                  }

                  memmove(v34, v35, v21);
                }

                v34[v21] = 0;
                *(v14 + 16) |= 1u;
                v36 = *(v14 + 8);
                v11 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
                if (v36)
                {
                  v11 = *v11;
                }

LABEL_11:
                sub_194EA30((v14 + 48), __p, v11);
                if (SHIBYTE(v41) < 0)
                {
                  operator delete(__p[0]);
                }

                break;
            }
          }
        }

        v7 += 184;
      }

      while (v7 != v8);
    }
  }
}

void sub_F0D5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0DA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_F0DAFC(uint64_t *result)
{
  if ((*(*result + 3) & 1) == 0)
  {
    sub_4AFC4C(v3, result[2]);
    v1 = v3;
    v2 = 0;
    sub_120B450();
  }

  return result;
}

void sub_F0DC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4AE168(&a14);
  _Unwind_Resume(a1);
}

void sub_F0DC60(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, void *a8)
{
  v10 = a1;
  v54 = a2[138];
  v55 = a2[139];
  v53 = v54 + 2616 * a3;
  sub_F0F2C4(a1, a2, a3, v53, a5, &__p);
  v12 = __p;
  v13 = v64 - __p;
  if (v64 != __p)
  {
    if (v13 == 24)
    {
      v14 = *(__p + 3);
      v15 = sub_4D1DC0(a2) - 1 == v14;
      v58 = v10;
      if (*(v12 + 20) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
      v58 = v10;
      if (*(__p + 20) != 1)
      {
LABEL_22:
        if (v13 == 24)
        {
          goto LABEL_23;
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        v34 = 1;
        v35 = 24;
        while (1)
        {
          v36 = __p;
          v37 = (__p + v35);
          if (v34 == -1 - 0x5555555555555555 * ((v64 - __p) >> 3))
          {
            v38 = *(v37 + 3);
            v39 = sub_4D1DC0(a2) - 1 == v38;
            if (*(v37 + 20))
            {
              goto LABEL_43;
            }
          }

          else
          {
            v39 = 0;
            if (*(v37 + 20))
            {
LABEL_43:
              if (v36[v35 + 17] == 1 && *(*v10 + 2) == 1)
              {
                v40 = sub_120B590(a7);
                a6[10] |= 0x80000000;
                a6[80] = v40;
              }

              if (v36[v35 + 19] == 1 && *(*v10 + 2) == 1)
              {
                v41 = sub_120B590(a7);
                a6[11] |= 2u;
                a6[82] = v41;
              }

              v42 = &v36[v35];
              if (v36[v35 + 18] == 1)
              {
                v43 = *v10;
                if (*(*v10 + 2) == 1)
                {
                  v44 = sub_120B590(a7);
                  a6[11] |= 1u;
                  a6[81] = v44;
                  v43 = *v10;
                }

                if (*(v43 + 44))
                {
                  v45 = -1431655765 * ((a8[1] - *a8) >> 2);
                  a6[10] |= 0x40000000u;
                  a6[79] = v45;
                }
              }

              v46 = v42[2];
              LODWORD(v11) = *v42;
              v47 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
              LODWORD(v48) = *&v36[v35 + 4];
              v49 = exp(v48 * -6.28318531 / 4294967300.0 + 3.14159265);
              v50 = atan((v49 + -1.0 / v49) * 0.5);
              v51 = sub_120B220(v50 * 57.2957795);
              sub_456538(&v62, v47, v51, v46);
              if ((v36[v35 + 16] | v39))
              {
                v52 = sub_4D1F50(a2, *&v36[v35 + 12]);
                v10 = v58;
                sub_F0F9F4(a4, *(v52 + 32), &v62, v61);
              }

              else
              {
                sub_1209BF8(v61, &v62);
                v10 = v58;
              }

              sub_120B5A4(a7, v61);
              sub_376F0(a8, v37);
            }
          }

          ++v34;
          v35 += 24;
          if (v33 == v34)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v16 = v12[3];
    if (*(v12 + 17) == 1 && *(*v10 + 2) == 1)
    {
      v17 = sub_120B590(a7);
      a6[10] |= 0x80000000;
      a6[80] = v17;
    }

    if (*(v12 + 19) == 1 && *(*v10 + 2) == 1)
    {
      v18 = sub_120B590(a7);
      a6[11] |= 2u;
      a6[82] = v18;
    }

    if (*(v12 + 18) == 1)
    {
      v19 = *v10;
      if (*(*v10 + 2) == 1)
      {
        v20 = sub_120B590(a7);
        a6[11] |= 1u;
        a6[81] = v20;
        v19 = *v10;
      }

      if (*(v19 + 44))
      {
        v21 = -1431655765 * ((a8[1] - *a8) >> 2);
        a6[10] |= 0x40000000u;
        a6[79] = v21;
      }
    }

    v22 = v12[2];
    LODWORD(v11) = *v12;
    v23 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
    LODWORD(v24) = v12[1];
    v25 = exp(v24 * -6.28318531 / 4294967300.0 + 3.14159265);
    v26 = atan((v25 + -1.0 / v25) * 0.5);
    v27 = sub_120B220(v26 * 57.2957795);
    sub_456538(&v62, v23, v27, v22);
    if (((*(v12 + 16) | v15) & 1) != 0 || !v16)
    {
      v28 = sub_4D1F50(a2, v12[3]);
      v10 = v58;
      sub_F0F9F4(a4, *(v28 + 32), &v62, v61);
      sub_120B5A4(a7, v61);
    }

    else
    {
      sub_1209BF8(v61, &v62);
      v10 = v58;
      sub_120B5A4(a7, v61);
    }

    sub_376F0(a8, v12);
    goto LABEL_22;
  }

LABEL_23:
  v29 = 0x3795876FF3795877 * ((v55 - v54) >> 3) - 1;
  if (a3 && v29 != a3 && *(v53 + 160) != 16)
  {
    goto LABEL_33;
  }

  if (v29 != a3)
  {
    v30 = sub_120B590(a7);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((a8[1] - *a8) >> 2);
    v32 = *v10;
    if (*(*v10 + 2) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = sub_120B590(a7) - 1;
  v31 = -1 - 0x5555555555555555 * ((a8[1] - *a8) >> 2);
  v32 = *v10;
  if (*(*v10 + 2) == 1)
  {
LABEL_30:
    a6[11] |= 1u;
    a6[81] = v30;
  }

LABEL_31:
  if (*(v32 + 44))
  {
    a6[10] |= 0x40000000u;
    a6[79] = v31;
  }

LABEL_33:
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

void sub_F0E2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0E444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_120D5F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F0E458(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 3) == 1)
  {
    v6 = result;
    v7 = (a2 + 10120);
    v8 = *(v3 + 176);
    if (v8 != *(v3 + 184) && *v8 == 2 && (*(result + 85) & 1) != 0)
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    if (*(a2 + 12648))
    {
      v10 = v9 | 8;
    }

    else
    {
      v10 = v9;
    }

    sub_47AE70((result + 88), a2, v10, v26);
    *(a3 + 40) |= 0x100000u;
    v11 = *(a3 + 864);
    if (!v11)
    {
      v12 = *(a3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BF760(v13);
      *(a3 + 864) = v11;
    }

    v14 = sub_4D27A4(a2);
    v15 = *v14;
    v16 = v14[1];
    while (1)
    {
      if (v15 == v16)
      {
        v24 = *v7;
        v25 = (*(v6 + 48) & 1) != 0 && sub_4D1DB8(a2) <= *(v6 + 56);
        sub_F10304(v6, v26, v24, v25);
      }

      v18 = *(v11 + 32);
      if (v18 && (v19 = *(v11 + 24), v19 < *v18))
      {
        *(v11 + 24) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
        *(v20 + 16) |= 1u;
        v17 = *(v20 + 24);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = sub_14BF6E8(*(v11 + 16));
        v20 = sub_19593CC(v11 + 16, v21);
        *(v20 + 16) |= 1u;
        v17 = *(v20 + 24);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      v22 = *(v20 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v17 = sub_14BF670(v23);
      *(v20 + 24) = v17;
LABEL_16:
      v17[2].i32[0] |= 3u;
      v17[3] = vmovn_s64(v15[1]);
      v15 += 4;
    }
  }

  return result;
}

void sub_F0E84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1218EBC(v39 - 144);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(v39 - 144);
  _Unwind_Resume(a1);
}

void sub_F0E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (!sub_69AF18(a2))
  {
    goto LABEL_31;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v6 = sub_3B1D8C(*(a1 + 8));
  v7 = sub_4D2130(a2);
  sub_2AD1B4(v6, *(v7 + 104), *(v7 + 112), v41);
  v8 = v54;
  if (v54 >= v55)
  {
    v11 = v53;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 2);
    v13 = v12 + 1;
    if (v12 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    if (0x5555555555555556 * ((v55 - v53) >> 2) > v13)
    {
      v13 = 0x5555555555555556 * ((v55 - v53) >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v55 - v53) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v14 = 0x1555555555555555;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 4 * ((v54 - v53) >> 2);
    *v15 = v48;
    *(v15 + 8) = v49;
    v10 = 12 * v12 + 12;
    v16 = 12 * v12 - (v8 - v11);
    memcpy((v15 - (v8 - v11)), v11, v8 - v11);
    v53 = v16;
    v54 = v10;
    v55 = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v9 = v48;
    *(v54 + 2) = v49;
    *v8 = v9;
    v10 = (v8 + 12);
  }

  v54 = v10;
  v40 = 17;
  strcpy(__p, "Charging Stations");
  sub_EAC188(&v56, &v53, __p, 0xFFFFFFFF, 0, 0, 0.0);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  sub_99F0C(&v52);
  v17 = v50;
  if (v50)
  {
    v18 = v51;
    v19 = v50;
    if (v51 != v50)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = v50;
    }

    v51 = v17;
    operator delete(v19);
  }

  if ((v47 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_71:
    operator delete(v44);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
LABEL_29:
      v21 = v53;
      if (!v53)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_72;
  }

  operator delete(v46);
  if (v45 < 0)
  {
    goto LABEL_71;
  }

LABEL_28:
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_72:
  operator delete(v41[0]);
  v21 = v53;
  if (v53)
  {
LABEL_30:
    v54 = v21;
    operator delete(v21);
  }

LABEL_31:
  v22 = *(a2 + 7416);
  v37 = a3;
  for (i = *(a2 + 7424); v22 != i; v22 += 1120)
  {
    if (sub_659540(v22))
    {
      v23 = *(v22 + 1080);
      v24 = *(v22 + 1088);
      if (v23 != v24)
      {
        v25 = v23 + 22;
        do
        {
          if (*(v25 + 23) >= 0)
          {
            v27 = *(v25 + 23);
          }

          else
          {
            v27 = v25[1];
          }

          if (v27 + 20 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v27 + 20 >= 0x17)
          {
            operator new();
          }

          v43 = 0;
          HIBYTE(v43) = v27 + 20;
          v42 = 540696933;
          *v41 = *"Area incident area: ";
          if (v27)
          {
            if (*(v25 + 23) >= 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = *v25;
            }

            memmove(&v43, v28, v27);
          }

          *(&v43 + v27) = 0;
          sub_EAC330(&v56, v25 - 22, v41, 0xFFFFFFFF, 0, 0, 0.0);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(v41[0]);
          }

          v26 = v25 + 9;
          v25 += 31;
        }

        while (v26 != v24);
      }
    }
  }

  sub_EAC680(&v56, v41);
  v30 = v41[0];
  v29 = v41[1];
  if (v41[0] != v41[1])
  {
    do
    {
      v31 = sub_1950FFC((v37 + 16), dword_278D070, 11, &off_2769C00, 0);
      sub_12CC584(v31, v30);
      v30 += 48;
    }

    while (v30 != v29);
    v30 = v41[0];
  }

  if (v30)
  {
    v32 = v41[1];
    v33 = v30;
    if (v41[1] != v30)
    {
      do
      {
        v32 = sub_12CBDFC(v32 - 48);
      }

      while (v32 != v30);
      v33 = v41[0];
    }

    v41[1] = v30;
    operator delete(v33);
  }

  v34 = v56;
  if (v56)
  {
    v35 = v57;
    v36 = v56;
    if (v57 == v56)
    {
LABEL_68:
      v57 = v34;
      operator delete(v36);
      return;
    }

    while (1)
    {
      if (*(v35 - 25) < 0)
      {
        operator delete(*(v35 - 48));
        if ((*(v35 - 49) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v35 - 72));
        v35 -= 80;
        if (v35 == v34)
        {
LABEL_67:
          v36 = v56;
          goto LABEL_68;
        }
      }

      else
      {
        if (*(v35 - 49) < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        v35 -= 80;
        if (v35 == v34)
        {
          goto LABEL_67;
        }
      }
    }
  }
}

void sub_F0EDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2AE47C(&a18);
  v25 = *(v23 - 136);
  if (v25)
  {
    *(v23 - 128) = v25;
    operator delete(v25);
    sub_D37F50((v23 - 112));
    _Unwind_Resume(a1);
  }

  sub_D37F50((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_F0EEDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 81) == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v5 = a2[1550];
    v6 = a2[1551];
    while (v5 != v6)
    {
      if (sub_685BF4(v5[10]))
      {
        sub_686328(*v5, &__p);
        sub_EAC188(&v33, v5 + 1, &__p, 0xFFFFFFFF, *v5, v5[10], *(v5 + 4));
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }
      }

      v5 += 12;
    }

    sub_EAC850(&v33, &__p);
    v7 = __p;
    v8 = v31;
    if (__p != v31)
    {
      do
      {
        v9 = sub_1950FFC((a3 + 16), dword_278D080, 11, &off_2769C30, 0);
        sub_12CD324(v9, v7);
        v7 += 72;
      }

      while (v7 != v8);
      v7 = __p;
    }

    if (v7)
    {
      v10 = v31;
      v11 = v7;
      if (v31 != v7)
      {
        do
        {
          v10 = sub_12CC74C(v10 - 72);
        }

        while (v10 != v7);
        v11 = __p;
      }

      v31 = v7;
      operator delete(v11);
    }

    __p = 0;
    v31 = 0;
    v32 = 0;
    v12 = a2[1555];
    if (!v12)
    {
LABEL_17:
      sub_EAC850(&__p, &v27);
      v13 = v27;
      v14 = v28;
      if (v27 != v28)
      {
        do
        {
          v15 = sub_1950FFC((a3 + 16), dword_278D090, 11, &off_2769C30, 0);
          sub_12CD324(v15, v13);
          v13 += 72;
        }

        while (v13 != v14);
        v13 = v27;
      }

      if (v13)
      {
        v16 = v28;
        v17 = v13;
        if (v28 != v13)
        {
          do
          {
            v16 = sub_12CC74C(v16 - 72);
          }

          while (v16 != v13);
          v17 = v27;
        }

        v28 = v13;
        operator delete(v17);
      }

      v18 = __p;
      if (!__p)
      {
LABEL_42:
        v22 = v33;
        if (!v33)
        {
          return;
        }

        v23 = v34;
        v24 = v33;
        if (v34 == v33)
        {
LABEL_52:
          v34 = v22;
          operator delete(v24);
          return;
        }

        while (1)
        {
          if (*(v23 - 25) < 0)
          {
            operator delete(*(v23 - 6));
            if (*(v23 - 49) < 0)
            {
LABEL_50:
              operator delete(*(v23 - 9));
            }
          }

          else if (*(v23 - 49) < 0)
          {
            goto LABEL_50;
          }

          v23 -= 10;
          if (v23 == v22)
          {
            v24 = v33;
            goto LABEL_52;
          }
        }
      }

      v19 = v31;
      v20 = __p;
      if (v31 == __p)
      {
LABEL_41:
        v31 = v18;
        operator delete(v20);
        goto LABEL_42;
      }

      while (1)
      {
        if (*(v19 - 25) < 0)
        {
          operator delete(*(v19 - 6));
          if (*(v19 - 49) < 0)
          {
LABEL_39:
            operator delete(*(v19 - 9));
          }
        }

        else if (*(v19 - 49) < 0)
        {
          goto LABEL_39;
        }

        v19 -= 10;
        if (v19 == v18)
        {
          v20 = __p;
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      sub_686328(*(v12 + 4), v25);
      sub_EAC188(&v33, &v27, v25, 0xFFFFFFFF, *(v12 + 4), *(v12 + 16), *(v12 + 7));
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v25[0]);
      v21 = v27;
      if (v27)
      {
        goto LABEL_33;
      }

LABEL_28:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v21 = v27;
    if (!v27)
    {
      goto LABEL_28;
    }

LABEL_33:
    v28 = v21;
    operator delete(v21);
    goto LABEL_28;
  }
}

void sub_F0F1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24)
{
  sub_D37F50(&__p);
  sub_D37F50(&a24);
  _Unwind_Resume(a1);
}

void sub_F0F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_EAD110(va);
  JUMPOUT(0xF0F2B4);
}

void sub_F0F2C4(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, unsigned int *a5@<X4>, void **a6@<X8>)
{
  v6 = a6;
  v79 = 0;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (a3)
  {
    v7 = a5;
    v8 = *a5;
    if (a4[13] >= v8)
    {
      v72 = 0;
      do
      {
        if (sub_4D1DC0(a2) <= v8)
        {
          break;
        }

        v79 = 0;
        sub_F0FB50(a2, a3, *v7, &v79 + 1, &v79, &__p);
        v9 = __p;
        if (v78 == __p)
        {
          goto LABEL_74;
        }

        v10 = 0;
        v73 = 0xAAAAAAAAAAAAAAABLL * ((v78 - __p) >> 2);
        do
        {
          v13 = *v7;
          v15 = a4[10] == v13 && v10 == HIDWORD(v79);
          v74 = v15;
          if (v10)
          {
            v16 = 0;
          }

          else
          {
            v16 = a4[7] == v13;
          }

          v17 = v16;
          v76 = v17;
          if (v10)
          {
            v18 = 0;
            goto LABEL_55;
          }

          v19 = sub_4D1F50(a2, v13);
          v20 = v19;
          v21 = *v19;
          v22 = (*v19 - **v19);
          if ((*(v19 + 39) & 0x20) == 0)
          {
            if (v22[3])
            {
              v23 = __ROR8__(*&v21[v22[3]], 32);
              v24 = HIDWORD(v23);
            }

            else
            {
              v26 = *(v19 + 8);
              v27 = *&v21[v22[60]];
              v28 = sub_57A90(v26);
              v29 = v26 & ~(-1 << (v28 & 0xFE));
              v30 = sub_581D8(v29);
              v31 = sub_581D8(v29 >> 1);
              v32 = 1 << (v28 >> 1);
              v33 = v30 + v27;
              v34 = v31 + (v27 >> 8);
              v35 = ((((((v33 & ~(v33 >> 31)) - v33 + (v33 >> 31)) >> (v28 >> 1)) + (v33 >> 31)) << (v28 >> 1)) + v33) % v32;
              v36 = ((((((v34 & ~(v34 >> 31)) - v34 + (v34 >> 31)) >> (v28 >> 1)) + (v34 >> 31)) << (v28 >> 1)) + v34) % v32;
              v37 = -1 << (v28 >> 1);
              if (~v37 < v35)
              {
                v38 = ~v37;
              }

              else
              {
                v38 = v35;
              }

              if (~v37 < v36)
              {
                v39 = ~v37;
              }

              else
              {
                v39 = v36;
              }

              sub_58168(v38, v39);
              v23 = HIWORD(v27);
              LODWORD(v24) = v40 | (1 << (v28 & 0xFE));
            }

            goto LABEL_42;
          }

          v25 = *v22;
          if (v25 < 5)
          {
            goto LABEL_40;
          }

          if (!v22[2])
          {
            if (v25 >= 0x77 && (v41 = v22[59]) != 0)
            {
              v23 = *&v21[v41];
            }

            else
            {
LABEL_40:
              v23 = 0;
            }

            LODWORD(v24) = *(v19 + 8);
            goto LABEL_42;
          }

          v23 = __ROR8__(*&v21[v22[2]], 32);
          v24 = HIDWORD(v23);
LABEL_42:
          v42 = *(a1 + 16);
          sub_2B365C(v42, v24 | (v23 << 32), 0, (v42 + 7800));
          v43 = *(v42 + 7808);
          v44 = *(v42 + 7800);
          if (v43 != v44)
          {
            if (((v43 - v44) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v45 = *v20;
          v46 = &(*v20)[-**v20];
          v47 = *v46;
          if (v47 < 9)
          {
            v48 = 0;
            v6 = a6;
            v49 = v72;
          }

          else
          {
            v48 = *(v46 + 4);
            v6 = a6;
            v49 = v72;
            if (*(v46 + 4))
            {
              v48 = *&v45[v48];
            }
          }

          if (v48 + v49 <= 1600000)
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          v7 = a5;
          v18 = v76 | 1;
          if (v47 <= 8)
          {
            v72 = v50;
          }

          else
          {
            v72 = *&v45[*(v46 + 4)] + v50;
          }

LABEL_55:
          v51 = v18 & 1;
          v52 = *v7;
          v54 = v10 == v79 && a4[13] == v52;
          v55 = __p + 12 * v10;
          v56 = v6[1];
          v57 = v6[2];
          if (v56 < v57)
          {
            v11 = *(v55 + 2);
            *v56 = *v55;
            v56[2] = v11;
            v56[3] = v52;
            *(v56 + 16) = v51;
            *(v56 + 17) = v74;
            *(v56 + 18) = v54;
            *(v56 + 19) = v76;
            *(v56 + 20) = 0;
            v12 = (v56 + 6);
          }

          else
          {
            v58 = *v6;
            v59 = v56 - *v6;
            v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 3) + 1;
            if (v60 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v61 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v58) >> 3);
            if (2 * v61 > v60)
            {
              v60 = 2 * v61;
            }

            if (v61 >= 0x555555555555555)
            {
              v62 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              if (v62 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v63 = 8 * (v59 >> 3);
            v64 = *(v55 + 2);
            *v63 = *v55;
            *(v63 + 8) = v64;
            *(v63 + 12) = v52;
            *(v63 + 16) = v51;
            *(v63 + 17) = v74;
            *(v63 + 18) = v54;
            *(v63 + 19) = v76;
            *(v63 + 20) = 0;
            v12 = v63 + 24;
            v65 = v63 - v59;
            memcpy((v63 - v59), v58, v59);
            *v6 = v65;
            v6[1] = v12;
            v6[2] = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          v6[1] = v12;
          ++v10;
        }

        while (v10 != v73);
        v9 = __p;
LABEL_74:
        v66 = *v7 + 1;
        *v7 = v66;
        if (v9)
        {
          v78 = v9;
          operator delete(v9);
          v66 = *v7;
        }

        v8 = v66;
      }

      while (a4[13] >= v66);
    }
  }

  sub_F0FEDC(*(a1 + 32), a1, v6, *(*a1 + 160) > 3u);
}

void sub_F0F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *v20;
  if (!*v20)
  {
    _Unwind_Resume(exception_object);
  }

  *(v20 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_F0F9F4(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  sub_120ADE8(v10);
  sub_B6D0(&v12, 0);
  sub_B6D0(&v13, 9);
  v14 = -1;
  (*(**a1 + 8))(*a1, a2, v10);
  v8 = sub_120B1B4(v10, a3);
  sub_1209BA0(a4, a3, v8);
  sub_1209C84(a4, v12);
  sub_1209C8C(a4, v13);
  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_F0FB28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_F0FB3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_F0FB50(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = sub_69E8D8(a1, a3);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_F0FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0FEDC(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_F10280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_F10304(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = 32;
  if (a3)
  {
    v5 = 40;
  }

  v6 = 64;
  if (a3)
  {
    v6 = 72;
  }

  if (a4 && *(a1 + v6) != *(a1 + v5))
  {
    v47 = 0uLL;
    v48 = 0;
    v7 = *(a2 + 32);
    if (v7)
    {
      sub_38004(&v47, v7);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (*(&v47 + 1) != v47)
      {
        if (((*(&v47 + 1) - v47) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    if (*(&v47 + 1) != v47)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v47 + 1) - v47) >> 2);
      do
      {
        v13 = *(*(a2 + 40) + (v8 >> 29) + 8);
        if (*(v13 + 84) == 1)
        {
          *(v22 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        }

        v14 = *(v13 + 32);
        if (!v14)
        {
          v14 = &off_2734B00;
        }

        v15 = *(v13 + 56);
        v16 = *(v14 + 7) / 10000000.0;
        v17 = -1;
        if (v16 <= 180.0)
        {
          v18 = *(v14 + 6) / 10000000.0;
          if (fabs(v18) <= 85.0511288 && v16 >= -180.0)
          {
            v19 = sin(fmin(fmax(v18, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v20) = ((log((v19 + 1.0) / (1.0 - v19)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v20 >= 0xFFFFFFFE)
            {
              v20 = 4294967294;
            }

            else
            {
              v20 = v20;
            }

            v17 = ((v16 + 180.0) / 360.0 * 4294967300.0) | (v20 << 32);
          }
        }

        v12 = v47 + v9;
        *v12 = v17;
        *(v12 + 8) = v15;
        ++v10;
        v9 += 12;
        v8 += 0x100000000;
      }

      while (v11 != v10);
    }

    sub_40C4C(&v47, &v21);
  }

  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v35 = 0u;
  v34 = 0u;
  v30 = 0x1312D0000000000;
  v29 = 0;
  v25 = 0x4039000000000000;
  v26 = 5000;
  v27 = xmmword_2297CF0;
  v28 = xmmword_2297D00;
  v31 = 0x3FF199999999999ALL;
  v33 = 0xA00002710;
  DWORD2(v34) = 2;
  *&v35 = 0x4049000000000000;
  HIDWORD(v35) = 2000;
  v36 = 0x3FF0000000000000;
  v46 = 0;
  v32 = 0x3E800002710;
  *&v34 = 0x3200000064;
  v37 = 0xBB800000258;
  v38 = xmmword_22AE600;
  *&v42 = 0x3FD999999999999ALL;
  v41 = unk_22AE630;
  v40 = xmmword_22AE620;
  v39 = unk_22AE610;
  operator new();
}

void sub_F10AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  v48 = *(v46 - 176);
  if (v48)
  {
    *(v46 - 168) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_F111DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F11230(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 16), *(v13 + 32) | (*(v13 + 36) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 16), *(v17 + 32) | (*(v17 + 36) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 16), *(v22 + 32) | (*(v22 + 36) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_F11444(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 16), *(v13 + 32) | ((*(v13 + 36) & 0x1FFFFFFF) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 16), *(v17 + 32) | ((*(v17 + 36) & 0x1FFFFFFF) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 16), *(v22 + 32) | ((*(v22 + 36) & 0x1FFFFFFF) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_F11658()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_27BF400 = 0u;
  *algn_27BF410 = 0u;
  dword_27BF420 = 1065353216;
  sub_3A9A34(&xmmword_27BF400, v0);
  sub_3A9A34(&xmmword_27BF400, v3);
  sub_3A9A34(&xmmword_27BF400, v5);
  sub_3A9A34(&xmmword_27BF400, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BE370 = 0;
    qword_27BE378 = 0;
    qword_27BE368 = 0;
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

void sub_F14904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
    if ((SLOBYTE(STACK[0x39F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x39F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x388]);
  if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x36F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x370]);
  if ((SLOBYTE(STACK[0x36F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x358]);
  if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x33F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x340]);
  if ((SLOBYTE(STACK[0x33F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x328]);
  if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x30F]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x310]);
  if ((SLOBYTE(STACK[0x30F]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2F7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2F8]);
  if ((SLOBYTE(STACK[0x2F7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2DF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2E0]);
  if ((SLOBYTE(STACK[0x2DF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2C8]);
  if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2B0]);
  if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x298]);
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x280]);
  if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x268]);
  if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x250]);
  if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x238]);
  if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x220]);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(STACK[0x208]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((a72 & 0x80000000) == 0)
    {
LABEL_42:
      if (a70 < 0)
      {
        operator delete(a65);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a71);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_F14B9C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v3[23] = 20;
  strcpy(v3, "PlaceResponseBuilder");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v3, __p);
  sub_F14CBC();
}

void sub_F14C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F14DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F14DF0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_18FD3D0(a3, 0, 0);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (*a2 != v8)
  {
    do
    {
      v9 = *(a3 + 64);
      if (v9 && (v10 = *(a3 + 56), v10 < *v9))
      {
        *(a3 + 56) = v10 + 1;
        v11 = *&v9[2 * v10 + 2];
      }

      else
      {
        v12 = sub_18648BC(*(a3 + 48));
        v11 = sub_19593CC(a3 + 48, v12);
      }

      _X8 = v7 + 4960;
      __asm { PRFM            #0, [X8] }

      v19 = sub_EC7E5C(*v7);
      v20 = *(v11 + 40);
      *(v11 + 128) = v19;
      *(v11 + 40) = v20 | 0x11;
      v21 = *(v11 + 96);
      if (!v21)
      {
        v22 = *(v11 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_191BA60(v23);
        *(v11 + 96) = v21;
      }

      _X8 = v7 + 7432;
      __asm { PRFM            #0, [X8] }

      v26 = *(v7 + 2472);
      v41 = -1;
      v42 = 0x7FFFFFFF;
      sub_F24200(v26, &v41, v21, NAN);
      result = *(v7 + 2472);
      if (result != -1)
      {
        result = nullsub_1(result);
        *(v11 + 40) |= 4u;
        *(v11 + 112) = result;
      }

      if (!*v7)
      {
        sub_F150A4(result, a2, v7, v11);
        sub_F15284(v27, a2, v7, v11);
        sub_F155F8(v28, a2, v7, v11);
        sub_F1583C(a1, a2, v7, v11);
        sub_F15AA8(v30, v29, a2, v7, v11);
        sub_F16180(v32, v31, a2, v7, v11);
        sub_F16548(v33, a2, v7, v11);
        sub_F16E14(v34, a2, v7, v11);
        sub_F170C8(a1, a2, v7, v11);
        sub_F174D0(a1, a2, v7, v11);
        sub_F1770C(a1, a2, v7, v11, v35);
        sub_F178DC(v36, a2, v7, v11);
        sub_F17BCC(a1, a2, v7, v11);
        sub_F18370(v37, a2, v7, v11);
        sub_F187F8(v38, a2, v7, v11);
        result = sub_F18B20(a1, a2, v7, v11);
      }

      v7 += 2480;
    }

    while (v7 != v8);
  }

  v39 = *(a3 + 40);
  *(a3 + 40) = v39 | 0x20;
  *(a3 + 208) = 0;
  v40 = *(a2 + 24);
  if (v40)
  {
    *(a3 + 40) = v39 | 0x60;
    *(a3 + 212) = v40;
  }

  return result;
}

void sub_F150A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 30) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 56);
    v11 = *(v7 + 40);
    *(v7 + 160) = v10;
    v12 = v11 | 0x84;
    *(v7 + 40) = v11 | 0x84;
    *(v7 + 136) = 24;
    v13 = *(a3 + 1488);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v7 + 152) = v17;
    }

    *(v7 + 168) = *(a3 + 1492);
    v18 = v12 | 0x208;
    *(v7 + 40) = v12 | 0x208;
    *(v7 + 140) = 0;
    if (*(a3 + 1496) != *(a3 + 1504))
    {
      v19 = *(v7 + 64);
      if (v19 && v10 < *v19)
      {
        v20 = &v19[2 * v10];
        v21 = v10 + 1;
        *(v7 + 56) = v21;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v7 + 48));
        v22 = sub_19593CC(v7 + 48, v23);
        v21 = *(v7 + 56);
        v18 = *(v7 + 40);
      }

      *(v7 + 40) = v18 | 0x80;
      *(v7 + 160) = v21;
      *(v22 + 40) |= 0x100000u;
      v24 = *(v22 + 224);
      if (!v24)
      {
        v25 = *(v22 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_185EC18(v26);
        *(v22 + 224) = v24;
      }

      v27 = *(a3 + 1496);
      for (i = *(a3 + 1504); v27 != i; v27 = (v27 + 24))
      {
        sub_64CFD8(v24, v27);
      }
    }
  }
}

void sub_F15284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 39) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 4;
    v12 = *(a3 + 16);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 20);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 8))(a3 + 8))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 40) |= 8u;
      v23 = *(v21 + 88);
      if (v23)
      {
        *(v23 + 40) |= 2u;
        v24 = *(v23 + 56);
        if (v24)
        {
LABEL_25:
          v30 = sub_32DA0(a3 + 24);
          *(v24 + 16) |= 0x10u;
          *(v24 + 80) = v30 * 360.0 / 4294967300.0 + -180.0;
          v31 = sub_32DA0(a3 + 24);
          v32 = exp(3.14159265 - HIDWORD(v31) * 6.28318531 / 4294967300.0);
          v33 = atan((v32 - 1.0 / v32) * 0.5);
          *(v24 + 16) |= 8u;
          *(v24 + 72) = v33 * 57.2957795;
          v34 = sub_32DBC((a3 + 24));
          v35 = exp(3.14159265 - HIDWORD(v34) * 6.28318531 / 4294967300.0);
          v36 = atan((v35 - 1.0 / v35) * 0.5);
          *(v24 + 16) |= 2u;
          *(v24 + 56) = v36 * 57.2957795;
          v37 = sub_32DBC((a3 + 24));
          *(v24 + 16) |= 4u;
          *(v24 + 64) = v37 * 360.0 / 4294967300.0 + -180.0;
          return;
        }
      }

      else
      {
        v25 = *(v21 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v23 = sub_185DAF4(v26);
        *(v21 + 88) = v23;
        *(v23 + 40) |= 2u;
        v24 = *(v23 + 56);
        if (v24)
        {
          goto LABEL_25;
        }
      }

      v27 = *(v23 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_16F58FC(v28);
      v24 = v29;
      *(v23 + 56) = v29;
      goto LABEL_25;
    }
  }
}

void sub_F155F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40) != 1)
  {
    return;
  }

  v5 = *(a4 + 64);
  if (v5 && (v6 = *(a4 + 56), v6 < *v5))
  {
    *(a4 + 56) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_1862ABC(*(a4 + 48));
    v7 = sub_19593CC(a4 + 48, v9);
  }

  v10 = *(v7 + 56);
  v11 = *(v7 + 40);
  *(v7 + 160) = v10;
  v12 = v11 | 0x84;
  *(v7 + 40) = v11 | 0x84;
  *(v7 + 136) = 1;
  v13 = *(a3 + 48);
  if (v13 != 0x7FFFFFFF)
  {
    v14 = v13 / 10;
    v15 = v13 % 10;
    if (v13 < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
    v12 = v11 | 0xA4;
    *(v7 + 152) = v17;
  }

  *(v7 + 168) = *(a3 + 52);
  v18 = v12 | 0x208;
  *(v7 + 40) = v12 | 0x208;
  *(v7 + 140) = 0;
  v19 = *(v7 + 64);
  if (v19 && v10 < *v19)
  {
    v20 = &v19[2 * v10];
    v21 = v10 + 1;
    *(v7 + 56) = v21;
    v22 = *(v20 + 1);
  }

  else
  {
    v23 = sub_1862A04(*(v7 + 48));
    v22 = sub_19593CC(v7 + 48, v23);
    v21 = *(v7 + 56);
    v18 = *(v7 + 40);
  }

  *(v7 + 40) = v18 | 0x80;
  *(v7 + 160) = v21;
  *(v22 + 40) |= 1u;
  v24 = *(v22 + 64);
  if (v24)
  {
    if (!sub_845AC(a3 + 56))
    {
      return;
    }

    goto LABEL_17;
  }

  v29 = *(v22 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  v24 = sub_185D55C(v30);
  *(v22 + 64) = v24;
  if (sub_845AC(a3 + 56))
  {
LABEL_17:
    v25 = *(v24 + 136);
    if (v25 && (v26 = *(v24 + 128), v26 < *v25))
    {
      *(v24 + 128) = v26 + 1;
      v27 = *&v25[2 * v26 + 2];
      v28 = (a3 + 56);
    }

    else
    {
      v31 = sub_16F5A54(*(v24 + 120));
      v27 = sub_19593CC(v24 + 120, v31);
      v28 = (a3 + 56);
    }

    sub_ECB804(v28, v27);
  }
}

void sub_F1583C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 31) == 1)
  {
    v7 = *(a4 + 64);
    if (v7 && (v8 = *(a4 + 56), v8 < *v7))
    {
      *(a4 + 56) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
    }

    else
    {
      v11 = sub_1862ABC(*(a4 + 48));
      v9 = sub_19593CC(a4 + 48, v11);
    }

    v12 = *(v9 + 40);
    *(v9 + 160) = *(v9 + 56);
    v13 = v12 | 0x84;
    *(v9 + 40) = v12 | 0x84;
    *(v9 + 136) = 20;
    v14 = *(a3 + 1568);
    if (v14 != 0x7FFFFFFF)
    {
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

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v9 + 152) = v18;
    }

    *(v9 + 168) = *(a3 + 1572);
    *(v9 + 40) = v13 | 0x208;
    *(v9 + 140) = 0;
    if ((**(a3 + 1560))(a3 + 1560))
    {
      v19 = *(v9 + 64);
      if (v19 && (v20 = *(v9 + 56), v20 < *v19))
      {
        v21 = &v19[2 * v20];
        v22 = v20 + 1;
        *(v9 + 56) = v20 + 1;
        v23 = *(v21 + 1);
      }

      else
      {
        v24 = sub_1862A04(*(v9 + 48));
        v23 = sub_19593CC(v9 + 48, v24);
        v22 = *(v9 + 56);
      }

      *(v9 + 40) |= 0x80u;
      *(v9 + 160) = v22;
      *(v23 + 40) |= 0x10000u;
      v25 = *(v23 + 192);
      if (!v25)
      {
        v26 = *(v23 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_185EB00(v27);
        *(v23 + 192) = v25;
      }

      v28 = *(a3 + 1576);
      v29 = *(a3 + 1584);
      while (v28 != v29)
      {
        v32 = *a1;
        v33 = *(v25 + 32);
        if (v33 && (v34 = *(v25 + 24), v34 < *v33))
        {
          *(v25 + 24) = v34 + 1;
          v31 = *&v33[2 * v34 + 2];
        }

        else
        {
          v30 = sub_141BE00(*(v25 + 16));
          v31 = sub_19593CC(v25 + 16, v30);
        }

        sub_F20EB8(v28, a2 + 1016, v32, v31);
        v28 += 456;
      }
    }
  }
}

void sub_F15AA8(uint8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 28) == 1)
  {
    v102 = v5;
    v103 = v6;
    v8 = *(a5 + 64);
    if (v8 && (v9 = *(a5 + 56), v9 < *v8))
    {
      *(a5 + 56) = v9 + 1;
      v10 = *&v8[2 * v9 + 2];
    }

    else
    {
      v12 = sub_1862ABC(*(a5 + 48));
      v10 = sub_19593CC(a5 + 48, v12);
    }

    v13 = *(v10 + 56);
    v14 = *(v10 + 40);
    *(v10 + 160) = v13;
    v15 = v14 | 0x84;
    *(v10 + 40) = v14 | 0x84;
    *(v10 + 136) = 10;
    v16 = *(a4 + 1608);
    if (v16 != 0x7FFFFFFF)
    {
      v17 = v16 / 10;
      v18 = v16 % 10;
      if (v16 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      v20 = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
      v15 = v14 | 0xA4;
      *(v10 + 152) = v20;
    }

    *(v10 + 168) = *(a4 + 1612);
    v21 = v15 | 0x208;
    *(v10 + 40) = v15 | 0x208;
    *(v10 + 140) = 0;
    v22 = *(v10 + 64);
    if (v22 && v13 < *v22)
    {
      v23 = &v22[2 * v13];
      v24 = v13 + 1;
      *(v10 + 56) = v24;
      v25 = *(v23 + 1);
    }

    else
    {
      v26 = sub_1862A04(*(v10 + 48));
      v25 = sub_19593CC(v10 + 48, v26);
      v24 = *(v10 + 56);
      v21 = *(v10 + 40);
    }

    *(v10 + 40) = v21 | 0x80;
    *(v10 + 160) = v24;
    *(v25 + 40) |= 0x200u;
    v27 = *(v25 + 136);
    if (!v27)
    {
      v28 = *(v25 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_185E974(v29);
      *(v25 + 136) = v27;
    }

    v30 = *(a4 + 1616);
    v31 = *(a4 + 1624);
    while (v30 != v31)
    {
      v35 = v27[8];
      if (v35 && (v34 = *(v27 + 14), v34 < *v35))
      {
        *(v27 + 14) = v34 + 1;
        v33 = *&v35[2 * v34 + 2];
      }

      else
      {
        v32 = sub_141BB20(v27[6]);
        v33 = sub_19593CC((v27 + 6), v32);
        v34 = *(v27 + 14) - 1;
      }

      *(v33 + 40) |= 0x4000u;
      *(v33 + 164) = v34;
      sub_F22DEC(v30, v33);
      v30 += 696;
    }

    v36 = *(a4 + 1640);
    v37 = *(a4 + 1648);
    while (v36 != v37)
    {
      v41 = v27[11];
      if (v41 && (v40 = *(v27 + 20), v40 < *v41))
      {
        *(v27 + 20) = v40 + 1;
        v39 = *&v41[2 * v40 + 2];
      }

      else
      {
        v38 = sub_141BC34(v27[9]);
        v39 = sub_19593CC((v27 + 9), v38);
        v40 = *(v27 + 20) - 1;
      }

      *(v39 + 40) |= 0x40u;
      *(v39 + 92) = v40;
      sub_F232F0(v36, v39);
      v36 += 208;
    }

    v42 = *(a4 + 1664);
    v99 = a4;
    v43 = *(a4 + 1672);
    if (v42 != v43)
    {
      do
      {
        v44 = v27[20];
        if (v44 && (v45 = *(v27 + 38), v45 < *v44))
        {
          *(v27 + 38) = v45 + 1;
          v46 = *&v44[2 * v45 + 2];
        }

        else
        {
          v47 = sub_185E8F4(v27[18]);
          v46 = sub_19593CC((v27 + 18), v47);
        }

        v48 = nullsub_1(*v42);
        v49 = *(v46 + 16);
        *(v46 + 32) = v48;
        *(v46 + 16) = v49 | 3;
        v50 = *(v46 + 24);
        if (!v50)
        {
          v51 = *(v46 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_16F6144(v52);
          *(v46 + 24) = v50;
        }

        *(v50 + 4) |= 1u;
        v53 = v50[1];
        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v54 = *v54;
        }

        v55 = v42 + 32;
        sub_194EA1C(v50 + 3, (v42 + 32), v54);
        v56 = *(v42 + 144);
        if (v56 != 0x7FFFFFFF)
        {
          v57 = v56 / 10;
          v58 = v56 % 10;
          if (v56 < 0)
          {
            v59 = -5;
          }

          else
          {
            v59 = 5;
          }

          *(v46 + 16) |= 4u;
          *(v46 + 40) = v57 + (((103 * (v59 + v58)) >> 15) & 1) + ((103 * (v59 + v58)) >> 10);
        }

        v42 += 152;
      }

      while (v55 + 120 != v43);
    }

    v60 = *(v99 + 1688);
    v61 = *(v99 + 1696);
    while (v60 != v61)
    {
      v64 = v27[14];
      if (v64 && (v65 = *(v27 + 26), v65 < *v64))
      {
        *(v27 + 26) = v65 + 1;
        v63 = *&v64[2 * v65 + 2];
      }

      else
      {
        v62 = sub_185EA2C(v27[12]);
        v63 = sub_19593CC((v27 + 12), v62);
      }

      sub_F234B8(v60, v63, a1);
      v60 += 36;
    }

    v66 = *(v99 + 1712);
    for (i = *(v99 + 1720); v66 != i; v66 += 9)
    {
      v68 = v27[17];
      if (v68 && (v69 = *(v27 + 32), v69 < *v68))
      {
        *(v27 + 32) = v69 + 1;
        v70 = *&v68[2 * v69 + 2];
      }

      else
      {
        v71 = sub_185E9D0(v27[15]);
        v70 = sub_19593CC((v27 + 15), v71);
      }

      v73 = v66[3];
      v72 = v66[4];
      while (v73 != v72)
      {
        v76 = *(v70 + 64);
        if (v76 && (v77 = *(v70 + 56), v77 < *v76))
        {
          *(v70 + 56) = v77 + 1;
          v75 = *&v76[2 * v77 + 2];
        }

        else
        {
          v74 = sub_185EA2C(*(v70 + 48));
          v75 = sub_19593CC(v70 + 48, v74);
        }

        sub_F234B8(v73, v75, a1);
        v73 += 36;
      }

      v78 = nullsub_1(*v66);
      v80 = *(v70 + 40);
      *(v70 + 88) = v78;
      *(v70 + 40) = v80 | 6;
      v81 = *(v70 + 80);
      if (!v81)
      {
        v82 = *(v70 + 8);
        v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
        if (v82)
        {
          v83 = *v83;
        }

        v81 = sub_191BA60(v83);
        *(v70 + 80) = v81;
      }

      sub_F24200(*v66, v66 + 2, v81, v79);
      *(v70 + 40) |= 1u;
      v84 = *(v70 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      sub_194EA1C((v70 + 72), v66 + 3, v85);
    }

    v86 = *(v99 + 1759);
    if ((v86 & 0x80u) != 0)
    {
      v86 = *(v99 + 1744);
    }

    if (v86)
    {
      *(v27 + 10) |= 2u;
      v87 = v27[1];
      v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
      if (v87)
      {
        v88 = *v88;
      }

      sub_194EA1C(v27 + 22, (v99 + 1736), v88);
    }

    v89 = *(v99 + 1783);
    if ((v89 & 0x80u) != 0)
    {
      v89 = *(v99 + 1768);
    }

    if (v89)
    {
      *(v27 + 10) |= 4u;
      v90 = v27[1];
      v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
      if (v90)
      {
        v91 = *v91;
      }

      sub_194EA1C(v27 + 23, (v99 + 1760), v91);
    }

    v92 = *(v99 + 1807);
    if ((v92 & 0x80u) != 0)
    {
      v92 = *(v99 + 1792);
    }

    if (v92)
    {
      *(v27 + 10) |= 1u;
      v93 = v27[1];
      v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
      if (v93)
      {
        v94 = *v94;
      }

      sub_194EA1C(v27 + 21, (v99 + 1784), v94);
    }

    v95 = *(v99 + 1808);
    if (v95 != -1)
    {
      *(v27 + 10) |= 8u;
      v96 = v27[24];
      if (!v96)
      {
        v97 = v27[1];
        v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
        if (v97)
        {
          v98 = *v98;
        }

        v96 = sub_191BA60(v98);
        v27[24] = v96;
        v95 = *(v99 + 1808);
      }

      v100 = -1;
      v101 = 0x7FFFFFFF;
      sub_F24200(v95, &v100, v96, NAN);
    }
  }
}

void sub_F16180(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 29) == 1)
  {
    v6 = *(a5 + 64);
    if (v6 && (v7 = *(a5 + 56), v7 < *v6))
    {
      *(a5 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a5 + 48));
      v8 = sub_19593CC(a5 + 48, v10);
    }

    v11 = *(v8 + 56);
    v12 = *(v8 + 40);
    *(v8 + 160) = v11;
    v13 = v12 | 0x84;
    *(v8 + 40) = v12 | 0x84;
    *(v8 + 136) = 27;
    v14 = *(a4 + 1824);
    if (v14 != 0x7FFFFFFF)
    {
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

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v8 + 152) = v18;
    }

    *(v8 + 168) = *(a4 + 1828);
    v19 = v13 | 0x208;
    *(v8 + 40) = v13 | 0x208;
    *(v8 + 140) = 0;
    v20 = *(v8 + 64);
    if (v20 && v11 < *v20)
    {
      v21 = &v20[2 * v11];
      v22 = v11 + 1;
      *(v8 + 56) = v22;
      v23 = *(v21 + 1);
    }

    else
    {
      v24 = sub_1862A04(*(v8 + 48));
      v23 = sub_19593CC(v8 + 48, v24);
      v22 = *(v8 + 56);
      v19 = *(v8 + 40);
    }

    *(v8 + 40) = v19 | 0x80;
    *(v8 + 160) = v22;
    *(v23 + 40) |= 0x800000u;
    v25 = *(v23 + 248);
    if (!v25)
    {
      v26 = *(v23 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_185E820(v27);
      *(v23 + 248) = v25;
    }

    v28 = *(a4 + 1832);
    if (v28 != -1)
    {
      v29 = nullsub_1(v28);
      *(v25 + 40) |= 0x20u;
      *(v25 + 160) = v29;
    }

    v30 = *(a4 + 1975);
    if ((v30 & 0x80u) != 0)
    {
      v30 = *(a4 + 1960);
    }

    if (v30)
    {
      *(v25 + 40) |= 1u;
      v31 = *(v25 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      sub_194EA1C((v25 + 120), (a4 + 1952), v32);
    }

    v33 = *(a4 + 1863);
    if ((v33 & 0x80u) != 0)
    {
      v33 = *(a4 + 1848);
    }

    if (v33)
    {
      *(v25 + 40) |= 2u;
      v34 = *(v25 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_194EA1C((v25 + 128), (a4 + 1840), v35);
    }

    v36 = *(a4 + 1887);
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(a4 + 1872);
    }

    if (v36)
    {
      *(v25 + 40) |= 4u;
      v37 = *(v25 + 136);
      if (!v37)
      {
        v38 = *(v25 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_16F6144(v39);
        *(v25 + 136) = v37;
      }

      *(v37 + 4) |= 1u;
      v40 = v37[1];
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      sub_194EA1C(v37 + 3, (a4 + 1864), v41);
    }

    if (*(a4 + 1888) != -1 || *(a4 + 1892) != -1)
    {
      *(v25 + 40) |= 8u;
      v42 = *(v25 + 144);
      if (!v42)
      {
        v43 = *(v25 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v42 = sub_16F5828(v44);
        *(v25 + 144) = v42;
      }

      a1 = sub_EC6D34((a4 + 1888), v42, a1);
    }

    if (*(a4 + 1904) != *(a4 + 1912))
    {
      *(v25 + 40) |= 0x10u;
      v45 = *(v25 + 152);
      if (!v45)
      {
        v46 = *(v25 + 8);
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        if (v46)
        {
          v47 = *v47;
        }

        v45 = sub_1551A70(v47);
        *(v25 + 152) = v45;
      }

      sub_43735C(a4 + 1904, v45);
    }

    v48 = *(a4 + 1928);
    v49 = *(a4 + 1936);
    while (v48 != v49)
    {
      v52 = *(v25 + 112);
      if (v52 && (v53 = *(v25 + 104), v53 < *v52))
      {
        *(v25 + 104) = v53 + 1;
        v51 = *&v52[2 * v53 + 2];
      }

      else
      {
        v50 = sub_185EA2C(*(v25 + 96));
        v51 = sub_19593CC(v25 + 96, v50);
      }

      sub_F234B8(v48, v51, *&a1);
      v48 += 36;
    }
  }
}

void sub_F16548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 32) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 79;
    v12 = *(a3 + 1992);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 1996);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 1984))(a3 + 1984))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 48) |= 0x200u;
      v23 = *(v21 + 648);
      if (!v23)
      {
        v24 = *(v21 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_185EE84(v25);
        *(v21 + 648) = v23;
      }

      v26 = *(a3 + 2000);
      v95 = a3;
      v27 = *(a3 + 2008);
      while (v26 != v27)
      {
        v28 = *(v23 + 56);
        if (v28 && (v29 = *(v23 + 48), v29 < *v28))
        {
          *(v23 + 48) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_185EEE0(*(v23 + 40));
          v30 = sub_19593CC(v23 + 40, v31);
        }

        *(v30 + 40) |= 1u;
        v32 = *(v30 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          sub_194EA1C((v30 + 64), v26, *v33);
          v35 = *(v26 + 56);
          if (v35 <= 2)
          {
LABEL_29:
            if (v35 == 1)
            {
              if (*(v26 + 24) == -1)
              {
                goto LABEL_49;
              }
            }

            else if (v35 != 2 || *(v26 + 28) == -1 && *(v26 + 24) == -1 && *(v26 + 32) == *(v26 + 40))
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else
        {
          sub_194EA1C((v30 + 64), v26, v33);
          v35 = *(v26 + 56);
          if (v35 <= 2)
          {
            goto LABEL_29;
          }
        }

        if (v35 != 3 && v35 != 4)
        {
          goto LABEL_49;
        }

        if ((*(v26 + 47) & 0x8000000000000000) != 0)
        {
          if (!*(v26 + 32))
          {
            goto LABEL_49;
          }
        }

        else if (!*(v26 + 47))
        {
          goto LABEL_49;
        }

LABEL_44:
        *(v30 + 40) |= 2u;
        v36 = *(v30 + 72);
        if (!v36)
        {
          v37 = *(v30 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_14BF484(v38);
          *(v30 + 72) = v36;
        }

        sub_586C94(v26 + 24, v36, v34);
LABEL_49:
        v39 = *(v26 + 136);
        v40 = *(v26 + 144);
        while (v39 != v40)
        {
          v42 = sub_2FEF94(*v39);
          v43 = v42;
          v44 = *(v30 + 48);
          if (v44 == *(v30 + 52))
          {
            v41 = v44 + 1;
            sub_1958E5C((v30 + 48), v44 + 1);
            *(*(v30 + 56) + 4 * v44) = v43;
          }

          else
          {
            *(*(v30 + 56) + 4 * v44) = v42;
            v41 = v44 + 1;
          }

          *(v30 + 48) = v41;
          ++v39;
        }

        v26 += 160;
      }

      v45 = *(v95 + 2024);
      v46 = *(v95 + 2032);
      while (v45 != v46)
      {
        v47 = *(v23 + 80);
        if (v47 && (v48 = *(v23 + 72), v48 < *v47))
        {
          *(v23 + 72) = v48 + 1;
          v49 = *&v47[2 * v48 + 2];
        }

        else
        {
          v50 = sub_185EF3C(*(v23 + 64));
          v49 = sub_19593CC(v23 + 64, v50);
        }

        *(v49 + 40) |= 1u;
        v51 = *(v49 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          sub_194EA1C((v49 + 96), v45, *v52);
          v53 = *(v45 + 47);
          if ((v53 & 0x8000000000000000) == 0)
          {
LABEL_64:
            if (!v53)
            {
              goto LABEL_86;
            }

            goto LABEL_65;
          }
        }

        else
        {
          sub_194EA1C((v49 + 96), v45, v52);
          v53 = *(v45 + 47);
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }
        }

        if (!*(v45 + 32))
        {
LABEL_86:
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }

          goto LABEL_67;
        }

LABEL_65:
        *(v49 + 40) |= 2u;
        v54 = *(v49 + 8);
        v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          sub_194EA1C((v49 + 104), (v45 + 24), *v55);
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_87:
            v60 = *(v45 + 56);
            if (v60 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_88;
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_194EA1C((v49 + 104), (v45 + 24), v55);
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }
        }

LABEL_67:
        v57 = v56 / 100;
        v58 = v56 % 100;
        if (v56 < 0)
        {
          v59 = -50;
        }

        else
        {
          v59 = 50;
        }

        *(v49 + 40) |= 4u;
        *(v49 + 112) = v57 + ((5243 * (v59 + v58)) >> 19) + ((5243 * (v59 + v58)) >> 31);
        v60 = *(v45 + 56);
        if (v60 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_88:
          v64 = *(v45 + 64);
          if (v64 == 0x7FFFFFFF)
          {
            goto LABEL_89;
          }

          goto LABEL_75;
        }

LABEL_71:
        v61 = v60 / 100;
        v62 = v60 % 100;
        if (v60 < 0)
        {
          v63 = -50;
        }

        else
        {
          v63 = 50;
        }

        *(v49 + 40) |= 8u;
        *(v49 + 116) = v61 + ((5243 * (v63 + v62)) >> 19) + ((5243 * (v63 + v62)) >> 31);
        v64 = *(v45 + 64);
        if (v64 == 0x7FFFFFFF)
        {
LABEL_89:
          v68 = *(v45 + 68);
          if (v68 == 0x7FFFFFFF)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        }

LABEL_75:
        v65 = v64 / 10;
        v66 = v64 % 10;
        if (v64 < 0)
        {
          v67 = -5;
        }

        else
        {
          v67 = 5;
        }

        *(v49 + 40) |= 0x10u;
        *(v49 + 120) = v65 + (((103 * (v67 + v66)) >> 15) & 1) + ((103 * (v67 + v66)) >> 10);
        v68 = *(v45 + 68);
        if (v68 == 0x7FFFFFFF)
        {
LABEL_90:
          v72 = *(v45 + 144);
          if (v72 > 3)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

LABEL_79:
        v69 = v68 / 10;
        v70 = v68 % 10;
        if (v68 < 0)
        {
          v71 = -5;
        }

        else
        {
          v71 = 5;
        }

        *(v49 + 40) |= 0x20u;
        *(v49 + 124) = v69 + (((103 * (v71 + v70)) >> 15) & 1) + ((103 * (v71 + v70)) >> 10);
        v72 = *(v45 + 144);
        if (v72 > 3)
        {
          goto LABEL_92;
        }

LABEL_91:
        *(v49 + 40) |= 0x40u;
        *(v49 + 128) = v72 + 1;
LABEL_92:
        v74 = *(v45 + 72);
        v73 = *(v45 + 80);
        while (v74 != v73)
        {
          v76 = sub_2FEF94(*v74);
          v77 = v76;
          v78 = *(v49 + 64);
          if (v78 == *(v49 + 68))
          {
            v75 = v78 + 1;
            sub_1958E5C((v49 + 64), v78 + 1);
            *(*(v49 + 72) + 4 * v78) = v77;
          }

          else
          {
            *(*(v49 + 72) + 4 * v78) = v76;
            v75 = v78 + 1;
          }

          *(v49 + 64) = v75;
          ++v74;
        }

        v80 = *(v45 + 96);
        v79 = *(v45 + 104);
        while (v80 != v79)
        {
          v82 = sub_2FEF94(*v80);
          v83 = v82;
          v84 = *(v49 + 48);
          if (v84 == *(v49 + 52))
          {
            v81 = v84 + 1;
            sub_1958E5C((v49 + 48), v84 + 1);
            *(*(v49 + 56) + 4 * v84) = v83;
          }

          else
          {
            *(*(v49 + 56) + 4 * v84) = v82;
            v81 = v84 + 1;
          }

          *(v49 + 48) = v81;
          ++v80;
        }

        v86 = *(v45 + 120);
        v85 = *(v45 + 128);
        while (v86 != v85)
        {
          v88 = nullsub_1(*v86);
          v89 = v88;
          v90 = *(v49 + 80);
          if (v90 == *(v49 + 84))
          {
            v87 = v90 + 1;
            sub_1959094((v49 + 80), v90 + 1);
            *(*(v49 + 88) + 8 * v90) = v89;
          }

          else
          {
            *(*(v49 + 88) + 8 * v90) = v88;
            v87 = v90 + 1;
          }

          *(v49 + 80) = v87;
          ++v86;
        }

        v45 += 152;
      }

      if (!sub_5FC6C(v95 + 2048))
      {
        sub_5EED8(v95 + 2048, __p);
        v91 = dword_278D288;
        if (SHIBYTE(v97) < 0)
        {
          sub_325C(&v98, __p[0], __p[1]);
        }

        else
        {
          v98 = *__p;
          v99 = v97;
        }

        v92 = sub_1950AC0((v23 + 16), v91, 9, 0);
        if (*(v92 + 23) < 0)
        {
          v93 = v92;
          operator delete(*v92);
          v92 = v93;
        }

        v94 = v98;
        v92[2] = v99;
        *v92 = v94;
        if (SHIBYTE(v97) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_F16DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_F16E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 41) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 2;
    v12 = *(a3 + 1432);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 1436);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 1424))(a3 + 1424))
    {
      v18 = *(v7 + 64);
      if (v18 && (v19 = *(v7 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v7 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v7 + 48));
        v22 = sub_19593CC(v7 + 48, v23);
        v21 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v21;
      *(v22 + 40) |= 2u;
      v24 = *(v22 + 72);
      if (v24)
      {
        *(v24 + 40) |= 1u;
        v25 = *(v24 + 48);
        if (v25)
        {
LABEL_26:
          sub_EC6D34((a3 + 1440), v25, v17);
          *(v24 + 40) |= 2u;
          v30 = *(v24 + 56);
          if (!v30)
          {
            v31 = *(v24 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_16F6144(v32);
            *(v24 + 56) = v30;
          }

          *(v30 + 4) |= 1u;
          v33 = v30[1];
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v35 = (v30 + 3);

          sub_194EA1C(v35, (a3 + 1456), v34);
          return;
        }
      }

      else
      {
        v26 = *(v22 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v24 = sub_185D940(v27);
        *(v22 + 72) = v24;
        *(v24 + 40) |= 1u;
        v25 = *(v24 + 48);
        if (v25)
        {
          goto LABEL_26;
        }
      }

      v28 = *(v24 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v25 = sub_16F5828(v29);
      *(v24 + 48) = v25;
      goto LABEL_26;
    }
  }
}

void sub_F170C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 36) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 11;
    v12 = *(a3 + 2096);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 2100);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    v17 = (**(a3 + 2088))(a3 + 2088);
    if (v17)
    {
      v19 = *(v7 + 64);
      if (v19 && (v20 = *(v7 + 56), v20 < *v19))
      {
        v21 = &v19[2 * v20];
        v22 = v20 + 1;
        *(v7 + 56) = v20 + 1;
        v23 = *(v21 + 1);
      }

      else
      {
        v24 = sub_1862A04(*(v7 + 48));
        v17 = sub_19593CC(v7 + 48, v24);
        v23 = v17;
        v22 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v22;
      *(v23 + 40) |= 0x400u;
      v25 = *(v23 + 144);
      if (!v25)
      {
        v26 = *(v23 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v17 = sub_185E560(v27);
        v25 = v17;
        *(v23 + 144) = v17;
      }

      v28 = *(a3 + 2104);
      for (i = *(a3 + 2112); v28 != i; v28 += 312)
      {
        v17 = sub_F190EC(v17, v28, v25);
      }

      v30 = *(a3 + 2128);
      for (j = *(a3 + 2136); v30 != j; v30 += 80)
      {
        v17 = sub_F19810(v18, v17, v30, v25);
      }

      *(v25 + 40) |= 1u;
      v32 = *(v25 + 96);
      if (v32)
      {
        *(v32 + 4) |= 1u;
        v33 = v32[3];
        if (v33)
        {
LABEL_33:
          v38 = *(a3 + 2156);
          v39 = v38 / 10;
          v40 = v38 % 10;
          if (v38 < 0)
          {
            v41 = -5;
          }

          else
          {
            v41 = 5;
          }

          v42 = v39 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10);
          v43 = v33[4];
          v33[4] = v43 | 2;
          v33[7] = v42;
          v44 = *(a3 + 2152) - 978307200;
          v33[4] = v43 | 3;
          v33[6] = v44;
          v45 = *(a3 + 2160);
          *(v32 + 4) |= 2u;
          *(v32 + 8) = v45;
          *(v25 + 40) |= 2u;
          v46 = *(v25 + 104);
          if (!v46)
          {
            v47 = *(v25 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            v46 = sub_185D248(v48);
            *(v25 + 104) = v46;
          }

          if (*(v25 + 96))
          {
            v49 = *(v25 + 96);
          }

          else
          {
            v49 = &off_27822C8;
          }

          sub_1793628(v46, v49);
          v50 = *(a3 + 2160);
          LODWORD(v46->__r_.__value_.__r.__words[2]) |= 2u;
          LODWORD(v46[1].__r_.__value_.__r.__words[1]) = v50;
          v51 = *(a3 + 2164);
          v52 = v51 / 10;
          v53 = v51 % 10;
          if (v51 < 0)
          {
            v54 = -5;
          }

          else
          {
            v54 = 5;
          }

          *(v25 + 40) |= 8u;
          *(v25 + 120) = (v52 + (((103 * (v54 + v53)) >> 15) & 1) + ((103 * (v54 + v53)) >> 10));
          return;
        }
      }

      else
      {
        v34 = *(v25 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v32 = sub_185D248(v35);
        *(v25 + 96) = v32;
        *(v32 + 4) |= 1u;
        v33 = v32[3];
        if (v33)
        {
          goto LABEL_33;
        }
      }

      v36 = v32[1];
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v33 = sub_185D2C4(v37);
      v32[3] = v33;
      goto LABEL_33;
    }
  }
}

uint64_t sub_F174D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 37) == 1)
  {
    v38 = v4;
    v39 = v5;
    v7 = result;
    v8 = *(a4 + 64);
    if (v8 && (v9 = *(a4 + 56), v9 < *v8))
    {
      *(a4 + 56) = v9 + 1;
      v10 = *&v8[2 * v9 + 2];
    }

    else
    {
      v12 = sub_1862ABC(*(a4 + 48));
      result = sub_19593CC(a4 + 48, v12);
      v10 = result;
    }

    v13 = *(v10 + 56);
    v14 = *(v10 + 40);
    *(v10 + 160) = v13;
    v15 = v14 | 0x84;
    *(v10 + 40) = v14 | 0x84;
    *(v10 + 136) = 69;
    v16 = *(a3 + 1528);
    if (v16 != 0x7FFFFFFF)
    {
      v17 = v16 / 10;
      v18 = v16 % 10;
      if (v16 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      v20 = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
      v15 = v14 | 0xA4;
      *(v10 + 152) = v20;
    }

    *(v10 + 168) = *(a3 + 1532);
    v21 = v15 | 0x208;
    *(v10 + 40) = v15 | 0x208;
    *(v10 + 140) = 0;
    v22 = *(v10 + 64);
    if (v22 && v13 < *v22)
    {
      v23 = &v22[2 * v13];
      v24 = v13 + 1;
      *(v10 + 56) = v24;
      v25 = *(v23 + 1);
    }

    else
    {
      v26 = sub_1862A04(*(v10 + 48));
      result = sub_19593CC(v10 + 48, v26);
      v25 = result;
      v24 = *(v10 + 56);
      v21 = *(v10 + 40);
    }

    *(v10 + 40) = v21 | 0x80;
    *(v10 + 160) = v24;
    *(v25 + 48) |= 1u;
    v27 = *(v25 + 576);
    if (!v27)
    {
      v28 = *(v25 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      result = sub_185EE28(v29);
      v27 = result;
      *(v25 + 576) = result;
    }

    v30 = *(a3 + 1536);
    v31 = *(a3 + 1544);
    while (v30 != v31)
    {
      v33 = *v30;
      v37 = *(v30 + 2);
      v36 = v33;
      if ((v37 & 1) == 0)
      {
        v34 = *(v27 + 48);
        v35 = *(v27 + 64);
        if (v35 == *(v27 + 68))
        {
          v32 = v35 + 1;
          sub_1958E5C((v27 + 64), v35 + 1);
          *(*(v27 + 72) + 4 * v35) = v34;
        }

        else
        {
          *(*(v27 + 72) + 4 * v35) = v34;
          v32 = v35 + 1;
        }

        *(v27 + 64) = v32;
      }

      result = sub_F19988(v7, &v36, v27);
      v30 = (v30 + 12);
    }
  }

  return result;
}

void sub_F1770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, long double a5)
{
  if (*(a2 + 34) == 1)
  {
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      a1 = sub_19593CC(a4 + 48, v10);
      v8 = a1;
    }

    v11 = *(v8 + 56);
    v12 = *(v8 + 40);
    *(v8 + 160) = v11;
    v13 = v12 | 0x84;
    *(v8 + 40) = v12 | 0x84;
    *(v8 + 136) = 67;
    v14 = *(a3 + 2176);
    if (v14 != 0x7FFFFFFF)
    {
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

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v8 + 152) = v18;
    }

    *(v8 + 168) = *(a3 + 2180);
    v19 = v13 | 0x208;
    *(v8 + 40) = v13 | 0x208;
    *(v8 + 140) = 0;
    v20 = *(v8 + 64);
    if (v20 && v11 < *v20)
    {
      v21 = &v20[2 * v11];
      v22 = v11 + 1;
      *(v8 + 56) = v22;
      v23 = *(v21 + 1);
    }

    else
    {
      v24 = sub_1862A04(*(v8 + 48));
      a1 = sub_19593CC(v8 + 48, v24);
      v23 = a1;
      v22 = *(v8 + 56);
      v19 = *(v8 + 40);
    }

    *(v8 + 40) = v19 | 0x80;
    *(v8 + 160) = v22;
    *(v23 + 44) |= 0x40000000u;
    v25 = *(v23 + 560);
    if (!v25)
    {
      v26 = *(v23 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      a1 = sub_185ECEC(v27);
      v25 = a1;
      *(v23 + 560) = a1;
    }

    v28 = *(a3 + 2184);
    for (i = *(a3 + 2192); v28 != i; v28 += 152)
    {
      sub_F19EA0(a5, a1, v28, v25);
    }
  }
}

void sub_F178DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 35) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 56);
    v11 = *(v7 + 40);
    *(v7 + 160) = v10;
    v12 = v11 | 0x84;
    *(v7 + 40) = v11 | 0x84;
    *(v7 + 136) = 68;
    v13 = *(a3 + 2216);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v7 + 152) = v17;
    }

    *(v7 + 168) = *(a3 + 2220);
    v18 = v12 | 0x208;
    *(v7 + 40) = v12 | 0x208;
    *(v7 + 140) = 0;
    v19 = *(v7 + 64);
    if (v19 && v10 < *v19)
    {
      v20 = &v19[2 * v10];
      v21 = v10 + 1;
      *(v7 + 56) = v21;
      v22 = *(v20 + 1);
    }

    else
    {
      v23 = sub_1862A04(*(v7 + 48));
      v22 = sub_19593CC(v7 + 48, v23);
      v21 = *(v7 + 56);
      v18 = *(v7 + 40);
    }

    *(v7 + 40) = v18 | 0x80;
    *(v7 + 160) = v21;
    *(v22 + 44) |= 0x80000000;
    v24 = *(v22 + 568);
    if (!v24)
    {
      v25 = *(v22 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_185ED48(v26);
      *(v22 + 568) = v24;
    }

    v27 = *(a3 + 2224);
    v28 = *(a3 + 2232);
    if (v27 != v28)
    {
      while (1)
      {
        v29 = *(v24 + 56);
        if (v29)
        {
          v30 = *(v24 + 48);
          if (v30 < *v29)
          {
            break;
          }
        }

        v33 = sub_185E6EC(*(v24 + 40));
        v31 = sub_19593CC(v24 + 40, v33);
        v32 = *v27;
        if (*v27 != -1)
        {
          goto LABEL_27;
        }

LABEL_28:
        if (*(v27 + 2) != 0x7FFFFFFF)
        {
          v35 = *(v31 + 64);
          if (v35 && (v36 = *(v31 + 56), v36 < *v35))
          {
            *(v31 + 56) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_185E748(*(v31 + 48));
            v37 = sub_19593CC(v31 + 48, v38);
          }

          v39 = *(v27 + 2) + -978307200.0;
          v40 = *(v37 + 40);
          *(v37 + 40) = v40 | 8;
          *(v37 + 72) = v39;
          v41 = *(v27 + 3);
          if (v41 != 0x7FFFFFFF && *(v27 + 16) == 1)
          {
            *(v37 + 40) = v40 | 0x18;
            *(v37 + 80) = v41 + -978307200.0;
          }
        }

        v27 += 3;
        if (v27 == v28)
        {
          return;
        }
      }

      *(v24 + 48) = v30 + 1;
      v31 = *&v29[2 * v30 + 2];
      v32 = *v27;
      if (*v27 == -1)
      {
        goto LABEL_28;
      }

LABEL_27:
      v34 = nullsub_1(v32);
      *(v31 + 40) |= 0x40u;
      *(v31 + 184) = v34;
      goto LABEL_28;
    }
  }
}

void sub_F17BCC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 33) == 1)
  {
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      v8 = sub_19593CC(a4 + 48, v10);
    }

    v11 = *(v8 + 40);
    *(v8 + 160) = *(v8 + 56);
    v12 = v11 | 0x84;
    *(v8 + 40) = v11 | 0x84;
    *(v8 + 136) = 91;
    v13 = *(a3 + 2256);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v8 + 152) = v17;
    }

    *(v8 + 168) = *(a3 + 2260);
    *(v8 + 40) = v12 | 0x208;
    *(v8 + 140) = 0;
    if ((**(a3 + 2248))(a3 + 2248))
    {
      v18 = *(v8 + 64);
      if (v18 && (v19 = *(v8 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v8 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v8 + 48));
        v22 = sub_19593CC(v8 + 48, v23);
        v21 = *(v8 + 56);
      }

      *(v8 + 40) |= 0x80u;
      *(v8 + 160) = v21;
      *(v22 + 48) |= 0x100000u;
      v24 = *(v22 + 736);
      if (!v24)
      {
        v25 = *(v22 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_185EF98(v26);
        *(v22 + 736) = v24;
      }

      v27 = *(a3 + 2288);
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v24 + 10) |= 1u;
        *(v24 + 12) = v27 / 100.0;
      }

      *v79 = 0u;
      *v80 = 0u;
      v81 = 1065353216;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v28 = *(a3 + 2264);
      v75 = *(a3 + 2272);
      if (v28 == v75)
      {
        goto LABEL_104;
      }

      v74 = v24;
      while (2)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v30 = *v28;
        v29 = v28[1];
        if (v29 != *v28)
        {
          if (((v29 - *v28) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v31 = 0;
LABEL_31:
        if (v30 != v29)
        {
          v32 = *v30;
          v85 = *v30;
          if (!v79[1])
          {
            goto LABEL_58;
          }

          v33 = __ROR8__(v32, 32);
          v34 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v33 ^ (v33 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v33 ^ (v33 >> 33))) >> 33));
          v35 = v34 ^ (v34 >> 33);
          v36 = vcnt_s8(v79[1]);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v37 = v35;
            if (v35 >= v79[1])
            {
              v37 = v35 % v79[1];
            }
          }

          else
          {
            v37 = v35 & (v79[1] - 1);
          }

          v38 = *(v79[0] + v37);
          if (!v38 || (v39 = *v38) == 0)
          {
LABEL_58:
            v93 = 0x8E38E38E38E38E39 * ((v83 - v82) >> 3);
            v44 = sub_3AFEE8(*a1);
            sub_508C3C(v32, v44, &v86);
            v45 = v83;
            if (v83 >= v84)
            {
              v83 = sub_F1A1BC(&v82, &v86);
              if (SHIBYTE(v91) < 0)
              {
                operator delete(v90);
                if (SHIBYTE(v88) < 0)
                {
LABEL_63:
                  operator delete(__p);
                }
              }

              else if (SHIBYTE(v88) < 0)
              {
                goto LABEL_63;
              }
            }

            else
            {
              *v83 = v86;
              v46 = __p;
              *(v45 + 3) = v88;
              *(v45 + 8) = v46;
              v88 = 0;
              __p = 0uLL;
              v45[32] = v89;
              v47 = v90;
              *(v45 + 7) = v91;
              *(v45 + 40) = v47;
              v91 = 0;
              v90 = 0uLL;
              v45[64] = v92;
              v83 = v45 + 72;
              if (SHIBYTE(v88) < 0)
              {
                goto LABEL_63;
              }
            }

            sub_F1A3BC(v79, &v85);
            v48 = v93;
            v31 = v77;
            v49 = v78;
            if (v77 >= v78)
            {
              goto LABEL_65;
            }

LABEL_29:
            *v31 = v48;
            v31 += 8;
            goto LABEL_30;
          }

          if (v36.u32[0] < 2uLL)
          {
            while (1)
            {
              v41 = v39[1];
              if (v41 == v35)
              {
                if (*(v39 + 4) == v32 && *(v39 + 5) == HIDWORD(v32))
                {
                  goto LABEL_78;
                }
              }

              else if ((v41 & (v79[1] - 1)) != v37)
              {
                goto LABEL_58;
              }

              v39 = *v39;
              if (!v39)
              {
                goto LABEL_58;
              }
            }
          }

          while (1)
          {
            v43 = v39[1];
            if (v43 == v35)
            {
              if (*(v39 + 4) == v32 && *(v39 + 5) == HIDWORD(v32))
              {
LABEL_78:
                v48 = v39[3];
                v49 = v78;
                if (v31 < v78)
                {
                  goto LABEL_29;
                }

LABEL_65:
                v50 = v76;
                v51 = v31 - v76;
                v52 = (v31 - v76) >> 3;
                v53 = v52 + 1;
                if ((v52 + 1) >> 61)
                {
                  sub_1794();
                }

                v54 = v49 - v76;
                if (v54 >> 2 > v53)
                {
                  v53 = v54 >> 2;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v56 = v52;
                v57 = (8 * v52);
                v58 = &v57[-v56];
                *v57 = v48;
                v31 = (v57 + 1);
                memcpy(v58, v50, v51);
                v76 = v58;
                v77 = v31;
                v78 = 0;
                if (v50)
                {
                  operator delete(v50);
                }

LABEL_30:
                v77 = v31;
                ++v30;
                goto LABEL_31;
              }
            }

            else
            {
              if (v43 >= v79[1])
              {
                v43 %= v79[1];
              }

              if (v43 != v37)
              {
                goto LABEL_58;
              }
            }

            v39 = *v39;
            if (!v39)
            {
              goto LABEL_58;
            }
          }
        }

        v59 = v74[11];
        if (v59 && (v60 = *(v74 + 20), v60 < *v59))
        {
          *(v74 + 20) = v60 + 1;
          v61 = *&v59[2 * v60 + 2];
        }

        else
        {
          v62 = sub_141C0C0(v74[9]);
          v61 = sub_19593CC((v74 + 9), v62);
        }

        sub_F23C80(v28, &v76, v61);
        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v28 += 71;
        if (v28 != v75)
        {
          continue;
        }

        break;
      }

      v63 = v82;
      v64 = v83;
      if (v82 != v83)
      {
        do
        {
          v65 = v74[8];
          if (v65 && (v66 = *(v74 + 14), v66 < *v65))
          {
            *(v74 + 14) = v66 + 1;
            v67 = *&v65[2 * v66 + 2];
          }

          else
          {
            v68 = sub_141C160(v74[6]);
            v67 = sub_19593CC((v74 + 6), v68);
          }

          sub_F23B10(v63, v67);
          v63 += 72;
        }

        while (v63 != v64);
        v63 = v82;
      }

      if (v63)
      {
        v69 = v83;
        v70 = v63;
        if (v83 == v63)
        {
LABEL_103:
          v83 = v63;
          operator delete(v70);
          goto LABEL_104;
        }

        while (2)
        {
          if (*(v69 - 9) < 0)
          {
            operator delete(*(v69 - 4));
            if (*(v69 - 41) < 0)
            {
              goto LABEL_101;
            }
          }

          else if (*(v69 - 41) < 0)
          {
LABEL_101:
            operator delete(*(v69 - 8));
          }

          v69 -= 72;
          if (v69 == v63)
          {
            v70 = v82;
            goto LABEL_103;
          }

          continue;
        }
      }

LABEL_104:
      v71 = v80[0];
      if (v80[0])
      {
        do
        {
          v72 = *v71;
          operator delete(v71);
          v71 = v72;
        }

        while (v72);
      }

      v73 = v79[0];
      v79[0] = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }
  }
}

void sub_F18318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F1A104(&a15);
  _Unwind_Resume(a1);
}

void sub_F18370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 38) != 1)
  {
    return;
  }

  v5 = *(a4 + 64);
  if (v5 && (v6 = *(a4 + 56), v6 < *v5))
  {
    *(a4 + 56) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_1862ABC(*(a4 + 48));
    v7 = sub_19593CC(a4 + 48, v9);
  }

  v10 = *(v7 + 40);
  *(v7 + 160) = *(v7 + 56);
  v11 = v10 | 0x84;
  *(v7 + 40) = v10 | 0x84;
  *(v7 + 136) = 62;
  v12 = *(a3 + 2304);
  if (v12 != 0x7FFFFFFF)
  {
    v13 = v12 / 10;
    v14 = v12 % 10;
    if (v12 < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
    v11 = v10 | 0xA4;
    *(v7 + 152) = v16;
  }

  *(v7 + 168) = *(a3 + 2308);
  *(v7 + 40) = v11 | 0x208;
  *(v7 + 140) = 0;
  if (!(**(a3 + 2296))(a3 + 2296))
  {
    return;
  }

  v17 = *(v7 + 64);
  if (v17 && (v18 = *(v7 + 56), v18 < *v17))
  {
    v19 = &v17[2 * v18];
    v20 = v18 + 1;
    *(v7 + 56) = v18 + 1;
    v21 = *(v19 + 1);
  }

  else
  {
    v22 = sub_1862A04(*(v7 + 48));
    v21 = sub_19593CC(v7 + 48, v22);
    v20 = *(v7 + 56);
  }

  *(v7 + 40) |= 0x80u;
  *(v7 + 160) = v20;
  *(v21 + 44) |= 0x2000000u;
  v23 = *(v21 + 520);
  if (!v23)
  {
    v24 = *(v21 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_141BF4C(v25);
    v23 = v26;
    *(v21 + 520) = v26;
  }

  v27 = nullsub_1(*(a3 + 2312));
  v29 = *(v23 + 16);
  *(v23 + 16) = v29 | 0x80;
  *(v23 + 80) = v27;
  if (*(a3 + 2320) == -1 && *(a3 + 2324) == -1)
  {
    v30 = *(a3 + 2332);
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

LABEL_53:
    *(v23 + 16) |= 0x100u;
    *(v23 + 88) = v30 - 978307200;
    v31 = *(a3 + 2336);
    if (v31 >> 5 > 0x464)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  *(v23 + 16) = v29 | 0x88;
  v43 = *(v23 + 48);
  if (!v43)
  {
    v44 = *(v23 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_16F5828(v45);
    *(v23 + 48) = v43;
  }

  sub_EC6D34((a3 + 2320), v43, v28);
  v30 = *(a3 + 2332);
  if (v30 != 0x7FFFFFFF)
  {
    goto LABEL_53;
  }

LABEL_23:
  v31 = *(a3 + 2336);
  if (v31 >> 5 <= 0x464)
  {
LABEL_24:
    v32 = v31 / 100.0;
    *(v23 + 16) |= 0x200u;
    *(v23 + 96) = v32;
  }

LABEL_25:
  v33 = *(a3 + 2344);
  if (*&v33 > -1 && ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v33 - 1) < 0xFFFFFFFFFFFFFLL || (*&v33 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v33 = v33 / 3.6;
    *&v33 = v33;
    *(v23 + 16) |= 0x400u;
    *(v23 + 100) = LODWORD(v33);
  }

  LODWORD(v33) = *(a3 + 2352);
  v37 = vmovl_u8(*&v33).u64[0];
  v38 = vuzp1_s8(v37, v37);
  if (v38.i32[0] == 0xFFFFFF)
  {
    goto LABEL_41;
  }

  sub_58719C((a3 + 2352), &__p);
  *(v23 + 16) |= 4u;
  v39 = *(v23 + 8);
  v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
  if (v39)
  {
    v40 = *v40;
  }

  sub_194EA30((v23 + 40), &__p, v40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v41 = (a3 + 2360);
    v42 = *(a3 + 2392);
    if (v42 <= 2)
    {
LABEL_42:
      if (v42 == 1)
      {
        if (*v41 == -1)
        {
          return;
        }
      }

      else if (v42 != 2 || *(a3 + 2364) == -1 && *(a3 + 2360) == -1 && *(a3 + 2368) == *(a3 + 2376))
      {
        return;
      }

      goto LABEL_63;
    }
  }

  else
  {
LABEL_41:
    v41 = (a3 + 2360);
    v42 = *(a3 + 2392);
    if (v42 <= 2)
    {
      goto LABEL_42;
    }
  }

  if (v42 == 3 || v42 == 4)
  {
    v46 = *(a3 + 2383);
    if ((v46 & 0x80u) != 0)
    {
      v46 = *(a3 + 2368);
    }

    if (v46)
    {
LABEL_63:
      *(v23 + 16) |= 0x40u;
      v47 = *(v23 + 72);
      if (!v47)
      {
        v48 = *(v23 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        v47 = sub_14BF484(v49);
        *(v23 + 72) = v47;
      }

      sub_586C94(v41, v47, v38);
    }
  }
}

void sub_F187DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F187F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 42) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 105;
    v12 = *(a3 + 1224);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 1228);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 1216))(a3 + 1216))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 52) |= 4u;
      v23 = *(v21 + 848);
      if (!v23)
      {
        v24 = *(v21 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_1863310(v25);
        *(v21 + 848) = v23;
      }

      v26 = *(a3 + 1232);
      v27 = v26 / 100;
      v28 = v26 % 100;
      if (v26 < 0)
      {
        v29 = -50;
      }

      else
      {
        v29 = 50;
      }

      v30 = v27 + ((5243 * (v29 + v28)) >> 19) + ((5243 * (v29 + v28)) >> 31);
      v31 = v23[5].i32[0];
      v23[5].i32[0] = v31 | 2;
      v32 = *(a3 + 1240);
      v33 = v32 / 10;
      v34 = v32 % 10;
      if (v32 < 0)
      {
        v35 = -5;
      }

      else
      {
        v35 = 5;
      }

      v23[7].i32[0] = v30;
      v23[7].i32[1] = v33 + (((103 * (v35 + v34)) >> 15) & 1) + ((103 * (v35 + v34)) >> 10);
      v23[8] = vmovn_s64(*(a3 + 1248));
      v23[5].i32[0] = v31 | 0x1F;
      v36 = v23[6];
      if (v36)
      {
        v37 = (a3 + 1264);
      }

      else
      {
        v38 = v23[1];
        v39 = (*&v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38.i8[0])
        {
          v39 = *v39;
        }

        sub_14BAE64(v39);
        v36 = v40;
        v23[6] = v40;
        v37 = (a3 + 1264);
      }

      sub_64D110(v37, v36);
    }
  }
}

uint64_t sub_F18B20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 43) == 1)
  {
    v5 = result;
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      v8 = sub_19593CC(a4 + 48, v10);
    }

    v11 = *(v8 + 40);
    *(v8 + 160) = *(v8 + 56);
    v12 = v11 | 0x84;
    *(v8 + 40) = v11 | 0x84;
    *(v8 + 136) = 106;
    v13 = *(a3 + 112);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v8 + 152) = v17;
    }

    *(v8 + 168) = *(a3 + 116);
    *(v8 + 40) = v12 | 0x208;
    *(v8 + 140) = 0;
    result = (**(a3 + 104))(a3 + 104);
    if (result)
    {
      v18 = *(v8 + 64);
      if (v18 && (v19 = *(v8 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v8 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v8 + 48));
        v22 = sub_19593CC(v8 + 48, v23);
        v21 = *(v8 + 56);
      }

      *(v8 + 40) |= 0x80u;
      *(v8 + 160) = v21;
      *(v22 + 52) |= 8u;
      if (*(v22 + 856))
      {
        sub_4778DC(v26, *v5);
      }

      v24 = *(v22 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      *(v22 + 856) = sub_18633C8(v25);
      sub_4778DC(v26, *v5);
    }
  }

  return result;
}

void sub_F19078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1218EBC(&a46);
    sub_D32AC0(&a54);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(&a46);
  sub_D32AC0(&a54);
  _Unwind_Resume(a1);
}

std::string *sub_F190EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  if (v4 && (v5 = *(a3 + 56), v5 < *v4))
  {
    *(a3 + 56) = v5 + 1;
    v6 = *&v4[2 * v5 + 2];
  }

  else
  {
    v8 = sub_185E6EC(*(a3 + 48));
    v6 = sub_19593CC(a3 + 48, v8);
  }

  v9 = nullsub_1(*(a2 + 56));
  *(v6 + 40) |= 0x20u;
  *(v6 + 176) = v9;
  v10 = nullsub_1(*(a2 + 64));
  *(v6 + 40) |= 0x40u;
  *(v6 + 184) = v10;
  v12 = *(a2 + 8);
  if (*a2 != v12)
  {
    v13 = *a2 + 208;
    do
    {
      v15 = *(v6 + 64);
      if (v15 && (v16 = *(v6 + 56), v16 < *v15))
      {
        *(v6 + 56) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = sub_185E748(*(v6 + 48));
        v17 = sub_19593CC(v6 + 48, v18);
      }

      v19 = nullsub_1(*(v13 - 168));
      v20 = *(v17 + 40);
      *(v17 + 40) = v20 | 0x20;
      *(v17 + 88) = v19;
      if ((*(v13 - 169) & 0x8000000000000000) != 0)
      {
        if (!*(v13 - 184))
        {
LABEL_15:
          v21 = *(v13 - 208);
          if (v21 != 0x7FFFFFFF)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        }
      }

      else if (!*(v13 - 169))
      {
        goto LABEL_15;
      }

      *(v17 + 40) = v20 | 0x21;
      v32 = *(v17 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((v17 + 48), (v13 - 192), v33);
      v21 = *(v13 - 208);
      if (v21 != 0x7FFFFFFF)
      {
LABEL_16:
        *(v17 + 40) |= 8u;
        *(v17 + 72) = v21 + -978307200.0;
      }

LABEL_17:
      v22 = *(v13 - 204);
      if (v22 != 0x7FFFFFFF && *(v13 - 200) == 1)
      {
        *(v17 + 40) |= 0x10u;
        *(v17 + 80) = v22 + -978307200.0;
      }

      if (*(v13 - 199) - 1 <= 1)
      {
        *(v17 + 40) |= 0x40u;
        *(v17 + 96) = 1;
        v23 = (v13 - 160);
        if (sub_4D1F6C((v13 - 160)))
        {
LABEL_22:
          v24 = *v13;
          if ((*v13 - 1) > 2)
          {
            goto LABEL_23;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v23 = (v13 - 160);
        if (sub_4D1F6C((v13 - 160)))
        {
          goto LABEL_22;
        }
      }

      *(v17 + 40) |= 4u;
      v26 = *(v17 + 64);
      if (!v26)
      {
        v27 = *(v17 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        sub_14BAE64(v28);
        v26 = v29;
        *(v17 + 64) = v29;
      }

      sub_64D110(v23, v26);
      v24 = *v13;
      if ((*v13 - 1) > 2)
      {
LABEL_23:
        v25 = *(v13 + 31);
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(v17 + 40) |= 0x80u;
      *(v17 + 100) = v24;
      v25 = *(v13 + 31);
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_24:
        if (v25)
        {
          goto LABEL_34;
        }

        goto LABEL_8;
      }

LABEL_33:
      if (*(v13 + 16))
      {
LABEL_34:
        *(v17 + 40) |= 2u;
        v30 = *(v17 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_194EA1C((v17 + 56), (v13 + 8), v31);
      }

LABEL_8:
      v14 = v13 + 32;
      v13 += 240;
    }

    while (v14 != v12);
  }

  v34 = *(a2 + 24);
  for (i = *(a2 + 32); v34 != i; v34 += 10)
  {
    while (1)
    {
      v36 = *(v6 + 88);
      if (v36 && (v37 = *(v6 + 80), v37 < *v36))
      {
        *(v6 + 80) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        sub_185E7A4(*(v6 + 72));
        v38 = sub_19593CC(v6 + 72, v39);
      }

      v40 = *v34 - 978307200;
      v41 = v38[4];
      v38[4] = v41 | 4;
      v38[8] = v40;
      v42 = v34[1] - 978307200;
      v38[4] = v41 | 0xC;
      v38[9] = v42;
      v43 = v34[3];
      if (v43 == v34[2])
      {
        break;
      }

      v38[4] = v41 | 0xE;
      v11 = v34[2] / 10.0;
      v38[6] = v11;
      v38[7] = (v43 / 10.0);
      v38[4] = v41 | 0xF;
      v34 += 10;
      if (v34 == i)
      {
        goto LABEL_50;
      }
    }

    v11 = v34[4] / 10.0;
    v38[11] = v11;
    v38[4] = v41 | 0x2C;
  }

LABEL_50:
  if (*(a2 + 48) != 0x7FFFFFFF && *(a2 + 52) != 0x7FFFFFFF)
  {
    v44 = *(v6 + 112);
    if (v44 && (v45 = *(v6 + 104), v45 < *v44))
    {
      *(v6 + 104) = v45 + 1;
      v46 = *&v44[2 * v45 + 2];
    }

    else
    {
      v47 = sub_185D2C4(*(v6 + 96));
      v46 = sub_19593CC(v6 + 96, v47);
    }

    v48 = *(a2 + 48) - 978307200;
    v49 = v46[4];
    v46[4] = v49 | 1;
    v46[6] = v48;
    v50 = *(a2 + 52);
    if (v50 == 0x7FFFFFFF || (v51 = *(a2 + 48), v51 == 0x7FFFFFFF))
    {
      v52 = 2147483650.0;
    }

    else
    {
      v52 = (10 * (v50 - v51));
    }

    v11 = v52 / 10.0;
    v46[4] = v49 | 3;
    v46[7] = v11;
  }

  v53 = *(a2 + 95);
  if ((v53 & 0x80u) != 0)
  {
    v53 = *(a2 + 80);
  }

  if (v53)
  {
    *(v6 + 40) |= 1u;
    v54 = *(v6 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    sub_194EA1C((v6 + 136), (a2 + 72), v55);
  }

  v56 = *(a2 + 119);
  if ((v56 & 0x80u) != 0)
  {
    v56 = *(a2 + 104);
  }

  if (v56)
  {
    *(v6 + 40) |= 2u;
    v57 = *(v6 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    sub_194EA1C((v6 + 144), (a2 + 96), v58);
  }

  v59 = *(a2 + 143);
  if ((v59 & 0x80u) != 0)
  {
    v59 = *(a2 + 128);
  }

  if (v59)
  {
    *(v6 + 40) |= 4u;
    v60 = *(v6 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    sub_194EA1C((v6 + 152), (a2 + 120), v61);
  }

  v62 = *(a2 + 144);
  v63 = *(a2 + 152);
  while (v62 != v63)
  {
    v65 = nullsub_1(*v62);
    v66 = v65;
    v67 = *(v6 + 120);
    if (v67 == *(v6 + 124))
    {
      v64 = v67 + 1;
      sub_1959094((v6 + 120), v67 + 1);
      *(*(v6 + 128) + 8 * v67) = v66;
    }

    else
    {
      *(*(v6 + 128) + 8 * v67) = v65;
      v64 = v67 + 1;
    }

    *(v6 + 120) = v64;
    ++v62;
  }

  v68 = *(a2 + 200);
  if (v68 <= 2)
  {
    if (v68 == 1)
    {
      if (*(a2 + 168) == -1)
      {
        goto LABEL_104;
      }
    }

    else if (v68 != 2 || *(a2 + 172) == -1 && *(a2 + 168) == -1 && *(a2 + 176) == *(a2 + 184))
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  if (v68 == 3 || v68 == 4)
  {
    v69 = *(a2 + 191);
    if ((v69 & 0x80u) != 0)
    {
      v69 = *(a2 + 176);
    }

    if (v69)
    {
LABEL_99:
      *(v6 + 40) |= 0x10u;
      v70 = *(v6 + 168);
      if (!v70)
      {
        v71 = *(v6 + 8);
        v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
        if (v71)
        {
          v72 = *v72;
        }

        v70 = sub_14BF484(v72);
        *(v6 + 168) = v70;
      }

      sub_586C94(a2 + 168, v70, *&v11);
    }
  }

LABEL_104:
  result = *(a2 + 280);
  if (result != -1)
  {
    result = nullsub_1(result);
    *(v6 + 40) |= 0x80u;
    *(v6 + 192) = result;
  }

  v74 = *(a2 + 311);
  if ((v74 & 0x80u) != 0)
  {
    v74 = *(a2 + 296);
  }

  if (v74)
  {
    *(v6 + 40) |= 8u;
    v75 = *(v6 + 8);
    v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
    if (v75)
    {
      v76 = *v76;
    }

    return sub_194EA1C((v6 + 160), (a2 + 288), v76);
  }

  return result;
}

std::string *sub_F19810(uint8x8_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 88);
  if (v5 && (v6 = *(a4 + 80), v6 < *v5))
  {
    *(a4 + 80) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_185E63C(*(a4 + 72));
    v7 = sub_19593CC(a4 + 72, v9);
  }

  v10 = *a3;
  v11 = *(a3 + 8);
  while (v10 != v11)
  {
    v13 = sub_2FEF94(*v10);
    v14 = v13;
    v15 = *(v7 + 24);
    if (v15 == *(v7 + 28))
    {
      v12 = v15 + 1;
      sub_1959094((v7 + 24), v15 + 1);
      *(*(v7 + 32) + 8 * v15) = v14;
    }

    else
    {
      *(*(v7 + 32) + 8 * v15) = v13;
      v12 = v15 + 1;
    }

    *(v7 + 24) = v12;
    ++v10;
  }

  v16 = *(a3 + 24);
  v17 = *(a3 + 32);
  while (v16 != v17)
  {
    v20 = *(v7 + 56);
    if (v20 && (v21 = *(v7 + 48), v21 < *v20))
    {
      *(v7 + 48) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      v18 = sub_185EA2C(*(v7 + 40));
      v19 = sub_19593CC(v7 + 40, v18);
    }

    sub_F234B8(v16, v19, a1);
    v16 += 36;
  }

  *(v7 + 16) |= 1u;
  v22 = *(v7 + 8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  result = sub_194EA1C((v7 + 64), (a3 + 56), v23);
  v25 = *(a3 + 48);
  *(v7 + 16) |= 2u;
  *(v7 + 72) = v25;
  return result;
}

uint64_t sub_F19988(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  if (v5)
  {
    v6 = *(a3 + 48);
    if (v6 < *v5)
    {
      *(a3 + 48) = v6 + 1;
      result = *&v5[2 * v6 + 2];
      if (*(a2 + 9))
      {
        return result;
      }

LABEL_6:
      v10 = sub_3AFC64(*a1);
      sub_504EE0(v10, a2, &v30);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      if (v31 != v30)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 2) <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v11 = 0;
      if (v30)
      {
        v31 = v30;
        operator delete(v30);
        v11 = v33;
      }

      __p = 0;
      v28 = 0;
      v29 = 0;
      sub_41DB4(&v32, 0xAAAAAAAAAAAAAAABLL * ((v11 - v32) >> 2), 0, 1, &__p, &v30, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v28 = 0;
      v29 = 0;
      v12 = v31;
      if (v31)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v16 = sub_61B864(&v30, v14);
          if ((*v16 & v17) != 0)
          {
            v18 = sub_41224(&v32, v14);
            if (v13 < v29)
            {
              v15 = *v18;
              *(v13 + 8) = *(v18 + 8);
              *v13 = v15;
              v13 += 12;
            }

            else
            {
              v19 = __p;
              v20 = v13 - __p;
              v21 = 0xAAAAAAAAAAAAAAABLL * ((v13 - __p) >> 2);
              v22 = v21 + 1;
              if (v21 + 1 > 0x1555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v29 - __p) >> 2) > v22)
              {
                v22 = 0x5555555555555556 * ((v29 - __p) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v29 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v23 = 0x1555555555555555;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                if (v23 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v24 = 12 * v21;
              v25 = *v18;
              *(v24 + 8) = *(v18 + 8);
              *v24 = v25;
              v13 = 12 * v21 + 12;
              v26 = (v24 - v20);
              memcpy((v24 - v20), v19, v20);
              __p = v26;
              v28 = v13;
              v29 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            v28 = v13;
          }

          ++v14;
        }

        while (v12 != v14);
      }

      sub_F20D00();
    }
  }

  v9 = sub_185EDA4(*(a3 + 40));
  result = sub_19593CC(a3 + 40, v9);
  if ((*(a2 + 9) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_F19E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_F19EA0(long double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 56);
  if (v5)
  {
    v6 = *(a4 + 48);
    if (v6 < *v5)
    {
      *(a4 + 48) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      v8 = *(a3 + 31);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a3 + 16);
      }

      if (!v8)
      {
        goto LABEL_13;
      }

LABEL_10:
      *(v7 + 40) |= 2u;
      v12 = *(v7 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((v7 + 128), (a3 + 8), v13);
      goto LABEL_13;
    }
  }

  v10 = sub_185E820(*(a4 + 40));
  v7 = sub_19593CC(a4 + 40, v10);
  v11 = *(a3 + 31);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 16);
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (*a3 != -1)
  {
    v14 = nullsub_1(*a3);
    *(v7 + 40) |= 0x20u;
    *(v7 + 160) = v14;
  }

  v15 = *(a3 + 55);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 40);
  }

  if (v15)
  {
    *(v7 + 40) |= 4u;
    v16 = *(v7 + 136);
    if (!v16)
    {
      v17 = *(v7 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_16F6144(v18);
      *(v7 + 136) = v16;
    }

    *(v16 + 4) |= 1u;
    v19 = v16[1];
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C(v16 + 3, (a3 + 32), v20);
    *(v7 + 40) |= 8u;
    v22 = *(v7 + 144);
    if (!v22)
    {
      v23 = *(v7 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(v7 + 144) = v22;
    }

    a1 = sub_EC6D34((a3 + 56), v22, v21);
  }

  if (*(a3 + 72) != *(a3 + 80))
  {
    *(v7 + 40) |= 0x10u;
    v25 = *(v7 + 152);
    if (!v25)
    {
      v26 = *(v7 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1551A70(v27);
      *(v7 + 152) = v25;
    }

    sub_43735C(a3 + 72, v25);
  }

  v28 = *(a3 + 96);
  v29 = *(a3 + 104);
  while (v28 != v29)
  {
    v32 = *(v7 + 112);
    if (v32 && (v33 = *(v7 + 104), v33 < *v32))
    {
      *(v7 + 104) = v33 + 1;
      v31 = *&v32[2 * v33 + 2];
    }

    else
    {
      v30 = sub_185EA2C(*(v7 + 96));
      v31 = sub_19593CC(v7 + 96, v30);
    }

    sub_F234B8(v28, v31, *&a1);
    v28 += 36;
  }

  if (*(a3 + 148))
  {
    *(v7 + 40) |= 0x40u;
    *(v7 + 168) = 1;
  }
}

uint64_t sub_F1A104(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 48) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 64));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 40);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v5 = *(a1 + 16);
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

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_F1A1BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v6 + 64) = *(a2 + 64);
  v7 = 72 * v2 + 72;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 40) = v14;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 40) = 0;
      *(v12 + 64) = *(v11 + 64);
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
        if (*(v8 + 31) < 0)
        {
LABEL_19:
          operator delete(*(v8 + 8));
        }
      }

      else if (*(v8 + 31) < 0)
      {
        goto LABEL_19;
      }

      v8 += 72;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t *sub_F1A3BC(void *a1, void *a2)
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

void sub_F1A730(std::string **a1, const void *a2, size_t __n, uint64_t *a4)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v8 = __n;
  if (__n)
  {
    memcpy(&__dst, a2, __n);
  }

  *(&__dst + __n) = 0;
  sub_194EA1C(a1, &__dst, a4);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_F1A824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F1A840()
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
  xmmword_27BF458 = 0u;
  unk_27BF468 = 0u;
  dword_27BF478 = 1065353216;
  sub_3A9A34(&xmmword_27BF458, v0);
  sub_3A9A34(&xmmword_27BF458, v3);
  sub_3A9A34(&xmmword_27BF458, __p);
  sub_3A9A34(&xmmword_27BF458, v9);
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
    qword_27BF430 = 0;
    qword_27BF438 = 0;
    qword_27BF428 = 0;
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

void sub_F1AA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF440)
  {
    qword_27BF448 = qword_27BF440;
    operator delete(qword_27BF440);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F1AB34(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 1);
  }

  if (v3 < 3)
  {
    v5 = 0;
    return v5 & 1;
  }

  if (v4 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 == 11833 && v9 == 48)
  {
    v11 = *(a2 + 296);
    v12 = v11 ? v11 + 8 : 0;
    v13 = *(a2 + 288);
    if (v13)
    {
      v5 = 0;
      v14 = 8 * v13;
      do
      {
        if ((*(*v12 + 40) & 2) != 0)
        {
          a1 = sub_F1AC08(a1, *(*v12 + 56));
          v5 |= a1;
        }

        v12 += 8;
        v14 -= 8;
      }

      while (v14);
      return v5 & 1;
    }
  }

  return 0;
}

uint64_t sub_F1AC08(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  v4 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v4 + 8))
    {
      return 0;
    }
  }

  else if (!*(v4 + 23))
  {
    return 0;
  }

  v5 = sub_3110((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL));
  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 == v5)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (v5 >= 4)
    {
      sub_194EC04(v3);
      *(a2 + 40) &= ~1u;
      return 1;
    }

    return 0;
  }

  if (*(v4 + 8) != v5)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v5 >= 6)
  {
    v7 = v5;
    *(a2 + 40) |= 1u;
    v8 = *(a2 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v10 = sub_194DB04(v3, *v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v11 > 4)
        {
LABEL_11:
          sub_148E0(v10, 5, v7 - 5);
          return 1;
        }

LABEL_18:
        sub_49D4();
      }
    }

    else
    {
      v10 = sub_194DB04(v3, v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    if (v10[1] > 4)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

void *sub_F1AD2C(uint64_t a1, int *a2)
{
  v3 = sub_1950D4C((a1 + 16), dword_278CFF0, 11, &off_2769490, 0);
  *(v3 + 16) |= 8u;
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *a2;
    if (v5 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = v3;
    v9 = *(v3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_12D0EA4(v10);
    v4 = v11;
    *(v8 + 72) = v11;
    v5 = *a2;
    if (v5 == 0x7FFFFFFF)
    {
LABEL_3:
      v6 = *(a2 + 2);
      v7 = *(a2 + 1);
      if (v7 == v6)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  *(v4 + 16) |= 0x10u;
  *(v4 + 240) = v5;
  v6 = *(a2 + 2);
  v7 = *(a2 + 1);
  if (v7 == v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_73B58(v7, v6, ",", __p);
  *(v4 + 16) |= 1u;
  v12 = *(v4 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((v4 + 208), __p, v13);
  if (v30 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 32) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (*(a2 + 32) == 1)
  {
LABEL_13:
    *(v4 + 16) |= 0x40u;
    *(v4 + 249) = 1;
  }

LABEL_14:
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  while (v14 != v15)
  {
    v19 = *(v14 + 1);
    v20 = *(v14 + 2);
    v21 = *(v4 + 176);
    if (v21 && (v22 = *(v4 + 168), v22 < *v21))
    {
      *(v4 + 168) = v22 + 1;
      v17 = *&v21[2 * v22 + 2];
    }

    else
    {
      v16 = sub_12D0D28(*(v4 + 160));
      v17 = sub_19593CC(v4 + 160, v16);
    }

    v18 = *(v17 + 16);
    *(v17 + 28) = *v14 == 1;
    *(v17 + 24) = (v19 | v20) & 1;
    *(v17 + 25) = *(v14 + 3);
    *(v17 + 26) = *(v14 + 4);
    *(v17 + 16) = v18 | 0x1F;
    v14 += 32;
  }

  *(v4 + 16) |= 8u;
  v23 = *(v4 + 232);
  if (!v23)
  {
    v24 = *(v4 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_131A21C(v25);
    *(v4 + 232) = v23;
  }

  sub_EE27DC(__p, v23);
  v27 = *(a2 + 5);
  for (i = *(a2 + 6); v27 != i; v27 += 32)
  {
    sub_EE280C(__p, (v27 + 8));
  }

  return sub_EE11B4(__p);
}

void sub_F1AF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F1B048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 3);
  *(a1 + 48) = *a3;
  *(a1 + 51) = v8;
  if (a1 + 48 == a3)
  {
    v12 = *(a3 + 48);
    *(a1 + 80) = *(a3 + 32);
    *(a1 + 96) = v12;
    *(a1 + 112) = *(a3 + 64);
    *(a1 + 144) = *(a3 + 96);
    *(a1 + 200) = *(a3 + 152);
    v13 = *(a3 + 160);
    *(a1 + 216) = *(a3 + 168);
    *(a1 + 208) = v13;
  }

  else
  {
    sub_146EC((a1 + 56), *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 2);
    v9 = *(a3 + 48);
    *(a1 + 80) = *(a3 + 32);
    *(a1 + 96) = v9;
    *(a1 + 112) = *(a3 + 64);
    if (a1 + 112 == a3 + 64)
    {
      *(a1 + 144) = *(a3 + 96);
    }

    else
    {
      sub_61532C((a1 + 120), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 3);
      *(a1 + 144) = *(a3 + 96);
      sub_146EC((a1 + 152), *(a3 + 104), *(a3 + 112), (*(a3 + 112) - *(a3 + 104)) >> 2);
      v10 = *(a3 + 151);
      if (*(a1 + 199) < 0)
      {
        if (v10 >= 0)
        {
          v14 = (a3 + 128);
        }

        else
        {
          v14 = *(a3 + 128);
        }

        if (v10 >= 0)
        {
          v15 = *(a3 + 151);
        }

        else
        {
          v15 = *(a3 + 136);
        }

        sub_13B38(a1 + 176, v14, v15);
      }

      else if ((*(a3 + 151) & 0x80) != 0)
      {
        sub_13A68((a1 + 176), *(a3 + 128), *(a3 + 136));
      }

      else
      {
        v11 = *(a3 + 128);
        *(a1 + 192) = *(a3 + 144);
        *(a1 + 176) = v11;
      }
    }

    *(a1 + 200) = *(a3 + 152);
    v16 = *(a3 + 160);
    *(a1 + 216) = *(a3 + 168);
    *(a1 + 208) = v16;
    sub_146EC((a1 + 224), *(a3 + 176), *(a3 + 184), (*(a3 + 184) - *(a3 + 176)) >> 2);
  }

  sub_1757EA4(a4, 0, 0);
  v17 = sub_3AF114(*a1);
  v18 = sub_2D5630(*v17);
  *(a4 + 40) |= 0x8000000u;
  *(a4 + 566) = v18;
  v19 = *a2;
  v20 = *(a2 + 8);
  if (*a2 != v20)
  {
    do
    {
      v21 = *(a4 + 368);
      if (v21 && (v22 = *(a4 + 360), v22 < *v21))
      {
        *(a4 + 360) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
        *(a4 + 40) |= 0x200000u;
        v24 = *(a4 + 544);
        if (!v24)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v25 = sub_14357EC(*(a4 + 352));
        v23 = sub_19593CC(a4 + 352, v25);
        *(a4 + 40) |= 0x200000u;
        v24 = *(a4 + 544);
        if (!v24)
        {
LABEL_23:
          v26 = *(a4 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v24 = sub_14362B4(v27);
          *(a4 + 544) = v24;
        }
      }

      sub_F1B7C8(a1, v19, v23, v24);
      v19 += 412;
    }

    while (v19 != v20);
  }

  sub_F1BD0C(a1, (a2 + 472), a4);
  *(a4 + 40) |= 0x200000u;
  v29 = *(a4 + 544);
  if (!v29)
  {
    v30 = *(a4 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_14362B4(v31);
    *(a4 + 544) = v29;
  }

  sub_F1C3A4(a1, (a2 + 24), v29, v28);
  if (*(a2 + 496))
  {
    v67.n128_u64[0] = *(a2 + 496);
    v67.n128_u64[1] = &off_2669FE0;
    sub_434934(&v68, &v67);
    sub_EB8760();
    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          if (*(v33 - 1) < 0)
          {
            operator delete(*(v33 - 3));
          }

          v33 -= 4;
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
      if (*(a2 + 376) == *(a2 + 384))
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    }
  }

  else
  {
    *(a4 + 40) |= 0x400000u;
    *(a4 + 552) = 0;
  }

  if (*(a2 + 376) == *(a2 + 384))
  {
    goto LABEL_57;
  }

LABEL_43:
  v35 = *(a2 + 375);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(a2 + 360);
  }

  if (v35)
  {
    *(a4 + 40) |= 0x80u;
    v36 = *(a4 + 432);
    if (!v36)
    {
      v37 = *(a4 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_141BDA4(v38);
      *(a4 + 432) = v36;
    }

    *(v36 + 40) |= 1u;
    v39 = *(v36 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((v36 + 64), (a2 + 352), v40);
    v41 = *(a2 + 376);
    v42 = *(a2 + 384);
    if (v41 != v42)
    {
      v43 = (v36 + 48);
      v44 = *(v36 + 48);
      do
      {
        while (1)
        {
          v45 = *v41;
          if (v44 == *(v36 + 52))
          {
            break;
          }

          *(*(v36 + 56) + 4 * v44++) = v45;
          *v43 = v44;
          v41 += 2;
          if (v41 == v42)
          {
            goto LABEL_57;
          }
        }

        sub_1958E5C((v36 + 48), v44 + 1);
        *(*(v36 + 56) + 4 * v44++) = v45;
        *v43 = v44;
        v41 += 2;
      }

      while (v41 != v42);
    }
  }

LABEL_57:
  *(a4 + 40) |= 0x100000u;
  v46 = *(a4 + 536);
  if (v46)
  {
    v47 = *(a2 + 288);
    if (v47 == 0x7FFFFFFF)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v48 = *(a4 + 8);
  v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
  if (v48)
  {
    v49 = *v49;
  }

  v46 = sub_14BD794(v49);
  *(a4 + 536) = v46;
  v47 = *(a2 + 288);
  if (v47 != 0x7FFFFFFF)
  {
LABEL_63:
    v50 = v47 + -978307200.0;
    v51 = *(v46 + 16);
    *(v46 + 16) = v51 | 1;
    *(v46 + 24) = v50;
    v52 = *(a2 + 296);
    if (v52 <= 1)
    {
      *(v46 + 16) = v51 | 5;
      *(v46 + 40) = v52;
    }
  }

LABEL_65:
  v53 = sub_1950D4C((a4 + 16), dword_278CFF0, 11, &off_2769490, 0);
  *(v53 + 16) |= 1u;
  v54 = *(v53 + 8);
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  sub_194EA1C((v53 + 48), (a2 + 304), v55);
  *(a4 + 40) |= 0x40u;
  v56 = *(a4 + 8);
  v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
    v57 = *v57;
  }

  v58 = sub_194EA1C((a4 + 424), (a2 + 328), v57);
  *(a4 + 40) |= 0x4000000u;
  *(a4 + 565) = 1;
  v59 = *(a2 + 8);
  v60 = *a2;
  if (*a2 != v59)
  {
    v60 = *a2;
    while ((v60[144] & 1) == 0)
    {
      v60 += 412;
      if (v60 == v59)
      {
        goto LABEL_76;
      }
    }
  }

  if (v60 != v59)
  {
    v58 = sub_314EB0(0xDAB7EC1DD3431B57 * ((v60 - *a2) >> 5));
    *(a4 + 40) |= 0x1000000u;
    *(a4 + 560) = v58;
  }

LABEL_76:
  sub_F1C730(v58, (a2 + 400), a4);
  sub_58568(&v67);
  sub_585EC(&v67, &v68);
  *(a4 + 40) |= 1u;
  v61 = *(a4 + 8);
  v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
  if (v61)
  {
    v62 = *v62;
  }

  sub_194EA30((a4 + 376), &v68, v62);
  if (SHIBYTE(__p) < 0)
  {
    operator delete(v68.n128_u64[0]);
    *(a4 + 40) |= 0x2000u;
    v63 = *(a4 + 480);
    if (v63)
    {
      return sub_F22DD4((a2 + 464), v63);
    }
  }

  else
  {
    *(a4 + 40) |= 0x2000u;
    v63 = *(a4 + 480);
    if (v63)
    {
      return sub_F22DD4((a2 + 464), v63);
    }
  }

  v64 = *(a4 + 8);
  v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
  if (v64)
  {
    v65 = *v65;
  }

  v63 = sub_1436310(v65);
  *(a4 + 480) = v63;
  return sub_F22DD4((a2 + 464), v63);
}

void sub_F1B6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_CF3C94(va);
  sub_1758FB8(v5);
  _Unwind_Resume(a1);
}

void sub_F1B72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1758FB8(v18);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(v18);
  _Unwind_Resume(a1);
}

void sub_F1B7C8(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = *a2;
  v62 = a2[1];
  if (*a2 != v62)
  {
    do
    {
      v9 = *(a3 + 128);
      if (v9 && (v10 = *(a3 + 120), v10 < *v9))
      {
        *(a3 + 120) = v10 + 1;
        v11 = *&v9[2 * v10 + 2];
        v63 = v7;
        v12 = *v7;
        v13 = v7[1];
        v14 = *v7;
        if (*v7 != v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = sub_14356BC(*(a3 + 112));
        v11 = sub_19593CC(a3 + 112, v15);
        v63 = v7;
        v12 = *v7;
        v13 = v7[1];
        v14 = *v7;
        if (*v7 != v13)
        {
LABEL_10:
          v16 = v13 - v14;
          if ((v13 - v14) == &stru_68)
          {
            v17 = 0;
          }

          else
          {
            v18 = 0;
            v19 = v14;
            while (*v19)
            {
              v19 += 26;
              v18 -= 104;
              if (v19 == v13)
              {
                goto LABEL_17;
              }
            }

            v16 = -v18;
LABEL_17:
            v17 = -991146299 * (v16 >> 3);
          }

          *(v11 + 40) |= 1u;
          *(v11 + 68) = v17;
          do
          {
            while (1)
            {
              v20 = *(a3 + 152);
              if (v20 && (v21 = *(a3 + 144), v21 < *v20))
              {
                *(a3 + 144) = v21 + 1;
                v22 = *&v20[2 * v21 + 2];
              }

              else
              {
                v23 = sub_1435718(*(a3 + 136));
                v22 = sub_19593CC(a3 + 136, v23);
              }

              v24 = v5;
              sub_F1C9B8(a1, v14, v5, v22, a4, *&v12);
              v25 = *(a3 + 144) - 1;
              v26 = *(v11 + 48);
              if (v26 == *(v11 + 52))
              {
                break;
              }

              *(*(v11 + 56) + 4 * v26) = v25;
              *(v11 + 48) = v26 + 1;
              v14 += 104;
              v5 = v24;
              if (v14 == v13)
              {
                goto LABEL_4;
              }
            }

            sub_1958E5C((v11 + 48), v26 + 1);
            *(*(v11 + 56) + 4 * v26) = v25;
            *(v11 + 48) = v26 + 1;
            v14 += 104;
            v5 = v24;
          }

          while (v14 != v13);
          goto LABEL_4;
        }
      }

      *(v11 + 40) |= 1u;
      *(v11 + 68) = -1;
LABEL_4:
      v7 = v63 + 4;
    }

    while (v63 + 4 != v62);
  }

  v27 = *(v5 + 1232);
  if (v27 == 2)
  {
    v32 = *(v5 + 4 * (*(v5 + 28) != 0x7FFFFFFF) + 24) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v32;
    v30 = (v5 + 4 * (*(v5 + 40) != 0x7FFFFFFF) + 36);
  }

  else if (v27 == 1)
  {
    v31 = *(v5 + 4 * (*(v5 + 52) != 0x7FFFFFFF) + 48) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v31;
    v30 = (v5 + 4 * (*(v5 + 64) != 0x7FFFFFFF) + 60);
  }

  else
  {
    v28 = *(v5 + 24) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v28;
    v30 = (v5 + 36);
  }

  v33 = *v30 - 978307200;
  *(a3 + 40) = v29 | 0x40;
  *(a3 + 204) = v33;
  *(a3 + 208) = *(v5 + 1040);
  *(a3 + 40) = v29 | 0xC8;
  v34 = *(a3 + 184);
  if (!v34)
  {
    v35 = *(a3 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_1435774(v36);
    *(a3 + 184) = v34;
  }

  v37 = *(v5 + 1248);
  *(v34 + 4) |= 1u;
  v34[3] = v37;
  if (*(v5 + 1048))
  {
    v38 = *(v5 + 1044);
    if (v38 < 4)
    {
      v39 = v38 + 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a3 + 96);
    if (v40 == *(a3 + 100))
    {
      v41 = v40 + 1;
      sub_1958E5C((a3 + 96), v40 + 1);
      *(*(a3 + 104) + 4 * v40) = v39;
    }

    else
    {
      *(*(a3 + 104) + 4 * v40) = v39;
      v41 = v40 + 1;
    }

    *(a3 + 96) = v41;
  }

  sub_F1CC24(v34, (v5 + 1056), a3);
  *(a3 + 40) |= 4u;
  v42 = *(a3 + 176);
  if (!v42)
  {
    v43 = *(a3 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_1435454(v44);
    *(a3 + 176) = v42;
  }

  sub_F21D70((v5 + 80), v42);
  sub_F2202C(v5 + 1280, v42);
  if (*(a1 + 100) > 1u)
  {
    sub_F20A70(v5 + 1280, a3);
  }

  else
  {
    v45 = *(v5 + 2344);
    v46 = *(v5 + 2352);
    if (v45 != v46)
    {
      while (*(v45 + 488) != 2)
      {
        v45 += 496;
        if (v45 == v46)
        {
          goto LABEL_54;
        }
      }

      *(a3 + 40) |= 2u;
      v51 = *(a3 + 168);
      if (!v51)
      {
        v52 = *(a3 + 8);
        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v53 = *v53;
        }

        v51 = sub_141BDA4(v53);
        *(a3 + 168) = v51;
      }

      v54 = *v45;
      *(v51 + 40) |= 1u;
      v55 = *(v51 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      sub_194EA1C((v51 + 64), v54, v56);
      v57 = *(v45 + 168);
      v58 = *(v45 + 176);
      while (v57 != v58)
      {
        if (v57[192] != 3)
        {
          sub_5AF20();
        }

        v60 = *v57;
        v61 = *(v51 + 48);
        if (v61 == *(v51 + 52))
        {
          v59 = v61 + 1;
          sub_1958E5C((v51 + 48), v61 + 1);
          *(*(v51 + 56) + 4 * v61) = v60;
        }

        else
        {
          *(*(v51 + 56) + 4 * v61) = v60;
          v59 = v61 + 1;
        }

        *(v51 + 48) = v59;
        v57 += 200;
      }
    }
  }

LABEL_54:
  v47 = *(v5 + 1151);
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v5 + 1136);
  }

  if (v47)
  {
    *(a3 + 40) |= 1u;
    v48 = *(a3 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    sub_194EA1C((a3 + 160), (v5 + 1128), v49);
  }

  v50 = *(v5 + 1224);
  *(a3 + 40) |= 0x400u;
  *(a3 + 220) = v50;
}

void sub_F1BD0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v52 = a2[1];
  if (*a2 != v52)
  {
    do
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v5 = *v3;
      v6 = *(v3 + 8);
      v53 = v3;
      if (v6 != *v3)
      {
        if (((v6 - *v3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v7 = 0;
      while (v5 != v6)
      {
        v8 = *v5;
        v57 = *v5;
        v9 = *(a1 + 328);
        if (!*&v9)
        {
          goto LABEL_37;
        }

        v10 = __ROR8__(v8, 32);
        v11 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
        v12 = v11 ^ (v11 >> 33);
        v13 = vcnt_s8(v9);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v12;
          if (v12 >= *&v9)
          {
            v14 = v12 % *&v9;
          }
        }

        else
        {
          v14 = v12 & (*&v9 - 1);
        }

        v15 = *(*(a1 + 320) + 8 * v14);
        if (!v15 || (v16 = *v15) == 0)
        {
LABEL_37:
          v65 = 0x8E38E38E38E38E39 * ((*(a1 + 368) - *(a1 + 360)) >> 3);
          v22 = sub_3AFEE8(*a1);
          sub_508C3C(v8, v22, &v58);
          v24 = *(a1 + 368);
          v23 = *(a1 + 376);
          if (v24 < v23)
          {
            *v24 = v58;
            v25 = __p;
            *(v24 + 24) = v60;
            *(v24 + 8) = v25;
            v60 = 0;
            __p = 0uLL;
            *(v24 + 32) = v61;
            v26 = v62;
            *(v24 + 56) = v63;
            *(v24 + 40) = v26;
            v63 = 0;
            v62 = 0uLL;
            *(v24 + 64) = v64;
            *(a1 + 368) = v24 + 72;
            if (SHIBYTE(v60) < 0)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          v27 = *(a1 + 360);
          v28 = 0x8E38E38E38E38E39 * ((v24 - v27) >> 3) + 1;
          if (v28 > 0x38E38E38E38E38ELL)
          {
            sub_1794();
          }

          v29 = 0x8E38E38E38E38E39 * ((v23 - v27) >> 3);
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          if (v29 >= 0x1C71C71C71C71C7)
          {
            v30 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (v30 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            sub_1808();
          }

          v31 = 8 * ((v24 - v27) >> 3);
          *v31 = v58;
          *(v31 + 8) = __p;
          *(v31 + 24) = v60;
          __p = 0uLL;
          v60 = 0;
          *(v31 + 32) = v61;
          *(v31 + 40) = v62;
          *(v31 + 56) = v63;
          v63 = 0;
          v62 = 0uLL;
          v32 = v31 - (v24 - v27);
          *(v31 + 64) = v64;
          if (v27 == v24)
          {
LABEL_60:
            *(a1 + 360) = v32;
            *(a1 + 368) = v31 + 72;
            *(a1 + 376) = 0;
            if (v27)
            {
              operator delete(v27);
            }

            v37 = SHIBYTE(v63);
            *(a1 + 368) = v31 + 72;
            if (v37 < 0)
            {
              operator delete(v62);
              if (SHIBYTE(v60) < 0)
              {
LABEL_64:
                operator delete(__p);
              }
            }

            else if (SHIBYTE(v60) < 0)
            {
              goto LABEL_64;
            }

LABEL_65:
            sub_F1A3BC((a1 + 320), &v57);
            v38 = v65;
            v7 = v55;
            v39 = v56;
            if (v55 >= v56)
            {
              goto LABEL_66;
            }

LABEL_8:
            *v7 = v38;
            v7 += 8;
            goto LABEL_9;
          }

          v33 = v27;
          v34 = 8 * ((v24 - v27) >> 3) - (v24 - v27);
          do
          {
            *v34 = *v33;
            v35 = *(v33 + 8);
            *(v34 + 24) = *(v33 + 24);
            *(v34 + 8) = v35;
            *(v33 + 16) = 0;
            *(v33 + 24) = 0;
            *(v33 + 8) = 0;
            *(v34 + 32) = *(v33 + 32);
            v36 = *(v33 + 40);
            *(v34 + 56) = *(v33 + 56);
            *(v34 + 40) = v36;
            *(v33 + 48) = 0;
            *(v33 + 56) = 0;
            *(v33 + 40) = 0;
            *(v34 + 64) = *(v33 + 64);
            v33 += 72;
            v34 += 72;
          }

          while (v33 != v24);
          while (2)
          {
            if (*(v27 + 63) < 0)
            {
              operator delete(*(v27 + 40));
              if (*(v27 + 31) < 0)
              {
                goto LABEL_58;
              }
            }

            else if (*(v27 + 31) < 0)
            {
LABEL_58:
              operator delete(*(v27 + 8));
            }

            v27 += 72;
            if (v27 == v24)
            {
              v27 = *(a1 + 360);
              goto LABEL_60;
            }

            continue;
          }
        }

        if (v13.u32[0] < 2uLL)
        {
          v17 = *&v9 - 1;
          while (1)
          {
            v21 = v16[1];
            if (v21 == v12)
            {
              if (*(v16 + 4) == v8 && *(v16 + 5) == HIDWORD(v8))
              {
                goto LABEL_79;
              }
            }

            else if ((v21 & v17) != v14)
            {
              goto LABEL_37;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_37;
            }
          }
        }

        while (1)
        {
          v19 = v16[1];
          if (v19 == v12)
          {
            break;
          }

          if (v19 >= *&v9)
          {
            v19 %= *&v9;
          }

          if (v19 != v14)
          {
            goto LABEL_37;
          }

LABEL_24:
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_37;
          }
        }

        if (*(v16 + 4) != v8 || *(v16 + 5) != HIDWORD(v8))
        {
          goto LABEL_24;
        }

LABEL_79:
        v38 = v16[3];
        v39 = v56;
        if (v7 < v56)
        {
          goto LABEL_8;
        }

LABEL_66:
        v40 = v54;
        v41 = v7 - v54;
        v42 = (v7 - v54) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          sub_1794();
        }

        v44 = v39 - v54;
        if (v44 >> 2 > v43)
        {
          v43 = v44 >> 2;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          if (!(v45 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v42) = v38;
        v7 = (8 * v42 + 8);
        memcpy(0, v40, v41);
        v54 = 0;
        v55 = v7;
        v56 = 0;
        if (v40)
        {
          operator delete(v40);
        }

LABEL_9:
        v55 = v7;
        ++v5;
      }

      v46 = *(a3 + 320);
      if (v46 && (v47 = *(a3 + 312), v47 < *v46))
      {
        *(a3 + 312) = v47 + 1;
        v48 = *&v46[2 * v47 + 2];
        v49 = v53;
      }

      else
      {
        v50 = sub_141C0C0(*(a3 + 304));
        v49 = v53;
        v48 = sub_19593CC(a3 + 304, v50);
      }

      sub_F23C80(v49, &v54, v48);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      v3 = v49 + 568;
    }

    while (v3 != v52);
  }
}

void sub_F1C34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void sub_F1C3A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint8x8_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      sub_F1F080(a1, v7, a3);
      v7 += 168;
    }

    while (v7 != v8);
  }

  v9 = a2[6];
  for (i = a2[7]; v9 != i; v9 += 136)
  {
    sub_F1F20C(a1, v9, a3);
  }

  v11 = a2[3];
  for (j = a2[4]; v11 != j; v11 += 144)
  {
    sub_F1F35C(a1, v11, a3);
  }

  v13 = a2[9];
  v14 = a2[10];
  while (v13 != v14)
  {
    v18 = *(a3 + 104);
    if (v18 && (v17 = *(a3 + 96), v17 < *v18))
    {
      *(a3 + 96) = v17 + 1;
      v16 = *&v18[2 * v17 + 2];
    }

    else
    {
      v15 = sub_141BB20(*(a3 + 88));
      v16 = sub_19593CC(a3 + 88, v15);
      v17 = *(a3 + 96) - 1;
    }

    *(v16 + 40) |= 0x4000u;
    *(v16 + 164) = v17;
    sub_F22DEC(v13, v16);
    v13 += 696;
  }

  v19 = a2[12];
  v20 = a2[13];
  while (v19 != v20)
  {
    v24 = *(a3 + 224);
    if (v24 && (v23 = *(a3 + 216), v23 < *v24))
    {
      *(a3 + 216) = v23 + 1;
      v22 = *&v24[2 * v23 + 2];
    }

    else
    {
      v21 = sub_141BC34(*(a3 + 208));
      v22 = sub_19593CC(a3 + 208, v21);
      v23 = *(a3 + 216) - 1;
    }

    *(v22 + 40) |= 0x40u;
    *(v22 + 92) = v23;
    sub_F232F0(v19, v22);
    v19 += 208;
  }

  v25 = a2[15];
  for (k = a2[16]; v25 != k; v25 += 304)
  {
    sub_F1F4C8(a1, v25, a3);
  }

  if (a2[30] != a2[31])
  {
    sub_F1F7E4();
  }

  v27 = a2[18];
  v28 = a2[19];
  while (v27 != v28)
  {
    v31 = *(a3 + 296);
    if (v31 && (v32 = *(a3 + 288), v32 < *v31))
    {
      *(a3 + 288) = v32 + 1;
      v30 = *&v31[2 * v32 + 2];
    }

    else
    {
      v29 = sub_14BF484(*(a3 + 280));
      v30 = sub_19593CC(a3 + 280, v29);
    }

    sub_586C94(v27, v30, a4);
    v27 += 112;
  }

  if (a2[21] != a2[22])
  {
    sub_F1DEB4();
  }

  v34 = a2[24];
  v33 = a2[25];
  while (v34 != v33)
  {
    v38 = *(a3 + 248);
    if (v38 && (v37 = *(a3 + 240), v37 < *v38))
    {
      *(a3 + 240) = v37 + 1;
      v36 = *&v38[2 * v37 + 2];
    }

    else
    {
      v35 = sub_141BE00(*(a3 + 232));
      v36 = sub_19593CC(a3 + 232, v35);
      v37 = *(a3 + 240) - 1;
    }

    *(v36 + 40) |= 0x4000u;
    *(v36 + 160) = v37;
    sub_F20EB8(v34, a1 + 112, *a1, v36);
    v34 += 456;
  }

  v39 = *(a1 + 296);
  for (m = *(a1 + 304); v39 != m; v39 += 496)
  {
    sub_F1F8EC(a1, v39, a3);
  }

  if (*(a1 + 106))
  {
    v42 = *(a1 + 360);
    v41 = *(a1 + 368);
    while (v42 != v41)
    {
      v45 = *(a3 + 368);
      if (v45 && (v46 = *(a3 + 360), v46 < *v45))
      {
        *(a3 + 360) = v46 + 1;
        v44 = *&v45[2 * v46 + 2];
      }

      else
      {
        v43 = sub_141C160(*(a3 + 352));
        v44 = sub_19593CC(a3 + 352, v43);
      }

      sub_F23B10(v42, v44);
      v42 += 72;
    }
  }
}

void sub_F1C730(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    *(a3 + 40) |= 0x100u;
    v8 = *(a3 + 440);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_175D430(v10);
      *(a3 + 440) = v8;
    }

    v11 = *v5 == 1;
    v12 = *(v8 + 48);
    if (v12 == *(v8 + 52))
    {
      v7 = v12 + 1;
      sub_1958E5C((v8 + 48), v12 + 1);
      *(*(v8 + 56) + 4 * v12) = v11;
    }

    else
    {
      *(*(v8 + 56) + 4 * v12) = v11;
      v7 = v12 + 1;
    }

    *(v8 + 48) = v7;
    ++v5;
  }

  if (a2[3] == a2[4])
  {
    goto LABEL_27;
  }

  *(a3 + 40) |= 0x100u;
  v13 = *(a3 + 440);
  if (v13)
  {
    *(v13 + 16) |= 1u;
    v14 = *(v13 + 64);
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = *(a3 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v13 = sub_175D430(v32);
    *(a3 + 440) = v13;
    *(v13 + 16) |= 1u;
    v14 = *(v13 + 64);
    if (v14)
    {
LABEL_14:
      v15 = *(a2 + 12);
      if (v15 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v33 = *(v13 + 8);
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  v14 = sub_14BEA9C(v34);
  *(v13 + 64) = v14;
  v15 = *(a2 + 12);
  if (v15 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

LABEL_15:
  *(v14 + 16) |= 1u;
  *(v14 + 48) = v15;
LABEL_16:
  v16 = a2[3];
  v17 = a2[4];
  while (v16 != v17)
  {
    v20 = *(v14 + 40);
    if (v20 && (v21 = *(v14 + 32), v21 < *v20))
    {
      *(v14 + 32) = v21 + 1;
      v22 = *&v20[2 * v21 + 2];
    }

    else
    {
      v23 = sub_14BEA20(*(v14 + 24));
      v22 = sub_19593CC(v14 + 24, v23);
    }

    v24 = *(v22 + 16);
    *(v22 + 32) = *v16;
    *(v22 + 16) = v24 | 3;
    v19 = *(v22 + 24);
    if (!v19)
    {
      v25 = *(v22 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_14BAE64(v26);
      v19 = v18;
      *(v22 + 24) = v18;
    }

    sub_64D110(v16 + 1, v19);
    v16 += 168;
  }

LABEL_27:
  v27 = *(a2 + 56);
  if (v27 != byte_2781468)
  {
    *(a3 + 40) |= 0x100u;
    v28 = *(a3 + 440);
    if (!v28)
    {
      v29 = *(a3 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_175D430(v30);
      *(a3 + 440) = v28;
      LOBYTE(v27) = *(a2 + 56);
    }

    *(v28 + 16) |= 2u;
    *(v28 + 72) = v27;
  }
}

void sub_F1C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = a1;
  v10 = *(a2 + 56);
  if (v10 != -1)
  {
    *(a4 + 40) |= 4u;
    *(a4 + 156) = v10;
  }

  v11 = *(a2 + 8);
  for (i = *(a2 + 16); v11 != i; v11 = (v11 + 5704))
  {
    while (1)
    {
      v13 = *(a5 + 344);
      if (v13 && (v14 = *(a5 + 336), v14 < *v13))
      {
        *(a5 + 336) = v14 + 1;
        v15 = *&v13[2 * v14 + 2];
      }

      else
      {
        v16 = sub_1436258(*(a5 + 328));
        v15 = sub_19593CC(a5 + 328, v16);
      }

      sub_F1CEA4(v9, v11, a3, v15, a6);
      v17 = *(a5 + 336) - 1;
      v18 = *(a4 + 48);
      if (v18 == *(a4 + 52))
      {
        break;
      }

      *(*(a4 + 56) + 4 * v18) = v17;
      *(a4 + 48) = v18 + 1;
      v11 = (v11 + 5704);
      if (v11 == i)
      {
        goto LABEL_12;
      }
    }

    sub_1958E5C((a4 + 48), v18 + 1);
    *(*(a4 + 56) + 4 * v18) = v17;
    *(a4 + 48) = v18 + 1;
  }

LABEL_12:
  v19 = *(a2 + 55);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 40);
  }

  if (v19)
  {
    *(a4 + 40) |= 1u;
    v20 = *(a4 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    a1 = sub_194EA1C((a4 + 144), (a2 + 32), v21);
  }

  v22 = *(a2 + 64);
  if (v22 != -1)
  {
    v23 = *(a4 + 72);
    if (v23 == *(a4 + 76))
    {
      v24 = v23 + 1;
      sub_1958E5C((a4 + 72), v23 + 1);
      *(*(a4 + 80) + 4 * v23) = v22;
    }

    else
    {
      *(*(a4 + 80) + 4 * v23) = v22;
      v24 = v23 + 1;
    }

    *(a4 + 72) = v24;
  }

  v25 = *(a2 + 72);
  if (v25 != -1)
  {
    v26 = *(a4 + 96);
    if (v26 == *(a4 + 100))
    {
      v27 = v26 + 1;
      sub_1958E5C((a4 + 96), v26 + 1);
      *(*(a4 + 104) + 4 * v26) = v25;
    }

    else
    {
      *(*(a4 + 104) + 4 * v26) = v25;
      v27 = v26 + 1;
    }

    *(a4 + 96) = v27;
  }

  v29 = *(a2 + 80);
  v28 = *(a2 + 88);
  while (v29 != v28)
  {
    v32 = *(a4 + 136);
    if (v32 && (v33 = *(a4 + 128), v33 < *v32))
    {
      *(a4 + 128) = v33 + 1;
      v31 = *&v32[2 * v33 + 2];
    }

    else
    {
      v30 = sub_1435984(*(a4 + 120));
      a1 = sub_19593CC(a4 + 120, v30);
      v31 = a1;
    }

    sub_F1DCDC(a1, v29, v31);
    v29 += 72;
  }
}

void sub_F1CC24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v33 = a2[1];
  if (*a2 != v33)
  {
    v4 = a3;
    do
    {
      v5 = *(v4 + 88);
      if (v5 && (v6 = *(v4 + 80), v6 < *v5))
      {
        *(v4 + 80) = v6 + 1;
        v7 = *&v5[2 * v6 + 2];
      }

      else
      {
        v8 = sub_1435618(*(v4 + 72));
        v7 = sub_19593CC(v4 + 72, v8);
      }

      v9 = *v3;
      v10 = v3[1];
      while (v9 != v10)
      {
        v11 = *(v7 + 48);
        if (!v11 || (v12 = *(v7 + 40), v12 >= *v11))
        {
          v16 = sub_1435574(*(v7 + 32));
          v13 = sub_19593CC(v7 + 32, v16);
          v14 = *v9;
          v15 = v9[1];
          if (*v9 == v15)
          {
            goto LABEL_9;
          }

LABEL_20:
          while (2)
          {
            while (2)
            {
              v19 = *(v14 + 40);
              if (v19 == 1)
              {
                v23 = *(v13 + 48);
                if (v23 && (v24 = *(v13 + 40), v24 < *v23))
                {
                  *(v13 + 40) = v24 + 1;
                  v25 = *&v23[2 * v24 + 2];
                  *(v25 + 16) |= 1u;
                  v18 = *(v25 + 24);
                  if (!v18)
                  {
LABEL_30:
                    v27 = *(v25 + 8);
                    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v27)
                    {
                      v28 = *v28;
                    }

                    sub_14BAE64(v28);
                    v18 = v17;
                    *(v25 + 24) = v17;
                  }
                }

                else
                {
                  v26 = sub_14354F8(*(v13 + 32));
                  v25 = sub_19593CC(v13 + 32, v26);
                  *(v25 + 16) |= 1u;
                  v18 = *(v25 + 24);
                  if (!v18)
                  {
                    goto LABEL_30;
                  }
                }

                sub_64D110(v14, v18);
LABEL_19:
                v14 += 21;
                if (v14 == v15)
                {
                  goto LABEL_9;
                }

                continue;
              }

              break;
            }

            if (v19)
            {
              goto LABEL_19;
            }

            v20 = *v14;
            v21 = *(v13 + 16);
            if (v21 == *(v13 + 20))
            {
              sub_1958E5C((v13 + 16), v21 + 1);
              *(*(v13 + 24) + 4 * v21) = v20;
              *(v13 + 16) = v21 + 1;
              v22 = *(v13 + 48);
              if (!v22)
              {
LABEL_35:
                v31 = sub_14354F8(*(v13 + 32));
                v30 = sub_19593CC(v13 + 32, v31);
                goto LABEL_36;
              }
            }

            else
            {
              *(*(v13 + 24) + 4 * v21) = v20;
              *(v13 + 16) = v21 + 1;
              v22 = *(v13 + 48);
              if (!v22)
              {
                goto LABEL_35;
              }
            }

            v29 = *(v13 + 40);
            if (v29 >= *v22)
            {
              goto LABEL_35;
            }

            *(v13 + 40) = v29 + 1;
            v30 = *&v22[2 * v29 + 2];
LABEL_36:
            *(v30 + 16) |= 2u;
            *(v30 + 32) = v20;
            v14 += 21;
            if (v14 == v15)
            {
              goto LABEL_9;
            }

            continue;
          }
        }

        *(v7 + 40) = v12 + 1;
        v13 = *&v11[2 * v12 + 2];
        v14 = *v9;
        v15 = v9[1];
        if (*v9 != v15)
        {
          goto LABEL_20;
        }

LABEL_9:
        v9 += 3;
      }

      v3 += 3;
      v4 = a3;
    }

    while (v3 != v33);
  }
}