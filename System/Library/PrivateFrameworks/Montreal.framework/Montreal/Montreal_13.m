void sub_19D3AB5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_19D2AD850(&STACK[0x7A0]);
  if (STACK[0x810])
  {
    sub_19D455104();
  }

  if (STACK[0x830])
  {
    sub_19D455104();
  }

  v27 = STACK[0x850];
  if (STACK[0x850])
  {
    v29 = STACK[0x858];
    v30 = STACK[0x850];
    if (STACK[0x858] != v27)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v27);
      v30 = STACK[0x850];
    }

    STACK[0x858] = v27;
    operator delete(v30);
    v28 = STACK[0x868];
    if (!STACK[0x868])
    {
LABEL_7:
      if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = STACK[0x868];
    if (!STACK[0x868])
    {
      goto LABEL_7;
    }
  }

  v32 = STACK[0x870];
  v33 = v28;
  if (STACK[0x870] != v28)
  {
    do
    {
      v34 = *(v32 - 9);
      v32 -= 4;
      if (v34 < 0)
      {
        operator delete(*v32);
      }
    }

    while (v32 != v28);
    v33 = STACK[0x868];
  }

  STACK[0x870] = v28;
  operator delete(v33);
  if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
  {
LABEL_9:
    sub_19D2A3E48(v25 - 256, *(v25 - 248));
    sub_19D2A3E48(v25 - 232, *(v25 - 224));
    sub_19D3AFACC(a25, *(a25 + 8));
    if (*(v25 - 208))
    {
      sub_19D45504C();
    }

    if (*(v25 - 184))
    {
      sub_19D455168();
    }

    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(STACK[0xB40]);
  goto LABEL_9;
}

void sub_19D3AB884()
{
  sub_19D2AD850(&STACK[0x460]);
  sub_19D2AD850(&STACK[0x478]);
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  JUMPOUT(0x19D3AB870);
}

void sub_19D3AB8BC()
{
  sub_19D37661C(&STACK[0x490]);
  sub_19D37661C(&STACK[0x3C0]);
  sub_19D37661C(&STACK[0x7A0]);
  JUMPOUT(0x19D3AC358);
}

void sub_19D3AB8E4()
{
  sub_19D2AD850(&STACK[0x4A0]);
  sub_19D2AD850(&STACK[0x4B8]);
  if ((SLOBYTE(STACK[0x3D7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC358);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3AB904()
{
  sub_19D2AD850(&STACK[0x4B8]);
  if ((SLOBYTE(STACK[0x3D7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC358);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3AB91C()
{
  if ((SLOBYTE(STACK[0x3D7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC358);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3AB92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_19D2AD850(&STACK[0x600]);
  sub_19D2AD850(&STACK[0x618]);
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  if (STACK[0x810])
  {
    sub_19D455104();
  }

  if (STACK[0x830])
  {
    sub_19D455104();
  }

  v27 = STACK[0x850];
  if (STACK[0x850])
  {
    v29 = STACK[0x858];
    v30 = STACK[0x850];
    if (STACK[0x858] != v27)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v27);
      v30 = STACK[0x850];
    }

    STACK[0x858] = v27;
    operator delete(v30);
    v28 = STACK[0x868];
    if (!STACK[0x868])
    {
LABEL_9:
      if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v28 = STACK[0x868];
    if (!STACK[0x868])
    {
      goto LABEL_9;
    }
  }

  v32 = STACK[0x870];
  v33 = v28;
  if (STACK[0x870] != v28)
  {
    do
    {
      v34 = *(v32 - 9);
      v32 -= 4;
      if (v34 < 0)
      {
        operator delete(*v32);
      }
    }

    while (v32 != v28);
    v33 = STACK[0x868];
  }

  STACK[0x870] = v28;
  operator delete(v33);
  if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
  {
LABEL_11:
    sub_19D2A3E48(v25 - 256, *(v25 - 248));
    sub_19D2A3E48(v25 - 232, *(v25 - 224));
    sub_19D3AFACC(a25, *(a25 + 8));
    if (*(v25 - 208))
    {
      sub_19D45504C();
    }

    if (*(v25 - 184))
    {
      sub_19D455168();
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(STACK[0xB40]);
  goto LABEL_11;
}

void sub_19D3ABCDC()
{
  sub_19D2AD850(&STACK[0x690]);
  sub_19D2AD850(&STACK[0x6A8]);
  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(STACK[0x788]);
  }

  JUMPOUT(0x19D3ABD18);
}

void sub_19D3ABD2C()
{
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  sub_19D37661C(&STACK[0x788]);
  JUMPOUT(0x19D3ABD4CLL);
}

void sub_19D3ABDC4(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x897]) < 0)
  {
    operator delete(STACK[0x880]);
  }

  sub_19D37661C(&STACK[0x550]);
  if (a2 == 1)
  {
    __cxa_get_exception_ptr(a1);
    STACK[0x880] = MEMORY[0x1E69E55E8] + 16;
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  JUMPOUT(0x19D3AC3A8);
}

void sub_19D3ABE60()
{
  sub_19D2AD850(&STACK[0x338]);
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3ABE74()
{
  sub_19D37661C(&STACK[0x350]);
  sub_19D37661C(&STACK[0x788]);
  v0 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v0;
    operator delete(v0);
  }

  sub_19D37661C(&STACK[0x7A0]);
  JUMPOUT(0x19D3AC358);
}

void sub_19D3ABEAC()
{
  sub_19D2AD850(&STACK[0x360]);
  sub_19D2AD850(&STACK[0x378]);
  if ((SLOBYTE(STACK[0x3D7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC358);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3ABECC()
{
  sub_19D2AD850(&STACK[0x378]);
  if ((SLOBYTE(STACK[0x3D7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC358);
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3ABEE4()
{
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    JUMPOUT(0x19D3ABEF0);
  }

  JUMPOUT(0x19D3AC358);
}

void sub_19D3ABF24()
{
  std::exception::~exception(&STACK[0x880]);
  __cxa_end_catch();
  JUMPOUT(0x19D3AC3A8);
}

void sub_19D3ABF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *v64;
  if (*v64)
  {
    *(v64 + 8) = v66;
    operator delete(v66);
  }

  *(v65 - 200) = v64;
  v67 = STACK[0x7A0];
  if (STACK[0x7A0])
  {
    STACK[0x7A8] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v68;
    operator delete(v68);
  }

  if (a64)
  {
    if (!atomic_fetch_add(&a64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a64->__on_zero_shared)(a64);
      std::__shared_weak_count::__release_weak(a64);
    }
  }

  JUMPOUT(0x19D3AC354);
}

void sub_19D3ABF70()
{
  v2 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v2;
    operator delete(v2);
  }

  *(v1 - 200) = v0;
  JUMPOUT(0x19D3AC2ECLL);
}

void sub_19D3ABF90()
{
  v2 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v2;
    operator delete(v2);
  }

  *(v1 - 200) = v0;
  v3 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x19D3AC30CLL);
}

void sub_19D3AC074()
{
  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(STACK[0x788]);
  }

  JUMPOUT(0x19D3AC144);
}

void sub_19D3AC094()
{
  if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC3A8);
  }

  JUMPOUT(0x19D3AC3A0);
}

void sub_19D3AC0A4()
{
  if ((SLOBYTE(STACK[0xB57]) & 0x80000000) == 0)
  {
    JUMPOUT(0x19D3AC3A8);
  }

  JUMPOUT(0x19D3AC3A0);
}

void sub_19D3AC0B4()
{
  if (STACK[0x868])
  {
    JUMPOUT(0x19D3AC43CLL);
  }

  JUMPOUT(0x19D3AC398);
}

void sub_19D3AC0E0()
{
  v1 = STACK[0x7A0];
  if (STACK[0x7A0])
  {
    STACK[0x7A8] = v1;
    operator delete(v1);
  }

  v2 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v2;
    operator delete(v2);
  }

  if (v0)
  {
    if (!atomic_fetch_add(&v0->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v0->__on_zero_shared)(v0);
      std::__shared_weak_count::__release_weak(v0);
    }
  }

  JUMPOUT(0x19D3AC350);
}

void sub_19D3AC0E8()
{
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  sub_19D37661C(&STACK[0x7C0]);
  sub_19D37661C(&STACK[0x7D0]);
  JUMPOUT(0x19D3AC184);
}

void sub_19D3AC13C()
{
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  sub_19D2AD850(&STACK[0x3C0]);
  sub_19D2AD850(&STACK[0x550]);
  JUMPOUT(0x19D3AC358);
}

void sub_19D3AC168()
{
  v0 = STACK[0x788];
  if (STACK[0x788])
  {
    STACK[0x790] = v0;
    operator delete(v0);
    v1 = STACK[0x7A0];
    if (!STACK[0x7A0])
    {
LABEL_3:
      v2 = STACK[0x3C0];
      if (!STACK[0x3C0])
      {
LABEL_8:
        JUMPOUT(0x19D3AC284);
      }

LABEL_7:
      STACK[0x3C8] = v2;
      JUMPOUT(0x19D3AC280);
    }
  }

  else
  {
    v1 = STACK[0x7A0];
    if (!STACK[0x7A0])
    {
      goto LABEL_3;
    }
  }

  STACK[0x7A8] = v1;
  operator delete(v1);
  v2 = STACK[0x3C0];
  if (!STACK[0x3C0])
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3AC1BC()
{
  if (!v0)
  {
    JUMPOUT(0x19D3AC284);
  }

  JUMPOUT(0x19D3AC27CLL);
}

void sub_19D3AC268()
{
  if (v0)
  {
    JUMPOUT(0x19D3AC280);
  }

  JUMPOUT(0x19D3AC284);
}

void sub_19D3AC488(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC80], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AC7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AC7BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AC800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AC848(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC60], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3ACB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3ACB7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3ACBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3ACC08(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC88], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3ACF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3ACF3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3ACF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3ACFC8(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  sub_19D3AF984(&v17, a2);
  sub_19D3AF984(&__p, a3);
  sub_19D3B1538(a1, &v17, &__p, a4);
  v7 = __p;
  if (__p)
  {
    v8 = v16;
    v9 = __p;
    if (v16 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v16 = v7;
    operator delete(v9);
  }

  v11 = v17;
  if (v17)
  {
    v12 = v18;
    v13 = v17;
    if (v18 != v17)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v17;
    }

    v18 = v11;
    operator delete(v13);
  }
}

void sub_19D3AD0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_19D2AD850(&a9);
  sub_19D2AD850(&a12);
  _Unwind_Resume(a1);
}

void sub_19D3AD0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19D2AD850(va);
  _Unwind_Resume(a1);
}

void sub_19D3AD110(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  sub_19D3AF984(&v17, a2);
  sub_19D3AF984(&__p, a3);
  sub_19D3B17A8(a1, &v17, &__p, a4);
  v7 = __p;
  if (__p)
  {
    v8 = v16;
    v9 = __p;
    if (v16 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v16 = v7;
    operator delete(v9);
  }

  v11 = v17;
  if (v17)
  {
    v12 = v18;
    v13 = v17;
    if (v18 != v17)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v17;
    }

    v18 = v11;
    operator delete(v13);
  }
}

void sub_19D3AD228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_19D2AD850(&a9);
  sub_19D2AD850(&a12);
  _Unwind_Resume(a1);
}

void sub_19D3AD244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19D2AD850(va);
  _Unwind_Resume(a1);
}

void sub_19D3AD258(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC70], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AD570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AD58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AD5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AD618(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC40], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AD930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AD94C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AD990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AD9D8(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC58], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3ADCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3ADD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3ADD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3ADD98(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC78], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AE0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AE0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AE110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AE158(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC50], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AE48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AE4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AE518(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC68], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AE830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AE84C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AE890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_19D3AE8D8(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  sub_19D3AF984(&v17, a2);
  sub_19D3AF984(&__p, a3);
  sub_19D3B20E4(a1, &v17, &__p, a4);
  v7 = __p;
  if (__p)
  {
    v8 = v16;
    v9 = __p;
    if (v16 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v16 = v7;
    operator delete(v9);
  }

  v11 = v17;
  if (v17)
  {
    v12 = v18;
    v13 = v17;
    if (v18 != v17)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v17;
    }

    v18 = v11;
    operator delete(v13);
  }
}

void sub_19D3AE9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_19D2AD850(&a9);
  sub_19D2AD850(&a12);
  _Unwind_Resume(a1);
}

void sub_19D3AEA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19D2AD850(va);
  _Unwind_Resume(a1);
}

void sub_19D3AEA20(void *a1@<X0>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  LODWORD(v28.__r_.__value_.__l.__data_) = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = lpsrc;
  if (!lpsrc || (v9 = __dynamic_cast(lpsrc, MEMORY[0x1E699BC38], MEMORY[0x1E699BC48], 0)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v30;
  *a4 = v9;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = v8;
    v27 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = v8;
    v27 = 0;
  }

  sub_19D3AF984(&v24, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel();
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v15 = v24;
  if (v24)
  {
    v16 = v25;
    v17 = v24;
    if (v25 != v24)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v24;
    }

    v25 = v15;
    operator delete(v17);
  }

  v19 = v27;
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!*a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*a1)
  {
LABEL_26:
    Espresso::sequential_builder::add_shape_from_kernel();
  }

LABEL_27:
  v20 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_19D3AED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19D37661C(v13);
  sub_19D37661C(va);
  _Unwind_Resume(a1);
}

void sub_19D3AED54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  sub_19D37661C(va3);
  _Unwind_Resume(a1);
}

void sub_19D3AED98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_19D37661C(v24);
      sub_19D37661C(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t sub_19D3AEDE0(uint64_t a1, const char *a2, void *a3)
{
  LODWORD(v14[0]) = 0;
  sub_19D3AEFB0(v14, &v15);
  v12 = v15;
  v13 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  MEMORY[0x19EAF9F50](v14, &v12, 0, &v10);
  v5 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_19D3A50F0(v14, a3, a2, v9);
  sub_19D3AFACC(v9, v9[1]);
  sub_19D3AF614(v14);
  v7 = v16;
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return 1;
}

void sub_19D3AEF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D3AF614(va);
  sub_19D37661C(v8 - 48);
  _Unwind_Resume(a1);
}

void sub_19D3AEF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_19D37661C(va);
  sub_19D37661C(va1);
  sub_19D37661C(v4 - 48);
  _Unwind_Resume(a1);
}

void sub_19D3AEFB0(Espresso::abstract_engine_factory *a1@<X0>, void *a2@<X8>)
{
  Espresso::abstract_engine_factory::shared(&v11, a1);
  Espresso::abstract_engine_factory::engine_for_platform();
  v5 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = v9;
    if (v9)
    {
LABEL_4:
      (*(*v6 + 32))(v6, &v9, 0xFFFFFFFFLL);
      v7 = v10;
      if (!v10)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = v9;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v8 = Espresso::espresso_os_log_subsystem(v6, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_19D455274(a1, v8);
    *a2 = 0;
    a2[1] = 0;
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

LABEL_9:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_19D3AF11C(_Unwind_Exception *a1, int a2)
{
  sub_19D37661C(&v8);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v5 = __cxa_begin_catch(a1);
  v7 = Espresso::espresso_os_log_subsystem(0, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_19D4551C8(v5, v7);
  }

  *v2 = 0;
  v2[1] = 0;
  __cxa_end_catch();
}

uint64_t sub_19D3AF1BC(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      operator new();
    }

    if (*(a1 + 64) != 2)
    {
      goto LABEL_10;
    }

    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    v4 = open(v3, 2);
    v5 = v4;
    v2 = *a1;
    if ((v4 & 0x80000000) == 0)
    {
      write(v4, v2, *(a1 + 8));
      close(v5);
      v2 = *a1;
    }

    if (v2)
    {
LABEL_10:
      operator delete[](v2);
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 16));
  return a1;
}

uint64_t sub_19D3AF334(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8((a1 + 16), *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v9 = *a3;
      *(a1 + 56) = *(a3 + 2);
      *(a1 + 40) = v9;
      goto LABEL_6;
    }
  }

  sub_19D2AD6B8((a1 + 40), *a3, *(a3 + 1));
LABEL_6:
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  *(a1 + 72) = 0;
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1) != 1 || **a3 != 114)
    {
      if (*(a3 + 1) != 2 || **a3 != 11122)
      {
LABEL_33:
        sub_19D41C548(11);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a3 + 23);
    if (v10 != 1)
    {
      if (v10 != 2 || *a3 != 11122)
      {
        goto LABEL_33;
      }

LABEL_15:
      *(a1 + 64) = 514;
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = open(v11, 514, 384);
      goto LABEL_24;
    }

    if (*a3 != 114)
    {
      goto LABEL_33;
    }
  }

  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v12 = open(v13, 0);
LABEL_24:
  v14 = v12;
  if (v12 < 0)
  {
    goto LABEL_33;
  }

  if (fstat(v12, &v18) < 0)
  {
    close(v14);
    goto LABEL_33;
  }

  st_size = v18.st_size;
  *(a1 + 8) = v18.st_size;
  v19 = 0;
  v20 = st_size;
  fcntl(v14, 44, &v19);
  if (!a4)
  {
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v16 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v14, 0);
    if (v16 == -1)
    {
      close(v14);
      sub_19D41C548(11);
    }

    *a1 = v16;
  }

  close(v14);
  return a1;
}

void sub_19D3AF574(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 39) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 16));
  _Unwind_Resume(exception_object);
}

void sub_19D3AF5C4(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

void sub_19D3AF5EC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

uint64_t sub_19D3AF614(uint64_t a1)
{
  sub_19D3AF7EC((a1 + 136));
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
  }

  if (v3 != v2)
  {
    *(a1 + 152) = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 120);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 104);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 88);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a1 + 79) < 0)
  {
LABEL_17:
    operator delete(*(a1 + 56));
  }

LABEL_18:
  sub_19D2AD8CC(a1 + 16, *(a1 + 24));
  v9 = *(a1 + 8);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_19D3AF7EC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0xAA];
  v6 = *v5 + 24 * (v4 % 0xAA);
  v7 = v2[(a1[5] + v4) / 0xAA] + 24 * ((a1[5] + v4) % 0xAA);
  if (v6 == v7)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = *(v6 + 8);
    if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 += 24;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_8:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v6 += 24;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_8;
    }
  }

  while (v6 != v7);
  v2 = a1[1];
  v3 = a1[2];
LABEL_12:
  a1[5] = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

LABEL_14:
  if (v10 == 1)
  {
    v12 = 85;
LABEL_20:
    a1[4] = v12;
  }

  else if (v10 == 2)
  {
    v12 = 170;
    goto LABEL_20;
  }
}

void *sub_19D3AF984(void *result, void *a2)
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

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D3AFAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D378300(&a11);
  *(v11 + 8) = v12;
  sub_19D2CA2A4(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3AFACC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19D3AFACC(a1, *a2);
    sub_19D3AFACC(a1, *(a2 + 1));
    v4 = *(a2 + 12);
    if (v4)
    {
      *(a2 + 13) = v4;
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

_BYTE *sub_19D3AFB60(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_19D3AFCFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2AE2CC(va);
  _Unwind_Resume(a1);
}

void *sub_19D3AFD10(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D3AFEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_19D3AFECC(void *a1, uint64_t a2)
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

  v6 = sub_19D2A4C00(&v24, a2, v5);
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

void sub_19D3B02D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0D64(va);
  _Unwind_Resume(a1);
}

void sub_19D3B02E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0D64(va);
  _Unwind_Resume(a1);
}

void *sub_19D3B02FC(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_19D3B0468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_19D2B88C4(va);
  _Unwind_Resume(a1);
}

void *sub_19D3B048C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D3B0654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3B0668(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3B0668(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 96);
      if (v3)
      {
        *(v2 + 104) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_19D3B06CC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t *sub_19D3B0874(void *a1, unsigned int *a2)
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

void ****sub_19D3B0BAC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 9);
          v4 -= 4;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_19D3B0C30(void **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v19 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v19 = a4;
      }

      v20 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v21 = 0x7FFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v19;
      }

      if (!(v21 >> 59))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v13 = a1[1];
  if (a4 <= (v13 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v5);
        LODWORD(v8[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
        v5 = (v5 + 32);
        v8 = (v8 + 32);
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v18 = *(v13 - 9);
      v13 -= 4;
      if (v18 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v14 = (__str + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8, v5);
        LODWORD(v8[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
        v5 = (v5 + 32);
        v8 = (v8 + 32);
      }

      while (v5 != v14);
      v13 = a1[1];
    }

    v22 = v13;
    v15 = v13;
    if (v14 != a3)
    {
      v15 = v13;
      do
      {
        if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_19D2AD6B8(v15, v14->__r_.__value_.__l.__data_, v14->__r_.__value_.__l.__size_);
          v17 = v22;
        }

        else
        {
          v16 = *&v14->__r_.__value_.__l.__data_;
          v15[2] = v14->__r_.__value_.__r.__words[2];
          *v15 = v16;
          v17 = v15;
        }

        *(v15 + 6) = v14[1].__r_.__value_.__l.__data_;
        v14 = (v14 + 32);
        v15 = v17 + 4;
        v22 = v17 + 4;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }
}

void sub_19D3B0F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D3B0F30(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_19D3B0F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D3B0F30(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B0F30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_19D3B0FB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10BAF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_19D3B101C(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BAFE0;
  if (*(this + 24) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 2) = 0;
  v4 = *(this + 7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 5);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  Espresso::blob_rtti_root::~blob_rtti_root(v6);
}

void sub_19D3B113C(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BAFE0;
  if (*(this + 24) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 2) = 0;
  v4 = *(this + 7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 5);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  else
  {
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  operator delete(v6);
}

void sub_19D3B1284(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10BB018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_19D3B12F0(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BB068;
  if (*(this + 24) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 2) = 0;
  v4 = *(this + 7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 5);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  Espresso::blob_rtti_root::~blob_rtti_root(v6);
}

void sub_19D3B1410(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BB068;
  if (*(this + 24) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 2) = 0;
  v4 = *(this + 7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 5);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  else
  {
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  operator delete(v6);
}

void sub_19D3B1538(void *a1@<X0>, void *a2@<X5>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  v24 = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = a4[1];
  v22 = *a4;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19D3AF984(&v20, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel_dbg();
  v9 = __p;
  if (__p)
  {
    v10 = v19;
    v11 = __p;
    if (v19 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v19 = v9;
    operator delete(v11);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }

  v17 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (!*a1)
    {
      return;
    }
  }

  else if (!*a1)
  {
    return;
  }

  Espresso::sequential_builder::add_shape_from_kernel();
}

void sub_19D3B1758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  _Unwind_Resume(a1);
}

void sub_19D3B178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D37661C(va);
  sub_19D37661C(v8);
  _Unwind_Resume(a1);
}

void sub_19D3B17A8(void *a1@<X0>, void *a2@<X5>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  v24 = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = a4[1];
  v22 = *a4;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19D3AF984(&v20, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel_dbg();
  v9 = __p;
  if (__p)
  {
    v10 = v19;
    v11 = __p;
    if (v19 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v19 = v9;
    operator delete(v11);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }

  v17 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (!*a1)
    {
      return;
    }
  }

  else if (!*a1)
  {
    return;
  }

  Espresso::sequential_builder::add_shape_from_kernel();
}

void sub_19D3B19C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  _Unwind_Resume(a1);
}

void sub_19D3B19FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D37661C(va);
  sub_19D37661C(v8);
  _Unwind_Resume(a1);
}

void sub_19D3B1A38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10BB0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_19D3B1AA4(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BB0F0;
  if (*(this + 32) == 1)
  {
    v3 = *(this + 3);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 3) = 0;
  v4 = *(this + 8);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 6);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  Espresso::blob_rtti_root::~blob_rtti_root(v6);
}

void sub_19D3B1BC4(Espresso::blob_rtti_root *this, void *a2)
{
  *this = &unk_1F10BB0F0;
  if (*(this + 32) == 1)
  {
    v3 = *(this + 3);
    if (v3)
    {
      Espresso::kern_dealloc(v3, a2);
    }
  }

  *(this + 3) = 0;
  v4 = *(this + 8);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 6);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  else
  {
    Espresso::blob_rtti_root::~blob_rtti_root(this);
  }

  operator delete(v6);
}

void sub_19D3B1DD8(_Unwind_Exception *a1)
{
  sub_19D37661C(&v1[3]);
  sub_19D37661C(v3);
  Espresso::blob_rtti_root::~blob_rtti_root(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void *sub_19D3B1E08(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D3B1F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D378300(&a11);
  *(v11 + 8) = v12;
  sub_19D2CA2A4(&a9);
  _Unwind_Resume(a1);
}

void *sub_19D3B1F54(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_19D3B20C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_19D2B88C4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B20E4(void *a1@<X0>, void *a2@<X5>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  v24 = (***(a1[14] + 8))(*(a1[14] + 8));
  Espresso::abstract_engine_factory::make_kernel_priv();
  v8 = a4[1];
  v22 = *a4;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19D3AF984(&v20, a2);
  sub_19D3AF984(&__p, a3);
  Espresso::sequential_builder::add_kernel_dbg();
  v9 = __p;
  if (__p)
  {
    v10 = v19;
    v11 = __p;
    if (v19 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v19 = v9;
    operator delete(v11);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }

  v17 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (!*a1)
    {
      return;
    }
  }

  else if (!*a1)
  {
    return;
  }

  Espresso::sequential_builder::add_shape_from_kernel();
}

void sub_19D3B2304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_19D2AD850(va);
  sub_19D2AD850(va1);
  sub_19D37661C(va2);
  sub_19D37661C(v2);
  _Unwind_Resume(a1);
}

void sub_19D3B2338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D37661C(va);
  sub_19D37661C(v8);
  _Unwind_Resume(a1);
}

void *sub_19D3B2354(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D3B25B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19D3B29A0(const __CFDictionary **a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  sub_19D3BA8A0("Name", &v10);
  sub_19D3BA8A0("MinimumValue", &v11);
  sub_19D3BA8A0("MaximumValue", &v12);
  sub_19D3BA8A0("Dimension", &v13);
  sub_19D3BA8A0("Type", cf);
  v9[0] = &v10;
  v9[1] = 5;
  v2 = sub_19D3BC698(v9);
  v9[2] = v2;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v4 = CFArrayGetCount(v2);
    if (Count)
    {
      v5 = v4;
      for (i = 0; i != Count; ++i)
      {
        if (v5 == i)
        {
          break;
        }

        sub_19D3BC838(v2, i, &v10);
        if (!*a1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v9[0] = a1;
        if ((sub_19D3B2C8C(v9, &v10) & 1) == 0)
        {
          v7 = __cxa_allocate_exception(0x28uLL);
          sub_19D3BC938(v7, "Missing required key: ", &v10);
          __cxa_throw(v7, &unk_1F10BB128, sub_19D3B2DC4);
        }

        if (SHIBYTE(v12) < 0)
        {
          operator delete(v10);
        }
      }
    }

    CFRelease(v2);
  }
}

void sub_19D3B2BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_19D2ABE10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const __CFDictionary *sub_19D3B2C8C(const __CFDictionary ***a1, uint64_t a2)
{
  v2 = **a1;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    v9 = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!v2)
    {
LABEL_10:
      if (!v6)
      {
        return v2;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v2 = (CFDictionaryContainsKey(v2, v6) != 0);
  v6 = v9;
  if (v9)
  {
LABEL_14:
    CFRelease(v6);
  }

  return v2;
}

void sub_19D3B2D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BB1B4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B2D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_19D3BB1B4(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B2DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BF898(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B2DC4(uint64_t a1)
{
  if (*(MEMORY[0x19EAFA110]() + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

const void **sub_19D3B2E0C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_19D3B2E40(const __CFDictionary **a1, void *a2)
{
  sub_19D3B301C(a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 == v15)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

  do
  {
    if (*(v3 + 23) < 0)
    {
      sub_19D2AD6B8(__p, *v3, v3[1]);
    }

    else
    {
      v5 = *v3;
      v13 = v3[2];
      *__p = v5;
    }

    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v11 = a1;
    if ((sub_19D3B2C8C(&v11, __p) & 1) == 0)
    {
      v10 = __cxa_allocate_exception(0x28uLL);
      sub_19D3BCB84(v10, "Missing parameter value for parameter with name=", __p);
      __cxa_throw(v10, &unk_1F10BB128, sub_19D3B2DC4);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v3 += 3;
  }

  while (v3 != v4);
  v3 = v14;
  if (v14)
  {
LABEL_13:
    v6 = v15;
    v7 = v3;
    if (v15 != v3)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v3);
      v7 = v14;
    }

    v15 = v3;
    operator delete(v7);
  }
}

void sub_19D3B2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2AD850(va);
  _Unwind_Resume(a1);
}

void sub_19D3B2FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_19D2AD850(&a17);
  _Unwind_Resume(a1);
}

void sub_19D3B301C(void *a1@<X0>, void *a2@<X8>)
{
  sub_19D3BB21C(a1, &v18);
  sub_19D3BB2C8(a1, &__p);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = v18;
  v5 = v19;
  if (v18 == v19)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (v6 < a2[2])
      {
        if (*(v4 + 23) < 0)
        {
          sub_19D2AD6B8(v6, *v4, v4[1]);
        }

        else
        {
          v7 = *v4;
          v6->__r_.__value_.__r.__words[2] = v4[2];
          *&v6->__r_.__value_.__l.__data_ = v7;
        }

        ++v6;
      }

      else
      {
        v6 = sub_19D2A48F8(a2, v4);
      }

      a2[1] = v6;
      v4 += 3;
    }

    while (v4 != v5);
  }

  sub_19D3BB378(a2, v6, __p, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3));
  v8 = __p;
  if (__p)
  {
    v9 = v17;
    v10 = __p;
    if (v17 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v17 = v8;
    operator delete(v10);
  }

  v12 = v18;
  if (v18)
  {
    v13 = v19;
    v14 = v18;
    if (v19 != v18)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v18;
    }

    v19 = v12;
    operator delete(v14);
  }
}

void sub_19D3B3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_19D2AD850(v12);
  sub_19D2AD850(&a9);
  sub_19D2AD850(&a12);
  _Unwind_Resume(a1);
}

void sub_19D3B31DC(CFTypeRef *a1@<X0>, __int128 **a2@<X1>, __int128 **a3@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v33 = v6;
  sub_19D370C7C(&v29, a2);
  sub_19D370EB8(&__p, a2 + 3);
  sub_19D3B2E40(&v33, &v29);
  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 != __p)
    {
      do
      {
        v10 = *(v8 - 17);
        v8 -= 5;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v32 = v7;
    operator delete(v9);
  }

  v11 = v29;
  if (v29)
  {
    v12 = v30;
    v13 = v29;
    if (v30 != v29)
    {
      do
      {
        v14 = *(v12 - 25);
        v12 -= 6;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v29;
    }

    v30 = v11;
    operator delete(v13);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  sub_19D3B3444(a1, a2, &v27);
  sub_19D3B3ABC(a1, a2 + 3, &v25);
  sub_19D3710F4(a3, &v27, &v25);
  v15 = v25;
  if (v25)
  {
    v16 = v26;
    v17 = v25;
    if (v26 != v25)
    {
      do
      {
        v18 = *(v16 - 4);
        if (v18)
        {
          *(v16 - 3) = v18;
          operator delete(v18);
        }

        v19 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
          operator delete(*v19);
        }

        v16 -= 7;
      }

      while (v19 != v15);
      v17 = v25;
    }

    v26 = v15;
    operator delete(v17);
  }

  v20 = v27;
  if (v27)
  {
    v21 = v28;
    v22 = v27;
    if (v28 != v27)
    {
      do
      {
        v23 = *(v21 - 4);
        if (v23)
        {
          *(v21 - 3) = v23;
          operator delete(v23);
        }

        v24 = v21 - 7;
        if (*(v21 - 33) < 0)
        {
          operator delete(*v24);
        }

        v21 -= 7;
      }

      while (v24 != v20);
      v22 = v27;
    }

    v28 = v20;
    operator delete(v22);
  }
}

void sub_19D3B33E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D371E8C(va);
  _Unwind_Resume(a1);
}

void sub_19D3B33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D3708F4(va);
  sub_19D2C08B0((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_19D3B3414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D36EE34(va);
  sub_19D2C08B0((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_19D3B3444(const __CFDictionary **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        sub_19D2AD6B8(v37, *v3, *(v3 + 1));
      }

      else
      {
        v7 = *v3;
        v38 = *(v3 + 2);
        *v37 = v7;
      }

      v8 = *(v3 + 24);
      v40 = *(v3 + 10);
      v39 = v8;
      if (v40 < 2)
      {
        if (*a1)
        {
          sub_19D3BD440(*a1, v37);
          __p = 0;
          v32 = 0;
          v33 = 0;
          v34 = 1;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!*a1)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not construct");
        goto LABEL_45;
      }

      v9 = sub_19D3BCCCC(*a1, v37);
      if (!v9)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not find item");
LABEL_45:
        __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v10 = v9;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v10))
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not convert");
        goto LABEL_45;
      }

      sub_19D3BCE14(v10, &v35);
      __p = 0;
      v32 = 0;
      v33 = 0;
      v13 = v35;
      v12 = v36;
      v34 = (v36 - v35) >> 3;
      if (v34)
      {
        sub_19D3628E0(&__p, ((v36 - v35) >> 3));
        v13 = v35;
        v12 = v36;
      }

      if (v13 != v12)
      {
        v14 = 0;
        v15 = __p;
        v16 = v12 - v13 - 8;
        if (v16 < 0x18 || (__p - v13) < 0x20)
        {
          v18 = v13;
LABEL_23:
          v23 = &v15[8 * v14];
          do
          {
            v24 = *v18;
            v18 += 8;
            *v23 = v24;
            v23 += 8;
          }

          while (v18 != v12);
          goto LABEL_25;
        }

        v17 = (v16 >> 3) + 1;
        v14 = v17 & 0x3FFFFFFFFFFFFFFCLL;
        v18 = &v13[8 * (v17 & 0x3FFFFFFFFFFFFFFCLL)];
        v19 = (v13 + 16);
        v20 = __p + 16;
        v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v22 = *v19;
          *(v20 - 1) = *(v19 - 1);
          *v20 = v22;
          v19 += 2;
          v20 += 2;
          v21 -= 4;
        }

        while (v21);
        if (v17 != v14)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v25 = a3[1];
      if (v25 < a3[2])
      {
        if (v32 != __p)
        {
          if (((v32 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v28 = v34;
        if (SHIBYTE(v38) < 0)
        {
          sub_19D2AD6B8(v25, v37[0], v37[1]);
        }

        else
        {
          v26 = *v37;
          *(v25 + 16) = v38;
          *v25 = v26;
        }

        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        *(v25 + 48) = v28;
        a3[1] = v25 + 56;
        v27 = __p;
        if (!__p)
        {
          goto LABEL_32;
        }

LABEL_31:
        v32 = v27;
        operator delete(v27);
        goto LABEL_32;
      }

      a3[1] = sub_19D371F14(a3, v37, &__p);
      v27 = __p;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }

      v3 += 3;
    }

    while (v3 != v4);
  }
}

void sub_19D3B39AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v25 = *v22;
  if (!*v22)
  {
    sub_19D2ABE10(a1);
  }

  *(v23 + 32) = v25;
  operator delete(v25);
  sub_19D2ABE10(a1);
}

void sub_19D3B3A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v23);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_19D371E8C(v22);
  _Unwind_Resume(a1);
}

void sub_19D3B3ABC(const __CFDictionary **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        sub_19D2AD6B8(&v37, *v3, *(v3 + 1));
      }

      else
      {
        v7 = *v3;
        v37.data = *(v3 + 2);
        *&v37.isa = v7;
      }

      v8 = *(v3 + 3);
      v38 = *(v3 + 8);
      v37.length = v8;
      if (v38 < 2)
      {
        if (*a1)
        {
          sub_19D3BD820(*a1, &v37);
          __p = 0;
          v32 = 0;
          v33 = 0;
          v34 = 1;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!*a1)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not construct");
        goto LABEL_45;
      }

      v9 = sub_19D3BCCCC(*a1, &v37);
      if (!v9)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not find item");
LABEL_45:
        __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v10 = v9;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v10))
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not convert");
        goto LABEL_45;
      }

      sub_19D3BD4E4(v10, &v35);
      __p = 0;
      v32 = 0;
      v33 = 0;
      v13 = v35;
      v12 = v36;
      v34 = (v36 - v35) >> 2;
      if (v34)
      {
        sub_19D2CA0E8(&__p, ((v36 - v35) >> 2));
        v13 = v35;
        v12 = v36;
      }

      if (v13 != v12)
      {
        v14 = 0;
        v15 = __p;
        v16 = v12 - v13 - 4;
        if (v16 < 0x1C || (__p - v13) < 0x20)
        {
          v18 = v13;
LABEL_23:
          v23 = &v15[4 * v14];
          do
          {
            v24 = *v18;
            v18 += 4;
            *v23 = v24;
            v23 += 4;
          }

          while (v18 != v12);
          goto LABEL_25;
        }

        v17 = (v16 >> 2) + 1;
        v14 = v17 & 0x7FFFFFFFFFFFFFF8;
        v18 = &v13[4 * (v17 & 0x7FFFFFFFFFFFFFF8)];
        v19 = (v13 + 16);
        v20 = __p + 16;
        v21 = v17 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v22 = *v19;
          *(v20 - 1) = *(v19 - 1);
          *v20 = v22;
          v19 += 2;
          v20 += 2;
          v21 -= 8;
        }

        while (v21);
        if (v17 != v14)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v25 = a3[1];
      if (v25 < a3[2])
      {
        if (v32 != __p)
        {
          if (((v32 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v28 = v34;
        if (SHIBYTE(v37.data) < 0)
        {
          sub_19D2AD6B8(v25, v37.isa, v37.info);
        }

        else
        {
          v26 = *&v37.isa;
          *(v25 + 16) = v37.data;
          *v25 = v26;
        }

        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        *(v25 + 48) = v28;
        a3[1] = v25 + 56;
        v27 = __p;
        if (!__p)
        {
          goto LABEL_32;
        }

LABEL_31:
        v32 = v27;
        operator delete(v27);
        goto LABEL_32;
      }

      a3[1] = sub_19D37249C(a3, &v37, &__p);
      v27 = __p;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (SHIBYTE(v37.data) < 0)
      {
        operator delete(v37.isa);
      }

      v3 = (v3 + 40);
    }

    while (v3 != v4);
  }
}

void sub_19D3B401C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v25 = *v22;
  if (!*v22)
  {
    sub_19D2ABE10(a1);
  }

  *(v23 + 32) = v25;
  operator delete(v25);
  sub_19D2ABE10(a1);
}

void sub_19D3B40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v23);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_19D371E8C(v22);
  _Unwind_Resume(a1);
}

void sub_19D3B412C(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v29[0] = 0;
  v29[1] = 0;
  v27 = 0;
  v28 = v29;
  v25 = &v26;
  v26 = 0;
  v4 = *(a1 + 48);
  v5 = (a1 + 56);
  if (v4 != (a1 + 56))
  {
    do
    {
      sub_19D2C3E1C(&v25, &v26, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
    v9 = v25;
    if (v25 != &v26)
    {
      do
      {
        sub_19D3BC048(a1, (v9 + 4), v30);
        sub_19D3BBCFC(&v22, &__p);
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        sub_19D3B4510(&v22, &v24);
        v30[0] = v9 + 4;
        v10 = sub_19D3BD95C(&v28, v9 + 4);
        v11 = v10[7];
        v10[7] = v24;
        v24 = v11;
        if (v11)
        {
          CFRelease(v11);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        v12 = v9[1];
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
            v13 = v9[2];
            v8 = *v13 == v9;
            v9 = v13;
          }

          while (!v8);
        }

        v9 = v13;
      }

      while (v13 != &v26);
    }
  }

  sub_19D2A3E48(&v25, v26);
  v26 = 0;
  v27 = 0;
  v25 = &v26;
  v14 = *(a1 + 72);
  if (v14 != (a1 + 80))
  {
    do
    {
      sub_19D2C3E1C(&v25, &v26, v14 + 4);
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v8 = *v16 == v14;
          v14 = v16;
        }

        while (!v8);
      }

      v14 = v16;
    }

    while (v16 != (a1 + 80));
    v17 = v25;
    if (v25 != &v26)
    {
      do
      {
        sub_19D3BC370(a1, (v17 + 4), v30);
        sub_19D3BBDAC(&v22, &__p);
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        sub_19D3B4648(&v22, &v24);
        v30[0] = v17 + 4;
        v18 = sub_19D3BD95C(&v28, v17 + 4);
        v19 = v18[7];
        v18[7] = v24;
        v24 = v19;
        if (v19)
        {
          CFRelease(v19);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        v20 = v17[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v17[2];
            v8 = *v21 == v17;
            v17 = v21;
          }

          while (!v8);
        }

        v17 = v21;
      }

      while (v21 != &v26);
    }
  }

  sub_19D2A3E48(&v25, v26);
  *a2 = sub_19D3BE498(&v28);
  sub_19D3BD8C0(&v28, v29[0]);
}

void sub_19D3B448C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, char a21, char *a22, uint64_t a23, char a24)
{
  sub_19D2A3E48(&a16, a19);
  sub_19D3BD8C0(&a21, a22);
  _Unwind_Resume(a1);
}

void sub_19D3B4510(uint64_t a1@<X0>, CFArrayRef *a2@<X8>)
{
  v3 = *(a1 + 24);
  v5 = 0;
  v6 = 0;
  __p = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = sub_19D3BDB7C(&__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_19D3B462C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3B4648(uint64_t a1@<X0>, CFArrayRef *a2@<X8>)
{
  v3 = *(a1 + 24);
  v5 = 0;
  v6 = 0;
  __p = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = sub_19D3BE05C(&__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_19D3B4764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3B4780(const __CFDictionary **a1)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3B4A18("MaxIterations", &v15);
  v2 = sub_19D3BCCCC(*a1, &v15);
  if (!v2)
  {
    v4 = 100;
    if (*a1)
    {
      goto LABEL_7;
    }

LABEL_18:
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = sub_19D2A7128(v2);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 100;
  }

  if (!*a1)
  {
    goto LABEL_18;
  }

LABEL_7:
  sub_19D3B4A18("Patience", &__p.length);
  v5 = sub_19D3BCCCC(*a1, &__p.length);
  v6 = 0xA00000000;
  if (v5)
  {
    v7 = sub_19D2A7128(v5);
    if ((v7 & 0x100000000) != 0)
    {
      v6 = v7 << 32;
    }
  }

  if (!*a1)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3B4A18("MinDelta", &__p);
  v8 = sub_19D3BCCCC(*a1, &__p);
  if (v8)
  {
    sub_19D3BD064(v8);
  }

  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(__p.length);
    if ((SHIBYTE(v15.data) & 0x80000000) == 0)
    {
      return v6 | v4;
    }

LABEL_21:
    operator delete(v15.isa);
    return v6 | v4;
  }

  operator delete(__p.isa);
  if (v14 < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (SHIBYTE(v15.data) < 0)
  {
    goto LABEL_21;
  }

  return v6 | v4;
}

void sub_19D3B497C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

void sub_19D3B4A18(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_19D3BA8A0(a1, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  p_cf = &cf;
  sub_19D2BF7EC(&p_cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D3B4AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v9);
  sub_19D2BF898(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3B4AE0(const __CFArray **a1@<X0>, const __CFDictionary **a2@<X1>, uint64_t a3@<X8>)
{
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(v4);
  if (Count)
  {
    for (i = 0; Count != i; ++i)
    {
      if (!*a1)
      {
        v80 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v80, "Could not construct");
        __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      sub_19D3BE874(*a1, i, &cf);
      v7 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v113 = v7;
      sub_19D3B29A0(&v113);
      if (v113)
      {
        CFRelease(v113);
      }

      if (!cf)
      {
        v81 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v81, "Could not construct");
        __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      sub_19D3B4A18("Type", __p);
      v8 = sub_19D3BCCCC(cf, __p);
      if (!v8)
      {
        v79 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v79, "Could not find item");
LABEL_185:
        __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v9 = v8;
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(v9))
      {
        v79 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v79, "Could not convert");
        goto LABEL_185;
      }

      sub_19D2C4680(v9, &v108);
      if (SHIBYTE(v99) < 0)
      {
        operator delete(__p[0]);
      }

      sub_19D3B4A18("Integral", __p);
      if ((v110 & 0x80u) == 0)
      {
        v11 = v110;
      }

      else
      {
        v11 = v109;
      }

      v12 = HIBYTE(v99);
      v13 = SHIBYTE(v99);
      if (v99 < 0)
      {
        v12 = __p[1];
      }

      if (v11 == v12)
      {
        if ((v110 & 0x80u) == 0)
        {
          v14 = &v108;
        }

        else
        {
          v14 = v108;
        }

        if (v99 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = memcmp(v14, v15, v11) == 0;
        if ((v13 & 0x80000000) == 0)
        {
LABEL_28:
          if (v16)
          {
            goto LABEL_29;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v16 = 0;
        if ((SHIBYTE(v99) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }
      }

      operator delete(__p[0]);
      if (v16)
      {
LABEL_29:
        sub_19D3B5990(&cf, __p);
        v17 = v118;
        if (v118 < v119)
        {
          v18 = *__p;
          *(v118 + 16) = v99;
          *v17 = v18;
          __p[1] = 0;
          v99 = 0;
          __p[0] = 0;
          v19 = DWORD2(v100);
          *(v17 + 24) = v100;
          *(v17 + 32) = v19;
          v118 = v17 + 40;
          if ((v110 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        }

        v118 = sub_19D3BEA10(&v117, __p);
        if ((SHIBYTE(v99) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }

LABEL_34:
      sub_19D3B4A18("Continuous", __p);
      if ((v110 & 0x80u) == 0)
      {
        v20 = v110;
      }

      else
      {
        v20 = v109;
      }

      v21 = HIBYTE(v99);
      v22 = SHIBYTE(v99);
      if (v99 < 0)
      {
        v21 = __p[1];
      }

      if (v20 != v21)
      {
        v25 = 0;
        if ((SHIBYTE(v99) & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_51:
        operator delete(__p[0]);
        goto LABEL_52;
      }

      if ((v110 & 0x80u) == 0)
      {
        v23 = &v108;
      }

      else
      {
        v23 = v108;
      }

      if (v99 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v25 = memcmp(v23, v24, v20) == 0;
      if (v22 < 0)
      {
        goto LABEL_51;
      }

LABEL_52:
      if (!v25)
      {
        v82 = __cxa_allocate_exception(0x28uLL);
        sub_19D3BEDD4(v82, "Unrecognized paramType: ", &v108);
        __cxa_throw(v82, &unk_1F10BB128, sub_19D3B2DC4);
      }

      sub_19D3B5C84(&cf, __p);
      v26 = v115;
      if (v115 < v116)
      {
        v27 = *__p;
        *(v115 + 16) = v99;
        *v26 = v27;
        __p[1] = 0;
        v99 = 0;
        __p[0] = 0;
        v28 = v101;
        *(v26 + 24) = v100;
        *(v26 + 40) = v28;
        v115 = v26 + 48;
        if ((v110 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      v115 = sub_19D3BEC48(&v114, __p);
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
LABEL_57:
        if ((v110 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }

LABEL_60:
      operator delete(__p[0]);
      if ((v110 & 0x80000000) == 0)
      {
LABEL_58:
        v29 = cf;
        if (!cf)
        {
          continue;
        }

LABEL_62:
        CFRelease(v29);
        continue;
      }

LABEL_61:
      operator delete(v108);
      v29 = cf;
      if (cf)
      {
        goto LABEL_62;
      }
    }
  }

  sub_19D370C7C(&v108, &v114);
  sub_19D370EB8(&v111, &v117);
  if (!*a2)
  {
    v85 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v85, "Could not construct");
    __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3B4A18("CallbackInterval", __p);
  v30 = sub_19D3BCCCC(*a2, __p);
  if (v30)
  {
    v31 = sub_19D2A7128(v30);
    if ((v31 & 0x100000000) != 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1;
    }

    if (SHIBYTE(v99) < 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v32 = 1;
    if (SHIBYTE(v99) < 0)
    {
LABEL_69:
      operator delete(__p[0]);
    }
  }

  if (!*a2)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
    __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("RandomSeed", __p);
  if (!*a2)
  {
    v33 = 0;
    v34 = __p[0];
    if (!__p[0])
    {
      goto LABEL_79;
    }

LABEL_78:
    CFRelease(v34);
    goto LABEL_79;
  }

  if (!__p[0])
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    LOBYTE(cf) = 0;
    v107 = 0;
    goto LABEL_88;
  }

  v33 = CFDictionaryContainsKey(*a2, __p[0]) != 0;
  v34 = __p[0];
  if (__p[0])
  {
    goto LABEL_78;
  }

LABEL_79:
  v35 = *a2;
  if (v33)
  {
    if (!v35)
    {
      v87 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v87, "Could not construct");
      __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_19D3BA8A0("RandomSeed", __p);
    v36 = sub_19D3BEF1C(*a2, __p);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    v37 = v36 & 0xFFFFFF00;
    v38 = v36;
    v35 = *a2;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
  }

  LOBYTE(cf) = 0;
  v107 = 0;
  if (!v35)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_88:
  sub_19D3BA8A0("InitialParameterValues", __p);
  if (!*a2)
  {
    v41 = 0;
    v42 = __p[0];
    if (!__p[0])
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (!__p[0])
  {
    goto LABEL_134;
  }

  v41 = CFDictionaryContainsKey(*a2, __p[0]) != 0;
  v42 = __p[0];
  if (__p[0])
  {
LABEL_93:
    CFRelease(v42);
  }

LABEL_94:
  if (v41)
  {
    if (v107 == 1)
    {
      v43 = cf;
      if (cf)
      {
        v44 = v105;
        v45 = cf;
        if (v105 != cf)
        {
          do
          {
            v44 = sub_19D3715C0((v44 - 12));
          }

          while (v44 != v43);
          v45 = cf;
        }

        v105 = v43;
        operator delete(v45);
      }

      cf = 0;
      v105 = 0;
      v106 = 0;
    }

    else
    {
      cf = 0;
      v105 = 0;
      v106 = 0;
      v107 = 1;
    }

    if (!*a2)
    {
      v88 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v88, "Could not construct");
      __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_19D3BA8A0("InitialParameterValues", __p);
    sub_19D3BEFCC(*a2, __p, &theArray);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (!theArray)
    {
      v89 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v89, "Could not construct");
      __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v46 = CFArrayGetCount(theArray);
    if (v46)
    {
      for (j = 0; j != v46; ++j)
      {
        if (!theArray)
        {
          v83 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v83, "Could not construct");
          __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        sub_19D3BE874(theArray, j, &v102);
        sub_19D370C7C(&v94, &v108);
        sub_19D370EB8(&v96, &v111);
        sub_19D3B31DC(&v102, &v94, __p);
        if (v105 >= v106)
        {
          v48 = sub_19D3BF060(&cf, __p);
        }

        else
        {
          v48 = sub_19D3BF1AC(v105, __p) + 12;
        }

        v105 = v48;
        sub_19D3715C0(__p);
        v49 = v96;
        if (v96)
        {
          v50 = v97;
          v51 = v96;
          if (v97 != v96)
          {
            do
            {
              v52 = *(v50 - 17);
              v50 -= 5;
              if (v52 < 0)
              {
                operator delete(*v50);
              }
            }

            while (v50 != v49);
            v51 = v96;
          }

          v97 = v49;
          operator delete(v51);
        }

        v53 = v94;
        if (v94)
        {
          v54 = v95;
          v55 = v94;
          if (v95 != v94)
          {
            do
            {
              v56 = *(v54 - 25);
              v54 -= 6;
              if (v56 < 0)
              {
                operator delete(*v54);
              }
            }

            while (v54 != v53);
            v55 = v94;
          }

          v95 = v53;
          operator delete(v55);
        }

        if (v102)
        {
          CFRelease(v102);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

LABEL_134:
  sub_19D370C7C(a3, &v108);
  sub_19D370EB8((a3 + 24), &v111);
  v57 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v93 = v57;
  *(a3 + 48) = sub_19D3B5F78(&v93);
  v58 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v92 = v58;
  *(a3 + 52) = sub_19D3B6038(&v92);
  *(a3 + 56) = sub_19D3B4780(a2);
  *(a3 + 64) = v59;
  *(a3 + 72) = v32;
  *(a3 + 76) = v37 | v38;
  *(a3 + 80) = v39;
  sub_19D3B60F8(a3 + 88, &cf);
  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v107 == 1)
  {
    v60 = cf;
    if (cf)
    {
      v61 = v105;
      v62 = cf;
      if (v105 != cf)
      {
        do
        {
          v61 = sub_19D3715C0((v61 - 12));
        }

        while (v61 != v60);
        v62 = cf;
      }

      v105 = v60;
      operator delete(v62);
    }
  }

  v63 = v111;
  if (v111)
  {
    v64 = v112;
    v65 = v111;
    if (v112 != v111)
    {
      do
      {
        v66 = *(v64 - 17);
        v64 -= 5;
        if (v66 < 0)
        {
          operator delete(*v64);
        }
      }

      while (v64 != v63);
      v65 = v111;
    }

    v112 = v63;
    operator delete(v65);
  }

  v67 = v108;
  if (v108)
  {
    v68 = v109;
    v69 = v108;
    if (v109 != v108)
    {
      do
      {
        v70 = *(v68 - 25);
        v68 -= 6;
        if (v70 < 0)
        {
          operator delete(*v68);
        }
      }

      while (v68 != v67);
      v69 = v108;
    }

    v109 = v67;
    operator delete(v69);
  }

  v71 = v114;
  if (v114)
  {
    v72 = v115;
    v73 = v114;
    if (v115 != v114)
    {
      do
      {
        v74 = *(v72 - 25);
        v72 -= 6;
        if (v74 < 0)
        {
          operator delete(*v72);
        }
      }

      while (v72 != v71);
      v73 = v114;
    }

    v115 = v71;
    operator delete(v73);
  }

  v75 = v117;
  if (v117)
  {
    v76 = v118;
    v77 = v117;
    if (v118 != v117)
    {
      do
      {
        v78 = *(v76 - 17);
        v76 -= 5;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v75);
      v77 = v117;
    }

    v118 = v75;
    operator delete(v77);
  }
}

void sub_19D3B56BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, const void *a42, void *a43)
{
  sub_19D3B2E0C(&a42);
  sub_19D3BBEC8(&a43);
  sub_19D3708F4((v43 - 192));
  sub_19D36EE34((v43 - 136));
  sub_19D36F93C((v43 - 112));
  _Unwind_Resume(a1);
}

void sub_19D3B58F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a24 < 0)
  {
    JUMPOUT(0x19D3B596CLL);
  }

  JUMPOUT(0x19D3B5970);
}

void sub_19D3B5920(_Unwind_Exception *a1)
{
  sub_19D36EE34((v1 - 136));
  sub_19D36F93C((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_19D3B5948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33)
{
  if (*(v33 - 169) < 0)
  {
    operator delete(*(v33 - 192));
  }

  sub_19D2C08B0(&a33);
  sub_19D36EE34((v33 - 136));
  sub_19D36F93C((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_19D3B5990(const __CFDictionary **a1@<X0>, uint64_t a2@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("Name", &cf);
  sub_19D3BE928(*a1, &cf, __p);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("MinimumValue", &cf);
  v4 = sub_19D3BEF1C(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("MaximumValue", &cf);
  v5 = sub_19D3BEF1C(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("Dimension", &cf);
  v6 = sub_19D3BEF1C(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_19D2AD6B8(a2, __p[0], __p[1]);
    v7 = SHIBYTE(v14);
    *(a2 + 24) = v4;
    *(a2 + 28) = v5;
    *(a2 + 32) = v6;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = *__p;
    *(a2 + 16) = v14;
    *(a2 + 24) = v4;
    *(a2 + 28) = v5;
    *(a2 + 32) = v6;
  }
}

void sub_19D3B5BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3B5C84(const __CFDictionary **a1@<X0>, uint64_t a2@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("Name", &cf);
  sub_19D3BE928(*a1, &cf, __p);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("MinimumValue", &cf);
  v4 = sub_19D3BEB94(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("MaximumValue", &cf);
  v5 = sub_19D3BEB94(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!*a1)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3BA8A0("Dimension", &cf);
  v6 = sub_19D3BEF1C(*a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_19D2AD6B8(a2, __p[0], __p[1]);
    v7 = SHIBYTE(v14);
    *(a2 + 24) = v4;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = *__p;
    *(a2 + 16) = v14;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
  }
}

void sub_19D3B5EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3B5F78(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v5 = v1;
  sub_19D3BA8A0("Algorithm", &cf);
  v2 = sub_19D3BF2D0(&v5, &cf, sub_19D3BF434);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void sub_19D3B6008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_19D2BF898(&a9);
  sub_19D2C08B0(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B6024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C08B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B6038(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v5 = v1;
  sub_19D3BA8A0("Direction", &cf);
  v2 = sub_19D3BF820(&v5, &cf, sub_19D3BF984);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void sub_19D3B60C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_19D2BF898(&a9);
  sub_19D2C08B0(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B60E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C08B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B60F8(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = *(a2 + 8);
    if (v2 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(result + 24) = 1;
  }

  return result;
}

void sub_19D3B61D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D372E00(&a9);
  sub_19D3BBEC8(v9);
  _Unwind_Resume(a1);
}

void sub_19D3B61EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  sub_19D3B4A18("SquaredExponential", &__p);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = v59;
  v11 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v10 = v58;
  }

  if (v9 == v10)
  {
    if (v8 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if ((v59 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = memcmp(v12, p_p, v9) == 0;
    if (v11 < 0)
    {
LABEL_21:
      operator delete(__p);
      if (!v14)
      {
LABEL_22:
        sub_19D3B4A18("ARDSquaredExponential", &__p);
        v17 = *(a1 + 23);
        if (v17 >= 0)
        {
          v18 = *(a1 + 23);
        }

        else
        {
          v18 = *(a1 + 8);
        }

        v19 = v59;
        v20 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v19 = v58;
        }

        if (v18 == v19)
        {
          if (v17 >= 0)
          {
            v21 = a1;
          }

          else
          {
            v21 = *a1;
          }

          if ((v59 & 0x80u) == 0)
          {
            v22 = &__p;
          }

          else
          {
            v22 = __p;
          }

          v23 = memcmp(v21, v22, v18) == 0;
          if (v20 < 0)
          {
LABEL_42:
            operator delete(__p);
            if (!v23)
            {
LABEL_43:
              sub_19D3B4A18("MaternFiveHalves", &__p);
              v26 = *(a1 + 23);
              if (v26 >= 0)
              {
                v27 = *(a1 + 23);
              }

              else
              {
                v27 = *(a1 + 8);
              }

              v28 = v59;
              v29 = v59;
              if ((v59 & 0x80u) != 0)
              {
                v28 = v58;
              }

              if (v27 == v28)
              {
                if (v26 >= 0)
                {
                  v30 = a1;
                }

                else
                {
                  v30 = *a1;
                }

                if ((v59 & 0x80u) == 0)
                {
                  v31 = &__p;
                }

                else
                {
                  v31 = __p;
                }

                v32 = memcmp(v30, v31, v27) == 0;
                if ((v29 & 0x80000000) == 0)
                {
LABEL_59:
                  if (!v32)
                  {
                    exception = __cxa_allocate_exception(0x28uLL);
                    sub_19D3B9460(exception, "Invalid kernel: ", a1);
                    __cxa_throw(exception, &unk_1F10BB128, sub_19D3B2DC4);
                  }

                  sub_19D370C7C(&v39, a3);
                  sub_19D370EB8(&v40, (a3 + 24));
                  v33 = *(a3 + 64);
                  v41 = *(a3 + 48);
                  v42 = v33;
                  v43 = *(a3 + 80);
                  sub_19D3B60F8(&v44, a3 + 88);
                  v34 = *(a4 + 24);
                  if (v34)
                  {
                    if (v34 == a4)
                    {
                      v61 = v60;
                      (*(*v34 + 24))(v34, v60);
LABEL_79:
                      v37 = *(a4 + 56);
                      if (v37)
                      {
                        if (v37 == a4 + 32)
                        {
                          v63 = v62;
                          (*(*v37 + 24))(v37, v62);
LABEL_84:
                          sub_19D3B8804(a2, &v39, v60);
                        }

                        v37 = (*(*v37 + 16))(v37);
                      }

                      v63 = v37;
                      goto LABEL_84;
                    }

                    v34 = (*(*v34 + 16))(v34);
                  }

                  v61 = v34;
                  goto LABEL_79;
                }
              }

              else
              {
                v32 = 0;
                if ((v59 & 0x80000000) == 0)
                {
                  goto LABEL_59;
                }
              }

              operator delete(__p);
              goto LABEL_59;
            }

LABEL_38:
            sub_19D370C7C(&v45, a3);
            sub_19D370EB8(&v46, (a3 + 24));
            v24 = *(a3 + 64);
            v47 = *(a3 + 48);
            v48 = v24;
            v49 = *(a3 + 80);
            sub_19D3B60F8(&v50, a3 + 88);
            v25 = *(a4 + 24);
            if (v25)
            {
              if (v25 == a4)
              {
                v65 = v64;
                (*(*v25 + 24))(v25, v64);
LABEL_72:
                v36 = *(a4 + 56);
                if (v36)
                {
                  if (v36 == a4 + 32)
                  {
                    v67 = v66;
                    (*(*v36 + 24))(v36, v66);
LABEL_77:
                    sub_19D3B7BA8(a2, &v45, v64);
                  }

                  v36 = (*(*v36 + 16))(v36);
                }

                v67 = v36;
                goto LABEL_77;
              }

              v25 = (*(*v25 + 16))(v25);
            }

            v65 = v25;
            goto LABEL_72;
          }
        }

        else
        {
          v23 = 0;
          if (v59 < 0)
          {
            goto LABEL_42;
          }
        }

        if (!v23)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

LABEL_17:
      sub_19D370C7C(&v51, a3);
      sub_19D370EB8(&v52, (a3 + 24));
      v15 = *(a3 + 64);
      v53 = *(a3 + 48);
      v54 = v15;
      v55 = *(a3 + 80);
      sub_19D3B60F8(&v56, a3 + 88);
      v16 = *(a4 + 24);
      if (v16)
      {
        if (v16 == a4)
        {
          v69 = v68;
          (*(*v16 + 24))(v16, v68);
LABEL_65:
          v35 = *(a4 + 56);
          if (v35)
          {
            if (v35 == a4 + 32)
            {
              v71 = v70;
              (*(*v35 + 24))(v35, v70);
LABEL_70:
              sub_19D3B6E58(a2, &v51, v68);
            }

            v35 = (*(*v35 + 16))(v35);
          }

          v71 = v35;
          goto LABEL_70;
        }

        v16 = (*(*v16 + 16))(v16);
      }

      v69 = v16;
      goto LABEL_65;
    }
  }

  else
  {
    v14 = 0;
    if (v59 < 0)
    {
      goto LABEL_21;
    }
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  goto LABEL_17;
}

void sub_19D3B6CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3BA644(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B6D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BA644(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3B7AB4(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B6D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3B7AB4(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B6DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3BA644(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3B7AB4(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B6E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_19D3B4A18("ProbabilityOfImprovement", &__p);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = v57;
  v9 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v8 = v56;
  }

  if (v7 == v8)
  {
    if (v6 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if ((v57 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = memcmp(v10, p_p, v7) == 0;
    if (v9 < 0)
    {
LABEL_21:
      operator delete(__p);
      if (!v12)
      {
LABEL_22:
        sub_19D3B4A18("ExpectedImprovement", &__p);
        v15 = *(a1 + 23);
        if (v15 >= 0)
        {
          v16 = *(a1 + 23);
        }

        else
        {
          v16 = *(a1 + 8);
        }

        v17 = v57;
        v18 = v57;
        if ((v57 & 0x80u) != 0)
        {
          v17 = v56;
        }

        if (v16 == v17)
        {
          if (v15 >= 0)
          {
            v19 = a1;
          }

          else
          {
            v19 = *a1;
          }

          if ((v57 & 0x80u) == 0)
          {
            v20 = &__p;
          }

          else
          {
            v20 = __p;
          }

          v21 = memcmp(v19, v20, v16) == 0;
          if (v18 < 0)
          {
LABEL_42:
            operator delete(__p);
            if (!v21)
            {
LABEL_43:
              sub_19D3B4A18("UpperConfidenceBound", &__p);
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = *(a1 + 8);
              }

              v26 = v57;
              v27 = v57;
              if ((v57 & 0x80u) != 0)
              {
                v26 = v56;
              }

              if (v25 == v26)
              {
                if (v24 >= 0)
                {
                  v28 = a1;
                }

                else
                {
                  v28 = *a1;
                }

                if ((v57 & 0x80u) == 0)
                {
                  v29 = &__p;
                }

                else
                {
                  v29 = __p;
                }

                v30 = memcmp(v28, v29, v25) == 0;
                if ((v27 & 0x80000000) == 0)
                {
LABEL_59:
                  if (!v30)
                  {
                    exception = __cxa_allocate_exception(0x28uLL);
                    sub_19D3C0C70(exception, "Invalid acquisition: ", a1);
                    __cxa_throw(exception, &unk_1F10BB128, sub_19D3B2DC4);
                  }

                  sub_19D370C7C(&v37, a2);
                  sub_19D370EB8(&v38, (a2 + 24));
                  v31 = *(a2 + 64);
                  v39 = *(a2 + 48);
                  v40 = v31;
                  v41 = *(a2 + 80);
                  sub_19D3B60F8(&v42, a2 + 88);
                  v32 = *(a3 + 24);
                  if (v32)
                  {
                    if (v32 == a3)
                    {
                      v59 = v58;
                      (*(*v32 + 24))(v32, v58);
LABEL_79:
                      v35 = *(a3 + 56);
                      if (v35)
                      {
                        if (v35 == a3 + 32)
                        {
                          v61 = v60;
                          (*(*v35 + 24))(v35, v60);
LABEL_84:
                          sub_19D3C0700(&v37);
                        }

                        v35 = (*(*v35 + 16))(v35);
                      }

                      v61 = v35;
                      goto LABEL_84;
                    }

                    v32 = (*(*v32 + 16))(v32);
                  }

                  v59 = v32;
                  goto LABEL_79;
                }
              }

              else
              {
                v30 = 0;
                if ((v57 & 0x80000000) == 0)
                {
                  goto LABEL_59;
                }
              }

              operator delete(__p);
              goto LABEL_59;
            }

LABEL_38:
            sub_19D370C7C(&v43, a2);
            sub_19D370EB8(&v44, (a2 + 24));
            v22 = *(a2 + 64);
            v45 = *(a2 + 48);
            v46 = v22;
            v47 = *(a2 + 80);
            sub_19D3B60F8(&v48, a2 + 88);
            v23 = *(a3 + 24);
            if (v23)
            {
              if (v23 == a3)
              {
                v63 = v62;
                (*(*v23 + 24))(v23, v62);
LABEL_72:
                v34 = *(a3 + 56);
                if (v34)
                {
                  if (v34 == a3 + 32)
                  {
                    v65 = v64;
                    (*(*v34 + 24))(v34, v64);
LABEL_77:
                    sub_19D3C0190(&v43);
                  }

                  v34 = (*(*v34 + 16))(v34);
                }

                v65 = v34;
                goto LABEL_77;
              }

              v23 = (*(*v23 + 16))(v23);
            }

            v63 = v23;
            goto LABEL_72;
          }
        }

        else
        {
          v21 = 0;
          if (v57 < 0)
          {
            goto LABEL_42;
          }
        }

        if (!v21)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

LABEL_17:
      sub_19D370C7C(&v49, a2);
      sub_19D370EB8(&v50, (a2 + 24));
      v13 = *(a2 + 64);
      v51 = *(a2 + 48);
      v52 = v13;
      v53 = *(a2 + 80);
      sub_19D3B60F8(&v54, a2 + 88);
      v14 = *(a3 + 24);
      if (v14)
      {
        if (v14 == a3)
        {
          v67 = v66;
          (*(*v14 + 24))(v14, v66);
LABEL_65:
          v33 = *(a3 + 56);
          if (v33)
          {
            if (v33 == a3 + 32)
            {
              v69 = v68;
              (*(*v33 + 24))(v33, v68);
LABEL_70:
              sub_19D3BFC20(&v49);
            }

            v33 = (*(*v33 + 16))(v33);
          }

          v69 = v33;
          goto LABEL_70;
        }

        v14 = (*(*v14 + 16))(v14);
      }

      v67 = v14;
      goto LABEL_65;
    }
  }

  else
  {
    v12 = 0;
    if (v57 < 0)
    {
      goto LABEL_21;
    }
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  goto LABEL_17;
}

void sub_19D3B7954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3BA644(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B7970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B7984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BA644(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B79A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3B7AB4(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B79D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3B7AB4(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B79EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B7A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B7A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B7A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B7A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3BA644(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B7A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3B7AB4(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B7AB4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 24);
  if (v4 == a1)
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

void sub_19D3B7BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_19D3B4A18("ProbabilityOfImprovement", &__p);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = v57;
  v9 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v8 = v56;
  }

  if (v7 == v8)
  {
    if (v6 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if ((v57 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = memcmp(v10, p_p, v7) == 0;
    if (v9 < 0)
    {
LABEL_21:
      operator delete(__p);
      if (!v12)
      {
LABEL_22:
        sub_19D3B4A18("ExpectedImprovement", &__p);
        v15 = *(a1 + 23);
        if (v15 >= 0)
        {
          v16 = *(a1 + 23);
        }

        else
        {
          v16 = *(a1 + 8);
        }

        v17 = v57;
        v18 = v57;
        if ((v57 & 0x80u) != 0)
        {
          v17 = v56;
        }

        if (v16 == v17)
        {
          if (v15 >= 0)
          {
            v19 = a1;
          }

          else
          {
            v19 = *a1;
          }

          if ((v57 & 0x80u) == 0)
          {
            v20 = &__p;
          }

          else
          {
            v20 = __p;
          }

          v21 = memcmp(v19, v20, v16) == 0;
          if (v18 < 0)
          {
LABEL_42:
            operator delete(__p);
            if (!v21)
            {
LABEL_43:
              sub_19D3B4A18("UpperConfidenceBound", &__p);
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = *(a1 + 8);
              }

              v26 = v57;
              v27 = v57;
              if ((v57 & 0x80u) != 0)
              {
                v26 = v56;
              }

              if (v25 == v26)
              {
                if (v24 >= 0)
                {
                  v28 = a1;
                }

                else
                {
                  v28 = *a1;
                }

                if ((v57 & 0x80u) == 0)
                {
                  v29 = &__p;
                }

                else
                {
                  v29 = __p;
                }

                v30 = memcmp(v28, v29, v25) == 0;
                if ((v27 & 0x80000000) == 0)
                {
LABEL_59:
                  if (!v30)
                  {
                    exception = __cxa_allocate_exception(0x28uLL);
                    sub_19D3C0C70(exception, "Invalid acquisition: ", a1);
                    __cxa_throw(exception, &unk_1F10BB128, sub_19D3B2DC4);
                  }

                  sub_19D370C7C(&v37, a2);
                  sub_19D370EB8(&v38, (a2 + 24));
                  v31 = *(a2 + 64);
                  v39 = *(a2 + 48);
                  v40 = v31;
                  v41 = *(a2 + 80);
                  sub_19D3B60F8(&v42, a2 + 88);
                  v32 = *(a3 + 24);
                  if (v32)
                  {
                    if (v32 == a3)
                    {
                      v59 = v58;
                      (*(*v32 + 24))(v32, v58);
LABEL_79:
                      v35 = *(a3 + 56);
                      if (v35)
                      {
                        if (v35 == a3 + 32)
                        {
                          v61 = v60;
                          (*(*v35 + 24))(v35, v60);
LABEL_84:
                          sub_19D3E247C(&v37);
                        }

                        v35 = (*(*v35 + 16))(v35);
                      }

                      v61 = v35;
                      goto LABEL_84;
                    }

                    v32 = (*(*v32 + 16))(v32);
                  }

                  v59 = v32;
                  goto LABEL_79;
                }
              }

              else
              {
                v30 = 0;
                if ((v57 & 0x80000000) == 0)
                {
                  goto LABEL_59;
                }
              }

              operator delete(__p);
              goto LABEL_59;
            }

LABEL_38:
            sub_19D370C7C(&v43, a2);
            sub_19D370EB8(&v44, (a2 + 24));
            v22 = *(a2 + 64);
            v45 = *(a2 + 48);
            v46 = v22;
            v47 = *(a2 + 80);
            sub_19D3B60F8(&v48, a2 + 88);
            v23 = *(a3 + 24);
            if (v23)
            {
              if (v23 == a3)
              {
                v63 = v62;
                (*(*v23 + 24))(v23, v62);
LABEL_72:
                v34 = *(a3 + 56);
                if (v34)
                {
                  if (v34 == a3 + 32)
                  {
                    v65 = v64;
                    (*(*v34 + 24))(v34, v64);
LABEL_77:
                    sub_19D3E1F0C(&v43);
                  }

                  v34 = (*(*v34 + 16))(v34);
                }

                v65 = v34;
                goto LABEL_77;
              }

              v23 = (*(*v23 + 16))(v23);
            }

            v63 = v23;
            goto LABEL_72;
          }
        }

        else
        {
          v21 = 0;
          if (v57 < 0)
          {
            goto LABEL_42;
          }
        }

        if (!v21)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

LABEL_17:
      sub_19D370C7C(&v49, a2);
      sub_19D370EB8(&v50, (a2 + 24));
      v13 = *(a2 + 64);
      v51 = *(a2 + 48);
      v52 = v13;
      v53 = *(a2 + 80);
      sub_19D3B60F8(&v54, a2 + 88);
      v14 = *(a3 + 24);
      if (v14)
      {
        if (v14 == a3)
        {
          v67 = v66;
          (*(*v14 + 24))(v14, v66);
LABEL_65:
          v33 = *(a3 + 56);
          if (v33)
          {
            if (v33 == a3 + 32)
            {
              v69 = v68;
              (*(*v33 + 24))(v33, v68);
LABEL_70:
              sub_19D3E199C(&v49);
            }

            v33 = (*(*v33 + 16))(v33);
          }

          v69 = v33;
          goto LABEL_70;
        }

        v14 = (*(*v14 + 16))(v14);
      }

      v67 = v14;
      goto LABEL_65;
    }
  }

  else
  {
    v12 = 0;
    if (v57 < 0)
    {
      goto LABEL_21;
    }
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  goto LABEL_17;
}

void sub_19D3B86A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3BA644(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B86C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B86D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BA644(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B86F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B8704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3B7AB4(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B8720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3B7AB4(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B873C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B8750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B8764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B8778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B878C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3BA644(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B87BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3B7AB4(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B8804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_19D3B4A18("ProbabilityOfImprovement", &__p);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = v57;
  v9 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v8 = v56;
  }

  if (v7 == v8)
  {
    if (v6 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if ((v57 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = memcmp(v10, p_p, v7) == 0;
    if (v9 < 0)
    {
LABEL_21:
      operator delete(__p);
      if (!v12)
      {
LABEL_22:
        sub_19D3B4A18("ExpectedImprovement", &__p);
        v15 = *(a1 + 23);
        if (v15 >= 0)
        {
          v16 = *(a1 + 23);
        }

        else
        {
          v16 = *(a1 + 8);
        }

        v17 = v57;
        v18 = v57;
        if ((v57 & 0x80u) != 0)
        {
          v17 = v56;
        }

        if (v16 == v17)
        {
          if (v15 >= 0)
          {
            v19 = a1;
          }

          else
          {
            v19 = *a1;
          }

          if ((v57 & 0x80u) == 0)
          {
            v20 = &__p;
          }

          else
          {
            v20 = __p;
          }

          v21 = memcmp(v19, v20, v16) == 0;
          if (v18 < 0)
          {
LABEL_42:
            operator delete(__p);
            if (!v21)
            {
LABEL_43:
              sub_19D3B4A18("UpperConfidenceBound", &__p);
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = *(a1 + 8);
              }

              v26 = v57;
              v27 = v57;
              if ((v57 & 0x80u) != 0)
              {
                v26 = v56;
              }

              if (v25 == v26)
              {
                if (v24 >= 0)
                {
                  v28 = a1;
                }

                else
                {
                  v28 = *a1;
                }

                if ((v57 & 0x80u) == 0)
                {
                  v29 = &__p;
                }

                else
                {
                  v29 = __p;
                }

                v30 = memcmp(v28, v29, v25) == 0;
                if ((v27 & 0x80000000) == 0)
                {
LABEL_59:
                  if (!v30)
                  {
                    exception = __cxa_allocate_exception(0x28uLL);
                    sub_19D3C0C70(exception, "Invalid acquisition: ", a1);
                    __cxa_throw(exception, &unk_1F10BB128, sub_19D3B2DC4);
                  }

                  sub_19D370C7C(&v37, a2);
                  sub_19D370EB8(&v38, (a2 + 24));
                  v31 = *(a2 + 64);
                  v39 = *(a2 + 48);
                  v40 = v31;
                  v41 = *(a2 + 80);
                  sub_19D3B60F8(&v42, a2 + 88);
                  v32 = *(a3 + 24);
                  if (v32)
                  {
                    if (v32 == a3)
                    {
                      v59 = v58;
                      (*(*v32 + 24))(v32, v58);
LABEL_79:
                      v35 = *(a3 + 56);
                      if (v35)
                      {
                        if (v35 == a3 + 32)
                        {
                          v61 = v60;
                          (*(*v35 + 24))(v35, v60);
LABEL_84:
                          sub_19D3FDCD0(&v37);
                        }

                        v35 = (*(*v35 + 16))(v35);
                      }

                      v61 = v35;
                      goto LABEL_84;
                    }

                    v32 = (*(*v32 + 16))(v32);
                  }

                  v59 = v32;
                  goto LABEL_79;
                }
              }

              else
              {
                v30 = 0;
                if ((v57 & 0x80000000) == 0)
                {
                  goto LABEL_59;
                }
              }

              operator delete(__p);
              goto LABEL_59;
            }

LABEL_38:
            sub_19D370C7C(&v43, a2);
            sub_19D370EB8(&v44, (a2 + 24));
            v22 = *(a2 + 64);
            v45 = *(a2 + 48);
            v46 = v22;
            v47 = *(a2 + 80);
            sub_19D3B60F8(&v48, a2 + 88);
            v23 = *(a3 + 24);
            if (v23)
            {
              if (v23 == a3)
              {
                v63 = v62;
                (*(*v23 + 24))(v23, v62);
LABEL_72:
                v34 = *(a3 + 56);
                if (v34)
                {
                  if (v34 == a3 + 32)
                  {
                    v65 = v64;
                    (*(*v34 + 24))(v34, v64);
LABEL_77:
                    sub_19D3FD760(&v43);
                  }

                  v34 = (*(*v34 + 16))(v34);
                }

                v65 = v34;
                goto LABEL_77;
              }

              v23 = (*(*v23 + 16))(v23);
            }

            v63 = v23;
            goto LABEL_72;
          }
        }

        else
        {
          v21 = 0;
          if (v57 < 0)
          {
            goto LABEL_42;
          }
        }

        if (!v21)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

LABEL_17:
      sub_19D370C7C(&v49, a2);
      sub_19D370EB8(&v50, (a2 + 24));
      v13 = *(a2 + 64);
      v51 = *(a2 + 48);
      v52 = v13;
      v53 = *(a2 + 80);
      sub_19D3B60F8(&v54, a2 + 88);
      v14 = *(a3 + 24);
      if (v14)
      {
        if (v14 == a3)
        {
          v67 = v66;
          (*(*v14 + 24))(v14, v66);
LABEL_65:
          v33 = *(a3 + 56);
          if (v33)
          {
            if (v33 == a3 + 32)
            {
              v69 = v68;
              (*(*v33 + 24))(v33, v68);
LABEL_70:
              sub_19D3FD1F0(&v49);
            }

            v33 = (*(*v33 + 16))(v33);
          }

          v69 = v33;
          goto LABEL_70;
        }

        v14 = (*(*v14 + 16))(v14);
      }

      v67 = v14;
      goto LABEL_65;
    }
  }

  else
  {
    v12 = 0;
    if (v57 < 0)
    {
      goto LABEL_21;
    }
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  goto LABEL_17;
}

void sub_19D3B9300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3BA644(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B931C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BA644(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B9360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  sub_19D3B7AB4(&a58);
  sub_19D3BBF48(&a10);
  _Unwind_Resume(a1);
}

void sub_19D3B937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3B7AB4(v17 - 200);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3B9398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B93AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3B93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3B93E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3BA644(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

void sub_19D3B9418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_19D3B7AB4(v40 - 136);
  sub_19D3BBF48(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3B9460(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19D2AE334(&v12);
  sub_19D2AE554(&v12, "[InvalidArgument] ", 18);
  v6 = strlen(a2);
  sub_19D2AE554(&v12, a2, v6);
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  sub_19D2AE554(&v12, v8, v9);
  std::stringbuf::str();
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](&v16);
  *a1 = &unk_1F10BB1A8;
  v10 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v10 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v10);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3B9640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HTTuneParameters(const void *a1, const void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  sub_19D3BA4E0(a1, &cf);
  sub_19D2A7050(a2, &v40);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v33 = v9;
  v10 = v40;
  if (v40)
  {
    CFRetain(v40);
  }

  v32 = v10;
  sub_19D3B4AE0(&v33, &v32, &v34);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = DWORD1(v36);
  v12 = MEMORY[0x19EAFAD10](v7);
  v59 = 0;
  v13 = DWORD1(v36);
  if (v8)
  {
    v14 = MEMORY[0x19EAFAD10](v8);
    __p[0].isa = &unk_1F10BC300;
    __p[0].info = v14;
    __p[0].data = v13;
  }

  else
  {
    __p[0].isa = &unk_1F10BC390;
    LODWORD(__p[0].info) = DWORD1(v36);
  }

  __p[0].length = __p;
  sub_19D418B94(__p, v58);
  if (__p[0].length == __p)
  {
    (*(*__p[0].length + 32))(__p[0].length);
  }

  else if (__p[0].length)
  {
    (*(*__p[0].length + 40))();
  }

  if (!v40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D3B4A18("Kernel", __p);
  sub_19D3B4A18("MaternFiveHalves", v53);
  sub_19D418FD8(v40, __p, v53, v31);
  if (v54 < 0)
  {
    operator delete(v53[0]);
    if ((SHIBYTE(__p[0].data) & 0x80000000) == 0)
    {
LABEL_19:
      if (v40)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }
  }

  else if ((SHIBYTE(__p[0].data) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(__p[0].isa);
  if (v40)
  {
LABEL_20:
    sub_19D3B4A18("Acquisition", __p);
    sub_19D3B4A18("UpperConfidenceBound", v53);
    sub_19D418FD8(v40, __p, v53, v30);
    if (v54 < 0)
    {
      operator delete(v53[0]);
      if ((SHIBYTE(__p[0].data) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(__p[0].data) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(__p[0].isa);
LABEL_22:
    v15 = MEMORY[0x19EAFAD10](v12);
    v49[0] = &unk_1F10BC410;
    v49[1] = v15;
    v50 = v11;
    v51 = 0;
    v52 = v49;
    v16 = v59;
    if (v59)
    {
      if (v59 == v58)
      {
        v48 = v47;
        (*(*v59 + 24))(v59, v47);
LABEL_32:
        v18 = v52;
        if (v52)
        {
          if (v52 == v49)
          {
            v55 = v53;
            (*(*v52 + 24))(v52, v53);
LABEL_37:
            v19 = v48;
            if (v48)
            {
              if (v48 == v47)
              {
                v57 = v56;
                (*(*v48 + 24))(v48, v56);
LABEL_42:
                if (v48 == v47)
                {
                  (*(*v48 + 32))(v48);
                  v20 = v52;
                  if (v52 != v49)
                  {
LABEL_46:
                    if (v20)
                    {
                      (*(*v20 + 40))(v20);
                    }

LABEL_50:
                    sub_19D370C7C(&v24, &v34);
                    sub_19D370EB8(&v25, &v35);
                    v26 = v36;
                    v27 = v37;
                    v28 = v38;
                    sub_19D3B60F8(&v29, &v39);
                    v21 = v55;
                    if (v55)
                    {
                      if (v55 == v53)
                      {
                        v43 = v42;
                        (*(*v55 + 3))(v55, v42);
LABEL_55:
                        v22 = v57;
                        if (v57)
                        {
                          if (v57 == v56)
                          {
                            v45 = v44;
                            (*(*v57 + 24))(v57, v44);
LABEL_60:
                            sub_19D3B61EC(v31, v30, &v24, v42);
                          }

                          v22 = (*(*v57 + 16))(v57);
                        }

                        v45 = v22;
                        goto LABEL_60;
                      }

                      v21 = (*(*v55 + 2))(v55);
                    }

                    v43 = v21;
                    goto LABEL_55;
                  }
                }

                else
                {
                  if (v48)
                  {
                    (*(*v48 + 40))(v48);
                  }

                  v20 = v52;
                  if (v52 != v49)
                  {
                    goto LABEL_46;
                  }
                }

                (*(*v20 + 32))(v20);
                goto LABEL_50;
              }

              v19 = (*(*v48 + 16))(v48);
            }

            v57 = v19;
            goto LABEL_42;
          }

          v18 = (*(*v52 + 16))(v52);
        }

        v55 = v18;
        goto LABEL_37;
      }

      v16 = (*(*v59 + 16))(v59);
    }

    v48 = v16;
    goto LABEL_32;
  }

LABEL_28:
  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "Could not construct");
  __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_19D3BA18C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, __int16 a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a46 < 0)
    {
      operator delete(__p);
    }

    sub_19D3BA5B8(v67 - 104);

    sub_19D3BBF48(&a49);
    sub_19D2C08B0(&a64);
    sub_19D3B2E0C(&a65);
    if (a2 == 4)
    {
      v70 = __cxa_begin_catch(a1);
      if (v65)
      {
        *v65 = sub_19D3BA828(v70);
      }
    }

    else if (a2 == 3)
    {
      v71 = __cxa_begin_catch(a1);
      if (v65)
      {
        *v65 = sub_19D3BA828(v71);
      }
    }

    else
    {
      v72 = __cxa_begin_catch(a1);
      if (a2 == 2 && v65)
      {
        *v65 = sub_19D3BA828(v72);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x19D3BA10CLL);
  }

  _Unwind_Resume(a1);
}

const void *sub_19D3BA4E0@<X0>(const void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CFRetain(result);
    *a2 = v3;
    v4 = CFGetTypeID(v3);
    result = CFArrayGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_19D3BA580(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_19D3BB1E8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BA5B8(uint64_t a1)
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

uint64_t sub_19D3BA644(uint64_t a1)
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

__int128 **sub_19D3BA6D0(__int128 **a1, uint64_t *a2)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_19D371930(&v18, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_19D371C6C(&__p, a2[3], a2[4], 0x6DB6DB6DB6DB6DB7 * ((a2[4] - a2[3]) >> 3));
  sub_19D3710F4(a1, &v18, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v16;
    v6 = __p;
    if (v16 != __p)
    {
      do
      {
        v7 = *(v5 - 4);
        if (v7)
        {
          *(v5 - 3) = v7;
          operator delete(v7);
        }

        v8 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
          operator delete(*v8);
        }

        v5 -= 7;
      }

      while (v8 != v4);
      v6 = __p;
    }

    v16 = v4;
    operator delete(v6);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 4);
        if (v12)
        {
          *(v10 - 3) = v12;
          operator delete(v12);
        }

        v13 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
          operator delete(*v13);
        }

        v10 -= 7;
      }

      while (v13 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  return a1;
}

CFErrorRef sub_19D3BA828(uint64_t a1)
{
  sub_19D419364(a1, &userInfo);
  v1 = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.HyperTune", 0, userInfo);
  if (userInfo)
  {
    CFRelease(userInfo);
  }

  return v1;
}

void sub_19D3BA88C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C08B0(va);
  _Unwind_Resume(a1);
}

void sub_19D3BA8A0(const char *a1@<X0>, void *a2@<X8>)
{
  v23 = a1;
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v22 = v4;
  if (!v4)
  {
    LOBYTE(__dst) = 0;
    v6 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (v21 != 4 || *__dst != 1701667150)
    {
      if (v21 != 4 || *__dst != 1701869908)
      {
        if (v21 == 12 && *__dst == 0x566D756D696E694DLL && *(__dst + 2) == 1702194273)
        {
          goto LABEL_59;
        }

        if (v21 == 12 && *__dst == 0x566D756D6978614DLL && *(__dst + 2) == 1702194273)
        {
          goto LABEL_63;
        }

        if (v21 != 9 || (*__dst == 0x6F69736E656D6944 ? (v13 = *(__dst + 8) == 110) : (v13 = 0), !v13))
        {
          if (v21 != 9)
          {
            goto LABEL_54;
          }

          p_dst = __dst;
LABEL_45:
          v14 = *p_dst;
          v15 = *(p_dst + 8);
          if (v14 == 0x687469726F676C41 && v15 == 109)
          {
            v17 = @"HTAlgorithmKey";
            goto LABEL_101;
          }

          goto LABEL_54;
        }

LABEL_62:
        v17 = @"HTParameterDimensionKey";
        goto LABEL_101;
      }

LABEL_53:
      v17 = @"HTParameterTypeKey";
      goto LABEL_101;
    }

LABEL_58:
    v17 = @"HTParameterNameKey";
    goto LABEL_101;
  }

  memcpy(&__dst, a1, v4);
  *(&__dst + v5) = 0;
  v6 = v22;
  if (v22 < 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if (v6 == 4)
  {
    if (__dst != 1701667150)
    {
      if (__dst != 1701869908)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    goto LABEL_58;
  }

  if (v6 == 9)
  {
    if (__dst != 0x6F69736E656D6944 || v21 != 110)
    {
      p_dst = &__dst;
      goto LABEL_45;
    }

    goto LABEL_62;
  }

  if (v6 != 12)
  {
    goto LABEL_54;
  }

  if (__dst == 0x566D756D696E694DLL && v21 == 1702194273)
  {
LABEL_59:
    v17 = @"HTParameterMinimumValueKey";
    goto LABEL_101;
  }

  if (__dst == 0x566D756D6978614DLL && v21 == 1702194273)
  {
LABEL_63:
    v17 = @"HTParameterMaximumValueKey";
    goto LABEL_101;
  }

LABEL_54:
  if (sub_19D3BAF40(&__dst, "Kernel"))
  {
    v17 = @"HTKernelKey";
  }

  else if (sub_19D3BAF40(&__dst, "Acquisition"))
  {
    v17 = @"HTAcquisitionKey";
  }

  else if (sub_19D3BAF40(&__dst, "CallbackInterval"))
  {
    v17 = @"HTCallbackIntervalKey";
  }

  else if (sub_19D3BAF40(&__dst, "MaxIterations"))
  {
    v17 = @"HTStopConditionMaxIterationsKey";
  }

  else if (sub_19D3BAF40(&__dst, "Patience"))
  {
    v17 = @"HTStopConditionPatienceKey";
  }

  else if (sub_19D3BAF40(&__dst, "MinDelta"))
  {
    v17 = @"HTStopConditionMinDeltaKey";
  }

  else if (sub_19D3BAF40(&__dst, "Direction"))
  {
    v17 = @"HTOptimizationDirectionKey";
  }

  else if (sub_19D3BAF40(&__dst, "RandomSeed"))
  {
    v17 = @"HTRandomSeedKey";
  }

  else if (sub_19D3BAF40(&__dst, "InitialParameterValues"))
  {
    v17 = @"HTInitialParameterValuesKey";
  }

  else if (sub_19D3BAF40(&__dst, "Integral"))
  {
    v17 = @"HTParameterTypeIntegral";
  }

  else if (sub_19D3BAF40(&__dst, "Continuous"))
  {
    v17 = @"HTParameterTypeContinuous";
  }

  else if (sub_19D3BAF40(&__dst, "Random"))
  {
    v17 = @"HTAlgorithmRandom";
  }

  else if (sub_19D3BAF40(&__dst, "GaussianProcess"))
  {
    v17 = @"HTAlgorithmGaussianProcess";
  }

  else if (sub_19D3BAF40(&__dst, "SquaredExponential"))
  {
    v17 = @"HTKernelSquaredExponential";
  }

  else if (sub_19D3BAF40(&__dst, "ARDSquaredExponential"))
  {
    v17 = @"HTKernelARDSquaredExponential";
  }

  else if (sub_19D3BAF40(&__dst, "MaternFiveHalves"))
  {
    v17 = @"HTKernelMaternFiveHalves";
  }

  else if (sub_19D3BAF40(&__dst, "ProbabilityOfImprovement"))
  {
    v17 = @"HTAcquisitionProbabilityOfImprovement";
  }

  else if (sub_19D3BAF40(&__dst, "ExpectedImprovement"))
  {
    v17 = @"HTAcquisitionExpectedImprovement";
  }

  else if (sub_19D3BAF40(&__dst, "UpperConfidenceBound"))
  {
    v17 = @"HTAcquisitionUpperConfidenceBound";
  }

  else if (sub_19D3BAF40(&__dst, "Maximize"))
  {
    v17 = @"HTOptimizationDirectionMaximize";
  }

  else
  {
    if (!sub_19D3BAF40(&__dst, "Minimize"))
    {
      sub_19D3BAFCC("Unexpected HyperTune key: ", &v23);
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, &v19);
      exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
      __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
    }

    v17 = @"HTOptimizationDirectionMinimize";
  }

LABEL_101:
  sub_19D2C05B4(v17, a2);
  if (v22 < 0)
  {
    operator delete(__dst);
  }
}