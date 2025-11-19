uint64_t sub_255BACF40(_DWORD *a1)
{
  if (*a1)
  {
    return 1;
  }

  if ((*a1 & 2) != 0)
  {
    return 2;
  }

  return 4 * ((*a1 & 0xC) != 0);
}

uint64_t sub_255BACF78(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = 1;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    return v2;
  }

  if ((v1 & 2) != 0)
  {
    v2 = 2;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    return v2;
  }

  if ((v1 & 0xC) == 0)
  {
    return 0;
  }

  v2 = 4;
  if ((v1 & 0x10) != 0)
  {
    return v2;
  }

LABEL_7:
  if ((v1 & 0x20) != 0)
  {
    return 2 * v2;
  }

  if ((v1 & 0x40) == 0)
  {
    return 0;
  }

  return ((v1 >> 4) & 4) * v2;
}

void *sub_255BACFF4(void *a1, uint64_t *a2)
{
  *a1 = &unk_2867C7F40;
  sub_255A81DE0((a1 + 1), a2);
  return a1;
}

void *sub_255BAD038(void *a1)
{
  *a1 = &unk_2867C7F40;
  sub_255A829E0((a1 + 1));
  return a1;
}

void *sub_255BAD084(void *result)
{
  v1 = result[1];
  *result = &unk_2867C7F68;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_255BAD100(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v11 = v10;
      (*(*v5 + 24))(v5, v10);
      v5 = v11;
      v12 = v9;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = (*(*v5 + 16))(v5);
      v11 = v5;
      v12 = a1;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if (v5 == v10)
    {
      v14 = v13;
      (*(*v5 + 24))(v5, v13);
LABEL_10:
      sub_255BAE354(v7, a2);
      v15 = v12;
      v6 = &v15;
      if (v14)
      {
        if (v14 == v13)
        {
          v17 = &v16;
          (*(*v14 + 24))();
LABEL_15:
          __p = *v7;
          v19 = v8;
          v7[1] = 0;
          v8 = 0;
          v7[0] = 0;
          operator new();
        }

        v6 = &v12;
        v17 = v14;
      }

      v6[4] = 0;
      goto LABEL_15;
    }

    v5 = (*(*v5 + 16))(v5);
  }

  else
  {
    v11 = 0;
    v12 = a1;
  }

LABEL_9:
  v14 = v5;
  goto LABEL_10;
}

void sub_255BADB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (!atomic_fetch_add(v29, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v28 + 16))(v28);
  }

  sub_255BADD84(&a28);
  sub_255B7FB8C(&a11);
  sub_255BADBE0(&a23);
  sub_255BADBE0(&a18);
  _Unwind_Resume(a1);
}

void sub_255BADB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_255BADBE0(va1);
  sub_255BADBE0(va);
  _Unwind_Resume(a1);
}

void sub_255BADBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255BADBE0(va);
  _Unwind_Resume(a1);
}

void sub_255BADBC8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255A7B4D4(exception_object);
}

uint64_t sub_255BADBE0(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_255BADC70()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Instance does not support view returns");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_255BADCCC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Model does not support runtime configurations");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_255BADD28()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Model does not support runtime configurations");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *sub_255BADD84(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 128;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_2867D0AD8[v6])(&v9, v3 - 128);
        }

        *(v3 - 8) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v7 = a1[4];
  if (v7 == a1 + 1)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  return a1;
}

void sub_255BADE8C(uint64_t a1)
{
  *a1 = &unk_2867C3A50;
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 184);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 128;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_2867D0AD8[v6])(&v8, v3 - 128);
        }

        *(v3 - 8) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *(a1 + 184);
    }

    *(a1 + 192) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 176);
  if (v7 == a1 + 152)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);
}

void sub_255BADFEC(uint64_t a1)
{
  sub_255BADE8C(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BAE024(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void sub_255BAE060(uint64_t a1)
{
  (*(**(a1 + 144) + 24))(v8);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_255A93CCC();
  }

  (*(*v2 + 48))(v2, v8);
  if (v12 == 1)
  {
    v3 = __p;
    if (__p)
    {
      v4 = v11;
      v5 = __p;
      if (v11 != __p)
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
        v5 = __p;
      }

      v11 = v3;
      operator delete(v5);
    }
  }

  v8[0] = &unk_2867C51A8;
  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__assoc_sub_state::set_value(a1);
}

void sub_255BAE208(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_255A977C8(&v30);
  __cxa_begin_catch(a1);
  std::current_exception();
  v28.__ptr_ = &v29;
  std::__assoc_sub_state::set_exception(v26, v28);
  std::exception_ptr::~exception_ptr(&v29);
  __cxa_end_catch();
}

void sub_255BAE25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_255BAE278(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x259C49040]();
    MEMORY[0x259C49320](v8, 0x20C4093837F09);
  }

  MEMORY[0x259C49320](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void sub_255BAE340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B89C98(va);
  _Unwind_Resume(a1);
}

void *sub_255BAE354(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255BAE460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B86D20(va);
  _Unwind_Resume(a1);
}

void sub_255BAE474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_255B854A0(v4);
  sub_255BA8138(va1);
  *(v2 + 8) = v3;
  sub_255B86D20(va);
  _Unwind_Resume(a1);
}

void sub_255BAE49C(uint64_t a1)
{
  *a1 = &unk_2867C2EF8;
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 184);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 128;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_2867D0AD8[v6])(&v8, v3 - 128);
        }

        *(v3 - 8) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *(a1 + 184);
    }

    *(a1 + 192) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 176);
  if (v7 == a1 + 152)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);
}

void sub_255BAE5FC(uint64_t a1)
{
  sub_255BAE49C(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BAE634(uint64_t a1)
{
  (*(**(a1 + 144) + 24))(v8);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_255A93CCC();
  }

  (*(*v2 + 48))(v2, v8);
  if (v12 == 1)
  {
    v3 = __p;
    if (__p)
    {
      v4 = v11;
      v5 = __p;
      if (v11 != __p)
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
        v5 = __p;
      }

      v11 = v3;
      operator delete(v5);
    }
  }

  v8[0] = &unk_2867C51A8;
  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__assoc_sub_state::set_value(a1);
}

void sub_255BAE7DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_255A977C8(&v30);
  __cxa_begin_catch(a1);
  std::current_exception();
  v28.__ptr_ = &v29;
  std::__assoc_sub_state::set_exception(v26, v28);
  std::exception_ptr::~exception_ptr(&v29);
  __cxa_end_catch();
}

void sub_255BAE830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t *sub_255BAE84C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  v6 = *a3;
  *a3 = 0;
  a1[2] = v6;
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    return a1;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Model.cpp", 40, "p_blueprint != nullptr", 0x16uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_13;
    }

    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = qword_27F7DD608;
    v8 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_23;
    }
  }

  do
  {
    (*v7)(*(v7 + 8), "p_blueprint != nullptr", 22, &unk_255C2500B, 0);
    v7 += 16;
  }

  while (v7 != v8);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  qword_27F7DD620(*algn_27F7DD628, "p_blueprint != nullptr", 22, &unk_255C2500B, 0);
  if (!a1[2])
  {
LABEL_14:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Model.cpp", 41, "instance_ != nullptr", 0x14uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "instance_ != nullptr", 20, &unk_255C2500B, 0);
        return a1;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_23;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "instance_ != nullptr", 20, &unk_255C2500B, 0);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_23:
    abort();
  }

  return a1;
}

void sub_255BAEA90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_255A7A508(v1);
  _Unwind_Resume(a1);
}

BOOL sub_255BAEADC(unsigned int a1)
{
  sub_255A82C84(__p);
  result = sub_255BAEB68(__p, a1);
  if (v6 == 1 && v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_255BAEB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_255BAEB68(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if (*(a1 + 23) < 0)
  {
    v3 = a2;
    sub_255A7E018(__p, *a1, *(a1 + 8));
    a2 = v3;
  }

  else
  {
    *__p = *a1;
    v17 = *(a1 + 16);
  }

  v4 = HIBYTE(v17);
  if (v17 >= 0)
  {
    v5 = HIBYTE(v17);
  }

  else
  {
    v5 = __p[1];
  }

  if (v5 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v5 >= v6)
  {
    v5 = v6;
  }

  if (v5 == 1)
  {
    v7 = __p[0];
    v8 = __p;
    if (v17 < 0)
    {
      v8 = __p[0];
    }

    if (*v8 == 104)
    {
      if (SHIBYTE(v17) < 0)
      {
        v4 = __p[1];
        if (__p[1])
        {
LABEL_24:
          v9 = (v4 - 1);
          if ((v4 - 1) >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_255A7BCA8();
          }

          v10 = a2;
          if (v9 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v4 - 1;
          if (v4 != 1)
          {
            memmove(&__dst, v7 + 1, v9);
          }

          __dst.__r_.__value_.__s.__data_[v9] = 0;
          v11 = std::stoi(&__dst, 0, 10);
          v12 = v10;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            v13 = v11;
            operator delete(__dst.__r_.__value_.__l.__data_);
            v11 = v13;
            v12 = v10;
          }

          result = v11 >= v12;
          if (v17 < 0)
          {
            goto LABEL_33;
          }

          return result;
        }
      }

      else if (HIBYTE(v17))
      {
        v7 = __p;
        goto LABEL_24;
      }

      sub_255A93C24();
    }
  }

  result = 0;
  if (v17 < 0)
  {
LABEL_33:
    v14 = result;
    operator delete(__p[0]);
    return v14;
  }

  return result;
}

void sub_255BAED58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_255BAEDA4(unint64_t __val@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  if (0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 48) - v4) >> 3) <= __val)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = 0;
  std::to_string(&v17, __val);
  __p = v17;
  v6 = std::string::insert(&__p, 0, "input__", 7uLL);
  v7 = (v4 + 168 * __val);
  v8 = v6->__r_.__value_.__r.__words[0];
  v18[0] = v6->__r_.__value_.__l.__size_;
  *(v18 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v9 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (*(v7 + 24) == 1)
  {
    if (*(v7 + 23) < 0)
    {
      sub_255A7E018(v15, *v7, *(v7 + 1));
    }

    else
    {
      v10 = *v7;
      *&v15[1] = *(v7 + 2);
      v15[0] = v10;
    }

    *a3 = v15[0];
    *(a3 + 16) = *&v15[1];
    memset(v15, 0, 24);
    *(a3 + 24) = 1;
    if (v9 < 0)
    {
      operator delete(v8);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v15[0] = v8;
  *(&v15[0] + 1) = v18[0];
  *(v15 + 15) = *(v18 + 7);
  BYTE7(v15[1]) = v9;
  *a3 = v15[0];
  *(a3 + 16) = *&v15[1];
  memset(v15, 0, 24);
  *(a3 + 24) = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255BAEF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAEFC0(unint64_t __val@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 64);
  if (__val >= (*(a2 + 72) - v4) >> 5)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = 0;
  std::to_string(&v17, __val);
  __p = v17;
  v6 = std::string::insert(&__p, 0, "output__", 8uLL);
  v7 = (v4 + 32 * __val);
  v8 = v6->__r_.__value_.__r.__words[0];
  v18[0] = v6->__r_.__value_.__l.__size_;
  *(v18 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v9 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (*(v7 + 24) == 1)
  {
    if (*(v7 + 23) < 0)
    {
      sub_255A7E018(v15, *v7, *(v7 + 1));
    }

    else
    {
      v10 = *v7;
      *&v15[1] = *(v7 + 2);
      v15[0] = v10;
    }

    *a3 = v15[0];
    *(a3 + 16) = *&v15[1];
    memset(v15, 0, 24);
    *(a3 + 24) = 1;
    if (v9 < 0)
    {
      operator delete(v8);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  *&v15[0] = v8;
  *(&v15[0] + 1) = v18[0];
  *(v15 + 15) = *(v18 + 7);
  BYTE7(v15[1]) = v9;
  *a3 = v15[0];
  *(a3 + 16) = *&v15[1];
  memset(v15, 0, 24);
  *(a3 + 24) = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255BAF17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAF1C0(uint64_t a1, unsigned int *a2)
{
  v3 = MEMORY[0x259C48FD0](a1, *a2);
  v4 = sub_255A7F9C8(v3, ".", 1);
  v5 = MEMORY[0x259C48FD0](v4, a2[1]);
  sub_255A7F9C8(v5, ".", 1);
  v6 = a2[2];

  JUMPOUT(0x259C48FD0);
}

void sub_255BAF224(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 39) < 0)
  {
    sub_255A7E018(v1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v1 = *(a1 + 16);
    v2 = *(a1 + 32);
  }

  DWORD2(v3) = 0;
  sub_255AA4C44();
}

void sub_255BB16FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  v64 = *a12;
  *a12 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  sub_255A82AF8(&a17);
  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  sub_255A8508C(v62 - 176);
  sub_255A8508C(v62 - 136);
  sub_255B606BC(&a51);
  _Unwind_Resume(a1);
}

void sub_255BB1EFC(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 + 35 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  v6 = a2;
  if (v4 + 35 > 0x16)
  {
    operator new();
  }

  qmemcpy(v31, "Error during creation of model at '", 35);
  if ((v3 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  memmove(&v31[2] + 3, a2, v4);
  *(&v31[2] + v4 + 3) = 0;
  v8 = SBYTE7(v31[1]);
  if ((SBYTE7(v31[1]) & 0x8000000000000000) != 0)
  {
    v8 = *(&v31[0] + 1);
    v9 = (*&v31[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v9 - *(&v31[0] + 1)) < 0xC)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&v31[1] & 0x7FFFFFFFFFFFFFFFuLL) < *(&v31[0] + 1) + 12 - v9)
      {
        sub_255A7BCA8();
      }

LABEL_14:
      operator new();
    }

    v10 = *&v31[0];
  }

  else
  {
    if ((SBYTE7(v31[1]) - 11) < 0xC)
    {
      goto LABEL_14;
    }

    v10 = v31;
  }

  v11 = v10 + v8;
  *v11 = *"', version: ";
  *(v11 + 2) = 540700271;
  v12 = v8 + 12;
  if (SBYTE7(v31[1]) < 0)
  {
    *(&v31[0] + 1) = v8 + 12;
  }

  else
  {
    BYTE7(v31[1]) = v12 & 0x7F;
  }

  *(v10 + v12) = 0;
  v31[2] = v31[0];
  v32 = *&v31[1];
  memset(v31, 0, 24);
  v15 = v6[3];
  v14 = (v6 + 3);
  v13 = v15;
  v16 = v14[23];
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 1);
  }

  v19 = std::string::append(&v31[2], v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v23 - __p.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v23)
      {
        sub_255A7BCA8();
      }

LABEL_31:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8238;
    v25 = size + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
      goto LABEL_31;
    }

    p_p = &__p;
    *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8238;
    v25 = v21 + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      *(&__p.__r_.__value_.__s + 23) = v25 & 0x7F;
      goto LABEL_36;
    }
  }

  __p.__r_.__value_.__l.__size_ = v25;
LABEL_36:
  p_p->__r_.__value_.__s.__data_[v25] = 0;
  v34 = __p;
  memset(&__p, 0, sizeof(__p));
  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = *(a3 + 8);
  }

  v29 = std::string::append(&v34, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v36 = v29->__r_.__value_.__r.__words[2];
  v35 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
LABEL_45:
    if ((SBYTE7(v31[1]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_50:
    operator delete(*&v31[0]);
LABEL_46:
    *a1 = 0;
    v34.__r_.__value_.__s.__data_[0] = 5;
    sub_255AA4630((a1 + 1), &v34);
  }

LABEL_49:
  operator delete(*&v31[2]);
  if ((SBYTE7(v31[1]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  goto LABEL_50;
}

void sub_255BB23F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(a23);
    if (a21 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      operator delete(a9);
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_3;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_255BB24D4(std::string *a1, uint64_t a2)
{
  v13 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    v16 = 0;
    sub_255BBE2D4();
  }

  strcpy(&v11, "Last Error: ");
  *(&v11.__r_.__value_.__s + 23) = 12;
  v12 = v11;
  last_error = espresso_get_last_error();
  sub_255BA9490(&last_error);
  if ((v15 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v12, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
LABEL_11:
  if ((a2 & 0x100000000) == 0)
  {
    return;
  }

  if ((v10 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v7);
    return;
  }

  operator delete(v9);
  if (v8 < 0)
  {
    goto LABEL_19;
  }
}

void sub_255BB298C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v42 & 0x100000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v42 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

void sub_255BB2A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a2 + 72) - *(a2 + 64);
  if (!v5)
  {
LABEL_7:
    v45.__r_.__value_.__s.__data_[0] = 0;
    HIBYTE(v47) = 0;
    LOBYTE(v46) = 0;
    sub_255AA4630(a1, &v45);
  }

  v9 = 0;
  v10 = 0;
  v11 = v5 >> 5;
  while (1)
  {
    sub_255BAEFC0(v10, a2, &v46);
    v43 = v46;
    v44 = v47;
    v12 = *a3;
    v13 = *a4;
    v14 = a4[1];
    if (espresso_network_bind_buffer())
    {
      break;
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }

    ++v10;
    v9 += 168;
    if (v11 == v10)
    {
      goto LABEL_7;
    }
  }

  v41 = 5;
  v48 = 0;
  std::to_string(&v45, v10);
  v35 = v45;
  v15 = std::string::insert(&v35, 0, "Unable to bind buffer #", 0x17uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v36.__r_.__value_.__l.__size_;
    v18 = (v36.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v18 - v36.__r_.__value_.__l.__size_ < 9)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v36.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v36.__r_.__value_.__l.__size_ + 9 - v18)
      {
        sub_255A7BCA8();
      }

LABEL_13:
      operator new();
    }

    v19 = v36.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) - 14) < 9)
    {
      goto LABEL_13;
    }

    v19 = &v36;
  }

  v20 = v19 + size;
  *v20 = *" (named '";
  v20[8] = 39;
  v21 = size + 9;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    v36.__r_.__value_.__l.__size_ = size + 9;
  }

  else
  {
    *(&v36.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v19->__r_.__value_.__s.__data_[v21] = 0;
  v37 = v36;
  memset(&v36, 0, sizeof(v36));
  if (v44 >= 0)
  {
    v22 = &v43;
  }

  else
  {
    v22 = v43;
  }

  if (v44 >= 0)
  {
    v23 = HIBYTE(v44);
  }

  else
  {
    v23 = *(&v43 + 1);
  }

  v24 = std::string::append(&v37, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v39 = v24->__r_.__value_.__r.__words[2];
  *v38 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = SHIBYTE(v39);
  if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
  {
    v27 = v38[1];
    v28 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v28 - v38[1] < 4)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v39 & 0x7FFFFFFFFFFFFFFFLL)) < v38[1] - v28 + 4)
      {
        sub_255A7BCA8();
      }

LABEL_30:
      operator new();
    }

    v29 = v38[0];
    *(v38[0] + v38[1]) = 539896103;
    v30 = v27 + 4;
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if ((SHIBYTE(v39) - 19) < 4)
    {
      goto LABEL_30;
    }

    v29 = v38;
    *(v38 + SHIBYTE(v39)) = 539896103;
    v30 = (v26 + 4);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
LABEL_32:
      HIBYTE(v39) = v30 & 0x7F;
      goto LABEL_35;
    }
  }

  v38[1] = v30;
LABEL_35:
  v30[v29] = 0;
  *&v40[16] = v39;
  *v40 = *v38;
  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  v31 = v40[23];
  if ((v40[23] & 0x8000000000000000) != 0)
  {
    v31 = *&v40[8];
    v32 = (*&v40[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v32 - *&v40[8]) < 0xD)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&v40[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v40[8] + 13 - v32)
      {
        sub_255A7BCA8();
      }

LABEL_40:
      operator new();
    }

    v33 = *v40;
  }

  else
  {
    if ((v40[23] - 10) < 0xD)
    {
      goto LABEL_40;
    }

    v33 = v40;
  }

  qmemcpy(&v33[v31], "Status code: ", 13);
  v34 = v31 + 13;
  if ((v40[23] & 0x80000000) != 0)
  {
    *&v40[8] = v31 + 13;
  }

  else
  {
    v40[23] = v34 & 0x7F;
  }

  v33[v34] = 0;
  *&v40[32] = *v40;
  memset(v40, 0, 24);
  v48 = 0;
  sub_255BBE2D4();
}

void sub_255BB3404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if (*(v63 - 129) < 0)
    {
LABEL_3:
      operator delete(*(v63 - 152));
      if (a49 < 0)
      {
LABEL_7:
        operator delete(a44);
        if ((a42 & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }

LABEL_14:
      if ((a42 & 0x80000000) == 0)
      {
LABEL_8:
        if (a35 < 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

LABEL_15:
      operator delete(a37);
      if (a35 < 0)
      {
LABEL_9:
        operator delete(a30);
        if ((a28 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }

LABEL_16:
      if ((a28 & 0x80000000) == 0)
      {
LABEL_10:
        if (a21 < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(a23);
      if (a21 < 0)
      {
LABEL_11:
        operator delete(a16);
        if ((a14 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_18:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v63 - 153) & 0x80000000) == 0)
        {
LABEL_21:
          _Unwind_Resume(a1);
        }

LABEL_20:
        operator delete(*(v63 - 176));
        goto LABEL_21;
      }

LABEL_19:
      operator delete(a9);
      if ((*(v63 - 153) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (*(v63 - 129) < 0)
  {
    goto LABEL_3;
  }

  if (a49 < 0)
  {
    goto LABEL_7;
  }

  goto LABEL_14;
}

void *sub_255BB3614(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  if (v4)
  {
    if (v4 == a2)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  sub_255A9429C(v7, a1);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  v7[0] = &unk_2867C3AD8;
  v7[1] = nullsub_4;
  v8 = v7;
  sub_255A9429C(v7, a2);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255BB3CB0(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = *v5;
  if (*v5)
  {
    v6[11] = v9;
    operator delete(v9);
  }

  v10 = *a3;
  if (*a3)
  {
    v6[8] = v10;
    operator delete(v10);
  }

  v11 = v6[1];
  *v6 = &unk_2867C7F68;
  v6[1] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_255BB3D70(va);
  sub_255A7A508(v7 - 104);
  MEMORY[0x259C49320](v6, 0x10E1C400ECEF657);
  _Unwind_Resume(a1);
}

uint64_t sub_255BB3D70(uint64_t a1)
{
  sub_255BBE6E0(*(a1 + 96));
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_255BB3DBC(char **lpsrc@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC4A8, &unk_2867CC418, 0);
  if (v6)
  {
    v7 = v6;
    v8 = a2[1];
    if (!v8)
    {
LABEL_16:
      v19 = (v7 + 8);
      sub_255A81DE0(&v58[24], (a2[16] + 8));
      if (v62 == 1)
      {
        v20 = v60;
        v21 = v61;
        if (v60 != v61)
        {
          v22 = v7[31];
          v23 = v22 >= 0 ? v7[31] : *(v7 + 2);
          v24 = v22 >= 0 ? v7 + 8 : *(v7 + 1);
          while (1)
          {
            v25 = *(v20 + 23);
            v26 = v25;
            if ((v25 & 0x80u) != 0)
            {
              v25 = *(v20 + 8);
            }

            if (v25 == v23)
            {
              v27 = v26 >= 0 ? v20 : *v20;
              if (!memcmp(v27, v24, v23))
              {
                break;
              }
            }

            v20 += 24;
            if (v20 == v21)
            {
              goto LABEL_40;
            }
          }

          if (v20 != v21)
          {
            v28 = a2[3];
            if (!espresso_plan_build_clean())
            {
              v39 = a2[4];
              v40 = a2[5];
              if (v7[31] < 0)
              {
                v41 = *v19;
              }

              if (espresso_network_select_configuration())
              {
                LOBYTE(v57) = 5;
                v42 = v7[31];
                if (v42 >= 0)
                {
                  v43 = v7[31];
                }

                else
                {
                  v43 = *(v7 + 2);
                }

                if (v43 + 43 <= 0x7FFFFFFFFFFFFFF7)
                {
                  if (v43 + 43 > 0x16)
                  {
                    operator new();
                  }

                  qmemcpy(v58, "Unable to change network configuration to '", 43);
                  if ((v42 & 0x80u) == 0)
                  {
                    v52 = v7 + 8;
                  }

                  else
                  {
                    v52 = *v19;
                  }

                  memmove(&v58[43], v52, v43);
                  v58[v43 + 43] = 0;
                  v53 = std::string::append(v58, "'.", 2uLL);
                  v54 = *&v53->__r_.__value_.__l.__data_;
                  v56 = v53->__r_.__value_.__r.__words[2];
                  *__p = v54;
                  v53->__r_.__value_.__l.__size_ = 0;
                  v53->__r_.__value_.__r.__words[2] = 0;
                  v53->__r_.__value_.__r.__words[0] = 0;
                  sub_255AA4630(a3, &v57);
                }

                sub_255A7BCA8();
              }

              v48 = a2[3];
              if (espresso_plan_build())
              {
                LOBYTE(v57) = 5;
                std::operator+<char>();
                v49 = std::string::append(v58, "'.", 2uLL);
                v50 = *&v49->__r_.__value_.__l.__data_;
                v56 = v49->__r_.__value_.__r.__words[2];
                *__p = v50;
                v49->__r_.__value_.__l.__size_ = 0;
                v49->__r_.__value_.__r.__words[2] = 0;
                v49->__r_.__value_.__r.__words[0] = 0;
                sub_255AA4630(a3, &v57);
              }

              sub_255BC10A4(a2 + 13);
              v57 = *(a2 + 2);
              sub_255BB2A4C(__p, &v58[24], a2 + 7, &v57);
            }

            LOBYTE(v57) = 5;
            v29 = v7[31];
            if (v29 >= 0)
            {
              v30 = v7[31];
            }

            else
            {
              v30 = *(v7 + 2);
            }

            if (v30 + 54 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_255A7BCA8();
            }

            if (v30 + 54 > 0x16)
            {
              operator new();
            }

            qmemcpy(v58, "Unable to build clean the plan for the configuration '", sizeof(v58));
            if ((v29 & 0x80u) == 0)
            {
              v44 = v7 + 8;
            }

            else
            {
              v44 = *v19;
            }

            memmove(v59, v44, v30);
            v59[v30] = 0;
            v45 = v58[23];
            if ((v58[23] & 0x8000000000000000) != 0)
            {
              v45 = *&v58[8];
              v46 = (*&v58[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if ((v46 - *&v58[8]) < 2)
              {
                if (0x7FFFFFFFFFFFFFF7 - (*&v58[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v58[8] + 2 - v46)
                {
                  sub_255A7BCA8();
                }

LABEL_78:
                operator new();
              }

              v47 = *v58;
            }

            else
            {
              if ((v58[23] - 21) < 2)
              {
                goto LABEL_78;
              }

              v47 = v58;
            }

            *&v47[v45] = 11815;
            v51 = v45 + 2;
            if ((v58[23] & 0x80000000) != 0)
            {
              *&v58[8] = v45 + 2;
            }

            else
            {
              v58[23] = v51 & 0x7F;
            }

            v47[v51] = 0;
            *__p = *v58;
            v56 = *&v58[16];
            memset(v58, 0, 24);
            sub_255AA4630(a3, &v57);
          }
        }
      }

LABEL_40:
      LOBYTE(v57) = 3;
      v31 = v7[31];
      if (v31 >= 0)
      {
        v32 = v7[31];
      }

      else
      {
        v32 = *(v7 + 2);
      }

      if (v32 + 46 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_255A7BCA8();
      }

      if (v32 + 46 > 0x16)
      {
        operator new();
      }

      qmemcpy(v58, "Unable to find the name of the configuration '", 46);
      if ((v31 & 0x80u) == 0)
      {
        v33 = v7 + 8;
      }

      else
      {
        v33 = *v19;
      }

      memmove(&v58[46], v33, v32);
      v58[v32 + 46] = 0;
      v34 = v58[23];
      if ((v58[23] & 0x8000000000000000) != 0)
      {
        v35 = *&v58[8];
        v36 = (*&v58[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if ((v36 - *&v58[8]) < 2)
        {
          if (0x7FFFFFFFFFFFFFF7 - (*&v58[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v58[8] + 2 - v36)
          {
            sub_255A7BCA8();
          }

LABEL_54:
          operator new();
        }

        v37 = *v58;
        *(*v58 + *&v58[8]) = 11815;
        v38 = v35 + 2;
        if ((v58[23] & 0x80000000) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if ((v58[23] - 21) < 2)
        {
          goto LABEL_54;
        }

        v37 = v58;
        *&v58[v58[23]] = 11815;
        v38 = v34 + 2;
        if ((v58[23] & 0x80000000) == 0)
        {
LABEL_56:
          v58[23] = v38 & 0x7F;
          goto LABEL_59;
        }
      }

      *&v58[8] = v38;
LABEL_59:
      v37[v38] = 0;
      *__p = *v58;
      v56 = *&v58[16];
      memset(v58, 0, 24);
      sub_255AA4630(a3, &v57);
    }

    v9 = **v8;
    v10 = __dynamic_cast(v8, &unk_2867CC4A8, &unk_2867CC418, 0);
    if (v10)
    {
      v11 = *(v10 + 31);
      if (v11 >= 0)
      {
        v12 = *(v10 + 31);
      }

      else
      {
        v12 = v10[2];
      }

      v13 = v7[31];
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v7 + 2);
      }

      if (v12 == v13)
      {
        v17 = v10[1];
        v15 = v10 + 1;
        v16 = v17;
        if (v11 < 0)
        {
          v15 = v16;
        }

        if (v14 >= 0)
        {
          v18 = v7 + 8;
        }

        else
        {
          v18 = *(v7 + 1);
        }

        if (!memcmp(v15, v18, v12))
        {
          LOBYTE(__p[0]) = 0;
          operator new();
        }
      }

      goto LABEL_16;
    }
  }

  __cxa_bad_cast();
}

void sub_255BB4840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_255A82AF8(&a11);
  sub_255A829E0(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_255BB49D4(uint64_t a1)
{
  *a1 = &unk_2867C7EE8;
  v2 = *(a1 + 24);
  espresso_plan_destroy();
  v3 = *(a1 + 16);
  espresso_context_destroy();
  v4 = *(a1 + 104);
  if (v4 != (a1 + 112))
  {
    do
    {
      if (*(v4 + 112) == 1 && *(v4 + 72) == 1)
      {
        free(v4[5]);
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (a1 + 112));
  }

  v5 = *(a1 + 136);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_255BBE6E0(*(a1 + 112));
  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 8);
  *a1 = &unk_2867C7F68;
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void sub_255BB4B58(uint64_t a1)
{
  sub_255BB49D4(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BB4B90(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 128);
  if (*(v2 + 152))
  {
    v4 = *(v2 + 128);
    v3 = *(v2 + 136);
    if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 2) == (a2[1] - *a2) >> 7)
    {
      if (v4 != v3)
      {
        if (v4[25] != 1 || (v4[12] & 1) == 0 && (v4[20] & 1) == 0 && v4[24] != 1)
        {
          v5 = *a2;
          __p[0] = 0;
          LOBYTE(__p[1]) = 0;
          LODWORD(v12) = -1;
          v6 = *(v5 + 120);
          if (v6 != -1)
          {
            v13.__r_.__value_.__r.__words[0] = &__p[1];
            (off_2867D0BC0[v6])(&v13);
            LODWORD(v12) = v6;
          }

          if (v4[25] == 1)
          {
            sub_255BA2680(&__p[1], &v13);
            if (v15 == 1)
            {
              v7 = v14;
              if (v14)
              {
                if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v7->__on_zero_shared)(v7);
                  std::__shared_weak_count::__release_weak(v7);
                }
              }

              LOBYTE(v8) = 0;
              *(&v13.__r_.__value_.__s + 23) = 0;
              v13.__r_.__value_.__s.__data_[0] = 0;
              sub_255AA4630(&v9, &v8);
            }

            LOBYTE(v8) = 3;
            operator new();
          }

          LOBYTE(v8) = 0;
          *(&v13.__r_.__value_.__s + 23) = 0;
          v13.__r_.__value_.__s.__data_[0] = 0;
          sub_255AA4630(&v9, &v8);
        }

        LOBYTE(v8) = 3;
        operator new();
      }

      LOBYTE(v8) = 0;
      *(&v13.__r_.__value_.__s + 23) = 0;
      v13.__r_.__value_.__s.__data_[0] = 0;
      sub_255AA4630(&v9, &v8);
    }

    v13.__r_.__value_.__s.__data_[0] = 3;
    operator new();
  }

  v13.__r_.__value_.__s.__data_[0] = 0;
  v11 = 0;
  LOBYTE(__p[0]) = 0;
  sub_255AA4630(&v9, &v13);
}

void sub_255BB53B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_255A8DBF0(&a26);
  sub_255A82AF8(v35);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_255A82AF8(&a18);
  sub_255A82AF8(&a22);
  _Unwind_Resume(a1);
}

void sub_255BB5518(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 128) + 56) == *(*(a2 + 128) + 48))
  {
    v33.__r_.__value_.__s.__data_[0] = 0;
    BYTE3(v36) = 0;
    LOBYTE(pixelBuffer[0]) = 0;
    sub_255AA4630(a1, &v33);
  }

  sub_255BA2680(*a3, &v22);
  v4 = v26;
  if (((v26 >> 1) & 1) + (v26 & 1) + ((v26 >> 2) & 1) + ((v26 >> 3) & 1) <= 1 && ((v26 >> 4) & 1) + ((v26 >> 5) & 1) + ((v26 >> 6) & 1) < 2)
  {
LABEL_15:
    v36 = v24;
    v37 = v25;
    *pixelBuffer = v22;
    v35 = v23;
    v38 = v4;
    v9 = v23 < 2 && HIDWORD(v22) < 2;
    if (v9)
    {
      v10 = LODWORD(pixelBuffer[1]) < 2;
      v11 = DWORD1(v36);
      if (!DWORD1(v36))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0;
      v11 = DWORD1(v36);
      if (!DWORD1(v36))
      {
        goto LABEL_35;
      }
    }

    v12 = HIDWORD(pixelBuffer[0]) == 0;
    if (!v12 && !v10)
    {
      v12 = DWORD2(v36) < HIDWORD(pixelBuffer[0]) * v11;
      if (DWORD2(v36) < HIDWORD(pixelBuffer[0]) * v11)
      {
        LOBYTE(v9) = 1;
      }

      if (!v9)
      {
        v12 = HIDWORD(v36) < LODWORD(pixelBuffer[1]) * DWORD2(v36);
        if (v23 >= 2 && HIDWORD(v36) >= LODWORD(pixelBuffer[1]) * DWORD2(v36))
        {
          if (v37 < HIDWORD(v36) * HIDWORD(v22))
          {
            goto LABEL_35;
          }

LABEL_30:
          if (sub_255BA10BC(pixelBuffer, 16))
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }
      }
    }

    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_35:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoModelInstance.cpp", 656, "ValidViewStructure<uint8_t>(Structure(input))", 0x2DuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_42:
        qword_27F7DD620(*algn_27F7DD628, "ValidViewStructure<uint8_t>(Structure(input))", 45, &unk_255C2500B, 0);
LABEL_43:
        if ((v26 & 0xF) != 0 && (v26 & 0x70) != 0)
        {
          *a1 = &unk_2867C51A8;
          *(a1 + 8) = 0;
          operator new();
        }

        v27.__r_.__value_.__s.__data_[0] = 3;
        DWORD1(v36) = 0;
        std::to_string(&v33, 0);
        v28 = v33;
        v15 = std::string::insert(&v28, 0, "Invalid input: The given view for input ", 0x28uLL);
        v16 = *&v15->__r_.__value_.__l.__data_;
        *&v30 = *(&v15->__r_.__value_.__l + 2);
        *v29 = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        v17 = SBYTE7(v30);
        if ((SBYTE7(v30) & 0x8000000000000000) != 0)
        {
          v18 = v29[1];
          v19 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v19 - v29[1] < 0x46)
          {
            if ((0x7FFFFFFFFFFFFFF7 - (v30 & 0x7FFFFFFFFFFFFFFFLL)) < v29[1] - v19 + 70)
            {
              sub_255A7BCA8();
            }

LABEL_51:
            operator new();
          }

          v20 = v29[0];
          qmemcpy(v29[0] + v29[1], " requires both a color format and type definition in its format flags.", 70);
          v21 = v18 + 70;
          v29[1] = v18 + 70;
        }

        else
        {
          if (SBYTE7(v30) < 0x17)
          {
            goto LABEL_51;
          }

          v20 = v29;
          qmemcpy(v29 + SBYTE7(v30), " requires both a color format and type definition in its format flags.", 70);
          v21 = (v17 + 70);
          BYTE7(v30) = (v17 + 70) & 0x7F;
        }

        v21[v20] = 0;
        *__p = *v29;
        *&v32 = v30;
        *&v30 = 0;
        v29[0] = 0;
        v29[1] = 0;
        sub_255AA4630(a1, &v27);
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_56;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "ValidViewStructure<uint8_t>(Structure(input))", 45, &unk_255C2500B, 0);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_42;
    }

LABEL_56:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoModelInstance.cpp", 655, "input.Format().IsValidFormat()", 0x1EuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v6 = qword_27F7DD608, v7 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_14:
      qword_27F7DD620(*algn_27F7DD628, "input.Format().IsValidFormat()", 30, &unk_255C2500B, 0);
      v4 = v26;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = qword_27F7DD608;
    v7 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_56;
    }
  }

  do
  {
    (*v6)(*(v6 + 8), "input.Format().IsValidFormat()", 30, &unk_255C2500B, 0);
    v6 += 16;
  }

  while (v6 != v7);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_56;
  }

  goto LABEL_14;
}

void sub_255BBD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  sub_255B02AA4(&STACK[0x820]);
  sub_255BBE844(&STACK[0x920]);
  sub_255BBE844(&STACK[0x9D0]);
  sub_255A90668(&STACK[0x5C0]);
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  sub_255A90668(&STACK[0x220]);
  sub_255A82AF8(a52);
  sub_255A90668(&STACK[0x2B8]);
  _Unwind_Resume(a1);
}

void sub_255BBD6A8(int64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[10].i32[0] != 65568)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoModelInstance.cpp", 700, "results.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32", 0x35uLL, "EspressoBufferToConstDataView32f currently expects FLOAT32 storage. Other buffer types not yet implemented.", 0x6BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "results.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32", 53, "EspressoBufferToConstDataView32f currently expects FLOAT32 storage. Other buffer types not yet implemented.", 107);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27F7DD608;
      v5 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "results.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32", 53, "EspressoBufferToConstDataView32f currently expects FLOAT32 storage. Other buffer types not yet implemented.", 107);
    }

    while (v4 != v5);
    if (byte_27F7DD630)
    {
      goto LABEL_9;
    }

LABEL_21:
    abort();
  }

LABEL_10:
  v8 = a1[7].u64[1];
  if (HIDWORD(v8) || (v9 = a1[5].u64[0], HIDWORD(v9)) || (v10 = a1[5].u64[1], HIDWORD(v10)) || (v11 = a1[6].u64[0], HIDWORD(v11)) || (v12 = a1[6].u64[1], HIDWORD(v12)))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

  v13 = a1->i64[0];
  *&v23 = __PAIR64__(v9, v8);
  *(&v23 + 1) = __PAIR64__(v11, v10);
  v24 = v12;
  v14 = a1[9].i64[0];
  LODWORD(v20) = 1;
  DWORD1(v20) = v8;
  *(&v20 + 1) = vmovn_s64(a1[8]);
  v21 = v14;
  v22 = 1;
  v17[0] = 0;
  v19 = 0;
  sub_255B9F2F0(a2, v13, &v23, &v20, "@", v17);
  if (v19 == 1)
  {
    v15 = v18;
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }
}

void sub_255BBDD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A82AF8(v9);
  sub_255A977C8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BBDD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  sub_255A8DED8(&a17);
  sub_255A82AF8(v17);
  sub_255A977C8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BBDD58()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Async execution not implemented");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

BOOL sub_255BBDDC8(uint64_t a1)
{
  v1 = 4;
  if (*(a1 + 48) != 65)
  {
    v1 = 1;
  }

  return v1 == *(a1 + 24);
}

void sub_255BBDDE8(uint64_t a1, int64x2_t *a2)
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  LODWORD(v39) = 16;
  v44 = 0;
  v3 = a2[10].i32[0];
  if (v3 != 262152)
  {
    if (v3 != 65568)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoModelInstance.cpp", 731, &unk_255C2500B, 0, "EspressoBufferToConstDataView32f requires FLOAT32 or UINT8 storage", 0x42uLL, sub_255C101E0);
      abort();
    }

    v4 = a2[7].u64[1];
    if (HIDWORD(v4) || (v5 = a2[5].u64[0], HIDWORD(v5)) || (v6 = a2[5].u64[1], HIDWORD(v6)) || (v7 = a2[6].u64[0], HIDWORD(v7)) || (v8 = a2[6].u64[1], HIDWORD(v8)))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = &unk_2867C9030;
      __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
    }

    v9 = a2->i64[0];
    v10 = a2[8];
    v11 = a2[9].i64[0];
    *&v51 = __PAIR64__(v5, v4);
    *(&v51 + 1) = __PAIR64__(v7, v6);
    v52 = v8;
    LODWORD(v48) = 1;
    DWORD1(v48) = v4;
    *(&v48 + 1) = vmovn_s64(v10);
    v49 = v11;
    v50 = 1;
    v45[0] = 0;
    v47 = 0;
    sub_255B9E8F0(&v31, v9, &v51, &v48, "@", v45);
    if (v47 == 1)
    {
      v12 = v46;
      if (v46)
      {
        if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }

    v13 = v32;
    *a1 = v31;
    *(a1 + 16) = v13;
    *(a1 + 32) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = 0;
    *(a1 + 112) = 0;
    if (v37 == 1)
    {
      *(a1 + 56) = &unk_2867C56D0;
      v14 = v35;
      v15 = v36[0];
      v35 = 0uLL;
      *(a1 + 64) = v14;
      *(a1 + 80) = v15;
      *(a1 + 94) = *(v36 + 14);
      *(a1 + 112) = 1;
    }

    *(a1 + 120) = 1;
    v16 = v44;
    if (v44 == -1)
    {
      return;
    }

LABEL_28:
    (off_2867D0B90[v16])(&v31, v38);
    return;
  }

  v17 = a2[7].u64[1];
  if (HIDWORD(v17) || (v18 = a2[5].u64[0], HIDWORD(v18)) || (v19 = a2[5].u64[1], HIDWORD(v19)) || (v20 = a2[6].u64[0], HIDWORD(v20)) || (v21 = a2[6].u64[1], HIDWORD(v21)))
  {
    v30 = __cxa_allocate_exception(8uLL);
    *v30 = &unk_2867C9030;
    __cxa_throw(v30, &unk_2867CE0C8, std::exception::~exception);
  }

  v22 = a2->i64[0];
  v23 = a2[8];
  v24 = a2[9].i64[0];
  *&v51 = __PAIR64__(v18, v17);
  *(&v51 + 1) = __PAIR64__(v20, v19);
  v52 = v21;
  LODWORD(v48) = 1;
  DWORD1(v48) = v17;
  *(&v48 + 1) = vmovn_s64(v23);
  v49 = v24;
  v50 = 1;
  v45[0] = 0;
  v47 = 0;
  sub_255B9E8F0(&v31, v22, &v51, &v48, &dword_255C417F8, v45);
  if (v47 == 1)
  {
    v25 = v46;
    if (v46)
    {
      if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }
    }
  }

  v26 = v32;
  *a1 = v31;
  *(a1 + 16) = v26;
  *(a1 + 32) = v33;
  *(a1 + 48) = v34;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0;
  if (v37 == 1)
  {
    *(a1 + 56) = &unk_2867C56D0;
    v27 = v35;
    v28 = v36[0];
    v35 = 0uLL;
    *(a1 + 64) = v27;
    *(a1 + 80) = v28;
    *(a1 + 94) = *(v36 + 14);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  v16 = v44;
  if (v44 != -1)
  {
    goto LABEL_28;
  }
}

void sub_255BBE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255BBE278(va);
  _Unwind_Resume(a1);
}

void sub_255BBE22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255A9247C(v17 - 144);
  sub_255BBE278(va);
  _Unwind_Resume(a1);
}

void sub_255BBE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255BBE278(va);
  _Unwind_Resume(a1);
}

void sub_255BBE264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255BBE278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BBE278(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D0B90[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

void sub_255BBE4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255BBE538(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x186186186186187)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255BBE5FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255BBE618(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v2 - *a2) >> 3) < 0x186186186186187)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255BBE6C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BBE6E0(void *a1)
{
  if (a1)
  {
    sub_255BBE6E0(*a1);
    sub_255BBE6E0(a1[1]);
    if (*(a1 + 112) == 1 && *(a1 + 104) == 1 && (a1[10] = &unk_2867C8750, (v2 = a1[12]) != 0) && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t sub_255BBE7CC(uint64_t result)
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

uint64_t sub_255BBE844(uint64_t result)
{
  if (*(result + 80) == 1)
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

void sub_255BBE8C0(uint64_t a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&a4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a4->__on_zero_shared)(a4);
      std::__shared_weak_count::__release_weak(a4);
    }
  }

  sub_255ACF2B0(a3, &pixelBuffer);
  if (CVPixelBufferGetIOSurface(pixelBuffer))
  {
LABEL_13:
    if (**a2 == 1 && **(a2 + 8) == 1)
    {
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      if (*(v10 + 23) < 0)
      {
        v14 = *v10;
      }

      v15 = espresso_network_bind_direct_cvpixelbuffer();
    }

    else
    {
      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      if (*(v16 + 23) < 0)
      {
        v20 = *v16;
      }

      v21 = **(a2 + 32);
      v15 = espresso_network_bind_input_cvpixelbuffer();
    }

    sub_255BBEBD4(a1, *(a2 + 40), v15);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoModelInstance.cpp", 528, "CVPixelBufferGetIOSurface(ref)", 0x1EuLL, "The input buffer is not IOSurface backed", 0x28uLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v8 = qword_27F7DD608, v9 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_12:
      qword_27F7DD620(*algn_27F7DD628, "CVPixelBufferGetIOSurface(ref)", 30, "The input buffer is not IOSurface backed", 40);
      goto LABEL_13;
    }
  }

  else
  {
    v8 = qword_27F7DD608;
    v9 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_22;
    }
  }

  do
  {
    (*v8)(*(v8 + 8), "CVPixelBufferGetIOSurface(ref)", 30, "The input buffer is not IOSurface backed", 40);
    v8 += 16;
  }

  while (v8 != v9);
  if (byte_27F7DD630)
  {
    goto LABEL_12;
  }

LABEL_22:
  abort();
}

uint64_t sub_255BBEB5C(uint64_t result)
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

void sub_255BBEBD4(uint64_t a1, unint64_t ***a2, int a3)
{
  if (a3)
  {
    v4 = ***a2;
    v10 = 5;
    v11 = 0;
    std::to_string(&v12, v4);
    v7 = v12;
    v5 = std::string::insert(&v7, 0, "Failed to bind buffer created for Espresso Model input ", 0x37uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_255AA4630(a1, &v10);
  }

  *a1 = &unk_2867C51A8;
  *(a1 + 8) = 0;
  operator new();
}

void sub_255BBED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255AA4880(va);
  _Unwind_Resume(a1);
}

void sub_255BBED54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
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

void sub_255BBED9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BBEE54(uint64_t a1)
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

void sub_255BBEEF8(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD438))
  {
    sub_255BBF2CC();
  }

  if ((atomic_load_explicit(&qword_27F7DC738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC738))
  {
    sub_255BAADE4();
  }

  v23 = "Attempting to create an ";
  v24 = 24;
  v4 = &qword_27F7DD448;
  v5 = byte_27F7DD45F;
  if (byte_27F7DD45F < 0)
  {
    v5 = unk_27F7DD450;
    v4 = qword_27F7DD448;
  }

  v25 = v4;
  v26 = v5;
  v27 = " from an ";
  v28 = 9;
  v6 = &qword_27F7DC720;
  v7 = byte_27F7DC737;
  if (byte_27F7DC737 < 0)
  {
    v7 = unk_27F7DC728;
    v6 = qword_27F7DC720;
  }

  v29[0] = v6;
  v29[1] = v7;
  sub_255A7F250(&v23, &v30, 0, 0, &__p);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v11 = v8;
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
          v8 = v11;
        }
      }
    }

    v12 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v23 = p_p;
    v24 = size;
    v25 = " but the other image contains an incompatible buffer type ";
    v26 = 58;
    v27 = v12;
    v28 = v13;
    sub_255A7F250(&v23, v29, 0, 0, a1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = v18 + 46;
    if (v18 + 46 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = v19;
    if (v17 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, v20, v18);
    strcpy((a1 + v18), " but the other image does not contain a buffer");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_255BBF2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BBF2CC()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 14;
  strcpy(v0, "ConstImageView");
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BBF5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BBF704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BBF7BC(uint64_t a1)
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

void sub_255BBF860(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD440))
  {
    sub_255BBFC34();
  }

  if ((atomic_load_explicit(&qword_27F7DC6F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6F8))
  {
    sub_255BA9B6C();
  }

  v23 = "Attempting to create an ";
  v24 = 24;
  v4 = &qword_27F7DD460;
  v5 = byte_27F7DD477;
  if (byte_27F7DD477 < 0)
  {
    v5 = unk_27F7DD468;
    v4 = qword_27F7DD460;
  }

  v25 = v4;
  v26 = v5;
  v27 = " from an ";
  v28 = 9;
  v6 = &qword_27F7DC6E0;
  v7 = byte_27F7DC6F7;
  if (byte_27F7DC6F7 < 0)
  {
    v7 = unk_27F7DC6E8;
    v6 = qword_27F7DC6E0;
  }

  v29[0] = v6;
  v29[1] = v7;
  sub_255A7F250(&v23, &v30, 0, 0, &__p);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v11 = v8;
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
          v8 = v11;
        }
      }
    }

    v12 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v23 = p_p;
    v24 = size;
    v25 = " but the other image contains an incompatible buffer type ";
    v26 = 58;
    v27 = v12;
    v28 = v13;
    sub_255A7F250(&v23, v29, 0, 0, a1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = v18 + 46;
    if (v18 + 46 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = v19;
    if (v17 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, v20, v18);
    strcpy((a1 + v18), " but the other image does not contain a buffer");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_255BBFC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BBFC34()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 14;
  strcpy(v0, "ConstImageView");
  sub_255C0F2C0("cv3d::kit::img::Format::Gray16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BBFF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC006C(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v3))) & 1) == 0)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      v5 = result;
      v6 = HIDWORD(*(a2 + 1));
      v7 = v3.i32[3] - 1;
      v8 = *(a2 + 10);
      v9 = *(a3 + 10);
      v10 = *a2;
      v11 = *a3;
      v34 = v4 - 1;
      if (v4 != 1)
      {
        v12 = *(a3 + 11);
        v13 = *(a2 + 11);
        v14 = *result;
        if (v3.i32[3] == 1)
        {
          if (!v14)
          {
            return result;
          }

          v29 = 0;
          v30 = HIDWORD(*(a2 + 1));
          v24 = v4 - 2;
LABEL_20:
          result = memmove(v11, v10, 4 * v14);
          while (v24)
          {
            v14 = *v5;
            --v24;
            v10 += 4 * v13;
            v11 += 4 * v12;
            if (*v5)
            {
              goto LABEL_20;
            }
          }

          v10 += 4 * v13;
          v11 += 4 * v12;
        }

        else
        {
          if (!v14)
          {
            return result;
          }

          v29 = v3.i32[3] - 1;
          v30 = HIDWORD(*(a2 + 1));
          v15 = 0;
          v31 = v3.i32[3] - 2;
          v27 = *(a3 + 10);
          v28 = *(a2 + 10);
          v16 = 4 * v8;
          v17 = &v10[4 * v8];
          v18 = 4 * v13;
          v19 = 4 * v9;
          v20 = &v11[4 * v9];
          v32 = 4 * v12;
          v33 = v18;
LABEL_7:
          v35 = v17;
          v21 = 0;
          v22 = 0;
          v23 = v31;
          if (v14)
          {
LABEL_8:
            result = memmove(&v11[v21], &v10[v22], 4 * v14);
          }

          while (v23)
          {
            v14 = *v5;
            --v23;
            v22 += v16;
            v21 += v19;
            if (*v5)
            {
              goto LABEL_8;
            }
          }

          v17 = v35;
          if (*v5)
          {
            result = memmove(&v20[v21], &v35[v22], 4 * *v5);
          }

          while (1)
          {
            v10 += v33;
            v11 += v32;
            if (++v15 == v34)
            {
              break;
            }

            v14 = *v5;
            v17 += v33;
            v20 += v32;
            if (*v5)
            {
              goto LABEL_7;
            }
          }

          v9 = v27;
          v8 = v28;
        }

        v7 = v29;
        v6 = v30;
      }

      v25 = *v5;
      if (v7)
      {
        if (!v25)
        {
          return result;
        }

        v26 = v6 - 2;
LABEL_29:
        result = memmove(v11, v10, 4 * v25);
        while (v26)
        {
          v25 = *v5;
          --v26;
          v10 += 4 * v8;
          v11 += 4 * v9;
          if (*v5)
          {
            goto LABEL_29;
          }
        }

        v25 = *v5;
        v10 += 4 * v8;
        v11 += 4 * v9;
      }

      if (v25)
      {

        return memmove(v11, v10, 4 * v25);
      }
    }
  }

  return result;
}

float sub_255BC02C0(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a1[8];
  v4 = a1[5];
  if (!v3)
  {
    v5 = a1[2];
    if (!v4)
    {
      if (!v5)
      {
        goto LABEL_34;
      }

      v32 = a1[3];
      v33 = a1[4];
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v5 = a1[2];
  v6 = a1[9];
  v7 = a1[10];
  if (v4)
  {
    v8 = a1[6];
    v9 = a1[7];
    if (!v5)
    {
      do
      {
        v43 = a3;
        v44 = a2;
        v45 = v4;
        do
        {
          *v43 = *v44;
          v44 += v8;
          v43 += v9;
          --v45;
        }

        while (v45);
        *v43 = *v44;
        a2 += v6;
        a3 += v7;
        ++v5;
      }

      while (v5 != v3);
      do
      {
LABEL_31:
        *a3 = *a2;
        a2 += v8;
        a3 += v9;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v10 = 0;
    v11 = 4 * v6;
    v12 = v8;
    v13 = 4 * a1[3];
    v14 = 4 * v7;
    v15 = v9;
    v16 = 4 * a1[4];
    v17 = &a2[v12];
    v18 = &a3[v15];
    do
    {
      v19 = 0;
      v20 = v18;
      v21 = v17;
      v22 = a3;
      v23 = a2;
      do
      {
        v24 = v21;
        v25 = v20;
        v26 = v22;
        v27 = v23;
        v28 = v5;
        do
        {
          *v26 = *v27;
          v27 = (v27 + v13);
          v26 = (v26 + v16);
          --v28;
        }

        while (v28);
        *v26 = *v27;
        v23 = (v23 + v12 * 4);
        v22 = (v22 + v15 * 4);
        ++v19;
        v21 = &v24[v12];
        v20 = &v25[v15];
      }

      while (v19 != v4);
      v29 = v5;
      do
      {
        *v25 = *v24;
        v24 = (v24 + v13);
        v25 = (v25 + v16);
        --v29;
      }

      while (v29);
      *v25 = *v24;
      a2 = (a2 + v11);
      a3 = (a3 + v14);
      ++v10;
      v17 = (v17 + v11);
      v18 = (v18 + v14);
    }

    while (v10 != v3);
LABEL_12:
    v8 = a1[6];
    v9 = a1[7];
    if (v5)
    {
      v30 = 0;
      v31 = 4 * v8;
      v32 = a1[3];
      v33 = a1[4];
      do
      {
        v34 = a3;
        v35 = a2;
        v36 = v5;
        do
        {
          *v34 = *v35;
          v35 += v32;
          v34 += v33;
          --v36;
        }

        while (v36);
        *v34 = *v35;
        a2 = (a2 + v31);
        a3 += v9;
        ++v30;
      }

      while (v30 != v4);
      do
      {
LABEL_26:
        *a3 = *a2;
        a2 += v32;
        a3 += v33;
        --v5;
      }

      while (v5);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v5)
  {
    v37 = 0;
    v38 = 4 * v6;
    v32 = a1[3];
    v33 = a1[4];
    v39 = 4 * v7;
    do
    {
      v40 = a3;
      v41 = a2;
      v42 = v5;
      do
      {
        *v40 = *v41;
        v41 += v32;
        v40 += v33;
        --v42;
      }

      while (v42);
      *v40 = *v41;
      a2 = (a2 + v38);
      a3 = (a3 + v39);
      ++v37;
    }

    while (v37 != v3);
    goto LABEL_26;
  }

  do
  {
    *a3 = *a2;
    a2 += v6;
    a3 += v7;
    --v3;
  }

  while (v3);
LABEL_34:
  result = *a2;
  *a3 = *a2;
  return result;
}

size_t *sub_255BC0560(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v3))) & 1) == 0)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      v5 = result;
      v6 = HIDWORD(*(a2 + 1));
      v7 = v3.i32[3] - 1;
      v8 = *(a2 + 10);
      v9 = *(a3 + 10);
      v10 = *a2;
      v11 = *a3;
      v29 = v4 - 1;
      if (v4 != 1)
      {
        v12 = *(a3 + 11);
        v13 = *(a2 + 11);
        v14 = *result;
        if (v3.i32[3] == 1)
        {
          if (!v14)
          {
            return result;
          }

          v22 = *(a2 + 11);
          v23 = v4 - 2;
LABEL_32:
          result = memmove(v11, v10, v14);
          while (1)
          {
            v10 += v22;
            v11 += v12;
            if (!v23)
            {
              break;
            }

            v14 = *v5;
            --v23;
            if (*v5)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (!v14)
          {
            return result;
          }

          v27 = *(a2 + 11);
          v28 = v12;
          v24 = v3.i32[3] - 1;
          v25 = HIDWORD(*(a2 + 1));
          v15 = 0;
          v26 = v3.i32[3] - 2;
          v30 = &v10[v8];
          v16 = &v11[v9];
LABEL_7:
          v17 = 0;
          v18 = 0;
          v19 = v26;
          if (v14)
          {
LABEL_8:
            result = memmove(&v11[v17], &v10[v18], v14);
          }

          while (v19)
          {
            v14 = *v5;
            --v19;
            v18 += v8;
            v17 += v9;
            if (*v5)
            {
              goto LABEL_8;
            }
          }

          if (*v5)
          {
            result = memmove(&v16[v17], &v30[v18], *v5);
          }

          while (1)
          {
            v10 += v27;
            v11 += v28;
            if (++v15 == v29)
            {
              break;
            }

            v14 = *v5;
            v30 += v27;
            v16 += v28;
            if (*v5)
            {
              goto LABEL_7;
            }
          }

          v7 = v24;
          v6 = v25;
        }
      }

      v20 = *v5;
      if (v7)
      {
        if (!v20)
        {
          return result;
        }

        v21 = v6 - 2;
LABEL_21:
        result = memmove(v11, v10, v20);
        while (1)
        {
          v10 += v8;
          v11 += v9;
          if (!v21)
          {
            break;
          }

          v20 = *v5;
          --v21;
          if (*v5)
          {
            goto LABEL_21;
          }
        }

        v20 = *v5;
      }

      if (v20)
      {

        return memmove(v11, v10, v20);
      }
    }
  }

  return result;
}

size_t *sub_255BC0768(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 1);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v3))))
  {
    return result;
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = a2[2];
  v7 = v3.i32[2] - 1;
  v8 = HIDWORD(*(a2 + 1));
  v9 = v3.i32[3] - 1;
  v10 = *(a2 + 10);
  v70 = *(a2 + 9);
  v11 = *(a3 + 9);
  v68 = v10;
  v69 = *(a3 + 10);
  v12 = *a2;
  v13 = *a3;
  v61 = v4 - 1;
  v67 = v3.i32[3] - 1;
  if (v4 != 1)
  {
    v60 = *(a3 + 11);
    v14 = *(a2 + 11);
    v58 = v14;
    if (v3.i32[3] == 1)
    {
      v25 = *result;
      if (v3.i32[2] == 1)
      {
        if (!v25)
        {
          return result;
        }

        v40 = v4 - 2;
LABEL_47:
        result = memmove(v13, v12, v25);
        while (1)
        {
          v12 += v14;
          v13 += v60;
          if (!v40)
          {
            break;
          }

          v25 = *v5;
          --v40;
          if (*v5)
          {
            goto LABEL_47;
          }
        }

        v9 = v67;
        goto LABEL_52;
      }

      if (!v25)
      {
        return result;
      }

      v51 = HIDWORD(*(a2 + 1));
      v52 = v3.i32[2] - 1;
      v26 = 0;
      v54 = a2[2];
      v65 = v3.i32[2] - 2;
      v27 = &v12[v70];
      v28 = &v13[v11];
LABEL_32:
      v29 = v13;
      v30 = 0;
      v31 = 0;
      v32 = v65;
      if (v25)
      {
LABEL_33:
        result = memmove(&v29[v30], &v12[v31], v25);
      }

      while (v32)
      {
        v25 = *v5;
        --v32;
        v31 += v70;
        v30 += v11;
        if (*v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v29;
      v10 = v68;
      if (*v5)
      {
        result = memmove(&v28[v30], &v27[v31], *v5);
      }

      while (1)
      {
        v12 += v58;
        v13 += v60;
        if (++v26 == v61)
        {
          break;
        }

        v25 = *v5;
        v27 += v58;
        v28 += v60;
        if (*v5)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (v3.i32[2] == 1)
      {
        v33 = *result;
        if (!*result)
        {
          return result;
        }

        v51 = HIDWORD(*(a2 + 1));
        v34 = v3.i32[2] - 1;
        v35 = 0;
        v36 = v13;
        v37 = v3.i32[3] - 1;
        v38 = *a2;
        v39 = v36;
        do
        {
LABEL_87:
          if (v33)
          {
            result = memmove(v36, v38, v33);
          }

          v38 += v68;
          v36 += v69;
          v33 = *v5;
          --v37;
        }

        while (v37);
        if (v33)
        {
          result = memmove(v36, v38, v33);
        }

        while (1)
        {
          v12 += v58;
          v13 = &v39[v60];
          if (++v35 == v61)
          {
            break;
          }

          v39 += v60;
          v33 = *v5;
          if (*v5)
          {
            v37 = v67;
            v38 = v12;
            v36 = v39;
            goto LABEL_87;
          }
        }

        v7 = v34;
        v10 = v68;
        goto LABEL_95;
      }

      v15 = *result;
      if (!*result)
      {
        return result;
      }

      v51 = HIDWORD(*(a2 + 1));
      v52 = v3.i32[2] - 1;
      v59 = 0;
      v54 = a2[2];
      v64 = v3.i32[2] - 2;
      v63 = &v12[v70];
      v62 = &v13[v11];
LABEL_8:
      v16 = 0;
      v17 = v12;
      v18 = v13;
      v20 = v62;
      v19 = v63;
      v56 = v18;
      v57 = v17;
      do
      {
        if (v15)
        {
          v21 = 0;
          v22 = 0;
          v23 = v64;
LABEL_12:
          result = memmove(&v18[v21], &v17[v22], v15);
          while (v23)
          {
            v15 = *v5;
            --v23;
            v22 += v70;
            v21 += v11;
            if (*v5)
            {
              goto LABEL_12;
            }
          }

          v10 = v68;
          if (*v5)
          {
            result = memmove(&v20[v21], &v19[v22], *v5);
          }
        }

        v17 += v10;
        v18 += v69;
        ++v16;
        v15 = *v5;
        v19 += v10;
        v20 += v69;
      }

      while (v16 != v67);
      v24 = v64;
      v13 = v56;
      v12 = v57;
      if (v15)
      {
        while (1)
        {
          if (v15)
          {
            result = memmove(v18, v17, v15);
          }

          v17 += v70;
          v18 += v11;
          if (!v24)
          {
            break;
          }

          v15 = *v5;
          --v24;
        }

        if (*v5)
        {
          result = memmove(v18, v17, *v5);
        }
      }

      while (1)
      {
        v12 += v58;
        v13 += v60;
        if (v59 + 1 == v61)
        {
          break;
        }

        ++v59;
        v15 = *v5;
        v63 += v58;
        v62 += v60;
        if (*v5)
        {
          goto LABEL_8;
        }
      }
    }

    v7 = v52;
    v6 = v54;
LABEL_95:
    v9 = v67;
    v8 = v51;
  }

LABEL_52:
  if (v9)
  {
    v41 = *v5;
    if (v7)
    {
      if (!v41)
      {
        return result;
      }

      v53 = v7;
      v55 = v6;
      v42 = 0;
      v66 = v6 - 2;
      v43 = &v12[v70];
      v44 = &v13[v11];
LABEL_56:
      v45 = 0;
      v46 = 0;
      v47 = v66;
      if (v41)
      {
LABEL_57:
        result = memmove(&v13[v45], &v12[v46], v41);
      }

      while (v47)
      {
        v41 = *v5;
        --v47;
        v46 += v70;
        v45 += v11;
        if (*v5)
        {
          goto LABEL_57;
        }
      }

      if (*v5)
      {
        result = memmove(&v44[v45], &v43[v46], *v5);
      }

      while (1)
      {
        v12 += v68;
        v13 += v69;
        if (++v42 == v67)
        {
          break;
        }

        v41 = *v5;
        v43 += v68;
        v44 += v69;
        if (*v5)
        {
          goto LABEL_56;
        }
      }

      v7 = v53;
      v6 = v55;
    }

    else
    {
      if (!v41)
      {
        return result;
      }

      v50 = v8 - 2;
LABEL_81:
      result = memmove(v13, v12, v41);
      while (1)
      {
        v12 += v10;
        v13 += v69;
        if (!v50)
        {
          break;
        }

        v41 = *v5;
        --v50;
        if (*v5)
        {
          goto LABEL_81;
        }
      }
    }
  }

  v48 = *v5;
  if (v7)
  {
    if (!v48)
    {
      return result;
    }

    v49 = v6 - 2;
LABEL_70:
    result = memmove(v13, v12, v48);
    while (1)
    {
      v12 += v70;
      v13 += v11;
      if (!v49)
      {
        break;
      }

      v48 = *v5;
      --v49;
      if (*v5)
      {
        goto LABEL_70;
      }
    }

    v48 = *v5;
  }

  if (v48)
  {

    return memmove(v13, v12, v48);
  }

  return result;
}

void sub_255BC0CB8(uint64_t a1, uint64_t a2)
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

void sub_255BC0D40(uint64_t a1, uint64_t a2)
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

__n128 sub_255BC0E3C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255BC0E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF24espresso_return_status_tPvEJRS6_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF24espresso_return_status_tPvEJRS6_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF24espresso_return_status_tPvEJRS6_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF24espresso_return_status_tPvEJRS6_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255BC0FCC(_Unwind_Exception *a1)
{
  *v3 = v2;
  sub_255A829E0(&v1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_255BC0FF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255BC1028(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C3938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255BC10A4(uint64_t *a1)
{
  if (a1[2])
  {
    v1 = *a1;
    v2 = a1[1];
    *a1 = (a1 + 1);
    *(v2 + 16) = 0;
    a1[2] = 0;
    a1[1] = 0;
    i = *(v1 + 8) ? *(v1 + 8) : v1;
    if (i)
    {
      v4 = i[2];
      if (v4)
      {
        v5 = *v4;
        if (*v4 == i)
        {
          *v4 = 0;
          while (1)
          {
            v7 = v4[1];
            if (!v7)
            {
              break;
            }

            do
            {
              v4 = v7;
              v7 = *v7;
            }

            while (v7);
          }
        }

        else
        {
          for (v4[1] = 0; v5; v5 = v4[1])
          {
            do
            {
              v4 = v5;
              v5 = *v5;
            }

            while (v5);
          }
        }

        sub_255BBE6E0(i);
        v6 = v4[2];
        for (i = v4; v6; v6 = v6[2])
        {
          i = v6;
        }
      }

      sub_255BBE6E0(i);
    }
  }
}

uint64_t sub_255BC1170(int a1, char a2)
{
  v3 = a1 - 1;
  result = 1;
  if (v3 >= 2 && (a2 & 1) == 0)
  {
    if (a1 != 3)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoUtil.cpp", 61, &unk_255C2500B, 0, "Unexpected device type", 0x16uLL, sub_255C101E0);
      abort();
    }

    return 2;
  }

  return result;
}

uint64_t sub_255BC11E0(int a1)
{
  switch(a1)
  {
    case 1:

      break;
    case 3:

      break;
    case 2:

      break;
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoUtil.cpp", 80, &unk_255C2500B, 0, "Unexpected device", 0x11uLL, sub_255C101E0);
      abort();
  }

  return espresso_create_context();
}

void sub_255BC1290(char a1)
{
  v2 = off_2867C8FF8();
  if (v2 & 0x100) != 0 && (v2)
  {
    operator new();
  }

  if ((a1 & 1) == 0)
  {
    operator new();
  }

  operator new();
}

void sub_255BC157C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BC15AC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255BC15F8(uint64_t result, uint64_t a2)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  if (a2)
  {
    v19 = 0;
    e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
    v2 = MEMORY[0x259C495D0]();
    sub_255A83E10(&v14, v2);
    sub_255A83DB0("EspressoStreamPool: Failed to create e5rt stream operation with options.  Return code: ", &v14, &v15);
    v3 = std::string::append(&v15, ". Last error message: ", 0x16uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    last_error_message = e5rt_get_last_error_message();
    sub_255A83E10(__p, last_error_message);
    if ((v13 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = std::string::append(&v16, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    operator delete(v16.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_13:
      operator delete(v15.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
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

        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2StreamPool.cpp", 78, &unk_255C2500B, 0, v10, v11, sub_255C101E0);
        abort();
      }

LABEL_18:
      operator delete(v14.__r_.__value_.__l.__data_);
      goto LABEL_19;
    }

LABEL_17:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return result;
}

void sub_255BC1D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    sub_255BC23F4(a9);
    sub_255BC15AC(v42);
    _Unwind_Resume(a1);
  }

  sub_255BC23F4(a9);
  sub_255BC15AC(v42);
  _Unwind_Resume(a1);
}

uint64_t sub_255BC1ECC(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    if (i[2])
    {
      e5rt_execution_stream_release();
    }

    if (i[4])
    {
      e5rt_execution_stream_operation_release();
    }

    i[4] = 0;
  }

  sub_255BC23F4(a1 + 40);
  v3 = *(a1 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

unint64_t sub_255BC1F6C(void *a1)
{
  v1 = a1[10];
  if (!v1)
  {
    return 0;
  }

  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[9];
  v6 = *(*(v4 + (((v5 + v1 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + v1 - 1) & 0x1FF));
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v3 - v4) << 6) - 1;
  }

  a1[10] = v1 - 1;
  if ((v7 - (v1 + v5) + 1) >= 0x400)
  {
    operator delete(*(v3 - 8));
    a1[7] -= 8;
  }

  v8 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_29;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v13);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_29:
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        if (v16[2] == v6)
        {
          goto LABEL_30;
        }
      }

      else if ((v17 & (*&v11 - 1)) != v13)
      {
        goto LABEL_29;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v18 = v16[1];
    if (v18 == v10)
    {
      break;
    }

    if (v18 >= *&v11)
    {
      v18 %= *&v11;
    }

    if (v18 != v13)
    {
      goto LABEL_29;
    }

LABEL_24:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_29;
    }
  }

  if (v16[2] != v6)
  {
    goto LABEL_24;
  }

LABEL_30:
  *(v16 + 24) = 0;
  v19 = sub_255BC2C98(a1, v6)[4];
  return v6;
}

uint64_t sub_255BC2344(uint64_t a1, unint64_t a2)
{
  result = sub_255BC2C98(a1, a2);
  if (result && (*(result + 24) & 1) == 0)
  {
    v5 = result;
    result = e5rt_execution_stream_reset();
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = ((v7 - v8) << 6) - 1;
    }

    v10 = *(a1 + 80);
    v11 = v10 + *(a1 + 72);
    if (v9 == v11)
    {
      result = sub_255BC24C0((a1 + 40));
      v8 = *(a1 + 48);
      v10 = *(a1 + 80);
      v11 = *(a1 + 72) + v10;
    }

    *(*(v8 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF)) = a2;
    *(a1 + 80) = v10 + 1;
    *(v5 + 24) = 1;
  }

  return result;
}

uint64_t sub_255BC23F4(uint64_t a1)
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
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
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

void *sub_255BC24C0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_255A7B590();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_255BC2B0C(a1, &v10);
}

void sub_255BC2AB4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_255BC2B0C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void *sub_255BC2C98(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
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
    v7 = (*&v2 - 1) & v5;
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
        v11 = result[1];
        if (v11 == v5)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
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
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
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

void sub_255BC2DA4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(*a1 + 16))(a1);
  sub_255BA39AC(v10 + 8, a2, &v14);
  v11 = v15;
  if (v15)
  {
    *a5 = &unk_2867C51A8;
    *(a5 + 8) = v11;
    v12 = v17;
    *(a5 + 16) = v16;
    *(a5 + 24) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a5 + 32) = 0;
    *(a5 + 56) = 0;
  }

  else
  {
    (*(*a1 + 32))(a1, a2, a3, a4);
  }

  v14 = &unk_2867C51A8;
  v13 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_255BC2F38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255BA65BC(a2, &__p);
  sub_255BC2DA4(a1, &__p, a3, a4, a5);
  v9 = __p;
  if (__p)
  {
    v10 = v15;
    v11 = __p;
    if (v15 != __p)
    {
      do
      {
        v12 = v10 - 128;
        v13 = *(v10 - 2);
        if (v13 != -1)
        {
          (off_2867D0BE0[v13])(&v16, v10 - 128);
        }

        *(v10 - 2) = -1;
        v10 -= 128;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v15 = v9;
    operator delete(v11);
  }
}

void sub_255BC3020(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(*a1 + 16))(a1);
  sub_255BA39AC(v10 + 8, a2, &v14);
  v11 = v15;
  if (v15)
  {
    *a5 = &unk_2867C51A8;
    *(a5 + 8) = v11;
    v12 = v17;
    *(a5 + 16) = v16;
    *(a5 + 24) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a5 + 32) = 0;
    *(a5 + 56) = 0;
  }

  else
  {
    (*(*a1 + 40))(a1, a2, a3, a4);
  }

  v14 = &unk_2867C51A8;
  v13 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_255BC31B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255BA65BC(a2, &__p);
  sub_255BC3020(a1, &__p, a3, a4, a5);
  v9 = __p;
  if (__p)
  {
    v10 = v15;
    v11 = __p;
    if (v15 != __p)
    {
      do
      {
        v12 = v10 - 128;
        v13 = *(v10 - 2);
        if (v13 != -1)
        {
          (off_2867D0BE0[v13])(&v16, v10 - 128);
        }

        *(v10 - 2) = -1;
        v10 -= 128;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v15 = v9;
    operator delete(v11);
  }
}

unsigned int *sub_255BC329C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = (*(a2 + 4) * *(a2 + 24));
  v18 = v3;
  result = sub_255AA0880(a2, &__src);
  v8[0] = &v17;
  v8[1] = &v18;
  v8[2] = a1;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v10))) & 1) == 0 && v11)
  {
    v19[0] = 0;
    v19[1] = v10.i32[0] - 1;
    v19[2] = v12;
    v19[3] = v10.i32[1] - 1;
    v19[4] = v13;
    v19[5] = v10.i32[2] - 1;
    v19[6] = v14;
    v19[7] = v10.i32[3] - 1;
    v5 = v16;
    v6 = __src;
    v20[0] = 0;
    v20[1] = 0;
    v7 = v11 - 1;
    v19[8] = v15;
    v19[9] = v11 - 1;
    v19[10] = v16;
    if (v11 != 1)
    {
      do
      {
        sub_255BC33A4(v19, v20, v8, v6);
        v6 += v5;
        --v7;
      }

      while (v7);
    }

    return sub_255BC33A4(v19, v20, v8, v6);
  }

  return result;
}

unsigned int *sub_255BC33A4(unsigned int *result, void *a2, uint64_t a3, char *__src)
{
  v7 = result;
  if (result[7])
  {
    v8 = 0;
    do
    {
      v9 = v7[2] | (v7[4] << 32);
      *a2 = __src;
      a2[1] = v9;
      v10 = v7[5];
      v11 = *a3;
      if (v10)
      {
        v12 = *v11;
        if (*v11)
        {
          v13 = *(a3 + 8);
          v14 = 1;
          v15 = __src;
          *a2 = __src;
LABEL_7:
          result = memmove(*v13, v15, v12);
          v16 = v7[5];
          v11 = *a3;
          v13 = *(a3 + 8);
          while (1)
          {
            *v13 = *v13 + *(*(a3 + 16) + 24);
            v15 += v7[6];
            if (v14 >= v16)
            {
              break;
            }

            v12 = *v11;
            ++v14;
            *a2 = v15;
            if (v12)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v13 = *(a3 + 8);
          v17 = *(*(a3 + 16) + 24);
          v18 = v7[6];
          v15 = __src;
          do
          {
            *a2 = v15;
            *v13 = *v13 + v17;
            v15 += v18;
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        v13 = *(a3 + 8);
        v15 = __src;
      }

      *a2 = v15;
      if (*v11)
      {
        result = memmove(*v13, v15, *v11);
        v13 = *(a3 + 8);
      }

      *v13 = *v13 + *(*(a3 + 16) + 24);
      __src += v7[8];
      ++v8;
    }

    while (v8 < v7[7]);
  }

  v19 = v7[2] | (v7[4] << 32);
  *a2 = __src;
  a2[1] = v19;
  v20 = v7[5];
  v21 = *a3;
  if (v20)
  {
    v22 = *v21;
    if (*v21)
    {
      v23 = *(a3 + 8);
      v24 = 1;
      *a2 = __src;
LABEL_19:
      result = memmove(*v23, __src, v22);
      v25 = v7[5];
      v21 = *a3;
      v23 = *(a3 + 8);
      while (1)
      {
        *v23 = *v23 + *(*(a3 + 16) + 24);
        __src += v7[6];
        if (v24 >= v25)
        {
          break;
        }

        v22 = *v21;
        ++v24;
        *a2 = __src;
        if (v22)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v23 = *(a3 + 8);
      v26 = *(*(a3 + 16) + 24);
      v27 = v7[6];
      do
      {
        *a2 = __src;
        *v23 = *v23 + v26;
        __src += v27;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v23 = *(a3 + 8);
  }

  *a2 = __src;
  if (*v21)
  {
    result = memmove(*v23, __src, *v21);
    v23 = *(a3 + 8);
  }

  *v23 = *v23 + *(*(a3 + 16) + 24);
  return result;
}

void *sub_255BC35DC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 0x29)
  {
    v7 = sub_255A7F9C8(a1, "Invalid Format (", 16);
    a1 = MEMORY[0x259C48FE0](v7, v2);
    v4 = ")";
    v5 = 1;
  }

  else
  {
    v3 = &(&off_2798076F0)[2 * v2];
    v4 = *v3;
    v5 = v3[1];
  }

  return sub_255A7F9C8(a1, v4, v5);
}

BOOL sub_255BC3664(uint64_t a1)
{
  v1 = (*(*a1 + 40))(a1);
  if (v2)
  {
    v8 = 0;
    v9 = 0;
    v7 = &unk_2867C4068;
    (*(*v1 + 56))(v1, &v7);
    if (!v8)
    {
      v4 = 0;
      v7 = &unk_2867C4068;
      v5 = v9;
      if (!v9)
      {
        return v4 != 0;
      }

      goto LABEL_9;
    }

    v4 = *v8;
    v3 = v8[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v7 = &unk_2867C4068;
        v5 = v9;
        if (!v9)
        {
          return v4 != 0;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = 0;
    v8 = 0;
    v9 = 0;
  }

  v7 = &unk_2867C4068;
  v5 = v9;
  if (!v9)
  {
    return v4 != 0;
  }

LABEL_9:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return v4 != 0;
}

void sub_255BC3840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BC3854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 40))(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = &unk_2867C4068;
  if (v4)
  {
    return (*(*result + 56))(result, a2);
  }

  return result;
}

uint64_t *sub_255BC3944()
{
  if ((atomic_load_explicit(&qword_27F7DC7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC7B8))
  {
    sub_255BC39E0();
  }

  if (byte_27F7DC7B7 >= 0)
  {
    return &qword_27F7DC7A0;
  }

  else
  {
    return qword_27F7DC7A0;
  }
}

void sub_255BC3AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC3AFC()
{
  if ((atomic_load_explicit(&qword_27F7DC7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC7D8))
  {
    sub_255BC3B98();
  }

  if (byte_27F7DC7D7 >= 0)
  {
    return &qword_27F7DC7C0;
  }

  else
  {
    return qword_27F7DC7C0;
  }
}

void sub_255BC3C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC3CB4()
{
  if ((atomic_load_explicit(&qword_27F7DC7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC7F8))
  {
    sub_255BC3D50();
  }

  if (byte_27F7DC7F7 >= 0)
  {
    return &qword_27F7DC7E0;
  }

  else
  {
    return qword_27F7DC7E0;
  }
}

void sub_255BC3E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC3E6C()
{
  if ((atomic_load_explicit(&qword_27F7DC818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC818))
  {
    sub_255BC3F08();
  }

  if (byte_27F7DC817 >= 0)
  {
    return &qword_27F7DC800;
  }

  else
  {
    return qword_27F7DC800;
  }
}

void sub_255BC3FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC4024()
{
  if ((atomic_load_explicit(&qword_27F7DC838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC838))
  {
    sub_255BC40C0();
  }

  if (byte_27F7DC837 >= 0)
  {
    return &qword_27F7DC820;
  }

  else
  {
    return qword_27F7DC820;
  }
}

void sub_255BC418C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC41BC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two16u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC42A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC42F8()
{
  if ((atomic_load_explicit(&qword_27F7DC858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC858))
  {
    sub_255BC4394();
  }

  if (byte_27F7DC857 >= 0)
  {
    return &qword_27F7DC840;
  }

  else
  {
    return qword_27F7DC840;
  }
}

void sub_255BC4460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC44B0()
{
  if ((atomic_load_explicit(&qword_27F7DC878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC878))
  {
    sub_255BC454C();
  }

  if (byte_27F7DC877 >= 0)
  {
    return &qword_27F7DC860;
  }

  else
  {
    return qword_27F7DC860;
  }
}

void sub_255BC4618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC4648(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Three8u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC4784()
{
  if ((atomic_load_explicit(&qword_27F7DC898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC898))
  {
    sub_255BC4820();
  }

  if (byte_27F7DC897 >= 0)
  {
    return &qword_27F7DC880;
  }

  else
  {
    return qword_27F7DC880;
  }
}

void sub_255BC48EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC491C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Three16u]", 32, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC4A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC4A58()
{
  if ((atomic_load_explicit(&qword_27F7DC8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC8B8))
  {
    sub_255BC4AF4();
  }

  if (byte_27F7DC8B7 >= 0)
  {
    return &qword_27F7DC8A0;
  }

  else
  {
    return qword_27F7DC8A0;
  }
}

void sub_255BC4BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC4BF0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Three16f]", 32, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC4CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC4D2C()
{
  if ((atomic_load_explicit(&qword_27F7DC8D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC8D8))
  {
    sub_255BC4DC8();
  }

  if (byte_27F7DC8D7 >= 0)
  {
    return &qword_27F7DC8C0;
  }

  else
  {
    return qword_27F7DC8C0;
  }
}

void sub_255BC4E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC4EC4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Three32f]", 32, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC4FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC5000()
{
  if ((atomic_load_explicit(&qword_27F7DC8F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC8F8))
  {
    sub_255BC509C();
  }

  if (byte_27F7DC8F7 >= 0)
  {
    return &qword_27F7DC8E0;
  }

  else
  {
    return qword_27F7DC8E0;
  }
}

void sub_255BC5168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC5198(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Four8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC527C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC52D4()
{
  if ((atomic_load_explicit(&qword_27F7DC918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC918))
  {
    sub_255BC5370();
  }

  if (byte_27F7DC917 >= 0)
  {
    return &qword_27F7DC900;
  }

  else
  {
    return qword_27F7DC900;
  }
}

void sub_255BC543C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC546C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Four16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC5550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC55A8()
{
  if ((atomic_load_explicit(&qword_27F7DC938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC938))
  {
    sub_255BC5644();
  }

  if (byte_27F7DC937 >= 0)
  {
    return &qword_27F7DC920;
  }

  else
  {
    return qword_27F7DC920;
  }
}

void sub_255BC5710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC5740(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Four16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC5824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC587C()
{
  if ((atomic_load_explicit(&qword_27F7DC958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC958))
  {
    sub_255BC5918();
  }

  if (byte_27F7DC957 >= 0)
  {
    return &qword_27F7DC940;
  }

  else
  {
    return qword_27F7DC940;
  }
}

void sub_255BC59E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC5A14(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Four32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC5AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC5B50()
{
  if ((atomic_load_explicit(&qword_27F7DC978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC978))
  {
    sub_255BC5BEC();
  }

  if (byte_27F7DC977 >= 0)
  {
    return &qword_27F7DC960;
  }

  else
  {
    return qword_27F7DC960;
  }
}

void sub_255BC5CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC5D08()
{
  if ((atomic_load_explicit(&qword_27F7DC998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC998))
  {
    sub_255BC5DA4();
  }

  if (byte_27F7DC997 >= 0)
  {
    return &qword_27F7DC980;
  }

  else
  {
    return qword_27F7DC980;
  }
}

void sub_255BC5E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC5EA0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgr16u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC5F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC5FDC()
{
  if ((atomic_load_explicit(&qword_27F7DC9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC9B8))
  {
    sub_255BC6078();
  }

  if (byte_27F7DC9B7 >= 0)
  {
    return &qword_27F7DC9A0;
  }

  else
  {
    return qword_27F7DC9A0;
  }
}

void sub_255BC6144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC6174(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgr16f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC6258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC62B0()
{
  if ((atomic_load_explicit(&qword_27F7DC9D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC9D8))
  {
    sub_255BC634C();
  }

  if (byte_27F7DC9D7 >= 0)
  {
    return &qword_27F7DC9C0;
  }

  else
  {
    return qword_27F7DC9C0;
  }
}

void sub_255BC6418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC6448(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgr32f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC6584()
{
  if ((atomic_load_explicit(&qword_27F7DC9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC9F8))
  {
    sub_255BC6620();
  }

  if (byte_27F7DC9F7 >= 0)
  {
    return &qword_27F7DC9E0;
  }

  else
  {
    return qword_27F7DC9E0;
  }
}

void sub_255BC66EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC673C()
{
  if ((atomic_load_explicit(&qword_27F7DCA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCA18))
  {
    sub_255BC67D8();
  }

  if (byte_27F7DCA17 >= 0)
  {
    return &qword_27F7DCA00;
  }

  else
  {
    return qword_27F7DCA00;
  }
}

void sub_255BC68A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC68F4()
{
  if ((atomic_load_explicit(&qword_27F7DCA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCA38))
  {
    sub_255BC6990();
  }

  if (byte_27F7DCA37 >= 0)
  {
    return &qword_27F7DCA20;
  }

  else
  {
    return qword_27F7DCA20;
  }
}

void sub_255BC6A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC6A8C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgb16f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC6B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC6BC8()
{
  if ((atomic_load_explicit(&qword_27F7DCA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCA58))
  {
    sub_255BC6C64();
  }

  if (byte_27F7DCA57 >= 0)
  {
    return &qword_27F7DCA40;
  }

  else
  {
    return qword_27F7DCA40;
  }
}

void sub_255BC6D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC6D60(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgb32f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC6E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC6E9C()
{
  if ((atomic_load_explicit(&qword_27F7DCA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCA78))
  {
    sub_255BC6F38();
  }

  if (byte_27F7DCA77 >= 0)
  {
    return &qword_27F7DCA60;
  }

  else
  {
    return qword_27F7DCA60;
  }
}

void sub_255BC7004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC7054()
{
  if ((atomic_load_explicit(&qword_27F7DCA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCA98))
  {
    sub_255BC70F0();
  }

  if (byte_27F7DCA97 >= 0)
  {
    return &qword_27F7DCA80;
  }

  else
  {
    return qword_27F7DCA80;
  }
}

void sub_255BC71BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC71EC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC72D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC7328()
{
  if ((atomic_load_explicit(&qword_27F7DCAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCAB8))
  {
    sub_255BC73C4();
  }

  if (byte_27F7DCAB7 >= 0)
  {
    return &qword_27F7DCAA0;
  }

  else
  {
    return qword_27F7DCAA0;
  }
}

void sub_255BC7490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC74C0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC75A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC75FC()
{
  if ((atomic_load_explicit(&qword_27F7DCAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCAD8))
  {
    sub_255BC7698();
  }

  if (byte_27F7DCAD7 >= 0)
  {
    return &qword_27F7DCAC0;
  }

  else
  {
    return qword_27F7DCAC0;
  }
}

void sub_255BC7764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC7794(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC7878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC78D0()
{
  if ((atomic_load_explicit(&qword_27F7DCAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCAF8))
  {
    sub_255BC796C();
  }

  if (byte_27F7DCAF7 >= 0)
  {
    return &qword_27F7DCAE0;
  }

  else
  {
    return qword_27F7DCAE0;
  }
}

void sub_255BC7A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC7A88()
{
  if ((atomic_load_explicit(&qword_27F7DCB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCB18))
  {
    sub_255BC7B24();
  }

  if (byte_27F7DCB17 >= 0)
  {
    return &qword_27F7DCB00;
  }

  else
  {
    return qword_27F7DCB00;
  }
}

void sub_255BC7BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC7C20(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC7D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC7D5C()
{
  if ((atomic_load_explicit(&qword_27F7DCB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCB38))
  {
    sub_255BC7DF8();
  }

  if (byte_27F7DCB37 >= 0)
  {
    return &qword_27F7DCB20;
  }

  else
  {
    return qword_27F7DCB20;
  }
}

void sub_255BC7EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC7F14()
{
  if ((atomic_load_explicit(&qword_27F7DCB58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCB58))
  {
    sub_255BC7FB0();
  }

  if (byte_27F7DCB57 >= 0)
  {
    return &qword_27F7DCB40;
  }

  else
  {
    return qword_27F7DCB40;
  }
}

void sub_255BC807C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC80CC()
{
  if ((atomic_load_explicit(&qword_27F7DCB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCB78))
  {
    sub_255BC8168();
  }

  if (byte_27F7DCB77 >= 0)
  {
    return &qword_27F7DCB60;
  }

  else
  {
    return qword_27F7DCB60;
  }
}

void sub_255BC8234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC8284()
{
  if ((atomic_load_explicit(&qword_27F7DCB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCB98))
  {
    sub_255BC8320();
  }

  if (byte_27F7DCB97 >= 0)
  {
    return &qword_27F7DCB80;
  }

  else
  {
    return qword_27F7DCB80;
  }
}

void sub_255BC83EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC841C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Abgr16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC8500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC8558()
{
  if ((atomic_load_explicit(&qword_27F7DCBB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCBB8))
  {
    sub_255BC85F4();
  }

  if (byte_27F7DCBB7 >= 0)
  {
    return &qword_27F7DCBA0;
  }

  else
  {
    return qword_27F7DCBA0;
  }
}

void sub_255BC86C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC86F0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Abgr16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC87D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC882C()
{
  if ((atomic_load_explicit(&qword_27F7DCBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCBD8))
  {
    sub_255BC88C8();
  }

  if (byte_27F7DCBD7 >= 0)
  {
    return &qword_27F7DCBC0;
  }

  else
  {
    return qword_27F7DCBC0;
  }
}

void sub_255BC8994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC89C4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Abgr32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC8AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC8B00()
{
  if ((atomic_load_explicit(&qword_27F7DCBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCBF8))
  {
    sub_255BC8B9C();
  }

  if (byte_27F7DCBF7 >= 0)
  {
    return &qword_27F7DCBE0;
  }

  else
  {
    return qword_27F7DCBE0;
  }
}

void sub_255BC8C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC8CB8()
{
  if ((atomic_load_explicit(&qword_27F7DCC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCC18))
  {
    sub_255BC8D54();
  }

  if (byte_27F7DCC17 >= 0)
  {
    return &qword_27F7DCC00;
  }

  else
  {
    return qword_27F7DCC00;
  }
}

void sub_255BC8E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255BC8E70()
{
  if ((atomic_load_explicit(&qword_27F7DCC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCC38))
  {
    sub_255BC8F0C();
  }

  if (byte_27F7DCC37 >= 0)
  {
    return &qword_27F7DCC20;
  }

  else
  {
    return qword_27F7DCC20;
  }
}

void sub_255BC8FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC9008(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Argb16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC90EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255BC9144()
{
  if ((atomic_load_explicit(&qword_27F7DCC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCC58))
  {
    sub_255BC91E0();
  }

  if (byte_27F7DCC57 >= 0)
  {
    return &qword_27F7DCC40;
  }

  else
  {
    return qword_27F7DCC40;
  }
}

void sub_255BC92AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BC92DC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Argb32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255BC93C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BC93F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

uint64_t sub_255BC94F4(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_255BC9530(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BC9634(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFD8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v35, lpsrc, 1);
    v18 = *(v35[0] + 2);
    *v36 = *v35[0];
    *&v36[16] = v18;
    v35[0] = 0;
    MEMORY[0x259C49320]();
    v19 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v20 = *(a1 + 8) == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(a1 + 16);
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(a1 + 8);
    }

    if (HIDWORD(v22) * HIDWORD(v21) != -1)
    {
      goto LABEL_29;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v23 = qword_27F7DD608, v24 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_28:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
        v35[0] = v19;
        v35[1] = v22;
        v35[2] = v21;
        sub_255AF2374(v36, v35);
        return;
      }
    }

    else
    {
      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_52;
      }
    }

    do
    {
      v26 = *v23;
      v25 = *(v23 + 8);
      v23 += 16;
      v26(v25, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v23 != v24);
    if (byte_27F7DD630)
    {
      goto LABEL_28;
    }

LABEL_52:
    abort();
  }

  v7 = *(a1 + 48);
  if (!v7 || (v8 = *(v6 + 2), v8 != *(a1 + 8)) || (v9 = *(v6 + 3), v9 != *(a1 + 12)) || (v10 = *(v6 + 4), v10 != *(a1 + 16)) || (v11 = *(v6 + 5), v11 != *(a1 + 20)))
  {
    v15 = *(v6 + 8);
    *&v36[12] = *(v6 + 20);
    *v36 = v15;
    sub_255BE8388(v37, (v6 + 40));
    *(a1 + 8) = *v36;
    *(a1 + 20) = *&v36[12];
    *(a1 + 64) = v38;
    *(a1 + 40) = v37[0];
    v16 = *(a1 + 48);
    if (v16)
    {
      free(v16);
    }

    v17 = v37[2];
    *(a1 + 48) = v37[1];
    *(a1 + 56) = v17;
    return;
  }

  if (v10 != 1)
  {
    if (!v8 || !v9)
    {
      return;
    }

    v27 = v8 - 1;
    v28 = *(v6 + 6);
    v29 = v9 - 1;
    if (v29)
    {
      if (v8 != 1)
      {
        for (i = 0; i != v29; ++i)
        {
          v31 = 0;
          v32 = v8 - 1;
          do
          {
            v7[v31] = v28[v31];
            v31 += v10;
            --v32;
          }

          while (v32);
          v7[v31] = v28[v31];
          v28 += v11;
          v7 += v11;
        }

        goto LABEL_42;
      }

      do
      {
        *v7 = *v28;
        v28 += v11;
        v7 += v11;
        --v29;
      }

      while (v29);
    }

    if (v8 == 1)
    {
LABEL_43:
      *v7 = *v28;
      return;
    }

    do
    {
LABEL_42:
      *v7 = *v28;
      v28 += v10;
      v7 += v10;
      --v27;
    }

    while (v27);
    goto LABEL_43;
  }

  if (v11 == v8)
  {
    v12 = (v9 * v8);
    if (!v12)
    {
      return;
    }

    v13 = *(v6 + 6);
    v14 = *(a1 + 48);
  }

  else
  {
    if (!v8 || !v9)
    {
      return;
    }

    v33 = *(v6 + 6);
    v34 = v9 - 1;
    if (v9 != 1)
    {
      do
      {
        memmove(v7, v33, v8);
        v33 += v11;
        v7 += v11;
        --v34;
      }

      while (v34);
    }

    v14 = v7;
    v13 = v33;
    v12 = v8;
  }

  memmove(v14, v13, v12);
}

void sub_255BC9A08(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BC9C70(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BC9ED8(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_255BC9F14(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCA018(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBED0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v41, lpsrc, 2);
    v19 = *(v41[0] + 2);
    *v42 = *v41[0];
    *&v42[16] = v19;
    v41[0] = 0;
    MEMORY[0x259C49320]();
    v20 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v21 = *(a1 + 8) == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = *(a1 + 16);
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a1 + 8);
    }

    if (HIDWORD(v23) * HIDWORD(v22) != -1)
    {
      goto LABEL_29;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v24 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_28:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
        v41[0] = v20;
        v41[1] = v23;
        v41[2] = v22;
        sub_255AF38B0(v42, v41);
        return;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_55;
      }
    }

    do
    {
      v27 = *v24;
      v26 = *(v24 + 8);
      v24 += 16;
      v27(v26, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v24 != v25);
    if (byte_27F7DD630)
    {
      goto LABEL_28;
    }

LABEL_55:
    abort();
  }

  v7 = *(a1 + 48);
  if (!v7 || (v8 = *(v6 + 2), v8 != *(a1 + 8)) || (v9 = *(v6 + 3), v9 != *(a1 + 12)) || (v10 = *(v6 + 4), v10 != *(a1 + 16)) || (v11 = *(v6 + 5), v11 != *(a1 + 20)))
  {
    v16 = *(v6 + 8);
    *&v42[12] = *(v6 + 20);
    *v42 = v16;
    sub_255BE87BC(v43, (v6 + 40));
    *(a1 + 8) = *v42;
    *(a1 + 20) = *&v42[12];
    *(a1 + 64) = v44;
    *(a1 + 40) = v43[0];
    v17 = *(a1 + 48);
    if (v17)
    {
      free(v17);
    }

    v18 = v43[2];
    *(a1 + 48) = v43[1];
    *(a1 + 56) = v18;
    return;
  }

  if (v10 != 1)
  {
    if (!v8 || !v9)
    {
      return;
    }

    v28 = v8 - 1;
    v29 = *(v6 + 6);
    v30 = 2 * v10;
    v31 = v9 - 1;
    if (v31)
    {
      if (!v28)
      {
        v40 = 2 * v11;
        do
        {
          *v7 = *v29;
          v29 = (v29 + v40);
          v7 = (v7 + v40);
          --v31;
        }

        while (v31);
        goto LABEL_54;
      }

      v32 = 0;
      v33 = 2 * v11;
      do
      {
        v34 = 0;
        v35 = v28;
        do
        {
          *(v7 + v34) = *(v29 + v34);
          v34 += v30;
          --v35;
        }

        while (v35);
        *(v7 + v34) = *(v29 + v34);
        v29 = (v29 + v33);
        v7 = (v7 + v33);
        ++v32;
      }

      while (v32 != v31);
    }

    else if (!v28)
    {
LABEL_54:
      *v7 = *v29;
      return;
    }

    do
    {
      *v7 = *v29;
      v29 = (v29 + v30);
      v7 = (v7 + v30);
      --v28;
    }

    while (v28);
    goto LABEL_54;
  }

  if (v11 == v8)
  {
    v12 = v9 * v8;
    if (!v12)
    {
      return;
    }

    v13 = 2 * v12;
    v14 = *(v6 + 6);
    v15 = *(a1 + 48);
  }

  else
  {
    if (!v8 || !v9)
    {
      return;
    }

    v36 = *(v6 + 6);
    v37 = 2 * v8;
    v38 = v9 - 1;
    if (v9 != 1)
    {
      v39 = 2 * v11;
      do
      {
        memmove(v7, v36, v37);
        v36 += v39;
        v7 = (v7 + v39);
        --v38;
      }

      while (v38);
    }

    v15 = v7;
    v14 = v36;
    v13 = v37;
  }

  memmove(v15, v14, v13);
}

void sub_255BCA408(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BCA670(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    v7 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27F7DD608;
    v4 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v3 != v4);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BCA8D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 60))
  {
    v3 = *(a1 + 56) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 60);
  }

  if (v4 * (*(a1 + 64) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 40);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_255BCAA3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 68))
  {
    v3 = *(a1 + 64) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 68);
  }

  if (v4 * (*(a1 + 72) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 48);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 48) = 0;
  return a1;
}

void sub_255BCABA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 68))
  {
    v3 = *(a1 + 64) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 68);
  }

  if (v4 * (*(a1 + 72) >> 33) != -1)
  {
LABEL_17:
    free(v2);
LABEL_18:
    *(a1 + 48) = 0;

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_21;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_27F7DD630)
  {
LABEL_16:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 48);
    if (!v2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  abort();
}

__int16 sub_255BCADD0@<H0>(uint64_t a1@<X0>, char **lpsrc@<X1>)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBDC8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v161, lpsrc, 3);
    v23 = **&v161[0];
    v24 = *(*&v161[0] + 8);
    v25 = *(*&v161[0] + 12);
    v27 = *(*&v161[0] + 16);
    v26 = *(*&v161[0] + 20);
    *&v161[0] = 0;
    MEMORY[0x259C49320]();
    v28 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v29 = *(a1 + 8) == 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a1 + 16);
    if (v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(a1 + 12);
    }

    v32 = HIDWORD(v30);
    if (v31 * HIDWORD(v30) != -1)
    {
      v33 = v30;
      if (v27 != 1 || v30 != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    v160 = v26;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_64;
      }

      v46 = qword_27F7DD608;
      v47 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v46 = qword_27F7DD608;
      v47 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_203;
      }
    }

    do
    {
      v50 = *v46;
      v49 = *(v46 + 8);
      v46 += 16;
      v50(v49, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v46 != v47);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_203;
    }

LABEL_64:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v26 = v160;
    v33 = v30;
    if (v27 != 1 || v30 != 1)
    {
LABEL_34:
      if (v24)
      {
        v35 = v25 == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        return v7;
      }

      v36 = v24 - 1;
      v37 = 2 * v27;
      v38 = 2 * v33;
      v39 = v25 - 1;
      if (v25 != 1)
      {
        if (v24 != 1)
        {
          v40 = 0;
          do
          {
            v41 = v28;
            v42 = v23;
            v43 = v24 - 1;
            do
            {
              *v41 = *v42;
              v42 = (v42 + v37);
              v41 = (v41 + v38);
              --v43;
            }

            while (v43);
            *v41 = *v42;
            v23 += v26;
            v28 += v32;
            ++v40;
          }

          while (v40 != v39);
          goto LABEL_109;
        }

        do
        {
          *v28 = *v23;
          v23 += v26;
          v28 += v32;
          --v39;
        }

        while (v39);
      }

      if (v24 == 1)
      {
LABEL_110:
        LOWORD(v7) = *v23;
        *v28 = *v23;
        return v7;
      }

      do
      {
LABEL_109:
        *v28 = *v23;
        v23 = (v23 + v37);
        v28 = (v28 + v38);
        --v36;
      }

      while (v36);
      goto LABEL_110;
    }

LABEL_69:
    if (v26 != HIDWORD(v30) || v26 != v24)
    {
      if (!v24 || !v25)
      {
        return v7;
      }

      if (v25 == 1)
      {
LABEL_76:
        v53 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v53 < 3 || (v28 - v23) < 0x20)
        {
          v61 = v28;
          v62 = v23;
          goto LABEL_149;
        }

        v54 = v53 + 1;
        if (v53 >= 0xF)
        {
          v55 = v54 & 0xFFFFFFFFFFFFFFF0;
          v99 = (v23 + 8);
          v100 = v28 + 8;
          v101 = v54 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v7 = *(v99 - 1);
            v102 = *v99;
            *(v100 - 1) = v7;
            *v100 = v102;
            v99 += 2;
            v100 += 2;
            v101 -= 16;
          }

          while (v101);
          if (v54 == v55)
          {
            return v7;
          }

          if ((v54 & 0xC) == 0)
          {
            v62 = &v23[v55];
            v61 = &v28[v55];
            goto LABEL_149;
          }
        }

        else
        {
          v55 = 0;
        }

        v103 = v54 & 0xFFFFFFFFFFFFFFFCLL;
        v61 = &v28[v103];
        v62 = &v23[v103];
        v104 = &v23[v55];
        v105 = &v28[v55];
        v106 = v55 - (v54 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v107 = *v104++;
          LOWORD(v7) = v107;
          *v105++ = v107;
          v106 += 4;
        }

        while (v106);
        if (v54 == (v54 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v7;
        }

        do
        {
LABEL_149:
          v114 = *v62++;
          LOWORD(v7) = v114;
          *v61++ = v114;
        }

        while (v62 != &v23[v24]);
        return v7;
      }

      v63 = 0;
      v64 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v65 = v64 + 1;
      v66 = v28 >= &v23[v24 + v26 * (v25 - 2)] || v23 >= &v28[v24 + HIDWORD(v30) * (v25 - 2)];
      v67 = v65 & 0xFFFFFFFFFFFFFFF0;
      v68 = v65 & 0xFFFFFFFFFFFFFFFCLL;
      v69 = v65 & 0xFFFFFFFFFFFFFFFCLL;
      v70 = !v66;
      while (1)
      {
        v71 = v28;
        v72 = v23;
        if (!((v64 < 3) | v70 & 1))
        {
          if (v64 < 0xF)
          {
            v73 = 0;
LABEL_100:
            v71 = &v28[v69];
            v72 = &v23[v69];
            v78 = v73;
            v79 = v73 - v68;
            do
            {
              *&v28[v78] = *&v23[v78];
              v78 += 4;
              v79 += 4;
            }

            while (v79);
            if (v65 == v68)
            {
              goto LABEL_92;
            }

            goto LABEL_105;
          }

          v74 = 0;
          v75 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v76 = &v28[v74];
            v77 = *&v23[v74 + 8];
            *v76 = *&v23[v74];
            v76[1] = v77;
            v74 += 16;
            v75 -= 16;
          }

          while (v75);
          if (v65 == (v65 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_92;
          }

          v73 = v65 & 0xFFFFFFFFFFFFFFF0;
          if ((v65 & 0xC) != 0)
          {
            goto LABEL_100;
          }

          v72 = &v23[v67];
          v71 = &v28[v67];
        }

        do
        {
LABEL_105:
          v80 = *v72++;
          *v71++ = v80;
        }

        while (v72 != &v23[v24]);
LABEL_92:
        v23 += v26;
        v28 += v32;
        v21 = v63++ == v25 - 2;
        if (v21)
        {
          goto LABEL_76;
        }
      }
    }

    v56 = (v25 * v24);
    if (!v56)
    {
      return v7;
    }

    v57 = (v56 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v57 < 3)
    {
      v58 = v23;
      goto LABEL_145;
    }

    v58 = v23;
    if ((v28 - v23) < 0x20)
    {
      goto LABEL_145;
    }

    v59 = v57 + 1;
    if (v57 >= 0xF)
    {
      v60 = v59 & 0xFFFFFFFFFFFFFFF0;
      v81 = (v23 + 8);
      v82 = v28 + 8;
      v83 = v59 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v7 = *(v81 - 1);
        v84 = *v81;
        *(v82 - 1) = v7;
        *v82 = v84;
        v81 += 2;
        v82 += 2;
        v83 -= 16;
      }

      while (v83);
      if (v59 == v60)
      {
        return v7;
      }

      if ((v59 & 0xC) == 0)
      {
        v58 = &v23[v60];
        v28 += v60;
        goto LABEL_145;
      }
    }

    else
    {
      v60 = 0;
    }

    v85 = v59 & 0xFFFFFFFFFFFFFFFCLL;
    v86 = &v28[v85];
    v58 = &v23[v85];
    v87 = &v23[v60];
    v88 = &v28[v60];
    v89 = v60 - (v59 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v90 = *v87++;
      LOWORD(v7) = v90;
      *v88++ = v90;
      v89 += 4;
    }

    while (v89);
    v28 = v86;
    if (v59 == (v59 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v7;
    }

LABEL_145:
    v112 = &v23[v56];
    do
    {
      v113 = *v58++;
      LOWORD(v7) = v113;
      *v28++ = v113;
    }

    while (v58 != v112);
    return v7;
  }

  v8 = *(a1 + 48);
  if (!v8 || (v9 = *(v6 + 2), v9 != *(a1 + 8)) || (v10 = *(v6 + 3), v10 != *(a1 + 12)) || (v11 = *(v6 + 4), v11 != *(a1 + 16)) || (v12 = *(v6 + 5), v12 != *(a1 + 20)))
  {
    v19 = *(v6 + 8);
    *(v161 + 12) = *(v6 + 20);
    v161[0] = v19;
    sub_255BE8DB0(v162, (v6 + 40));
    *(a1 + 8) = v161[0];
    *(a1 + 20) = *(v161 + 12);
    LOWORD(v7) = v163;
    *(a1 + 64) = v163;
    v20 = *(a1 + 48);
    if (!v20)
    {
      *(a1 + 40) = v162[0];
      goto LABEL_59;
    }

    if (*(a1 + 68))
    {
      v21 = *(a1 + 64) == 0;
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
      v22 = *(a1 + 68);
    }

    if (v22 * (*(a1 + 72) >> 33) != -1)
    {
      *(a1 + 40) = v162[0];
LABEL_58:
      free(v20);
      goto LABEL_59;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_57;
      }

      v44 = qword_27F7DD608;
      v45 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v44 = qword_27F7DD608;
      v45 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_203;
      }
    }

    do
    {
      (*v44)(*(v44 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v44 += 16;
    }

    while (v44 != v45);
    if (byte_27F7DD630)
    {
LABEL_57:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 = *(a1 + 48);
      *(a1 + 40) = v162[0];
      if (v20)
      {
        goto LABEL_58;
      }

LABEL_59:
      v48 = v162[2];
      *(a1 + 48) = v162[1];
      *(a1 + 56) = v48;
      return v7;
    }

LABEL_203:
    abort();
  }

  if (v11 != 1)
  {
    if (!v9 || !v10)
    {
      return v7;
    }

    v91 = v9 - 1;
    v92 = *(v6 + 6);
    v93 = 2 * v11;
    v94 = v10 - 1;
    if (v94)
    {
      if (v91)
      {
        v95 = 0;
        v96 = 2 * v12;
        do
        {
          v97 = 0;
          v98 = v91;
          do
          {
            *(v8 + v97) = *(v92 + v97);
            v97 += v93;
            --v98;
          }

          while (v98);
          *(v8 + v97) = *(v92 + v97);
          v92 = (v92 + v96);
          v8 = (v8 + v96);
          ++v95;
        }

        while (v95 != v94);
        goto LABEL_177;
      }

      v136 = 2 * v12;
      do
      {
        *v8 = *v92;
        v92 = (v92 + v136);
        v8 = (v8 + v136);
        --v94;
      }

      while (v94);
    }

    if (!v91)
    {
LABEL_178:
      LOWORD(v7) = *v92;
      *v8 = *v92;
      return v7;
    }

    do
    {
LABEL_177:
      *v8 = *v92;
      v92 = (v92 + v93);
      v8 = (v8 + v93);
      --v91;
    }

    while (v91);
    goto LABEL_178;
  }

  if (v12 != v9)
  {
    if (!v9 || !v10)
    {
      return v7;
    }

    v108 = *(v6 + 6);
    if (v10 == 1)
    {
LABEL_140:
      v109 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v109 < 3 || v8 - v108 < 0x20)
      {
        v115 = v8;
        v116 = v108;
        goto LABEL_201;
      }

      v110 = v109 + 1;
      if (v109 >= 0xF)
      {
        v111 = v110 & 0xFFFFFFFFFFFFFFF0;
        v147 = (v108 + 16);
        v148 = v8 + 8;
        v149 = v110 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v7 = *(v147 - 1);
          v150 = *v147;
          *(v148 - 1) = v7;
          *v148 = v150;
          v147 += 2;
          v148 += 2;
          v149 -= 16;
        }

        while (v149);
        if (v110 == v111)
        {
          return v7;
        }

        if ((v110 & 0xC) == 0)
        {
          v116 = (v108 + 2 * v111);
          v115 = &v8[v111];
          goto LABEL_201;
        }
      }

      else
      {
        v111 = 0;
      }

      v151 = v110 & 0xFFFFFFFFFFFFFFFCLL;
      v115 = &v8[v151];
      v116 = (v108 + v151 * 2);
      v152 = (v108 + 2 * v111);
      v153 = &v8[v111];
      v154 = v111 - (v110 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v155 = *v152++;
        LOWORD(v7) = v155;
        *v153++ = v155;
        v154 += 4;
      }

      while (v154);
      if (v110 == (v110 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v7;
      }

      do
      {
LABEL_201:
        v158 = *v116++;
        LOWORD(v7) = v158;
        *v115++ = v158;
      }

      while (v116 != (v108 + 2 * v9));
      return v7;
    }

    v117 = 0;
    v118 = v10 - 2;
    v119 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v120 = v119 + 1;
    v122 = v119 < 3 || v8 - v108 < 0x20;
    v123 = v120 & 0xFFFFFFFFFFFFFFF0;
    v124 = v120 & 0xFFFFFFFFFFFFFFFCLL;
    v125 = 2 * v12;
    while (1)
    {
      v126 = v8;
      v127 = v108;
      if (!v122)
      {
        if (v119 < 0xF)
        {
          v128 = 0;
LABEL_167:
          v126 = &v8[v124];
          v127 = (v108 + v124 * 2);
          v133 = v128;
          v134 = v128 - (v120 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            *&v8[v133] = *(v108 + v133 * 2);
            v133 += 4;
            v134 += 4;
          }

          while (v134);
          if (v120 == (v120 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_159;
          }

          goto LABEL_172;
        }

        v129 = 0;
        v130 = v120 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v131 = &v8[v129];
          v132 = *(v108 + v129 * 2 + 16);
          *v131 = *(v108 + v129 * 2);
          v131[1] = v132;
          v129 += 16;
          v130 -= 16;
        }

        while (v130);
        if (v120 == (v120 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_159;
        }

        v128 = v120 & 0xFFFFFFFFFFFFFFF0;
        if ((v120 & 0xC) != 0)
        {
          goto LABEL_167;
        }

        v127 = (v108 + v123 * 2);
        v126 = &v8[v123];
      }

      do
      {
LABEL_172:
        v135 = *v127++;
        *v126++ = v135;
      }

      while (v127 != (v108 + 2 * v9));
LABEL_159:
      v108 += v125;
      v8 = (v8 + v125);
      v21 = v117++ == v118;
      if (v21)
      {
        goto LABEL_140;
      }
    }
  }

  v13 = (v10 * v9);
  if (!v13)
  {
    return v7;
  }

  v14 = *(v6 + 6);
  v15 = (v13 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v15 < 3)
  {
    v16 = *(v6 + 6);
    goto LABEL_197;
  }

  v16 = *(v6 + 6);
  if (v8 - v14 < 0x20)
  {
    goto LABEL_197;
  }

  v17 = v15 + 1;
  if (v15 >= 0xF)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFF0;
    v137 = (v14 + 16);
    v138 = v8 + 8;
    v139 = v17 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v7 = *(v137 - 1);
      v140 = *v137;
      *(v138 - 1) = v7;
      *v138 = v140;
      v137 += 2;
      v138 += 2;
      v139 -= 16;
    }

    while (v139);
    if (v17 == v18)
    {
      return v7;
    }

    if ((v17 & 0xC) != 0)
    {
      goto LABEL_184;
    }

    v16 = (v14 + 2 * v18);
    v8 += v18;
LABEL_197:
    v156 = (v14 + 2 * v13);
    do
    {
      v157 = *v16++;
      LOWORD(v7) = v157;
      *v8++ = v157;
    }

    while (v16 != v156);
    return v7;
  }

  v18 = 0;
LABEL_184:
  v141 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v142 = &v8[v141];
  v16 = (v14 + v141 * 2);
  v143 = (v14 + 2 * v18);
  v144 = &v8[v18];
  v145 = v18 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v146 = *v143++;
    LOWORD(v7) = v146;
    *v144++ = v146;
    v145 += 4;
  }

  while (v145);
  v8 = v142;
  if (v17 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_197;
  }

  return v7;
}