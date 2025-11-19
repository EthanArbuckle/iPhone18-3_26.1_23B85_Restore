uint64_t **sub_6CEC60@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_6CEDAC(a1, a3, a2);
  result = sub_6D0454((a1 + 24), a3);
  if (!result)
  {
    goto LABEL_22;
  }

  v9 = result[6];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a2;
    if (v9 <= a2)
    {
      v11 = a2 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a2;
  }

  v12 = result[5][v11];
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_22:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = v9 - 1;
    while (1)
    {
      v15 = v13[1];
      if (v15 == a2)
      {
        if (*(v13 + 4) == a2)
        {
          goto LABEL_24;
        }
      }

      else if ((v15 & v14) != v11)
      {
        goto LABEL_22;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == a2)
    {
      break;
    }

    if (v16 >= v9)
    {
      v16 %= v9;
    }

    if (v16 != v11)
    {
      goto LABEL_22;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (*(v13 + 4) != a2)
  {
    goto LABEL_17;
  }

LABEL_24:
  v17 = v13[4];
  *a4 = v13[3];
  a4[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t **sub_6CEDAC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = sub_6D0454((a1 + 24), a2);
  if (!result)
  {
    goto LABEL_22;
  }

  v7 = result[6];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = a3;
    if (v7 <= a3)
    {
      v9 = a3 % v7;
    }
  }

  else
  {
    v9 = (v7 - 1) & a3;
  }

  v10 = result[5][v9];
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    std::mutex::lock((a1 + 96));
    if (*(a2 + 23) < 0)
    {
      sub_325C(v16, *a2, *(a2 + 8));
    }

    else
    {
      *v16 = *a2;
      v17 = *(a2 + 16);
    }

    sub_5275EC(&v15, v16, 1uLL);
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    v12 = v7 - 1;
    while (1)
    {
      v14 = v11[1];
      if (v14 == a3)
      {
        if (*(v11 + 4) == a3)
        {
          return result;
        }
      }

      else if ((v14 & v12) != v9)
      {
        goto LABEL_22;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == a3)
    {
      break;
    }

    if (v13 >= v7)
    {
      v13 %= v7;
    }

    if (v13 != v9)
    {
      goto LABEL_22;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (*(v11 + 4) != a3)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_6CEFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A104(&a12);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::mutex::unlock((v20 + 96));
  _Unwind_Resume(a1);
}

void sub_6CF030(int8x8_t *a1, const void ***a2, int **a3)
{
  v3 = *a2;
  v38 = a2[1];
  if (*a2 == v38)
  {
    return;
  }

  while (2)
  {
    while (2)
    {
      sub_6CFDF8(v3, v47);
      __p[0] = v3;
      sub_6D060C(&a1[3], v3);
      v6 = *a3;
      v5 = a3[1];
      v40 = v5;
LABEL_7:
      if (v6 != v5)
      {
        v7 = *v6;
        v46 = *v6;
        v8 = *(v3 + 23);
        if (v8 >= 0)
        {
          v9 = v3;
        }

        else
        {
          v9 = *v3;
        }

        if (v8 >= 0)
        {
          v10 = *(v3 + 23);
        }

        else
        {
          v10 = v3[1];
        }

        v11 = sub_AAD8(__p, v9, v10);
        v12 = a1[4];
        if (!*&v12)
        {
          goto LABEL_72;
        }

        v13 = v11;
        v14 = vcnt_s8(v12);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v11;
          if (v11 >= *&v12)
          {
            v15 = v11 % *&v12;
          }
        }

        else
        {
          v15 = (*&v12 - 1) & v11;
        }

        v16 = *(*&a1[3] + 8 * v15);
        if (!v16 || (v17 = *v16) == 0)
        {
LABEL_72:
          if (v46 <= 2)
          {
            switch(v46)
            {
              case 0:
                HIBYTE(v45) = 8;
                strcpy(v44, "Advisory");
                goto LABEL_88;
              case 1:
                HIBYTE(v45) = 5;
                strcpy(v44, "Alert");
                goto LABEL_88;
              case 2:
                HIBYTE(v45) = 9;
                strcpy(v44, "Dodgeball");
                goto LABEL_88;
            }
          }

          else
          {
            if (v46 <= 4)
            {
              if (v46 == 3)
              {
                HIBYTE(v45) = 14;
                strcpy(v44, "DrivingWalking");
              }

              else
              {
                HIBYTE(v45) = 12;
                strcpy(v44, "RouteOptions");
              }

LABEL_88:
              *__p = 0u;
              *v42 = 0u;
              v43 = 1065353216;
              sub_6D038(&a1[8], v47, v44, __p);
              operator new();
            }

            if (v46 == 5)
            {
              HIBYTE(v45) = 7;
              strcpy(v44, "Transit");
              goto LABEL_88;
            }

            if (v46 == 6)
            {
              HIBYTE(v45) = 6;
              strcpy(v44, "Hiking");
              goto LABEL_88;
            }
          }

          v44[0] = 0;
          v44[1] = 0;
          v45 = 0;
          goto LABEL_88;
        }

        v18 = *(v3 + 23);
        if (v18 >= 0)
        {
          v19 = *(v3 + 23);
        }

        else
        {
          v19 = v3[1];
        }

        if (v18 >= 0)
        {
          v20 = v3;
        }

        else
        {
          v20 = *v3;
        }

        if (v14.u32[0] < 2uLL)
        {
          v21 = *&v12 - 1;
          while (1)
          {
            v26 = v17[1];
            if (*&v26 == v13)
            {
              v27 = v17[4].u8[7];
              v28 = v27.i8[0];
              if (v27.i8[0] < 0)
              {
                v27 = v17[3];
              }

              if (*&v27 == v19)
              {
                v29 = v28 >= 0 ? &v17[2] : *&v17[2];
                if (!memcmp(v29, v20, v19))
                {
                  goto LABEL_52;
                }
              }
            }

            else if ((*&v26 & v21) != v15)
            {
              goto LABEL_72;
            }

            v17 = *v17;
            if (!v17)
            {
              goto LABEL_72;
            }
          }
        }

        while (1)
        {
          v22 = v17[1];
          if (*&v22 == v13)
          {
            v23 = v17[4].u8[7];
            v24 = v23.i8[0];
            if (v23.i8[0] < 0)
            {
              v23 = v17[3];
            }

            if (*&v23 == v19)
            {
              v25 = v24 >= 0 ? &v17[2] : *&v17[2];
              if (!memcmp(v25, v20, v19))
              {
LABEL_52:
                v30 = v17[6];
                if (!*&v30)
                {
                  goto LABEL_72;
                }

                v31 = vcnt_s8(v30);
                v31.i16[0] = vaddlv_u8(v31);
                if (v31.u32[0] > 1uLL)
                {
                  v32 = v7;
                  if (*&v30 <= v7)
                  {
                    v32 = v7 % v30.i32[0];
                  }
                }

                else
                {
                  v32 = (v30.i32[0] - 1) & v7;
                }

                v33 = *(*&v17[5] + 8 * v32);
                if (!v33)
                {
                  goto LABEL_72;
                }

                v34 = *v33;
                if (!v34)
                {
                  goto LABEL_72;
                }

                if (v31.u32[0] < 2uLL)
                {
                  v35 = *&v30 - 1;
                  while (1)
                  {
                    v37 = v34[1];
                    if (v37 == v7)
                    {
                      if (*(v34 + 4) == v7)
                      {
                        goto LABEL_6;
                      }
                    }

                    else if ((v37 & v35) != v32)
                    {
                      goto LABEL_72;
                    }

                    v34 = *v34;
                    if (!v34)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                while (2)
                {
                  v36 = v34[1];
                  if (v36 != v7)
                  {
                    if (v36 >= *&v30)
                    {
                      v36 %= *&v30;
                    }

                    if (v36 != v32)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_62;
                  }

                  if (*(v34 + 4) != v7)
                  {
LABEL_62:
                    v34 = *v34;
                    if (!v34)
                    {
                      goto LABEL_72;
                    }

                    continue;
                  }

                  break;
                }

LABEL_6:
                ++v6;
                v5 = v40;
                goto LABEL_7;
              }
            }
          }

          else
          {
            if (*&v22 >= *&v12)
            {
              *&v22 %= *&v12;
            }

            if (*&v22 != v15)
            {
              goto LABEL_72;
            }
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_72;
          }
        }
      }

      if (v48 < 0)
      {
        operator delete(v47[0]);
        v3 += 3;
        if (v3 == v38)
        {
          return;
        }

        continue;
      }

      break;
    }

    v3 += 3;
    if (v3 != v38)
    {
      continue;
    }

    break;
  }
}

void sub_6CF6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if ((a33 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_6CF714(int8x8_t *a1, const void ***a2, uint64_t a3)
{
  v3 = *a2;
  v37 = a2[1];
  if (*a2 != v37)
  {
    while (1)
    {
      sub_6CFDF8(v3, v45);
      __p[0] = v3;
      sub_6D060C(&a1[3], v3);
      v5 = 0;
      while (2)
      {
        v6 = *(a3 + v5);
        v44 = *(a3 + v5);
        v7 = *(v3 + 23);
        if (v7 >= 0)
        {
          v8 = v3;
        }

        else
        {
          v8 = *v3;
        }

        if (v7 >= 0)
        {
          v9 = *(v3 + 23);
        }

        else
        {
          v9 = v3[1];
        }

        v10 = sub_AAD8(__p, v8, v9);
        v11 = a1[4];
        if (!*&v11)
        {
          goto LABEL_71;
        }

        v12 = v10;
        v13 = vcnt_s8(v11);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v10;
          if (v10 >= *&v11)
          {
            v14 = v10 % *&v11;
          }
        }

        else
        {
          v14 = (*&v11 - 1) & v10;
        }

        v15 = *(*&a1[3] + 8 * v14);
        if (!v15 || (v16 = *v15) == 0)
        {
LABEL_71:
          if (v44 <= 2)
          {
            switch(v44)
            {
              case 0:
                HIBYTE(v43) = 8;
                strcpy(v42, "Advisory");
                goto LABEL_87;
              case 1:
                HIBYTE(v43) = 5;
                strcpy(v42, "Alert");
                goto LABEL_87;
              case 2:
                HIBYTE(v43) = 9;
                strcpy(v42, "Dodgeball");
                goto LABEL_87;
            }
          }

          else
          {
            if (v44 <= 4)
            {
              if (v44 == 3)
              {
                HIBYTE(v43) = 14;
                strcpy(v42, "DrivingWalking");
              }

              else
              {
                HIBYTE(v43) = 12;
                strcpy(v42, "RouteOptions");
              }

LABEL_87:
              *__p = 0u;
              v40 = 0u;
              v41 = 1065353216;
              sub_6D038(&a1[8], v45, v42, __p);
              operator new();
            }

            if (v44 == 5)
            {
              HIBYTE(v43) = 7;
              strcpy(v42, "Transit");
              goto LABEL_87;
            }

            if (v44 == 6)
            {
              HIBYTE(v43) = 6;
              strcpy(v42, "Hiking");
              goto LABEL_87;
            }
          }

          v42[0] = 0;
          v42[1] = 0;
          v43 = 0;
          goto LABEL_87;
        }

        v17 = *(v3 + 23);
        if (v17 >= 0)
        {
          v18 = *(v3 + 23);
        }

        else
        {
          v18 = v3[1];
        }

        if (v17 >= 0)
        {
          v19 = v3;
        }

        else
        {
          v19 = *v3;
        }

        if (v13.u32[0] < 2uLL)
        {
          v20 = *&v11 - 1;
          while (1)
          {
            v25 = v16[1];
            if (*&v25 == v12)
            {
              v26 = v16[4].u8[7];
              v27 = v26.i8[0];
              if (v26.i8[0] < 0)
              {
                v26 = v16[3];
              }

              if (*&v26 == v18)
              {
                v28 = v27 >= 0 ? &v16[2] : *&v16[2];
                if (!memcmp(v28, v19, v18))
                {
                  goto LABEL_51;
                }
              }
            }

            else if ((*&v25 & v20) != v14)
            {
              goto LABEL_71;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_71;
            }
          }
        }

        while (1)
        {
          v21 = v16[1];
          if (*&v21 == v12)
          {
            break;
          }

          if (*&v21 >= *&v11)
          {
            *&v21 %= *&v11;
          }

          if (*&v21 != v14)
          {
            goto LABEL_71;
          }

LABEL_29:
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_71;
          }
        }

        v22 = v16[4].u8[7];
        v23 = v22.i8[0];
        if (v22.i8[0] < 0)
        {
          v22 = v16[3];
        }

        if (*&v22 != v18)
        {
          goto LABEL_29;
        }

        v24 = v23 >= 0 ? &v16[2] : *&v16[2];
        if (memcmp(v24, v19, v18))
        {
          goto LABEL_29;
        }

LABEL_51:
        v29 = v16[6];
        if (!*&v29)
        {
          goto LABEL_71;
        }

        v30 = vcnt_s8(v29);
        v30.i16[0] = vaddlv_u8(v30);
        if (v30.u32[0] > 1uLL)
        {
          v31 = v6;
          if (*&v29 <= v6)
          {
            v31 = v6 % v29.i32[0];
          }
        }

        else
        {
          v31 = (v29.i32[0] - 1) & v6;
        }

        v32 = *(*&v16[5] + 8 * v31);
        if (!v32)
        {
          goto LABEL_71;
        }

        v33 = *v32;
        if (!v33)
        {
          goto LABEL_71;
        }

        if (v30.u32[0] < 2uLL)
        {
          v34 = *&v29 - 1;
          while (1)
          {
            v36 = v33[1];
            if (v36 == v6)
            {
              if (*(v33 + 4) == v6)
              {
                goto LABEL_6;
              }
            }

            else if ((v36 & v34) != v31)
            {
              goto LABEL_71;
            }

            v33 = *v33;
            if (!v33)
            {
              goto LABEL_71;
            }
          }
        }

        while (2)
        {
          v35 = v33[1];
          if (v35 != v6)
          {
            if (v35 >= *&v29)
            {
              v35 %= *&v29;
            }

            if (v35 != v31)
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          }

          if (*(v33 + 4) != v6)
          {
LABEL_61:
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_71;
            }

            continue;
          }

          break;
        }

LABEL_6:
        v5 += 4;
        if (v5 != 28)
        {
          continue;
        }

        break;
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
        v3 += 3;
        if (v3 == v37)
        {
          return;
        }
      }

      else
      {
        v3 += 3;
        if (v3 == v37)
        {
          return;
        }
      }
    }
  }
}

void sub_6CFD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if ((a33 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

char *sub_6CFDF8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_325C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 16);
  }

  v3 = a2[23];
  v4 = v3;
  v5 = *a2;
  v6 = *(a2 + 1);
  if ((v3 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v3 & 0x80u) == 0)
  {
    v8 = a2[23];
  }

  else
  {
    v8 = *(a2 + 1);
  }

  if (!v8)
  {
    goto LABEL_72;
  }

  v9 = v7;
  if (v8 < 8)
  {
LABEL_98:
    v27 = &v7[v8];
    do
    {
      if (*v9 == 45)
      {
        *v9 = 95;
      }

      ++v9;
    }

    while (v9 != v27);
    goto LABEL_71;
  }

  if (v8 < 0x10)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF0;
  v14 = v7 + 7;
  v15.i64[0] = 0x2D2D2D2D2D2D2D2DLL;
  v15.i64[1] = 0x2D2D2D2D2D2D2D2DLL;
  v16 = v8 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v17 = vceqq_s8(*(v14 - 7), v15);
    if (v17.i8[0])
    {
      *(v14 - 7) = 95;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_39:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_56;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_39;
    }

    *(v14 - 6) = 95;
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_40:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v14 - 5) = 95;
    if ((v17.i8[3] & 1) == 0)
    {
LABEL_41:
      if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v14 - 4) = 95;
    if ((v17.i8[4] & 1) == 0)
    {
LABEL_42:
      if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v14 - 3) = 95;
    if ((v17.i8[5] & 1) == 0)
    {
LABEL_43:
      if ((v17.i8[6] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(v14 - 2) = 95;
    if ((v17.i8[6] & 1) == 0)
    {
LABEL_44:
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    *(v14 - 1) = 95;
    if ((v17.i8[7] & 1) == 0)
    {
LABEL_45:
      if ((v17.i8[8] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    *v14 = 95;
    if ((v17.i8[8] & 1) == 0)
    {
LABEL_46:
      if ((v17.i8[9] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v14[1] = 95;
    if ((v17.i8[9] & 1) == 0)
    {
LABEL_47:
      if ((v17.i8[10] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v14[2] = 95;
    if ((v17.i8[10] & 1) == 0)
    {
LABEL_48:
      if ((v17.i8[11] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    v14[3] = 95;
    if ((v17.i8[11] & 1) == 0)
    {
LABEL_49:
      if ((v17.i8[12] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    v14[4] = 95;
    if ((v17.i8[12] & 1) == 0)
    {
LABEL_50:
      if ((v17.i8[13] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    v14[5] = 95;
    if ((v17.i8[13] & 1) == 0)
    {
LABEL_51:
      if (v17.i8[14])
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    }

LABEL_67:
    v14[6] = 95;
    if (v17.i8[14])
    {
LABEL_68:
      v14[7] = 95;
      if ((v17.i8[15] & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_69;
    }

LABEL_52:
    if ((v17.i8[15] & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_69:
    v14[8] = 95;
LABEL_36:
    v14 += 16;
    v16 -= 16;
  }

  while (v16);
  if (v8 == v10)
  {
    goto LABEL_71;
  }

  if ((v8 & 8) == 0)
  {
    v9 = &v7[v10];
    goto LABEL_98;
  }

LABEL_14:
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFF8];
  v11 = v10 - (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = &v7[v10 + 3];
  while (2)
  {
    v13 = vceq_s8(*(v12 - 3), 0x2D2D2D2D2D2D2D2DLL);
    if (v13.i8[0])
    {
      *(v12 - 3) = 95;
      if (v13.i8[1])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v13.i8[2] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      *(v12 - 1) = 95;
      if (v13.i8[3])
      {
        goto LABEL_28;
      }

LABEL_20:
      if ((v13.i8[4] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_29:
      v12[1] = 95;
      if (v13.i8[5])
      {
        goto LABEL_30;
      }

LABEL_22:
      if ((v13.i8[6] & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      v12[3] = 95;
      if (v13.i8[7])
      {
LABEL_32:
        v12[4] = 95;
      }
    }

    else
    {
      if ((v13.i8[1] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *(v12 - 2) = 95;
      if (v13.i8[2])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v13.i8[3] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      *v12 = 95;
      if (v13.i8[4])
      {
        goto LABEL_29;
      }

LABEL_21:
      if ((v13.i8[5] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      v12[2] = 95;
      if (v13.i8[6])
      {
        goto LABEL_31;
      }

LABEL_23:
      if (v13.i8[7])
      {
        goto LABEL_32;
      }
    }

    v12 += 8;
    v11 += 8;
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v8 != (v8 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_98;
  }

LABEL_71:
  v3 = a2[23];
  v5 = *a2;
  v6 = *(a2 + 1);
  v4 = a2[23];
LABEL_72:
  if (v4 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = v5;
  }

  if (v4 >= 0)
  {
    v19 = v3;
  }

  else
  {
    v19 = v6;
  }

  v20 = &v18[v19];
  result = memchr(v18, 95, v19);
  if (result)
  {
    v22 = result;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  if (v4 < 0)
  {
    if (v22 != &v5[v6] && v23 != &v5[v6])
    {
LABEL_93:
      for (i = &v5[v6]; v23 != i; ++v23)
      {
        result = __toupper(*v23);
        *v23 = result;
      }
    }
  }

  else
  {
    v24 = v22 == &a2[v3] || v23 == &a2[v3];
    v5 = a2;
    v6 = v3;
    if (!v24)
    {
      goto LABEL_93;
    }
  }

  return result;
}

void sub_6D0198(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_6D01B4(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_6D021C(a1, (v2 + 2));
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

void sub_6D021C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  while (v3)
  {
    v4 = v3;
    v3 = *v3;
    v5 = v4[4];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = v4;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = v6;
    }

    operator delete(v4);
  }

  v7 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_6D031C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C2F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_6D0370(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    v6 = *(a1 + 24);

    operator delete(v6);
  }
}

uint64_t **sub_6D0454(void *a1, uint64_t a2)
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
        if (v20 == v8)
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
      if (v16 == v8)
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

uint64_t **sub_6D060C(void *a1, uint64_t a2)
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

void sub_6D0A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6D0A4C(va);
  _Unwind_Resume(a1);
}

void sub_6D0A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6D0A4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6D0A4C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_6D021C(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_6D0AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_6D0B14(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_11:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_11;
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

uint64_t *sub_6D0BB8(void *a1, unsigned int *a2)
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

void sub_6D0EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_32A414(va);
  _Unwind_Resume(a1);
}

void sub_6D0F18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_6D0F6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {

    operator delete(v5);
  }
}

uint64_t **sub_6D105C(void *a1, uint64_t a2)
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

void sub_6D1474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6D14A0(va);
  _Unwind_Resume(a1);
}

void sub_6D1488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6D14A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_6D14A0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_6D15AC()
{
  v2 = v0[1];
  v3 = (v2 - *v0) / 24;
  *(v1 - 96) = *v0;
  *(v1 - 88) = v2;
  *(v1 - 80) = 0;
  *(v1 - 72) = v3;
}

void sub_6D1638()
{

  std::locale::~locale(v0 + 2);
}

void sub_6D1714()
{

  operator new();
}

uint64_t sub_6D174C(uint64_t result)
{
  *(v3 - 88) = v1;
  *(v3 - 80) = v2 | 0x8000000000000000;
  *(v3 - 96) = result;
  return result;
}

void sub_6D1760()
{

  sub_6CE738();
}

void sub_6D1C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6D1C44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  strcpy(v6, "ManeuverArtworkBuilder");
  v6[23] = 22;
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D60C(v4, a3, 0, &v7);
  sub_6D1780();
}

void sub_6D1DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_6BB60(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_6D1DE0@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1[5] == 1 && *(a2 + 632) != -1)
  {
    v8 = 6;
LABEL_25:
    sub_587314(v8, a3);
    return result;
  }

  if (*a1 == 1 && *(a2 + 624) != -1 && *(a2 + 680) == 1)
  {
    v8 = 1;
    goto LABEL_25;
  }

  v5 = *(a2 + 624);
  if (a1[1] == 1 && v5 != -1 && *(a2 + 680) == 2)
  {
    v8 = 2;
    goto LABEL_25;
  }

  if (a1[2] == 1 && v5 != -1)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (a1[6] == 1 && *(a2 + 640) != -1 && *(a2 + 680) == 1)
  {
    v8 = 8;
    goto LABEL_25;
  }

  v10 = *(a2 + 640);
  if (a1[7] == 1 && v10 != -1 && *(a2 + 680) == 2)
  {
    v8 = 9;
    goto LABEL_25;
  }

  if (a1[8] == 1 && v10 != -1)
  {
    v8 = 7;
    goto LABEL_25;
  }

  if (a1[3] == 1 && (*(a2 + 712) != *(a2 + 720) || *(a2 + 705) == 1))
  {
    v8 = 4;
    goto LABEL_25;
  }

  if (a1[4] == 1 && *(a2 + 704) == 1)
  {
    v8 = 3;
    goto LABEL_25;
  }

  if (a1[9] == 1)
  {
    v11 = *(a2 + 160);
    if (v11 != 92 && (v11 - 94) >= 0xFFFFFFFD)
    {
      v8 = 10;
      goto LABEL_25;
    }
  }

  if (a1[10] == 1)
  {
    v12 = *(a2 + 160);
    if (v12 == 96 || v12 == 94)
    {
      v8 = 11;
      goto LABEL_25;
    }
  }

  result = 0.0;
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
  return result;
}

double sub_6D1FBC@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1[5] == 1 && *(a2 + 632) != -1)
  {
    v8 = 6;
LABEL_25:
    sub_587314(v8, a3);
    return result;
  }

  if (*a1 == 1 && *(a2 + 624) != -1 && *(a2 + 680) == 1)
  {
    v8 = 1;
    goto LABEL_25;
  }

  v5 = *(a2 + 624);
  if (a1[1] == 1 && v5 != -1 && *(a2 + 680) == 2)
  {
    v8 = 2;
    goto LABEL_25;
  }

  if (a1[2] == 1 && v5 != -1)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (a1[6] == 1 && *(a2 + 640) != -1 && *(a2 + 680) == 1)
  {
    v8 = 8;
    goto LABEL_25;
  }

  v10 = *(a2 + 640);
  if (a1[7] == 1 && v10 != -1 && *(a2 + 680) == 2)
  {
    v8 = 9;
    goto LABEL_25;
  }

  if (a1[8] == 1 && v10 != -1)
  {
    v8 = 7;
    goto LABEL_25;
  }

  if (a1[3] == 1 && (*(a2 + 712) != *(a2 + 720) || *(a2 + 705) == 1))
  {
    v8 = 4;
    goto LABEL_25;
  }

  if (a1[4] == 1 && *(a2 + 784) == 1)
  {
    v8 = 3;
    goto LABEL_25;
  }

  if (a1[9] == 1)
  {
    v11 = *(a2 + 160);
    if (v11 != 92 && (v11 - 94) >= 0xFFFFFFFD)
    {
      v8 = 10;
      goto LABEL_25;
    }
  }

  if (a1[10] == 1)
  {
    v12 = *(a2 + 160);
    if (v12 == 96 || v12 == 94)
    {
      v8 = 11;
      goto LABEL_25;
    }
  }

  result = 0.0;
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
  return result;
}

void sub_6D2198(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_6D220C(a1, a2);
  sub_6D2338(a1, a2);
  if (a4)
  {

    sub_6D248C(a1, a2, a3);
  }
}

void sub_6D220C(_BYTE *a1, uint64_t a2)
{
  v2.n128_f64[0] = sub_6D1DE0(a1, a2, v5);
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      if (v5[0] == -1)
      {
        goto LABEL_16;
      }
    }

    else if (v8 != 2 || v5[1] == -1 && v5[0] == -1 && v6 == v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_682248();
  }

  if (v8 == 3 || v8 == 4)
  {
    v3 = HIBYTE(v7);
    if (v7 < 0)
    {
      v3 = v6;
    }

    if (v3)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((v12 & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v9);
    v4 = v8;
    if (v8 == -1)
    {
      return;
    }

    goto LABEL_22;
  }

  operator delete(__p);
  if (v10 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v4 = v8;
  if (v8 != -1)
  {
LABEL_22:
    (off_266C420[v4])(&v13, v5, v2);
  }
}

void sub_6D2320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_6D2338(_BYTE *a1, uint64_t a2)
{
  v3.n128_f64[0] = sub_6D1FBC(a1, a2, v8);
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      if (v8[0] == -1)
      {
        goto LABEL_20;
      }
    }

    else if (v11 != 2 || v8[1] == -1 && v8[0] == -1 && v9 == v10)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v11 == 3 || v11 == 4)
  {
    v4 = HIBYTE(v10);
    if (v10 < 0)
    {
      v4 = v9;
    }

    if (v4)
    {
LABEL_15:
      v5 = *(a2 + 1888);
      v6 = *(a2 + 1896);
      while (v5 != v6)
      {
        if (!sub_6D25E4(v5))
        {
          sub_682248();
        }

        v5 += 1120;
      }
    }
  }

LABEL_20:
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v12);
    v7 = v11;
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_26;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v7 = v11;
  if (v11 != -1)
  {
LABEL_26:
    (off_266C420[v7])(&v16, v8, v3);
  }
}

void sub_6D2478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_6D248C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4.n128_f64[0] = sub_6D1FBC(a1, a3, v9);
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      if (v9[0] == -1)
      {
        goto LABEL_20;
      }
    }

    else if (v12 != 2 || v9[1] == -1 && v9[0] == -1 && v10 == v11)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v12 == 3 || v12 == 4)
  {
    v5 = HIBYTE(v11);
    if (v11 < 0)
    {
      v5 = v10;
    }

    if (v5)
    {
LABEL_15:
      v6 = *(a2 + 1888);
      v7 = *(a2 + 1896);
      while (v6 != v7)
      {
        if (sub_6D2638(v6))
        {
          sub_682248();
        }

        v6 += 1120;
      }
    }
  }

LABEL_20:
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v13);
    v8 = v12;
    if (v12 == -1)
    {
      return;
    }

    goto LABEL_26;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v8 = v12;
  if (v12 != -1)
  {
LABEL_26:
    (off_266C420[v8])(&v17, v9, v4);
  }
}

void sub_6D25D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_6D2670()
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
  xmmword_27A4000 = 0u;
  *algn_27A4010 = 0u;
  dword_27A4020 = 1065353216;
  sub_3A9A34(&xmmword_27A4000, v0);
  sub_3A9A34(&xmmword_27A4000, v3);
  sub_3A9A34(&xmmword_27A4000, __p);
  sub_3A9A34(&xmmword_27A4000, v9);
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
    qword_27A3FD8 = 0;
    qword_27A3FE0 = 0;
    qword_27A3FD0 = 0;
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

void sub_6D28B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A3FE8)
  {
    qword_27A3FF0 = qword_27A3FE8;
    operator delete(qword_27A3FE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_6D2B10(_Unwind_Exception *a1)
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

void *sub_6D2BBC(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_6D2C20(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_5135D0((v1 + 1312));
    operator delete();
  }

  return result;
}

void *sub_6D2C74(void *a1)
{
  v2 = a1[942];
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

  v4 = a1[940];
  a1[940] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[923];
  if (v5)
  {
    a1[924] = v5;
    operator delete(v5);
  }

  v6 = a1[919];
  if (v6)
  {
    a1[920] = v6;
    operator delete(v6);
  }

  v7 = a1[915];
  if (v7)
  {
    a1[916] = v7;
    operator delete(v7);
  }

  v8 = a1[912];
  if (v8)
  {
    a1[913] = v8;
    operator delete(v8);
  }

  sub_5135D0(a1 + 619);
  sub_5135D0(a1 + 179);
  v9 = a1[18];
  if (v9)
  {
    a1[19] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  v11 = a1[3];
  a1[3] = 0;
  if (v11)
  {
    sub_5135D0((v11 + 1312));
    operator delete();
  }

  return a1;
}

void sub_6D2D64(uint64_t a1, void *a2, int a3)
{
  if (a2[1262] == a2[1263])
  {
    sub_710B30((a1 + 1432), a2);
    sub_6D548C(a1);
    sub_6D2E48(a1, a2, a3);
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

void sub_6D2E48(uint64_t a1, void *a2, int a3)
{
  if (sub_4D1DC0(a2) != 1)
  {
    v5 = 0;
    v56 = (a1 + 7384);
    do
    {
      sub_6D57DC(a1, a2, v5, &v76);
      v91[24] = sub_59D100(a1, &v76);
      sub_72E088(a1 + 7208, a2, v5, &v76);
      sub_6D5C98(a1, a2, a1 + 64, &v76);
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

  sub_6D6144(a1, a2);
}

void sub_6D3418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a29);
  sub_5ECFBC(&a64);
  _Unwind_Resume(a1);
}

void sub_6D34C0(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v4 = a3;
  v8 = *(a2 + 32);
  v9 = *(a1 + 7280);
  v43 = v8 & 0xFFFFFFFFFFFFFFLL;
  v44 = v9;
  v45 = a3;
  v46 = 3;
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
  v14 = ((v13 << 6) + (v13 >> 2) + 2654435772u) ^ v13;
  v15 = (*(*(a1 + 32) + 16) + 272 * (bswap64(v14) % **(a1 + 32)));
  v35 = &v43;
  v36 = v14;
  sub_705EC8(v15, &v35, &v40);
  if (v42 != 1)
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
    v35 = v19;
    v36 = v23;
    v37 = v24;
    v38 = v25;
    v39 = v18 & 0xFFFFFFFFFFFFFFLL;
    memset(v34, 0, sizeof(v34));
    if ((v4 & 1) != 0 || sub_6A9E6C(a1 + 3680, a2))
    {
      sub_740664((a1 + 7480), &v35, v34);
      sub_6D3D8C(*a1, *(a2 + 32) | (*(a2 + 36) << 32), &__p);
      v26 = __p;
      v27 = v33;
      if (__p != v33)
      {
        do
        {
          v28 = *v26;
          v29 = sub_30CC30(*a1, *v26);
          v30 = (v29 - *v29);
          if (*v30 >= 0xFu && v30[7] && (*(v29 + v30[7]) & 4) != 0 && (!v30[2] || !*(v29 + v30[2])) && !v30[4])
          {
            sub_320200(*a1, v28, &__src);
            operator new();
          }

          ++v26;
        }

        while (v26 != v27);
      }

      operator new();
    }

    sub_73F798(a1 + 7480, &v35, v34);
  }

  v16 = v41;
  *a4 = v40;
  a4[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = v41;
  if (v41)
  {
    if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }
  }
}

void sub_6D3C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v26 = *(v24 - 120);
  if (v26)
  {
    *(v24 - 112) = v26;
    operator delete(v26);
    v27 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v23)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  if (!v23)
  {
LABEL_4:
    v28 = exception_object;
    if (!exception_object)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v23);
  v28 = exception_object;
  if (!exception_object)
  {
LABEL_5:
    sub_1F1A8(&a23);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v28);
  sub_1F1A8(&a23);
  _Unwind_Resume(a1);
}

int *sub_6D3D8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2B51D8(a1, a2);
  v5 = (result - *result);
  if (*v5 >= 0x21u && (v6 = v5[16]) != 0)
  {
    v7 = (result + v6 + *(result + v6));
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*v7)
    {
      operator new();
    }

    a3[2] = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6D3F60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6D3F8C(void *a1, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 248 * a2;
}

void sub_6D40C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_6D41A8(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
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

void sub_6D441C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_6D446C(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4, unint64_t a5, int a6, int a7, char a8)
{
  result = sub_6D9BF8(a1, a3, a4, a5);
  if (a7 && (result & 0x100000000) != 0)
  {
    return result;
  }

  if (sub_6D9EC4(a1, a3, a4))
  {
    return 0;
  }

  result = sub_6DA060(a1, a3, a4, a5);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  v18 = sub_70E7C4(a1 + 1432, a3, a4, a5, v17);
  if (!sub_6DA224(a1, a2, a3, a4, v18, a5, a8))
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
    v32 = (sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v59 & 0xFFFFFFFFFFFFFFLL) & 1) != 0 || fabs(sub_710C1C(a1 + 1432, a2, a3, v58)) < *(a1 + 200);
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
  if (sub_6DB214(a1, a3, a4, a5))
  {
    v33 = 3;
    goto LABEL_44;
  }

  if (sub_6DB7A4(a1, a3, v58, a4, v41, v42))
  {
LABEL_43:
    v33 = sub_6DB978(a1, a2, a3, a4, a5, v18);
    goto LABEL_44;
  }

  v33 = 0;
LABEL_44:
  v43 = v33;
  v44 = sub_6DBAF4(a1, a3, a4, a5, v18);
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

  if ((sub_6DBDA0(a1, a2, a3, v43) & 1) == 0)
  {
    return v43;
  }

  v46 = v45;
  v47 = sub_710C1C(a1 + 1432, a2, a3, v58);
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

uint64_t sub_6D48F8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_69AC30(v9);
  sub_6D34C0(v5, v4, v2, v7);
  return sub_693598(v9);
}

uint64_t sub_6D4994(uint64_t *a1, void *a2)
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

void sub_6D5018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_6D5084(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, unint64_t a6@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  if (v9 == 12)
  {
    LODWORD(a6) = v8[1];
    v10 = exp(3.14159265 - a6 * 6.28318531 / 4294967300.0);
    *&v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795;
    LODWORD(v12) = *v8;
    HIDWORD(v12) = *a2;
    v35 = v12;
    v13 = *&v11 * 0.0174532925;
    LODWORD(v11) = *(a2 + 4);
    v14 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
    v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
    v16.i64[0] = v35;
    v16.i64[1] = HIDWORD(v35);
    v17 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v36 = vsubq_f64(v17, vdupq_laneq_s64(v17, 1)).f64[0];
    v18 = sin((v13 - v15) * 0.5);
    v19 = v18 * v18;
    v20 = cos(v13);
    v21 = v20 * cos(v15);
    v22 = sin(0.5 * v36);
    v23 = atan2(sqrt(v22 * v22 * v21 + v19), sqrt(1.0 - (v22 * v22 * v21 + v19)));
    v24 = 0;
    *(a5 + 8) = *v8;
    *(a5 + 16) = v8[2];
    *a5 = (v23 + v23) * 6372797.56;
  }

  else
  {
    v25 = v9 >> 2;
    v26 = 0xAAAAAAAAAAAAAAABLL * v25 - 1;
    if (0xAAAAAAAAAAAAAAABLL * v25 == 1)
    {
      v37 = -1;
      v24 = -1;
      v31 = 1.79769313e308;
      v33 = 0x7FFFFFFF;
    }

    else
    {
      v30 = 0;
      v24 = -1;
      v31 = 1.79769313e308;
      v32 = 12;
      v33 = 0x7FFFFFFF;
      v37 = -1;
      do
      {
        v38 = -1;
        v39 = 0x7FFFFFFF;
        sub_702ABC((*a1 + v32 - 12), (*a1 + v32), a2, &v38, a3, a4);
        if (v34 < v31)
        {
          v37 = v38;
          v33 = v39;
          v24 = v30;
          v31 = v34;
        }

        ++v30;
        v32 += 12;
      }

      while (v26 != v30);
    }

    *a5 = v31;
    *(a5 + 8) = v37;
    *(a5 + 16) = v33;
  }

  *(a5 + 24) = v24;
}

double sub_6D534C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 + 8;
  if (*(a1 + 32))
  {
    if (*(a1 + 8) != *(a1 + 16))
    {
      *a2 = *a1;
      *(a2 + 8) = v2;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 41) = 0u;
      v3 = a2;

LABEL_5:
      sub_318EF0(v3);
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    if (*(a1 + 8) != v5)
    {
      v6 = *(v5 - 8);
      v9 = sub_2B4D24(*a1, v6, 0);
      v10 = &v9[*&v9[-*v9 + 4]];
      v11 = &v10[4 * HIDWORD(v6) + *v10];
      v12 = (v11 + 4 + *(v11 + 4));
      v13 = (v12 + *(v12 - *v12 + 6));
      v14 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
      LODWORD(v13) = *(v13 + *v13) - 1;
      *a2 = *a1;
      *(a2 + 8) = v2;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = v14;
      *(a2 + 52) = v13;
      *(a2 + 56) = 1;
      v3 = a2;

      goto LABEL_5;
    }
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_6D548C(uint64_t a1)
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

void sub_6D573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D578C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57DC(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  LODWORD(v38) = 0;
  v37 = 0;
  *(&v38 + 1) = -1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v41 = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v42 = v8;
  v43 = v8;
  v44 = v8;
  *&v45 = -1;
  DWORD2(v45) = 0;
  *&v46 = -1;
  DWORD2(v46) = 0;
  *v47 = 0;
  *&v47[8] = vnegq_f64(v8);
  *&v47[24] = 0;
  LODWORD(v48) = 98;
  *(&v48 + 1) = 0;
  *v49 = 0;
  *&v49[8] = xmmword_229B660;
  *&v49[24] = 0;
  *&v49[32] = 0;
  *&v49[38] = 0;
  if (!a3 && !sub_4D2138(a2) || sub_4D1DC0(a2) - 2 == a3 && !sub_4D2140(a2))
  {
    v9 = *(sub_4D1F50(a2, a3) + 32);
    LODWORD(__src) = v9;
    BYTE6(__src) = BYTE6(v9);
    WORD2(__src) = WORD2(v9);
    v10 = *(sub_4D1F50(a2, a3 + 1) + 32);
    v51 = v10;
    v53 = BYTE6(v10);
    v52 = WORD2(v10);
    v11 = __p[0];
    if (v37 - __p[0] < 9)
    {
      v12 = v37 >> 2;
      if ((v37 >> 2) <= 2)
      {
        v12 = 2;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if ((__p[1] - __p[0]) > dword_8)
    {
      v15 = __src;
      v16 = v51;
      v17 = v52;
      *(__p[0] + 14) = v53;
      v11[6] = v17;
      *(v11 + 2) = v16;
      *v11 = v15;
      v18 = (v11 + 8);
LABEL_27:
      LODWORD(v38) = 0;
      v27 = v37;
      *a4 = __p[0];
      *(a4 + 8) = v18;
      *(a4 + 16) = v27;
      v37 = 0;
      __p[0] = 0;
      __p[1] = 0;
      goto LABEL_28;
    }

    v13 = (&__src + __p[1] - __p[0]);
    v19 = __p[0] - __p[1] + 8;
    if (v19 < 0x38)
    {
      v14 = __p[1];
    }

    else
    {
      v14 = __p[1];
      if ((__p[0] - &__src) >= &stru_20)
      {
        v20 = (v19 >> 3) + 1;
        v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        v13 = (v13 + v21);
        v14 = __p[1] + v21;
        v22 = __p[1] + 16;
        v23 = (&__src + __p[1] - __p[0] + 16);
        v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *v23;
          *(v22 - 1) = *(v23 - 1);
          *v22 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v26 = *v13++;
      *v14 = v26;
      v14 += 8;
    }

    while (v13 != &v54);
LABEL_26:
    v18 = v14;
    goto LABEL_27;
  }

  if (sub_6D8A9C(a1, a2, a3, __p) || sub_394BD0() || sub_6D8C64(a1, a2, a3, __p) || sub_6D8F54(a1, a2, a3, __p) || sub_6D91B0(a1, a2, a3, __p))
  {
    *a4 = *__p;
    *(a4 + 16) = v37;
    __p[1] = 0;
    v37 = 0;
    __p[0] = 0;
LABEL_28:
    *(a4 + 24) = v38;
    *(a4 + 40) = *v39;
    *(a4 + 56) = v40;
    v39[1] = 0;
    v40 = 0;
    v39[0] = 0;
    *(a4 + 64) = v41;
    v28 = v42;
    v29 = v43;
    *(a4 + 104) = v44;
    *(a4 + 88) = v29;
    *(a4 + 72) = v28;
    v30 = v45;
    v31 = v46;
    v32 = *v47;
    *(a4 + 168) = *&v47[16];
    *(a4 + 152) = v32;
    *(a4 + 136) = v31;
    *(a4 + 120) = v30;
    v33 = v48;
    v34 = *v49;
    v35 = *&v49[16];
    *(a4 + 230) = *&v49[30];
    *(a4 + 216) = v35;
    *(a4 + 200) = v34;
    *(a4 + 184) = v33;
    goto LABEL_29;
  }

  sub_6D9708(a1, a2, a3, 1, a4);
  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

LABEL_29:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_6D5C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v32[0] = v10;
  v32[1] = v14;
  v32[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v32[3] = v15;
  v32[4] = v9;
  v16 = *a1;
  v17 = *(*(a4 + 8) - 8);
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

    v22 = (v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v22 = 0;
  }

  v31[0] = v18;
  v31[1] = v22;
  v31[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v31[3] = v23;
  v31[4] = v17;
  v24 = *(a4 + 24);
  result = sub_71A018(a1 + 1432, v32, v31);
  if ((result & 1) == 0 && ((v24 - 4) > 0x3E || ((1 << (v24 - 4)) & 0x600000008003008DLL) == 0) && v24)
  {
    v26 = *(a3 + 112);
    if (v26 > 3)
    {
      switch(v26)
      {
        case 4:
          v29 = *(a3 + 104);
          v33 = 0u;
          v34 = 0u;
          v35 = 0x1000000000000;
          return sub_6DCA68(a1, a2, a3, (a3 + 80), v29, &v33, a4 + 40);
        case 5:
          sub_6E4A4C(a1, a2, a3);
        case 6:
          return sub_766CE0(a1 + 7288, a4 + 40);
      }
    }

    else if ((v26 - 1) < 2)
    {
      *(a4 + 64) = 0;
      LOBYTE(v33) = 0;
      if (v26 == 1)
      {
        v28 = (a1 + 816);
      }

      else
      {
        v28 = (a1 + 792);
      }

      sub_6E4B34(a4 + 40, v28, &v33);
      LOBYTE(v33) = 1;
      return sub_6E4B34(a4 + 40, (a1 + 848), &v33);
    }

    else if (v26)
    {
      if (v26 == 3)
      {
        v27 = *(a3 + 104);
        if (v27 != -1)
        {
          return sub_6DCA68(a1, a2, (a3 + 40), (a3 + 80), v27, a3, a4 + 40);
        }
      }
    }

    else
    {
      v30 = *(a3 + 104);
      v33 = 0u;
      v34 = 0u;
      v35 = 0x1000000000000;
      return sub_6DCA68(a1, a2, v32, (a3 + 80), v30, &v33, a4 + 40);
    }
  }

  return result;
}

BOOL sub_6D5FB8(uint64_t a1, int **a2, int **a3, int a4)
{
  if (a4 != 3)
  {
    if (a4)
    {
      return 0;
    }

    v4 = (*a2 - **a2);
    v5 = *v4;
    if (*(a2 + 38))
    {
      if (v5 >= 0x9B)
      {
        v6 = v4[77];
        if (v6)
        {
          v7 = 2;
LABEL_15:
          v13 = (*(*a2 + v6) & v7) != 0;
          goto LABEL_17;
        }
      }
    }

    else if (v5 >= 0x9B)
    {
      v6 = v4[77];
      if (v6)
      {
        v7 = 1;
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_17:
    v14 = *a3;
    v15 = (*a3 - **a3);
    v16 = *v15;
    if (*(a3 + 38))
    {
      if (v16 >= 0x9B)
      {
        v17 = v15[77];
        if (v17)
        {
          return v13 ^ ((*&v14[v17] & 2) != 0);
        }
      }
    }

    else if (v16 >= 0x9B)
    {
      v18 = v15[77];
      if (v18)
      {
        return v13 ^ ((*&v14[v18] & 1) != 0);
      }
    }

    return v13;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if (*(a2 + 38))
  {
    if (v9 >= 0x47)
    {
      v10 = v8[35];
      if (v10)
      {
        v11 = 2;
LABEL_27:
        v13 = (*(*a2 + v10) & v11) != 0;
        goto LABEL_29;
      }
    }
  }

  else if (v9 >= 0x47)
  {
    v10 = v8[35];
    if (v10)
    {
      v11 = 1;
      goto LABEL_27;
    }
  }

  v13 = 0;
LABEL_29:
  v19 = *a3;
  v20 = (*a3 - **a3);
  v21 = *v20;
  if (*(a3 + 38))
  {
    if (v21 >= 0x47)
    {
      v22 = v20[35];
      if (v22)
      {
        return v13 ^ ((*&v19[v22] & 2) != 0);
      }
    }
  }

  else if (v21 >= 0x47)
  {
    v23 = v20[35];
    if (v23)
    {
      return v13 ^ ((*&v19[v23] & 1) != 0);
    }
  }

  return v13;
}

void sub_6D6144(uint64_t a1, void *a2)
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
                        if (sub_6D71C0(a1, v9, v89))
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
                                              sub_6D7748(a1, a2, v93, v4);
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

          sub_6D6E64(a1, a2, v4);
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

char *sub_6D6CBC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_2B51D8(*a1, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v4 + 7772) == 1)
  {
    v7 = sub_30C50C(v4 + 3896, v5, 0);
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

    v10 = v9 + ((v5 >> 30) & 0x3FFFC) + 4 + *(v9 + ((v5 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v4, v5 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v6;
  a3[1] = v10;
  a3[2] = result;
  a3[3] = v12;
  a3[4] = v5;
  return result;
}

char *sub_6D6D8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  if (a3 && *(a1 + 7772) == 1)
  {
    v11 = sub_30C50C(a1 + 3896, a2, 0);
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

    v14 = v13 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v13 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  result = sub_31D7E8(a1, a2 & 0xFFFFFFFFFFFFLL, a4);
  *a5 = v10;
  a5[1] = v14;
  a5[2] = result;
  a5[3] = v16;
  a5[4] = a2;
  return result;
}

uint64_t sub_6D6E64(uint64_t a1, void *a2, unint64_t a3)
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
    sub_72E9A0(a1 + 7208, v7);
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

BOOL sub_6D71C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  result = sub_70EE0C((a1 + 179), &v64);
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
      sub_6D88D4(&v62, &v64);
      sub_5E9738(&v62);
      sub_5E94A4(*a1, v16, 1, v61);
      sub_6D88D4(v61, &v62);
      sub_5E9738(v61);
      if (sub_31052C(&v64) && sub_31052C(&v62) && sub_BB4E4(v65, v63) && (v53 = sub_6D89E0(*a1, v15 & 0xFFFFFFFFFFFFLL), v53 == sub_6D89E0(*a1, v16 & 0xFFFFFFFFFFFFLL)))
      {
        v60 = a1;
        v54 = sub_6D8A24(&v60, a2, a2[29] + 1, (a2[1] - *a2) >> 3);
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
              v54 = sub_703240(v61, v56++);
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

void sub_6D76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_310F30(&a13);
  sub_310F30(&a31);
  _Unwind_Resume(a1);
}

void sub_6D7748(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
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
    sub_6D7DBC(v23, v25 + v26 + ((v27 - v28) >> 3) - 1, v30, v12[4] + v29 + ((v12[1] - *v12) >> 3), &v37);
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
          v39 = sub_6D807C(v34, a2, v10, v12);
          sub_6D83AC((v10 + 40), v12 + 5, &v35);
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
    if (v18 - v17 == v12[1] - *v12)
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

void sub_6D7B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5ECFBC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_6D7B84(uint64_t result, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  *(result + 224) = (*(result + 224) | *(a2 + 224)) & 1;
  *(result + 225) = (*(result + 225) | *(a2 + 225)) & 1;
  *(result + 225) = (*(result + 226) | *(a2 + 226)) & 1;
  *(result + 227) = (*(result + 227) | *(a2 + 227)) & 1;
  *(result + 240) = (*(result + 240) | *(a2 + 240)) & 1;
  *(result + 241) = (*(result + 241) | *(a2 + 241)) & 1;
  *(result + 242) = (*(result + 242) | *(a2 + 242)) & 1;
  *(result + 243) = (*(result + 243) | *(a2 + 243)) & 1;
  a3.i32[0] = *(a2 + 152);
  a4.i32[0] = *(result + 152);
  v4 = vorr_s8(*&vmovl_u8(a4), *&vmovl_u8(a3));
  *(result + 152) = vuzp1_s8(v4, v4).u32[0];
  v5 = *(result + 184);
  if (v5 == 98)
  {
    v5 = *(a2 + 184);
  }

  *(result + 184) = v5;
  *(result + 244) = (*(result + 244) | *(a2 + 244)) & 1;
  *(result + 245) = (*(result + 245) | *(a2 + 245)) & 1;
  v6 = *(a2 + 72);
  v7 = *(result + 72);
  v8 = *(result + 80);
  if (v7 <= v6)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = *(result + 72);
  }

  if (v6 == -1)
  {
    v9 = *(result + 72);
  }

  if (v7 != -1)
  {
    v6 = v9;
  }

  *(result + 72) = v6;
  v10 = *(a2 + 80);
  if (v8 <= v10)
  {
    v11 = *(a2 + 80);
  }

  else
  {
    v11 = v8;
  }

  if (v10 == -1)
  {
    v11 = v8;
  }

  if (v8 != -1)
  {
    v10 = v11;
  }

  *(result + 80) = v10;
  v12 = *(a2 + 88);
  v13 = *(result + 88);
  v14 = *(result + 96);
  if (v13 <= v12)
  {
    v15 = *(a2 + 88);
  }

  else
  {
    v15 = *(result + 88);
  }

  if (v12 == -1)
  {
    v15 = *(result + 88);
  }

  if (v13 != -1)
  {
    v12 = v15;
  }

  *(result + 88) = v12;
  v16 = *(a2 + 96);
  if (v14 <= v16)
  {
    v17 = *(a2 + 96);
  }

  else
  {
    v17 = v14;
  }

  if (v16 == -1)
  {
    v17 = v14;
  }

  if (v14 != -1)
  {
    v16 = v17;
  }

  *(result + 96) = v16;
  v18 = *(a2 + 104);
  v19 = *(result + 104);
  v20 = *(result + 112);
  if (v19 <= v18)
  {
    v21 = *(a2 + 104);
  }

  else
  {
    v21 = *(result + 104);
  }

  if (v18 == -1)
  {
    v21 = *(result + 104);
  }

  if (v19 != -1)
  {
    v18 = v21;
  }

  *(result + 104) = v18;
  v22 = *(a2 + 112);
  if (v20 <= v22)
  {
    v23 = *(a2 + 112);
  }

  else
  {
    v23 = v20;
  }

  if (v22 == -1)
  {
    v23 = v20;
  }

  if (v20 != -1)
  {
    v22 = v23;
  }

  *(result + 112) = v22;
  v24 = *(result + 120);
  v25 = *(a2 + 120);
  if (v24 <= v25)
  {
    v26 = *(a2 + 120);
  }

  else
  {
    v26 = *(result + 120);
  }

  if (v25 == -1)
  {
    v26 = *(result + 120);
  }

  if (v24 == -1)
  {
    v27 = *(a2 + 120);
  }

  else
  {
    v27 = v26;
  }

  *(result + 120) = v27;
  v28 = *(result + 136);
  v29 = *(a2 + 136);
  if (v28 <= v29)
  {
    v30 = *(a2 + 136);
  }

  else
  {
    v30 = *(result + 136);
  }

  if (v29 == -1)
  {
    v30 = *(result + 136);
  }

  if (v28 == -1)
  {
    v31 = *(a2 + 136);
  }

  else
  {
    v31 = v30;
  }

  *(result + 136) = v31;
  v32 = *(result + 144);
  if (!v32)
  {
    v32 = *(a2 + 144);
  }

  *(result + 144) = v32;
  v33 = *(result + 128);
  if (v33 != *(a2 + 128))
  {
    v33 = 0;
  }

  *(result + 128) = v33;
  return result;
}

uint64_t sub_6D7DBC(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_4D1DC0(a1);
        v12 = sub_4D1DC0(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_4D1F50(a1, a2);
          if (v13 == sub_4D1F50(a3, a4))
          {
            return a5;
          }
        }

        v10 = *(sub_4D1F50(a1, a2) + 32);
        LODWORD(v17) = v10;
        BYTE6(v17) = BYTE6(v10);
        WORD2(v17) = WORD2(v10);
        sub_2B5AD0(a5, &v17);
        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v14 = *(sub_4D1F50(a1, a2) + 32);
      LODWORD(v17) = v14;
      BYTE6(v17) = BYTE6(v14);
      WORD2(v17) = WORD2(v14);
      sub_2B5AD0(a5, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_4D1DC0(a3))
    {
      v15 = *(sub_4D1F50(0, a2) + 32);
      LODWORD(v17) = v15;
      BYTE6(v17) = BYTE6(v15);
      WORD2(v17) = WORD2(v15);
      sub_2B5AD0(a5, &v17);
      ++a2;
    }
  }

  return a5;
}

uint64_t sub_6D7F40(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (*result == v1)
  {
LABEL_18:
    if (v2 != v1)
    {
      *(result + 8) = v2;
    }

    return result;
  }

  if (v2 + 2 != v1)
  {
    v3 = 0;
    LODWORD(v4) = *v2;
    while (1)
    {
      v5 = v4;
      v4 = *&v2[v3 + 2];
      if (v5 == v4 && LOWORD(v2[v3 + 1]) == WORD2(v4))
      {
        v6 = &v2[v3];
        if (BYTE2(v2[v3 + 1]) == BYTE6(v4))
        {
          break;
        }
      }

      v3 += 2;
      if (&v2[v3 + 2] == v1)
      {
        return result;
      }
    }

    if (v6 != v1)
    {
      v7 = &v2[v3 + 4];
      if (v7 != v1)
      {
        do
        {
          if (__PAIR64__(*(v6 + 2), *v6) != __PAIR64__(WORD2(*v7), *v7) || *(v6 + 6) != BYTE6(*v7))
          {
            v8 = *(v7 + 3);
            v6[2] = *v7;
            v6 += 2;
            *(v6 + 3) = v8;
          }

          v7 += 2;
        }

        while (v7 != v1);
        v1 = *(result + 8);
      }

      v2 = v6 + 2;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_6D807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
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
  v16 = *(a3 + 8);
  v17 = *a1;
  v18 = *(v16 - 8);
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

    v23 = (v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4));
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

    v31 = (v30 + ((v26 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v26 >> 30) & 0x3FFFC) + 4));
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
  v33 = *(a4 + 8);
  v34 = *a1;
  v35 = *(v33 - 8);
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

    v40 = (v39 + ((v35 >> 30) & 0x3FFFC) + 4 + *(v39 + ((v35 >> 30) & 0x3FFFC) + 4));
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
  v42 = sub_710C1C(a1 + 1432, a2, v48, v47);
  v43 = sub_710C1C(a1 + 1432, a2, v46, v45);
  return sub_70DD90((a1 + 1432), 0, v42 + v43);
}

uint64_t sub_6D83AC@<X0>(char **a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (*a1 != v7)
  {
    v8 = *a1;
    while ((v8[2] & 1) == 0)
    {
      v8 += 4;
      if (v8 == v7)
      {
        goto LABEL_28;
      }
    }
  }

  if (v8 == v7)
  {
LABEL_28:
    sub_702E20(a3, 0, v6, v7, (v7 - v6) >> 2);
  }

  else
  {
    for (; v6 != v7; v6 += 4)
    {
      if ((v6[2] & 1) == 0)
      {
        v9 = a3[2];
        if (v5 < v9)
        {
          *v5++ = *v6;
        }

        else
        {
          v10 = *a3;
          v11 = v5 - *a3;
          v12 = (v11 >> 2) + 1;
          if (v12 >> 62)
          {
            sub_1794();
          }

          v13 = v9 - v10;
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

          v15 = (4 * (v11 >> 2));
          *v15 = *v6;
          v5 = v15 + 1;
          memcpy(0, v10, v11);
          *a3 = 0;
          a3[1] = v5;
          a3[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        a3[1] = v5;
      }
    }
  }

  return sub_6D8760(a3, sub_6D88A4, sub_6D88C4);
}

void sub_6D85F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6D8620(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    sub_30945C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = *(a2 + 24);
    sub_596098((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  }

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  v11 = *(a2 + 216);
  *(a1 + 230) = *(a2 + 230);
  *(a1 + 216) = v11;
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  return a1;
}

double sub_6D86EC(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = *a1;
  *(a1 + 48) = *(a1 + 40);
  *(a1 + 64) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(a1 + 72) = v1;
  *(a1 + 88) = v1;
  *(a1 + 104) = v1;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = vnegq_f64(v1);
  *(a1 + 176) = 0;
  *(a1 + 184) = 98;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  result = NAN;
  *(a1 + 208) = xmmword_229B660;
  *(a1 + 232) = 0;
  *(a1 + 245) = 0;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_6D8760(uint64_t *a1, uint64_t (*a2)(unint64_t, unint64_t), uint64_t (*a3)(unint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = 126 - 2 * __clz((v8 - v7) >> 2);
  v16 = a2;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_706F3C(v7, v8, &v16, v10, 1);
  v12 = a1[1];
  if (*a1 == v12)
  {
    v12 = *a1;
  }

  else
  {
    v13 = (*a1 + 4);
    while (v13 != v12)
    {
      result = a3(*(v13 - 1), *v13);
      ++v13;
      if (result)
      {
        for (i = v13 - 2; v13 != v12; ++v13)
        {
          v4 = v4 & 0xFFFFFFFF00000000 | *i;
          v3 = v3 & 0xFFFFFFFF00000000 | *v13;
          result = a3(v4, v3);
          if ((result & 1) == 0)
          {
            v15 = *(v13 + 2);
            *(i++ + 2) = *v13;
            *(i + 2) = v15;
          }
        }

        v12 = i + 1;
        if (i + 1 == a1[1])
        {
          return result;
        }

        goto LABEL_17;
      }
    }
  }

  if (v12 != a1[1])
  {
LABEL_17:
    a1[1] = v12;
  }

  return result;
}

uint64_t sub_6D88A4(unsigned int a1, __int16 a2)
{
  if (a1 >= a2)
  {
    return (a1 == a2) & HIWORD(a1);
  }

  else
  {
    return 1;
  }
}

double sub_6D88D4@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (v4 == v5)
  {
LABEL_9:
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = sub_12331FC();
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 111) = 0;
  }

  else
  {
    v6 = v4;
    do
    {
      if (!*v6)
      {
        v7 = a2;
        v4 = v6;

        goto LABEL_8;
      }

      v6 += 144;
    }

    while (v6 != v5);
    if (v4 == v5)
    {
      goto LABEL_9;
    }

    v7 = a2;

LABEL_8:
    sub_704AE0(v7, v4);
  }

  return result;
}

void sub_6D89A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
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

  operator delete(*(v1 + 8));
  _Unwind_Resume(exception_object);
}

uint64_t sub_6D89E0(uint64_t a1, unint64_t a2)
{
  v2 = sub_2B51D8(a1, a2);
  v3 = (v2 - *v2);
  if (*v3 >= 0x2Fu && (v4 = v3[23]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 32;
  }
}

unint64_t sub_6D8A24(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v8 = *a1;
  if (8 * a3 == 8 * a4)
  {
    return 1;
  }

  v6 = (8 * a4 + v4);
  v7 = (8 * a3 + v4);
  do
  {
    result = sub_703240(&v8, v7);
    if (!result)
    {
      break;
    }

    ++v7;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_6D8A9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1171) != 1)
  {
    return 0;
  }

  sub_4D1EF8(a2, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = sub_4D1EF8(a2, a3);
  if (*(v8 + 48 * v9 - 8) != 1)
  {
    return 0;
  }

  if (sub_4D1DC0(a2) - 1 == a3)
  {
    return 0;
  }

  v10 = *(sub_4D1F50(a2, a3) + 32);
  v11 = *(sub_4D1F50(a2, a3 + 1) + 32);
  if (v10 != v11)
  {
    return 0;
  }

  result = 0;
  if (WORD2(v10) == WORD2(v11) && ((v11 & 0xFF000000000000) == 0) == BYTE6(v10))
  {
    *(a4 + 24) = 0;
    *(a4 + 8) = *a4;
    *(a4 + 48) = *(a4 + 40);
    *(a4 + 64) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a4 + 72) = v13;
    *(a4 + 88) = v13;
    *(a4 + 104) = v13;
    *(a4 + 120) = -1;
    *(a4 + 128) = 0;
    *(a4 + 136) = -1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = vnegq_f64(v13);
    *(a4 + 176) = 0;
    *(a4 + 184) = 98;
    *(a4 + 192) = 0;
    *(a4 + 200) = 0;
    *(a4 + 208) = xmmword_229B660;
    *(a4 + 232) = 0;
    *(a4 + 245) = 0;
    *(a4 + 224) = 0;
    v16 = BYTE6(v10);
    v15 = WORD2(v10);
    __src = v10;
    v19 = BYTE6(v11);
    v18 = WORD2(v11);
    v17 = v11;
    sub_7061AC(a4, &__src, &v20, 2uLL);
    *(a4 + 24) = 97;
    return 1;
  }

  return result;
}

uint64_t sub_6D8C64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32) | (*(v8 + 36) << 32);
  v10 = sub_2B51D8(*a1, v9);
  v11 = (v10 - *v10);
  if (*v11 < 0x9Bu)
  {
    return 0;
  }

  v12 = v11[77];
  if (!v12 || (*(v10 + v12 + 3) & 2) == 0 || *(a1 + 681) != 1)
  {
    return 0;
  }

  sub_6D3D8C(*a1, v9, &v37);
  v13 = v37;
  v14 = v38;
  if (v37 == v38)
  {
    result = 0;
    goto LABEL_37;
  }

  do
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_7;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_7;
      }

      v34 = dword_229EB2C[v22];
    }

    else
    {
      v34 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v23 = sub_4D1DC0(a2);
    v24 = __p;
    v25 = v36;
    if (v23 - a3 < (v36 - __p) >> 3)
    {
      v26 = 3;
      v27 = __p;
      if (!__p)
      {
        goto LABEL_28;
      }

LABEL_27:
      v36 = v27;
      operator delete(v27);
      goto LABEL_28;
    }

    sub_4D0560();
    if (v24 == v25)
    {
LABEL_24:
      *(a4 + 24) = v34;
      if (&__p != a4)
      {
        sub_30945C(a4, __p, v36, (v36 - __p) >> 3);
      }

      v26 = 1;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v30 = v28;
      v31 = v29 + a3;
      while (1)
      {
        v32 = *(sub_4D1F50(v30, v31) + 32);
        if (__PAIR64__(*(v24 + 2), *v24) != __PAIR64__(WORD2(v32), v32) || *(v24 + 6) != BYTE6(v32))
        {
          break;
        }

        v24 += 2;
        ++v31;
        if (v24 == v25)
        {
          goto LABEL_24;
        }
      }

      v26 = 0;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    if (v26 != 3 && v26)
    {
      result = 1;
      goto LABEL_36;
    }

LABEL_7:
    ++v13;
  }

  while (v13 != v14);
  result = 0;
LABEL_36:
  v13 = v37;
LABEL_37:
  if (v13)
  {
    v38 = v13;
    v33 = result;
    operator delete(v13);
    return v33;
  }

  return result;
}

void sub_6D8EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6D8F54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 762) != 1)
  {
    return 0;
  }

  v7 = sub_4D1F50(a2, a3);
  v8 = sub_4D1F50(a2, a3 + 1);
  v9 = (*v7 - **v7);
  if (*v9 < 0x2Fu)
  {
    return 0;
  }

  v10 = v9[23];
  if (!v10 || *(*v7 + v10) != 8)
  {
    return 0;
  }

  *(a4 + 24) = 0;
  v11 = v7[4];
  v13 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (v13 >= v12)
  {
    v19 = *a4;
    v20 = v13 - *a4;
    v21 = (v20 >> 3) + 1;
    if (v21 >> 61)
    {
      goto LABEL_33;
    }

    v22 = v12 - v19;
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

      goto LABEL_34;
    }

    v24 = v8;
    v25 = (8 * (v20 >> 3));
    *v25 = v11 & 0xFFFFFFFFFFFFFFLL;
    v14 = v25 + 1;
    memcpy(0, v19, v20);
    *a4 = 0;
    *(a4 + 8) = v14;
    *(a4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }

    *(a4 + 8) = v14;
    v15 = *(v24 + 32);
    v16 = *(a4 + 16);
    if (v14 < v16)
    {
      goto LABEL_7;
    }

LABEL_21:
    v26 = *a4;
    v27 = v14 - *a4;
    v28 = (v27 >> 3) + 1;
    if (!(v28 >> 61))
    {
      v29 = v16 - v26;
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

      if (!v30)
      {
        v31 = (8 * (v27 >> 3));
        *v31 = v15 & 0xFFFFFFFFFFFFFFLL;
        v17 = v31 + 1;
        memcpy(0, v26, v27);
        *a4 = 0;
        *(a4 + 8) = v17;
        *(a4 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        goto LABEL_32;
      }

      if (!(v30 >> 61))
      {
        operator new();
      }

LABEL_34:
      sub_1808();
    }

LABEL_33:
    sub_1794();
  }

  *v13 = v11 & 0xFFFFFFFFFFFFFFLL;
  v14 = v13 + 1;
  *(a4 + 8) = v14;
  v15 = *(v8 + 32);
  v16 = *(a4 + 16);
  if (v14 >= v16)
  {
    goto LABEL_21;
  }

LABEL_7:
  *v14 = v15 & 0xFFFFFFFFFFFFFFLL;
  v17 = v14 + 1;
LABEL_32:
  *(a4 + 8) = v17;
  return 1;
}

BOOL sub_6D91B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (sub_6E140C(a1, a2, a3, a4))
  {
    return 1;
  }

  sub_766F2C((a1 + 7448), a2, v5, &v45);
  *(a1 + 7288) = v45;
  v9 = *(a1 + 7296);
  if (v9)
  {
    *(a1 + 7304) = v9;
    operator delete(v9);
    *(a1 + 7296) = 0;
    *(a1 + 7304) = 0;
    *(a1 + 7312) = 0;
  }

  *(a1 + 7296) = *v46;
  *(a1 + 7312) = v47;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v10 = (a1 + 7320);
  v11 = *(a1 + 7320);
  if (v11)
  {
    *(a1 + 7328) = v11;
    operator delete(v11);
    *v10 = 0;
    *(a1 + 7328) = 0;
    *(a1 + 7336) = 0;
  }

  *v10 = *v48;
  v12 = v50;
  *(a1 + 7336) = v49;
  v48[1] = 0;
  v49 = 0;
  v48[0] = 0;
  *(a1 + 7344) = v12;
  v13 = (a1 + 7352);
  v14 = *(a1 + 7352);
  if (v14)
  {
    *(a1 + 7360) = v14;
    operator delete(v14);
    *v13 = 0;
    *(a1 + 7360) = 0;
    *(a1 + 7368) = 0;
  }

  *v13 = *__p;
  v15 = v53;
  *(a1 + 7368) = v52;
  __p[1] = 0;
  v52 = 0;
  __p[0] = 0;
  *(a1 + 7376) = v15;
  v16 = (a1 + 7384);
  v17 = *(a1 + 7384);
  if (v17)
  {
    *(a1 + 7392) = v17;
    operator delete(v17);
    *v16 = 0;
    *(a1 + 7392) = 0;
    *(a1 + 7400) = 0;
  }

  *v16 = v54;
  v18 = v56;
  *(a1 + 7400) = v55;
  v55 = 0;
  v54 = 0uLL;
  *(a1 + 7408) = v18;
  *(a1 + 7416) = v57[0];
  *(a1 + 7426) = *(v57 + 10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  result = sub_765858(a1 + 7288);
  if (result)
  {
    v19 = *(a1 + 7432);
    v20 = sub_765990((a1 + 7288));
    v21 = v20;
    v40 = v19;
    if (v20 <= 0x23 && ((1 << v20) & 0x804000010) != 0)
    {
      v22 = -1;
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v22 = v19 + ~v5;
    }

    v23 = sub_765DE4(a1 + 7288);
    v24 = v23;
    v25 = *(a1 + 7288);
    v41 = v22;
    if (v25[172] == 1 && !*(a1 + 7344) || v25[173] == 1 && *(a1 + 7344) == 1 || v25[174] == 1 && *(a1 + 7344) == 2)
    {
      if (v23 < 4 || v23 - 60 < 4)
      {
        v26 = 0;
        *(a4 + 152) = 1;
        v21 = v23;
LABEL_41:
        *(a4 + 176) = sub_765A54(a1 + 7288);
        *(a4 + 160) = sub_765A78(a1 + 7288);
        *(a4 + 168) = sub_76569C(a1 + 7288);
        v30 = (v42 & 1) == 0 && (*(a4 + 152) & 1) == 0 && sub_7656C0((a1 + 7288));
        *(a4 + 153) = v30;
        *(a4 + 154) = sub_7656EC((a1 + 7288));
        *(a4 + 184) = v24;
        v31 = sub_766EFC(v13);
        *(a4 + 192) = v31 - sub_766EFC(v10);
        *(a4 + 200) = *(a1 + 7376) - *(a1 + 7344);
        if ((v26 & 1) == 0)
        {
          if (*(a4 + 152))
          {
            v32 = v40;
            v33 = v41;
          }

          else
          {
            v34 = sub_766C24((a1 + 7288));
            v32 = v40;
            v33 = v41;
            if (v34)
            {
              v33 = 0;
              v32 = *(a1 + 7424);
              v21 = 6;
            }
          }

          if (v5 <= v32 + 1)
          {
            v35 = v32 + 1;
          }

          else
          {
            v35 = v5;
          }

          if (v32 + 1 > v5)
          {
            do
            {
              while (1)
              {
                v36 = sub_4D1F50(a2, v5);
                v37 = v36[4];
                LODWORD(v45) = v37;
                BYTE6(v45) = BYTE6(v37);
                WORD2(v45) = WORD2(v37);
                sub_2B5AD0(a4, &v45);
                v38 = (*v36 - **v36);
                if (*v38 >= 0x63u)
                {
                  v39 = v38[49];
                  if (v39)
                  {
                    break;
                  }
                }

                *(a4 + 155) = *(a4 + 155);
                if (v35 == ++v5)
                {
                  goto LABEL_59;
                }
              }

              *(a4 + 155) |= *(*v36 + v39) == 12;
              ++v5;
            }

            while (v35 != v5);
          }

LABEL_59:
          *(a4 + 232) = v33;
          *(a4 + 24) = v21;
          *(a1 + 176) = 6;
        }

        return 1;
      }

      if (v23 != 98 && sub_7E7E4(3u))
      {
        sub_19594F8(&v45);
        v28 = sub_4A5C(&v45, "Received unexpected simple ManeuverType from RoundaboutModel: ", 62);
        v29 = sub_731E84(v28, v24);
        sub_4A5C(v29, " at ", 4);
        sub_4D1F50(a2, v5);
        std::ostream::operator<<();
        sub_1959680(&v45, v43);
        sub_7E854(v43, 3u);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        sub_1959728(&v45);
      }
    }

    else
    {
      v27 = sub_765A78(a1 + 7288);
      if (v21 != 26 && v27 < *(a1 + 608))
      {
        sub_6E1268(a1, a2, v5, a4);
        v26 = 1;
        goto LABEL_41;
      }
    }

    v26 = 0;
    goto LABEL_41;
  }

  return result;
}

void sub_6D96BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

unint64_t sub_6D9708@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_6E3CD4(a1, a2, a3, a4, a1 + 64);
  v11 = *(a1 + 168);
  if (*(a1 + 144) == *(a1 + 152) || v11 == -1)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    *(a5 + 32) = -1;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a5 + 72) = v13;
    *(a5 + 88) = v13;
    *(a5 + 104) = v13;
    *(a5 + 120) = -1;
    *(a5 + 128) = 0;
    *(a5 + 136) = -1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = vnegq_f64(v13);
    *(a5 + 176) = 0;
    *(a5 + 184) = 98;
    *(a5 + 192) = 0;
    *(a5 + 200) = 0;
    *(a5 + 208) = xmmword_229B660;
    *(a5 + 224) = 0;
    *(a5 + 232) = 0;
    *(a5 + 238) = 0;
  }

  else
  {
    v14 = sub_605E3C((a1 + 144), *(a1 + 168));
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = -1;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *(a5 + 72) = v15;
    *(a5 + 88) = v15;
    *(a5 + 104) = v15;
    *(a5 + 120) = -1;
    *(a5 + 128) = 0;
    *(a5 + 136) = -1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = vnegq_f64(v15);
    *(a5 + 176) = 0;
    *(a5 + 184) = 98;
    *(a5 + 192) = 0;
    *(a5 + 200) = 0;
    *(a5 + 208) = xmmword_229B660;
    *(a5 + 232) = 0;
    *(a5 + 224) = 0;
    *(a5 + 238) = 0;
    result = sub_6E1BA4(a1, a2, a3, a5, a1 + 64);
    if ((result & 1) == 0)
    {
      result = sub_6E42AC(a1, a2, a3, (a1 + 144), v11, a5);
      if ((result & 1) == 0)
      {
        v16 = *(a1 + 96);
        v17 = *(v14 + 32);
        if (v16 == v17 && WORD2(v16) == WORD2(v17) && ((v16 & 0xFF000000000000) == 0) == BYTE6(v17))
        {
          __src = *(a1 + 96);
          v34 = BYTE6(v16);
          v33 = WORD2(v16);
          v35 = v17;
          v37 = BYTE6(v17);
          v36 = WORD2(v17);
          result = sub_7061AC(a5, &__src, &v38, 2uLL);
          *(a5 + 24) = 35;
        }

        else
        {
          if ((sub_6DDFC8(a1, (a1 + 64), (a1 + 144), v11) & 1) == 0)
          {
            sub_6DF834(a1, a1 + 64, (a1 + 144), v11);
          }

          v19 = *a5;
          v18 = *(a5 + 8);
          v20 = sub_4D1DC0(a2);
          if (v20 - a3 >= (v18 - v19) >> 3)
          {
            v21 = (v18 - v19) >> 3;
          }

          else
          {
            v21 = v20 - a3;
          }

          v22 = *a5;
          sub_4D0560();
          if (!sub_704A54(v22, v22 + 8 * v21, v24, v23 + a3))
          {
            goto LABEL_24;
          }

          sub_6E4A20(a5, v21);
          v25 = *(a5 + 208);
          v26 = (*(a5 + 8) - *a5) >> 3;
          if (v25 != -1 && *(a5 + 216) != 0x7FFFFFFFFFFFFFFFLL && v25 >= v26 - 1)
          {
            *(a5 + 208) = v26 - 1;
            *(a5 + 216) = 0;
          }

          v27 = sub_4D1F50(a2, a3 + v26 - 1);
          result = sub_6A9E6C(a1 + 3680, v27);
          if (result)
          {
LABEL_24:
            sub_6E3CD4(a1, a2, a3, a4, a1 + 64);
            *(a1 + 176) = 0;
            sub_6DBF88(a1, a2, a3, (a1 + 64), a5, 0);
            v29 = *(a5 + 24);
            if ((v29 == 3 || !v29) && sub_6E0F70(a1, a2, a3))
            {
              *(a5 + 24) = 12;
            }

            v30 = sub_70E7C4(a1 + 1432, (a1 + 64), (a1 + 144), v11, v28);
            if ((*(a5 + 24) & 0xFFFFFFFE) == 0x14 && v30 == v11 && 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 152) - *(a1 + 144)) >> 3) >= 2)
            {
              v31 = sub_605E3C((a1 + 144), v11 == 0);
              if (sub_6DF044(a1, a2, a3 + 1, v31))
              {
                *(a5 + 24) = 0;
              }
            }

            result = sub_6DCFD0(a1, a5);
            *(a5 + 232) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_6D9BF8(uint64_t a1, char **a2, uint64_t *a3, unint64_t a4)
{
  v8 = sub_605E3C(a3, a4);
  v9 = v8;
  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
      v14 = v10[*(v11 + 23)];
      v15 = v14 > 0x36;
      v16 = (1 << v14) & 0x44000000000008;
      if (!v15 && v16 != 0)
      {
        goto LABEL_38;
      }
    }
  }

  v18 = &(*v8)[-**v8];
  if (*v18 >= 0x2Fu)
  {
    v19 = *(v18 + 23);
    if (v19)
    {
      v20 = (*v8)[v19];
      v15 = v20 > 0x36;
      v21 = (1 << v20) & 0x44000000000008;
      if (!v15 && v21 != 0)
      {
        v23 = 0;
        v24 = 6;
LABEL_56:
        v45 = 0x100000000;
        return v45 | v24 | (v23 << 8);
      }
    }
  }

  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
LABEL_38:
      v25 = v10[v13];
      if (v25 <= 0x36 && ((1 << v25) & 0x44000000000008) != 0)
      {
        v27 = &(*v8)[-**v8];
        if (*v27 >= 0x2Fu)
        {
          v28 = *(v27 + 23);
          if (v28)
          {
            v29 = (*v8)[v28];
            v15 = v29 > 0x36;
            v30 = (1 << v29) & 0x44000000000008;
            if (!v15 && v30 != 0)
            {
              goto LABEL_43;
            }
          }
        }
      }

      v32 = v10[v13];
      if (v32 <= 0x36 && ((1 << v32) & 0x44000000000008) != 0)
      {
        if ((v34 = &(*v8)[-**v8], *v34 < 0x2Fu) || (v35 = *(v34 + 23)) == 0 || ((v36 = (*v8)[v35], v15 = v36 > 0x36, v37 = (1 << v36) & 0x44000000000008, !v15) ? (v38 = v37 == 0) : (v38 = 1), v38))
        {
          v23 = 0;
          v24 = 7;
          goto LABEL_56;
        }
      }

      if (v10[v13] == 17)
      {
        goto LABEL_42;
      }
    }
  }

  v39 = &(*v8)[-**v8];
  if (*v39 >= 0x2Fu)
  {
    v40 = *(v39 + 23);
    if (v40)
    {
      if ((*v8)[v40] == 17)
      {
LABEL_42:
        v41 = sub_70E748(a1 + 1432, a2);
        if (v41 == sub_70E748(a1 + 1432, v9))
        {
LABEL_43:
          v24 = 0;
          v23 = 0;
          goto LABEL_56;
        }
      }
    }
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 0);
  if ((v42 & 0x100000000) != 0 || (v42 = sub_6DD3AC(a1, a2, v9, a3, 1), (v42 & 0x100000000) != 0))
  {
    v23 = v42 >> 8;
    goto LABEL_54;
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 2);
  v23 = v42 >> 8;
  if ((v42 & 0x100000000) != 0)
  {
LABEL_54:
    v24 = v42;
    v45 = v42 & 0xFF00000000;
    return v45 | v24 | (v23 << 8);
  }

  v44 = sub_6DD944(a1, a2, a3, a4, v43);
  v45 = 0x100000000;
  if (v44)
  {
    v24 = 5;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  if (v44)
  {
    v23 = 0;
  }

  return v45 | v24 | (v23 << 8);
}

uint64_t sub_6D9EC4(uint64_t a1, int **a2, __int128 **a3)
{
  v5 = (*a2 - **a2);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      v7 = *(*a2 + v6);
      if (v7 == 9 || v7 == 20)
      {
        return 0;
      }
    }
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    goto LABEL_16;
  }

  do
  {
    v13 = *v10;
    v14 = v10[1];
    v25 = *(v10 + 4);
    v23 = v13;
    v24 = v14;
    if (fabs(sub_70E2E0(a1 + 1432, a2, &v23)) > *(a1 + 184))
    {
      return 0;
    }

    v10 = (v10 + 40);
  }

  while (v10 != v11);
  v10 = *a3;
  v11 = a3[1];
LABEL_16:
  while (v10 != v11)
  {
    v15 = *v10;
    v16 = v10[1];
    v25 = *(v10 + 4);
    v23 = v15;
    v24 = v16;
    v17 = sub_3116D0(&v23);
    v18 = (v23 - *v23);
    v19 = *v18;
    if (v19 >= 0x2F)
    {
      if (v18[23])
      {
        v20 = *(v23 + v18[23]);
        if (v20 == 9)
        {
          goto LABEL_15;
        }

        if (v20 == 20 || *(a1 + 709) == 0)
        {
          if (v20 == 20)
          {
            goto LABEL_15;
          }
        }

        else if (v20 == 43)
        {
          goto LABEL_15;
        }
      }
    }

    else if (v19 < 9)
    {
      goto LABEL_13;
    }

    v22 = v18[4];
    if (v22)
    {
      if (*(v23 + v22) > *(a1 + 720))
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (*(a1 + 720) < 0)
    {
      return 0;
    }

LABEL_14:
    if ((sub_6E414C(a1, v17) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v10 = (v10 + 40);
  }

  return 1;
}

uint64_t sub_6DA060(uint64_t a1, int **a2, int ***a3, unint64_t a4)
{
  if (*(a1 + 1073) != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 0x9B || !v5[77] || (*(v4 + v5[77]) & 0x4000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v6 < 0x9B || !v5[77] || (*(v4 + v5[77]) & 0x100000) == 0)
  {
    goto LABEL_27;
  }

  v8 = 0;
  if (a3[1] - *a3 != 80)
  {
    v9 = 0;
    return v9 | v8;
  }

  v9 = 0;
  if (a4 <= 1)
  {
    v8 = v5[23];
    if (!v5[23])
    {
LABEL_28:
      v9 = 0;
      return v9 | v8;
    }

    if (!*(v4 + v8))
    {
      v14 = sub_605E3C(a3, 0);
      v15 = (*v14 - **v14);
      if (*v15 >= 0x2Fu)
      {
        v16 = v15[23];
        if (v16)
        {
          v17 = *(*v14 + v16);
          v18 = v17 > 0x1A;
          v19 = (1 << v17) & 0x4810001;
          if (!v18 && v19 != 0)
          {
            v21 = sub_605E3C(a3, 1uLL);
            if (sub_312EB8(v21))
            {
              if (sub_6DEE8C(a1, a2, a3) == 2)
              {
                v22 = sub_605E3C(a3, 0);
                v23 = sub_605E3C(a3, 1uLL);
                v24 = sub_6DAFB0(a1, a2, v22, v23);
                if (v24 < v25 != (a4 == 0))
                {
                  v9 = 66;
                }

                else
                {
                  v9 = 65;
                }

                v8 = 0x100000000;
                return v9 | v8;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  return v9 | v8;
}

BOOL sub_6DA224(uint64_t a1, uint64_t a2, int **a3, uint64_t *a4, unint64_t a5, unint64_t a6, char a7)
{
  if (a5 > 1)
  {
    return 0;
  }

  v7 = 0;
  if (sub_6DDAC0(a1, a2, a3, a4, a5, a6) && (a7 & 1) == 0)
  {
    v140 = a6;
    v16 = sub_605E3C(a4, a5);
    v17 = sub_605E3C(a4, 1 - a5);
    v18 = sub_335660(*a1, a3, 0);
    v169 = v18;
    v170 = v19;
    v167 = sub_335660(*a1, a3, 1);
    v168 = v20;
    v142 = v16;
    v21 = sub_335660(*a1, v16, 0);
    v141 = v17;
    v22 = sub_335660(*a1, v17, 0);
    v23 = v167 - v18;
    v24 = HIDWORD(v167) - HIDWORD(v18);
    v25 = v23 * v23 + v24 * v24;
    if (v25 == 0.0)
    {
      goto LABEL_10;
    }

    v26 = -v25;
    if (v25 > 0.0)
    {
      v26 = v23 * v23 + v24 * v24;
    }

    if (v26 < 2.22044605e-16)
    {
LABEL_10:
      v27 = 0.0;
    }

    else
    {
      v27 = ((v21 - v18) * v23 + (HIDWORD(v21) - HIDWORD(v18)) * v24) / v25;
    }

    v28 = sub_6EFC0(&v169, &v167, v27);
    v29 = ((v28 - v21) * (v28 - v21) + (HIDWORD(v28) - HIDWORD(v21)) * (HIDWORD(v28) - HIDWORD(v21)));
    v30 = sqrt(v29);
    LODWORD(v29) = v169;
    v31 = *&v29;
    LODWORD(v29) = HIDWORD(v169);
    v32 = *&v29;
    LODWORD(v34) = HIDWORD(v167);
    LODWORD(v33) = v167;
    v35 = v33 - v31;
    v36 = v34 - v32;
    v37 = v35 * v35 + v36 * v36;
    if (v37 == 0.0)
    {
      v38 = v142;
    }

    else
    {
      v39 = -v37;
      if (v37 > 0.0)
      {
        v39 = v35 * v35 + v36 * v36;
      }

      v38 = v142;
      if (v39 >= 2.22044605e-16)
      {
        v40 = ((v22 - v31) * v35 + (HIDWORD(v22) - v32) * v36) / v37;
        goto LABEL_17;
      }
    }

    v40 = 0.0;
LABEL_17:
    v41 = v30 / 100.0;
    v42 = sub_6EFC0(&v169, &v167, v40);
    *&v43 = sqrt(((v42 - v22) * (v42 - v22) + (HIDWORD(v42) - HIDWORD(v22)) * (HIDWORD(v42) - HIDWORD(v22))));
    v44 = *&v43 / 100.0;
    LODWORD(v43) = *(a1 + 360);
    v45 = v43;
    LODWORD(v43) = *(a1 + 356);
    v46 = v43;
    v47 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL);
    if (v47 <= 0xFFFFFFFEFFFFFFFFLL && v47)
    {
      v7 = 0;
      v48 = sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v38[4] & 0xFFFFFFFFFFFFFFLL) ^ 1;
      if (v44 <= v45)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      v50 = v44 <= v45 || v41 >= v46;
      if (v41 >= v44)
      {
        v49 = 1;
      }

      if (v49 != 1 || !v50)
      {
        return v7;
      }
    }

    else
    {
      v51 = v41 >= v46 || v44 <= v45;
      if (!v51)
      {
        return 0;
      }
    }

    v52 = v38[4];
    v53 = v52 & 0xFF000000000000;
    v54 = sub_2B51D8(*a1, v52 & 0xFFFFFFFFFFFFLL);
    v55 = (v54 - *v54);
    v56 = *v55;
    if (v53)
    {
      v57 = v141;
      if (v56 < 0x29 || (v58 = v55[20]) == 0)
      {
LABEL_44:
        v59 = sub_6DDF50(*a1, v38[4] & 0xFFFFFFFFFFFFLL | (((v38[4] & 0xFF000000000000) == 0) << 48));
LABEL_45:
        v60 = v57[4];
        v61 = v60 & 0xFF000000000000;
        v62 = sub_2B51D8(*a1, v60 & 0xFFFFFFFFFFFFLL);
        v63 = (v62 - *v62);
        v64 = *v63;
        if (v61)
        {
          if (v64 < 0x29 || (v65 = v63[20]) == 0)
          {
LABEL_52:
            v66 = sub_6DDF50(*a1, v57[4] & 0xFFFFFFFFFFFFLL | (((v57[4] & 0xFF000000000000) == 0) << 48));
LABEL_53:
            if (v59)
            {
              v67 = v66 == 0;
            }

            else
            {
              v67 = 1;
            }

            v68 = !v67;
            v139 = v68;
            if (v67)
            {
              v69 = v66;
              if (sub_312B7C(a3, v38[4] & 0xFFFFFFFFFFFFFFLL))
              {
                v137 = sub_312B7C(a3, v57[4] & 0xFFFFFFFFFFFFFFLL) != 0;
              }

              else
              {
                v137 = 0;
              }

              v66 = v69;
            }

            else
            {
              v137 = 0;
            }

            v70 = v66;
            if (v66 >= v59)
            {
              v71 = v59;
            }

            else
            {
              v71 = v66;
            }

            v138 = v71;
            v136 = sub_70E748(a1 + 1432, v57);
            v72 = sub_70E748(a1 + 1432, v142);
            v73 = *v142;
            v74 = &(*v142)[-**v142];
            v75 = *v74;
            if (*(v142 + 38))
            {
              if (v75 >= 0x9B)
              {
                v76 = *(v74 + 77);
                if (*(v74 + 77))
                {
                  v77 = 2;
LABEL_75:
                  v78 = (*&v73[v76] & v77) != 0;
                  goto LABEL_77;
                }
              }
            }

            else if (v75 >= 0x9B)
            {
              v76 = *(v74 + 77);
              if (*(v74 + 77))
              {
                v77 = 1;
                goto LABEL_75;
              }
            }

            v78 = 0;
LABEL_77:
            v79 = *v57;
            v80 = &(*v57)[-**v57];
            v81 = *v80;
            if (*(v57 + 38))
            {
              if (v81 >= 0x9B)
              {
                v82 = *(v80 + 77);
                if (*(v80 + 77))
                {
                  v83 = 2;
LABEL_84:
                  v78 ^= (*&v79[v82] & v83) != 0;
                }
              }
            }

            else if (v81 >= 0x9B)
            {
              v82 = *(v80 + 77);
              if (*(v80 + 77))
              {
                v83 = 1;
                goto LABEL_84;
              }
            }

            if (v78)
            {
              return 0;
            }

            if (v75 >= 0x9B && (v84 = *(v74 + 77)) != 0)
            {
              v85 = (v73[v84 + 1] >> 4) & 1;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v85 = 0;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            if (*(v80 + 77))
            {
              if (v85 == (v79[*(v80 + 77) + 1] & 0x10) >> 4)
              {
                goto LABEL_95;
              }

              return 0;
            }

LABEL_94:
            if ((v85 & 1) == 0)
            {
LABEL_95:
              v135 = v72;
              memset(v144, 0, sizeof(v144));
              v145 = 0;
              v146 = -1;
              v147 = 0;
              v148 = 0;
              v149 = 0;
              v150 = 0;
              v86.f64[0] = NAN;
              v86.f64[1] = NAN;
              v151 = v86;
              v152 = v86;
              v153 = v86;
              v154 = -1;
              v155 = 0;
              v156 = -1;
              v157 = 0;
              v158 = 0;
              v159 = vnegq_f64(v86);
              v160 = 0;
              v161 = 98;
              v162 = 0;
              v163 = 0;
              v164 = xmmword_229B660;
              v165 = 0;
              v166[0] = 0;
              *(v166 + 6) = 0;
              if (sub_6DDFC8(a1, a3, a4, 1 - a5))
              {
                goto LABEL_96;
              }

              v87 = v59 - v70;
              v88 = &(*v142)[-**v142];
              if (*v88 >= 0x2Fu)
              {
                v89 = *(v88 + 23);
                if (v89)
                {
                  v90 = (*v142)[v89];
                  if (v90 <= 0x2A && ((1 << v90) & 0x50426810004) != 0)
                  {
                    v91 = &(*v57)[-**v57];
                    if (*v91 >= 0x2Fu)
                    {
                      v92 = *(v91 + 23);
                      if (v92)
                      {
                        v93 = (*v57)[v92];
                        if (v93 <= 0x2A && ((1 << v93) & 0x50426810004) != 0)
                        {
                          v7 = v87 < *(a1 + 428);
                          goto LABEL_97;
                        }
                      }
                    }
                  }
                }
              }

              v94 = *v57;
              v95 = &(*v57)[-**v57];
              v96 = *v95;
              if (v96 < 0x2F)
              {
                goto LABEL_116;
              }

              v97 = *(v95 + 23);
              if (*(v95 + 23) && v94[v97] == 28)
              {
                goto LABEL_96;
              }

              if (v96 < 0x9B || (v98 = *(v95 + 77)) == 0 || (v94[v98] & 4) == 0 || (v99 = 0, v97) && (v100 = v94[v97], v100 <= 0x2A) && ((1 << v100) & 0x50426810004) != 0)
              {
LABEL_116:
                v99 = (sub_6AA260(a1 + 3680, v57) & 1) != 0 || sub_70EED4((a1 + 1432), v57);
              }

              if (sub_312F00(a3) && (sub_312F00(v142) & v99 & 1) != 0 || sub_70E748(a1 + 1432, v142) < *(a1 + 368) && sub_70E748(a1 + 1432, v57) > *(a1 + 368))
              {
                goto LABEL_96;
              }

              v102 = &(*v57)[-**v57];
              if (*v102 >= 0x2Fu)
              {
                v103 = *(v102 + 23);
                if (v103)
                {
                  v104 = (*v57)[v103];
                  if (v104 <= 0x2D && ((1 << v104) & 0x208040000000) != 0)
                  {
                    v105 = &(*v142)[-**v142];
                    if (*v105 < 0x2Fu)
                    {
                      goto LABEL_96;
                    }

                    v106 = *(v105 + 23);
                    if (!v106)
                    {
                      goto LABEL_96;
                    }

                    v7 = 0;
                    v107 = (*v142)[v106];
                    if (v107 > 0x2D || ((1 << v107) & 0x208040000000) == 0)
                    {
                      goto LABEL_97;
                    }
                  }
                }
              }

              v108 = sub_6DEB50(a1, a2, a3, v141, v142, v101);
              v109 = sub_70E484(a1 + 1432, a2, a3, v142, 0, v108);
              v110 = sub_70E484(a1 + 1432, a2, a3, v141, 0, v109);
              if (v108 >= sub_6DEBC0(a1, a2, a3, v141, v142))
              {
                goto LABEL_96;
              }

              if (((v140 == a5) & sub_313CC4(a3)) == 1)
              {
                if (sub_712998(a1 + 1432, a3, v142) && !sub_712998(a1 + 1432, a3, v141))
                {
                  goto LABEL_96;
                }

                if (sub_712998(a1 + 1432, a3, v141) && !sub_712998(a1 + 1432, a3, v142))
                {
                  goto LABEL_190;
                }
              }

              if (sub_312DF0(v142) && sub_312E54(v142) && sub_311BB0(v142) >= 2)
              {
                v111 = (*a3 - **a3);
                if (*v111 >= 0x9Bu && (v112 = v111[77]) != 0)
                {
                  if (v110 >= 0.0 == *(*a3 + v112 + 1) >> 7)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v110 < 0.0)
                {
                  goto LABEL_96;
                }
              }

              if (sub_3130E8(a3))
              {
                v113 = fabs(v110);
                if (fabs(v109) <= *(a1 + 184) == v113 > *(a1 + 184))
                {
                  goto LABEL_96;
                }
              }

              v114 = *v142;
              v115 = &(*v142)[-**v142];
              v116 = *v115;
              if (v116 >= 0x2F && (v117 = *(v115 + 23), *(v115 + 23)) && v114[*(v115 + 23)] == 44)
              {
                v143 = 0;
              }

              else
              {
                v118 = (*v141 - **v141);
                if (*v118 < 0x2Fu)
                {
                  goto LABEL_168;
                }

                v119 = v118[23];
                if (!v119 || *(*v141 + v119) != 44)
                {
                  goto LABEL_168;
                }

                v143 = 0;
                if (v116 < 0x2F)
                {
                  goto LABEL_160;
                }

                v117 = *(v115 + 23);
                if (!*(v115 + 23))
                {
                  goto LABEL_160;
                }
              }

              if (v114[v117] == 44)
              {
                v120 = (*v141 - **v141);
                if (*v120 >= 0x2Fu)
                {
                  v121 = v120[23];
                  if (v121)
                  {
                    if (*(*v141 + v121) == 44)
                    {
LABEL_162:
                      v122 = sub_31DDCC(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL);
                      if (v122 <= 0xFFFFFFFEFFFFFFFFLL)
                      {
                        if (v122)
                        {
                          v123 = sub_31DDCC(*a1, v141[4] & 0xFFFFFFFFFFFFFFLL);
                          if (v123 <= 0xFFFFFFFEFFFFFFFFLL && v123 && (sub_31EE90(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL, v141[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0)
                          {
                            goto LABEL_96;
                          }
                        }
                      }

                      v113 = vabdd_f64(v110, v109);
                      if (v113 < *(a1 + 432))
                      {
                        goto LABEL_96;
                      }

LABEL_168:
                      v124 = v139;
                      if (v87 >= 0)
                      {
                        v124 = 0;
                      }

                      if (v124)
                      {
                        goto LABEL_190;
                      }

                      v125 = *(a1 + 364);
                      if (v138 > v125 || v59 == v70 && v138 == v125)
                      {
                        goto LABEL_190;
                      }

                      if (v87 < 0 || (LOWORD(v113) = *(a1 + 424), v108 < vmovl_s16(*&v113).i32[0]))
                      {
                        v126 = *(a1 + 372);
                        v127 = *(a1 + 380);
                        v128 = (*v141 - **v141);
                        if (*v128 >= 0x2Fu)
                        {
                          v129 = v128[23];
                          if (v129)
                          {
                            v130 = *(*v141 + v129);
                            if (v130 <= 0x2A && ((1 << v130) & 0x50426810004) != 0)
                            {
                              v131 = (*a3 - **a3);
                              if (*v131 >= 0x9Bu && (v132 = v131[77]) != 0)
                              {
                                if (v110 >= 0.0 == *(*a3 + v132 + 1) >> 7)
                                {
                                  goto LABEL_187;
                                }
                              }

                              else if (v110 < 0.0)
                              {
                                goto LABEL_187;
                              }

                              if (fabs(v109) < *(a1 + 184))
                              {
                                v126 = *(a1 + 376);
                                v127 = *(a1 + 384);
                              }
                            }
                          }
                        }

LABEL_187:
                        v51 = v87 <= v126;
                        v133 = v139;
                        if (!v51)
                        {
                          v133 = 0;
                        }

                        if ((v133 & 1) == 0)
                        {
                          if (sub_6DED40(a1, v142, v141) || v137 && sub_6DEDA0(a1, a3, v142, v141))
                          {
                            goto LABEL_96;
                          }

                          v134 = v139;
                          if (v136 - v135 > v127)
                          {
                            v134 = 1;
                          }

                          if (v134 == 1 && ((v139 & 1) != 0 || sub_70E748(a1 + 1432, v142) < *(a1 + 368) || sub_70E748(a1 + 1432, v141) < *(a1 + 368) || v136 - v135 > *(a1 + 388)))
                          {
                            goto LABEL_96;
                          }
                        }

LABEL_190:
                        v7 = 1;
                        goto LABEL_97;
                      }

LABEL_96:
                      v7 = 0;
LABEL_97:
                      sub_5ECFBC(v144);
                      return v7;
                    }
                  }
                }
              }

LABEL_160:
              if ((sub_6DECF4(&v143, v142) & 1) == 0 && !sub_6DECF4(&v143, v141))
              {
                goto LABEL_168;
              }

              goto LABEL_162;
            }

            return 0;
          }
        }

        else
        {
          if (v64 < 0x27)
          {
            goto LABEL_52;
          }

          v65 = v63[19];
          if (!v65)
          {
            goto LABEL_52;
          }
        }

        v66 = *(v62 + v65 + *(v62 + v65));
        if (v66)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v57 = v141;
      if (v56 < 0x27)
      {
        goto LABEL_44;
      }

      v58 = v55[19];
      if (!v58)
      {
        goto LABEL_44;
      }
    }

    v59 = *(v54 + v58 + *(v54 + v58));
    if (v59)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  return v7;
}

void sub_6DAEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

double sub_6DAFB0(uint64_t a1, int **a2, int **a3, int **a4)
{
  v8 = *a2;
  v9 = (*a2 - **a2);
  v10 = *v9;
  if (*(a2 + 38))
  {
    if (v10 < 0x49)
    {
      goto LABEL_11;
    }

    v11 = v9[36];
    if (!v9[36])
    {
      goto LABEL_11;
    }
  }

  else if (v10 < 0x4B || (v11 = v9[37]) == 0)
  {
LABEL_11:
    v12 = -1;
    v13 = *a3;
    v14 = (*a3 - **a3);
    v15 = *v14;
    if (*(a3 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v15 >= 0x49)
    {
      v16 = v14[36];
      if (v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v12 = *(v8 + v11);
  v13 = *a3;
  v14 = (*a3 - **a3);
  v15 = *v14;
  if (!*(a3 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v15 >= 0x4B)
  {
    v16 = v14[37];
    if (v16)
    {
LABEL_14:
      v17 = *(v13 + v16);
      goto LABEL_16;
    }
  }

LABEL_15:
  v17 = 0xFFFF;
LABEL_16:
  v18 = v12 + 18000;
  v19 = v12 - 18000;
  if ((v18 >> 5) < 0x465u)
  {
    v19 = v18;
  }

  v20 = v17 - v19;
  if (v20 > 18000)
  {
    v20 -= 36000;
  }

  if (v20 < -17999)
  {
    v20 += 36000;
  }

  if (!*(a2 + 38))
  {
    if (v10 < 0x4B)
    {
      goto LABEL_29;
    }

    v21 = v9[37];
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_28:
    v22 = *(v8 + v21);
    goto LABEL_30;
  }

  if (v10 >= 0x49)
  {
    v21 = v9[36];
    if (v21)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v22 = -1;
LABEL_30:
  v23 = v20 / 100.0;
  v24 = (*a4 - **a4);
  v25 = *v24;
  if (!*(a4 + 38))
  {
    if (v25 < 0x49)
    {
      goto LABEL_37;
    }

    v26 = v24[36];
    if (!v26)
    {
      goto LABEL_37;
    }

LABEL_36:
    v27 = *(*a4 + v26);
    goto LABEL_38;
  }

  if (v25 >= 0x4B)
  {
    v26 = v24[37];
    if (v26)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  v27 = 0xFFFF;
LABEL_38:
  v28 = v22 + 18000;
  v29 = v22 - 18000;
  if ((v28 >> 5) < 0x465u)
  {
    v29 = v28;
  }

  v30 = v27 - v29;
  if (v30 > 18000)
  {
    v30 -= 36000;
  }

  if (v30 < -17999)
  {
    v30 += 36000;
  }

  v31 = v30 / 100.0;
  v32 = sub_311544(a3);
  v33 = sub_311544(a4);
  if (vabdd_f64(v23, v31) < *(a1 + 344) && v32 != v33)
  {
    v23 = sub_70DE94(a1 + 1432, a2, a3);
    sub_70DE94(a1 + 1432, a2, a4);
  }

  return v23;
}

BOOL sub_6DB214(uint64_t a1, int **a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_605E3C(a3, a4);
  v8 = *a3;
  v9 = *(a3 + 8);
  if (*a3 == v9)
  {
    v11 = 0;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (sub_70EE0C(a1 + 1432, v8) || *(a1 + 440) == 1 && sub_70EE70(a1 + 1432, v8))
      {
        ++v10;
      }

      v8 += 5;
    }

    while (v8 != v9);
    v11 = v10 > 2;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  v15 = v13[23];
  if (v13[23])
  {
    v16 = *(v12 + v13[23]);
    v17 = v16 > 0x2A;
    v18 = (1 << v16) & 0x50426810004;
    if (!v17 && v18 != 0)
    {
      if (v11)
      {
        return 1;
      }

      goto LABEL_28;
    }
  }

LABEL_19:
  v20 = &(*v7)[-**v7];
  if (*v20 >= 0x2Fu)
  {
    v21 = *(v20 + 23);
    if (v21)
    {
      v22 = (*v7)[v21];
      v17 = v22 > 0x2A;
      v23 = (1 << v22) & 0x50426810004;
      v24 = v17 || v23 == 0;
      if (!v24 && v11)
      {
        return 1;
      }
    }
  }

  if (v14 >= 0x2F)
  {
    v15 = v13[23];
    if (v13[23])
    {
LABEL_28:
      v25 = *(v12 + v15) - 2;
      if (v25 < 0x29 && ((0x14109A04001uLL >> v25) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v55 = sub_3116D0(a2);
  if (sub_3A8760((a1 + 7520), &v55))
  {
    return 1;
  }

  v27 = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, v7[4] & 0xFFFFFFFFFFFFFFLL);
  memset(__p, 0, sizeof(__p));
  if ((v27 & 1) == 0)
  {
    if (*(a1 + 1170) == 1)
    {
      v28 = (*a2 - **a2);
      if (*v28 >= 0x2Fu)
      {
        v29 = v28[23];
        if (v29)
        {
          if (!*(*a2 + v29))
          {
            v30 = &(*v7)[-**v7];
            if (*v30 >= 0x2Fu)
            {
              v31 = *(v30 + 23);
              if (v31)
              {
                if (!(*v7)[v31])
                {
                  v53 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
                  if (v53 <= 0xFFFFFFFEFFFFFFFFLL && v53 && *(a3 + 8) != sub_708F08(*a3, *(a3 + 8), v7))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    v32 = sub_70E748(a1 + 1432, a2);
    v33 = v32 - sub_70E748(a1 + 1432, v7);
    if (v33 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = -v33;
    }

    v35 = *(a1 + 1168);
    v36 = a2[4];
    v37 = sub_2B51D8(*a1, v36 & 0xFFFFFFFFFFFFLL);
    v38 = (v37 - *v37);
    v39 = *v38;
    if ((v36 & 0xFF000000000000) != 0)
    {
      if (v39 < 0x29 || (v40 = v38[20]) == 0)
      {
LABEL_54:
        v41 = 0;
LABEL_55:
        v42 = v7[4];
        v43 = sub_2B51D8(*a1, v42 & 0xFFFFFFFFFFFFLL);
        v44 = (v43 - *v43);
        v45 = *v44;
        if ((v42 & 0xFF000000000000) != 0)
        {
          if (v45 >= 0x29)
          {
            v46 = v44[20];
            if (v46)
            {
LABEL_58:
              v47 = 0;
              v46 = *(v43 + v46 + *(v43 + v46));
              if (v41 >= 1 && v46 >= 1)
              {
                v48 = v41 - v46;
                if (v48 < 0)
                {
                  v48 = -v48;
                }

                v47 = v48 >= *(a1 + 1169);
                v46 = 1;
                if (v34 < v35)
                {
LABEL_74:
                  sub_73F798(a1 + 7480, a2, __p);
                }

                goto LABEL_70;
              }

              goto LABEL_69;
            }

LABEL_66:
            v47 = 0;
            if (v34 < v35)
            {
              goto LABEL_74;
            }

LABEL_70:
            if (!v41)
            {
              v47 = 1;
            }

            if (!v47 && v46)
            {
              goto LABEL_74;
            }

            v52 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
            if (v52 > 0xFFFFFFFEFFFFFFFFLL || !v52)
            {
              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (v45 >= 0x27)
        {
          v46 = v44[19];
          if (v46)
          {
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        v46 = 0;
        v47 = 0;
LABEL_69:
        if (v34 < v35)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v39 < 0x27)
      {
        goto LABEL_54;
      }

      v40 = v38[19];
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    v41 = *(v37 + v40 + *(v37 + v40));
    goto LABEL_55;
  }

  if (sub_6DC420(a1, a2) & 1) != 0 || (sub_6DC420(a1, v7))
  {
    return 0;
  }

  v49 = sub_6DF4EC(a1, a2, v7, v27);
  if (v49)
  {
    return 1;
  }

  if (*(a1 + 871) == 1)
  {
    v50 = sub_6A2D94(*(a1 + 24), a2, 0);
    if (v50 != sub_6A2D94(*(a1 + 24), v7, 0))
    {
      return 1;
    }
  }

  v51 = sub_70E2E0(a1 + 1432, a2, v7);
  if (*(a1 + 1075) == 1 && v51 > *(a1 + 184) && sub_313270(a2))
  {
    return 1;
  }

  if (*(a1 + 1074) != 1 || sub_313CC4(a2))
  {
    return 0;
  }

  return sub_313D40(v7);
}

void sub_6DB768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_6DB7A4(uint64_t a1, int **a2, int **a3, int ***a4, char a5, double a6)
{
  if (a5)
  {
    return 0;
  }

  v34[12] = v6;
  v34[13] = v7;
  v33 = fabs(sub_70E16C(a1 + 1432, a2, a3, a6));
  if (v33 < *(a1 + 1144))
  {
    return 0;
  }

  v13 = *a2;
  v14 = (*a2 - **a2);
  v15 = *v14;
  if (v15 < 0x2F || !v14[23])
  {
    goto LABEL_19;
  }

  v16 = *(v13 + v14[23]);
  if (v16 <= 0x2A)
  {
    if (v16 != 6 && v16 != 12)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v16 == 44)
  {
    return 0;
  }

  if (v16 == 43)
  {
LABEL_16:
    if (v15 < 0x9B)
    {
      return 0;
    }

    v18 = v14[77];
    if (!v18 || (*(v13 + v18 + 2) & 0x20) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v19 = *a3;
  v20 = (*a3 - **a3);
  v21 = *v20;
  if (v21 < 0x2F || !v20[23])
  {
    goto LABEL_32;
  }

  v22 = *(v19 + v20[23]);
  if (v22 > 0x2A)
  {
    if (v22 == 44)
    {
      return 0;
    }

    if (v22 != 43)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v22 == 6 || v22 == 12)
  {
LABEL_29:
    if (v21 >= 0x9B)
    {
      v24 = v20[77];
      if (v24)
      {
        if ((*(v19 + v24 + 2) & 0x20) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

LABEL_32:
  v32 = sub_311A24(v13, *(a2 + 38));
  v25 = (*a2 - **a2);
  if (*v25 < 0x43u)
  {
    v28 = 0;
    v27 = a4;
  }

  else
  {
    v26 = v25[33];
    v27 = a4;
    if (v26)
    {
      v28 = *(*a2 + v26);
    }

    else
    {
      v28 = 0;
    }
  }

  v31 = v28;
  v29 = *v27;
  v30 = v27[1];
  v34[0] = &v32;
  v34[1] = a1;
  v34[2] = &v31;
  v34[3] = a3;
  v34[4] = a2;
  v34[5] = &v33;
  if (v29 == v30)
  {
    return 0;
  }

  do
  {
    result = sub_708B8C(v34, v29);
    if (result)
    {
      break;
    }

    v29 += 5;
  }

  while (v29 != v30);
  return result;
}