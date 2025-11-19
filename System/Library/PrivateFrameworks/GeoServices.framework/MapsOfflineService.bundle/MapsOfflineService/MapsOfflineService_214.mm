void sub_CB85E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a40);
  sub_C4D624(v40);
  sub_C4D624(&a22);
  _Unwind_Resume(a1);
}

void sub_CB8780(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v8);
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
  {
    v6 = sub_A57824(-85.0, -13.0);
    sub_58168(v6 >> 17, v6 >> 49);
    dword_27339D0 = v7 | 0x40000000;
    __cxa_guard_release(&qword_27339D8);
  }

  sub_C46508(dword_27339D0, a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 += (v4[4] - v4[3]) >> 4;
      v4 = *v4;
    }

    while (v4);
  }

  sub_7EA60(v8);
  operator new();
}

void sub_CB8BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 - 89) < 0)
  {
    operator delete(*(v3 - 112));
  }

  sub_1959728(va);
  sub_39AFC(v2);
  _Unwind_Resume(a1);
}

void sub_CB8C98(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v8);
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
  {
    v6 = sub_A57824(-85.0, -13.0);
    sub_58168(v6 >> 17, v6 >> 49);
    dword_27339D0 = v7 | 0x40000000;
    __cxa_guard_release(&qword_27339D8);
  }

  sub_C4E86C(dword_27339D0, a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 -= 0x5555555555555555 * ((v4[4] - v4[3]) >> 2);
      v4 = *v4;
    }

    while (v4);
  }

  sub_7EA60(v8);
  operator new();
}

void sub_CB90F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 - 89) < 0)
  {
    operator delete(*(v3 - 112));
  }

  sub_1959728(va);
  sub_39AFC(v2);
  _Unwind_Resume(a1);
}

void sub_CB91BC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v8);
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
  {
    v6 = sub_A57824(-85.0, -13.0);
    sub_58168(v6 >> 17, v6 >> 49);
    dword_27339D0 = v7 | 0x40000000;
    __cxa_guard_release(&qword_27339D8);
  }

  sub_C4EED8(dword_27339D0, a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 += (v4[4] - v4[3]) >> 3;
      v4 = *v4;
    }

    while (v4);
  }

  sub_7EA60(v8);
  operator new();
}

void sub_CB9610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 - 89) < 0)
  {
    operator delete(*(v3 - 112));
  }

  sub_1959728(va);
  sub_C4F39C(v2);
  _Unwind_Resume(a1);
}

void *sub_CB96D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = xmmword_22AC080;
  v12 = 0;
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  v17 = 256;
  v18 = 0;
  v3 = sub_CA4114(&v9, a1);
  sub_C7C3D4(&v9, v3, 0, 0);
  v4 = v10;
  v5 = v12;
  v6 = v14;
  v7 = v13;
  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(&v6 + 1);
  *(a2 + 40) = v7;
  if (v4 == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = 0;
  v13 = 0;
  *&v15 = 0;
  v14 = 0uLL;
  return sub_CA24C0(&v9);
}

void sub_CB97AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CA24C0(va);
  _Unwind_Resume(a1);
}

void *sub_CB97C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = result[2]; i; i = *i)
  {
    v13 = 0;
    v14 = 0;
    v15 = xmmword_22AC080;
    v16 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 1;
    v21 = 256;
    v22 = 0;
    v4 = sub_CAAD04(&v13, (i + 3));
    sub_C7C3D4(&v13, v4, 0, 0);
    v9 = v13;
    v10 = v14;
    *&v11 = v18;
    *(&v11 + 1) = v16;
    *&v12 = *(&v18 + 1);
    *(&v12 + 1) = v17;
    if (v14 == 1)
    {
      v13 = 0;
      v14 = 0;
    }

    v16 = 0;
    v17 = 0;
    *&v19 = 0;
    v18 = 0uLL;
    v23 = (i + 2);
    v5 = sub_CC255C(a2, i + 2);
    v6 = v5;
    v7 = v5 + 3;
    if (v5 + 3 == &v9)
    {
      if (v11)
      {
        if (!v9)
        {
          v23 = off_2672F70;
          operator delete[]();
        }

        (*(*v9 + 24))(v9);
      }
    }

    else
    {
      if (v5[5])
      {
        if (!*v7)
        {
          v23 = off_2672F70;
          operator delete[]();
        }

        (*(**v7 + 24))(*v7);
      }

      if (*(v6 + 32) == 1 && *v7)
      {
        (*(**v7 + 8))(*v7);
      }

      v6[3] = v9;
      *(v6 + 32) = v10;
      *(v6 + 5) = v11;
      v8 = *(&v12 + 1);
      v6[7] = v12;
      v6[8] = v8;
      v9 = 0;
      v10 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    if (v10 == 1)
    {
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    result = sub_CA24C0(&v13);
  }

  return result;
}

void sub_CB9AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_CA1F48(va);
  sub_CA24C0(va1);
  sub_CA1E18(v3);
  _Unwind_Resume(a1);
}

void sub_CB9AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CA24C0(va);
  sub_CA1E18(v9);
  _Unwind_Resume(a1);
}

void *sub_CB9B00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = result[2]; i; i = *i)
  {
    v13 = 0;
    v14 = 0;
    v15 = xmmword_22AC080;
    v16 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 1;
    v21 = 256;
    v22 = 0;
    v4 = sub_CAAEFC(&v13, (i + 3));
    sub_C7C3D4(&v13, v4, 0, 0);
    v9 = v13;
    v10 = v14;
    *&v11 = v18;
    *(&v11 + 1) = v16;
    *&v12 = *(&v18 + 1);
    *(&v12 + 1) = v17;
    if (v14 == 1)
    {
      v13 = 0;
      v14 = 0;
    }

    v16 = 0;
    v17 = 0;
    *&v19 = 0;
    v18 = 0uLL;
    v23 = (i + 2);
    v5 = sub_CC255C(a2, i + 2);
    v6 = v5;
    v7 = v5 + 3;
    if (v5 + 3 == &v9)
    {
      if (v11)
      {
        if (!v9)
        {
          v23 = off_2672F70;
          operator delete[]();
        }

        (*(*v9 + 24))(v9);
      }
    }

    else
    {
      if (v5[5])
      {
        if (!*v7)
        {
          v23 = off_2672F70;
          operator delete[]();
        }

        (*(**v7 + 24))(*v7);
      }

      if (*(v6 + 32) == 1 && *v7)
      {
        (*(**v7 + 8))(*v7);
      }

      v6[3] = v9;
      *(v6 + 32) = v10;
      *(v6 + 5) = v11;
      v8 = *(&v12 + 1);
      v6[7] = v12;
      v6[8] = v8;
      v9 = 0;
      v10 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    if (v10 == 1)
    {
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    result = sub_CA24C0(&v13);
  }

  return result;
}

void sub_CB9E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_CA1F48(va);
  sub_CA24C0(va1);
  sub_CA1E18(v3);
  _Unwind_Resume(a1);
}

void sub_CB9E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CA24C0(va);
  sub_CA1E18(v9);
  _Unwind_Resume(a1);
}

void *sub_CB9E40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = result[2]; i; i = *i)
  {
    v22 = 0;
    v24 = xmmword_22AC080;
    v25 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v30 = 256;
    v31 = 0;
    v4 = i[3];
    v23 = 0;
    v18 = &v22;
    v19 = i + 3;
    *&v20 = 0;
    v5 = i[4] - v4;
    if (v5)
    {
      v6 = sub_CAB108(&v22, v5 >> 3);
      BYTE14(v28) = 1;
      v7 = v26;
      if (v6)
      {
        if (v29 <= 3)
        {
          v29 = 4;
        }

        v8 = v26;
        v9 = -v26 & 3;
        if ((-v26 & 3) != 0)
        {
          v10 = *(&v27 + 1);
          v11 = v26;
          if (*(&v27 + 1) - v28 < v9)
          {
            sub_C7BF74(&v22, v9);
            v10 = *(&v27 + 1);
            v11 = v26;
          }

          v12 = 0;
          *(&v27 + 1) = v10 - v9;
          v26 = v11 + v9;
          do
          {
            *(*(&v27 + 1) + v12++) = 0;
          }

          while (v9 != v12);
          v8 = v26;
        }

        sub_CA58F0(&v22, 4, v8 - v6 + 4, 0);
      }
    }

    else
    {
      v7 = 0;
      BYTE14(v28) = 1;
    }

    v13 = sub_C7C16C(&v22, v7);
    sub_C7C3D4(&v22, v13, 0, 0);
    v18 = v22;
    LOBYTE(v19) = v23;
    *&v20 = v27;
    *(&v20 + 1) = v25;
    *&v21 = *(&v27 + 1);
    *(&v21 + 1) = v26;
    if (v23 == 1)
    {
      v22 = 0;
      v23 = 0;
    }

    v25 = 0;
    v26 = 0;
    *&v28 = 0;
    v27 = 0uLL;
    v32 = (i + 2);
    v14 = sub_CC255C(a2, i + 2);
    v15 = v14;
    v16 = v14 + 3;
    if (v14 + 3 == &v18)
    {
      if (v20)
      {
        if (!v18)
        {
          v32 = off_2672F70;
          operator delete[]();
        }

        (*(*v18 + 24))(v18);
      }
    }

    else
    {
      if (v14[5])
      {
        if (!*v16)
        {
          v32 = off_2672F70;
          operator delete[]();
        }

        (*(**v16 + 24))(*v16);
      }

      if (*(v15 + 32) == 1 && *v16)
      {
        (*(**v16 + 8))(*v16);
      }

      v15[3] = v18;
      *(v15 + 32) = v19;
      *(v15 + 5) = v20;
      v17 = *(&v21 + 1);
      v15[7] = v21;
      v15[8] = v17;
      v18 = 0;
      LOBYTE(v19) = 0;
      v20 = 0u;
      v21 = 0u;
    }

    if (v19 == 1)
    {
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    result = sub_CA24C0(&v22);
  }

  return result;
}

void sub_CBA218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_CA1F48(va);
  sub_CA24C0(va1);
  sub_CA1E18(v3);
  _Unwind_Resume(a1);
}

void sub_CBA23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CA24C0(va);
  sub_CA1E18(v9);
  _Unwind_Resume(a1);
}

void sub_CBA804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 105) < 0)
  {
    operator delete(*(v2 - 128));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_CBA8AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_A576FC((a1 + 4136), *(a2 + 4)))
  {
    *a3 = 0;
    a3[1] = 0;
    v81 = a3;
    a3[2] = 0;
    v6 = sub_A57920((a1 + 4136), *a2);
    v7 = (v6 - *v6);
    if (*v7 >= 5u)
    {
      v8 = v7[2];
      if (v8)
      {
        v78 = *(v6 + v8 + *(v6 + v8));
        if (v78)
        {
          v80 = 0;
          for (i = 0; i != v78; ++i)
          {
            v11 = *a2;
            v12 = *(a2 + 8);
            v13 = sub_A5706C((a1 + 4136), *a2);
            v14 = &v13[-*v13];
            v15 = *v14;
            if (v15 <= 4)
            {
              v19 = 0;
              v17 = (4 * v11 + 4 + dword_4[v11]);
              v20 = (v17 - *v17);
              if (*v20 < 0x11u)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v16 = *(v14 + 2);
              if (*(v14 + 2))
              {
                v16 += &v13[*&v13[v16]];
              }

              v17 = (v16 + 4 * v11 + 4 + *(v16 + 4 * v11 + 4));
              if (v15 >= 0xB && (v18 = *(v14 + 5)) != 0)
              {
                v19 = &v13[v18 + *&v13[v18]];
                v20 = (v17 - *v17);
                if (*v20 < 0x11u)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v19 = 0;
                v20 = (v17 - *v17);
                if (*v20 < 0x11u)
                {
LABEL_20:
                  LODWORD(v21) = 0;
                  goto LABEL_21;
                }
              }
            }

            v21 = v20[8];
            if (v20[8])
            {
              LODWORD(v21) = *(v17 + v21);
            }

LABEL_21:
            v22 = sub_A57320(v19, v21 + i + *(v17 + v20[2] + *(v17 + v20[2])) * v12);
            if (v22)
            {
              v23 = __ROR8__(*v22, 32);
              v24 = *(v22 + 8);
            }

            else
            {
              v24 = 0;
              v23 = 0xFFFFFFFFLL;
            }

            v82 = v23;
            v83 = v24;
            v100 = 0;
            v101 = 0;
            v102 = 0;
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v94 = 0;
            v95 = 0;
            v96 = 0;
            sub_C4DE74((a1 + 4184), &v82, &v100, &v97, &v94, v84);
            v25 = v81;
            v26 = *(v81 + 8);
            if (v26 >= *(v81 + 16))
            {
              sub_C4DF5C(v81, v84);
              v31 = v30;
              v32 = __p[0];
              *(v81 + 8) = v31;
              v25 = v81;
              if (v32)
              {
                __p[1] = v32;
                operator delete(v32);
                v25 = v81;
              }
            }

            else
            {
              v27 = *v84;
              v28 = v86;
              v29 = v87;
              *(v26 + 16) = v85;
              *(v26 + 32) = v28;
              *v26 = v27;
              *(v26 + 48) = v29;
              *(v26 + 56) = 0;
              *(v26 + 64) = 0;
              *(v26 + 72) = 0;
              *(v26 + 56) = *v88;
              v88[0] = 0;
              v88[1] = 0;
              *(v26 + 72) = v89;
              *(v26 + 80) = 0;
              *(v26 + 88) = 0;
              *(v26 + 96) = 0;
              *(v26 + 80) = *v90;
              *(v26 + 96) = v91;
              *(v26 + 104) = 0;
              v89 = 0;
              v90[0] = 0;
              v90[1] = 0;
              v91 = 0;
              *(v26 + 112) = 0;
              *(v26 + 120) = 0;
              *(v26 + 104) = *__p;
              *(v26 + 120) = v93;
              __p[0] = 0;
              __p[1] = 0;
              v93 = 0;
              *(v81 + 8) = v26 + 128;
            }

            if (v90[0])
            {
              v90[1] = v90[0];
              operator delete(v90[0]);
              v25 = v81;
            }

            if (v88[0])
            {
              v88[1] = v88[0];
              operator delete(v88[0]);
              v25 = v81;
            }

            if (v94)
            {
              v95 = v94;
              operator delete(v94);
              v25 = v81;
            }

            if (v97)
            {
              v98 = v97;
              operator delete(v97);
              v25 = v81;
            }

            if (v100)
            {
              v101 = v100;
              operator delete(v100);
              v25 = v81;
            }

            v33 = *(v25 + 8);
            v34 = *(v33 - 96);
            if (!v34 || *(v34 + 32) != 1)
            {
              v38 = *(v33 - 112);
              v39 = (v38 - *v38);
              v79 = i;
              if (*v39 >= 9u)
              {
                v40 = v39[4];
                if (v40)
                {
                  if (*(v38 + v40))
                  {
                    operator new();
                  }
                }
              }

              v41 = 0;
              v42 = (&dword_0 + 1);
              v43 = 16;
LABEL_50:
              v44 = *(v33 - 112);
              v45 = (v44 - *v44);
              if (*v45 < 9u || (v46 = v45[4]) == 0 || v41 >= *(v44 + v46))
              {
                sub_C4E558((v33 - 72), 0, 0, 0);
                v80 += v41;
                i = v79;
                continue;
              }

              v47 = *(v33 - 72);
              if (v47 == *(v33 - 64))
              {
                v49 = *(v33 - 96);
                if (!v49)
                {
                  v48 = v80 + v41;
                  if (*(*(v33 - 104) + v43) == 1)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_62;
                }

                v48 = v80 + v41;
                if (*(*(v49 + 40) + 20 * v41 + 16) != 1)
                {
                  goto LABEL_62;
                }

LABEL_67:
                *(v42 - 1) = 1;
              }

              else
              {
                v48 = v80 + v41;
                if (*(v47 + 2 * v41) == 1)
                {
                  goto LABEL_67;
                }

LABEL_62:
                v50 = sub_A57920((a1 + 4136), *a2);
                v51 = (v50 - *v50);
                if (*v51 >= 9u && (v52 = v51[4]) != 0)
                {
                  v53 = (v50 + v52 + *(v50 + v52));
                }

                else
                {
                  v53 = 0;
                }

                if ((*(sub_A571D4(v53, v48) + 15) & 2) == 0)
                {
                  goto LABEL_67;
                }
              }

              v54 = *(v33 - 72);
              if (v54 != *(v33 - 64))
              {
                if (*(v54 + 2 * v41 + 1) != 1)
                {
                  goto LABEL_75;
                }

                goto LABEL_48;
              }

              v55 = *(v33 - 96);
              if (v55)
              {
                if (*(*(v55 + 40) + 20 * v41 + 17) != 1)
                {
                  goto LABEL_75;
                }

                goto LABEL_48;
              }

              if (*(*(v33 - 104) + v43 + 1) == 1)
              {
                goto LABEL_48;
              }

LABEL_75:
              v56 = sub_A57920((a1 + 4136), *a2);
              v57 = (v56 - *v56);
              if (*v57 >= 9u && (v58 = v57[4]) != 0)
              {
                v59 = (v56 + v58 + *(v56 + v58));
              }

              else
              {
                v59 = 0;
              }

              if ((*(sub_A571D4(v59, v48) + 15) & 1) == 0)
              {
LABEL_48:
                *v42 = 1;
              }

              ++v41;
              v42 += 2;
              v43 += 24;
              goto LABEL_50;
            }

            v35 = *(v33 - 112);
            v36 = (v35 - *v35);
            if (*v36 >= 9u && (v37 = v36[4]) != 0)
            {
              v10 = *(v35 + v37);
            }

            else
            {
              v10 = 0;
            }

            v80 += v10;
          }
        }
      }
    }
  }

  else
  {
    sub_A78D38((a1 + 4136), *a2, *(a2 + 8), v84);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    sub_C4DA3C((a1 + 4184), v84, &v100, &v97, &v94, a3);
    v60 = v94;
    if (v94)
    {
      v61 = v95;
      v62 = v94;
      if (v95 != v94)
      {
        v63 = v95;
        do
        {
          v65 = *(v63 - 3);
          v63 -= 24;
          v64 = v65;
          if (v65)
          {
            *(v61 - 2) = v64;
            operator delete(v64);
          }

          v61 = v63;
        }

        while (v63 != v60);
        v62 = v94;
      }

      v95 = v60;
      operator delete(v62);
    }

    v66 = v97;
    if (v97)
    {
      v67 = v98;
      v68 = v97;
      if (v98 != v97)
      {
        v69 = v98;
        do
        {
          v71 = *(v69 - 3);
          v69 -= 24;
          v70 = v71;
          if (v71)
          {
            *(v67 - 2) = v70;
            operator delete(v70);
          }

          v67 = v69;
        }

        while (v69 != v66);
        v68 = v97;
      }

      v98 = v66;
      operator delete(v68);
    }

    v72 = v100;
    if (v100)
    {
      v73 = v101;
      v74 = v100;
      if (v101 != v100)
      {
        v75 = v101;
        do
        {
          v77 = *(v75 - 3);
          v75 -= 24;
          v76 = v77;
          if (v77)
          {
            *(v73 - 2) = v76;
            operator delete(v76);
          }

          v73 = v75;
        }

        while (v75 != v72);
        v74 = v100;
      }

      v101 = v72;
      operator delete(v74);
    }

    if (v84[0])
    {
      v84[1] = v84[0];
      operator delete(v84[0]);
    }
  }
}

void sub_CBB0A4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = a1[1];
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
            if (v9)
            {
              *(v8 - 2) = v9;
              operator delete(v9);
            }

            v10 = *(v8 - 6);
            if (v10)
            {
              *(v8 - 5) = v10;
              operator delete(v10);
            }

            v11 = *(v8 - 9);
            if (v11)
            {
              *(v8 - 8) = v11;
              operator delete(v11);
            }

            v8 -= 128;
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void **sub_CBB160(uint64_t a1, void **a2, uint64_t a3)
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
        sub_CBC1BC(v7, v4);
        v4 += 24;
        v7 += 3;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = v6;
      do
      {
        v11 = *(v8 - 3);
        v8 -= 3;
        v10 = v11;
        if (v11)
        {
          v12 = *(v6 - 2);
          v9 = v10;
          if (v12 != v10)
          {
            do
            {
              v13 = *(v12 - 3);
              if (v13)
              {
                *(v12 - 2) = v13;
                operator delete(v13);
              }

              v14 = *(v12 - 6);
              if (v14)
              {
                *(v12 - 5) = v14;
                operator delete(v14);
              }

              v15 = *(v12 - 9);
              if (v15)
              {
                *(v12 - 8) = v15;
                operator delete(v15);
              }

              v12 -= 128;
            }

            while (v12 != v10);
            v9 = *v8;
          }

          *(v6 - 2) = v10;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v7);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_CBB264(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v15 = *v4;
        v16 = v4[4];
        if (v16)
        {
          v4[5] = v16;
          operator delete(v16);
        }

        operator delete(v4);
        v4 = v15;
      }

      while (v15);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t sub_CBB360(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5, char a6)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 56) = a1 + 8;
  v10 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 56;
  *(a1 + 88) = a5;
  *(a1 + 89) = a6;
  v11 = sub_3D4D04((a2 + 3), HIDWORD(a3), 1);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = &v11[-*v11];
  if (*v12 < 0x19u)
  {
    goto LABEL_13;
  }

  v13 = *(v12 + 12);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = &v11[v13 + *&v11[v13]];
  if (*v14 <= a3)
  {
    goto LABEL_13;
  }

  v15 = &v14[4 * a3 + 4 + *&v14[4 * a3 + 4]];
  v16 = &v15[-*v15];
  if (*v16 < 5u)
  {
    goto LABEL_13;
  }

  v17 = *(v16 + 2);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = &v15[v17 + *&v15[v17]];
  if (*v18 <= a4 || (v19 = &v18[4 * a4 + 4 + *&v18[4 * a4 + 4]], v20 = &v19[-*v19], *v20 < 5u))
  {
LABEL_13:
    v13 = 0;
LABEL_14:
    *(a1 + 8) = 0;
    *(a1 + 16) = v13;
    if (*(a1 + 88))
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  v17 = *(v20 + 2);
  if (v17)
  {
    v21 = &v19[v17 + *&v19[v17]];
    v22 = *v21;
    if (*v21)
    {
      v23 = v21 + 1;
      *(a1 + 8) = v23;
      *(a1 + 16) = &v23[3 * v22];
      if (*(a1 + 88))
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(a1 + 8) = v17;
  *(a1 + 16) = 0;
  if (*(a1 + 88))
  {
    goto LABEL_31;
  }

LABEL_15:
  v24 = a2[523];
  if (sub_68312C(v24 + 3896))
  {
    if (*(v24 + 3944))
    {
      v25 = *(a2[523] + 3944);
      v54 = a3;
      if (sub_A794D0((v25 + 168), &v54))
      {
        v26 = a2[493];
        v54 = a3;
        v27 = sub_A794D0((v26 + 168), &v54);
        if (!v27)
        {
          goto LABEL_53;
        }

        v28 = (v27[7] + *v27[7]);
        v29 = (v28 - *v28);
        if (*v29 < 5u)
        {
          goto LABEL_26;
        }

        v30 = v29[2];
        if (v30)
        {
          v31 = (v30 + v28 + *(v30 + v28));
          if (*v31 <= a4)
          {
            goto LABEL_26;
          }

          v32 = (&v31[a4 + 1] + v31[a4 + 1]);
          v33 = (v32 - *v32);
          if (*v33 < 5u)
          {
            goto LABEL_26;
          }

          v30 = v33[2];
          if (v30)
          {
            v34 = (v30 + v32 + *(v30 + v32));
            v35 = *v34;
            if (*v34)
            {
              v30 = v34 + 1;
              v36 = &v30[3 * v35];
LABEL_30:
              *(a1 + 24) = v30;
              *(a1 + 32) = v36;
              goto LABEL_31;
            }

LABEL_26:
            v36 = 0;
            v30 = 0;
            goto LABEL_30;
          }
        }

        v36 = 0;
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  if ((*(a1 + 89) & 1) == 0)
  {
    v37 = a2[523];
    if (sub_4C2B90(v37 + 3896))
    {
      if (*(v37 + 3960))
      {
        v38 = *(a2[523] + 3976);
        if (v38)
        {
          v54 = a3;
          if (sub_A794D0((v38 + 168), &v54))
          {
            v39 = a2[497];
            v54 = a3;
            v40 = sub_A794D0((v39 + 168), &v54);
            if (v40)
            {
              v41 = (v40[7] + *v40[7]);
              v42 = (v41 - *v41);
              if (*v42 >= 5u)
              {
                v43 = v42[2];
                if (!v43)
                {
                  goto LABEL_45;
                }

                v44 = (v43 + v41 + *(v43 + v41));
                if (*v44 <= a4)
                {
                  goto LABEL_44;
                }

                v45 = (&v44[a4 + 1] + v44[a4 + 1]);
                v46 = (v45 - *v45);
                if (*v46 < 5u)
                {
                  goto LABEL_44;
                }

                v43 = v46[2];
                if (!v43)
                {
LABEL_45:
                  v49 = 0;
                  goto LABEL_46;
                }

                v47 = (v43 + v45 + *(v43 + v45));
                v48 = *v47;
                if (*v47)
                {
                  v43 = v47 + 1;
                  v49 = &v43[3 * v48];
LABEL_46:
                  *(a1 + 40) = v43;
                  *(a1 + 48) = v49;
                  goto LABEL_47;
                }
              }

LABEL_44:
              v49 = 0;
              v43 = 0;
              goto LABEL_46;
            }

LABEL_53:
            sub_49EC("unordered_map::at: key not found");
          }
        }
      }
    }
  }

LABEL_47:
  v51 = *(a1 + 56);
  v50 = *(a1 + 64);
  if (v51 < v50)
  {
    while (1)
    {
      v52 = v51[1];
      if (*v51 != v52)
      {
        break;
      }

      v51 += 2;
      *v10 = v51;
      if (v51 >= v50)
      {
        goto LABEL_52;
      }
    }

    *(a1 + 72) = *v51;
    *(a1 + 80) = v52;
  }

LABEL_52:
  sub_CBB718(a1);
  return a1;
}

uint64_t sub_CBB718(uint64_t result)
{
  v3 = *(result + 72);
  if (v3 < *(result + 80))
  {
    v13[7] = v1;
    v13[8] = v2;
    v4 = result;
    do
    {
      if (*(v4 + 88) & 1) != 0 || (v5 = *v4, v6 = *v3, v7 = *(*v4 + 4136), result = sub_68312C(v7 + 3896), !result) || !*(v7 + 3944) || (v8 = __ROR8__(v6, 32), result = sub_A576FC((v5 + 4136), SHIDWORD(v8)), (result) || (v9 = *(*(v5 + 4136) + 3944), v13[0] = v8, (result = sub_A794D0(v9, v13)) == 0))
      {
        if (*(*v4 + 16) != 1)
        {
          break;
        }

        result = sub_CBB834((*v4 + 4136), __ROR8__(**(v4 + 72), 32));
        if (result)
        {
          break;
        }
      }

      v10 = *(v4 + 80);
      v3 = (*(v4 + 72) + 12);
      *(v4 + 72) = v3;
      if (v3 == v10)
      {
        v11 = *(v4 + 64);
        v12 = *(v4 + 56) + 16;
        *(v4 + 56) = v12;
        if (v12 >= v11)
        {
          return result;
        }

        while (1)
        {
          v3 = *v12;
          v10 = *(v12 + 8);
          if (*v12 != v10)
          {
            break;
          }

          v12 += 16;
          *(v4 + 56) = v12;
          if (v12 >= v11)
          {
            return result;
          }
        }

        *(v4 + 72) = v3;
        *(v4 + 80) = v10;
      }
    }

    while (v3 < v10);
  }

  return result;
}

uint64_t sub_CBB834(uint64_t **a1, unint64_t a2)
{
  v3 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)) && (*a1)[493])
  {
    return 1;
  }

  v4 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(&qword_27339D8);
    v4 = &unk_2733000;
    if (v9)
    {
      v10 = sub_A57824(-85.0, -13.0);
      sub_58168(v10 >> 17, v10 >> 49);
      dword_27339D0 = v11 | 0x40000000;
      __cxa_guard_release(&qword_27339D8);
      v4 = &unk_2733000;
    }
  }

  v5 = v4[628];
  v6 = *a1;
  if (v5 == v3)
  {
    if (v6[497])
    {
      return 1;
    }
  }

  v8 = *v6;

  return sub_2D5204(v8);
}

uint64_t sub_CBB944(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
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
              v11 = *(v10 - 3);
              if (v11)
              {
                *(v10 - 2) = v11;
                operator delete(v11);
              }

              v12 = *(v10 - 6);
              if (v12)
              {
                *(v10 - 5) = v12;
                operator delete(v12);
              }

              v13 = *(v10 - 9);
              if (v13)
              {
                *(v10 - 8) = v13;
                operator delete(v13);
              }

              v10 -= 128;
            }

            while (v10 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_CBBA10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_CBBB6C(a1, a2);
  *(v5 + 3) = 0u;
  v6 = v5 + 3;
  *(v5 + 5) = 0u;
  *(v5 + 14) = *(a3 + 32);
  prime = *(a3 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v6, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a3 + 8));
    v8 = *(a1 + 32);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a1 + 48) / *(a1 + 56));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a3 + 16); i; i = *i)
  {
    sub_CBBCFC(v6, i + 2);
  }

  return a1;
}

void sub_CBBB4C(_Unwind_Exception *a1)
{
  sub_5EC8BC(v2);
  sub_C49884(v1);
  _Unwind_Resume(a1);
}

void *sub_CBBB6C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_CBBC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_CBB944(&a11);
  *(v11 + 8) = v12;
  sub_CBBCAC(&a9);
  _Unwind_Resume(a1);
}

void ***sub_CBBCAC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_CBB0A4(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

uint64_t *sub_CBBCFC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 2);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_33;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
  if (!v10 || (result = *v10) == 0)
  {
LABEL_33:
    sub_CBC0A4();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = result[1];
      if (v12 == v6)
      {
        v13 = *(result + 5) == HIDWORD(v2) && *(result + 4) == v2;
        if (v13 && *(result + 6) == v5)
        {
          return result;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_33;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v14 = result[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_33;
    }

LABEL_22:
    result = *result;
    if (!result)
    {
      goto LABEL_33;
    }
  }

  v15 = *(result + 5) == HIDWORD(v2) && *(result + 4) == v2;
  if (!v15 || *(result + 6) != v5)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_CBC090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

void sub_CBC198(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  sub_5F72B0(v1);
  _Unwind_Resume(a1);
}

void **sub_CBC1BC(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 3);
        if (v7)
        {
          *(v5 - 2) = v7;
          operator delete(v7);
        }

        v8 = *(v5 - 6);
        if (v8)
        {
          *(v5 - 5) = v8;
          operator delete(v8);
        }

        v9 = *(v5 - 9);
        if (v9)
        {
          *(v5 - 8) = v9;
          operator delete(v9);
        }

        v5 -= 128;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

uint64_t *sub_CBC274(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (a1 == a2)
  {
LABEL_9:
    if (v3 == a2)
    {
      return v3;
    }

    v9 = v3 + 6;
    if (v3 + 6 == a2)
    {
LABEL_35:
      v3 += 3;
      return v3;
    }

    v10 = v3 + 3;
    while (1)
    {
      v11 = v10[4];
      v10 = v9;
      v13 = *v3;
      v12 = v3[1];
      v14 = *v10;
      if (&v12[-*v3] == (v11 - *v10))
      {
        if (v13 == v12)
        {
          goto LABEL_13;
        }

        while (*v13 == *v14)
        {
          if (*(v13 + 2) != *(v14 + 8))
          {
            break;
          }

          if (*(v13 + 4) != *(v14 + 32))
          {
            break;
          }

          v16 = *(v13 + 7);
          v15 = *(v13 + 8);
          v17 = *(v14 + 56);
          if (v15 - v16 != *(v14 + 64) - v17)
          {
            break;
          }

          if (v16 != v15)
          {
            while (*v16 == *v17 && v16[1] == v17[1])
            {
              v16 += 2;
              v17 += 2;
              if (v16 == v15)
              {
                goto LABEL_27;
              }
            }

            break;
          }

LABEL_27:
          v20 = *(v13 + 10);
          v19 = *(v13 + 11);
          v21 = *(v14 + 80);
          if (v19 - v20 != *(v14 + 88) - v21)
          {
            break;
          }

          if (v20 != v19)
          {
            while (*v20 == *v21 && *(v20 + 1) == v21[1] && *(v20 + 2) == v21[2])
            {
              v20 += 12;
              v21 += 3;
              if (v20 == v19)
              {
                goto LABEL_33;
              }
            }

            break;
          }

LABEL_33:
          v13 += 128;
          v14 += 128;
          if (v13 == v12)
          {
            goto LABEL_13;
          }
        }
      }

      v3 += 3;
      sub_CBC1BC(v3, v10);
LABEL_13:
      v9 = v10 + 3;
      if (v10 + 3 == a2)
      {
        goto LABEL_35;
      }
    }
  }

  v4 = a1 + 3;
  if (a1 + 3 != a2)
  {
    do
    {
      v5 = v4;
      v6 = *v3;
      v7 = v3[1];
      v8 = *v4;
      if (&v7[-*v3] == (v3[4] - *v4))
      {
        if (v6 == v7)
        {
          goto LABEL_9;
        }

        while (sub_CBC490(v6, v8))
        {
          v6 += 128;
          v8 += 128;
          if (v6 == v7)
          {
            goto LABEL_9;
          }
        }
      }

      v4 = v5 + 3;
      v3 = v5;
    }

    while (v5 + 3 != a2);
  }

  return a2;
}

uint64_t sub_CBC490(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 32) == *(a2 + 32))
  {
    v3 = *(a1 + 56);
    v2 = *(a1 + 64);
    v4 = *(a2 + 56);
    if (v2 - v3 == *(a2 + 64) - v4)
    {
      if (v3 == v2)
      {
LABEL_12:
        v7 = *(a1 + 80);
        v6 = *(a1 + 88);
        v8 = *(a2 + 80);
        if (v6 - v7 == *(a2 + 88) - v8)
        {
          result = 1;
          if (v7 == v6)
          {
            return result;
          }

          while (*v7 == *v8 && *(v7 + 1) == v8[1] && *(v7 + 2) == v8[2])
          {
            v7 += 12;
            v8 += 3;
            if (v7 == v6)
            {
              return result;
            }
          }
        }
      }

      else
      {
        while (*v3 == *v4 && v3[1] == v4[1])
        {
          v3 += 2;
          v4 += 2;
          if (v3 == v2)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return 0;
}

void sub_CBC5AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2673148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_CBC60C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *a2;
  v8 = a2[1];
  *a2 = 0;
  *result = v7;
  *(result + 8) = v8;
  a2[1] = 0;
  v9 = a2[3];
  v10 = a2[2];
  v11 = *(a2 + 8);
  *(result + 16) = v10;
  *(result + 24) = v9;
  *(result + 32) = v11;
  if (v9)
  {
    v12 = *(v10 + 8);
    v13 = *(result + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v12 >= v13)
      {
        v12 %= v13;
      }
    }

    else
    {
      v12 &= v13 - 1;
    }

    *(v7 + 8 * v12) = result + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  *(result + 40) = *a3;
  *(result + 48) = *(a3 + 8);
  *(result + 56) = *(a3 + 16);
  *(result + 64) = *(a3 + 24);
  *(result + 80) = *(a3 + 40);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v14 = a4[2];
  *(result + 104) = v14;
  v15 = *a4;
  *(result + 96) = a4[1];
  *a4 = 0;
  *(result + 88) = v15;
  a4[1] = 0;
  v16 = a4[3];
  *(result + 112) = v16;
  *(result + 120) = *(a4 + 8);
  if (v16)
  {
    v17 = *(v14 + 8);
    v18 = *(result + 96);
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v17 >= v18)
      {
        v17 %= v18;
      }
    }

    else
    {
      v17 &= v18 - 1;
    }

    *(v15 + 8 * v17) = result + 104;
    a4[2] = 0;
    a4[3] = 0;
  }

  v19 = a5[2];
  *(result + 144) = v19;
  v20 = *a5;
  *(result + 136) = a5[1];
  *a5 = 0;
  *(result + 128) = v20;
  a5[1] = 0;
  v21 = a5[3];
  *(result + 152) = v21;
  *(result + 160) = *(a5 + 8);
  if (v21)
  {
    v22 = *(v19 + 8);
    v23 = *(result + 136);
    if ((v23 & (v23 - 1)) != 0)
    {
      if (v22 >= v23)
      {
        v22 %= v23;
      }
    }

    else
    {
      v22 &= v23 - 1;
    }

    *(v20 + 8 * v22) = result + 144;
    a5[2] = 0;
    a5[3] = 0;
  }

  v24 = a6[2];
  *(result + 184) = v24;
  v25 = *a6;
  *(result + 176) = a6[1];
  *a6 = 0;
  *(result + 168) = v25;
  a6[1] = 0;
  v26 = a6[3];
  *(result + 192) = v26;
  *(result + 200) = *(a6 + 8);
  if (v26)
  {
    v27 = *(v24 + 8);
    v28 = *(result + 176);
    if ((v28 & (v28 - 1)) != 0)
    {
      if (v27 >= v28)
      {
        v27 %= v28;
      }
    }

    else
    {
      v27 &= v28 - 1;
    }

    *(v25 + 8 * v27) = result + 184;
    a6[2] = 0;
    a6[3] = 0;
  }

  v29 = a7[2];
  *(result + 224) = v29;
  v30 = *a7;
  *(result + 216) = a7[1];
  *a7 = 0;
  *(result + 208) = v30;
  a7[1] = 0;
  v31 = a7[3];
  *(result + 232) = v31;
  *(result + 240) = *(a7 + 8);
  if (v31)
  {
    v32 = *(v29 + 8);
    v33 = *(result + 216);
    if ((v33 & (v33 - 1)) != 0)
    {
      if (v32 >= v33)
      {
        v32 %= v33;
      }
    }

    else
    {
      v32 &= v33 - 1;
    }

    *(v30 + 8 * v32) = result + 224;
    a7[2] = 0;
    a7[3] = 0;
  }

  return result;
}

uint64_t sub_CBC860(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[4];
      if (v7)
      {
        v2[5] = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  sub_CA1E18(a1 + 168);
  sub_CA1E18(a1 + 128);
  sub_CA1E18(a1 + 88);
  if (*(a1 + 56))
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      operator delete[]();
    }

    (*(*v4 + 24))(v4);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v8 = *(a1 + 16);
  if (v8)
  {
    do
    {
      v11 = *v8;
      v12 = v8[4];
      if (v12)
      {
        v8[5] = v12;
        operator delete(v12);
      }

      operator delete(v8);
      v8 = v11;
    }

    while (v11);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_CBCA00(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 2);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_33;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_33:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
        if (v13 && *(v11 + 6) == v5)
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_33;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_33;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v15 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
  if (!v15 || *(v11 + 6) != v5)
  {
    goto LABEL_22;
  }

  return v11;
}

void sub_CBCDC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CBCDD8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 2);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_33;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_33:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
        if (v13 && *(v11 + 6) == v5)
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_33;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_33;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v15 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
  if (!v15 || *(v11 + 6) != v5)
  {
    goto LABEL_22;
  }

  return v11;
}

void sub_CBD19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CBD1B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 2);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_33;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_33:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
        if (v13 && *(v11 + 6) == v5)
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_33;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = v11[1];
    if (v15 == v6)
    {
      break;
    }

    if (v15 >= *&v7)
    {
      v15 %= *&v7;
    }

    if (v15 != v9)
    {
      goto LABEL_33;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v16 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
  if (!v16 || *(v11 + 6) != v5)
  {
    goto LABEL_22;
  }

  return v11;
}

uint64_t *sub_CBD57C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v5 = *(a2 + 2);
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_33;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_33:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
        if (v13 && *(v11 + 6) == v5)
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_33;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = v11[1];
    if (v15 == v6)
    {
      break;
    }

    if (v15 >= *&v7)
    {
      v15 %= *&v7;
    }

    if (v15 != v9)
    {
      goto LABEL_33;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v16 = *(v11 + 5) == HIDWORD(v2) && *(v11 + 4) == v2;
  if (!v16 || *(v11 + 6) != v5)
  {
    goto LABEL_22;
  }

  return v11;
}

uint64_t *sub_CBD948(void *a1, uint64_t *a2)
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

uint64_t *sub_CBDCC8(void *a1, uint64_t *a2)
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

void sub_CBE05C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CBE070(void *a1, uint64_t *a2)
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

void sub_CBE3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

void sub_CBE3F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_CBE4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_C4C96C(&a11);
  *(v11 + 8) = v12;
  sub_C4CC34(&a9);
  _Unwind_Resume(a1);
}

void sub_CBE504(__n128 *a1, void **a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v25 = a2;
  v26 = a1;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v25 = (v7 - 3);
      v19 = sub_CC1A60(v7 - 3, v8);
      if (v19 < 0)
      {
        sub_CBE8BC(&v26, &v25);
      }

      return;
    }

LABEL_10:
    if (v10 <= 575)
    {
      if (a5)
      {
        sub_CBEBA8(v8, v7);
      }

      else
      {
        sub_CBF004(v8, v7);
      }

      return;
    }

    if (v9 == 1)
    {
      if (v8 != v7)
      {
        v20 = (v11 - 2) >> 1;
        v21 = v20 + 1;
        v22 = &v8[3 * v20];
        do
        {
          sub_CC1D88(v8, a3, 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3), v22);
          v22 -= 24;
          --v21;
        }

        while (v21);
        v23 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        do
        {
          sub_CC2060(v8, v7, a3, v23);
          v7 -= 3;
        }

        while (v23-- > 2);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = (v7 - 3);
    if (v10 < 0xC01)
    {
      sub_CBE980(&v8[3 * v12], v8, v13);
      if (a5)
      {
LABEL_18:
        v7 = v25;
        v15 = sub_CC0484(v26, v25);
        if ((v17 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_CBE980(v8, &v8[3 * v12], v13);
      v14 = 24 * v12 - 24;
      sub_CBE980((v26 + 24), (v26 + v14), v25 - 6);
      sub_CBE980(v26 + 3, &v26[1].n128_u64[3 * v12 + 1], v25 - 9);
      sub_CBE980((v26 + v14), v26 + 3 * v12, &v26[1].n128_u64[3 * v12 + 1]);
      v30 = v26 + 3 * v12;
      sub_CBE8BC(&v26, &v30);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v7 = v25;
    if ((sub_CC1A60(&v26[-2].n128_i64[1], v26) & 0x80) == 0)
    {
      v8 = sub_CBF424(v26, v25);
      goto LABEL_26;
    }

    v15 = sub_CC0484(v26, v25);
    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_19:
    v18 = sub_CC1438(v26, v15);
    v8 = (v15 + 24);
    if (sub_CC1438((v15 + 24), v7))
    {
      if (v18)
      {
        return;
      }

      v25 = v15;
      v8 = v26;
      v7 = v15;
      ++v9;
    }

    else
    {
      if (!v18)
      {
LABEL_24:
        sub_CBE504(v26, v15, a3, -v9, a5 & 1);
        v8 = (v15 + 24);
LABEL_26:
        a5 = 0;
        v26 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v26 = (v15 + 24);
      ++v9;
    }
  }

  if (v11 == 3)
  {
    v25 = (v7 - 3);
    sub_CBE980(v8, v8 + 3, v7 - 3);
    return;
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v25 = (v7 - 3);
      sub_CBEA64(v8, v8 + 3, v8 + 6, v8 + 9, v7 - 3);
      return;
    }

    goto LABEL_10;
  }

  v25 = (v7 - 3);
  v29 = v8 + 3;
  v30 = v8;
  v27 = (v7 - 3);
  v28 = v8 + 6;
  sub_CBE980(v8, v8 + 3, v8 + 6);
  if ((sub_CC1A60(v7 - 3, (v8 + 6)) & 0x80) != 0)
  {
    sub_CBE8BC(&v28, &v27);
    if ((sub_CC1A60(v28, (v8 + 3)) & 0x80) != 0)
    {
      sub_CBE8BC(&v29, &v28);
      if ((sub_CC1A60(v29, v8) & 0x80) != 0)
      {
        sub_CBE8BC(&v30, &v29);
      }
    }
  }
}

__n128 sub_CBE8BC(__n128 **a1, void ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v12 = *v2;
  v4 = v2[1].n128_u64[0];
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  sub_CBC1BC(v2, v3);
  v5 = *v3;
  if (*v3)
  {
    v6 = v3[1];
    v7 = *v3;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 3);
        if (v8)
        {
          *(v6 - 2) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 6);
        if (v9)
        {
          *(v6 - 5) = v9;
          operator delete(v9);
        }

        v10 = *(v6 - 9);
        if (v10)
        {
          *(v6 - 8) = v10;
          operator delete(v10);
        }

        v6 -= 128;
      }

      while (v6 != v5);
      v7 = *v3;
    }

    v3[1] = v5;
    operator delete(v7);
  }

  result = v12;
  *v3 = v12;
  v3[2] = v4;
  return result;
}

uint64_t sub_CBE980(__n128 *a1, void **a2, void **a3)
{
  v11 = a2;
  v12 = a1;
  v10 = a3;
  v5 = sub_CC1A60(a2, a1);
  v6 = sub_CC1A60(a3, a2);
  if (v5 < 0)
  {
    v8 = &v12;
    if ((v6 & 0x80000000) == 0)
    {
      sub_CBE8BC(&v12, &v11);
      if ((sub_CC1A60(v10, v11) & 0x80) == 0)
      {
        return 1;
      }

      v8 = &v11;
    }

    v9 = &v10;
    goto LABEL_11;
  }

  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  sub_CBE8BC(&v11, &v10);
  if ((sub_CC1A60(v11, v12) & 0x80) == 0)
  {
    return 1;
  }

  v8 = &v12;
  v9 = &v11;
LABEL_11:
  sub_CBE8BC(v8, v9);
  return 1;
}

double sub_CBEA64(__n128 *a1, void **a2, void **a3, void **a4, void **a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_CBE980(a1, a2, a3);
  if ((sub_CC1A60(a4, a3) & 0x80) != 0)
  {
    sub_CBE8BC(&v17, &v16);
    if ((sub_CC1A60(v17, a2) & 0x80) != 0)
    {
      sub_CBE8BC(&v18, &v17);
      if ((sub_CC1A60(v18, a1) & 0x80) != 0)
      {
        sub_CBE8BC(&v19, &v18);
      }
    }
  }

  if ((sub_CC1A60(a5, a4) & 0x80) != 0)
  {
    sub_CBE8BC(&v12, &v11);
    if ((sub_CC1A60(v12, a3) & 0x80) != 0)
    {
      sub_CBE8BC(&v13, &v12);
      if ((sub_CC1A60(v13, a2) & 0x80) != 0)
      {
        sub_CBE8BC(&v14, &v13);
        if ((sub_CC1A60(v14, a1) & 0x80) != 0)
        {
          *&result = sub_CBE8BC(&v15, &v14).n128_u64[0];
        }
      }
    }
  }

  return result;
}

int64_t sub_CBEBA8(int64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 24);
    if ((result + 24) != a2)
    {
      v5 = result;
      do
      {
        v7 = v4;
        result = sub_CC1A60(v4, v5);
        if ((result & 0x80) != 0)
        {
          v8 = *(v5 + 24);
          v9 = *(v5 + 40);
          *v7 = 0;
          v7[1] = 0;
          v7[2] = 0;
          v10 = *(v5 + 16);
          *(v5 + 24) = *v5;
          v7[2] = v10;
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          v6 = v3;
          if (v5 != v3)
          {
            v11 = (*(&v8 + 1) - v8) >> 7;
            v12 = v5;
            do
            {
              v14 = *(v12 - 3);
              v15 = *(v12 - 2);
              v12 -= 3;
              v16 = (v15 - v14) >> 7;
              if (v16 >= v11)
              {
                v17 = (*(&v8 + 1) - v8) >> 7;
              }

              else
              {
                v17 = v16;
              }

              if (v17 < 1)
              {
LABEL_10:
                if (v11 >= v16)
                {
LABEL_4:
                  v6 = v5;
                  goto LABEL_5;
                }
              }

              else
              {
                v18 = 0;
                v19 = v8;
                while (1)
                {
                  v20 = *v14;
                  v21 = *(v19 + 4);
                  result = HIDWORD(*v14);
                  v32 = v21 == result;
                  v22 = v21 < result;
                  if (v32)
                  {
                    v22 = *v19 < *v14;
                  }

                  if (v22)
                  {
                    break;
                  }

                  v23 = HIDWORD(*v19);
                  v24 = v20 < *v19;
                  if (result != v23)
                  {
                    v24 = result < v23;
                  }

                  if (v24)
                  {
                    goto LABEL_4;
                  }

                  v25 = *(v19 + 8);
                  v26 = *(v14 + 2);
                  if (v25 < v26)
                  {
                    break;
                  }

                  v27 = *v19 < v20;
                  if (result != v23)
                  {
                    v27 = v23 < result;
                  }

                  if (v27 || v26 >= v25)
                  {
                    v28 = *(v19 + 32);
                    v29 = v14[4];
                    v32 = v28 == v29;
                    result = v28 < v29;
                    if (!v32)
                    {
                      goto LABEL_31;
                    }

                    v57 = *(v19 + 56);
                    v58 = v14[7];
                    result = (*(v19 + 64) - v57) >> 1;
                    v59 = (v14[8] - v58) >> 1;
                    if (v59 >= result)
                    {
                      v60 = (*(v19 + 64) - v57) >> 1;
                    }

                    else
                    {
                      v60 = (v14[8] - v58) >> 1;
                    }

                    if (v60 >= 1)
                    {
                      v61 = (v57 + 1);
                      v62 = (v58 + 1);
                      do
                      {
                        v63 = *(v61 - 1);
                        v64 = *(v62 - 1);
                        if (v63 == v64)
                        {
                          v65 = *v61;
                          v66 = *v62;
                          if (v65 < v66)
                          {
                            goto LABEL_11;
                          }

                          v67 = v66 == v65;
                          if (v66 >= v65)
                          {
                            v68 = 1;
                          }

                          else
                          {
                            v68 = -1;
                          }

                          if (v67)
                          {
                            v68 = 0;
                          }

                          if (v68 < 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else
                        {
                          if (v63 < v64)
                          {
                            goto LABEL_11;
                          }

                          if (v64 >= v63)
                          {
                            v69 = 1;
                          }

                          else
                          {
                            v69 = -1;
                          }

                          if (v69 < 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        v61 += 2;
                        v62 += 2;
                      }

                      while (--v60);
                    }

                    v32 = result == v59;
                    result = result < v59;
                    if (!v32)
                    {
                      goto LABEL_31;
                    }

                    v70 = *(v19 + 80);
                    v71 = v14[10];
                    result = 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 88) - v70) >> 2);
                    v72 = 0xAAAAAAAAAAAAAAABLL * ((v14[11] - v71) >> 2);
                    if (v72 >= result)
                    {
                      v73 = 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 88) - v70) >> 2);
                    }

                    else
                    {
                      v73 = 0xAAAAAAAAAAAAAAABLL * ((v14[11] - v71) >> 2);
                    }

                    if (v73 >= 1)
                    {
                      v74 = (v70 + 4);
                      v75 = (v71 + 4);
                      do
                      {
                        v76 = *(v74 - 1);
                        v77 = *(v75 - 1);
                        if (v77 == v76)
                        {
                          v76 = *v74;
                          v77 = *v75;
                          if (*v75 == *v74)
                          {
                            v76 = v74[1];
                            v77 = v75[1];
                          }
                        }

                        if (v76 < v77)
                        {
                          goto LABEL_11;
                        }

                        if (v77 < v76)
                        {
                          goto LABEL_32;
                        }

                        v74 += 3;
                        v75 += 3;
                      }

                      while (--v73);
                    }

                    v32 = result == v72;
                    result = result < v72;
                    if (!v32)
                    {
LABEL_31:
                      if (result)
                      {
                        break;
                      }
                    }
                  }

LABEL_32:
                  if (!v27)
                  {
                    v30 = *(v14 + 2);
                    result = *(v19 + 8);
                    if (v30 < result)
                    {
                      goto LABEL_4;
                    }

                    if (result >= v30)
                    {
                      v31 = v14[4];
                      result = *(v19 + 32);
                      v32 = v31 == result;
                      v33 = v31 < result ? -1 : 1;
                      if (!v32)
                      {
                        goto LABEL_17;
                      }

                      v34 = v14[7];
                      v35 = *(v19 + 56);
                      v36 = (v14[8] - v34) >> 1;
                      result = (*(v19 + 64) - v35) >> 1;
                      if (result >= v36)
                      {
                        v37 = (v14[8] - v34) >> 1;
                      }

                      else
                      {
                        v37 = (*(v19 + 64) - v35) >> 1;
                      }

                      if (v37 >= 1)
                      {
                        v38 = (v34 + 1);
                        v39 = (v35 + 1);
                        do
                        {
                          v40 = *(v38 - 1);
                          v41 = *(v39 - 1);
                          if (v40 == v41)
                          {
                            v42 = *v38;
                            v43 = *v39;
                            if (v42 < v43)
                            {
                              goto LABEL_4;
                            }

                            v44 = v43 == v42;
                            if (v43 >= v42)
                            {
                              v45 = 1;
                            }

                            else
                            {
                              v45 = -1;
                            }

                            if (v44)
                            {
                              v45 = 0;
                            }

                            if (v45 < 0)
                            {
                              goto LABEL_18;
                            }
                          }

                          else
                          {
                            if (v40 < v41)
                            {
                              goto LABEL_4;
                            }

                            if (v41 >= v40)
                            {
                              v46 = 1;
                            }

                            else
                            {
                              v46 = -1;
                            }

                            if (v46 < 0)
                            {
                              goto LABEL_18;
                            }
                          }

                          v38 += 2;
                          v39 += 2;
                        }

                        while (--v37);
                      }

                      v47 = v36 == result;
                      v33 = v36 < result ? -1 : 1;
                      if (!v47)
                      {
                        goto LABEL_17;
                      }

                      v48 = v14[10];
                      v49 = *(v19 + 80);
                      v50 = 0xAAAAAAAAAAAAAAABLL * ((v14[11] - v48) >> 2);
                      result = 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 88) - v49) >> 2);
                      if (result >= v50)
                      {
                        v51 = 0xAAAAAAAAAAAAAAABLL * ((v14[11] - v48) >> 2);
                      }

                      else
                      {
                        v51 = 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 88) - v49) >> 2);
                      }

                      if (v51 >= 1)
                      {
                        v52 = (v48 + 4);
                        v53 = (v49 + 4);
                        do
                        {
                          v54 = *(v52 - 1);
                          v55 = *(v53 - 1);
                          if (v55 == v54)
                          {
                            v54 = *v52;
                            v55 = *v53;
                            if (*v53 == *v52)
                            {
                              v54 = v52[1];
                              v55 = v53[1];
                            }
                          }

                          if (v54 < v55)
                          {
                            goto LABEL_4;
                          }

                          if (v55 < v54)
                          {
                            goto LABEL_18;
                          }

                          v52 += 3;
                          v53 += 3;
                        }

                        while (--v51);
                      }

                      v56 = v50 == result;
                      v33 = v50 < result ? -1 : 1;
                      if (!v56)
                      {
LABEL_17:
                        if (v33 < 0)
                        {
                          goto LABEL_4;
                        }
                      }
                    }
                  }

LABEL_18:
                  v19 += 128;
                  v14 += 16;
                  if (++v18 == v17)
                  {
                    goto LABEL_10;
                  }
                }
              }

LABEL_11:
              v13 = *(v5 - 8);
              *v5 = *(v5 - 24);
              *(v5 + 16) = v13;
              *v12 = 0;
              v12[1] = 0;
              v12[2] = 0;
              v5 = v12;
            }

            while (v12 != v3);
            v6 = v3;
          }

LABEL_5:
          *v6 = v8;
          *(v6 + 16) = v9;
        }

        v4 = v7 + 3;
        v5 = v7;
      }

      while (v7 + 3 != a2);
    }
  }

  return result;
}

int64_t sub_CBF004(int64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 24);
    if ((result + 24) != a2)
    {
      do
      {
        v5 = v4;
        result = sub_CC1A60(v4, v3);
        if ((result & 0x80) != 0)
        {
          v6 = *v5;
          v7 = *(v3 + 40);
          *v5 = 0;
          v5[1] = 0;
          v5[2] = 0;
          v8 = (*(&v6 + 1) - v6) >> 7;
          v9 = v5;
          do
          {
LABEL_9:
            while (1)
            {
              v10 = v9;
              v9 = v3;
              v11 = *(v3 + 16);
              *v10 = *v3;
              *(v10 + 16) = v11;
              *v3 = 0;
              *(v3 + 8) = 0;
              *(v3 + 16) = 0;
              v13 = *(v3 - 24);
              v3 -= 24;
              v12 = v13;
              v14 = (*(v9 - 16) - v13) >> 7;
              v15 = v14 >= v8 ? (*(&v6 + 1) - v6) >> 7 : v14;
              if (v15 < 1)
              {
                break;
              }

              v16 = 0;
              v17 = v6;
              while (1)
              {
                v18 = *v12;
                v19 = *(v17 + 4);
                result = HIDWORD(*v12);
                v30 = v19 == result;
                v20 = v19 < result;
                if (v30)
                {
                  v20 = *v17 < *v12;
                }

                if (v20)
                {
                  break;
                }

                v21 = HIDWORD(*v17);
                v22 = v18 < *v17;
                if (result != v21)
                {
                  v22 = result < v21;
                }

                if (v22)
                {
                  goto LABEL_4;
                }

                v23 = *(v17 + 8);
                v24 = *(v12 + 2);
                if (v23 < v24)
                {
                  goto LABEL_9;
                }

                v25 = *v17 < v18;
                if (result != v21)
                {
                  v25 = v21 < result;
                }

                if (v25 || v24 >= v23)
                {
                  v26 = *(v17 + 32);
                  v27 = v12[4];
                  v30 = v26 == v27;
                  result = v26 < v27;
                  if (!v30)
                  {
                    goto LABEL_28;
                  }

                  v55 = *(v17 + 56);
                  v56 = v12[7];
                  result = (*(v17 + 64) - v55) >> 1;
                  v57 = (v12[8] - v56) >> 1;
                  if (v57 >= result)
                  {
                    v58 = (*(v17 + 64) - v55) >> 1;
                  }

                  else
                  {
                    v58 = (v12[8] - v56) >> 1;
                  }

                  if (v58 >= 1)
                  {
                    v59 = (v55 + 1);
                    v60 = (v56 + 1);
                    do
                    {
                      v61 = *(v59 - 1);
                      v62 = *(v60 - 1);
                      if (v61 == v62)
                      {
                        v63 = *v59;
                        v64 = *v60;
                        if (v63 < v64)
                        {
                          goto LABEL_9;
                        }

                        v65 = v64 == v63;
                        if (v64 >= v63)
                        {
                          v66 = 1;
                        }

                        else
                        {
                          v66 = -1;
                        }

                        if (v65)
                        {
                          v66 = 0;
                        }

                        if (v66 < 0)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        if (v61 < v62)
                        {
                          goto LABEL_9;
                        }

                        if (v62 >= v61)
                        {
                          v67 = 1;
                        }

                        else
                        {
                          v67 = -1;
                        }

                        if (v67 < 0)
                        {
                          goto LABEL_29;
                        }
                      }

                      v59 += 2;
                      v60 += 2;
                    }

                    while (--v58);
                  }

                  v30 = result == v57;
                  result = result < v57;
                  if (!v30)
                  {
                    goto LABEL_28;
                  }

                  v68 = *(v17 + 80);
                  v69 = v12[10];
                  result = 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 88) - v68) >> 2);
                  v70 = 0xAAAAAAAAAAAAAAABLL * ((v12[11] - v69) >> 2);
                  if (v70 >= result)
                  {
                    v71 = 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 88) - v68) >> 2);
                  }

                  else
                  {
                    v71 = 0xAAAAAAAAAAAAAAABLL * ((v12[11] - v69) >> 2);
                  }

                  if (v71 >= 1)
                  {
                    v72 = (v68 + 4);
                    v73 = (v69 + 4);
                    do
                    {
                      v74 = *(v72 - 1);
                      v75 = *(v73 - 1);
                      if (v75 == v74)
                      {
                        v74 = *v72;
                        v75 = *v73;
                        if (*v73 == *v72)
                        {
                          v74 = v72[1];
                          v75 = v73[1];
                        }
                      }

                      if (v74 < v75)
                      {
                        goto LABEL_9;
                      }

                      if (v75 < v74)
                      {
                        goto LABEL_29;
                      }

                      v72 += 3;
                      v73 += 3;
                    }

                    while (--v71);
                  }

                  v30 = result == v70;
                  result = result < v70;
                  if (!v30)
                  {
LABEL_28:
                    if (result)
                    {
                      goto LABEL_9;
                    }
                  }
                }

LABEL_29:
                if (!v25)
                {
                  v28 = *(v12 + 2);
                  result = *(v17 + 8);
                  if (v28 < result)
                  {
                    goto LABEL_4;
                  }

                  if (result >= v28)
                  {
                    v29 = v12[4];
                    result = *(v17 + 32);
                    v30 = v29 == result;
                    v31 = v29 < result ? -1 : 1;
                    if (!v30)
                    {
                      goto LABEL_14;
                    }

                    v32 = v12[7];
                    v33 = *(v17 + 56);
                    v34 = (v12[8] - v32) >> 1;
                    result = (*(v17 + 64) - v33) >> 1;
                    if (result >= v34)
                    {
                      v35 = (v12[8] - v32) >> 1;
                    }

                    else
                    {
                      v35 = (*(v17 + 64) - v33) >> 1;
                    }

                    if (v35 >= 1)
                    {
                      v36 = (v32 + 1);
                      v37 = (v33 + 1);
                      do
                      {
                        v38 = *(v36 - 1);
                        v39 = *(v37 - 1);
                        if (v38 == v39)
                        {
                          v40 = *v36;
                          v41 = *v37;
                          if (v40 < v41)
                          {
                            goto LABEL_4;
                          }

                          v42 = v41 == v40;
                          if (v41 >= v40)
                          {
                            v43 = 1;
                          }

                          else
                          {
                            v43 = -1;
                          }

                          if (v42)
                          {
                            v43 = 0;
                          }

                          if (v43 < 0)
                          {
                            goto LABEL_15;
                          }
                        }

                        else
                        {
                          if (v38 < v39)
                          {
                            goto LABEL_4;
                          }

                          if (v39 >= v38)
                          {
                            v44 = 1;
                          }

                          else
                          {
                            v44 = -1;
                          }

                          if (v44 < 0)
                          {
                            goto LABEL_15;
                          }
                        }

                        v36 += 2;
                        v37 += 2;
                      }

                      while (--v35);
                    }

                    v45 = v34 == result;
                    v31 = v34 < result ? -1 : 1;
                    if (!v45)
                    {
                      goto LABEL_14;
                    }

                    v46 = v12[10];
                    v47 = *(v17 + 80);
                    v48 = 0xAAAAAAAAAAAAAAABLL * ((v12[11] - v46) >> 2);
                    result = 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 88) - v47) >> 2);
                    if (result >= v48)
                    {
                      v49 = 0xAAAAAAAAAAAAAAABLL * ((v12[11] - v46) >> 2);
                    }

                    else
                    {
                      v49 = 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 88) - v47) >> 2);
                    }

                    if (v49 >= 1)
                    {
                      v50 = (v46 + 4);
                      v51 = (v47 + 4);
                      do
                      {
                        v52 = *(v50 - 1);
                        v53 = *(v51 - 1);
                        if (v53 == v52)
                        {
                          v52 = *v50;
                          v53 = *v51;
                          if (*v51 == *v50)
                          {
                            v52 = v50[1];
                            v53 = v51[1];
                          }
                        }

                        if (v52 < v53)
                        {
                          goto LABEL_4;
                        }

                        if (v53 < v52)
                        {
                          goto LABEL_15;
                        }

                        v50 += 3;
                        v51 += 3;
                      }

                      while (--v49);
                    }

                    v54 = v48 == result;
                    v31 = v48 < result ? -1 : 1;
                    if (!v54)
                    {
LABEL_14:
                      if (v31 < 0)
                      {
                        goto LABEL_4;
                      }
                    }
                  }
                }

LABEL_15:
                v17 += 128;
                v12 += 16;
                if (++v16 == v15)
                {
                  goto LABEL_8;
                }
              }
            }

LABEL_8:
            ;
          }

          while (v8 < v14);
LABEL_4:
          *v9 = v6;
          *(v9 + 16) = v7;
        }

        v4 = v5 + 3;
        v3 = v5;
      }

      while (v5 + 3 != a2);
    }
  }

  return result;
}

__n128 *sub_CBF424(__n128 *a1, void **a2)
{
  v322 = a2;
  v323 = a1;
  v320 = *a1;
  v3 = *a1;
  v321 = a1[1].n128_u64[0];
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  v4 = v3.n128_u64[0];
  v5 = *(a2 - 3);
  v6 = (v3.n128_u64[1] - v3.n128_u64[0]) >> 7;
  v7 = (*(a2 - 2) - v5) >> 7;
  if (v7 >= v6)
  {
    v8 = (v3.n128_u64[1] - v3.n128_u64[0]) >> 7;
  }

  else
  {
    v8 = (*(a2 - 2) - v5) >> 7;
  }

  if (v8 >= 1)
  {
    v9 = v3.n128_u64[0];
    do
    {
      v328 = v9;
      v329 = v9 + 32;
      v10 = v9 + 80;
      v330 = v9 + 56;
      v331 = v9 + 80;
      v324 = v5;
      v325 = v5 + 4;
      v11 = v5 + 10;
      v326 = v5 + 7;
      v327 = v5 + 10;
      if (sub_CC1B84(&v328, &v324) < 0)
      {
        goto LABEL_10;
      }

      v328 = v11 - 10;
      v329 = (v11 - 6);
      v330 = (v11 - 3);
      v331 = v11;
      v324 = (v10 - 80);
      v325 = (v10 - 48);
      v326 = (v10 - 24);
      v327 = v10;
      if (sub_CC1B84(&v328, &v324) < 0)
      {
        goto LABEL_12;
      }

      v9 = v10 + 48;
      v5 = v11 + 6;
    }

    while (--v8);
  }

  if (v6 < v7)
  {
LABEL_10:
    v12 = v323;
LABEL_23:
    while (1)
    {
      v22 = v12[1].n128_u64[1];
      v12 = (v12 + 24);
      v21 = v22;
      v323 = v12;
      v23 = (v12->n128_u64[1] - v22) >> 7;
      v24 = v23 >= v6 ? v6 : v23;
      if (v24 >= 1)
      {
        break;
      }

LABEL_22:
      if (v6 < v23)
      {
        goto LABEL_129;
      }
    }

    v25 = 0;
    v26 = v4;
    while (1)
    {
      v27 = *v21;
      v28 = *(v26 + 4);
      v29 = HIDWORD(*v21);
      v43 = v28 == v29;
      v30 = v28 < v29;
      if (v43)
      {
        v30 = *v26 < *v21;
      }

      if (v30)
      {
        goto LABEL_129;
      }

      v31 = HIDWORD(*v26);
      v32 = v27 < *v26;
      if (v29 != v31)
      {
        v32 = v29 < v31;
      }

      if (v32)
      {
        goto LABEL_23;
      }

      v33 = *(v26 + 8);
      v34 = *(v21 + 8);
      if (v33 < v34)
      {
        goto LABEL_129;
      }

      v35 = *v26 < v27;
      if (v29 != v31)
      {
        v35 = v31 < v29;
      }

      if (v35 || v34 >= v33)
      {
        v36 = *(v26 + 32);
        v37 = *(v21 + 32);
        v43 = v36 == v37;
        v38 = v36 < v37;
        if (!v43)
        {
          goto LABEL_42;
        }

        v70 = *(v26 + 56);
        v71 = *(v21 + 56);
        v72 = (*(v26 + 64) - v70) >> 1;
        v73 = (*(v21 + 64) - v71) >> 1;
        if (v73 >= v72)
        {
          v74 = (*(v26 + 64) - v70) >> 1;
        }

        else
        {
          v74 = (*(v21 + 64) - v71) >> 1;
        }

        if (v74 >= 1)
        {
          v75 = (v70 + 1);
          v76 = (v71 + 1);
          do
          {
            v77 = *(v75 - 1);
            v78 = *(v76 - 1);
            if (v77 == v78)
            {
              v79 = *v75;
              v80 = *v76;
              if (v79 < v80)
              {
                goto LABEL_129;
              }

              v81 = v80 == v79;
              if (v80 >= v79)
              {
                v82 = 1;
              }

              else
              {
                v82 = -1;
              }

              if (v81)
              {
                v82 = 0;
              }

              if (v82 < 0)
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v77 < v78)
              {
                goto LABEL_129;
              }

              if (v78 >= v77)
              {
                v83 = 1;
              }

              else
              {
                v83 = -1;
              }

              if (v83 < 0)
              {
                goto LABEL_43;
              }
            }

            v75 += 2;
            v76 += 2;
          }

          while (--v74);
        }

        v43 = v72 == v73;
        v38 = v72 < v73;
        if (!v43)
        {
          goto LABEL_42;
        }

        v84 = *(v26 + 80);
        v85 = *(v21 + 80);
        v86 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 88) - v84) >> 2);
        v87 = 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 88) - v85) >> 2);
        if (v87 >= v86)
        {
          v88 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 88) - v84) >> 2);
        }

        else
        {
          v88 = 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 88) - v85) >> 2);
        }

        if (v88 >= 1)
        {
          v89 = (v84 + 4);
          v90 = (v85 + 4);
          do
          {
            v91 = *(v89 - 1);
            v92 = *(v90 - 1);
            if (v92 == v91)
            {
              v91 = *v89;
              v92 = *v90;
              if (*v90 == *v89)
              {
                v91 = v89[1];
                v92 = v90[1];
              }
            }

            if (v91 < v92)
            {
              goto LABEL_129;
            }

            if (v92 < v91)
            {
              goto LABEL_43;
            }

            v89 += 3;
            v90 += 3;
          }

          while (--v88);
        }

        v43 = v86 == v87;
        v38 = v86 < v87;
        if (!v43)
        {
LABEL_42:
          if (v38)
          {
            goto LABEL_129;
          }
        }
      }

LABEL_43:
      if (!v35)
      {
        v39 = *(v21 + 8);
        v40 = *(v26 + 8);
        if (v39 < v40)
        {
          goto LABEL_23;
        }

        if (v40 >= v39)
        {
          v41 = *(v21 + 32);
          v42 = *(v26 + 32);
          v43 = v41 == v42;
          v44 = v41 < v42 ? -1 : 1;
          if (!v43)
          {
            goto LABEL_28;
          }

          v45 = *(v21 + 56);
          v46 = *(v26 + 56);
          v47 = (*(v21 + 64) - v45) >> 1;
          v48 = (*(v26 + 64) - v46) >> 1;
          if (v48 >= v47)
          {
            v49 = (*(v21 + 64) - v45) >> 1;
          }

          else
          {
            v49 = (*(v26 + 64) - v46) >> 1;
          }

          if (v49 >= 1)
          {
            v50 = (v45 + 1);
            v51 = (v46 + 1);
            do
            {
              v52 = *(v50 - 1);
              v53 = *(v51 - 1);
              if (v52 == v53)
              {
                v54 = *v50;
                v55 = *v51;
                if (v54 < v55)
                {
                  goto LABEL_23;
                }

                v56 = v55 == v54;
                if (v55 >= v54)
                {
                  v57 = 1;
                }

                else
                {
                  v57 = -1;
                }

                if (v56)
                {
                  v57 = 0;
                }

                if (v57 < 0)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                if (v52 < v53)
                {
                  goto LABEL_23;
                }

                if (v53 >= v52)
                {
                  v58 = 1;
                }

                else
                {
                  v58 = -1;
                }

                if (v58 < 0)
                {
                  goto LABEL_29;
                }
              }

              v50 += 2;
              v51 += 2;
            }

            while (--v49);
          }

          v59 = v47 == v48;
          v44 = v47 < v48 ? -1 : 1;
          if (!v59)
          {
            goto LABEL_28;
          }

          v60 = *(v21 + 80);
          v61 = *(v26 + 80);
          v62 = 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 88) - v60) >> 2);
          v63 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 88) - v61) >> 2);
          if (v63 >= v62)
          {
            v64 = 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 88) - v60) >> 2);
          }

          else
          {
            v64 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 88) - v61) >> 2);
          }

          if (v64 >= 1)
          {
            v65 = (v60 + 4);
            v66 = (v61 + 4);
            do
            {
              v67 = *(v65 - 1);
              v68 = *(v66 - 1);
              if (v68 == v67)
              {
                v67 = *v65;
                v68 = *v66;
                if (*v66 == *v65)
                {
                  v67 = v65[1];
                  v68 = v66[1];
                }
              }

              if (v67 < v68)
              {
                goto LABEL_23;
              }

              if (v68 < v67)
              {
                goto LABEL_29;
              }

              v65 += 3;
              v66 += 3;
            }

            while (--v64);
          }

          v69 = v62 == v63;
          v44 = v62 < v63 ? -1 : 1;
          if (!v69)
          {
LABEL_28:
            if (v44 < 0)
            {
              goto LABEL_23;
            }
          }
        }
      }

LABEL_29:
      v26 += 128;
      v21 += 128;
      if (++v25 == v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_12:
  do
  {
    v13 = v323;
    v323 = (v323 + 24);
    if (v323 >= v322)
    {
      break;
    }

    v14 = v13[1].n128_u64[1];
    v15 = v13[2].n128_u64[0] - v14;
    v16 = v15 >> 7;
    if (v15 >> 7 >= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = v15 >> 7;
    }

    if (v17 >= 1)
    {
      v18 = v4;
      do
      {
        v328 = v18;
        v329 = v18 + 32;
        v19 = v18 + 80;
        v330 = v18 + 56;
        v331 = v18 + 80;
        v324 = v14;
        v325 = v14 + 4;
        v20 = v14 + 10;
        v326 = v14 + 7;
        v327 = v14 + 10;
        if (sub_CC1B84(&v328, &v324) < 0)
        {
          goto LABEL_129;
        }

        v328 = v20 - 10;
        v329 = (v20 - 6);
        v330 = (v20 - 3);
        v331 = v20;
        v324 = (v19 - 80);
        v325 = (v19 - 48);
        v326 = (v19 - 24);
        v327 = v19;
        if (sub_CC1B84(&v328, &v324) < 0)
        {
          goto LABEL_12;
        }

        v18 = v19 + 48;
        v14 = v20 + 6;
      }

      while (--v17);
    }
  }

  while (v6 >= v16);
LABEL_129:
  v93 = v322;
  v94 = v323;
  if (v323 < v322)
  {
    do
    {
LABEL_132:
      while (1)
      {
        v96 = *(v93 - 3);
        v93 -= 3;
        v95 = v96;
        v322 = v93;
        v97 = (v93[1] - v96) >> 7;
        v98 = v97 >= v6 ? v6 : v97;
        if (v98 < 1)
        {
          break;
        }

        v99 = 0;
        v100 = v4;
        while (1)
        {
          v101 = *v95;
          v102 = *(v100 + 4);
          v103 = HIDWORD(*v95);
          v43 = v102 == v103;
          v104 = v102 < v103;
          if (v43)
          {
            v104 = *v100 < *v95;
          }

          if (v104)
          {
            break;
          }

          v105 = HIDWORD(*v100);
          v106 = v101 < *v100;
          if (v103 != v105)
          {
            v106 = v103 < v105;
          }

          if (v106)
          {
            goto LABEL_238;
          }

          v107 = *(v100 + 8);
          v108 = *(v95 + 2);
          if (v107 < v108)
          {
            goto LABEL_132;
          }

          v109 = *v100 < v101;
          if (v103 != v105)
          {
            v109 = v105 < v103;
          }

          if (v109 || v108 >= v107)
          {
            v110 = *(v100 + 32);
            v111 = v95[4];
            v43 = v110 == v111;
            v112 = v110 < v111;
            if (!v43)
            {
              goto LABEL_151;
            }

            v144 = *(v100 + 56);
            v145 = v95[7];
            v146 = (*(v100 + 64) - v144) >> 1;
            v147 = (v95[8] - v145) >> 1;
            if (v147 >= v146)
            {
              v148 = (*(v100 + 64) - v144) >> 1;
            }

            else
            {
              v148 = (v95[8] - v145) >> 1;
            }

            if (v148 >= 1)
            {
              v149 = (v144 + 1);
              v150 = (v145 + 1);
              do
              {
                v151 = *(v149 - 1);
                v152 = *(v150 - 1);
                if (v151 == v152)
                {
                  v153 = *v149;
                  v154 = *v150;
                  if (v153 < v154)
                  {
                    goto LABEL_132;
                  }

                  v155 = v154 == v153;
                  if (v154 >= v153)
                  {
                    v156 = 1;
                  }

                  else
                  {
                    v156 = -1;
                  }

                  if (v155)
                  {
                    v156 = 0;
                  }

                  if (v156 < 0)
                  {
                    goto LABEL_152;
                  }
                }

                else
                {
                  if (v151 < v152)
                  {
                    goto LABEL_132;
                  }

                  if (v152 >= v151)
                  {
                    v157 = 1;
                  }

                  else
                  {
                    v157 = -1;
                  }

                  if (v157 < 0)
                  {
                    goto LABEL_152;
                  }
                }

                v149 += 2;
                v150 += 2;
              }

              while (--v148);
            }

            v43 = v146 == v147;
            v112 = v146 < v147;
            if (!v43)
            {
              goto LABEL_151;
            }

            v158 = *(v100 + 80);
            v159 = v95[10];
            v160 = 0xAAAAAAAAAAAAAAABLL * ((*(v100 + 88) - v158) >> 2);
            v161 = 0xAAAAAAAAAAAAAAABLL * ((v95[11] - v159) >> 2);
            if (v161 >= v160)
            {
              v162 = 0xAAAAAAAAAAAAAAABLL * ((*(v100 + 88) - v158) >> 2);
            }

            else
            {
              v162 = 0xAAAAAAAAAAAAAAABLL * ((v95[11] - v159) >> 2);
            }

            if (v162 >= 1)
            {
              v163 = (v158 + 4);
              v164 = (v159 + 4);
              do
              {
                v165 = *(v163 - 1);
                v166 = *(v164 - 1);
                if (v166 == v165)
                {
                  v165 = *v163;
                  v166 = *v164;
                  if (*v164 == *v163)
                  {
                    v165 = v163[1];
                    v166 = v164[1];
                  }
                }

                if (v165 < v166)
                {
                  goto LABEL_132;
                }

                if (v166 < v165)
                {
                  goto LABEL_152;
                }

                v163 += 3;
                v164 += 3;
              }

              while (--v162);
            }

            v43 = v160 == v161;
            v112 = v160 < v161;
            if (!v43)
            {
LABEL_151:
              if (v112)
              {
                goto LABEL_132;
              }
            }
          }

LABEL_152:
          if (!v109)
          {
            v113 = *(v95 + 2);
            v114 = *(v100 + 8);
            if (v113 < v114)
            {
              goto LABEL_238;
            }

            if (v114 >= v113)
            {
              v115 = v95[4];
              v116 = *(v100 + 32);
              v117 = v115 == v116;
              v118 = v115 < v116 ? -1 : 1;
              if (!v117)
              {
                goto LABEL_137;
              }

              v119 = v95[7];
              v120 = *(v100 + 56);
              v121 = (v95[8] - v119) >> 1;
              v122 = (*(v100 + 64) - v120) >> 1;
              if (v122 >= v121)
              {
                v123 = (v95[8] - v119) >> 1;
              }

              else
              {
                v123 = (*(v100 + 64) - v120) >> 1;
              }

              if (v123 >= 1)
              {
                v124 = (v119 + 1);
                v125 = (v120 + 1);
                do
                {
                  v126 = *(v124 - 1);
                  v127 = *(v125 - 1);
                  if (v126 == v127)
                  {
                    v128 = *v124;
                    v129 = *v125;
                    if (v128 < v129)
                    {
                      goto LABEL_238;
                    }

                    v130 = v129 == v128;
                    if (v129 >= v128)
                    {
                      v131 = 1;
                    }

                    else
                    {
                      v131 = -1;
                    }

                    if (v130)
                    {
                      v131 = 0;
                    }

                    if (v131 < 0)
                    {
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    if (v126 < v127)
                    {
                      goto LABEL_238;
                    }

                    if (v127 >= v126)
                    {
                      v132 = 1;
                    }

                    else
                    {
                      v132 = -1;
                    }

                    if (v132 < 0)
                    {
                      goto LABEL_138;
                    }
                  }

                  v124 += 2;
                  v125 += 2;
                }

                while (--v123);
              }

              v133 = v121 == v122;
              v118 = v121 < v122 ? -1 : 1;
              if (!v133)
              {
                goto LABEL_137;
              }

              v134 = v95[10];
              v135 = *(v100 + 80);
              v136 = 0xAAAAAAAAAAAAAAABLL * ((v95[11] - v134) >> 2);
              v137 = 0xAAAAAAAAAAAAAAABLL * ((*(v100 + 88) - v135) >> 2);
              if (v137 >= v136)
              {
                v138 = 0xAAAAAAAAAAAAAAABLL * ((v95[11] - v134) >> 2);
              }

              else
              {
                v138 = 0xAAAAAAAAAAAAAAABLL * ((*(v100 + 88) - v135) >> 2);
              }

              if (v138 >= 1)
              {
                v139 = (v134 + 4);
                v140 = (v135 + 4);
                do
                {
                  v141 = *(v139 - 1);
                  v142 = *(v140 - 1);
                  if (v142 == v141)
                  {
                    v141 = *v139;
                    v142 = *v140;
                    if (*v140 == *v139)
                    {
                      v141 = v139[1];
                      v142 = v140[1];
                    }
                  }

                  if (v141 < v142)
                  {
                    goto LABEL_238;
                  }

                  if (v142 < v141)
                  {
                    goto LABEL_138;
                  }

                  v139 += 3;
                  v140 += 3;
                }

                while (--v138);
              }

              v143 = v136 == v137;
              v118 = v136 < v137 ? -1 : 1;
              if (!v143)
              {
LABEL_137:
                if (v118 < 0)
                {
                  goto LABEL_238;
                }
              }
            }
          }

LABEL_138:
          v100 += 128;
          v95 += 16;
          if (++v99 == v98)
          {
            goto LABEL_131;
          }
        }
      }

LABEL_131:
      ;
    }

    while (v6 < v97);
  }

LABEL_238:
  if (v323 < v93)
  {
    do
    {
      sub_CBE8BC(&v323, &v322);
      v94 = v323;
LABEL_243:
      while (1)
      {
        v168 = v94[1].n128_u64[1];
        v94 = (v94 + 24);
        v167 = v168;
        v323 = v94;
        v169 = (v94->n128_u64[1] - v168) >> 7;
        v170 = v169 >= v6 ? v6 : v169;
        if (v170 >= 1)
        {
          break;
        }

LABEL_242:
        if (v6 < v169)
        {
          goto LABEL_349;
        }
      }

      v171 = 0;
      v172 = v4;
      while (1)
      {
        v173 = *v167;
        v174 = *(v172 + 4);
        v175 = HIDWORD(*v167);
        v43 = v174 == v175;
        v176 = v174 < v175;
        if (v43)
        {
          v176 = *v172 < *v167;
        }

        if (v176)
        {
          break;
        }

        v177 = HIDWORD(*v172);
        v178 = v173 < *v172;
        if (v175 != v177)
        {
          v178 = v175 < v177;
        }

        if (v178)
        {
          goto LABEL_243;
        }

        v179 = *(v172 + 8);
        v180 = *(v167 + 8);
        if (v179 < v180)
        {
          break;
        }

        v181 = *v172 < v173;
        if (v175 != v177)
        {
          v181 = v177 < v175;
        }

        if (v181 || v180 >= v179)
        {
          v182 = *(v172 + 32);
          v183 = *(v167 + 32);
          v43 = v182 == v183;
          v184 = v182 < v183;
          if (!v43)
          {
            goto LABEL_262;
          }

          v216 = *(v172 + 56);
          v217 = *(v167 + 56);
          v218 = (*(v172 + 64) - v216) >> 1;
          v219 = (*(v167 + 64) - v217) >> 1;
          if (v219 >= v218)
          {
            v220 = (*(v172 + 64) - v216) >> 1;
          }

          else
          {
            v220 = (*(v167 + 64) - v217) >> 1;
          }

          if (v220 >= 1)
          {
            v221 = (v216 + 1);
            v222 = (v217 + 1);
            do
            {
              v223 = *(v221 - 1);
              v224 = *(v222 - 1);
              if (v223 == v224)
              {
                v225 = *v221;
                v226 = *v222;
                if (v225 < v226)
                {
                  goto LABEL_349;
                }

                v227 = v226 == v225;
                if (v226 >= v225)
                {
                  v228 = 1;
                }

                else
                {
                  v228 = -1;
                }

                if (v227)
                {
                  v228 = 0;
                }

                if (v228 < 0)
                {
                  goto LABEL_263;
                }
              }

              else
              {
                if (v223 < v224)
                {
                  goto LABEL_349;
                }

                if (v224 >= v223)
                {
                  v229 = 1;
                }

                else
                {
                  v229 = -1;
                }

                if (v229 < 0)
                {
                  goto LABEL_263;
                }
              }

              v221 += 2;
              v222 += 2;
            }

            while (--v220);
          }

          v43 = v218 == v219;
          v184 = v218 < v219;
          if (!v43)
          {
            goto LABEL_262;
          }

          v230 = *(v172 + 80);
          v231 = *(v167 + 80);
          v232 = 0xAAAAAAAAAAAAAAABLL * ((*(v172 + 88) - v230) >> 2);
          v233 = 0xAAAAAAAAAAAAAAABLL * ((*(v167 + 88) - v231) >> 2);
          if (v233 >= v232)
          {
            v234 = 0xAAAAAAAAAAAAAAABLL * ((*(v172 + 88) - v230) >> 2);
          }

          else
          {
            v234 = 0xAAAAAAAAAAAAAAABLL * ((*(v167 + 88) - v231) >> 2);
          }

          if (v234 >= 1)
          {
            v235 = (v230 + 4);
            v236 = (v231 + 4);
            do
            {
              v237 = *(v235 - 1);
              v238 = *(v236 - 1);
              if (v238 == v237)
              {
                v237 = *v235;
                v238 = *v236;
                if (*v236 == *v235)
                {
                  v237 = v235[1];
                  v238 = v236[1];
                }
              }

              if (v237 < v238)
              {
                goto LABEL_349;
              }

              if (v238 < v237)
              {
                goto LABEL_263;
              }

              v235 += 3;
              v236 += 3;
            }

            while (--v234);
          }

          v43 = v232 == v233;
          v184 = v232 < v233;
          if (!v43)
          {
LABEL_262:
            if (v184)
            {
              break;
            }
          }
        }

LABEL_263:
        if (!v181)
        {
          v185 = *(v167 + 8);
          v186 = *(v172 + 8);
          if (v185 < v186)
          {
            goto LABEL_243;
          }

          if (v186 >= v185)
          {
            v187 = *(v167 + 32);
            v188 = *(v172 + 32);
            v189 = v187 == v188;
            v190 = v187 < v188 ? -1 : 1;
            if (!v189)
            {
              goto LABEL_248;
            }

            v191 = *(v167 + 56);
            v192 = *(v172 + 56);
            v193 = (*(v167 + 64) - v191) >> 1;
            v194 = (*(v172 + 64) - v192) >> 1;
            if (v194 >= v193)
            {
              v195 = (*(v167 + 64) - v191) >> 1;
            }

            else
            {
              v195 = (*(v172 + 64) - v192) >> 1;
            }

            if (v195 >= 1)
            {
              v196 = (v191 + 1);
              v197 = (v192 + 1);
              do
              {
                v198 = *(v196 - 1);
                v199 = *(v197 - 1);
                if (v198 == v199)
                {
                  v200 = *v196;
                  v201 = *v197;
                  if (v200 < v201)
                  {
                    goto LABEL_243;
                  }

                  v202 = v201 == v200;
                  if (v201 >= v200)
                  {
                    v203 = 1;
                  }

                  else
                  {
                    v203 = -1;
                  }

                  if (v202)
                  {
                    v203 = 0;
                  }

                  if (v203 < 0)
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  if (v198 < v199)
                  {
                    goto LABEL_243;
                  }

                  if (v199 >= v198)
                  {
                    v204 = 1;
                  }

                  else
                  {
                    v204 = -1;
                  }

                  if (v204 < 0)
                  {
                    goto LABEL_249;
                  }
                }

                v196 += 2;
                v197 += 2;
              }

              while (--v195);
            }

            v205 = v193 == v194;
            v190 = v193 < v194 ? -1 : 1;
            if (!v205)
            {
              goto LABEL_248;
            }

            v206 = *(v167 + 80);
            v207 = *(v172 + 80);
            v208 = 0xAAAAAAAAAAAAAAABLL * ((*(v167 + 88) - v206) >> 2);
            v209 = 0xAAAAAAAAAAAAAAABLL * ((*(v172 + 88) - v207) >> 2);
            if (v209 >= v208)
            {
              v210 = 0xAAAAAAAAAAAAAAABLL * ((*(v167 + 88) - v206) >> 2);
            }

            else
            {
              v210 = 0xAAAAAAAAAAAAAAABLL * ((*(v172 + 88) - v207) >> 2);
            }

            if (v210 >= 1)
            {
              v211 = (v206 + 4);
              v212 = (v207 + 4);
              do
              {
                v213 = *(v211 - 1);
                v214 = *(v212 - 1);
                if (v214 == v213)
                {
                  v213 = *v211;
                  v214 = *v212;
                  if (*v212 == *v211)
                  {
                    v213 = v211[1];
                    v214 = v212[1];
                  }
                }

                if (v213 < v214)
                {
                  goto LABEL_243;
                }

                if (v214 < v213)
                {
                  goto LABEL_249;
                }

                v211 += 3;
                v212 += 3;
              }

              while (--v210);
            }

            v215 = v208 == v209;
            v190 = v208 < v209 ? -1 : 1;
            if (!v215)
            {
LABEL_248:
              if (v190 < 0)
              {
                goto LABEL_243;
              }
            }
          }
        }

LABEL_249:
        v172 += 128;
        v167 += 128;
        if (++v171 == v170)
        {
          goto LABEL_242;
        }
      }

LABEL_349:
      v239 = v322;
      do
      {
LABEL_351:
        while (1)
        {
          v241 = *(v239 - 3);
          v239 -= 3;
          v240 = v241;
          v322 = v239;
          v242 = (v239[1] - v241) >> 7;
          v243 = v242 >= v6 ? v6 : v242;
          if (v243 < 1)
          {
            break;
          }

          v244 = 0;
          v245 = v4;
          while (1)
          {
            v246 = *v240;
            v247 = *(v245 + 4);
            v248 = HIDWORD(*v240);
            v43 = v247 == v248;
            v249 = v247 < v248;
            if (v43)
            {
              v249 = *v245 < *v240;
            }

            if (v249)
            {
              break;
            }

            v250 = HIDWORD(*v245);
            v251 = v246 < *v245;
            if (v248 != v250)
            {
              v251 = v248 < v250;
            }

            if (v251)
            {
              goto LABEL_240;
            }

            v252 = *(v245 + 8);
            v253 = *(v240 + 2);
            if (v252 < v253)
            {
              goto LABEL_351;
            }

            v254 = *v245 < v246;
            if (v248 != v250)
            {
              v254 = v250 < v248;
            }

            if (v254 || v253 >= v252)
            {
              v255 = *(v245 + 32);
              v256 = v240[4];
              v43 = v255 == v256;
              v257 = v255 < v256;
              if (!v43)
              {
                goto LABEL_370;
              }

              v289 = *(v245 + 56);
              v290 = v240[7];
              v291 = (*(v245 + 64) - v289) >> 1;
              v292 = (v240[8] - v290) >> 1;
              if (v292 >= v291)
              {
                v293 = (*(v245 + 64) - v289) >> 1;
              }

              else
              {
                v293 = (v240[8] - v290) >> 1;
              }

              if (v293 >= 1)
              {
                v294 = (v289 + 1);
                v295 = (v290 + 1);
                do
                {
                  v296 = *(v294 - 1);
                  v297 = *(v295 - 1);
                  if (v296 == v297)
                  {
                    v298 = *v294;
                    v299 = *v295;
                    if (v298 < v299)
                    {
                      goto LABEL_351;
                    }

                    v300 = v299 == v298;
                    if (v299 >= v298)
                    {
                      v301 = 1;
                    }

                    else
                    {
                      v301 = -1;
                    }

                    if (v300)
                    {
                      v301 = 0;
                    }

                    if (v301 < 0)
                    {
                      goto LABEL_371;
                    }
                  }

                  else
                  {
                    if (v296 < v297)
                    {
                      goto LABEL_351;
                    }

                    if (v297 >= v296)
                    {
                      v302 = 1;
                    }

                    else
                    {
                      v302 = -1;
                    }

                    if (v302 < 0)
                    {
                      goto LABEL_371;
                    }
                  }

                  v294 += 2;
                  v295 += 2;
                }

                while (--v293);
              }

              v43 = v291 == v292;
              v257 = v291 < v292;
              if (!v43)
              {
                goto LABEL_370;
              }

              v303 = *(v245 + 80);
              v304 = v240[10];
              v305 = 0xAAAAAAAAAAAAAAABLL * ((*(v245 + 88) - v303) >> 2);
              v306 = 0xAAAAAAAAAAAAAAABLL * ((v240[11] - v304) >> 2);
              if (v306 >= v305)
              {
                v307 = 0xAAAAAAAAAAAAAAABLL * ((*(v245 + 88) - v303) >> 2);
              }

              else
              {
                v307 = 0xAAAAAAAAAAAAAAABLL * ((v240[11] - v304) >> 2);
              }

              if (v307 >= 1)
              {
                v308 = (v303 + 4);
                v309 = (v304 + 4);
                do
                {
                  v310 = *(v308 - 1);
                  v311 = *(v309 - 1);
                  if (v311 == v310)
                  {
                    v310 = *v308;
                    v311 = *v309;
                    if (*v309 == *v308)
                    {
                      v310 = v308[1];
                      v311 = v309[1];
                    }
                  }

                  if (v310 < v311)
                  {
                    goto LABEL_351;
                  }

                  if (v311 < v310)
                  {
                    goto LABEL_371;
                  }

                  v308 += 3;
                  v309 += 3;
                }

                while (--v307);
              }

              v43 = v305 == v306;
              v257 = v305 < v306;
              if (!v43)
              {
LABEL_370:
                if (v257)
                {
                  goto LABEL_351;
                }
              }
            }

LABEL_371:
            if (!v254)
            {
              v258 = *(v240 + 2);
              v259 = *(v245 + 8);
              if (v258 < v259)
              {
                goto LABEL_240;
              }

              if (v259 >= v258)
              {
                v260 = v240[4];
                v261 = *(v245 + 32);
                v262 = v260 == v261;
                v263 = v260 < v261 ? -1 : 1;
                if (!v262)
                {
                  goto LABEL_356;
                }

                v264 = v240[7];
                v265 = *(v245 + 56);
                v266 = (v240[8] - v264) >> 1;
                v267 = (*(v245 + 64) - v265) >> 1;
                if (v267 >= v266)
                {
                  v268 = (v240[8] - v264) >> 1;
                }

                else
                {
                  v268 = (*(v245 + 64) - v265) >> 1;
                }

                if (v268 >= 1)
                {
                  v269 = (v264 + 1);
                  v270 = (v265 + 1);
                  do
                  {
                    v271 = *(v269 - 1);
                    v272 = *(v270 - 1);
                    if (v271 == v272)
                    {
                      v273 = *v269;
                      v274 = *v270;
                      if (v273 < v274)
                      {
                        goto LABEL_240;
                      }

                      v275 = v274 == v273;
                      if (v274 >= v273)
                      {
                        v276 = 1;
                      }

                      else
                      {
                        v276 = -1;
                      }

                      if (v275)
                      {
                        v276 = 0;
                      }

                      if (v276 < 0)
                      {
                        goto LABEL_357;
                      }
                    }

                    else
                    {
                      if (v271 < v272)
                      {
                        goto LABEL_240;
                      }

                      if (v272 >= v271)
                      {
                        v277 = 1;
                      }

                      else
                      {
                        v277 = -1;
                      }

                      if (v277 < 0)
                      {
                        goto LABEL_357;
                      }
                    }

                    v269 += 2;
                    v270 += 2;
                  }

                  while (--v268);
                }

                v278 = v266 == v267;
                v263 = v266 < v267 ? -1 : 1;
                if (!v278)
                {
                  goto LABEL_356;
                }

                v279 = v240[10];
                v280 = *(v245 + 80);
                v281 = 0xAAAAAAAAAAAAAAABLL * ((v240[11] - v279) >> 2);
                v282 = 0xAAAAAAAAAAAAAAABLL * ((*(v245 + 88) - v280) >> 2);
                if (v282 >= v281)
                {
                  v283 = 0xAAAAAAAAAAAAAAABLL * ((v240[11] - v279) >> 2);
                }

                else
                {
                  v283 = 0xAAAAAAAAAAAAAAABLL * ((*(v245 + 88) - v280) >> 2);
                }

                if (v283 >= 1)
                {
                  v284 = (v279 + 4);
                  v285 = (v280 + 4);
                  do
                  {
                    v286 = *(v284 - 1);
                    v287 = *(v285 - 1);
                    if (v287 == v286)
                    {
                      v286 = *v284;
                      v287 = *v285;
                      if (*v285 == *v284)
                      {
                        v286 = v284[1];
                        v287 = v285[1];
                      }
                    }

                    if (v286 < v287)
                    {
                      goto LABEL_240;
                    }

                    if (v287 < v286)
                    {
                      goto LABEL_357;
                    }

                    v284 += 3;
                    v285 += 3;
                  }

                  while (--v283);
                }

                v288 = v281 == v282;
                v263 = v281 < v282 ? -1 : 1;
                if (!v288)
                {
LABEL_356:
                  if (v263 < 0)
                  {
                    goto LABEL_240;
                  }
                }
              }
            }

LABEL_357:
            v245 += 128;
            v240 += 16;
            if (++v244 == v243)
            {
              goto LABEL_350;
            }
          }
        }

LABEL_350:
        ;
      }

      while (v6 < v242);
LABEL_240:
      ;
    }

    while (v94 < v239);
  }

  v312 = &v94[-2].n128_u64[1];
  if (&v94[-2].n128_i8[8] != a1)
  {
    sub_CBC1BC(a1, &v94[-2].n128_i64[1]);
  }

  v313 = *v312;
  if (*v312)
  {
    v314 = v94[-1].n128_u64[0];
    v315 = *v312;
    if (v314 != v313)
    {
      do
      {
        v316 = *(v314 - 24);
        if (v316)
        {
          *(v314 - 16) = v316;
          operator delete(v316);
        }

        v317 = *(v314 - 48);
        if (v317)
        {
          *(v314 - 40) = v317;
          operator delete(v317);
        }

        v318 = *(v314 - 72);
        if (v318)
        {
          *(v314 - 64) = v318;
          operator delete(v318);
        }

        v314 -= 128;
      }

      while (v314 != v313);
      v315 = *v312;
    }

    v94[-1].n128_u64[0] = v313;
    operator delete(v315);
    *v312 = 0;
    v94[-1].n128_u64[0] = 0;
    v94[-1].n128_u64[1] = 0;
  }

  *(v94 - 24) = v320;
  v94[-1].n128_u64[1] = v321;
  return v323;
}

__int8 *sub_CC0484(__n128 *a1, void **a2)
{
  v315 = a2;
  v313 = *a1;
  v3 = *a1;
  v314 = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  v4 = v3.n128_u64[0];
  v5 = (v3.n128_u64[1] - v3.n128_u64[0]) >> 7;
  a1->n128_u64[0] = 0;
  v6 = a1;
  do
  {
LABEL_3:
    while (1)
    {
      v7 = v6;
      v9 = v6[1].n128_u64[1];
      v6 = (v6 + 24);
      v8 = v9;
      v316 = v6;
      v10 = (v6->n128_u64[1] - v9) >> 7;
      v11 = v5 >= v10 ? v10 : (v3.n128_u64[1] - v3.n128_u64[0]) >> 7;
      if (v11 < 1)
      {
        break;
      }

      v12 = 0;
      v13 = v3.n128_u64[0];
      while (1)
      {
        v14 = *v13;
        v15 = *(v8 + 4);
        v16 = HIDWORD(*v13);
        v30 = v15 == v16;
        v17 = v15 < v16;
        if (v30)
        {
          v17 = *v8 < *v13;
        }

        if (v17)
        {
          break;
        }

        v18 = HIDWORD(*v8);
        v19 = v14 < *v8;
        if (v16 != v18)
        {
          v19 = v16 < v18;
        }

        if (v19)
        {
          goto LABEL_109;
        }

        v20 = *(v8 + 8);
        v21 = *(v13 + 2);
        if (v20 < v21)
        {
          goto LABEL_3;
        }

        v22 = *v8 < v14;
        if (v16 != v18)
        {
          v22 = v18 < v16;
        }

        if (v22 || v21 >= v20)
        {
          v23 = *(v8 + 32);
          v24 = v13[4];
          v30 = v23 == v24;
          v25 = v23 < v24;
          if (!v30)
          {
            goto LABEL_22;
          }

          v57 = *(v8 + 56);
          v58 = v13[7];
          v59 = (*(v8 + 64) - v57) >> 1;
          v60 = (v13[8] - v58) >> 1;
          if (v60 >= v59)
          {
            v61 = (*(v8 + 64) - v57) >> 1;
          }

          else
          {
            v61 = (v13[8] - v58) >> 1;
          }

          if (v61 >= 1)
          {
            v62 = (v57 + 1);
            v63 = (v58 + 1);
            do
            {
              v64 = *(v62 - 1);
              v65 = *(v63 - 1);
              if (v64 == v65)
              {
                v66 = *v62;
                v67 = *v63;
                if (v66 < v67)
                {
                  goto LABEL_3;
                }

                v68 = v67 == v66;
                if (v67 >= v66)
                {
                  v69 = 1;
                }

                else
                {
                  v69 = -1;
                }

                if (v68)
                {
                  v69 = 0;
                }

                if (v69 < 0)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v64 < v65)
                {
                  goto LABEL_3;
                }

                if (v65 >= v64)
                {
                  v70 = 1;
                }

                else
                {
                  v70 = -1;
                }

                if (v70 < 0)
                {
                  goto LABEL_23;
                }
              }

              v62 += 2;
              v63 += 2;
            }

            while (--v61);
          }

          v30 = v59 == v60;
          v25 = v59 < v60;
          if (!v30)
          {
            goto LABEL_22;
          }

          v71 = *(v8 + 80);
          v72 = v13[10];
          v73 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 88) - v71) >> 2);
          v74 = 0xAAAAAAAAAAAAAAABLL * ((v13[11] - v72) >> 2);
          if (v74 >= v73)
          {
            v75 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 88) - v71) >> 2);
          }

          else
          {
            v75 = 0xAAAAAAAAAAAAAAABLL * ((v13[11] - v72) >> 2);
          }

          if (v75 >= 1)
          {
            v76 = (v71 + 4);
            v77 = (v72 + 4);
            do
            {
              v78 = *(v76 - 1);
              v79 = *(v77 - 1);
              if (v79 == v78)
              {
                v78 = *v76;
                v79 = *v77;
                if (*v77 == *v76)
                {
                  v78 = v76[1];
                  v79 = v77[1];
                }
              }

              if (v78 < v79)
              {
                goto LABEL_3;
              }

              if (v79 < v78)
              {
                goto LABEL_23;
              }

              v76 += 3;
              v77 += 3;
            }

            while (--v75);
          }

          v30 = v73 == v74;
          v25 = v73 < v74;
          if (!v30)
          {
LABEL_22:
            if (v25)
            {
              goto LABEL_3;
            }
          }
        }

LABEL_23:
        if (!v22)
        {
          v26 = *(v13 + 2);
          v27 = *(v8 + 8);
          if (v26 < v27)
          {
            goto LABEL_109;
          }

          if (v27 >= v26)
          {
            v28 = v13[4];
            v29 = *(v8 + 32);
            v30 = v28 == v29;
            v31 = v28 < v29 ? -1 : 1;
            if (!v30)
            {
              goto LABEL_8;
            }

            v32 = v13[7];
            v33 = *(v8 + 56);
            v34 = (v13[8] - v32) >> 1;
            v35 = (*(v8 + 64) - v33) >> 1;
            if (v35 >= v34)
            {
              v36 = (v13[8] - v32) >> 1;
            }

            else
            {
              v36 = (*(v8 + 64) - v33) >> 1;
            }

            if (v36 >= 1)
            {
              v37 = (v32 + 1);
              v38 = (v33 + 1);
              do
              {
                v39 = *(v37 - 1);
                v40 = *(v38 - 1);
                if (v39 == v40)
                {
                  v41 = *v37;
                  v42 = *v38;
                  if (v41 < v42)
                  {
                    goto LABEL_109;
                  }

                  v43 = v42 == v41;
                  if (v42 >= v41)
                  {
                    v44 = 1;
                  }

                  else
                  {
                    v44 = -1;
                  }

                  if (v43)
                  {
                    v44 = 0;
                  }

                  if (v44 < 0)
                  {
                    goto LABEL_9;
                  }
                }

                else
                {
                  if (v39 < v40)
                  {
                    goto LABEL_109;
                  }

                  if (v40 >= v39)
                  {
                    v45 = 1;
                  }

                  else
                  {
                    v45 = -1;
                  }

                  if (v45 < 0)
                  {
                    goto LABEL_9;
                  }
                }

                v37 += 2;
                v38 += 2;
              }

              while (--v36);
            }

            v46 = v34 == v35;
            v31 = v34 < v35 ? -1 : 1;
            if (!v46)
            {
              goto LABEL_8;
            }

            v47 = v13[10];
            v48 = *(v8 + 80);
            v49 = 0xAAAAAAAAAAAAAAABLL * ((v13[11] - v47) >> 2);
            v50 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 88) - v48) >> 2);
            if (v50 >= v49)
            {
              v51 = 0xAAAAAAAAAAAAAAABLL * ((v13[11] - v47) >> 2);
            }

            else
            {
              v51 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 88) - v48) >> 2);
            }

            if (v51 >= 1)
            {
              v52 = (v47 + 4);
              v53 = (v48 + 4);
              do
              {
                v54 = *(v52 - 1);
                v55 = *(v53 - 1);
                if (v55 == v54)
                {
                  v54 = *v52;
                  v55 = *v53;
                  if (*v53 == *v52)
                  {
                    v54 = v52[1];
                    v55 = v53[1];
                  }
                }

                if (v54 < v55)
                {
                  goto LABEL_109;
                }

                if (v55 < v54)
                {
                  goto LABEL_9;
                }

                v52 += 3;
                v53 += 3;
              }

              while (--v51);
            }

            v56 = v49 == v50;
            v31 = v49 < v50 ? -1 : 1;
            if (!v56)
            {
LABEL_8:
              if (v31 < 0)
              {
                goto LABEL_109;
              }
            }
          }
        }

LABEL_9:
        v8 += 128;
        v13 += 16;
        if (++v12 == v11)
        {
          goto LABEL_2;
        }
      }
    }

LABEL_2:
    ;
  }

  while (v10 < v5);
LABEL_109:
  if (v7 == a1)
  {
    while (v6 < a2)
    {
      v152 = *(a2 - 3);
      v315 = (a2 - 3);
      v153 = *(a2 - 2) - v152;
      v154 = v153 >> 7;
      if (v5 >= v153 >> 7)
      {
        v155 = v153 >> 7;
      }

      else
      {
        v155 = v5;
      }

      if (v155 >= 1)
      {
        v156 = v4;
        do
        {
          v321 = v152;
          v322 = v152 + 32;
          v157 = v152 + 80;
          v323 = v152 + 56;
          v324 = v152 + 80;
          v317 = v156;
          v318 = v156 + 4;
          v158 = v156 + 10;
          v319 = v156 + 7;
          v320 = v156 + 10;
          if (sub_CC1B84(&v321, &v317) < 0)
          {
            goto LABEL_230;
          }

          v321 = v158 - 10;
          v322 = (v158 - 6);
          v323 = (v158 - 3);
          v324 = v158;
          v317 = (v157 - 80);
          v318 = (v157 - 48);
          v319 = (v157 - 24);
          v320 = v157;
          if (sub_CC1B84(&v321, &v317) < 0)
          {
            goto LABEL_219;
          }

          v152 = v157 + 48;
          v156 = v158 + 6;
        }

        while (--v155);
      }

      if (v154 < v5)
      {
        break;
      }

LABEL_219:
      a2 = v315;
      v6 = v316;
    }
  }

  else
  {
LABEL_112:
    while (1)
    {
      v81 = *(a2 - 3);
      a2 -= 3;
      v80 = v81;
      v315 = a2;
      v82 = (a2[1] - v81) >> 7;
      v83 = v5 >= v82 ? v82 : (v3.n128_u64[1] - v3.n128_u64[0]) >> 7;
      if (v83 >= 1)
      {
        break;
      }

LABEL_111:
      if (v82 < v5)
      {
        goto LABEL_230;
      }
    }

    v84 = 0;
    v85 = v3.n128_u64[0];
    while (1)
    {
      v86 = *v85;
      v87 = *(v80 + 4);
      v88 = HIDWORD(*v85);
      v30 = v87 == v88;
      v89 = v87 < v88;
      if (v30)
      {
        v89 = *v80 < *v85;
      }

      if (v89)
      {
        break;
      }

      v90 = HIDWORD(*v80);
      v91 = v86 < *v80;
      if (v88 != v90)
      {
        v91 = v88 < v90;
      }

      if (v91)
      {
        goto LABEL_112;
      }

      v92 = *(v80 + 8);
      v93 = *(v85 + 2);
      if (v92 < v93)
      {
        break;
      }

      v94 = *v80 < v86;
      if (v88 != v90)
      {
        v94 = v90 < v88;
      }

      if (v94 || v93 >= v92)
      {
        v95 = *(v80 + 32);
        v96 = v85[4];
        v30 = v95 == v96;
        v97 = v95 < v96;
        if (!v30)
        {
          goto LABEL_131;
        }

        v129 = *(v80 + 56);
        v130 = v85[7];
        v131 = (*(v80 + 64) - v129) >> 1;
        v132 = (v85[8] - v130) >> 1;
        if (v132 >= v131)
        {
          v133 = (*(v80 + 64) - v129) >> 1;
        }

        else
        {
          v133 = (v85[8] - v130) >> 1;
        }

        if (v133 >= 1)
        {
          v134 = (v129 + 1);
          v135 = (v130 + 1);
          do
          {
            v136 = *(v134 - 1);
            v137 = *(v135 - 1);
            if (v136 == v137)
            {
              v138 = *v134;
              v139 = *v135;
              if (v138 < v139)
              {
                goto LABEL_230;
              }

              v140 = v139 == v138;
              if (v139 >= v138)
              {
                v141 = 1;
              }

              else
              {
                v141 = -1;
              }

              if (v140)
              {
                v141 = 0;
              }

              if (v141 < 0)
              {
                goto LABEL_132;
              }
            }

            else
            {
              if (v136 < v137)
              {
                goto LABEL_230;
              }

              if (v137 >= v136)
              {
                v142 = 1;
              }

              else
              {
                v142 = -1;
              }

              if (v142 < 0)
              {
                goto LABEL_132;
              }
            }

            v134 += 2;
            v135 += 2;
          }

          while (--v133);
        }

        v30 = v131 == v132;
        v97 = v131 < v132;
        if (!v30)
        {
          goto LABEL_131;
        }

        v143 = *(v80 + 80);
        v144 = v85[10];
        v145 = 0xAAAAAAAAAAAAAAABLL * ((*(v80 + 88) - v143) >> 2);
        v146 = 0xAAAAAAAAAAAAAAABLL * ((v85[11] - v144) >> 2);
        if (v146 >= v145)
        {
          v147 = 0xAAAAAAAAAAAAAAABLL * ((*(v80 + 88) - v143) >> 2);
        }

        else
        {
          v147 = 0xAAAAAAAAAAAAAAABLL * ((v85[11] - v144) >> 2);
        }

        if (v147 >= 1)
        {
          v148 = (v143 + 4);
          v149 = (v144 + 4);
          do
          {
            v150 = *(v148 - 1);
            v151 = *(v149 - 1);
            if (v151 == v150)
            {
              v150 = *v148;
              v151 = *v149;
              if (*v149 == *v148)
              {
                v150 = v148[1];
                v151 = v149[1];
              }
            }

            if (v150 < v151)
            {
              goto LABEL_230;
            }

            if (v151 < v150)
            {
              goto LABEL_132;
            }

            v148 += 3;
            v149 += 3;
          }

          while (--v147);
        }

        v30 = v145 == v146;
        v97 = v145 < v146;
        if (!v30)
        {
LABEL_131:
          if (v97)
          {
            break;
          }
        }
      }

LABEL_132:
      if (!v94)
      {
        v98 = *(v85 + 2);
        v99 = *(v80 + 8);
        if (v98 < v99)
        {
          goto LABEL_112;
        }

        if (v99 >= v98)
        {
          v100 = v85[4];
          v101 = *(v80 + 32);
          v102 = v100 == v101;
          v103 = v100 < v101 ? -1 : 1;
          if (!v102)
          {
            goto LABEL_117;
          }

          v104 = v85[7];
          v105 = *(v80 + 56);
          v106 = (v85[8] - v104) >> 1;
          v107 = (*(v80 + 64) - v105) >> 1;
          if (v107 >= v106)
          {
            v108 = (v85[8] - v104) >> 1;
          }

          else
          {
            v108 = (*(v80 + 64) - v105) >> 1;
          }

          if (v108 >= 1)
          {
            v109 = (v104 + 1);
            v110 = (v105 + 1);
            do
            {
              v111 = *(v109 - 1);
              v112 = *(v110 - 1);
              if (v111 == v112)
              {
                v113 = *v109;
                v114 = *v110;
                if (v113 < v114)
                {
                  goto LABEL_112;
                }

                v115 = v114 == v113;
                if (v114 >= v113)
                {
                  v116 = 1;
                }

                else
                {
                  v116 = -1;
                }

                if (v115)
                {
                  v116 = 0;
                }

                if (v116 < 0)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                if (v111 < v112)
                {
                  goto LABEL_112;
                }

                if (v112 >= v111)
                {
                  v117 = 1;
                }

                else
                {
                  v117 = -1;
                }

                if (v117 < 0)
                {
                  goto LABEL_118;
                }
              }

              v109 += 2;
              v110 += 2;
            }

            while (--v108);
          }

          v118 = v106 == v107;
          v103 = v106 < v107 ? -1 : 1;
          if (!v118)
          {
            goto LABEL_117;
          }

          v119 = v85[10];
          v120 = *(v80 + 80);
          v121 = 0xAAAAAAAAAAAAAAABLL * ((v85[11] - v119) >> 2);
          v122 = 0xAAAAAAAAAAAAAAABLL * ((*(v80 + 88) - v120) >> 2);
          if (v122 >= v121)
          {
            v123 = 0xAAAAAAAAAAAAAAABLL * ((v85[11] - v119) >> 2);
          }

          else
          {
            v123 = 0xAAAAAAAAAAAAAAABLL * ((*(v80 + 88) - v120) >> 2);
          }

          if (v123 >= 1)
          {
            v124 = (v119 + 4);
            v125 = (v120 + 4);
            do
            {
              v126 = *(v124 - 1);
              v127 = *(v125 - 1);
              if (v127 == v126)
              {
                v126 = *v124;
                v127 = *v125;
                if (*v125 == *v124)
                {
                  v126 = v124[1];
                  v127 = v125[1];
                }
              }

              if (v126 < v127)
              {
                goto LABEL_112;
              }

              if (v127 < v126)
              {
                goto LABEL_118;
              }

              v124 += 3;
              v125 += 3;
            }

            while (--v123);
          }

          v128 = v121 == v122;
          v103 = v121 < v122 ? -1 : 1;
          if (!v128)
          {
LABEL_117:
            if (v103 < 0)
            {
              goto LABEL_112;
            }
          }
        }
      }

LABEL_118:
      v80 += 128;
      v85 += 16;
      if (++v84 == v83)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_230:
  v159 = v316;
  if (v316 < v315)
  {
    do
    {
      sub_CBE8BC(&v316, &v315);
      v159 = v316;
      do
      {
LABEL_235:
        while (1)
        {
          v161 = v159[1].n128_u64[1];
          v159 = (v159 + 24);
          v160 = v161;
          v316 = v159;
          v162 = (v159->n128_u64[1] - v161) >> 7;
          v163 = v5 >= v162 ? v162 : v5;
          if (v163 < 1)
          {
            break;
          }

          v164 = 0;
          v165 = v4;
          while (1)
          {
            v166 = *v165;
            v167 = *(v160 + 4);
            v168 = HIDWORD(*v165);
            v30 = v167 == v168;
            v169 = v167 < v168;
            if (v30)
            {
              v169 = *v160 < *v165;
            }

            if (v169)
            {
              break;
            }

            v170 = HIDWORD(*v160);
            v171 = v166 < *v160;
            if (v168 != v170)
            {
              v171 = v168 < v170;
            }

            if (v171)
            {
              goto LABEL_341;
            }

            v172 = *(v160 + 8);
            v173 = *(v165 + 2);
            if (v172 < v173)
            {
              goto LABEL_235;
            }

            v174 = *v160 < v166;
            if (v168 != v170)
            {
              v174 = v170 < v168;
            }

            if (v174 || v173 >= v172)
            {
              v175 = *(v160 + 32);
              v176 = v165[4];
              v30 = v175 == v176;
              v177 = v175 < v176;
              if (!v30)
              {
                goto LABEL_254;
              }

              v209 = *(v160 + 56);
              v210 = v165[7];
              v211 = (*(v160 + 64) - v209) >> 1;
              v212 = (v165[8] - v210) >> 1;
              if (v212 >= v211)
              {
                v213 = (*(v160 + 64) - v209) >> 1;
              }

              else
              {
                v213 = (v165[8] - v210) >> 1;
              }

              if (v213 >= 1)
              {
                v214 = (v209 + 1);
                v215 = (v210 + 1);
                do
                {
                  v216 = *(v214 - 1);
                  v217 = *(v215 - 1);
                  if (v216 == v217)
                  {
                    v218 = *v214;
                    v219 = *v215;
                    if (v218 < v219)
                    {
                      goto LABEL_235;
                    }

                    v220 = v219 == v218;
                    if (v219 >= v218)
                    {
                      v221 = 1;
                    }

                    else
                    {
                      v221 = -1;
                    }

                    if (v220)
                    {
                      v221 = 0;
                    }

                    if (v221 < 0)
                    {
                      goto LABEL_255;
                    }
                  }

                  else
                  {
                    if (v216 < v217)
                    {
                      goto LABEL_235;
                    }

                    if (v217 >= v216)
                    {
                      v222 = 1;
                    }

                    else
                    {
                      v222 = -1;
                    }

                    if (v222 < 0)
                    {
                      goto LABEL_255;
                    }
                  }

                  v214 += 2;
                  v215 += 2;
                }

                while (--v213);
              }

              v30 = v211 == v212;
              v177 = v211 < v212;
              if (!v30)
              {
                goto LABEL_254;
              }

              v223 = *(v160 + 80);
              v224 = v165[10];
              v225 = 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 88) - v223) >> 2);
              v226 = 0xAAAAAAAAAAAAAAABLL * ((v165[11] - v224) >> 2);
              if (v226 >= v225)
              {
                v227 = 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 88) - v223) >> 2);
              }

              else
              {
                v227 = 0xAAAAAAAAAAAAAAABLL * ((v165[11] - v224) >> 2);
              }

              if (v227 >= 1)
              {
                v228 = (v223 + 4);
                v229 = (v224 + 4);
                do
                {
                  v230 = *(v228 - 1);
                  v231 = *(v229 - 1);
                  if (v231 == v230)
                  {
                    v230 = *v228;
                    v231 = *v229;
                    if (*v229 == *v228)
                    {
                      v230 = v228[1];
                      v231 = v229[1];
                    }
                  }

                  if (v230 < v231)
                  {
                    goto LABEL_235;
                  }

                  if (v231 < v230)
                  {
                    goto LABEL_255;
                  }

                  v228 += 3;
                  v229 += 3;
                }

                while (--v227);
              }

              v30 = v225 == v226;
              v177 = v225 < v226;
              if (!v30)
              {
LABEL_254:
                if (v177)
                {
                  goto LABEL_235;
                }
              }
            }

LABEL_255:
            if (!v174)
            {
              v178 = *(v165 + 2);
              v179 = *(v160 + 8);
              if (v178 < v179)
              {
                goto LABEL_341;
              }

              if (v179 >= v178)
              {
                v180 = v165[4];
                v181 = *(v160 + 32);
                v182 = v180 == v181;
                v183 = v180 < v181 ? -1 : 1;
                if (!v182)
                {
                  goto LABEL_240;
                }

                v184 = v165[7];
                v185 = *(v160 + 56);
                v186 = (v165[8] - v184) >> 1;
                v187 = (*(v160 + 64) - v185) >> 1;
                if (v187 >= v186)
                {
                  v188 = (v165[8] - v184) >> 1;
                }

                else
                {
                  v188 = (*(v160 + 64) - v185) >> 1;
                }

                if (v188 >= 1)
                {
                  v189 = (v184 + 1);
                  v190 = (v185 + 1);
                  do
                  {
                    v191 = *(v189 - 1);
                    v192 = *(v190 - 1);
                    if (v191 == v192)
                    {
                      v193 = *v189;
                      v194 = *v190;
                      if (v193 < v194)
                      {
                        goto LABEL_341;
                      }

                      v195 = v194 == v193;
                      if (v194 >= v193)
                      {
                        v196 = 1;
                      }

                      else
                      {
                        v196 = -1;
                      }

                      if (v195)
                      {
                        v196 = 0;
                      }

                      if (v196 < 0)
                      {
                        goto LABEL_241;
                      }
                    }

                    else
                    {
                      if (v191 < v192)
                      {
                        goto LABEL_341;
                      }

                      if (v192 >= v191)
                      {
                        v197 = 1;
                      }

                      else
                      {
                        v197 = -1;
                      }

                      if (v197 < 0)
                      {
                        goto LABEL_241;
                      }
                    }

                    v189 += 2;
                    v190 += 2;
                  }

                  while (--v188);
                }

                v198 = v186 == v187;
                v183 = v186 < v187 ? -1 : 1;
                if (!v198)
                {
                  goto LABEL_240;
                }

                v199 = v165[10];
                v200 = *(v160 + 80);
                v201 = 0xAAAAAAAAAAAAAAABLL * ((v165[11] - v199) >> 2);
                v202 = 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 88) - v200) >> 2);
                if (v202 >= v201)
                {
                  v203 = 0xAAAAAAAAAAAAAAABLL * ((v165[11] - v199) >> 2);
                }

                else
                {
                  v203 = 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 88) - v200) >> 2);
                }

                if (v203 >= 1)
                {
                  v204 = (v199 + 4);
                  v205 = (v200 + 4);
                  do
                  {
                    v206 = *(v204 - 1);
                    v207 = *(v205 - 1);
                    if (v207 == v206)
                    {
                      v206 = *v204;
                      v207 = *v205;
                      if (*v205 == *v204)
                      {
                        v206 = v204[1];
                        v207 = v205[1];
                      }
                    }

                    if (v206 < v207)
                    {
                      goto LABEL_341;
                    }

                    if (v207 < v206)
                    {
                      goto LABEL_241;
                    }

                    v204 += 3;
                    v205 += 3;
                  }

                  while (--v203);
                }

                v208 = v201 == v202;
                v183 = v201 < v202 ? -1 : 1;
                if (!v208)
                {
LABEL_240:
                  if (v183 < 0)
                  {
                    goto LABEL_341;
                  }
                }
              }
            }

LABEL_241:
            v160 += 128;
            v165 += 16;
            if (++v164 == v163)
            {
              goto LABEL_234;
            }
          }
        }

LABEL_234:
        ;
      }

      while (v162 < v5);
LABEL_341:
      v232 = v315;
LABEL_343:
      while (1)
      {
        v234 = *(v232 - 3);
        v232 -= 3;
        v233 = v234;
        v315 = v232;
        v235 = (v232[1] - v234) >> 7;
        v236 = v5 >= v235 ? v235 : v5;
        if (v236 >= 1)
        {
          break;
        }

LABEL_342:
        if (v235 < v5)
        {
          goto LABEL_232;
        }
      }

      v237 = 0;
      v238 = v4;
      while (1)
      {
        v239 = *v238;
        v240 = *(v233 + 4);
        v241 = HIDWORD(*v238);
        v30 = v240 == v241;
        v242 = v240 < v241;
        if (v30)
        {
          v242 = *v233 < *v238;
        }

        if (v242)
        {
          break;
        }

        v243 = HIDWORD(*v233);
        v244 = v239 < *v233;
        if (v241 != v243)
        {
          v244 = v241 < v243;
        }

        if (v244)
        {
          goto LABEL_343;
        }

        v245 = *(v233 + 8);
        v246 = *(v238 + 2);
        if (v245 < v246)
        {
          break;
        }

        v247 = *v233 < v239;
        if (v241 != v243)
        {
          v247 = v243 < v241;
        }

        if (v247 || v246 >= v245)
        {
          v248 = *(v233 + 32);
          v249 = v238[4];
          v30 = v248 == v249;
          v250 = v248 < v249;
          if (!v30)
          {
            goto LABEL_362;
          }

          v282 = *(v233 + 56);
          v283 = v238[7];
          v284 = (*(v233 + 64) - v282) >> 1;
          v285 = (v238[8] - v283) >> 1;
          if (v285 >= v284)
          {
            v286 = (*(v233 + 64) - v282) >> 1;
          }

          else
          {
            v286 = (v238[8] - v283) >> 1;
          }

          if (v286 >= 1)
          {
            v287 = (v282 + 1);
            v288 = (v283 + 1);
            do
            {
              v289 = *(v287 - 1);
              v290 = *(v288 - 1);
              if (v289 == v290)
              {
                v291 = *v287;
                v292 = *v288;
                if (v291 < v292)
                {
                  goto LABEL_232;
                }

                v293 = v292 == v291;
                if (v292 >= v291)
                {
                  v294 = 1;
                }

                else
                {
                  v294 = -1;
                }

                if (v293)
                {
                  v294 = 0;
                }

                if (v294 < 0)
                {
                  goto LABEL_363;
                }
              }

              else
              {
                if (v289 < v290)
                {
                  goto LABEL_232;
                }

                if (v290 >= v289)
                {
                  v295 = 1;
                }

                else
                {
                  v295 = -1;
                }

                if (v295 < 0)
                {
                  goto LABEL_363;
                }
              }

              v287 += 2;
              v288 += 2;
            }

            while (--v286);
          }

          v30 = v284 == v285;
          v250 = v284 < v285;
          if (!v30)
          {
            goto LABEL_362;
          }

          v296 = *(v233 + 80);
          v297 = v238[10];
          v298 = 0xAAAAAAAAAAAAAAABLL * ((*(v233 + 88) - v296) >> 2);
          v299 = 0xAAAAAAAAAAAAAAABLL * ((v238[11] - v297) >> 2);
          if (v299 >= v298)
          {
            v300 = 0xAAAAAAAAAAAAAAABLL * ((*(v233 + 88) - v296) >> 2);
          }

          else
          {
            v300 = 0xAAAAAAAAAAAAAAABLL * ((v238[11] - v297) >> 2);
          }

          if (v300 >= 1)
          {
            v301 = (v296 + 4);
            v302 = (v297 + 4);
            do
            {
              v303 = *(v301 - 1);
              v304 = *(v302 - 1);
              if (v304 == v303)
              {
                v303 = *v301;
                v304 = *v302;
                if (*v302 == *v301)
                {
                  v303 = v301[1];
                  v304 = v302[1];
                }
              }

              if (v303 < v304)
              {
                goto LABEL_232;
              }

              if (v304 < v303)
              {
                goto LABEL_363;
              }

              v301 += 3;
              v302 += 3;
            }

            while (--v300);
          }

          v30 = v298 == v299;
          v250 = v298 < v299;
          if (!v30)
          {
LABEL_362:
            if (v250)
            {
              break;
            }
          }
        }

LABEL_363:
        if (!v247)
        {
          v251 = *(v238 + 2);
          v252 = *(v233 + 8);
          if (v251 < v252)
          {
            goto LABEL_343;
          }

          if (v252 >= v251)
          {
            v253 = v238[4];
            v254 = *(v233 + 32);
            v255 = v253 == v254;
            v256 = v253 < v254 ? -1 : 1;
            if (!v255)
            {
              goto LABEL_348;
            }

            v257 = v238[7];
            v258 = *(v233 + 56);
            v259 = (v238[8] - v257) >> 1;
            v260 = (*(v233 + 64) - v258) >> 1;
            if (v260 >= v259)
            {
              v261 = (v238[8] - v257) >> 1;
            }

            else
            {
              v261 = (*(v233 + 64) - v258) >> 1;
            }

            if (v261 >= 1)
            {
              v262 = (v257 + 1);
              v263 = (v258 + 1);
              do
              {
                v264 = *(v262 - 1);
                v265 = *(v263 - 1);
                if (v264 == v265)
                {
                  v266 = *v262;
                  v267 = *v263;
                  if (v266 < v267)
                  {
                    goto LABEL_343;
                  }

                  v268 = v267 == v266;
                  if (v267 >= v266)
                  {
                    v269 = 1;
                  }

                  else
                  {
                    v269 = -1;
                  }

                  if (v268)
                  {
                    v269 = 0;
                  }

                  if (v269 < 0)
                  {
                    goto LABEL_349;
                  }
                }

                else
                {
                  if (v264 < v265)
                  {
                    goto LABEL_343;
                  }

                  if (v265 >= v264)
                  {
                    v270 = 1;
                  }

                  else
                  {
                    v270 = -1;
                  }

                  if (v270 < 0)
                  {
                    goto LABEL_349;
                  }
                }

                v262 += 2;
                v263 += 2;
              }

              while (--v261);
            }

            v271 = v259 == v260;
            v256 = v259 < v260 ? -1 : 1;
            if (!v271)
            {
              goto LABEL_348;
            }

            v272 = v238[10];
            v273 = *(v233 + 80);
            v274 = 0xAAAAAAAAAAAAAAABLL * ((v238[11] - v272) >> 2);
            v275 = 0xAAAAAAAAAAAAAAABLL * ((*(v233 + 88) - v273) >> 2);
            if (v275 >= v274)
            {
              v276 = 0xAAAAAAAAAAAAAAABLL * ((v238[11] - v272) >> 2);
            }

            else
            {
              v276 = 0xAAAAAAAAAAAAAAABLL * ((*(v233 + 88) - v273) >> 2);
            }

            if (v276 >= 1)
            {
              v277 = (v272 + 4);
              v278 = (v273 + 4);
              do
              {
                v279 = *(v277 - 1);
                v280 = *(v278 - 1);
                if (v280 == v279)
                {
                  v279 = *v277;
                  v280 = *v278;
                  if (*v278 == *v277)
                  {
                    v279 = v277[1];
                    v280 = v278[1];
                  }
                }

                if (v279 < v280)
                {
                  goto LABEL_343;
                }

                if (v280 < v279)
                {
                  goto LABEL_349;
                }

                v277 += 3;
                v278 += 3;
              }

              while (--v276);
            }

            v281 = v274 == v275;
            v256 = v274 < v275 ? -1 : 1;
            if (!v281)
            {
LABEL_348:
              if (v256 < 0)
              {
                goto LABEL_343;
              }
            }
          }
        }

LABEL_349:
        v233 += 128;
        v238 += 16;
        if (++v237 == v236)
        {
          goto LABEL_342;
        }
      }

LABEL_232:
      ;
    }

    while (v159 < v232);
  }

  v305 = &v159[-2].n128_u64[1];
  if (&v159[-2].n128_i8[8] != a1)
  {
    sub_CBC1BC(a1, &v159[-2].n128_i64[1]);
  }

  v306 = *v305;
  if (*v305)
  {
    v307 = v159[-1].n128_u64[0];
    v308 = *v305;
    if (v307 != v306)
    {
      do
      {
        v309 = *(v307 - 24);
        if (v309)
        {
          *(v307 - 16) = v309;
          operator delete(v309);
        }

        v310 = *(v307 - 48);
        if (v310)
        {
          *(v307 - 40) = v310;
          operator delete(v310);
        }

        v311 = *(v307 - 72);
        if (v311)
        {
          *(v307 - 64) = v311;
          operator delete(v311);
        }

        v307 -= 128;
      }

      while (v307 != v306);
      v308 = *v305;
    }

    v159[-1].n128_u64[0] = v306;
    operator delete(v308);
    *v305 = 0;
    v159[-1].n128_u64[0] = 0;
    v159[-1].n128_u64[1] = 0;
  }

  *(v159 - 24) = v313;
  v159[-1].n128_u64[1] = v314;
  return &v159[-2].n128_i8[8];
}

BOOL sub_CC1438(uint64_t a1, void **a2)
{
  v95 = a2;
  v96 = a1;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_CBE980(a1, (a1 + 24), a2 - 3);
        return 1;
      case 4:
        v90 = a1 + 24;
        v91 = a1 + 48;
        v99 = (a1 + 24);
        v100 = a1;
        v92 = (a2 - 3);
        v97 = a2 - 3;
        v98 = (a1 + 48);
        sub_CBE980(a1, (a1 + 24), (a1 + 48));
        if ((sub_CC1A60(v92, v91) & 0x80) != 0)
        {
          sub_CBE8BC(&v98, &v97);
          if ((sub_CC1A60(v98, v90) & 0x80) != 0)
          {
            sub_CBE8BC(&v99, &v98);
            if ((sub_CC1A60(v99, a1) & 0x80) != 0)
            {
              sub_CBE8BC(&v100, &v99);
            }
          }
        }

        return 1;
      case 5:
        sub_CBEA64(a1, (a1 + 24), (a1 + 48), (a1 + 72), a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v95 = a2 - 3;
      if ((sub_CC1A60(a2 - 3, a1) & 0x80) != 0)
      {
        sub_CBE8BC(&v96, &v95);
        return 1;
      }

      return 1;
    }
  }

  v5 = (a1 + 48);
  sub_CBE980(a1, (a1 + 24), (a1 + 48));
  v7 = (a1 + 72);
  if (v7 == a2)
  {
    return 1;
  }

  v8 = 0;
  while (2)
  {
    if ((sub_CC1A60(v7, v5) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    v94 = *v7;
    v10 = v7[2];
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    sub_CBC1BC(v7, v5);
    v11 = (v94.n128_u64[1] - v94.n128_u64[0]) >> 7;
    v12 = v5;
    while (1)
    {
      v13 = v12[-2].n128_u64[1];
      v14 = v12[-1].n128_u64[0];
      v12 = (v12 - 24);
      v15 = (v14 - v13) >> 7;
      if (v15 >= v11)
      {
        v16 = (v94.n128_u64[1] - v94.n128_u64[0]) >> 7;
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 1)
      {
        v17 = 0;
        v18 = v94.n128_u64[0];
        do
        {
          v19 = *v13;
          v20 = *(v18 + 4);
          v21 = HIDWORD(*v13);
          v35 = v20 == v21;
          v22 = v20 < v21;
          if (v35)
          {
            v22 = *v18 < *v13;
          }

          if (v22)
          {
            goto LABEL_20;
          }

          v23 = HIDWORD(*v18);
          v24 = v19 < *v18;
          if (v21 != v23)
          {
            v24 = v21 < v23;
          }

          if (v24)
          {
            goto LABEL_129;
          }

          v25 = *(v18 + 8);
          v26 = *(v13 + 8);
          if (v25 < v26)
          {
            goto LABEL_20;
          }

          v27 = *v18 < v19;
          if (v21 != v23)
          {
            v27 = v23 < v21;
          }

          if (v27 || v26 >= v25)
          {
            v28 = *(v18 + 32);
            v29 = *(v13 + 32);
            v35 = v28 == v29;
            v30 = v28 < v29;
            if (!v35)
            {
              goto LABEL_40;
            }

            v51 = *(v18 + 56);
            v52 = *(v13 + 56);
            v53 = (*(v18 + 64) - v51) >> 1;
            v54 = (*(v13 + 64) - v52) >> 1;
            if (v54 >= v53)
            {
              v55 = (*(v18 + 64) - v51) >> 1;
            }

            else
            {
              v55 = (*(v13 + 64) - v52) >> 1;
            }

            if (v55 >= 1)
            {
              v56 = (v51 + 1);
              v57 = (v52 + 1);
              do
              {
                v58 = *(v56 - 1);
                v59 = *(v57 - 1);
                if (v58 == v59)
                {
                  v60 = *v56;
                  v61 = *v57;
                  if (v60 < v61)
                  {
                    goto LABEL_20;
                  }

                  v62 = v61 == v60;
                  if (v61 >= v60)
                  {
                    v63 = 1;
                  }

                  else
                  {
                    v63 = -1;
                  }

                  if (v62)
                  {
                    v63 = 0;
                  }

                  if (v63 < 0)
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  if (v58 < v59)
                  {
                    goto LABEL_20;
                  }

                  if (v59 >= v58)
                  {
                    v64 = 1;
                  }

                  else
                  {
                    v64 = -1;
                  }

                  if (v64 < 0)
                  {
                    goto LABEL_41;
                  }
                }

                v56 += 2;
                v57 += 2;
              }

              while (--v55);
            }

            v35 = v53 == v54;
            v30 = v53 < v54;
            if (!v35)
            {
              goto LABEL_40;
            }

            v65 = *(v18 + 80);
            v66 = *(v13 + 80);
            v67 = 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 88) - v65) >> 2);
            v68 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 88) - v66) >> 2);
            if (v68 >= v67)
            {
              v69 = 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 88) - v65) >> 2);
            }

            else
            {
              v69 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 88) - v66) >> 2);
            }

            if (v69 >= 1)
            {
              v70 = (v65 + 4);
              v71 = (v66 + 4);
              do
              {
                v72 = *(v70 - 1);
                v73 = *(v71 - 1);
                if (v73 == v72)
                {
                  v72 = *v70;
                  v73 = *v71;
                  if (*v71 == *v70)
                  {
                    v72 = v70[1];
                    v73 = v71[1];
                  }
                }

                if (v72 < v73)
                {
                  goto LABEL_20;
                }

                if (v73 < v72)
                {
                  goto LABEL_41;
                }

                v70 += 3;
                v71 += 3;
              }

              while (--v69);
            }

            v35 = v67 == v68;
            v30 = v67 < v68;
            if (!v35)
            {
LABEL_40:
              if (v30)
              {
                goto LABEL_20;
              }
            }
          }

LABEL_41:
          if (!v27)
          {
            v31 = *(v13 + 8);
            v32 = *(v18 + 8);
            if (v31 < v32)
            {
              goto LABEL_129;
            }

            if (v32 >= v31)
            {
              v33 = *(v13 + 32);
              v34 = *(v18 + 32);
              v35 = v33 == v34;
              v36 = v33 < v34 ? -1 : 1;
              if (!v35)
              {
                goto LABEL_26;
              }

              v37 = *(v13 + 56);
              v38 = *(v18 + 56);
              v39 = (*(v13 + 64) - v37) >> 1;
              v40 = (*(v18 + 64) - v38) >> 1;
              if (v40 >= v39)
              {
                v41 = (*(v13 + 64) - v37) >> 1;
              }

              else
              {
                v41 = (*(v18 + 64) - v38) >> 1;
              }

              if (v41 >= 1)
              {
                v42 = (v37 + 1);
                v43 = (v38 + 1);
                do
                {
                  v44 = *(v42 - 1);
                  v45 = *(v43 - 1);
                  if (v44 == v45)
                  {
                    v46 = *v42;
                    v47 = *v43;
                    if (v46 < v47)
                    {
                      goto LABEL_129;
                    }

                    v48 = v47 == v46;
                    if (v47 >= v46)
                    {
                      v49 = 1;
                    }

                    else
                    {
                      v49 = -1;
                    }

                    if (v48)
                    {
                      v49 = 0;
                    }

                    if (v49 < 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    if (v44 < v45)
                    {
                      goto LABEL_129;
                    }

                    if (v45 >= v44)
                    {
                      v50 = 1;
                    }

                    else
                    {
                      v50 = -1;
                    }

                    if (v50 < 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  v42 += 2;
                  v43 += 2;
                }

                while (--v41);
              }

              v74 = v39 == v40;
              v36 = v39 < v40 ? -1 : 1;
              if (!v74)
              {
                goto LABEL_26;
              }

              v75 = *(v13 + 80);
              v76 = *(v18 + 80);
              v77 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 88) - v75) >> 2);
              v78 = 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 88) - v76) >> 2);
              if (v78 >= v77)
              {
                v79 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 88) - v75) >> 2);
              }

              else
              {
                v79 = 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 88) - v76) >> 2);
              }

              if (v79 >= 1)
              {
                v80 = (v75 + 4);
                v81 = (v76 + 4);
                do
                {
                  v82 = *(v80 - 1);
                  v83 = *(v81 - 1);
                  if (v83 == v82)
                  {
                    v82 = *v80;
                    v83 = *v81;
                    if (*v81 == *v80)
                    {
                      v82 = v80[1];
                      v83 = v81[1];
                    }
                  }

                  if (v82 < v83)
                  {
                    goto LABEL_129;
                  }

                  if (v83 < v82)
                  {
                    goto LABEL_27;
                  }

                  v80 += 3;
                  v81 += 3;
                }

                while (--v79);
              }

              v84 = v77 == v78;
              v36 = v77 < v78 ? -1 : 1;
              if (!v84)
              {
LABEL_26:
                if (v36 < 0)
                {
                  goto LABEL_129;
                }
              }
            }
          }

LABEL_27:
          v18 += 128;
          v13 += 128;
        }

        while (++v17 != v16);
      }

      if (v11 >= v15)
      {
        break;
      }

LABEL_20:
      sub_CBC1BC(v5, v12);
      v5 = v12;
      if (v12 == v96)
      {
        goto LABEL_130;
      }
    }

LABEL_129:
    v12 = v5;
LABEL_130:
    v85 = v12->n128_u64[0];
    if (v12->n128_u64[0])
    {
      v86 = v12->n128_u64[1];
      v9 = v12->n128_u64[0];
      if (v86 != v85)
      {
        do
        {
          v87 = *(v86 - 24);
          if (v87)
          {
            *(v86 - 16) = v87;
            operator delete(v87);
          }

          v88 = *(v86 - 48);
          if (v88)
          {
            *(v86 - 40) = v88;
            operator delete(v88);
          }

          v89 = *(v86 - 72);
          if (v89)
          {
            *(v86 - 64) = v89;
            operator delete(v89);
          }

          v86 -= 128;
        }

        while (v86 != v85);
        v9 = v12->n128_u64[0];
      }

      v12->n128_u64[1] = v85;
      operator delete(v9);
    }

    *v12 = v94;
    v12[1].n128_u64[0] = v10;
    if (++v8 != 8)
    {
LABEL_16:
      v5 = v7;
      v7 += 3;
      if (v7 == a2)
      {
        return 1;
      }

      continue;
    }

    return v7 + 3 == v95;
  }
}

uint64_t sub_CC1A60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (a1[1] - *a1) >> 7;
  v5 = (*(a2 + 8) - *a2) >> 7;
  if (v5 >= v4)
  {
    v6 = (a1[1] - *a1) >> 7;
  }

  else
  {
    v6 = (*(a2 + 8) - *a2) >> 7;
  }

  if (v6 < 1)
  {
LABEL_8:
    if (v4 < v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    while (1)
    {
      v15 = v2;
      v16 = v2 + 32;
      v7 = v2 + 80;
      v17 = v2 + 56;
      v18 = v2 + 80;
      v11 = v3;
      v12 = v3 + 4;
      v8 = v3 + 10;
      v13 = v3 + 7;
      v14 = v3 + 10;
      if ((sub_CC1B84(&v15, &v11) & 0x80) != 0)
      {
        return 255;
      }

      v15 = v8 - 10;
      v16 = (v8 - 6);
      v17 = (v8 - 3);
      v18 = v8;
      v11 = (v7 - 80);
      v12 = (v7 - 48);
      v13 = (v7 - 24);
      v14 = v7;
      if ((sub_CC1B84(&v15, &v11) & 0x80) != 0)
      {
        return 1;
      }

      v2 = v7 + 48;
      v3 = v8 + 6;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_CC1B84(uint64_t *a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = **a2;
  v4 = *(*a1 + 4);
  v5 = HIDWORD(v3);
  v16 = v4 == HIDWORD(v3);
  v6 = v4 < HIDWORD(v3);
  if (v16)
  {
    v6 = **a1 < v3;
  }

  if (v6)
  {
    return 255;
  }

  v8 = *v2;
  v9 = HIDWORD(*v2);
  v10 = v3 < *v2;
  if (v5 != v9)
  {
    v10 = v5 < v9;
  }

  if (v10)
  {
    return 1;
  }

  v11 = *(v2 + 2);
  v12 = *(*a2 + 2);
  if (v11 < v12)
  {
    return 255;
  }

  v13 = v8 < v3;
  if (v5 != v9)
  {
    v13 = v9 < v5;
  }

  if (!v13 && v12 < v11)
  {
    return 1;
  }

  v14 = *a1[1];
  v15 = *a2[1];
  v16 = v14 == v15;
  if (v14 < v15)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = 1;
  }

  if (!v16)
  {
    return v17;
  }

  v18 = a1[2];
  v19 = a2[2];
  v20 = *v18;
  v21 = *v19;
  v22 = (v18[1] - *v18) >> 1;
  v23 = (v19[1] - *v19) >> 1;
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 1)
  {
    v25 = (v20 + 1);
    v26 = (v21 + 1);
    do
    {
      v27 = *(v25 - 1);
      v28 = *(v26 - 1);
      if (v27 == v28)
      {
        v29 = *v25;
        v30 = *v26;
        if (v29 < v30)
        {
          return 255;
        }

        v31 = v30 == v29;
        if (v30 >= v29)
        {
          v32 = 1;
        }

        else
        {
          v32 = -1;
        }

        if (v31)
        {
          v32 = 0;
        }
      }

      else
      {
        if (v27 < v28)
        {
          return 255;
        }

        v32 = v28 >= v27 ? 1 : -1;
      }

      if (v32 < 0)
      {
        return 1;
      }

      v25 += 2;
      v26 += 2;
    }

    while (--v24);
  }

  v33 = v22 == v23;
  if (v22 < v23)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = 1;
  }

  if (!v33)
  {
    return v17;
  }

  v34 = a1[3];
  v35 = a2[3];
  v36 = *v34;
  v37 = *v35;
  v38 = 0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 2);
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v35[1] - *v35) >> 2);
  if (v39 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 1)
  {
    v41 = (v36 + 4);
    v42 = (v37 + 4);
    do
    {
      v43 = *(v41 - 1);
      v44 = *(v42 - 1);
      if (v44 == v43 && (v43 = *v41, v44 = *v42, *v42 == *v41))
      {
        v43 = v41[1];
        v44 = v42[1];
        if (v43 < v44)
        {
          return 255;
        }
      }

      else if (v43 < v44)
      {
        return 255;
      }

      if (v44 < v43)
      {
        return 1;
      }

      v41 += 3;
      v42 += 3;
    }

    while (--v40);
  }

  v45 = v38 == v39;
  if (v38 < v39)
  {
    v46 = -1;
  }

  else
  {
    v46 = 1;
  }

  if (v45)
  {
    return 0;
  }

  else
  {
    return v46;
  }
}

__n128 sub_CC1D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v8 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v9 = (a1 + 24 * v8);
      v10 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v10 < a3)
      {
        v11 = a4;
        v12 = sub_CC1A60((a1 + 24 * v8), (v9 + 3));
        a4 = v11;
        if (v12 < 0)
        {
          v9 += 3;
          v8 = v10;
        }
      }

      v13 = a4;
      if ((sub_CC1A60(v9, a4) & 0x80) == 0)
      {
        v32 = *v13;
        v33 = v13[1].n128_i64[0];
        v13->n128_u64[1] = 0;
        v13[1].n128_u64[0] = 0;
        v13->n128_u64[0] = 0;
        sub_CBC1BC(v13, v9);
        if (v6 >= v8)
        {
          v31 = v6;
          while (1)
          {
            v17 = 2 * v8;
            v8 = (2 * v8) | 1;
            v15 = (a1 + 24 * v8);
            v18 = v17 + 2;
            if (v17 + 2 < a3 && (sub_CC1A60((a1 + 24 * v8), (v15 + 3)) & 0x80u) != 0)
            {
              v15 += 3;
              v8 = v18;
            }

            v19 = *v15;
            v20 = v32.n128_u64[0];
            v21 = (v15[1] - *v15) >> 7;
            v22 = (v32.n128_u64[1] - v32.n128_u64[0]) >> 7;
            v23 = v22 >= v21 ? (v15[1] - *v15) >> 7 : (v32.n128_u64[1] - v32.n128_u64[0]) >> 7;
            if (v23 >= 1)
            {
              break;
            }

LABEL_21:
            if (v21 < v22)
            {
              goto LABEL_8;
            }

LABEL_22:
            sub_CBC1BC(v9, v15);
            v9 = v15;
            if (v31 < v8)
            {
              goto LABEL_25;
            }
          }

          while (1)
          {
            v38 = v19;
            v39 = v19 + 32;
            v24 = v19 + 80;
            v40 = v19 + 56;
            v41 = v19 + 80;
            v34 = v20;
            v35 = v20 + 4;
            v25 = v20 + 10;
            v36 = v20 + 7;
            v37 = v20 + 10;
            if (sub_CC1B84(&v38, &v34) < 0)
            {
              break;
            }

            v38 = v25 - 10;
            v39 = (v25 - 6);
            v40 = (v25 - 3);
            v41 = v25;
            v34 = (v24 - 80);
            v35 = (v24 - 48);
            v36 = (v24 - 24);
            v37 = v24;
            if (sub_CC1B84(&v38, &v34) < 0)
            {
              goto LABEL_22;
            }

            v19 = v24 + 48;
            v20 = v25 + 6;
            if (!--v23)
            {
              goto LABEL_21;
            }
          }

          v15 = v9;
LABEL_25:
          v16 = *v15;
          if (!*v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
LABEL_8:
          v15 = v9;
          v16 = *v9;
          if (!*v9)
          {
LABEL_37:
            result = v32;
            *v15 = v32;
            v15[2] = v33;
            return result;
          }
        }

        v26 = v15[1];
        v27 = v16;
        if (v26 != v16)
        {
          do
          {
            v28 = *(v26 - 3);
            if (v28)
            {
              *(v26 - 2) = v28;
              operator delete(v28);
            }

            v29 = *(v26 - 6);
            if (v29)
            {
              *(v26 - 5) = v29;
              operator delete(v29);
            }

            v30 = *(v26 - 9);
            if (v30)
            {
              *(v26 - 8) = v30;
              operator delete(v30);
            }

            v26 -= 128;
          }

          while (v26 != v16);
          v27 = *v15;
        }

        v15[1] = v16;
        operator delete(v27);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        goto LABEL_37;
      }
    }
  }

  return result;
}

void sub_CC2038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

void sub_CC204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

__n128 sub_CC2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = 0;
    *__p = *a1;
    v32 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = (a4 - 2) >> 1;
    v9 = a1;
    do
    {
      v10 = &v9[3 * v6];
      v11 = (v10 + 3);
      v12 = (2 * v6) | 1;
      v13 = 2 * v6 + 2;
      if (v13 < a4)
      {
        v14 = (v10 + 6);
        if ((sub_CC1A60(v10 + 3, (v10 + 6)) & 0x80u) != 0)
        {
          v11 = v14;
          v12 = v13;
        }
      }

      sub_CBC1BC(v9, v11);
      v9 = v11;
      v6 = v12;
    }

    while (v12 <= v7);
    v15 = (a2 - 24);
    if (v11 == a2 - 24)
    {
      v23 = *v11;
      if (*v11)
      {
        v24 = *(v11 + 8);
        v25 = *v11;
        if (v24 != v23)
        {
          do
          {
            v26 = *(v24 - 3);
            if (v26)
            {
              *(v24 - 2) = v26;
              operator delete(v26);
            }

            v27 = *(v24 - 6);
            if (v27)
            {
              *(v24 - 5) = v27;
              operator delete(v27);
            }

            v28 = *(v24 - 9);
            if (v28)
            {
              *(v24 - 8) = v28;
              operator delete(v28);
            }

            v24 -= 128;
          }

          while (v24 != v23);
          v25 = *v11;
        }

        *(v11 + 8) = v23;
        operator delete(v25);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *__p;
      *v11 = *__p;
      *(v11 + 16) = v32;
    }

    else
    {
      sub_CBC1BC(v11, a2 - 24);
      v16 = v11 + 24;
      v17 = *v15;
      if (*v15)
      {
        v18 = *(a2 - 16);
        v19 = *v15;
        if (v18 != v17)
        {
          do
          {
            v20 = *(v18 - 3);
            if (v20)
            {
              *(v18 - 2) = v20;
              operator delete(v20);
            }

            v21 = *(v18 - 6);
            if (v21)
            {
              *(v18 - 5) = v21;
              operator delete(v21);
            }

            v22 = *(v18 - 9);
            if (v22)
            {
              *(v18 - 8) = v22;
              operator delete(v22);
            }

            v18 -= 128;
          }

          while (v18 != v17);
          v19 = *v15;
        }

        *(a2 - 16) = v17;
        operator delete(v19);
        *v15 = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = *__p;
      *(a2 - 8) = v32;
      sub_CC2314(a1, v16, a3, 0xAAAAAAAAAAAAAAABLL * ((v16 - a1) >> 3));
    }
  }

  return result;
}

void sub_CC22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

void sub_CC2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

void sub_CC2314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 24 * (v4 >> 1));
    v9 = a2 - 24;
    if ((sub_CC1A60(v8, a2 - 24) & 0x80) != 0)
    {
      v29 = *(a2 - 24);
      v28 = *(a2 - 8);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      sub_CBC1BC(v9, v8);
      if (v4 >= 2)
      {
        v14 = (*(&v29 + 1) - v29) >> 7;
        do
        {
          v15 = v7 - 1;
          v7 = (v7 - 1) >> 1;
          v10 = (a1 + 24 * v7);
          v16 = *v10;
          v17 = v10[1] - *v10;
          v18 = v17 >> 7;
          if (v14 >= v17 >> 7)
          {
            v19 = v17 >> 7;
          }

          else
          {
            v19 = (*(&v29 + 1) - v29) >> 7;
          }

          if (v19 < 1)
          {
LABEL_15:
            if (v18 >= v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v20 = v29;
            while (1)
            {
              v34 = v16;
              v35 = v16 + 32;
              v21 = v16 + 80;
              v36 = v16 + 56;
              v37 = v16 + 80;
              v30 = v20;
              v31 = v20 + 4;
              v22 = v20 + 10;
              v32 = v20 + 7;
              v33 = v20 + 10;
              if (sub_CC1B84(&v34, &v30) < 0)
              {
                break;
              }

              v34 = v22 - 10;
              v35 = (v22 - 6);
              v36 = (v22 - 3);
              v37 = v22;
              v30 = (v21 - 80);
              v31 = (v21 - 48);
              v32 = (v21 - 24);
              v33 = v21;
              if (sub_CC1B84(&v34, &v30) < 0)
              {
                v10 = v8;
                goto LABEL_19;
              }

              v16 = v21 + 48;
              v20 = v22 + 6;
              if (!--v19)
              {
                goto LABEL_15;
              }
            }
          }

          sub_CBC1BC(v8, a1 + 24 * v7);
          v8 = (a1 + 24 * v7);
        }

        while (v15 > 1);
LABEL_19:
        v11 = *v10;
        if (!*v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
LABEL_4:
        v10 = v8;
        v11 = *v8;
        if (!*v8)
        {
LABEL_5:
          v12 = v29;
          v13 = v28;
LABEL_31:
          *v10 = v12;
          v10[2] = v13;
          return;
        }
      }

      v23 = v10[1];
      v24 = v11;
      if (v23 != v11)
      {
        do
        {
          v25 = *(v23 - 3);
          if (v25)
          {
            *(v23 - 2) = v25;
            operator delete(v25);
          }

          v26 = *(v23 - 6);
          if (v26)
          {
            *(v23 - 5) = v26;
            operator delete(v26);
          }

          v27 = *(v23 - 9);
          if (v27)
          {
            *(v23 - 8) = v27;
            operator delete(v27);
          }

          v23 -= 128;
        }

        while (v23 != v11);
        v24 = *v10;
      }

      v10[1] = v11;
      operator delete(v24);
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v12 = v29;
      v13 = v28;
      goto LABEL_31;
    }
  }
}

void sub_CC2548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CC255C(void *a1, uint64_t *a2)
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

void sub_CC28D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CAFB4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC28E4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    operator new();
  }

  if (result == 1)
  {
    a2[23] = 18;
    strcpy(a2, "blocking_incidents");
  }

  else if (result)
  {
    a2[23] = 7;
    strcpy(a2, "unknown");
  }

  else
  {
    a2[23] = 11;
    strcpy(a2, "static_only");
  }

  return result;
}

uint64_t sub_CC29F4(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 8;
  strcpy(__p, "fill_in_");
  sub_CC9264(a1 + 40, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}