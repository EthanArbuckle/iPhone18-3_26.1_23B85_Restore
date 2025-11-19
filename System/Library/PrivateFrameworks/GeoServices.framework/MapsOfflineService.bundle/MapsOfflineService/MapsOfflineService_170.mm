void sub_A78120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  sub_1959728(&STACK[0x578]);
  sub_A785D0(&a63);
  sub_A785D0(&STACK[0x200]);
  sub_A7847C(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_A7847C(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 200);
  sub_A3212C(&v6);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return a1;
}

uint64_t sub_A7850C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_A320A4(a1, i))
    {
      i -= 296;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A78570(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      *(a1 + 128) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      *(a1 + 72) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void **sub_A785D0(void **a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 168;
        v7 = *(v4 - 2);
        if (v7 != -1)
        {
          (off_2670B30[v7])(&v9, v4 - 168);
        }

        *(v4 - 2) = -1;
        v4 -= 168;
      }

      while (v6 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_A78688(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 168 * a2;
}

void sub_A787C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_A788A4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v20 = *a1;
    v21 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1;
    if (v21 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    v22 = 0x8E38E38E38E38E39 * ((v5 - v20) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x1C71C71C71C71C7)
    {
      v23 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v23 = v21;
    }

    v39 = a1;
    if (v23)
    {
      if (v23 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v36 = 0;
    v37 = 8 * ((a2 - v20) >> 3);
    v38 = v37;
    sub_A7C4BC(&v36, a3);
    v27 = v37;
    sub_A7C17C(a1, v3, *(a1 + 8), v38);
    v28 = *a1;
    v29 = v37;
    *&v38 = v38 + *(a1 + 8) - v3;
    *(a1 + 8) = v3;
    v30 = v28 + v29 - v3;
    sub_A7C17C(a1, v28, v3, v30);
    v31 = *a1;
    *a1 = v30;
    v32 = *(a1 + 16);
    *(a1 + 8) = v38;
    *&v38 = v31;
    *(&v38 + 1) = v32;
    v36 = v31;
    v37 = v31;
    sub_A7C084(&v36);
    return v27;
  }

  else if (a2 == v6)
  {
    sub_A7C79C(*(a1 + 8), a3);
    *(a1 + 8) = v6 + 72;
  }

  else
  {
    v7 = (v6 - 72);
    v8 = *(a1 + 8);
    if (v6 >= 0x48)
    {
      v8 = v6 + 72;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = *v7;
      *(v6 + 16) = *(v6 - 56);
      *(v6 - 64) = 0;
      *(v6 - 56) = 0;
      *v7 = 0;
      *(v6 + 24) = *(v6 - 48);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(v6 + 32) = *(v6 - 40);
      *(v6 + 48) = *(v6 - 24);
      *(v6 - 40) = 0;
      *(v6 - 32) = 0;
      *(v6 - 24) = 0;
      v9 = *(v6 - 16);
      *(v6 + 63) = *(v6 - 9);
      *(v6 + 56) = v9;
    }

    *(a1 + 8) = v8;
    if (v6 != a2 + 72)
    {
      v35 = a3;
      v10 = v6;
      do
      {
        v13 = *(v10 - 72);
        v10 -= 72;
        v12 = v13;
        if (v13)
        {
          v14 = *(v6 - 64);
          v15 = v12;
          if (v14 != v12)
          {
            do
            {
              v16 = v14 - 168;
              v17 = *(v14 - 2);
              if (v17 != -1)
              {
                (off_2670B30[v17])(&v36, v14 - 168);
              }

              *(v14 - 2) = -1;
              v14 -= 168;
            }

            while (v16 != v12);
            v15 = *v10;
          }

          *(v6 - 64) = v12;
          operator delete(v15);
          *v10 = 0;
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
        }

        v18 = v7 - 9;
        *(v6 - 72) = *(v7 - 72);
        *(v6 - 56) = *(v7 - 7);
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        v19 = *(v6 - 40);
        *(v6 - 48) = *(v7 - 48);
        if (v19)
        {
          *(v6 - 32) = v19;
          operator delete(v19);
          *(v6 - 40) = 0;
          *(v6 - 32) = 0;
          *(v6 - 24) = 0;
        }

        *(v6 - 40) = *(v7 - 40);
        *(v6 - 24) = *(v7 - 3);
        *(v7 - 5) = 0;
        *(v7 - 4) = 0;
        *(v7 - 3) = 0;
        v11 = *(v7 - 2);
        *(v6 - 9) = *(v7 - 9);
        *(v6 - 16) = v11;
        v6 = v10;
        v7 = (v7 - 72);
      }

      while (v18 != v3);
      v8 = *(a1 + 8);
      a3 = v35;
    }

    v24 = v8 <= a3 || v3 > a3;
    v25 = 72;
    if (v24)
    {
      v25 = 0;
    }

    v26 = a3 + v25;
    if (v3 == a3 + v25)
    {
      *(v3 + 24) = *(v26 + 24);
    }

    else
    {
      sub_A34348(v3, *v26, *(v26 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(v26 + 8) - *v26) >> 3));
      *(v3 + 24) = *(v26 + 24);
      sub_956400((v3 + 32), *(v26 + 32), *(v26 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 40) - *(v26 + 32)) >> 3));
    }

    v33 = *(v26 + 56);
    *(v3 + 63) = *(v26 + 63);
    *(v3 + 56) = v33;
  }

  return v3;
}

void sub_A78C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A7C084(va);
  _Unwind_Resume(a1);
}

void **sub_A78C90(void **a1)
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
        v5 = v3 - 168;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670B30[v6])(&v8, v3 - 168);
        }

        *(v3 - 2) = -1;
        v3 -= 168;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A78D38(void *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void **a4@<X8>)
{
  v5 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v5 + 4 + *(v10 + 4 * v5 + 4));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v12 = (v11 - *v11);
  if (*v12 < 0x11u)
  {
    v14 = *(v11 + v12[2] + *(v11 + v12[2]));
    v15 = v14 * a3;
    v16 = v14 + v14 * a3;
    if (v14 * a3 <= v16)
    {
      v17 = v14 + v14 * a3;
    }

    else
    {
      v17 = v14 * a3;
    }

    if (v15 >= v16)
    {
      return;
    }
  }

  else
  {
    if (v12[8])
    {
      v13 = *(v11 + v12[8]);
    }

    else
    {
      v13 = 0;
    }

    v18 = *(v11 + v12[2] + *(v11 + v12[2]));
    v15 = v13 + v18 * a3;
    v19 = v12[8];
    if (v19)
    {
      v20 = v18 + v18 * a3 + *(v11 + v19);
      if (v15 <= v20)
      {
        v17 = v20;
      }

      else
      {
        v17 = v13 + v18 * a3;
      }

      if (v15 >= v20)
      {
        return;
      }
    }

    else
    {
      v21 = v18 + v18 * a3;
      if (v15 <= v21)
      {
        v17 = v18 + v18 * a3;
      }

      else
      {
        v17 = v13 + v18 * a3;
      }

      if (v15 >= v21)
      {
        return;
      }
    }
  }

  v22 = 0;
  do
  {
    while (1)
    {
      v23 = (v8 - *v8);
      if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
      {
        v25 = (v8 + v24 + *(v8 + v24));
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_A57320(v25, v15);
      v27 = a4[2];
      if (v22 >= v27)
      {
        break;
      }

      *v22 = 0xFFFFFFFFLL;
      *(v22 + 8) = 0;
      if (v26)
      {
        *v22 = __ROR8__(*v26, 32);
        *(v22 + 8) = *(v26 + 2);
      }

      v22 += 12;
      a4[1] = v22;
      if (v17 == ++v15)
      {
        return;
      }
    }

    v28 = *a4;
    v29 = v22 - *a4;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2) + 1;
    if (v30 > 0x1555555555555555)
    {
      sub_1794();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 2);
    if (2 * v31 > v30)
    {
      v30 = 2 * v31;
    }

    if (v31 >= 0xAAAAAAAAAAAAAAALL)
    {
      v32 = 0x1555555555555555;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (v32 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v34 = 4 * (v29 >> 2);
    *v34 = 0xFFFFFFFFLL;
    *(v34 + 8) = 0;
    if (v26)
    {
      *v34 = __ROR8__(*v26, 32);
      dword_8[v29 >> 2] = *(v26 + 2);
    }

    v22 = v34 + 12;
    v33 = v34 - v29;
    memcpy((v34 - v29), v28, v29);
    *a4 = v33;
    a4[1] = v22;
    a4[2] = 0;
    if (v28)
    {
      operator delete(v28);
    }

    a4[1] = v22;
    ++v15;
  }

  while (v17 != v15);
}

void sub_A79034(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7905C(uint64_t a1, void *a2, unint64_t a3, char a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a1 + 8;
  v9 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 56;
  *(a1 + 88) = a4;
  *(a1 + 89) = a5;
  *(a1 + 90) = a6;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    return a1;
  }

  v10 = sub_A79340((a2 + 3), a3, 0, "stop patterns at stop");
  v11 = (v10 - *v10);
  if (*v11 >= 5u)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = (v10 + v12 + *(v10 + v12));
      v14 = *v13;
      if (v14)
      {
        v15 = v13 + 1;
        *(a1 + 8) = v15;
        *(a1 + 16) = &v15[4 * v14];
      }
    }
  }

  if ((*(a1 + 89) & 1) == 0)
  {
    v16 = a2[515];
    if (sub_68312C(v16 + 3896))
    {
      if (*(v16 + 3944))
      {
        v17 = *(a2[515] + 3944);
        v42 = a3;
        if (sub_A794D0((v17 + 88), &v42))
        {
          v18 = a2[493];
          v42 = a3;
          v19 = sub_A794D0((v18 + 88), &v42);
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = (v19[7] + *v19[7]);
          v21 = *v20;
          v22 = *(v20 - v21 + 4);
          if (*(v20 - v21 + 4))
          {
            v21 = *(v20 + v22);
            v23 = v20 + v22 + v21;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v21 = v21;
          }

          v24 = v23 + 4;
          *(a1 + 24) = v24;
          *(a1 + 32) = &v24[16 * *(v20 + v22 + v21)];
        }
      }
    }
  }

  if (*(a1 + 90))
  {
    goto LABEL_26;
  }

  v25 = a2[515];
  if (!sub_4C2B90(v25 + 3896))
  {
    goto LABEL_26;
  }

  if (!*(v25 + 3960))
  {
    goto LABEL_26;
  }

  v26 = *(a2[515] + 3976);
  if (!v26)
  {
    goto LABEL_26;
  }

  v42 = a3;
  if (!sub_A794D0((v26 + 88), &v42))
  {
    goto LABEL_26;
  }

  v27 = a2[497];
  v42 = a3;
  v28 = sub_A794D0((v27 + 88), &v42);
  if (!v28)
  {
LABEL_41:
    sub_49EC("unordered_map::at: key not found");
  }

  v29 = (v28[7] + *v28[7]);
  v30 = *v29;
  v31 = *(v29 - v30 + 4);
  if (*(v29 - v30 + 4))
  {
    v30 = *(v29 + v31);
    v32 = v29 + v31 + v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = v30;
  }

  v33 = v32 + 4;
  *(a1 + 40) = v33;
  *(a1 + 48) = &v33[16 * *(v29 + v31 + v30)];
LABEL_26:
  v35 = *(a1 + 56);
  v34 = *(a1 + 64);
  if (v35 >= v34)
  {
LABEL_29:
    if (*(a1 + 72) < *(a1 + 80))
    {
      goto LABEL_35;
    }
  }

  else
  {
    while (1)
    {
      v36 = v35[1];
      if (*v35 != v36)
      {
        break;
      }

      v35 += 2;
      *v9 = v35;
      if (v35 >= v34)
      {
        goto LABEL_29;
      }
    }

    *(a1 + 72) = *v35;
    *(a1 + 80) = v36;
    if (*(a1 + 72) < *(a1 + 80))
    {
LABEL_35:
      while (sub_A795E8(a1))
      {
        v37 = *(a1 + 80);
        v38 = *(a1 + 72) + 16;
        *(a1 + 72) = v38;
        if (v38 == v37)
        {
          v39 = *(a1 + 64);
          v40 = (*(a1 + 56) + 16);
          *(a1 + 56) = v40;
          if (v40 >= v39)
          {
            return a1;
          }

          while (1)
          {
            v38 = *v40;
            v37 = v40[1];
            if (*v40 != v37)
            {
              break;
            }

            v40 += 2;
            *v9 = v40;
            if (v40 >= v39)
            {
              return a1;
            }
          }

          *(a1 + 72) = v38;
          *(a1 + 80) = v37;
        }

        if (v38 >= v37)
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_A79340(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 9u)
  {
    v9 = *(v8 + 4);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
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
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
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

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A794A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A794D0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v5 == v12)
        {
          if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
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
      v14 = result[1];
      if (v5 == v14)
      {
        if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
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

BOOL sub_A795E8(void *a1)
{
  if ((*(a1 + 89) & 1) == 0)
  {
    v2 = *a1;
    v3 = *a1[9];
    v4 = *(*a1 + 4136);
    if (sub_68312C(v4 + 3896))
    {
      if (*(v4 + 3944))
      {
        v5 = __ROR8__(v3, 32);
        if (!sub_A576FC((v2 + 4136), SHIDWORD(v5)))
        {
          v6 = *(*(v2 + 4136) + 3944);
          v8 = v5;
          if (sub_A794D0(v6, &v8))
          {
            return 1;
          }
        }
      }
    }
  }

  if (a1[11])
  {
    return 0;
  }

  if (sub_C9E544(*a1 + 3896) < *(a1[9] + 14))
  {
    return 1;
  }

  return (a1[11] & 1) == 0 && (sub_585D8((*a1 + 3896)) & 1) == 0 && (*(a1[9] + 15) & 1) != 0;
}

uint64_t sub_A79708(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = a6;
  v11 = sub_A5706C((a2 + 4136), a3);
  *(a1 + 16) = v11;
  v12 = &v11[-*v11];
  if (*v12 >= 5u && (v13 = *(v12 + 2)) != 0)
  {
    v14 = &v11[v13 + *&v11[v13]];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A57CB8(v14, a3);
  v16 = (v15 - *v15);
  if (*v16 < 9u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16[4];
    if (v17)
    {
      v17 += v15 + *(v15 + v17);
    }
  }

  v18 = v17 + 4;
  *(a1 + 24) = v17 + 4;
  *(a1 + 32) = v17 + 4 + 16 * a4;
  v19 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 4));
  v20 = a3;
  v21 = (&v19[v20 + 1] + *v19 + *(&v19[v20 + 1] + *v19));
  v22 = *v21;
  v23 = v21 - v22;
  v24 = *(v21 - v22);
  v25 = (v21 + *(v21 - v22 + 8));
  *(a1 + 40) = v18 + 16 * *(v25 + *v25);
  if (v24 < 0x15)
  {
    *(a1 + 48) = 0;
    v27 = *(v23 + 3);
    if (v27)
    {
LABEL_13:
      v28 = v21 + v27 + *(v21 + v27);
      LODWORD(v22) = *(v21 + v27);
      goto LABEL_16;
    }
  }

  else
  {
    v26 = *(v23 + 10);
    if (*(v23 + 10))
    {
      v26 += v21 + *(v21 + v26) + 4;
    }

    *(a1 + 48) = v26;
    v27 = *(v23 + 3);
    if (v27)
    {
      goto LABEL_13;
    }
  }

  v28 = 0;
LABEL_16:
  v29 = v28 + 4;
  *(a1 + 56) = v29;
  *(a1 + 64) = v29;
  *(a1 + 72) = &v29[12 * *(v21 + v27 + v22)];
  if (a5)
  {
    goto LABEL_23;
  }

  v30 = *(a2 + 4136);
  if (!sub_4C2B90(v30 + 3896))
  {
    goto LABEL_23;
  }

  v31 = *(v30 + 3960);
  if (!v31)
  {
    goto LABEL_24;
  }

  v31 = *(*(a2 + 4136) + 3976);
  if (!v31)
  {
    goto LABEL_24;
  }

  v51 = a3;
  if (!sub_A794D0(v31 + 26, &v51))
  {
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  v32 = *(*(a2 + 4136) + 3976);
  v51 = a3;
  v33 = sub_A794D0((v32 + 208), &v51);
  if (!v33)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v31 = v33 + 3;
LABEL_24:
  *(a1 + 80) = v31;
  *(a1 + 88) = a3;
  v34 = *(a1 + 16);
  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = v34 + v36 + *(v34 + v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = &v37[v20 * 4 + 4 + *&v37[v20 * 4 + 4]];
  v39 = &v38[-*v38];
  if (*v39 <= 0x12u)
  {
    v41 = *(a1 + 56);
    goto LABEL_34;
  }

  v40 = *(v39 + 9);
  v41 = *(a1 + 56);
  if (!v40)
  {
LABEL_34:
    *(a1 + 96) = 0;
    *(a1 + 100) = 0;
    *(a1 + 104) = 0;
    goto LABEL_35;
  }

  v42 = *&v38[v40];
  *(a1 + 96) = v42 & 1;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  if ((v42 & 1) != 0 && -1431655765 * ((*(a1 + 72) - v41) >> 2))
  {
    sub_A79A50(a1);
    return a1;
  }

LABEL_35:
  for (i = *(a1 + 64); i >= v41; *(a1 + 64) = i)
  {
    if (i >= *(a1 + 72))
    {
      break;
    }

    v45 = *(a1 + 80);
    if (!v45)
    {
      break;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((i - v41) >> 2);
    v47 = sub_585D8((*a1 + 3896));
    v48 = *v45;
    if (v46 < v48)
    {
      break;
    }

    v49 = *(v45 + 1);
    if (*(v45 + 2) + v48 - v49 <= v46)
    {
      break;
    }

    v50 = *(v49 + (v46 - v48));
    if ((v50 & 1) == 0)
    {
      break;
    }

    if (((v50 >> 1) & 1 & ~v47) != 0)
    {
      break;
    }

    v41 = *(a1 + 56);
    i = *(a1 + 64) + 12;
  }

  return a1;
}

uint64_t sub_A79A50(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  *(result + 64) = v2;
  v3 = v2;
  do
  {
    if (v3 >= *(v1 + 72))
    {
      break;
    }

    v4 = *(v1 + 80);
    if (!v4)
    {
      break;
    }

    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 2);
    result = sub_585D8((*v1 + 3896));
    v6 = *v4;
    if (v5 < v6)
    {
      break;
    }

    v7 = *(v4 + 1);
    if (*(v4 + 2) + v6 - v7 <= v5)
    {
      break;
    }

    v8 = *(v7 + (v5 - v6));
    if ((v8 & 1) == 0)
    {
      break;
    }

    if (((v8 >> 1) & 1 & ~result) != 0)
    {
      break;
    }

    v2 = *(v1 + 56);
    v3 = *(v1 + 64) + 12;
    *(v1 + 64) = v3;
  }

  while (v3 >= v2);
  v9 = *(v1 + 64);
  if (v9 >= *(v1 + 56) && v9 < *(v1 + 72) && *(v1 + 96) == 1)
  {
    *(v1 + 100) = 0;
    v10 = (*(v1 + 16) + *(*(v1 + 16) - **(v1 + 16) + 8));
    *(v1 + 104) = *(&v10[3 * (v9[2] >> 8) + 2] + *v10) + *v9;
  }

  return result;
}

void sub_A79B68(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a1[3];
  a1[4] = v8;
  v58 = v7;
  if (*(*a1 + 16) != 1 || (a1[1] & 1) != 0 || v8 >= a1[5])
  {
    v9 = v8;
    if (v8 < a1[5])
    {
LABEL_22:
      v15 = 0;
      v57 = a3;
      do
      {
        v16 = *(a3 + 8);
        if (!v16)
        {
          goto LABEL_64;
        }

        v17 = __ROR8__(*v8, 32);
        v18 = *a3;
        v19 = 8 * v16;
        while (v17 != *v18)
        {
          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_64;
          }
        }

        if ((v8[15] & 1) == 0)
        {
LABEL_64:
          v23 = v15;
          v39 = *(a2 + 8);
          if (!v39)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }

        v20 = (v8 - v9) >> 4;
        v21 = a1[6];
        if (v21)
        {
          v22 = *(v21 + 4 * v20);
          v23 = 0;
          if (!v15)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0;
          if (!v15)
          {
            goto LABEL_61;
          }
        }

        v24 = -1;
        for (i = 0; i != v15; i += 16)
        {
          if ((*(i + 8) & v22) == 0)
          {
            v24 = *i;
            *i = -1;
          }
        }

        if (v24 != -1)
        {
          v27 = v7[1];
          v26 = v7[2];
          if (v27 >= v26)
          {
            v29 = *v7;
            v30 = v27 - *v7;
            v31 = v30 >> 3;
            v32 = (v30 >> 3) + 1;
            if (v32 >> 61)
            {
              sub_1794();
            }

            v33 = v26 - v29;
            if (v33 >> 2 > v32)
            {
              v32 = v33 >> 2;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              if (!(v34 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v35 = (8 * v31);
            *v35 = v24;
            v35[1] = v20;
            v28 = 8 * v31 + 8;
            memcpy(0, v29, v30);
            v7 = v58;
            *v58 = 0;
            v58[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v27 = v24;
            v27[1] = v20;
            v28 = (v27 + 2);
          }

          v7[1] = v28;
        }

        a3 = v57;
        v23 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *v36;
          v36 += 4;
          if (v37 == -1)
          {
            break;
          }

          v23 = v36;
          if (v36 == v15)
          {
            goto LABEL_64;
          }
        }

        if (v36 != v15)
        {
          v38 = v23 + 4;
          do
          {
            if (*v38 != -1)
            {
              *v23 = *v38;
              *(v23 + 1) = *(v38 + 1);
              v23 += 4;
            }

            v38 += 4;
          }

          while (v38 != v15);
        }

LABEL_61:
        if (v23 == v15)
        {
          goto LABEL_64;
        }

        v39 = *(a2 + 8);
        if (!v39)
        {
          goto LABEL_70;
        }

LABEL_65:
        v40 = a1[4];
        v41 = __ROR8__(*v40, 32);
        v42 = *a2;
        v43 = 8 * v39;
        while (v41 != *v42)
        {
          ++v42;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_70;
          }
        }

        if ((*(v40 + 15) & 2) != 0)
        {
          v49 = (v40 - a1[3]) >> 4;
          v50 = a1[6];
          if (v50)
          {
            v51 = *(v50 + 4 * v49);
            v52 = 0;
            if (!v23)
            {
              goto LABEL_101;
            }

LABEL_95:
            v53 = 16;
            while ((v51 & ~*(v53 - 8)) != 0)
            {
              v54 = v53 == v23;
              v53 += 16;
              if (v54)
              {
                goto LABEL_107;
              }
            }

            v52 = v53 - 16;
            if ((v53 - 16) != v23)
            {
              while (v53 != v23)
              {
                if ((v51 & ~*(v53 + 8)) != 0)
                {
                  *v52 = *v53;
                  *(v52 + 8) = *(v53 + 8);
                  v52 += 16;
                }

                v53 += 16;
              }
            }
          }

          else
          {
            v51 = 0;
            v52 = 0;
            if (v23)
            {
              goto LABEL_95;
            }
          }

LABEL_101:
          if (v52 == v23)
          {
LABEL_107:
            v52 = v23;
          }

          v55 = v52 >> 4;
          if (((v52 >> 4) + 1) >> 60)
          {
            sub_1794();
          }

          if (v52 >> 4 != -1)
          {
            if (!(((v52 >> 4) + 1) >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v56 = 16 * v55;
          *v56 = v49;
          *(v56 + 8) = v51;
          v15 = 16 * v55 + 16;
          memcpy(0, 0, v52);
          v7 = v58;
          goto LABEL_71;
        }

LABEL_70:
        v15 = v23;
LABEL_71:
        v9 = a1[3];
        v8 = (a1[4] + 16);
        a1[4] = v8;
        if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v8 >= v9 && v8 < a1[5])
        {
          do
          {
            v45 = __ROR8__(*v8, 32);
            if (HIDWORD(v45) == 1 && (v45 + 3) < 2)
            {
              break;
            }

            v47 = sub_2D5204(**(*a1 + 4120));
            v9 = a1[3];
            v8 = a1[4];
            if (v47)
            {
              break;
            }

            v8 += 16;
            a1[4] = v8;
          }

          while (v8 >= v9 && v8 < a1[5]);
        }
      }

      while (v8 >= v9 && v8 < a1[5]);
    }
  }

  else
  {
    v9 = v8;
    do
    {
      v10 = __ROR8__(*v8, 32);
      if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
      {
        break;
      }

      v12 = sub_2D5204(**(*a1 + 4120));
      v9 = a1[3];
      v8 = a1[4];
      if (v12)
      {
        break;
      }

      v8 += 16;
      a1[4] = v8;
    }

    while (v8 >= v9 && v8 < a1[5]);
    if (v8 >= v9 && v8 < a1[5])
    {
      goto LABEL_22;
    }
  }
}

void sub_A7A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    v13 = *a11;
    if (!*a11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a11;
    if (!*a11)
    {
      goto LABEL_3;
    }
  }

  *(a11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL sub_A7A1E8(uint64_t a1, uint64_t a2, signed int a3, unsigned int a4)
{
  v4 = -1431655765 * ((*(a2 + 72) - *(a2 + 56)) >> 2);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a2 + 88);
  v9 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  v10 = 4 * v8;
  while (1)
  {
    v11 = sub_A5706C((a1 + 4136), v8);
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

    v14 = (v13 + v10 + 4 + *(v13 + v10 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_A7AC40(v17, v7);
    v19 = sub_A7AA48((a1 + 4136), v8, v7, *(v18 + 8) - 1);
    v20 = sub_A5706C((a1 + 4136), v8);
    v21 = v20;
    v22 = &v20[-*v20];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v20[*&v20[v23]];
      }
    }

    v24 = (v23 + v10 + 4 + *(v23 + v10 + 4));
    v25 = (v24 - *v24);
    if (*v25 >= 7u && (v26 = v25[3]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_A7AC40(v27, v7);
    v29 = (v21 - *v21);
    if (*v29 < 7u)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29[3];
      if (v30)
      {
        v30 = (v30 + v21 + *(v30 + v21));
      }
    }

    if (*(sub_A7AEE0(v30, *(v28 + 4) + v9) + 4) + v19 >= a3)
    {
      break;
    }

    if (++v7 == v4)
    {
      return 0;
    }
  }

  if (v7 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v31 = *(a2 + 88);
  v33 = *(a2 + 24);
  v32 = *(a2 + 32);
  v34 = sub_A5706C((a1 + 4136), v31);
  v35 = &v34[-*v34];
  if (*v35 < 5u)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v35 + 2);
    if (v36)
    {
      v36 += &v34[*&v34[v36]];
    }
  }

  v37 = 4 * v31;
  v38 = (v36 + v37 + 4 + *(v36 + v37 + 4));
  v39 = (v38 - *v38);
  if (*v39 >= 7u && (v40 = v39[3]) != 0)
  {
    v41 = (v38 + v40 + *(v38 + v40));
  }

  else
  {
    v41 = 0;
  }

  v42 = v32 - v33;
  v43 = *(sub_A7AC40(v41, v7) + 8);
  v44 = sub_A5706C((a1 + 4136), v31);
  v45 = v44;
  v46 = &v44[-*v44];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v44[*&v44[v47]];
    }
  }

  v48 = v42 >> 4;
  v49 = (v47 + v37 + 4 + *(v47 + v37 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = sub_A7AC40(v52, v7);
  v54 = (v45 - *v45);
  if (*v54 < 7u)
  {
    v56 = sub_A7AEE0(0, *(v53 + 4) + v48);
    if (!v43)
    {
LABEL_52:
      LODWORD(v57) = -1;
      goto LABEL_53;
    }
  }

  else
  {
    v55 = v54[3];
    if (v55)
    {
      v55 = (v55 + v45 + *(v55 + v45));
    }

    v56 = sub_A7AEE0(v55, *(v53 + 4) + v48);
    if (!v43)
    {
      goto LABEL_52;
    }
  }

  v57 = 0;
  v58 = *(v56 + 4);
  while ((sub_A7AA48((a1 + 4136), v31, v7, v57) + v58) < a3)
  {
    if (v43 == ++v57)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v59 = *(a2 + 88);
  v60 = *(a2 + 24);
  v77 = *(a2 + 32);
  v61 = sub_A5706C((a1 + 4136), v59);
  v62 = v61;
  v63 = &v61[-*v61];
  if (*v63 < 5u)
  {
    v64 = 0;
  }

  else
  {
    v64 = *(v63 + 2);
    if (v64)
    {
      v64 += &v61[*&v61[v64]];
    }
  }

  v65 = (v64 + 4 * v59 + 4 + *(v64 + 4 * v59 + 4));
  v66 = (v65 - *v65);
  if (*v66 >= 7u && (v67 = v66[3]) != 0)
  {
    v68 = (v65 + v67 + *(v65 + v67));
  }

  else
  {
    v68 = 0;
  }

  v69 = sub_A7AC40(v68, v7);
  v70 = (v62 - *v62);
  if (*v70 < 7u)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70[3];
    if (v71)
    {
      v71 = (v71 + v62 + *(v71 + v62));
    }
  }

  v72 = *(sub_A7AEE0(v71, *(v69 + 4) + ((v77 - v60) >> 4)) + 4);
  v73 = sub_A7AB44((a1 + 4136), v59, v7, v57);
  *(a2 + 64) = *(a2 + 56) + 12 * v7;
  if (*(a2 + 96) == 1)
  {
    v74 = a3 - v72;
    if (a3 - v72 <= v73)
    {
      v74 = v73;
    }

    *(a2 + 100) = v57;
    *(a2 + 104) = v74;
  }

  sub_A7B02C(a2, a4);
  v75 = *(a2 + 64);
  if (v75 < *(a2 + 56))
  {
    return 0;
  }

  return v75 < *(a2 + 72);
}

uint64_t sub_A7A710(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -1431655765 * ((v6 - v5) >> 2);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 32);
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (v8 < 0x41)
  {
    v24 = *(a1 + 64);
    if (v24 >= v5 && v24 < v6)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_A79A50(a1);
    goto LABEL_25;
  }

  sub_A79A50(a1);
  if (*(a1 + 96))
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 64);
  }

  v10 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v11 = *(&v10[2 * *(*(a1 + 64) + 4) + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v10) + *v9;
  sub_A7B42C(a1);
  v12 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v13 = (a1 + 104);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  if (a2 <= v11)
  {
    goto LABEL_24;
  }

  v14 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v15 = *(&v14[2 * *(*(a1 + 64) + 4) + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v14) + *v13;
  if (v15 <= a2)
  {
    sub_A7B42C(a1);
    v26 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v25 >= v26)
    {
LABEL_26:
      while (v25 < *(a1 + 72))
      {
        if (*(a1 + 96))
        {
          v27 = (a1 + 104);
        }

        else
        {
          v27 = v25;
        }

        v28 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
        if ((*(&v28[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) < a2)
        {
          goto LABEL_33;
        }

        sub_A7B558(a1, 0);
        v26 = *(a1 + 56);
        v25 = *(a1 + 64);
        if (v25 < v26)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_32;
  }

  v16 = (a2 - v11) / (v15 - v11);
  v17 = *(a1 + 56);
  v18 = (v16 * (-1431655765 * ((*(a1 + 72) - v17) >> 2) - 1));
  *(a1 + 64) = v17 + 12 * v18;
  if (v12)
  {
    *(a1 + 100) = -NAN;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = sub_585D8((*a1 + 3896));
    v21 = *v19;
    if (v21 <= v18)
    {
      v22 = *(v19 + 1);
      if (*(v19 + 2) + v21 - v22 > v18)
      {
        v23 = *(v22 + (v18 - v21));
        if ((v23 & 1) != 0 && ((v23 >> 1) & 1 & ~v20) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 >= v26)
  {
    goto LABEL_26;
  }

LABEL_32:
  sub_A7B02C(a1, 0);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
LABEL_33:
  if (v25 >= v26)
  {
    while (v25 < *(a1 + 72))
    {
      if (*(a1 + 96))
      {
        v29 = (a1 + 104);
      }

      else
      {
        v29 = v25;
      }

      v30 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
      if ((*(&v30[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) >= a2)
      {
        return 1;
      }

      sub_A7B02C(a1, 0);
      v25 = *(a1 + 64);
      if (v25 < *(a1 + 56))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_A7AA48(void *a1, unint64_t a2, unsigned int a3, int a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, a3);
  v17 = (v8 - *v8);
  if (*v17 < 9u)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17[4];
    if (v18)
    {
      v18 = (v18 + v8 + *(v18 + v8));
    }
  }

  v16 = *v15;
  return (*(sub_A7AD90(v18, a4 + (v15[2] >> 8)) + 8) + v16);
}

uint64_t sub_A7AB44(void *a1, unint64_t a2, unsigned int a3, int a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, a3);
  v17 = (v8 - *v8);
  if (*v17 < 9u)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17[4];
    if (v18)
    {
      v18 = (v18 + v8 + *(v18 + v8));
    }
  }

  v16 = *v15;
  return (*(sub_A7AD90(v18, a4 + (v15[2] >> 8)) + 4) + v16);
}

uint64_t sub_A7AC40(unsigned int *a1, unsigned int a2)
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

  return &a1[3 * a2 + 1];
}

void sub_A7AD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_A7AD90(unsigned int *a1, unsigned int a2)
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

  return &a1[3 * a2 + 1];
}

void sub_A7AE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_A7AEE0(unsigned int *a1, unsigned int a2)
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

  return &a1[2 * a2 + 1];
}

void sub_A7AFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_A7B02C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 64);
  if ((*(result + 96) & 1) == 0)
  {
    v11 = (v3 + 3);
    *(result + 64) = v11;
    for (i = *(result + 56); v11 >= i; *(v2 + 64) = v11)
    {
      if (v11 >= *(v2 + 72))
      {
        break;
      }

      v13 = *(v2 + 80);
      if (!v13)
      {
        break;
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - i) >> 2);
      result = sub_585D8((*v2 + 3896));
      v15 = *v13;
      if (v14 < v15)
      {
        break;
      }

      v16 = *(v13 + 1);
      if (*(v13 + 2) + v15 - v16 <= v14)
      {
        break;
      }

      v17 = *(v16 + (v14 - v15));
      if ((v17 & 1) == 0)
      {
        break;
      }

      if (((v17 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      i = *(v2 + 56);
      v11 = *(v2 + 64) + 12;
    }

    return result;
  }

  if (a2 == 2)
  {
    return result;
  }

  v4 = v3[2];
  v5 = (*(result + 16) + *(*(result + 16) - **(result + 16) + 8));
  v6 = v5 + *v5;
  v7 = *(result + 100);
  v8 = 10 * *&v6[12 * v7 + 4 + 12 * (v4 >> 8)];
  if (a2)
  {
    v9 = vcvtd_n_f64_s32(v8, 1uLL);
    if (v9 >= 0.0)
    {
      if (v9 < 4.50359963e15)
      {
        v10 = (v9 + v9) + 1;
        goto LABEL_18;
      }
    }

    else if (v9 > -4.50359963e15)
    {
      v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_18:
      v9 = (v10 >> 1);
    }

    v8 = v9;
  }

  v18 = v8 / 10;
  v19 = v8 % 10;
  if (v8 < 0)
  {
    v20 = -5;
  }

  else
  {
    v20 = 5;
  }

  *(result + 104) += v18 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10);
  v21 = *(result + 56);
  if (v3 >= v21 && v3 < *(result + 72))
  {
    v22 = v4;
    while (1)
    {
      v29 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
      if (*(v2 + 104) <= (*(&v29[3 * v7 + 3 + 3 * (v3[2] >> 8)] + *v29) + *v3))
      {
        return result;
      }

      *(v2 + 100) = ++v7;
      if (v7 >= v22)
      {
        v30 = a2;
        v31 = (v3 + 3);
        *(v2 + 64) = v31;
        do
        {
          if (v31 >= *(v2 + 72))
          {
            break;
          }

          v32 = *(v2 + 80);
          if (!v32)
          {
            break;
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v21) >> 2);
          result = sub_585D8((*v2 + 3896));
          v34 = *v32;
          if (v33 < v34)
          {
            break;
          }

          v35 = *(v32 + 1);
          if (*(v32 + 2) + v34 - v35 <= v33)
          {
            break;
          }

          v36 = *(v35 + (v33 - v34));
          if ((v36 & 1) == 0)
          {
            break;
          }

          if (((v36 >> 1) & 1 & ~result) != 0)
          {
            break;
          }

          v21 = *(v2 + 56);
          v31 = *(v2 + 64) + 12;
          *(v2 + 64) = v31;
        }

        while (v31 >= v21);
        v7 = 0;
        *(v2 + 100) = 0;
        v21 = *(v2 + 56);
        v3 = *(v2 + 64);
        a2 = v30;
      }

      if (v3 < v21)
      {
        return result;
      }

      if (v3 < *(v2 + 72))
      {
        break;
      }

LABEL_32:
      if (v3 >= *(v2 + 72))
      {
        return result;
      }
    }

    v37 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
    v38 = &v37[3 * v7 + 3 * (v3[2] >> 8)] + *v37;
    v24 = 10 * *(v38 + 4);
    if (!a2)
    {
LABEL_28:
      v25 = *(v38 + 8) + *v3;
      v26 = v24 / 10;
      v27 = v24 % 10;
      if (v24 < 0)
      {
        v28 = -5;
      }

      else
      {
        v28 = 5;
      }

      *(v2 + 104) = v25 + v26 + (((103 * (v28 + v27)) >> 15) & 1) + ((103 * (v28 + v27)) >> 10);
      goto LABEL_32;
    }

    v23 = vcvtd_n_f64_s32(v24, 1uLL);
    if (v23 >= 0.0)
    {
      if (v23 >= 4.50359963e15)
      {
        goto LABEL_27;
      }

      v39 = (v23 + v23) + 1;
    }

    else
    {
      if (v23 <= -4.50359963e15)
      {
        goto LABEL_27;
      }

      v39 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
    }

    v23 = (v39 >> 1);
LABEL_27:
    v24 = v23;
    goto LABEL_28;
  }

  return result;
}

void *sub_A7B42C(void *result)
{
  v1 = result;
  v2 = (result[9] - 12);
  result[8] = v2;
  v3 = result[7];
  if (v2 >= v3)
  {
    do
    {
      if (v2 >= v1[9])
      {
        break;
      }

      v4 = v1[10];
      if (!v4)
      {
        break;
      }

      v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 2);
      result = sub_585D8((*v1 + 3896));
      v6 = *v4;
      if (v5 < v6)
      {
        break;
      }

      v7 = *(v4 + 1);
      if (*(v4 + 2) + v6 - v7 <= v5)
      {
        break;
      }

      v8 = *(v7 + (v5 - v6));
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (((v8 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      v3 = v1[7];
      v2 = (v1[8] - 12);
      v1[8] = v2;
    }

    while (v2 >= v3);
    v3 = v1[7];
    v2 = v1[8];
  }

  if (v2 >= v3 && v2 < v1[9] && *(v1 + 96) == 1)
  {
    v9 = v2[2];
    v10 = v9 - 1;
    *(v1 + 25) = v10;
    v11 = (v1[2] + *(v1[2] - *v1[2] + 8));
    *(v1 + 26) = *(&v11[3 * v10 + 3 + 3 * (v9 >> 8)] + *v11) + *v2;
  }

  return result;
}

uint64_t sub_A7B558(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 96) & 1) == 0)
  {
    v9 = *(result + 56);
    v10 = *(result + 64) - 12;
    for (*(result + 64) = v10; v10 >= v9; *(v2 + 64) = v10)
    {
      if (v10 >= *(v2 + 72))
      {
        break;
      }

      v11 = *(v2 + 80);
      if (!v11)
      {
        break;
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2);
      result = sub_585D8((*v2 + 3896));
      v13 = *v11;
      if (v12 < v13)
      {
        break;
      }

      v14 = *(v11 + 1);
      if (*(v11 + 2) + v13 - v14 <= v12)
      {
        break;
      }

      v15 = *(v14 + (v12 - v13));
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (((v15 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      v9 = *(v2 + 56);
      v10 = *(v2 + 64) - 12;
    }

    return result;
  }

  if (a2 == 2)
  {
    return result;
  }

  v3 = (*(result + 16) + *(*(result + 16) - **(result + 16) + 8));
  v4 = v3 + *v3;
  v5 = *(result + 64);
  v6 = 10 * *&v4[12 * (*(result + 100) + (v5[2] >> 8)) + 4];
  if (a2)
  {
    v7 = vcvtd_n_f64_s32(v6, 1uLL);
    if (v7 >= 0.0)
    {
      if (v7 < 4.50359963e15)
      {
        v8 = (v7 + v7) + 1;
        goto LABEL_18;
      }
    }

    else if (v7 > -4.50359963e15)
    {
      v8 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
LABEL_18:
      v7 = (v8 >> 1);
    }

    v6 = v7;
  }

  v16 = v6 / -10;
  v17 = v6 % 10;
  if (v6 < 0)
  {
    v18 = -5;
  }

  else
  {
    v18 = 5;
  }

  *(result + 104) += v16 + (((-103 * (v18 + v17)) >> 15) & 1) + ((-103 * (v18 + v17)) >> 10);
  v19 = *(result + 56);
  if (v5 >= v19 && v5 < *(result + 72))
  {
    while (1)
    {
      v26 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
      v27 = v26 + *v26;
      v28 = *(v2 + 100);
      if (*(v2 + 104) >= *&v27[12 * (v28 + (v5[2] >> 8)) + 8] + *v5)
      {
        return result;
      }

      if (v28)
      {
        goto LABEL_35;
      }

      v5 -= 3;
      *(v2 + 64) = v5;
      if (v5 >= v19)
      {
        v29 = a2;
        do
        {
          if (v5 >= *(v2 + 72))
          {
            break;
          }

          v30 = *(v2 + 80);
          if (!v30)
          {
            break;
          }

          v31 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v19) >> 2);
          result = sub_585D8((*v2 + 3896));
          v32 = *v30;
          if (v31 < v32)
          {
            break;
          }

          v33 = *(v30 + 1);
          if (*(v30 + 2) + v32 - v33 <= v31)
          {
            break;
          }

          v34 = *(v33 + (v31 - v32));
          if ((v34 & 1) == 0)
          {
            break;
          }

          if (((v34 >> 1) & 1 & ~result) != 0)
          {
            break;
          }

          v19 = *(v2 + 56);
          v5 = (*(v2 + 64) - 12);
          *(v2 + 64) = v5;
        }

        while (v5 >= v19);
        v19 = *(v2 + 56);
        v5 = *(v2 + 64);
        a2 = v29;
      }

      if (v5 >= v19 && v5 < *(v2 + 72))
      {
        break;
      }

LABEL_49:
      if (v5 < v19)
      {
        return result;
      }

      if (v5 < *(v2 + 72))
      {
        v35 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
        v36 = &v35[3 * (*(v2 + 100) + (v5[2] >> 8))] + *v35;
        v21 = 10 * *(v36 + 4);
        if (a2)
        {
          v20 = vcvtd_n_f64_s32(v21, 1uLL);
          if (v20 >= 0.0)
          {
            if (v20 < 4.50359963e15)
            {
              v37 = (v20 + v20) + 1;
LABEL_26:
              v20 = (v37 >> 1);
            }
          }

          else if (v20 > -4.50359963e15)
          {
            v37 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
            goto LABEL_26;
          }

          v21 = v20;
        }

        v22 = *(v36 + 12) + *v5;
        v23 = v21 / -10;
        v24 = v21 % 10;
        if (v21 < 0)
        {
          v25 = -5;
        }

        else
        {
          v25 = 5;
        }

        *(v2 + 104) = v22 + v23 + (((-103 * (v25 + v24)) >> 15) & 1) + ((-103 * (v25 + v24)) >> 10);
      }

      if (v5 >= *(v2 + 72))
      {
        return result;
      }
    }

    v28 = *(v5 + 8);
LABEL_35:
    *(v2 + 100) = v28 - 1;
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_A7B9A8(unsigned int **a1, __int128 *a2)
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
  *(sub_A332F8(v15, a2) + 160) = 0;
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
        (off_2670B40[v12])(&v16, v11);
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
        (off_2670B30[v13])(&v16, v7);
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

uint64_t sub_A7BBB4(uint64_t a1)
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
        (off_2670B30[v5])(&v7);
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

__n128 sub_A7BC54(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 44) = *(a2 + 44);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 64) = a2[4];
  *(v2 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 104) = *(a2 + 13);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *(v2 + 112) = *(a2 + 28);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 136) = *(a2 + 17);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 15) = 0;
  result = a2[9];
  *(v2 + 144) = result;
  return result;
}

__n128 sub_A7BCE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = result;
  return result;
}

uint64_t sub_A7BCFC(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3) + 1;
  if (v5 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 160) = 1;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 160) = -1;
      v11 = v10[40];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2670B40[v11])(&v15, v10);
        *(v9 + 160) = v11;
      }

      v10 += 42;
      v9 += 168;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[40];
      if (v12 != -1)
      {
        (off_2670B30[v12])(&v16, v2);
      }

      v2[40] = -1;
      v2 += 42;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 168;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 168;
}

uint64_t sub_A7BEF0(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 72 * v2;
  v16 = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 48) = 0;
  *(v6 + 63) = *(a2 + 63);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = 72 * v2 + *a1 - v10;
  v18 = 72 * v2 + 72;
  sub_A7C17C(a1, v9, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_A7C084(&v16);
  return v15;
}

void sub_A7C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A7C084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A7C084(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v5 = (i - 72);
    *(a1 + 16) = i - 72;
    v6 = *(i - 40);
    if (v6)
    {
      *(i - 32) = v6;
      operator delete(v6);
    }

    v7 = *v5;
    if (*v5)
    {
      v8 = *(i - 64);
      v4 = *v5;
      if (v8 != v7)
      {
        do
        {
          v9 = v8 - 168;
          v10 = *(v8 - 2);
          if (v10 != -1)
          {
            (off_2670B30[v10])(&v12, v8 - 168);
          }

          *(v8 - 2) = -1;
          v8 -= 168;
        }

        while (v9 != v7);
        v4 = *v5;
      }

      *(i - 64) = v7;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A7C17C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      v7 = v6[7];
      *(a4 + 63) = *(v6 + 63);
      *(a4 + 56) = v7;
      v6 += 9;
      a4 += 72;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v9 = v5[4];
        if (v9)
        {
          v5[5] = v9;
          operator delete(v9);
        }

        v10 = *v5;
        if (*v5)
        {
          v11 = v5[1];
          v8 = *v5;
          if (v11 != v10)
          {
            do
            {
              v12 = v11 - 168;
              v13 = *(v11 - 2);
              if (v13 != -1)
              {
                (off_2670B30[v13])(&v14, v11 - 168);
              }

              *(v11 - 2) = -1;
              v11 -= 168;
            }

            while (v12 != v10);
            v8 = *v5;
          }

          v5[1] = v10;
          operator delete(v8);
        }

        v5 += 9;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_A7C2C8(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3) + 1;
  if (v5 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 160) = 1;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 160) = -1;
      v11 = v10[40];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2670B40[v11])(&v15, v10);
        *(v9 + 160) = v11;
      }

      v10 += 42;
      v9 += 168;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[40];
      if (v12 != -1)
      {
        (off_2670B30[v12])(&v16, v2);
      }

      v2[40] = -1;
      v2 += 42;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 168;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 168;
}

uint64_t sub_A7C4BC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      v15 = 0x1C71C71C71C71C72 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v15 = 1;
      }

      v16 = a1[4];
      v19[3] = 0;
      v19[4] = v16;
      if (v15 < 0x38E38E38E38E38FLL)
      {
        operator new();
      }

      sub_1808();
    }

    v7 = (0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1) / 2;
    v5 = v6 - 72 * v7;
    if (v6 != v4)
    {
      v18 = (0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1) / 2;
      do
      {
        v9 = *v5;
        if (*v5)
        {
          v10 = *(v5 + 8);
          v11 = *v5;
          if (v10 != v9)
          {
            do
            {
              v12 = v10 - 168;
              v13 = *(v10 - 2);
              if (v13 != -1)
              {
                (off_2670B30[v13])(v19, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v12 != v9);
            v11 = *v5;
          }

          *(v5 + 8) = v9;
          operator delete(v11);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        v14 = *(v5 + 32);
        *(v5 + 24) = *(v6 + 24);
        if (v14)
        {
          *(v5 + 40) = v14;
          operator delete(v14);
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
        }

        *(v5 + 32) = *(v6 + 32);
        *(v5 + 48) = *(v6 + 48);
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 48) = 0;
        v8 = *(v6 + 56);
        *(v5 + 63) = *(v6 + 63);
        *(v5 + 56) = v8;
        v6 += 72;
        v5 += 72;
      }

      while (v6 != v4);
      v6 = a1[1];
      v7 = v18;
    }

    a1[1] = v6 - 72 * v7;
    a1[2] = v5;
  }

  result = sub_A7C79C(v5, a2);
  a1[2] += 72;
  return result;
}

uint64_t sub_A7C79C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_A33170(a1, *a2, *(a2 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 56);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 56) = v7;
  return a1;
}

void sub_A7C894(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_A78C90(v1);
  _Unwind_Resume(a1);
}

double sub_A7C8B8(uint64_t a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v5 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xDD67C8A60DD67CLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v6 = *(a2 + 80);
  *(v15 + 64) = *(a2 + 64);
  *(v15 + 80) = v6;
  *(v15 + 96) = *(a2 + 96);
  v7 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v7;
  v8 = *(a2 + 48);
  *(v15 + 32) = *(a2 + 32);
  *(v15 + 48) = v8;
  *(v15 + 104) = *(a2 + 104);
  *(v15 + 128) = *(a2 + 128);
  *(v15 + 112) = *(a2 + 112);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  *(v15 + 136) = *(a2 + 136);
  v9 = *(a2 + 176);
  *(v15 + 160) = *(a2 + 160);
  *(v15 + 176) = v9;
  *(v15 + 144) = *(a2 + 144);
  *(v15 + 192) = *(a2 + 192);
  *(v15 + 200) = *(a2 + 200);
  *(v15 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(v15 + 224) = *(a2 + 224);
  *(v15 + 240) = *(a2 + 240);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(v15 + 248) = *(a2 + 248);
  *(v15 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(v15 + 272) = *(a2 + 272);
  *(v15 + 288) = *(a2 + 288);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v10 = *(a1 + 8);
  v11 = 296 * v2 + *a1 - v10;
  sub_A7CAB8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = (296 * v2 + 296);
  *(a1 + 8) = v13;
  if (v12)
  {
    operator delete(v12);
    *&v13 = 296 * v2 + 296;
  }

  return *&v13;
}

void sub_A7CAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A7CC58(va);
  _Unwind_Resume(a1);
}

void sub_A7CAB8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v21[3] = v4;
    v21[4] = v5;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[2];
      *(a4 + 16) = v7[1];
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      *(a4 + 96) = *(v7 + 12);
      *(a4 + 64) = v11;
      *(a4 + 80) = v12;
      *(a4 + 48) = v10;
      *(a4 + 104) = *(v7 + 26);
      v13 = v7[7];
      *(a4 + 128) = *(v7 + 16);
      *(a4 + 112) = v13;
      *(v7 + 15) = 0;
      *(v7 + 16) = 0;
      *(v7 + 14) = 0;
      *(a4 + 136) = *(v7 + 34);
      v14 = v7[9];
      v15 = v7[11];
      *(a4 + 160) = v7[10];
      *(a4 + 176) = v15;
      *(a4 + 144) = v14;
      *(a4 + 192) = *(v7 + 24);
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = 0;
      *(a4 + 200) = *(v7 + 200);
      *(a4 + 216) = *(v7 + 27);
      *(v7 + 25) = 0;
      *(v7 + 26) = 0;
      *(v7 + 27) = 0;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 224) = v7[14];
      *(a4 + 240) = *(v7 + 30);
      *(v7 + 28) = 0;
      *(v7 + 29) = 0;
      *(v7 + 30) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 248) = *(v7 + 248);
      *(a4 + 264) = *(v7 + 33);
      *(v7 + 31) = 0;
      *(v7 + 32) = 0;
      *(v7 + 33) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 288) = 0;
      *(a4 + 272) = v7[17];
      *(a4 + 288) = *(v7 + 36);
      *(v7 + 34) = 0;
      *(v7 + 35) = 0;
      *(v7 + 36) = 0;
      v7 = (v7 + 296);
      a4 += 296;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v16 = a2 + 200;
      do
      {
        v18 = *(v16 + 72);
        if (v18)
        {
          *(v16 + 80) = v18;
          operator delete(v18);
        }

        v19 = *(v16 + 48);
        if (v19)
        {
          *(v16 + 56) = v19;
          operator delete(v19);
        }

        v20 = *(v16 + 24);
        if (v20)
        {
          *(v16 + 32) = v20;
          operator delete(v20);
        }

        v21[0] = v16;
        sub_A3212C(v21);
        if (*(v16 - 65) < 0)
        {
          operator delete(*(v16 - 88));
        }

        v17 = (v16 + 96);
        v16 += 296;
      }

      while (v17 != a3);
    }
  }
}

uint64_t sub_A7CC58(uint64_t a1)
{
  sub_A7CC90(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A7CC90(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = (i - 96);
    sub_A3212C(&v8);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }
}

uint64_t sub_A7CD3C(uint64_t a1)
{
  if (*(a1 + 296) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 200);
  sub_A3212C(&v6);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 112));
  return a1;
}

void sub_A7CDD8(int a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 23) < 0)
  {
    if (a3[1] == 3 && **a3 == 28787 && *(*a3 + 2) == 97)
    {
      goto LABEL_47;
    }

    if (a3[1] == 11 && **a3 == 0x706D6F632D617073 && *(*a3 + 3) == 0x746361706D6F632DLL)
    {
LABEL_41:
      operator new();
    }

    if (a3[1] == 4 && **a3 == 1634759538)
    {
      goto LABEL_51;
    }

    if (a3[1] == 7 && **a3 == 1886610285 && *(*a3 + 3) == 1949131120)
    {
      goto LABEL_52;
    }

    v10 = a3[1];
    if (v10 == 9)
    {
      v11 = *a3;
      goto LABEL_54;
    }

    if (v10 != 8 || **a3 != 0x77742D617073636DLL)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v5 = *(a3 + 23);
    if (v5 <= 7)
    {
      if (v5 != 3)
      {
        if (v5 != 4)
        {
          if (v5 != 7)
          {
            goto LABEL_58;
          }

          if (*a3 != 1886610285 || *(a3 + 3) != 1949131120)
          {
            goto LABEL_58;
          }

LABEL_52:
          operator new();
        }

        if (*a3 != 1634759538)
        {
          goto LABEL_58;
        }

LABEL_51:
        operator new();
      }

      if (*a3 != 28787 || *(a3 + 2) != 97)
      {
LABEL_58:
        if (sub_A7DB8C(a3, "mcspa-twrt"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DC98();
        }

        if (sub_A7DB8C(a3, "mcspa-twrft"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DD18();
        }

        if (sub_A7DB8C(a3, "mcspa-twrtm"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DD98();
        }

        if (sub_A7DB8C(a3, "mcspa-twrftm"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DE18();
        }

        if (sub_A7DB8C(a3, "bmcspa-t"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DE98();
        }

        if (sub_A7DB8C(a3, "bmcspa-tw"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DF18();
        }

        if (sub_A7DB8C(a3, "bmcspa-twr"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7DF98();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrt"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E018();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrt-compact"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E098();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrtm"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E118();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrtm-compact"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E198();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrft"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E218();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrft-compact"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E298();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrftm"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E318();
        }

        if (sub_A7DB8C(a3, "bmcspa-twrftm-compact"))
        {
          sub_3608D0(v24, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v22 = 0;
          v23 = 0;
          sub_3AEC94(a2, v24, &__p);
          sub_A7E398();
        }

        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        if ((v25 & 0x80u) == 0)
        {
          v18 = v24;
        }

        else
        {
          v18 = v24[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v19 = v25;
        }

        else
        {
          v19 = v24[1];
        }

        v20 = sub_2D390(exception, v18, v19);
      }

LABEL_47:
      operator new();
    }

    if (v5 != 8)
    {
      v11 = a3;
      if (v5 != 9)
      {
        if (v5 != 11)
        {
          goto LABEL_58;
        }

        if (*a3 != 0x706D6F632D617073 || *(a3 + 3) != 0x746361706D6F632DLL)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

LABEL_54:
      v14 = *v11;
      v15 = *(v11 + 8);
      if (v14 == 0x77742D617073636DLL && v15 == 114)
      {
        sub_3608D0(v24, "routing/transit/journey_planning/algorithms/McSpa.json");
        __p = 0;
        v22 = 0;
        v23 = 0;
        sub_3AEC94(a2, v24, &__p);
        sub_A7DC18();
      }

      goto LABEL_58;
    }

    if (*a3 != 0x77742D617073636DLL)
    {
      goto LABEL_58;
    }
  }

  operator new();
}

void sub_A7DAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A7DB8C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_49D4();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_A7E418(uint64_t a1)
{
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v2 = *(a1 + 456);
  if (v2)
  {
    *(a1 + 464) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 432);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 408);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 328);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 304);
  if (v7)
  {
    *(a1 + 312) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    *(a1 + 288) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 256);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    *(a1 + 240) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 176);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    *(a1 + 160) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    *(a1 + 136) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 56);
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  return a1;
}

void **sub_A7E55C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_A7E5B0(v2);
    operator delete();
  }

  return a1;
}

void *sub_A7E5B0(void *a1)
{
  sub_A7E418((a1 + 178));
  sub_A40284((a1 + 85));
  v2 = a1[84];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[78];
  if (v3)
  {
    a1[79] = v3;
    operator delete(v3);
  }

  v4 = a1[77];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[63];
  if (v5)
  {
    a1[64] = v5;
    operator delete(v5);
  }

  v6 = a1[62];
  if (v6)
  {
    free(v6);
  }

  sub_A37AFC((a1 + 19));
  return a1;
}

void **sub_A7E66C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_A7E6C0(v2);
    operator delete();
  }

  return a1;
}

void *sub_A7E6C0(void *a1)
{
  sub_A7E7F4((a1 + 178));
  sub_A40284((a1 + 85));
  v2 = a1[84];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[78];
  if (v3)
  {
    a1[79] = v3;
    operator delete(v3);
  }

  v4 = a1[73];
  if (v4)
  {
    v5 = a1[74];
    v6 = a1[73];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 2);
        v5 -= 2;
        v7 = v8;
        if (v8)
        {
          free(v7);
          *v5 = 0;
        }
      }

      while (v5 != v4);
      v6 = a1[73];
    }

    a1[74] = v4;
    free(v6);
  }

  v9 = a1[63];
  if (v9)
  {
    a1[64] = v9;
    operator delete(v9);
  }

  v10 = a1[58];
  if (v10)
  {
    v11 = a1[59];
    v12 = a1[58];
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 2);
        v11 -= 2;
        v13 = v14;
        if (v14)
        {
          free(v13);
          *v11 = 0;
        }
      }

      while (v11 != v10);
      v12 = a1[58];
    }

    a1[59] = v10;
    free(v12);
  }

  sub_A37AFC((a1 + 19));
  return a1;
}

uint64_t sub_A7E7F4(uint64_t a1)
{
  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  v2 = *(a1 + 520);
  if (v2)
  {
    *(a1 + 528) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 496);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 472);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    *(a1 + 424) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 392);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 368);
  if (v7)
  {
    *(a1 + 376) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 344);
  if (v8)
  {
    *(a1 + 352) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 320);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    *(a1 + 304) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 240);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 216);
  if (v13)
  {
    *(a1 + 224) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 176);
  if (v14)
  {
    v15 = *(a1 + 184);
    v16 = *(a1 + 176);
    if (v15 != v14)
    {
      do
      {
        v18 = *(v15 - 2);
        v15 -= 2;
        v17 = v18;
        if (v18)
        {
          free(v17);
          *v15 = 0;
        }
      }

      while (v15 != v14);
      v16 = *(a1 + 176);
    }

    *(a1 + 184) = v14;
    free(v16);
  }

  v19 = *(a1 + 56);
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

void sub_A7E978(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int64x2_t *a4@<X8>)
{
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  a4[1].i64[0] = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
    return;
  }

  v97 = *(a2 + 8);
  while (2)
  {
    v6 = *v5;
    v7 = v5[1];
    while (1)
    {
      if (v6 == v7)
      {
        goto LABEL_3;
      }

      v8 = *v6;
      v9 = sub_3A231C(*(a1 + 4184) + 24, __ROR8__(*v6, 32), 0);
      v10 = &v9[-*v9];
      if (*v10 < 5u)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v11 += &v9[*&v9[v11]];
        }
      }

      v12 = (v11 + 4 * v8 + 4 + *(v11 + 4 * v8 + 4));
      v13 = (v12 - *v12);
      if (*v13 >= 0x2Bu)
      {
        v14 = v13[21];
        if (v14)
        {
          if (*(v12 + v14) != -1)
          {
            break;
          }
        }
      }

      v6 += 16;
    }

    *v119 = 0u;
    *v120 = 0u;
    v121 = 1065353216;
    *v116 = 0u;
    *v117 = 0u;
    v118 = 1065353216;
    v15 = v5[1] - *v5;
    if ((v15 & 0x7FFFFFFF80) == 0)
    {
      v42 = 0;
      goto LABEL_49;
    }

    v16 = 0;
    v100 = (v15 >> 7);
    v101 = v5;
    do
    {
      v17 = (*v5 + (v16 << 7));
      v18 = v17[2];
      v19 = (v18 - *v18);
      if (*v19 >= 9u)
      {
        v20 = v19[4];
        if (v20)
        {
          if (*(v18 + v20))
          {
            v21 = *v17;
            v22 = __ROR8__(*v17, 32);
            v23 = sub_3A231C(*(a1 + 4184) + 24, v22, 0);
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

            v26 = (v25 + 4 * v21 + 4 + *(v25 + 4 * v21 + 4));
            v27 = (v26 - *v26);
            if (*v27 < 0x2Bu || (v28 = v27[21]) == 0 || *(v26 + v28) == -1)
            {
LABEL_44:
              v106 = 0;
              operator new();
            }

            v29 = sub_3A231C(*(a1 + 4184) + 24, v22, 0);
            v30 = &v29[-*v29];
            v31 = *v30;
            if (v31 <= 4)
            {
              v35 = 0;
              v33 = (4 * v21 + 4 + dword_4[v21]);
              v36 = (v33 - *v33);
              if (*v36 < 0x2Bu)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v32 = *(v30 + 2);
              if (*(v30 + 2))
              {
                v32 += &v29[*&v29[v32]];
              }

              v33 = (v32 + 4 * v21 + 4 + *(v32 + 4 * v21 + 4));
              if (v31 >= 0x17 && (v34 = *(v30 + 11)) != 0)
              {
                v35 = &v29[v34 + *&v29[v34]];
                v36 = (v33 - *v33);
                if (*v36 < 0x2Bu)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v35 = 0;
                v36 = (v33 - *v33);
                if (*v36 < 0x2Bu)
                {
                  goto LABEL_39;
                }
              }
            }

            v37 = v36[21];
            if (v37)
            {
              v38 = *(v33 + v37);
LABEL_40:
              v39 = sub_A7F86C(v35, v38);
              v40 = (v39 - *v39);
              if (*v40 >= 5u)
              {
                v41 = v40[2];
                if (v41)
                {
                  if (*(v39 + v41 + *(v39 + v41)))
                  {
                    operator new();
                  }
                }
              }

              goto LABEL_44;
            }

LABEL_39:
            v38 = -1;
            goto LABEL_40;
          }
        }
      }

      v17[14] = v17[13];
      v5 = v101;
      ++v16;
    }

    while (v16 != v100);
    v42 = v120[1];
    v4 = v97;
    if (v117[1] <= &stru_20)
    {
LABEL_49:
      if (v42 > a3)
      {
        goto LABEL_50;
      }

      goto LABEL_121;
    }

LABEL_50:
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v106);
      v43 = sub_4A5C(&v106, "Too many different boarding restriction ids or groups on trip sequence ", 71);
      v45 = *v5;
      v44 = v5[1];
      sub_19594F8(&v122);
      if (v45 != v44)
      {
        v46 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v45, 32), 0, "trip");
        v47 = (v46 - *v46);
        if (*v47 >= 5u && (v48 = v47[2]) != 0)
        {
          v49 = *(v46 + v48);
        }

        else
        {
          v49 = 0;
        }

        v50 = sub_2C939C(*(a1 + 4184) + 24, 1u, 0);
        if (!v50 || (v51 = &v50[-*v50], *v51 < 0xDu) || (v52 = *(v51 + 6)) == 0)
        {
LABEL_134:
          exception = __cxa_allocate_exception(0x40uLL);
          v94 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
        }

        v53 = &v50[v52 + *&v50[v52]];
        v54 = &v53[-*v53];
        if (*v54 >= 0xBu)
        {
          v55 = *(v54 + 5);
          if (v55)
          {
            if (v53[v55])
            {
LABEL_62:
              nullsub_1(v49);
            }
          }
        }

        while (1)
        {
          std::ostream::operator<<();
          v45 += 16;
          if (v45 == v44)
          {
            break;
          }

          sub_4A5C(&v122, ", ", 2);
          v56 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v45, 32), 0, "trip");
          v57 = (v56 - *v56);
          if (*v57 >= 5u && (v58 = v57[2]) != 0)
          {
            v49 = *(v56 + v58);
          }

          else
          {
            v49 = 0;
          }

          v59 = sub_2C939C(*(a1 + 4184) + 24, 1u, 0);
          if (!v59)
          {
            goto LABEL_134;
          }

          v60 = &v59[-*v59];
          if (*v60 < 0xDu)
          {
            goto LABEL_134;
          }

          v61 = *(v60 + 6);
          if (!v61)
          {
            goto LABEL_134;
          }

          v62 = &v59[v61 + *&v59[v61]];
          v63 = &v62[-*v62];
          if (*v63 >= 0xBu)
          {
            v64 = *(v63 + 5);
            if (v64)
            {
              if (v62[v64])
              {
                goto LABEL_62;
              }
            }
          }
        }
      }

      if ((v131 & 0x10) != 0)
      {
        v66 = v130;
        v67 = &v126;
        if (v130 < v127)
        {
          v130 = v127;
          v66 = v127;
          v67 = &v126;
        }
      }

      else
      {
        if ((v131 & 8) == 0)
        {
          v65 = 0;
          v105 = 0;
          goto LABEL_87;
        }

        v66 = v125[2];
        v67 = v125;
      }

      v68 = *v67;
      v65 = v66 - *v67;
      if (v65 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v65 >= 0x17)
      {
        operator new();
      }

      v105 = v66 - *v67;
      if (v65)
      {
        memmove(__dst, v68, v65);
      }

LABEL_87:
      *(__dst + v65) = 0;
      v122 = v96;
      *(&v122 + *(v96 - 3)) = v95;
      if (v129 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v124);
      std::ostream::~ostream();
      std::ios::~ios();
      if ((v105 & 0x80u) == 0)
      {
        v69 = __dst;
      }

      else
      {
        v69 = __dst[0];
      }

      if ((v105 & 0x80u) == 0)
      {
        v70 = v105;
      }

      else
      {
        v70 = __dst[1];
      }

      v71 = sub_4A5C(v43, v69, v70);
      sub_4A5C(v71, "; dropping restrictions", 23);
      if (v105 < 0)
      {
        operator delete(__dst[0]);
        v72 = v115;
        if ((v115 & 0x10) != 0)
        {
          goto LABEL_100;
        }

LABEL_97:
        if ((v72 & 8) != 0)
        {
          v74 = v109[2];
          v75 = v109;
          goto LABEL_103;
        }

        v73 = 0;
        HIBYTE(v124.__locale_) = 0;
      }

      else
      {
        v72 = v115;
        if ((v115 & 0x10) == 0)
        {
          goto LABEL_97;
        }

LABEL_100:
        v74 = v114;
        v75 = &v110;
        if (v114 < v111)
        {
          v114 = v111;
          v74 = v111;
          v75 = &v110;
        }

LABEL_103:
        v76 = *v75;
        v73 = v74 - *v75;
        if (v73 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v73 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v124.__locale_) = v74 - *v75;
        if (v73)
        {
          memmove(&v122, v76, v73);
        }
      }

      *(&v122 + v73) = 0;
      sub_7E854(&v122, 3u);
      if (SHIBYTE(v124.__locale_) < 0)
      {
        operator delete(v122);
      }

      v106 = v96;
      *(&v106 + *(v96 - 3)) = v95;
      if (v113 < 0)
      {
        operator delete(v112);
      }

      std::locale::~locale(&v108);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    v78 = *v5;
    v77 = v5[1];
    if (*v5 != v77)
    {
      v79 = v77 - v78 - 128;
      v80 = *v5;
      if (v79 < 0x80)
      {
        goto LABEL_139;
      }

      v81 = (v79 >> 7) + 1;
      v80 = &v78[16 * (v81 & 0x3FFFFFFFFFFFFFELL)];
      v82 = v78 + 30;
      v83 = v81 & 0x3FFFFFFFFFFFFFELL;
      do
      {
        v84 = *(v82 - 1);
        *(v82 - 16) = *(v82 - 17);
        *v82 = v84;
        v82 += 32;
        v83 -= 2;
      }

      while (v83);
      if (v81 != (v81 & 0x3FFFFFFFFFFFFFELL))
      {
LABEL_139:
        do
        {
          *(v80 + 14) = *(v80 + 13);
          v80 += 128;
        }

        while (v80 != v77);
      }
    }

    v42 = 0;
LABEL_121:
    v85 = v117[0];
    if (v117[0])
    {
      do
      {
        v86 = *v85;
        operator delete(v85);
        v85 = v86;
      }

      while (v86);
    }

    v87 = v116[0];
    v116[0] = 0;
    if (v87)
    {
      operator delete(v87);
    }

    v88 = v120[0];
    if (v120[0])
    {
      do
      {
        v89 = *v88;
        operator delete(v88);
        v88 = v89;
      }

      while (v89);
    }

    v90 = v119[0];
    v119[0] = 0;
    if (v90)
    {
      operator delete(v90);
    }

    if (v42)
    {
      v91.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v91.i64[1] = v42;
      *a4 = vaddq_s64(*a4, v91);
      v92 = a4[1].i64[0];
      if (v92 <= v42)
      {
        v92 = v42;
      }

      a4[1].i64[0] = v92;
    }

LABEL_3:
    v5 += 3;
    if (v5 != v4)
    {
      continue;
    }

    break;
  }
}

void sub_A7F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *__p)
{
  sub_1959728(&a28);
  v70 = __p;
  if (__p)
  {
    do
    {
      v71 = *v70;
      operator delete(v70);
      v70 = v71;
    }

    while (v71);
  }

  v72 = a61;
  a61 = 0;
  if (v72)
  {
    operator delete(v72);
  }

  v73 = a69;
  if (a69)
  {
    do
    {
      v74 = *v73;
      operator delete(v73);
      v73 = v74;
    }

    while (v74);
  }

  v75 = a67;
  a67 = 0;
  if (v75)
  {
    operator delete(v75);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A7F86C(unsigned int *a1, unsigned int a2)
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

void sub_A7F93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t *sub_A7F9BC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0x7FFFFFFFFFFFFFFFLL);
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
        if (*(v9 + 4) == v2 && *(v9 + 5) == v3)
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

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t *sub_A7FD44(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

void *sub_A80078(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_A80E80((a1 + 1), 0x7Fu);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_A800B0(uint64_t *a1, unsigned int **a2)
{
  v2 = a1[1];
  a1[5] = a1[4];
  a1[2] = v2;
  *(a1 + 14) = 0;
  v150 = a1 + 8;
  v157 = a1 + 1;
  a1[9] = a1[8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = *v3;
      if (v6 != -1 && v6 < ((*(*a1 + 80) - *(*a1 + 72)) >> 3))
      {
        v159[0] = 0;
        v7 = a1[8];
        v8 = (a1[9] - v7) >> 4;
        if (v8 <= v6)
        {
          sub_A81078(v150, v6 - v8 + 1);
          v7 = *v150;
        }

        v9 = v7 + 16 * v6;
        if (*v9 == 0x7FFFFFFF || (*v9 <= 0 ? (v10 = *(v9 + 4) == 0) : (v10 = 0), !v10))
        {
          *v9 = 0;
          *(v9 + 8) = -1;
          sub_A80D80(v157, v6, v159);
        }
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(a1 + 14))
    {
      v11 = xmmword_22A74E0;
      do
      {
        v12 = a1[1];
        v13 = *v12;
        v153 = *(v12 + 1);
        *(a1[4] + 4 * v13) = -1;
        v14 = *(a1 + 14) - 1;
        *(a1 + 14) = v14;
        if (v14)
        {
          v15 = &v12[3 * v14];
          *v12 = *v15;
          *(v12 + 1) = *(v15 + 1);
          v16 = a1[1];
          *(a1[4] + 4 * *v16) = 0;
          v17 = *(a1 + 14);
          if (v17 >= 2)
          {
            v18 = 0;
            v19 = 0;
            v20 = 1;
            do
            {
              v21 = v18 + 5;
              if (v21 >= v17)
              {
                v22 = v17;
              }

              else
              {
                v22 = v21;
              }

              if (v21 <= v20)
              {
                break;
              }

              v23 = v19;
              v24 = *&v16[3 * v19 + 1];
              v25 = HIDWORD(v24);
              v26 = &v16[3 * v20 + 1];
              v19 = -1;
              v27 = v24;
              do
              {
                v28 = v26[1];
                v10 = v28 == v25;
                v29 = v28 < v25;
                if (v10)
                {
                  v29 = *v26 < v27;
                }

                if (v29)
                {
                  v27 = *v26;
                  LODWORD(v25) = v26[1];
                  v19 = v20;
                }

                v26 += 3;
                ++v20;
              }

              while (v20 < v22);
              if (v19 >= v17)
              {
                break;
              }

              v30 = &v16[3 * v19];
              v31 = 12 * v23;
              v32 = v16 + v31;
              v33 = *v30;
              *v30 = *v32;
              *v32 = v33;
              v34 = *(v30 + 1);
              *(v30 + 1) = v24;
              *(v32 + 4) = v34;
              v16 = a1[1];
              v35 = v16[3 * v19];
              v36 = a1[4];
              v37 = *(v16 + v31);
              LODWORD(v31) = *(v36 + 4 * v35);
              *(v36 + 4 * v35) = *(v36 + 4 * v37);
              *(v36 + 4 * v37) = v31;
              v18 = 4 * v19;
              v20 = (4 * v19) | 1;
              v17 = *(a1 + 14);
            }

            while (v20 < v17);
          }
        }

        a1[2] -= 12;
        v38 = *a1;
        v39 = *(*a1 + 72);
        v40 = *(*a1 + 80);
        v41 = v40 - v39;
        v42 = (v40 - v39) >> 3;
        if (v13 >= v42)
        {
LABEL_138:
          exception = __cxa_allocate_exception(0x40uLL);
          v149 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        if (v13 >= v41 >> 3)
        {
LABEL_137:
          v147 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v147, "key out of range");
        }

        v152 = 8 * v13;
        v43 = (*(v38 + 96) + 28 * *(v39 + 8 * v13));
        v151 = v153 & 0xFFFFFFFF00000000;
        v154 = v13;
        while (1)
        {
          if (v13 >= v41 >> 3)
          {
            goto LABEL_137;
          }

          v44 = *(v38 + 96);
          if (v43 == (v44 + 28 * *(v39 + 8 * v13 + 4)))
          {
            break;
          }

          v45 = *v43;
          if (v45 < v42)
          {
            v46 = *(v43 + 1);
            if (v46 != 0x7FFFFFFF)
            {
              if (v13 >= (v40 - v39) >> 3)
              {
                goto LABEL_137;
              }

              v47 = *(v39 + v152);
              v49 = a1[8];
              v48 = a1[9];
              v50 = (v48 - v49) >> 4;
              v158 = v43;
              if (v50 <= v45)
              {
                v51 = v45 + 1;
                v52 = v45 + 1 - v50;
                v53 = a1[10];
                if (v52 > (v53 - v48) >> 4)
                {
                  v54 = v53 - v49;
                  if (v54 >> 3 > v51)
                  {
                    v51 = v54 >> 3;
                  }

                  if (v54 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v55 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v55 = v51;
                  }

                  if (!(v55 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_140;
                }

                v56 = (v48 + 16 * v52);
                v57 = 16 * v45 - (v48 - v49);
                v58 = a1[9];
                v13 = v154;
                if (v57 < 0x70)
                {
                  goto LABEL_146;
                }

                v59 = (v57 >> 4) + 1;
                v58 = (v48 + 16 * (v59 & 0x1FFFFFFFFFFFFFF8));
                v60 = (v48 + 64);
                v61 = v59 & 0x1FFFFFFFFFFFFFF8;
                do
                {
                  *(v60 - 2) = v11;
                  *(v60 - 1) = v11;
                  *(v60 - 4) = v11;
                  *(v60 - 3) = v11;
                  v60[2] = v11;
                  v60[3] = v11;
                  *v60 = v11;
                  v60[1] = v11;
                  v60 += 8;
                  v61 -= 8;
                }

                while (v61);
                if (v59 != (v59 & 0x1FFFFFFFFFFFFFF8))
                {
LABEL_146:
                  do
                  {
                    *v58++ = v11;
                  }

                  while (v58 != v56);
                }

                a1[9] = v56;
              }

              v62 = v46 + v153;
              v63 = (v46 + v151) >> 32;
              v64 = v49 + 16 * v45;
              if (*v64 == 0x7FFFFFFF)
              {
LABEL_59:
                v155 = (v46 + v151) >> 32;
                v156 = (v46 + v151) & 0xFFFFFFFF00000000 | (v46 + v153);
                *v64 = v156;
                *(v64 + 8) = v13;
                *(v64 + 12) = -1227133513 * ((v43 - v44 + -28 * v47) >> 2);
                v65 = a1[4];
                v66 = a1[5];
                v67 = v66 - v65;
                v68 = (v66 - v65) >> 2;
                if (v68 > v45)
                {
                  v69 = *&v65[4 * v45];
                  if (v69 == -1)
                  {
LABEL_95:
                    LODWORD(v159[0]) = v45;
                    *(v159 + 4) = v156;
                    v99 = a1[2];
                    v100 = a1[3];
                    if (v99 >= v100)
                    {
                      v103 = *v157;
                      v104 = 0xAAAAAAAAAAAAAAABLL * ((v99 - *v157) >> 2);
                      v105 = v104 + 1;
                      if (v104 + 1 > 0x1555555555555555)
                      {
                        sub_1794();
                      }

                      v106 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v103) >> 2);
                      if (2 * v106 > v105)
                      {
                        v105 = 2 * v106;
                      }

                      if (v106 >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v107 = 0x1555555555555555;
                      }

                      else
                      {
                        v107 = v105;
                      }

                      if (v107)
                      {
                        if (v107 <= 0x1555555555555555)
                        {
                          operator new();
                        }

                        goto LABEL_140;
                      }

                      v130 = 4 * ((v99 - *v157) >> 2);
                      *v130 = v159[0];
                      *(v130 + 8) = v155;
                      v101 = 12 * v104 + 12;
                      v131 = (12 * v104 - (v99 - v103));
                      memcpy(v131, v103, v99 - v103);
                      a1[1] = v131;
                      a1[2] = v101;
                      a1[3] = 0;
                      if (v103)
                      {
                        operator delete(v103);
                      }

                      v11 = xmmword_22A74E0;
                    }

                    else
                    {
                      *v99 = v159[0];
                      *(v99 + 8) = v155;
                      v101 = v99 + 12;
                    }

                    v13 = v154;
                    v43 = v158;
                    a1[2] = v101;
                    v132 = *(a1 + 14);
                    *(a1[4] + 4 * v45) = v132;
                    *(a1 + 14) = v132 + 1;
                    if (v132)
                    {
                      v133 = *v157;
                      do
                      {
                        v134 = v132 - 1;
                        v135 = (v132 - 1) >> 2;
                        v136 = (v133 + 12 * v135);
                        v137 = (v133 + 12 * v132);
                        v138 = v136[2];
                        v139 = v137[2];
                        v10 = v138 == v139;
                        v140 = v138 < v139;
                        if (v10)
                        {
                          v140 = v136[1] < v137[1];
                        }

                        if (v140)
                        {
                          break;
                        }

                        v141 = *v137;
                        *v137 = *v136;
                        *v136 = v141;
                        v142 = *(v137 + 1);
                        *(v137 + 1) = *(v136 + 1);
                        *(v136 + 1) = v142;
                        v133 = a1[1];
                        v143 = *(v133 + 12 * v132);
                        v144 = a1[4];
                        v145 = *(v133 + 12 * v135);
                        v146 = *(v144 + 4 * v143);
                        *(v144 + 4 * v143) = *(v144 + 4 * v145);
                        *(v144 + 4 * v145) = v146;
                        v132 = v134 >> 2;
                      }

                      while (v134 >= 4);
                    }
                  }

                  else
                  {
                    v70 = *v157 + 12 * v69;
                    v71 = *(v70 + 4);
                    *(v70 + 4) = v156;
                    v72 = v62 < v71;
                    if (v155 != HIDWORD(v71))
                    {
                      v72 = v155 < HIDWORD(v71);
                    }

                    if (v72)
                    {
                      v13 = v154;
                      if (v69)
                      {
                        v73 = *v157;
                        do
                        {
                          v74 = v69 - 1;
                          v75 = (v69 - 1) >> 2;
                          v76 = (v73 + 12 * v75);
                          v77 = (v73 + 12 * v69);
                          v78 = v76[2];
                          v79 = v77[2];
                          v10 = v78 == v79;
                          v80 = v78 < v79;
                          if (v10)
                          {
                            v80 = v76[1] < v77[1];
                          }

                          if (v80)
                          {
                            break;
                          }

                          v81 = *v77;
                          *v77 = *v76;
                          *v76 = v81;
                          v82 = *(v77 + 1);
                          *(v77 + 1) = *(v76 + 1);
                          *(v76 + 1) = v82;
                          v73 = a1[1];
                          v83 = *(v73 + 12 * v69);
                          v84 = a1[4];
                          v85 = *(v73 + 12 * v75);
                          v86 = *(v84 + 4 * v83);
                          *(v84 + 4 * v83) = *(v84 + 4 * v85);
                          *(v84 + 4 * v85) = v86;
                          v69 = v74 >> 2;
                        }

                        while (v74 >= 4);
                      }
                    }

                    else
                    {
                      v108 = (4 * v69) | 1;
                      v109 = *(a1 + 14);
                      v13 = v154;
                      if (v108 < v109)
                      {
                        v110 = 4 * v69;
                        do
                        {
                          v111 = v110 + 5;
                          if (v111 >= v109)
                          {
                            v112 = v109;
                          }

                          else
                          {
                            v112 = v111;
                          }

                          if (v111 <= v108)
                          {
                            break;
                          }

                          v113 = *v157;
                          v114 = v69;
                          v115 = *(*v157 + 12 * v69 + 4);
                          v116 = HIDWORD(v115);
                          v117 = (*v157 + 12 * v108 + 4);
                          v69 = -1;
                          v118 = v115;
                          do
                          {
                            v119 = v117[1];
                            v10 = v119 == v116;
                            v120 = v119 < v116;
                            if (v10)
                            {
                              v120 = *v117 < v118;
                            }

                            if (v120)
                            {
                              v118 = *v117;
                              LODWORD(v116) = v117[1];
                              v69 = v108;
                            }

                            v117 += 3;
                            ++v108;
                          }

                          while (v108 < v112);
                          if (v69 >= v109)
                          {
                            break;
                          }

                          v121 = v113 + 12 * v69;
                          v122 = 12 * v114;
                          v123 = v113 + v122;
                          v124 = *v121;
                          *v121 = *v123;
                          *v123 = v124;
                          v125 = *(v121 + 4);
                          *(v121 + 4) = v115;
                          *(v123 + 4) = v125;
                          v126 = a1[1];
                          v127 = *(v126 + 12 * v69);
                          v128 = a1[4];
                          v129 = *(v126 + v122);
                          LODWORD(v123) = *(v128 + 4 * v127);
                          *(v128 + 4 * v127) = *(v128 + 4 * v129);
                          *(v128 + 4 * v129) = v123;
                          v110 = 4 * v69;
                          v108 = (4 * v69) | 1;
                          v109 = *(a1 + 14);
                        }

                        while (v108 < v109);
                      }
                    }
                  }

                  goto LABEL_37;
                }

                while (2)
                {
                  v87 = (v67 >> 1) | 1;
                  if (v68 <= v67 >> 1)
                  {
                    v89 = v87 - v68;
                    v90 = a1[6];
                    if (v89 <= (v90 - v66) >> 2)
                    {
                      bzero(v66, 4 * v89);
                      v11 = xmmword_22A74E0;
                      v66 += 4 * v89;
                      a1[5] = v66;
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 >= v88)
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      v91 = v66 - v65;
                      v92 = (v66 - v65) >> 2;
                      v93 = v92 + v89;
                      if ((v92 + v89) >> 62)
                      {
                        sub_1794();
                      }

                      v94 = v90 - v65;
                      if (v94 >> 1 > v93)
                      {
                        v93 = v94 >> 1;
                      }

                      if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v95 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v95 = v93;
                      }

                      if (v95)
                      {
                        if (!(v95 >> 62))
                        {
                          operator new();
                        }

LABEL_140:
                        sub_1808();
                      }

                      v96 = v92;
                      v97 = 4 * v92;
                      bzero((4 * v92), 4 * v89);
                      v66 = (4 * v92 + 4 * v89);
                      v98 = (v97 - 4 * v96);
                      memcpy(v98, v65, v91);
                      a1[4] = v98;
                      a1[5] = v66;
                      a1[6] = 0;
                      if (!v65)
                      {
                        v65 = v98;
                        v11 = xmmword_22A74E0;
                        v67 = v66 - v98;
                        v88 = (v66 - v98) >> 2;
                        if (v68 < v88)
                        {
                          break;
                        }

                        goto LABEL_71;
                      }

                      operator delete(v65);
                      v65 = a1[4];
                      v66 = a1[5];
                      v11 = xmmword_22A74E0;
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 >= v88)
                      {
                        goto LABEL_71;
                      }
                    }
                  }

                  else
                  {
                    if (v87 >= v68)
                    {
                      v67 = v66 - v65;
                      v88 = (v66 - v65) >> 2;
                      if (v68 < v88)
                      {
                        break;
                      }

LABEL_71:
                      v68 = v88;
                      if (v88 > v45)
                      {
                        goto LABEL_95;
                      }

                      continue;
                    }

                    v66 = &v65[4 * v87];
                    a1[5] = v66;
                    v67 = 4 * v87;
                    v88 = (4 * v87) >> 2;
                    if (v68 >= v88)
                    {
                      goto LABEL_71;
                    }
                  }

                  break;
                }

                memset(&v65[4 * v68], 255, v67 - 4 * v68);
                v11 = xmmword_22A74E0;
                goto LABEL_71;
              }

              v102 = *(v64 + 4);
              if (v102 == v63)
              {
                if (*v64 > v62)
                {
                  goto LABEL_59;
                }
              }

              else if (v102 > v63)
              {
                goto LABEL_59;
              }
            }
          }

LABEL_37:
          v43 += 7;
          v38 = *a1;
          v39 = *(*a1 + 72);
          v40 = *(*a1 + 80);
          v41 = v40 - v39;
          v42 = (v40 - v39) >> 3;
          if (v13 >= v42)
          {
            goto LABEL_138;
          }
        }
      }

      while (*(a1 + 14));
    }
  }
}

uint64_t sub_A80C90(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5);
}

uint64_t sub_A80CE0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5 + 8);
}

uint64_t sub_A80D30(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = a1 + 64;
  v5 = a2;
  v6 = (v4 - v3) >> 4;
  if (v6 <= a2)
  {
    v7 = v2;
    sub_A81078(v2, a2 - v6 + 1);
    v3 = *v7;
  }

  return *(v3 + 16 * v5 + 12);
}

void sub_A80D80(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = a1[3];
  if (a2 >= ((a1[4] - v4) >> 2) || (v5 = *(v4 + 4 * a2), v5 == -1))
  {
    sub_A8125C(a1, a2, a3);
  }

  else
  {
    v6 = *a1 + 12 * v5;
    v8 = *(v6 + 4);
    v7 = *(v6 + 8);
    *(v6 + 4) = *a3;
    LODWORD(v6) = *(a3 + 4);
    v9 = *a3 < v8;
    v10 = v6 == v7;
    v11 = v6 < v7;
    if (v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v5)
      {
        v12 = *a1;
        do
        {
          v13 = v5 - 1;
          v14 = (v5 - 1) >> 2;
          v15 = (v12 + 12 * v14);
          v16 = (v12 + 12 * v5);
          v17 = v15[2];
          v18 = v16[2];
          v10 = v17 == v18;
          v19 = v17 < v18;
          if (v10)
          {
            v19 = v15[1] < v16[1];
          }

          if (v19)
          {
            break;
          }

          v20 = *v16;
          *v16 = *v15;
          *v15 = v20;
          v21 = *(v16 + 1);
          *(v16 + 1) = *(v15 + 1);
          *(v15 + 1) = v21;
          v12 = *a1;
          v22 = *(*a1 + 12 * v5);
          v23 = a1[3];
          v24 = *(*a1 + 12 * v14);
          v25 = *(v23 + 4 * v22);
          *(v23 + 4 * v22) = *(v23 + 4 * v24);
          *(v23 + 4 * v24) = v25;
          LODWORD(v5) = v13 >> 2;
        }

        while (v13 >= 4);
      }
    }

    else
    {
      sub_A80F68(a1, v5);
    }
  }
}

uint64_t sub_A80E80(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_A80F44(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A80F68(uint64_t *a1, uint64_t a2)
{
  v2 = (4 * a2) | 1u;
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    v4 = 4 * a2;
    do
    {
      if (v4 + 5 >= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4 + 5;
      }

      if (v4 + 5 <= v2)
      {
        break;
      }

      v6 = *a1;
      v7 = *(*a1 + 12 * a2 + 4);
      v8 = HIDWORD(v7);
      v9 = (*a1 + 12 * v2 + 4);
      v10 = 0xFFFFFFFFLL;
      v11 = v7;
      do
      {
        v12 = v9[1];
        v13 = v12 == v8;
        v14 = v12 < v8;
        if (v13)
        {
          v14 = *v9 < v11;
        }

        if (v14)
        {
          v11 = *v9;
          LODWORD(v8) = v9[1];
          v10 = v2;
        }

        v9 += 3;
        v2 = (v2 + 1);
      }

      while (v2 < v5);
      if (v10 >= v3)
      {
        break;
      }

      v15 = (v6 + 12 * v10);
      v16 = 12 * a2;
      v17 = (v6 + v16);
      v18 = *v15;
      *v15 = *v17;
      *v17 = v18;
      v19 = *(v15 + 1);
      *(v15 + 1) = v7;
      *(v17 + 1) = v19;
      v20 = *(*a1 + 12 * v10);
      v21 = a1[3];
      v22 = *(*a1 + v16);
      LODWORD(v17) = *(v21 + 4 * v20);
      *(v21 + 4 * v20) = *(v21 + 4 * v22);
      *(v21 + 4 * v22) = v17;
      v4 = 4 * v10;
      v2 = (4 * v10) | 1u;
      v3 = *(a1 + 12);
      a2 = v10;
    }

    while (v2 < v3);
  }

  return a2;
}

void sub_A81078(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v9 = &v4[a2];
      v10 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10 < 7)
      {
        goto LABEL_33;
      }

      v11 = v10 + 1;
      v12 = &v4[v11 & 0x1FFFFFFFFFFFFFF8];
      v13 = v4 + 4;
      v14 = v11 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        *(v13 - 2) = xmmword_22A74E0;
        *(v13 - 1) = xmmword_22A74E0;
        *(v13 - 4) = xmmword_22A74E0;
        *(v13 - 3) = xmmword_22A74E0;
        v13[2] = xmmword_22A74E0;
        v13[3] = xmmword_22A74E0;
        *v13 = xmmword_22A74E0;
        v13[1] = xmmword_22A74E0;
        v13 += 8;
        v14 -= 8;
      }

      while (v14);
      v4 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v4++ = xmmword_22A74E0;
        }

        while (v4 != v9);
      }

      v4 = v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 16 * v5;
    v16 = 16 * v5 + 16 * a2;
    v17 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v18 = (16 * v5);
    if (v17 < 7)
    {
      goto LABEL_34;
    }

    v19 = v17 + 1;
    v18 = (v15 + 16 * (v19 & 0x1FFFFFFFFFFFFFF8));
    v20 = (v15 + 64);
    v21 = v19 & 0x1FFFFFFFFFFFFFF8;
    do
    {
      *(v20 - 2) = xmmword_22A74E0;
      *(v20 - 1) = xmmword_22A74E0;
      *(v20 - 4) = xmmword_22A74E0;
      *(v20 - 3) = xmmword_22A74E0;
      v20[2] = xmmword_22A74E0;
      v20[3] = xmmword_22A74E0;
      *v20 = xmmword_22A74E0;
      v20[1] = xmmword_22A74E0;
      v20 += 8;
      v21 -= 8;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v18++ = xmmword_22A74E0;
      }

      while (v18 != v16);
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v15 - v23;
    memcpy((v15 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_A8125C(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = a2;
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v7 = a1 + 24;
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v29 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v29 - v11);
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      else if (v29 < v11)
      {
        v9 = v8 + 4 * v29;
        *(a1 + 32) = v9;
        v10 = 4 * v29;
        v30 = (4 * v29) >> 2;
        if (v11 < v30)
        {
LABEL_17:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else
      {
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      v11 = v30;
    }

    while (v30 <= v6);
  }

  LODWORD(v31) = a2;
  v12 = *a3;
  HIDWORD(v31) = *a3;
  v32 = HIDWORD(v12);
  sub_376F0(a1, &v31);
  v13 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v6) = v13;
  *(a1 + 48) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v15 = v13 - 1;
      v16 = (v13 - 1) >> 2;
      v17 = (v14 + 12 * v16);
      v18 = (v14 + 12 * v13);
      v19 = v17[2];
      v20 = v18[2];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v22 = v17[1] < v18[1];
      }

      if (v22)
      {
        break;
      }

      v23 = *v18;
      *v18 = *v17;
      *v17 = v23;
      v24 = *(v18 + 1);
      *(v18 + 1) = *(v17 + 1);
      *(v17 + 1) = v24;
      v14 = *a1;
      v25 = *(*a1 + 12 * v13);
      v26 = *(a1 + 24);
      v27 = *(*a1 + 12 * v16);
      v28 = *(v26 + 4 * v25);
      *(v26 + 4 * v25) = *(v26 + 4 * v27);
      *(v26 + 4 * v27) = v28;
      v13 = v15 >> 2;
    }

    while (v15 > 3);
  }
}

void sub_A81424(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v43 = *(a2 + 40);
  sub_A78D38(a1 + 517, *(a2 + 32), v43, v58);
  v6 = *(v3 + 52);
  if (v6 <= *(v3 + 56))
  {
    v7 = 0;
    v41 = v3;
    v42 = v5;
    while (1)
    {
      v8 = sub_A56F04(v4 + 517, *(v3 + 32), v6, v43);
      v10 = v9;
      v11 = sub_A57920(v4 + 517, *(v3 + 32));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *(sub_A571D4(v14, v6) + 12);
      v16 = __ROR8__(v8, 32);
      v17 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
      v18 = (v17 - *v17);
      if (*v18 < 9u)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        v19 = v18[4];
        if (v19)
        {
          LODWORD(v19) = *(v17 + v19);
        }
      }

      v20 = v19 + ~v15;
      v21 = (*(v3 + 56) - v6) >= v20 ? v20 : *(v3 + 56) - v6;
      v44 = v21 + v15;
      if (!v21)
      {
        break;
      }

      v22 = v5[2];
      if (v7 < v22)
      {
        *v7 = v8;
        *(v7 + 8) = v10;
        *(v7 + 12) = v15;
        *(v7 + 16) = v44;
        v7 += 20;
      }

      else
      {
        v23 = *v5;
        v24 = v7 - *v5;
        v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 2) + 1;
        if (v25 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1794();
        }

        v26 = v4;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2);
        if (2 * v27 > v25)
        {
          v25 = 2 * v27;
        }

        if (v27 >= 0x666666666666666)
        {
          v28 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v28 = v25;
        }

        if (v28)
        {
          if (v28 <= 0xCCCCCCCCCCCCCCCLL)
          {
            operator new();
          }

          sub_1808();
        }

        v29 = 4 * (v24 >> 2);
        *v29 = v8;
        *(v29 + 8) = v10;
        *(v29 + 12) = v15;
        *(v29 + 16) = v44;
        v7 = v29 + 20;
        v30 = v29 - v24;
        memcpy((v29 - v24), v23, v24);
        v5 = v42;
        *v42 = v30;
        v42[1] = v7;
        v42[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v26;
        v3 = v41;
      }

      v5[1] = v7;
      v6 += v21 + 1;
      if (v6 > *(v3 + 56))
      {
        goto LABEL_52;
      }
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_51;
    }

    sub_19594F8(&v47);
    sub_4A5C(&v47, "Block transfer unpacking on SPA journey leg failed due to travel between the same stop indices on a journey leg for trip ", 121);
    sub_A81A58(v4 + 523, v8);
    v31 = std::ostream::operator<<();
    sub_4A5C(v31, " (line ", 7);
    v32 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
    v33 = (v32 - *v32);
    if (*v33 >= 7u && (v34 = v33[3]) != 0)
    {
      v35 = *(v32 + v34 + 4) | (*(v32 + v34) << 32);
    }

    else
    {
      v35 = 0xFFFFFFFFLL;
    }

    sub_A81B90(v4 + 507, v35);
    v36 = std::ostream::operator<<();
    v37 = sub_4A5C(v36, ") from index ", 13);
    std::ostream::operator<<();
    sub_4A5C(v37, " to ", 4);
    std::ostream::operator<<();
    if ((v57 & 0x10) != 0)
    {
      v39 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v39 = v53;
      }

      v40 = v52;
      v38 = v39 - v52;
      if (v39 - v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v38 = 0;
        v46 = 0;
LABEL_46:
        *(&__dst + v38) = 0;
        sub_7E854(&__dst, 1u);
        if (v46 < 0)
        {
          operator delete(__dst);
        }

        if (v55 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_51:
        v5[1] = *v5;
        goto LABEL_52;
      }

      v40 = v50;
      v38 = v51 - v50;
      if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v38 >= 0x17)
    {
      operator new();
    }

    v46 = v38;
    if (v38)
    {
      memmove(&__dst, v40, v38);
    }

    goto LABEL_46;
  }

LABEL_52:
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_A819BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
    v22 = *a10;
    if (!*a10)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }
  }

  *(a10 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_A81A58(void *a1, uint64_t a2)
{
  v3 = sub_3A25A8(*a1 + 24, __ROR8__(a2, 32), 0, "trip");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
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

uint64_t sub_A81B90(void *a1, uint64_t a2)
{
  v3 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(*a1 + 24, 1u, 0);
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

void sub_A81CC8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v43 = *(a2 + 36);
  sub_A78D38(a1 + 517, *(a2 + 28), v43, v58);
  v6 = *(v3 + 48);
  if (v6 <= *(v3 + 52))
  {
    v7 = 0;
    v41 = v3;
    v42 = v5;
    while (1)
    {
      v8 = sub_A56F04(v4 + 517, *(v3 + 28), v6, v43);
      v10 = v9;
      v11 = sub_A57920(v4 + 517, *(v3 + 28));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *(sub_A571D4(v14, v6) + 12);
      v16 = __ROR8__(v8, 32);
      v17 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
      v18 = (v17 - *v17);
      if (*v18 < 9u)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        v19 = v18[4];
        if (v19)
        {
          LODWORD(v19) = *(v17 + v19);
        }
      }

      v20 = v19 + ~v15;
      v21 = (*(v3 + 52) - v6) >= v20 ? v20 : *(v3 + 52) - v6;
      v44 = v21 + v15;
      if (!v21)
      {
        break;
      }

      v22 = v5[2];
      if (v7 < v22)
      {
        *v7 = v8;
        *(v7 + 8) = v10;
        *(v7 + 12) = v15;
        *(v7 + 16) = v44;
        v7 += 20;
      }

      else
      {
        v23 = *v5;
        v24 = v7 - *v5;
        v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 2) + 1;
        if (v25 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1794();
        }

        v26 = v4;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2);
        if (2 * v27 > v25)
        {
          v25 = 2 * v27;
        }

        if (v27 >= 0x666666666666666)
        {
          v28 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v28 = v25;
        }

        if (v28)
        {
          if (v28 <= 0xCCCCCCCCCCCCCCCLL)
          {
            operator new();
          }

          sub_1808();
        }

        v29 = 4 * (v24 >> 2);
        *v29 = v8;
        *(v29 + 8) = v10;
        *(v29 + 12) = v15;
        *(v29 + 16) = v44;
        v7 = v29 + 20;
        v30 = v29 - v24;
        memcpy((v29 - v24), v23, v24);
        v5 = v42;
        *v42 = v30;
        v42[1] = v7;
        v42[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v26;
        v3 = v41;
      }

      v5[1] = v7;
      v6 += v21 + 1;
      if (v6 > *(v3 + 52))
      {
        goto LABEL_52;
      }
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_51;
    }

    sub_19594F8(&v47);
    sub_4A5C(&v47, "Block transfer unpacking on SPA journey leg failed due to travel between the same stop indices on a journey leg for trip ", 121);
    sub_A81A58(v4 + 523, v8);
    v31 = std::ostream::operator<<();
    sub_4A5C(v31, " (line ", 7);
    v32 = sub_3A25A8(v4[523] + 24, v16, 0, "trip");
    v33 = (v32 - *v32);
    if (*v33 >= 7u && (v34 = v33[3]) != 0)
    {
      v35 = *(v32 + v34 + 4) | (*(v32 + v34) << 32);
    }

    else
    {
      v35 = 0xFFFFFFFFLL;
    }

    sub_A81B90(v4 + 507, v35);
    v36 = std::ostream::operator<<();
    v37 = sub_4A5C(v36, ") from index ", 13);
    std::ostream::operator<<();
    sub_4A5C(v37, " to ", 4);
    std::ostream::operator<<();
    if ((v57 & 0x10) != 0)
    {
      v39 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v39 = v53;
      }

      v40 = v52;
      v38 = v39 - v52;
      if (v39 - v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v38 = 0;
        v46 = 0;
LABEL_46:
        *(&__dst + v38) = 0;
        sub_7E854(&__dst, 1u);
        if (v46 < 0)
        {
          operator delete(__dst);
        }

        if (v55 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_51:
        v5[1] = *v5;
        goto LABEL_52;
      }

      v40 = v50;
      v38 = v51 - v50;
      if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v38 >= 0x17)
    {
      operator new();
    }

    v46 = v38;
    if (v38)
    {
      memmove(&__dst, v40, v38);
    }

    goto LABEL_46;
  }

LABEL_52:
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_A82260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a19);
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
    v22 = *a10;
    if (!*a10)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }
  }

  *(a10 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_A822FC(uint64_t a1)
{
  sub_A74644(&v5, a1, 0x1FFFFFFFEuLL);
  v2 = 16;
  if (v7)
  {
    v2 = 32;
  }

  if (v6 < *(&v5 + v2))
  {
    sub_A82A90(*(a1 + 4120) + 24, __ROR8__(*v6, 32), 0, "routing stop");
    operator new();
  }

  sub_1C4C(0, 0, &v5, 0, 1);
  sub_A82C20(&v5, a1, 0x1FFFFFFFDuLL);
  v3 = 16;
  if (v7)
  {
    v3 = 32;
  }

  if (v6 < *(&v5 + v3))
  {
    sub_A82A90(*(a1 + 4120) + 24, __ROR8__(*v6, 32), 0, "routing stop");
    operator new();
  }

  sub_1C4C(0, 0, &v5, 0, 1);
  return 0;
}

void sub_A82A24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A82A90(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x15u)
  {
    v9 = *(v8 + 10);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
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
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
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

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A82BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A82C20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v6 = sub_C9E24C(a2 + 3896, a3);
  v7 = *v6;
  *(a1 + 24) = *v6;
  v8 = sub_C9E24C(a2 + 3896, a3);
  *(a1 + 32) = v7 + v8[1] - *v8;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    goto LABEL_29;
  }

  v9 = sub_A74944(a2 + 24, a3, 0, "transfers at stop");
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0xB)
  {
    goto LABEL_29;
  }

  v12 = v10[5];
  if (v10[5])
  {
    v12 = (v12 + v9 + *(v12 + v9));
  }

  if (v11 < 0xD || !v10[6])
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_11:
    v14 = *v12;
    if (*v12)
    {
      v15 = (v12 + 1);
LABEL_13:
      *(a1 + 8) = v15;
      *(a1 + 16) = &v12[3 * v14 + 1];
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v13 = (v9 + v10[6] + *(v9 + v10[6]));
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v13)
  {
    v16 = (v13 - *v13);
    if (*v16 >= 5u)
    {
      v17 = v16[2];
      if (v17)
      {
        if (v11 < 0xD)
        {
          v18 = 0;
        }

        else
        {
          v18 = v10[6];
          if (v10[6])
          {
            v18 = (v18 + v9 + *(v18 + v9));
          }
        }

        v19 = (v18 - *v18);
        if (*v19 < 9u)
        {
          LODWORD(v20) = 0;
        }

        else
        {
          v20 = v19[4];
          if (v20)
          {
            LODWORD(v20) = *(v18 + v20);
          }
        }

        v12 = (v13 + v17 + *(v13 + v17));
        v14 = *v12;
        if (*v12 > v20)
        {
          if (v11 >= 0xD && (v21 = v10[6]) != 0)
          {
            v22 = (v9 + v21 + *(v9 + v21));
          }

          else
          {
            v22 = 0;
          }

          v33 = (v22 - *v22);
          if (*v33 >= 9u && (v34 = v33[4]) != 0)
          {
            v35 = *(v22 + v34);
          }

          else
          {
            v35 = 0;
          }

          v15 = &v12[3 * v35 + 1];
          goto LABEL_13;
        }
      }
    }
  }

LABEL_29:
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = v23;
  *(a1 + 72) = v23 == v24;
  if (v23 == v24)
  {
    v25 = *(a1 + 24);
    *(a1 + 8) = v25;
    *(a1 + 40) = *(a1 + 56);
    if (*(*a1 + 16) != 1)
    {
      return a1;
    }
  }

  else if (*(*a1 + 16) != 1)
  {
    return a1;
  }

  v26 = v23 == v24;
  v27 = 16;
  if (v26)
  {
    v27 = 32;
  }

  if (v25 < *(a1 + v27))
  {
    while (1)
    {
      v28 = __ROR8__(*v25, 32);
      v29 = HIDWORD(v28) != 1 || (v28 + 3) >= 2;
      if (!v29 || (sub_2D5204(**(*a1 + 4120)) & 1) != 0)
      {
        break;
      }

      v30 = *(a1 + 16);
      v25 = (*(a1 + 8) + 12);
      *(a1 + 8) = v25;
      if (v25 == v30)
      {
        v25 = *(a1 + 24);
        *(a1 + 8) = v25;
        *(a1 + 72) = 1;
        if (v25 >= *(a1 + 32))
        {
          return a1;
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v31 = 32;
        }

        else
        {
          v31 = 16;
        }

        if (v25 >= *(a1 + v31))
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_A82F14(uint64_t result, uint64_t a2)
{
  v120 = result;
  if (*(a2 + 200) == *(a2 + 208))
  {
    return result;
  }

  v2 = a2;
  v3 = sub_A520DC(a2);
  v4 = *(v2 + 208) - *(v2 + 200);
  if (!v4)
  {
    return sub_A83920(v2);
  }

  v5 = 0;
  v6 = 0x8E38E38E38E38E39 * (v4 >> 3);
  v7 = HIDWORD(v3);
  v111 = v6;
  v112 = v2;
  while (2)
  {
    v15 = *(v2 + 208) + 72 * ~v5;
    v17 = *v15;
    v16 = *(v15 + 8);
    if (*v15 == v16)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v108 = sub_2D390(exception, "Tightening called on empty journey leg bundle", 0x2DuLL);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((v16 - v17) >> 3) >= 2)
    {
      v109 = __cxa_allocate_exception(0x40uLL);
      v110 = sub_2D390(v109, "Tightening called on bundled journey", 0x24uLL);
    }

    v18 = *(v15 + 24);
    if (v18)
    {
      if (v18 == 1)
      {
        if (*(v17 + 160) != 1)
        {
          sub_5AF20();
        }

        *(v17 + 4) += v7 - *(v17 + 8);
        *(v17 + 8) = v7;
      }

      v19 = *(v17 + 160);
      if (v19 == 1)
      {
        goto LABEL_4;
      }

LABEL_117:
      if (v19)
      {
        sub_5AF20();
      }

      v9 = *(v17 + 8);
      LODWORD(v8) = *(v17 + 4);
      goto LABEL_5;
    }

    if (*(v17 + 160))
    {
      sub_5AF20();
    }

    v113 = v5;
    v20 = *(v17 + 52);
    v21 = sub_A57920(v120 + 517, *(v17 + 32));
    v22 = (v21 - *v21);
    if (*v22 >= 9u && (v23 = v22[4]) != 0)
    {
      v24 = (v21 + v23 + *(v21 + v23));
    }

    else
    {
      v24 = 0;
    }

    v25 = *sub_A571D4(v24, v20);
    v26 = *(v17 + 56);
    v27 = sub_A57920(v120 + 517, *(v17 + 32));
    v28 = (v27 - *v27);
    if (*v28 >= 9u && (v29 = v28[4]) != 0)
    {
      v30 = (v27 + v29 + *(v27 + v29));
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_A571D4(v30, v26);
    sub_A7905C(v132, v120, __ROR8__(*v31, 32), 0, 0, 0);
    v32 = v135;
    if (v135 >= v136)
    {
      goto LABEL_116;
    }

    v117 = v7;
    v114 = __ROR8__(v25, 32);
    while (2)
    {
      v119 = __ROR8__(*v32, 32);
      sub_A79708(v123, v120, v119, *(v32 + 10), 0, 0);
      v33 = __ROR8__(*v126, 32);
      v138 = &v141;
      v139 = 1;
      v140 = v114;
      v141 = v33;
      v137[0] = &v140;
      v137[1] = 1;
      sub_A848D4(v123, &v138, v137, &v121);
      v34 = v121;
      v118 = v122;
      if (v121 == v122)
      {
        goto LABEL_101;
      }

      v116 = 4 * v119;
      do
      {
        v35 = *v34;
        v36 = v34[1];
        v126 = v125 + 16 * v35;
        if (v129 == 1)
        {
          v37 = sub_A84F48(v120, v123, v117, 1u);
        }

        else
        {
          v37 = sub_A8552C(v123, v117, 1);
        }

        if (v37)
        {
          v39 = v127;
          v38 = v128;
          v41 = v130;
          v40 = v131;
          v42 = &v131;
          if (!v129)
          {
            v42 = v128;
          }

          v43 = *v42;
          v44 = (v124 + *(v124 - *v124 + 6));
          v45 = &v44[2 * (v128[1] + v36)] + *v44;
          v126 = v125 + 16 * v36;
          LODWORD(v45) = *(v45 + 8) + v43;
          v46 = *(v126 + 8);
          v47 = v45 - v46;
          v48 = *(v17 + 4);
          v49 = v48 / -10;
          v50 = v48 % 10;
          v51 = v48 < 0 ? -5 : 5;
          if (v47 > (v49 + *(v17 + 12) + (((-103 * (v51 + v50)) >> 15) & 1) + ((-103 * (v51 + v50)) >> 10)))
          {
            v115 = v129;
            *(v17 + 4) = 10 * v46;
            v52 = sub_A5706C(v120 + 517, v119);
            v53 = v52;
            v54 = &v52[-*v52];
            if (*v54 < 5u)
            {
              v55 = 0;
            }

            else
            {
              v55 = *(v54 + 2);
              if (v55)
              {
                v55 += &v52[*&v52[v55]];
              }
            }

            v56 = (v55 + v116 + 4 + *(v55 + v116 + 4));
            v57 = (v56 - *v56);
            if (*v57 >= 9u && (v58 = v57[4]) != 0)
            {
              v59 = (v56 + v58 + *(v56 + v58));
            }

            else
            {
              v59 = 0;
            }

            v60 = sub_A571D4(v59, v36);
            v61 = (v53 - *v53);
            if (*v61 < 0xBu)
            {
              v62 = 0;
              v63 = (v56 - *v56);
              if (*v63 >= 0x11u)
              {
LABEL_57:
                v64 = v63[8];
                if (v63[8])
                {
                  LODWORD(v64) = *(v56 + v64);
                }

LABEL_61:
                v65 = -1431655765 * ((v38 - v39) >> 2);
                v66 = sub_A57320(v62, v64 + *(v56 + v63[2] + *(v56 + v63[2])) * v65 + *(v60 + 14));
                if (v66)
                {
                  v67 = __ROR8__(*v66, 32);
                  v68 = *(v66 + 8);
                }

                else
                {
                  v68 = 0;
                  v67 = 0xFFFFFFFFLL;
                }

                v138 = v67;
                LODWORD(v139) = v68;
                v69 = sub_A57920(v120 + 517, v119);
                v70 = (v69 - *v69);
                if (*v70 >= 9u && (v71 = v70[4]) != 0)
                {
                  v72 = (v69 + v71 + *(v69 + v71));
                }

                else
                {
                  v72 = 0;
                }

                v73 = *(sub_A571D4(v72, v36) + 12);
                if ((v115 & (v41 != -1)) != 0)
                {
                  v74 = v40;
                }

                else
                {
                  v74 = 0x7FFFFFFF;
                }

                *(v17 + 8) = sub_A56700(v120 + 523, &v138, v73, v74);
                *(v17 + 16) = v75;
                v76 = sub_A5706C(v120 + 517, v119);
                v77 = v76;
                v78 = &v76[-*v76];
                if (*v78 < 5u)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = *(v78 + 2);
                  if (v79)
                  {
                    v79 += &v76[*&v76[v79]];
                  }
                }

                v80 = (v79 + v116 + 4 + *(v79 + v116 + 4));
                v81 = (v80 - *v80);
                if (*v81 >= 9u && (v82 = v81[4]) != 0)
                {
                  v83 = (v80 + v82 + *(v80 + v82));
                }

                else
                {
                  v83 = 0;
                }

                v84 = sub_A571D4(v83, v35);
                v85 = (v77 - *v77);
                if (*v85 < 0xBu)
                {
                  v86 = 0;
                  v87 = (v80 - *v80);
                  if (*v87 >= 0x11u)
                  {
LABEL_83:
                    v88 = v87[8];
                    if (v87[8])
                    {
                      LODWORD(v88) = *(v80 + v88);
                    }

                    goto LABEL_87;
                  }
                }

                else
                {
                  v86 = v85[5];
                  if (v86)
                  {
                    v86 = (v86 + v77 + *(v86 + v77));
                  }

                  v87 = (v80 - *v80);
                  if (*v87 >= 0x11u)
                  {
                    goto LABEL_83;
                  }
                }

                LODWORD(v88) = 0;
LABEL_87:
                v89 = sub_A57320(v86, v88 + *(v80 + v87[2] + *(v80 + v87[2])) * v65 + *(v84 + 14));
                if (v89)
                {
                  v90 = __ROR8__(*v89, 32);
                  v91 = *(v89 + 8);
                }

                else
                {
                  v91 = 0;
                  v90 = 0xFFFFFFFFLL;
                }

                v138 = v90;
                LODWORD(v139) = v91;
                v92 = sub_A57920(v120 + 517, v119);
                v93 = (v92 - *v92);
                if (*v93 >= 9u && (v94 = v93[4]) != 0)
                {
                  v95 = (v92 + v94 + *(v92 + v94));
                }

                else
                {
                  v95 = 0;
                }

                v96 = sub_A571D4(v95, v35);
                *(v17 + 20) = sub_A56A5C(v120 + 523, &v138, *(v96 + 12), v74);
                *(v17 + 28) = v97;
                *(v17 + 52) = v36;
                *(v17 + 56) = v35;
                *(v17 + 32) = v119;
                v98 = 0xFFFFFFFF00000000;
                if (v129)
                {
                  v98 = v130 << 32;
                }

                v99 = (-1431655765 * ((v128 - v127) >> 2)) | v98;
                if (v129)
                {
                  v100 = v131;
                }

                else
                {
                  v100 = 0x7FFFFFFF;
                }

                *(v17 + 40) = v99;
                *(v17 + 48) = v100;
                goto LABEL_34;
              }
            }

            else
            {
              v62 = v61[5];
              if (v62)
              {
                v62 = (v62 + v53 + *(v62 + v53));
              }

              v63 = (v56 - *v56);
              if (*v63 >= 0x11u)
              {
                goto LABEL_57;
              }
            }

            LODWORD(v64) = 0;
            goto LABEL_61;
          }
        }

LABEL_34:
        v34 += 2;
      }

      while (v34 != v118);
      v34 = v121;
      v2 = v112;
LABEL_101:
      if (v34)
      {
        v122 = v34;
        operator delete(v34);
      }

      v101 = v136;
      v32 = v135 + 16;
      v135 = v32;
      if (v32 == v136)
      {
        v102 = i + 2;
        for (i = v102; v102 < v134; i = v102)
        {
          v32 = *v102;
          v101 = v102[1];
          if (*v102 != v101)
          {
            v135 = *v102;
            v136 = v101;
            goto LABEL_109;
          }

          v102 += 2;
        }

        break;
      }

LABEL_109:
      while (v32 < v101)
      {
        v103 = sub_A795E8(v132);
        v32 = v135;
        v101 = v136;
        if (!v103)
        {
          break;
        }

        v32 = v135 + 16;
        v135 = v32;
        if (v32 == v136)
        {
          v104 = i;
          while (1)
          {
            v104 += 2;
            i = v104;
            if (v104 >= v134)
            {
              goto LABEL_31;
            }

            v105 = *v104;
            v106 = v104[1];
            if (*v104 != v106)
            {
              v135 = *v104;
              v136 = v106;
              v101 = v106;
              v32 = v105;
              goto LABEL_109;
            }
          }
        }
      }

LABEL_31:
      if (v32 < v101)
      {
        continue;
      }

      break;
    }

LABEL_116:
    v5 = v113;
    v6 = v111;
    v19 = *(v17 + 160);
    if (v19 != 1)
    {
      goto LABEL_117;
    }

LABEL_4:
    v8 = *(v17 + 4);
    v9 = v8 | (v8 << 32);
LABEL_5:
    if (v19)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = HIDWORD(v9);
    v12 = v10 / -10;
    v13 = v10 % 10;
    if (v10 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    LODWORD(v7) = v12 + v11 + (((-103 * (v14 + v13)) >> 15) & 1) + ((-103 * (v14 + v13)) >> 10);
    if (++v5 != v6)
    {
      continue;
    }

    return sub_A83920(v2);
  }
}

void sub_A838F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_A83920(uint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  v3 = *(result + 208);
  v4 = (result + 200);
  if (v3 - v2 == 72)
  {
    if (v2 == v3 || *(v2 + 24) == 1)
    {
      return result;
    }
  }

  else if (v2 == v3)
  {
    return result;
  }

  v6 = sub_A8449C((result + 200), 0);
  v7 = sub_A8449C(v4, 1uLL);
  v8 = sub_A78688(v6, 0);
  if (*(v8 + 160) != 1 || (v9 = v8, result = sub_A846B8(v7, 0), *(result + 160)))
  {
LABEL_28:
    sub_5AF20();
  }

  v10 = *(result + 4);
  if (v10 < 0)
  {
    v11 = -5;
  }

  else
  {
    v11 = 5;
  }

  *(v9 + 4) += *(result + 12) - *(v9 + 8) + v10 / -10 + (((-103 * (v11 + v10 % 10)) >> 15) & 1) + ((-103 * (v11 + v10 % 10)) >> 10);
  v12 = *(result + 4);
  if (v12 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  *(v9 + 8) = v12 / -10 + *(result + 12) + (((-103 * (v13 + v12 % 10)) >> 15) & 1) + ((-103 * (v13 + v12 % 10)) >> 10);
  v14 = *(v1 + 208);
  for (i = *(v1 + 200) + 72; i != v14; i += 72)
  {
    if (*(i + 24) == 1)
    {
      v16 = *(i + 8) - *i;
      if (v16)
      {
        v17 = 0;
        v18 = 0xCF3CF3CF3CF3CF3DLL * (v16 >> 3);
        do
        {
          v19 = sub_A78688(i, v17);
          if (*(v19 + 160) != 1)
          {
            goto LABEL_28;
          }

          v20 = v19;
          result = sub_A78688((i - 72), v17);
          if (*(result + 160))
          {
            goto LABEL_28;
          }

          *(v20 + 8) = *(v20 + 8) - *(v20 + 4) + *(result + 24);
          *(v20 + 4) = *(result + 24);
          ++v17;
        }

        while (v18 != v17);
        v14 = *(v1 + 208);
      }
    }
  }

  return result;
}

uint64_t sub_A83B68(uint64_t result, uint64_t a2)
{
  v110 = result;
  if (*(a2 + 200) == *(a2 + 208))
  {
    return result;
  }

  v2 = a2;
  v3 = sub_A51E58(a2, 0);
  v4 = *(v2 + 208) - *(v2 + 200);
  if (!v4)
  {
    return sub_A83920(v2);
  }

  v5 = v3;
  v6 = 0;
  v7 = 0x8E38E38E38E38E39 * (v4 >> 3);
  v101 = v7;
  v102 = v2;
  while (1)
  {
LABEL_5:
    v8 = *(v2 + 200) + 72 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    if (*v8 == v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v98 = sub_2D390(exception, "Tightening called on empty journey leg bundle", 0x2DuLL);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((v9 - v10) >> 3) >= 2)
    {
      v99 = __cxa_allocate_exception(0x40uLL);
      v100 = sub_2D390(v99, "Tightening called on bundled journey", 0x24uLL);
    }

    v11 = *(v8 + 24);
    if (!v11)
    {
      break;
    }

    if (v11 == 1)
    {
      if (*(v10 + 160) != 1)
      {
        sub_5AF20();
      }

      v12 = *(v10 + 8) + HIDWORD(v5) - *(v10 + 4);
      *(v10 + 4) = HIDWORD(v5);
      *(v10 + 8) = v12;
    }

    v13 = *(v10 + 160);
    if (v13 == 1)
    {
      goto LABEL_4;
    }

LABEL_107:
    if (v13)
    {
      sub_5AF20();
    }

    v5 = *(v10 + 20);
    if (++v6 == v7)
    {
      return sub_A83920(v2);
    }
  }

  if (*(v10 + 160))
  {
    sub_5AF20();
  }

  v103 = v6;
  v108 = v10;
  v14 = *(v10 + 56);
  v15 = sub_A57920(v110 + 517, *(v10 + 32));
  v16 = (v15 - *v15);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = *sub_A571D4(v18, v14);
  v20 = *(v108 + 52);
  v21 = sub_A57920(v110 + 517, *(v108 + 32));
  v22 = (v21 - *v21);
  if (*v22 >= 9u && (v23 = v22[4]) != 0)
  {
    v24 = (v21 + v23 + *(v21 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_A571D4(v24, v20);
  sub_A7905C(v122, v110, __ROR8__(*v25, 32), 0, 0, 0);
  v26 = v125;
  if (v125 >= v126)
  {
    goto LABEL_106;
  }

  v106 = HIDWORD(v5);
  v104 = __ROR8__(v19, 32);
  while (2)
  {
    v109 = __ROR8__(*v26, 32);
    sub_A79708(v113, v110, v109, *(v26 + 8), 0, 0);
    v27 = __ROR8__(*v116, 32);
    v128 = &v131;
    v129 = 1;
    v130 = v104;
    v131 = v27;
    v127[0] = &v130;
    v127[1] = 1;
    sub_A79B68(v113, &v128, v127, &v111);
    v28 = v111;
    v107 = v112;
    if (v111 == v112)
    {
      goto LABEL_91;
    }

    v105 = 4 * v109;
    do
    {
      v29 = *v28;
      v30 = v28[1];
      v116 = v115 + 16 * v29;
      v31 = *(v116 + 8);
      if (v119 == 1)
      {
        v32 = sub_A7A1E8(v110, v113, v31 + v106, 1u);
      }

      else
      {
        v32 = sub_A7A710(v113, v31 + v106, 1);
      }

      if (v32)
      {
        v33 = v119;
        v35 = v117;
        v34 = v118;
        v36 = v120;
        v37 = v121;
        v38 = &v121;
        if (!v119)
        {
          v38 = v118;
        }

        v39 = *v38;
        v40 = (v114 + *(v114 - *v114 + 6));
        v41 = &v40[2 * (v118[1] + v30)] + *v40;
        v116 = v115 + 16 * v30;
        if (*(v41 + 4) + v39 < *(v108 + 24))
        {
          *(v108 + 4) = 10 * v31;
          v42 = sub_A5706C(v110 + 517, v109);
          v43 = v42;
          v44 = &v42[-*v42];
          if (*v44 < 5u)
          {
            v45 = 0;
          }

          else
          {
            v45 = *(v44 + 2);
            if (v45)
            {
              v45 += &v42[*&v42[v45]];
            }
          }

          v46 = (v45 + v105 + 4 + *(v45 + v105 + 4));
          v47 = (v46 - *v46);
          if (*v47 >= 9u && (v48 = v47[4]) != 0)
          {
            v49 = (v46 + v48 + *(v46 + v48));
          }

          else
          {
            v49 = 0;
          }

          v50 = sub_A571D4(v49, v29);
          v51 = (v43 - *v43);
          if (*v51 < 0xBu)
          {
            v52 = 0;
            v53 = (v46 - *v46);
            if (*v53 >= 0x11u)
            {
LABEL_47:
              v54 = v53[8];
              if (v53[8])
              {
                LODWORD(v54) = *(v46 + v54);
              }

LABEL_51:
              v55 = -1431655765 * ((v34 - v35) >> 2);
              v56 = sub_A57320(v52, v54 + *(v46 + v53[2] + *(v46 + v53[2])) * v55 + *(v50 + 14));
              if (v56)
              {
                v57 = __ROR8__(*v56, 32);
                v58 = *(v56 + 8);
              }

              else
              {
                v58 = 0;
                v57 = 0xFFFFFFFFLL;
              }

              v128 = v57;
              LODWORD(v129) = v58;
              v59 = sub_A57920(v110 + 517, v109);
              v60 = (v59 - *v59);
              if (*v60 >= 9u && (v61 = v60[4]) != 0)
              {
                v62 = (v59 + v61 + *(v59 + v61));
              }

              else
              {
                v62 = 0;
              }

              v63 = *(sub_A571D4(v62, v29) + 12);
              if ((v33 & (v36 != -1)) != 0)
              {
                v64 = v37;
              }

              else
              {
                v64 = 0x7FFFFFFF;
              }

              *(v108 + 8) = sub_A56700(v110 + 523, &v128, v63, v64);
              *(v108 + 16) = v65;
              v66 = sub_A5706C(v110 + 517, v109);
              v67 = v66;
              v68 = &v66[-*v66];
              if (*v68 < 5u)
              {
                v69 = 0;
              }

              else
              {
                v69 = *(v68 + 2);
                if (v69)
                {
                  v69 += &v66[*&v66[v69]];
                }
              }

              v70 = (v69 + v105 + 4 + *(v69 + v105 + 4));
              v71 = (v70 - *v70);
              if (*v71 >= 9u && (v72 = v71[4]) != 0)
              {
                v73 = (v70 + v72 + *(v70 + v72));
              }

              else
              {
                v73 = 0;
              }

              v74 = sub_A571D4(v73, v30);
              v75 = (v67 - *v67);
              if (*v75 < 0xBu)
              {
                v76 = 0;
                v77 = (v70 - *v70);
                if (*v77 >= 0x11u)
                {
LABEL_73:
                  v78 = v77[8];
                  if (v77[8])
                  {
                    LODWORD(v78) = *(v70 + v78);
                  }

                  goto LABEL_77;
                }
              }

              else
              {
                v76 = v75[5];
                if (v76)
                {
                  v76 = (v76 + v67 + *(v76 + v67));
                }

                v77 = (v70 - *v70);
                if (*v77 >= 0x11u)
                {
                  goto LABEL_73;
                }
              }

              LODWORD(v78) = 0;
LABEL_77:
              v79 = sub_A57320(v76, v78 + *(v70 + v77[2] + *(v70 + v77[2])) * v55 + *(v74 + 14));
              if (v79)
              {
                v80 = __ROR8__(*v79, 32);
                v81 = *(v79 + 8);
              }

              else
              {
                v81 = 0;
                v80 = 0xFFFFFFFFLL;
              }

              v128 = v80;
              LODWORD(v129) = v81;
              v82 = sub_A57920(v110 + 517, v109);
              v83 = (v82 - *v82);
              if (*v83 >= 9u && (v84 = v83[4]) != 0)
              {
                v85 = (v82 + v84 + *(v82 + v84));
              }

              else
              {
                v85 = 0;
              }

              v86 = sub_A571D4(v85, v30);
              *(v108 + 20) = sub_A56A5C(v110 + 523, &v128, *(v86 + 12), v64);
              *(v108 + 28) = v87;
              *(v108 + 52) = v29;
              *(v108 + 56) = v30;
              *(v108 + 32) = v109;
              v88 = 0xFFFFFFFF00000000;
              if (v119)
              {
                v88 = v120 << 32;
              }

              v89 = (-1431655765 * ((v118 - v117) >> 2)) | v88;
              if (v119)
              {
                v90 = v121;
              }

              else
              {
                v90 = 0x7FFFFFFF;
              }

              *(v108 + 40) = v89;
              *(v108 + 48) = v90;
              goto LABEL_27;
            }
          }

          else
          {
            v52 = v51[5];
            if (v52)
            {
              v52 = (v52 + v43 + *(v52 + v43));
            }

            v53 = (v46 - *v46);
            if (*v53 >= 0x11u)
            {
              goto LABEL_47;
            }
          }

          LODWORD(v54) = 0;
          goto LABEL_51;
        }
      }

LABEL_27:
      v28 += 2;
    }

    while (v28 != v107);
    v28 = v111;
    v2 = v102;
LABEL_91:
    if (v28)
    {
      v112 = v28;
      operator delete(v28);
    }

    v91 = v126;
    v26 = v125 + 16;
    v125 = v26;
    if (v26 == v126)
    {
      v92 = i + 2;
      for (i = v92; v92 < v124; i = v92)
      {
        v26 = *v92;
        v91 = v92[1];
        if (*v92 != v91)
        {
          v125 = *v92;
          v126 = v91;
          goto LABEL_99;
        }

        v92 += 2;
      }

      break;
    }

LABEL_99:
    while (v26 < v91)
    {
      v93 = sub_A795E8(v122);
      v26 = v125;
      v91 = v126;
      if (!v93)
      {
        break;
      }

      v26 = v125 + 16;
      v125 = v26;
      if (v26 == v126)
      {
        v94 = i;
        while (1)
        {
          v94 += 2;
          i = v94;
          if (v94 >= v124)
          {
            goto LABEL_24;
          }

          v95 = *v94;
          v96 = v94[1];
          if (*v94 != v96)
          {
            v125 = *v94;
            v126 = v96;
            v91 = v96;
            v26 = v95;
            goto LABEL_99;
          }
        }
      }
    }

LABEL_24:
    if (v26 < v91)
    {
      continue;
    }

    break;
  }

LABEL_106:
  v6 = v103;
  v7 = v101;
  v10 = v108;
  v13 = *(v108 + 160);
  if (v13 != 1)
  {
    goto LABEL_107;
  }

LABEL_4:
  v5 = *(v10 + 8) | (*(v10 + 8) << 32);
  if (++v6 != v7)
  {
    goto LABEL_5;
  }

  return sub_A83920(v2);
}

void sub_A84470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_A8449C(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 72 * a2;
}

void sub_A845D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_A846B8(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 168 * a2;
}

void sub_A847F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_A848D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a1[5];
  v9 = (v8 - 16);
  a1[4] = v8 - 16;
  v58 = v7;
  if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v9 >= a1[3])
  {
    do
    {
      if (v9 >= a1[5])
      {
        break;
      }

      v10 = __ROR8__(*v9, 32);
      if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
      {
        break;
      }

      v12 = sub_2D5204(**(*a1 + 4120));
      v9 = a1[4];
      if (v12)
      {
        break;
      }

      v9 -= 2;
      a1[4] = v9;
    }

    while (v9 >= a1[3]);
    v8 = a1[5];
  }

  v13 = a1[3];
  if (v9 >= v13 && v9 < v8)
  {
    v15 = 0;
    v57 = a3;
    do
    {
      v16 = *(a3 + 8);
      if (!v16)
      {
        goto LABEL_59;
      }

      v17 = __ROR8__(*v9, 32);
      v18 = *a3;
      v19 = 8 * v16;
      while (v17 != *v18)
      {
        ++v18;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_59;
        }
      }

      if ((*(v9 + 15) & 2) == 0)
      {
LABEL_59:
        v23 = v15;
        v39 = *(a2 + 8);
        if (!v39)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v20 = (v9 - v13) >> 4;
      v21 = a1[6];
      if (v21)
      {
        v22 = *(v21 + 4 * v20);
        v23 = 0;
        if (!v15)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        if (!v15)
        {
          goto LABEL_56;
        }
      }

      v24 = -1;
      for (i = 0; i != v15; i += 16)
      {
        if ((*(i + 8) & v22) == 0)
        {
          v24 = *i;
          *i = -1;
        }
      }

      if (v24 != -1)
      {
        v27 = v7[1];
        v26 = v7[2];
        if (v27 >= v26)
        {
          v29 = *v7;
          v30 = v27 - *v7;
          v31 = v30 >> 3;
          v32 = (v30 >> 3) + 1;
          if (v32 >> 61)
          {
            sub_1794();
          }

          v33 = v26 - v29;
          if (v33 >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v35 = (8 * v31);
          *v35 = v24;
          v35[1] = v20;
          v28 = 8 * v31 + 8;
          memcpy(0, v29, v30);
          v7 = v58;
          *v58 = 0;
          v58[2] = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v27 = v24;
          v27[1] = v20;
          v28 = (v27 + 2);
        }

        v7[1] = v28;
      }

      a3 = v57;
      v23 = 0;
      v36 = 0;
      while (1)
      {
        v37 = *v36;
        v36 += 4;
        if (v37 == -1)
        {
          break;
        }

        v23 = v36;
        if (v36 == v15)
        {
          goto LABEL_59;
        }
      }

      if (v36 != v15)
      {
        v38 = v23 + 4;
        do
        {
          if (*v38 != -1)
          {
            *v23 = *v38;
            *(v23 + 1) = *(v38 + 1);
            v23 += 4;
          }

          v38 += 4;
        }

        while (v38 != v15);
      }

LABEL_56:
      if (v23 == v15)
      {
        goto LABEL_59;
      }

      v39 = *(a2 + 8);
      if (!v39)
      {
        goto LABEL_65;
      }

LABEL_60:
      v40 = a1[4];
      v41 = __ROR8__(*v40, 32);
      v42 = *a2;
      v43 = 8 * v39;
      while (v41 != *v42)
      {
        ++v42;
        v43 -= 8;
        if (!v43)
        {
          goto LABEL_65;
        }
      }

      if (*(v40 + 15))
      {
        v49 = (v40 - a1[3]) >> 4;
        v50 = a1[6];
        if (v50)
        {
          v51 = *(v50 + 4 * v49);
          v52 = 0;
          if (!v23)
          {
            goto LABEL_96;
          }

LABEL_90:
          v53 = 16;
          while ((v51 & ~*(v53 - 8)) != 0)
          {
            v54 = v53 == v23;
            v53 += 16;
            if (v54)
            {
              goto LABEL_102;
            }
          }

          v52 = v53 - 16;
          if ((v53 - 16) != v23)
          {
            while (v53 != v23)
            {
              if ((v51 & ~*(v53 + 8)) != 0)
              {
                *v52 = *v53;
                *(v52 + 8) = *(v53 + 8);
                v52 += 16;
              }

              v53 += 16;
            }
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          if (v23)
          {
            goto LABEL_90;
          }
        }

LABEL_96:
        if (v52 == v23)
        {
LABEL_102:
          v52 = v23;
        }

        v55 = v52 >> 4;
        if (((v52 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v52 >> 4 != -1)
        {
          if (!(((v52 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v56 = 16 * v55;
        *v56 = v49;
        *(v56 + 8) = v51;
        v15 = 16 * v55 + 16;
        memcpy(0, 0, v52);
        v7 = v58;
        goto LABEL_66;
      }

LABEL_65:
      v15 = v23;
LABEL_66:
      v13 = a1[3];
      v9 = (a1[4] - 16);
      a1[4] = v9;
      if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v9 >= v13 && v9 < a1[5])
      {
        do
        {
          v45 = __ROR8__(*v9, 32);
          if (HIDWORD(v45) == 1 && (v45 + 3) < 2)
          {
            break;
          }

          v47 = sub_2D5204(**(*a1 + 4120));
          v13 = a1[3];
          v9 = a1[4];
          if (v47)
          {
            break;
          }

          v9 -= 2;
          a1[4] = v9;
        }

        while (v9 >= v13 && v9 < a1[5]);
      }
    }

    while (v9 >= v13 && v9 < a1[5]);
  }
}

void sub_A84EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    v13 = *a11;
    if (!*a11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a11;
    if (!*a11)
    {
      goto LABEL_3;
    }
  }

  *(a11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL sub_A84F48(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 56)) >> 2);
  if (!v4)
  {
    return 0;
  }

  v6 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  v7 = *(a2 + 88);
  v8 = 4 * v7;
  v9 = v4;
  for (i = v4 - 1; ; --i)
  {
    v11 = sub_A5706C((a1 + 4136), v7);
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

    v14 = (v13 + v8 + 4 + *(v13 + v8 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    sub_A7AC40(v17, i);
    v18 = sub_A5706C((a1 + 4136), v7);
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

    v22 = (v21 + v8 + 4 + *(v21 + v8 + 4));
    v23 = (v22 - *v22);
    if (*v23 >= 7u && (v24 = v23[3]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_A7AC40(v25, i);
    v27 = *v26;
    v28 = (v19 - *v19);
    if (*v28 < 9u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[4];
      if (v29)
      {
        v29 = (v29 + v19 + *(v29 + v19));
      }
    }

    v30 = *(sub_A7AD90(v29, v26[2] >> 8) + 4);
    v31 = sub_A5706C((a1 + 4136), v7);
    v32 = v31;
    v33 = &v31[-*v31];
    if (*v33 < 5u)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v33 + 2);
      if (v34)
      {
        v34 += &v31[*&v31[v34]];
      }
    }

    v35 = (v34 + v8 + 4 + *(v34 + v8 + 4));
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = (v35 + v37 + *(v35 + v37));
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_A7AC40(v38, i);
    v40 = (v32 - *v32);
    if (*v40 < 7u)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40[3];
      if (v41)
      {
        v41 = (v41 + v32 + *(v41 + v32));
      }
    }

    if (v30 + v27 + *sub_A7AEE0(v41, *(v39 + 4) + v6) <= a3)
    {
      break;
    }

    if (!--v9)
    {
      return 0;
    }
  }

  if (i == -1)
  {
    return 0;
  }

  v42 = *(a2 + 88);
  v44 = *(a2 + 24);
  v43 = *(a2 + 32);
  v45 = sub_A5706C((a1 + 4136), v42);
  v46 = &v45[-*v45];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v45[*&v45[v47]];
    }
  }

  v48 = 4 * v42;
  v49 = (v47 + v48 + 4 + *(v47 + v48 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = v43 - v44;
  v54 = *(sub_A7AC40(v52, i) + 8);
  v55 = sub_A5706C((a1 + 4136), v42);
  v56 = v55;
  v57 = &v55[-*v55];
  if (*v57 < 5u)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + 2);
    if (v58)
    {
      v58 += &v55[*&v55[v58]];
    }
  }

  v59 = v58 + v48;
  v60 = v53 >> 4;
  v61 = (v59 + 4 + *(v59 + 4));
  v62 = (v61 - *v61);
  if (*v62 >= 7u && (v63 = v62[3]) != 0)
  {
    v64 = (v61 + v63 + *(v61 + v63));
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_A7AC40(v64, i);
  v66 = (v56 - *v56);
  if (*v66 < 7u)
  {
    v68 = sub_A7AEE0(0, *(v65 + 4) + v60);
    if (!v54)
    {
LABEL_65:
      v71 = -1;
      goto LABEL_66;
    }
  }

  else
  {
    v67 = v66[3];
    if (v67)
    {
      v67 = (v67 + v56 + *(v67 + v56));
    }

    v68 = sub_A7AEE0(v67, *(v65 + 4) + v60);
    if (!v54)
    {
      goto LABEL_65;
    }
  }

  v69 = *v68;
  v70 = -v54;
  v71 = v54 - 1;
  while ((sub_A7AB44((a1 + 4136), v42, i, v71) + v69) > a3)
  {
    --v71;
    if (__CFADD__(v70++, 1))
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v73 = *(a2 + 88);
  v74 = *(a2 + 24);
  v75 = *(a2 + 32);
  v76 = sub_A5706C((a1 + 4136), v73);
  v77 = v76;
  v78 = &v76[-*v76];
  if (*v78 < 5u)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v78 + 2);
    if (v79)
    {
      v79 += &v76[*&v76[v79]];
    }
  }

  v80 = (v79 + 4 * v73 + 4 + *(v79 + 4 * v73 + 4));
  v81 = (v80 - *v80);
  if (*v81 >= 7u && (v82 = v81[3]) != 0)
  {
    v83 = (v80 + v82 + *(v80 + v82));
  }

  else
  {
    v83 = 0;
  }

  v84 = sub_A7AC40(v83, i);
  v85 = (v77 - *v77);
  if (*v85 < 7u)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85[3];
    if (v86)
    {
      v86 = (v86 + v77 + *(v86 + v77));
    }
  }

  v87 = *sub_A7AEE0(v86, *(v84 + 4) + ((v75 - v74) >> 4));
  v88 = sub_A7AA48((a1 + 4136), v73, i, v71);
  *(a2 + 64) = *(a2 + 56) + 12 * i;
  if (*(a2 + 96) == 1)
  {
    v89 = a3 - v87;
    if (v88 < a3 - v87)
    {
      v89 = v88;
    }

    *(a2 + 100) = v71;
    *(a2 + 104) = v89;
  }

  sub_A7B558(a2, a4);
  v90 = *(a2 + 64);
  if (v90 < *(a2 + 56))
  {
    return 0;
  }

  return v90 < *(a2 + 72);
}