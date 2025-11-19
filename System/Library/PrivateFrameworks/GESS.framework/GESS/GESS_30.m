void sub_24BEF417C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BEF4230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF4260(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BEF4524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BEF456C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  sub_24BCC9910(__p, &v4, __p, 1uLL);
  sub_24BCC9FE4();
}

void sub_24BEF45F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF4620(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BEF48E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF49B4(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F9A918;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_285F9DC18;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

void sub_24BEF4AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF4AF8(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BEF4E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BEF4EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF4EF0(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BEF521C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF5264(uint64_t a1)
{
  v4 = a1;
  if ((sub_24BD22E84() & 1) == 0)
  {
    v3 = 1;
    if (sub_24BE80C50(&v4, &v3))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[default_stream] Cannot get gpu stream without gpu backend.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BEF5314();
  return sub_24BEF53B0(&unk_27F079240, &v4);
}

void *sub_24BEF5314()
{
  if ((atomic_load_explicit(&qword_27F0792F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0792F8))
  {
    sub_24BEF61E8(&unk_27F079240);
  }

  return &unk_27F079240;
}

uint64_t sub_24BEF53B0(uint64_t a1, int *a2)
{
  v2 = sub_24BEF59D8((a1 + 32), a2);
  if (!v2)
  {
    sub_24BC8E244("unordered_map::at: key not found");
  }

  v3 = *(v2 + 7);
  return *(v2 + 20);
}

uint64_t *sub_24BEF53E8(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  if ((sub_24BD22E84() & 1) == 0)
  {
    v4 = 1;
    if (sub_24BE80C50(&v5 + 1, &v4))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[set_default_stream] Cannot set gpu stream without gpu backend.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BEF5314();
  return sub_24BEF549C(&unk_27F079240, &v5);
}

uint64_t *sub_24BEF549C(uint64_t a1, uint64_t a2)
{
  result = sub_24BEF59D8((a1 + 32), (a2 + 4));
  if (!result)
  {
    sub_24BC8E244("unordered_map::at: key not found");
  }

  v4 = *a2;
  *(result + 7) = *(a2 + 8);
  *(result + 20) = v4;
  return result;
}

void sub_24BEF54E8(uint64_t a1)
{
  v3 = a1;
  if ((sub_24BD22E84() & 1) == 0)
  {
    v2 = 1;
    if (sub_24BE80C50(&v3, &v2))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[new_stream] Cannot make gpu stream without gpu backend.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BEF5314();
  sub_24BEF5598(&unk_27F079240, &v3);
}

void sub_24BEF5598(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v3 = *a2;
  operator new();
}

void sub_24BEF56E0()
{
  sub_24BEF5314();
  v0 = sub_24BE80B9C();
  sub_24BEF5598(&unk_27F079240, v0);
}

void sub_24BEF5710(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = a2;
  sub_24BEF6664();
}

void sub_24BEF5918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::future<void> a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  __cxa_free_exception(v20);
  std::mutex::unlock(v19);
  if (v18)
  {
    sub_24BC9EC78(v18);
  }

  std::future<void>::~future(&a12);
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  _Unwind_Resume(a1);
}

void sub_24BEF59A0()
{
  v0 = sub_24BE80B9C();
  v1 = sub_24BEF5264(*v0);

  sub_24BEF5710(v1, v2);
}

uint64_t *sub_24BEF59D8(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_24BEF5A8C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 850045863;
  *(a1 + 112) = 1018212795;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 164) = a2;
  *(a1 + 172) = a3;
  sub_24BEF5EC8();
}

void sub_24BEF5B4C(_Unwind_Exception *a1)
{
  std::thread::~thread((v1 + 176));
  std::condition_variable::~condition_variable(v2);
  sub_24BEF60B8((v1 + 64));
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF5B80(std::mutex *this)
{
  v8 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = 0;
    __lk.__m_ = this;
    __lk.__owns_ = 1;
    std::mutex::lock(this);
    while (1)
    {
      if (*&this[1].__m_.__opaque[32])
      {
        sub_24BEF5CF4(v6, *(*this[1].__m_.__opaque + ((*&this[1].__m_.__opaque[24] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*&this[1].__m_.__opaque[24] & 0x7FLL));
        sub_24BEF5DFC(&this[1]);
        v2 = 1;
        goto LABEL_7;
      }

      if (this[2].__m_.__opaque[24])
      {
        break;
      }

      std::condition_variable::wait(&this[1].__m_.__opaque[40], &__lk);
    }

    v2 = 0;
LABEL_7:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v2)
    {
      break;
    }

    if (!v7)
    {
      sub_24BCA1F3C();
    }

    (*(*v7 + 48))(v7);
    sub_24BCC9738(v6);
  }

  result = sub_24BCC9738(v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEF5CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEF5CF4(uint64_t a1, uint64_t a2)
{
  sub_24BEF5D78(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BEF5D78(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_24BEF5DFC(int64x2_t *a1)
{
  sub_24BCC9738(*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_24BFED7D0);

  return sub_24BEF5E68(a1, 1);
}

uint64_t sub_24BEF5E68(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void sub_24BEF5FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF5FE4(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  sub_24BEF6070(&v8);
  return 0;
}

void sub_24BEF605C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BEF6070(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BEF6070(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t sub_24BEF60B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_24BCC9738(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_24BCA10D8(a1);
}

void sub_24BEF61E8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 1018212795;
  *(a1 + 64) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 850045863;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  if (sub_24BD22E84())
  {
    v2 = 1;
    sub_24BEF5598(a1, &v2);
  }

  v2 = 0;
  sub_24BEF5598(a1, &v2);
}

void sub_24BEF62E8(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  std::condition_variable::~condition_variable(v2);
  sub_24BCA3B84(v1 + 32);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_24BEF6324(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24BEF6550(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); v2 != i; ++v2)
  {
    if (*v2)
    {
      sub_24BEF65E0(*v2);
    }
  }

  std::mutex::~mutex((a1 + 120));
  std::condition_variable::~condition_variable((a1 + 72));
  sub_24BCA3B84(a1 + 32);
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

std::promise<void> *sub_24BEF66C0(std::promise<void> *a1)
{
  a1[1].__state_ = 0;
  a1[2].__state_ = 0;
  a1->__state_ = &unk_285F9A968;
  std::promise<void>::promise(a1 + 3);
  return a1;
}

void sub_24BEF673C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BEF679C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BEF6924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BEF6970(void *a1)
{
  *a1 = &unk_285F9A9B8;
  v2 = a1[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BEF69BC(void *a1)
{
  *a1 = &unk_285F9A9B8;
  v1 = a1[2];
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BEF6A94(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_285F9A9B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEF6ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24BC9EC78(v1);
  }
}

void sub_24BEF6ADC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  operator delete(__p);
}

uint64_t sub_24BEF6B24(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AA18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BEF6B70(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if (*(a1 + 160) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  sub_24BEF6C34((a1 + 64), a2);
  std::mutex::unlock(a1);

  std::condition_variable::notify_one((a1 + 112));
}

void sub_24BEF6C10(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF6C34(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_24BEF679C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  sub_24BEF6D04(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 >> 7));
  v14 = *v13 + 32 * (v11 & 0x7F);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4096;
  }

  return v14 - 32;
}

uint64_t sub_24BEF6D04(uint64_t a1, uint64_t a2)
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

void sub_24BEF6D84(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  v2 = sub_24BE80B9C();
  v12 = sub_24BEF5264(*v2);
  v13 = v3;
  for (i = *a1; ; i += 16)
  {
    if (i == a1[1])
    {
      goto LABEL_7;
    }

    if (!*(*i + 80))
    {
      v5 = *(*i + 64);
      if (v5)
      {
        break;
      }
    }
  }

  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
LABEL_7:
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  v7 = 0;
  v8 = 0;
  __p = 0;
  operator new();
}

void sub_24BEF78B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  __cxa_guard_abort(&qword_27F079030);
  sub_24BEFBF80((v49 - 160));
  sub_24BCA3B84(&a27);
  sub_24BE7F218(a10);
  sub_24BCA3B84(&a41);
  sub_24BEFC7C8(&a49);
  sub_24BEFC6A0((v49 - 224));
  _Unwind_Resume(a1);
}

void *sub_24BEF7A84(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24BEFD31C(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v8 + v3[4];
  }

  v10 = *a2;
  *(*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

uint64_t sub_24BEF7B24(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_24BE7F218(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2);
  --a1[5];

  return sub_24BEFD030(a1, 1);
}

uint64_t *sub_24BEF7B8C(uint64_t *result)
{
  for (i = *result; i != result[1]; i += 16)
  {
    if (!*(*i + 80))
    {
      v2 = *result;
      v3 = result[2];
      *result = 0;
      result[1] = 0;
      result[2] = 0;
      sub_24BEF6D84(&v2);
    }
  }

  return result;
}

void sub_24BEF7C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;
  sub_24BCC961C((v9 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_24BEF7C30(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = *result;
    do
    {
      if (!*(*v3 + 80))
      {
        v4[0] = *result;
        v4[1] = v2;
        v4[2] = result[2];
        *result = 0;
        result[1] = 0;
        result[2] = 0;
        sub_24BEF6D84(v4);
      }

      v3 += 16;
    }

    while (v3 != v2);
    do
    {
      result = sub_24BE7F0C0(v1);
      v1 += 16;
    }

    while (v1 != v2);
  }

  return result;
}

void sub_24BEF7CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  *(v12 - 24) = &a9;
  sub_24BCC961C((v12 - 24));
  _Unwind_Resume(a1);
}

void sub_24BEF7D04(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  ++dword_27F07F720;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v4 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v5 = *v4;
    v6 = (*v4)[8];
    if (v6)
    {
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
    }

    else
    {
      v9 = sub_24BE80B9C();
      v7 = sub_24BEF5264(*v9);
      v8 = v10;
      v5 = *v4;
    }

    v11 = v4[1];
    v55[0] = v5;
    v55[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA48EC(v55, v7, v8 | 0x100000000);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    (*(*v12 + 48))(&v53);
    __src = 0;
    v51 = 0;
    v52 = 0;
    v13 = v53;
    if (v54 != v53)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(*(v13 + v14) + 64);
        if (!v17 || !sub_24BCC9488(*(*v17 - 8), &unk_285F9E5F8))
        {
          if (v16 >= ((a3[1] - *a3) >> 4))
          {
            sub_24BCE1268(&v60);
            v41 = sub_24BC95264(&v60, "[vjp] Number of outputs to compute gradients for (", 50);
            v42 = MEMORY[0x24C2543E0](v41, (v54 - v53) >> 4);
            v43 = sub_24BC95264(v42, ") does not match number of cotangents (", 39);
            v44 = MEMORY[0x24C2543E0](v43, (a3[1] - *a3) >> 4);
            sub_24BC95264(v44, ").", 2);
            exception = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(exception, v48);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
          }

          v18 = *(v13 + v14);
          v19 = *(*a3 + 16 * v16);
          v20 = *(v18 + 8) - *v18;
          if (v20 != *(v19 + 8) - *v19 || memcmp(*v18, *v19, v20))
          {
            sub_24BCE1268(&v60);
            v36 = sub_24BC95264(&v60, "[vjp] Output shape ", 19);
            v37 = sub_24BF02DB8(v36, *(v13 + v14));
            v38 = sub_24BC95264(v37, " does not match cotangent shape ", 32);
            v39 = sub_24BF02DB8(v38, *(*a3 + 16 * v16));
            sub_24BC95264(v39, ".", 1);
            if (v54 - v53 == 16 && *(*(v13 + v14) + 48) == 1)
            {
              sub_24BC95264(&v60, " If you are using grad your function must return a scalar.", 58);
            }

            v40 = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(v40, v48);
            v40->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v40, &unk_285F94708, MEMORY[0x277D82610]);
          }

          v21 = v51;
          if (v51 >= v52)
          {
            v23 = __src;
            v24 = v51 - __src;
            v25 = (v51 - __src) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              sub_24BC8E01C();
            }

            v27 = v52 - __src;
            if ((v52 - __src) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_24BC91F60(&__src, v28);
            }

            v29 = (v51 - __src) >> 3;
            v30 = (8 * v25);
            *v30 = v15;
            v30[1] = v16;
            v22 = 8 * v25 + 8;
            v31 = (8 * v25 - 8 * v29);
            memcpy(&v30[-2 * v29], v23, v24);
            v32 = __src;
            __src = v31;
            v51 = v22;
            v52 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v51 = v15;
            *(v21 + 1) = v16;
            v22 = (v21 + 8);
          }

          v51 = v22;
          ++v16;
        }

        ++v15;
        v13 = v53;
        v14 += 16;
      }

      while (v15 < (v54 - v53) >> 4);
    }

    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    v33 = v56;
    v34 = v57;
    while (v33 != v34)
    {
      v35 = *v33;
      *(v35 + 128) = 0;
      *&v60 = v35;
      sub_24BE9D664(v46, &v60);
      *&v60 = *v33;
      sub_24BE9D664(v48, &v60);
      v33 += 2;
    }

    v59 = 0;
    operator new();
  }

  sub_24BCA1F3C();
}

void sub_24BEF89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v67 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a66);
      if (a50)
      {
        a51 = a50;
        operator delete(a50);
      }

      __p = &a53;
      sub_24BCC961C(&__p);
      __p = &a58;
      sub_24BCC961C(&__p);
      --dword_27F07F720;
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v66);
  goto LABEL_6;
}

void sub_24BEF8C9C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_24BEFC608(v3, a1);
  sub_24BEFC608(v1, v3);
  v2 = 0;
  operator new();
}

void sub_24BEF8E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  sub_24BCC961C(&a21);
  sub_24BE7F218(&a22);
  a9 = &a12;
  sub_24BCC961C(&a9);
  sub_24BE7F218(&a24);
  sub_24BCC9B98(v26 - 120);
  sub_24BEFC128(&a26);
  sub_24BEFC128(v26 - 88);
  _Unwind_Resume(a1);
}

void sub_24BEF8F18(uint64_t a1, uint64_t ***a2, uint64_t *a3, __n128 a4)
{
  v37[5] = *MEMORY[0x277D85DE8];
  ++dword_27F07F720;
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  v7 = *a3;
  if (v6 == a3[1] - *a3)
  {
    if (v4 != v5)
    {
      v8 = 0;
      v9 = v6 >> 4;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      while (1)
      {
        v11 = v5[v8];
        v12 = *(v7 + v8 * 8);
        v13 = v11[1] - *v11;
        if (v13 != *(v12 + 8) - *v12 || memcmp(*v11, *v12, v13))
        {
          break;
        }

        v8 += 2;
        if (!--v10)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v14 = *v5;
          v15 = (*v5)[8];
          if (v15)
          {
            v16 = *(v15 + 8);
            v17 = *(v15 + 16);
          }

          else
          {
            v18 = sub_24BE80B9C();
            v16 = sub_24BEF5264(*v18);
            v17 = v19;
            v14 = *v5;
          }

          v20 = v5[1];
          v32[0] = v14;
          v32[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

          sub_24BEA48EC(v32, v16, v17 | 0x100000000);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[jvp] Input shape does not match shape of tangent.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    v21 = *(a1 + 24);
    if (v21)
    {
      (*(*v21 + 48))(&v31, a4);
      memset(v29, 0, sizeof(v29));
      v30 = 1065353216;
      memset(v27, 0, sizeof(v27));
      v28 = 1065353216;
      v22 = v33;
      v23 = v34;
      while (v22 != v23)
      {
        v24 = *v22;
        *(v24 + 128) = 0;
        v37[0] = v24;
        sub_24BE9D664(v27, v37);
        v37[0] = *v22;
        sub_24BE9D664(v29, v37);
        v22 += 2;
      }

      v36 = 0;
      operator new();
    }

    sub_24BCA1F3C();
  }

  v26 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v26, "[jvp] Number of inputs does not match number of tangents.");
  v26->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v26, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF9904(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_24BEFC608(v3, a1);
  sub_24BEFC608(v1, v3);
  v2 = 0;
  operator new();
}

void sub_24BEF9AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  sub_24BCC961C(&a21);
  sub_24BE7F218(&a22);
  a9 = &a12;
  sub_24BCC961C(&a9);
  sub_24BE7F218(&a24);
  sub_24BCC9B98(v26 - 120);
  sub_24BEFC128(&a26);
  sub_24BEFC128(v26 - 88);
  _Unwind_Resume(a1);
}

void sub_24BEF9B80(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    sub_24BEFE808(&v6, a1);
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a3 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[grad] Must specify at least one argument.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

uint64_t sub_24BEF9D30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return sub_24BCC9B98(a1);
}

void sub_24BEF9D74(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, std::string *a4@<X8>, __n128 a5@<Q0>)
{
  ++dword_27F07F720;
  v8 = *a2;
  v9 = a2[1];
  if ((a3[1] - *a3) >> 2 != (v9 - *a2) >> 4)
  {
    sub_24BC848F0(&v47);
    v39 = sub_24BC95264(v49, "[vmap] The number of in axes (", 30);
    v40 = MEMORY[0x24C2543E0](v39, (a3[1] - *a3) >> 2);
    v41 = sub_24BC95264(v40, ") must match the number of inputs (", 35);
    v42 = MEMORY[0x24C2543E0](v41, (a2[1] - *a2) >> 4);
    sub_24BC95264(v42, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v46);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v9 == v8)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*a3 + 4 * v12);
      if (v14 != -1)
      {
        v15 = *(*(v8 + v11) + 8) - **(v8 + v11);
        if (!v15)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v33, "[vmap] Cannot vmap an input with zero dimensions.");
          v33->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v33, &unk_285F94708, MEMORY[0x277D82610]);
        }

        if (v14 > v15 >> 2)
        {
          sub_24BCE1268(&v47);
          v28 = sub_24BC95264(&v47, "[vmap] Axis ", 12);
          v29 = MEMORY[0x24C2543C0](v28, *(*a3 + 4 * v12));
          v30 = sub_24BC95264(v29, " invalid for input with ", 24);
          v31 = MEMORY[0x24C2543E0](v30, (*(*(*a2 + v11) + 8) - **(*a2 + v11)) >> 2);
          sub_24BC95264(v31, " dimensions.", 12);
          v32 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v32, &v46);
          v32->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v32, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v13 = sub_24BD1EEAC((v8 + v11), v14);
        v8 = *a2;
        v9 = a2[1];
      }

      ++v12;
      v11 += 16;
    }

    while (v12 < (v9 - v8) >> 4);
  }

  if (v9 == v8)
  {
    v47 = 0;
    v48 = 0;
    v49[0] = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(*a3 + 4 * v17);
      if (v18 != -1)
      {
        v19 = sub_24BD1EEAC((v8 + v16), v18);
        if (v13 != v19)
        {
          sub_24BCE1268(&v47);
          v34 = sub_24BC95264(&v47, "[vmap] Inconsistent axis sizes: ", 32);
          v35 = MEMORY[0x24C2543E0](v34, v19);
          v36 = sub_24BC95264(v35, " and ", 5);
          v37 = MEMORY[0x24C2543E0](v36, v13);
          sub_24BC95264(v37, ".", 1);
          v38 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v38, &v46);
          v38->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v38, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v8 = *a2;
        v9 = a2[1];
      }

      ++v17;
      v16 += 16;
    }

    while (v17 < (v9 - v8) >> 4);
    v47 = 0;
    v48 = 0;
    v49[0] = 0;
    if (v9 != v8)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        if (*(*a3 + 4 * v21) != -1)
        {
          v22 = *(v8 + v20);
          memset(&v46, 0, sizeof(v46));
          sub_24BCC9A1C(&v46, *v22, v22[1], (v22[1] - *v22) >> 2);
          v23 = v46.__r_.__value_.__r.__words[0];
          v24 = v46.__r_.__value_.__r.__words[0] + 4 * *(*a3 + 4 * v21);
          v25 = v46.__r_.__value_.__l.__size_ - (v24 + 4);
          if (v46.__r_.__value_.__l.__size_ != v24 + 4)
          {
            memmove((v46.__r_.__value_.__r.__words[0] + 4 * *(*a3 + 4 * v21)), (v24 + 4), v46.__r_.__value_.__l.__size_ - (v24 + 4));
            v23 = v46.__r_.__value_.__r.__words[0];
          }

          v46.__r_.__value_.__l.__size_ = v24 + v25;
          memset(__p, 0, sizeof(__p));
          sub_24BCC9A1C(__p, v23, v24 + v25, (v24 + v25 - v23) >> 2);
          v26 = *(*(*a2 + v20) + 56);
          sub_24BE7E8D4();
        }

        sub_24BCC3A64(&v47, (v8 + v20));
        ++v21;
        v8 = *a2;
        v20 += 16;
      }

      while (v21 < (a2[1] - *a2) >> 4);
    }
  }

  v27 = *(a1 + 24);
  if (!v27)
  {
    sub_24BCA1F3C();
  }

  (*(*v27 + 48))(&v46, a5);
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  sub_24BCC9548(a4, v47, v48, (v48 - v47) >> 4);
  a4[1] = v46;
  memset(&v46, 0, sizeof(v46));
  v45 = &v46;
  sub_24BCC961C(&v45);
  v46.__r_.__value_.__r.__words[0] = &v47;
  sub_24BCC961C(&v46);
  --dword_27F07F720;
}

void sub_24BEFA358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_24BC84B94(&a25);
      --dword_27F07F720;
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

void sub_24BEFA4C0(uint64_t a1, uint64_t *a2, void *a3, int **a4, void *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((a5[1] - *a5) >> 2 != (a3[1] - *a3) >> 4)
  {
    sub_24BC848F0(&v43);
    v25 = sub_24BC95264(&v45, "[vmap] The number of out axes (", 31);
    v26 = MEMORY[0x24C2543E0](v25, (a5[1] - *a5) >> 2);
    v27 = sub_24BC95264(v26, ") must match the number of outputs (", 36);
    v28 = MEMORY[0x24C2543E0](v27, (a3[1] - *a3) >> 4);
    sub_24BC95264(v28, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v8 = *a1;
  v10 = *(a1 + 8) - v8;
  if (v10)
  {
    v13 = v10 >> 4;
    v14 = *a4;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      v8 += 2;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    if (sub_24BD1EEAC(v8, v15) != -1)
    {
      memset(v38, 0, sizeof(v38));
      v39 = 1065353216;
      memset(v36, 0, sizeof(v36));
      v37 = 1065353216;
      memset(v34, 0, sizeof(v34));
      v35 = 1065353216;
      v18 = *a2;
      if (a2[1] != *a2)
      {
        v19 = 0;
        do
        {
          v20 = *(v18 + 16 * v19);
          *&v30.__r_.__value_.__l.__data_ = v20;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v21 = *a4;
          v22 = (*a4)[v19];
          v23 = v20;
          if (v22 != -1)
          {
            v24 = *(*a1 + 16 * v19);
            v40 = v24;
            if (*(&v24 + 1))
            {
              atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
              v22 = v21[v19];
              v41 = v22;
              v43 = v23;
              v44 = v24;
              v45 = *(&v40 + 1);
              if (*(&v40 + 1))
              {
                atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
                v22 = v41;
              }
            }

            else
            {
              v41 = v22;
              v43 = v23;
              v44 = v24;
              v45 = 0;
            }

            LODWORD(__p) = v22;
            sub_24BEFF31C(v38, &v43);
            sub_24BE7F218(&v44);
            sub_24BE7F218(&v40);
            v43 = v30.__r_.__value_.__r.__words[0];
            sub_24BE9D664(v36, &v43);
            v23 = v30.__r_.__value_.__r.__words[0];
            *(v30.__r_.__value_.__r.__words[0] + 128) = 0;
          }

          v43 = v23;
          sub_24BE9D664(v34, &v43);
          sub_24BE7F218(&v30);
          ++v19;
          v18 = *a2;
        }

        while (v19 < (a2[1] - *a2) >> 4);
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      v42 = 0;
      operator new();
    }
  }

LABEL_7:
  v17 = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(v17, "At least one of in_axes must be non-None.");
  __cxa_throw(v17, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEFAD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if ((v64 & 1) == 0)
    {
LABEL_6:
      sub_24BC84B94(&a63);
      _Unwind_Resume(a1);
    }
  }

  else if (!v64)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v63);
  goto LABEL_6;
}

void sub_24BEFAF34(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  if (__p == v21)
  {
    v10 = 0;
  }

  else
  {
    v8 = __p + 4;
    do
    {
      v9 = *(v8 - 1);
      v10 = v9 >> 31;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v8 == v21;
      v8 += 4;
    }

    while (!v11);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v17, *a3, a3[1], (a3[1] - *a3) >> 2);
  if (v17 == v18)
  {
    v14 = 0;
    if (v17)
    {
LABEL_14:
      v18 = v17;
      operator delete(v17);
    }
  }

  else
  {
    v12 = v17 + 4;
    do
    {
      v13 = *(v12 - 1);
      v14 = v13 >> 31;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v12 == v18;
      v12 += 4;
    }

    while (!v11);
    if (v17)
    {
      goto LABEL_14;
    }
  }

  v15 = v10 ^ v14;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (!v15)
  {
    sub_24BEFE808(v28, a1);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    sub_24BCC9A1C(v29, *a2, a2[1], (a2[1] - *a2) >> 2);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    sub_24BCC9A1C(v31, *a3, a3[1], (a3[1] - *a3) >> 2);
    sub_24BEFE808(v23, v28);
    v24 = *v29;
    v25 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    v26 = *v31;
    v27 = v32;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    *(a4 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[vmap] Input (or output) axes must be specified if output (or input) axes are.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

uint64_t sub_24BEFB270(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return sub_24BCC9B98(a1);
}

void sub_24BEFB2C4(uint64_t a1, int a2, int a3, int a4)
{
  v7[12] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = a4;
  sub_24BEFFD28(v7, a1);
  v7[7] = 0;
  operator new();
}

void sub_24BEFB4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_24BCC9B98(&a17);
  sub_24BCC9B98(v17 - 104);
  _Unwind_Resume(a1);
}

void sub_24BEFB52C(uint64_t a1, int a2, int a3)
{
  v5[12] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a3;
  sub_24BEFC608(v5, a1);
  v5[7] = 0;
  operator new();
}

void sub_24BEFB6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_24BCC9B98(&a17);
  sub_24BCC9B98(v26 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFB780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) & 1) != 0 || (*(a3 + 32) & 1) != 0 || (*(a4 + 32))
  {
    sub_24BF009C0(&v11, a1);
    v12[0] = 0;
    v13 = 0;
    if (*(a2 + 32) == 1)
    {
      sub_24BEFC270(v12, a2);
      v13 = 1;
    }

    v14[0] = 0;
    v15 = 0;
    if (*(a3 + 32) == 1)
    {
      sub_24BEFC2F0(v14, a3);
      v15 = 1;
    }

    v16[0] = 0;
    v17 = 0;
    if (*(a4 + 32) == 1)
    {
      sub_24BEFC370(v16, a4);
      v17 = 1;
    }

    *(a5 + 24) = 0;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];

  return sub_24BF009C0(a5, a1);
}

uint64_t sub_24BEFB9F4(_BYTE *a1)
{
  if (a1[144] == 1)
  {
    sub_24BEFC488((a1 + 112));
  }

  if (a1[104] == 1)
  {
    sub_24BEFC508((a1 + 72));
  }

  if (a1[64] == 1)
  {
    sub_24BEFC588((a1 + 32));
  }

  return sub_24BCC9B98(a1);
}

uint64_t sub_24BEFBA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_24BEFE808(v13, a1);
  sub_24BEFC3F0(v11, a2);
  v12 = 1;
  v9[0] = 0;
  v10 = 0;
  v7[0] = 0;
  v8 = 0;
  sub_24BEFB780(v13, v11, v9, v7, a3);
  if (v8 == 1)
  {
    sub_24BEFC488(v7);
  }

  if (v10 == 1)
  {
    sub_24BEFC508(v9);
  }

  if (v12 == 1)
  {
    sub_24BEFC588(v11);
  }

  result = sub_24BCC9B98(v13);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEFBB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a13 == 1)
  {
    sub_24BEFC488(&a9);
  }

  if (a19 == 1)
  {
    sub_24BEFC508(&a15);
  }

  if (a25 == 1)
  {
    sub_24BEFC588(&a21);
  }

  sub_24BCC9B98(v25 - 56);
  _Unwind_Resume(a1);
}

void sub_24BEFBBA8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BEFE808(v5, a1);
  sub_24BEFE808(v4, a1);
  sub_24BEFE808(v2, v5);
  v3 = 0;
  operator new();
}

void sub_24BEFBC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_24BEFC588(va1);
  sub_24BCC9B98(va);
  sub_24BCC9B98(va2);
  sub_24BCC9B98(v2 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFBCE8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32 * (v7 - v8) - 1;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v11 + v10;
  if (v9 == v11 + v10)
  {
    sub_24BEFBDAC(a1);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8 = *(a1 + 8);
    v12 = v10 + v11;
  }

  v13 = *(v8 + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12;
  *v13 = a2;
  *(v13 + 8) = *a3;
  v14 = v11 + 1;
  *(a1 + 40) = v14;
  v15 = v10 + v14;
  v16 = (v8 + 8 * (v15 >> 8));
  if (v15)
  {
    v17 = *v16 + 16 * v15;
  }

  else
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

void *sub_24BEFBDAC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BEFBF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BEFBF80(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_24BCA10D8(a1);
}

void sub_24BEFC02C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 256;
  }

  a1[4] = v6;
}

void *sub_24BEFC0A8(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9548(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BCC9548((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_24BEFC110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFC128(uint64_t a1)
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

uint64_t sub_24BEFC1A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_24BCC961C(&v4);
  return a1;
}

uint64_t sub_24BEFC1F0(uint64_t a1)
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

uint64_t sub_24BEFC270(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BEFC2F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BEFC370(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BEFC3F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BEFC488(uint64_t a1)
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

uint64_t sub_24BEFC508(uint64_t a1)
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

uint64_t sub_24BEFC588(uint64_t a1)
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

uint64_t sub_24BEFC608(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BEFC6A0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_24BE7F218(v7) + 16;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 128;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 256;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_24BCA10D8(a1);
}

uint64_t sub_24BEFC7C8(uint64_t a1)
{
  sub_24BEFC804(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BEFC804(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4)
      {
        sub_24BC9EC78(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24BEFC86C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9AA38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t *sub_24BEFCA00(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = sub_24BEFCA58(a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  sub_24BD1C918(a1, v2);
  return v2;
}

uint64_t *sub_24BEFCA58(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_24BCA3EB4(a1, v15);
  }

  return 0;
}

void sub_24BEFCB70(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      sub_24BC9EC78(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_24BEFCBD0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_24BEFCDFC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24BEFD030(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_24BEFD0A0(void **a1, uint64_t a2)
{
  sub_24BEFC02C(a1);
  sub_24BEFD0F0(a1);
  result = sub_24BEFD2B4(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_24BEFD0F0(void **a1)
{
  if (a1[5])
  {
    sub_24BEFD174(a1, 0);
    sub_24BEFD030(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_24BEFD1D4(a1);
}

uint64_t sub_24BEFD174(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_24BEFD1D4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_24BCAD8CC(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_24BEFD2B4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_24BEFD1D4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *sub_24BEFD31C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BEFD4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_24BEFD4F0(void *a1, unint64_t *a2)
{
  result = sub_24BCA3BD0(a1, a2);
  if (result)
  {
    sub_24BD80CF0(a1, result);
    return 1;
  }

  return result;
}

void sub_24BEFD528(void ***a1)
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
        std::shared_future<void>::~shared_future(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_24BEFD5AC(void *a1)
{
  *a1 = &unk_285F9AB00;
  sub_24BE7F218(a1 + 1);
  return a1;
}

void sub_24BEFD5F0(void *a1)
{
  *a1 = &unk_285F9AB00;
  sub_24BE7F218(a1 + 1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BEFD6D8(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_285F9AB00;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[3];
  *(a2 + 29) = *(result + 29);
  *(a2 + 24) = v4;
  *(a2 + 37) = 0;
  *(a2 + 39) = 0;
  return result;
}

void sub_24BEFD730(char *a1)
{
  sub_24BE7F218(a1 + 8);

  operator delete(a1);
}

void sub_24BEFD76C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = *(v2 + 176);
  v5 = *(v2 + 184);
  while (v4 != v5)
  {
    if (*(*v4 + 104))
    {
      if (*sub_24BEFD91C(*v4 + 88) != *(*(*v3 + 64) + 8))
      {
        sub_24BF596CC(*v4 + 88);
      }
    }

    v4 += 16;
  }

  v6 = sub_24BEF5314();
  sub_24BEFD98C(v6);
  sub_24BE9CAB0(v3, &v11);
  (***(*(a1 + 8) + 64))();
  if (!sub_24BE7F21C(v3))
  {
    sub_24BE7EF28(v3);
  }

  v7 = v11;
  for (i = v12; v7 != i; *(v9 + 80) = 3)
  {
    v9 = *v7;
    v7 += 2;
  }

  if (*(a1 + 36))
  {
    sub_24BF59758((*v3 + 88));
  }

  v10 = sub_24BEF5314();
  sub_24BEFD9E0(v10);
  v13 = &v11;
  sub_24BCC961C(&v13);
}

void sub_24BEFD8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFD8D0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AB60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BEFD91C(uint64_t result)
{
  if (!*(result + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Event::stream] Cannot access stream on invalid event.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BEFD98C(uint64_t a1)
{
  std::mutex::lock((a1 + 120));
  ++*a1;
  std::mutex::unlock((a1 + 120));

  std::condition_variable::notify_all((a1 + 72));
}

void sub_24BEFD9E0(uint64_t a1)
{
  std::mutex::lock((a1 + 120));
  --*a1;
  std::mutex::unlock((a1 + 120));

  std::condition_variable::notify_all((a1 + 72));
}

uint64_t sub_24BEFDA34(uint64_t a1)
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

__n128 sub_24BEFDB30(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9AB80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BEFDB68(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v25 = *a2;
  result = sub_24BE9D664(v4, &v25);
  if (v6)
  {
    v7 = *a2;
    *(v7 + 128) = 0;
    v8 = *(v7 + 200);
    v9 = *(v7 + 208);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        v8 += 2;
        *(v10 + 128) = 0;
        v11 = *(a1 + 8);
        v25 = v10;
        result = sub_24BE9D664(v11, &v25);
      }

      while (v8 != v9);
      v7 = *a2;
    }

    v12 = *(v7 + 176);
    v13 = *(v7 + 184);
    if (v12 != v13)
    {
      do
      {
        v14 = *(*(a1 + 16) + 24);
        if (!v14)
        {
          sub_24BCA1F3C();
        }

        result = (*(*v14 + 48))(v14, v12);
        v12 += 16;
      }

      while (v12 != v13);
      v7 = *a2;
    }

    v15 = *(v7 + 64);
    if (v15)
    {
      result = sub_24BCC9488(*(*v15 - 8), &unk_285F9E5F8);
      if (result)
      {
        return result;
      }

      v7 = *a2;
    }

    v16 = *(v7 + 176);
    v17 = *(v7 + 184);
    while (v16 != v17)
    {
      v18 = *(a1 + 24);
      v25 = *v16;
      result = sub_24BCA3BD0(v18, &v25);
      if (result)
      {
        sub_24BCC3A64(*(a1 + 32), a2);
        v19 = *(a1 + 24);
        v25 = *a2;
        result = sub_24BE9D664(v19, &v25);
        v20 = *a2;
        v21 = *(*a2 + 200);
        v22 = *(v20 + 208);
        while (v21 != v22)
        {
          v23 = *(a1 + 24);
          v24 = *v21;
          v21 += 2;
          v25 = v24;
          result = sub_24BE9D664(v23, &v25);
        }

        return result;
      }

      v16 += 2;
    }
  }

  return result;
}

uint64_t sub_24BEFDCF4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9ABF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BEFDD40(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEFDF98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void sub_24BEFDFA4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    sub_24BE7F218(v1 + 24);
    operator delete(v1);
    *a1 = 0;
  }
}

void *sub_24BEFDFE0(void *a1)
{
  *a1 = &unk_285F9AC10;
  sub_24BEFC128((a1 + 1));
  return a1;
}

void sub_24BEFE024(void *a1)
{
  *a1 = &unk_285F9AC10;
  sub_24BEFC128((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BEFE134(void *a1)
{
  sub_24BEFC128(a1 + 8);

  operator delete(a1);
}

void sub_24BEFE170(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!v4)
  {
    sub_24BCA1F3C();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v7, &v8, 1uLL);
  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEFE224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFE240(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AC70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BEFE308(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9AC90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BEFE340(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v25[0] = *a2;
  sub_24BE9D664(v4, v25);
  if (v5)
  {
    v6 = *a2;
    *(v6 + 128) = 0;
    v7 = *(v6 + 200);
    v8 = *(v6 + 208);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        v7 += 2;
        *(v9 + 128) = 0;
        v10 = *(a1 + 8);
        v25[0] = v9;
        sub_24BE9D664(v10, v25);
      }

      while (v7 != v8);
      v6 = *a2;
    }

    v11 = *(v6 + 176);
    v12 = *(v6 + 184);
    if (v11 != v12)
    {
      do
      {
        v13 = v11[1];
        v25[0] = *v11;
        v25[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v14 = *(*(a1 + 16) + 24);
        if (!v14)
        {
          sub_24BCA1F3C();
        }

        (*(*v14 + 48))(v14, v25);
        sub_24BE7F218(v25);
        v11 += 2;
      }

      while (v11 != v12);
      v6 = *a2;
    }

    v15 = *(v6 + 64);
    if (v15)
    {
      if (sub_24BCC9488(*(*v15 - 8), &unk_285F9E5F8))
      {
        return;
      }

      v6 = *a2;
    }

    v16 = *(v6 + 176);
    v17 = *(v6 + 184);
    while (v16 != v17)
    {
      v18 = *(a1 + 24);
      v25[0] = *v16;
      if (sub_24BCA3BD0(v18, v25))
      {
        sub_24BCC3A64(*(a1 + 32), a2);
        v19 = *(a1 + 24);
        v25[0] = *a2;
        sub_24BE9D664(v19, v25);
        v20 = *a2;
        v21 = *(*a2 + 200);
        v22 = *(v20 + 208);
        while (v21 != v22)
        {
          v23 = *(a1 + 24);
          v24 = *v21;
          v21 += 2;
          v25[0] = v24;
          sub_24BE9D664(v23, v25);
        }

        return;
      }

      v16 += 2;
    }
  }
}

uint64_t sub_24BEFE510(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9ACF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BEFE55C(void *a1)
{
  *a1 = &unk_285F9AD10;
  sub_24BEFC128((a1 + 1));
  return a1;
}

void sub_24BEFE5A0(void *a1)
{
  *a1 = &unk_285F9AD10;
  sub_24BEFC128((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BEFE6B0(void *a1)
{
  sub_24BEFC128(a1 + 8);

  operator delete(a1);
}

void sub_24BEFE6EC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!v4)
  {
    sub_24BCA1F3C();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v7, &v8, 1uLL);
  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEFE7A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFE7BC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AD70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BEFE808(uint64_t a1, uint64_t a2)
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

void *sub_24BEFE8A0(void *a1)
{
  *a1 = &unk_285F9AD90;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BEFE8F8(void *a1)
{
  *a1 = &unk_285F9AD90;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BEFEA00(_Unwind_Exception *a1)
{
  sub_24BCC9B98(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFEA24(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_285F9AD90;
  sub_24BEFE808((a2 + 1), a1 + 8);
  v2[5] = 0;
  v2[6] = 0;
  v2 += 5;
  v2[2] = 0;
  return sub_24BCC9A1C(v2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
}

void sub_24BEFEAB4(void *a1)
{
  sub_24BEF9D30(a1 + 8);

  operator delete(a1);
}

void sub_24BEFEAF0(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4 == v5)
  {
    v7 = 0;
    v8 = *(a1 + 40);
  }

  else
  {
    do
    {
      v6 = *v4;
      if (*v4 < 0)
      {
        v6 += (a2[1] - *a2) >> 4;
      }

      LODWORD(v21[0]) = v6;
      sub_24BD69100(&v22, v21);
      ++v4;
    }

    while (v4 != v5);
    v7 = v24;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
  }

  if (v7 == (v8 - v4) >> 2)
  {
    v9 = v22;
    if ((*(v22 + 7) & 0x80000000) == 0)
    {
      v10 = v23;
      if (v23)
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 8);
        }

        while (v10);
      }

      else
      {
        v12 = &v23;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (v13);
      }

      if (*(v11 + 28) < ((a2[1] - *a2) >> 4))
      {
        memset(v20, 0, sizeof(v20));
        if (v22 != &v23)
        {
          do
          {
            sub_24BCC3A64(v20, (*a2 + 16 * *(v9 + 7)));
            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v13 = *v15 == v9;
                v9 = v15;
              }

              while (!v13);
            }

            v9 = v15;
          }

          while (v15 != &v23);
        }

        operator new();
      }
    }

    sub_24BCE1268(v21);
    v16 = sub_24BC95264(v21, "[grad] Invalid argument number for function with ", 49);
    v17 = MEMORY[0x24C2543E0](v16, (a2[1] - *a2) >> 4);
    sub_24BC95264(v17, " inputs.", 8);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v25);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v19, "[grad] Repeat argument number not allowed in grad.");
  v19->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v19, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEFEE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v12 - 81) < 0)
  {
    operator delete(*(v11 + 48));
    if ((v10 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(va);
      sub_24BCC8A84(v12 - 152, *(v11 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v9);
  goto LABEL_6;
}

uint64_t sub_24BEFEF60(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AE80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24BEFF028(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9AE10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BEFF060(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  memset(v22, 0, sizeof(v22));
  sub_24BCC9548(v22, *v6, v6[1], (v6[1] - *v6) >> 4);
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = **(a1 + 24);
    do
    {
      sub_24BECD238((v22[0] + 16 * *(v9 + 7)), (v7 + 16 * v8));
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v7 = *a2;
      v9 = v11;
    }

    while (v8 < (a2[1] - *a2) >> 4);
  }

  v13 = *(*(a1 + 8) + 24);
  if (!v13)
  {
    sub_24BCA1F3C();
  }

  (*(*v13 + 48))(v13, v22);
  v14 = *a3;
  if ((a3[1] - *a3) >= 0x11)
  {
    v15 = (v14 + 16);
    v16 = *(*(v14 + 16) + 64);
    if (v16)
    {
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
    }

    else
    {
      v19 = sub_24BE80B9C();
      v17 = sub_24BEF5264(*v19);
      v18 = v20;
    }

    sub_24BEB6798(v15, v17, v18 | 0x100000000);
  }

  *&v21 = v22;
  sub_24BCC961C(&v21);
}

void sub_24BEFF21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_24BCC961C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFF250(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AE70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BEFF29C(uint64_t a1)
{
  sub_24BEFF2D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BEFF2D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BE7F218(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_24BEFF31C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24BEFF574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BEFF588(va);
  _Unwind_Resume(a1);
}

char **sub_24BEFF588(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BE7F218(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_24BEFF650(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9AEA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BEFF688(uint64_t a1, __int128 *a2)
{
  v22 = *a2;
  if (!sub_24BCA3BD0(*(a1 + 8), &v22))
  {
    sub_24BE9DAE4(*(a1 + 8), &v22);
    v4 = *a2;
    v5 = *(*a2 + 200);
    v6 = *(*a2 + 208);
    if (v5 != v6)
    {
      do
      {
        v7 = *(a1 + 8);
        v8 = *v5;
        v5 += 2;
        v21[0] = v8;
        sub_24BE9D664(v7, v21);
      }

      while (v5 != v6);
      v4 = *a2;
    }

    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    if (v9 != v10)
    {
      do
      {
        v11 = *(*(a1 + 16) + 24);
        if (!v11)
        {
          sub_24BCA1F3C();
        }

        (*(*v11 + 48))(v11, v9);
        v9 += 2;
      }

      while (v9 != v10);
      v9 = *(*a2 + 176);
      v10 = *(*a2 + 184);
    }

    while (v9 != v10)
    {
      v12 = *(a1 + 24);
      v21[0] = *v9;
      if (sub_24BCA3BD0(v12, v21))
      {
        sub_24BCC3A64(*(a1 + 32), a2);
        *(*(*(*(a1 + 32) + 8) - 16) + 128) = 0;
        v13 = *(a1 + 24);
        v21[0] = *a2;
        sub_24BE9D664(v13, v21);
        v14 = *a2;
        v15 = *(*a2 + 200);
        for (i = *(v14 + 208); v15 != i; v15 += 2)
        {
          v17 = *v15;
          v18 = v15[1];
          v21[0] = *v15;
          v21[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = *(a1 + 24);
          v20 = v17;
          sub_24BE9D664(v19, &v20);
          *(v21[0] + 128) = 0;
          sub_24BE7F218(v21);
        }

        return;
      }

      v9 += 2;
    }
  }
}

void sub_24BEFF828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFF83C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AF00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BEFF888(void *a1)
{
  *a1 = &unk_285F9AF20;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BEFF8F0(void *a1)
{
  *a1 = &unk_285F9AF20;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BEFFA28(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  sub_24BCC9B98(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFFA64(uint64_t *a1, void *a2)
{
  *a2 = &unk_285F9AF20;
  sub_24BEFE808((a2 + 1), (a1 + 1));
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  sub_24BCC9A1C((a2 + 5), a1[5], a1[6], (a1[6] - a1[5]) >> 2);
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  return sub_24BCC9A1C((a2 + 8), a1[8], a1[9], (a1[9] - a1[8]) >> 2);
}

void sub_24BEFFAF8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_24BCC9B98(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFFB24(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return sub_24BCC9B98((a1 + 1));
}

void sub_24BEFFB78(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  sub_24BCC9B98((a1 + 1));

  operator delete(a1);
}

void sub_24BEFFBD4(void *a1, uint64_t *a2, __n128 a3)
{
  v5 = (a1 + 5);
  v6 = (a1 + 1);
  if (a1[6] == a1[5])
  {
    v7 = (a2[1] - *a2) >> 4;
    LODWORD(v11.__r_.__value_.__l.__data_) = 0;
    sub_24BD7B3FC(a1 + 5, v7, &v11);
  }

  sub_24BEF9D74(v6, a2, v5, &v11, a3);
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1 + 8;
  if (v9 == v8)
  {
    LODWORD(v13) = 0;
    sub_24BD7B3FC(v10, (v12[1] - v12[0]) >> 4, &v13);
  }

  sub_24BEFA4C0(a2, &v11, v12, v5, v10);
}

void sub_24BEFFCC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCBCDCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEFFCDC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9AF80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BEFFD28(uint64_t a1, uint64_t a2)
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

void *sub_24BEFFDC0(void *a1)
{
  *a1 = &unk_285F9AFA0;
  sub_24BEFC1F0((a1 + 3));
  return a1;
}

void sub_24BEFFE04(void *a1)
{
  *a1 = &unk_285F9AFA0;
  sub_24BEFC1F0((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BEFFEF0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9AFA0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_24BEFFD28(a2 + 24, a1 + 24);
}

void sub_24BEFFF34(void *a1)
{
  sub_24BEFC1F0(a1 + 24);

  operator delete(a1);
}

void sub_24BEFFF70(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (!v4)
  {
    sub_24BCA1F3C();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v7, &v8, 1uLL);
  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BF00028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF00044(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF00090(void *a1)
{
  *a1 = &unk_285F9B020;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF000D4(void *a1)
{
  *a1 = &unk_285F9B020;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BF001E4(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF00220(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v15[2] = *a3;
  v15[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v12, 0, sizeof(v12));
  sub_24BCC9984(v12, v15, &v16, 2uLL);
  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_24BCA1F3C();
  }

  (*(*v8 + 48))(v13);
  v9 = *(v13[0] + 8);
  *a4 = *v13[0];
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v13;
  sub_24BCC961C(&v14);
  v14 = v12;
  sub_24BCC961C(&v14);
  for (i = 2; i != -2; i -= 2)
  {
    sub_24BE7F218(&v15[i]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24BF00364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&a16 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF003A4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B090))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF003F0(void *a1)
{
  *a1 = &unk_285F9B0B0;
  sub_24BEFC128((a1 + 2));
  return a1;
}

void sub_24BF00434(void *a1)
{
  *a1 = &unk_285F9B0B0;
  sub_24BEFC128((a1 + 2));

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF00514(uint64_t a1, void *a2)
{
  *a2 = &unk_285F9B0B0;
  a2[1] = *(a1 + 8);
  return sub_24BEFC608((a2 + 2), a1 + 16);
}

void sub_24BF00550(void *a1)
{
  sub_24BEFC128(a1 + 16);

  operator delete(a1);
}

void sub_24BF0058C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!v4)
  {
    sub_24BCA1F3C();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v7, &v8, 1uLL);
  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BF00640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF0065C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B110))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF006A8(void *a1)
{
  *a1 = &unk_285F9B130;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF006EC(void *a1)
{
  *a1 = &unk_285F9B130;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BF007FC(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF00838(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v9, 0, sizeof(v9));
  sub_24BCC9984(v9, v12, &v13, 1uLL);
  v6 = *(a1 + 32);
  if (!v6)
  {
    sub_24BCA1F3C();
  }

  (*(*v6 + 48))(v10);
  v7 = *(v10[0] + 8);
  *a3 = *v10[0];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v10;
  sub_24BCC961C(&v11);
  v11 = v9;
  sub_24BCC961C(&v11);
  sub_24BE7F218(v12);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BF00974(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B1A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF009C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BF00A40(uint64_t a1)
{
  *a1 = &unk_285F9B1C0;
  if (*(a1 + 152) == 1)
  {
    sub_24BEFC488(a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    sub_24BEFC508(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    sub_24BEFC588(a1 + 40);
  }

  sub_24BCC9B98(a1 + 8);
  return a1;
}

void sub_24BF00AC4(uint64_t a1)
{
  *a1 = &unk_285F9B1C0;
  if (*(a1 + 152) == 1)
  {
    sub_24BEFC488(a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    sub_24BEFC508(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    sub_24BEFC588(a1 + 40);
  }

  sub_24BCC9B98(a1 + 8);

  JUMPOUT(0x24C2548B0);
}

void sub_24BF00C00(_Unwind_Exception *a1)
{
  if (v1[112] == 1)
  {
    sub_24BEFC508((v1 + 80));
  }

  if (v1[72] == 1)
  {
    sub_24BEFC588((v1 + 40));
  }

  sub_24BCC9B98(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_24BF00C5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9B1C0;
  v4 = (a2 + 40);
  sub_24BEFE808(a2 + 8, a1 + 8);
  sub_24BF014F8(v4, a1 + 40);
  sub_24BF01560((a2 + 80), a1 + 80);
  return sub_24BF01660((a2 + 120), a1 + 120);
}

void sub_24BF00CD8(_Unwind_Exception *a1)
{
  if (*(v1 + 112) == 1)
  {
    sub_24BEFC508(v1 + 80);
  }

  if (*(v1 + 72) == 1)
  {
    sub_24BEFC588(v2);
  }

  sub_24BCC9B98(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF00D24(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    sub_24BEFC488((a1 + 120));
  }

  if (a1[112] == 1)
  {
    sub_24BEFC508((a1 + 80));
  }

  if (a1[72] == 1)
  {
    sub_24BEFC588((a1 + 40));
  }

  return sub_24BCC9B98((a1 + 8));
}

void sub_24BF00D94(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    sub_24BEFC488((a1 + 120));
  }

  if (a1[112] == 1)
  {
    sub_24BEFC508((a1 + 80));
  }

  if (a1[72] == 1)
  {
    sub_24BEFC588((a1 + 40));
  }

  sub_24BCC9B98((a1 + 8));

  operator delete(a1);
}

void sub_24BF00E0C(uint64_t a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 48))(&v32);
    if (v32 != v33)
    {
      sub_24BEB6798(v32, v5, 0);
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    sub_24BCC9548(&v29, *a2, a2[1], (a2[1] - *a2) >> 4);
    sub_24BEF0BF8(&v29, v30, v32, v33, (v33 - v32) >> 4);
    v6 = v32;
    v7 = (*v32)[8];
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
    }

    else
    {
      v10 = sub_24BE80B9C();
      v8 = sub_24BEF5264(*v10);
      v9 = v11;
      v6 = v32;
    }

    v28 = 0;
    v27 = 0u;
    v26 = 0;
    *__p = 0u;
    for (i = v33; v6 != i; v6 += 2)
    {
      v13 = *v6;
      v14 = *(&v27 + 1);
      if (*(&v27 + 1) >= v28)
      {
        v15 = sub_24BED25E4(&v27, v13);
      }

      else
      {
        **(&v27 + 1) = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        sub_24BCC9A1C(v14, *v13, v13[1], (v13[1] - *v13) >> 2);
        v15 = v14 + 24;
      }

      *(&v27 + 1) = v15;
      v16 = (*v6)[7];
      v17 = __p[1];
      if (__p[1] >= v26)
      {
        v19 = (__p[1] - __p[0]) >> 3;
        if ((v19 + 1) >> 61)
        {
          sub_24BC8E01C();
        }

        v20 = (v26 - __p[0]) >> 2;
        if (v20 <= v19 + 1)
        {
          v20 = v19 + 1;
        }

        if (v26 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_24BCD06EC(__p, v21);
        }

        v22 = (8 * v19);
        *v22 = v16 & 0xFFFFFFFFFFLL;
        v18 = (8 * v19 + 8);
        v23 = v22 - (__p[1] - __p[0]);
        memcpy(v23, __p[0], __p[1] - __p[0]);
        v24 = __p[0];
        __p[0] = v23;
        __p[1] = v18;
        v26 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *__p[1] = v16 & 0xFFFFFFFFFFLL;
        v18 = v17 + 8;
      }

      __p[1] = v18;
    }

    v28 = 0;
    v27 = 0uLL;
    sub_24BF02A98(v8, v9 | 0x100000000);
    sub_24BEFE808(v41, a1 + 8);
    if (*(a1 + 72) == 1)
    {
      sub_24BEFC3F0(v42, a1 + 40);
      sub_24BEFE808(v38, a1 + 8);
      if (*(a1 + 112) == 1)
      {
        sub_24BF015C8(v39, a1 + 80);
        sub_24BEFE808(v34, a1 + 8);
        v35 = (v33 - v32) >> 4;
        if (*(a1 + 152) == 1)
        {
          sub_24BF016C8(v36, a1 + 120);
          sub_24BF01760();
        }

        sub_24BF009C0(v44, v34);
        v45 = v35;
        v37 = 0;
        operator new();
      }

      sub_24BF009C0(v44, v38);
      v40 = 0;
      operator new();
    }

    sub_24BF009C0(v44, v41);
    v43 = 0;
    operator new();
  }

  sub_24BCA1F3C();
}

void sub_24BF01360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_24BCC9B98(v41 - 144);
  sub_24BCC9B98(&a32);
  sub_24BEFC508(v41 - 240);
  sub_24BCC9B98(&a41);
  sub_24BEFC588(v41 - 176);
  sub_24BCC9B98(v41 - 208);
  a32 = &a17;
  sub_24BC8EE84(&a32);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  a32 = &a23;
  sub_24BC8EE84(&a32);
  a32 = &a26;
  sub_24BCC961C(&a32);
  a32 = &a29;
  sub_24BCC961C(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF014AC(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B420))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24BF014F8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_24BEFC3F0(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_24BF01540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_24BEFC588(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24BF01560(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_24BF015C8(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_24BF015A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_24BEFC508(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF015C8(uint64_t a1, uint64_t a2)
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

_BYTE *sub_24BF01660(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_24BF016C8(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_24BF016A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_24BEFC488(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF016C8(uint64_t a1, uint64_t a2)
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

void *sub_24BF017FC(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9B230;
  sub_24BF01918(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void sub_24BF0189C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9B230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF01918(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a4;
  sub_24BEFC270(v17, a5);
  sub_24BEFC2F0(v16, a6);
  sub_24BEFC370(v15, a7);
  sub_24BF019EC(a2, v10, v11, v12, v17, v16, v15);
  sub_24BEFC488(v15);
  sub_24BEFC508(v16);
  result = sub_24BEFC588(v17);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF019EC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *a1 = &unk_285F9C708;
  *(a1 + 8) = a2;
  sub_24BEFC270(a1 + 24, a5);
  sub_24BEFC2F0(a1 + 56, a6);
  sub_24BEFC370(a1 + 88, a7);
  return a1;
}

void *sub_24BF01A60(void *a1)
{
  *a1 = &unk_285F9B280;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF01AA4(void *a1)
{
  *a1 = &unk_285F9B280;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BF01BB4(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF01BF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  memset(v9, 0, sizeof(v9));
  sub_24BCC9548(v9, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v8, 0, sizeof(v8));
  sub_24BCC9548(v8, *a3, a3[1], (a3[1] - *a3) >> 4);
  memset(v7, 0, sizeof(v7));
  sub_24BCC9548(v7, *a4, a4[1], (a4[1] - *a4) >> 4);
  sub_24BEF7D04(a1 + 8, v9, v8);
}

void sub_24BF01D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18)
{
  sub_24BCBCDCC(&a18);
  *(v18 - 40) = &a9;
  sub_24BCC961C((v18 - 40));
  *(v18 - 40) = &a12;
  sub_24BCC961C((v18 - 40));
  *(v18 - 40) = &a15;
  sub_24BCC961C((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_24BF01D64(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B2F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF01DB0(void *a1)
{
  *a1 = &unk_285F9B310;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF01DF4(void *a1)
{
  *a1 = &unk_285F9B310;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BF01F04(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF01F40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_24BCC9548(&v25, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v24, 0, sizeof(v24));
  sub_24BCC9548(v24, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_24BCC9A1C(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v9 = v25;
  if (v26 != v25)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 >= ((v22 - __p) >> 2) || v11 != *(__p + v12))
      {
        sub_24BEA52D0(&v9[v10], v7, a4);
      }

      v13 = v30;
      if (v30 >= v31)
      {
        v15 = (v30 - v29) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v17 = v31 - v29;
        if ((v31 - v29) >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v28[4] = &v29;
        if (v18)
        {
          sub_24BCB53E8(&v29, v18);
        }

        v19 = (16 * v15);
        v28[0] = 0;
        v28[1] = v19;
        v28[3] = 0;
        v20 = *(v24[0] + 16 * v12);
        *v19 = v20;
        if (*(&v20 + 1))
        {
          atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v28[2] = v19 + 1;
        sub_24BCC9818(&v29, v28);
        v14 = v30;
        sub_24BCC98C0(v28);
      }

      else
      {
        v8 = *(v24[0] + 16 * v12);
        *v30 = v8;
        if (v8.n128_u64[1])
        {
          atomic_fetch_add_explicit((v8.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v14 = v13 + 1;
      }

      ++v12;
      v30 = v14;
      ++v11;
      v9 = v25;
      v10 += 2;
    }

    while (v11 < (v26 - v25) >> 4);
  }

  sub_24BEF8F18(a1 + 8, &v25, &v29, v8);
}

void sub_24BF0228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  sub_24BCBCDCC(&a21);
  *(v21 - 128) = v21 - 112;
  sub_24BCC961C((v21 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 112) = &a15;
  sub_24BCC961C((v21 - 112));
  *(v21 - 112) = &a18;
  sub_24BCC961C((v21 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_24BF02338(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B380))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF02384(void *a1)
{
  *a1 = &unk_285F9B3A0;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF023C8(void *a1)
{
  *a1 = &unk_285F9B3A0;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF024AC(uint64_t a1, void *a2)
{
  *a2 = &unk_285F9B3A0;
  result = sub_24BEFE808((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_24BF02508(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF02544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  sub_24BCC9548(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v6, 0, sizeof(v6));
  sub_24BCC9A1C(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  v5 = *(a1 + 40);
  v8 = 0;
  sub_24BD0E524(&__p, v5);
  sub_24BEFAF34(a1 + 8, v6, &__p, v10);
}

void sub_24BF026A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BCC9B98(v20 - 72);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v20 - 72) = &a12;
  sub_24BCC961C((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_24BF02718(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B410))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_24BF02764(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  v4 = (a1 + 3);
  *(v4 + 16) = 0;
  sub_24BCC9A1C(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BF027C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void *sub_24BF027E0(void *a1)
{
  *a1 = &unk_285F9B440;
  sub_24BCC9B98((a1 + 1));
  return a1;
}

void sub_24BF02824(void *a1)
{
  *a1 = &unk_285F9B440;
  sub_24BCC9B98((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BF02934(void *a1)
{
  sub_24BCC9B98(a1 + 8);

  operator delete(a1);
}

void sub_24BF02A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCBCDCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF02A4C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B4A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF02A98(uint64_t result, uint64_t a2)
{
  if (HIDWORD(a2) != 2)
  {
    if (HIDWORD(a2) == 1)
    {
      return result;
    }

    if (HIDWORD(a2))
    {
      sub_24BF04188();
    }

    result = *sub_24BE80B9C();
  }

  return sub_24BEF5264(result);
}

uint64_t sub_24BF02AE4(uint64_t **a1)
{
  result = 0x100000000;
  v10 = 0x100000000;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v3 += 2;
      v6 = *(v5 + 56);
      v8 = v6;
      v9 = BYTE4(v6);
      v7 = sub_24BE80C80(&v10, &v8);
      LODWORD(v10) = v7;
      BYTE4(v10) = BYTE4(v7);
    }

    while (v3 != v4);
    return v10;
  }

  return result;
}

void *sub_24BF02B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1] - *a1;
  v6 = v5 >> 2;
  v7 = a2[1] - *a2;
  v8 = v7 >> 2;
  v9 = (v5 >> 2) - (v7 >> 2);
  if ((v5 >> 2) <= (v7 >> 2))
  {
    v10 = v7 >> 2;
  }

  else
  {
    v10 = v5 >> 2;
  }

  if ((v5 >> 2) <= (v7 >> 2))
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  if (((v5 >> 2) - (v7 >> 2)) >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = (v7 >> 2) - (v5 >> 2);
  }

  result = sub_24BC94F74(a3, v10);
  if (v10 > v12)
  {
    v14 = (v7 >> 2);
    if (v14 <= v6)
    {
      v14 = (v5 >> 2);
    }

    v15 = *a3 - 4;
    v16 = *v11 - 4;
    do
    {
      v17 = *(v16 + 4 * v14);
      if (v6 <= v8)
      {
        v18 = a1;
      }

      else
      {
        v18 = a2;
      }

      v19 = *(*v18 + 4 * ~v12 + 4 * v14);
      if (v19 != v17)
      {
        if (v17 != 1 && v19 != 1)
        {
          sub_24BCE1268(v33);
          v26 = sub_24BC95264(v33, "Shapes ", 7);
          v27 = sub_24BF02DB8(v26, a1);
          v28 = sub_24BC95264(v27, " and ", 5);
          v29 = sub_24BF02DB8(v28, a2);
          sub_24BC95264(v29, " cannot be broadcast.", 21);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &v32);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v17 *= v19;
      }

      *(v15 + 4 * v14--) = v17;
    }

    while (v14 > v12);
  }

  if (v6 != v8)
  {
    if (v9 >= 0)
    {
      v21 = (v5 >> 2) - (v7 >> 2);
    }

    else
    {
      v21 = (v7 >> 2) - (v5 >> 2);
    }

    v22 = (*v11 + 4 * (v21 - 1));
    v23 = (*a3 + 4 * (v21 - 1));
    v24 = v21 + 1;
    do
    {
      v25 = *v22--;
      *v23-- = v25;
      --v24;
    }

    while (v24 > 1);
  }

  return result;
}

void sub_24BF02D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      v19 = *a9;
      if (*a9)
      {
        *(a9 + 8) = v19;
        operator delete(v19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_24BF02DB8(void *a1, uint64_t *a2)
{
  sub_24BC95264(a1, "(", 1);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x24C2543C0](a1, *(v4 + 4 * v5));
      v7 = ((a2[1] - *a2) >> 2) - 1;
      if (v5 == v7)
      {
        v8 = &unk_24C0435AF;
      }

      else
      {
        v8 = ",";
      }

      sub_24BC95264(v6, v8, v5++ != v7);
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 2);
  }

  sub_24BC95264(a1, ")", 1);
  return a1;
}

uint64_t sub_24BF02E74(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *a1;
  if (*a1 == v2)
  {
    return 1;
  }

  v4 = (v3 + 2);
  if (v3 + 2 == v2)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *v5;
  v7 = *(v5 + 8) - *v5;
  while (1)
  {
    v8 = **v4;
    if ((*v4)[1] - v8 != v7 || memcmp(v8, v6, v7))
    {
      break;
    }

    v4 += 2;
    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24BF02F00(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "Number of dimensions must be positive.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (-a2 > a1 || a1 >= a2)
  {
    sub_24BCE1268(v12);
    v6 = sub_24BC95264(v12, "Axis ", 5);
    v7 = MEMORY[0x24C2543C0](v6, a1);
    v8 = sub_24BC95264(v7, " is out of bounds for array with ", 33);
    v9 = MEMORY[0x24C2543C0](v8, a2);
    sub_24BC95264(v9, " dimensions.", 12);
    v10 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v10, &v11);
    v10->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v10, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return (a2 & (a1 >> 31)) + a1;
}

void sub_24BF0304C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *sub_24BF030A4(void *a1, _DWORD *a2)
{
  sub_24BC95264(a1, "Device(", 7);
  if (!*a2)
  {
    v4 = "cpu";
    goto LABEL_5;
  }

  if (*a2 == 1)
  {
    v4 = "gpu";
LABEL_5:
    sub_24BC95264(a1, v4, 3);
  }

  v5 = sub_24BC95264(a1, ", ", 2);
  v6 = MEMORY[0x24C2543C0](v5, a2[1]);
  sub_24BC95264(v6, ")", 1);
  return a1;
}

void *sub_24BF03138(void *a1, unsigned int *a2)
{
  sub_24BC95264(a1, "Stream(", 7);
  v4 = sub_24BF030A4(a1, a2 + 1);
  v5 = sub_24BC95264(v4, ", ", 2);
  v6 = MEMORY[0x24C2543C0](v5, *a2);
  sub_24BC95264(v6, ")", 1);
  return a1;
}

void *sub_24BF031F4(void *result, _DWORD *a2)
{
  switch(*a2)
  {
    case 0:
      v2 = "BOOL";
      goto LABEL_14;
    case 1:
      v2 = "uint8";
      goto LABEL_19;
    case 2:
      v2 = "uint16";
      goto LABEL_10;
    case 3:
      v2 = "uint32";
      goto LABEL_10;
    case 4:
      v2 = "uint64";
LABEL_10:
      v3 = 6;
      goto LABEL_4;
    case 5:
      v2 = "int8";
LABEL_14:
      v3 = 4;
      goto LABEL_4;
    case 6:
      v2 = "int16";
      goto LABEL_19;
    case 7:
      v2 = "int32";
      goto LABEL_19;
    case 8:
      v2 = "int64";
LABEL_19:
      v3 = 5;
      goto LABEL_4;
    case 9:
      v2 = "float16";
      goto LABEL_17;
    case 0xA:
      v2 = "float32";
LABEL_17:
      v3 = 7;
      goto LABEL_4;
    case 0xB:
      v2 = "bfloat16";
      v3 = 8;
      goto LABEL_4;
    case 0xC:
      v2 = "complex64";
      v3 = 9;
LABEL_4:
      result = sub_24BC95264(result, v2, v3);
      break;
    default:
      return result;
  }

  return result;
}

void *sub_24BF0330C(void *result, unsigned int *a2)
{
  v2 = *a2;
  if (v2 <= 5)
  {
    return sub_24BC95264(result, off_27916D1E8[v2], 1);
  }

  return result;
}

void *sub_24BF03330(void *a1, uint64_t **a2)
{
  sub_24BE7F100(a2);
  v4 = *a2;
  switch(*(*a2 + 14))
  {
    case 0:
      v5 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v5);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        v30 = *(*a2)[19];
        if (byte_27F079300 == 1)
        {
          _ZF = v30 == 0;
          if (*(*a2)[19])
          {
            v32 = "True";
          }

          else
          {
            v32 = "False";
          }

          if (_ZF)
          {
            v33 = 5;
          }

          else
          {
            v33 = 4;
          }

          sub_24BC95264(a1, v32, v33);
        }

        else
        {
          MEMORY[0x24C254390](a1, v30);
        }
      }

      else
      {
        sub_24BF041D8(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 1:
      v13 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v13);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C2543C0](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF04484(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 2:
      v10 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v10);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C254400](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF046F8(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 3:
      v11 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v11);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C2543D0](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF0496C(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 4:
      v7 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v7);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C254420](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF04BE0(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 5:
      v14 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v14);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C2543C0](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF04E54(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 6:
      v15 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v15);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C2543F0](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF050C8(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 7:
      v12 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v12);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C2543C0](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF0533C(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 8:
      v17 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v17);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        MEMORY[0x24C254410](a1, *(*a2)[19]);
      }

      else
      {
        sub_24BF055B0(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 9:
      v9 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v9);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        _H0 = *(*a2)[19];
        __asm { FCVT            S0, H0 }

        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05824(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 0xA:
      v16 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v16);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        v34 = *(*a2)[19];
        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05D18(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 0xB:
      v6 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v6);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        v18 = *(*a2)[19] << 16;
        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05A9C(a1, a2, 0, 0);
      }

      goto LABEL_52;
    case 0xC:
      v8 = (v4[1] - *v4) >> 2;
      v39 = 0;
      sub_24BD0E524(__p, v8);
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BC95264(a1, "array(", 6);
      if ((*a2)[1] == **a2)
      {
        v19 = (*a2)[19];
        v20 = *v19;
        v21 = *(v19 + 4);
        v22 = std::ostream::operator<<();
        if (v21 < 0.0)
        {
          v23 = &unk_24C0435AF;
        }

        else
        {
          v23 = "+";
        }

        sub_24BC95264(v22, v23, v21 >= 0.0);
        v24 = std::ostream::operator<<();
        sub_24BC95264(v24, "j", 1);
      }

      else
      {
        sub_24BF05F8C(a1, a2, 0, 0);
      }

LABEL_52:
      v35 = sub_24BC95264(a1, ", dtype=", 8);
      v36 = (*a2)[7];
      v39 = v36;
      v40 = BYTE4(v36);
      v37 = sub_24BF031F4(v35, &v39);
      sub_24BC95264(v37, ")", 1);
      *(a1 + *(*a1 - 24) + 8) &= ~1u;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      break;
    default:
      return a1;
  }

  return a1;
}

void sub_24BF03EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF03FC8(void *a1, uint64_t *a2)
{
  sub_24BC95264(a1, "(", 1);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x24C2543E0](a1, *(v4 + 8 * v5));
      v7 = ((a2[1] - *a2) >> 3) - 1;
      if (v5 == v7)
      {
        v8 = &unk_24C0435AF;
      }

      else
      {
        v8 = ",";
      }

      sub_24BC95264(v6, v8, v5++ != v7);
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 3);
  }

  sub_24BC95264(a1, ")", 1);
  return a1;
}

void *sub_24BF04084(void *a1, uint64_t *a2)
{
  sub_24BC95264(a1, "(", 1);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x24C254410](a1, *(v4 + 8 * v5));
      v7 = ((a2[1] - *a2) >> 3) - 1;
      if (v5 == v7)
      {
        v8 = &unk_24C0435AF;
      }

      else
      {
        v8 = ",";
      }

      sub_24BC95264(v6, v8, v5++ != v7);
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 3);
  }

  sub_24BC95264(a1, ")", 1);
  return a1;
}

uint64_t sub_24BF04140(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return atoi(v3);
}

void sub_24BF04188()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

void sub_24BF041D8(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v20 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v20 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v24) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v22 = v24;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v22 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v22 >= 0)
      {
        v14 = HIBYTE(v22);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v20 == a4)
      {
        v15 = *((*a2)[19] + a3);
        if (byte_27F079300 == 1)
        {
          v16 = v15 == 0;
          if (*((*a2)[19] + a3))
          {
            v17 = "True";
          }

          else
          {
            v17 = "False";
          }

          if (v16)
          {
            v18 = 5;
          }

          else
          {
            v18 = 4;
          }

          sub_24BC95264(a1, v17, v18);
        }

        else
        {
          MEMORY[0x24C254390](a1, v15);
        }
      }

      else
      {
        sub_24BF041D8(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v19 = &unk_24C0435AF;
      }

      else
      {
        v19 = v10;
      }

      sub_24BC95264(a1, v19, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF04448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF04484(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C2543C0](a1, *((*a2)[19] + a3));
      }

      else
      {
        sub_24BF04484(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF046BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF046F8(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C254400](a1, *((*a2)[19] + 2 * a3));
      }

      else
      {
        sub_24BF046F8(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF04930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0496C(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C2543D0](a1, *((*a2)[19] + 4 * a3));
      }

      else
      {
        sub_24BF0496C(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF04BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF04BE0(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C254420](a1, *((*a2)[19] + 8 * a3));
      }

      else
      {
        sub_24BF04BE0(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF04E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF04E54(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C2543C0](a1, *((*a2)[19] + a3));
      }

      else
      {
        sub_24BF04E54(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF0508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF050C8(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C2543F0](a1, *((*a2)[19] + 2 * a3));
      }

      else
      {
        sub_24BF050C8(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF05300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0533C(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C2543C0](a1, *((*a2)[19] + 4 * a3));
      }

      else
      {
        sub_24BF0533C(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF05574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF055B0(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v20) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v18 = v20;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v18 >= 0)
      {
        v14 = HIBYTE(v18);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x24C254410](a1, *((*a2)[19] + 8 * a3));
      }

      else
      {
        sub_24BF055B0(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v15 = &unk_24C0435AF;
      }

      else
      {
        v15 = v10;
      }

      sub_24BC95264(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF057E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF05824(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v22 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v22 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v26) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v24 = v26;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v24 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v24 >= 0)
      {
        v14 = HIBYTE(v24);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v22 == a4)
      {
        _H0 = *((*a2)[19] + 2 * a3);
        __asm { FCVT            S0, H0 }

        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05824(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v21 = &unk_24C0435AF;
      }

      else
      {
        v21 = v10;
      }

      sub_24BC95264(a1, v21, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF05A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF05A9C(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v17 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v17 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v21) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v19 = v21;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v19 >= 0)
      {
        v14 = HIBYTE(v19);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v17 == a4)
      {
        v15 = *((*a2)[19] + 2 * a3) << 16;
        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05A9C(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v16 = &unk_24C0435AF;
      }

      else
      {
        v16 = v10;
      }

      sub_24BC95264(a1, v16, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF05CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF05D18(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v17 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v17 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v21) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v19 = v21;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v19 >= 0)
      {
        v14 = HIBYTE(v19);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v17 == a4)
      {
        v15 = *((*a2)[19] + 4 * a3);
        std::ostream::operator<<();
      }

      else
      {
        sub_24BF05D18(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v16 = &unk_24C0435AF;
      }

      else
      {
        v16 = v10;
      }

      sub_24BC95264(a1, v16, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF05F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF05F8C(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = sub_24BD1EEAC(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v22 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v22 == a4)
  {
    sub_24BC836D4(__b, &unk_24C0435AF);
    v10 = ", ";
  }

  else
  {
    sub_24BE8B824(__b, a4 + 7, 32);
    v10 = ",\n";
  }

  sub_24BC95264(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(v26) < 0)
        {
          sub_24BC8DE9C(__p, __b[0], __b[1]);
        }

        else
        {
          *__p = *__b;
          v24 = v26;
        }
      }

      else
      {
        sub_24BC836D4(__p, &unk_24C0435AF);
      }

      if (v24 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v24 >= 0)
      {
        v14 = HIBYTE(v24);
      }

      else
      {
        v14 = __p[1];
      }

      sub_24BC95264(a1, v13, v14);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (i == 3 && v8 >= 7)
      {
        sub_24BC95264(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v22 == a4)
      {
        v15 = (*a2)[19] + 8 * a3;
        v16 = *v15;
        v17 = *(v15 + 4);
        v18 = std::ostream::operator<<();
        if (v17 < 0.0)
        {
          v19 = &unk_24C0435AF;
        }

        else
        {
          v19 = "+";
        }

        sub_24BC95264(v18, v19, v17 >= 0.0);
        v20 = std::ostream::operator<<();
        sub_24BC95264(v20, "j", 1);
      }

      else
      {
        sub_24BF05F8C(a1, a2, a3, (a4 + 1));
      }

      if (i == v11)
      {
        v21 = &unk_24C0435AF;
      }

      else
      {
        v21 = v10;
      }

      sub_24BC95264(a1, v21, 2 * (i != v11));
      a3 += v9;
    }
  }

  sub_24BC95264(a1, "]", 1);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_24BF061FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF06C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52)
{
  sub_24BCE1400(&a13);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  sub_24BCE1400(&a52);
  _Unwind_Resume(a1);
}

void sub_24BF06D44(std::string *__str)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 3)
    {
      goto LABEL_13;
    }
  }

  else if (size <= 3)
  {
    goto LABEL_13;
  }

  std::string::basic_string(&v4, __str, size - 4, 4uLL, &v5);
  if ((SHIBYTE(v4.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v4.__r_.__value_.__l.__data_) != 2037411374)
    {
      goto LABEL_13;
    }

LABEL_14:
    sub_24BF08B6C();
  }

  if (v4.__r_.__value_.__l.__size_ == 4)
  {
    v3 = *v4.__r_.__value_.__l.__data_;
    operator delete(v4.__r_.__value_.__l.__data_);
    if (v3 == 2037411374)
    {
      goto LABEL_14;
    }
  }

  else
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

LABEL_13:
  std::string::append(__str, ".npy");
  goto LABEL_14;
}

void sub_24BF06E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_24BE7F218(&a9);
  if (v14)
  {
    sub_24BC9EC78(v14);
  }

  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  _Unwind_Resume(a1);
}

void sub_24BF06EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!(*(**a1 + 8))(*a1) || ((***a1)() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v54 = std::string::insert(&__dst, 0, "[load] Failed to open ");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &v74);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  (*(**a1 + 32))(*a1, &v76, 8);
  if (v76 != 1297436307 || v77 != 22864)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v57 = std::string::insert(&__dst, 0, "[load] Invalid header in ");
    v58 = *&v57->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](v56, &v74);
    __cxa_throw(v56, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v7 = v78;
  if (v78 - 3 <= 0xFFFFFFFD)
  {
    v59 = __cxa_allocate_exception(0x10uLL);
    (*(**a1 + 48))(&__dst);
    v60 = std::string::insert(&__dst, 0, "[load] Unsupported npy format version in ");
    v61 = *&v60->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](v59, &v74);
    __cxa_throw(v59, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (v78 == 1)
  {
    LOWORD(v74.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v74, 2);
    data_low = LOWORD(v74.__r_.__value_.__l.__data_);
  }

  else
  {
    LODWORD(v74.__r_.__value_.__l.__data_) = 0;
    (*(**a1 + 32))(*a1, &v74, 4);
    data_low = LODWORD(v74.__r_.__value_.__l.__data_);
  }

  sub_24BC956F0(&v72, data_low + 1);
  (*(**a1 + 32))(*a1, v72, data_low);
  v72[data_low] = 0;
  sub_24BC836D4(&__str, v72);
  std::string::basic_string(&v70, &__str, 0xBuLL, 3uLL, &v74);
  size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  v10 = v70.__r_.__value_.__r.__words[0];
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v70;
  }

  else
  {
    v11 = v70.__r_.__value_.__r.__words[0];
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v70.__r_.__value_.__l.__size_;
  }

  v12 = v11->__r_.__value_.__s.__data_[0];
  v69.__r_.__value_.__r.__words[0] = v11;
  v69.__r_.__value_.__l.__size_ = size;
  if (size != 2)
  {
    if (size != 3)
    {
      goto LABEL_32;
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v70;
    }

    v11 = (&v10->__r_.__value_.__l.__data_ + 1);
  }

  if (LOWORD(v11->__r_.__value_.__l.__data_) != 12886)
  {
    v13 = v11->__r_.__value_.__s.__data_[1];
    v14 = v11->__r_.__value_.__s.__data_[0];
    if (v14 <= 101)
    {
      if (v14 == 98)
      {
        LOBYTE(v15) = v13 - 49;
        if (v15 >= 8u)
        {
          goto LABEL_39;
        }

        v15 = v15;
        v16 = &unk_24BFF3F98;
        goto LABEL_38;
      }

      if (v14 == 99)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (v14 != 102)
    {
      if (v14 == 105)
      {
        LOBYTE(v15) = v13 - 49;
        if (v15 >= 8u)
        {
          goto LABEL_39;
        }

        v15 = v15;
        v16 = &unk_24BFF3FD8;
        goto LABEL_38;
      }

      if (v14 == 117)
      {
        LOBYTE(v15) = v13 - 49;
        if (v15 >= 8u)
        {
          goto LABEL_39;
        }

        v15 = v15;
        v16 = &unk_24BFF4018;
LABEL_38:
        v21 = v16[v15];
        goto LABEL_39;
      }

LABEL_32:
      v17 = __cxa_allocate_exception(0x10uLL);
      v18 = sub_24BF08678(&__dst, &v69);
      v19 = std::string::insert(v18, 0, "[from_str] Invalid array protocol type-string: ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(v17, &v74);
      v17->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v17, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

LABEL_39:
  v64 = a2;
  v62 = v12;
  v63 = *(__str.__r_.__value_.__r.__words[0] + 34);
  memset(&v74, 0, sizeof(v74));
  v22 = std::string::rfind(&__str, 40, 0xFFFFFFFFFFFFFFFFLL) + 1;
  v23 = std::string::rfind(&__str, 41, 0xFFFFFFFFFFFFFFFFLL);
  std::string::basic_string(&__dst, &__str, v22, v23 - v22, &v69);
  v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = __dst.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    do
    {
      __idx = 0;
      v25 = std::stoi(&__dst, &__idx, 10);
      v26 = v74.__r_.__value_.__l.__size_;
      if (v74.__r_.__value_.__l.__size_ >= v74.__r_.__value_.__r.__words[2])
      {
        v28 = v74.__r_.__value_.__r.__words[0];
        v29 = v74.__r_.__value_.__l.__size_ - v74.__r_.__value_.__r.__words[0];
        v30 = (v74.__r_.__value_.__l.__size_ - v74.__r_.__value_.__r.__words[0]) >> 2;
        v31 = v30 + 1;
        if ((v30 + 1) >> 62)
        {
          sub_24BC8E01C();
        }

        v32 = v74.__r_.__value_.__r.__words[2] - v74.__r_.__value_.__r.__words[0];
        if ((v74.__r_.__value_.__r.__words[2] - v74.__r_.__value_.__r.__words[0]) >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v33 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          sub_24BC92E0C(&v74, v33);
        }

        *(4 * v30) = v25;
        v27 = 4 * v30 + 4;
        memcpy(0, v28, v29);
        v34 = v74.__r_.__value_.__r.__words[0];
        v74.__r_.__value_.__r.__words[0] = 0;
        *&v74.__r_.__value_.__r.__words[1] = v27;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v74.__r_.__value_.__l.__size_ = v25;
        v27 = v26 + 4;
      }

      v74.__r_.__value_.__l.__size_ = v27;
      v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = __dst.__r_.__value_.__l.__size_;
      }

      if (__idx + 2 <= v35)
      {
        std::string::basic_string(&v69, &__dst, __idx + 2, 0xFFFFFFFFFFFFFFFFLL, &v68);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v69;
      }

      else
      {
        std::string::basic_string(&v69, &__dst, __idx, 0xFFFFFFFFFFFFFFFFLL, &v68);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v69;
        v36 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        if (v36)
        {
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v69.__r_.__value_.__l.__size_ != 1)
            {
              goto LABEL_90;
            }

            v37 = *__dst.__r_.__value_.__l.__data_;
          }

          else
          {
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) != 1)
            {
              goto LABEL_90;
            }

            v37 = __dst.__r_.__value_.__s.__data_[0];
          }

          if (v37 != 32 && v37 != 44)
          {
LABEL_90:
            v50 = __cxa_allocate_exception(0x10uLL);
            (*(**a1 + 48))(&v68);
            v51 = std::string::insert(&v68, 0, "[load] Unknown error while parsing header in ");
            v52 = *&v51->__r_.__value_.__l.__data_;
            v69.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
            *&v69.__r_.__value_.__l.__data_ = v52;
            v51->__r_.__value_.__l.__size_ = 0;
            v51->__r_.__value_.__r.__words[2] = 0;
            v51->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x24C254100](v50, &v69);
            __cxa_throw(v50, &unk_285F93280, MEMORY[0x277D82600]);
          }
        }

        MEMORY[0x24C2541D0](&__dst, &unk_24C0435AF);
      }

      v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __dst.__r_.__value_.__l.__size_;
      }
    }

    while (v38);
  }

  v39 = 12;
  if (v7 == 1)
  {
    v39 = 10;
  }

  v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = __str.__r_.__value_.__l.__size_;
  }

  v67 = v40 + v39;
  v66 = v62 == 62;
  v41 = v74.__r_.__value_.__r.__words[0];
  if (v63 == 84)
  {
    v42 = v74.__r_.__value_.__l.__size_;
    v43 = a3;
    v44 = v64;
    if (v74.__r_.__value_.__r.__words[0] != v74.__r_.__value_.__l.__size_)
    {
      v45 = (v74.__r_.__value_.__l.__size_ - 4);
      if (v74.__r_.__value_.__l.__size_ - 4 > v74.__r_.__value_.__r.__words[0])
      {
        v46 = v74.__r_.__value_.__r.__words[0] + 4;
        do
        {
          v47 = *(v46 - 4);
          *(v46 - 4) = *v45;
          *v45-- = v47;
          v48 = v46 >= v45;
          v46 += 4;
        }

        while (!v48);
      }
    }
  }

  else
  {
    v42 = v74.__r_.__value_.__l.__size_;
    v43 = a3;
    v44 = v64;
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v41, v42, (v42 - v41) >> 2);
  v68.__r_.__value_.__r.__words[0] = sub_24BF02A98(v44, v43);
  LODWORD(v68.__r_.__value_.__r.__words[1]) = v49;
  sub_24BF08FD4();
}

void sub_24BF07904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
    if ((v48 & 1) == 0)
    {
LABEL_8:
      if (a41 < 0)
      {
        operator delete(__p);
      }

      if (a47 < 0)
      {
        operator delete(a42);
      }

      v51 = *(v49 - 200);
      if (v51)
      {
        *(v49 - 192) = v51;
        operator delete(v51);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v47);
  goto LABEL_8;
}

void sub_24BF07B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF07BB8()
{
  if ((atomic_load_explicit(&qword_27F0793C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0793C8))
  {
    sub_24BF07C58(&unk_27F079308, 4);
    __cxa_atexit(sub_24BF07E08, &unk_27F079308, &dword_24BC7E000);
    __cxa_guard_release(&qword_27F0793C8);
  }

  return &unk_27F079308;
}

uint64_t sub_24BF07C58(uint64_t result, uint64_t a2)
{
  *(result + 72) = 850045863;
  *(result + 64) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0;
  *(result + 136) = 1018212795;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 169) = 0u;
  if (a2)
  {
    if (*(result + 16))
    {
      sub_24BF08728();
    }

    v2 = -*result >> 3;
    if (!((v2 + 1) >> 61))
    {
      v3 = -*result;
      v4 = v3 >> 2;
      if (v3 >> 2 <= (v2 + 1))
      {
        v4 = v2 + 1;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      if (v5)
      {
        sub_24BCAD8CC(result, v5);
      }

      sub_24BF08728();
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BF07DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::condition_variable::~condition_variable(v12);
  std::mutex::~mutex(v11);
  sub_24BEF60B8((v10 + 24));
  a9 = v10;
  sub_24BD4BE1C(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BF07E0C()
{
  if ((atomic_load_explicit(&qword_27F079490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079490))
  {
    sub_24BF07C58(&unk_27F0793D0, 4);
    __cxa_atexit(sub_24BF07E08, &unk_27F0793D0, &dword_24BC7E000);
    __cxa_guard_release(&qword_27F079490);
  }

  return &unk_27F0793D0;
}

ssize_t sub_24BF07EAC(ssize_t result, char *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      result = read(*(v5 + 8), a2, v6);
      if (result <= 0)
      {
        sub_24BCE1268(v11);
        v7 = sub_24BC95264(v11, "[read] Unable to read ", 22);
        v8 = MEMORY[0x24C2543E0](v7, v3);
        sub_24BC95264(v8, " bytes from file.", 17);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x24C254100](exception, &v10);
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      a2 += result;
      v3 -= result;
    }

    while (v3);
  }

  return result;
}

void sub_24BF07FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BF07FEC(uint64_t a1, char *__buf, size_t __nbyte, off_t a4)
{
  v4 = *(a1 + 8);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (__nbyte)
  {
    v6 = __nbyte;
    if (__nbyte >> 25)
    {
      sub_24BF07E0C();
      operator new();
    }

    while (v6)
    {
      v8 = pread(v4, __buf, v6, a4);
      __buf += v8;
      v6 -= v8;
      if (v8 <= 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[read] Unable to read from file.");
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }
    }
  }

  v9 = v13;
  v10 = v14;
  while (v9 != v10)
  {
    if ((sub_24BF08500(v9) & 1) == 0)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "[read] Unable to read from file.");
      __cxa_throw(v11, &unk_285F93280, MEMORY[0x277D82600]);
    }

    ++v9;
  }

  v16 = &v13;
  sub_24BF09544(&v16);
}

void sub_24BF083D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_24BF09544(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF08500(atomic_ullong **a1)
{
  v1 = *a1;
  *a1 = 0;
  sub_24BF0A328(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  return v3;
}

void sub_24BF08570(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BF0A3F4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF085CC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[ParallelFileReader::seek] Not allowed");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF08640(uint64_t a1)
{
  sub_24BF08B10(a1);

  JUMPOUT(0x24C2548B0);
}

_BYTE *sub_24BF08678(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_24BF087F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF0882C(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  sub_24BF088E0(v5 + 1);
  sub_24BF08898(&v5);
  return 0;
}

void sub_24BF08884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BF08898(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BF08898(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t sub_24BF088E0(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*a1 + 72);
  while (1)
  {
    v9 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    v3 = *(v1 + 184);
    if (v3)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v1 + 64))
      {
        goto LABEL_7;
      }

      while (1)
      {
        std::condition_variable::wait((v1 + 136), &__lk);
        v3 = *(v1 + 184);
        if (v3)
        {
          break;
        }

        if (*(v1 + 64))
        {
          goto LABEL_3;
        }
      }
    }

    if (!*(v1 + 64))
    {
      v4 = 0;
      goto LABEL_8;
    }

LABEL_7:
    sub_24BEF5CF4(v8, *(*(v1 + 32) + ((*(v1 + 56) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v1 + 56) & 0x7FLL));
    sub_24BEF5DFC((v1 + 24));
    v4 = 1;
LABEL_8:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v4)
    {
      break;
    }

    if (!v9)
    {
      sub_24BCA1F3C();
    }

    (*(*v9 + 48))(v9);
    sub_24BCC9738(v8);
  }

  result = sub_24BCC9738(v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF08A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  sub_24BCC9738(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF08A74(uint64_t a1)
{
  std::mutex::lock((a1 + 72));
  *(a1 + 184) = 1;
  std::mutex::unlock((a1 + 72));
  std::condition_variable::notify_all((a1 + 136));
  v2 = *a1;
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    std::thread::join(v2++);
  }

  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 72));
  sub_24BEF60B8((a1 + 24));
  v5 = a1;
  sub_24BD4BE1C(&v5);
  return a1;
}

uint64_t sub_24BF08B10(uint64_t a1)
{
  *a1 = &unk_285F9B4C0;
  close(*(a1 + 8));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *sub_24BF08BD8(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9B540;
  sub_24BF08CE4(&v4, (a1 + 3), a2);
  return a1;
}

void sub_24BF08C68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9B540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BF08CE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(a3 + 2);
  v6 = *a3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *a2 = &unk_285F9B590;
  if (v7 >= 0)
  {
    v4 = &v6;
  }

  else
  {
    v4 = v6;
  }

  *(a2 + 8) = open(v4, 1537, 420);
  result = *&v6;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_24BF08D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ssize_t sub_24BF08DE8(ssize_t result, char *__buf, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      result = write(*(v5 + 8), __buf, v6);
      if (result <= 0)
      {
        sub_24BCE1268(v11);
        v7 = sub_24BC95264(v11, "[write] Unable to write ", 24);
        v8 = MEMORY[0x24C2543E0](v7, v3);
        sub_24BC95264(v8, " bytes to file.", 15);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x24C254100](exception, &v10);
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      __buf += result;
      v3 -= result;
    }

    while (v3);
  }

  return result;
}

void sub_24BF08EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BF08F40(uint64_t a1)
{
  sub_24BF08F78(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF08F78(uint64_t a1)
{
  *a1 = &unk_285F9B590;
  close(*(a1 + 8));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *sub_24BF09060(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9B608;
  sub_24BF09178(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_24BF090FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9B608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BF09178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_24BF091F4(a2, v7, v8, &v10, *a5, *a6);
  if (v11)
  {
    sub_24BC9EC78(v11);
  }
}

void sub_24BF091DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF091F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a2;
  v10 = a3;
  *(a1 + 16) = a3;
  *a1 = &unk_285F9D200;
  *(a1 + 8) = a2;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  v8 = 1;
  if (sub_24BE80C50(&v9 + 1, &v8))
  {
    sub_24BF092A0();
  }

  return a1;
}

void sub_24BF09284(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF092A0()
{
  if ((atomic_load_explicit(&qword_27F079048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079048))
  {
    sub_24BEF54E8(0);
  }

  return &qword_27F079038;
}

void *sub_24BF09390(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9B658;
  sub_24BF0949C(&v4, (a1 + 3), a2);
  return a1;
}

void sub_24BF09420(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9B658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BF0949C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(a3 + 2);
  v6 = *a3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *a2 = &unk_285F9B4C0;
  if (v7 >= 0)
  {
    v4 = &v6;
  }

  else
  {
    v4 = v6;
  }

  *(a2 + 8) = open(v4, 0, v6);
  result = *&v6;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_24BF09528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF09544(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BF09598(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_ullong *sub_24BF09598(atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void sub_24BF09638(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9B6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF0968C(uint64_t a1)
{
  sub_24BF09934((a1 + 56));

  return sub_24BF09890((a1 + 24));
}

__n128 sub_24BF096E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F9B6F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_24BF0971C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  do
  {
    v5 = v2;
    if (!v2)
    {
      break;
    }

    v6 = pread(*(a1 + 8), v4, v2, v3);
    v4 += v6;
    v2 = v5 - v6;
  }

  while (v6 > 0);
  return v5 == 0;
}

void sub_24BF09780(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_24BF097EC(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF09890(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

uint64_t *sub_24BF09934(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x24C254290](v7, 4, v4);
        sub_24BF09A18(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x24C2542A0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t sub_24BF09A18(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

void sub_24BF09AD4(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x24C254290](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void sub_24BF09B3C(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    sub_24BF09AD4(1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void *sub_24BF09BB4(void *a1)
{
  *a1 = &unk_285F9B7A8;
  v2 = a1[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BF09C00(void *a1)
{
  *a1 = &unk_285F9B7A8;
  v1 = a1[2];
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF09CD8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_285F9B7A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BF09D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24BC9EC78(v1);
  }
}

void sub_24BF09D20(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  operator delete(__p);
}

uint64_t sub_24BF09D68(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9B808))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BF09DB4(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1)
  {
    sub_24BF09AD4(3u);
  }

  if ((*(v1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(v1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_24BF09AD4(2u);
  }

  LOBYTE(v5.__ptr_) = (*(**(a1 + 24) + 40))(*(a1 + 24));
  sub_24BF09E98(v2, &v5);
}

void sub_24BF09E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  sub_24BF09EC4(v9, &a9);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x24BF09E30);
}

void sub_24BF09E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_24BF09E98(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    sub_24BF09AD4(3u);
  }

  sub_24BF09F28(v3, a2);
}

void sub_24BF09EC4(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_24BF09AD4(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_24BF09F28(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_24BF09AD4(2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_24BF09FC8(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    sub_24BC8E01C();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BCAD8CC(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  sub_24BF0A0DC(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BF0A268(&v13);
  return v12;
}

void sub_24BF0A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BF0A268(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF0A0DC(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    if (a2 != a3)
    {
      do
      {
        v7 = *v5;
        if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return sub_24BF0A1B4(v9);
}