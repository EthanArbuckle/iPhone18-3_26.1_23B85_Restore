void sub_255B65008(void *a1)
{
  *a1 = &unk_2867C9688;
  v2 = a1[44];
  a1[44] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B65114(uint64_t a1)
{
  sub_255A81DE0(v11, (**(a1 + 352) + 8));
  v1 = v11[0];
  if (v18 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  v19 = &v13;
  sub_255A8250C(&v19);
  if (v12 < 0)
  {
    operator delete(v11[2]);
  }

  return v1;
}

void sub_255B65234(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 48))(a1);
  v3 = *a2;
  operator new();
}

void sub_255B65354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B6286C(va);
  _Unwind_Resume(a1);
}

void sub_255B65368(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 48))(a1);
  v3 = *(a2 + 32);
  operator new();
}

void sub_255B65D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_255A977C8(&a9);
  sub_255A82AF8((v42 - 160));
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_255B65ED0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 10;
  strcpy(__p, "lf-640x640");
  v3 = 0;
  v4 = 0;
  v2 = 0;
  operator new();
}

void sub_255B6668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 183) < 0)
  {
    operator delete(*(v4 + 160));
  }

  sub_255B60630(v4 + 64);
  sub_255B606BC(v6);
  operator delete(v5);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B666F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B6670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    JUMPOUT(0x255B666E4);
  }

  sub_255B60548(&a12);
  _Unwind_Resume(a1);
}

void sub_255B66740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B629AC(v10);
  sub_255B629AC(v11);
  sub_255B629AC(v15);
  sub_255B629AC(v14);
  sub_255B629AC(a4);
  sub_255B629AC(a2);
  sub_255B629AC(a3);
  sub_255B629AC(v9);
  sub_255B629AC(v13);
  sub_255B629AC(v12);
  sub_255B629AC(va);
  _Unwind_Resume(a1);
}

void sub_255B667A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v19;
    operator delete(v19);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(*v17);
  }

  do
  {
    v17 -= 10;
    sub_255B629AC(v17);
  }

  while (v17 != &a17);
  _Unwind_Resume(a1);
}

void sub_255B6692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B66924);
}

void sub_255B66954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[25] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v7 = &unk_2867CE598;
  v8 = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  sub_255B64CB8(v10, a2, v4, v6);
}

void sub_255B6748C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255B675B8(void *a1)
{
  *a1 = &unk_2867C9120;
  v2 = a1[48];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

uint64_t sub_255B676EC(uint64_t result)
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

void sub_255B67764(void *a1)
{
  *a1 = &unk_2867C9120;
  v2 = a1[48];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B678B8(uint64_t a1)
{
  sub_255A81DE0(v11, (**(a1 + 352) + 8));
  v1 = v11[0];
  if (v18 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  v19 = &v13;
  sub_255A8250C(&v19);
  if (v12 < 0)
  {
    operator delete(v11[2]);
  }

  return v1;
}

void sub_255B679D8(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 48))(a1);
  v3 = *a2;
  operator new();
}

void sub_255B67B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B6286C(va);
  _Unwind_Resume(a1);
}

void sub_255B67BB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 56))(__p);
  *a2 = 0;
  *(a2 + 24) = -1;
  v3 = v7;
  if (v7 != -1)
  {
    v12 = a2;
    (off_2867D0310[v7])(&v12, v6);
    *(a2 + 24) = v3;
  }

  *(a2 + 32) = v8;
  v4 = v11;
  *(a2 + 40) = v9;
  if (v4 != -1)
  {
    (off_2867D02F0[v4])(&v12, &v10);
  }

  v11 = -1;
  if (v7 != -1)
  {
    (off_2867D02F0[v7])(&v12, v6);
  }

  v7 = -1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_255B67CC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v33.__r_.__value_.__r.__words[0] = &unk_2867C5410;
  v9 = a2[47];
  v10 = a2[48];
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v33.__r_.__value_.__l.__size_ = v9;
    v33.__r_.__value_.__r.__words[2] = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  else
  {
    v22 = a2[47];
    v23 = 0;
    *&v33.__r_.__value_.__r.__words[1] = v9;
  }

  (*(*v9 + 64))(&v25);
  v12 = *(v25 + 2);
  __p = *v25;
  v35 = v12;
  v25 = 0;
  MEMORY[0x259C49320]();
  v13 = v33.__r_.__value_.__r.__words[2];
  if (v33.__r_.__value_.__r.__words[2])
  {
    atomic_fetch_add_explicit((v33.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    v27 = &unk_2867C5390;
    v15 = v33.__r_.__value_.__r.__words[2];
    size = v33.__r_.__value_.__l.__size_;
    if (v33.__r_.__value_.__r.__words[2])
    {
LABEL_14:
      p_shared_owners = &v15->__shared_owners_;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = __p;
      v31 = v35;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = size;
      v29 = v15;
      v32 = 256;
      if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_20;
        }
      }

      else
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_20:
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }

LABEL_21:
      sub_255B7ACA0((a3 + 32), a4, a5, &v27);
      v17 = v29;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = v33.__r_.__value_.__r.__words[2];
      if (v33.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v33.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v19 = a2[47];
        v20 = a2[48];
        if (v20)
        {
LABEL_27:
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            if (v19)
            {
LABEL_29:
              (*(*a2[47] + 96))(&v26);
              goto LABEL_33;
            }
          }

          else
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            if (v19)
            {
              goto LABEL_29;
            }
          }

LABEL_32:
          v26 = 0;
LABEL_33:
          (*(*a2 + 48))(a2);
          v21 = *(a3 + 32);
          memset(&v33, 0, sizeof(v33));
          operator new();
        }
      }

      else
      {
        v19 = a2[47];
        v20 = a2[48];
        if (v20)
        {
          goto LABEL_27;
        }
      }

      if (v19)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v27 = &unk_2867C5390;
    v15 = v33.__r_.__value_.__r.__words[2];
    size = v33.__r_.__value_.__l.__size_;
    if (v33.__r_.__value_.__r.__words[2])
    {
      goto LABEL_14;
    }
  }

  v28 = size;
  v29 = 0;
  v30 = __p;
  v31 = v35;
  v32 = 256;
  goto LABEL_21;
}

void sub_255B69398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_255B61C44(&a26);
  j_nullsub_87_0(&a69);
  sub_255B708C4(&a43);
  sub_255A82AF8(&a46);
  if (a55 < 0)
  {
    operator delete(a50);
    v73 = a57;
    a57 = 0;
    if (!v73)
    {
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v73 = a57;
    a57 = 0;
    if (!v73)
    {
      goto LABEL_9;
    }
  }

  (*(*v73 + 8))(v73);
  _Unwind_Resume(a1);
}

void sub_255B69654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_255A82AF8(&a43);
  if (a52 < 0)
  {
    JUMPOUT(0x255B6960CLL);
  }

  JUMPOUT(0x255B694C0);
}

uint64_t sub_255B6966C(uint64_t result)
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

uint64_t sub_255B696E4(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D0330[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255B69740(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D0330[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

double sub_255B6979C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = (*(*a1 + 48))(a1);
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0;
  if (vcvtps_u32_f32(a4 / v7))
  {
    if (a4 % v7)
    {
      v9 = a4 % v7;
    }

    else
    {
      v9 = v7;
    }

    if (v9 == -1)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9;
    }

    sub_255B67CC0(&__p, a1, a2, a3, v10);
  }

  return result;
}

void sub_255B69DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255AB7344(va);
  sub_255AB7344(v10);
  _Unwind_Resume(a1);
}

void sub_255B69F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  sub_255B60630(v2 + 64);
  sub_255B606BC(v3);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B69F68(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v2 = &unk_2867CE598;
  sub_255B64CB8(&v5, a2, 0, 0);
}

void sub_255B6A13C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_255B5F5D4(va2);
  sub_255B5F5D4(va1);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

void sub_255B6A160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B6A174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = &unk_2867C94A8;
  sub_255B61918(a1 + 8, a2);
  v6 = *a3;
  *a3 = 0;
  *(a1 + 352) = v6;
  v7 = a2[25];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7[2];
      v11 = v10[1];
      v12 = v10[2];
      v13 = v11 * *v10 * v12 * v10[3] * v10[4];
      if (v8 < v13)
      {
        v9 = v11 | (v12 << 32);
      }

      if (v8 <= v13)
      {
        v8 = v13;
      }

      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  if (HIDWORD(v9))
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v14)
  {
    v9 = 0;
  }

  v16 = 0;
  if (v9 > 0x100000000)
  {
    v16 = v9;
  }

  v17 = (v9 != 0) | (v16 << 32);
  *(a1 + 360) = v9;
  *(a1 + 368) = v17;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  if (!v9)
  {
    v15 = 1;
  }

  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  v19 = 4 * v16;
  v20 = v19 - 1;
  v21 = HIDWORD(v18) * v19;
  v14 = (v19 & (v19 - 1)) == 0;
  v22 = 3;
  if (v14)
  {
    v22 = v20;
  }

  v23 = v22 | (v22 >> 1) | ((v22 | (v22 >> 1)) >> 2);
  v24 = v23 | (v23 >> 4) | ((v23 | (v23 >> 4)) >> 8);
  v25 = v24 | (v24 >> 16) | ((v24 | (v24 >> 16)) >> 32);
  if (v25 + 1 > 8)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 8;
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = v26;
  v27 = v21 & 0x3FFFFFFFCLL;
  *(a1 + 392) = v21 & 0x3FFFFFFFCLL;
  if ((v21 & 0x3FFFFFFFCLL) != 0)
  {
    memptr = 0;
    v28 = malloc_type_posix_memalign(&memptr, v26, v21 & 0x3FFFFFFFCLL, 0x63222AC6uLL);
    if (v28)
    {
      sub_255C07708(v28, *(a1 + 408), v27);
    }

    *(a1 + 400) = memptr;
  }

  *(a1 + 416) = v18;
  *(a1 + 424) = 4 * v17;
  return a1;
}

void sub_255B6A300(_Unwind_Exception *a1)
{
  sub_255B5F5D4((v1 + 352));
  sub_255B60928(v1 + 8);
  _Unwind_Resume(a1);
}

void *sub_255B6A31C(void *a1)
{
  *a1 = &unk_2867C94A8;
  v2 = a1[50];
  if (v2)
  {
    free(v2);
  }

  a1[50] = 0;
  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

void *sub_255B6A418(void *a1)
{
  *a1 = &unk_2867C94A8;
  v2 = a1[50];
  if (v2)
  {
    free(v2);
  }

  a1[50] = 0;
  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

void sub_255B6A514(void *a1)
{
  *a1 = &unk_2867C94A8;
  v2 = a1[50];
  if (v2)
  {
    free(v2);
  }

  a1[50] = 0;
  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

void sub_255B6A630(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_255AA246C(*a2, &v14);
  v5 = *&v15[4];
  if (*&v15[4])
  {
    v6 = HIDWORD(*&v15[4]) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  *&v12 = v14;
  *(&v12 + 1) = v5;
  v13 = v16;
  if (HIDWORD(v5) * HIDWORD(v16) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_14:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_14;
    }

LABEL_22:
    abort();
  }

LABEL_15:
  sub_255B73E34(&v12, 1, &v14, *(a1 + 232));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v11 = v14;
  if (*v15 != v14)
  {
    if (((*v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *(a3 + 24) = v12;
  *(a3 + 40) = v13;
  if (v11)
  {
    *v15 = v11;
    operator delete(v11);
  }
}

void sub_255B6A82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B6A848(uint64_t a1@<X0>, int32x2_t *a2@<X1>, void *a3@<X2>, float32x2_t **a4@<X3>, uint64_t a5@<X8>)
{
  v95 = *MEMORY[0x277D85DE8];
  if (*(a1 + 268) != 1)
  {
    goto LABEL_10;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndModel.cpp", 370, "!m_param.op_desc_quant.has_value()", 0x22uLL, "Not implemented desc_quantization for float network.", 0x34uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_101;
    }

    do
    {
LABEL_7:
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "!m_param.op_desc_quant.has_value()", 34, "Not implemented desc_quantization for float network.", 52);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_9;
  }

  if (byte_27F7DD638 == 1)
  {
    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  qword_27F7DD620(*algn_27F7DD628, "!m_param.op_desc_quant.has_value()", 34, "Not implemented desc_quantization for float network.", 52);
LABEL_10:
  sub_255AA246C(*a3 + 120, v88);
  v11 = *&v88[12];
  v12 = v91;
  v13 = v92;
  v14 = *v88;
  if (*&v88[16])
  {
    _ZF = *&v88[12] == 0;
  }

  else
  {
    _ZF = 1;
  }

  v16 = _ZF;
  if (v89)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v11 = 0;
  }

  v80 = v11;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v89;
  }

  if (v18 * v92 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v20 = qword_27F7DD608, v19 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_32:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_33;
      }
    }

    else
    {
      v20 = qword_27F7DD608;
      v19 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_101;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v19);
    if (byte_27F7DD630)
    {
      goto LABEL_32;
    }

LABEL_101:
    abort();
  }

LABEL_33:
  v21 = *a4;
  v22 = a4[1];
  v86 = 0;
  v87 = v18;
  *v88 = v18 & 0xFFFFFFFEFFFFFFFFLL | ((v18 != 0) << 32);
  v88[8] = 0;
  v88[12] = 0;
  LODWORD(p_p) = v18 != 0;
  sub_255B70C10(&v88[16], &v87, &p_p, 1, &v86, 1, 4 * (v18 != 0));
  v84 = 0;
  v85 = 0;
  __p = 0;
  p_p = &__p;
  v94 = 0;
  if (v22 != v21)
  {
    if ((v22 - v21) < 0x555555555555556)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  if (v90)
  {
    free(v90);
  }

  v23 = *a4;
  v24 = a4[1];
  if (*a4 != v24 && v18)
  {
    v25 = 0;
    __asm { FMOV            V3.2D, #1.0 }

    v29 = vdivq_f64(_Q3, vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(a2[4], -1))));
    v30 = vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(v80, -1)));
    v31 = __p;
    v32 = v18 - 1;
    __asm { FMOV            V6.2S, #1.0 }

    do
    {
      v34 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vmulq_f64(v29, vcvtq_f64_f32(*v23)), v30), 0));
      v35 = vadd_f32(vrndm_f32(v34), _D6);
      v36 = vcgt_f32(v35, _D6);
      if (v36.i8[4])
      {
        v37 = v35.f32[1];
      }

      else
      {
        v37 = 1.0;
      }

      if ((v80.u32[1] + -1.0) >= v35.f32[1])
      {
        v38 = v37;
      }

      else
      {
        v38 = v80.u32[1] + -1.0;
      }

      v39 = v38 + -1.0;
      if (v36.i8[0])
      {
        v40 = v35.f32[0];
      }

      else
      {
        v40 = 1.0;
      }

      if ((v80.u32[0] + -1.0) >= v35.f32[0])
      {
        v41 = v40;
      }

      else
      {
        v41 = v80.u32[0] + -1.0;
      }

      v42 = (v41 + -1.0) * v12;
      v43 = v39 * HIDWORD(v12);
      v44 = v41 * v12;
      v45 = (v34.f32[0] - (v41 + -1.0)) / (v41 - (v41 + -1.0));
      v46 = v38 * HIDWORD(v12);
      v47 = (v34.f32[1] - v39) / (v38 - v39);
      v48 = &v31[48 * v25];
      v49 = *(v48 + 1);
      v50 = *(v48 + 3);
      if (v18 > 0xF)
      {
        v51 = 0;
        v52 = v42 + v43;
        v53 = __CFADD__(v42 + v43, v32);
        v54 = v44 + v43;
        v55 = __CFADD__(v44 + v43, v32);
        v56 = v42 + v46;
        v57 = __CFADD__(v42 + v46, v32);
        v58 = v44 + v46;
        if (__CFADD__(v44 + v46, v32) || v57 || v55 || v49 != 1 || v13 != 1 || v53 || (v18 - 1) >> 32)
        {
          goto LABEL_81;
        }

        if (v50 - v14 + -4 * (v44 + v46) >= 0x10 && v50 - v14 + -4 * (v42 + v46) >= 0x10 && v50 - v14 + -4 * (v44 + v43) >= 0x10 && v50 - v14 + -4 * (v42 + v43) >= 0x10)
        {
          v72 = v18 & 0xFFFFFFFC;
          v73 = v50;
          do
          {
            v74 = vaddq_f32(*(v14 + 4 * v52), vmulq_n_f32(vsubq_f32(*(v14 + 4 * v54), *(v14 + 4 * v52)), v45));
            *v73++ = vaddq_f32(v74, vmulq_n_f32(vsubq_f32(vaddq_f32(*(v14 + 4 * v56), vmulq_n_f32(vsubq_f32(*(v14 + 4 * v58), *(v14 + 4 * v56)), v45)), v74), v47));
            v56 += 4;
            v52 += 4;
            v58 += 4;
            v54 += 4;
            v72 -= 4;
          }

          while (v72);
          v51 = v18 & 0xFFFFFFFC;
          if (v51 == v18)
          {
            goto LABEL_83;
          }

          goto LABEL_81;
        }
      }

      v51 = 0;
LABEL_81:
      v62 = v18 - v51;
      v63 = v49 * v51;
      v64 = v44 + v46;
      v65 = v44 + v43;
      v66 = v42 + v46;
      v67 = v42 + v43;
      v68 = v13 * v51;
      do
      {
        v69 = *(v14 + 4 * (v67 + v68));
        v70 = *(v14 + 4 * (v66 + v68));
        v71 = v69 + (v45 * (*(v14 + 4 * (v65 + v68)) - v69));
        v50->f32[v63] = v71 + (v47 * ((v70 + (v45 * (*(v14 + 4 * (v64 + v68)) - v70))) - v71));
        v63 += v49;
        v68 += v13;
        --v62;
      }

      while (v62);
LABEL_83:
      ++v23;
      ++v25;
    }

    while (v23 != v24);
  }

  v75 = __p;
  if (v84 != __p)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v84 - __p) >> 4)) >> 56))
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 2;
  *(a5 + 32) = 64;
  *(a5 + 40) = 2;
  if (v75)
  {
    v76 = v84;
    v77 = v75;
    if (v84 != v75)
    {
      do
      {
        v78 = *(v76 - 3);
        if (v78)
        {
          free(v78);
        }

        *(v76 - 3) = 0;
        v76 -= 48;
      }

      while (v76 != v75);
      v77 = __p;
    }

    v84 = v75;
    operator delete(v77);
  }

  v79 = *MEMORY[0x277D85DE8];
}

void sub_255B6B174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B6B1E4(va);
  _Unwind_Resume(a1);
}

void sub_255B6B188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49)
{
  sub_255B711EC(&a49);
  if (!a20)
  {
    _Unwind_Resume(a1);
  }

  free(a20);
  _Unwind_Resume(a1);
}

void **sub_255B6B1E4(void **a1)
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
          free(v5);
        }

        *(v3 - 3) = 0;
        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255B6B37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  sub_255B60630(v2 + 64);
  sub_255B606BC(v3);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B6B3B8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v2 = &unk_2867CE598;
  sub_255B64CB8(&v5, a2, 0, 0);
}

void sub_255B6B58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_255B5F5D4(va2);
  sub_255B5F5D4(va1);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

void sub_255B6B5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

void *sub_255B6B5C4(void *a1)
{
  *a1 = &unk_2867C94A8;
  v2 = a1[50];
  if (v2)
  {
    free(v2);
  }

  a1[50] = 0;
  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

void sub_255B6B6C0(void *a1)
{
  *a1 = &unk_2867C94A8;
  v2 = a1[50];
  if (v2)
  {
    free(v2);
  }

  a1[50] = 0;
  v3 = a1[44];
  a1[44] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    MEMORY[0x259C49320](v3, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

void sub_255B6B7DC(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_255AA246C(*a2, &v14);
  v5 = *&v15[4];
  if (*&v15[4])
  {
    v6 = HIDWORD(*&v15[4]) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  *&v12 = v14;
  *(&v12 + 1) = v5;
  v13 = v16;
  if (HIDWORD(v5) * HIDWORD(v16) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_14:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_14;
    }

LABEL_22:
    abort();
  }

LABEL_15:
  sub_255B73E34(&v12, 1, &v14, *(a1 + 232));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v11 = v14;
  if (*v15 != v14)
  {
    if (((*v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *(a3 + 24) = v12;
  *(a3 + 40) = v13;
  if (v11)
  {
    *v15 = v11;
    operator delete(v11);
  }
}

void sub_255B6B9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B6B9F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, float **a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 268) != 1)
  {
    goto LABEL_10;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndModel.cpp", 421, "!m_param.op_desc_quant.has_value()", 0x22uLL, "Not implemented desc_quantization for binary network.", 0x35uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v9 = qword_27F7DD608;
    v10 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_75;
    }

    do
    {
LABEL_7:
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "!m_param.op_desc_quant.has_value()", 34, "Not implemented desc_quantization for binary network.", 53);
    }

    while (v9 != v10);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_9;
  }

  if (byte_27F7DD638 == 1)
  {
    v9 = qword_27F7DD608;
    v10 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  qword_27F7DD620(*algn_27F7DD628, "!m_param.op_desc_quant.has_value()", 34, "Not implemented desc_quantization for binary network.", 53);
LABEL_10:
  v61 = a2;
  sub_255AA246C(*a3 + 120, v65);
  v13 = *&v65[12];
  v14 = v67;
  v15 = v68;
  v16 = *v65;
  if (HIDWORD(*&v65[12]))
  {
    v17 = *&v65[12] == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  if (*&v65[20])
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v13 = 0;
  }

  v60 = v13;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = *&v65[20];
  }

  if (v20 * v68 == -1)
  {
    v59 = a5;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v22 = qword_27F7DD608, v21 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_32:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a5 = v59;
        goto LABEL_33;
      }
    }

    else
    {
      v22 = qword_27F7DD608;
      v21 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_75;
      }
    }

    do
    {
      v24 = *v22;
      v23 = *(v22 + 8);
      v22 += 16;
      v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v22 != v21);
    if (byte_27F7DD630)
    {
      goto LABEL_32;
    }

LABEL_75:
    abort();
  }

LABEL_33:
  v26 = *a4;
  v25 = a4[1];
  v69 = 0;
  *v65 = v20 & 0xFFFFFFFEFFFFFFFFLL | ((v20 != 0) << 32);
  v65[8] = 0;
  v65[12] = 0;
  v70 = v20;
  LODWORD(p_p) = v20 != 0;
  sub_255B70C10(&v65[16], &v70, &p_p, 1, &v69, 1, 4 * (v20 != 0));
  v63 = 0;
  v64 = 0;
  __p = 0;
  p_p = &__p;
  v72 = 0;
  if (v25 != v26)
  {
    if (((v25 - v26) >> 3) < 0x555555555555556)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  if (v66)
  {
    free(v66);
  }

  v27 = *a4;
  v28 = a4[1];
  if (*a4 != v28 && v20)
  {
    v29 = 0;
    v30 = __p;
    v31 = (v60 - 1);
    v32 = 1.0 / (*(v61 + 32) - 1);
    v33 = (HIDWORD(v60) - 1);
    v34 = 1.0 / (*(v61 + 36) - 1);
    do
    {
      v35 = v32 * *v27 * v31 + 0.0;
      v36 = vcvtas_u32_f32(v35);
      v37 = v34 * v27[1] * v33 + 0.0;
      v38 = vcvtas_u32_f32(v37);
      if (v31 < v36)
      {
        LODWORD(v36) = v60 - 1;
      }

      if (v33 < v38)
      {
        LODWORD(v38) = HIDWORD(v60) - 1;
      }

      v39 = v36 * v14;
      v40 = v38 * HIDWORD(v14);
      v41 = &v30[48 * v29];
      v42 = *(v41 + 1);
      v43 = *(v41 + 3);
      if (v20 > 0xF)
      {
        v44 = 0;
        v48 = v39 + v40;
        v49 = __CFADD__(v39 + v40, v20 - 1);
        v50 = v42 == 1 && v15 == 1;
        if (!v50 || v49 || (v20 - 1) >> 32)
        {
          goto LABEL_47;
        }

        if (v43 - (v16 + 4 * (v39 + v40)) >= 0x20)
        {
          v51 = (v43 + 16);
          v52 = v20 & 0xFFFFFFF8;
          do
          {
            v53 = (v16 + 4 * v48);
            v54 = v53[1];
            *(v51 - 1) = *v53;
            *v51 = v54;
            v51 += 2;
            v48 += 8;
            v52 -= 8;
          }

          while (v52);
          v44 = v20 & 0xFFFFFFF8;
          if (v44 == v20)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }
      }

      v44 = 0;
LABEL_47:
      v45 = v20 - v44;
      v46 = v42 * v44;
      v47 = v39 + v15 * v44 + v40;
      do
      {
        *(v43 + 4 * v46) = *(v16 + 4 * v47);
        v46 += v42;
        v47 += v15;
        --v45;
      }

      while (v45);
LABEL_49:
      v27 += 2;
      ++v29;
    }

    while (v27 != v28);
  }

  sub_255B6BFB4(v65, &__p);
  *a5 = *v65;
  *(a5 + 16) = *&v65[16];
  *(a5 + 24) = 1;
  *(a5 + 32) = 64;
  *(a5 + 40) = 1;
  v55 = __p;
  if (__p)
  {
    v56 = v63;
    v57 = __p;
    if (v63 != __p)
    {
      do
      {
        v58 = *(v56 - 3);
        if (v58)
        {
          free(v58);
        }

        *(v56 - 3) = 0;
        v56 -= 48;
      }

      while (v56 != v55);
      v57 = __p;
    }

    v63 = v55;
    operator delete(v57);
  }
}

void sub_255B6BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255B6B1E4(va);
  _Unwind_Resume(a1);
}

void sub_255B6BF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  sub_255B711EC((v18 - 96));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(a1);
}

void *sub_255B6BFB4(void *result, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4)) >> 58))
    {
      v3 = 0xAAAAAAAAAAAAAAC0 * ((v2 - *a2) >> 4);
      operator new();
    }

    sub_255A7B4E8();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255B6C1F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B6C350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  sub_255B60630(v2 + 64);
  sub_255B606BC(v3);
  sub_255B60548(va);
  _Unwind_Resume(a1);
}

void sub_255B6C38C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v2 = &unk_2867CE598;
  sub_255B64CB8(&v5, a2, 0, 0);
}

void sub_255B6C4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B5F5D4(&a12);
  sub_255A7F5A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B6C4DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v40 = v5;
  sub_255B6A174(a1, a2, &v40);
  v6 = v40;
  if (v40)
  {
    v7 = *(v40 + 16);
    *(v40 + 16) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v6 + 8);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    MEMORY[0x259C49320](v6, 0x60C40CE5A77A8);
  }

  *a1 = &unk_2867C96F0;
  v9 = a2[25];
  if (v9)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    v14 = a2[29];
    do
    {
      v15 = *(v9 + 16);
      v16 = v15[1];
      v17 = v15[2];
      v18 = v16 * *v15 * v17 * v15[3] * v15[4];
      if (v10 < v18)
      {
        v11 = v16 / v14;
        v13 = v14 * v14 + 1;
        v10 = v18;
        v12 = v17 / v14;
      }

      v9 = *v9;
    }

    while (v9);
    v9 = v11 | (v12 << 32);
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v9))
  {
    v19 = v9 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (v13)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v9;
  }

  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v13;
  }

  v24 = 0x100000000;
  if (v22 > 0x100000000)
  {
    v24 = v22;
  }

  if (v23)
  {
    v25 = HIDWORD(v22) * v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v22 != 0) | (v24 << 32);
  *(a1 + 432) = v22;
  *(a1 + 440) = v23;
  *(a1 + 444) = v26;
  *(a1 + 452) = v25;
  *(a1 + 456) = 0;
  *(a1 + 468) = 0;
  if (v22)
  {
    v27 = v21;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v23;
  }

  v29 = 4 * v25;
  v30 = v29 - 1;
  v19 = (v29 & (v29 - 1)) == 0;
  v31 = 3;
  if (v19)
  {
    v31 = v30;
  }

  v32 = v31 | (v31 >> 1) | ((v31 | (v31 >> 1)) >> 2);
  v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
  v34 = v33 | (v33 >> 16) | ((v33 | (v33 >> 16)) >> 32);
  if (v34 + 1 > 8)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = 8;
  }

  *(a1 + 472) = 4 * v28 * v25;
  *(a1 + 480) = 0;
  *(a1 + 488) = v35;
  if (v28 * v25)
  {
    memptr = 0;
    v36 = malloc_type_posix_memalign(&memptr, v35, 4 * v28 * v25, 0x63222AC6uLL);
    if (v36)
    {
      sub_255C07708(v36, *(a1 + 488), 4 * v28 * v25);
    }

    *(a1 + 480) = memptr;
  }

  if (v23)
  {
    v37 = v27;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v22;
  }

  *(a1 + 496) = v38;
  *(a1 + 504) = v28;
  *(a1 + 508) = 4 * v26;
  *(a1 + 516) = 4 * v25;
  return a1;
}

void *sub_255B6C7BC(void *a1)
{
  *a1 = &unk_2867C96F0;
  v2 = a1[60];
  if (v2)
  {
    free(v2);
  }

  a1[60] = 0;
  *a1 = &unk_2867C94A8;
  v3 = a1[50];
  if (v3)
  {
    free(v3);
  }

  a1[50] = 0;
  v4 = a1[44];
  a1[44] = 0;
  if (v4)
  {
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v4 + 8);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    MEMORY[0x259C49320](v4, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

void sub_255B6C8E4(void *a1)
{
  *a1 = &unk_2867C96F0;
  v2 = a1[60];
  if (v2)
  {
    free(v2);
  }

  a1[60] = 0;
  *a1 = &unk_2867C94A8;
  v3 = a1[50];
  if (v3)
  {
    free(v3);
  }

  a1[50] = 0;
  v4 = a1[44];
  a1[44] = 0;
  if (v4)
  {
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v4 + 8);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    MEMORY[0x259C49320](v4, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

void sub_255B6CA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_255AA246C(*a3, &v43);
  if (HIDWORD(*(&v44 + 4)))
  {
    v7 = DWORD1(v44) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (HIDWORD(v44))
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(&v44 + 4);
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = HIDWORD(v44);
  }

  v39[0] = v43;
  v39[1] = v10;
  v40 = v11;
  v41 = v46;
  v42 = v47;
  if (v11 * v47 != -1)
  {
    goto LABEL_25;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v13 = qword_27F7DD608;
    v12 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_68;
    }

    do
    {
LABEL_22:
      v15 = *v13;
      v14 = *(v13 + 8);
      v13 += 16;
      v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v12);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_24;
  }

  if (byte_27F7DD638 == 1)
  {
    v13 = qword_27F7DD608;
    v12 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_25:
  if ((v11 == 0) | (v10 == 0) | v9 & 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  if ((v10 == 0) | v9 & 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11;
  }

  if (v16 <= 0x100000000)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = v16;
  }

  v19 = HIDWORD(v16) * v16;
  if (!v17)
  {
    v19 = 0;
  }

  v37 = *(a1 + 480);
  *v38 = v16;
  *&v38[8] = v17;
  *&v38[12] = (v16 != 0) | (v18 << 32);
  *&v38[20] = v19;
  if (v19 * v17 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v20 = qword_27F7DD608, v21 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_44:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_45;
      }
    }

    else
    {
      v20 = qword_27F7DD608;
      v21 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_44;
  }

LABEL_45:
  if (*(a2 + 36))
  {
    v24 = *(a2 + 32) == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(a2 + 32);
  if (v24)
  {
    v25 = 0;
  }

  if (v25 <= 0x100000000)
  {
    v26 = 0x100000000;
  }

  else
  {
    v26 = v25;
  }

  v35 = *(a1 + 400);
  *&v36 = v25;
  *(&v36 + 1) = (v25 != 0) | (v26 << 32);
  if (HIDWORD(v25) * v26 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v27 = qword_27F7DD608, v28 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_61:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_62;
      }
    }

    else
    {
      v27 = qword_27F7DD608;
      v28 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_68;
      }
    }

    do
    {
      v30 = *v27;
      v29 = *(v27 + 8);
      v27 += 16;
      v30(v29, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v27 != v28);
    if (byte_27F7DD630)
    {
      goto LABEL_61;
    }

LABEL_68:
    abort();
  }

LABEL_62:
  v31 = *(a1 + 232);
  sub_255B731C0(&v37, v39);
  v43 = v37;
  v44 = *v38;
  v45 = *&v38[16];
  v48 = 8;
  sub_255B739CC(&v35, &v43, &v48);
  v43 = v35;
  v44 = v36;
  sub_255B73E34(&v43, 1, &v33, v31);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v32 = v33;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *(a4 + 24) = v35;
  *(a4 + 32) = v36;
  if (v32)
  {
    v34 = v32;
    operator delete(v32);
  }
}

void sub_255B6CF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B6CF50(uint64_t a1@<X0>, int32x2_t *a2@<X1>, void *a3@<X2>, float32x2_t **a4@<X3>, uint64_t a5@<X8>)
{
  sub_255AA246C(*a3 + 120, v183);
  v7 = v185;
  v8 = v186;
  v9 = *v183;
  if (HIDWORD(*&v183[12]))
  {
    _ZF = *&v183[12] == 0;
  }

  else
  {
    _ZF = 1;
  }

  v11 = _ZF;
  if (*&v183[20])
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *&v183[12];
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *&v183[20];
  }

  if (v14 * v186 == -1)
  {
    v176 = v13;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v16 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v13 = v176;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_185;
      }
    }

    do
    {
      v18 = *v16;
      v17 = *(v16 + 8);
      v16 += 16;
      v18(v17, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v16 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_185:
    abort();
  }

LABEL_25:
  v172 = v13;
  v19 = v14 != 0;
  if (*(a1 + 268) != 1)
  {
    v110 = *a4;
    v109 = a4[1];
    v187 = 0;
    v188 = v14;
    *v183 = v14 & 0xFFFFFFFEFFFFFFFFLL | ((v14 != 0) << 32);
    v183[8] = 0;
    v183[12] = 0;
    LODWORD(p_p) = v14 != 0;
    sub_255B70C10(&v183[16], &v188, &p_p, 1, &v187, 1, (4 * v19) & 0x3FFFFFFFFLL);
    v181 = 0;
    v182 = 0;
    __p = 0;
    p_p = &__p;
    v190 = 0;
    if (v109 != v110)
    {
      if ((v109 - v110) <= 0x555555555555555)
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    if (v184)
    {
      free(v184);
    }

    v111 = *a4;
    v112 = a4[1];
    if (*a4 == v112 || !v14)
    {
LABEL_176:
      sub_255B6BFB4(v183, &__p);
      v162 = __p;
      *a5 = *v183;
      *(a5 + 16) = *&v183[16];
      *(a5 + 24) = 1;
      *(a5 + 32) = 64;
      *(a5 + 40) = 1;
      if (!v162)
      {
        return;
      }

      v166 = v181;
      v164 = v162;
      if (v181 == v162)
      {
        goto LABEL_183;
      }

      do
      {
        v167 = *(v166 - 3);
        if (v167)
        {
          free(v167);
        }

        *(v166 - 3) = 0;
        v166 -= 48;
      }

      while (v166 != v162);
      goto LABEL_182;
    }

    v113 = 0;
    __asm { FMOV            V2.2D, #1.0 }

    v115 = vdivq_f64(_Q2, vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(a2[4], -1))));
    v116 = vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(v13, -1)));
    v117 = v13.u32[0] + -1.0;
    v118 = __p;
    v119 = v14 - 1;
    __asm { FMOV            V6.2S, #1.0 }

    while (1)
    {
      v121 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vmulq_f64(v115, vcvtq_f64_f32(*v111)), v116), 0));
      v122 = vadd_f32(vrndm_f32(v121), _D6);
      v123 = vcgt_f32(v122, _D6);
      if (v123.i8[4])
      {
        v124 = v122.f32[1];
      }

      else
      {
        v124 = 1.0;
      }

      if ((v172.u32[1] + -1.0) >= v122.f32[1])
      {
        v125 = v124;
      }

      else
      {
        v125 = v172.u32[1] + -1.0;
      }

      v126 = v125 + -1.0;
      if (v123.i8[0])
      {
        v127 = v122.f32[0];
      }

      else
      {
        v127 = 1.0;
      }

      if (v117 >= v122.f32[0])
      {
        v128 = v127;
      }

      else
      {
        v128 = v117;
      }

      v129 = (v128 + -1.0) * v7;
      v130 = v126 * HIDWORD(v7);
      v131 = v128 * v7;
      v132 = (v121.f32[0] - (v128 + -1.0)) / (v128 - (v128 + -1.0));
      v133 = v125 * HIDWORD(v7);
      v134 = (v121.f32[1] - v126) / (v125 - v126);
      v135 = &v118[48 * v113];
      v136 = *(v135 + 1);
      v137 = *(v135 + 3);
      if (v14 > 0xF)
      {
        v138 = 0;
        v139 = v129 + v130;
        v140 = __CFADD__(v129 + v130, v119);
        v141 = v131 + v130;
        v142 = __CFADD__(v131 + v130, v119);
        v143 = v129 + v133;
        v144 = __CFADD__(v129 + v133, v119);
        v145 = v131 + v133;
        if (__CFADD__(v131 + v133, v119) || v144 || v142 || v136 != 1 || v8 != 1 || v140 || (v14 - 1) >> 32)
        {
          goto LABEL_162;
        }

        if (v137 - v9 + -4 * (v131 + v133) >= 0x10 && v137 - v9 + -4 * (v129 + v133) >= 0x10 && v137 - v9 + -4 * (v131 + v130) >= 0x10 && v137 - v9 + -4 * (v129 + v130) >= 0x10)
        {
          v159 = v14 & 0xFFFFFFFC;
          v160 = v137;
          do
          {
            v161 = vaddq_f32(*(v9 + 4 * v139), vmulq_n_f32(vsubq_f32(*(v9 + 4 * v141), *(v9 + 4 * v139)), v132));
            *v160++ = vaddq_f32(v161, vmulq_n_f32(vsubq_f32(vaddq_f32(*(v9 + 4 * v143), vmulq_n_f32(vsubq_f32(*(v9 + 4 * v145), *(v9 + 4 * v143)), v132)), v161), v134));
            v143 += 4;
            v139 += 4;
            v145 += 4;
            v141 += 4;
            v159 -= 4;
          }

          while (v159);
          v138 = v14 & 0xFFFFFFFC;
          if (v138 == v14)
          {
            goto LABEL_164;
          }

          goto LABEL_162;
        }
      }

      v138 = 0;
LABEL_162:
      v149 = v14 - v138;
      v150 = v136 * v138;
      v151 = v131 + v133;
      v152 = v131 + v130;
      v153 = v129 + v133;
      v154 = v129 + v130;
      v155 = v8 * v138;
      do
      {
        v156 = *(v9 + 4 * (v154 + v155));
        v157 = *(v9 + 4 * (v153 + v155));
        v158 = v156 + (v132 * (*(v9 + 4 * (v152 + v155)) - v156));
        v137->f32[v150] = v158 + (v134 * ((v157 + (v132 * (*(v9 + 4 * (v151 + v155)) - v157))) - v158));
        v150 += v136;
        v155 += v8;
        --v149;
      }

      while (v149);
LABEL_164:
      ++v111;
      ++v113;
      if (v111 == v112)
      {
        goto LABEL_176;
      }
    }
  }

  v177 = v13.i32[0];
  v21 = *a4;
  v20 = a4[1];
  v187 = 0;
  v188 = v14;
  *v183 = v14 & 0xFFFFFFFEFFFFFFFFLL | ((v14 != 0) << 32);
  v183[8] = 0;
  v183[12] = 0;
  LODWORD(p_p) = v14 != 0;
  sub_255B70C10(&v183[16], &v188, &p_p, 1, &v187, 1, (4 * v19) & 0x3FFFFFFFFLL);
  v181 = 0;
  v182 = 0;
  __p = 0;
  p_p = &__p;
  v190 = 0;
  if (v20 != v21)
  {
    if ((v20 - v21) <= 0x555555555555555)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  if (v184)
  {
    free(v184);
  }

  v24 = *a4;
  v25 = a4[1];
  if (*a4 != v25 && v14)
  {
    v26 = 0;
    __asm { FMOV            V2.2D, #1.0 }

    v30 = vdivq_f64(_Q2, vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(a2[4], -1))));
    v31 = vcvtq_f64_f32(vcvt_f32_u32(vadd_s32(v172, -1)));
    v32 = v172.u32[1] + -1.0;
    v33 = v177 + -1.0;
    v34 = HIDWORD(v7);
    *v22.i32 = *(a1 + 260);
    *v23.i32 = *(a1 + 264);
    v35 = __p;
    v36 = v14 - 1;
    v170 = 4 * v14;
    v171 = a4[1];
    v169 = v9 + 4 * v14;
    v37 = vdupq_lane_s32(v23, 0);
    v38 = vdupq_lane_s32(v22, 0);
    v168 = v14 & 0xFFFFFFFC;
    __asm { FMOV            V18.2S, #1.0 }

    v175 = HIDWORD(v7);
    v178 = (v14 - 1) >> 32;
    v173 = __p;
    while (1)
    {
      v40 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vmulq_f64(v30, vcvtq_f64_f32(*v24)), v31), 0));
      v41 = vadd_f32(vrndm_f32(v40), _D18);
      v42 = vcgt_f32(v41, _D18);
      if (v42.i8[4])
      {
        v43 = v41.f32[1];
      }

      else
      {
        v43 = 1.0;
      }

      if (v32 >= v41.f32[1])
      {
        v44 = v43;
      }

      else
      {
        v44 = v32;
      }

      v45 = v44 + -1.0;
      if (v42.i8[0])
      {
        v46 = v41.f32[0];
      }

      else
      {
        v46 = 1.0;
      }

      if (v33 >= v41.f32[0])
      {
        v47 = v46;
      }

      else
      {
        v47 = v33;
      }

      v48 = (v47 + -1.0) * v7;
      v49 = v45 * v34;
      v50 = v47 * v7;
      v51 = (v40.f32[0] - (v47 + -1.0)) / (v47 - (v47 + -1.0));
      v52 = v44 * v34;
      v53 = (v40.f32[1] - v45) / (v44 - v45);
      v54 = &v35[48 * v26];
      v55 = *(v54 + 1);
      v56 = *(v54 + 3);
      if (v14 <= 0xB)
      {
        v57 = 0;
        goto LABEL_48;
      }

      v57 = 0;
      v71 = v48 + v49;
      v72 = __CFADD__(v48 + v49, v36);
      v73 = v50 + v49;
      v74 = __CFADD__(v50 + v49, v36);
      v75 = v48 + v52;
      v76 = __CFADD__(v48 + v52, v36);
      v77 = v50 + v52;
      if (__CFADD__(v50 + v52, v36) || v76 || v74 || v55 != 1 || v8 != 1 || v72 || v178)
      {
        goto LABEL_48;
      }

      v78 = v36;
      v79 = v14;
      v80 = v7;
      v57 = 0;
      v81 = v56 + v170;
      v82 = 4 * (v50 + v52);
      v83 = 4 * (v48 + v52);
      v84 = v9 + v83;
      v85 = v169 + v83;
      v86 = 4 * (v50 + v49);
      v87 = v9 + v86;
      v88 = v169 + v86;
      v89 = 4 * (v48 + v49);
      v90 = v9 + v89;
      v91 = v169 + v89;
      v93 = v56 < v169 + v82 && v9 + v82 < v81;
      v95 = v56 < v85 && v84 < v81;
      v97 = v56 < v88 && v87 < v81;
      v99 = v56 < v91 && v90 < v81;
      v7 = v80;
      if (a1 + 252 < v81 && v56 < a1 + 260)
      {
        v14 = v79;
        v25 = v171;
        LODWORD(v34) = v175;
        v35 = v173;
        v36 = v78;
        goto LABEL_48;
      }

      v36 = v78;
      v14 = v79;
      if (v93)
      {
        break;
      }

      if (v95)
      {
        v25 = v171;
LABEL_112:
        LODWORD(v34) = v175;
        v35 = v173;
LABEL_48:
        v58 = v14 - v57;
        v59 = v55 * v57;
        v60 = v50 + v52;
        v61 = v50 + v49;
        v62 = v48 + v52;
        v63 = v48 + v49;
        v64 = v8 * v57;
        do
        {
          v65 = *(v9 + 4 * (v63 + v64));
          v66 = *(v9 + 4 * (v62 + v64));
          v67 = v65 + (v51 * (*(v9 + 4 * (v61 + v64)) - v65));
          v68 = *(a1 + 256) + (*(a1 + 252) * (v67 + (v53 * ((v66 + (v51 * (*(v9 + 4 * (v60 + v64)) - v66))) - v67))));
          if (v68 <= *v22.i32)
          {
            v69 = *v22.i32;
          }

          else
          {
            v69 = v68;
          }

          if (v68 <= *v23.i32)
          {
            v70 = v69;
          }

          else
          {
            v70 = *v23.i32;
          }

          *(v56 + 4 * v59) = v70;
          v59 += v55;
          v64 += v8;
          --v58;
        }

        while (v58);
        goto LABEL_56;
      }

      v25 = v171;
      if (v97)
      {
        goto LABEL_112;
      }

      LODWORD(v34) = v175;
      v35 = v173;
      if (v99)
      {
        goto LABEL_48;
      }

      v101 = (a1 + 252);
      v102 = vld1q_dup_f32(v101);
      v103 = (a1 + 256);
      v104 = vld1q_dup_f32(v103);
      v105 = v168;
      v106 = v56;
      do
      {
        v107 = vaddq_f32(*(v9 + 4 * v71), vmulq_n_f32(vsubq_f32(*(v9 + 4 * v73), *(v9 + 4 * v71)), v51));
        v108 = vaddq_f32(v104, vmulq_f32(v102, vaddq_f32(v107, vmulq_n_f32(vsubq_f32(vaddq_f32(*(v9 + 4 * v75), vmulq_n_f32(vsubq_f32(*(v9 + 4 * v77), *(v9 + 4 * v75)), v51)), v107), v53))));
        *v106++ = vcvtq_f32_s32(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v108, v37), v37, vbslq_s8(vcgtq_f32(v108, v38), v108, v38))));
        v75 += 4;
        v71 += 4;
        v77 += 4;
        v73 += 4;
        v105 -= 4;
      }

      while (v105);
      v57 = v168;
      if (v168 != v14)
      {
        goto LABEL_48;
      }

LABEL_56:
      ++v24;
      ++v26;
      if (v24 == v25)
      {
        goto LABEL_170;
      }
    }

    v25 = v171;
    LODWORD(v34) = v175;
    v35 = v173;
    goto LABEL_48;
  }

LABEL_170:
  sub_255B6BFB4(v183, &__p);
  v162 = __p;
  *a5 = *v183;
  *(a5 + 16) = *&v183[16];
  *(a5 + 24) = 1;
  *(a5 + 32) = 64;
  *(a5 + 40) = 1;
  if (v162)
  {
    v163 = v181;
    v164 = v162;
    if (v181 == v162)
    {
      goto LABEL_183;
    }

    do
    {
      v165 = *(v163 - 3);
      if (v165)
      {
        free(v165);
      }

      *(v163 - 3) = 0;
      v163 -= 48;
    }

    while (v163 != v162);
LABEL_182:
    v164 = __p;
LABEL_183:
    v181 = v162;
    operator delete(v164);
  }
}

void sub_255B6DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B6B1E4(va);
  _Unwind_Resume(a1);
}

void sub_255B6DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_255B6B1E4(va);
  _Unwind_Resume(a1);
}

void sub_255B6DAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  sub_255B711EC((v26 - 104));
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B6DB08(uint64_t a1)
{
  sub_255A81DE0(v11, (**(a1 + 352) + 8));
  v1 = v11[0];
  if (v18 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  v19 = &v13;
  sub_255A8250C(&v19);
  if (v12 < 0)
  {
    operator delete(v11[2]);
  }

  return v1;
}

void sub_255B6DC28(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 48))(a1);
  v3 = *a2;
  operator new();
}

void sub_255B6DD48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B6286C(va);
  _Unwind_Resume(a1);
}

void sub_255B6DFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  sub_255A7944C(&a18);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
    v27 = *(v25 - 128);
    if (!v27)
    {
LABEL_3:
      sub_255A8DBF0((v25 - 80));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v27 = *(v25 - 128);
    if (!v27)
    {
      goto LABEL_3;
    }
  }

  *(v25 - 120) = v27;
  operator delete(v27);
  sub_255A8DBF0((v25 - 80));
  _Unwind_Resume(a1);
}

void sub_255B6E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 48))(a2);
  v4 = *(a3 + 32);
  operator new();
}

void sub_255B6E774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_255A977C8(&a27);
  sub_255A82AF8(&a38);
  if ((*(v38 - 105) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v38 - 128));
  _Unwind_Resume(a1);
}

void *sub_255B6E850(void *result, void *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) >> 3) <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_255B6EA80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_255B6EA9C(__int128 **result, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 2) <= 0x1000)
  {
    goto LABEL_73;
  }

  v4 = (v2 + 5120);
  if (v2 + 5120 != v3)
  {
    while (1)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 2);
      if (v9 < 2)
      {
        goto LABEL_3;
      }

      if (v9 == 3)
      {
        v49 = (v3 - 20);
        v50 = *(v2 + 9);
        v51 = *(v3 - 4);
        if (v50 <= *(v2 + 4))
        {
          if (v51 > v50)
          {
            v58 = *(v2 + 20);
            v87 = *(v2 + 9);
            v59 = *(v3 - 4);
            *(v2 + 20) = *v49;
            *(v2 + 9) = v59;
            *(v3 - 4) = v87;
            *v49 = v58;
            if (*(v2 + 9) > *(v2 + 4))
            {
              v88 = *(v2 + 4);
              v73 = *v2;
              *v2 = *(v2 + 20);
              *(v2 + 4) = *(v2 + 9);
              *(v2 + 20) = v73;
              *(v2 + 9) = v88;
            }
          }
        }

        else if (v51 <= v50)
        {
          v89 = *(v2 + 4);
          v74 = *v2;
          *v2 = *(v2 + 20);
          *(v2 + 4) = *(v2 + 9);
          *(v2 + 20) = v74;
          *(v2 + 9) = v89;
          if (*(v3 - 4) > *(v2 + 9))
          {
            v60 = *(v2 + 20);
            v90 = *(v2 + 9);
            v61 = *(v3 - 4);
            *(v2 + 20) = *v49;
            *(v2 + 9) = v61;
            *(v3 - 4) = v90;
            *v49 = v60;
          }
        }

        else
        {
          v84 = *(v2 + 4);
          v70 = *v2;
          v52 = *v49;
          *(v2 + 4) = *(v3 - 4);
          *v2 = v52;
          *(v3 - 4) = v84;
          *v49 = v70;
        }

        goto LABEL_3;
      }

      if (v9 == 2)
      {
        if (*(v3 - 4) > *(v2 + 4))
        {
          v85 = *(v2 + 4);
          v71 = *v2;
          v53 = *(v3 - 20);
          *(v2 + 4) = *(v3 - 4);
          *v2 = v53;
          *(v3 - 4) = v85;
          *(v3 - 20) = v71;
        }

        goto LABEL_3;
      }

      if ((v3 - v2) <= 159)
      {
        while (v2 != (v3 - 20))
        {
          v54 = v2;
          v2 = (v2 + 20);
          if (v54 != v3 && v2 != v3)
          {
            v55 = v2;
            v56 = v54;
            do
            {
              if (*(v55 + 4) > v56[4])
              {
                v56 = v55;
              }

              v55 = (v55 + 20);
            }

            while (v55 != v3);
            if (v56 != v54)
            {
              v86 = *(v54 + 4);
              v72 = *v54;
              v57 = *v56;
              *(v54 + 4) = v56[4];
              *v54 = v57;
              *(v56 + 4) = v86;
              *v56 = v72;
            }
          }
        }

        goto LABEL_3;
      }

      v10 = v2 + 20 * (v9 >> 1);
      v11 = (v3 - 20);
      v12 = *(v10 + 16);
      v13 = *(v3 - 4);
      if (v12 > *(v2 + 4))
      {
        break;
      }

      if (v13 > v12)
      {
        v17 = *v10;
        v76 = *(v10 + 16);
        v18 = *(v3 - 4);
        *v10 = *v11;
        *(v10 + 16) = v18;
        *(v3 - 4) = v76;
        *v11 = v17;
        if (*(v10 + 16) > *(v2 + 4))
        {
          v77 = *(v2 + 4);
          v63 = *v2;
          v19 = *v10;
          *(v2 + 4) = *(v10 + 16);
          *v2 = v19;
          *v10 = v63;
          *(v10 + 16) = v77;
          v20 = 1;
          v21 = *(v2 + 4);
          v22 = *(v10 + 16);
          if (v21 <= v22)
          {
            goto LABEL_31;
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v20 = 0;
      v21 = *(v2 + 4);
      v22 = *(v10 + 16);
      if (v21 <= v22)
      {
LABEL_31:
        v33 = v3 - 20;
        while (1)
        {
          v25 = v33 - 20;
          if ((v33 - 20) == v2)
          {
            break;
          }

          v34 = *(v33 - 4);
          v33 -= 20;
          if (v34 > v22)
          {
            v80 = *(v2 + 4);
            v66 = *v2;
            v35 = *v25;
            *(v2 + 4) = *(v25 + 16);
            *v2 = v35;
            *(v25 + 16) = v80;
            *v25 = v66;
            if (v20)
            {
              v20 = 2;
            }

            else
            {
              v20 = 1;
            }

            v26 = v2 + 20;
            if (v2 + 20 < v25)
            {
              goto LABEL_21;
            }

            goto LABEL_38;
          }
        }

        v40 = v2 + 5;
        if (v21 <= *(v3 - 4))
        {
          if (v40 == v11)
          {
            goto LABEL_3;
          }

          while (v21 <= v40[4])
          {
            v40 += 5;
            if (v40 == v11)
            {
              goto LABEL_3;
            }
          }

          v82 = *(v40 + 4);
          v68 = *v40;
          v44 = *v11;
          v40[4] = *(v3 - 4);
          *v40 = v44;
          v40 += 5;
          *(v3 - 4) = v82;
          *v11 = v68;
        }

        if (v40 == v11)
        {
          goto LABEL_3;
        }

        while (1)
        {
          v45 = *(v2 + 4);
          v37 = (v40 - 5);
          do
          {
            v46 = *(v37 + 36);
            v37 += 20;
          }

          while (v45 <= v46);
          v40 = (v37 + 20);
          do
          {
            v47 = *(v11 - 1);
            v11 -= 5;
          }

          while (v45 > v47);
          if (v37 >= v11)
          {
            break;
          }

          v83 = *(v37 + 16);
          v69 = *v37;
          v48 = *v11;
          *(v37 + 16) = v11[4];
          *v37 = v48;
          *(v11 + 4) = v83;
          *v11 = v69;
        }

        if (v37 > v4)
        {
          goto LABEL_3;
        }

        goto LABEL_69;
      }

LABEL_20:
      v25 = v3 - 20;
      v26 = v2 + 20;
      if (v2 + 20 >= v3 - 20)
      {
LABEL_38:
        v29 = v26;
      }

      else
      {
LABEL_21:
        v27 = v26;
        while (1)
        {
          v28 = *(v10 + 16);
          v29 = v27 - 20;
          do
          {
            v30 = *(v29 + 36);
            v29 += 20;
          }

          while (v30 > v28);
          v27 = v29 + 20;
          do
          {
            v31 = *(v25 - 4);
            v25 -= 20;
          }

          while (v31 <= v28);
          if (v29 >= v25)
          {
            break;
          }

          v79 = *(v29 + 16);
          v65 = *v29;
          v32 = *v25;
          *(v29 + 16) = *(v25 + 16);
          *v29 = v32;
          *(v25 + 16) = v79;
          *v25 = v65;
          ++v20;
          if (v29 == v10)
          {
            v10 = v25;
          }
        }
      }

      if (v29 != v10 && *(v10 + 16) > *(v29 + 16))
      {
        v81 = *(v29 + 16);
        v67 = *v29;
        v36 = *v10;
        *(v29 + 16) = *(v10 + 16);
        *v29 = v36;
        *(v10 + 16) = v81;
        *v10 = v67;
        ++v20;
      }

      if (v29 == v4)
      {
        goto LABEL_3;
      }

      if (!v20)
      {
        if (v29 <= v4)
        {
          v41 = v29 + 20;
          while (v41 != v3)
          {
            v42 = *(v41 + 16);
            v43 = *(v41 - 4);
            v41 += 20;
            if (v42 > v43)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          while (v26 != v29)
          {
            v38 = *(v26 + 16);
            v39 = *(v26 - 4);
            v26 += 20;
            if (v38 > v39)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_3;
      }

LABEL_44:
      if (v29 <= v4)
      {
        v37 = v29 + 20;
      }

      else
      {
        v3 = v29;
        v37 = v2;
      }

LABEL_69:
      v2 = v37;
      if (v3 == v4)
      {
        goto LABEL_3;
      }
    }

    if (v13 <= v12)
    {
      v78 = *(v2 + 4);
      v64 = *v2;
      v23 = *v10;
      *(v2 + 4) = *(v10 + 16);
      *v2 = v23;
      *v10 = v64;
      *(v10 + 16) = v78;
      if (*(v3 - 4) <= *(v10 + 16))
      {
        goto LABEL_19;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v24 = *(v3 - 4);
      *v10 = *v11;
      *(v10 + 16) = v24;
    }

    else
    {
      v75 = *(v2 + 4);
      v62 = *v2;
      v14 = *v11;
      *(v2 + 4) = *(v3 - 4);
      *v2 = v14;
      v15 = v62;
      v16 = v75;
    }

    *(v3 - 4) = v16;
    *v11 = v15;
LABEL_19:
    v20 = 1;
    v21 = *(v2 + 4);
    v22 = *(v10 + 16);
    if (v21 <= v22)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_3:
  v2 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 2);
  if (v6 > 0xFFF)
  {
    if (v5 != 81920)
    {
      v3 = (v2 + 5120);
      a2[1] = v2 + 5120;
    }
  }

  else
  {
    v7 = result;
    v8 = a2;
    sub_255A7B9B8(a2, 4096 - v6);
    result = v7;
    a2 = v8;
    v2 = *v8;
    v3 = v8[1];
  }

LABEL_73:
  *result = v2;
  result[1] = v3;
  result[2] = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_255B6F34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a16;
    if (!a16)
    {
LABEL_3:
      sub_255A8DBF0((v17 - 56));
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
  sub_255A8DBF0((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_255B6F62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_255A8DBF0(&a16);
  _Unwind_Resume(a1);
}

void sub_255B6FD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B629AC(v6);
  sub_255B629AC(v7);
  sub_255B629AC(v5);
  sub_255B629AC(v4);
  sub_255B629AC(v3);
  sub_255B629AC(v2);
  sub_255B629AC(va);
  _Unwind_Resume(a1);
}

void sub_255B6FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v74 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v74;
    operator delete(v74);
  }

  if (a72 < 0)
  {
    operator delete(*v72);
  }

  do
  {
    v72 -= 10;
    sub_255B629AC(v72);
  }

  while (v72 != &a10);
  _Unwind_Resume(a1);
}

void sub_255B6FED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B6FEC8);
}

uint64_t sub_255B6FF08(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return *(a1 + 272);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_255B6FF34(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return *(a1 + 272);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_255B6FF60(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return *(a1 + 272);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_255B6FF7C(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D02D8[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

void *sub_255B6FFD8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v2 - *a2) >> 3) < 0x222222222222223)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void ***sub_255B701D8(void ***a1)
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
          if (*(v4 - 8) == 1)
          {
            v6 = *(v4 - 6);
            if (v6)
            {
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }
            }
          }

          v4 -= 120;
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

uint64_t sub_255B702A8(unsigned int **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_255A7B4E8();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_255A7B590();
  }

  v7 = v2 << 7;
  *v7 = 0;
  *(v7 + 120) = -1;
  v8 = *(a2 + 120);
  if (v8 != -1)
  {
    v17 = v7;
    (off_2867D0350[v8])(&v17, a2);
    *(v7 + 120) = v8;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (v10 != *a1)
  {
    v16 = v7 + *a1 - v10;
    v12 = *a1;
    do
    {
      *v11 = 0;
      v11[30] = -1;
      v13 = v12[30];
      if (v13 != -1)
      {
        v17 = v11;
        (off_2867D0350[v13])(&v17, v12);
        v11[30] = v13;
      }

      v12 += 32;
      v11 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[30];
      if (v14 != -1)
      {
        (off_2867D0330[v14])(&v17, v9);
      }

      v9[30] = -1;
      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
    v11 = v16;
  }

  *a1 = v11;
  a1[1] = (v7 + 128);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 128;
}

void sub_255B7047C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    v2 = *(a2 + 72);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);

        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }
}

void sub_255B70504(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    v2 = *(a2 + 72);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);

        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }
}

void sub_255B7058C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_255B70608(uint64_t a1, void *a2)
{
  *a2 = &unk_2867C8750;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

__n128 sub_255B706A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    *(v2 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    result = *(a2 + 80);
    *(v2 + 94) = *(a2 + 94);
    *(v2 + 80) = result;
    *(v2 + 112) = 1;
  }

  return result;
}

__n128 sub_255B70718(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    *(v2 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    result = *(a2 + 80);
    *(v2 + 94) = *(a2 + 94);
    *(v2 + 80) = result;
    *(v2 + 112) = 1;
  }

  return result;
}

__n128 sub_255B70790(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_2867C5710;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 38) = *(a2 + 38);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_255B707D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_2867C8750;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_255B70800(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(a1 + 88) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if (*(a1 + 88) != 1)
  {
    goto LABEL_8;
  }

LABEL_7:
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if (*(a1 + 56) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

LABEL_12:
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void **sub_255B708C4(void **a1)
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
        v5 = v3 - 128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2867D0330[v6])(&v8, v3 - 128);
        }

        *(v3 - 2) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255B7096C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B70A24(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255B70AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B70B6C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_255B70C10(uint64_t a1, unsigned int *a2, int *a3, char a4, __int32 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *a2;
  }

  else
  {
    v12 = *a2;
    v11 = *a2 != 0;
  }

  v13 = v11 * v12;
  v14 = 4 * v13;
  v15 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = v18;
  if (!v13)
  {
    *(a1 + 24) = *a2;
    *(a1 + 28) = 4 * v11;
    return a1;
  }

  memptr = 0;
  v19 = malloc_type_posix_memalign(&memptr, v18, 4 * v13, 0x63222AC6uLL);
  if (v19)
  {
    sub_255C07708(v19, *(a1 + 16), v14);
  }

  v21 = memptr;
  *(a1 + 8) = memptr;
  v22 = *a2;
  *(a1 + 24) = v22;
  *(a1 + 28) = 4 * v11;
  if (!v21 || (a6 & 1) == 0)
  {
    return a1;
  }

  v23 = v11 & 0x3FFFFFFF;
  if (v22 * v23 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v24 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_22;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_38:
    abort();
  }

LABEL_22:
  if (v23 == 1)
  {
    if (!v22)
    {
      return a1;
    }

    v20.i32[0] = *a5;
    if (v22 < 8)
    {
      v27 = v22;
      v28 = v21;
LABEL_34:
      v34 = v27 + 1;
      do
      {
        v28->i32[0] = v20.i32[0];
        v28 = (v28 + 4);
        --v34;
      }

      while (v34 > 1);
      return a1;
    }

    v27 = v22 & 7;
    v28 = (v21 + 4 * (v22 & 0xFFFFFFF8));
    v31 = vdupq_lane_s32(v20, 0);
    v32 = v21 + 1;
    v33 = v22 & 0xFFFFFFF8;
    do
    {
      v32[-1] = v31;
      *v32 = v31;
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    if ((v22 & 0xFFFFFFF8) != v22)
    {
      goto LABEL_34;
    }
  }

  else if (v22)
  {
    v29 = v22 - 1;
    if (v22 != 1)
    {
      v30 = *a5;
      do
      {
        v21->i32[0] = v30;
        v21 = (v21 + 4 * v23);
        --v29;
      }

      while (v29);
    }

    v21->i32[0] = *a5;
  }

  return a1;
}

void sub_255B70EAC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_255B70ECC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v4)
  {
    memptr = 0;
    v6 = malloc_type_posix_memalign(&memptr, v5, v4, 0x63222AC6uLL);
    if (v6)
    {
      sub_255C07708(v6, *(a1 + 16), v4);
    }

    *(a1 + 8) = memptr;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28) >> 2;
  if (v9 * v8 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_13;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_30;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 += 16;
    }

    while (v10 != v11);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (!v8)
  {
    return a1;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 28) >> 2;
  if (v13 * *(a1 + 24) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_22:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_23;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_30;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_22;
    }

LABEL_30:
    abort();
  }

LABEL_23:
  if (v9 == 1 && v13 == 1)
  {
    memmove(v12, v7, 4 * v8);
  }

  else
  {
    v16 = v8 - 1;
    if (v8 != 1)
    {
      do
      {
        *v12 = *v7;
        v7 += v9;
        v12 += v13;
        --v16;
      }

      while (v16);
    }

    *v12 = *v7;
  }

  return a1;
}

void ***sub_255B711EC(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            free(v6);
          }

          *(v4 - 3) = 0;
          v4 -= 48;
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

uint64_t sub_255B71274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v28[0]) = 0;
  v30 = 0;
  v5 = *(a3 + 24);
  if (v5 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      sub_255A7E018(v28, *a3, *(a3 + 8));
    }

    else
    {
      *v28 = *a3;
      v29 = *(a3 + 16);
    }

    v30 = 1;
  }

  v27[1] = 0;
  v27[2] = 0;
  v27[0] = &unk_2867CE598;
  LOBYTE(v52) = 0;
  v54 = 0;
  if (v5)
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_255A7E018(&v52, v28[0], v28[1]);
    }

    else
    {
      v52 = *v28;
      v53 = v29;
    }

    v54 = 1;
  }

  sub_255B71E88(v55, a2, &v52);
  if (v54 == 1 && SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v6 = *(a2 + 241);
  v7 = *(a2 + 240);
  LOBYTE(__p[0]) = 0;
  v49 = 0;
  v51 = v7;
  v50 = v6;
  v31 = &unk_2867C7F40;
  sub_255A81DE0(&v32, v55);
  v31 = &unk_2867C7EA0;
  sub_255B5C60C(&v43, __p);
  v46 = v50;
  v47 = v51;
  if (v49 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v62 == 1)
  {
    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
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
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }
  }

  v12 = v58;
  if (v58)
  {
    v13 = v59;
    v14 = v58;
    if (v59 != v58)
    {
      do
      {
        v15 = v13;
        v13 -= 4;
        if (*(v15 - 8) == 1 && *(v15 - 9) < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v58;
    }

    v59 = v12;
    operator delete(v14);
  }

  __p[0] = &v57;
  sub_255A8250C(__p);
  if (v56 < 0)
  {
    operator delete(v55[2]);
  }

  v16 = v32;
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v16;
  *(a1 + 16) = v33;
  *(a1 + 24) = *v34;
  *(a1 + 40) = v35;
  v34[0] = 0;
  v34[1] = 0;
  v17 = v39;
  *(a1 + 64) = v37;
  *(a1 + 48) = v36;
  v37 = 0;
  v35 = 0;
  v36 = 0uLL;
  *(a1 + 72) = v38;
  *(a1 + 88) = v17;
  v38 = 0uLL;
  v39 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v18 = v42;
  if (v42 == 1)
  {
    *(a1 + 96) = v40;
    *(a1 + 112) = v41;
    v41 = 0;
    v40 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7EA0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v45 == 1)
  {
    *(a1 + 128) = v43;
    *(a1 + 144) = v44;
    v44 = 0;
    v43 = 0uLL;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = v46;
  *(a1 + 168) = v47;
  v31 = &unk_2867C7F40;
  if (v18)
  {
    v19 = v40;
    if (v40)
    {
      v20 = *(&v40 + 1);
      if (*(&v40 + 1) == v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
        v21 = v38;
        if (!v38)
        {
          goto LABEL_45;
        }

LABEL_55:
        v24 = *(&v38 + 1);
        v25 = v21;
        if (*(&v38 + 1) != v21)
        {
          do
          {
            v26 = v24;
            v24 -= 4;
            if (*(v26 - 8) == 1 && *(v26 - 9) < 0)
            {
              operator delete(*v24);
            }
          }

          while (v24 != v21);
          v25 = v38;
        }

        *(&v38 + 1) = v21;
        operator delete(v25);
        v55[0] = &v36;
        sub_255A8250C(v55);
        if (SHIBYTE(v35) < 0)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      do
      {
        v23 = *(v20 - 1);
        v20 -= 3;
        if (v23 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      *(&v40 + 1) = v19;
      operator delete(v40);
      v21 = v38;
      if (v38)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_45:
  v55[0] = &v36;
  sub_255A8250C(v55);
  if (SHIBYTE(v35) < 0)
  {
LABEL_46:
    operator delete(v34[0]);
  }

LABEL_47:
  sub_255A7F5A0(v27);
  if (v30 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  *a1 = &unk_2867C91B0;
  return a1;
}

void sub_255B7173C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45)
{
  if (*(v45 - 200) == 1 && *(v45 - 201) < 0)
  {
    operator delete(*(v45 - 224));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B717D4(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255B71854(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B718F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  v6 = *(a3 + 24);
  if (v6 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = a4;
      sub_255A7E018(v24, *a3, *(a3 + 8));
      a4 = v7;
    }

    else
    {
      *v24 = *a3;
      v25 = *(a3 + 16);
    }

    v26 = 1;
  }

  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  v21 = &unk_2867CE598;
  v22 = v9;
  v23 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    LOBYTE(v58) = 0;
    v60 = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v58) = 0;
    v60 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_255A7E018(&v58, v24[0], v24[1]);
  }

  else
  {
    v58 = *v24;
    v59 = v25;
  }

  v60 = 1;
LABEL_14:
  sub_255B71E88(v61, a2, &v58);
  if (v60 == 1 && SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  LOBYTE(v48) = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  LOBYTE(__p) = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (*(a2 + 320))
  {
    if (*(a2 + 319) < 0)
    {
      sub_255A7E018(&v48, *(a2 + 296), *(a2 + 304));
    }

    else
    {
      v48 = *(a2 + 296);
      v49 = *(a2 + 312);
    }

    v50 = 1;
  }

  v51 = *(a2 + 280);
  v52 = *(a2 + 288);
  if (*(a2 + 329) == 1)
  {
    v56 = *(a2 + 328);
  }

  v57 = *(a2 + 241);
  v47[0] = &unk_2867CE598;
  v47[1] = v22;
  v47[2] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255A816F0(v27, v61, &v48, v47);
  sub_255A7F5A0(v47);
  if (v55 == 1 && v54 < 0)
  {
    operator delete(__p);
  }

  if (v50 == 1 && SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v68 == 1)
  {
    v10 = v66;
    if (v66)
    {
      v11 = v67;
      v12 = v66;
      if (v67 != v66)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v66;
      }

      v67 = v10;
      operator delete(v12);
    }
  }

  v14 = v64;
  if (v64)
  {
    v15 = v65;
    v16 = v64;
    if (v65 != v64)
    {
      do
      {
        v17 = v15;
        v15 -= 4;
        if (*(v17 - 8) == 1 && *(v17 - 9) < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v64;
    }

    v65 = v14;
    operator delete(v16);
  }

  *&v48 = &v63;
  sub_255A8250C(&v48);
  if (v62 < 0)
  {
    operator delete(v61[2]);
  }

  v18 = v27[1];
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v18;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  *(a1 + 40) = v30;
  v29 = 0uLL;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  v32 = 0;
  v30 = 0;
  v31 = 0uLL;
  *(a1 + 72) = v33;
  *(a1 + 88) = v34;
  v33 = 0uLL;
  v34 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (v37 == 1)
  {
    *(a1 + 96) = v35;
    *(a1 + 112) = v36;
    v36 = 0;
    v35 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7E20;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v40 == 1)
  {
    *(a1 + 128) = v38;
    *(a1 + 144) = v39;
    v39 = 0;
    v38 = 0uLL;
    *(a1 + 152) = 1;
  }

  v19 = v41;
  *(a1 + 176) = 0;
  *(a1 + 160) = v19;
  *(a1 + 200) = 0;
  if (v44 == 1)
  {
    *(a1 + 176) = v42;
    *(a1 + 192) = v43;
    v43 = 0;
    v42 = 0uLL;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = v45;
  *(a1 + 216) = &unk_2867CE598;
  *(a1 + 224) = v46;
  v46 = 0uLL;
  sub_255A81854(v27);
  sub_255A7F5A0(&v21);
  if (v26 == 1 && SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  *a1 = &unk_2867C9188;
  return a1;
}

void sub_255B71DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54)
{
  if (*(v54 - 184) == 1 && *(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B71E50(uint64_t a1)
{
  sub_255A81798(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B71E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (*(a2 + 39) < 0)
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      goto LABEL_20;
    }

    sub_255A7E018(__p, *(a2 + 16), v6);
  }

  else
  {
    if (!*(a2 + 39))
    {
      goto LABEL_20;
    }

    *__p = *(a2 + 16);
    v56 = *(a2 + 32);
  }

  v57 = 1;
  v58 = 17;
  v59 = 1;
  v60 = v33;
  v61 = BYTE2(v33);
  v62 = 1;
  v63 = 1;
  v64 = v53;
  v65 = v54;
  LOBYTE(v66) = 0;
  HIBYTE(v66) = v49;
  *(&v66 + 1) = v48;
  v67 = 0;
  v68 = v46;
  v69 = v47;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v44;
  HIBYTE(v70) = v45;
  v71 = 0;
  v72 = v42;
  v73 = v43;
  v74 = 1;
  v75 = 1;
  v77 = v41;
  v76 = v40;
  LOBYTE(v78) = 0;
  HIBYTE(v78) = v39;
  *(&v78 + 1) = v38;
  v79 = 0;
  v81 = v37;
  v80 = v36;
  v82 = 1;
  v83[0] = 0;
  v85 = 0;
  v86[0] = 0;
  v88 = 0;
  v51 = sub_255B728B8(&v50, __p);
  if (v88 != 1)
  {
LABEL_10:
    if (v85 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v87 != v86)
  {
    if (v87)
    {
      (*(*v87 + 40))();
    }

    goto LABEL_10;
  }

  (*(*v87 + 32))(v87);
  if (v85 == 1)
  {
LABEL_11:
    if (v84 == v83)
    {
      (*(*v84 + 32))(v84);
    }

    else if (v84)
    {
      (*(*v84 + 40))();
    }
  }

LABEL_17:
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  if (*(a2 + 63) < 0)
  {
    v7 = *(a2 + 48);
    if (!v7)
    {
      goto LABEL_42;
    }

    sub_255A7E018(__p, *(a2 + 40), v7);
  }

  else
  {
    if (!*(a2 + 63))
    {
      goto LABEL_42;
    }

    *__p = *(a2 + 40);
    v56 = *(a2 + 56);
  }

  v57 = 1;
  v58 = 33;
  v59 = 1;
  v62 = 1;
  v63 = 1;
  v66 = 6;
  v67 = 1;
  v70 = 1024;
  v71 = 1;
  v74 = 1;
  v75 = 1;
  v78 = 1;
  v79 = 1;
  v82 = 1;
  v83[0] = 0;
  v85 = 0;
  v86[0] = 0;
  v88 = 0;
  v8 = v51;
  if (v51 >= v52)
  {
    v9 = sub_255B728B8(&v50, __p);
  }

  else
  {
    sub_255A82028(v51, __p);
    v9 = v8 + 168;
  }

  v51 = v9;
  if (v88 != 1)
  {
LABEL_32:
    if (v85 == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (v87 != v86)
  {
    if (v87)
    {
      (*(*v87 + 40))();
    }

    goto LABEL_32;
  }

  (*(*v87 + 32))(v87);
  if (v85 == 1)
  {
LABEL_33:
    if (v84 == v83)
    {
      (*(*v84 + 32))(v84);
    }

    else if (v84)
    {
      (*(*v84 + 40))();
    }
  }

LABEL_39:
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_42:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (*(a2 + 87) < 0)
  {
    v10 = *(a2 + 72);
    if (!v10)
    {
      goto LABEL_50;
    }

    sub_255A7E018(__p, *(a2 + 64), v10);
    v57 = 1;
  }

  else
  {
    if (!*(a2 + 87))
    {
      goto LABEL_50;
    }

    *__p = *(a2 + 64);
    v56 = *(a2 + 80);
    v57 = 1;
  }

  v34 = sub_255B72F8C(&v33, __p);
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_50:
  if (*(a2 + 111) < 0)
  {
    v11 = *(a2 + 96);
    if (!v11)
    {
      goto LABEL_63;
    }

    sub_255A7E018(__p, *(a2 + 88), v11);
  }

  else
  {
    if (!*(a2 + 111))
    {
      goto LABEL_63;
    }

    *__p = *(a2 + 88);
    v56 = *(a2 + 104);
  }

  v57 = 1;
  v12 = v34;
  if (v34 >= v35)
  {
    v14 = sub_255B72F8C(&v33, __p);
  }

  else
  {
    *v34 = 0;
    *(v12 + 24) = 0;
    if (v57 == 1)
    {
      v13 = *__p;
      v12[2] = v56;
      *v12 = v13;
      __p[1] = 0;
      v56 = 0;
      __p[0] = 0;
      *(v12 + 24) = 1;
    }

    v14 = v12 + 4;
  }

  v34 = v14;
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_63:
  if (*(a2 + 135) < 0)
  {
    v15 = *(a2 + 120);
    if (!v15)
    {
      goto LABEL_76;
    }

    sub_255A7E018(__p, *(a2 + 112), v15);
  }

  else
  {
    if (!*(a2 + 135))
    {
      goto LABEL_76;
    }

    *__p = *(a2 + 112);
    v56 = *(a2 + 128);
  }

  v57 = 1;
  v16 = v34;
  if (v34 >= v35)
  {
    v18 = sub_255B72F8C(&v33, __p);
  }

  else
  {
    *v34 = 0;
    *(v16 + 24) = 0;
    if (v57 == 1)
    {
      v17 = *__p;
      v16[2] = v56;
      *v16 = v17;
      __p[1] = 0;
      v56 = 0;
      __p[0] = 0;
      *(v16 + 24) = 1;
    }

    v18 = v16 + 4;
  }

  v34 = v18;
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_76:
  if (*(a2 + 159) < 0)
  {
    v19 = *(a2 + 144);
    if (!v19)
    {
      goto LABEL_89;
    }

    sub_255A7E018(__p, *(a2 + 136), v19);
  }

  else
  {
    if (!*(a2 + 159))
    {
      goto LABEL_89;
    }

    *__p = *(a2 + 136);
    v56 = *(a2 + 152);
  }

  v57 = 1;
  v20 = v34;
  if (v34 >= v35)
  {
    v22 = sub_255B72F8C(&v33, __p);
  }

  else
  {
    *v34 = 0;
    *(v20 + 24) = 0;
    if (v57 == 1)
    {
      v21 = *__p;
      v20[2] = v56;
      *v20 = v21;
      __p[1] = 0;
      v56 = 0;
      __p[0] = 0;
      *(v20 + 24) = 1;
    }

    v22 = v20 + 4;
  }

  v34 = v22;
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_89:
  sub_255B99BC0(a2 + 184, __p);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a3 + 24) != 1)
  {
    a3 = a2 + 160;
    if (*(a2 + 183) < 0)
    {
      v23 = (a2 + 168);
      goto LABEL_95;
    }

LABEL_93:
    *(a1 + 16) = *a3;
    *(a1 + 32) = *(a3 + 16);
    goto LABEL_96;
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_93;
  }

  v23 = (a3 + 8);
LABEL_95:
  sub_255A7E018((a1 + 16), *a3, *v23);
LABEL_96:
  sub_255B5DB04((a1 + 40), &v50);
  sub_255A826BC((a1 + 64), &v33);
  sub_255A82818((a1 + 88), __p);
  *(a1 + 112) = 1;
  v24 = __p[0];
  if (__p[0])
  {
    v25 = __p[1];
    v26 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = __p[0];
    }

    __p[1] = v24;
    operator delete(v26);
  }

  v28 = v33;
  if (v33)
  {
    v29 = v34;
    v30 = v33;
    if (v34 != v33)
    {
      do
      {
        v31 = v29;
        v29 -= 4;
        if (*(v31 - 8) == 1 && *(v31 - 9) < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v33;
    }

    v34 = v28;
    operator delete(v30);
  }

  __p[0] = &v50;
  sub_255A8250C(__p);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_255B7272C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_255B72834(&a9);
  __p = &a15;
  sub_255A8250C(&__p);
  _Unwind_Resume(a1);
}

void ***sub_255B72834(void ***a1)
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
        v5 = v3;
        v3 -= 4;
        if (*(v5 - 8) == 1 && *(v5 - 9) < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255B728B8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_255A7B4E8();
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

  v12 = a1;
  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_255A7B590();
  }

  __p = 0;
  v9 = 168 * v2;
  v11 = 0;
  sub_255A82028(168 * v2, a2);
  v10 = 168 * v2 + 168;
  sub_255B72A04(a1, &__p);
  v6 = a1[1];
  sub_255B72E38(&__p, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_255B729F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B72E00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B72A04(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  v15 = v6;
  v16 = v6;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (v4 != v5)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      sub_255B72C74(v7, v8);
      v8 = (v8 + 168);
      v7 = v16 + 168;
      v16 += 168;
    }

    while (v8 != v4);
  }

  v14 = 1;
  sub_255B72B08(a1, v5, v4);
  result = sub_255B5D714(v13);
  a2[1] = v6;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void sub_255B72B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = a2 + v5;
      if (*(a2 + v5 + 160) != 1)
      {
        goto LABEL_8;
      }

      v7 = *(v6 + 152);
      if (v6 + 128 != v7)
      {
        break;
      }

      (*(*v7 + 32))(v7);
      if (*(v6 + 120) == 1)
      {
LABEL_9:
        v8 = *(a2 + v5 + 112);
        if (v6 + 88 == v8)
        {
          (*(*v8 + 32))(v8);
        }

        else if (v8)
        {
          (*(*v8 + 40))(v8);
        }
      }

LABEL_15:
      if (*(a2 + v5 + 24) == 1 && *(a2 + v5 + 23) < 0)
      {
        operator delete(*v6);
      }

      v5 += 168;
      if (a2 + v5 == a3)
      {
        return;
      }
    }

    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

LABEL_8:
    if (*(v6 + 120) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }
}

uint64_t sub_255B72C74(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 1;
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *(a2 + 20);
  *(result + 88) = 0;
  v7 = result + 88;
  *(result + 80) = v6;
  *(result + 64) = v5;
  *(result + 48) = v4;
  *(result + 32) = v3;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = a2 + 7;
    v9 = *(a2 + 14);
    if (v9)
    {
      if (v9 == (a2 + 88))
      {
        *(result + 112) = v7;
        v10 = result;
        v11 = a2;
        (*(**v8 + 24))(*v8, v7);
        a2 = v11;
        result = v10;
        goto LABEL_10;
      }

      *(result + 112) = v9;
    }

    else
    {
      v8 = (result + 112);
    }

    *v8 = 0;
LABEL_10:
    *(result + 120) = 1;
  }

  *(result + 128) = 0;
  v12 = result + 128;
  *(result + 160) = 0;
  if (*(a2 + 160) != 1)
  {
    return result;
  }

  v13 = a2 + 19;
  v14 = *(a2 + 19);
  if (v14)
  {
    if (v14 == a2 + 8)
    {
      *(result + 152) = v12;
      v15 = result;
      (*(**v13 + 24))(*v13, v12);
      result = v15;
      goto LABEL_18;
    }

    *(result + 152) = v14;
  }

  else
  {
    v13 = (result + 152);
  }

  *v13 = 0;
LABEL_18:
  *(result + 160) = 1;
  return result;
}

uint64_t sub_255B72E00(uint64_t a1)
{
  sub_255B72E38(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_255B72E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    while (1)
    {
      *(a1 + 16) = v2 - 168;
      if (*(v2 - 8) != 1)
      {
        goto LABEL_8;
      }

      v5 = *(v2 - 16);
      if (v5 != v2 - 40)
      {
        break;
      }

      (*(*v5 + 32))(v5);
      if (*(v2 - 48) == 1)
      {
LABEL_9:
        v6 = *(v2 - 56);
        if (v6 == v2 - 80)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }
      }

LABEL_15:
      if (*(v2 - 144) == 1 && *(v2 - 145) < 0)
      {
        operator delete(*(v2 - 168));
      }

      v2 = *(a1 + 16);
      if (v2 == a2)
      {
        return;
      }
    }

    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

LABEL_8:
    if (*(v2 - 48) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }
}

_BYTE *sub_255B72F8C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_255A7B4E8();
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

    sub_255A7B590();
  }

  v15 = (32 * v2);
  *v15 = 0;
  v15[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *v15 = *a2;
    *(32 * v2 + 0x10) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(32 * v2 + 0x18) = 1;
  }

  v7 = v15 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = &v15[*a1 - v9];
  if (v9 != *a1)
  {
    v11 = &v15[*a1 - v9];
    v12 = *a1;
    do
    {
      *v11 = 0;
      v11[24] = 0;
      if (*(v12 + 24) == 1)
      {
        v13 = *v12;
        *(v11 + 2) = *(v12 + 2);
        *v11 = v13;
        *(v12 + 1) = 0;
        *(v12 + 2) = 0;
        *v12 = 0;
        v11[24] = 1;
      }

      v12 += 2;
      v11 += 32;
    }

    while (v12 != v9);
    do
    {
      if (*(v8 + 24) == 1 && *(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
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

uint64_t sub_255B73138(uint64_t result)
{
  if (*(result + 72) == 1 && *(result + 71) < 0)
  {
    v1 = result;
    operator delete(*(result + 48));
    result = v1;
    if (*(v1 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  if (*(result + 23) < 0)
  {
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

void sub_255B731C0(unsigned int *a1, _DWORD *a2)
{
  v2 = a2;
  v3 = a1[2];
  if (v3 == a2[2])
  {
    v4 = a1;
    v5 = a1[3];
    if (v5 == a2[3])
    {
      v6 = a1[4];
      if (v6 == a2[4])
      {
        goto LABEL_12;
      }
    }
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndUtils.cpp", 39, "out_wxhxc.Shape() == in_wxhxc.Shape()", 0x25uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_114;
    }

    goto LABEL_9;
  }

  if (byte_27F7DD638 == 1)
  {
    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_9:
        v10 = *v7;
        v9 = *(v7 + 8);
        v7 += 16;
        v10(v9, "out_wxhxc.Shape() == in_wxhxc.Shape()", 37, &unk_255C2500B, 0);
      }

      while (v7 != v8);
      if (byte_27F7DD630)
      {
        goto LABEL_11;
      }

LABEL_114:
      abort();
    }
  }

LABEL_11:
  qword_27F7DD620(*algn_27F7DD628, "out_wxhxc.Shape() == in_wxhxc.Shape()", 37, &unk_255C2500B, 0);
  v4 = a1;
  v3 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
LABEL_12:
  if (v5)
  {
    if (v6)
    {
      v11 = 0x100000001;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 == 0;
    if (!v6)
    {
      v12 = 1;
    }

    v97 = v12;
    if (v3)
    {
      v95 = 0;
      v13 = v11 - 1;
      v14 = v6 - 1;
      v86 = 4 * (v11 & 1) + 0x3FFFFFFFCLL;
      v87 = v3;
      v91 = v6;
      v90 = v11;
      v103 = v6 - 1;
      v104 = v11 - 1;
      v88 = v2;
      v89 = HIDWORD(v11);
      v84 = v5;
      do
      {
        v15 = 0;
        do
        {
          v16 = v4[5];
          v17 = v4[6];
          v18 = v4[7];
          v19 = *v4;
          v100 = *(v4 + 5);
          v96 = v18 * v6;
          v99 = v17;
          v98 = *v4;
          if (v18 * v6 != -1)
          {
            v21 = v2[5];
            v20 = v2[6];
            v22 = v2[7];
            v23 = *v2;
            if (v22 * v6 != -1)
            {
              goto LABEL_26;
            }

            goto LABEL_58;
          }

          v42 = v2;
          v43 = v3;
          v44 = v4[7];
          v45 = v15;
          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1)
            {
              goto LABEL_57;
            }

            v46 = qword_27F7DD608;
            v47 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v46 = qword_27F7DD608;
            v47 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_114;
            }
          }

          do
          {
            v49 = *v46;
            v48 = *(v46 + 8);
            v46 += 16;
            v49(v48, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          }

          while (v46 != v47);
          if ((byte_27F7DD630 & 1) == 0)
          {
            goto LABEL_114;
          }

LABEL_57:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          v14 = v103;
          v13 = v104;
          v15 = v45;
          v18 = v44;
          v3 = v43;
          v2 = v42;
          v6 = v91;
          v17 = v99;
          v19 = v98;
          v21 = v2[5];
          v20 = v2[6];
          v22 = v2[7];
          v23 = *v2;
          if (v22 * v91 != -1)
          {
LABEL_26:
            v24 = v16 * v15;
            v25 = (v19 + 4 * (v16 * v15 + v17 * v95));
            if (v97)
            {
              goto LABEL_27;
            }

            goto LABEL_66;
          }

LABEL_58:
          v101 = v20;
          v50 = v3;
          v51 = v18;
          v52 = v15;
          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1)
            {
              goto LABEL_65;
            }

            v53 = qword_27F7DD608;
            v54 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v53 = qword_27F7DD608;
            v54 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_114;
            }
          }

          do
          {
            v56 = *v53;
            v55 = *(v53 + 8);
            v53 += 16;
            v56(v55, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          }

          while (v53 != v54);
          if ((byte_27F7DD630 & 1) == 0)
          {
            goto LABEL_114;
          }

LABEL_65:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          v6 = v91;
          LODWORD(v11) = v90;
          v14 = v103;
          v13 = v104;
          v15 = v52;
          v18 = v51;
          v3 = v50;
          v2 = v88;
          v17 = v99;
          v19 = v98;
          v20 = v101;
          v24 = v16 * v15;
          v25 = (v98 + 4 * (v16 * v15 + v99 * v95));
          if (v97)
          {
LABEL_27:
            v26 = v96;
            if (v96)
            {
              goto LABEL_28;
            }

            goto LABEL_83;
          }

LABEL_66:
          v57 = v21 * v15;
          v58 = 4 * v21;
          v93 = v15;
          v94 = v24;
          v92 = v18;
          if (!v14)
          {
            v63 = (v23 + 4 * (v57 + v20 * v95));
            if (!v13)
            {
              v62 = v25;
              goto LABEL_82;
            }

            v67 = v100;
            v62 = v25;
            goto LABEL_75;
          }

          v59 = 4 * v18;
          v60 = 4 * v22;
          if (v13)
          {
            v102 = 4 * v18;
            v61 = 0;
            v62 = (v19 + 4 * (v94 + v95 * v17));
            v63 = (v23 + 4 * (v57 + v95 * v20));
            do
            {
              v64 = 0;
              v65 = 0;
              v66 = v13;
              do
              {
                v62[v65] = expf(*(v63 + v64));
                v65 += v100;
                v64 += v58;
                --v66;
              }

              while (v66);
              v62[v65] = expf(*(v63 + v64));
              v62 = (v62 + v102);
              v63 = (v63 + v60);
              ++v61;
              v13 = v104;
            }

            while (v61 != v103);
            v2 = v88;
            v4 = a1;
            v6 = v91;
            v67 = v100;
LABEL_75:
            v68 = 4 * v67;
            v69 = v13;
            do
            {
              *v62 = expf(*v63);
              v62 = (v62 + v68);
              v63 = (v63 + v58);
              --v69;
            }

            while (v69);
            goto LABEL_82;
          }

          v62 = (v19 + 4 * (v94 + v95 * v17));
          v63 = (v23 + 4 * (v57 + v95 * v20));
          v70 = v14;
          do
          {
            *v62 = expf(*v63);
            v62 = (v62 + v59);
            v63 = (v63 + v60);
            --v70;
          }

          while (v70);
LABEL_82:
          *v62 = expf(*v63);
          v3 = v87;
          LODWORD(v11) = v90;
          v14 = v103;
          v13 = v104;
          v15 = v93;
          v24 = v94;
          v18 = v92;
          v17 = v99;
          v19 = v98;
          v26 = v96;
          if (v96)
          {
LABEL_28:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = v100;
            v31 = 0.0;
            v32 = v25;
            v33 = &v25[v26];
            do
            {
              v31 = v31 + *v32;
              v34 = v29 + 1;
              v35 = v100 - ((v29 + 1) * v100);
              if (v28 + 1 == v89)
              {
                v36 = v27 + 1;
              }

              else
              {
                v36 = v27;
              }

              if (v28 + 1 == v89)
              {
                v37 = 0;
              }

              else
              {
                v37 = v28 + 1;
              }

              if (v28 + 1 == v89)
              {
                v35 = v35 + HIDWORD(v100) - ((v28 + 1) * HIDWORD(v100));
                v38 = v18;
              }

              else
              {
                v38 = HIDWORD(v100);
              }

              v39 = v34 == v11;
              if (v34 == v11)
              {
                v27 = v36;
                v28 = v37;
                v29 = 0;
              }

              else
              {
                ++v29;
              }

              if (v34 == v11)
              {
                v40 = v35;
              }

              else
              {
                v40 = 0;
              }

              if (v39)
              {
                v41 = v38;
              }

              else
              {
                v41 = v100;
              }

              v32 += v41 + v40;
            }

            while (v32 != v33);
            if (v97)
            {
              goto LABEL_23;
            }

            goto LABEL_84;
          }

LABEL_83:
          v31 = 0.0;
          v30 = v100;
          if (v97)
          {
            goto LABEL_23;
          }

LABEL_84:
          v71 = 4 * v30;
          if (v14)
          {
            v72 = 0;
            v73 = v31 == 0.0;
            v74 = 0.0 - v31;
            if (v31 >= 0.0)
            {
              v74 = v31;
            }

            if (v74 <= 0.00000011921)
            {
              v73 = 1;
            }

            v25 = (v19 + 4 * (v24 + v95 * v17));
            do
            {
              v75 = v25;
              if (v13)
              {
                if (v31 == 0.0 || (v75 = v25, v77 = v13, v74 <= 0.00000011921))
                {
                  v75 = (v25 + v30 * v86);
                }

                else
                {
                  do
                  {
                    *v75 = *v75 / v31;
                    v75 = (v75 + v71);
                    --v77;
                  }

                  while (v77);
                }
              }

              v76 = *v75;
              if (!v73)
              {
                v76 = *v75 / v31;
              }

              *v75 = v76;
              v25 += v18;
              ++v72;
            }

            while (v72 != v14);
          }

          if (v13)
          {
            v78 = 0.0 - v31;
            v79 = v31 == 0.0;
            if (v31 >= 0.0)
            {
              v78 = v31;
            }

            if (v78 <= 0.00000011921)
            {
              v79 = 1;
            }

            v80 = v13;
            do
            {
              v81 = *v25;
              if (!v79)
              {
                v81 = *v25 / v31;
              }

              *v25 = v81;
              v25 = (v25 + v71);
              --v80;
            }

            while (v80);
          }

          v82 = *v25;
          if (v31 != 0.0)
          {
            v83 = 0.0 - v31;
            if (v31 >= 0.0)
            {
              v83 = v31;
            }

            if (v83 > 0.00000011921)
            {
              v82 = v82 / v31;
            }
          }

          *v25 = v82;
LABEL_23:
          ++v15;
        }

        while (v15 != v3);
        ++v95;
      }

      while (v95 != v84);
    }
  }
}

void sub_255B739CC(__int128 *a1, uint64_t *a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *a3;
  v9 = *(a1 + 1);
  if (v8 * v8 == *(a2 + 4) - 1)
  {
    goto LABEL_10;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndUtils.cpp", 75, "(c - 1) == (window_size * window_size)", 0x26uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v11 = qword_27F7DD608;
    v10 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_36;
    }

    do
    {
LABEL_7:
      v13 = *v11;
      v12 = *(v11 + 8);
      v11 += 16;
      v13(v12, "(c - 1) == (window_size * window_size)", 38, &unk_255C2500B, 0);
    }

    while (v11 != v10);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  if (byte_27F7DD638 == 1)
  {
    v11 = qword_27F7DD608;
    v10 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  qword_27F7DD620(*algn_27F7DD628, "(c - 1) == (window_size * window_size)", 38, &unk_255C2500B, 0);
  v5 = a1;
  v3 = a3;
LABEL_10:
  v14 = v8 * v6;
  v15 = v8 * v7;
  if (v8 * v6 != v9 || v15 != HIDWORD(v9))
  {
    v17 = v3;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndUtils.cpp", 76, "w8 == w_x8 && h8 == h_x8", 0x18uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v18 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "w8 == w_x8 && h8 == h_x8", 24, &unk_255C2500B, 0);
        v3 = v17;
        goto LABEL_22;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v18 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      v21 = *v19;
      v20 = *(v19 + 8);
      v19 += 16;
      v21(v20, "w8 == w_x8 && h8 == h_x8", 24, &unk_255C2500B, 0);
    }

    while (v19 != v18);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_36:
    abort();
  }

LABEL_22:
  v22 = *v3;
  if (v14 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v14;
  }

  if (v23)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  v38 = *v5;
  v39 = *(v5 + 2);
  v24 = HIDWORD(v39) * HIDWORD(*v5);
  if (v24 && DWORD2(v38))
  {
    v25 = 0;
    v26 = *v5;
    v27 = v38 + 4 * v24;
    v28 = *(a2 + 5);
    v29 = *(a2 + 6);
    v30 = *(a2 + 7);
    v31 = *a2;
    do
    {
      v32 = 0;
      v33 = v29 * *(2 * v25);
      v34 = v22 * *v25;
      v35 = 4 * DWORD2(v38);
      do
      {
        *(v26 + 4 * v32) = *(v31 + 4 * (v33 + v28 * *(2 * v32) + v30 * (v34 + *v32)));
        ++v32;
        v35 -= 4;
      }

      while (v35);
      v26 += 4 * HIDWORD(v39);
      ++v25;
    }

    while (v26 != v27);
    operator delete(0);
  }
}

void sub_255B73E34(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X8>, float a4@<S0>)
{
  v5 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v8 = *a1;
  v73 = *a1;
  v74 = *(a1 + 2);
  v9 = HIDWORD(v74) * HIDWORD(*a1);
  v10 = *(a1 + 1);
  if (v9)
  {
    _ZF = DWORD2(v73) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *a1;
    v61 = (v73 + 4 * v9);
    v70 = v7 - 3;
    v69 = v6 - 3;
    v16 = v7 + -1.0;
    v17 = v6 + -1.0;
    __asm
    {
      FMOV            V11.2S, #-1.0
      FMOV            V12.2S, #1.0
    }

    v63 = v5;
    v65 = a2;
    v66 = a1;
    do
    {
      v23 = 0;
      v24 = &v15[v10];
      v64 = v14 - 1;
      v62 = v15;
      v68 = v24;
      do
      {
        v25 = *v15;
        if (*v15 < a4)
        {
          goto LABEL_11;
        }

        v26 = *(a1 + 4);
        v27 = *(a1 + 5);
        v28 = *a1;
        if (v23 >= 4 && v23 < v70 && v14 >= 4 && v14 < v69)
        {
          v29 = &unk_255C3F8C4;
          v30 = 376;
          do
          {
            v31 = v28[(*(v29 - 1) + v23) * v26 + (*v29 + v14) * v27];
            v32 = v31 < v25;
            v33 = v31 >= v25 || v30 == 0;
            v30 -= 8;
            v29 += 2;
          }

          while (!v33);
          if (!a2)
          {
            goto LABEL_43;
          }

          v67 = v12;
          __src = v13;
          v34 = *(a1 + 2);
          if (HIDWORD(v34) == 1431655765)
          {
            sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
            if (byte_27F7DD630 == 1)
            {
              if (byte_27F7DD638 != 1)
              {
                goto LABEL_51;
              }

              v36 = qword_27F7DD608;
              v35 = *algn_27F7DD610;
              if (qword_27F7DD608 == *algn_27F7DD610)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v36 = qword_27F7DD608;
              v35 = *algn_27F7DD610;
              if (qword_27F7DD608 == *algn_27F7DD610)
              {
                goto LABEL_84;
              }
            }

            do
            {
              (*v36)(*(v36 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
              v36 += 16;
            }

            while (v36 != v35);
            if ((byte_27F7DD630 & 1) == 0)
            {
              goto LABEL_84;
            }

LABEL_51:
            v5 = v63;
            qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          }

          if (v31 < v25)
          {
            v42 = &v28[v26 * (v23 - 1) + v27 * v64];
            *&v8 = v42[(HIDWORD(v34) + v34)];
            v43.f32[0] = v42[HIDWORD(v34)];
            v44 = v42[v34];
            v45.f32[0] = v42[(HIDWORD(v34) + 2 * v34)];
            v46 = v34 + 2 * HIDWORD(v34);
LABEL_54:
            *&v8 = v42[v46] + (v44 + ((*&v8 + v43.f32[0]) + v45.f32[0]));
            v45.f32[1] = v42[v46];
            v43.f32[1] = v44;
            v47 = vdiv_f32(vsub_f32(v45, v43), vdup_lane_s32(*&v8, 0));
            *&v8 = vbsl_s8(vcgt_f32(_D11, v47), _D11, vbsl_s8(vcgt_f32(v47, _D12), _D12, v47));
            v13 = __src;
            a2 = v65;
            a1 = v66;
            v12 = v67;
            v24 = v68;
            goto LABEL_55;
          }

          goto LABEL_80;
        }

        v37 = &unk_255C3F8C4;
        v38 = 384;
        do
        {
          v39 = *(v37 - 1) + v23;
          v40 = *v37 + v14;
          v41 = v16 < v39 || v17 < v40;
          if (!v41 && v28[v39 * v26 + v40 * v27] >= v25)
          {
            v32 = 0;
            if (a2)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }

          v37 += 2;
          v38 -= 8;
        }

        while (v38);
        v32 = 1;
        if (!a2)
        {
          goto LABEL_43;
        }

LABEL_39:
        if (v16 >= (v23 + 1))
        {
          if (v17 < (v14 + 1))
          {
LABEL_43:
            *&v8 = 0;
            if (!v32)
            {
              goto LABEL_11;
            }

LABEL_55:
            v48.f32[0] = v23;
            v48.f32[1] = v14;
            v49 = vadd_f32(*&v8, v48);
            v50 = v5[2];
            if (v12 < v50)
            {
              *v12++ = v49;
            }

            else
            {
              v51 = v12 - v13;
              v52 = (v12 - v13) >> 3;
              v53 = v52 + 1;
              if ((v52 + 1) >> 61)
              {
                *v5 = v13;
                sub_255A7B4E8();
              }

              __srca = v13;
              v54 = v50 - v13;
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

                *v5 = __srca;
                sub_255A7B590();
              }

              *(8 * v52) = v49;
              memcpy(0, __srca, v51);
              v5[1] = 8 * v52 + 8;
              v5[2] = 0;
              v13 = 0;
              a2 = v65;
              a1 = v66;
              v12 = (8 * v52 + 8);
              v24 = v68;
            }

            v5[1] = v12;
            goto LABEL_11;
          }

          v67 = v12;
          if (v16 < (v23 - 1))
          {
            *&v8 = 0;
            a2 = v65;
            a1 = v66;
            v24 = v68;
            if (!v32)
            {
              goto LABEL_11;
            }

            goto LABEL_55;
          }

          if (v17 < (v14 - 1))
          {
            a2 = v65;
            a1 = v66;
            v24 = v68;
            *&v8 = 0;
            if (!v32)
            {
              goto LABEL_11;
            }

            goto LABEL_55;
          }

          __src = v13;
          v56 = *(v66 + 2);
          v60 = HIDWORD(v56);
          if (HIDWORD(v56) == 1431655765)
          {
            sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
            v59 = v56;
            if (byte_27F7DD630 == 1)
            {
              if (byte_27F7DD638 != 1)
              {
                goto LABEL_77;
              }

              v58 = qword_27F7DD608;
              v57 = *algn_27F7DD610;
              if (qword_27F7DD608 == *algn_27F7DD610)
              {
                goto LABEL_77;
              }

              do
              {
LABEL_75:
                (*v58)(*(v58 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
                v58 += 16;
              }

              while (v58 != v57);
              if (byte_27F7DD630)
              {
LABEL_77:
                v5 = v63;
                qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
                LODWORD(v56) = v59;
                goto LABEL_78;
              }
            }

            else
            {
              v58 = qword_27F7DD608;
              v57 = *algn_27F7DD610;
              if (qword_27F7DD608 != *algn_27F7DD610)
              {
                goto LABEL_75;
              }
            }

LABEL_84:
            *v63 = __src;
            abort();
          }

LABEL_78:
          if (v32)
          {
            v42 = &v28[v26 * (v23 - 1) + v27 * v64];
            *&v8 = v42[(v60 + v56)];
            v43.f32[0] = v42[v60];
            v44 = v42[v56];
            v45.f32[0] = v42[(v60 + 2 * v56)];
            v46 = v56 + 2 * v60;
            goto LABEL_54;
          }

LABEL_80:
          v13 = __src;
          a2 = v65;
          a1 = v66;
          v12 = v67;
          v24 = v68;
          goto LABEL_11;
        }

        *&v8 = 0;
        if (v32)
        {
          goto LABEL_55;
        }

LABEL_11:
        ++v15;
        ++v23;
      }

      while (v15 != v24);
      *v5 = v13;
      v10 = DWORD2(v73);
      v15 = &v62[HIDWORD(v74)];
      ++v14;
    }

    while (v15 != v61);
  }
}

void sub_255B74554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, char a27)
{
  *a17 = a26;
  sub_255B0A26C(&a27);
  if (a26)
  {
    a17[1] = a26;
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_255B74720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_255A7F5A0(va2);
  std::__shared_weak_count::~__shared_weak_count(v4);
  operator delete(v6);
  sub_255A7F5A0(va1);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v2, v3);
  _Unwind_Resume(a1);
}

void sub_255B747D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
  v10 = (*(***(a1 + 8) + 24))(**(a1 + 8));
  v11 = v10;
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 2);
  v30 = vcvtps_u32_f32(v12 / v10);
  if (!v30)
  {
    return;
  }

  if (v12 % v10)
  {
    v13 = v12 % v10;
  }

  else
  {
    v13 = v10;
  }

  if (v13 == -1)
  {
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 2);
  }

  else
  {
    v14 = v13;
  }

  sub_255B7AA1C((a2 + 32), v14, &__p);
  (*(***(v8 + 8) + 40))(v31);
  v29 = a5;
  v28 = v11;
  if ((sub_255B95DE4(a5, v31) & 1) == 0)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/ATUDescriptorExtractor.cpp", 81, "append_ret", 0xAuLL, "Append descriptors failed", 0x19uLL, sub_255C101E0);
    v15 = a4;
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "append_ret", 10, "Append descriptors failed", 25);
        a4 = v15;
        goto LABEL_17;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_41;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "append_ret", 10, "Append descriptors failed", 25);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_41:
    abort();
  }

LABEL_17:
  if (v32 != -1)
  {
    (off_2867D0390[v32])(&v35, v31);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v18 = v29;
  if (v30 != 1)
  {
    v19 = 1;
    while (1)
    {
      if (v11 == -1)
      {
        v20 = -v13 - 0x3333333333333333 * ((a3[1] - *a3) >> 2);
      }

      else
      {
        v20 = v11;
      }

      v21 = *a3 + 20 * v13;
      sub_255B7AA1C((a2 + 32), v20, &__p);
      (*(***(v8 + 8) + 40))(v31);
      if (sub_255B95DE4(v18, v31))
      {
        goto LABEL_37;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/ATUDescriptorExtractor.cpp", 81, "append_ret", 0xAuLL, "Append descriptors failed", 0x19uLL, sub_255C101E0);
      v22 = a3;
      v23 = a2;
      v24 = v8;
      v25 = a4;
      if (byte_27F7DD630 != 1)
      {
        break;
      }

      if (byte_27F7DD638 == 1)
      {
        v26 = qword_27F7DD608;
        v27 = *algn_27F7DD610;
        if (qword_27F7DD608 != *algn_27F7DD610)
        {
          goto LABEL_34;
        }
      }

LABEL_36:
      v18 = v29;
      qword_27F7DD620(*algn_27F7DD628, "append_ret", 10, "Append descriptors failed", 25);
      a4 = v25;
      v8 = v24;
      a2 = v23;
      a3 = v22;
      v11 = v28;
LABEL_37:
      if (v32 != -1)
      {
        (off_2867D0390[v32])(&v35, v31);
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      v13 += v11;
      if (++v19 == v30)
      {
        return;
      }
    }

    v26 = qword_27F7DD608;
    v27 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_41;
    }

    do
    {
LABEL_34:
      (*v26)(*(v26 + 8), "append_ret", 10, "Append descriptors failed", 25);
      v26 += 16;
    }

    while (v26 != v27);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }
}

void sub_255B74C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_255A7944C(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_255B74CE4(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_2867C9258;
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 16))(v1);
    return v2;
  }

  return result;
}

void sub_255B74D3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *a1 = &unk_2867C9258;
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x259C49320);
}

void sub_255B74DD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C39E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B74E50(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void sub_255B75D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (*(v57 + 224) == 1 && *(v57 + 223) < 0)
  {
    operator delete(*v60);
  }

  if (*(v57 + 176) == 1 && *(v57 + 175) < 0)
  {
    operator delete(*v59);
  }

  *v61 = v58;
  sub_255A829E0(v57 + 32);
  std::__shared_weak_count::~__shared_weak_count(v57);
  operator delete(v64);
  sub_255B5C724((v62 - 128));
  sub_255A81798(&a23);
  sub_255A7F5A0(&a12);
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_255A7F5A0(&a9);
  sub_255B5F5D4(v55);
  sub_255B77530(v56);
  _Unwind_Resume(a1);
}

uint64_t sub_255B76014(uint64_t a1)
{
  v1 = **(a1 + 176);
  result = *(v1 + 8);
  v3 = *(v1 + 16) | 0x100000000;
  return result;
}

void sub_255B76034(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 24))(a1);
  v3 = *a2;
  operator new();
}

void sub_255B76168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B6286C(va);
  _Unwind_Resume(a1);
}

void sub_255B7617C(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4)
{
  if (a4 != (*(*a1 + 24))(a1))
  {
    v8 = (*(*a1 + 24))(a1);
    if (a4 == v8)
    {
      if (a4)
      {
        if (a4 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v8)
      {
        if (v8 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_16:
        sub_255B7AE14();
      }

      if (a4 == -1)
      {
        v9 = -24;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_15;
        }

        v9 = 24 * a4;
      }

      memmove(0, a3, v9);
    }
  }

LABEL_15:
  (*(*a1 + 24))(a1);
  v10 = *(a2 + 32);
  operator new();
}

void sub_255B77078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_255B61C44(&a51);
  j_nullsub_87_0(&a11);
  sub_255B708C4(&a67);
  sub_255A90668(&a70);
  sub_255B77704((v71 - 176));
  if (*(v71 - 121) < 0)
  {
    operator delete(*(v71 - 144));
    if (!v70)
    {
      goto LABEL_10;
    }
  }

  else if (!v70)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

  operator delete(v70);
  _Unwind_Resume(a1);
}

void *sub_255B77200(void *a1)
{
  *a1 = &unk_2867C9578;
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B77530((a1 + 1));
  return a1;
}

void sub_255B772EC(void *a1)
{
  *a1 = &unk_2867C9578;
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B77530((a1 + 1));

  JUMPOUT(0x259C49320);
}

void sub_255B77418(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D03C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B774B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D0410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B77530(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (v2[95] < 0)
      {
        operator delete(*(v2 + 9));
        if (v2[64] == 1)
        {
LABEL_14:
          v6 = *(v2 + 5);
          if (v6)
          {
            v7 = *(v2 + 6);
            v8 = *(v2 + 5);
            if (v7 != v6)
            {
              do
              {
                v9 = *(v7 - 1);
                v7 -= 3;
                if (v9 < 0)
                {
                  operator delete(*v7);
                }
              }

              while (v7 != v6);
              v8 = *(v2 + 5);
            }

            *(v2 + 6) = v6;
            operator delete(v8);
          }
        }
      }

      else if (v2[64] == 1)
      {
        goto LABEL_14;
      }

      v10 = *(v2 + 2);
      if (v10)
      {
        *(v2 + 3) = v10;
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_26:
      operator delete(*(a1 + 48));
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_27;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_27:
  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_255B77688(uint64_t result)
{
  if (*(result + 56) == 1)
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
  }

  return result;
}

void *sub_255B77704(void *result)
{
  *result = &unk_2867C51A8;
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

uint64_t sub_255B77798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v30[0]) = 0;
  v32 = 0;
  v6 = *(a3 + 24);
  if (v6 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = a4;
      sub_255A7E018(v30, *a3, *(a3 + 8));
      a4 = v7;
    }

    else
    {
      *v30 = *a3;
      v31 = *(a3 + 16);
    }

    v32 = 1;
  }

  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  v29[0] = &unk_2867CE598;
  v29[1] = v9;
  v29[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    LOBYTE(v54) = 0;
    v56 = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v54) = 0;
    v56 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    sub_255A7E018(&v54, v30[0], v30[1]);
  }

  else
  {
    v54 = *v30;
    v55 = v31;
  }

  v56 = 1;
LABEL_14:
  sub_255B78468(v57, a2, &v54);
  if (v56 == 1 && SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  LOBYTE(__p[0]) = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  LODWORD(v52) = *(a2 + 120);
  v33 = &unk_2867C7F40;
  sub_255A81DE0(&v34, v57);
  v33 = &unk_2867C7EA0;
  sub_255B5C60C(&v45, __p);
  v48 = v52;
  v49 = v53;
  if (v51 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v64 == 1)
  {
    v10 = v62;
    if (v62)
    {
      v11 = v63;
      v12 = v62;
      if (v63 != v62)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v62;
      }

      v63 = v10;
      operator delete(v12);
    }
  }

  v14 = v60;
  if (v60)
  {
    v15 = v61;
    v16 = v60;
    if (v61 != v60)
    {
      do
      {
        v17 = v15;
        v15 -= 4;
        if (*(v17 - 8) == 1 && *(v17 - 9) < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v60;
    }

    v61 = v14;
    operator delete(v16);
  }

  __p[0] = &v59;
  sub_255A8250C(__p);
  if (v58 < 0)
  {
    operator delete(v57[2]);
  }

  v18 = v34;
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v18;
  *(a1 + 16) = v35;
  *(a1 + 24) = *v36;
  *(a1 + 40) = v37;
  v36[0] = 0;
  v36[1] = 0;
  v19 = v41;
  *(a1 + 64) = v39;
  *(a1 + 48) = v38;
  v39 = 0;
  v37 = 0;
  v38 = 0uLL;
  *(a1 + 72) = v40;
  *(a1 + 88) = v19;
  v40 = 0uLL;
  v41 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v20 = v44;
  if (v44 == 1)
  {
    *(a1 + 96) = v42;
    *(a1 + 112) = v43;
    v43 = 0;
    v42 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7EA0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v47 == 1)
  {
    *(a1 + 128) = v45;
    *(a1 + 144) = v46;
    v46 = 0;
    v45 = 0uLL;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = v48;
  *(a1 + 168) = v49;
  v33 = &unk_2867C7F40;
  if (v20)
  {
    v21 = v42;
    if (v42)
    {
      v22 = *(&v42 + 1);
      if (*(&v42 + 1) == v42)
      {
        *(&v42 + 1) = v42;
        operator delete(v42);
        v23 = v40;
        if (!v40)
        {
          goto LABEL_48;
        }

LABEL_58:
        v26 = *(&v40 + 1);
        v27 = v23;
        if (*(&v40 + 1) != v23)
        {
          do
          {
            v28 = v26;
            v26 -= 4;
            if (*(v28 - 8) == 1 && *(v28 - 9) < 0)
            {
              operator delete(*v26);
            }
          }

          while (v26 != v23);
          v27 = v40;
        }

        *(&v40 + 1) = v23;
        operator delete(v27);
        v57[0] = &v38;
        sub_255A8250C(v57);
        if (SHIBYTE(v37) < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      do
      {
        v25 = *(v22 - 1);
        v22 -= 3;
        if (v25 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      *(&v42 + 1) = v21;
      operator delete(v42);
      v23 = v40;
      if (v40)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_48:
  v57[0] = &v38;
  sub_255A8250C(v57);
  if (SHIBYTE(v37) < 0)
  {
LABEL_49:
    operator delete(v36[0]);
  }

LABEL_50:
  sub_255A7F5A0(v29);
  if (v32 == 1 && SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  *a1 = &unk_2867C90A8;
  return a1;
}

void sub_255B77C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45)
{
  if (*(v45 - 200) == 1 && *(v45 - 201) < 0)
  {
    operator delete(*(v45 - 224));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255B77D20(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255B77DA0(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B77E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v27[0]) = 0;
  v29 = 0;
  v6 = *(a3 + 24);
  if (v6 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = a4;
      sub_255A7E018(v27, *a3, *(a3 + 8));
      a4 = v7;
    }

    else
    {
      *v27 = *a3;
      v28 = *(a3 + 16);
    }

    v29 = 1;
  }

  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  v24 = &unk_2867CE598;
  v25 = v9;
  v26 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    LOBYTE(v61) = 0;
    v63 = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v61) = 0;
    v63 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_255A7E018(&v61, v27[0], v27[1]);
  }

  else
  {
    v61 = *v27;
    v62 = v28;
  }

  v63 = 1;
LABEL_14:
  sub_255B78468(v64, a2, &v61);
  if (v63 == 1 && SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (*(a2 + 120))
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/ATUDescriptorModelDefinition.cpp", 77, "param.device == DeviceType::Any", 0x1FuLL, "Only DeviceType::Any supported for EspressoV2", 0x2DuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_25:
        qword_27F7DD620(*algn_27F7DD628, "param.device == DeviceType::Any", 31, "Only DeviceType::Any supported for EspressoV2", 45);
        goto LABEL_26;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    do
    {
      (*v10)(*(v10 + 8), "param.device == DeviceType::Any", 31, "Only DeviceType::Any supported for EspressoV2", 45);
      v10 += 16;
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_25;
    }

LABEL_64:
    abort();
  }

LABEL_26:
  LOBYTE(v51[0]) = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  LOBYTE(__p) = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v50[0] = &unk_2867CE598;
  v50[1] = v25;
  v50[2] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255A816F0(v30, v64, v51, v50);
  sub_255A7F5A0(v50);
  if (v58 == 1 && v57 < 0)
  {
    operator delete(__p);
  }

  if (v53 == 1 && v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v71 == 1)
  {
    v12 = v69;
    if (v69)
    {
      v13 = v70;
      v14 = v69;
      if (v70 != v69)
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
        v14 = v69;
      }

      v70 = v12;
      operator delete(v14);
    }
  }

  v16 = v67;
  if (v67)
  {
    v17 = v68;
    v18 = v67;
    if (v68 != v67)
    {
      do
      {
        v19 = v17;
        v17 -= 4;
        if (*(v19 - 8) == 1 && *(v19 - 9) < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v67;
    }

    v68 = v16;
    operator delete(v18);
  }

  v51[0] = &v66;
  sub_255A8250C(v51);
  if (v65 < 0)
  {
    operator delete(v64[2]);
  }

  v20 = v30[1];
  *a1 = &unk_2867C7F40;
  *(a1 + 8) = v20;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 40) = v33;
  v32 = 0uLL;
  *(a1 + 48) = v34;
  v21 = v37;
  *(a1 + 64) = v35;
  v35 = 0;
  v33 = 0;
  v34 = 0uLL;
  *(a1 + 72) = v36;
  *(a1 + 88) = v21;
  v36 = 0uLL;
  v37 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (v40 == 1)
  {
    *(a1 + 96) = v38;
    *(a1 + 112) = v39;
    v39 = 0;
    v38 = 0uLL;
    *(a1 + 120) = 1;
  }

  *a1 = &unk_2867C7E20;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v43 == 1)
  {
    *(a1 + 128) = v41;
    *(a1 + 144) = v42;
    v42 = 0;
    v41 = 0uLL;
    *(a1 + 152) = 1;
  }

  v22 = v44;
  *(a1 + 176) = 0;
  *(a1 + 160) = v22;
  *(a1 + 200) = 0;
  if (v47 == 1)
  {
    *(a1 + 176) = v45;
    *(a1 + 192) = v46;
    v46 = 0;
    v45 = 0uLL;
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = v48;
  *(a1 + 216) = &unk_2867CE598;
  *(a1 + 224) = v49;
  v49 = 0uLL;
  sub_255A81854(v30);
  sub_255A7F5A0(&v24);
  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_2867C9080;
  return a1;
}

void sub_255B783A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  if (*(v53 - 200) == 1 && *(v53 - 201) < 0)
  {
    operator delete(*(v53 - 224));
  }

  sub_255A7F5A0(&a10);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_255B78430(uint64_t a1)
{
  sub_255A81798(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B78468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x277D85DE8];
  if (*(a2 + 47) < 0)
  {
    sub_255A7E018(&v59, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v59 = *(a2 + 24);
    v60 = *(a2 + 40);
  }

  v61 = 1;
  v62 = 17;
  v63 = 1;
  v64 = 1;
  v65 = 1;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 1;
  v71 = 1;
  v72 = 1;
  v73 = 1;
  v74 = 1;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v80 = 0;
  if (*(a2 + 71) < 0)
  {
    sub_255A7E018(&v37, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v37 = *(a2 + 48);
    v38 = *(a2 + 64);
  }

  v39 = 1;
  v40 = 65;
  v41 = 1;
  v42 = 1;
  v43 = 1;
  v44 = 1;
  v45 = 1;
  v46 = 1;
  v47 = 1;
  v48 = 6;
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  v58 = 0;
  sub_255A82028(v19, &v59);
  sub_255A82028(&__p, &v37);
  sub_255B5D5E8(v18, v19, 2uLL);
  if (v36 != 1)
  {
    goto LABEL_11;
  }

  if (v35 != &v34)
  {
    if (v35)
    {
      (*(*v35 + 40))();
    }

LABEL_11:
    if (v33 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  (*(*v35 + 32))(v35);
  if (v33 != 1)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v32 == &v31)
  {
    (*(*v32 + 32))(v32);
  }

  else if (v32)
  {
    (*(*v32 + 40))();
  }

LABEL_18:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (v27 != 1)
  {
LABEL_25:
    if (v24 != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v26 != &v25)
  {
    if (v26)
    {
      (*(*v26 + 40))();
    }

    goto LABEL_25;
  }

  (*(*v26 + 32))(v26);
  if (v24 != 1)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v23 == &v22)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

LABEL_32:
  if (v21 == 1 && SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (*(a2 + 95) < 0)
  {
    sub_255A7E018(v19, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    *v19 = *(a2 + 72);
    v20 = *(a2 + 88);
  }

  v21 = 1;
  sub_255B5D898(&v16, v19, 1uLL);
  if (v21 == 1 && SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  sub_255B99BC0(a2 + 128, v19);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a3 + 24) != 1)
  {
    a3 = a2 + 96;
    if (*(a2 + 119) < 0)
    {
      v6 = (a2 + 104);
      goto LABEL_47;
    }

LABEL_45:
    *(a1 + 16) = *a3;
    *(a1 + 32) = *(a3 + 16);
    goto LABEL_48;
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  v6 = (a3 + 8);
LABEL_47:
  sub_255A7E018((a1 + 16), *a3, *v6);
LABEL_48:
  sub_255B5DB04((a1 + 40), v18);
  sub_255A826BC((a1 + 64), &v16);
  sub_255A82818((a1 + 88), v19);
  *(a1 + 112) = 1;
  v7 = v19[0];
  if (v19[0])
  {
    v8 = v19[1];
    v9 = v19[0];
    if (v19[1] != v19[0])
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
      v9 = v19[0];
    }

    v19[1] = v7;
    operator delete(v9);
  }

  v11 = v16;
  if (v16)
  {
    v12 = v17;
    v13 = v16;
    if (v17 != v16)
    {
      do
      {
        v14 = v12;
        v12 -= 4;
        if (*(v14 - 8) == 1 && *(v14 - 9) < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v16;
    }

    v17 = v11;
    operator delete(v13);
  }

  v19[0] = v18;
  sub_255A8250C(v19);
  if (v58 != 1)
  {
LABEL_69:
    if (v55 != 1)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

  if (v57 != &v56)
  {
    if (v57)
    {
      (*(*v57 + 40))();
    }

    goto LABEL_69;
  }

  (*(*v57 + 32))(v57);
  if (v55 != 1)
  {
    goto LABEL_76;
  }

LABEL_70:
  if (v54 == &v53)
  {
    (*(*v54 + 32))(v54);
  }

  else if (v54)
  {
    (*(*v54 + 40))();
  }

LABEL_76:
  if (v39 == 1 && SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (v80 != 1)
  {
LABEL_83:
    if (v77 != 1)
    {
      goto LABEL_90;
    }

    goto LABEL_84;
  }

  if (v79 != &v78)
  {
    if (v79)
    {
      (*(*v79 + 40))(v79);
    }

    goto LABEL_83;
  }

  (*(*v79 + 32))(v79);
  if (v77 != 1)
  {
    goto LABEL_90;
  }

LABEL_84:
  if (v76 == &v75)
  {
    (*(*v76 + 32))(v76);
  }

  else if (v76)
  {
    (*(*v76 + 40))(v76);
  }

LABEL_90:
  if (v61 == 1 && SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_255B78BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B59860(&a17);
  sub_255B72834(&a10);
  a17 = &a13;
  sub_255A8250C(&a17);
  sub_255B5D4B4(&a59);
  sub_255B5D4B4(v59 - 224);
  _Unwind_Resume(a1);
}

void sub_255B78C54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x255B78C2CLL);
}

void sub_255B78C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B5D4B4(v59 + 168);
  sub_255B5D4B4(&a17);
  sub_255B5D4B4(&a59);
  sub_255B5D4B4(v60 - 224);
  _Unwind_Resume(a1);
}

void sub_255B78CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_255B5D4B4(&a59);
  sub_255B5D4B4(v59 - 224);
  _Unwind_Resume(a1);
}

void sub_255B78CC8(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 30);
  if (v5 == 2)
  {
    v18 = a1[1];
    v33 = *a1;
    v34 = v18;
    v35 = a1[2];
    v36 = *(a1 + 12);
    LOBYTE(v37) = 0;
    v45 = 0;
    if (*(a1 + 112) == 1)
    {
      v37 = &unk_2867C5710;
      v19 = *(a1 + 8);
      v20 = *(a1 + 9);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v21 = *(a1 + 12);
        v22 = *(a1 + 26);
        v23 = *(a1 + 54);
      }

      v38 = v19;
      v39 = v20;
      v40 = *(a1 + 10);
      v41 = *(a1 + 22);
      v42 = v21;
      v43 = v22;
      v44 = v23;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v45 = 1;
    }

    if (sub_255B798D8(&v33))
    {
      goto LABEL_42;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 55, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v27 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_41:
        qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_42:
        sub_255B7B450(&v33, a2, &v31);
        goto LABEL_58;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v27 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v26 += 16;
    }

    while (v26 != v27);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_41;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 58, &unk_255C2500B, 0, "OutputDataVariant copy not implemented", 0x26uLL, sub_255C101E0);
    }

    else
    {
      v6 = a1[1];
      v33 = *a1;
      v34 = v6;
      v35 = a1[2];
      v36 = *(a1 + 12);
      LOBYTE(v37) = 0;
      v45 = 0;
      if (*(a1 + 112) == 1)
      {
        v37 = &unk_2867C5710;
        v7 = *(a1 + 8);
        v8 = *(a1 + 9);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 26);
          v11 = *(a1 + 54);
        }

        v38 = v7;
        v39 = v8;
        v40 = *(a1 + 10);
        v41 = *(a1 + 22);
        v42 = v9;
        v43 = v10;
        v44 = v11;
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v45 = 1;
      }

      if (sub_255B7946C(&v33))
      {
        goto LABEL_57;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 47, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v28 = qword_27F7DD608, v29 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_56:
          qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_57:
          sub_255B7AF78(&v33, a2, &v31);
          goto LABEL_58;
        }
      }

      else
      {
        v28 = qword_27F7DD608;
        v29 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_64;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
        v28 += 16;
      }

      while (v28 != v29);
      if (byte_27F7DD630)
      {
        goto LABEL_56;
      }
    }

LABEL_64:
    abort();
  }

  v12 = a1[1];
  v33 = *a1;
  v34 = v12;
  v35 = a1[2];
  v36 = *(a1 + 12);
  LOBYTE(v37) = 0;
  v45 = 0;
  if (*(a1 + 112) == 1)
  {
    v37 = &unk_2867C5710;
    v13 = *(a1 + 8);
    v14 = *(a1 + 9);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = *(a1 + 12);
      v16 = *(a1 + 26);
      v17 = *(a1 + 54);
    }

    v38 = v13;
    v39 = v14;
    v40 = *(a1 + 10);
    v41 = *(a1 + 22);
    v42 = v15;
    v43 = v16;
    v44 = v17;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v45 = 1;
  }

  if (sub_255B79664(&v33))
  {
    goto LABEL_27;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/DescriptorExtraction/src/DescriptorExtractionCommonUtil.cpp", 51, "IsContiguousMemory(data_view)", 0x1DuLL, "Data is not contiguous", 0x16uLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_64;
    }

    do
    {
LABEL_24:
      (*v24)(*(v24 + 8), "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
      v24 += 16;
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_26;
  }

  if (byte_27F7DD638 == 1)
  {
    v24 = qword_27F7DD608;
    v25 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  qword_27F7DD620(*algn_27F7DD628, "IsContiguousMemory(data_view)", 29, "Data is not contiguous", 22);
LABEL_27:
  sub_255B7BD4C(&v33, a2, &v31);
LABEL_58:
  *a3 = v31;
  *(a3 + 16) = v32;
  *(a3 + 24) = 1;
  *(a3 + 32) = 64;
  *(a3 + 40) = 1;
  if (v45)
  {
    v30 = v39;
    if (v39)
    {
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }
    }
  }
}

void sub_255B793B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B793CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B793E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B793F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B79408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B7941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

void sub_255B79430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B79444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255B79458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B7985C(va);
  _Unwind_Resume(a1);
}

BOOL sub_255B7946C(uint64_t a1)
{
  sub_255AA0880(a1, &v17);
  v2 = *&v18[4];
  if (HIDWORD(*&v18[4]))
  {
    v3 = *&v18[4] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (HIDWORD(*&v18[12]))
  {
    v5 = *&v18[12] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  v7 = v4 | v6;
  if ((v4 | v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = *&v18[12];
  }

  if (HIDWORD(v8) * v20 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_32:
    abort();
  }

LABEL_25:
  sub_255AA0880(a1, &v17);
  v13 = 0;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v18))) & 1) == 0 && *&v18[16])
  {
    v14.i64[0] = -1;
    v14.i64[1] = -1;
    v13 = (vaddvq_s32(vmulq_s32(v19, vaddq_s32(*v18, v14))) + v20 * (*&v18[16] - 1) + 1);
  }

  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v2;
  }

  return v13 == v8 * v15 * HIDWORD(v15) * HIDWORD(v8);
}

BOOL sub_255B79664(uint64_t a1)
{
  sub_255B62CB0(a1, &v17);
  v2 = *&v18[4];
  if (HIDWORD(*&v18[4]))
  {
    v3 = *&v18[4] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (HIDWORD(*&v18[12]))
  {
    v5 = *&v18[12] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  v7 = v4 | v6;
  if ((v4 | v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = *&v18[12];
  }

  if (HIDWORD(v8) * v20 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_32:
    abort();
  }

LABEL_25:
  sub_255B62CB0(a1, &v17);
  v13 = 0;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v18))) & 1) == 0 && *&v18[16])
  {
    v14.i64[0] = -1;
    v14.i64[1] = -1;
    v13 = (vaddvq_s32(vmulq_s32(v19, vaddq_s32(*v18, v14))) + v20 * (*&v18[16] - 1) + 1);
  }

  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v2;
  }

  return v13 == v8 * v15 * HIDWORD(v15) * HIDWORD(v8);
}