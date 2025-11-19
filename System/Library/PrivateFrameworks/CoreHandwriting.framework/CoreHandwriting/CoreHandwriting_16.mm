void sub_1838B716C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
    sub_18369F0F0(&a24);
    _Unwind_Resume(a1);
  }

  sub_18369F0F0(&a24);
  _Unwind_Resume(a1);
}

void sub_1838B74C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0x555555555555555)
  {
    v9 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v10 = 24 * v6;
  *v10 = *a2;
  *(v10 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = 24 * v6 + 24;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v10 - v12;
  memcpy((v10 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  *(a1 + 8) = v5;
}

void sub_1838B762C(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v36 = v4;
  v37[0] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *v4;
  v6 = v4[1];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v8 = a2[4];
  v9 = a2[5];
  *&__s1 = v8;
  *(&__s1 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v10 = *(v8 + 72);
  v11 = (v8 + 80);
  if (v10 != (v8 + 80))
  {
    do
    {
      sub_1837DE228(&v36, v37, v10 + 4);
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v11);
    v9 = *(&__s1 + 1);
    if (!*(&__s1 + 1))
    {
      goto LABEL_24;
    }

LABEL_22:
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    goto LABEL_24;
  }

  if (v9)
  {
    goto LABEL_22;
  }

LABEL_24:
  v35 = 12;
  strcpy(&__s1, "input_length");
  v15 = v37[0];
  if (!v37[0])
  {
    goto LABEL_63;
  }

  v16 = v37[0];
  while (1)
  {
    v17 = *(v16 + 55);
    if (v17 >= 0)
    {
      v18 = *(v16 + 55);
    }

    else
    {
      v18 = *(v16 + 40);
    }

    if (v17 >= 0)
    {
      v19 = (v16 + 32);
    }

    else
    {
      v19 = *(v16 + 32);
    }

    if (v18 >= 0xC)
    {
      v20 = 12;
    }

    else
    {
      v20 = v18;
    }

    v21 = memcmp(&__s1, v19, v20);
    v22 = v21 < 0;
    if (!v21)
    {
      v22 = v18 > 0xC;
    }

    if (v22)
    {
      goto LABEL_26;
    }

    v23 = memcmp(v19, &__s1, v20);
    v24 = v18 < 0xC;
    if (v23)
    {
      v24 = v23 < 0;
    }

    if (!v24)
    {
      break;
    }

    v16 += 8;
LABEL_26:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_63;
    }
  }

  v35 = 12;
  strcpy(&__s1, "input_length");
  v25 = v15;
  while (1)
  {
    while (1)
    {
      v26 = v25[55];
      if (v26 >= 0)
      {
        v27 = v25[55];
      }

      else
      {
        v27 = *(v25 + 5);
      }

      if (v26 >= 0)
      {
        v28 = v25 + 32;
      }

      else
      {
        v28 = *(v25 + 4);
      }

      if (v27 >= 0xC)
      {
        v29 = 12;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(&__s1, v28, v29);
      v31 = v30 < 0;
      if (!v30)
      {
        v31 = v27 > 0xC;
      }

      if (!v31)
      {
        break;
      }

      v25 = *v25;
      if (!v25)
      {
        goto LABEL_62;
      }
    }

    v32 = memcmp(v28, &__s1, v29);
    v33 = v27 < 0xC;
    if (v32)
    {
      v33 = v32 < 0;
    }

    if (!v33)
    {
      break;
    }

    v25 = *(v25 + 1);
    if (!v25)
    {
LABEL_62:
      sub_1836868A4("map::at:  key not found");
    }
  }

LABEL_63:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_18368922C(&v36, v15);
}

void sub_1838B7AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, char a13, uint64_t a14, uint64_t a15, char a16, char *a17)
{
  sub_18368922C(&a16, a17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1838B7B1C(void *a1, void *a2)
{
  v4 = a2[5];
  v40 = a2[4];
  v41[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[2];
  v6 = a2[3];
  v41[2] = v5;
  v41[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memset(__s1, 0, 24);
  v8 = *v5;
  v7 = *(v5 + 1);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18384AA0C(__s1, &v42);
  if (v6 && !atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v6 + 16))(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v41[0] && !atomic_fetch_add(v41[0] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v41[0] + 16))(v41[0]);
    std::__shared_weak_count::__release_weak(v41[0]);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v9 = v43 - v42;
    if (v43 != v42)
    {
LABEL_14:
      if ((v9 >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_18368964C();
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v9 = v43 - v42;
    if (v43 != v42)
    {
      goto LABEL_14;
    }
  }

  v29 = a2[4];
  v15 = a2[5];
  *&__s1[0] = v29;
  *(&__s1[0] + 1) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v10 = *(v29 + 72);
  v11 = (v29 + 80);
  if (v10 == (v29 + 80))
  {
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
    do
    {
      sub_1837DE228(&v40, v41, v10 + 4);
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v11);
    v15 = *(&__s1[0] + 1);
    if (!*(&__s1[0] + 1))
    {
      goto LABEL_30;
    }
  }

  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_30:
  BYTE7(__s1[1]) = 21;
  strcpy(__s1, "model_features_length");
  v16 = v41[0];
  if (!v41[0])
  {
LABEL_49:
    v26 = -1;
    v27 = v42;
    v28 = v43;
    if (v42 != v43)
    {
      goto LABEL_76;
    }

LABEL_50:
    sub_18368922C(&v40, v16);
    if (!v27)
    {
      return;
    }

    goto LABEL_51;
  }

  v17 = v41[0];
  while (1)
  {
    v18 = v17[55];
    if (v18 >= 0)
    {
      v19 = v17[55];
    }

    else
    {
      v19 = *(v17 + 5);
    }

    if (v18 >= 0)
    {
      v20 = v17 + 32;
    }

    else
    {
      v20 = *(v17 + 4);
    }

    if (v19 >= 0x15)
    {
      v21 = 21;
    }

    else
    {
      v21 = v19;
    }

    v22 = memcmp(__s1, v20, v21);
    v23 = v22 < 0;
    if (!v22)
    {
      v23 = v19 > 0x15;
    }

    if (v23)
    {
      goto LABEL_32;
    }

    v24 = memcmp(v20, __s1, v21);
    v25 = v19 < 0x15;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (!v25)
    {
      break;
    }

    v17 += 8;
LABEL_32:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_49;
    }
  }

  BYTE7(__s1[1]) = 21;
  strcpy(__s1, "model_features_length");
  v30 = v16;
  while (1)
  {
    while (1)
    {
      v31 = v30[55];
      if (v31 >= 0)
      {
        v32 = v30[55];
      }

      else
      {
        v32 = *(v30 + 5);
      }

      if (v31 >= 0)
      {
        v33 = v30 + 32;
      }

      else
      {
        v33 = *(v30 + 4);
      }

      if (v32 >= 0x15)
      {
        v34 = 21;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(__s1, v33, v34);
      v36 = v35 < 0;
      if (!v35)
      {
        v36 = v32 > 0x15;
      }

      if (!v36)
      {
        break;
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_74;
      }
    }

    v37 = memcmp(v33, __s1, v34);
    v38 = v32 < 0x15;
    if (v37)
    {
      v38 = v37 < 0;
    }

    if (!v38)
    {
      break;
    }

    v30 = *(v30 + 1);
    if (!v30)
    {
LABEL_74:
      sub_1836868A4("map::at:  key not found");
    }
  }

  v26 = *(v30 + 7);
  v27 = v42;
  v28 = v43;
  if (v42 == v43)
  {
    goto LABEL_50;
  }

LABEL_76:
  v39 = v27;
  do
  {
    *&__s1[0] = *v39;
    *(&__s1[0] + 1) = v26;
    LODWORD(__s1[1]) = 1;
    sub_1838B875C(a1, __s1);
    v39 += 8;
  }

  while (v39 != v28);
  sub_18368922C(&v40, v41[0]);
  if (v27)
  {
LABEL_51:
    operator delete(v27);
  }
}

void sub_1838B8004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p)
{
  if (v16)
  {
    operator delete(v16);
    sub_18369D8F8(&a14);
    sub_18369D8F8(&a11);
    _Unwind_Resume(a1);
  }

  sub_18369D8F8(&a14);
  sub_18369D8F8(&a11);
  _Unwind_Resume(a1);
}

void sub_1838B8058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_18368922C(&a11, a12);
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
    v19 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_1838B80C0(void *a1, void *a2)
{
  v3 = a2[5];
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v12, 0, sizeof(v12));
  v7 = *v4;
  v6 = v4[1];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18384AA0C(v12, &v10);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = v10;
  if (v11 != v10)
  {
    if (((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  if (v10)
  {

    operator delete(v8);
  }
}

void sub_1838B8310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
    sub_18369D8F8(&a9);
    sub_18369D8F8(&a11);
    _Unwind_Resume(a1);
  }

  sub_18369D8F8(&a9);
  sub_18369D8F8(&a11);
  _Unwind_Resume(a1);
}

void sub_1838B8360(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
    if (!v2)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1838B8394(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1838B83D0(uint64_t a1)
{
  sub_18368D56C(a1 + 8, *(a1 + 16));

  return a1;
}

uint64_t sub_1838B8408(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_18368964C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_183688F00();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_1838B85F0(v15, a2);
  v6 = 56 * v2 + 56;
  v7 = *a1;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v15 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 8);
      *(v10 + 8) = 0;
      *(v11 + 8) = v12;
      *(v11 + 16) = *(v10 + 16);
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 40);
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      LODWORD(v12) = *(v10 + 48);
      *(v11 + 52) = *(v10 + 52);
      *(v11 + 48) = v12;
      v10 += 56;
      v11 += 56;
    }

    while (v10 != v8);
    do
    {
      v13 = *(v7 + 24);
      if (v13)
      {
        *(v7 + 32) = v13;
        operator delete(v13);
      }

      v7 += 56;
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

void sub_1838B85DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838B86EC(va);
  _Unwind_Resume(a1);
}

id sub_1838B85F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v8 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v8;
  return result;
}

void sub_1838B86C8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1838B86EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1838B875C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_183688F00();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_1838B88A8(uint64_t *a1)
{
  v1 = a1;
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if (v2 < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = open(a1, 0);
    if (v2 < 1)
    {
      goto LABEL_7;
    }
  }

  v3 = v2;
  if (fstat(v2, &v9) || (st_size = v9.st_size, v7 = mmap(0, v9.st_size, 1, 2, v3, 0), v7 == -1))
  {
    close(v3);
  }

  else
  {
    v8 = v7;
    madvise(v7, st_size, 2);
    close(v3);
    if (v8)
    {
      operator new();
    }
  }

LABEL_7:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v9.st_dev = 136315138;
    *&v9.st_mode = v1;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Error: unable to mmap resource %s", &v9, 0xCu);
  }

  return 0;
}

uint64_t sub_1838B8A5C(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) <= a2)
  {
    v3 = sub_183761FE4(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 8);
      *buf = 134218240;
      v8 = a2;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Error: Index %lu out of bounds of the code map %lu symbols", buf, 0x16u);
    }

    exit(0);
  }

  return *(a1 + 16) + 4 * a2;
}

void sub_1838B8B38(uint64_t a1)
{
  v2 = a1 + 80;
  v3 = *(a1 + 80);
  v4 = (a1 + 96);
  v5 = *(a1 + 96);
  v6 = *(a1 + 96);
  *(a1 + 16) = *(a1 + 80);
  *(a1 + 32) = v6;
  v7 = (a1 + 112);
  v8 = *(a1 + 112);
  *(a1 + 48) = *(a1 + 112);
  v9 = v5 - v3;
  *&v6 = *(a1 + 104);
  v10 = *(a1 + 88);
  v11 = *&v6 - v10;
  v12 = v8 - v3;
  v13 = *(a1 + 120);
  v14 = v13 - v10;
  v15 = v8 - v5;
  *&v5 = v13 - *&v6;
  v124 = v9;
  v16 = sqrtf((v11 * v11) + (v9 * v9));
  v127 = sqrtf((v14 * v14) + (v12 * v12));
  *(a1 + 196) = v16;
  *(a1 + 200) = v127;
  *(a1 + 148) = v16;
  *(a1 + 152) = v127;
  v17 = *&v5;
  v128 = sqrtf((*&v5 * *&v5) + (v15 * v15));
  *(a1 + 204) = v128;
  *(a1 + 156) = v128;
  v18 = v11;
  v131 = atan2f(v11, v9);
  v126 = vdup_n_s32(0x43340000u);
  v125 = vdupq_n_s64(0x400921FB54442D18uLL);
  v19 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v14, v12)), LODWORD(v131)), v126)), v125));
  v129 = v19.f32[0];
  *(v2 + 104) = v19.i32[0];
  v130 = v19.f32[1];
  *(v2 + 112) = v19.i32[1];
  *(v2 + 52) = v19;
  v20 = (atan2f(v17, v15) * 180.0) / 3.14159265;
  *(v2 + 108) = v20;
  v132 = v20;
  *(v2 + 60) = v20;
  v21 = acosf(((v18 * v14) + (v124 * v12)) / (v16 * v127));
  *(v2 + 80) = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(acosf((-(v18 * v17) - (v124 * v15)) / (v16 * v128))), LODWORD(v21)), v126)), v125));
  v22 = (acosf(((v17 * v14) + (v15 * v12)) / (v128 * v127)) * 180.0) / 3.14159265;
  *(v2 + 88) = v22;
  v23 = *(v2 - 16);
  v24 = fabsf(v129);
  if (v24 >= 90.0)
  {
    v24 = 180.0 - v24;
  }

  if (v24 < v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = -1;
  }

  if (v24 >= v23)
  {
    v24 = *(v2 - 16);
  }

  if (v129 < -90.0)
  {
    v26 = -90.0 - v129;
    v27 = v130;
    v28 = v132;
    goto LABEL_15;
  }

  v27 = v130;
  v28 = v132;
  v29 = 90.0;
  if (v129 >= 0.0)
  {
    if (v129 < 90.0)
    {
      v26 = 90.0 - v129;
      goto LABEL_15;
    }

    v29 = -90.0;
  }

  v26 = v129 + v29;
LABEL_15:
  if (v26 < v23)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (v26 < v23)
  {
    v23 = v26;
  }

  v31 = fabsf(v27);
  if (v31 >= 90.0)
  {
    v31 = 180.0 - v31;
  }

  if (v31 >= v24)
  {
    v32 = v24;
  }

  else
  {
    v25 = 2;
    v32 = v31;
  }

  v33 = -90.0;
  if (v27 < -90.0)
  {
    goto LABEL_26;
  }

  v33 = 90.0;
  if (v27 >= 0.0)
  {
    if (v27 < 90.0)
    {
LABEL_26:
      v34 = v33 - v27;
      goto LABEL_31;
    }

    v33 = -90.0;
  }

  v34 = v27 + v33;
LABEL_31:
  if (v34 >= v23)
  {
    v35 = v23;
  }

  else
  {
    v30 = 2;
    v35 = v34;
  }

  v36 = fabsf(v28);
  if (v36 >= 90.0)
  {
    v36 = 180.0 - v36;
  }

  if (v36 < v32)
  {
    v37 = 3;
  }

  else
  {
    v37 = v25;
  }

  v38 = -90.0;
  if (v28 >= -90.0)
  {
    v38 = 90.0;
    if (v28 >= 0.0)
    {
      if (v28 < 90.0)
      {
        goto LABEL_40;
      }

      v38 = -90.0;
    }

    v39 = v28 + v38;
    if ((v28 + v38) < v35)
    {
      v40 = 3;
    }

    else
    {
      v40 = v30;
    }

    if (v37 != -1)
    {
      goto LABEL_53;
    }

LABEL_52:
    if (v40 == -1)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_40:
  v39 = v38 - v28;
  if ((v38 - v28) < v35)
  {
    v40 = 3;
  }

  else
  {
    v40 = v30;
  }

  if (v37 == -1)
  {
    goto LABEL_52;
  }

LABEL_53:
  v41 = (v2 - 64);
  v42 = (v2 - 48);
  v43 = (v2 - 32);
  if (v37 < 1)
  {
    if (v40 <= 3)
    {
      v62 = v40 - 1;
      v63 = qword_1839D9870[v62];
      v64 = qword_1839D9888[v62];
      v65 = (*(a1 + v63) + *(a1 + v64)) * 0.5;
      *(a1 + v64) = v65;
      *(a1 + v63) = v65;
    }

    v67 = v39 >= v35 && v34 < v23;
    if (v40 == 1)
    {
      v67 = 2;
    }

    v68 = (v40 - 3 * ((((86 * v40) & 0x8000) != 0) + ((86 * v40) >> 8)) + 1);
    if ((v40 + 1) < 3)
    {
      v69 = v40 + 1;
    }

    else
    {
      v69 = v40 - 2;
    }

    v70 = (v69 + 1);
    v71 = fabsf(*(a1 + 128 + 4 * v68));
    if (v71 > 90.0)
    {
      v71 = 180.0 - v71;
    }

    v72 = fabsf(*(a1 + 128 + 4 * v70));
    v73 = 180.0 - v72;
    if (v72 <= 90.0)
    {
      v73 = v72;
    }

    if (vabds_f32(v71, v73) < *(a1 + 68))
    {
      v74 = *(a1 + 144 + 4 * v68);
      v75 = *(a1 + 144 + 4 * v70);
      v76 = fminf(v74, v75) / (fmaxf(v74, v75) + 0.1);
      if ((1.0 - *(a1 + 72)) < v76)
      {
        v77 = (v74 + v75) * 0.5;
        if (v67 == 2)
        {
          v78 = 0;
        }

        else
        {
          v78 = v67 + 1;
        }

        f64 = v41[v78].f64;
        v80 = v67 - 1;
        if (!v67)
        {
          v80 = 2;
        }

        v81 = *f64;
        v82 = v41[v67].f64;
        v82[1] = (f64[1] + v41[v80].f64[1]) * 0.5;
        v83 = v81;
        v84 = *(a1 + 144 + 4 * v40);
        v85 = fminf(v77, v84) / (fmaxf(v77, v84) + 0.1);
        if ((1.0 - *(a1 + 76)) >= v85)
        {
          v86 = sqrtf(((v84 * v84) * -0.25) + (v77 * v77));
        }

        else
        {
          v86 = v84 * 0.866;
        }

        if (*v82 <= v83)
        {
          v86 = -v86;
        }

        *v82 = (v86 + v83);
      }
    }
  }

  else if (v40 < 1)
  {
    v87 = v37 - 1;
    v88 = qword_1839D98A0[v87];
    v89 = qword_1839D98B8[v87];
    v90 = (*(a1 + v88) + *(a1 + v89)) * 0.5;
    *(a1 + v89) = v90;
    *(a1 + v88) = v90;
    v92 = v36 >= v32 && v31 < v24;
    v93 = v37 - 3;
    if (v37 < 3)
    {
      v93 = v37;
    }

    if (v37 == 1)
    {
      v92 = 2;
    }

    v94 = (v93 + 1);
    if (v37 == 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = -2;
    }

    v96 = (v37 + v95 + 1);
    v97 = *(a1 + 128 + 4 * v94);
    v98 = fabsf(v97 + 90.0);
    v99 = fabsf(v97 + -90.0);
    if (v97 >= 0.0)
    {
      v100 = v99;
    }

    else
    {
      v100 = v98;
    }

    v101 = *(a1 + 128 + 4 * v96);
    v102 = fabsf(v101 + 90.0);
    v103 = fabsf(v101 + -90.0);
    if (v101 >= 0.0)
    {
      v102 = v103;
    }

    if (vabds_f32(v100, v102) < *(a1 + 68))
    {
      v104 = *(a1 + 144 + 4 * v94);
      v105 = *(a1 + 144 + 4 * v96);
      v106 = fminf(v104, v105) / (fmaxf(v104, v105) + 0.1);
      if ((1.0 - *(a1 + 72)) < v106)
      {
        v107 = (v104 + v105) * 0.5;
        if (v92 == 2)
        {
          v108 = 0;
        }

        else
        {
          v108 = v92 + 1;
        }

        v109 = v41[v108].f64;
        v110 = v92 - 1;
        if (!v92)
        {
          v110 = 2;
        }

        v111 = v109[1];
        v112 = v41[v92].f64;
        *v112 = (*v109 + v41[v110].f64[0]) * 0.5;
        v113 = v111;
        v114 = *(a1 + 144 + 4 * v37);
        v115 = fminf(v107, v114) / (fmaxf(v107, v114) + 0.1);
        if ((1.0 - *(a1 + 76)) >= v115)
        {
          v116 = sqrtf(((v114 * v114) * -0.25) + (v107 * v107));
        }

        else
        {
          v116 = v114 * 0.866;
        }

        if (v112[1] <= v113)
        {
          v116 = -v116;
        }

        v112[1] = (v116 + v113);
      }
    }
  }

  else
  {
    v44 = v40 - 1;
    v45 = qword_1839D9870[v44];
    v46 = qword_1839D9888[v44];
    v47 = (*(a1 + v45) + *(a1 + v46)) * 0.5;
    *(a1 + v46) = v47;
    *(a1 + v45) = v47;
    v48 = v37 - 1;
    v49 = qword_1839D98A0[v48];
    v50 = qword_1839D98B8[v48];
    v51 = (*(a1 + v49) + *(a1 + v50)) * 0.5;
    *(a1 + v50) = v51;
    *(a1 + v49) = v51;
    v52 = *(a1 + 144 + 4 * v37);
    v53 = *(a1 + 144 + 4 * v40);
    v54 = fminf(v52, v53) / (fmaxf(v52, v53) + 0.1);
    if ((1.0 - *(a1 + 72)) < v54)
    {
      v55 = v37 + v40 - 3;
      v56 = v37 - v55;
      v57 = v41[v55].f64;
      v58 = ((v52 + v53) * 0.5);
      v59 = v57[1];
      if (v41[v56].f64[0] <= *v57)
      {
        v60 = -v58;
      }

      else
      {
        v60 = v58;
      }

      v41[v56].f64[0] = *v57 + v60;
      v61 = &v41[3 - v37];
      if (v61->f64[1] <= v59)
      {
        v58 = -v58;
      }

      v61->f64[1] = v59 + v58;
    }
  }

  v117 = *v42;
  v118 = *v43;
  __asm { FMOV            V4.2D, #3.0 }

  v123 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(vsubq_f64(vsubq_f64(vaddq_f64(vaddq_f64(*v2, *v4), *v7), *v41), *v42), *v43), _Q4)));
  *v2 = vaddq_f64(*v41, v123);
  *v4 = vaddq_f64(v117, v123);
  *v7 = vaddq_f64(v118, v123);
}

void sub_1838B9498(double *a1, float a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  v8 = v5 - v7;
  v9 = v4 - v6;
  v10 = (atan2f(v8, v9) * 180.0) / 3.14159265;
  v11 = fabsf(v10);
  v12 = 180.0 - v11;
  if (v11 < 90.0)
  {
    v12 = v11;
  }

  if (v12 < a2)
  {
    v13 = (v5 + v7) * 0.5;
    a1[6] = v13;
    a1[3] = v13;
    return;
  }

  v14 = v10 + -90.0;
  if (v10 < 90.0)
  {
    v14 = 90.0 - v10;
  }

  if (v10 < 0.0)
  {
    v14 = v10 + 90.0;
  }

  if (v10 < -90.0)
  {
    v15 = -90.0 - v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < a2)
  {
    v16 = (v4 + v6) * 0.5;
    a1[5] = v16;
    a1[2] = v16;
    return;
  }

  if (v10 < 0.0)
  {
    v10 = v10 + 360.0;
  }

  v17 = fmod(v10, 45.0);
  if (v17 < a2 || 45.0 - v17 < a2)
  {
    v19 = vabdd_f64(v6, v4);
    v20 = vabdd_f64(v7, v5);
    v21 = vabdd_f64(v19, v20);
    if ((v5 >= v7 || v20 <= v19) && (v5 <= v7 || v20 >= v19))
    {
      a1[3] = v5 - v21 * 0.25;
      a1[6] = v7 + v21 * 0.25;
      if (v4 >= v6)
      {
LABEL_29:
        if (v4 <= v6 || v20 >= v19)
        {
          v24 = v21 * 0.25;
          a1[2] = v4 + v24;
          v23 = v6 - v24;
          goto LABEL_33;
        }

LABEL_31:
        v22 = v21 * 0.25;
        a1[2] = v4 - v22;
        v23 = v6 + v22;
LABEL_33:
        a1[5] = v23;
        return;
      }
    }

    else
    {
      a1[3] = v5 + v21 * 0.25;
      a1[6] = v7 - v21 * 0.25;
      if (v4 >= v6)
      {
        goto LABEL_29;
      }
    }

    if (v20 > v19)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }
}

void sub_1838B96DC(double *a1, float a2, float a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[5];
  v8 = a1[6];
  v10 = v6 - v8;
  v11 = v7 - v9;
  v12 = (atan2f(v10, v11) * 180.0) / 3.14159265;
  v13 = fabsf(v12);
  v14 = 180.0 - v13;
  if (v13 < 90.0)
  {
    v14 = v13;
  }

  if (v14 >= a2)
  {
    v15 = v12 + -90.0;
    if (v12 < 90.0)
    {
      v15 = 90.0 - v12;
    }

    if (v12 < 0.0)
    {
      v15 = v12 + 90.0;
    }

    if (v12 < -90.0)
    {
      v16 = -90.0 - v12;
    }

    else
    {
      v16 = v15;
    }

    if (v16 < a2)
    {
      v9 = (v7 + v9) * 0.5;
      a1[5] = v9;
      a1[2] = v9;
      v7 = v9;
    }
  }

  else
  {
    v8 = (v6 + v8) * 0.5;
    a1[6] = v8;
    a1[3] = v8;
    v6 = v8;
  }

  v18 = a1[8];
  v17 = a1[9];
  v19 = v9 - v7;
  v20 = v8 - v6;
  v21 = (v20 * v20) + (v19 * v19);
  if (v21 > 0.0)
  {
    v19 = v19 / v21;
    v20 = v20 / v21;
  }

  v22 = v18 - v7;
  v23 = v17 - v6;
  v24 = (v17 - v6) * v20 + (v18 - v7) * v19;
  if (v24 > 0.0 && v24 < 1.0)
  {
    v26 = v9 - v18;
    v27 = v8 - v17;
    v28 = sqrtf((v27 * v27) + (v26 * v26));
    v29 = v7 - v18;
    v30 = v6 - v17;
    v31 = sqrtf((v30 * v30) + (v29 * v29));
    v32 = fminf(v31, v28) / (fmaxf(v31, v28) + 0.1);
    if ((1.0 - a3) < v32)
    {
      v33 = v22 * v20 - v23 * v19;
      v34 = v7 + (v21 * (v19 * 0.5)) + (v21 * (v20 * v33));
      v35 = v6 + (v21 * (v20 * 0.5)) - (v21 * (v19 * v33));
      a1[8] = v34;
      a1[9] = v35;
      a1[10] = v9 * 0.25 + v7 * 0.25 + v34 * 0.5;
      a1[11] = v8 * 0.25 + v6 * 0.25 + v35 * 0.5;
    }
  }
}

void sub_1838B9A0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[13] = *MEMORY[0x1E69E9840];
  v8[0] = @"StrokeBounds";
  v8[1] = @"SubstrokeBounds";
  v8[2] = @"StrokePoints";
  v8[3] = @"GroupBounds";
  v8[4] = @"Grouping";
  v8[5] = @"GroupClassification";
  v8[6] = @"GroupBaselineLegacy";
  v8[7] = @"GroupBaseline";
  v8[8] = @"PrincipalLines";
  v8[9] = @"NormalizedDrawing";
  v8[10] = @"NormalizedDrawingAll";
  v8[11] = @"RenderedResult";
  v8[12] = @"RenderedResultAll";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v8, 13, a5, a6);
  v7 = qword_1EA84D110;
  qword_1EA84D110 = v6;
}

void sub_1838B9BA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v123[13] = *MEMORY[0x1E69E9840];
  v122[0] = @"StrokeBounds";
  v121 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
  v120 = objc_msgSend_localizedStringForKey_value_table_(v121, v6, @"Stroke Bounds", &stru_1EF1C0318, 0, v7);
  v123[0] = v120;
  v122[1] = @"SubstrokeBounds";
  v119 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v8, v9, v10, v11, v12);
  v118 = objc_msgSend_localizedStringForKey_value_table_(v119, v13, @"Substroke Bounds", &stru_1EF1C0318, 0, v14);
  v123[1] = v118;
  v122[2] = @"StrokePoints";
  v117 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v15, v16, v17, v18, v19);
  v116 = objc_msgSend_localizedStringForKey_value_table_(v117, v20, @"Stroke Points", &stru_1EF1C0318, 0, v21);
  v123[2] = v116;
  v122[3] = @"GroupBounds";
  v115 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v22, v23, v24, v25, v26);
  v114 = objc_msgSend_localizedStringForKey_value_table_(v115, v27, @"Stroke Group Bounds", &stru_1EF1C0318, 0, v28);
  v123[3] = v114;
  v122[4] = @"Grouping";
  v113 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v29, v30, v31, v32, v33);
  v112 = objc_msgSend_localizedStringForKey_value_table_(v113, v34, @"Stroke Groups by Color", &stru_1EF1C0318, 0, v35);
  v123[4] = v112;
  v122[5] = @"GroupClassification";
  v111 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v36, v37, v38, v39, v40);
  v110 = objc_msgSend_localizedStringForKey_value_table_(v111, v41, @"Stroke Groups Classification", &stru_1EF1C0318, 0, v42);
  v123[5] = v110;
  v122[6] = @"GroupBaselineLegacy";
  v109 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v43, v44, v45, v46, v47);
  v108 = objc_msgSend_localizedStringForKey_value_table_(v109, v48, @"Stroke Groups Baseline (Legacy)", &stru_1EF1C0318, 0, v49);
  v123[6] = v108;
  v122[7] = @"GroupBaseline";
  v107 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v50, v51, v52, v53, v54);
  v106 = objc_msgSend_localizedStringForKey_value_table_(v107, v55, @"Stroke Groups Baseline", &stru_1EF1C0318, 0, v56);
  v123[7] = v106;
  v122[8] = @"PrincipalLines";
  v62 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v57, v58, v59, v60, v61);
  v65 = objc_msgSend_localizedStringForKey_value_table_(v62, v63, @"Tokens Principal Lines", &stru_1EF1C0318, 0, v64);
  v123[8] = v65;
  v122[9] = @"NormalizedDrawing";
  v71 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v66, v67, v68, v69, v70);
  v74 = objc_msgSend_localizedStringForKey_value_table_(v71, v72, @"Normalized Drawing (Selective)", &stru_1EF1C0318, 0, v73);
  v123[9] = v74;
  v122[10] = @"NormalizedDrawingAll";
  v80 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v75, v76, v77, v78, v79);
  v83 = objc_msgSend_localizedStringForKey_value_table_(v80, v81, @"Normalized Drawing (All)", &stru_1EF1C0318, 0, v82);
  v123[10] = v83;
  v122[11] = @"RenderedResult";
  v89 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v84, v85, v86, v87, v88);
  v92 = objc_msgSend_localizedStringForKey_value_table_(v89, v90, @"Rendered Result (Selective)", &stru_1EF1C0318, 0, v91);
  v123[11] = v92;
  v122[12] = @"RenderedResultAll";
  v98 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v93, v94, v95, v96, v97);
  v101 = objc_msgSend_localizedStringForKey_value_table_(v98, v99, @"Rendered Result (All)", &stru_1EF1C0318, 0, v100);
  v123[12] = v101;
  v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v102, v123, v122, 13, v103);
  v105 = qword_1EA84D120;
  qword_1EA84D120 = v104;
}

void sub_1838BA1B0()
{
  v5[13] = *MEMORY[0x1E69E9840];
  v4[0] = @"StrokeBounds";
  v5[0] = objc_opt_class();
  v4[1] = @"SubstrokeBounds";
  v5[1] = objc_opt_class();
  v4[2] = @"StrokePoints";
  v5[2] = objc_opt_class();
  v4[3] = @"GroupBounds";
  v5[3] = objc_opt_class();
  v4[4] = @"Grouping";
  v5[4] = objc_opt_class();
  v4[5] = @"GroupClassification";
  v5[5] = objc_opt_class();
  v4[6] = @"GroupBaselineLegacy";
  v5[6] = objc_opt_class();
  v4[7] = @"GroupBaseline";
  v5[7] = objc_opt_class();
  v4[8] = @"PrincipalLines";
  v5[8] = objc_opt_class();
  v4[9] = @"NormalizedDrawing";
  v5[9] = objc_opt_class();
  v4[10] = @"NormalizedDrawingAll";
  v5[10] = objc_opt_class();
  v4[11] = @"RenderedResult";
  v5[11] = objc_opt_class();
  v4[12] = @"RenderedResultAll";
  v5[12] = objc_opt_class();
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v0, v5, v4, 13, v1);
  v3 = qword_1EA84D130;
  qword_1EA84D130 = v2;
}

void sub_1838BA504(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96[10] = *MEMORY[0x1E69E9840];
  v95[0] = @"CHStatusKeyStatus";
  v94 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4, a5, a6);
  v93 = objc_msgSend_localizedStringForKey_value_table_(v94, v6, @"Status", &stru_1EF1C0318, 0, v7);
  v96[0] = v93;
  v95[1] = @"CHStatusKeyEnvironment";
  v92 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v8, v9, v10, v11, v12);
  v91 = objc_msgSend_localizedStringForKey_value_table_(v92, v13, @"Environment", &stru_1EF1C0318, 0, v14);
  v96[1] = v91;
  v95[2] = @"CHStatusKeyLocales";
  v90 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v15, v16, v17, v18, v19);
  v89 = objc_msgSend_localizedStringForKey_value_table_(v90, v20, @"Locales", &stru_1EF1C0318, 0, v21);
  v96[2] = v89;
  v95[3] = @"CHStatusKeyLastDurationTotal";
  v88 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v22, v23, v24, v25, v26);
  v87 = objc_msgSend_localizedStringForKey_value_table_(v88, v27, @"Total Duration", &stru_1EF1C0318, 0, v28);
  v96[3] = v87;
  v95[4] = @"CHStatusKeyLastDurationDetailed";
  v86 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v29, v30, v31, v32, v33);
  v85 = objc_msgSend_localizedStringForKey_value_table_(v86, v34, @"Detailed", &stru_1EF1C0318, 0, v35);
  v96[4] = v85;
  v95[5] = @"CHStatusStrokeCount";
  v41 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v36, v37, v38, v39, v40);
  v44 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"Stroke Count", &stru_1EF1C0318, 0, v43);
  v96[5] = v44;
  v95[6] = @"CHStatusKeyGroupCount";
  v50 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v45, v46, v47, v48, v49);
  v53 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, @"Group Count", &stru_1EF1C0318, 0, v52);
  v96[6] = v53;
  v95[7] = @"CHStatusKeyTranscript";
  v59 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v54, v55, v56, v57, v58);
  v62 = objc_msgSend_localizedStringForKey_value_table_(v59, v60, @"Transcript", &stru_1EF1C0318, 0, v61);
  v96[7] = v62;
  v95[8] = @"CHStatusKeyAllResults";
  v68 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v63, v64, v65, v66, v67);
  v71 = objc_msgSend_localizedStringForKey_value_table_(v68, v69, @"Text Results", &stru_1EF1C0318, 0, v70);
  v96[8] = v71;
  v95[9] = @"CHStatusKeyAllMathResults";
  v77 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v72, v73, v74, v75, v76);
  v80 = objc_msgSend_localizedStringForKey_value_table_(v77, v78, @"Math Results", &stru_1EF1C0318, 0, v79);
  v96[9] = v80;
  v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v81, v96, v95, 10, v82);
  v84 = qword_1EA84D140;
  qword_1EA84D140 = v83;
}

void sub_1838BB050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHVisualizationManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1838BB6B0(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (objc_msgSend_count(v2, v3, v4, v5, v6, v7))
    {
    }

    else
    {
      v18 = objc_msgSend_statusReportingEnabled(a1, v8, v9, v10, v11, v12);

      if (!v18)
      {
        if (*(a1 + 9) != 1)
        {
          v19 = 0;
LABEL_9:
          *(a1 + 9) = v19;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v25 = objc_msgSend_allValues(*(a1 + 48), v13, v14, v15, v16, v17, 0);
          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v60, v64, 16, v27);
          if (v33)
          {
            v34 = *v61;
LABEL_11:
            v35 = 0;
            while (1)
            {
              if (*v61 != v34)
              {
                objc_enumerationMutation(v25);
              }

              if (objc_msgSend_wantsInputDrawings(*(*(&v60 + 1) + 8 * v35), v28, v29, v30, v31, v32))
              {
                break;
              }

              if (v33 == ++v35)
              {
                v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v60, v64, 16, v32);
                if (v33)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }

            if (*(a1 + 10))
            {
              v46 = 1;
              goto LABEL_24;
            }

            v41 = objc_msgSend_recognitionSession(a1, v47, v48, v49, v50, v51);
            objc_msgSend_registerInputDrawingClient_(v41, v52, a1, v53, v54, v55);
            v46 = 1;
          }

          else
          {
LABEL_17:

            if (*(a1 + 10) != 1)
            {
              v46 = 0;
              goto LABEL_24;
            }

            v41 = objc_msgSend_recognitionSession(a1, v36, v37, v38, v39, v40);
            objc_msgSend_unregisterInputDrawingClient_(v41, v42, a1, v43, v44, v45);
            v46 = 0;
          }

LABEL_24:
          *(a1 + 10) = v46;
          return;
        }

        v20 = objc_msgSend_recognitionSession(a1, v13, v14, v15, v16, v17);
        objc_msgSend_unregisterChangeObserver_(v20, v56, a1, v57, v58, v59);
        v19 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    if (*(a1 + 9))
    {
      v19 = 1;
      goto LABEL_9;
    }

    v20 = objc_msgSend_recognitionSession(a1, v13, v14, v15, v16, v17);
    objc_msgSend_registerChangeObserver_(v20, v21, a1, v22, v23, v24);
    v19 = 1;
    goto LABEL_8;
  }
}

id sub_1838BC340(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_localeIdentifier(a2, a2, a3, a4, a5, a6);

  return v6;
}

id sub_1838BC370(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_visualizationIndexForStrokeGroup_(*(a1 + 32), v4, v3, v5, v6, v7);
  v9 = MEMORY[0x1E696AEC0];
  v15 = objc_msgSend_uniqueIdentifier(v3, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_stringWithFormat_(v9, v16, @"Group %ld (ID: %ld)", v17, v18, v19, v8 + 1, v15);

  return v20;
}

id sub_1838BC420(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_visualizationIndexForStrokeGroup_(*(a1 + 32), v4, v3, v5, v6, v7);
  v9 = MEMORY[0x1E696AEC0];
  v15 = objc_msgSend_uniqueIdentifier(v3, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_stringWithFormat_(v9, v16, @"Group %ld (ID: %ld)", v17, v18, v19, v8 + 1, v15);

  return v20;
}

uint64_t sub_1838BC708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_msgSend_objectForKeyedSubscript_(*(v11 + 48), v6, v5, v7, v8, v9);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v6, v5, v7, v8, v9);
  }
  v16 = ;
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_msgSend_objectForKeyedSubscript_(*(v17 + 48), v12, v10, v13, v14, v15);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v12, v10, v13, v14, v15);
  }
  v18 = ;
  v24 = v18;
  v25 = 0;
  if (v16 && v18)
  {
    v26 = objc_msgSend_layeringPriority(v16, v19, v20, v21, v22, v23);
    if (v26 <= objc_msgSend_layeringPriority(v24, v27, v28, v29, v30, v31))
    {
      v37 = objc_msgSend_layeringPriority(v16, v32, v33, v34, v35, v36);
      if (v37 >= objc_msgSend_layeringPriority(v24, v38, v39, v40, v41, v42))
      {
        v25 = 0;
      }

      else
      {
        v25 = -1;
      }
    }

    else
    {
      v25 = 1;
    }
  }

  return v25;
}

void sub_1838BCFBC(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v14 = objc_msgSend_integerValue(v17, v4, v5, v6, v7, v8);
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 24);
  if (v14 > v16)
  {
    v16 = objc_msgSend_integerValue(v17, v9, v10, v11, v12, v13);
    v15 = *(*(a1 + 32) + 8);
  }

  *(v15 + 24) = v16;
}

void sub_1838BD0DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_lastRecognitionResult(*(a1 + 32), a2, a3, a4, a5, a6);
  v13 = objc_msgSend_strokeGroupingResult(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_strokeGroups(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_count(v19, v20, v21, v22, v23, v24);

  if (!v25)
  {
    v31 = *(a1 + 40);
    if (v31)
    {
      objc_msgSend_removeAllObjects(*(v31 + 56), v26, v27, v28, v29, v30);
    }

    else
    {
      objc_msgSend_removeAllObjects(0, v26, v27, v28, v29, v30);
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v32 = *(a1 + 40);
  if (v32)
  {
    objc_msgSend_allValues(*(v32 + 48), v26, v27, v28, v29, v30, v66);
  }

  else
  {
    objc_msgSend_allValues(0, v26, v27, v28, v29, v30, v66);
  }
  v33 = ;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v66, v70, 16, v35);
  if (v41)
  {
    v42 = *v67;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(v33);
        }

        objc_msgSend_recognitionSessionDidUpdateRecognitionResult(*(*(&v66 + 1) + 8 * i), v36, v37, v38, v39, v40);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v66, v70, 16, v40);
    }

    while (v41);
  }

  if (objc_msgSend_statusReportingEnabled(*(a1 + 40), v44, v45, v46, v47, v48))
  {
    v54 = objc_msgSend_delegate(*(a1 + 40), v49, v50, v51, v52, v53);
    v55 = objc_opt_respondsToSelector();

    if (v55)
    {
      v61 = objc_msgSend_delegate(*(a1 + 40), v56, v57, v58, v59, v60);
      objc_msgSend_visualizationManagerDidUpdateSessionStatus_(v61, v62, *(a1 + 40), v63, v64, v65);
    }
  }
}

void sub_1838BD370(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (objc_msgSend_statusReportingEnabled(*(a1 + 32), a2, a3, a4, a5, a6))
  {
    v22 = objc_msgSend_delegate(*(a1 + 32), v7, v8, v9, v10, v11);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v23 = objc_msgSend_delegate(*(a1 + 32), v13, v14, v15, v16, v17);
      objc_msgSend_visualizationManagerDidUpdateSessionStatus_(v23, v18, *(a1 + 32), v19, v20, v21);
    }
  }
}

void sub_1838BD760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC88;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CHTranscriptionQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "END CHTranscriptionQuery", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1838BD8E8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1838BDC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_18369D8F8(&a9);
  sub_18369D8F8(v9);

  _Unwind_Resume(a1);
}

void sub_1838BDC34(_Unwind_Exception *a1)
{
  sub_18369D8F8(v1);

  _Unwind_Resume(a1);
}

void sub_1838BDC50(void (****a1)(void **__return_ptr), void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v37 = a1;
  (***a1)(&__p);
  v3 = __p;
  v30 = v53;
  if (__p != v53)
  {
    while (1)
    {
      v35 = v3;
      context = objc_autoreleasePoolPush();
      v4 = *v35;
      v47 = v4;
      v5 = v35[1];
      v48 = v5;
      v6 = *(v35 + 4);
      v49 = v6;
      v7 = v35[3];
      v50 = v7;
      v51 = *(v35 + 2);
      v8 = DWORD1(v51);
      v43[0] = *v35;
      v43[1] = v35[1];
      v44 = *(v35 + 4);
      v45 = v35[3];
      v46 = *(v35 + 2);
      v42 = 0;
      v9 = v31[2](v31, v43, &v42);
      v10 = v42;
      v33 = v9;
      v34 = v10;
      if (v9)
      {
        break;
      }

      if (v10)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        obj = qword_1EA84DC98;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_msgSend_localizedDescription(v34, v20, v21, v22, v23, v24);
          LODWORD(v58) = 138412290;
          *(&v58 + 4) = v25;
          _os_log_impl(&dword_18366B000, obj, OS_LOG_TYPE_ERROR, "CHFastPathCharacterPersonalizer: character synthesis Error during fast path synthesis: %@", &v58, 0xCu);
        }

        goto LABEL_20;
      }

LABEL_21:

      objc_autoreleasePoolPop(context);
      v3 = v35 + 6;
      if (v35 + 6 == v30)
      {
        v3 = __p;
        goto LABEL_23;
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v38, v62, 16, v12);
    if (v13)
    {
      v14 = *v39;
      do
      {
        v15 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v38 + 1) + 8 * v15);
          *&v58 = v4;
          *(&v58 + 1) = v5;
          v59 = v6;
          v60 = v7;
          v61 = v51;
          DWORD1(v61) = v8;
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v17 = qword_1EA84DC98;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v55 = v58;
            v56 = 1024;
            v57 = DWORD1(v61);
            _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterPersonalizer: synthesis result retrieved for %@ with version %d", buf, 0x12u);
          }

          ((**v37)[1])(*v37, &v58, v16);
          ++v15;
          ++v8;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v38, v62, 16, v19);
      }

      while (v13);
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_23:
  if (v3)
  {
    v26 = v53;
    v27 = v3;
    v28 = v3;
    if (v53 != v3)
    {
      do
      {

        v29 = *(v26 - 6);
        v26 -= 6;
      }

      while (v26 != v28);
      v27 = __p;
    }

    v53 = v28;
    operator delete(v27);
  }
}

id sub_1838BE130(uint64_t a1, uint64_t a2, void *a3)
{
  v204 = *MEMORY[0x1E69E9840];
  v178 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = objc_msgSend_count(v178, v5, v6, v7, v8, v9);
  v180 = objc_msgSend_initWithCapacity_(v4, v11, v10, v12, v13, v14);
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v178;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v197, v203, 16, v16);
  if (v17)
  {
    v18 = 0;
    v181 = *v198;
    do
    {
      v182 = v17;
      for (i = 0; i != v182; ++i)
      {
        if (*v198 != v181)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v197 + 1) + 8 * i);
        if (v25)
        {
          v26 = objc_msgSend_copy(*a2, v20, v21, v22, v23, v24);
          v32 = objc_msgSend_copy(*(a2 + 24), v27, v28, v29, v30, v31);
          v43 = objc_msgSend_copy(*(a2 + 8), v33, v34, v35, v36, v37);
          if (!v43)
          {
            v43 = objc_alloc_init(CHSynthesisRequestOptions);
          }

          v44 = objc_msgSend_drawing(v25, v38, v39, v40, v41, v42);
          v202 = v44;
          v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, &v202, 1, v46, v47);
          objc_msgSend_setStyleDrawings_(v43, v49, v48, v50, v51, v52);

          v58 = objc_msgSend_transcription(v25, v53, v54, v55, v56, v57);
          v201 = v58;
          v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v59, &v201, 1, v60, v61);
          objc_msgSend_setStyleContents_(v43, v63, v62, v64, v65, v66);

          if (*(a2 + 16) == 2)
          {
            v72 = objc_msgSend_transcription(v25, v67, v68, v69, v70, v71);
            v78 = sub_1837A4260(*(a2 + 32), v73, v74, v75, v76, v77);
            v83 = objc_msgSend_containsString_(v72, v79, v78, v80, v81, v82);

            if (v83)
            {
              v191 = 0;
              v192 = &v191;
              v193 = 0x3032000000;
              v194 = sub_1838BE86C;
              v195 = sub_1838BE87C;
              v196 = objc_alloc_init(MEMORY[0x1E696AEC0]);
              v94 = objc_msgSend_transcription(v25, v89, v90, v91, v92, v93);
              v100 = objc_msgSend_transcription(v25, v95, v96, v97, v98, v99);
              v106 = objc_msgSend_length(v100, v101, v102, v103, v104, v105);
              v183[0] = MEMORY[0x1E69E9820];
              v183[1] = 3321888768;
              v183[2] = sub_1838BE884;
              v183[3] = &unk_1EF1BF078;
              v186 = *a2;
              v187 = *(a2 + 8);
              v188 = *(a2 + 16);
              v107 = *(a2 + 24);
              v190 = *(a2 + 32);
              v189 = v107;
              v185 = &v191;
              v108 = v25;
              v184 = v108;
              objc_msgSend_enumerateCodepointsInRange_usingBlock_(v94, v109, 0, v106, v183, v110);

              v111 = v192[5];
              v117 = objc_msgSend_drawing(v108, v112, v113, v114, v115, v116);
              v123 = objc_msgSend_copy(v117, v118, v119, v120, v121, v122);

              objc_msgSend_setForwardProcessRatio_(v43, v124, &unk_1EF1EE070, v125, v126, v127);
              objc_msgSend_setBackwardProcessRatio_(v43, v128, &unk_1EF1EE080, v129, v130, v131);

              _Block_object_dispose(&v191, 8);
              v18 = 1;
              v32 = v123;
              goto LABEL_13;
            }

            if (v18)
            {
              v18 = 1;
              goto LABEL_14;
            }

            *(a2 + 16) = 0;
            v161 = objc_msgSend_transcription(v25, v84, v85, v86, v87, v88);
            v167 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v162, v163, v164, v165, v166);
            v172 = objc_msgSend_stringByTrimmingCharactersInSet_(v161, v168, v167, v169, v170, v171);

            v111 = objc_msgSend_stringByAppendingFormat_(v26, v173, @" %@", v174, v175, v176, v172);

            v18 = 0;
          }

          else
          {
            v136 = objc_msgSend_transcription(v25, v67, v68, v69, v70, v71);
            v142 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v137, v138, v139, v140, v141);
            v147 = objc_msgSend_stringByTrimmingCharactersInSet_(v136, v143, v142, v144, v145, v146);

            v111 = objc_msgSend_stringByAppendingFormat_(v26, v148, @" %@", v149, v150, v151, v147);
          }

LABEL_13:
          v26 = v111;
          objc_msgSend_setSkipStyleInventoryLookup_(v43, v132, 1, v133, v134, v135);
          v152 = [CHRemoteSynthesisRequest alloc];
          v154 = objc_msgSend_initWithString_drawing_options_requestType_priority_(v152, v153, v111, v32, v43, v32 != 0, 2);
          objc_msgSend_addObject_(v180, v155, v154, v156, v157, v158);

LABEL_14:
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v159, &v197, v203, 16, v160);
    }

    while (v17);
  }

  return v180;
}

uint64_t sub_1838BE86C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1838BE884(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  if (*(a1 + 80) == a2)
  {
    v9 = a2;
    v11 = objc_msgSend_transcription(*(a1 + 32), a2, a3, a4, a5, a6);
    v12 = MEMORY[0x1E696AEC0];
    v18 = sub_1837A4260(v9, v13, v14, v15, v16, v17);
    v23 = objc_msgSend_stringWithFormat_(v12, v19, @" %@ ", v20, v21, v22, v18);
    v26 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v11, v24, a3, a4, v23, v25);
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v29 = *(*(*(a1 + 40) + 8) + 40);
    v35 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33, v34);
    v40 = objc_msgSend_stringByTrimmingCharactersInSet_(v29, v36, v35, v37, v38, v39);
    v41 = *(*(a1 + 40) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    *a5 = 1;
  }
}

__n128 sub_1838BE9F8(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u64[0] = *(a2 + 48);
  a1[3].n128_u64[1] = *(a2 + 56);
  a1[4].n128_u32[0] = *(a2 + 64);
  a1[4].n128_u64[1] = *(a2 + 72);
  result = *(a2 + 80);
  a1[5] = result;
  return result;
}

void sub_1838BEA50(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_1838BEAB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BF0B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838BEB50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BF108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void **sub_1838BEBD4(void **a1)
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

        v5 = *(v3 - 6);
        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1838BF054(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 33) & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v3 = qword_1EA84DC60;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_debugName(*(a1 + 32), v4, v5, v6, v7, v8);
      v10 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "%@: start for session %p", buf, 0x16u);
    }

    *(*(a1 + 32) + 33) = 1;
    objc_msgSend_registerChangeObserver_(*(*(a1 + 32) + 48), v11, *(a1 + 32), v12, v13, v14);
    v15 = *(a1 + 32);
    v16 = v15[3];
    v22 = objc_msgSend_processingQueue(v15, v17, v18, v19, v20, v21);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1838BF1F4;
    v23[3] = &unk_1E6DDF7A8;
    v23[4] = *(a1 + 32);
    v23[5] = v16;
    dispatch_async(v22, v23);
  }
}

void sub_1838BF204(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v167 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 32) & 1) != 0 || *(a1 + 24) > a7)
  {
    return;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4, a5, a6);
  v9 = v8 - *(a1 + 24);
  objc_msgSend_preferredUpdatesInterval(a1, v10, v11, v12, v13, v14);
  v21 = v20 - v9;
  if (v21 > 0.0)
  {
    v22 = *(a1 + 24);
    v23 = dispatch_time(0, (v21 * 1000000000.0));
    v29 = objc_msgSend_processingQueue(a1, v24, v25, v26, v27, v28);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1838BF8D8;
    block[3] = &unk_1E6DDF7A8;
    block[4] = a1;
    block[5] = v22;
    dispatch_after(v23, v29, block);

    return;
  }

  v30 = objc_msgSend_lastRecognitionResult(*(a1 + 48), v15, v16, v17, v18, v19);
  v36 = v30;
  if (v30)
  {
    v37 = *(a1 + 16) == 0;
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v38) = v37;
  v44 = objc_msgSend_encodedStrokeProviderVersion(v30, v31, v32, v33, v34, v35);
  if (v44)
  {
    v45 = objc_msgSend_encodedStrokeProviderVersion(*(a1 + 16), v39, v40, v41, v42, v43);
    v51 = objc_msgSend_encodedStrokeProviderVersion(v36, v46, v47, v48, v49, v50);
    v56 = objc_msgSend_isEqual_(v45, v52, v51, v53, v54, v55) ^ 1;

    doesQueryResultDependOnDeclaredVariables = objc_msgSend_q_doesQueryResultDependOnDeclaredVariables(a1, v57, v58, v59, v60, v61);
    v68 = 0;
    if (!v36)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v56 = 0;

    doesQueryResultDependOnDeclaredVariables = objc_msgSend_q_doesQueryResultDependOnDeclaredVariables(a1, v69, v70, v71, v72, v73);
    v68 = 0;
    if (!v36)
    {
      goto LABEL_19;
    }
  }

  if (doesQueryResultDependOnDeclaredVariables)
  {
    if (!*(a1 + 16))
    {
      v92 = 0;
      v68 = 0;
      v86 = 0;
      v98 = objc_msgSend_completeness(v36, v63, v64, v65, v66, v67);
      if (objc_msgSend_q_resultWantedForCompleteness_(a1, v99, v98, v100, v101, v102))
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v74 = objc_msgSend_declaredVariables(v36, v63, v64, v65, v66, v67);
    v80 = objc_msgSend_declaredVariables(*(a1 + 16), v75, v76, v77, v78, v79);
    v68 = objc_msgSend_isEqualToSet_(v74, v81, v80, v82, v83, v84) ^ 1;
  }

LABEL_19:
  v85 = *(a1 + 16);
  if (!v85)
  {
    v86 = 0;
    v92 = 0;
    if (!v36)
    {
      goto LABEL_28;
    }

LABEL_21:
    v93 = objc_msgSend_completeness(v36, v63, v64, v65, v66, v67);
    if ((objc_msgSend_q_resultWantedForCompleteness_(a1, v94, v93, v95, v96, v97) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v141 = 1;
    v103 = 1;
    if ((v38 | v56 | v68))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v86 = v36 == 0;
  v87 = objc_msgSend_completeness(v85, v63, v64, v65, v66, v67);
  v92 = objc_msgSend_q_resultWantedForCompleteness_(a1, v88, v87, v89, v90, v91);
  if (v36)
  {
    goto LABEL_21;
  }

LABEL_28:
  v141 = 0;
  v103 = v92 & v86;
  if (v38 & 1 | ((v92 & v86 & 1) == 0) | v56 & 1 || (v68 & 1) != 0)
  {
    goto LABEL_31;
  }

LABEL_30:
  v103 = v86 | v92 ^ 1;
LABEL_31:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v104 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    v105 = objc_opt_class();
    v106 = NSStringFromClass(v105);
    v112 = objc_msgSend_recognitionSession(a1, v107, v108, v109, v110, v111);
    v140 = v92;
    v118 = v86;
    v119 = v56;
    v120 = v38;
    v38 = objc_msgSend_completeness(v36, v113, v114, v115, v116, v117);
    v126 = objc_msgSend_completeness(*(a1 + 16), v121, v122, v123, v124, v125);
    *buf = 134220802;
    v144 = a1;
    v145 = 2112;
    v146 = v106;
    v147 = 2048;
    v148 = v112;
    v149 = 2112;
    v150 = v36;
    v151 = 2048;
    v152 = v38;
    LOBYTE(v38) = v120;
    v153 = 2048;
    v154 = v126;
    v155 = 1024;
    v156 = v120;
    v157 = 1024;
    v158 = v119;
    v159 = 1024;
    v160 = v118;
    v161 = 1024;
    v162 = v140;
    v163 = 1024;
    v164 = v141;
    v165 = 1024;
    v166 = v103 & 1;
    _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_DEBUG, "CHQuery update: query %p (type %@), session %p, latestRecognitionResult %@, lastCompleteness %ld, prevCompleteness %ld, firstResultReady %d, strokeProviderChanged %d, prevResultRemoved %d, prevResultWanted %d, resultWanted %d -> shouldProceed ? %d", buf, 0x62u);
  }

  if (v103)
  {
    v132 = objc_msgSend_copy(v36, v127, v128, v129, v130, v131);
    v133 = *(a1 + 16);
    *(a1 + 16) = v132;

    if ((v38 & 1) == 0)
    {
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v134, v135, v136, v137, v138);
      *(a1 + 24) = v139;
    }

    objc_msgSend_q_setNeedsQueryResultUpdating(a1, v134, v135, v136, v137, v138);
  }
}

uint64_t sub_1838BF6F8(uint64_t result)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (v1 && *(v1 + 33) == 1)
  {
    v2 = result;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v3 = qword_1EA84DC60;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_msgSend_debugName(*(v2 + 32), v4, v5, v6, v7, v8);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "%@: pause", &v14, 0xCu);
    }

    *(*(v2 + 32) + 33) = 0;
    return objc_msgSend_unregisterChangeObserver_(*(*(v2 + 32) + 48), v10, *(v2 + 32), v11, v12, v13);
  }

  return result;
}

void sub_1838BFD2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  objc_msgSend_queryDidUpdateResult_(WeakRetained, v2, *(a1 + 32), v3, v4, v5);
}

void sub_1838C1600(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = objc_msgSend_strokeIndexes(a2, a2, a3, a4, a5, a6);
  v14 = objc_msgSend_objectsAtIndexes_(v8, v10, v9, v11, v12, v13);

  v15 = objc_opt_class();
  v19 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(v15, v16, v14, *(a1 + 40), v17, v18);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v24, &v42, v46, 16, v25);
  if (v26)
  {
    v32 = v26;
    v33 = *v43;
    do
    {
      v34 = 0;
      do
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_bounds(*(*(&v42 + 1) + 8 * v34), v27, v28, v29, v30, v31);
        v52.origin.x = v35;
        v52.origin.y = v36;
        v52.size.width = v37;
        v52.size.height = v38;
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v49 = CGRectUnion(v48, v52);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v27, &v42, v46, 16, v31);
    }

    while (v32);
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinX = CGRectGetMinX(v50);
  if (MinX <= CGRectGetMaxX(*(a1 + 56)))
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    MaxX = CGRectGetMaxX(v51);
    if (MaxX >= CGRectGetMinX(*(a1 + 56)))
    {
      v41 = *(*(a1 + 48) + 8);
      if (*(v41 + 32) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v41 + 32) = a3;
        v41 = *(*(a1 + 48) + 8);
      }

      ++*(v41 + 40);
    }
  }
}

void sub_1838C1914(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  *(a1 + 24) = 0;
  objc_storeStrong((a1 + 24), a2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 16) = a3;
  *a1 = objc_msgSend_pointCountForStrokeIndex_(v6, v7, 0, v8, v9, v10);
  operator new[]();
}

unint64_t sub_1838C2518(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v32 = (a1 + 184);
  *(a1 + 192) = *(a1 + 184);
  while (1)
  {
    v5 = 3 * (a2 / 3);
    v6 = v5 + (a2 + 2) % 3;
    v7 = *(a1 + 32);
    v8 = *(v7 + 8 * a2);
    if (v8 != -1)
    {
      while (1)
      {
        v9 = 3 * (v8 / 3);
        v10 = *(a1 + 8);
        v11 = *(v10 + 8 * v6);
        v12 = v9 + (v8 + 2) % 3;
        v13 = *(v10 + 8 * v12);
        v14 = **a1;
        v15 = (v14 + 16 * v11);
        v16 = (v14 + 16 * *(v10 + 8 * a2));
        v17 = *v16;
        v18 = v16[1];
        v19 = (v14 + 16 * *(v10 + 24 * (a2 / 3) + 8 * ((a2 + 1) % 3)));
        v20 = (v14 + 16 * v13);
        v21 = v20[1];
        v22 = *v15 - *v20;
        v23 = v17 - *v20;
        v24 = v18 - v21;
        v25 = *v19 - *v20;
        v26 = v19[1] - v21;
        if (v22 * (v24 * (v26 * v26 + v25 * v25) - (v24 * v24 + v23 * v23) * v26) - (v15[1] - v21) * (v23 * (v26 * v26 + v25 * v25) - (v24 * v24 + v23 * v23) * v25) + ((v15[1] - v21) * (v15[1] - v21) + v22 * v22) * (v23 * v26 - v24 * v25) >= 0.0)
        {
          break;
        }

        *(v10 + 8 * a2) = v13;
        *(v10 + 8 * v8) = v11;
        v27 = *(v7 + 8 * v12);
        if (v27 == -1)
        {
          v28 = *(a1 + 104);
          v29 = *(a1 + 128);
          while (*(v28 + 8 * v29) != v12)
          {
            v29 = *(*(a1 + 56) + 8 * v29);
            if (v29 == *(a1 + 128))
            {
              goto LABEL_12;
            }
          }

          *(v28 + 8 * v29) = a2;
LABEL_12:
          v27 = -1;
        }

        sub_1838C2780(a1, a2, v27);
        sub_1838C2780(a1, v8, *(*(a1 + 32) + 8 * v6));
        sub_1838C2780(a1, v5 + (a2 + 2) % 3, v9 + (v8 + 2) % 3);
        v33 = v9 + (v8 + 1) % 3;
        v30 = *(a1 + 184);
        if (v4 < (*(a1 + 192) - v30) >> 3)
        {
          *(v30 + 8 * v4++) = v9 + (v8 + 1) % 3;
          v7 = *(a1 + 32);
          v8 = *(v7 + 8 * a2);
          if (v8 == -1)
          {
            break;
          }
        }

        else
        {
          sub_1836DB51C(v32, &v33);
          ++v4;
          v7 = *(a1 + 32);
          v8 = *(v7 + 8 * a2);
          if (v8 == -1)
          {
            break;
          }
        }
      }
    }

    if (!v4)
    {
      return v5 + (a2 + 2) % 3;
    }

    --v4;
    a2 = *(*v32 + 8 * v4);
  }
}

void sub_1838C2780(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = a3;
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = a1 + 32;
  v7 = (*(a1 + 40) - v5) >> 3;
  if (v7 == a2)
  {
    sub_1836DB51C(a1 + 32, &v11);
    a3 = v11;
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1865E5C80](exception, "Cannot link edge");
    goto LABEL_12;
  }

  *(v5 + 8 * a2) = a3;
  if (a3 != -1)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = (*(a1 + 40) - v8) >> 3;
    if (a3 == v9)
    {
      sub_1836DB51C(v6, &v12);
      return;
    }

    if (a3 < v9)
    {
      *(v8 + 8 * a3) = a2;
      return;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1865E5C80](exception, "Cannot link edge");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }
}

void sub_1838C28C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    do
    {
      if (*v2 != v2[1])
      {
        operator new();
      }

      v2 += 3;
    }

    while (v2 != v3);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  sub_1836E1928(0);
}

void sub_1838C2CC8(unint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    v4 = a1[1];
    if (v4)
    {
      v5 = 0;
      v6 = 0;
LABEL_5:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v6;
      v11 = -1;
      do
      {
        if (*(a1[2] + *a1 * v8 + v6))
        {
          if (7 * ((v7 * 0x2492492492492493uLL) >> 64) == v8 || (v9 & 1) == 0)
          {
            v12 = v8;
            v13 = a2[2];
            if (v5 < v13)
            {
              *v5 = v10;
              *(v5 + 8) = v12;
              v5 += 16;
            }

            else
            {
              v14 = v5;
              v15 = v5 >> 4;
              v16 = v15 + 1;
              if ((v15 + 1) >> 60)
              {
                *a2 = 0;
                sub_18369761C();
              }

              if (v13 >> 3 > v16)
              {
                v16 = v13 >> 3;
              }

              if (v13 >= 0x7FFFFFFFFFFFFFF0)
              {
                v17 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v16;
              }

              if (v17)
              {
                if (!(v17 >> 60))
                {
                  operator new();
                }

                *a2 = 0;
                sub_183688F00();
              }

              v18 = (16 * v15);
              *v18 = v10;
              v18[1] = v12;
              v5 = 16 * v15 + 16;
              memcpy(0, 0, v14);
              a2[1] = v5;
              a2[2] = 0;
            }

            a2[1] = v5;
            v4 = a1[1];
          }

          v9 = 1;
          v11 = v8;
        }

        ++v8;
        ++v7;
      }

      while (v4 > v8);
      *a2 = 0;
      if (v11 == -1 || !(v11 % 7))
      {
        while (1)
        {
          v6 += 7;
          if (*a1 <= v6)
          {
            break;
          }

LABEL_4:
          v4 = a1[1];
          if (v4)
          {
            goto LABEL_5;
          }

          *a2 = 0;
        }
      }

      else
      {
        v19 = v11;
        v20 = a2[2];
        if (v5 >= v20)
        {
          v21 = v5;
          v22 = v5 >> 4;
          v23 = v22 + 1;
          if ((v22 + 1) >> 60)
          {
            sub_18369761C();
          }

          if (v20 >> 3 > v23)
          {
            v23 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (!(v24 >> 60))
            {
              operator new();
            }

            sub_183688F00();
          }

          v25 = (16 * v22);
          *v25 = v10;
          v25[1] = v19;
          v5 = 16 * v22 + 16;
          memcpy(0, 0, v21);
          *a2 = 0;
          a2[1] = v5;
          a2[2] = 0;
          a2[1] = v5;
          v6 += 7;
          if (*a1 > v6)
          {
            goto LABEL_4;
          }
        }

        else
        {
          *v5 = v10;
          *(v5 + 8) = v19;
          v5 += 16;
          a2[1] = v5;
          v6 += 7;
          if (*a1 > v6)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }
}

void sub_1838C2FE4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1838C3014(void *a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x4812000000;
  v30 = sub_1838C32B8;
  v31 = sub_1838C32DC;
  v32 = &unk_183A5AC72;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v23, v36, 16, v4);
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_msgSend_strokeAttributes(v8, v9, v10, v11, v12, v13);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1838C32F4;
        v22[3] = &unk_1E6DDCAC0;
        v22[4] = &v27;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v15, v8, (v14 >> 2) & 1, 1, v22);
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v16, &v23, v36, 16, v17);
    }

    while (v5);
  }

  v18 = v28;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v18[6];
  v19 = v18[7];
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  _Block_object_dispose(&v27, 8);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_1838C325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1838C32B8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1838C32DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1838C32F4(uint64_t a1, double a2, double a3)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_18369761C();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v3[6] = 0;
    v3[7] = v6;
    v3[8] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v6 = (v5 + 2);
  }

  v3[7] = v6;
}

void sub_1838C340C(void *a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v3 = a1;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v6, v8, 16, v5))
  {
    sub_1837A97C4(**(&v6[0] + 1), v7);
    if ((v7[1] - v7[0]) == 8 || v7[0])
    {
      operator delete(v7[0]);
    }

    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1838C3690(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1838C36D8(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>, long double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  v73 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v71 = sqrt((a8 - a10) * (a8 - a10) + (a7 - a9) * (a7 - a9));
  v18 = -tan(a4);
  v19 = cos(a4);
  v20 = 0;
  v21 = 0;
  for (i = objc_msgSend_count(v73, v22, v23, v24, v25, v26, a2); v21 < i; i = objc_msgSend_count(v73, v32, v33, v34, v35, v36, v70))
  {
    v75 = objc_msgSend_objectAtIndexedSubscript_(v73, v28, v21, v29, v30, v31);
    v74 = v21;
    v44 = (*a2 + 24 * v21);
    memset(v78, 0, 24);
    v46 = *v44;
    v45 = v44[1];
    if (v45 != v46)
    {
      if (((v45 - v46) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    v47 = v75;
    objc_msgSend_bounds(v75, v37, v38, v39, v40, v41, v42, v43);
    if (v53 > a5 || (objc_msgSend_bounds(v75, v48, v49, v50, v51, v52), v54 > a6))
    {
      sub_1838C3B48(v78, &v76, v18, a7, a8, a9, a10);
      v55 = v76;
      if (v77 == v76)
      {
        goto LABEL_19;
      }

      v56 = 1.79769313e308;
      v57 = -1.79769313e308;
      v58 = v76;
      do
      {
        v59 = *v58;
        v58 += 2;
        v60 = v59;
        if (v56 > v59)
        {
          v56 = v60;
        }

        if (v57 < v60)
        {
          v57 = v60;
        }
      }

      while (v58 != v77);
      v61 = (v57 - v56) / v19;
      if (v61 <= 0.0 || v61 / v71 < 0.5 && v61 / ((-1.79769313e308 - 1.79769313e308) / v19) < 0.8)
      {
LABEL_19:
        if (!v76)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (((v77 - v76) >> 4) <= 1)
        {
          v62 = 1;
        }

        else
        {
          v62 = (v77 - v76) >> 4;
        }

        v63 = v76;
        do
        {
          while (1)
          {
            v65 = a3[2];
            if (v20 >= v65)
            {
              break;
            }

            v64 = *v63;
            v63 += 2;
            *v20 = v64;
            v20 += 16;
            a3[1] = v20;
            if (!--v62)
            {
              goto LABEL_37;
            }
          }

          v66 = v20;
          v67 = v20 >> 4;
          v68 = v67 + 1;
          if ((v67 + 1) >> 60)
          {
            *a3 = 0;
            sub_18369761C();
          }

          if (v65 >> 3 > v68)
          {
            v68 = v65 >> 3;
          }

          if (v65 >= 0x7FFFFFFFFFFFFFF0)
          {
            v69 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v68;
          }

          if (v69)
          {
            if (!(v69 >> 60))
            {
              operator new();
            }

            *a3 = 0;
            sub_183688F00();
          }

          *(16 * v67) = *v63;
          v20 = 16 * v67 + 16;
          memcpy(0, 0, v66);
          a3[1] = v20;
          a3[2] = 0;
          a3[1] = v20;
          v63 += 2;
          --v62;
        }

        while (v62);
LABEL_37:
        *a3 = 0;
        v21 = v74;
        v47 = v75;
        a2 = v70;
      }

      operator delete(v55);
    }

LABEL_2:

    ++v21;
  }
}

void sub_1838C3AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16)
{
  if (v19)
  {
    operator delete(v19);
    v17 = *v16;
  }

  if (v17)
  {
    *(v16 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1838C3B48(double **a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a3 == 0.0)
  {
    v10 = *a1;
    v11 = a1[1];
    if (*a1 != v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (*v10 >= a4 && *v10 <= a6)
        {
          v15 = a2[2];
          if (v12 < v15)
          {
            *v12 = *v10;
            v12 += 16;
          }

          else
          {
            v16 = v12;
            v17 = v12 >> 4;
            v18 = v17 + 1;
            if ((v17 + 1) >> 60)
            {
              *a2 = 0;
              sub_18369761C();
            }

            if (v15 >> 3 > v18)
            {
              v18 = v15 >> 3;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF0)
            {
              v19 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              if (!(v19 >> 60))
              {
                operator new();
              }

              *a2 = 0;
              sub_183688F00();
            }

            *(16 * v17) = *v10;
            v12 = 16 * v17 + 16;
            memcpy(0, 0, v16);
            a2[1] = v12;
            a2[2] = 0;
            v13 = 0;
          }

          a2[1] = v12;
        }

        v10 += 2;
      }

      while (v10 != v11);
      goto LABEL_62;
    }

LABEL_61:
    v13 = 0;
    goto LABEL_62;
  }

  v20 = *a1;
  v21 = a1[1];
  if (*a1 == v21)
  {
    goto LABEL_61;
  }

  v22 = -1.0 / a3;
  v23 = a5 - -1.0 / a3 * a4;
  v24 = a7 - -1.0 / a3 * a6;
  v25 = 0;
  v13 = 0;
  if (-1.0 / a3 > 0.0)
  {
    do
    {
      v27 = v20[1];
      if (v27 <= v23 + *v20 * v22 && v27 >= v24 + *v20 * v22)
      {
        v29 = a2[2];
        if (v25 < v29)
        {
          *v25 = *v20;
          v25 += 16;
          v26 = v13;
        }

        else
        {
          v30 = v25 - v13;
          v31 = (v25 - v13) >> 4;
          v32 = v31 + 1;
          if ((v31 + 1) >> 60)
          {
            *a2 = v13;
            sub_18369761C();
          }

          v33 = v29 - v13;
          if (v33 >> 3 > v32)
          {
            v32 = v33 >> 3;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF0)
          {
            v34 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 60))
            {
              operator new();
            }

            *a2 = v13;
            sub_183688F00();
          }

          v26 = 0;
          *(16 * v31) = *v20;
          v25 = 16 * v31 + 16;
          memcpy(0, v13, v30);
          a2[1] = v25;
          a2[2] = 0;
        }

        a2[1] = v25;
        v13 = v26;
      }

      v20 += 2;
    }

    while (v20 != v21);
  }

  else
  {
    do
    {
      v35 = v20[1];
      if (v35 >= v23 + *v20 * v22 && v35 <= v24 + *v20 * v22)
      {
        v37 = a2[2];
        if (v25 < v37)
        {
          *v25 = *v20;
          v25 += 16;
        }

        else
        {
          v38 = v25;
          v39 = v25 >> 4;
          v40 = v39 + 1;
          if ((v39 + 1) >> 60)
          {
            *a2 = 0;
            sub_18369761C();
          }

          if (v37 >> 3 > v40)
          {
            v40 = v37 >> 3;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (v41)
          {
            if (!(v41 >> 60))
            {
              operator new();
            }

            *a2 = 0;
            sub_183688F00();
          }

          *(16 * v39) = *v20;
          v25 = 16 * v39 + 16;
          memcpy(0, 0, v38);
          a2[1] = v25;
          a2[2] = 0;
          v13 = 0;
        }

        a2[1] = v25;
      }

      v20 += 2;
    }

    while (v20 != v21);
  }

LABEL_62:
  *a2 = v13;
}

void sub_1838C3ED0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1838C3F04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *a1;
  if (v4 != *a1)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    v8 = *(a1 + 3) == *MEMORY[0x1E695EFF8] && *(a1 + 4) == v7;
    if (!v8 || (*(a1 + 5) == v6 ? (v9 = *(a1 + 6) == v7) : (v9 = 0), v9 ? (v10 = *(a1 + 7) == v6) : (v10 = 0), v10 ? (v11 = *(a1 + 8) == v7) : (v11 = 0), v11 ? (v12 = *(a1 + 9) == v6) : (v12 = 0), v12 ? (v13 = *(a1 + 10) == v7) : (v13 = 0), v13 ? (v14 = *(a1 + 11) == v6) : (v14 = 0), v14 ? (v15 = *(a1 + 12) == v7) : (v15 = 0), v15 ? (v16 = *(a1 + 13) == v6) : (v16 = 0), v16 ? (v17 = *(a1 + 14) == v7) : (v17 = 0), v17 ? (v18 = *(a1 + 15) == v6) : (v18 = 0), v18 ? (v19 = *(a1 + 16) == v7) : (v19 = 0), v19 ? (v20 = *(a1 + 17) == v6) : (v20 = 0), v20 ? (v21 = *(a1 + 18) == v7) : (v21 = 0), !v21))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *buf = 0;
      v25 = 0;
      v26 = 0;
      if (v4 - *&v5 >= 0)
      {
        operator new();
      }

      sub_18369761C();
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v22 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "Can't deform empty points and principal lines.", buf, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v23 = a1[1];
  if (v23 != *a1)
  {
    if (((v23 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  *(a2 + 88) = *(a1 + 11);
  *(a2 + 104) = *(a1 + 13);
  *(a2 + 120) = *(a1 + 15);
  *(a2 + 136) = *(a1 + 17);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 56) = *(a1 + 7);
  *(a2 + 72) = *(a1 + 9);
}

void sub_1838C44E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (v25)
  {
    operator delete(v25);
    v27 = __p;
    if (!__p)
    {
LABEL_3:
      v28 = *v24;
      if (!*v24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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
  v28 = *v24;
  if (!*v24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v24 + 8) = v28;
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_1838C455C(uint64_t *result, double *a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  if (v3)
  {
    v5 = a2[2];
    v4 = a2[3];
    v7 = *a2;
    v6 = a2[1];
    v8 = (v4 - v6) / (v5 - *a2);
    v9 = v3 >> 4;
    if (v8 == 0.0)
    {
      v10 = (v2 + 8);
      v11 = 1.79769313e308;
      v12 = 1;
      do
      {
        v16 = *(v10 - 1);
        v17 = *v10;
        v18 = v16 + 1.0;
        v19 = *v10 - v16 * v8 + (v16 + 1.0) * v8;
        if (v7 == v16 && v6 == v17 && v5 == v18 && v4 == v19)
        {
          v14 = 0.0;
        }

        else
        {
          v13 = v6 - (v17 - (v19 - v17) / (v18 - v16) * v16 + (v19 - v17) / (v18 - v16) * v7);
          v14 = sqrt(v13 * v13 + (v7 - v7) * (v7 - v7));
        }

        if (v14 < v11)
        {
          v11 = v14;
        }

        v15 = v11 < 1.0 || v12++ >= v9;
        v10 += 2;
      }

      while (!v15);
    }

    else
    {
      v23 = (v2 + 8);
      v24 = 1.79769313e308;
      v25 = 1;
      do
      {
        v31 = *(v23 - 1);
        v32 = *v23;
        v33 = v31 + 1.0;
        v34 = *v23 - v31 * v8 + (v31 + 1.0) * v8;
        if (v7 == v31 && v6 == v32 && v5 == v33 && v4 == v34)
        {
          v29 = 0.0;
        }

        else
        {
          v26 = (v34 - v32) / (v33 - v31);
          v27 = v32 - v26 * v31;
          v28 = (v6 - -1.0 / v8 * v7 - v27) / (v26 - -1.0 / v8);
          v29 = sqrt((v6 - (v27 + v26 * v28)) * (v6 - (v27 + v26 * v28)) + (v7 - v28) * (v7 - v28));
        }

        if (v29 < v24)
        {
          v24 = v29;
        }

        v30 = v24 < 1.0 || v25++ >= v9;
        v23 += 2;
      }

      while (!v30);
    }
  }

  return result;
}

void sub_1838C46BC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>, long double a4@<D4>)
{
  v12 = a2;
  v14 = *a1;
  v13 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v37 = a3;
  if (v13 != v14)
  {
    if ((((v13 - v14) >> 4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369F168();
  }

  v16 = *a1;
  v15 = a1[1];
  if (a4 != 1.79769313e308)
  {
    if (v15 == v16)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  if (v15 == v16)
  {
    atan2(0.0, 0.0);
    goto LABEL_19;
  }

  v17 = 0;
  v18 = (v15 - v16) >> 4;
  v19 = 0uLL;
  do
  {
    if (((*((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) >> (v17 & 0x3E)) & 1) != 0 && v18 > v17)
    {
      v20 = v17;
      do
      {
        if ((*((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) >> (v20 & 0x3E)))
        {
          v19 = vaddq_f64(v19, vsubq_f64(*(v16 + 16 * v20), *(v16 + 16 * v17)));
        }

        v20 += 2;
      }

      while (v18 > v20);
    }

    v17 += 2;
  }

  while (v18 > v17);
  a4 = atan2(v19.f64[1], v19.f64[0]);
  if (v15 != v16)
  {
LABEL_5:
    CGAffineTransformMakeRotation(&v38, -a4);
    operator new();
  }

LABEL_19:
  v21 = *(MEMORY[0x1E695EFF8] + 8);
  if (objc_msgSend_length(v12, v7, v8, v9, v10, v11))
  {
    v27 = 0.0 / objc_msgSend_length(v12, v22, v23, v24, v25, v26) * 1.1;
  }

  else
  {
    v27 = 0.0;
  }

  memset(&v38, 0, 24);
  if (a1[1] != *a1)
  {
    a = 0.0;
    v29 = 0;
    do
    {
      v31 = *(8 * v29);
      b = v38.b;
      if (*&v38.b == *&v38.c << 6)
      {
        if (*&v38.b + 1 < 0)
        {
          sub_18369F168();
        }

        v33 = *&v38.c << 7;
        if (*&v38.c << 7 <= (*&v38.b & 0x3FFFFFFFFFFFFFC0uLL) + 64)
        {
          v33 = (*&v38.b & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (*&v38.b <= 0x3FFFFFFFFFFFFFFEuLL)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_1836F8430(&v38, v34);
        a = v38.a;
        b = v38.b;
      }

      *&v38.b = *&b + 1;
      v35 = *&b >> 6;
      v36 = 1 << SLOBYTE(b);
      if (vabdd_f64(v31, v21) >= v27)
      {
        v30 = *(*&a + 8 * v35) & ~v36;
      }

      else
      {
        v30 = *(*&a + 8 * v35) | v36;
      }

      *(*&a + 8 * v35) = v30;
      ++v29;
    }

    while (v29 < (a1[1] - *a1) >> 4);
  }

  *v37 = *&v38.a;
  *(v37 + 1) = *&v38.b;
  memset(&v38, 0, 24);
}

void sub_1838C4F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  if (v30)
  {
    operator delete(v30);
    if (!__p)
    {
LABEL_3:
      if (!a14)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!a14)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a14);
  if (!v29)
  {
LABEL_5:
    v32 = a12;
    if (!a12)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v29);
  v32 = a12;
  if (!a12)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v32);

  _Unwind_Resume(a1);
}

void sub_1838C505C(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 != *a1)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_28:
    v27 = &v24;
    *v28 = 0u;
    *v29 = 0u;
    v30 = 0u;
    *v31 = 0u;
    *v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    __p = 0u;
    v22 = (v3 - v2) >> 3;
    v40 = 0;
    if (v22 >= 2)
    {
      if (!(v22 >> 62))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1865E5C80](exception, "not triangulation");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  while (1)
  {
    v6 = v3 - v2;
    v7 = (v3 - v2) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
LABEL_31:
      sub_1836D58DC();
    }

    if (-v2 >> 2 > v8)
    {
      v8 = -v2 >> 2;
    }

    v9 = -v2 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v8;
    if (v9)
    {
      break;
    }

    v10 = v7;
    v11 = (8 * v7);
    v12 = &v11[-v10];
    *v11 = *v4;
    v13 = v11 + 1;
    memcpy(v12, v2, v6);
    v24 = v12;
    v26 = 0;
    if (v2)
    {
      operator delete(v2);
    }

    v14 = v12;
    v25 = v13;
    v15 = v13 - v12;
    v16 = (v13 - v12) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      goto LABEL_31;
    }

    if (-v12 >> 2 > v17)
    {
      v17 = -v12 >> 2;
    }

    if (-v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

LABEL_32:
      sub_183688F00();
    }

    v19 = v16;
    v20 = (8 * v16);
    v21 = &v20[-v19];
    *v20 = v4[1];
    v3 = v20 + 1;
    memcpy(v21, v14, v15);
    v24 = v21;
    v26 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    v2 = v21;
    v25 = v3;
    v4 += 2;
    if (v4 == v5)
    {
      goto LABEL_28;
    }
  }

  if (!(v9 >> 61))
  {
    operator new();
  }

  goto LABEL_32;
}

void sub_1838C804C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (v25)
  {
    operator delete(v25);
  }

  sub_1836E1928(a20);
  sub_1838CDA64(&buf);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v28 = sub_183761FE4(10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = (a11[1] - *a11) >> 4;
      LODWORD(buf) = 134218240;
      *(&buf + 4) = v29;
      WORD6(buf) = 2048;
      *(&buf + 14) = a10;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Error: Unable to build an alphashape for point set with %ld points, alpha = %.2f", &buf, 0x16u);
    }

    *a12 = 0;
    a12[1] = 0;
    a12[2] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1838C7EA8);
  }

  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id sub_1838C829C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"{", a4, a5, a6);
  v8 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v9, &stru_1EF1C0318, v10, v11, v12);
  objc_msgSend_appendFormat_(v13, v14, @"[(%.3f, %.3f),(%.3f, %.3f)]", v15, v16, v17, a1[12], a1[13], a1[14], a1[15]);
  v22 = objc_msgSend_stringWithFormat_(v8, v18, @" t: %@", v19, v20, v21, v13);
  objc_msgSend_appendString_(v7, v23, v22, v24, v25, v26);

  v27 = MEMORY[0x1E696AEC0];
  v32 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v28, &stru_1EF1C0318, v29, v30, v31);
  objc_msgSend_appendFormat_(v32, v33, @"[(%.3f, %.3f),(%.3f, %.3f)]", v34, v35, v36, a1[8], a1[9], a1[10], a1[11]);
  v41 = objc_msgSend_stringWithFormat_(v27, v37, @" m: %@", v38, v39, v40, v32);
  objc_msgSend_appendString_(v7, v42, v41, v43, v44, v45);

  v46 = MEMORY[0x1E696AEC0];
  v51 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v47, &stru_1EF1C0318, v48, v49, v50);
  objc_msgSend_appendFormat_(v51, v52, @"[(%.3f, %.3f),(%.3f, %.3f)]", v53, v54, v55, a1[4], a1[5], a1[6], a1[7]);
  v60 = objc_msgSend_stringWithFormat_(v46, v56, @" b: %@", v57, v58, v59, v51);
  objc_msgSend_appendString_(v7, v61, v60, v62, v63, v64);

  v65 = MEMORY[0x1E696AEC0];
  v70 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v66, &stru_1EF1C0318, v67, v68, v69);
  objc_msgSend_appendFormat_(v70, v71, @"[(%.3f, %.3f),(%.3f, %.3f)]", v72, v73, v74, *a1, a1[1], a1[2], a1[3]);
  v79 = objc_msgSend_stringWithFormat_(v65, v75, @" d: %@", v76, v77, v78, v70);
  objc_msgSend_appendString_(v7, v80, v79, v81, v82, v83);

  objc_msgSend_appendString_(v7, v84, @"}", v85, v86, v87);

  return v7;
}

void sub_1838C85E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838CDF44(va);
  _Unwind_Resume(a1);
}

__n128 sub_1838C85F8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = *(a1 + 336);
    v5 = &v4[*(a1 + 328)];
    v6 = *(a1 + 360);
    v7 = (*(a1 + 120) + 8);
    v8 = 8 * *(a1 + 112);
    v9 = (*(a1 + 64) + 8);
    v10 = 8 * *(a1 + 56);
    do
    {
      *(v7 - 1) = *v6 + *v9 * *v5 + *(v9 - 1) * *v4;
      *v7 = v6[1] + *v9 * v5[1] + *(v9 - 1) * v4[1];
      v7 = (v7 + v8);
      v9 = (v9 + v10);
      --v3;
    }

    while (v3);
  }

  if (*(a1 + 464) >= 1 && *(a1 + 392) > *(a1 + 448))
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1836D58DC();
    }

    *(a1 + 312) = 0;
    v12 = *(a1 + 264);
    v13 = *(a1 + 272) - v12;
    if (v13 >= 1)
    {
      bzero(v12, v13);
    }

    v14 = *(a1 + 296) - *(a1 + 288);
    if (v14 >= 1)
    {
      bzero(*(a1 + 288), v14);
    }

    operator new();
  }

  v15 = *(a1 + 336);
  v16 = *(a1 + 360);
  v17 = *(v15 + 8 * *(a1 + 328));
  *a2 = *v15;
  a2[1] = v17;
  result = *v16;
  a2[2] = *v16;
  return result;
}

void sub_1838CA484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p)
{
  if (v36)
  {
    operator delete(v36);
    if (!v35)
    {
LABEL_3:
      if (!*(v37 - 192))
      {
LABEL_8:
        if (*(v37 - 176))
        {
          operator delete(*(v37 - 176));
        }

        operator delete(v34);
        operator delete(v33);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v37 - 192));
      goto LABEL_8;
    }
  }

  else if (!v35)
  {
    goto LABEL_3;
  }

  operator delete(v35);
  if (!*(v37 - 192))
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1838CA648(double **a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(a2[1], v4[1]), *a2, *v4));
        v9 = a3[2];
        if (v7 >= v9)
        {
          break;
        }

        *v7 = v8;
        v7 += 16;
        a3[1] = v7;
        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      v10 = v7;
      v11 = v7 >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        *a3 = 0;
        sub_18369761C();
      }

      if (v9 >> 3 > v12)
      {
        v12 = v9 >> 3;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        if (!(v13 >> 60))
        {
          operator new();
        }

        *a3 = 0;
        sub_183688F00();
      }

      v14 = (16 * v11);
      *v14 = v8;
      v7 = &v14[1];
      memcpy(0, 0, v10);
      a3[1] = v7;
      a3[2] = 0;
      a3[1] = v7;
      v4 += 2;
    }

    while (v4 != v5);
  }

LABEL_15:
  *a3 = 0;
}

void sub_1838CA7BC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_1838CA7E4@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = v9 + v3 * v7 + *a2 * *a1;
  v11 = v8 + v3 * v6 + v4 * *a1;
  v12 = a1[2];
  v13 = a1[3];
  v14 = v9 + v7 * v13 + *a2 * v12;
  *a3 = v10;
  a3[1] = v11;
  a3[2] = v14;
  a3[3] = v8 + v6 * v13 + v4 * v12;
  v15 = a1[4];
  v16 = a1[5];
  v17 = v9 + v7 * v16 + v5 * v15;
  v18 = v8 + v6 * v16 + v4 * v15;
  v19 = a1[6];
  v20 = a1[7];
  a3[4] = v17;
  a3[5] = v18;
  a3[6] = v9 + v7 * v20 + v5 * v19;
  a3[7] = v8 + v6 * v20 + v4 * v19;
  v21 = a1[8];
  v22 = a1[9];
  v23 = v9 + v7 * v22 + v5 * v21;
  v24 = v8 + v6 * v22 + v4 * v21;
  v25 = a1[10];
  v26 = a1[11];
  a3[8] = v23;
  a3[9] = v24;
  a3[10] = v9 + v7 * v26 + v5 * v25;
  a3[11] = v8 + v6 * v26 + v4 * v25;
  v27 = a1[12];
  v28 = a1[13];
  v29 = v9 + v7 * v28 + v5 * v27;
  v30 = v8 + v6 * v28 + v4 * v27;
  v31 = a1[14];
  v32 = a1[15];
  result = v8 + v6 * v32 + v4 * v31;
  a3[12] = v29;
  a3[13] = v30;
  a3[14] = v9 + v7 * v32 + v5 * v31;
  a3[15] = result;
  return result;
}

void sub_1838CA8F4(void *a1@<X0>, double *a2@<X8>, long double a3@<D0>)
{
  v5 = a1;
  v11 = v5;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  if (v5)
  {
    objc_msgSend_principalLines(v5, v6, v7, v8, v9, v10);
    objc_msgSend_principalLines(v11, v12, v13, v14, v15, v16);
    tx = v50.tx;
    ty = v50.ty;
  }

  else
  {
    ty = 0.0;
    tx = 0.0;
  }

  objc_msgSend_orientation(v11, v6, v7, v8, v9, v10);
  if (vabdd_f64(a3, v19) <= 0.1)
  {
    v23 = *a2;
    v24 = a2[2];
    v27 = a2[4];
    v46 = a2[5];
    v47 = a2[1];
    v28 = a2[6];
    v31 = a2[8];
    v32 = a2[10];
    v35 = a2[12];
    v44 = a2[13];
    v45 = a2[9];
    v37 = a3;
    v36 = a2[14];
  }

  else
  {
    v43 = a3;
    v20 = a3 - v19 + dbl_1839D9BB0[a3 - v19 > 0.0];
    memset(&v50, 0, sizeof(v50));
    v21 = *(MEMORY[0x1E695EFD0] + 16);
    *&v49.a = *MEMORY[0x1E695EFD0];
    *&v49.c = v21;
    *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v48, &v49, -tx, -ty);
    CGAffineTransformRotate(&v49, &v48, -v20);
    CGAffineTransformTranslate(&v50, &v49, tx, ty);
    v22 = a2[1];
    v23 = v50.tx + v22 * v50.c + v50.a * *a2;
    v47 = v50.ty + v22 * v50.d + v50.b * *a2;
    v24 = v50.tx + v50.c * a2[3] + v50.a * a2[2];
    v25 = a2[4];
    v26 = a2[5];
    v27 = v50.tx + v50.c * v26 + v50.a * v25;
    v46 = v50.ty + v50.d * v26 + v50.b * v25;
    v28 = v50.tx + v50.c * a2[7] + v50.a * a2[6];
    v29 = a2[8];
    v30 = a2[9];
    v31 = v50.tx + v50.c * v30 + v50.a * v29;
    v45 = v50.ty + v50.d * v30 + v50.b * v29;
    v32 = v50.tx + v50.c * a2[11] + v50.a * a2[10];
    v33 = a2[12];
    v34 = a2[13];
    v35 = v50.tx + v50.c * v34 + v50.a * v33;
    v44 = v50.ty + v50.d * v34 + v50.b * v33;
    v36 = v50.tx + v50.c * a2[15] + v50.a * a2[14];
    v37 = v43;
  }

  v38 = tan(v37);
  v39 = v47 + v23 * v38;
  *a2 = v23;
  a2[1] = v39 - v23 * v38;
  a2[2] = v24;
  a2[3] = v39 - v24 * v38;
  v40 = v46 + v27 * v38;
  a2[4] = v27;
  a2[5] = v40 - v27 * v38;
  a2[6] = v28;
  a2[7] = v40 - v28 * v38;
  v41 = v45 + v31 * v38;
  a2[8] = v31;
  a2[9] = v41 - v31 * v38;
  a2[10] = v32;
  a2[11] = v41 - v32 * v38;
  v42 = v44 + v35 * v38;
  a2[12] = v35;
  a2[13] = v42 - v35 * v38;
  a2[14] = v36;
  a2[15] = v42 - v36 * v38;
}

uint64_t sub_1838CABC0@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v194 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v4 = *(result + 96);
  *(&v123 + 1) = *(result + 104);
  v5 = *(result + 112);
  v6 = vmovn_s64(vceqq_f64(*result, *a2));
  if ((v6.i32[0] & v6.i32[1] & 1) != 0 && *(result + 16) == a2[1].f64[0] && *(result + 24) == a2[1].f64[1] && *(result + 32) == a2[2].f64[0] && *(result + 40) == a2[2].f64[1] && *(result + 48) == a2[3].f64[0] && *(result + 56) == a2[3].f64[1] && *(result + 64) == a2[4].f64[0] && *(result + 72) == a2[4].f64[1] && *(result + 80) == a2[5].f64[0] && *(result + 88) == a2[5].f64[1] && v4 == a2[6].f64[0] && *(&v123 + 1) == a2[6].f64[1])
  {
    v7 = vmovn_s64(vceqq_f64(v5, a2[7]));
    if (v7.i32[0] & v7.i32[1])
    {
      v8 = MEMORY[0x1E695EFD0];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *a3 = *MEMORY[0x1E695EFD0];
      *(a3 + 16) = v9;
      *(a3 + 32) = *(v8 + 32);
      return result;
    }
  }

  v10 = 0;
  v127 = *(result + 96);
  v128 = *(&v123 + 1);
  *&v129 = 1.0;
  v130 = 0.0;
  v131 = 0.0;
  v132 = 0;
  v133 = v5;
  v134 = 0x3FF0000000000000;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = v3;
  v139 = 0x3FF0000000000000;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  *&v123 = v4;
  v143 = __PAIR128__(*(&v123 + 1), *&v4);
  v144 = 0x3FF0000000000000;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = v5;
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v120 = *&v3.i64[1];
  __asm { FMOV            V0.2D, #1.0 }

  v121 = _Q0;
  v122 = vzip2q_s64(v3, _Q0);
  v151 = 0;
  v152 = 0;
  v16 = v5.f64[1];
  v119 = vzip2q_s64(v3, v5);
  v153 = v3;
  v17 = 0.0;
  v154 = 0x3FF0000000000000;
  v125 = v5;
  v126 = v3;
  v124 = v5.f64[1];
  do
  {
    if (!v10)
    {
      *&v155 = v16;
      *(&v155 + 1) = 0x3FF0000000000000;
      v22 = 1.0;
      v24 = v16;
      v23 = v122;
LABEL_24:
      v156 = 0uLL;
      *&v157[0] = 0;
      *(v157 + 8) = v23;
      memset(&v157[1] + 8, 0, 40);
      v158 = v123;
      v159 = 0x3FF0000000000000uLL;
      *&v160 = 0;
      *(&v160 + 1) = *&v5.f64[0];
      v161.f64[0] = v16;
      v20.i64[0] = v23.i64[1];
      v161.f64[1] = 1.0;
      if (!v10)
      {
        *&v162 = 0;
        v18 = 0.0;
        v27 = &v162 + 1;
        v26 = 2;
        goto LABEL_28;
      }

      v162 = 0uLL;
      v18 = 0.0;
      v26 = 2;
LABEL_29:
      *(&v163[-1] + 8 * v26) = v3;
      v25 = v26 + 2;
      goto LABEL_30;
    }

    *&v155 = v5.f64[0];
    if (v10 == 1)
    {
      *(&v155 + 1) = 0x3FF0000000000000;
      *&v157[0] = 0;
      v156 = 0uLL;
      *(&v157[0] + 1) = v3.i64[0];
      *&v157[1] = 0x3FF0000000000000;
      memset(&v157[1] + 8, 0, 40);
      v158 = v123;
      v159 = 0x3FF0000000000000uLL;
      v18 = 0.0;
      v19 = 2;
      v20 = v121;
      *&v160 = 0;
      goto LABEL_20;
    }

    *(&v155 + 1) = v16;
    v22 = v16;
    v24 = v5.f64[0];
    v23 = v3;
    if (v10 == 2)
    {
      goto LABEL_24;
    }

    *&v156 = 0x3FF0000000000000;
    if (v10 == 3)
    {
      *(&v156 + 1) = 0;
      *&v157[0] = 0;
      *(v157 + 8) = v3;
      *(&v157[1] + 1) = 0x3FF0000000000000;
      memset(&v157[2], 0, 32);
      v62 = 3;
      *&v158 = 0;
      goto LABEL_37;
    }

    *(&v156 + 1) = 0;
    *&v157[0] = 0;
    if (v10 == 4)
    {
      *(v157 + 8) = v3;
      *(&v157[1] + 1) = 0x3FF0000000000000;
      memset(&v157[2], 0, 32);
      *&v158 = 0;
      *(&v158 + 1) = v123;
      v159 = 0x3FF0000000000000uLL;
      v160 = 0uLL;
      v161.f64[0] = v5.f64[0];
      v161.f64[1] = 1.0;
      *&v163[0] = 0;
      v18 = 1.0;
      *v20.i64 = v120;
      v23.i64[0] = v3.i64[0];
      v162 = 0uLL;
      v22 = v16;
      v24 = v5.f64[0];
      v25 = 4;
      *(&v163[0] + 1) = v3.i64[0];
      goto LABEL_30;
    }

    *(v157 + 8) = v3;
    *(&v157[1] + 1) = 0x3FF0000000000000;
    memset(&v157[2], 0, 32);
    *&v158 = 0;
    v29 = *&v123;
    *(&v158 + 1) = v123;
    if (v10 != 5)
    {
      v62 = 4;
LABEL_37:
      v63 = &v155 + 8 * v62;
      *(v63 + 10) = *(&v123 + 1);
      *(v63 + 11) = 0x3FF0000000000000;
      *(&v159 + 1) = 0;
      v160 = 0uLL;
      if (v10 == 3)
      {
        v161.f64[0] = v16;
        v161.f64[1] = 1.0;
        *&v163[0] = 0;
        v18 = 1.0;
        *v20.i64 = v120;
        v23.i64[0] = v3.i64[0];
        v162 = 0uLL;
        v22 = v16;
        v24 = v5.f64[0];
        v25 = 4;
        *(v163 + 1) = v120;
        goto LABEL_30;
      }

      v18 = 1.0;
      v19 = 3;
      v20 = v119;
LABEL_20:
      v21 = &v155 + 8 * v19;
      *(v21 + 120) = v5;
      *(v21 + 17) = 0x3FF0000000000000;
      v162 = 0uLL;
      v22 = *&v20.i64[1];
      if (v10 == 1)
      {
        v163[0] = v3;
        v23.i64[0] = v3.i64[0];
        v24 = v5.f64[0];
        v25 = 4;
LABEL_30:
        *(&v163[-1] + v25) = 0x3FF0000000000000;
        v28 = *(&v157[3] + 1);
        v29 = *(&v158 + 1);
        v30 = *&v158;
        v31 = *&v159;
        v32 = *(&v160 + 1);
        v33 = v161.f64[0];
        v34 = *(&v162 + 1);
        v35 = *(v163 + 1);
        v36 = *v163;
        v37 = *&v163[1];
        v38 = v161.f64[1];
        v39 = *&v162;
        goto LABEL_31;
      }

      v23.i64[0] = v3.i64[0];
      v24 = v5.f64[0];
      v27 = v163;
      v26 = 3;
LABEL_28:
      *v27 = 0;
      goto LABEL_29;
    }

    v31 = *(&v123 + 1);
    v159 = *(&v123 + 1);
    v160 = 0uLL;
    v18 = 1.0;
    v39 = 0.0;
    v37 = v120;
    v161 = v5;
    v35 = *v3.i64;
    v36 = 0.0;
    v34 = 0.0;
    v38 = v16;
    *&v163[0] = 0;
    v33 = v5.f64[0];
    v32 = 0.0;
    v30 = 0.0;
    v28 = 0.0;
    *v20.i64 = v120;
    v162 = 0uLL;
    v23.i64[0] = v3.i64[0];
    v22 = v16;
    v24 = v5.f64[0];
    *(v163 + 8) = v3;
LABEL_31:
    v40 = v39 * -0.0 + v34 * 0.0;
    v41 = v36 * 0.0 - v39 * v32;
    v42 = v36 * 0.0 - v34 * v32;
    v43 = v42 * 0.0 + 0.0 - v28 * v41 + v30 * v40;
    v44 = v37 * 0.0 - v39 * v38;
    v45 = v37 * 0.0 - v34 * v38;
    v46 = v45 * 0.0 + 0.0 - v28 * v44 + v31 * v40;
    v47 = v32 * v37 - v36 * v38;
    v48 = v47 * 0.0 + 0.0 - v30 * v44 + v31 * v41;
    v49 = v28 * v47 + 0.0 - v30 * v45 + v31 * v42;
    v50 = v35 * 0.0 - v39 * v33;
    v51 = v35 * 0.0 - v34 * v33;
    v52 = v51 * 0.0 + 0.0 - v28 * v50 + v29 * v40;
    v53 = v33 * v37 - v35 * v38;
    v54 = v53 * 0.0 + 0.0 - v29 * v44 + v31 * v50;
    v55 = v28 * v53 + 0.0 - v29 * v45 + v31 * v51;
    v56 = v32 * v35 - v36 * v33;
    v57 = v56 * 0.0 + 0.0 - v30 * v50 + v29 * v41;
    v58 = v30 * v53 + 0.0 - v29 * v47 + v31 * v56;
    v59 = v28 * v56 + 0.0 - v30 * v51 + v29 * v42;
    v60 = v24 * (*v20.i64 * v58 + 0.0 - v18 * v55 + v49 * 0.0 + v59 * -0.0) + 0.0 - v22 * (*v23.i64 * v58 + 0.0 - v18 * v54 + v48 * 0.0 + v57 * -0.0) + v18 * (*v23.i64 * v55 + 0.0 - *v20.i64 * v54 + v46 * 0.0 + v52 * -0.0) + (*v23.i64 * v49 + 0.0 - *v20.i64 * v48 + v18 * v46 + v43 * -0.0) * -0.0 + (*v23.i64 * v59 + 0.0 - *v20.i64 * v57 + v18 * v52 + v43 * -0.0) * 0.0;
    v61 = -v60;
    if ((v10 & 1) == 0)
    {
      v61 = v60;
    }

    v17 = v17 + *(&v127 + v10++) * v61;
    v5 = v125;
    v3 = v126;
    v16 = v124;
  }

  while (v10 != 6);
  if (v17 == 0.0)
  {
    *&v155 = &unk_1EF1BF1C8;
    sub_1838CFE88();
  }

  v64 = 0;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v164 = 0u;
  v162 = 0u;
  memset(v163, 0, sizeof(v163));
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  memset(v157, 0, sizeof(v157));
  v65 = &v155;
  v155 = 0u;
  v156 = 0u;
  while (2)
  {
    v66 = 0;
    v67 = v64;
    while (2)
    {
      if (!(v66 * 16))
      {
        v91 = 0;
        v93 = &v169;
        if (v64)
        {
          goto LABEL_75;
        }

        goto LABEL_68;
      }

      if (!v64)
      {
        v169 = v128;
        goto LABEL_70;
      }

      v169 = v127;
      if (v64 == 1)
      {
LABEL_70:
        v170 = *&v129;
        goto LABEL_71;
      }

      v170 = v128;
      if (v64 == 2)
      {
LABEL_71:
        v171 = v130;
        goto LABEL_72;
      }

      v171 = *&v129;
      if (v64 == 3)
      {
LABEL_72:
        v172 = v131;
        v90 = &v173;
        goto LABEL_73;
      }

      v172 = v130;
      v90 = &v173;
      if (v64 == 4 || (v173 = v131, v90 = &v174, v64 != 5))
      {
LABEL_73:
        *v90 = v132;
        v91 = 1;
        v92 = 1;
        if (v66 != 3)
        {
          goto LABEL_74;
        }

        goto LABEL_82;
      }

      v91 = 1;
      v92 = 1;
      if (v66 == 3)
      {
        goto LABEL_82;
      }

LABEL_74:
      v93 = &v174;
      if (!v64)
      {
LABEL_68:
        *v93 = v133.f64[1];
        goto LABEL_76;
      }

LABEL_75:
      *v93 = v133.f64[0];
      if (v64 == 1)
      {
LABEL_76:
        *(&v169 + 5 * v91 + 1) = v134;
        goto LABEL_77;
      }

      *(&v169 + 5 * v91 + 1) = v133.f64[1];
      if (v64 == 2)
      {
LABEL_77:
        *(&v171 + 5 * v91) = v135;
LABEL_78:
        *(&v172 + 5 * v91) = v136;
LABEL_79:
        v94 = 4;
        goto LABEL_80;
      }

      *(&v171 + 5 * v91) = v134;
      if (v64 == 3)
      {
        goto LABEL_78;
      }

      *(&v172 + 5 * v91) = v135;
      if (v64 == 4)
      {
        goto LABEL_79;
      }

      *(&v173 + 5 * v91) = v136;
      if (v64 != 5)
      {
        v94 = 5;
LABEL_80:
        *(&v169 + 5 * v91 + v94) = v137;
      }

      v92 = v91 + 1;
      if (v66 == 6)
      {
        goto LABEL_96;
      }

LABEL_82:
      v95 = &v169 + 5 * v92;
      if (!v64)
      {
        *v95 = *&v138.i64[1];
        goto LABEL_90;
      }

      *v95 = *v138.i64;
      if (v64 == 1)
      {
LABEL_90:
        *(&v169 + 5 * v92 + 1) = v139;
        goto LABEL_91;
      }

      *(&v169 + 5 * v92 + 1) = *&v138.i64[1];
      if (v64 == 2)
      {
LABEL_91:
        *(&v171 + 5 * v92) = v140;
        goto LABEL_92;
      }

      *(&v171 + 5 * v92) = v139;
      if (v64 == 3)
      {
LABEL_92:
        *(&v172 + 5 * v92) = *(&v140 + 1);
        goto LABEL_93;
      }

      *(&v172 + 5 * v92) = v140;
      if (v64 != 4)
      {
        *(&v173 + 5 * v92) = *(&v140 + 1);
        if (v64 != 5)
        {
          v96 = 5;
          goto LABEL_94;
        }

        goto LABEL_95;
      }

LABEL_93:
      v96 = 4;
LABEL_94:
      *(&v169 + 5 * v92 + v96) = v141;
LABEL_95:
      ++v92;
      if (v66 == 9)
      {
        goto LABEL_110;
      }

LABEL_96:
      v97 = &v169 + 5 * v92;
      if (!v64)
      {
        *v97 = v142;
        goto LABEL_104;
      }

      *v97 = *(&v141 + 1);
      if (v64 == 1)
      {
LABEL_104:
        *(&v169 + 5 * v92 + 1) = *(&v142 + 1);
        goto LABEL_105;
      }

      *(&v169 + 5 * v92 + 1) = v142;
      if (v64 == 2)
      {
LABEL_105:
        *(&v171 + 5 * v92) = v143;
        goto LABEL_106;
      }

      *(&v171 + 5 * v92) = *(&v142 + 1);
      if (v64 == 3)
      {
LABEL_106:
        *(&v172 + 5 * v92) = *(&v143 + 1);
        goto LABEL_107;
      }

      *(&v172 + 5 * v92) = v143;
      if (v64 != 4)
      {
        *(&v173 + 5 * v92) = *(&v143 + 1);
        if (v64 != 5)
        {
          v98 = 5;
          goto LABEL_108;
        }

        goto LABEL_109;
      }

LABEL_107:
      v98 = 4;
LABEL_108:
      *(&v169 + 5 * v92 + v98) = v144;
LABEL_109:
      ++v92;
      if (v66 == 12)
      {
LABEL_125:
        v100 = &v169 + 5 * v92;
        if (v64)
        {
          *v100 = v150;
          if (v64 != 1)
          {
            *(&v169 + 5 * v92 + 1) = v151;
            if (v64 != 2)
            {
              *(&v171 + 5 * v92) = v152;
              if (v64 != 3)
              {
                *(&v172 + 5 * v92) = *v153.i64;
                if (v64 != 4)
                {
                  result = (&v169 + 5 * v92);
                  *(result + 32) = v153.i64[1];
                  if (v64 == 5)
                  {
                    goto LABEL_55;
                  }

                  result = 5;
LABEL_54:
                  *(&v169 + 5 * v92 + result) = v154;
                  goto LABEL_55;
                }

LABEL_53:
                result = 4;
                goto LABEL_54;
              }

LABEL_52:
              *(&v172 + 5 * v92) = *&v153.i64[1];
              goto LABEL_53;
            }

LABEL_51:
            *(&v171 + 5 * v92) = *v153.i64;
            goto LABEL_52;
          }
        }

        else
        {
          *v100 = v151;
        }

        *(&v169 + 5 * v92 + 1) = v152;
        goto LABEL_51;
      }

LABEL_110:
      v99 = &v169 + 5 * v92;
      if (!v64)
      {
        *v99 = v146;
        goto LABEL_118;
      }

      *v99 = v145;
      if (v64 == 1)
      {
LABEL_118:
        *(&v169 + 5 * v92 + 1) = v147;
        goto LABEL_119;
      }

      *(&v169 + 5 * v92 + 1) = v146;
      if (v64 == 2)
      {
LABEL_119:
        *(&v171 + 5 * v92) = v148.f64[0];
        goto LABEL_120;
      }

      *(&v171 + 5 * v92) = v147;
      if (v64 == 3)
      {
LABEL_120:
        *(&v172 + 5 * v92) = v148.f64[1];
        goto LABEL_121;
      }

      *(&v172 + 5 * v92) = v148.f64[0];
      if (v64 != 4)
      {
        result = (&v169 + 5 * v92);
        *(result + 32) = v148.f64[1];
        if (v64 != 5)
        {
          result = 5;
          goto LABEL_122;
        }

        goto LABEL_123;
      }

LABEL_121:
      result = 4;
LABEL_122:
      *(&v169 + 5 * v92 + result) = v149;
LABEL_123:
      if (v66 != 15)
      {
        ++v92;
        goto LABEL_125;
      }

LABEL_55:
      v68 = v184 * v190 - v189 * v185;
      v69 = v184 * v191 - v189 * v186;
      v70 = v185 * v191 - v190 * v186;
      v71 = v179 * v70 + 0.0 - v180 * v69 + v181 * v68;
      v72 = v184 * v193 - v189 * v188;
      v73 = v184 * v192 - v189 * v187;
      v74 = v185 * v193 - v190 * v188;
      v75 = v185 * v192 - v190 * v187;
      v76 = v186 * v193 - v191 * v188;
      v77 = v187 * v193 - v192 * v188;
      v78 = v179 * v74 + 0.0 - v180 * v72 + v183 * v68;
      v79 = v186 * v192 - v191 * v187;
      v80 = v179 * v75 + 0.0 - v180 * v73 + v182 * v68;
      v81 = v179 * v77 + 0.0 - v182 * v72 + v183 * v73;
      v82 = v179 * v76 + 0.0 - v181 * v72 + v183 * v69;
      v83 = v179 * v79 + 0.0 - v181 * v73 + v182 * v69;
      v84 = v180 * v76 + 0.0 - v181 * v74 + v183 * v70;
      v85 = v180 * v77 + 0.0 - v182 * v74 + v183 * v75;
      v86 = v181 * v77 + 0.0 - v182 * v76 + v183 * v79;
      v87 = v180 * v79 + 0.0 - v181 * v75 + v182 * v70;
      v88 = v169 * (v175 * v86 + 0.0 - v176 * v85 + v177 * v84 - v178 * v87) + 0.0 - v170 * (v174 * v86 + 0.0 - v176 * v81 + v177 * v82 - v178 * v83) + v171 * (v174 * v85 + 0.0 - v175 * v81 + v177 * v78 - v178 * v80) - v172 * (v174 * v84 + 0.0 - v175 * v82 + v176 * v78 - v178 * v71) + v173 * (v174 * v87 + 0.0 - v175 * v83 + v176 * v80 - v177 * v71);
      v89 = -v88;
      if ((v67 & 1) == 0)
      {
        v89 = v88;
      }

      *&v65[v66] = v89;
      v66 += 3;
      ++v67;
      if (v66 != 18)
      {
        continue;
      }

      break;
    }

    ++v64;
    v65 = (v65 + 8);
    if (v64 != 6)
    {
      continue;
    }

    break;
  }

  v101 = 1.0 / v17;
  v103 = a2[6].f64[0];
  v102 = a2[6].f64[1];
  v105 = a2[7].f64[0];
  v104 = a2[7].f64[1];
  v106 = a2->f64[1];
  v107 = v101 * *&v155 * v103 + 0.0 + v101 * *&v157[1] * v105 + v101 * *&v158 * a2->f64[0] + v101 * v161.f64[0] * v102 + v101 * *&v163[1] * v104;
  v108 = v101 * *(&v155 + 1) * v103 + 0.0 + v101 * *(&v157[1] + 1) * v105 + v101 * *(&v158 + 1) * a2->f64[0] + v101 * v161.f64[1] * v102 + v101 * *(&v163[1] + 1) * v104;
  v109 = v101 * *&v156 * v103 + 0.0 + v101 * *&v157[2] * v105 + v101 * *&v159 * a2->f64[0] + v101 * *&v162 * v102 + v101 * *&v164 * v104;
  v110 = v101 * *(&v156 + 1) * v103 + 0.0 + v101 * *(&v157[2] + 1) * v105 + v101 * *(&v159 + 1) * a2->f64[0] + v101 * *(&v162 + 1) * v102 + v101 * *(&v164 + 1) * v104;
  v111 = v101 * *v157 * v103 + 0.0 + v101 * *&v157[3] * v105 + v101 * *&v160 * a2->f64[0] + v101 * *v163 * v102 + v101 * *&v165 * v104;
  v112 = v101 * *(v157 + 1) * v103 + 0.0 + v101 * *(&v157[3] + 1) * v105 + v101 * *(&v160 + 1) * a2->f64[0] + v101 * *(v163 + 1) * v102 + v101 * *(&v165 + 1) * v104;
  v113 = v107 + v101 * *&v166 * v106;
  v114 = v108 + v101 * *(&v166 + 1) * v106;
  v115 = v109 + v101 * *&v167 * v106;
  v116 = v110 + v101 * *(&v167 + 1) * v106;
  v117 = v111 + v101 * *&v168 * v106;
  v118 = v112 + v101 * *(&v168 + 1) * v106;
  *a3 = v113;
  *(a3 + 8) = v116;
  *(a3 + 16) = v114;
  *(a3 + 24) = v117;
  *(a3 + 32) = v115;
  *(a3 + 40) = v118;
  return result;
}

void sub_1838CBAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _OWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61)
{
  std::exception::~exception(&a61);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v65 = sub_183761FE4(10);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v71 = sub_1838C829C(v62, v66, v67, v68, v69, v70);
      v77 = sub_1838C829C(v61, v72, v73, v74, v75, v76);
      LODWORD(a61) = 138412546;
      *(&a61 + 4) = v71;
      WORD6(a61) = 2112;
      *(&a61 + 14) = v77;
      _os_log_impl(&dword_18366B000, v65, OS_LOG_TYPE_ERROR, "Could not invert matrix constructed from prinpicalLines %@ and %@", &a61, 0x16u);
    }

    v78 = MEMORY[0x1E695EFD0];
    v79 = *(MEMORY[0x1E695EFD0] + 16);
    *a23 = *MEMORY[0x1E695EFD0];
    a23[1] = v79;
    a23[2] = *(v78 + 32);
    __cxa_end_catch();
    JUMPOUT(0x1838CBA3CLL);
  }

  _Unwind_Resume(a1);
}

id sub_1838CBBBC(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1838CBE24;
  v28 = sub_1838CBE34;
  v18 = a1;
  v29 = objc_alloc_init(CHDrawing);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = v18;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v20, v30, 16, v3, v18);
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1838CBE3C;
        v19[3] = &unk_1E6DDCAC0;
        v19[4] = &v24;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v8, v7, 0, 1, v19);
        objc_msgSend_endStroke(v25[5], v9, v10, v11, v12, v13);
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v14, &v20, v30, 16, v15);
    }

    while (v4);
  }

  v16 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v16;
}

void sub_1838CBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1838CBE24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double sub_1838CBE4C(void *a1, int a2)
{
  v3 = a1;
  v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6, v7, v8);
  v10 = sub_1838CC010();
  v16 = objc_msgSend_systemFontOfSize_(v10, v11, v12, v13, v14, v15, a2);
  v17 = sub_1838CC210();
  objc_msgSend_setObject_forKey_(v9, v18, v16, v17, v19, v20);

  v21 = sub_1838CC300();
  v27 = objc_msgSend_whiteColor(v21, v22, v23, v24, v25, v26);
  v28 = sub_1838CC500();
  objc_msgSend_setObject_forKey_(v9, v29, v27, v28, v30, v31);

  v32 = sub_1838CC300();
  v38 = objc_msgSend_whiteColor(v32, v33, v34, v35, v36, v37);
  v39 = sub_1838CC5F0();
  objc_msgSend_setObject_forKey_(v9, v40, v38, v39, v41, v42);

  objc_msgSend_sizeWithAttributes_(v3, v43, v9, v44, v45, v46);
  v48 = fmax(ceil(v47), 1.0);

  return v48;
}

void sub_1838CBF7C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_1838CC010()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1EA84D170;
  v6 = qword_1EA84D170;
  if (!qword_1EA84D170)
  {
    v7[0] = 0;
    if (!qword_1EA84D158)
    {
      v7[1] = MEMORY[0x1E69E9820];
      v7[2] = 3221225472;
      v7[3] = sub_1838CDC40;
      v7[4] = &unk_1E6DDC0E0;
      v7[5] = v7;
      v8 = xmmword_1E6DDF7F0;
      v9 = 0;
      qword_1EA84D158 = _sl_dlopen();
      if (!qword_1EA84D158)
      {
        goto LABEL_11;
      }

      if (v7[0])
      {
        free(v7[0]);
      }
    }

    v4[3] = objc_getClass("UIFont");
    if (v4[3])
    {
      qword_1EA84D170 = v4[3];
      v0 = v4[3];
      goto LABEL_8;
    }

LABEL_11:
    abort_report_np();
    __break(1u);
  }

LABEL_8:
  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1838CC1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1838CC210()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1EA84D178;
  v8 = qword_1EA84D178;
  if (!qword_1EA84D178)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1838CE16C;
    v4[3] = &unk_1E6DDCCD0;
    v4[4] = &v5;
    sub_1838CE16C(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

id sub_1838CC300()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_1EA84D180;
  v6 = qword_1EA84D180;
  if (!qword_1EA84D180)
  {
    v7[0] = 0;
    if (!qword_1EA84D158)
    {
      v7[1] = MEMORY[0x1E69E9820];
      v7[2] = 3221225472;
      v7[3] = sub_1838CDC40;
      v7[4] = &unk_1E6DDC0E0;
      v7[5] = v7;
      v8 = xmmword_1E6DDF7F0;
      v9 = 0;
      qword_1EA84D158 = _sl_dlopen();
      if (!qword_1EA84D158)
      {
        goto LABEL_11;
      }

      if (v7[0])
      {
        free(v7[0]);
      }
    }

    v4[3] = objc_getClass("UIColor");
    if (v4[3])
    {
      qword_1EA84D180 = v4[3];
      v0 = v4[3];
      goto LABEL_8;
    }

LABEL_11:
    abort_report_np();
    __break(1u);
  }

LABEL_8:
  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1838CC4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1838CC500()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1EA84D188;
  v8 = qword_1EA84D188;
  if (!qword_1EA84D188)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1838CE408;
    v4[3] = &unk_1E6DDCCD0;
    v4[4] = &v5;
    sub_1838CE408(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

id sub_1838CC5F0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1EA84D190;
  v8 = qword_1EA84D190;
  if (!qword_1EA84D190)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1838CE550;
    v4[3] = &unk_1E6DDCCD0;
    v4[4] = &v5;
    sub_1838CE550(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

void sub_1838CC6E0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v84 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6, v7, v8, v9);
  v11 = sub_1838CC010();
  v12 = a2;
  v18 = objc_msgSend_systemFontOfSize_(v11, v13, v14, v15, v16, v17, a2);
  v19 = sub_1838CC210();
  objc_msgSend_setObject_forKey_(v10, v20, v18, v19, v21, v22);

  v23 = sub_1838CC300();
  v29 = objc_msgSend_whiteColor(v23, v24, v25, v26, v27, v28);
  v30 = sub_1838CC500();
  objc_msgSend_setObject_forKey_(v10, v31, v29, v30, v32, v33);

  v34 = sub_1838CC300();
  v40 = objc_msgSend_whiteColor(v34, v35, v36, v37, v38, v39);
  v41 = sub_1838CC5F0();
  objc_msgSend_setObject_forKey_(v10, v42, v40, v41, v43, v44);

  objc_msgSend_sizeWithAttributes_(v84, v45, v10, v46, v47, v48);
  v50 = v49;
  v52 = fmax(ceil(v51), 1.0);
  v53 = v12 / 200.0 * 50.0;
  *(a3 + 136) = 0;
  *(a3 + 144) = v53;
  *(a3 + 152) = v52;
  *(a3 + 160) = v53;
  v54 = v12 / 200.0 * 87.0;
  *(a3 + 104) = 0;
  *(a3 + 112) = v54;
  *(a3 + 120) = v52;
  *(a3 + 128) = v54;
  v55 = v12 / 200.0 * 192.0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v55;
  *(a3 + 88) = v52;
  *(a3 + 96) = v55;
  v56 = v12 / 200.0 * 226.0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v56;
  *(a3 + 56) = v52;
  *(a3 + 64) = v56;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v57 = off_1EA84D150;
  v93 = off_1EA84D150;
  if (!off_1EA84D150)
  {
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = sub_1838CDAF8;
    v88 = &unk_1E6DDCCD0;
    v89 = &v90;
    sub_1838CDAF8(&v85);
    v57 = v91[3];
  }

  _Block_object_dispose(&v90, 8);
  if (!v57)
  {
    goto LABEL_20;
  }

  v58 = fmax(ceil(v50), 1.0);
  v57(1, v52, v58, 0.0);
  objc_msgSend_drawInRect_withAttributes_(v84, v59, v10, v60, v61, v62, 0.0, 0.0, v52, v58);
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v63 = off_1EA84D160;
  v93 = off_1EA84D160;
  if (!off_1EA84D160)
  {
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = sub_1838CDCB4;
    v88 = &unk_1E6DDCCD0;
    v89 = &v90;
    sub_1838CDCB4(&v85);
    v63 = v91[3];
  }

  _Block_object_dispose(&v90, 8);
  if (!v63)
  {
    goto LABEL_20;
  }

  v64 = v63();
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v65 = off_1EA84D168;
  v93 = off_1EA84D168;
  if (!off_1EA84D168)
  {
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = sub_1838CDDFC;
    v88 = &unk_1E6DDCCD0;
    v89 = &v90;
    sub_1838CDDFC(&v85);
    v65 = v91[3];
  }

  _Block_object_dispose(&v90, 8);
  if (v65)
  {
    v65();
    v71 = objc_msgSend_CGImage(v64, v66, v67, v68, v69, v70);
    v72 = malloc_type_calloc((v58 * (v52 * 4.0)), 1uLL, 0x100004077774924uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v74 = vcvtd_n_u64_f64(v52, 2uLL);
    v75 = v52;
    v76 = CGBitmapContextCreate(v72, v52, v58, 8uLL, v74, DeviceRGB, 0x4001u);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v52;
    v95.size.height = v58;
    CGContextDrawImage(v76, v95, v71);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v76);
    if (v58 * v52)
    {
      if (((v58 * v52) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1836D58DC();
    }

    v77 = 0;
    v78 = 0;
    *a3 = v75;
    *(a3 + 8) = v58;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    v79 = 1;
    *(a3 + 32) = 0;
    do
    {
      v80 = 1;
      v81 = v79;
      v82 = v77;
      do
      {
        *v82++ = *(v72 + v81);
        v83 = v80++;
        v81 += 4;
      }

      while (v52 > v83);
      ++v78;
      v77 += v75;
      v79 += v74;
    }

    while (v58 > v78);
    free(v72);
  }

  else
  {
LABEL_20:
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

void sub_1838CCC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1838CCC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1838CCD64(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_1838CC6E0(a1, a2, v10);
  sub_1838C2CC8(v10, &v8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = v8;
  sub_18374AA38(a3, v8, v9, (v9 - v8) >> 4);
  *(a3 + 88) = v16;
  *(a3 + 104) = v17;
  *(a3 + 120) = v18;
  *(a3 + 136) = v19;
  v5 = v13;
  *(a3 + 24) = v12;
  *(a3 + 40) = v5;
  v6 = v15;
  *(a3 + 56) = v14;
  *(a3 + 72) = v6;
  if (v4)
  {
    operator delete(v4);
  }

  v7 = __p;
  if (__p)
  {

    operator delete(v7);
  }
}

void sub_1838CCE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
    if (!v15)
    {
LABEL_3:
      v18 = __p;
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  v18 = __p;
  if (!__p)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void sub_1838CCE94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = (v4 - v3) >> 4;
  *(a1 + 8) = 2;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v5 = (a2[1] - *a2) >> 4;
  *(a1 + 64) = 0;
  v6 = *a3;
  v7 = a3[1];
  *(a1 + 56) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = (v7 - v6) >> 4;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v8 = (a3[1] - *a3) >> 4;
  *(a1 + 104) = 0u;
  *(a1 + 88) = v8;
  *(a1 + 96) = 2;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 320) = vdupq_n_s64(2uLL);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  operator new();
}

void sub_1838CD55C(_Unwind_Exception *exception_object)
{
  v6 = v2[29];
  if (v6)
  {
    v1[43] = v6;
    operator delete(v6);
    v7 = v2[23];
    if (!v7)
    {
LABEL_3:
      v8 = v2[20];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = v2[23];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v1[37] = v7;
  operator delete(v7);
  v8 = v2[20];
  if (!v8)
  {
LABEL_4:
    v9 = v1[30];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v1[34] = v8;
  operator delete(v8);
  v9 = v1[30];
  if (!v9)
  {
LABEL_5:
    v10 = v1[25];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[31] = v9;
  operator delete(v9);
  v10 = v1[25];
  if (!v10)
  {
LABEL_6:
    v11 = v1[20];
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[26] = v10;
  operator delete(v10);
  v11 = v1[20];
  if (!v11)
  {
LABEL_7:
    v12 = v1[15];
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[21] = v11;
  operator delete(v11);
  v12 = v1[15];
  if (!v12)
  {
LABEL_8:
    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v1[16] = v12;
  operator delete(v12);
  v13 = *v3;
  if (!*v3)
  {
LABEL_9:
    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1[9] = v13;
  operator delete(v13);
  v14 = *v4;
  if (!*v4)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  v1[3] = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_1838CD690()
{
  if (*v0)
  {
    JUMPOUT(0x1838CD680);
  }

  JUMPOUT(0x1838CD5D8);
}

void sub_1838CD6A0()
{
  if (*(v0 + 360))
  {
    JUMPOUT(0x1838CD5F0);
  }

  JUMPOUT(0x1838CD590);
}

void *sub_1838CD6B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  a2[2] = 0;
  *a2 = 0;
  return result;
}

void sub_1838CD898(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1838CD8C4@<X0>(double *result@<X0>, double **a2@<X1>, double *a3@<X8>)
{
  v4 = result[4];
  v3 = result[5];
  v5 = (result[7] - v3) / (result[6] - v4);
  if (v5 == 0.0)
  {
    v5 = 0.001;
  }

  v6 = -1.0 / v5;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v10 = -3.40282347e38;
    v9 = 3.40282347e38;
  }

  else
  {
    v9 = 3.40282347e38;
    v10 = -3.40282347e38;
    do
    {
      v12 = *v7;
      v11 = v7[1];
      v7 += 2;
      v13 = v11 + -v6 * v12;
      if (v13 > v10)
      {
        v10 = v13;
      }

      if (v13 < v9)
      {
        v9 = v13;
      }
    }

    while (v7 != v8);
  }

  if (v10 == v9)
  {
    v10 = v10 + 0.1;
  }

  v14 = result[13] - v5 * result[12];
  v15 = result[9] - v5 * result[8];
  v16 = v3 - v5 * v4;
  v18 = *result;
  v17 = result[1];
  v19 = v6 - v5;
  v20 = (v16 - v10) / (v6 - v5);
  v21 = v16 + v5 * v20;
  v22 = (v16 - v9) / (v6 - v5);
  v23 = v16 + v5 * v22;
  if (v20 >= v22)
  {
    v24 = (v16 - v9) / v19;
  }

  else
  {
    v24 = (v16 - v10) / (v6 - v5);
  }

  if (v20 >= v22)
  {
    v25 = v16 + v5 * v22;
  }

  else
  {
    v25 = v16 + v5 * v20;
  }

  if (v20 < v22)
  {
    v20 = v22;
    v21 = v23;
  }

  a3[4] = v24;
  a3[5] = v25;
  a3[6] = v20;
  a3[7] = v21;
  v26 = (v15 - v10) / v19;
  v27 = v15 + v5 * v26;
  v28 = (v15 - v9) / v19;
  v29 = v15 + v5 * v28;
  if (v26 >= v28)
  {
    v30 = v26;
  }

  else
  {
    v30 = v28;
  }

  if (v26 >= v28)
  {
    v31 = v29;
  }

  else
  {
    v31 = v27;
  }

  if (v26 >= v28)
  {
    v26 = v28;
    v29 = v27;
  }

  a3[8] = v26;
  a3[9] = v31;
  a3[10] = v30;
  a3[11] = v29;
  v32 = (v14 - v10) / v19;
  v33 = v14 + v5 * v32;
  v34 = (v14 - v9) / v19;
  v35 = v14 + v5 * v34;
  if (v32 >= v34)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  if (v32 >= v34)
  {
    v37 = v32;
  }

  else
  {
    v37 = v34;
  }

  if (v32 >= v34)
  {
    v32 = v34;
  }

  else
  {
    v35 = v33;
  }

  v38 = v17 + -v5 * v18;
  a3[12] = v32;
  a3[13] = v35;
  a3[14] = v37;
  a3[15] = v36;
  v39 = (v38 - v10) / v19;
  v40 = v38 + v5 * v39;
  v41 = (v38 - v9) / v19;
  v42 = v38 + v5 * v41;
  if (v39 >= v41)
  {
    v43 = v40;
  }

  else
  {
    v43 = v42;
  }

  if (v39 >= v41)
  {
    v44 = v41;
  }

  else
  {
    v42 = v40;
    v44 = v39;
  }

  *a3 = v44;
  a3[1] = v42;
  if (v39 >= v41)
  {
    v45 = v39;
  }

  else
  {
    v45 = v41;
  }

  a3[2] = v45;
  a3[3] = v43;
  return result;
}

void *sub_1838CDA64(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_1838CDAF8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1838CDC40()
{
  result = _sl_dlopen();
  qword_1EA84D158 = result;
  return result;
}

void *sub_1838CDCB4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "UIGraphicsGetImageFromCurrentImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D160 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1838CDDFC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D168 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1838CDF44(void *a1)
{
  v2 = a1[52];
  if (v2)
  {
    a1[53] = v2;
    operator delete(v2);
  }

  v3 = a1[45];
  if (v3)
  {
    a1[46] = v3;
    operator delete(v3);
  }

  v4 = a1[42];
  if (v4)
  {
    a1[43] = v4;
    operator delete(v4);
  }

  v5 = a1[36];
  if (v5)
  {
    a1[37] = v5;
    operator delete(v5);
  }

  v6 = a1[33];
  if (v6)
  {
    a1[34] = v6;
    operator delete(v6);
  }

  v7 = a1[30];
  if (v7)
  {
    a1[31] = v7;
    operator delete(v7);
  }

  v8 = a1[25];
  if (v8)
  {
    a1[26] = v8;
    operator delete(v8);
  }

  v9 = a1[20];
  if (v9)
  {
    a1[21] = v9;
    operator delete(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    a1[16] = v10;
    operator delete(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    a1[9] = v11;
    operator delete(v11);
  }

  v12 = a1[2];
  if (v12)
  {
    a1[3] = v12;
    operator delete(v12);
  }

  return a1;
}

Class sub_1838CE018(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84D158)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1838CDC40;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDF7F0;
    v6 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84D158)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84D170 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1838CE16C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "NSFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D178 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1838CE2B4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84D158)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1838CDC40;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDF7F0;
    v6 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84D158)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84D180 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1838CE408(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "NSForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D188 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1838CE550(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D158)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1838CDC40;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF7F0;
    v8 = 0;
    qword_1EA84D158 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D158;
    if (qword_1EA84D158)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D158;
LABEL_5:
  result = dlsym(v2, "NSStrokeColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D190 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1838CE698(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = a2 - 1;
  v249 = a2 - 3;
  v250 = a2 - 2;
  j = a1;
  v248 = a2;
  while (1)
  {
    a1 = j;
    v12 = a2 - j;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          sub_1838CF598(j, j + 1, v10, a3);
          return;
        case 4:

          sub_1838CF79C(j, j + 1, j + 2, v10, a3);
          return;
        case 5:

          sub_1838CF95C(j, j + 1, j + 2, j + 3, v10, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v102 = *(a2 - 1);
        v103 = *j;
        v104 = **a3;
        v105 = (v104 + 16 * v102);
        v106 = v105[1];
        v107 = a3[1];
        v108 = (v104 + 16 * *j);
        v109 = v108[1];
        v110 = (v106 - a3[2]) * (v106 - a3[2]) + (*v105 - v107) * (*v105 - v107) - ((v109 - a3[2]) * (v109 - a3[2]) + (*v108 - v107) * (*v108 - v107));
        v111 = v110 < 0.0;
        if (v110 == 0.0 && (v112 = *v105 - *v108, v111 = v112 < 0.0, v112 == 0.0))
        {
          if (v106 >= v109)
          {
            return;
          }
        }

        else if (!v111)
        {
          return;
        }

        *j = v102;
        *(a2 - 1) = v103;
        return;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (j == a2)
      {
        return;
      }

      v119 = (v12 - 2) >> 1;
      v120 = *a3;
      v121 = a3[1];
      v122 = a3[2];
      v123 = v119;
      while (2)
      {
        v125 = v123;
        if (v119 < v123)
        {
          goto LABEL_151;
        }

        v126 = (2 * v123) | 1;
        v124 = &j[v126];
        v127 = *v120;
        if (2 * v125 + 2 < v12)
        {
          v128 = (v127 + 16 * *v124);
          v130 = *v128;
          v129 = v128[1];
          v131 = (v129 - v122) * (v129 - v122) + (*v128 - v121) * (*v128 - v121);
          v132 = (v127 + 16 * v124[1]);
          v133 = v132[1];
          v134 = v131 - ((v133 - v122) * (v133 - v122) + (*v132 - v121) * (*v132 - v121));
          v135 = v134 < 0.0;
          if (v134 == 0.0 && (v165 = v130 - *v132, v135 = v165 < 0.0, v165 == 0.0))
          {
            if (v129 >= v133)
            {
              goto LABEL_158;
            }
          }

          else if (!v135)
          {
            goto LABEL_158;
          }

          ++v124;
          v126 = 2 * v125 + 2;
        }

LABEL_158:
        v136 = j[v125];
        v137 = (v127 + 16 * *v124);
        v139 = *v137;
        v138 = v137[1];
        v140 = (v138 - v122) * (v138 - v122) + (*v137 - v121) * (*v137 - v121);
        v141 = (v127 + 16 * v136);
        v142 = *v141;
        v143 = v141[1];
        v144 = (v143 - v122) * (v143 - v122) + (*v141 - v121) * (*v141 - v121);
        v145 = v140 - v144;
        v146 = v145 < 0.0;
        if (v145 == 0.0 && (v164 = v139 - v142, v146 = v164 < 0.0, v164 == 0.0))
        {
          if (v138 < v143)
          {
            goto LABEL_151;
          }
        }

        else if (v146)
        {
          goto LABEL_151;
        }

        j[v125] = *v124;
LABEL_164:
        if (v119 < v126)
        {
          goto LABEL_150;
        }

        v151 = v124;
        v152 = 2 * v126;
        v126 = (2 * v126) | 1;
        v124 = &j[v126];
        v153 = v152 + 2;
        if (v153 < v12)
        {
          v154 = (v127 + 16 * *v124);
          v156 = *v154;
          v155 = v154[1];
          v157 = (v155 - v122) * (v155 - v122) + (*v154 - v121) * (*v154 - v121);
          v158 = (v127 + 16 * v124[1]);
          v159 = v158[1];
          v160 = v157 - ((v159 - v122) * (v159 - v122) + (*v158 - v121) * (*v158 - v121));
          v161 = v160 < 0.0;
          if (v160 == 0.0 && (v163 = v156 - *v158, v161 = v163 < 0.0, v163 == 0.0))
          {
            if (v155 >= v159)
            {
              goto LABEL_161;
            }
          }

          else if (!v161)
          {
            goto LABEL_161;
          }

          ++v124;
          v126 = v153;
        }

LABEL_161:
        v147 = (v127 + 16 * *v124);
        v148 = v147[1];
        v149 = (v148 - v122) * (v148 - v122) + (*v147 - v121) * (*v147 - v121) - v144;
        v150 = v149 < 0.0;
        if (v149 == 0.0 && (v162 = *v147 - v142, v150 = v162 < 0.0, v162 == 0.0))
        {
          if (v148 < v143)
          {
LABEL_149:
            v124 = v151;
LABEL_150:
            *v124 = v136;
LABEL_151:
            v123 = v125 - 1;
            if (v125)
            {
              continue;
            }

            while (2)
            {
              v168 = 0;
              v169 = *j;
              v170 = *a3;
              v171 = a3[1];
              v172 = a3[2];
              v166 = j;
LABEL_192:
              v173 = v166;
              v174 = &v166[v168];
              v166 = v174 + 1;
              v175 = 2 * v168;
              v168 = (2 * v168) | 1;
              v176 = v175 + 2;
              if (v176 < v12)
              {
                v178 = v174[2];
                v177 = v174 + 2;
                v179 = (*v170 + 16 * *(v177 - 1));
                v180 = v179[1];
                v181 = (*v170 + 16 * v178);
                v182 = v181[1];
                v183 = (v180 - v172) * (v180 - v172) + (*v179 - v171) * (*v179 - v171) - ((v182 - v172) * (v182 - v172) + (*v181 - v171) * (*v181 - v171));
                v184 = v183 < 0.0;
                if (v183 == 0.0 && (v185 = *v179 - *v181, v184 = v185 < 0.0, v185 == 0.0))
                {
                  if (v180 < v182)
                  {
LABEL_190:
                    v166 = v177;
                    v168 = v176;
                  }
                }

                else if (v184)
                {
                  goto LABEL_190;
                }
              }

              *v173 = *v166;
              if (v168 > ((v12 - 2) >> 1))
              {
                if (v166 == --a2)
                {
                  goto LABEL_187;
                }

                *v166 = *a2;
                *a2 = v169;
                v186 = (v166 - j + 8) >> 3;
                v187 = v186 - 2;
                if (v186 >= 2)
                {
                  v188 = v187 >> 1;
                  v189 = &j[v187 >> 1];
                  v169 = *v166;
                  v190 = *v170;
                  v191 = (v190 + 16 * *v189);
                  v193 = *v191;
                  v192 = v191[1];
                  v194 = (v192 - v172) * (v192 - v172) + (*v191 - v171) * (*v191 - v171);
                  v195 = (v190 + 16 * *v166);
                  v196 = *v195;
                  v197 = v195[1];
                  v198 = (v197 - v172) * (v197 - v172) + (*v195 - v171) * (*v195 - v171);
                  v199 = v194 - v198;
                  v200 = v199 < 0.0;
                  if (v199 == 0.0 && (v207 = v193 - v196, v200 = v207 < 0.0, v207 == 0.0))
                  {
                    if (v192 < v197)
                    {
LABEL_204:
                      *v166 = *v189;
                      if (v187 >= 2)
                      {
                        while (1)
                        {
                          v201 = v188 - 1;
                          v188 = (v188 - 1) >> 1;
                          v166 = &j[v188];
                          v202 = (v190 + 16 * *v166);
                          v203 = v202[1];
                          v204 = (v203 - v172) * (v203 - v172) + (*v202 - v171) * (*v202 - v171) - v198;
                          v205 = v204 < 0.0;
                          if (v204 == 0.0 && (v206 = *v202 - v196, v205 = v206 < 0.0, v206 == 0.0))
                          {
                            if (v203 >= v197)
                            {
                              break;
                            }
                          }

                          else if (!v205)
                          {
                            break;
                          }

                          *v189 = *v166;
                          v189 = &j[v188];
                          if (v201 <= 1)
                          {
                            goto LABEL_187;
                          }
                        }
                      }

                      v166 = v189;
LABEL_187:
                      *v166 = v169;
                    }
                  }

                  else if (v200)
                  {
                    goto LABEL_204;
                  }
                }

                if (v12-- <= 2)
                {
                  return;
                }

                continue;
              }

              goto LABEL_192;
            }
          }
        }

        else if (v150)
        {
          goto LABEL_149;
        }

        break;
      }

      *v151 = *v124;
      goto LABEL_164;
    }

    v13 = v12 >> 1;
    v14 = &j[v12 >> 1];
    if (v12 < 0x81)
    {
      sub_1838CF598(&a1[v12 >> 1], a1, v10, a3);
    }

    else
    {
      sub_1838CF598(a1, &a1[v12 >> 1], v10, a3);
      v15 = &a1[v13];
      sub_1838CF598(a1 + 1, v15 - 1, v250, a3);
      sub_1838CF598(a1 + 2, &a1[v13 + 1], v249, a3);
      a2 = v248;
      sub_1838CF598(v15 - 1, v14, &a1[v13 + 1], a3);
      v16 = *a1;
      *a1 = *v15;
      *v15 = v16;
    }

    --a4;
    v17 = *a1;
    v18 = **a3;
    v19 = a3[1];
    v20 = a3[2];
    if (a5)
    {
      v21 = (2 * v17) | 1;
LABEL_18:
      v30 = 0;
      v31 = *(v18 + 16 * *a1);
      v32 = *(v18 + 8 * v21);
      v33 = (v32 - v20) * (v32 - v20) + (v31 - v19) * (v31 - v19);
      while (1)
      {
        v36 = a1[v30 + 1];
        v37 = (v18 + 16 * v36);
        v38 = v37[1];
        v39 = (v38 - v20) * (v38 - v20) + (*v37 - v19) * (*v37 - v19) - v33;
        v35 = v39 < 0.0;
        if (v39 == 0.0)
        {
          v34 = *v37 - v31;
          v35 = v34 < 0.0;
          if (v34 == 0.0)
          {
            break;
          }
        }

        if (!v35)
        {
          goto LABEL_26;
        }

LABEL_22:
        ++v30;
      }

      if (v38 < v32)
      {
        goto LABEL_22;
      }

LABEL_26:
      v40 = &a1[v30];
      v41 = &a1[v30 + 1];
      i = v10;
      if (v30 * 8)
      {
        while (1)
        {
          v43 = (v18 + 16 * *i);
          v44 = v43[1];
          v45 = (v44 - v20) * (v44 - v20) + (*v43 - v19) * (*v43 - v19) - v33;
          v46 = v45 < 0.0;
          if (v45 == 0.0 && (v47 = *v43 - v31, v46 = v47 < 0.0, v47 == 0.0))
          {
            if (v44 < v32)
            {
              goto LABEL_46;
            }
          }

          else if (v46)
          {
            goto LABEL_46;
          }

          --i;
        }
      }

      i = a2;
      if (v41 < a2)
      {
        for (i = v10; ; --i)
        {
          v48 = (v18 + 16 * *i);
          v49 = v48[1];
          v50 = (v49 - v20) * (v49 - v20) + (*v48 - v19) * (*v48 - v19) - v33;
          if (v50 == 0.0)
          {
            v51 = *v48 - v31;
            if (v51 == 0.0)
            {
              if (v41 >= i || v49 < v32)
              {
                break;
              }
            }

            else if (v41 >= i || v51 < 0.0)
            {
              break;
            }
          }

          else if (v41 >= i || v50 < 0.0)
          {
            break;
          }
        }
      }

LABEL_46:
      if (v41 >= i)
      {
        goto LABEL_66;
      }

      v52 = *i;
      v53 = v41;
      v54 = i;
      while (2)
      {
        *v53++ = v52;
        *v54 = v36;
        while (2)
        {
          v36 = *v53;
          v57 = (v18 + 16 * *v53);
          v58 = v57[1];
          v59 = (v58 - v20) * (v58 - v20) + (*v57 - v19) * (*v57 - v19) - v33;
          v56 = v59 < 0.0;
          if (v59 == 0.0)
          {
            v55 = *v57 - v31;
            v56 = v55 < 0.0;
            if (v55 == 0.0)
            {
              if (v58 >= v32)
              {
                goto LABEL_57;
              }

LABEL_53:
              ++v53;
              continue;
            }
          }

          break;
        }

        if (v56)
        {
          goto LABEL_53;
        }

        do
        {
          while (1)
          {
LABEL_57:
            while (1)
            {
              v60 = *--v54;
              v52 = v60;
              v61 = (v18 + 16 * v60);
              v62 = v61[1];
              v63 = (v62 - v20) * (v62 - v20) + (*v61 - v19) * (*v61 - v19) - v33;
              if (v63 == 0.0)
              {
                break;
              }

              if (v63 < 0.0)
              {
                goto LABEL_48;
              }
            }

            v64 = *v61 - v31;
            if (v64 == 0.0)
            {
              break;
            }

            if (v64 < 0.0)
            {
              goto LABEL_48;
            }
          }
        }

        while (v62 >= v32);
LABEL_48:
        if (v53 < v54)
        {
          continue;
        }

        break;
      }

      v40 = v53 - 1;
LABEL_66:
      if (v40 != a1)
      {
        *a1 = *v40;
      }

      *v40 = v17;
      if (v41 < i)
      {
LABEL_71:
        sub_1838CE698(a1, v40, a3, a4, a5 & 1);
        a5 = 0;
        j = v40 + 1;
      }

      else
      {
        v65 = sub_1838CFB94(a1, v40, a3);
        j = v40 + 1;
        if (sub_1838CFB94(v40 + 1, a2, a3))
        {
          a2 = v40;
          if (v65)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v65)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v22 = (v18 + 16 * *(a1 - 1));
      v24 = *v22;
      v23 = v22[1];
      v25 = (v23 - v20) * (v23 - v20) + (*v22 - v19) * (*v22 - v19);
      v26 = *(v18 + 16 * v17);
      v21 = (2 * v17) | 1;
      v27 = *(v18 + 8 * v21);
      v28 = (v27 - v20) * (v27 - v20) + (v26 - v19) * (v26 - v19);
      v29 = v25 - v28;
      if (v29 == 0.0)
      {
        v66 = v24 - v26;
        if (v66 == 0.0)
        {
          if (v23 < v27)
          {
            goto LABEL_18;
          }
        }

        else if (v66 < 0.0)
        {
          goto LABEL_18;
        }
      }

      else if (v29 < 0.0)
      {
        goto LABEL_18;
      }

      v67 = *v10;
      v68 = (v18 + 16 * *v10);
      v69 = v68[1];
      v70 = v28 - ((v69 - v20) * (v69 - v20) + (*v68 - v19) * (*v68 - v19));
      if (v70 == 0.0)
      {
        v76 = v26 - *v68;
        if (v76 == 0.0)
        {
          if (v27 < v69)
          {
LABEL_76:
            for (j = a1 + 1; ; ++j)
            {
              v71 = (v18 + 16 * *j);
              v72 = v71[1];
              v73 = v28 - ((v72 - v20) * (v72 - v20) + (*v71 - v19) * (*v71 - v19));
              v74 = v73 < 0.0;
              if (v73 == 0.0 && (v75 = v26 - *v71, v74 = v75 < 0.0, v75 == 0.0))
              {
                if (v27 < v72)
                {
                  goto LABEL_95;
                }
              }

              else if (v74)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else if (v76 < 0.0)
        {
          goto LABEL_76;
        }
      }

      else if (v70 < 0.0)
      {
        goto LABEL_76;
      }

      for (j = a1 + 1; j < a2; ++j)
      {
        v79 = (v18 + 16 * *j);
        v80 = v79[1];
        v81 = v28 - ((v80 - v20) * (v80 - v20) + (*v79 - v19) * (*v79 - v19));
        v78 = v81 < 0.0;
        if (v81 == 0.0 && (v77 = v26 - *v79, v78 = v77 < 0.0, v77 == 0.0))
        {
          if (v27 < v80)
          {
            break;
          }
        }

        else if (v78)
        {
          break;
        }
      }

LABEL_95:
      k = a2;
      if (j < a2)
      {
        for (k = v10; ; --k)
        {
          v86 = (v18 + 16 * v67);
          v87 = v86[1];
          v88 = v28 - ((v87 - v20) * (v87 - v20) + (*v86 - v19) * (*v86 - v19));
          v84 = v88 < 0.0;
          if (v88 == 0.0 && (v83 = v26 - *v86, v84 = v83 < 0.0, v83 == 0.0))
          {
            if (v27 >= v87)
            {
              break;
            }
          }

          else if (!v84)
          {
            break;
          }

          v85 = *(k - 1);
          v67 = v85;
        }
      }

      if (j < k)
      {
        v89 = *j;
        v90 = *k;
        do
        {
          *j++ = v90;
          *k = v89;
          while (1)
          {
            v89 = *j;
            v93 = (v18 + 16 * *j);
            v94 = v93[1];
            v95 = v28 - ((v94 - v20) * (v94 - v20) + (*v93 - v19) * (*v93 - v19));
            v92 = v95 < 0.0;
            if (v95 == 0.0)
            {
              v91 = v26 - *v93;
              v92 = v91 < 0.0;
              if (v91 == 0.0)
              {
                break;
              }
            }

            if (v92)
            {
              goto LABEL_114;
            }

LABEL_110:
            ++j;
          }

          if (v27 >= v94)
          {
            goto LABEL_110;
          }

          do
          {
            while (1)
            {
LABEL_114:
              while (1)
              {
                v96 = *--k;
                v90 = v96;
                v97 = (v18 + 16 * v96);
                v98 = v97[1];
                v99 = v28 - ((v98 - v20) * (v98 - v20) + (*v97 - v19) * (*v97 - v19));
                if (v99 == 0.0)
                {
                  break;
                }

                if (v99 >= 0.0)
                {
                  goto LABEL_106;
                }
              }

              v100 = v26 - *v97;
              if (v100 == 0.0)
              {
                break;
              }

              if (v100 >= 0.0)
              {
                goto LABEL_106;
              }
            }
          }

          while (v27 < v98);
LABEL_106:
          ;
        }

        while (j < k);
      }

      v101 = j - 1;
      if (j - 1 != a1)
      {
        *a1 = *v101;
      }

      a5 = 0;
      *v101 = v17;
    }
  }

  if (a5)
  {
    if (j != a2)
    {
      v113 = j + 1;
      if (j + 1 != a2)
      {
        v114 = 0;
        v115 = **a3;
        v116 = a3[1];
        v117 = a3[2];
        v118 = j;
        while (1)
        {
          v208 = v118;
          v118 = v113;
          v209 = v208[1];
          v210 = (v115 + 16 * v209);
          v211 = *v210;
          v212 = v210[1];
          v213 = (v212 - v117) * (v212 - v117) + (*v210 - v116) * (*v210 - v116);
          v214 = (v115 + 16 * *v208);
          v215 = v214[1];
          v216 = v213 - ((v215 - v117) * (v215 - v117) + (*v214 - v116) * (*v214 - v116));
          v217 = v216 < 0.0;
          if (v216 == 0.0 && (v225 = v211 - *v214, v217 = v225 < 0.0, v225 == 0.0))
          {
            if (v212 >= v215)
            {
              goto LABEL_217;
            }
          }

          else if (!v217)
          {
            goto LABEL_217;
          }

          v208[1] = *v208;
          v218 = j;
          if (v208 == j)
          {
            goto LABEL_216;
          }

          v219 = v114;
          while (1)
          {
            v220 = *(j + v219 - 8);
            v221 = (v115 + 16 * v220);
            v222 = v221[1];
            v223 = v213 - ((v222 - v117) * (v222 - v117) + (*v221 - v116) * (*v221 - v116));
            if (v223 == 0.0)
            {
              break;
            }

            if (v223 >= 0.0)
            {
              goto LABEL_235;
            }

LABEL_225:
            --v208;
            *(j + v219) = v220;
            v219 -= 8;
            if (!v219)
            {
              v218 = j;
              goto LABEL_216;
            }
          }

          v224 = v211 - *v221;
          if (v224 == 0.0)
          {
            break;
          }

          if (v224 < 0.0)
          {
            goto LABEL_225;
          }

LABEL_235:
          v218 = v208;
LABEL_216:
          *v218 = v209;
LABEL_217:
          v113 = v118 + 1;
          v114 += 8;
          if (v118 + 1 == a2)
          {
            return;
          }
        }

        if (v212 >= v222)
        {
          v218 = (j + v219);
          goto LABEL_216;
        }

        goto LABEL_225;
      }
    }
  }

  else if (j != a2)
  {
    v226 = j + 1;
    if (j + 1 != a2)
    {
      v227 = **a3;
      v228 = a3[1];
      v229 = a3[2];
      do
      {
        v230 = a1;
        a1 = v226;
        v232 = *v230;
        v231 = v230[1];
        v233 = (v227 + 16 * v231);
        v234 = *v233;
        v235 = v233[1];
        v236 = (v235 - v229) * (v235 - v229) + (*v233 - v228) * (*v233 - v228);
        v237 = (v227 + 16 * *v230);
        v238 = v237[1];
        v239 = v236 - ((v238 - v229) * (v238 - v229) + (*v237 - v228) * (*v237 - v228));
        v240 = v239 < 0.0;
        if (v239 == 0.0 && (v247 = v234 - *v237, v240 = v247 < 0.0, v247 == 0.0))
        {
          if (v235 < v238)
          {
            do
            {
              while (1)
              {
LABEL_244:
                while (1)
                {
                  v241 = v230;
                  v242 = *--v230;
                  v230[2] = v232;
                  v232 = v242;
                  v243 = (v227 + 16 * v242);
                  v244 = v243[1];
                  v245 = v236 - ((v244 - v229) * (v244 - v229) + (*v243 - v228) * (*v243 - v228));
                  if (v245 == 0.0)
                  {
                    break;
                  }

                  if (v245 >= 0.0)
                  {
                    goto LABEL_239;
                  }
                }

                v246 = v234 - *v243;
                if (v246 == 0.0)
                {
                  break;
                }

                if (v246 >= 0.0)
                {
                  goto LABEL_239;
                }
              }
            }

            while (v235 < v244);
LABEL_239:
            *v241 = v231;
          }
        }

        else if (v240)
        {
          goto LABEL_244;
        }

        v226 = a1 + 1;
      }

      while (a1 + 1 != a2);
    }
  }
}

double sub_1838CF598(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = (v6 + 16 * *a2);
  v9 = *v7;
  v8 = v7[1];
  v11 = a4[1];
  result = a4[2];
  v12 = (v8 - result) * (v8 - result) + (*v7 - v11) * (*v7 - v11);
  v13 = (v6 + 16 * *a1);
  v15 = *v13;
  v14 = v13[1];
  v16 = (v14 - result) * (v14 - result) + (*v13 - v11) * (*v13 - v11);
  if (v12 - v16 == 0.0)
  {
    if (v9 - v15 == 0.0)
    {
      if (v8 < v14)
      {
        goto LABEL_3;
      }
    }

    else if (v9 - v15 < 0.0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v21 = (v6 + 16 * *a3);
    v22 = v21[1];
    v23 = (v22 - result) * (v22 - result) + (*v21 - v11) * (*v21 - v11) - v12;
    v24 = v23 < 0.0;
    if (v23 == 0.0 && (v34 = *v21 - v9, v24 = v34 < 0.0, v34 == 0.0))
    {
      if (v22 >= v8)
      {
        return result;
      }
    }

    else if (!v24)
    {
      return result;
    }

    *a2 = *a3;
    *a3 = v4;
    v25 = *a1;
    v26 = (v6 + 16 * *a2);
    v28 = *v26;
    v27 = v26[1];
    v29 = (v6 + 16 * *a1);
    v31 = *v29;
    v30 = v29[1];
    result = (v27 - result) * (v27 - result) + (*v26 - v11) * (*v26 - v11) - ((v30 - result) * (v30 - result) + (*v29 - v11) * (*v29 - v11));
    v32 = result < 0.0;
    if (result == 0.0 && (result = v28 - v31, v32 = v28 - v31 < 0.0, v28 - v31 == 0.0))
    {
      if (v27 >= v30)
      {
        return result;
      }
    }

    else if (!v32)
    {
      return result;
    }

    *a1 = *a2;
    *a2 = v25;
    return result;
  }

  if (v12 - v16 >= 0.0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = (v6 + 16 * *a3);
  v18 = v17[1];
  v19 = (v18 - result) * (v18 - result) + (*v17 - v11) * (*v17 - v11) - v12;
  v20 = v19 < 0.0;
  if (v19 != 0.0 || (v33 = *v17 - v9, v20 = v33 < 0.0, v33 != 0.0))
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_6:
    *a1 = *a3;
    *a3 = v5;
    return result;
  }

  if (v18 < v8)
  {
    goto LABEL_6;
  }

LABEL_25:
  *a1 = v4;
  *a2 = v5;
  v35 = (v6 + 16 * *a3);
  v37 = *v35;
  v36 = v35[1];
  result = (v36 - result) * (v36 - result) + (*v35 - v11) * (*v35 - v11) - v16;
  v38 = result < 0.0;
  if (result == 0.0)
  {
    result = v37 - v15;
    v38 = v37 - v15 < 0.0;
    if (v37 - v15 == 0.0)
    {
      if (v36 >= v14)
      {
        return result;
      }

LABEL_28:
      *a2 = *a3;
      *a3 = v5;
      return result;
    }
  }

  if (v38)
  {
    goto LABEL_28;
  }

  return result;
}

double sub_1838CF79C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double *a5)
{
  sub_1838CF598(a1, a2, a3, a5);
  v10 = *a3;
  v11 = **a5;
  v12 = (v11 + 16 * *a4);
  v14 = *v12;
  v13 = v12[1];
  result = a5[1];
  v16 = a5[2];
  v17 = (v13 - v16) * (v13 - v16) + (*v12 - result) * (*v12 - result);
  v18 = (v11 + 16 * *a3);
  v19 = v18[1];
  v20 = v17 - ((v19 - v16) * (v19 - v16) + (*v18 - result) * (*v18 - result));
  v21 = v20 < 0.0;
  if (v20 == 0.0 && (v39 = v14 - *v18, v21 = v39 < 0.0, v39 == 0.0))
  {
    if (v13 >= v19)
    {
      return result;
    }
  }

  else if (!v21)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v10;
  v22 = *a2;
  v23 = (v11 + 16 * *a3);
  v25 = *v23;
  v24 = v23[1];
  v26 = (v24 - v16) * (v24 - v16) + (*v23 - result) * (*v23 - result);
  v27 = (v11 + 16 * *a2);
  v28 = v27[1];
  v29 = v26 - ((v28 - v16) * (v28 - v16) + (*v27 - result) * (*v27 - result));
  v30 = v29 < 0.0;
  if (v29 == 0.0 && (v40 = v25 - *v27, v30 = v40 < 0.0, v40 == 0.0))
  {
    if (v24 >= v28)
    {
      return result;
    }
  }

  else if (!v30)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v22;
  v31 = *a1;
  v32 = (v11 + 16 * *a2);
  v34 = *v32;
  v33 = v32[1];
  v35 = (v11 + 16 * *a1);
  v37 = *v35;
  v36 = v35[1];
  result = (v33 - v16) * (v33 - v16) + (*v32 - result) * (*v32 - result) - ((v36 - v16) * (v36 - v16) + (*v35 - result) * (*v35 - result));
  v38 = result < 0.0;
  if (result == 0.0)
  {
    result = v34 - v37;
    v38 = v34 - v37 < 0.0;
    if (v34 - v37 == 0.0)
    {
      if (v33 >= v36)
      {
        return result;
      }

LABEL_10:
      *a1 = *a2;
      *a2 = v31;
      return result;
    }
  }

  if (v38)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_1838CF95C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  sub_1838CF79C(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = **a6;
  v14 = (v13 + 16 * *a5);
  v16 = *v14;
  v15 = v14[1];
  result = a6[1];
  v18 = a6[2];
  v19 = (v15 - v18) * (v15 - v18) + (*v14 - result) * (*v14 - result);
  v20 = (v13 + 16 * *a4);
  v21 = v20[1];
  v22 = v19 - ((v21 - v18) * (v21 - v18) + (*v20 - result) * (*v20 - result));
  v23 = v22 < 0.0;
  if (v22 == 0.0 && (v50 = v16 - *v20, v23 = v50 < 0.0, v50 == 0.0))
  {
    if (v15 >= v21)
    {
      return result;
    }
  }

  else if (!v23)
  {
    return result;
  }

  *a4 = *a5;
  *a5 = v12;
  v24 = *a3;
  v25 = (v13 + 16 * *a4);
  v27 = *v25;
  v26 = v25[1];
  v28 = (v26 - v18) * (v26 - v18) + (*v25 - result) * (*v25 - result);
  v29 = (v13 + 16 * *a3);
  v30 = v29[1];
  v31 = v28 - ((v30 - v18) * (v30 - v18) + (*v29 - result) * (*v29 - result));
  v32 = v31 < 0.0;
  if (v31 == 0.0 && (v51 = v27 - *v29, v32 = v51 < 0.0, v51 == 0.0))
  {
    if (v26 >= v30)
    {
      return result;
    }
  }

  else if (!v32)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v24;
  v33 = *a2;
  v34 = (v13 + 16 * *a3);
  v36 = *v34;
  v35 = v34[1];
  v37 = (v35 - v18) * (v35 - v18) + (*v34 - result) * (*v34 - result);
  v38 = (v13 + 16 * *a2);
  v39 = v38[1];
  v40 = v37 - ((v39 - v18) * (v39 - v18) + (*v38 - result) * (*v38 - result));
  v41 = v40 < 0.0;
  if (v40 == 0.0 && (v52 = v36 - *v38, v41 = v52 < 0.0, v52 == 0.0))
  {
    if (v35 >= v39)
    {
      return result;
    }
  }

  else if (!v41)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v33;
  v42 = *a1;
  v43 = (v13 + 16 * *a2);
  v45 = *v43;
  v44 = v43[1];
  v46 = (v13 + 16 * *a1);
  v48 = *v46;
  v47 = v46[1];
  result = (v44 - v18) * (v44 - v18) + (*v43 - result) * (*v43 - result) - ((v47 - v18) * (v47 - v18) + (*v46 - result) * (*v46 - result));
  v49 = result < 0.0;
  if (result == 0.0)
  {
    result = v45 - v48;
    v49 = v45 - v48 < 0.0;
    if (v45 - v48 == 0.0)
    {
      if (v44 >= v47)
      {
        return result;
      }

LABEL_13:
      *a1 = *a2;
      *a2 = v42;
      return result;
    }
  }

  if (v49)
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_1838CFB94(uint64_t *a1, uint64_t *a2, double *a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1838CF598(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_1838CF79C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1838CF95C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }

    goto LABEL_13;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_13:
    v15 = a1 + 2;
    sub_1838CF598(a1, a1 + 1, a1 + 2, a3);
    v18 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v19 = 0;
    v20 = 0;
    v21 = **a3;
    v22 = a3[1];
    v23 = a3[2];
LABEL_17:
    v24 = *v18;
    v25 = (v21 + 16 * *v18);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v27 - v23) * (v27 - v23) + (*v25 - v22) * (*v25 - v22);
    v29 = (v21 + 16 * *v15);
    v30 = v29[1];
    v31 = v28 - ((v30 - v23) * (v30 - v23) + (*v29 - v22) * (*v29 - v22));
    v32 = v31 < 0.0;
    if (v31 == 0.0 && (v39 = v26 - *v29, v32 = v39 < 0.0, v39 == 0.0))
    {
      if (v27 >= v30)
      {
        goto LABEL_16;
      }
    }

    else if (!v32)
    {
      goto LABEL_16;
    }

    *v18 = *v15;
    v33 = v19;
    while (1)
    {
      v34 = *(a1 + v33 + 8);
      v35 = (v21 + 16 * v34);
      v36 = v35[1];
      v37 = v28 - ((v36 - v23) * (v36 - v23) + (*v35 - v22) * (*v35 - v22));
      if (v37 == 0.0)
      {
        v38 = v26 - *v35;
        if (v38 == 0.0)
        {
          if (v27 >= v36)
          {
            goto LABEL_15;
          }
        }

        else if (v38 >= 0.0)
        {
          v15 = (a1 + v33 + 16);
LABEL_15:
          *v15 = v24;
          if (++v20 == 8)
          {
            return v18 + 1 == a2;
          }

LABEL_16:
          v15 = v18;
          v19 += 8;
          if (++v18 != a2)
          {
            goto LABEL_17;
          }

          return 1;
        }
      }

      else if (v37 >= 0.0)
      {
        goto LABEL_15;
      }

      --v15;
      *(a1 + v33 + 16) = v34;
      v33 -= 8;
      if (v33 == -16)
      {
        v15 = a1;
        goto LABEL_15;
      }
    }
  }

  v6 = *(a2 - 1);
  v7 = *a1;
  v8 = **a3;
  v9 = (v8 + 16 * v6);
  v10 = v9[1];
  v11 = a3[1];
  v12 = (v8 + 16 * *a1);
  v13 = v12[1];
  v14 = (v10 - a3[2]) * (v10 - a3[2]) + (*v9 - v11) * (*v9 - v11) - ((v13 - a3[2]) * (v13 - a3[2]) + (*v12 - v11) * (*v12 - v11));
  if (v14 == 0.0)
  {
    v40 = *v9 - *v12;
    if (v40 == 0.0)
    {
      if (v10 >= v13)
      {
        return 1;
      }
    }

    else if (v40 >= 0.0)
    {
      return 1;
    }
  }

  else if (v14 >= 0.0)
  {
    return 1;
  }

  *a1 = v6;
  *(a2 - 1) = v7;
  return 1;
}

void sub_1838CFE88()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = &unk_1EF1BF1C8;
  __cxa_throw(exception, &unk_1EF1BF1A0, std::exception::~exception);
}

void sub_1838CFED8(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838D0110(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1838D0488(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

float64x2_t sub_1838D1528(float64x2_t *a1, float64x2_t *a2, float64x2_t a3, float64_t a4, float64x2_t a5, float64_t a6)
{
  a5.f64[1] = a6;
  __asm { FMOV            V4.2D, #1.0 }

  v11 = vbslq_s8(vceqzq_f64(a5), _Q4, a5);
  a3.f64[1] = a4;
  v12 = vdivq_f64(vsubq_f64(a2[1], a3), v11);
  *a1 = vdivq_f64(vsubq_f64(*a2, a3), v11);
  a1[1] = v12;
  v13 = vdivq_f64(vsubq_f64(a2[3], a3), v11);
  a1[2] = vdivq_f64(vsubq_f64(a2[2], a3), v11);
  a1[3] = v13;
  v14 = vdivq_f64(vsubq_f64(a2[5], a3), v11);
  a1[4] = vdivq_f64(vsubq_f64(a2[4], a3), v11);
  a1[5] = v14;
  v15 = vdivq_f64(vsubq_f64(a2[6], a3), v11);
  result = vdivq_f64(vsubq_f64(a2[7], a3), v11);
  a1[6] = v15;
  a1[7] = result;
  return result;
}

void sub_1838D2598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1838CDF44(&a27);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1838D25F0(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = a2;
  *&v73 = &unk_1EF1BF1F0;
  *(&v74 + 1) = &v73;
  v7 = objc_msgSend_copy(v63, v2, v3, v4, v5, v6);
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v13 = objc_msgSend_strokeCount(v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    if (v13 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v19 = 0;
  v20 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v72 = 0;
  v22 = v69;
  v21 = v70;
  v23 = 0;
  v64 = v68;
  while (objc_msgSend_strokeCount(v7, v14, v15, v16, v17, v18) > v20)
  {
    v28 = objc_msgSend_pointCountForStrokeIndex_(v7, v24, v20, v25, v26, v27);
    if (v28)
    {
      v29 = v23 - v19;
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v19) >> 3);
      v31 = v30 + 1;
      if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        v69 = v22;
        v70 = v21;
        v68 = v64;
        sub_18368964C();
      }

      if (0x5555555555555556 * (-v19 >> 3) > v31)
      {
        v31 = 0x5555555555555556 * (-v19 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v19 >> 3) >= 0x555555555555555)
      {
        v32 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        if (v32 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        v69 = v22;
        v70 = v21;
        v68 = v64;
        sub_183688F00();
      }

      v33 = 24 * v30;
      v22 = 24 * v30 + 24;
      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      memcpy((24 * v30 - v29), v19, v29);
      v64 = (24 * v30 - v29);
      if (v19)
      {
        operator delete(v19);
      }

      v21 = 0;
      v65 = 24 * v30 - v29;
      if (v28 > (*(24 * v30 + 0x10) - *(24 * v30)) >> 4)
      {
        if (!(v28 >> 60))
        {
          operator new();
        }

        v69 = 24 * v30 + 24;
        v70 = 0;
        v68 = (24 * v30 - v29);
        sub_18369761C();
      }

      for (i = 0; i != v28; ++i)
      {
        objc_msgSend_pointForStrokeIndex_pointIndex_(v7, v14, v20, i, v17, v18);
        *&v66 = v35;
        *(&v66 + 1) = v36;
        v37 = *(v22 - 16);
        if (v37 == *(v22 - 24) || *(v37 - 16) != v35 || *(v37 - 8) != v36)
        {
          if (!*(&v74 + 1))
          {
            v69 = v22;
            v70 = 0;
            v68 = v64;
            sub_1837916E4();
          }

          (*(**(&v74 + 1) + 48))(*(&v74 + 1), &v66);
          v41 = *(v22 - 16);
          v40 = *(v22 - 8);
          if (v41 >= v40)
          {
            v43 = *(v22 - 24);
            v44 = v41 - v43;
            v45 = (v41 - v43) >> 4;
            v46 = v45 + 1;
            if ((v45 + 1) >> 60)
            {
              v69 = v22;
              v70 = 0;
              v68 = v64;
              sub_18369761C();
            }

            v47 = v40 - v43;
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

              v69 = v22;
              v70 = 0;
              v68 = v64;
              sub_183688F00();
            }

            v49 = (16 * v45);
            *v49 = v38;
            v49[1] = v39;
            v42 = 16 * v45 + 16;
            memcpy(0, v43, v44);
            *(v22 - 24) = 0;
            *(v22 - 16) = v42;
            *(v22 - 8) = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            *v41 = v38;
            *(v41 + 1) = v39;
            v42 = (v41 + 16);
          }

          *(v22 - 16) = v42;
        }
      }

      v23 = v22;
      v19 = v65;
    }

    ++v20;
  }

  v69 = v22;
  v70 = v21;
  v68 = v64;

  if (*(&v74 + 1) == &v73)
  {
    (*(**(&v74 + 1) + 32))(*(&v74 + 1));
  }

  else if (*(&v74 + 1))
  {
    (*(**(&v74 + 1) + 40))();
  }

  sub_1838C28C4(&v68, __p);
  v50 = xmmword_1839CE920;
  v73 = xmmword_1839CE920;
  v74 = xmmword_1839CE920;
  v51 = __p[0];
  if (__p[0] != __p[1])
  {
    v52 = xmmword_1839CE920;
    v53 = xmmword_1839CE920;
    v54 = xmmword_1839CE920;
    do
    {
      v55 = *v51++;
      v56 = vdupq_lane_s64(v55.i64[0], 0);
      v57 = vdupq_laneq_s64(v55, 1);
      v58 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v52, v56), vcgtq_f64(v50, v57)));
      v59 = vmovn_s32(vuzp1q_s32(vcgtq_f64(v56, v52), vcgtq_f64(v57, v50)));
      v60.i64[0] = v58.u16[2];
      v60.i64[1] = v59.u16[3];
      v61 = vcltzq_s64(vshlq_n_s64(v60, 0x3FuLL));
      v54 = vbslq_s8(v61, v57, v54);
      v60.i64[0] = v58.u16[0];
      v60.i64[1] = v59.u16[1];
      v62 = vcltzq_s64(vshlq_n_s64(v60, 0x3FuLL));
      v53 = vbslq_s8(v62, v56, v53);
      v50 = vbslq_s8(v61, v57, v50);
      v52 = vbslq_s8(v62, v56, v52);
    }

    while (v51 != __p[1]);
    v73 = v53;
    v74 = v54;
  }

  sub_1838CD6B0(__p, &v66);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v66;
  v72 = v67;
  sub_1838C505C(__p);
}

void sub_1838D2C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  sub_18369F0F0(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_1838D2EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15CoreHandwriting10getStrokesI7CGPointEENSt3__16vectorINS3_IT_NS2_9allocatorIS4_EEEENS5_IS7_EEEEP9CHDrawingEUlRKS1_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15CoreHandwriting10getStrokesI7CGPointEENSt3__16vectorINS3_IT_NS2_9allocatorIS4_EEEENS5_IS7_EEEEP9CHDrawingEUlRKS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15CoreHandwriting10getStrokesI7CGPointEENSt3__16vectorINS3_IT_NS2_9allocatorIS4_EEEENS5_IS7_EEEEP9CHDrawingEUlRKS1_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15CoreHandwriting10getStrokesI7CGPointEENSt3__16vectorINS3_IT_NS2_9allocatorIS4_EEEENS5_IS7_EEEEP9CHDrawingEUlRKS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1838D2F24(uint64_t a1)
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

uint64_t sub_1838D3488(uint64_t isEqual, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (isEqual)
  {
    if (isEqual == v3)
    {
      isEqual = 1;
    }

    else
    {
      v10 = *(isEqual + 8);
      if (v10 == objc_msgSend_row(v3, v4, v5, v6, v7, v8) && (v16 = *(isEqual + 16), v16 == objc_msgSend_column(v9, v11, v12, v13, v14, v15)) && (v22 = *(isEqual + 24), objc_msgSend_subtileIndex(v9, v17, v18, v19, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), v24 = v22 == 0, v25 = v23 != 0, v23, v24 != v25))
      {
        v31 = *(isEqual + 24);
        v32 = v31;
        if (!v31)
        {
          v24 = objc_msgSend_subtileIndex(v9, v26, v27, v28, v29, v30);
          if (!v24)
          {
            isEqual = 1;
LABEL_15:

            goto LABEL_13;
          }

          v32 = *(isEqual + 24);
        }

        v33 = objc_msgSend_subtileIndex(v9, v26, v27, v28, v29, v30);
        isEqual = objc_msgSend_isEqual_(v32, v34, v33, v35, v36, v37);

        if (!v31)
        {
          goto LABEL_15;
        }
      }

      else
      {
        isEqual = 0;
      }
    }
  }

LABEL_13:

  return isEqual;
}

void sub_1838D3590(_Unwind_Exception *a1)
{
  if (!v4)
  {

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1838D36BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1838D4054(void **a1, void *a2, uint64_t a3)
{
  v42 = a2;
  v10 = objc_msgSend_contentStrokeIdentifiers(a1[4], v5, v6, v7, v8, v9);
  v15 = objc_msgSend_containsObject_(v10, v11, v42, v12, v13, v14);

  if (v15)
  {
    objc_msgSend_addIndex_(a1[5], v16, a3, v18, v19, v20);
  }

  v21 = objc_msgSend_overlapStrokeIdentifiers(a1[4], v16, v17, v18, v19, v20);
  v26 = objc_msgSend_containsObject_(v21, v22, v42, v23, v24, v25);

  if (v26)
  {
    objc_msgSend_addIndex_(a1[6], v27, a3, v29, v30, v31);
  }

  v32 = objc_msgSend_contextStrokeIdentifiers(a1[4], v27, v28, v29, v30, v31);
  v37 = objc_msgSend_containsObject_(v32, v33, v42, v34, v35, v36);

  if (v37)
  {
    objc_msgSend_addIndex_(a1[7], v38, a3, v39, v40, v41);
  }
}

void sub_1838D4D74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1838D56D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  operator delete(v13);

  _Unwind_Resume(a1);
}

uint64_t sub_1838D85CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(*(a1 + 32) + 56), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(*(a1 + 32) + 56), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(*(a1 + 32) + 56), v16, v10, v15, v17, v18);

  return v19;
}

double *sub_1838DA6D8(double *result, double *a2, double *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        result[1] = v46;
      }

      else
      {
        *result = v46;
        result[1] = v45;
      }

      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v49 = result++;
        if (v49 != a3 && result != a3)
        {
          v50 = *v49;
          v51 = *v49;
          v52 = result;
          v53 = v49;
          v54 = result;
          do
          {
            v55 = *v54++;
            v56 = v55;
            if (v55 < v51)
            {
              v51 = v56;
              v53 = v52;
            }

            v52 = v54;
          }

          while (v54 != a3);
          if (v53 != v49)
          {
            *v49 = *v53;
            *v53 = v50;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v19 = result + 1;
          if (result + 1 < v18)
          {
            goto LABEL_27;
          }

          goto LABEL_43;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        if (v30 == v5)
        {
          return result;
        }

        while (1)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            break;
          }

          if (++v30 == v5)
          {
            return result;
          }
        }

        *v30++ = *v5;
        *v5 = v31;
      }

      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
      v19 = result + 1;
      if (result + 1 >= a3 - 1)
      {
LABEL_43:
        v24 = v19;
      }

      else
      {
LABEL_27:
        v20 = v19;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}