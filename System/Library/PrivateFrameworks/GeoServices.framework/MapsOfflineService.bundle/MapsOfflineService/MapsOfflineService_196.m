void sub_BC763C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_BC7680(void *a1, uint64_t a2)
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

void sub_BC7A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BC7A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_BC7AB4(void *a1, uint64_t a2)
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

void sub_BC7EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_15DB5A8(&__p);
  sub_15D8C38(&a30);
  _Unwind_Resume(a1);
}

unint64_t sub_BC7F54(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 28) != -1 && *(a2 + 32) != 0)
  {
    v73[11] = v3;
    v73[12] = v4;
    v6 = a3;
    v7 = result;
    v65 = *(a2 + 28);
    v61 = *(a2 + 36);
    v57 = *(a2 + 44);
    v58 = *(a2 + 40);
    v71 = -1;
    v72 = -1;
    result = sub_2FEF94(0xEF7BDEF7BDEF7BDFLL * ((*(a3 + 56) - *(a3 + 48)) >> 3));
    if (!result)
    {
      goto LABEL_79;
    }

    v8 = 0;
    v54 = -1;
    v59 = -1;
    v62 = -1;
    v66 = -1;
    v55 = v6;
    v56 = result;
LABEL_7:
    while (2)
    {
      v9 = *(v6 + 48) + 248 * v8;
      v69 = -1;
      v70 = -1;
      v68 = v9;
      result = sub_2FEF94(0xEEEEEEEEEEEEEEEFLL * ((*(v9 + 104) - *(v9 + 96)) >> 2));
      if (result)
      {
        v63 = v8;
        v10 = 0;
        v11 = 0;
        v67 = 60 * result;
        v60 = -1;
        v64 = -1;
        v12 = -1;
        while (1)
        {
          v13 = *(v68 + 96);
          v14 = v13 + v11;
          v15 = *(v13 + v11 + 28);
          v16 = *(v13 + v11 + 48);
          v17 = *(v13 + v11 + 36);
          v18 = sub_A5706C((*v7 + 4136), v15);
          v19 = v18;
          v20 = &v18[-*v18];
          if (*v20 < 5u)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v20 + 2);
            if (v21)
            {
              v21 += &v18[*&v18[v21]];
            }
          }

          v22 = (v21 + 4 * v15 + 4 + *(v21 + 4 * v15 + 4));
          v23 = (v22 - *v22);
          if (*v23 >= 9u && (v24 = v23[4]) != 0)
          {
            v25 = (v22 + v24 + *(v22 + v24));
          }

          else
          {
            v25 = 0;
          }

          v26 = sub_A571D4(v25, v16);
          v27 = (v19 - *v19);
          if (*v27 < 0xBu)
          {
            v28 = 0;
            v29 = (v22 - *v22);
            if (*v29 < 0x11u)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v28 = v27[5];
            if (v28)
            {
              v28 = (v28 + v19 + *(v28 + v19));
            }

            v29 = (v22 - *v22);
            if (*v29 < 0x11u)
            {
LABEL_25:
              LODWORD(v30) = 0;
              goto LABEL_26;
            }
          }

          v30 = v29[8];
          if (v29[8])
          {
            LODWORD(v30) = *(v22 + v30);
          }

LABEL_26:
          v31 = sub_A57320(v28, v30 + *(v22 + v29[2] + *(v22 + v29[2])) * v17 + *(v26 + 14));
          if (v31)
          {
            v32 = __ROR8__(*v31, 32);
            v33 = *(v31 + 8);
          }

          else
          {
            v33 = 0;
            v32 = 0xFFFFFFFFLL;
          }

          v34 = *(v14 + 48);
          v35 = sub_A57920((*v7 + 4136), *(v14 + 28));
          v36 = (v35 - *v35);
          if (*v36 >= 9u && (v37 = v36[4]) != 0)
          {
            v38 = (v35 + v37 + *(v35 + v37));
          }

          else
          {
            v38 = 0;
          }

          v39 = *(sub_A571D4(v38, v34) + 12);
          v40 = *(v13 + v11 + 52);
          v41 = sub_A57920((*v7 + 4136), *(v14 + 28));
          v42 = (v41 - *v41);
          if (*v42 >= 9u && (v43 = v42[4]) != 0)
          {
            result = sub_A571D4((v41 + v43 + *(v41 + v43)), v40);
            if (v32 != v65)
            {
              goto LABEL_9;
            }
          }

          else
          {
            result = sub_A571D4(0, v40);
            if (v32 != v65)
            {
              goto LABEL_9;
            }
          }

          v44 = v66;
          if (v66 == -1)
          {
            v44 = v63;
          }

          v66 = v44;
          if (v12 == -1)
          {
            v12 = v10;
          }

          if (v33 == v61)
          {
            v45 = v62;
            if (v62 == -1)
            {
              v45 = v63;
            }

            v62 = v45;
            v46 = v64;
            if (v64 == -1)
            {
              v46 = v10;
            }

            v64 = v46;
            if (v58 == v39)
            {
              v47 = v59;
              if (v59 == -1)
              {
                v47 = v63;
              }

              v48 = v60;
              if (v60 == -1)
              {
                v48 = v10;
              }

              v59 = v47;
              v60 = v48;
              if (v57 == *(result + 12))
              {
                v69 = __PAIR64__(v46, v12);
                v8 = v63;
                if (v54 == -1)
                {
                  v49 = v63;
                }

                else
                {
                  v49 = v54;
                }

                v54 = v49;
                v70 = __PAIR64__(v10, v48);
                v50 = &v71;
                v6 = v55;
                if (v11 != 0x3BFFFFFFC4)
                {
                  goto LABEL_66;
                }

LABEL_59:
                if (v48 == -1)
                {
                  goto LABEL_62;
                }

                v50 = (&v70 + 4);
LABEL_66:
                *(v68 + 120) = *(v50 - 1);
                if (++v8 == v56)
                {
                  goto LABEL_72;
                }

                goto LABEL_7;
              }
            }
          }

LABEL_9:
          v11 += 60;
          ++v10;
          if (v67 == v11)
          {
            v48 = v60;
            LODWORD(v70) = v60;
            v6 = v55;
            v8 = v63;
            v69 = __PAIR64__(v64, v12);
            goto LABEL_59;
          }
        }
      }

      v64 = -1;
      v12 = -1;
      LODWORD(v69) = -1;
LABEL_62:
      if (v64 != -1)
      {
        v50 = &v70;
        goto LABEL_66;
      }

      if (v12 != -1)
      {
        v50 = (&v69 + 4);
        goto LABEL_66;
      }

      if (*(v68 + 96) == *(v68 + 104))
      {
        v51 = -1;
      }

      else
      {
        v51 = 0;
      }

      *(v68 + 120) = v51;
      if (++v8 != v56)
      {
        continue;
      }

      break;
    }

LABEL_72:
    v72 = __PAIR64__(v54, v59);
    v71 = __PAIR64__(v62, v66);
    if (v54 != -1)
    {
      v52 = v73;
      goto LABEL_74;
    }

    v52 = &v72;
    if (v59 != -1)
    {
      v52 = (&v72 + 4);
      goto LABEL_74;
    }

    if (v62 == -1 && (v52 = (&v71 + 4), v66 == -1))
    {
LABEL_79:
      if (*(v6 + 48) == *(v6 + 56))
      {
        v53 = -1;
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {
LABEL_74:
      v53 = *(v52 - 1);
    }

    *(v6 + 72) = v53;
  }

  return result;
}

void sub_BC84BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v10 = 17;
  strcpy(__p, "alternatives_type");
  v6 = sub_5F8FC(a2, __p);
  v7 = sub_BC89AC(v6);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 32) = v7;
  operator new();
}

void sub_BC88F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_BC89AC(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) != 7)
    {
      v1 = a1;
      if (*(a1 + 23) != 8)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (*a1 != 1969710450 || *(a1 + 3) != 1918987381)
    {
LABEL_20:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(" provided", &v9, &v10);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v10;
      }

      else
      {
        v6 = v10.__r_.__value_.__r.__words[0];
      }

      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v10.__r_.__value_.__l.__size_;
      }

      v8 = sub_2D390(exception, v6, size);
    }

    return 0;
  }

  if (*(a1 + 8) == 7 && **a1 == 1969710450 && *(*a1 + 3) == 1918987381)
  {
    return 0;
  }

  if (*(a1 + 8) != 8)
  {
    goto LABEL_20;
  }

  v1 = *a1;
LABEL_12:
  if (*v1 != 0x676E696D6F637075)
  {
    goto LABEL_20;
  }

  return 1;
}

void sub_BC8B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_BC8B94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *(v6 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        for (i = *(v3 + 200); i != *(v3 + 208); i += 72)
        {
          if (!*(i + 24))
          {
            v9 = *i;
            if (*i != *(i + 8))
            {
              if (!*(v9 + 160))
              {
                sub_BC8C7C(v6, a2, v3, v9);
              }

              sub_5AF20();
            }
          }
        }
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_BC8C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == 1)
  {
    *(a4 + 112) = sub_BC8E94(*(a1 + 56), a2, a3, a4);
  }

  sub_BB77A0(&v4);
}

uint64_t sub_BC8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 52);
  v9 = sub_A57920((a1 + 4136), *(a4 + 32));
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 5)
  {
    v12 = 0;
    goto LABEL_6;
  }

  if (v10[2])
  {
    v12 = v9 + v10[2] + *(v9 + v10[2]);
    if (v11 < 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v11 < 9)
    {
      goto LABEL_6;
    }
  }

  v20 = v10[4];
  if (v20)
  {
    v13 = (v9 + v20 + *(v9 + v20));
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0;
LABEL_7:
  v14 = sub_A571D4(v13, v8);
  v15 = sub_92FC60(*(a1 + 4056) + 24, *&v12[8 * *(v14 + 14) + 4], 0, "line");
  v16 = (v15 - *v15);
  if (*v16 >= 0x25u)
  {
    v17 = v16[18];
    if (v17)
    {
      if (*(v15 + v17) == 1)
      {
        return *(a2 + 8);
      }
    }
  }

  v19 = *(a3 + 4);
  if (v19 == 2)
  {
    return *(a4 + 12);
  }

  if (v19 == 1)
  {
    return *(a4 + 4 * (*(a4 + 12) != 0x7FFFFFFF) + 8);
  }

  if (v19)
  {
    return 0x7FFFFFFFLL;
  }

  return *(a4 + 8);
}

double sub_BC9028(void **a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  sub_BC90F4(a1, a3 + 6, (a2 + 128), &v13, a4);
  v5 = a3[6];
  if (v5)
  {
    v6 = a3[7];
    v7 = a3[6];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 64);
        if (v9)
        {
          *(v6 - 56) = v9;
          operator delete(v9);
        }

        v10 = *(v6 - 152);
        if (v10)
        {
          *(v6 - 144) = v10;
          operator delete(v10);
        }

        v11 = *(v6 - 176);
        if (v11)
        {
          *(v6 - 168) = v11;
          operator delete(v11);
        }

        v6 -= 248;
      }

      while (v6 != v5);
      v7 = a3[6];
    }

    a3[7] = v5;
    operator delete(v7);
  }

  result = *&v13;
  *(a3 + 3) = v13;
  a3[8] = v14;
  return result;
}

void sub_BC90F4(void **a1@<X0>, uint64_t *a2@<X1>, int **a3@<X2>, void *a4@<X8>, __n128 a5@<Q0>)
{
  v5 = *a2;
  v87 = a2[1];
  if (*a2 == v87)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = *(v5 + 72);
      v9 = *(v5 + 80);
      for (i = v5; v10 != v9; v10 += 60)
      {
        sub_BCA5F0(&v89, *a1, v10, 0);
        v11 = v8 - v7;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4);
        v13 = v12 + 1;
        if (v12 + 1 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * (-v7 >> 4) > v13)
        {
          v13 = 0x5555555555555556 * (-v7 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v14 = 0x555555555555555;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v15 = 48 * v12;
        v16 = v90;
        *v15 = v89;
        *(v15 + 16) = v16;
        *(v15 + 32) = v91;
        v8 = (48 * v12 + 48);
        v17 = (v15 + 48 * (v11 / -48));
        memcpy(v17, v7, v11);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v17;
      }

      v19 = *(i + 96);
      for (j = *(i + 104); v19 != j; v19 += 60)
      {
        sub_BCA5F0(&v89, *a1, v19, 1);
        v20 = v8 - v7;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * (-v7 >> 4) > v22)
        {
          v22 = 0x5555555555555556 * (-v7 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v23 = 0x555555555555555;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          if (v23 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v24 = 48 * v21;
        v25 = v90;
        *v24 = v89;
        *(v24 + 16) = v25;
        *(v24 + 32) = v91;
        v8 = (48 * v21 + 48);
        v26 = (v24 + 48 * (v20 / -48));
        memcpy(v26, v7, v20);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v26;
      }

      v5 = i + 248;
    }

    while (i + 248 != v87);
  }

  *&v89 = a3;
  if (v8 - v7 < 6145)
  {
    v29 = 0;
LABEL_38:
    sub_BCB00C(v7, v8, &v89, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4), 0, v29, a5);
    v31 = a4;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v7 != v8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4);
    while (1)
    {
      v28 = operator new(48 * v27, &std::nothrow);
      if (v28)
      {
        break;
      }

      v29 = v27 >> 1;
      v30 = v27 > 1;
      v27 >>= 1;
      if (!v30)
      {
        goto LABEL_38;
      }
    }

    v32 = v28;
    sub_BCB00C(v7, v8, &v89, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4), v28, v27, a5);
    operator delete(v32);
    v31 = a4;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v7 != v8)
    {
LABEL_41:
      for (k = 0; (v7 + k) != v8; k += 48)
      {
        if (!k || sub_BC99BC(*a3, a3[1], v7 - 48 + k, v7 + k))
        {
          LOBYTE(v89) = 0;
          *(&v89 + 4) = 0x8000000080000000;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          memset(v93, 0, sizeof(v93));
          *v94 = 0u;
          v95 = 0;
          v96 = xmmword_22A85E0;
          LODWORD(v97) = 0;
          HIDWORD(v97) = 0;
          *(&v97 + 4) = 0x8000000080000000;
          *v98 = -1;
          *&v98[4] = xmmword_2291330;
          *&v98[20] = -1;
          v98[28] = 1;
          v99 = 0uLL;
          v100 = 0;
          LOBYTE(v101[0]) = 1;
          *(v101 + 4) = 0x7FFFFFFF7FFFFFFFLL;
          __p[0] = 0;
          __p[1] = 0;
          v103 = 0;
          v39 = *(v31 + 8);
          if (v39 >= *(v31 + 16))
          {
            sub_BCA180(v31, &v89);
            v48 = v47;
            v49 = __p[0];
            *(v31 + 8) = v48;
            if (v49)
            {
              __p[1] = v49;
              operator delete(v49);
            }
          }

          else
          {
            *v39 = v89;
            v40 = v90;
            v41 = v92;
            v42 = v93[0];
            *(v39 + 32) = v91;
            *(v39 + 48) = v41;
            *(v39 + 16) = v40;
            *(v39 + 64) = v42;
            *(v39 + 72) = 0;
            *(v39 + 80) = 0;
            *(v39 + 88) = 0;
            *(v39 + 72) = *&v93[1];
            v93[1] = 0;
            v93[2] = 0;
            *(v39 + 88) = v93[3];
            *(v39 + 96) = 0;
            *(v39 + 104) = 0;
            *(v39 + 112) = 0;
            *(v39 + 96) = *v94;
            *(v39 + 112) = v95;
            v93[3] = 0;
            v94[0] = 0;
            v94[1] = 0;
            v95 = 0;
            v43 = v96;
            v44 = v97;
            v45 = *v98;
            *(v39 + 165) = *&v98[13];
            *(v39 + 152) = v45;
            *(v39 + 136) = v44;
            *(v39 + 120) = v43;
            *(v39 + 184) = 0;
            *(v39 + 192) = 0;
            *(v39 + 200) = 0;
            *(v39 + 184) = v99;
            *(v39 + 200) = v100;
            v99 = 0uLL;
            v100 = 0;
            v46 = v101[0];
            *(v39 + 216) = v101[1];
            *(v39 + 208) = v46;
            *(v39 + 224) = 0;
            *(v39 + 232) = 0;
            *(v39 + 240) = 0;
            *(v39 + 224) = *__p;
            *(v39 + 240) = v103;
            __p[0] = 0;
            __p[1] = 0;
            v103 = 0;
            *(v31 + 8) = v39 + 248;
          }

          if (v99)
          {
            *(&v99 + 1) = v99;
            operator delete(v99);
          }

          if (v94[0])
          {
            v94[1] = v94[0];
            operator delete(v94[0]);
          }

          if (v93[1])
          {
            v93[2] = v93[1];
            operator delete(v93[1]);
          }
        }

        v50 = *(v31 + 8);
        v52 = *(v50 - 176);
        v51 = *(v50 - 168);
        if (v52 == v51 && *(v50 - 152) == *(v50 - 144))
        {
          v58 = *(v7 + k);
          v59 = *v58;
          v60 = v58[1];
          v61 = v58[2];
          *(v50 - 83) = *(v58 + 41);
          *(v50 - 92) = v61;
          *(v50 - 108) = v60;
          *(v50 - 124) = v59;
          v53 = *(v7 + k + 40);
          if (v53 != 1)
          {
LABEL_60:
            if (!v53)
            {
              v54 = *(v50 - 160);
              if (v51 < v54)
              {
                v34 = *(v7 + k);
                v35 = *v34;
                v36 = v34[1];
                v37 = v34[2];
                *(v51 + 44) = *(v34 + 44);
                v51[1] = v36;
                v51[2] = v37;
                *v51 = v35;
                v38 = v51 + 60;
              }

              else
              {
                v55 = 0xEEEEEEEEEEEEEEEFLL * ((v51 - v52) >> 2) + 1;
                if (v55 > 0x444444444444444)
                {
                  goto LABEL_97;
                }

                v56 = 0xEEEEEEEEEEEEEEEFLL * ((v54 - v52) >> 2);
                if (2 * v56 > v55)
                {
                  v55 = 2 * v56;
                }

                if (v56 >= 0x222222222222222)
                {
                  v57 = 0x444444444444444;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (v57 <= 0x444444444444444)
                  {
                    operator new();
                  }

                  goto LABEL_98;
                }

                v73 = (4 * ((v51 - v52) >> 2));
                v74 = *(v7 + k);
                v75 = *v74;
                v76 = v74[1];
                v77 = v74[2];
                *(v73 + 44) = *(v74 + 44);
                v73[1] = v76;
                v73[2] = v77;
                *v73 = v75;
                v38 = v73 + 60;
                v78 = v73 - (v51 - v52);
                memcpy(v78, v52, v51 - v52);
                *(v50 - 176) = v78;
                *(v50 - 168) = v38;
                *(v50 - 160) = 0;
                if (v52)
                {
                  operator delete(v52);
                }

                v31 = a4;
              }

              *(v50 - 168) = v38;
            }

            continue;
          }
        }

        else
        {
          v53 = *(v7 + k + 40);
          if (v53 != 1)
          {
            goto LABEL_60;
          }
        }

        v62 = *(v50 - 144);
        v63 = *(v50 - 136);
        if (v62 >= v63)
        {
          v69 = *(v50 - 152);
          v70 = 0xEEEEEEEEEEEEEEEFLL * ((v62 - v69) >> 2) + 1;
          if (v70 > 0x444444444444444)
          {
LABEL_97:
            sub_1794();
          }

          v71 = 0xEEEEEEEEEEEEEEEFLL * ((v63 - v69) >> 2);
          if (2 * v71 > v70)
          {
            v70 = 2 * v71;
          }

          if (v71 >= 0x222222222222222)
          {
            v72 = 0x444444444444444;
          }

          else
          {
            v72 = v70;
          }

          if (v72)
          {
            if (v72 <= 0x444444444444444)
            {
              operator new();
            }

LABEL_98:
            sub_1808();
          }

          v79 = (4 * ((v62 - v69) >> 2));
          v80 = *(v7 + k);
          v81 = *v80;
          v82 = v80[1];
          v83 = v80[2];
          *(v79 + 44) = *(v80 + 44);
          v79[1] = v82;
          v79[2] = v83;
          *v79 = v81;
          v68 = v79 + 60;
          v84 = v79 - (v62 - v69);
          memcpy(v84, v69, v62 - v69);
          *(v50 - 152) = v84;
          *(v50 - 144) = v68;
          *(v50 - 136) = 0;
          if (v69)
          {
            operator delete(v69);
          }

          v31 = a4;
        }

        else
        {
          v64 = *(v7 + k);
          v65 = *v64;
          v66 = v64[1];
          v67 = v64[2];
          *(v62 + 44) = *(v64 + 44);
          v62[1] = v66;
          v62[2] = v67;
          *v62 = v65;
          v68 = v62 + 60;
        }

        *(v50 - 144) = v68;
      }
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_BC9974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_BCA0DC(a10);
  v12 = a1;
  if (v10)
  {
    operator delete(v10);
    v12 = a1;
  }

  _Unwind_Resume(v12);
}

uint64_t sub_BC99BC(int *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = *(a3 + 32);
  v4 = *(a3 + 36);
  v6 = *(a4 + 32);
  v7 = *(a4 + 36);
  v8 = *(a3 + 24);
  v9 = *(a4 + 24);
  v10 = HIDWORD(v8);
  v11 = HIDWORD(v9);
  v13 = HIDWORD(v8) == HIDWORD(v9) && v8 == v9;
  v14 = *(a3 + 8);
  v15 = *(a4 + 8);
  v16 = HIDWORD(v14);
  v17 = HIDWORD(v15);
  v19 = HIDWORD(v14) == HIDWORD(v15) && v14 == v15;
  v20 = *(a3 + 16);
  v21 = *(a3 + 20);
  v22 = *(a4 + 16);
  v23 = *(a4 + 20);
  v24 = v22 != -1;
  v25 = *(a3 + 16);
  if (v21)
  {
    v26 = v25;
  }

  else
  {
    v26 = v14;
  }

  if (!v23)
  {
    v24 = 0;
  }

  v27 = *(a4 + 16);
  if (!v23)
  {
    v27 = *(a4 + 8);
  }

  if (v20 == -1)
  {
    if (v22 == -1)
    {
      v27 = *(a4 + 8);
    }

    v29 = HIDWORD(v27);
    v30 = v16 == HIDWORD(v27);
    v34 = v14 == v27 && v16 == HIDWORD(v27);
    while (1)
    {
      v35 = *a1;
      if (*a1 <= 1)
      {
        if (v35)
        {
          if (v35 == 1 && !v19)
          {
LABEL_213:
            v60 = v14 < v15;
            if (v16 != v17)
            {
              v60 = v16 < v17;
            }

            if (v15 == -1)
            {
              v60 = 0;
            }

            if (!v17)
            {
              v60 = 0;
            }

            v61 = v14 == -1 || v60;
            if (v16)
            {
              v62 = v61;
            }

            else
            {
              v62 = 1;
            }

            return v62 & 1;
          }
        }

        else
        {
          if (v24)
          {
            return 0;
          }

          if (!v34)
          {
            LODWORD(v26) = v14;
            v28 = HIDWORD(v14);
LABEL_88:
            v38 = HIDWORD(v14);
            v39 = v28 < v29;
            if (v30)
            {
              v39 = v26 < v27;
            }

            if (v27 == -1)
            {
              v39 = 0;
            }

            if (HIDWORD(v27))
            {
              v40 = v39;
            }

            else
            {
              v40 = 0;
            }

            if (v26 == -1)
            {
              v40 = 1;
            }

            v41 = 1;
            if (v38)
            {
              v42 = v40;
            }

            else
            {
              v42 = 1;
            }

            return v41 & v42;
          }
        }
      }

      else if (v35 == 2)
      {
        if (!v13)
        {
LABEL_226:
          v57 = v8 < v9;
          if (v10 != v11)
          {
            v57 = v10 < v11;
          }

          if (v9 == -1)
          {
            v57 = 0;
          }

          if (!v11)
          {
            v57 = 0;
          }

          if (v8 == -1)
          {
            v57 = 1;
          }

          v58 = v10 == 0;
          goto LABEL_235;
        }
      }

      else if (v35 == 3)
      {
        if (v5 != v6)
        {
LABEL_165:
          v51 = v6 != -1 && v5 < v6;
          v52 = v5 == -1 || v51;
          return v52 & 1;
        }
      }

      else if (v35 == 4 && v4 != v7)
      {
LABEL_198:
        v57 = v7 != -1 && v4 < v7;
        v58 = v4 == -1;
LABEL_235:
        v63 = v58 || v57;
        return v63 & 1;
      }

      if (++a1 == a2)
      {
        return 0;
      }
    }
  }

  v28 = HIDWORD(v26);
  if (!v21)
  {
    if (v22 == -1)
    {
      v27 = *(a4 + 8);
    }

    v29 = HIDWORD(v27);
    v30 = v28 == HIDWORD(v27);
    v36 = v26 == v27 && v28 == HIDWORD(v27);
    while (1)
    {
      v37 = *a1;
      if (*a1 <= 1)
      {
        if (v37)
        {
          if (v37 == 1 && !v19)
          {
            goto LABEL_213;
          }
        }

        else
        {
          if (v24)
          {
            return 0;
          }

          if (!v36)
          {
LABEL_87:
            v14 = v26;
            goto LABEL_88;
          }
        }
      }

      else if (v37 == 2)
      {
        if (!v13)
        {
          goto LABEL_226;
        }
      }

      else if (v37 == 3)
      {
        if (v5 != v6)
        {
          goto LABEL_165;
        }
      }

      else if (v37 == 4 && v4 != v7)
      {
        goto LABEL_198;
      }

      if (++a1 == a2)
      {
        return 0;
      }
    }
  }

  if (v24)
  {
    v29 = HIDWORD(v27);
    v30 = v28 == HIDWORD(v27);
    v31 = v26 == v27 && v28 == HIDWORD(v27);
    do
    {
      v33 = *a1;
      if (*a1 <= 1)
      {
        if (v33)
        {
          if (v33 == 1 && !v19)
          {
            goto LABEL_213;
          }
        }

        else if (!v31)
        {
          goto LABEL_87;
        }
      }

      else if (v33 == 2)
      {
        if (!v13)
        {
          goto LABEL_226;
        }
      }

      else if (v33 == 3)
      {
        if (v5 != v6)
        {
          goto LABEL_165;
        }
      }

      else if (v33 == 4 && v4 != v7)
      {
        goto LABEL_198;
      }

      ++a1;
    }

    while (a1 != a2);
    return 0;
  }

  else
  {
    v42 = 1;
    if (v4 == v7)
    {
      if (v5 == v6)
      {
        while (1)
        {
          v43 = *a1;
          if (*a1 == 1)
          {
            if (!v19)
            {
              goto LABEL_213;
            }
          }

          else if (v43 == 2)
          {
            if (!v13)
            {
              goto LABEL_226;
            }
          }

          else if (!v43)
          {
            return 1;
          }

          v41 = 0;
          if (++a1 == a2)
          {
            return v41 & v42;
          }
        }
      }

      if (v13)
      {
        if (v19)
        {
          while (*a1)
          {
            if (*a1 == 3)
            {
              goto LABEL_165;
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }

        else
        {
          while (1)
          {
            v44 = *a1;
            if (!*a1)
            {
              break;
            }

            if (v44 == 1)
            {
              goto LABEL_213;
            }

            if (v44 == 3)
            {
              goto LABEL_165;
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }
      }

      else
      {
        if (!v19)
        {
          while (1)
          {
            v49 = *a1;
            if (*a1 > 1)
            {
              if (v49 == 2)
              {
                goto LABEL_226;
              }

              if (v49 == 3)
              {
                goto LABEL_165;
              }
            }

            else
            {
              if (!v49)
              {
                return 1;
              }

              if (v49 == 1)
              {
                goto LABEL_213;
              }
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }

        while (1)
        {
          v48 = *a1;
          if (!*a1)
          {
            break;
          }

          if (v48 == 2)
          {
            goto LABEL_226;
          }

          if (v48 == 3)
          {
            goto LABEL_165;
          }

          v41 = 0;
          if (++a1 == a2)
          {
            return v41 & v42;
          }
        }
      }
    }

    else if (v5 == v6)
    {
      if (v13)
      {
        if (v19)
        {
          while (*a1)
          {
            if (*a1 == 4)
            {
              goto LABEL_198;
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }

        else
        {
          while (1)
          {
            v45 = *a1;
            if (!*a1)
            {
              break;
            }

            if (v45 == 1)
            {
              goto LABEL_213;
            }

            if (v45 == 4)
            {
              goto LABEL_198;
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }
      }

      else
      {
        if (!v19)
        {
          while (1)
          {
            v54 = *a1;
            if (*a1 > 1)
            {
              if (v54 == 2)
              {
                goto LABEL_226;
              }

              if (v54 == 4)
              {
                goto LABEL_198;
              }
            }

            else
            {
              if (!v54)
              {
                return 1;
              }

              if (v54 == 1)
              {
                goto LABEL_213;
              }
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }

        while (1)
        {
          v53 = *a1;
          if (!*a1)
          {
            break;
          }

          if (v53 == 2)
          {
            goto LABEL_226;
          }

          if (v53 == 4)
          {
            goto LABEL_198;
          }

          v41 = 0;
          if (++a1 == a2)
          {
            return v41 & v42;
          }
        }
      }
    }

    else
    {
      if (!v13)
      {
        if (!v19)
        {
          while (1)
          {
            v59 = *a1;
            if (*a1 <= 1)
            {
              if (!v59)
              {
                return 1;
              }

              if (v59 == 1)
              {
                goto LABEL_213;
              }
            }

            else
            {
              switch(v59)
              {
                case 2:
                  goto LABEL_226;
                case 3:
                  goto LABEL_165;
                case 4:
                  goto LABEL_198;
              }
            }

            v41 = 0;
            if (++a1 == a2)
            {
              return v41 & v42;
            }
          }
        }

        while (1)
        {
          v55 = *a1;
          if (*a1 > 2)
          {
            if (v55 == 3)
            {
              goto LABEL_165;
            }

            if (v55 == 4)
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (!v55)
            {
              return 1;
            }

            if (v55 == 2)
            {
              goto LABEL_226;
            }
          }

          v41 = 0;
          if (++a1 == a2)
          {
            return v41 & v42;
          }
        }
      }

      if (!v19)
      {
        while (1)
        {
          v47 = *a1;
          if (*a1 > 2)
          {
            if (v47 == 3)
            {
              goto LABEL_165;
            }

            if (v47 == 4)
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (!v47)
            {
              return 1;
            }

            if (v47 == 1)
            {
              goto LABEL_213;
            }
          }

          v41 = 0;
          if (++a1 == a2)
          {
            return v41 & v42;
          }
        }
      }

      while (1)
      {
        v46 = *a1;
        if (!*a1)
        {
          break;
        }

        if (v46 == 3)
        {
          goto LABEL_165;
        }

        if (v46 == 4)
        {
          goto LABEL_198;
        }

        v41 = 0;
        if (++a1 == a2)
        {
          return v41 & v42;
        }
      }
    }

    return 1;
  }
}

void **sub_BCA0DC(void **a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 19);
        if (v7)
        {
          *(v3 - 18) = v7;
          operator delete(v7);
        }

        v8 = *(v3 - 22);
        if (v8)
        {
          *(v3 - 21) = v8;
          operator delete(v8);
        }

        v3 -= 248;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_BCA180(uint64_t a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v6 = *(a2 + 48);
  *(v15 + 32) = *(a2 + 32);
  *(v15 + 48) = v6;
  *(v15 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v7;
  *(v15 + 72) = *(a2 + 72);
  *(v15 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(v15 + 96) = *(a2 + 96);
  *(v15 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v15 + 165) = *(a2 + 165);
  *(v15 + 152) = *(a2 + 152);
  *(v15 + 136) = *(a2 + 136);
  *(v15 + 120) = *(a2 + 120);
  *(v15 + 184) = *(a2 + 184);
  *(v15 + 216) = *(a2 + 216);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  *(v15 + 200) = v8;
  *(v15 + 208) = v9;
  *(v15 + 224) = *(a2 + 224);
  *(v15 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v10 = *(a1 + 8);
  v11 = 248 * v2 + *a1 - v10;
  sub_BCA364(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = 248 * v2 + 248;
  *(a1 + 8) = v13;
  if (v12)
  {
    operator delete(v12);
    *&v13 = 248 * v2 + 248;
  }

  return *&v13;
}

void sub_BCA350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_BCA4C8(va);
  _Unwind_Resume(a1);
}

void sub_BCA364(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 1);
      v8 = *(v6 + 3);
      v9 = v6[8];
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v8;
      *(a4 + 16) = v7;
      *(a4 + 64) = v9;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      v10 = *(v6 + 15);
      v11 = *(v6 + 17);
      v12 = *(v6 + 19);
      *(a4 + 165) = *(v6 + 165);
      *(a4 + 152) = v12;
      *(a4 + 136) = v11;
      *(a4 + 120) = v10;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = 0;
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 200) = v6[25];
      v6[23] = 0;
      v6[24] = 0;
      v6[25] = 0;
      v13 = v6[26];
      *(a4 + 216) = *(v6 + 54);
      *(a4 + 208) = v13;
      *(a4 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 224) = 0;
      *(a4 + 224) = *(v6 + 14);
      *(a4 + 240) = v6[30];
      v6[28] = 0;
      v6[29] = 0;
      v6[30] = 0;
      v6 += 31;
      a4 += 248;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v14 = v5[28];
      if (v14)
      {
        v5[29] = v14;
        operator delete(v14);
      }

      v15 = v5[23];
      if (v15)
      {
        v5[24] = v15;
        operator delete(v15);
      }

      v16 = v5[12];
      if (v16)
      {
        v5[13] = v16;
        operator delete(v16);
      }

      v17 = v5[9];
      if (v17)
      {
        v5[10] = v17;
        operator delete(v17);
      }

      v5 += 31;
    }
  }
}

void **sub_BCA4C8(void **a1)
{
  sub_BCA4FC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BCA4FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }

    v6 = *(i - 152);
    if (v6)
    {
      *(i - 144) = v6;
      operator delete(v6);
    }

    v7 = *(i - 176);
    if (v7)
    {
      *(i - 168) = v7;
      operator delete(v7);
    }
  }
}

void *sub_BCA58C(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    a1[24] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_BCA5F0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *a1 = a3;
  *&v8 = 0xFFFFFFFFLL;
  *(&v8 + 1) = 0xFFFFFFFFLL;
  *(a1 + 8) = v8;
  v9 = *(a3 + 48);
  v10 = sub_A57920(a2 + 517, *(a3 + 28));
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 5)
  {
    v13 = 0;
    goto LABEL_6;
  }

  if (v11[2])
  {
    v13 = v10 + v11[2] + *(v10 + v11[2]);
    if (v12 < 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v12 < 9)
    {
      goto LABEL_6;
    }
  }

  v65 = v11[4];
  if (v65)
  {
    v14 = (v10 + v65 + *(v10 + v65));
    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:
  *(a1 + 24) = __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32);
  *(a1 + 32) = -1;
  *(a1 + 40) = a4;
  v15 = *(a3 + 48);
  v16 = sub_A57920(a2 + 517, *(a3 + 28));
  v17 = (v16 - *v16);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (v16 + v18 + *(v16 + v18));
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_A571D4(v19, v15);
  v21 = *v20;
  *(a1 + 8) = __ROR8__(*v20, 32);
  v22 = sub_502FF8(a2[515] + 24, v21, 0, "stop");
  v23 = (v22 - *v22);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(v22 + v24 + 4) | (*(v22 + v24) << 32);
  }

  else
  {
    v25 = 0xFFFFFFFFLL;
  }

  *(a1 + 16) = v25;
  v26 = sub_A56F04(a2 + 517, *(a3 + 28), *(a3 + 48), *(a3 + 36));
  v27 = *(a3 + 28);
  v28 = *(a3 + 48);
  v29 = sub_A57920(a2 + 517, v27);
  v30 = (v29 - *v29);
  if (*v30 >= 9u && (v31 = v30[4]) != 0)
  {
    v32 = (v29 + v31 + *(v29 + v31));
  }

  else
  {
    v32 = 0;
  }

  v33 = *(sub_A571D4(v32, v28) + 12);
  v34 = __ROR8__(v26, 32);
  v35 = sub_3A231C(a2[523] + 24, v34, 0);
  v36 = &v35[-*v35];
  if (*v36 >= 5u && (v37 = *(v36 + 2)) != 0)
  {
    v38 = &v35[v37 + *&v35[v37]];
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_BCA9F8(v38, v26);
  v40 = (v39 - *v39);
  v41 = *v40;
  v42 = HIDWORD(v26);
  if (v41 < 0x27)
  {
    if (v41 < 0x11)
    {
      goto LABEL_38;
    }
  }

  else if (v40[19])
  {
    v43 = sub_BCAB48((v39 + v40[19] + *(v39 + v40[19])), v33);
    if (v43 != -1 && v42 != 0)
    {
      goto LABEL_60;
    }

LABEL_38:
    LODWORD(v47) = -1;
    goto LABEL_39;
  }

  v45 = v40[8];
  if (!v45)
  {
    goto LABEL_38;
  }

  v43 = *(v39 + v45);
  if (v43 == -1 || v42 == 0)
  {
    goto LABEL_38;
  }

LABEL_60:
  v61 = sub_BCAC94(a2[523] + 24, v26 & 0xFFFFFFFF00000000 | v43, 0, "routing direction name");
  v62 = (v61 - *v61);
  if (*v62 < 5u)
  {
    LODWORD(v47) = 0;
  }

  else
  {
    v47 = v62[2];
    if (v47)
    {
      LODWORD(v47) = *(v61 + v47);
    }
  }

LABEL_39:
  *(a1 + 32) = v47;
  v48 = sub_3A231C(a2[523] + 24, v34, 0);
  v49 = &v48[-*v48];
  if (*v49 >= 5u && (v50 = *(v49 + 2)) != 0)
  {
    v51 = &v48[v50 + *&v48[v50]];
  }

  else
  {
    v51 = 0;
  }

  v52 = sub_BCA9F8(v51, v26);
  v53 = (v52 - *v52);
  v54 = *v53;
  if (v54 < 0x25)
  {
    if (v54 < 0xF)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  if (!v53[18])
  {
LABEL_52:
    v57 = v53[7];
    if (v57)
    {
      v55 = *(v52 + v57);
      if (v55 != -1 && v42 != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_58:
    LODWORD(v59) = -1;
    goto LABEL_59;
  }

  v55 = sub_BCAB48((v52 + v53[18] + *(v52 + v53[18])), v33);
  if (v55 == -1 || v42 == 0)
  {
    goto LABEL_58;
  }

LABEL_63:
  v63 = sub_BCAE50(a2[523] + 24, v26 & 0xFFFFFFFF00000000 | v55, 0, "routing headsign");
  v64 = (v63 - *v63);
  if (*v64 < 5u)
  {
    LODWORD(v59) = 0;
  }

  else
  {
    v59 = v64[2];
    if (v59)
    {
      LODWORD(v59) = *(v63 + v59);
    }
  }

LABEL_59:
  *(a1 + 36) = v59;
  return a1;
}

uint64_t sub_BCA9F8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_BCAAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_BCAB48(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return a1[a2 + 1];
}

void sub_BCAC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_BCAC94(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v24 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = &v7[-*v7];
  if (*v8 < 0x17u)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 11);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + v7 + *(v9 + v7));
  v11 = (v10 - *v10);
  if (*v11 < 7u)
  {
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v12 = v11[3];
  if (!v12)
  {
LABEL_10:
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v20 = v5;
      v21 = v6;
      v19[0] = sub_7FCF0(9u);
      v19[1] = v15;
      sub_2C956C("Failed to acquire entity ", &v24, " in quad node ", " at position ", " on layer ", v19, v22);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = sub_2D390(exception, v16, v17);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  v9 = (v10 + v12 + *(v10 + v12));
  if (*v9 > v5)
  {
    return &v9[v5 + 1] + v9[v5 + 1];
  }

LABEL_7:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_BCAE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BCAE50(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v24 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = &v7[-*v7];
  if (*v8 < 0x17u)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 11);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + v7 + *(v9 + v7));
  v11 = (v10 - *v10);
  if (*v11 < 5u)
  {
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_10:
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v20 = v5;
      v21 = v6;
      v19[0] = sub_7FCF0(9u);
      v19[1] = v15;
      sub_2C956C("Failed to acquire entity ", &v24, " in quad node ", " at position ", " on layer ", v19, v22);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = sub_2D390(exception, v16, v17);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  v9 = (v10 + v12 + *(v10 + v12));
  if (*v9 > v5)
  {
    return &v9[v5 + 1] + v9[v5 + 1];
  }

LABEL_7:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_BCAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BCB00C(uint64_t a1, __int128 *a2, int ***a3, unint64_t a4, __n128 *a5, int64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    v9 = a1;
    if (a4 == 2)
    {
      v10 = a2 - 3;
      if (sub_BC99BC(**a3, (*a3)[1], (a2 - 3), a1))
      {
        v11 = v9[2];
        v13 = *v9;
        *v46 = v9[1];
        v12 = *v46;
        *&v46[16] = v11;
        v14 = *(v10 + 25);
        v15 = v10[1];
        *v9 = *v10;
        v9[1] = v15;
        *(v9 + 25) = v14;
        *v10 = v13;
        v10[1] = v12;
        *(v10 + 25) = *&v46[9];
      }
    }

    else if (a4 > 128)
    {
      v27 = a5;
      v28 = a4 >> 1;
      v29 = a1 + 48 * (a4 >> 1);
      v30 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v33 = sub_BCB2EC(a1, v29, a3, a4 >> 1, a5, a7);
        v34 = &v27[3 * v28];
        sub_BCB2EC(v29, a2, a3, v30, v34, v33);
        v35 = &v27[3 * a4];
        v36 = v34;
        while (v36 != v35)
        {
          if (sub_BC99BC(**a3, (*a3)[1], v36, v27))
          {
            v39 = *v36;
            v40 = v36[1];
            *(v9 + 25) = *(&v36[1] + 9);
            *v9 = v39;
            v9[1] = v40;
            v9 += 3;
            v36 += 3;
            if (v27 == v34)
            {
LABEL_32:
              while (v36 != v35)
              {
                v43 = *v36;
                v44 = v36[1];
                *(v9 + 25) = *(&v36[1] + 9);
                *v9 = v43;
                v9[1] = v44;
                v9 += 3;
                v36 += 3;
              }

              return;
            }
          }

          else
          {
            v37 = *v27;
            v38 = v27[1];
            *(v9 + 25) = *(&v27[1] + 9);
            *v9 = v37;
            v9[1] = v38;
            v9 += 3;
            v27 += 3;
            if (v27 == v34)
            {
              goto LABEL_32;
            }
          }
        }

        while (v27 != v34)
        {
          v41 = *v27;
          v42 = v27[1];
          *(v9 + 25) = *(&v27[1] + 9);
          *v9 = v41;
          v9[1] = v42;
          v9 += 3;
          v27 += 3;
        }
      }

      else
      {
        sub_BCB00C(a1, v29, a3, a4 >> 1, a5, a6);
        sub_BCB00C(v29, a2, a3, v30, v27, a6);

        sub_BCB5A4(v9, v29, a2, a3, v28, v30, v27, a6);
      }
    }

    else if (a1 != a2)
    {
      v16 = a1 + 48;
      if ((a1 + 48) != a2)
      {
        v17 = 0;
        v18 = *a3;
        v19 = a1;
        do
        {
          v22 = v19;
          v19 = v16;
          if (sub_BC99BC(*v18, v18[1], v16, v22))
          {
            v23 = v19[1];
            v45 = *v19;
            *v46 = v23;
            *&v46[16] = v19[2];
            v24 = v17;
            do
            {
              v25 = (v9 + v24);
              v26 = *(v9 + v24 + 16);
              v25[3] = *(v9 + v24);
              v25[4] = v26;
              *(v25 + 73) = *(v9 + v24 + 25);
              if (!v24)
              {
                v20 = v9;
                goto LABEL_11;
              }

              v24 -= 48;
            }

            while ((sub_BC99BC(**a3, (*a3)[1], &v45, v9 + v24) & 1) != 0);
            v20 = (v9 + v24 + 48);
LABEL_11:
            v21 = *v46;
            *v20 = v45;
            v20[1] = v21;
            *(v20 + 25) = *&v46[9];
            v18 = *a3;
          }

          v16 = (v19 + 3);
          v17 += 48;
        }

        while (v19 + 3 != a2);
      }
    }
  }
}

__n128 sub_BCB2EC(uint64_t a1, uint64_t a2, int ***a3, uint64_t a4, __n128 *a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v9 = a1;
    if (a4 == 2)
    {
      v11 = (a2 - 48);
      if (sub_BC99BC(**a3, (*a3)[1], a2 - 48, a1))
      {
        v12 = *v11;
        v13 = v11[2];
        v6[1] = v11[1];
        v6[2] = v13;
        *v6 = v12;
        result = *v9;
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
      }

      else
      {
        v27 = *v9;
        v28 = *(v9 + 32);
        v6[1] = *(v9 + 16);
        v6[2] = v28;
        *v6 = v27;
        result = *v11;
        v14 = v11[1];
        v15 = v11[2];
      }

      v6[4] = v14;
      v6[5] = v15;
      v6[3] = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 32);
      a5[1] = *(a1 + 16);
      a5[2] = v10;
      *a5 = result;
    }

    else if (a4 > 8)
    {
      v29 = a4 >> 1;
      v30 = 48 * (a4 >> 1);
      v31 = v30 + a1;
      sub_BCB00C(a1, v30 + a1, a3, v29, a5, v29);
      sub_BCB00C(v30 + v9, a2, a3, a4 - v29, &v6[v30 / 0x10], a4 - v29);
      v33 = v30 + v9;
      while (v33 != a2)
      {
        if (sub_BC99BC(**a3, (*a3)[1], v33, v9))
        {
          result = *v33;
          v35 = *(v33 + 32);
          v6[1] = *(v33 + 16);
          v6[2] = v35;
          *v6 = result;
          v6 += 3;
          v33 += 48;
          if (v9 == v31)
          {
LABEL_32:
            while (v33 != a2)
            {
              result = *v33;
              v37 = *(v33 + 32);
              v6[1] = *(v33 + 16);
              v6[2] = v37;
              *v6 = result;
              v6 += 3;
              v33 += 48;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v34 = *(v9 + 32);
          v6[1] = *(v9 + 16);
          v6[2] = v34;
          *v6 = result;
          v6 += 3;
          v9 += 48;
          if (v9 == v31)
          {
            goto LABEL_32;
          }
        }
      }

      while (v9 != v31)
      {
        result = *v9;
        v36 = *(v9 + 32);
        v6[1] = *(v9 + 16);
        v6[2] = v36;
        *v6 = result;
        v6 += 3;
        v9 += 48;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = *(a1 + 32);
      a5[1] = *(a1 + 16);
      a5[2] = v16;
      *a5 = result;
      v17 = a1 + 48;
      if (a1 + 48 != a2)
      {
        v18 = 0;
        v19 = a5;
        do
        {
          while (1)
          {
            v21 = v19 + 3;
            if (sub_BC99BC(**a3, (*a3)[1], v17, v19))
            {
              break;
            }

            result = *v17;
            v20 = *(v17 + 32);
            v19[4] = *(v17 + 16);
            v19[5] = v20;
            *v21 = result;
            v17 += 48;
            v18 += 48;
            v19 += 3;
            if (v17 == a2)
            {
              return result;
            }
          }

          v22 = v19[1];
          *v21 = *v19;
          v19[4] = v22;
          v19[5] = v19[2];
          v23 = v6;
          if (v19 != v6)
          {
            v24 = v18;
            while (1)
            {
              v23 = (v6 + v24);
              if (!sub_BC99BC(**a3, (*a3)[1], v17, &v6[-3] + v24))
              {
                break;
              }

              v25 = *(v6 + v24 - 32);
              *v23 = *(v6 + v24 - 48);
              v23[1] = v25;
              *(v23 + 25) = *(v6 + v24 - 23);
              v24 -= 48;
              if (!v24)
              {
                v23 = v6;
                break;
              }
            }
          }

          result = *v17;
          v26 = *(v17 + 16);
          *(v23 + 25) = *(v17 + 25);
          *v23 = result;
          v23[1] = v26;
          v17 += 48;
          v18 += 48;
          v19 += 3;
        }

        while (v17 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_BCB5A4(uint64_t result, uint64_t a2, _OWORD *a3, int ***a4, int64_t a5, int64_t a6, _OWORD *a7, int64_t a8)
{
  v112 = a6;
  if (!a6)
  {
    return result;
  }

  v12 = result;
  while (v112 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v13 = 0;
    v15 = **a4;
    v14 = (*a4)[1];
    v16 = -a5;
    while (1)
    {
      v17 = &v12[v13];
      v18 = a2;
      result = sub_BC99BC(v15, v14, a2, &v12[v13]);
      if (result)
      {
        break;
      }

      v13 += 3;
      v19 = __CFADD__(v16++, 1);
      a2 = v18;
      if (v19)
      {
        return result;
      }
    }

    v20 = -v16;
    v21 = v112;
    v108 = a4;
    v109 = v12;
    if (-v16 < v112)
    {
      v22 = v112 / 2;
      v23 = v12;
      v24 = v18;
      v25 = &v18[3 * (v112 / 2)];
      v26 = v18;
      v27 = v18 - v23 - v13 * 16;
      v28 = a7;
      v29 = a3;
      if (v27)
      {
        v104 = v17;
        v106 = a7;
        v30 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 4);
        v26 = v17;
        do
        {
          v31 = &v26[48 * (v30 >> 1)];
          v32 = v25;
          v33 = v25;
          v34 = v26;
          v35 = sub_BC99BC(v15, v14, v32, v31);
          v26 = v34;
          v25 = v33;
          if (v35)
          {
            v30 >>= 1;
          }

          else
          {
            v26 = (v31 + 48);
            v30 += ~(v30 >> 1);
          }
        }

        while (v30);
        v17 = v104;
        v28 = v106;
        v29 = a3;
        v21 = v112;
        v24 = v18;
        v22 = v112 / 2;
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v109 - v13 * 16) >> 4);
      v37 = v25;
      v38 = v24 - v26;
      if (v24 == v26)
      {
        goto LABEL_55;
      }

LABEL_33:
      v37 = v26;
      if (v24 != v25)
      {
        if (v26 + 48 == v24)
        {
          *v118 = *(v26 + 1);
          *&v118[16] = *(v26 + 2);
          v113 = *v26;
          v44 = v25 - v24;
          v45 = v29;
          v46 = v28;
          v47 = v26;
          v48 = v22;
          memmove(v26, v24, v25 - v24 - 7);
          v22 = v48;
          v26 = v47;
          v21 = v112;
          v29 = v45;
          v28 = v46;
          v37 = &v47[v44];
          *v37 = v113;
          *(v37 + 1) = *v118;
          *(v37 + 25) = *&v118[9];
        }

        else if (v24 + 48 == v25)
        {
          v37 = v26 + 48;
          v114 = *(v25 - 3);
          *v119 = *(v25 - 2);
          *&v119[16] = *(v25 - 1);
          if (v25 - 48 != v26)
          {
            v49 = v29;
            v50 = v28;
            v51 = v26;
            v52 = v22;
            memmove(v26 + 48, v26, v25 - 48 - v26 - 7);
            v22 = v52;
            v26 = v51;
            v21 = v112;
            v29 = v49;
            v28 = v50;
          }

          *(v26 + 25) = *&v119[9];
          *v26 = v114;
          *(v26 + 1) = *v119;
        }

        else
        {
          v53 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 4);
          if (0xAAAAAAAAAAAAAAABLL * (v38 >> 4) == v53)
          {
            v54 = v26 + 48;
            v55 = v24 + 48;
            do
            {
              *v120 = *(v54 - 2);
              *&v120[16] = *(v54 - 1);
              v115 = *(v54 - 3);
              v56 = *(v55 - 3);
              v57 = *(v55 - 2);
              *(v54 - 23) = *(v55 - 23);
              *(v54 - 3) = v56;
              *(v54 - 2) = v57;
              *(v55 - 3) = v115;
              *(v55 - 2) = *v120;
              *(v55 - 23) = *&v120[9];
              if (v54 == v24)
              {
                break;
              }

              v54 += 3;
              v58 = v55 == v25;
              v55 += 48;
            }

            while (!v58);
            v37 = v24;
          }

          else
          {
            v59 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 4);
            do
            {
              v60 = v59;
              v59 = v53;
              v53 = v60 % v53;
            }

            while (v53);
            v61 = &v26[48 * v59];
            do
            {
              v62 = *(v61 - 3);
              v63 = *(v61 - 2);
              v64 = *(v61 - 1);
              v61 -= 48;
              v116 = v62;
              *v121 = v63;
              *&v121[16] = v64;
              v65 = &v61[v38];
              v66 = v61;
              do
              {
                v67 = v65;
                v68 = *v65;
                v69 = *(v65 + 1);
                *(v66 + 25) = *(v65 + 25);
                *v66 = v68;
                v66[1] = v69;
                v70 = v25 - v65;
                v65 += 16 * (v38 >> 4);
                if (v38 >= v70)
                {
                  v65 = &v24[-v70];
                }

                v66 = v67;
              }

              while (v65 != v61);
              *(v67 + 25) = *&v121[9];
              *v67 = v116;
              v67[1] = *v121;
            }

            while (v61 != v26);
            v37 = &v26[v25 - v24];
          }
        }
      }

      goto LABEL_55;
    }

    v24 = v18;
    v29 = a3;
    if (v16 == -1)
    {
      v96 = &v12[v13];
      *v122 = v12[v13 + 1];
      *&v122[16] = v12[v13 + 2];
      v117 = v12[v13];
      v97 = *v18;
      v98 = v18[1];
      *(v96 + 25) = *(v18 + 25);
      *v96 = v97;
      v96[1] = v98;
      *v18 = v117;
      v18[1] = *v122;
      *(v18 + 25) = *&v122[9];
      return result;
    }

    v28 = a7;
    v103 = v20 / 2;
    v26 = &v12[3 * (v20 / 2) + v13];
    v25 = v18;
    if (v18 != a3)
    {
      v105 = v17;
      v107 = a7;
      v39 = 0xAAAAAAAAAAAAAAABLL * (a3 - v18);
      v25 = v18;
      do
      {
        v40 = &v25[48 * (v39 >> 1)];
        v41 = v25;
        v42 = v26;
        v43 = sub_BC99BC(v15, v14, v40, v26);
        v26 = v42;
        if (v43)
        {
          v39 += ~(v39 >> 1);
        }

        else
        {
          v39 >>= 1;
        }

        if (v43)
        {
          v25 = (v40 + 48);
        }

        else
        {
          v25 = v41;
        }
      }

      while (v39);
      v17 = v105;
      v28 = v107;
      v29 = a3;
      v21 = v112;
      v24 = v18;
    }

    v22 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 4);
    v36 = v103;
    v37 = v25;
    v38 = v24 - v26;
    if (v24 != v26)
    {
      goto LABEL_33;
    }

LABEL_55:
    a5 = -v16 - v36;
    v71 = v21 - v22;
    if ((v36 + v22) >= (v21 - (v36 + v22) - v16))
    {
      a4 = v108;
      v72 = v26;
      v73 = a5;
      v74 = v22;
      a7 = v28;
      result = sub_BCB5A4(v37, v25, v29, v108, v73, v21 - v22);
      a2 = v72;
      v75 = v74;
      a5 = v36;
      a3 = v37;
      v112 = v75;
      v12 = v17;
      if (!v75)
      {
        return result;
      }
    }

    else
    {
      a3 = v29;
      a4 = v108;
      a7 = v28;
      result = sub_BCB5A4(&v109[v13 * 16], v26, v37, v108, v36, v22);
      a2 = v25;
      v112 = v71;
      v12 = v37;
      if (!v71)
      {
        return result;
      }
    }
  }

  if (a5 <= v112)
  {
    if (a2 != v12)
    {
      v86 = a7;
      v87 = 7 - a7;
      v88 = v12;
      do
      {
        v89 = *v88;
        v90 = v88[2];
        v86[1] = v88[1];
        v86[2] = v90;
        *v86 = v89;
        v86 += 3;
        v88 += 3;
        v87 -= 48;
      }

      while (v88 != a2);
      while (a2 != a3)
      {
        v93 = a2;
        result = sub_BC99BC(**a4, (*a4)[1], a2, a7);
        if (result)
        {
          v94 = *v93;
          v95 = v93[1];
          *(v12 + 25) = *(v93 + 25);
          *v12 = v94;
          v12[1] = v95;
          v12 += 3;
          a2 = (v93 + 3);
          if (v86 == a7)
          {
            return result;
          }
        }

        else
        {
          v91 = *a7;
          v92 = a7[1];
          *(v12 + 25) = *(a7 + 25);
          *v12 = v91;
          v12[1] = v92;
          v12 += 3;
          a2 = v93;
          a7 += 3;
          if (v86 == a7)
          {
            return result;
          }
        }
      }

      return memmove(v12, a7, -(a7 + v87));
    }
  }

  else if (a2 != a3)
  {
    v76 = 0;
    do
    {
      v77 = &a7[v76 / 0x10];
      v78 = *(a2 + v76);
      v79 = *(a2 + v76 + 32);
      v77[1] = *(a2 + v76 + 16);
      v77[2] = v79;
      *v77 = v78;
      v76 += 48;
    }

    while ((a2 + v76) != a3);
    v80 = &a7[v76 / 0x10];
    while (a2 != v12)
    {
      v81 = (a2 - 48);
      v82 = a2;
      result = sub_BC99BC(**a4, (*a4)[1], (v80 - 3), a2 - 48);
      if (result)
      {
        v83 = v81;
      }

      else
      {
        v83 = v80 - 3;
      }

      v84 = *(v83 + 25);
      v85 = v83[1];
      *(a3 - 3) = *v83;
      *(a3 - 2) = v85;
      *(a3 - 23) = v84;
      if (result)
      {
        a2 = v81;
      }

      else
      {
        a2 = v82;
      }

      if (!result)
      {
        v80 -= 3;
      }

      a3 -= 3;
      if (v80 == a7)
      {
        return result;
      }
    }

    if (v80 != a7)
    {
      v99 = 0xFFFFFFFFFFFFFFDLL;
      do
      {
        v100 = *(v80 - 3);
        v101 = *(v80 - 2);
        v102 = &a3[v99];
        *(v102 + 25) = *(v80 - 23);
        *v102 = v100;
        v102[1] = v101;
        v99 -= 3;
        v80 -= 3;
      }

      while (v80 != a7);
    }
  }

  return result;
}

void sub_BCBE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BCBE3C(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 7 && **a1 == 1852534389 && *(*a1 + 3) == 1853321070)
    {
      return 0;
    }

    if (a1[1] == 3 && **a1 == 28524 && *(*a1 + 2) == 119)
    {
      return 1;
    }

    if (a1[1] == 16 && **a1 == 0x6F635F7468676974 && *(*a1 + 8) == 0x6E6F697463656E6ELL)
    {
      return 2;
    }

    if (a1[1] != 10)
    {
      goto LABEL_48;
    }

    v6 = *a1;
LABEL_35:
    v9 = *v6;
    v10 = *(v6 + 4);
    if (v9 == 0x6269736165666E69 && v10 == 25964)
    {
      return 3;
    }

    goto LABEL_48;
  }

  v1 = *(a1 + 23);
  if (v1 > 9)
  {
    v6 = a1;
    if (v1 != 10)
    {
      if (v1 != 16)
      {
        goto LABEL_48;
      }

      if (*a1 != 0x6F635F7468676974 || a1[1] != 0x6E6F697463656E6ELL)
      {
        goto LABEL_48;
      }

      return 2;
    }

    goto LABEL_35;
  }

  if (v1 != 3)
  {
    if (v1 != 7)
    {
      goto LABEL_48;
    }

    if (*a1 != 1852534389 || *(a1 + 3) != 1853321070)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (*a1 != 28524 || *(a1 + 2) != 119)
  {
LABEL_48:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" provided", &v17, &v18);
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

void sub_BCC0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_BCC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  sub_BA9500(v3 + 288);
  sub_1F1A8(v3 + 272);
  sub_1F1A8(v3 + 256);
  sub_A8A480(v5);
  sub_A8A480(v4);
  _Unwind_Resume(a1);
}

void sub_BCC484(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 232) = v5;
    operator delete(v5);
    v6 = *(v1 + 216);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *(v1 + 216);
    if (v6)
    {
LABEL_5:
      free(v6);
      sub_A8A480(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xBCC474);
}

void sub_BCC4C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
    v5 = *(v1 + 96);
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *(v1 + 96);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  free(v5);
  _Unwind_Resume(exception_object);
}

void sub_BCC4FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (sub_4F96D0(*(a1 + 1) + 3896) == 2)
  {
    v6 = *(a3 + 8);
    for (i = *(a3 + 16); v6 != i; v6 += 296)
    {
      if (*(v6 + 4) != 2 && *(v6 + 2) <= *a1 && ((a1[1] & 1) != 0 || (*v6 & 1) == 0))
      {
        sub_BCC624(a1, a2, v6, v8);
        if (v18 == 1)
        {
          sub_BCCD18(v6, v8);
          if (v18)
          {
            if (__p)
            {
              v17 = __p;
              operator delete(__p);
            }

            if (v14)
            {
              v15 = v14;
              operator delete(v14);
            }

            if (v12)
            {
              v13 = v12;
              operator delete(v12);
            }

            v19 = &v11;
            sub_A3212C(&v19);
            if (v10 < 0)
            {
              operator delete(v9);
            }
          }
        }
      }
    }
  }
}

void sub_BCC624(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 200);
  v7 = *(a3 + 208);
  if (v6 == v7 || v7 - v6 == 72 && *(v6 + 24) == 1)
  {
    sub_A32C84(a4, a3);
    *(a4 + 296) = 1;
    return;
  }

  sub_A32C84(v49, a3);
  DWORD1(v49[0]) = 2;
  v11 = *(a3 + 200);
  v10 = *(a3 + 208);
  if (v11 == v10)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v12 = v10 - v11 - 72;
  if (v12 < 0x48)
  {
    v13 = 0;
    v14 = *(a3 + 200);
    do
    {
LABEL_16:
      if (!*(v14 + 24))
      {
        ++v13;
      }

      v14 += 72;
    }

    while (v14 != v10);
    goto LABEL_19;
  }

  v15 = 0;
  v16 = 0;
  v17 = v12 / 0x48 + 1;
  v14 = v11 + 72 * (v17 & 0x7FFFFFFFFFFFFFELL);
  v18 = (v11 + 96);
  v19 = v17 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v20 = *(v18 - 72);
    v22 = *v18;
    v18 += 144;
    v21 = v22;
    if (!v20)
    {
      ++v15;
    }

    if (!v21)
    {
      ++v16;
    }

    v19 -= 2;
  }

  while (v19);
  v13 = v16 + v15;
  if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_16;
  }

LABEL_19:
  *(a1 + 360) = v13;
  sub_BA93E8(a1 + 16);
  sub_BA93E8(a1 + 136);
  sub_C43A3C(a1 + 288, *a2, a3);
  v23 = *(a2 + 1);
  v24 = *(a2 + 2);
  v47[0] = *a2;
  v47[1] = v23;
  v47[2] = v24;
  v48 = *(a2 + 6);
  if (*a2)
  {
    v25 = sub_A520DC(a3);
  }

  else
  {
    v25 = sub_A51E58(a3, 0);
  }

  DWORD1(v47[0]) = v25;
  if (LOBYTE(v47[0]))
  {
    sub_BAC190(a1 + 352, v47);
    sub_BAC5F0(a1 + 352, &v67);
  }

  else
  {
    sub_BB1910(a1 + 352, v47);
    sub_BB1D70((a1 + 352), &v67);
  }

  v42 = v68;
  v26 = v69;
  v69 = 0;
  v68 = 0uLL;
  sub_A300F8(&v67);
  v45 = v42;
  v46 = v26;
  v27 = v42.i64[0];
  if ((vmovn_s64(vceqq_s64(v42, vdupq_laneq_s64(v42, 1))).u8[0] & 1) == 0)
  {
    if (v49 != v42.i64[0])
    {
      sub_A33E7C(&v59, *(v42.i64[0] + 200), *(v42.i64[0] + 208), 0x8E38E38E38E38E39 * ((*(v42.i64[0] + 208) - *(v42.i64[0] + 200)) >> 3));
    }

    v29 = v49[3];
    v30 = v49[5];
    *(a4 + 64) = v49[4];
    *(a4 + 80) = v30;
    v31 = v49[1];
    v32 = v49[2];
    *a4 = v49[0];
    *(a4 + 16) = v31;
    *(a4 + 96) = v50;
    *(a4 + 104) = v51;
    *(a4 + 128) = v53;
    *(a4 + 136) = v54;
    v33 = v62;
    *(a4 + 216) = v60;
    *(a4 + 32) = v32;
    *(a4 + 48) = v29;
    *(a4 + 112) = v52;
    v52 = 0uLL;
    v34 = v57;
    *(a4 + 160) = v56;
    *(a4 + 176) = v34;
    *(a4 + 144) = v55;
    *(a4 + 192) = v58;
    *(a4 + 200) = v59;
    v60 = 0;
    v59 = 0uLL;
    *(a4 + 224) = v61;
    *(a4 + 240) = v33;
    v53 = 0;
    v61 = 0uLL;
    *(a4 + 248) = v63;
    v35 = v66;
    *(a4 + 264) = v64;
    v64 = 0;
    v62 = 0;
    v63 = 0uLL;
    *(a4 + 272) = v65;
    *(a4 + 288) = v35;
    v65 = 0uLL;
    v66 = 0;
    *(a4 + 296) = 1;
    if (!v42.i64[0])
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v67);
    sub_4A5C(&v67, "Failed to upgrade journey!", 26);
    if ((v76 & 0x10) != 0)
    {
      v36 = v75;
      if (v75 < v72)
      {
        v75 = v72;
        v36 = v72;
      }

      v37 = v71;
      v28 = v36 - v71;
      if (v36 - v71 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if ((v76 & 8) == 0)
      {
        v28 = 0;
        v44 = 0;
LABEL_42:
        *(&__dst + v28) = 0;
        sub_7E854(&__dst, 3u);
        if (v44 < 0)
        {
          operator delete(__dst);
        }

        if (v74 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v68.u64[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        v27 = v45.i64[0];
        goto LABEL_47;
      }

      v37 = v69;
      v28 = v70 - v69;
      if ((v70 - v69) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_69:
        sub_3244();
      }
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v44 = v28;
    if (v28)
    {
      memmove(&__dst, v37, v28);
    }

    goto LABEL_42;
  }

LABEL_47:
  *a4 = 0;
  *(a4 + 296) = 0;
  if (v27)
  {
LABEL_48:
    for (i = v45.i64[1]; i != v27; i -= 296)
    {
      v39 = *(i - 3);
      if (v39)
      {
        *(i - 2) = v39;
        operator delete(v39);
      }

      v40 = *(i - 6);
      if (v40)
      {
        *(i - 5) = v40;
        operator delete(v40);
      }

      v41 = *(i - 9);
      if (v41)
      {
        *(i - 8) = v41;
        operator delete(v41);
      }

      v67 = (i - 96);
      sub_A3212C(&v67);
      if (*(i - 161) < 0)
      {
        operator delete(*(i - 23));
      }
    }

    v45.i64[1] = v27;
    operator delete(v27);
  }

LABEL_60:
  if (v65)
  {
    *(&v65 + 1) = v65;
    operator delete(v65);
  }

  if (v63)
  {
    *(&v63 + 1) = v63;
    operator delete(v63);
  }

  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  v67 = &v59;
  sub_A3212C(&v67);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }
}

void sub_BCCC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a67);
  sub_A31EF4(&a18);
  sub_A7847C(&a30);
  _Unwind_Resume(a1);
}

void sub_BCCD18(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v3;
  v11 = *(a1 + 96);
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v5 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v5;
  v12 = *(a1 + 104);
  v6 = *(a1 + 112);
  v14 = *(a1 + 128);
  *v13 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  v15 = *(a1 + 136);
  v7 = *(a1 + 176);
  v17 = *(a1 + 160);
  v18 = v7;
  v16 = *(a1 + 144);
  v19 = *(a1 + 192);
  v20 = *(a1 + 200);
  v21 = *(a1 + 216);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *v22 = *(a1 + 224);
  v8 = *(a1 + 240);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *v24 = *(a1 + 248);
  v9 = *(a1 + 264);
  v23 = v8;
  v25 = v9;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *__p = *(a1 + 272);
  v27 = *(a1 + 288);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  sub_BA9EF8(a1, a2);
  sub_BA9EF8(a2, v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  v28 = &v20;
  sub_A3212C(&v28);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

_BYTE *sub_BCCE78(_BYTE *a1, void *a2)
{
  v19 = 19;
  strcpy(__p, "traversal_algorithm");
  v3 = sub_5F8FC(a2, __p);
  if (*(v3 + 23) < 0)
  {
    v5 = v3[1];
    if (v5 != 11)
    {
      if (v5 != 19)
      {
        goto LABEL_30;
      }

      v4 = *v3;
      goto LABEL_8;
    }

    if (**v3 != 0x6F625F7265776F6CLL || *(*v3 + 3) != 0x646E756F625F7265)
    {
LABEL_30:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(" provided in configuration", &v20, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v17 = sub_2D390(exception, v15, size);
    }
  }

  else
  {
    if (*(v3 + 23) != 11)
    {
      v4 = v3;
      if (*(v3 + 23) != 19)
      {
        goto LABEL_30;
      }

LABEL_8:
      v6 = *v4;
      v7 = v4[1];
      v8 = *(v4 + 11);
      if (v6 != 0x78655F7463617865 || v7 != 0x745F646574636570 || v8 != 0x656D69745F646574)
      {
        goto LABEL_30;
      }

      *a1 = 1;
      if (v19 < 0)
      {
        goto LABEL_25;
      }

      return a1;
    }

    if (*v3 != 0x6F625F7265776F6CLL || *(v3 + 3) != 0x646E756F625F7265)
    {
      goto LABEL_30;
    }
  }

  *a1 = 0;
  if ((v19 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_25:
  operator delete(*__p);
  return a1;
}

void sub_BCD088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a9);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_BCD11C(_BYTE *a1, uint64_t a2, void *a3)
{
  result = sub_BCCE78(a1, a3);
  *(result + 1) = a2;
  return result;
}

uint64_t sub_BCD148(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_BCD20C(v4, v2);
      v6 = *(v2 + 200);
      v7 = *(v2 + 208);
      if (v6 == v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0;
        do
        {
          if (!v6[24])
          {
            if (*(*v6 + 160))
            {
              sub_5AF20();
            }

            v8 = *(*v6 + 156);
            if (v8 >= 7)
            {
              v9 = 0;
            }

            else
            {
              v9 = 0x3030202020100uLL >> (8 * v8);
            }

            v10 = v9 & 3;
            if (v10 > v5)
            {
              v5 = v10;
            }
          }

          v6 += 72;
        }

        while (v6 != v7);
      }

      *(v2 + 2) = v5;
      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_BCD20C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  v3 = *(a2 + 200);
  if (v3 != v2)
  {
    v5 = result;
    if (v2 - v3 != 72 || *(v3 + 24) != 1)
    {
      do
      {
        if (!*(v3 + 24))
        {
          v7 = *v3;
          if (*(*v3 + 160))
          {
LABEL_36:
            sub_5AF20();
          }

          if (*(v3 + 69) == 1)
          {
            result = sub_BCD67C(v5, v3);
          }

          else
          {
            v8 = v3[1];
            v9 = *v3;
            if (v7 == v8)
            {
LABEL_17:
              result = 6;
            }

            else
            {
              while (1)
              {
                if (*(v9 + 160))
                {
                  goto LABEL_36;
                }

                if (*(v9 + 144) != 4)
                {
                  break;
                }

                v9 += 168;
                if (v9 == v8)
                {
                  goto LABEL_17;
                }
              }

              result = 1;
            }
          }

          v6 = *(v7 + 156);
          if (v6 <= result)
          {
            LOBYTE(v6) = result;
          }

          *(v7 + 156) = v6;
        }

        v3 += 9;
      }

      while (v3 != v2);
      v10 = *(a2 + 208);
      v11 = *(a2 + 200);
      if (v10 != v11)
      {
        while (*(v11 + 24) || (*(v11 + 69) & 1) == 0)
        {
          v11 += 9;
          if (v11 == v10)
          {
            return result;
          }
        }
      }

      for (i = v11; v10 != v11; i = v11)
      {
        v11 += 9;
        if (v10 != v11)
        {
          while (*(v11 + 24) || (*(v11 + 69) & 1) == 0)
          {
            v11 += 9;
            if (v11 == v10)
            {
              v11 = v10;
              break;
            }
          }
        }

        v12 = v11;
        if (v10 != v11)
        {
          result = sub_BCD3AC(v5, &i, &v12);
          v11 = v12;
          v10 = *(a2 + 208);
        }
      }
    }
  }

  return result;
}

uint64_t sub_BCD3AC(uint64_t a1, uint64_t **a2, unsigned int ***a3)
{
  v6 = *a2;
  v7 = **a2;
  v8 = *(v7 + 160);
  if (v8 == 1)
  {
    v9 = *(v7 + 8) | (*(v7 + 8) << 32);
  }

  else
  {
    if (v8)
    {
      goto LABEL_60;
    }

    v9 = *(v7 + 20);
  }

  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    LODWORD(v9) = HIDWORD(v9);
  }

  v10 = v6[9];
  v11 = *(v10 + 160);
  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_60;
    }

    LODWORD(v12) = *(v10 + 8);
    LODWORD(v10) = *(v10 + 4);
  }

  else
  {
    v12 = *(v10 + 20);
    v10 = *(v10 + 8);
  }

  result = (v12 + v9 - v10);
  v14 = (v6 + 18);
  v40 = v14;
  if (result == 0x7FFFFFFF)
  {
    goto LABEL_14;
  }

  while (v14 != *a3)
  {
    v39 = (v14 + 9);
    result = sub_BCD7B0(a1, &v40, &v39, result);
    v14 = v40 + 18;
    v40 += 18;
    if (result == 0x7FFFFFFF)
    {
      goto LABEL_14;
    }
  }

  v32 = **a3;
  v33 = v32[40];
  if (v33 == 1)
  {
    v32 = v32[1];
    v34 = v32 | (v32 << 32);
  }

  else
  {
    if (v33)
    {
      goto LABEL_60;
    }

    v34 = *(v32 + 1);
    LODWORD(v32) = v32[1];
  }

  if (HIDWORD(v34) != 0x7FFFFFFF)
  {
    LODWORD(v34) = HIDWORD(v34);
  }

  v35 = v33 ? 0 : v32;
  v36 = v35 / -10;
  v37 = v35 % 10;
  v38 = v35 < 0 ? -5 : 5;
  if (result > (v36 + v34 + (((-103 * (v38 + v37)) >> 15) & 1) + ((-103 * (v38 + v37)) >> 10)))
  {
LABEL_14:
    v15 = **a2;
    v16 = *(v15 + 160);
    if (v16 == 1)
    {
      v17 = *(v15 + 8) | (*(v15 + 8) << 32);
    }

    else
    {
      if (v16)
      {
        goto LABEL_60;
      }

      v17 = *(v15 + 20);
    }

    v18 = HIDWORD(v17);
    v19 = 10 * (HIDWORD(v17) - v17);
    if (v18 == 0x7FFFFFFF)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v21 = *a3;
    v22 = **a3;
    v23 = v22[40];
    if (v23 == 1)
    {
      v24 = v22[1] | (v22[1] << 32);
    }

    else
    {
      if (v23)
      {
        goto LABEL_60;
      }

      v24 = *(v22 + 1);
    }

    v25 = HIDWORD(v24);
    v26 = 10 * (v24 - HIDWORD(v24));
    if (v25 == 0x7FFFFFFF)
    {
      v26 = 0;
    }

    if (v20 < 1)
    {
      if (v26 <= 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v20 > v26)
      {
        if (!v16)
        {
          v27 = *(v15 + 156);
          if (v27 <= 4)
          {
            LOBYTE(v27) = 4;
          }

          *(v15 + 156) = v27;
          return result;
        }

        goto LABEL_60;
      }

      if (v26 <= v20)
      {
LABEL_40:
        v29 = (*a2 + 18);
        if (v21 <= v29)
        {
          return result;
        }

        while (1)
        {
          v30 = *v29;
          if (*(*v29 + 160))
          {
            break;
          }

          v31 = *(v30 + 156);
          if (v31 <= 2)
          {
            LOBYTE(v31) = 2;
          }

          *(v30 + 156) = v31;
          v29 += 144;
          if (v29 >= v21)
          {
            return result;
          }
        }

        goto LABEL_60;
      }
    }

    if (!v23)
    {
      v28 = *(v22 + 156);
      if (v28 <= 3)
      {
        LOBYTE(v28) = 3;
      }

      *(v22 + 156) = v28;
      return result;
    }

LABEL_60:
    sub_5AF20();
  }

  return result;
}

uint64_t sub_BCD67C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 160))
  {
    sub_5AF20();
  }

  sub_A78D38((*(a1 + 8) + 4136), *(v2 + 32), *(v2 + 40), &__p);
  v4 = __p;
  v5 = v15;
  while (v4 != v5)
  {
    v6 = *(a1 + 8);
    v7 = sub_585D8((*(v6 + 4184) + 3896));
    v8 = *(v6 + 4184);
    if (sub_4C2B90(v8 + 3896))
    {
      if (*(v8 + 3960))
      {
        v9 = sub_39F47C(*(*(v6 + 4184) + 3960), v4[1] | (*v4 << 32), v4[2], v7);
        if (v9)
        {
          if (*(v9 + 32) == 1)
          {
            v10 = 6;
            v11 = __p;
            if (!__p)
            {
              return v10;
            }

            goto LABEL_18;
          }
        }
      }
    }

    v4 += 3;
  }

  if (*(v2 + 29) == 1 || *(v2 + 17) == 1)
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  v11 = __p;
  if (__p)
  {
LABEL_18:
    v15 = v11;
    operator delete(v11);
  }

  return v10;
}

void sub_BCD794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BCD7B0(uint64_t a1, unsigned int ***a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4;
  if (*a1 == 1)
  {
    v78 = sub_4F96D0(*(a1 + 8) + 3896);
    sub_C9E54C(*(a1 + 8) + 3896, 2);
    v15 = **a2;
    v79 = (*a2)[1];
    if (v15 == v79)
    {
      v4 = 0x7FFFFFFFLL;
LABEL_112:
      sub_C9E54C(*(a1 + 8) + 3896, v78);
      return v4;
    }

    v83 = v4;
    v4 = 0x7FFFFFFFLL;
LABEL_16:
    if (v15[40])
    {
      sub_5AF20();
    }

    v16 = v15[13];
    v17 = sub_A57920((*(a1 + 8) + 4136), *(v15 + 4));
    v18 = (v17 - *v17);
    if (*v18 >= 9u && (v19 = v18[4]) != 0)
    {
      v20 = (v17 + v19 + *(v17 + v19));
    }

    else
    {
      v20 = 0;
    }

    v21 = *sub_A571D4(v20, v16);
    v22 = v15[14];
    v23 = sub_A57920((*(a1 + 8) + 4136), *(v15 + 4));
    v24 = (v23 - *v23);
    if (*v24 >= 9u && (v25 = v24[4]) != 0)
    {
      v26 = (v23 + v25 + *(v23 + v25));
    }

    else
    {
      v26 = 0;
    }

    v27 = *sub_A571D4(v26, v22);
    v28 = v15[13];
    v29 = sub_A57920((*(a1 + 8) + 4136), *(v15 + 4));
    v30 = (v29 - *v29);
    v31 = *v30;
    if (v31 < 5)
    {
      v32 = 0;
      goto LABEL_30;
    }

    if (v30[2])
    {
      v32 = v29 + v30[2] + *(v29 + v30[2]);
      if (v31 < 9)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v32 = 0;
      if (v31 < 9)
      {
        goto LABEL_30;
      }
    }

    v72 = v30[4];
    if (v72)
    {
      v33 = (v29 + v72 + *(v29 + v72));
      goto LABEL_31;
    }

LABEL_30:
    v33 = 0;
LABEL_31:
    v34 = *&v32[8 * *(sub_A571D4(v33, v28) + 14) + 4];
    v81 = __ROR8__(v21, 32);
    sub_A7905C(v93, *(a1 + 8), v81, 0, 0, 0);
    v35 = v96;
    if (v96 >= v97)
    {
      goto LABEL_15;
    }

    v80 = __ROR8__(v27, 32);
    while (1)
    {
      v36 = __ROR8__(*v35, 32);
      sub_A79708(v86, *(a1 + 8), v36, 0, 0, 0);
      v102 = v80;
      v103 = v81;
      v101[0] = &v103;
      v101[1] = 1;
      v100[0] = &v102;
      v100[1] = 1;
      sub_A79B68(v86, v101, v100, &v84);
      v38 = v84;
      v37 = v85;
      if (v84 == v85)
      {
        if (!v84)
        {
          goto LABEL_36;
        }

LABEL_35:
        v85 = v38;
        operator delete(v38);
        goto LABEL_36;
      }

      do
      {
        v45 = *v38;
        v44 = v38[1];
        v46 = sub_A57920((*(a1 + 8) + 4136), v36);
        v47 = (v46 - *v46);
        v48 = *v47;
        if (v48 < 5)
        {
          v49 = 0;
          goto LABEL_53;
        }

        if (v47[2])
        {
          v49 = v46 + v47[2] + *(v46 + v47[2]);
          if (v48 < 9)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v49 = 0;
          if (v48 < 9)
          {
            goto LABEL_53;
          }
        }

        v58 = v47[4];
        if (v58)
        {
          v50 = (v46 + v58 + *(v46 + v58));
          goto LABEL_54;
        }

LABEL_53:
        v50 = 0;
LABEL_54:
        if (v34 == *&v49[8 * *(sub_A571D4(v50, v45) + 14) + 4])
        {
          v89 = v88 + 16 * v45;
          if (v91 == 1 ? sub_A7A1E8(*(a1 + 8), v86, v83, 1u) : sub_A7A710(v86, v83, 1))
          {
            v89 = v88 + 16 * v44;
            v52 = &v92;
            if (!v91)
            {
              v52 = v90;
            }

            v53 = *v52;
            v54 = (v87 + *(v87 - *v87 + 6));
            v55 = *(&v54[2 * (v90[1] + v44) + 1] + *v54);
            v56 = sub_A78688(*a3, *v15);
            v57 = *(v56 + 160);
            if (v57)
            {
              if (v57 != 1)
              {
                sub_5AF20();
              }

              LODWORD(v40) = *(v56 + 8);
              LODWORD(v41) = *(v56 + 4);
            }

            else
            {
              v40 = *(v56 + 20);
              v41 = *(v56 + 8);
            }

            v42 = v55 + v53 + v40 - v41;
            if (v4 >= v42)
            {
              v43 = v42;
            }

            else
            {
              v43 = v4;
            }

            if (v4 == 0x7FFFFFFF)
            {
              v4 = v42;
            }

            else
            {
              v4 = v43;
            }
          }
        }

        v38 += 2;
      }

      while (v38 != v37);
      v38 = v84;
      if (v84)
      {
        goto LABEL_35;
      }

LABEL_36:
      v39 = v97;
      v35 = v96 + 2;
      v96 = v35;
      if (v35 == v97)
      {
        v59 = v94 + 2;
        v94 = v59;
        if (v59 >= v95)
        {
          goto LABEL_15;
        }

        while (1)
        {
          v35 = *v59;
          v39 = v59[1];
          if (*v59 != v39)
          {
            break;
          }

          v59 += 2;
          v94 = v59;
          if (v59 >= v95)
          {
            goto LABEL_15;
          }
        }

        v96 = *v59;
        v97 = v39;
        if (v35 < v39)
        {
          goto LABEL_78;
        }

LABEL_38:
        if (v35 >= v39)
        {
          goto LABEL_15;
        }

        continue;
      }

      if (v35 >= v97)
      {
        goto LABEL_38;
      }

LABEL_78:
      while (2)
      {
        if ((v99 & 1) == 0)
        {
          v60 = v93[0];
          v61 = *v35;
          v62 = *(v93[0] + 4136);
          if (sub_68312C(v62 + 3896))
          {
            if (*(v62 + 3944))
            {
              if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
              {
                v70 = sub_A57824(-85.0, 0.0);
                sub_58168(v70 >> 17, v70 >> 49);
                dword_27339C0 = v71 | 0x40000000;
                __cxa_guard_release(&qword_27339C8);
              }

              v63 = __ROR8__(v61, 32);
              v64 = *(v60 + 4136);
              if (dword_27339C0 == HIDWORD(v63))
              {
                if (!sub_68312C(v64 + 3896) || !*(v64 + 3944))
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v77 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                }

                break;
              }

              v67 = *(v64 + 3944);
              v86[0] = v63;
              if (!sub_A794D0(v67, v86))
              {
                break;
              }

              v35 = v96;
LABEL_76:
              v35 += 2;
              v96 = v35;
              if (v35 == v97)
              {
                v65 = v94 + 2;
                v94 = v65;
                if (v65 >= v95)
                {
                  goto LABEL_102;
                }

                while (1)
                {
                  v35 = *v65;
                  v66 = v65[1];
                  if (*v65 != v66)
                  {
                    break;
                  }

                  v65 += 2;
                  v94 = v65;
                  if (v65 >= v95)
                  {
                    goto LABEL_15;
                  }
                }

                v96 = *v65;
                v97 = v66;
                if (v35 >= v66)
                {
                  goto LABEL_102;
                }
              }

              else if (v35 >= v97)
              {
                goto LABEL_102;
              }

              continue;
            }
          }
        }

        break;
      }

      if (v98 != 1)
      {
        v68 = sub_C9E544(v93[0] + 3896);
        v35 = v96;
        if (v68 >= *(v96 + 14))
        {
          if (v98)
          {
            goto LABEL_102;
          }

          v69 = sub_585D8((v93[0] + 3896));
          v35 = v96;
          if ((v69 & 1) != 0 || (*(v96 + 15) & 1) == 0)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_76;
      }

      v35 = v96;
LABEL_102:
      if (v35 >= v97)
      {
LABEL_15:
        v15 += 42;
        if (v15 == v79)
        {
          goto LABEL_112;
        }

        goto LABEL_16;
      }
    }
  }

  if (!*a1)
  {
    v5 = **a2;
    v6 = v5[40];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5[1];
    }

    if (v7 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_117;
      }

      LODWORD(v9) = v5[2];
      LODWORD(v5) = v5[1];
      v10 = **a3;
      v11 = *(v10 + 160);
      if (!v11)
      {
LABEL_12:
        v12 = *(v10 + 20);
        v10 = *(v10 + 8);
LABEL_110:
        v73 = v7 / 10;
        v74 = 103 * (v8 + v7 % 10);
        return v73 + a4 + v9 + v12 + ((v74 >> 15) & 1) + (v74 >> 10) - (v5 + v10);
      }
    }

    else
    {
      v9 = *(v5 + 5);
      v5 = *(v5 + 1);
      v10 = **a3;
      v11 = *(v10 + 160);
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (v11 == 1)
    {
      LODWORD(v12) = *(v10 + 8);
      LODWORD(v10) = *(v10 + 4);
      goto LABEL_110;
    }

LABEL_117:
    sub_5AF20();
  }

  return v4;
}

void sub_BCDF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_BCDFAC(uint64_t a1, void *a2)
{
  *(&__p.__r_.__value_.__s + 23) = 4;
  strcpy(&__p, "name");
  v4 = sub_5F8FC(a2, &__p);
  v5 = sub_BD077C(&xmmword_27B3E30, v4);
  if (!v5)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v6 = *(v5 + 40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = v6;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "weight");
  v7 = sub_63D34(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&__p.__r_.__value_.__s + 23) = 19;
  strcpy(&__p, "membership_function");
  v8 = sub_5F8FC(a2, &__p);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v25, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    v26 = v8[2];
    *v25 = v9;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v10 = HIBYTE(v26);
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = HIBYTE(v26);
    if ((v26 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          goto LABEL_47;
        }

        v11 = v25;
        goto LABEL_19;
      }

      if (v25[0] != 0x6E61697373756167)
      {
        goto LABEL_47;
      }

LABEL_28:
      *(&__p.__r_.__value_.__s + 23) = 6;
      strcpy(&__p, "lambda");
      sub_63D34(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "epsilon");
      v15 = sub_63D34(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(&__p.__r_.__value_.__s + 23) = 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = 6908003;
      v16 = sub_63D34(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v16;
        operator delete(__p.__r_.__value_.__l.__data_);
        v16 = v17;
      }

      v18 = log(v16);
      __p.__r_.__value_.__r.__words[0] = off_26714D0;
      *&__p.__r_.__value_.__l.__size_ = v15 * v15;
      *&__p.__r_.__value_.__r.__words[2] = v18;
      p_p = &__p;
      sub_BD0A68(&__p, (a1 + 8));
      if (p_p == &__p)
      {
        (*(p_p->__r_.__value_.__r.__words[0] + 32))(p_p);
      }

      else if (p_p)
      {
        (*(p_p->__r_.__value_.__r.__words[0] + 40))();
      }

      operator new();
    }
  }

  if (v25[1] == dword_8 && *v25[0] == 0x6E61697373756167)
  {
    goto LABEL_28;
  }

  if (v25[1] != dword_8 + 1)
  {
    goto LABEL_47;
  }

  v11 = v25[0];
LABEL_19:
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v12 != 0x6F74656C676E6973 || v13 != 110)
  {
LABEL_47:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" provided in configuration", &v24, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v23 = sub_2D390(exception, v21, size);
  }

  __p.__r_.__value_.__r.__words[0] = off_26715E0;
  p_p = &__p;
  sub_BD0A68(&__p, (a1 + 8));
  if (p_p == &__p)
  {
    (*(p_p->__r_.__value_.__r.__words[0] + 32))(p_p);
  }

  else if (p_p)
  {
    (*(p_p->__r_.__value_.__r.__words[0] + 40))();
  }

  __p.__r_.__value_.__r.__words[0] = off_2671660;
  *&__p.__r_.__value_.__l.__size_ = v7;
  p_p = &__p;
  sub_BD0A68(&__p, (a1 + 40));
  if (p_p == &__p)
  {
    (*(p_p->__r_.__value_.__r.__words[0] + 32))(p_p);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_46:
    operator delete(v25[0]);
    return a1;
  }

  if (p_p)
  {
    (*(p_p->__r_.__value_.__r.__words[0] + 40))(p_p);
  }

  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_46;
  }

  return a1;
}

void sub_BCE564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_BCE634(v28 + 40);
  sub_BCE634(v28 + 8);
  _Unwind_Resume(a1);
}

void sub_BCE618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BCE634(uint64_t a1)
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

void sub_BCE6C0(void *a1)
{
  a1[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_BCF168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BCF2C8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) != 4 || **a1 != 1852399981)
    {
      if (*(a1 + 8) != 6 || (**a1 == 1819044198 ? (v4 = *(*a1 + 4) == 28265) : (v4 = 0), !v4))
      {
        if (*(a1 + 8) != 7 || (**a1 == 1819044198 ? (v5 = *(*a1 + 3) == 1852386668) : (v5 = 0), !v5))
        {
          if (*(a1 + 8) != 7)
          {
            goto LABEL_38;
          }

          v3 = *a1;
LABEL_25:
          v6 = *v3;
          v7 = *(v3 + 3);
          if (v6 != 1819044198 || v7 != 1852399468)
          {
            goto LABEL_38;
          }
        }
      }

      return 1;
    }
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 == 6)
      {
        if (*a1 != 1819044198 || *(a1 + 4) != 28265)
        {
LABEL_38:
          exception = __cxa_allocate_exception(0x40uLL);
          std::operator+<char>();
          sub_30F54(" provided in configuration", &v15, &v16);
          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v16;
          }

          else
          {
            v12 = v16.__r_.__value_.__r.__words[0];
          }

          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v16.__r_.__value_.__l.__size_;
          }

          v14 = sub_2D390(exception, v12, size);
        }

        return 1;
      }

      if (v1 != 7)
      {
        goto LABEL_38;
      }

      v2 = *a1 == 1819044198 && *(a1 + 3) == 1852386668;
      v3 = a1;
      if (!v2)
      {
        goto LABEL_25;
      }

      return 1;
    }

    if (*a1 != 1852399981)
    {
      goto LABEL_38;
    }
  }

  return 0;
}

void sub_BCF4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void **sub_BCF500(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v6 = *&v3[v5 - 8];
    if (&v3[v5 - 32] == v6)
    {
      (*(*v6 + 32))(v6);
      v7 = *&v3[v5 - 40];
      if (&v3[v5 - 64] == v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v7 = *&v3[v5 - 40];
      if (&v3[v5 - 64] == v7)
      {
LABEL_4:
        (*(*v7 + 32))(v7);
        goto LABEL_5;
      }
    }

    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

LABEL_5:
    v5 -= 72;
  }

  while (&v3[v5] != v2);
  v4 = *a1;
LABEL_15:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void sub_BCF648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 184);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = v3;
  sub_BCF680(a1, v2, &v5, &v4);
}

void sub_BCF680(uint64_t a1, int a2, unint64_t *a3, unint64_t *a4)
{
  memset(v35, 1, 13);
  v8 = *a4;
  if (*(a1 + 56) == 1)
  {
    v9 = *a3;
  }

  else
  {
    v9 = *a3;
    if (*a3 == v8)
    {
      goto LABEL_33;
    }

    v10 = 0;
    v11 = *(a1 + 8);
    do
    {
      LOBYTE(v12) = 1;
      if (v10 >= 0xAu && v10 - 12 >= 2)
      {
        v13 = v9;
        if (v10 == 10)
        {
          do
          {
            v18 = 1 << *(v13 + 13);
            if ((v18 & v11) != 0 || (*a1 & v18) != 0)
            {
              if (*(v13 + 104) == 0x7FFFFFFF)
              {
                goto LABEL_31;
              }

              v12 = *(v13 + 135);
              if ((v12 & 0x80u) != 0)
              {
                v12 = *(v13 + 120);
              }

              if (!v12)
              {
                break;
              }
            }

            v13 += 296;
            LOBYTE(v12) = 1;
          }

          while (v13 != v8);
        }

        else
        {
          v14 = v9;
          if (v10 == 11)
          {
            while (1)
            {
              v17 = 1 << *(v14 + 13);
              if (((v17 & v11) != 0 || (*a1 & v17) != 0) && *(v14 + 144) == -1)
              {
                break;
              }

              v14 += 296;
              if (v14 == v8)
              {
                goto LABEL_5;
              }
            }

LABEL_31:
            LOBYTE(v12) = 0;
          }

          else
          {
            v15 = 1 << *(v9 + 13);
            if ((v15 & v11) != 0 || (*a1 & v15) != 0)
            {
              goto LABEL_67;
            }

            if (v9 + 296 != v8)
            {
              v16 = v9 + 296;
              while ((((v11 | *a1) >> *(v16 + 13)) & 1) == 0)
              {
                v16 += 296;
                if (v16 == v8)
                {
                  goto LABEL_5;
                }
              }

LABEL_67:
              exception = __cxa_allocate_exception(0x40uLL);
              v32 = sub_2D390(exception, "Requested to evaluate unknown criterion in fuzzy dominance scoring algorithm", 0x4CuLL);
            }

LABEL_5:
            LOBYTE(v12) = 1;
          }
        }
      }

      *(v35 + v10++) = v12;
    }

    while (v10 != 13);
    if ((v35[1] & 0x1000000) != 0)
    {
LABEL_33:
      BYTE1(v35[1]) = 0;
    }
  }

  for (; v9 < v8; v9 += 296)
  {
    if ((*(a1 + 8) >> *(v9 + 13)))
    {
      v19 = *a3;
      for (i = 0.0; v19 < v8; v19 += 296)
      {
        if (v9 != v19 && ((*a1 >> *(v19 + 13)) & 1) != 0)
        {
          if ((*(a1 + 57) & 1) != 0 || (v21 = *(v9 + 16), v21 == -1) || v21 != *(v19 + 16))
          {
            v22 = *(a1 + 64);
            v23 = *(a1 + 72);
            v24 = 0.0;
            v25 = 0.0;
            if (v22 != v23)
            {
              do
              {
                sub_BCFA80(a1, v35, a2, v19, v9, v22);
                v25 = v25 + v26;
                v22 += 72;
              }

              while (v22 != v23);
              v22 = *(a1 + 64);
              v23 = *(a1 + 72);
            }

            if (v22 != v23)
            {
              v24 = 0.0;
              do
              {
                sub_BCFA80(a1, v35, a2, v9, v19, v22);
                v24 = v24 + v27;
                v22 += 72;
              }

              while (v22 != v23);
            }

            v28 = 1.0;
            if (*(v19 + 96) && *(v9 + 96) && (*(v19 + 96) & ~*(v9 + 96)) != 0)
            {
              v28 = *(a1 + 48);
            }

            v29 = 0.0;
            if (v25 > v24)
            {
              v29 = (v25 - v24) / v25;
            }

            if (v29 < 0.0)
            {
              v29 = 0.0;
            }

            if (v29 > 1.0)
            {
              v29 = 1.0;
            }

            v33 = v28 * v29;
            v34 = i;
            v30 = *(a1 + 40);
            if (!v30)
            {
              sub_2B7420();
            }

            i = (*(*v30 + 48))(v30, &v34, &v33);
            v8 = *a4;
          }
        }
      }

      *(v9 + 192) = 1.0 - i;
    }
  }
}

void sub_BCFA80(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, unsigned __int8 *a6)
{
  if (*(a6 + 4) && *(a2 + *a6) == 1)
  {
    v9 = sub_A32C84(v20, a5);
    v11 = *a6;
    if (v11 > 0xC)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = sub_2D390(exception, "Requested to evaluate unknown criterion in fuzzy dominance scoring algorithm", 0x4CuLL);
    }

    v12 = sub_BCFC50(v10, v9, a3, a4, *a6);
    v14 = sub_BCFC50(v12, v13, a3, v20, v11);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    v15 = v12 - v14;
    v30 = COERCE_DOUBLE(&v23);
    sub_A3212C(&v30);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    v30 = v15;
    v16 = *(a6 + 8);
    if (!v16)
    {
      goto LABEL_17;
    }

    (*(*v16 + 48))(v16, &v30);
    if (v15 >= 0.0)
    {
      return;
    }

    v30 = v15;
    v17 = *(a6 + 4);
    if (!v17)
    {
LABEL_17:
      sub_2B7420();
    }

    (*(*v17 + 48))(v17, &v30, 0.0);
  }
}

double sub_BCFC50(double a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  switch(a5)
  {
    case 0:
      return -*(a4 + 24);
    case 1:
      return *(a4 + 36);
    case 2:
      if (a3)
      {
        return -*(a4 + 24);
      }

      else
      {
        return *(a4 + 36);
      }

    case 3:
      v8 = 214748364;
      v9 = *(a4 + 36);
      if (v9 == 0x7FFFFFFF || (v10 = *(a4 + 24), v10 == 0x7FFFFFFF))
      {
        v11 = 7;
LABEL_16:
        v12 = 5;
        return (v8 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10));
      }

      v11 = 0;
      v8 = v9 - v10;
      if (v9 - v10 >= 0)
      {
        goto LABEL_16;
      }

      v12 = -5;
      return (v8 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10));
    case 4:
      v7 = *(a4 + 52);
      goto LABEL_21;
    case 5:
      v7 = *(a4 + 64);
      goto LABEL_21;
    case 6:
      v7 = *(a4 + 76);
LABEL_21:
      v13 = v7 / 10;
      v14 = v7 % 10;
      if (v7 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      return (v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10));
    case 7:
      LODWORD(a1) = *(a4 + 84);
      return *&a1;
    case 8:
      LODWORD(a1) = *(a4 + 88);
      return *&a1;
    case 9:
      LODWORD(a1) = *(a4 + 92);
      return *&a1;
    case 10:
      v16 = *(a4 + 104);
      result = 0.0;
      if (v16 != 0x7FFFFFFF)
      {
        v17 = *(a4 + 135);
        if (*(a4 + 135) < 0)
        {
          v17 = *(a4 + 120);
        }

        result = v16;
        if (!v17)
        {
          return 0.0;
        }
      }

      return result;
    case 11:
      v6 = *(a4 + 144);
      result = v6;
      if (v6 == -1)
      {
        return 0.0;
      }

      return result;
    case 12:
      result = 1.0;
      if (!*(a4 + 8))
      {
        return 0.0;
      }

      return result;
    case 13:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Requested to evaluate illegal criterion in fuzzy dominance scoring algorithm";
      goto LABEL_37;
    default:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Requested to evaluate unknown criterion in fuzzy dominance scoring algorithm";
LABEL_37:
      v20 = sub_2D390(exception, v19, 0x4CuLL);
  }
}

double sub_BCFF48(uint64_t a1, double *a2, uint64_t a3)
{
  result = *a2;
  if (*a2 < *a3)
  {
    return *a3;
  }

  return result;
}

uint64_t sub_BCFF5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic7MaxNormE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic7MaxNormE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic7MaxNormE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic7MaxNormE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD0074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic16ProbabilisticSumE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic16ProbabilisticSumE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic16ProbabilisticSumE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic16ProbabilisticSumE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD015C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671450;
  a2[1] = v2;
  return result;
}

double sub_BD0188(uint64_t a1, double *a2, double *a3)
{
  v4 = *a3;
  result = 1.0;
  if (*a2 != 1.0 || v4 != 1.0)
  {
    v3 = *a2;
    return (v4 + v3 + v4 * (v3 * *(a1 + 8)) - (v3 + v3) * v4) / (v4 * (v3 * *(a1 + 8)) + 1.0 - v3 * v4);
  }

  return result;
}

uint64_t sub_BD01D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic11EinsteinSumE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic11EinsteinSumE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic11EinsteinSumE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic11EinsteinSumE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD0250(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 64);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 32);
  if (v4 == a1 + 8)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t **sub_BD034C(void *a1, uint64_t a2)
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

void sub_BD0750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BD0764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_BD077C(void *a1, uint64_t a2)
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

__n128 sub_BD09A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_26714D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_BD09F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic18GaussianMembershipE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic18GaussianMembershipE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic18GaussianMembershipE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic18GaussianMembershipE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_BD0A68(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_BD0CEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

__n128 sub_BD0D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_2671560;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_BD0DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic21ExponentialLeakWeightE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic21ExponentialLeakWeightE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic21ExponentialLeakWeightE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic21ExponentialLeakWeightE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_BD0EE8(uint64_t a1, double *a2)
{
  result = 0.0;
  if (*a2 == 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_BD0F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic19SingletonMembershipE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic19SingletonMembershipE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic19SingletonMembershipE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic19SingletonMembershipE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD0FE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671660;
  a2[1] = v2;
  return result;
}

uint64_t sub_BD101C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic14ConstantWeightE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic14ConstantWeightE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic14ConstantWeightE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic14ConstantWeightE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD1094(uint64_t a1)
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

void *sub_BD1120(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_BD1200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BD1214(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BD1214(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    while (1)
    {
      *(a1 + 16) = v3 - 72;
      v4 = *(v3 - 8);
      if (v4 == v3 - 32)
      {
        (*(*v4 + 32))(v4);
        v5 = *(v3 - 40);
        if (v5 != v3 - 64)
        {
          goto LABEL_10;
        }

LABEL_3:
        (*(*v5 + 32))(v5);
        v3 = *(a1 + 16);
        if (v3 == v2)
        {
          break;
        }
      }

      else
      {
        if (v4)
        {
          (*(*v4 + 40))(v4);
        }

        v5 = *(v3 - 40);
        if (v5 == v3 - 64)
        {
          goto LABEL_3;
        }

LABEL_10:
        if (v5)
        {
          (*(*v5 + 40))(v5);
        }

        v3 = *(a1 + 16);
        if (v3 == v2)
        {
          break;
        }
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BD1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a2;
  v7 = 0;
  v8 = a2;
  do
  {
    v10 = a4 + v7;
    v11 = v6 + v7;
    *(a4 + v7) = *(v6 + v7);
    v12 = a4 + v7 + 8;
    v13 = *(v6 + v7 + 32);
    if (!v13)
    {
      v14 = (v10 + 32);
      goto LABEL_10;
    }

    if (v11 + 8 != v13)
    {
      v14 = (v8 + 32);
      *(v10 + 32) = v13;
LABEL_10:
      *v14 = 0;
      goto LABEL_12;
    }

    *(v10 + 32) = v12;
    (*(**(v11 + 32) + 24))(*(v11 + 32));
LABEL_12:
    v15 = a4 + v7;
    v16 = v6 + v7;
    v17 = *(v6 + v7 + 64);
    if (!v17)
    {
      v9 = (v15 + 64);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v16 + 40 != v17)
    {
      v9 = (v8 + 64);
      *(v15 + 64) = v17;
      goto LABEL_4;
    }

    *(v15 + 64) = v15 + 40;
    (*(**(v16 + 64) + 24))(*(v16 + 64));
LABEL_5:
    v8 += 72;
    v7 += 72;
  }

  while (v6 + v7 != a3);
  if (v6 != a3)
  {
    v18 = v6 + 40;
    do
    {
      v19 = *(v6 + 64);
      if (v6 + 40 == v19)
      {
        (*(*v19 + 32))(v19, v12);
        v20 = *(v6 + 32);
        if (v6 + 8 != v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v19)
        {
          (*(*v19 + 40))(v19, v12);
        }

        v20 = *(v6 + 32);
        if (v6 + 8 != v20)
        {
LABEL_26:
          if (v20)
          {
            (*(*v20 + 40))(v20, v12);
          }

          goto LABEL_19;
        }
      }

      (*(*v20 + 32))(v20);
LABEL_19:
      v6 += 72;
      v18 += 72;
    }

    while (v6 != a3);
  }
}

uint64_t sub_BD1574(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v2;
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
  v16 = v6;
  v17 = v6;
  *v6 = *a2;
  v8 = (a2 + 32);
  v7 = *(a2 + 32);
  if (!v7)
  {
    v8 = (v6 + 32);
    goto LABEL_14;
  }

  if (v7 != a2 + 8)
  {
    *(v6 + 32) = v7;
LABEL_14:
    *v8 = 0;
    goto LABEL_16;
  }

  *(v6 + 32) = v6 + 8;
  (*(*v7 + 24))(v7);
LABEL_16:
  v10 = (a2 + 64);
  v9 = *(a2 + 64);
  if (!v9)
  {
    v10 = (v6 + 64);
    goto LABEL_20;
  }

  if (v9 != a2 + 40)
  {
    *(v6 + 64) = v9;
LABEL_20:
    *v10 = 0;
    goto LABEL_22;
  }

  *(v6 + 64) = v6 + 40;
  (*(*v9 + 24))(v9);
LABEL_22:
  v11 = v6 + 72;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  sub_BD1348(a1, *a1, v12, v16 + *a1 - v12);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v17 + 72;
  a1[2] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return v11;
}

void sub_BD1768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BD1214(va);
  _Unwind_Resume(a1);
}

void sub_BD1D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  v15 = v13;
  while (1)
  {
    v16 = *(v15 - 9);
    v15 -= 4;
    if (v16 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_BD1F4C(uint64_t a1, void *a2)
{
  v9 = 19;
  strcpy(__p, "probability_percent");
  v4 = sub_353010(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 16;
  strcpy(__p, "max_num_journeys");
  v6 = sub_63FDC(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_BD2090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD20B8(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if ((sub_585D8((a2 + 32)) & 1) == 0)
  {
    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v34);
    sub_4A5C(&v34, "Attempted to run journey shuffling component on a request with no valid session id", 82);
    if ((v44 & 0x10) != 0)
    {
      v11 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v11 = v40;
      }

      v12 = v39;
      v10 = v11 - v39;
      if (v11 - v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v10 = 0;
        v47 = 0;
LABEL_19:
        *(&__dst + v10) = 0;
        sub_7E854(&__dst, 1u);
        if (v47 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        return;
      }

      v12 = v37;
      v10 = v38 - v37;
      if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v47 = v10;
    if (v10)
    {
      memmove(&__dst, v12, v10);
    }

    goto LABEL_19;
  }

  v6 = (sub_588E0(a2 + 32) + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = (sub_588D8(a2 + 32) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (0x2127599BF4325C37 * (v7 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v7 ^ (v7 >> 23))) >> 47);
  if (v8 % 0x3F1 < vcvtad_u64_f64((1009 * *a1) / 100.0))
  {
    v9 = *(a3 + 16) - *(a3 + 8);
    if (v9)
    {
      if (!((0x14C1BACF914C1BADLL * (v9 >> 3)) >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a1 + 16) == 1)
    {
      v13 = 0x14C1BACF914C1BADLL * ((*(a3 + 16) - *(a3 + 8)) >> 3);
    }

    else
    {
      v14 = *(a3 + 8);
      v15 = *(a3 + 16);
      v16 = v14;
      if (v14 != v15)
      {
        while (*(v16 + 13) != 1)
        {
          v16 += 296;
          if (v16 == v15)
          {
            v16 = *(a3 + 16);
            break;
          }
        }
      }

      v13 = sub_485218(0x14C1BACF914C1BADLL * ((v16 - v14) >> 3));
    }

    v17 = *(a1 + 1);
    if (v17 >= v13)
    {
      v17 = v13;
    }

    v18 = 8 * v17;
    v34 = v8;
    for (i = 1; i != 312; ++i)
    {
      v8 = i + 0x5851F42D4C957F2DLL * (v8 ^ (v8 >> 62));
      (&v34)[i] = v8;
    }

    v45 = 0;
    if (v17 >= 2)
    {
      __dst = xmmword_2297C00;
      v20 = v18 - 8;
      if (v18 != 8)
      {
        v21 = v17 - 1;
        v22 = 0;
        v23 = 0;
        do
        {
          v48[0] = 0;
          v48[1] = v21;
          v24 = sub_BD26CC(&__dst, &v34, v48);
          if (v24)
          {
            v25 = *v23;
            *v23 = *(v22 + 8 * v24);
            *(v22 + 8 * v24) = v25;
          }

          ++v23;
          --v21;
          v22 += 8;
        }

        while (v23 < v20);
      }
    }

    sub_31F64((a3 + 216), 0, 0, 0);
    v26 = *(a3 + 8);
    v27 = *(a3 + 16) - v26;
    if (v27 >= 296)
    {
      v28 = 0;
      v29 = 0x14C1BACF914C1BADLL * (v27 >> 3);
      do
      {
        v30 = (8 * v28);
        v31 = *(8 * v28);
        v32 = v28;
        if (v28 != v31)
        {
          v32 = v28;
          do
          {
            v33 = v32;
            v32 = v31;
            sub_BCCD18(v26 + 296 * v33, (v26 + 296 * v31));
            *(8 * v33) = v33;
            v30 = (8 * v32);
            v31 = *(8 * v32);
          }

          while (v28 != v31);
        }

        *v30 = v32;
        ++v28;
      }

      while (v29 != v28);
      operator delete(0);
    }
  }
}

void sub_BD2664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 105) < 0)
  {
    operator delete(*(v2 - 128));
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_BD26A8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

unint64_t sub_BD26CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  result = a3[1];
  if (result != *a3)
  {
    v5 = 0xB5026F5AA96619E9;
    v6 = result - *a3 + 1;
    if (result - *a3 == -1)
    {
      v18 = *(a2 + 2496);
      v19 = (v18 + 1) % 0x138uLL;
      if ((*(a2 + 8 * v19) & 1) == 0)
      {
        v5 = 0;
      }

      v20 = v5 ^ *(a2 + 8 * ((v18 + 156) % 0x138uLL)) ^ ((*(a2 + 8 * v19) & 0x7FFFFFFELL | *(a2 + 8 * v18) & 0xFFFFFFFF80000000) >> 1);
      *(a2 + 8 * v18) = v20;
      *(a2 + 2496) = v19;
      v21 = (((v20 >> 29) & 0x555555555 ^ v20) << 17) & 0x71D67FFFEDA60000 ^ (v20 >> 29) & 0x555555555 ^ v20;
      return (v21 << 37) & 0xFFF7EEE000000000 ^ v21 ^ (((v21 << 37) & 0xFFF7EEE000000000 ^ v21) >> 43);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 63;
      if (((v6 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = 64;
      }

      v9 = v8 - v7;
      v10 = v9 >> 6;
      if ((v9 & 0x3F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFFFFFFFFFFLL >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 2496);
      do
      {
        v13 = v12;
        v12 = (v12 + 1) % 0x138;
        if (*(a2 + 8 * v12))
        {
          v14 = 0xB5026F5AA96619E9;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 ^ *(a2 + 8 * ((v13 + 156) % 0x138)) ^ ((*(a2 + 8 * v12) & 0x7FFFFFFELL | *(a2 + 8 * v13) & 0xFFFFFFFF80000000) >> 1);
        *(a2 + 8 * v13) = v15;
        v16 = (((v15 >> 29) & 0x555555555 ^ v15) << 17) & 0x71D67FFFEDA60000 ^ (v15 >> 29) & 0x555555555 ^ v15;
        v17 = ((v16 << 37) & 0xFFF7EEE000000000 ^ v16 ^ (((v16 << 37) & 0xFFF7EEE000000000 ^ v16) >> 43)) & v11;
      }

      while (v17 >= v6);
      *(a2 + 2496) = v12;
      return v17 + v4;
    }
  }

  return result;
}

uint64_t sub_BD287C(int *a1, uint64_t a2)
{
  sub_BD2B50(a2, a1, v4);
  sub_BD2968((a2 + 8), v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_BD2950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BD2968(uint64_t *a1, uint64_t a2)
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
      v12 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v3 - v2 < 1)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0x14C1BACF914C1BADLL * ((v3 - v2) >> 3);
    while (1)
    {
      v6 = operator new(296 * v5, &std::nothrow);
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
  sub_BD2F40(v2, v3, v11, 0x14C1BACF914C1BADLL * ((v3 - v2) >> 3), v9, v5);
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

void sub_BD2B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD2B50@<X0>(uint64_t result@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    switch(v3)
    {
      case 3:
        *a3 = off_2671880;
        a3[3] = a3;
        break;
      case 4:
        *a3 = off_2671900;
        a3[1] = result;
        a3[3] = a3;
        break;
      case 5:
        *a3 = off_2671980;
        a3[1] = result;
        a3[3] = a3;
        break;
      default:
        goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        *a3 = off_2671800;
        a3[3] = a3;
        return result;
      }

LABEL_14:
      exception = __cxa_allocate_exception(0x40uLL);
      v5 = sub_2D390(exception, "Ordering comparator was not handled properly", 0x2CuLL);
    }

    *a3 = off_2671780;
    a3[3] = a3;
  }

  else
  {
    *a3 = off_26716F0;
    a3[3] = a3;
  }

  return result;
}

uint64_t sub_BD2CA0(uint64_t a1)
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

uint64_t sub_BD2D2C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        a2[23] = 19;
        strcpy(a2, "order_main_by_score");
        return result;
      case 1:
        operator new();
      case 2:
        a2[23] = 18;
        strcpy(a2, "order_main_by_risk");
        return result;
    }
  }

  a2[23] = 7;
  strcpy(a2, "unknown");
  return result;
}

void sub_BD2F40(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = (a2 - 296);
      if ((*(*v7 + 48))(v7, a2 - 296, a1))
      {

        sub_BCCD18(a1, v8);
      }
    }

    else if (a4 <= 0)
    {

      sub_BD3170(a1, a2, a3);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = (a1 + 296 * (a4 >> 1));
      if (a4 <= a6)
      {
        sub_BD34C8(a1, (a1 + 296 * (a4 >> 1)), a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = (a5 + 296 * v10);
        sub_BD34C8(v11, a2, a3, v19, v20);
        v21 = a4;
        sub_BD3B18(a5, v20, v20, (a5 + 296 * a4), a1, a3);
        if (a5)
        {
          sub_BD4C2C(&v21, a5);
        }
      }

      else
      {
        sub_BD2F40(a1, a1 + 296 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_BD2F40(v11, a2, a3, v16, a5, a6);

        sub_BD3C24(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_BD3154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD3170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1 + 296;
    if (a1 + 296 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v8))
        {
          v11 = *v10;
          v12 = *(v10 + 32);
          v37[1] = *(v10 + 16);
          v37[2] = v12;
          v37[0] = v11;
          v13 = *(v10 + 48);
          v14 = *(v10 + 64);
          v15 = *(v10 + 80);
          v38 = *(v10 + 96);
          v37[4] = v14;
          v37[5] = v15;
          v37[3] = v13;
          v16 = *(v8 + 400);
          v41 = *(v8 + 424);
          v40 = *(v8 + 408);
          *(v8 + 416) = 0u;
          *(v8 + 408) = 0;
          v17 = *(v8 + 432);
          v39 = v16;
          v42 = v17;
          v18 = *(v8 + 440);
          v19 = *(v8 + 472);
          v44 = *(v8 + 456);
          v45 = v19;
          v43 = v18;
          v46 = *(v8 + 488);
          v47 = *(v8 + 496);
          v48 = *(v8 + 512);
          *(v8 + 496) = 0u;
          *(v8 + 512) = 0;
          *v49 = *(v8 + 520);
          v50 = *(v8 + 536);
          *(v8 + 520) = 0u;
          *(v8 + 536) = 0;
          v51 = *(v8 + 544);
          v52 = *(v8 + 560);
          *(v8 + 544) = 0u;
          *(v8 + 560) = 0;
          *__p = *(v8 + 568);
          v54 = *(v8 + 584);
          *(v8 + 568) = 0;
          *(v8 + 576) = 0;
          v20 = v7;
          *(v8 + 584) = 0;
          while (1)
          {
            sub_BA9EF8(v4 + v20 + 296, (v4 + v20));
            if (!v20)
            {
              break;
            }

            v21 = *(a3 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            v22 = (*(*v21 + 48))(v21, v37, v4 + v20 - 296);
            v20 -= 296;
            if ((v22 & 1) == 0)
            {
              sub_BA9EF8(v4 + v20 + 296, v37);
              v23 = __p[0];
              if (!__p[0])
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }

          sub_BA9EF8(v4, v37);
          v23 = __p[0];
          if (!__p[0])
          {
            goto LABEL_15;
          }

LABEL_14:
          __p[1] = v23;
          operator delete(v23);
LABEL_15:
          if (v51)
          {
            *(&v51 + 1) = v51;
            operator delete(v51);
          }

          if (v49[0])
          {
            v49[1] = v49[0];
            operator delete(v49[0]);
          }

          v24 = v47;
          if (v47)
          {
            v25 = *(&v47 + 1);
            v26 = v47;
            if (*(&v47 + 1) != v47)
            {
              v36 = v7;
              do
              {
                v28 = *(v25 - 40);
                if (v28)
                {
                  *(v25 - 32) = v28;
                  operator delete(v28);
                }

                v29 = (v25 - 72);
                v30 = *(v25 - 72);
                if (v30)
                {
                  v31 = *(v25 - 64);
                  v27 = *(v25 - 72);
                  if (v31 != v30)
                  {
                    do
                    {
                      v32 = v31 - 168;
                      v33 = *(v31 - 8);
                      if (v33 != -1)
                      {
                        (off_26716D0[v33])(v55, v31 - 168);
                      }

                      *(v31 - 8) = -1;
                      v31 -= 168;
                    }

                    while (v32 != v30);
                    v27 = *v29;
                  }

                  *(v25 - 64) = v30;
                  operator delete(v27);
                }

                v25 -= 72;
              }

              while (v29 != v24);
              v26 = v47;
              v4 = a1;
              v3 = a2;
              v7 = v36;
            }

            *(&v47 + 1) = v24;
            operator delete(v26);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }
        }

        v5 = v10 + 296;
        v7 += 296;
        v8 = v10;
      }

      while (v10 + 296 != v3);
    }
  }
}

void sub_BD349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A7847C(va);
  _Unwind_Resume(a1);
}

void sub_BD34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A7847C(va);
  _Unwind_Resume(a1);
}

void sub_BD34C8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v15 = *(a3 + 24);
      if (!v15)
      {
        sub_2B7420();
      }

      v17 = a2 - 296;
      v18 = (*(*v15 + 48))(v15, a2 - 296, a1);
      v19 = (a5 + 520);
      if (v18)
      {
        v20 = *v17;
        v21 = *(v17 + 2);
        *(a5 + 16) = *(v17 + 1);
        *(a5 + 32) = v21;
        *a5 = v20;
        v22 = *(v17 + 3);
        v23 = *(v17 + 4);
        v24 = *(v17 + 5);
        *(a5 + 96) = *(v17 + 12);
        *(a5 + 64) = v23;
        *(a5 + 80) = v24;
        *(a5 + 48) = v22;
        *(a5 + 104) = *(a2 - 48);
        v25 = *(a2 - 184);
        *(a5 + 128) = *(a2 - 21);
        *(a5 + 112) = v25;
        *(a2 - 11) = 0u;
        *(a2 - 23) = 0;
        *(a5 + 136) = *(a2 - 40);
        v26 = *(a2 - 152);
        v27 = *(a2 - 120);
        *(a5 + 160) = *(a2 - 136);
        *(a5 + 176) = v27;
        *(a5 + 144) = v26;
        *(a5 + 192) = *(a2 - 13);
        *(a5 + 200) = 0;
        *(a5 + 208) = 0u;
        *(a5 + 200) = *(a2 - 6);
        *(a5 + 216) = *(a2 - 10);
        *(a2 - 10) = 0;
        *(a2 - 6) = 0u;
        *(a5 + 240) = 0;
        *(a5 + 224) = 0u;
        *(a5 + 224) = *(a2 - 72);
        *(a5 + 240) = *(a2 - 7);
        *(a2 - 7) = 0;
        *(a2 - 72) = 0u;
        *(a5 + 264) = 0;
        *(a5 + 248) = 0u;
        *(a5 + 248) = *(a2 - 3);
        *(a5 + 264) = *(a2 - 4);
        *(a2 - 4) = 0;
        *(a2 - 3) = 0u;
        *(a5 + 288) = 0;
        *(a5 + 272) = 0u;
        *(a5 + 272) = *(a2 - 24);
        *(a5 + 288) = *(a2 - 1);
        *(a2 - 1) = 0;
        *(a2 - 24) = 0u;
        v28 = *a1;
        v29 = *(a1 + 32);
        *(a5 + 312) = *(a1 + 16);
        *(a5 + 328) = v29;
        *(a5 + 296) = v28;
        v30 = *(a1 + 48);
        v31 = *(a1 + 64);
        v32 = *(a1 + 80);
        *(a5 + 392) = *(a1 + 96);
        *(a5 + 360) = v31;
        *(a5 + 376) = v32;
        *(a5 + 344) = v30;
        *(a5 + 400) = *(a1 + 104);
        v33 = *(a1 + 112);
        *(a5 + 424) = *(a1 + 128);
        *(a5 + 408) = v33;
        *(a1 + 120) = 0u;
        *(a1 + 112) = 0;
        *(a5 + 432) = *(a1 + 136);
        v34 = *(a1 + 144);
        v35 = *(a1 + 176);
        *(a5 + 456) = *(a1 + 160);
        *(a5 + 472) = v35;
        *(a5 + 440) = v34;
        *(a5 + 488) = *(a1 + 192);
        *(a5 + 496) = 0;
        *(a5 + 504) = 0u;
        *(a5 + 496) = *(a1 + 200);
        *(a5 + 512) = *(a1 + 216);
        *(a1 + 216) = 0;
        *(a1 + 200) = 0u;
        *(a5 + 536) = 0;
        *v19 = 0u;
        *v19 = *(a1 + 224);
        *(a5 + 536) = *(a1 + 240);
        *(a1 + 240) = 0;
        *(a1 + 224) = 0u;
        *(a5 + 560) = 0;
        *(a5 + 544) = 0u;
        *(a5 + 544) = *(a1 + 248);
        *(a5 + 560) = *(a1 + 264);
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
        v36 = (a1 + 272);
        *(a5 + 568) = 0;
        *(a5 + 576) = 0;
        *(a5 + 584) = 0;
        *(a5 + 568) = *(a1 + 272);
        v37 = (a1 + 288);
      }

      else
      {
        v43 = *a1;
        v44 = *(a1 + 32);
        *(a5 + 16) = *(a1 + 16);
        *(a5 + 32) = v44;
        *a5 = v43;
        v45 = *(a1 + 48);
        v46 = *(a1 + 64);
        v47 = *(a1 + 80);
        *(a5 + 96) = *(a1 + 96);
        *(a5 + 64) = v46;
        *(a5 + 80) = v47;
        *(a5 + 48) = v45;
        *(a5 + 104) = *(a1 + 104);
        v48 = *(a1 + 112);
        *(a5 + 128) = *(a1 + 128);
        *(a5 + 112) = v48;
        *(a1 + 120) = 0u;
        *(a1 + 112) = 0;
        *(a5 + 136) = *(a1 + 136);
        v49 = *(a1 + 144);
        v50 = *(a1 + 176);
        *(a5 + 160) = *(a1 + 160);
        *(a5 + 176) = v50;
        *(a5 + 144) = v49;
        *(a5 + 192) = *(a1 + 192);
        *(a5 + 200) = 0;
        *(a5 + 208) = 0u;
        *(a5 + 200) = *(a1 + 200);
        *(a5 + 216) = *(a1 + 216);
        *(a1 + 216) = 0;
        *(a1 + 200) = 0u;
        *(a5 + 240) = 0;
        *(a5 + 224) = 0u;
        *(a5 + 224) = *(a1 + 224);
        *(a5 + 240) = *(a1 + 240);
        *(a1 + 240) = 0;
        *(a1 + 224) = 0u;
        *(a5 + 264) = 0;
        *(a5 + 248) = 0u;
        *(a5 + 248) = *(a1 + 248);
        *(a5 + 264) = *(a1 + 264);
        *(a1 + 264) = 0;
        *(a1 + 248) = 0u;
        *(a5 + 288) = 0;
        *(a5 + 272) = 0u;
        *(a5 + 272) = *(a1 + 272);
        *(a5 + 288) = *(a1 + 288);
        *(a1 + 288) = 0;
        *(a1 + 272) = 0u;
        v51 = *v17;
        v52 = *(v17 + 2);
        *(a5 + 312) = *(v17 + 1);
        *(a5 + 328) = v52;
        *(a5 + 296) = v51;
        v53 = *(v17 + 3);
        v54 = *(v17 + 4);
        v55 = *(v17 + 5);
        *(a5 + 392) = *(v17 + 12);
        *(a5 + 360) = v54;
        *(a5 + 376) = v55;
        *(a5 + 344) = v53;
        *(a5 + 400) = *(a2 - 48);
        v56 = *(a2 - 184);
        *(a5 + 424) = *(a2 - 21);
        *(a5 + 408) = v56;
        *(a2 - 11) = 0u;
        *(a2 - 23) = 0;
        *(a5 + 432) = *(a2 - 40);
        v57 = *(a2 - 152);
        v58 = *(a2 - 120);
        *(a5 + 456) = *(a2 - 136);
        *(a5 + 472) = v58;
        *(a5 + 440) = v57;
        *(a5 + 488) = *(a2 - 13);
        *(a5 + 496) = 0;
        *(a5 + 504) = 0u;
        *(a5 + 496) = *(a2 - 6);
        *(a5 + 512) = *(a2 - 10);
        *(a2 - 10) = 0;
        *(a2 - 6) = 0u;
        *(a5 + 536) = 0;
        *v19 = 0u;
        *v19 = *(a2 - 72);
        *(a5 + 536) = *(a2 - 7);
        *(a2 - 7) = 0;
        *(a2 - 72) = 0u;
        *(a5 + 560) = 0;
        *(a5 + 544) = 0u;
        *(a5 + 544) = *(a2 - 3);
        *(a5 + 560) = *(a2 - 4);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *(a5 + 568) = 0;
        *(a5 + 576) = 0;
        *(a5 + 584) = 0;
        v59 = *(a2 - 24);
        v36 = a2 - 3;
        *(a5 + 568) = v59;
        v37 = v36 + 2;
      }

      *(a5 + 584) = *v37;
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
    }

    else if (a4 == 1)
    {
      v7 = *a1;
      v8 = *(a1 + 32);
      *(a5 + 16) = *(a1 + 16);
      *(a5 + 32) = v8;
      *a5 = v7;
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v11 = *(a1 + 80);
      *(a5 + 96) = *(a1 + 96);
      *(a5 + 64) = v10;
      *(a5 + 80) = v11;
      *(a5 + 48) = v9;
      *(a5 + 104) = *(a1 + 104);
      v12 = *(a1 + 112);
      *(a5 + 128) = *(a1 + 128);
      *(a5 + 112) = v12;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 0;
      *(a5 + 136) = *(a1 + 136);
      v13 = *(a1 + 144);
      v14 = *(a1 + 176);
      *(a5 + 160) = *(a1 + 160);
      *(a5 + 176) = v14;
      *(a5 + 144) = v13;
      *(a5 + 192) = *(a1 + 192);
      *(a5 + 208) = 0;
      *(a5 + 216) = 0;
      *(a5 + 200) = 0;
      *(a5 + 200) = *(a1 + 200);
      *(a5 + 216) = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      *(a5 + 224) = 0;
      *(a5 + 232) = 0;
      *(a5 + 240) = 0;
      *(a5 + 224) = *(a1 + 224);
      *(a5 + 240) = *(a1 + 240);
      *(a1 + 224) = 0;
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      *(a5 + 248) = 0;
      *(a5 + 256) = 0;
      *(a5 + 264) = 0;
      *(a5 + 248) = *(a1 + 248);
      *(a5 + 264) = *(a1 + 264);
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a5 + 272) = 0;
      *(a5 + 280) = 0;
      *(a5 + 288) = 0;
      *(a5 + 272) = *(a1 + 272);
      *(a5 + 288) = *(a1 + 288);
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
    }

    else if (a4 > 8)
    {
      v38 = a4 >> 1;
      v39 = 296 * (a4 >> 1);
      sub_BD2F40(a1, v39 + a1, a3, v38, a5, v38);
      sub_BD2F40(v39 + a1, a2, a3, a4 - v38, a5 + v39, a4 - v38);

      sub_BD4744(a1, (v39 + a1), (v39 + a1), a2, a5, a3);
    }

    else
    {

      sub_BD42E8(a1, a2, a5, a3);
    }
  }
}

void sub_BD3AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD3B18(uint64_t result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = sub_BA9EF8(a5, a3);
      a3 = (a3 + 296);
      a5 += 296;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(a6 + 24);
      if (!v12)
      {
        sub_2B7420();
      }

      if ((*(*v12 + 48))(v12, a3, v11))
      {
        result = sub_BA9EF8(a5, a3);
        a3 = (a3 + 296);
        a5 += 296;
        if (v11 == a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_BA9EF8(a5, v11);
        v11 = (v11 + 296);
        a5 += 296;
        if (v11 == a2)
        {
          goto LABEL_10;
        }
      }
    }

    while (v11 != a2)
    {
      result = sub_BA9EF8(a5, v11);
      v11 = (v11 + 296);
      a5 += 296;
    }
  }

  return result;
}

void sub_BD3C24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a6;
  if (a6)
  {
    while (1)
    {
      if (v45 <= a8 || a5 <= a8)
      {
        sub_BD4CCC(a1, a2, a3, a4, a5, v45, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v11 = 0;
      v12 = -a5;
      while (1)
      {
        v13 = *(a4 + 24);
        if (!v13)
        {
          sub_2B7420();
        }

        v14 = a4;
        v15 = a1;
        if ((*(*v13 + 48))(v13, a2, v11 + a1))
        {
          break;
        }

        v11 = (v11 + 296);
        v16 = __CFADD__(v12++, 1);
        a4 = v14;
        a1 = v15;
        if (v16)
        {
          return;
        }
      }

      v17 = -v12;
      v18 = v15;
      v19 = v45;
      if (-v12 >= v45)
      {
        v20 = a2;
        if (v12 == -1)
        {
          sub_BCCD18(v11 + v15, a2);
          return;
        }

        v27 = *(v14 + 24);
        if (v27)
        {
          if (v27 == v14)
          {
            v47 = v46;
            (*(*v27 + 24))(v27, v46);
          }

          else
          {
            v47 = (*(*v27 + 16))(v27);
          }

          v18 = v15;
          v20 = a2;
        }

        else
        {
          v47 = 0;
        }

        v25 = v17 / 2;
        v22 = v11 + 296 * (v17 / 2) + v18;
        v21 = v20;
        if (v20 != a3)
        {
          v39 = v17 / 2;
          v28 = 0x14C1BACF914C1BADLL * ((a3 - v20) >> 3);
          v21 = v20;
          do
          {
            if (!v47)
            {
              sub_2B7420();
            }

            v29 = v21 + 296 * (v28 >> 1);
            v30 = (*(*v47 + 48))(v47, v29, v22);
            if (v30)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v30)
            {
              v21 = (v29 + 296);
            }
          }

          while (v28);
          v25 = v39;
        }

        if (v47 == v46)
        {
          (*(*v47 + 32))(v47);
        }

        else if (v47)
        {
          (*(*v47 + 40))();
        }

        v41 = 0x14C1BACF914C1BADLL * ((v21 - v20) >> 3);
        v19 = v45;
        v26 = v21;
        if (v20 != v22)
        {
LABEL_44:
          v26 = v22;
          if (v20 != v21)
          {
            sub_BCCD18(v22, v20);
            v26 = v22 + 296;
            v31 = (v20 + 296);
            for (i = v25; v31 != v21; v31 = (v31 + 296))
            {
              if (v26 == v20)
              {
                v20 = v31;
              }

              sub_BCCD18(v26, v31);
              v26 += 296;
            }

            if (v26 != v20)
            {
              v32 = v20;
              v33 = v26;
              v34 = v32;
              while (1)
              {
                sub_BCCD18(v33, v34);
                v34 = (v34 + 296);
                v35 = v33 + 296 == v32;
                if (v34 == v21)
                {
                  if ((v33 + 296) == v32)
                  {
                    break;
                  }

                  v34 = (v32 + 296);
                  v33 += 592;
                  while (1)
                  {
                    sub_BCCD18(v33 - 296, v32);
                    v35 = v33 == v32;
                    if (v34 != v21)
                    {
                      break;
                    }

                    v36 = v33 == v32;
                    v33 += 296;
                    if (v36)
                    {
                      goto LABEL_61;
                    }
                  }
                }

                else
                {
                  v33 += 296;
                }

                if (v35)
                {
                  v32 = v34;
                }
              }
            }

LABEL_61:
            v19 = v45;
            v25 = i;
          }
        }
      }

      else
      {
        v20 = a2;
        v41 = v45 / 2;
        v21 = (a2 + 296 * (v45 / 2));
        v22 = a2;
        if ((a2 - v15) != v11)
        {
          v23 = 0x14C1BACF914C1BADLL * ((a2 - v15 - v11) >> 3);
          v22 = v11 + v15;
          do
          {
            v24 = *(v14 + 24);
            if (!v24)
            {
              sub_2B7420();
            }

            if ((*(*v24 + 48))(v24, v21, v22 + 296 * (v23 >> 1)))
            {
              v23 >>= 1;
            }

            else
            {
              v22 += 296 * (v23 >> 1) + 296;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v19 = v45;
          v18 = v15;
          v20 = a2;
        }

        v25 = 0x14C1BACF914C1BADLL * ((v22 - v18 - v11) >> 3);
        v26 = v21;
        if (v20 != v22)
        {
          goto LABEL_44;
        }
      }

      a5 = -v12 - v25;
      v37 = v19 - v41;
      if (v25 + v41 >= v19 - (v25 + v41) - v12)
      {
        v38 = v25;
        sub_BD3C24(v26, v21, a3, v14, a5, v19 - v41, a7, a8);
        a2 = v22;
        a1 = v11 + v15;
        a5 = v38;
        a3 = v26;
        v45 = v41;
        a4 = v14;
        if (!v41)
        {
          return;
        }
      }

      else
      {
        sub_BD3C24(v11 + v15, v22, v26, v14, v25, v41, a7, a8);
        a1 = v26;
        a2 = v21;
        v45 = v37;
        a4 = v14;
        if (!v37)
        {
          return;
        }
      }
    }
  }
}

void sub_BD41BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

void sub_BD41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

void ***sub_BD41E8(void ***a1)
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
        v6 = *(v3 - 5);
        if (v6)
        {
          *(v3 - 4) = v6;
          operator delete(v6);
        }

        v7 = v3 - 9;
        v8 = *(v3 - 9);
        if (v8)
        {
          v9 = *(v3 - 8);
          v5 = *(v3 - 9);
          if (v9 != v8)
          {
            do
            {
              v10 = v9 - 168;
              v11 = *(v9 - 2);
              if (v11 != -1)
              {
                (off_26716D0[v11])(&v13, v9 - 168);
              }

              *(v9 - 2) = -1;
              v9 -= 168;
            }

            while (v10 != v8);
            v5 = *v7;
          }

          *(v3 - 8) = v8;
          operator delete(v5);
        }

        v3 -= 9;
      }

      while (v7 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BD42E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 32);
    *(a3 + 16) = *(result + 16);
    *(a3 + 32) = v8;
    *a3 = v7;
    v9 = *(result + 48);
    v10 = *(result + 64);
    v11 = *(result + 80);
    *(a3 + 96) = *(result + 96);
    *(a3 + 64) = v10;
    *(a3 + 80) = v11;
    *(a3 + 48) = v9;
    *(a3 + 104) = *(result + 104);
    v12 = *(result + 112);
    *(a3 + 128) = *(result + 128);
    *(a3 + 112) = v12;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 112) = 0;
    *(a3 + 136) = *(result + 136);
    v13 = *(result + 144);
    v14 = *(result + 176);
    *(a3 + 160) = *(result + 160);
    *(a3 + 176) = v14;
    *(a3 + 144) = v13;
    *(a3 + 192) = *(result + 192);
    *(a3 + 208) = 0;
    *(a3 + 216) = 0;
    *(a3 + 200) = 0;
    *(a3 + 200) = *(result + 200);
    *(a3 + 216) = *(result + 216);
    *(result + 200) = 0;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(a3 + 224) = 0;
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 224) = *(result + 224);
    *(a3 + 240) = *(result + 240);
    *(result + 224) = 0;
    *(result + 232) = 0;
    *(result + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 0;
    *(a3 + 264) = 0;
    *(a3 + 248) = *(result + 248);
    *(a3 + 264) = *(result + 264);
    *(result + 248) = 0;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(a3 + 272) = 0;
    *(a3 + 280) = 0;
    *(a3 + 288) = 0;
    *(a3 + 272) = *(result + 272);
    *(a3 + 288) = *(result + 288);
    *(result + 272) = 0;
    *(result + 280) = 0;
    *(result + 288) = 0;
    v40 = 1;
    v15 = result + 296;
    if (result + 296 != a2)
    {
      v17 = 0;
      v18 = a3;
      do
      {
        while (1)
        {
          v27 = *(a4 + 24);
          if (!v27)
          {
LABEL_16:
            sub_2B7420();
          }

          v28 = v15;
          result = (*(*v27 + 48))(v27, v15, v18);
          v29 = (v18 + 296);
          v30 = (v18 + 408);
          v31 = (v18 + 440);
          if (result)
          {
            break;
          }

          v19 = *v28;
          v20 = *(v28 + 32);
          *(v18 + 312) = *(v28 + 16);
          *(v18 + 328) = v20;
          *v29 = v19;
          v21 = *(v28 + 48);
          v22 = *(v28 + 64);
          v23 = *(v28 + 80);
          *(v18 + 392) = *(v28 + 96);
          *(v18 + 360) = v22;
          *(v18 + 376) = v23;
          *(v18 + 344) = v21;
          *(v18 + 400) = *(v6 + 400);
          v24 = *(v6 + 408);
          *(v18 + 424) = *(v6 + 424);
          *v30 = v24;
          *(v6 + 416) = 0u;
          *(v6 + 408) = 0;
          *(v18 + 432) = *(v6 + 432);
          v25 = *(v6 + 440);
          v26 = *(v6 + 472);
          *(v18 + 456) = *(v6 + 456);
          *(v18 + 472) = v26;
          *v31 = v25;
          *(v18 + 488) = *(v6 + 488);
          *(v18 + 496) = 0;
          *(v18 + 504) = 0u;
          *(v18 + 496) = *(v6 + 496);
          *(v18 + 512) = *(v6 + 512);
          *(v6 + 512) = 0;
          *(v6 + 496) = 0u;
          *(v18 + 536) = 0;
          *(v18 + 520) = 0u;
          *(v18 + 520) = *(v6 + 520);
          *(v18 + 528) = *(v6 + 528);
          *(v6 + 536) = 0;
          *(v6 + 520) = 0u;
          *(v18 + 560) = 0;
          *(v18 + 544) = 0u;
          *(v18 + 544) = *(v6 + 544);
          *(v18 + 560) = *(v6 + 560);
          *(v6 + 560) = 0;
          *(v6 + 544) = 0u;
          *(v18 + 584) = 0;
          *(v18 + 568) = 0u;
          *(v18 + 568) = *(v6 + 568);
          *(v18 + 576) = *(v6 + 576);
          *(v6 + 584) = 0;
          *(v6 + 568) = 0u;
          ++v40;
          v15 = v28 + 296;
          v17 += 296;
          v18 += 296;
          v6 = v28;
          if (v28 + 296 == a2)
          {
            return result;
          }
        }

        v32 = *(v18 + 80);
        *(v18 + 360) = *(v18 + 64);
        *(v18 + 376) = v32;
        *(v18 + 392) = *(v18 + 96);
        v33 = *(v18 + 16);
        *v29 = *v18;
        *(v18 + 312) = v33;
        v34 = *(v18 + 48);
        *(v18 + 328) = *(v18 + 32);
        *(v18 + 344) = v34;
        *(v18 + 400) = *(v18 + 104);
        v35 = *(v18 + 112);
        *(v18 + 424) = *(v18 + 128);
        *v30 = v35;
        *(v18 + 120) = 0;
        *(v18 + 128) = 0;
        *(v18 + 112) = 0;
        *(v18 + 432) = *(v18 + 136);
        v36 = *(v18 + 176);
        *(v18 + 456) = *(v18 + 160);
        *(v18 + 472) = v36;
        *v31 = *(v18 + 144);
        *(v18 + 488) = *(v18 + 192);
        *(v18 + 496) = *(v18 + 200);
        *(v18 + 512) = *(v18 + 216);
        *(v18 + 200) = 0;
        *(v18 + 208) = 0;
        *(v18 + 520) = *(v18 + 224);
        *(v18 + 536) = *(v18 + 240);
        *(v18 + 216) = 0;
        *(v18 + 224) = 0;
        *(v18 + 232) = 0;
        *(v18 + 240) = 0;
        *(v18 + 544) = *(v18 + 248);
        *(v18 + 560) = *(v18 + 264);
        *(v18 + 248) = 0;
        *(v18 + 256) = 0;
        *(v18 + 568) = *(v18 + 272);
        *(v18 + 584) = *(v18 + 288);
        *(v18 + 264) = 0;
        *(v18 + 272) = 0;
        *(v18 + 280) = 0;
        *(v18 + 288) = 0;
        v37 = a3;
        ++v40;
        if (v18 != a3)
        {
          v38 = v17;
          while (1)
          {
            v39 = *(a4 + 24);
            if (!v39)
            {
              goto LABEL_16;
            }

            if (!(*(*v39 + 48))(v39, v28, a3 + v38 - 296))
            {
              break;
            }

            sub_BA9EF8(a3 + v38, (a3 + v38 - 296));
            v38 -= 296;
            if (!v38)
            {
              v37 = a3;
              goto LABEL_14;
            }
          }

          v37 = a3 + v38;
        }

LABEL_14:
        result = sub_BA9EF8(v37, v28);
        v15 = v28 + 296;
        v17 += 296;
        v18 += 296;
        v6 = v28;
      }

      while (v28 + 296 != a2);
    }
  }

  return result;
}

void sub_BD4720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_BD4744(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v54 = 0;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      v46 = *a3;
      v47 = a3[2];
      *(a5 + 16) = a3[1];
      *(a5 + 32) = v47;
      *a5 = v46;
      v48 = a3[3];
      v49 = a3[4];
      v50 = a3[5];
      *(a5 + 96) = *(a3 + 12);
      *(a5 + 64) = v49;
      *(a5 + 80) = v50;
      *(a5 + 48) = v48;
      *(a5 + 104) = *(a3 + 26);
      v51 = a3[7];
      *(a5 + 128) = *(a3 + 16);
      *(a5 + 112) = v51;
      *(a3 + 15) = 0;
      *(a3 + 16) = 0;
      *(a3 + 14) = 0;
      *(a5 + 136) = *(a3 + 34);
      v52 = a3[9];
      v53 = a3[11];
      *(a5 + 160) = a3[10];
      *(a5 + 176) = v53;
      *(a5 + 144) = v52;
      *(a5 + 192) = *(a3 + 24);
      *(a5 + 208) = 0;
      *(a5 + 216) = 0;
      *(a5 + 200) = 0;
      *(a5 + 200) = *(a3 + 200);
      *(a5 + 216) = *(a3 + 27);
      *(a3 + 25) = 0;
      *(a3 + 26) = 0;
      *(a3 + 27) = 0;
      *(a5 + 224) = 0;
      *(a5 + 232) = 0;
      *(a5 + 240) = 0;
      *(a5 + 224) = a3[14];
      *(a5 + 240) = *(a3 + 30);
      *(a3 + 28) = 0;
      *(a3 + 29) = 0;
      *(a3 + 30) = 0;
      *(a5 + 248) = 0;
      *(a5 + 256) = 0;
      *(a5 + 264) = 0;
      *(a5 + 248) = *(a3 + 248);
      *(a5 + 264) = *(a3 + 33);
      *(a3 + 31) = 0;
      *(a3 + 32) = 0;
      *(a3 + 33) = 0;
      *(a5 + 272) = 0;
      *(a5 + 280) = 0;
      *(a5 + 288) = 0;
      result = a3[17];
      *(a5 + 272) = result;
      *(a5 + 288) = *(a3 + 36);
      *(a3 + 34) = 0;
      *(a3 + 35) = 0;
      *(a3 + 36) = 0;
      a3 = (a3 + 296);
      a5 += 296;
    }
  }

  else
  {
    v11 = a1;
    v12 = 0;
    while (a3 != a4)
    {
      v22 = *(a6 + 24);
      if (!v22)
      {
        sub_2B7420();
      }

      v23 = (*(*v22 + 48))(v22, a3, v11);
      v24 = a5 + v12;
      v25 = a5 + v12;
      if (v23)
      {
        v26 = *a3;
        v27 = a3[2];
        *(v24 + 16) = a3[1];
        *(v24 + 32) = v27;
        *v24 = v26;
        v28 = a3[3];
        v29 = a3[4];
        v30 = a3[5];
        *(v24 + 96) = *(a3 + 12);
        *(v24 + 64) = v29;
        *(v24 + 80) = v30;
        *(v24 + 48) = v28;
        *(v25 + 104) = *(a3 + 26);
        v31 = a3[7];
        *(v25 + 128) = *(a3 + 16);
        *(v25 + 112) = v31;
        *(a3 + 15) = 0;
        *(a3 + 16) = 0;
        *(a3 + 14) = 0;
        *(v25 + 136) = *(a3 + 34);
        v32 = a3[9];
        v33 = a3[11];
        *(v25 + 160) = a3[10];
        *(v25 + 176) = v33;
        *(v25 + 144) = v32;
        *(v25 + 192) = *(a3 + 24);
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 200) = 0;
        *(v25 + 200) = *(a3 + 200);
        *(v25 + 216) = *(a3 + 27);
        *(a3 + 25) = 0;
        *(a3 + 26) = 0;
        *(a3 + 27) = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 240) = 0;
        *(v25 + 224) = a3[14];
        *(v25 + 240) = *(a3 + 30);
        *(a3 + 28) = 0;
        *(a3 + 29) = 0;
        *(a3 + 30) = 0;
        *(v25 + 248) = 0;
        *(v25 + 256) = 0;
        *(v25 + 264) = 0;
        *(v25 + 248) = *(a3 + 248);
        *(v25 + 264) = *(a3 + 33);
        *(a3 + 31) = 0;
        *(a3 + 32) = 0;
        *(a3 + 33) = 0;
        *(v25 + 272) = 0;
        *(v25 + 280) = 0;
        *(v25 + 288) = 0;
        result = a3[17];
        *(v25 + 272) = result;
        *(v25 + 288) = *(a3 + 36);
        *(a3 + 34) = 0;
        *(a3 + 35) = 0;
        *(a3 + 36) = 0;
        a3 = (a3 + 296);
      }

      else
      {
        v13 = *v11;
        v14 = v11[2];
        *(v24 + 16) = v11[1];
        *(v24 + 32) = v14;
        *v24 = v13;
        v15 = v11[3];
        v16 = v11[4];
        v17 = v11[5];
        *(v24 + 96) = *(v11 + 12);
        *(v24 + 64) = v16;
        *(v24 + 80) = v17;
        *(v24 + 48) = v15;
        *(v25 + 104) = *(v11 + 26);
        v18 = v11[7];
        *(v25 + 128) = *(v11 + 16);
        *(v25 + 112) = v18;
        *(v11 + 15) = 0;
        *(v11 + 16) = 0;
        *(v11 + 14) = 0;
        *(v25 + 136) = *(v11 + 34);
        v19 = v11[9];
        v20 = v11[11];
        *(v25 + 160) = v11[10];
        *(v25 + 176) = v20;
        *(v25 + 144) = v19;
        *(v25 + 192) = *(v11 + 24);
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 200) = 0;
        *(v25 + 200) = *(v11 + 200);
        *(v25 + 216) = *(v11 + 27);
        *(v11 + 25) = 0;
        *(v11 + 26) = 0;
        *(v11 + 27) = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 240) = 0;
        *(v25 + 224) = v11[14];
        *(v25 + 240) = *(v11 + 30);
        *(v11 + 28) = 0;
        *(v11 + 29) = 0;
        *(v11 + 30) = 0;
        *(v25 + 248) = 0;
        *(v25 + 256) = 0;
        *(v25 + 264) = 0;
        *(v25 + 248) = *(v11 + 248);
        *(v25 + 264) = *(v11 + 33);
        *(v11 + 31) = 0;
        *(v11 + 32) = 0;
        *(v11 + 33) = 0;
        *(v25 + 272) = 0;
        *(v25 + 280) = 0;
        *(v25 + 288) = 0;
        result = v11[17];
        *(v25 + 272) = result;
        *(v25 + 288) = *(v11 + 36);
        *(v11 + 34) = 0;
        *(v11 + 35) = 0;
        *(v11 + 36) = 0;
        v11 = (v11 + 296);
      }

      ++v54;
      v12 += 296;
      if (v11 == a2)
      {
        a5 += v12;
        goto LABEL_15;
      }
    }

    if (v11 != a2)
    {
      v34 = 0;
      do
      {
        v35 = (v11 + v34);
        v36 = a5 + v12 + v34;
        v37 = *(v11 + v34);
        v38 = *(v11 + v34 + 32);
        *(v36 + 16) = *(v11 + v34 + 16);
        *(v36 + 32) = v38;
        *v36 = v37;
        v39 = *(v11 + v34 + 48);
        v40 = *(v11 + v34 + 64);
        v41 = *(v11 + v34 + 80);
        *(v36 + 96) = *(v11 + v34 + 96);
        *(v36 + 64) = v40;
        *(v36 + 80) = v41;
        *(v36 + 48) = v39;
        v42 = a5 + v34 + v12;
        *(v42 + 104) = *(v11 + v34 + 104);
        v43 = *(v11 + v34 + 112);
        *(v42 + 128) = *(v11 + v34 + 128);
        *(v42 + 112) = v43;
        v35[15] = 0;
        v35[16] = 0;
        v35[14] = 0;
        *(v42 + 136) = *(v11 + v34 + 136);
        v44 = *(v11 + v34 + 144);
        v45 = *(v11 + v34 + 176);
        *(v36 + 160) = *(v11 + v34 + 160);
        *(v36 + 176) = v45;
        *(v36 + 144) = v44;
        *&v44 = *(v11 + v34 + 192);
        *(v42 + 208) = 0;
        *(v42 + 216) = 0;
        *(v42 + 192) = v44;
        *(v42 + 200) = 0;
        *(v42 + 200) = *(v11 + v34 + 200);
        *(v42 + 216) = *(v11 + v34 + 216);
        v35[25] = 0;
        v35[26] = 0;
        v35[27] = 0;
        *(v42 + 224) = 0;
        *(v42 + 232) = 0;
        *(v42 + 240) = 0;
        *(v42 + 224) = *(v11 + v34 + 224);
        *(v42 + 240) = *(v11 + v34 + 240);
        v35[28] = 0;
        v35[29] = 0;
        v35[30] = 0;
        *(v42 + 248) = 0;
        *(v42 + 256) = 0;
        *(v42 + 264) = 0;
        *(v42 + 248) = *(v11 + v34 + 248);
        *(v42 + 264) = *(v11 + v34 + 264);
        v35[31] = 0;
        v35[32] = 0;
        v35[33] = 0;
        *(v42 + 272) = 0;
        *(v42 + 280) = 0;
        *(v42 + 288) = 0;
        result = *(v11 + v34 + 272);
        *(v42 + 272) = result;
        *(v42 + 288) = *(v11 + v34 + 288);
        v35[34] = 0;
        v35[35] = 0;
        v35[36] = 0;
        v34 += 296;
      }

      while (v35 + 37 != a2);
    }
  }

  return result;
}

void sub_BD4C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD4C2C(unint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = 0;
    v4 = a2 + 200;
    do
    {
      v5 = *(v4 + 72);
      if (v5)
      {
        *(v4 + 80) = v5;
        operator delete(v5);
      }

      v6 = *(v4 + 48);
      if (v6)
      {
        *(v4 + 56) = v6;
        operator delete(v6);
      }

      v7 = *(v4 + 24);
      if (v7)
      {
        *(v4 + 32) = v7;
        operator delete(v7);
      }

      sub_BD41E8(v4);
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 88));
      }

      ++v3;
      v4 += 296;
    }

    while (v3 < *a1);
  }
}

void sub_BD4CCC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2;
  v11 = a1;
  if (a5 > a6)
  {
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = a7 + v12;
        v15 = (a2 + v12);
        v16 = *(a2 + v12);
        v17 = *(a2 + v12 + 32);
        *(v14 + 16) = *(a2 + v12 + 16);
        *(v14 + 32) = v17;
        *v14 = v16;
        v18 = *(a2 + v12 + 48);
        v19 = *(a2 + v12 + 64);
        v20 = *(a2 + v12 + 80);
        *(v14 + 96) = *(a2 + v12 + 96);
        *(v14 + 64) = v19;
        *(v14 + 80) = v20;
        *(v14 + 48) = v18;
        *(v14 + 104) = *(a2 + v12 + 104);
        v21 = *(a2 + v12 + 112);
        *(v14 + 128) = *(a2 + v12 + 128);
        *(v14 + 112) = v21;
        v15[15] = 0;
        v15[16] = 0;
        v15[14] = 0;
        *(v14 + 136) = *(a2 + v12 + 136);
        v22 = *(a2 + v12 + 144);
        v23 = *(a2 + v12 + 176);
        *(v14 + 160) = *(a2 + v12 + 160);
        *(v14 + 176) = v23;
        *(v14 + 144) = v22;
        *&v22 = *(a2 + v12 + 192);
        *(v14 + 208) = 0;
        *(v14 + 216) = 0;
        *(v14 + 200) = 0;
        *(v14 + 192) = v22;
        *(v14 + 200) = *(a2 + v12 + 200);
        *(v14 + 216) = *(a2 + v12 + 216);
        v15[25] = 0;
        v15[26] = 0;
        v15[27] = 0;
        *(v14 + 224) = 0;
        *(v14 + 232) = 0;
        *(v14 + 240) = 0;
        *(v14 + 224) = *(a2 + v12 + 224);
        *(v14 + 240) = *(a2 + v12 + 240);
        v15[28] = 0;
        v15[29] = 0;
        v15[30] = 0;
        *(v14 + 248) = 0;
        *(v14 + 256) = 0;
        *(v14 + 264) = 0;
        *(v14 + 248) = *(a2 + v12 + 248);
        *(v14 + 264) = *(a2 + v12 + 264);
        v15[31] = 0;
        v15[32] = 0;
        v15[33] = 0;
        *(v14 + 272) = 0;
        *(v14 + 280) = 0;
        *(v14 + 288) = 0;
        *(v14 + 272) = *(a2 + v12 + 272);
        *(v14 + 288) = *(a2 + v12 + 288);
        v15[34] = 0;
        v15[35] = 0;
        v15[36] = 0;
        ++v13;
        v12 += 296;
      }

      while (v15 + 37 != a3);
      v46 = v13;
      v24 = a3 - 296;
      v25 = (a7 + v12);
      while (v10 != v11)
      {
        v26 = *(a4 + 24);
        if (!v26)
        {
          sub_2B7420();
        }

        v27 = (*(*v26 + 48))(v26, v25 - 296, v10 - 296);
        if (v27)
        {
          v28 = (v10 - 296);
        }

        else
        {
          v28 = (v25 - 296);
        }

        if (v27)
        {
          v10 = (v10 - 296);
        }

        else
        {
          v25 = (v25 - 296);
        }

        sub_BA9EF8(v24, v28);
        v24 -= 296;
        if (v25 == a7)
        {
          goto LABEL_32;
        }
      }

      while (v25 != a7)
      {
        v25 = (v25 - 296);
        sub_BA9EF8(v24, v25);
        v24 -= 296;
      }

      goto LABEL_32;
    }

LABEL_20:
    v46 = 0;
    goto LABEL_32;
  }

  if (a1 == a2)
  {
    goto LABEL_20;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = a7 + v29;
    v32 = (a1 + v29);
    v33 = *(a1 + v29);
    v34 = *(a1 + v29 + 32);
    *(v31 + 16) = *(a1 + v29 + 16);
    *(v31 + 32) = v34;
    *v31 = v33;
    v35 = *(a1 + v29 + 48);
    v36 = *(a1 + v29 + 64);
    v37 = *(a1 + v29 + 80);
    *(v31 + 96) = *(a1 + v29 + 96);
    *(v31 + 64) = v36;
    *(v31 + 80) = v37;
    *(v31 + 48) = v35;
    *(v31 + 104) = *(a1 + v29 + 104);
    v38 = *(a1 + v29 + 112);
    *(v31 + 128) = *(a1 + v29 + 128);
    *(v31 + 112) = v38;
    v32[15] = 0;
    v32[16] = 0;
    v32[14] = 0;
    *(v31 + 136) = *(a1 + v29 + 136);
    v39 = *(a1 + v29 + 144);
    v40 = *(a1 + v29 + 176);
    *(v31 + 160) = *(a1 + v29 + 160);
    *(v31 + 176) = v40;
    *(v31 + 144) = v39;
    *&v39 = *(a1 + v29 + 192);
    *(v31 + 208) = 0;
    *(v31 + 216) = 0;
    *(v31 + 200) = 0;
    *(v31 + 192) = v39;
    *(v31 + 200) = *(a1 + v29 + 200);
    *(v31 + 216) = *(a1 + v29 + 216);
    v32[25] = 0;
    v32[26] = 0;
    v32[27] = 0;
    *(v31 + 224) = 0;
    *(v31 + 232) = 0;
    *(v31 + 240) = 0;
    *(v31 + 224) = *(a1 + v29 + 224);
    *(v31 + 240) = *(a1 + v29 + 240);
    v32[28] = 0;
    v32[29] = 0;
    v32[30] = 0;
    *(v31 + 248) = 0;
    *(v31 + 256) = 0;
    *(v31 + 264) = 0;
    *(v31 + 248) = *(a1 + v29 + 248);
    *(v31 + 264) = *(a1 + v29 + 264);
    v32[31] = 0;
    v32[32] = 0;
    v32[33] = 0;
    *(v31 + 272) = 0;
    *(v31 + 280) = 0;
    *(v31 + 288) = 0;
    *(v31 + 272) = *(a1 + v29 + 272);
    *(v31 + 288) = *(a1 + v29 + 288);
    v32[34] = 0;
    v32[35] = 0;
    v32[36] = 0;
    ++v30;
    v29 += 296;
  }

  while (v32 + 37 != a2);
  v46 = v30;
  v41 = (a7 + v29);
  v42 = a7 + v29 - 296;
  v43 = a7;
  while (v10 != a3)
  {
    v44 = *(a4 + 24);
    if (!v44)
    {
      sub_2B7420();
    }

    if ((*(*v44 + 48))(v44, v10, v43))
    {
      sub_BA9EF8(v11, v10);
      v10 = (v10 + 296);
      v11 += 296;
      if (v41 == v43)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_BA9EF8(v11, v43);
      v43 = (v43 + 296);
      v11 += 296;
      if (v41 == v43)
      {
        goto LABEL_32;
      }
    }
  }

  do
  {
    sub_BA9EF8(v11, v43);
    v11 += 296;
    v45 = v42 == v43;
    v43 = (v43 + 296);
  }

  while (!v45);
LABEL_32:
  if (a7)
  {
    sub_BD4C2C(&v46, a7);
  }
}