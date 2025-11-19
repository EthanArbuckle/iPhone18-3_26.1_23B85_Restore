uint64_t sub_1A5587C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      sub_1220A18(v3);
    }
  }

  return a1;
}

uint64_t sub_1A558C4(uint64_t a1, char **a2, uint64_t a3)
{
  if (!sub_1972458(a2))
  {
    v8 = *(a1 + 1768);
    v9 = *(nullsub_1(*a2) + 1536);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SearchService::QuProcessing", "", buf, 2u);
    }

    sub_1A614F4();
  }

  sub_19723A0(5, v11);
  v6 = *(a3 + 24);
  if (!v6)
  {
    sub_2B7420();
  }

  (*(*v6 + 48))(v6, v11);
  return sub_18FDA18(v11);
}

void sub_1A55B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1A62724(v14 - 120);
  sub_1A5500C(v14 - 176);
  if (a14)
  {
    sub_1220A18(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1A55BEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1A55044(a2, a3, a4, &v30);
  sub_1A55DD8(a1 + 1208, &v25);
  sub_1A561CC(a1 + 1376, &v20);
  sub_1A565C0(a1 + 1544, &v15);
  sub_1A5E71C((a2 + 38), &v25);
  v7 = v28;
  v6 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a2[42];
  a2[41] = v7;
  a2[42] = v6;
  if (v8)
  {
    sub_1220A18(v8);
  }

  sub_1A5E71C((a2 + 43), &v20);
  v10 = v23;
  v9 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[47];
  a2[46] = v10;
  a2[47] = v9;
  if (v11)
  {
    sub_1220A18(v11);
  }

  sub_1A5E71C((a2 + 48), &v15);
  v13 = v18;
  v12 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[52];
  a2[51] = v13;
  a2[52] = v12;
  if (v14)
  {
    sub_1220A18(v14);
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (v17 == 1 && v16)
  {
    sub_1220A18(v16);
  }

  if (v24)
  {
    sub_1220A18(v24);
  }

  if (v22 == 1 && v21)
  {
    sub_1220A18(v21);
  }

  if (v29)
  {
    sub_1220A18(v29);
  }

  if (v27 == 1 && v26)
  {
    sub_1220A18(v26);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }
}

void sub_1A55D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1A5587C(va);
  sub_1A5587C(va1);
  if (*(v6 - 33) < 0)
  {
    operator delete(*(v6 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1A55DD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A627A4(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v39 = &v37;
        v15 = sub_1A62944(a1, &v37);
        sub_1A6286C(v15 + 56, v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A5611C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A561CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A62BBC(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v39 = &v37;
        v15 = sub_1A62CE4(a1, &v37);
        sub_1A62C84(v15 + 56, v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A56510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A565C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A62E40(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v39 = &v37;
        v15 = sub_1A62F68(a1, &v37);
        sub_1A62F08(v15 + 56, v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A56904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A56F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1A62724(&STACK[0x6B8]);
  sub_1A570AC(va);
  if (a7)
  {
    sub_1220A18(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A570AC(uint64_t a1)
{
  sub_1A5F98C(a1 + 1632);
  sub_1A5E8D4(a1 + 1208);
  if (*(a1 + 1200) == 1)
  {
    sub_1965ECC(a1 + 8);
  }

  return a1;
}

void sub_1A570F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  sub_1A5F8F4(v5, a3);
  sub_1A569B4();
}

void sub_1A57198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A5F98C(v2 - 72);
  if (STACK[0x4B0])
  {
    sub_1965ECC(va);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A571CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963930(result, a4);
  }

  return result;
}

void sub_1A57224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A57240(uint64_t a1)
{
  *a1 = xmmword_2368410;
  *(a1 + 16) = xmmword_2368420;
  *(a1 + 32) = xmmword_2368430;
  *(a1 + 48) = 16843009;
  *(a1 + 52) = 1;
  *(a1 + 53) = 0;
  *(a1 + 55) = 0;
  *(a1 + 56) = xmmword_2368440;
  *(a1 + 72) = 0x4170000042480000;
  *(a1 + 80) = 8;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0x3FD999999999999ALL;
  *(a1 + 96) = 0x10000003CLL;
  *(a1 + 104) = xmmword_2368450;
  *(a1 + 120) = xmmword_2368460;
  *(a1 + 136) = xmmword_2368470;
  *(a1 + 152) = xmmword_2368480;
  *(a1 + 168) = 16777473;
  sub_3608D0(v123, "en");
  sub_3608D0(&v125, "es");
  sub_3608D0(v127, "de");
  sub_3608D0(v130, "fr");
  sub_3608D0(v132, "it");
  sub_3608D0(&v133, "no");
  sub_3608D0(v135, "nb");
  sub_3608D0(v138, "fi");
  sub_3608D0(v140, "pt");
  sub_3608D0(&v141, "nl");
  sub_3608D0(v143, "sv");
  sub_3608D0(v146, "is");
  sub_3608D0(v148, "da");
  sub_3608D0(&v149, "zh");
  sub_3608D0(v151, "ja");
  sub_3608D0(v154, "vi");
  sub_3608D0(v156, "th");
  sub_3608D0(&v157, "ms");
  sub_3608D0(v159, "tr");
  sub_3608D0(v162, "fil");
  sub_3608D0(v164, "bg");
  sub_3608D0(&v165, "ru");
  sub_3608D0(v167, "ro");
  sub_3608D0(v170, "pl");
  sub_3608D0(v172, "uk");
  sub_3608D0(&v173, "cs");
  sub_3608D0(v175, "el");
  sub_3608D0(v178, "cy");
  sub_3608D0(v180, "hu");
  sub_3608D0(&v181, "sk");
  sub_3608D0(v183, "hr");
  sub_3608D0(v186, "et");
  sub_3608D0(v188, "lt");
  sub_3608D0(&v189, "lv");
  sub_3608D0(v191, "mk");
  sub_3608D0(v194, "ca");
  sub_3608D0(v196, "bs");
  sub_3608D0(&v197, "sr");
  sub_3608D0(v199, "sq");
  sub_3608D0(v202, "hi");
  sub_3608D0(v204, "id");
  sub_3608D0(&v205, "jv");
  sub_3608D0(v207, "fj");
  sub_3608D0(v210, "my");
  sub_3608D0(v212, "km");
  sub_3608D0(&v213, "khm");
  sub_3608D0(v215, "bn");
  sub_3608D0(v218, "ben");
  sub_3608D0(v220, "dz");
  sub_3608D0(&v221, "ne");
  sub_3608D0(v223, "ur");
  sub_3608D0(v226, "kk");
  sub_3608D0(v228, "tk");
  sub_3608D0(&v229, "uz");
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_68678C(a1 + 176, v123, v231, 0x36uLL);
  v2 = 162;
  do
  {
    if (SHIBYTE(v123[v2 - 1]) < 0)
    {
      operator delete(*&v122[v2 * 8 + 24]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  sub_3608D0(v123, "IL");
  sub_3608D0(&v125, "TN");
  sub_3608D0(v127, "MA");
  sub_3608D0(v130, "IQ");
  sub_3608D0(v132, "IR");
  sub_3608D0(&v133, "JO");
  sub_3608D0(v135, "LB");
  sub_3608D0(v138, "LY");
  sub_3608D0(v140, "EG");
  sub_3608D0(&v141, "OM");
  sub_3608D0(v143, "YE");
  sub_3608D0(v146, "SA");
  sub_3608D0(v148, "SY");
  sub_3608D0(&v149, "BH");
  sub_3608D0(v151, "QA");
  sub_3608D0(v154, "AE");
  sub_3608D0(v156, "KW");
  sub_3608D0(&v157, "EH");
  sub_3608D0(v159, "NE");
  sub_3608D0(v162, "ML");
  sub_3608D0(v164, "TD");
  sub_3608D0(&v165, "MR");
  sub_3608D0(v167, "SD");
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_68678C(a1 + 200, v123, v170, 0x17uLL);
  v3 = 69;
  do
  {
    if (SHIBYTE(v123[v3 - 1]) < 0)
    {
      operator delete(*&v122[v3 * 8 + 24]);
    }

    v3 -= 3;
  }

  while (v3 * 8);
  sub_3608D0(v123, "6_7_4");
  sub_3608D0(&v125, "7_7_4");
  sub_3608D0(v127, "8_7_4");
  sub_3608D0(v130, "9_7_4");
  sub_3608D0(v132, "10_7_4");
  sub_3608D0(&v133, "8_8_4");
  sub_3608D0(v135, "9_8_4");
  sub_3608D0(v138, "10_8_4");
  sub_3608D0(v140, "8_9_4");
  sub_3608D0(&v141, "9_9_4");
  sub_3608D0(v143, "10_9_4");
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_68678C(a1 + 224, v123, v146, 0xBuLL);
  v4 = 33;
  do
  {
    if (SHIBYTE(v123[v4 - 1]) < 0)
    {
      operator delete(*&v122[v4 * 8 + 24]);
    }

    v4 -= 3;
  }

  while (v4 * 8);
  *(a1 + 248) = 15;
  *(a1 + 252) = 1;
  *(a1 + 256) = 0x400000010;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0x4008000000000000;
  *(a1 + 320) = 0x100000014;
  *(a1 + 328) = 10;
  *(a1 + 332) = 257;
  *(a1 + 336) = xmmword_2368490;
  *(a1 + 352) = xmmword_23684A0;
  sub_3608D0(v123, "browse_subcategory_gasstations");
  sub_3608D0(&v125, "browse_subcategory_parking");
  sub_3608D0(v127, "browse_subcategory_restaurants");
  sub_3608D0(v130, "browse_subcategory_coffee_shops");
  sub_3608D0(v132, "browse_subcategory_groceries");
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_68678C(a1 + 368, v123, &v133, 5uLL);
  for (i = 0; i != -120; i -= 24)
  {
    if (v132[i + 23] < 0)
    {
      operator delete(*&v132[i]);
    }
  }

  sub_3608D0(v123, "browse_subcategory_gasstations");
  sub_3608D0(&v125, "browse_subcategory_parking");
  sub_3608D0(v127, "browse_subcategory_restaurants");
  sub_3608D0(v130, "browse_subcategory_coffee_shops");
  sub_3608D0(v132, "browse_subcategory_groceries");
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_68678C(a1 + 392, v123, &v133, 5uLL);
  for (j = 0; j != -120; j -= 24)
  {
    if (v132[j + 23] < 0)
    {
      operator delete(*&v132[j]);
    }
  }

  sub_3608D0(v123, "browse_subcategory_evcharger_carplay");
  sub_3608D0(&v125, "browse_subcategory_parking");
  sub_3608D0(v127, "browse_subcategory_restaurants");
  sub_3608D0(v130, "browse_subcategory_coffee_shops");
  sub_3608D0(v132, "browse_subcategory_groceries");
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  sub_68678C(a1 + 416, v123, &v133, 5uLL);
  for (k = 0; k != -120; k -= 24)
  {
    if (v132[k + 23] < 0)
    {
      operator delete(*&v132[k]);
    }
  }

  sub_3608D0(v123, "browse_subcategory_gasstations");
  sub_3608D0(&v125, "browse_subcategory_parking");
  sub_3608D0(v127, "browse_subcategory_restaurants");
  sub_3608D0(v130, "browse_subcategory_coffee_shops");
  sub_3608D0(v132, "browse_subcategory_groceries");
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_68678C(a1 + 440, v123, &v133, 5uLL);
  for (m = 0; m != -120; m -= 24)
  {
    if (v132[m + 23] < 0)
    {
      operator delete(*&v132[m]);
    }
  }

  sub_3608D0(v123, "active.hiking");
  sub_3608D0(&v125, "active.parks.trailhead");
  sub_3608D0(v127, "hotelstravel.campgrounds");
  sub_3608D0(v130, "hotelstravel.visitorcenters");
  sub_3608D0(v132, "travel_and_leisure.hiking_trail");
  sub_3608D0(&v133, "travel_and_leisure.hiking_trail.trailhead");
  sub_3608D0(v135, "travel_and_leisure.campground");
  sub_3608D0(v138, "travel_and_leisure.visitor_center");
  sub_1A5C918(a1 + 464, v123, 8);
  for (n = 0; n != -192; n -= 24)
  {
    if (v140[n - 1] < 0)
    {
      operator delete(*&v138[n]);
    }
  }

  sub_3608D0(v123, "active");
  sub_3608D0(&v125, "emergencyrooms");
  sub_3608D0(v127, "hospitals");
  sub_3608D0(v130, "urgent_care");
  sub_3608D0(v132, "airports");
  sub_3608D0(&v133, "skiresorts");
  sub_3608D0(v135, "transport");
  sub_3608D0(v138, "touristattraction");
  sub_3608D0(v140, "physicalfeature");
  sub_3608D0(&v141, "travel_and_leisure");
  sub_3608D0(v143, "emergency_room");
  sub_3608D0(v146, "hospital");
  sub_3608D0(v148, "urgent_care_center");
  sub_3608D0(&v149, "airport");
  sub_3608D0(v151, "ski_resort");
  sub_3608D0(v154, "transportation_service");
  sub_3608D0(v156, "tourist_attraction");
  sub_3608D0(&v157, "physical_feature");
  sub_1A5C918(a1 + 488, v123, 18);
  v10 = 54;
  do
  {
    if (SHIBYTE(v123[v10 - 1]) < 0)
    {
      operator delete(*&v122[v10 * 8 + 24]);
    }

    v10 -= 3;
  }

  while (v10 * 8);
  sub_3608D0(v123, "kids_activities");
  sub_3608D0(&v125, "parks");
  sub_3608D0(v127, "playgrounds");
  sub_3608D0(v130, "sportscomplex");
  sub_3608D0(v132, "statue");
  sub_3608D0(&v133, "zoos");
  sub_3608D0(v135, "kids_fun_center");
  sub_3608D0(v138, "park");
  sub_3608D0(v140, "playground");
  sub_3608D0(&v141, "sports_complex");
  sub_3608D0(v143, "zoo");
  sub_1A5C918(a1 + 512, v123, 11);
  v11 = 33;
  do
  {
    if (SHIBYTE(v123[v11 - 1]) < 0)
    {
      operator delete(*&v122[v11 * 8 + 24]);
    }

    v11 -= 3;
  }

  while (v11 * 8);
  sub_3608D0(v123, "food");
  sub_3608D0(&v125, "restaurants");
  sub_3608D0(v127, "financialservices");
  sub_3608D0(v130, "localservices");
  sub_3608D0(v132, "homedecor");
  sub_3608D0(&v133, "beautysvc");
  sub_3608D0(v135, "officebuilding");
  sub_3608D0(v138, "supermarket");
  sub_3608D0(v140, "flowers");
  sub_3608D0(&v141, "homeandgarden");
  sub_3608D0(v143, "servicestations");
  sub_3608D0(v146, "parks");
  sub_3608D0(v148, "playgrounds");
  sub_3608D0(&v149, "sportscomplex");
  sub_3608D0(v151, "trainstations");
  sub_3608D0(v154, "food_mart");
  sub_3608D0(v156, "restaurant");
  sub_3608D0(&v157, "financial_service");
  sub_3608D0(v159, "local_service");
  sub_3608D0(v162, "home_decor_store");
  sub_3608D0(v164, "beauty_service");
  sub_3608D0(&v165, "office_building");
  sub_3608D0(v167, "floral_shop");
  sub_3608D0(v170, "home_goods_store");
  sub_3608D0(v172, "service_station");
  sub_3608D0(&v173, "park");
  sub_3608D0(v175, "playground");
  sub_3608D0(v178, "sports_complex");
  sub_3608D0(v180, "train_station");
  sub_1A5C918(a1 + 536, v123, 29);
  v12 = 87;
  do
  {
    if (SHIBYTE(v123[v12 - 1]) < 0)
    {
      operator delete(*&v122[v12 * 8 + 24]);
    }

    v12 -= 3;
  }

  while (v12 * 8);
  *(a1 + 560) = 1;
  *(a1 + 564) = xmmword_23684B0;
  *(a1 + 580) = xmmword_23684C0;
  *(a1 + 596) = 30;
  *(a1 + 600) = 0x4000000000000000;
  *(a1 + 608) = xmmword_23684D0;
  *(a1 + 624) = 2;
  *(a1 + 628) = 257;
  sub_3608D0(v102, "ranker_pw_en_model");
  sub_3608D0(v263, "CA");
  sub_3608D0(v264, "GB");
  sub_3608D0(v265, "AU");
  sub_3608D0(v266, "NZ");
  sub_3608D0(v267, "IE");
  sub_3608D0(v268, "ZA");
  memset(v100, 0, sizeof(v100));
  sub_68678C(v100, v263, v269, 6uLL);
  sub_1A5C99C(v269, v102, v100);
  sub_3608D0(v93, "ranker_pw_us_model");
  sub_3608D0(v86, "US");
  v90 = 0;
  v89 = 0;
  v91 = 0;
  sub_68678C(&v89, v86, v88, 1uLL);
  sub_1A5C99C(v272, v93, &v89);
  sub_3608D0(&v83, "ranker_pw_eu_model");
  sub_3608D0(v105, "DE");
  sub_3608D0(v107, "FR");
  sub_3608D0(v108, "BE");
  sub_3608D0(v109, "CH");
  sub_3608D0(v110, "AT");
  sub_3608D0(v111, "ES");
  sub_3608D0(v112, "IT");
  sub_3608D0(v113, "NL");
  sub_3608D0(v114, "PT");
  sub_3608D0(v115, "NO");
  sub_3608D0(v116, "DK");
  sub_3608D0(v117, "FI");
  sub_3608D0(v118, "SE");
  v261 = 0uLL;
  v262 = 0;
  sub_68678C(&v261, v105, &v119, 0xDuLL);
  sub_1A5C99C(&v274, &v83, &v261);
  sub_3608D0(&v80, "ranker_pw_cn_model");
  sub_3608D0(&v259, "CN");
  v78 = 0uLL;
  v79 = 0;
  sub_68678C(&v78, &v259, &v261, 1uLL);
  sub_1A5C99C(&v275, &v80, &v78);
  sub_3608D0(&v76, "ranker_pw_cjk_model");
  sub_3608D0(v250, "JP");
  sub_3608D0(v251, "MO");
  sub_3608D0(v252, "PH");
  sub_3608D0(v253, "MY");
  sub_3608D0(v254, "TW");
  sub_3608D0(v255, "HK");
  v257 = 0;
  v256 = 0;
  v258 = 0;
  sub_68678C(&v256, v250, &v256, 6uLL);
  sub_1A5C99C(&v276, &v76, &v256);
  sub_3608D0(__p, "ranker_pw_row_model");
  sub_3608D0(v123, "AR");
  sub_3608D0(&v125, "BR");
  sub_3608D0(v127, "MX");
  sub_3608D0(v130, "CL");
  sub_3608D0(v132, "CZ");
  sub_3608D0(&v133, "GR");
  sub_3608D0(v135, "HR");
  sub_3608D0(v138, "HU");
  sub_3608D0(v140, "ID");
  sub_3608D0(&v141, "IN");
  sub_3608D0(v143, "PL");
  sub_3608D0(v146, "RO");
  sub_3608D0(v148, "SG");
  sub_3608D0(&v149, "SK");
  sub_3608D0(v151, "TH");
  sub_3608D0(v154, "TR");
  sub_3608D0(v156, "VN");
  sub_3608D0(&v157, "AE");
  sub_3608D0(v159, "EG");
  sub_3608D0(v162, "IL");
  sub_3608D0(v164, "NG");
  sub_3608D0(&v165, "MA");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, v123, v167, 0x16uLL);
  sub_1A5C99C(&v277, __p, &v71);
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  sub_1A5CA34(a1 + 632, v269, &v278, 6uLL);
  v13 = 288;
  do
  {
    v69[0] = &v268[v13];
    sub_195E3E8(v69);
    if (v267[v13 + 23] < 0)
    {
      operator delete(*&v267[v13]);
    }

    v13 -= 48;
  }

  while (v13);
  v69[0] = &v71;
  sub_195E3E8(v69);
  v14 = 66;
  do
  {
    if (SHIBYTE(v123[v14 - 1]) < 0)
    {
      operator delete(*&v122[v14 * 8 + 24]);
    }

    v14 -= 3;
  }

  while (v14 * 8);
  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  v123[0] = &v256;
  sub_195E3E8(v123);
  for (ii = 0; ii != -144; ii -= 24)
  {
    if (v255[ii + 23] < 0)
    {
      operator delete(*&v255[ii]);
    }
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  v123[0] = &v78;
  sub_195E3E8(v123);
  if (SHIBYTE(v260) < 0)
  {
    operator delete(v259);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  v123[0] = &v261;
  sub_195E3E8(v123);
  v16 = 39;
  do
  {
    if (SHIBYTE(v105[v16 - 1]) < 0)
    {
      operator delete(*&v104[v16 * 8]);
    }

    v16 -= 3;
  }

  while (v16 * 8);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  v123[0] = &v89;
  sub_195E3E8(v123);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v123[0] = v100;
  sub_195E3E8(v123);
  for (jj = 0; jj != -144; jj -= 24)
  {
    if (v268[jj + 23] < 0)
    {
      operator delete(*&v268[jj]);
    }
  }

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  sub_3608D0(v123, "EG");
  v125 = 0x4058000000000000;
  sub_3608D0(v126, "CA");
  v128 = 0x4058000000000000;
  sub_3608D0(v129, "GB");
  v131 = 0x4058000000000000;
  sub_3608D0(v132, "US");
  v133 = 0x4058000000000000;
  sub_3608D0(v134, "DE");
  v136 = 0x4058000000000000;
  sub_3608D0(v137, "FR");
  v139 = 0x4058000000000000;
  sub_3608D0(v140, "BE");
  v141 = 0x4058000000000000;
  sub_3608D0(v142, "CH");
  v144 = 0x4058000000000000;
  sub_3608D0(v145, "CN");
  v147 = 0x4058000000000000;
  sub_3608D0(v148, "AT");
  v149 = 0x4058000000000000;
  sub_3608D0(v150, "ES");
  v152 = 0x4058000000000000;
  sub_3608D0(v153, "AU");
  v155 = 0x4058000000000000;
  sub_3608D0(v156, "NZ");
  v157 = 0x4058000000000000;
  sub_3608D0(v158, "IE");
  v160 = 0x4058000000000000;
  sub_3608D0(v161, "ZA");
  v163 = 0x4058000000000000;
  sub_3608D0(v164, "IT");
  v165 = 0x4058000000000000;
  sub_3608D0(v166, "NL");
  v168 = 0x4058000000000000;
  sub_3608D0(v169, "PT");
  v171 = 0x4058000000000000;
  sub_3608D0(v172, "NO");
  v173 = 0x4058000000000000;
  sub_3608D0(v174, "DK");
  v176 = 0x4058000000000000;
  sub_3608D0(v177, "FI");
  v179 = 0x4058000000000000;
  sub_3608D0(v180, "SE");
  v181 = 0x4058000000000000;
  sub_3608D0(v182, "GB");
  v184 = 0x4058000000000000;
  sub_3608D0(v185, "JP");
  v187 = 0x4058000000000000;
  sub_3608D0(v188, "MO");
  v189 = 0x4058000000000000;
  sub_3608D0(v190, "PH");
  v192 = 0x4058000000000000;
  sub_3608D0(v193, "MY");
  v195 = 0x4058000000000000;
  sub_3608D0(v196, "TW");
  v197 = 0x4058000000000000;
  sub_3608D0(v198, "HK");
  v200 = 0x4058000000000000;
  sub_3608D0(v201, "AR");
  v203 = 0x4058000000000000;
  sub_3608D0(v204, "BR");
  v205 = 0x4058000000000000;
  sub_3608D0(v206, "MX");
  v208 = 0x4058000000000000;
  sub_3608D0(v209, "CL");
  v211 = 0x4058000000000000;
  sub_3608D0(v212, "CZ");
  v213 = 0x4058000000000000;
  sub_3608D0(v214, "GR");
  v216 = 0x4058000000000000;
  sub_3608D0(v217, "HR");
  v219 = 0x4058000000000000;
  sub_3608D0(v220, "HU");
  v221 = 0x4058000000000000;
  sub_3608D0(v222, "ID");
  v224 = 0x4058000000000000;
  sub_3608D0(v225, "IN");
  v227 = 0x4058000000000000;
  sub_3608D0(v228, "PL");
  v229 = 0x4058000000000000;
  sub_3608D0(v230, "RO");
  v231[1] = 0x4058000000000000;
  sub_3608D0(v232, "SG");
  v233 = 0x4058000000000000;
  sub_3608D0(v234, "SK");
  v235 = 0x4058000000000000;
  sub_3608D0(v236, "TH");
  v237 = 0x4058000000000000;
  sub_3608D0(v238, "TR");
  v239 = 0x4058000000000000;
  sub_3608D0(v240, "VN");
  v241 = 0x4058000000000000;
  sub_3608D0(v242, "AE");
  v243 = 0x4058000000000000;
  sub_3608D0(v244, "IL");
  v245 = 0x4058000000000000;
  sub_3608D0(v246, "NG");
  v247 = 0x4058000000000000;
  sub_3608D0(v248, "MA");
  v249 = 0x4058000000000000;
  sub_1A5CB44(a1 + 656, v123, 50);
  v18 = 1600;
  do
  {
    if (v122[v18 + 39] < 0)
    {
      operator delete(*&v122[v18 + 16]);
    }

    v18 -= 32;
  }

  while (v18);
  *(a1 + 696) = 5;
  sub_3608D0(v93, "speller-enus-esus");
  sub_3608D0(v250, "US");
  sub_3608D0(v251, "AE");
  v90 = 0;
  v89 = 0;
  v91 = 0;
  sub_68678C(&v89, v250, v252, 2uLL);
  sub_1A5C99C(v105, v93, &v89);
  sub_3608D0(v86, "speller-GB");
  sub_3608D0(&v261, "GB");
  v83 = 0uLL;
  v84 = 0;
  sub_68678C(&v83, &v261, v263, 1uLL);
  sub_1A5C99C(v108, v86, &v83);
  sub_3608D0(&v80, "speller-AU");
  sub_3608D0(v102, "AU");
  sub_3608D0(v104, "NZ");
  v78 = 0uLL;
  v79 = 0;
  sub_68678C(&v78, v102, v105, 2uLL);
  sub_1A5C99C(v110, &v80, &v78);
  sub_3608D0(&v259, "speller-CA");
  sub_3608D0(&v256, "CA");
  v76 = 0uLL;
  v77 = 0;
  sub_68678C(&v76, &v256, &v259, 1uLL);
  sub_1A5C99C(v112, &v259, &v76);
  sub_3608D0(__p, "speller-EU");
  sub_3608D0(v269, "ES");
  sub_3608D0(v271, "IT");
  sub_3608D0(v272, "NL");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, v269, &v273, 3uLL);
  sub_1A5C99C(v114, __p, &v71);
  sub_3608D0(v69, "speller-FR-DE");
  sub_3608D0(v100, "FR");
  sub_3608D0(v101, "DE");
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_68678C(&v66, v100, v102, 2uLL);
  sub_1A5C99C(v116, v69, &v66);
  sub_3608D0(v64, "speller-EU-offline-mixed-reduced");
  sub_3608D0(v263, "AT");
  sub_3608D0(v264, "CH");
  sub_3608D0(v265, "BE");
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_68678C(&v61, v263, v266, 3uLL);
  sub_1A5C99C(v118, v64, &v61);
  sub_3608D0(v59, "speller-GR");
  sub_3608D0(v98, "GR");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_68678C(&v56, v98, v100, 1uLL);
  sub_1A5C99C(&v120, v59, &v56);
  sub_3608D0(&v54, "speller-JP");
  sub_3608D0(v96, "JP");
  v52 = 0uLL;
  v53 = 0;
  sub_68678C(&v52, v96, v98, 1uLL);
  sub_1A5C99C(&v121, &v54, &v52);
  sub_3608D0(v50, "speller-ROW");
  sub_3608D0(v123, "IN");
  sub_3608D0(&v125, "PT");
  sub_3608D0(v127, "FI");
  sub_3608D0(v130, "SE");
  sub_3608D0(v132, "AD");
  sub_3608D0(&v133, "MC");
  sub_3608D0(v135, "LU");
  sub_3608D0(v138, "VA");
  sub_3608D0(v140, "IS");
  sub_3608D0(&v141, "GL");
  sub_3608D0(v143, "FO");
  sub_3608D0(v146, "IE");
  sub_3608D0(v148, "NO");
  sub_3608D0(&v149, "DK");
  sub_3608D0(v151, "AR");
  sub_3608D0(v154, "BR");
  sub_3608D0(v156, "MX");
  sub_3608D0(&v157, "CL");
  sub_3608D0(v159, "TW");
  sub_3608D0(v162, "HK");
  sub_3608D0(v164, "MO");
  sub_3608D0(&v165, "PL");
  sub_3608D0(v167, "HR");
  sub_3608D0(v170, "RO");
  sub_3608D0(v172, "SK");
  sub_3608D0(&v173, "CZ");
  sub_3608D0(v175, "HU");
  sub_3608D0(v178, "VN");
  sub_3608D0(v180, "TH");
  sub_3608D0(&v181, "SG");
  sub_3608D0(v183, "MY");
  sub_3608D0(v186, "PH");
  sub_3608D0(v188, "TR");
  sub_3608D0(&v189, "AE");
  sub_3608D0(v191, "IL");
  sub_3608D0(v194, "SA");
  sub_3608D0(v196, "NG");
  sub_3608D0(&v197, "EG");
  sub_3608D0(v199, "MA");
  sub_3608D0(v202, "ZA");
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_68678C(&v47, v123, v204, 0x28uLL);
  sub_1A5C99C(v122, v50, &v47);
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  sub_1A5CA34(a1 + 704, v105, v123, 0xAuLL);
  v19 = 480;
  do
  {
    v82 = &v104[v19];
    sub_195E3E8(&v82);
    if ((v104[v19 - 1] & 0x80000000) != 0)
    {
      operator delete(v102[v19 / 8]);
    }

    v19 -= 48;
  }

  while (v19);
  v82 = &v47;
  sub_195E3E8(&v82);
  v20 = 120;
  do
  {
    if (SHIBYTE(v123[v20 - 1]) < 0)
    {
      operator delete(*&v122[v20 * 8 + 24]);
    }

    v20 -= 3;
  }

  while (v20 * 8);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v123[0] = &v52;
  sub_195E3E8(v123);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  v123[0] = &v56;
  sub_195E3E8(v123);
  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v123[0] = &v61;
  sub_195E3E8(v123);
  for (kk = 0; kk != -72; kk -= 24)
  {
    if (v265[kk + 23] < 0)
    {
      operator delete(*&v265[kk]);
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v123[0] = &v66;
  sub_195E3E8(v123);
  for (mm = 0; mm != -6; mm -= 3)
  {
    if (v101[mm * 8 + 23] < 0)
    {
      operator delete(v100[mm + 3]);
    }
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v123[0] = &v71;
  sub_195E3E8(v123);
  for (nn = 0; nn != -72; nn -= 24)
  {
    if (v272[nn + 23] < 0)
    {
      operator delete(*&v272[nn]);
    }
  }

  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  v123[0] = &v76;
  sub_195E3E8(v123);
  if (SHIBYTE(v258) < 0)
  {
    operator delete(v256);
  }

  if (SHIBYTE(v260) < 0)
  {
    operator delete(v259);
  }

  v123[0] = &v78;
  sub_195E3E8(v123);
  for (i1 = 0; i1 != -48; i1 -= 24)
  {
    if (v104[i1 + 23] < 0)
    {
      operator delete(*&v104[i1]);
    }
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  v123[0] = &v83;
  sub_195E3E8(v123);
  if (SHIBYTE(v262) < 0)
  {
    operator delete(v261);
  }

  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  v123[0] = &v89;
  sub_195E3E8(v123);
  for (i2 = 0; i2 != -6; i2 -= 3)
  {
    if (v251[i2 * 8 + 23] < 0)
    {
      operator delete(v250[i2 + 3]);
    }
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  sub_3608D0(&v261, "speller-enus-esus");
  sub_3608D0(v105, "from_ENUSESUS");
  sub_3608D0(v107, "to_ENUSESUS");
  v80 = 0uLL;
  v81 = 0;
  sub_68678C(&v80, v105, v108, 2uLL);
  sub_1A5C99C(v123, &v261, &v80);
  sub_3608D0(&v78, "speller-GB");
  sub_3608D0(v269, "from_SOURCE");
  sub_3608D0(v271, "to_TARGET");
  v259 = 0uLL;
  v260 = 0;
  sub_68678C(&v259, v269, v272, 2uLL);
  sub_1A5C99C(v127, &v78, &v259);
  sub_3608D0(&v76, "speller-AU");
  sub_3608D0(v263, "from_AU");
  sub_3608D0(v264, "to_AU");
  v257 = 0;
  v256 = 0;
  v258 = 0;
  sub_68678C(&v256, v263, v265, 2uLL);
  sub_1A5C99C(v132, &v76, &v256);
  sub_3608D0(__p, "speller-CA");
  sub_3608D0(v250, "from_CA");
  sub_3608D0(v251, "to_CA");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, v250, v252, 2uLL);
  sub_1A5C99C(v135, __p, &v71);
  sub_3608D0(v69, "speller-EU");
  sub_3608D0(v102, "from_EU");
  sub_3608D0(v104, "to_EU");
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_68678C(&v66, v102, v105, 2uLL);
  sub_1A5C99C(v140, v69, &v66);
  sub_3608D0(v64, "speller-GR");
  sub_3608D0(v100, "from_SOURCE");
  sub_3608D0(v101, "to_TARGET");
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_68678C(&v61, v100, v102, 2uLL);
  sub_1A5C99C(v143, v64, &v61);
  sub_3608D0(v59, "speller-JP");
  sub_3608D0(v93, "from_SOURCE");
  sub_3608D0(v95, "to_TARGET");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_68678C(&v56, v93, v96, 2uLL);
  sub_1A5C99C(v148, v59, &v56);
  sub_3608D0(v98, "speller-FR-DE");
  sub_3608D0(&v89, "from_DEFRAC");
  sub_3608D0(v92, "to_DEFRAC");
  v54 = 0uLL;
  v55 = 0;
  sub_68678C(&v54, &v89, v93, 2uLL);
  sub_1A5C99C(v151, v98, &v54);
  sub_3608D0(&v52, "speller-EU-offline-mixed-reduced");
  sub_3608D0(v86, "from_SOURCE");
  sub_3608D0(v88, "to_TARGET");
  v96[1] = 0;
  v96[0] = 0;
  v97 = 0;
  sub_68678C(v96, v86, &v89, 2uLL);
  sub_1A5C99C(v156, &v52, v96);
  sub_3608D0(v50, "speller-ROW");
  sub_3608D0(&v83, "from_GLOBAL");
  sub_3608D0(v85, "to_GLOBAL");
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_68678C(&v47, &v83, v86, 2uLL);
  sub_1A5C99C(v159, v50, &v47);
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  sub_1A5CA34(a1 + 728, v123, v164, 0xAuLL);
  v26 = 480;
  do
  {
    v82 = &v122[v26 + 24];
    sub_195E3E8(&v82);
    if (v122[v26 + 23] < 0)
    {
      operator delete(*&v122[v26]);
    }

    v26 -= 48;
  }

  while (v26);
  v82 = &v47;
  sub_195E3E8(&v82);
  do
  {
    if (v85[v26 + 23] < 0)
    {
      operator delete(*&v85[v26]);
    }

    v26 -= 24;
  }

  while (v26 != -48);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  *&v83 = v96;
  sub_195E3E8(&v83);
  for (i3 = 0; i3 != -48; i3 -= 24)
  {
    if (v88[i3 + 23] < 0)
    {
      operator delete(*&v88[i3]);
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v86[0] = &v54;
  sub_195E3E8(v86);
  for (i4 = 0; i4 != -48; i4 -= 24)
  {
    if (v92[i4 + 23] < 0)
    {
      operator delete(*&v92[i4]);
    }
  }

  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  v89 = &v56;
  sub_195E3E8(&v89);
  for (i5 = 0; i5 != -48; i5 -= 24)
  {
    if (v95[i5 + 23] < 0)
    {
      operator delete(*&v95[i5]);
    }
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v93[0] = &v61;
  sub_195E3E8(v93);
  for (i6 = 0; i6 != -6; i6 -= 3)
  {
    if (v101[i6 * 8 + 23] < 0)
    {
      operator delete(v100[i6 + 3]);
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v100[0] = &v66;
  sub_195E3E8(v100);
  for (i7 = 0; i7 != -48; i7 -= 24)
  {
    if (v104[i7 + 23] < 0)
    {
      operator delete(*&v104[i7]);
    }
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v102[0] = &v71;
  sub_195E3E8(v102);
  for (i8 = 0; i8 != -6; i8 -= 3)
  {
    if (v251[i8 * 8 + 23] < 0)
    {
      operator delete(v250[i8 + 3]);
    }
  }

  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  v250[0] = &v256;
  sub_195E3E8(v250);
  for (i9 = 0; i9 != -6; i9 -= 3)
  {
    if (v264[i9 * 8 + 23] < 0)
    {
      operator delete(v263[i9 + 3]);
    }
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  v263[0] = &v259;
  sub_195E3E8(v263);
  for (i10 = 0; i10 != -48; i10 -= 24)
  {
    if (v271[i10 + 23] < 0)
    {
      operator delete(*&v271[i10]);
    }
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  v269[0] = &v80;
  sub_195E3E8(v269);
  for (i11 = 0; i11 != -48; i11 -= 24)
  {
    if (v107[i11 + 23] < 0)
    {
      operator delete(*&v107[i11]);
    }
  }

  if (SHIBYTE(v262) < 0)
  {
    operator delete(v261);
  }

  sub_3608D0(v123, "HK");
  sub_3608D0(&v125, "JP");
  sub_3608D0(v127, "MO");
  sub_3608D0(v130, "TW");
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  sub_68678C(a1 + 752, v123, v132, 4uLL);
  for (i12 = 0; i12 != -96; i12 -= 24)
  {
    if (v132[i12 - 1] < 0)
    {
      operator delete(*&v130[i12]);
    }
  }

  sub_3608D0(v269, "geotagger_en_us_model");
  sub_3608D0(v123, "US");
  sub_3608D0(&v125, "CA");
  sub_3608D0(v127, "GB");
  sub_3608D0(v130, "AU");
  sub_3608D0(v132, "NZ");
  sub_3608D0(&v133, "IE");
  sub_3608D0(v135, "ZA");
  memset(v263, 0, sizeof(v263));
  sub_68678C(v263, v123, v138, 7uLL);
  sub_1A5C99C(v105, v269, v263);
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  sub_1A5CA34(a1 + 776, v105, v108, 1uLL);
  v250[0] = v107;
  sub_195E3E8(v250);
  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  v250[0] = v263;
  sub_195E3E8(v250);
  for (i13 = 0; i13 != -168; i13 -= 24)
  {
    if (v137[i13 + 7] < 0)
    {
      operator delete(*&v135[i13]);
    }
  }

  if (v270 < 0)
  {
    operator delete(v269[0]);
  }

  *(a1 + 800) = 16842753;
  *(a1 + 804) = xmmword_23684E0;
  *(a1 + 820) = 1;
  *(a1 + 824) = 0x6400000001;
  *(a1 + 832) = 10;
  sub_3608D0(v123, "AD");
  sub_3608D0(&v125, "AR");
  sub_3608D0(v127, "AT");
  sub_3608D0(v130, "BE");
  sub_3608D0(v132, "BO");
  sub_3608D0(&v133, "BR");
  sub_3608D0(v135, "CH");
  sub_3608D0(v138, "CL");
  sub_3608D0(v140, "CO");
  sub_3608D0(&v141, "CR");
  sub_3608D0(v143, "CU");
  sub_3608D0(v146, "DE");
  sub_3608D0(v148, "DK");
  sub_3608D0(&v149, "DO");
  sub_3608D0(v151, "EC");
  sub_3608D0(v154, "ES");
  sub_3608D0(v156, "FI");
  sub_3608D0(&v157, "GL");
  sub_3608D0(v159, "GQ");
  sub_3608D0(v162, "GR");
  sub_3608D0(v164, "GT");
  sub_3608D0(&v165, "HN");
  sub_3608D0(v167, "ID");
  sub_3608D0(v170, "IS");
  sub_3608D0(v172, "IT");
  sub_3608D0(&v173, "JP");
  sub_3608D0(v175, "LI");
  sub_3608D0(v178, "MX");
  sub_3608D0(v180, "NI");
  sub_3608D0(&v181, "NL");
  sub_3608D0(v183, "NO");
  sub_3608D0(v186, "PA");
  sub_3608D0(v188, "PE");
  sub_3608D0(&v189, "PT");
  sub_3608D0(v191, "PY");
  sub_3608D0(v194, "RO");
  sub_3608D0(v196, "SE");
  sub_3608D0(&v197, "SM");
  sub_3608D0(v199, "SR");
  sub_3608D0(v202, "SV");
  sub_3608D0(v204, "TR");
  sub_3608D0(&v205, "UY");
  sub_3608D0(v207, "VA");
  sub_3608D0(v210, "VE");
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  sub_68678C(a1 + 840, v123, v212, 0x2CuLL);
  v38 = 132;
  do
  {
    if (SHIBYTE(v123[v38 - 1]) < 0)
    {
      operator delete(*&v122[v38 * 8 + 24]);
    }

    v38 -= 3;
  }

  while (v38 * 8);
  *(a1 + 864) = 35;
  *(a1 + 868) = 1;
  *(a1 + 872) = 1;
  *(a1 + 876) = 1;
  sub_1A5CBBC(v123, "zh", "位置");
  sub_1A5CC10(v127, "en", "Location");
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  sub_1A5CC64(a1 + 880, v123, v132, 2uLL);
  for (i14 = 0; i14 != -12; i14 -= 6)
  {
    v40 = &v123[i14];
    if (v132[i14 * 8 - 1] < 0)
    {
      operator delete(v40[9]);
    }

    if (*(v40 + 71) < 0)
    {
      operator delete(v40[6]);
    }
  }

  sub_3608D0(v123, "SK");
  sub_3608D0(&v125, "CZ");
  sub_3608D0(v127, "SA");
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  sub_68678C(a1 + 904, v123, v130, 3uLL);
  for (i15 = 0; i15 != -72; i15 -= 24)
  {
    if (v129[i15 + 7] < 0)
    {
      operator delete(*&v127[i15]);
    }
  }

  sub_3608D0(v123, "a");
  sub_3608D0(&v125, "asda");
  sub_3608D0(v127, "das");
  sub_3608D0(v130, "de");
  sub_3608D0(v132, "del");
  sub_3608D0(&v133, "des");
  sub_3608D0(v135, "do");
  sub_3608D0(v138, "dos");
  sub_3608D0(v140, "dueli");
  sub_3608D0(&v141, "ill");
  sub_3608D0(v143, "la");
  sub_3608D0(v146, "le");
  sub_3608D0(v148, "o");
  sub_3608D0(&v149, "of");
  sub_3608D0(v151, "os");
  sub_3608D0(v154, "the");
  sub_1A5C918(a1 + 928, v123, 16);
  v42 = 48;
  do
  {
    if (SHIBYTE(v123[v42 - 1]) < 0)
    {
      operator delete(*&v122[v42 * 8 + 24]);
    }

    v42 -= 3;
  }

  while (v42 * 8);
  sub_3608D0(v123, "block");
  sub_3608D0(&v125, "blk");
  sub_1A5C918(a1 + 952, v123, 2);
  for (i16 = 0; i16 != -48; i16 -= 24)
  {
    if (v126[i16 + 15] < 0)
    {
      operator delete(*&v126[i16 - 8]);
    }
  }

  *(a1 + 976) = 0;
  *v123 = xmmword_23684F0;
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 992) = 0;
  sub_1A5CCEC(a1 + 984, v123, &v124, 2uLL);
  sub_3608D0(v123, "JP");
  sub_3608D0(&v125, "TW");
  sub_3608D0(v127, "HK");
  sub_3608D0(v130, "MO");
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  sub_68678C(a1 + 1008, v123, v132, 4uLL);
  for (i17 = 0; i17 != -96; i17 -= 24)
  {
    if (v132[i17 - 1] < 0)
    {
      operator delete(*&v130[i17]);
    }
  }

  sub_3608D0(v123, "JP");
  sub_3608D0(&v125, "VN");
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  sub_68678C(a1 + 1032, v123, v127, 2uLL);
  for (i18 = 0; i18 != -48; i18 -= 24)
  {
    if (v126[i18 + 15] < 0)
    {
      operator delete(*&v126[i18 - 8]);
    }
  }

  *(a1 + 1056) = 1;
  *(a1 + 1064) = 0x4024000000000000;
  *(a1 + 1072) = xmmword_2368500;
  *(a1 + 1088) = 1000000;
  sub_3608D0(v123, "JP");
  sub_23898(a1 + 1096, v123, 1);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123[0]);
  }

  *(a1 + 1136) = 0x64000003E8;
  *(a1 + 1144) = 0x3FE0000000000000;
  *(a1 + 1152) = 1;
  sub_3608D0(v123, "NG");
  sub_1A5C918(a1 + 1160, v123, 1);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123[0]);
  }

  *(a1 + 1184) = 1;
  return a1;
}

void sub_1A5AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22)
{
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  sub_23D9C(v22 + 1096);
  STACK[0x510] = v29;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v28;
  sub_195E3E8(&STACK[0x510]);
  v30 = *v27;
  if (*v27)
  {
    *(v22 + 992) = v30;
    operator delete(v30);
  }

  sub_7E724(v22 + 952, *(v22 + 960));
  sub_7E724(v22 + 928, *(v22 + 936));
  STACK[0x510] = v26;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v25;
  sub_1965604(&STACK[0x510]);
  STACK[0x510] = v24;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v23;
  sub_1964E4C(&STACK[0x510]);
  STACK[0x510] = a11;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a17;
  sub_1964E4C(&STACK[0x510]);
  STACK[0x510] = a18;
  sub_1964E4C(&STACK[0x510]);
  sub_19653BC(v22 + 656);
  STACK[0x510] = a19;
  sub_1964E4C(&STACK[0x510]);
  sub_7E724(v22 + 536, *(v22 + 544));
  sub_7E724(v22 + 512, *(v22 + 520));
  sub_7E724(v22 + 488, *(v22 + 496));
  sub_7E724(v22 + 464, *(v22 + 472));
  STACK[0x510] = a20;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a21;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a22;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a12;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v22 + 288;
  sub_1964924(&STACK[0x510]);
  STACK[0x510] = a13;
  sub_19646F0(&STACK[0x510]);
  STACK[0x510] = a14;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a15;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a16;
  sub_195E3E8(&STACK[0x510]);
  _Unwind_Resume(a1);
}

void sub_1A5C8A4()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x510])
    {
      JUMPOUT(0x1A5C89CLL);
    }
  }
}

uint64_t sub_1A5C8CC(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_195E3E8(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A5C918(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_1964A88(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1A5C99C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1A5CA18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CA34(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1964C44(result, a4);
  }

  return result;
}

void sub_1A5CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1964E4C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5CABC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1964D70(a4, v6);
      v6 += 3;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A5CB1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1964E04(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CB44(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_1965038(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

_BYTE *sub_1A5CBBC(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_3608D0(a1, a2);
  sub_3608D0(v5 + 24, a3);
  return a1;
}

void sub_1A5CBF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1A5CC10(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_3608D0(a1, a2);
  sub_3608D0(v5 + 24, a3);
  return a1;
}

void sub_1A5CC48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CC64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19654CC(result, a4);
  }

  return result;
}

void sub_1A5CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1965604(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5CCEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963264(result, a4);
  }

  return result;
}

void sub_1A5CD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CDF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A5CE3C(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  memset(v29, 0, sizeof(v29));
  sub_1964BBC(v29, *(a3 + 728), *(a3 + 736), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 736) - *(a3 + 728)) >> 4));
  sub_1A5D1AC(v29, a2, &v30);
  v27 = v29;
  sub_1964E4C(&v27);
  v7 = v30;
  v8 = v31;
  v9 = *(a1 + 23);
  if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) < 2)
  {
    if (v9 < 0)
    {
      sub_325C(&v19, *a1, *(a1 + 1));
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 2);
    }

    sub_3608D0(&v17, &unk_23686D4);
    sub_3608D0(&__p, &unk_23686D4);
    sub_1A22510(&v19, 0, &v27);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v20) < 0)
    {
      v11 = &v19;
LABEL_28:
      operator delete(*v11);
    }
  }

  else
  {
    if (v9 < 0)
    {
      sub_325C(&v25, *a1, *(a1 + 1));
      v7 = v30;
      v8 = v31;
    }

    else
    {
      v25 = *a1;
      v26 = *(a1 + 2);
    }

    if (v8 == v7)
    {
      sub_6FAB4();
    }

    if (*(v7 + 23) < 0)
    {
      sub_325C(v23, *v7, *(v7 + 1));
      v7 = v30;
      v8 = v31;
    }

    else
    {
      v10 = *v7;
      v24 = *(v7 + 2);
      *v23 = v10;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) <= 1)
    {
      sub_6FAB4();
    }

    if (*(v7 + 47) < 0)
    {
      sub_325C(v21, *(v7 + 3), *(v7 + 4));
    }

    else
    {
      *v21 = *(v7 + 24);
      v22 = *(v7 + 5);
    }

    sub_1A22510(&v25, 0, &v27);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      v11 = &v25;
      goto LABEL_28;
    }
  }

  v12 = (*(*v27 + 3))(v27);
  v13 = v28;
  *a4 = v27;
  *(a4 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v28;
    *(a4 + 16) = v12;
    if (v14)
    {
      sub_1220A18(v14);
    }
  }

  else
  {
    *(a4 + 16) = v12;
  }

  v27 = &v30;
  sub_195E3E8(&v27);
}

void sub_1A5D0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  *(v47 - 112) = v47 - 72;
  sub_195E3E8((v47 - 112));
  _Unwind_Resume(a1);
}

void sub_1A5D198()
{
  *(v1 - 112) = v0;
  sub_1964E4C((v1 - 112));
  JUMPOUT(0x1A5D190);
}

void sub_1A5D1AC(__int128 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_18:
    sub_3608D0(__p, &unk_23686D4);
    sub_3608D0(&v16, &unk_23686D4);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_68678C(a3, __p, &v19, 2uLL);
    for (i = 0; i != -48; i -= 24)
    {
      if (*(&v18 + i) < 0)
      {
        operator delete(*(&v16 + i));
      }
    }
  }

  else
  {
    while (1)
    {
      sub_1964D70(__p, v4);
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v9 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v9 = __p[1];
      }

      if (v8 == v9)
      {
        v10 = v7 >= 0 ? a2 : *a2;
        v11 = (v15 & 0x80u) == 0 ? __p : __p[0];
        if (!memcmp(v10, v11, v8))
        {
          break;
        }
      }

      v13 = &v16;
      sub_195E3E8(&v13);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_353184(a3, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
    v13 = &v16;
    sub_195E3E8(&v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1A5D454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A5D4A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a3[1];
  }

  v6[0] = v4;
  v6[1] = v3;
  v5[0] = "ranker_pw_";
  v5[1] = 10;
  if (sub_1CF6DDC(v6, v5))
  {
    sub_1A5D624();
  }

  sub_1A5D788();
}

void sub_1A5D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A5D690(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722328;
  sub_1D02CF0(a1 + 3);
  return a1;
}

void sub_1A5D70C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1A5D7F4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722378;
  sub_1DD3B94(a1 + 3);
  return a1;
}

void sub_1A5D870(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A5DA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5DA48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A5DB00(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722458;
  sub_1A5DBDC((a1 + 3), a2);
  return a1;
}

void sub_1A5DB7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A5DBDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_21A64A4(a1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5DC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5DC6C(void *a1)
{
  *a1 = off_2728FC0;
  v2 = a1[29];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return sub_1A5DCC8((a1 + 2));
}

uint64_t sub_1A5DCC8(uint64_t a1)
{
  sub_1A5DD54(a1 + 184, *(a1 + 192));
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    sub_1220A18(v2);
  }

  std::locale::~locale((a1 + 48));
  sub_1962CE0(a1 + 24, *(a1 + 32));
  sub_196318C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DD54(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1A5DD54(a1, *a2);
    sub_1A5DD54(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1A5DDB8(uint64_t a1)
{
  sub_1A5F70C(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DE0C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1A5DE0C(a1, *a2);
    sub_1A5DE0C(a1, *(a2 + 1));
    if (a2[96] == 1)
    {
      v4 = *(a2 + 11);
      if (v4)
      {
        sub_1220A18(v4);
      }
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1A5DE98(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      sub_1220A18(v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A5DEE4(uint64_t a1)
{
  sub_1A5F0BC(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1A5DF38(uint64_t a1)
{
  sub_1A5ECC0(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DF8C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_18774D8(v4 - 6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5E010(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1A5E064(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1A5E064(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 48;
    do
    {
      sub_11BD8(v4);
      v6 = (v4 - 24);
      sub_19A240C(&v6);
      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 56));
      }

      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 88));
      }

      v5 = v4 - 88;
      v4 -= 136;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void sub_1A5E0F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 792;
        sub_19D4C34(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5E174(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 96;
        sub_1A5E1FC((v4 - 88));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1A5E1FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 != -1)
  {
    result = (off_27224A8[v2])(&v3, result);
  }

  *(v1 + 64) = -1;
  return result;
}

uint64_t sub_1A5E2CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1)
  {
    return sub_11BD8(a2 + 16);
  }

  return result;
}

uint64_t sub_1A5E2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5E37C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1962510(result, a4);
  }

  return result;
}

void sub_1A5E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1962638(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_16E5A88(a4);
      v6 += 8;
      a4 += 96;
      v7 -= 96;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A5E464(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 96;
    do
    {
      v4 = sub_16E5B34(v4) - 96;
      v2 += 96;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5E488(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v2 = *(a2 + 8);
    *result = *a2;
    *(result + 8) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 16) = 1;
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1A5E4D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a1 = a2;
  sub_1963D78(a1 + 8, a3);
  *(a1 + 1200) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_1965774(a1 + 1216, a5);
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 1065353216;
  sub_1965C4C(a1 + 1296, a6);
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_1962488(a1 + 1464, *a8, a8[1], 0xAAAAAAAAAAAAAAABLL * ((a8[1] - *a8) >> 5));
  v20 = *a10;
  v21 = a10[1];
  *(a1 + 1520) = *(a10 + 8);
  *(a1 + 1504) = v21;
  *(a1 + 1488) = v20;
  *(a1 + 1528) = a7;
  *(a1 + 1536) = a9;
  *(a1 + 1544) = 0;
  *(a1 + 1560) = 0;
  if (*(a11 + 16) == 1)
  {
    v22 = *(a11 + 8);
    *(a1 + 1544) = *a11;
    *(a1 + 1552) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1560) = 1;
  }

  v23 = *(a11 + 32);
  *(a1 + 1568) = *(a11 + 24);
  *(a1 + 1576) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0;
  if (*(a12 + 16) == 1)
  {
    v24 = *(a12 + 8);
    *(a1 + 1584) = *a12;
    *(a1 + 1592) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1600) = 1;
  }

  v25 = *(a12 + 32);
  *(a1 + 1608) = *(a12 + 24);
  *(a1 + 1616) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0;
  if (*(a13 + 16) == 1)
  {
    v26 = *(a13 + 8);
    *(a1 + 1624) = *a13;
    *(a1 + 1632) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1640) = 1;
  }

  v27 = *(a13 + 32);
  *(a1 + 1648) = *(a13 + 24);
  *(a1 + 1656) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1680) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1688) = *(a3 + 828);
  return a1;
}

void sub_1A5E6D4(_Unwind_Exception *a1)
{
  sub_1965E30(v1 + 1296);
  sub_1965BCC(v2);
  sub_1965BCC(v1 + 1216);
  v4 = *(v1 + 1208);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1965ECC(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1A5E71C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v4 = *a2;
      v3 = a2[1];
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 8);
      *a1 = v4;
      *(a1 + 8) = v3;
      if (v5)
      {

        sub_1220A18(v5);
      }
    }
  }

  else if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      sub_1220A18(v6);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 1;
  }
}

_BYTE *sub_1A5E7C4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1192] = 0;
  if (*(a2 + 1192) == 1)
  {
    sub_1963D78(a1, a2);
    a1[1192] = 1;
  }

  return a1;
}

void sub_1A5E80C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1192) == 1)
  {
    sub_1965ECC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5E82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18FA5D4(a1, a2);
  sub_17915F4(v4 + 224, a2 + 224);
  *(a1 + 296) = *(a2 + 296);
  sub_1A5E488(a1 + 304, a2 + 304);
  sub_1A5E488(a1 + 344, a2 + 344);
  sub_1A5E488(a1 + 384, a2 + 384);
  return a1;
}

void sub_1A5E890(_Unwind_Exception *a1)
{
  sub_1A5587C(v1 + 344);
  sub_1A5587C(v1 + 304);
  sub_17916A0(v1 + 224);
  sub_18FA778(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5E8D4(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 400) == 1)
  {
    v3 = *(a1 + 392);
    if (v3)
    {
      sub_1220A18(v3);
    }
  }

  v4 = *(a1 + 376);
  if (v4)
  {
    sub_1220A18(v4);
  }

  if (*(a1 + 360) == 1)
  {
    v5 = *(a1 + 352);
    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  v6 = *(a1 + 336);
  if (v6)
  {
    sub_1220A18(v6);
  }

  if (*(a1 + 320) == 1)
  {
    v7 = *(a1 + 312);
    if (v7)
    {
      sub_1220A18(v7);
    }
  }

  sub_17916A0(a1 + 224);

  return sub_18FA778(a1);
}

uint64_t sub_1A5E97C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5E9FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EA7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EB68(uint64_t a1, unint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_27224D8;
  sub_1A5EC4C((a1 + 24), a2);
  return a1;
}

void sub_1A5EBE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_27224D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A5EC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

__n128 *sub_1A5EC4C(__n128 *a1, unint64_t *a2)
{
  v3 = a2[1];
  v5.n128_u64[0] = *a2;
  v5.n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2AB134(a1, &v5);
  if (v5.n128_u64[1])
  {
    sub_1220A18(v5.n128_u64[1]);
  }

  return a1;
}

void sub_1A5ECA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5ECC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EDB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722528;
  a2[1] = v2;
  return result;
}

uint64_t sub_1A5EDF0(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_27225A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5EE3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EEBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F024(a1 + 136, a4);
  return a1;
}

void sub_1A5EF50(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5EF8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F024(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F0BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F13C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F20C(a1 + 136, a4);
  return a1;
}

void sub_1A5F1D0(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5F20C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F2A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F324(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *sub_1A5F3A4(void *a1)
{
  *a1 = off_27225D8;
  sub_1A5F2A4((a1 + 1));
  return a1;
}

void sub_1A5F3E8(void *a1)
{
  *a1 = off_27225D8;
  sub_1A5F2A4((a1 + 1));

  operator delete();
}

void sub_1A5F4F8(void *a1)
{
  sub_1A5F2A4(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1A5F53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5F588(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1A5F608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double sub_1A5F6A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  (*(*v2 + 48))(&v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1A5F70C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F78C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F85C(a1 + 136, a4);
  return a1;
}

void sub_1A5F820(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5F85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F8F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F98C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A5FA0C(void *a1)
{
  *a1 = off_27226B0;
  v2 = a1[6];
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5F98C((a1 + 1));
  return a1;
}

void sub_1A5FA60(void *a1)
{
  *a1 = off_27226B0;
  v2 = a1[6];
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5F98C((a1 + 1));

  operator delete();
}

uint64_t sub_1A5FB64(uint64_t a1, void *a2)
{
  *a2 = off_27226B0;
  result = sub_1A5F8F4((a2 + 1), a1 + 8);
  v5 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A5FBD0(void *a1)
{
  sub_1A54218(a1 + 8);

  operator delete(a1);
}

void sub_1A5FC0C(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  sub_1B51520((a1 + 40), &v4, v13);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(v3, v13);
  sub_18FDA18(v13);
  v13[0] = &v11;
  sub_1A5E010(v13);
  v13[0] = &v9;
  sub_1A5E0F0(v13);
  v13[0] = &v7;
  sub_195E3E8(v13);
  v13[0] = &v5;
  sub_195E3E8(v13);
}

void sub_1A5FD38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  __cxa_begin_catch(a1);
  v52 = *(v50 + 40);
  if (a2 == 2)
  {
    v53 = nullsub_1(v52);
    if (os_log_type_enabled(*(v53 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63DE4();
    }
  }

  else
  {
    v54 = nullsub_1(v52);
    if (os_log_type_enabled(*(v54 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63DB0();
    }
  }

  sub_19723A0(1, &a23);
  sub_1A54AD4(v50 + 8);
  sub_18FDA18(&a23);
  __cxa_end_catch();
  JUMPOUT(0x1A5FCD8);
}

void sub_1A5FE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_18FDA18(va1);
  __cxa_end_catch();
  sub_1A548A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5FE5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5FEA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A5FFAC(void *a1, unint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722740;
  sub_1A60094((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1A60034(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A60094(uint64_t a1, unint64_t a2, dispatch_object_t object, uint64_t a4)
{
  *a1 = object;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  dispatch_retain(object);
  dispatch_retain(*(a1 + 8));
  sub_1A60114(v6, a2);
  return a1;
}

void sub_1A600FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A5E174(va);
  _Unwind_Resume(a1);
}

void *sub_1A60114(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      sub_1A601F0(result, a2);
    }

    sub_1794();
  }

  return result;
}

void sub_1A601DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A60428(va);
  _Unwind_Resume(a1);
}

void sub_1A601F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1A60248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 80;
    v7 = a2;
    do
    {
      result = sub_1A602C8(v6 - 72, v7 + 8);
      v9 = *(v7 + 80);
      *(v6 + 8) = *(v7 + 88);
      *v6 = v9;
      v6 += 96;
      v7 += 96;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      result = sub_1A5E1FC(v5 + 8);
      v5 += 96;
    }
  }

  return result;
}

uint64_t sub_1A602C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1A60300(a1, a2);
  return a1;
}

uint64_t sub_1A60300(uint64_t a1, uint64_t a2)
{
  result = sub_1A5E1FC(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2722780[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

__n128 sub_1A60364(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1A6038C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1A603B4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

_BYTE **sub_1A603DC(_BYTE **result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  v2[56] = 0;
  if (*(a2 + 56) == 1)
  {
    *v2 = *a2;
    result = sub_195FFEC((v2 + 16), (a2 + 16));
    v2[56] = 1;
  }

  return result;
}

uint64_t sub_1A60428(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1A5E1FC(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A6047C(uint64_t a1)
{
  dispatch_release(*a1);
  dispatch_release(*(a1 + 8));
  v3 = (a1 + 24);
  sub_1A5E174(&v3);
  return a1;
}

void *sub_1A604C8(void *a1)
{
  *a1 = off_27227B0;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A60514(void *a1)
{
  *a1 = off_27227B0;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1A605EC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_27227B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A60624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1A60634(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

uint64_t sub_1A6067C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A606C8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  if (v4 >= *(a1 + 40))
  {
    v6 = sub_1A60764((a1 + 24), a2);
  }

  else
  {
    sub_1A608A4(v4 + 8, a2 + 8);
    v5 = *(a2 + 80);
    *(v4 + 88) = *(a2 + 88);
    *(v4 + 80) = v5;
    v6 = v4 + 96;
    *(a1 + 32) = v4 + 96;
  }

  *(a1 + 32) = v6;
  os_unfair_lock_unlock((a1 + 16));
  v7 = *a1;

  dispatch_group_leave(v7);
}

uint64_t sub_1A60764(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1A601F0(a1, v6);
  }

  v7 = 96 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  sub_1A608A4(v7 + 8, a2 + 8);
  v8 = *(a2 + 80);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 80) = v8;
  *&v17 = v17 + 96;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1A60248(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1A60428(&v15);
  return v14;
}

void sub_1A60890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A60428(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1A608A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1A608EC(a1, a2);
  return a1;
}

uint64_t sub_1A608EC(uint64_t a1, uint64_t a2)
{
  result = sub_1A5E1FC(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2722820[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

uint64_t sub_1A60950(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1961B64(v2, *a2, a2[1], 0xA3784A062B2E43DBLL * ((a2[1] - *a2) >> 3));
}

uint64_t sub_1A60984(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_19E41E0(v2, *a2, a2[1], 0x7D6343EB1A1F58D1 * ((a2[1] - *a2) >> 4));
}

uint64_t sub_1A609B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1A609EC(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
}

uint64_t sub_1A609EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A60A74(result, a4);
  }

  return result;
}

void sub_1A60A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1A5DF8C(&a9);
  _Unwind_Resume(a1);
}

void sub_1A60A74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1A60AC0(a1, a2);
  }

  sub_1794();
}

void sub_1A60AC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1A60B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1877458(a4, v6);
      v6 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A60B78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      v4 = sub_18774D8(v4) - 6;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1A60B9C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[56] = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = *a2;
    sub_195F64C((a1 + 16), a2 + 16);
    a1[56] = 1;
  }

  return a1;
}

void sub_1A60BEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_11BD8(v1 + 16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A60C0C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1A60C60(uint64_t a1, uint64_t a2)
{
  result = sub_1A60CE8(a1 + 32, a2 + 32);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1A60CA8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1220A18(v2);
  }

  return sub_1A6127C(a1 + 32);
}

uint64_t sub_1A60CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1A60D80(void *a1)
{
  *a1 = off_2722890;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A60DD0(void *a1)
{
  *a1 = off_2722890;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A60EC8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A60EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722890;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A60F54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A60F74(void *a1)
{
  sub_1A61230(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1A60FB0(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 1768);
  v7 = *(nullsub_1(*(a1 + 16)) + 1536);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "SearchService::Recall", "", v9, 2u);
  }

  return sub_1A54910(v5, v4, a2, a1 + 32);
}

void sub_1A6106C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  v12 = *v10;
  if (a2 == 2)
  {
    v13 = nullsub_1(v12);
    if (os_log_type_enabled(*(v13 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63EA8();
    }
  }

  else
  {
    v14 = nullsub_1(v12);
    if (os_log_type_enabled(*(v14 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63E74();
    }
  }

  sub_19723A0(1, &a9);
  sub_1A54AD4(v9 + 32);
  sub_18FDA18(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1A61050);
}

void sub_1A6111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_18FDA18(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_1A61164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A611B0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1A61230(uint64_t a1)
{
  sub_1A5F98C(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_1220A18(v2);
  }
}

uint64_t sub_1A6127C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A61370(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722920;
  sub_1D3622C(a1 + 3);
  return a1;
}

void sub_1A613EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A6144C(uint64_t a1)
{
  v4 = (a1 + 2608);
  sub_1962638(&v4);
  if (*(a1 + 2600) == 1)
  {
    sub_16E5B34(a1 + 2504);
  }

  if (*(a1 + 2488) == 1)
  {
    sub_139A0E0(a1 + 2424);
  }

  sub_196318C(a1 + 2400, *(a1 + 2408));
  sub_16C9ED4(a1 + 2344);
  sub_18FA778(a1 + 2120);
  sub_191A17C(a1 + 1768);
  v2 = *(a1 + 1760);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  return sub_196609C(a1);
}

uint64_t sub_1A61550(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_2722970;
  sub_1A61694((a1 + 24));
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1A615E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A6163C(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_1A619EC(&v3);
  v3 = (a1 + 40);
  sub_1A61A70(&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }
}

void sub_1A61694(void *a1@<X8>)
{
  v2 = dispatch_group_create();
  global_queue = dispatch_get_global_queue(0, 0);
  if (v2 && global_queue)
  {
    sub_1A61718();
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  *a1 = 0;
  a1[1] = 0;
}

void *sub_1A6179C(void *a1, unint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_27229C0;
  sub_1A61884((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1A61824(std::__shared_weak_count *a1)
{
  a1->__vftable = off_27229C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A61884(uint64_t a1, unint64_t a2, dispatch_object_t object, uint64_t a4)
{
  *a1 = object;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  dispatch_retain(object);
  dispatch_retain(*(a1 + 8));
  sub_1A61904(v6, a2);
  return a1;
}

void sub_1A618EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A3CCC4(va);
  _Unwind_Resume(a1);
}

void *sub_1A61904(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_197FF6C(result, a2);
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_1A619A0(uint64_t a1)
{
  dispatch_release(*a1);
  dispatch_release(*(a1 + 8));
  v3 = (a1 + 24);
  sub_1A3CCC4(&v3);
  return a1;
}

void sub_1A619EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1A5E9FC(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A61A70(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1A5E97C(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1A61B64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722A10;
  a2[1] = v2;
  return result;
}

void sub_1A61B90(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *a3;
  v7 = v5;
  *a3 = 0;
  *(a3 + 1) = 0;
  v4(&v7, &v6, a4);
  if (*(&v6 + 1))
  {
    sub_1220A18(*(&v6 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_1220A18(*(&v7 + 1));
  }
}

void sub_1A61BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A61C18(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_2722A90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A61C64(void *a1)
{
  *a1 = off_2722AC0;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A61CB4(void *a1)
{
  *a1 = off_2722AC0;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A61DAC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A61DCC(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722AC0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A61E38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A61E58(void *a1)
{
  sub_1A61230(a1 + 8);

  operator delete(a1);
}

void sub_1A61E94(void *a1, uint64_t *a2)
{
  sub_195FFEC(v7, a2);
  v3 = a1[2];
  v4 = a1[1];
  sub_1965774(v8, v7);
  sub_1D36574(v3, v8);
  sub_1965BCC(v8);
  v6 = a1[2];
  v5 = a1[3];
  v9 = v4;
  v10 = v6;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1A5F8F4(v12, (a1 + 4));
  v12[7] = 0;
  operator new();
}

void sub_1A62004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1A626A4(v17 - 104);
    sub_1A5500C(v17 - 160);
    __cxa_begin_catch(exception_object);
    v20 = os_log_type_enabled(*(v16 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v20)
      {
        sub_1A63EA8();
      }
    }

    else if (v20)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a15);
    sub_1A54AD4(v15 + 32);
    sub_18FDA18(&a15);
    __cxa_end_catch();
    JUMPOUT(0x1A61FC4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A621B0(void *a1)
{
  *a1 = off_2722B40;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A62200(void *a1)
{
  *a1 = off_2722B40;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A622F8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A62318(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722B40;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A62384(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A623A4(void *a1)
{
  sub_1A61230(a1 + 8);

  operator delete(a1);
}

void sub_1A623E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  *a2 = 0;
  a2[1] = 0;
  v5 = (a1 + 16);
  v6 = *(a1 + 8);
  v7 = *(v6 + 1768);
  v8 = *(nullsub_1(*(a1 + 16)) + 1536);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_END, v8, "SearchService::QuProcessing", "", buf, 2u);
  }

  v9 = *v5;
  v12 = v4;
  v13 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1D3637C(v9, &v12);
  if (v13)
  {
    sub_1220A18(v13);
  }

  sub_1D36514(*v5, v10);
  sub_1A5F8F4(v14, a1 + 32);
  sub_1A54B1C(v6, v5, v14);
}

void sub_1A62524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1A5F98C(v13 - 104);
    __cxa_begin_catch(exception_object);
    v16 = os_log_type_enabled(*(v12 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v16)
      {
        sub_1A63EA8();
      }
    }

    else if (v16)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a11);
    sub_1A54AD4(v11 + 32);
    sub_18FDA18(&a11);
    __cxa_end_catch();
    JUMPOUT(0x1A624E0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62658(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A626A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A62724(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1A627A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A6286C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_1A628CC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (*(a3 + 16) == 1)
  {
    *(a1 + 24) = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_1A62944(uint64_t a1, void *a2)
{
  result = *sub_122356C(a1, &v3, a2);
  if (!result)
  {
    sub_1A629DC();
  }

  return result;
}

void sub_1A62A84(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1A62AA0(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (__p[96] == 1)
    {
      v3 = *(__p + 11);
      if (v3)
      {
        sub_1220A18(v3);
      }
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 sub_1A62B2C(__n128 *a1, __n128 *a2)
{
  if (a1[1].n128_u8[0] == a2[1].n128_u8[0])
  {
    if (a1[1].n128_u8[0])
    {
      result = *a2;
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      v4 = a1->n128_u64[1];
      *a1 = result;
      if (v4)
      {

        sub_1220A18(v4);
      }
    }
  }

  else if (a1[1].n128_u8[0])
  {
    v5 = a1->n128_u64[1];
    if (v5)
    {
      sub_1220A18(v5);
    }

    a1[1].n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a1[1].n128_u8[0] = 1;
  }

  return result;
}

void sub_1A62BBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62C84(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_1A62CE4(uint64_t a1, void *a2)
{
  result = *sub_122356C(a1, &v3, a2);
  if (!result)
  {
    sub_1A62D7C();
  }

  return result;
}

void sub_1A62E24(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1A62E40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62F08(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_1A62F68(uint64_t a1, void *a2)
{
  result = *sub_122356C(a1, &v3, a2);
  if (!result)
  {
    sub_1A63000();
  }

  return result;
}

void sub_1A630A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1A63134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722BE0;
  a2[1] = v2;
  return result;
}

void sub_1A63160(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *a3;
  v6 = v4;
  *a3 = 0;
  *(a3 + 1) = 0;
  v3(&v6, &v5);
  if (*(&v5 + 1))
  {
    sub_1220A18(*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_1220A18(*(&v6 + 1));
  }
}

void sub_1A631C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A631E4(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_2722C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A63230(uint64_t a1)
{
  *a1 = off_2722C90;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  return a1;
}

void sub_1A63294(uint64_t a1)
{
  *a1 = off_2722C90;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  operator delete();
}

void sub_1A63398(_Unwind_Exception *a1)
{
  sub_1A5E8D4((v1 + 1216));
  if (v1[1208] == 1)
  {
    sub_1965ECC((v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A633D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_2722C90;
  *(a2 + 8) = v4;
  sub_1A5E7C4((a2 + 16), a1 + 16);
  sub_1A5E82C(a2 + 1216, a1 + 1216);
  return sub_1A5F8F4(a2 + 1640, a1 + 1640);
}

void sub_1A63440(_Unwind_Exception *a1)
{
  sub_1A5E8D4(v1 + 1216);
  if (*(v1 + 1208) == 1)
  {
    sub_1965ECC(v1 + 16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A63470(uint64_t a1)
{
  sub_1A5F98C(a1 + 1640);
  result = sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {

    return sub_1965ECC(a1 + 16);
  }

  return result;
}

void sub_1A634CC(_BYTE *a1)
{
  sub_1A5F98C((a1 + 1640));
  sub_1A5E8D4((a1 + 1216));
  if (a1[1208] == 1)
  {
    sub_1965ECC((a1 + 16));
  }

  operator delete(a1);
}

uint64_t sub_1A63524(uint64_t a1, uint64_t *a2)
{
  sub_195FFEC(v6, a2);
  v3 = *(a1 + 8);
  v4 = *(v3 + 1768);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Received search capabilities request", buf, 2u);
  }

  if (*(a1 + 1208) == 1)
  {
    sub_1963D78(buf, (a1 + 16));
  }

  else
  {
    sub_1AF5CEC(v6, buf);
  }

  sub_1A5F8F4(v8, a1 + 1640);
  sub_2184C24(v3 + 1784, a1 + 1216, buf, v6, v8);
  sub_1A5F98C(v8);
  sub_1965ECC(buf);
  return sub_1965BCC(v6);
}

void sub_1A63634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    v19 = v16;
    sub_1A5F98C(v17 - 88);
    sub_1965ECC(&a15);
    __cxa_begin_catch(exception_object);
    v21 = os_log_type_enabled(*(v19 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v21)
      {
        sub_1A63EA8();
      }
    }

    else if (v21)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a15);
    sub_1A54AD4(v15 + 1640);
    sub_18FDA18(&a15);
    __cxa_end_catch();
    JUMPOUT(0x1A635F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A6376C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A637B8(uint64_t a1)
{
  *a1 = off_2722D10;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  return a1;
}

void sub_1A6381C(uint64_t a1)
{
  *a1 = off_2722D10;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  operator delete();
}

void sub_1A63920(_Unwind_Exception *a1)
{
  sub_1A5E8D4((v1 + 1216));
  if (v1[1208] == 1)
  {
    sub_1965ECC((v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A63960(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_2722D10;
  *(a2 + 8) = v4;
  sub_1A5E7C4((a2 + 16), a1 + 16);
  sub_1A5E82C(a2 + 1216, a1 + 1216);
  return sub_1A5F8F4(a2 + 1640, a1 + 1640);
}

void sub_1A639C8(_Unwind_Exception *a1)
{
  sub_1A5E8D4(v1 + 1216);
  if (*(v1 + 1208) == 1)
  {
    sub_1965ECC(v1 + 16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A639F8(uint64_t a1)
{
  sub_1A5F98C(a1 + 1640);
  result = sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {

    return sub_1965ECC(a1 + 16);
  }

  return result;
}

void sub_1A63A54(_BYTE *a1)
{
  sub_1A5F98C((a1 + 1640));
  sub_1A5E8D4((a1 + 1216));
  if (a1[1208] == 1)
  {
    sub_1965ECC((a1 + 16));
  }

  operator delete(a1);
}

void sub_1A63AAC(uint64_t a1, uint64_t *a2)
{
  sub_195FFEC(v4, a2);
  v3 = *(a1 + 8);
  if (*(a1 + 1208) == 1)
  {
    sub_1963D78(v5, (a1 + 16));
  }

  else
  {
    sub_1AF5CEC(v4, v5);
  }

  sub_1A55BEC(v3, (a1 + 1216), v5, v4);
  sub_1A55490(a1 + 1216, v3, v3[221], v5, v4);
}

void sub_1A63BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a2)
  {
    sub_1A5F98C(v19 - 88);
    if (a16)
    {
      sub_1220A18(a16);
    }

    sub_1965ECC(&a17);
    __cxa_begin_catch(exception_object);
    v22 = os_log_type_enabled(*(v18 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v22)
      {
        sub_1A63EA8();
      }
    }

    else if (v22)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a17);
    sub_1A54AD4(v17 + 1640);
    sub_18FDA18(&a17);
    __cxa_end_catch();
    JUMPOUT(0x1A63B78);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A63D00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A63D5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A63D7C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1A63DE4()
{
  sub_1A63D4C();
  (*(v0 + 16))();
  sub_1A63DA4();
  sub_1A63D5C(&dword_0, v1, v2, "Exception thrown while composing SAR Response - .%s ", v3, v4, v5, v6, v7);
}

void sub_1A63EA8()
{
  sub_1A63D4C();
  (*(v0 + 16))();
  sub_1A63DA4();
  sub_1A63D5C(&dword_0, v1, v2, "Exception thrown while processing request - .%s ", v3, v4, v5, v6, v7);
}

void sub_1A63F38()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27ED5C8, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}