uint64_t sub_10013ABE8(uint64_t a1, uint64_t *a2, int *a3, void **a4)
{
  if (*(*a2 + 192))
  {
    v4 = *a2 + 40;
  }

  else
  {
    v4 = 0;
  }

  v5 = atomic_load((v4 + 140));
  if (v5)
  {
    v7 = *(*a2 + 192) ? *a2 + 40 : 0;
    v8 = atomic_load((v7 + 144));
    *a3 = v8;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      if (*(*a2 + 192))
      {
        v10 = *a2 + 40;
      }

      else
      {
        v10 = 0;
      }

      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v9, v11, *a3);
        sub_10000367C(v12);
      }

      else
      {
        memcpy(v9, v11, v8);
      }

      v13 = *a2;
      if (*a2)
      {
        if (*(v13 + 192))
        {
          v13 += 40;
        }

        else
        {
          v13 = 0;
        }
      }

      atomic_fetch_add((v13 + 136), 0xFFFFFFFF);
    }
  }

  return v5 & 1;
}

void sub_10013ACC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 192))
    {
      v4 = v3 + 40;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  std::mutex::lock((v4 + 72));
  if (*(*a2 + 192))
  {
    v5 = *a2 + 40;
  }

  else
  {
    v5 = 0;
  }

  if (atomic_load((v5 + 136)))
  {
    if (*(*a2 + 192))
    {
      v7 = *a2 + 40;
    }

    else
    {
      v7 = 0;
    }

    std::condition_variable::notify_all((v7 + 24));
  }

  std::mutex::unlock((v4 + 72));
}

uint64_t sub_10013AD5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2)
  {
    if (*(v6 + 192))
    {
      v7 = v6 + 40;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  std::mutex::lock((v7 + 72));
  v8 = (*(**(a1 + 24) + 128))(*(a1 + 24), a3);
  v9 = v8;
  if (*(*a2 + 192))
  {
    v10 = *a2 + 40;
  }

  else
  {
    v10 = 0;
  }

  atomic_store(v8, (v10 + 144));
  if (*(*a2 + 192))
  {
    v11 = *a2 + 40;
  }

  else
  {
    v11 = 0;
  }

  atomic_store(1u, (v11 + 140));
  std::mutex::unlock((v7 + 72));
  return v9;
}

std::__shared_weak_count *sub_10013AE40(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v23 = 0;
  v4 = sub_10013A774(a1, a2, &v21);
  v5 = v22;
  if (v22 != -2)
  {
    v11 = sub_10013AD5C(a1, &v21, v2);
    v23 = v11;
    sub_10013ACC4(v11, &v21);
    if (v5 < (*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3)
    {
      __lk.__m_ = 0;
      v12 = atomic_load((a1 + 72));
      atomic_store(v12, &__lk);
      atomic_store(atomic_exchange(&__lk, 0), (**(a1 + 40) + 8 * v5));
    }

    if (v21 && *(v21 + 256))
    {
      sub_10013EAFC(v21 + 232, v21);
    }

    goto LABEL_33;
  }

  v6 = v21;
  if (v21)
  {
    if (*(v21 + 192))
    {
      v6 = v21 + 40;
    }

    else
    {
      v6 = 0;
    }
  }

  atomic_fetch_add((v6 + 136), 1u);
  if (sub_10013ABE8(v4, &v21, &v23, &v2->__vftable))
  {
    goto LABEL_33;
  }

  v7 = *(v21 + 192) ? v21 + 40 : 0;
  __lk.__m_ = (v7 + 72);
  __lk.__owns_ = 1;
  std::mutex::lock((v7 + 72));
  v9 = sub_10013ABE8(v8, &v21, &v23, &v2->__vftable);
  v10 = v9;
  if (v9)
  {
    v2 = v23;
  }

  else
  {
    if (*(v21 + 192))
    {
      v13 = v21 + 40;
    }

    else
    {
      v13 = 0;
    }

    std::condition_variable::wait((v13 + 24), &__lk);
    if (*(v21 + 192))
    {
      v14 = v21 + 40;
    }

    else
    {
      v14 = 0;
    }

    v15 = atomic_load((v14 + 144));
    v23 = v15;
    if (v15 >= 1)
    {
      v16 = v2->__vftable;
      if (*(v21 + 192))
      {
        v17 = v21 + 40;
      }

      else
      {
        v17 = 0;
      }

      v18 = *v17;
      v2 = *(v17 + 8);
      if (v2)
      {
        atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        memcpy(v16, v18, v15);
        sub_10000367C(v2);
      }

      else
      {
        memcpy(v16, v18, v15);
      }
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if ((v10 & 1) == 0)
  {
LABEL_33:
    v2 = v23;
  }

  sub_10013B5F0(&v21);
  return v2;
}

void sub_10013B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10013B5F0(va);
  _Unwind_Resume(a1);
}

void sub_10013B098(void *a1)
{
  sub_10013B55C(a1);

  operator delete();
}

void *sub_10013B0E4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000FE808(result, a2);
  }

  return result;
}

void sub_10013B140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_10013B15C(unint64_t *a1, unint64_t *a2)
{
  *a1 = 0;
  v3 = atomic_load(a2);
  if (v3)
  {
    v4 = atomic_load(v3);
    if (!v4)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = v3[37];
    if (v6)
    {
      v3[38] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!sub_10013B200(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        sub_10013B2DC(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL sub_10013B200(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = atomic_load((a1 + 24));
  if (v3 == 2)
  {
    v4 = atomic_load(a1);
    return v4 > 1;
  }

  else
  {
    atomic_fetch_add((a1 + 8), 1uLL);
    v6 = atomic_load(v2);
    if (v6 != 2 && (*(a1 + 312) & 1) == 0)
    {
      v10 = 1;
      v9 = &v10;
      v14 = 5;
      v12[0] = (a1 + 24);
      v12[1] = &v10;
      v13 = 5;
      v11[0] = a1 + 24;
      v11[1] = &v14;
      v11[2] = &v9;
      sub_1001078B8(v11, v12, 0);
    }

    atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v7 = atomic_load(a1);
    if (v7 < 2)
    {
      return 0;
    }

    else
    {
      v8 = atomic_load(v2);
      return v8 == 2;
    }
  }
}

uint64_t sub_10013B2DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 312) & 1) == 0 && (v6 = atomic_load((a1 + 24)), v6 == 2) && *(a1 + 192) == 1 && (v7 = *(a1 + 288)) != 0)
  {
    v8 = (a3 >> 1) & 2;
    if ((*(*v7 + 48))(v7, a1 + 40))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_10013B4BC(a1 + 200, a1, a2, v8 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<CurrentReader, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = CurrentReader, tag_t = unsigned long long]";
      *(&v10 + 1) = 68;
      v11 = 16;
      sub_1000E6DC4(v12, &v10);
      sub_1000026BC(v13, "Got error when trying to close ", 31);
      std::ostream::operator<<();
      sub_1000026BC(v13, " with ret ", 10);
      std::ostream::operator<<();
      sub_1000026BC(v13, ", Force closing.", 16);
      std::ostream::~ostream();
      sub_1000E7058(v12);
      std::ios::~ios();
    }
  }

  else
  {
    v8 = (a3 >> 1) & 2;
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 192) == 1)
  {
    sub_10013B51C(a1 + 40);
    *(a1 + 192) = 0;
  }

  sub_10013B4BC(a1 + 200, a1, a2, v8);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_10013B4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000E6EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013B4BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002870C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_10013B51C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 72));
  std::condition_variable::~condition_variable((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void *sub_10013B55C(void *a1)
{
  *a1 = off_100226808;
  sub_10013B5F0(a1 + 9);
  v2 = a1[8];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_10000367C(v3);
  }

  *a1 = off_1002064C0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

atomic_ullong *sub_10013B5F0(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_10013B2DC(result, v2, 1u);
    }
  }

  return result;
}

void sub_10013B690(void *a1, unsigned int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002268F8;
  sub_10013B76C((a1 + 3), a2, a3);
}

void sub_10013B70C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002268F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10013B76C(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = 0;
  sub_10013B7F4(a1, v3, v4, v5);
}

void sub_10013B7E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013D830(va);
  _Unwind_Resume(a1);
}

void sub_10013B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10013BBA0(a1);
  *(v8 + 424) = a2;
  *(v8 + 432) = a3;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 850045863;
  *(v8 + 496) = 0u;
  *(v8 + 512) = 0u;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0u;
  *(v8 + 592) = 850045863;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0;
  *(v8 + 656) = 1018212795;
  *(v8 + 696) = 0;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 704) = 1;
  sub_100157DF8(v8 + 712, "dealloc_queue");
  *(a1 + 728) = 0u;
  *(a1 + 720) = a1 + 728;
  *(a1 + 744) = 850045863;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 808) = 1018212795;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = 850045863;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = a1 + 920;
  *(a1 + 928) = a1 + 920;
  *(a1 + 936) = 0;
  sub_10013C2D8(a1 + 944, a4);
  sub_10013C370(a1 + 976, a1);
  *(a1 + 1320) = off_100226BF8;
  *(a1 + 1328) = a1;
  *(a1 + 1344) = a1 + 1320;
  *(a1 + 1352) = off_100226C88;
  *(a1 + 1360) = a1;
  *(a1 + 1376) = a1 + 1352;
  operator new[]();
}

void sub_10013BA1C(_Unwind_Exception *a1)
{
  sub_10013D830(v1 + 944);
  sub_10011A184(v3);
  std::mutex::~mutex((v1 + 856));
  std::condition_variable::~condition_variable((v1 + 808));
  std::mutex::~mutex((v1 + 744));
  sub_1000085B4(v1 + 720, *v4);
  sub_100157D44((v1 + 712));
  std::condition_variable::~condition_variable((v1 + 656));
  std::mutex::~mutex((v1 + 592));
  std::mutex::~mutex((v1 + 488));
  sub_100069604(v2);
  sub_10013D7B8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10013BAE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    sub_10013CB04(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  *(a1 + 40) = v9 + 1;
  v11 = v8 + v9 + 1;
  v12 = *(a1 + 8);
  v13 = (v12 + 8 * (v11 >> 9));
  v14 = *v13 + 8 * (v11 & 0x1FF);
  if (*(a1 + 16) == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4096;
  }

  return v14 - 8;
}

uint64_t sub_10013BBA0(uint64_t a1)
{
  *a1 = off_100226948;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_1002269D8;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100226A68;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_10013BF90(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_10013BC88(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 416) = 1;
  return a1;
}

void sub_10013BC64(_Unwind_Exception *a1)
{
  sub_10013D830(v3);
  sub_10013C1D8(v2);
  sub_10013C258(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10013BC88(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 32) = a2;
  *(result + 312) = 0;
  atomic_store(1uLL, result);
  atomic_store(0, (result + 8));
  atomic_store(0, (result + 16));
  if (*(result + 192) == 1)
  {
    result = sub_10013B51C(result + 40);
    *(v2 + 192) = 0;
  }

  v3 = *(v2 + 296);
  if (v3)
  {
    *(v2 + 304) = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (v2 + 24));
  __dmb(0xBu);
  return result;
}

uint64_t sub_10013BD90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013BE68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013BF44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 192) = 0;
  sub_10013C058(a1 + 200, a2);
  sub_10013C0F0(a1 + 232, a3);
  sub_10013C2D8(a1 + 264, a4);
  *(a1 + 296) = a5;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  return a1;
}

void sub_10013C018(_Unwind_Exception *a1)
{
  sub_10013C1D8(v1 + 232);
  sub_10013C258(v1 + 200);
  if (*(v1 + 192) == 1)
  {
    sub_10013B51C(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10013C058(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013C0F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013C188(uint64_t a1)
{
  sub_10013D830(a1 + 264);
  sub_10013C1D8(a1 + 232);
  sub_10013C258(a1 + 200);
  if (*(a1 + 192) == 1)
  {
    sub_10013B51C(a1 + 40);
  }

  return a1;
}

uint64_t sub_10013C1D8(uint64_t a1)
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

uint64_t sub_10013C258(uint64_t a1)
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

uint64_t sub_10013C2D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013C370(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_100226AF8;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100226B78;
  v4[1] = a1;
  v4[3] = v4;
  sub_10013BF90(a1 + 8, v5, v4, a2 + 944, a2 + 568);
  sub_10013C1D8(v4);
  sub_10013C258(v5);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  return a1;
}

void sub_10013C448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10013C1D8(va);
  sub_10013C258(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10013C4D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226AF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013C518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013C564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002870C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_10013C634(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226B78;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013C670(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013C6BC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10013C780(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226BF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013C7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10013C80C(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 336) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 856));
      operator new();
    }

    sub_10013C9BC(a1, a3);
    sub_10013B5F0((a2 + 328));
    if ((atomic_fetch_or((a2 + 336), 1u) & 2) == 0)
    {
      sub_10013CA20(a1, a2);
    }

    if (atomic_fetch_add((a1 + 576), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 584)))
      {
        std::mutex::lock((a1 + 592));
        if (atomic_load((a1 + 584)))
        {
          std::condition_variable::notify_all((a1 + 656));
        }

        std::mutex::unlock((a1 + 592));
      }
    }

    v8 = (a1 + 560);
    if (atomic_load(v8))
    {
      v10 = sub_100199F08(a2);
      std::mutex::lock(v10);
      if (atomic_load(v8))
      {
        v12 = sub_100199F94(a2);
        std::condition_variable::notify_all(v12);
      }

      std::mutex::unlock(v10);
    }
  }
}

void sub_10013C9BC(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 744));
  sub_1000460A8((a1 + 720), &v3);
  std::condition_variable::notify_all((a1 + 808));
  std::mutex::unlock((a1 + 744));
}

void sub_10013CA20(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 488));
  sub_10013CA7C((a1 + 440), &v3);
  std::mutex::unlock((a1 + 488));
}

void *sub_10013CA7C(void *result, void *a2)
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
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_10013CB04(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10013CB04(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_1001177FC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1001173D4(a1, &v10);
}

void sub_10013CC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10013CD48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226C88;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013CD80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10013CDCC(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 424);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 552);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_10013CE78(a1, a2, 1uLL, a3);

        sub_10013CA20(a1, a2);
      }
    }
  }
}

uint64_t sub_10013CE78(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 576), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 1uLL);
  }

  atomic_fetch_or((a2 + 336), 2u);
  sub_10013B5F0((a2 + 328));
  if (a4)
  {
    sub_10013B5F0(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 336));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 336))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 488));
          v10 = *(a1 + 480);
          std::mutex::unlock((a1 + 488));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_10013D1C8(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_10013D504(v31);
        }

        if (v11 == -1)
        {
          v27.__m_ = sub_100199F08(a2);
          v27.__owns_ = 1;
          std::mutex::lock(v27.__m_);
          v18 = sub_100199F94(a2);
          v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v25 = a1;
          v26 = v19.__d_.__rep_ + 200000;
          v24.__m_ = a2;
          v24.__owns_ = (a3 & 0x100) >> 8;
          *(&v24.__owns_ + 1) = *v28;
          *(&v24.__owns_ + 1) = *&v28[3];
          sub_10013D338(v18, &v27, &v26, &v24);
          if (!v27.__owns_)
          {
            goto LABEL_25;
          }

          m = v27.__m_;
        }

        else
        {
          v24.__m_ = sub_100199F08(a2);
          v24.__owns_ = 1;
          std::mutex::lock(v24.__m_);
          v12 = sub_100199F94(a2);
          v13 = atomic_load((a2 + 336));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 336))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 488));
                v15 = *(a1 + 480);
                std::mutex::unlock((a1 + 488));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 336));
            }

            while ((v16 & 4) == 0);
          }

          if (!v24.__owns_)
          {
            goto LABEL_25;
          }

          m = v24.__m_;
        }

        std::mutex::unlock(m);
LABEL_25:
        v20 = *(a2 + 336);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 480))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 336));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 336));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_100226D08;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_10013D1C8(a1, 1, v29);
    if (v30 == 1)
    {
      sub_10013D504(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 336), 0xFFFFFFFD) & 1;
}

void sub_10013D14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_10013D504(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013D1C8(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 936))
  {
    return 0;
  }

  std::mutex::lock((a1 + 856));
  if (*(a1 + 936))
  {
    v6 = *(a1 + 928);
    if (v6 == (a1 + 920))
    {
      v8 = 1;
    }

    else
    {
      if (a2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      v8 = 1;
      do
      {
        v9 = v6[2];
        if ((sub_10013B2DC(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_10013D4AC(a3, v9, v6[3])))
        {
          v10 = sub_100199F08(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 336), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 936);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_10013D4AC(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 920));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 856));
  return v8;
}

uint64_t sub_10013D338(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 336));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 336))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 488));
      v10 = *(v8 + 480);
      std::mutex::unlock((v8 + 488));
      if (v10)
      {
        return 1;
      }
    }

    v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v12 = *a3;
    if (*a3 <= v11.__d_.__rep_)
    {
      break;
    }

    if (!v12)
    {
      v13.__d_.__rep_ = 0;
      goto LABEL_14;
    }

    if (v12 < 1)
    {
      if (v12 < 0xFFDF3B645A1CAC09)
      {
        v13.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_14;
      }
    }

    else if (v12 > 0x20C49BA5E353F7)
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v13.__d_.__rep_ = 1000 * v12;
LABEL_14:
    std::condition_variable::__do_timed_wait(a1, a2, v13);
  }

  while (std::chrono::system_clock::now().__d_.__rep_ < *a3);
  v14 = *(a4 + 16);
  v15 = atomic_load((*a4 + 336));
  if (v15 & 4) != 0 || (*(*a4 + 336))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 488));
  v16 = *(v14 + 480) != 0;
  std::mutex::unlock((v14 + 488));
  return v16;
}

uint64_t sub_10013D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002870C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10013D504(uint64_t a1)
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

uint64_t sub_10013D5F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226D08;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013D634(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013D680(uint64_t a1)
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

uint64_t sub_10013D700(uint64_t a1)
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

uint64_t sub_10013D780(uint64_t a1)
{
  sub_10013B5F0((a1 + 328));
  sub_10013C188(a1 + 8);
  return a1;
}

uint64_t sub_10013D7B8(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_10013B2DC(a1 + 104, v3, 1u);
  }

  sub_10013C188(v2);
  sub_10013D830(a1 + 64);
  sub_10013C1D8(a1 + 32);

  return sub_10013C258(a1);
}

uint64_t sub_10013D830(uint64_t a1)
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

uint64_t sub_10013D8B0(uint64_t a1)
{
  *(a1 + 704) &= ~1u;
  if (*(a1 + 424))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 552) + 8 * v3), 0);
      if (v4)
      {
        sub_10013CE78(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_10013B5F0((v4 + 328));
        sub_10013C188(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 424) > v3);
  }

  sub_100157EC4((a1 + 712), &stru_100226DB8);
  if (*(a1 + 552))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 488));
  v5 = *(a1 + 448);
  if (*(a1 + 456) != v5)
  {
    v6 = *(a1 + 472);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 480) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 480) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_10013B5F0((v9 + 328));
        sub_10013C188(v9 + 8);
        operator delete();
      }

      if ((++v8 - *v7) == 4096)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
      }
    }
  }

  std::mutex::unlock((a1 + 488));
  sub_10013D680(a1 + 1352);
  sub_10013D700(a1 + 1320);
  sub_10013B5F0((a1 + 1304));
  sub_10013C188(a1 + 984);
  sub_10013D830(a1 + 944);
  sub_10011A184((a1 + 920));
  std::mutex::~mutex((a1 + 856));
  std::condition_variable::~condition_variable((a1 + 808));
  std::mutex::~mutex((a1 + 744));
  sub_1000085B4(a1 + 720, *(a1 + 728));
  sub_100157D44((a1 + 712));
  std::condition_variable::~condition_variable((a1 + 656));
  std::mutex::~mutex((a1 + 592));
  std::mutex::~mutex((a1 + 488));
  sub_100069604((a1 + 440));

  return sub_10013D7B8(a1);
}

void sub_10013DB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10013DBE0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013DB60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10013DBA0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10013DBE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_10013DC3C(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 744);
  v9 = (a1 + 728);
  v10 = a1 + 976;
  v32 = (a1 + 104);
  do
  {
    v35.__m_ = v8;
    v35.__owns_ = 1;
    std::mutex::lock(v8);
    if ((a3 & 1) == 0)
    {
      v15 = *v9;
      if (!*v9)
      {
        goto LABEL_14;
      }

      v16 = v9;
      do
      {
        v17 = v15[4];
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 == v9 || v16[4] > a2 || v16[5] == v10)
      {
LABEL_14:
        __lk.__m_ = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&__lk, 0), a4);
        sub_10013B5F0(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_100116DF4(a1 + 720, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_10013B5F0(&__lk);
      v14 = 1;
      goto LABEL_16;
    }

    v20 = v11[5];
    if (v20 != v10)
    {
      if (!v35.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(v35.__m_);
      v35.__owns_ = 0;
      sub_10013B15C(&__lk, (v20 + 328));
      if (!__lk.__m_ || (__lk.__m_[4].__m_.__opaque[48] & 1) != 0)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_26;
      }

      if (*&__lk.__m_->__m_.__opaque[24] == a2)
      {
        *a4 = 0;
        a4[1] = v12;
        atomic_store(atomic_exchange(&__lk, 0), a4);
      }

      else
      {
        if (*&__lk.__m_->__m_.__opaque[24] != -1 || (a3 & 1) != 0)
        {
LABEL_26:
          sub_10013B5F0(&__lk);
          v36[0] = off_100226E60;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_10013D1C8(a1, 0, v36);
          if (v37 == 1)
          {
            sub_10013D504(v36);
          }

          if (v21 == -1)
          {
            __lk.__m_ = 0;
            v29 = atomic_load(v32);
            if (v29)
            {
              v30 = v29;
              while (1)
              {
                atomic_compare_exchange_strong(v32, &v30, v29 + 1);
                if (v30 == v29)
                {
                  break;
                }

                v29 = v30;
                if (!v30)
                {
                  goto LABEL_64;
                }
              }

              v31 = *(a1 + 400);
              v30 = v32;
              if (v31)
              {
                *(a1 + 408) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
                v30 = v32;
              }
            }

            else
            {
              v30 = 0;
            }

LABEL_64:
            atomic_store(v30, &__lk);
            *a4 = 0;
            a4[1] = v9;
            atomic_store(atomic_exchange(&__lk, 0), a4);
            sub_10013B5F0(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 560), 1uLL);
          __lk.__m_ = sub_100199F08(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 336) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100199F94(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
          if (__lk.__owns_)
          {
            std::mutex::unlock(__lk.__m_);
          }

          goto LABEL_47;
        }

LABEL_59:
        v33 = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&v33, 0), a4);
        sub_10013B5F0(&v33);
      }

      sub_10013B5F0(&__lk);
      goto LABEL_15;
    }

    v23 = *v9;
    if (*v9)
    {
      v24 = v9;
      while (1)
      {
        v25 = v23[4];
        v18 = v25 >= a2;
        v26 = v25 < a2;
        if (v18)
        {
          v24 = v23;
        }

        v23 = v23[v26];
        if (!v23)
        {
          if (v24 == v9)
          {
            break;
          }

          if (v24[4] > a2)
          {
            break;
          }

          v27 = v24[5];
          if (v27 != v10)
          {
            v28 = *(v27 + 328);
            if (v28)
            {
              if ((*(v28 + 312) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 704) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 808), &v35);
          v23 = *v9;
          v24 = v9;
          if (!*v9)
          {
            break;
          }
        }
      }

LABEL_47:
      v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
LABEL_16:
    if (v35.__owns_)
    {
      std::mutex::unlock(v35.__m_);
    }

    if (v14)
    {
      return;
    }
  }

  while ((*(a1 + 704) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_10013B5F0(&v35);
}

void sub_10013E078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_10013E110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v10 = 0;
  std::mutex::lock((a1 + 488));
  v6 = *(a1 + 480);
  if (v6)
  {
    v7 = *(*(*(a1 + 448) + ((*(a1 + 472) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 472) & 0x1FFLL));
    ++*(a1 + 472);
    *(a1 + 480) = v6 - 1;
    sub_10006A604(a1 + 440, 1);
    sub_10013E3C0(a1, v7, a2, v11);
    sub_10013A6CC(&v10, v11);
    sub_10013B5F0(v11);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 488));
  v8 = atomic_load((a1 + 576));
  if (v8 + v6 >= *(a1 + 432))
  {
    v12[0] = 0;
    v13 = 0;
    sub_10013D1C8(a1, 0, v12);
    if (v13 == 1)
    {
      sub_10013D504(v12);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10013E650;
    v11[3] = &unk_100226ED0;
    v11[4] = a1;
    sub_100157E0C((a1 + 712), v11);
  }

  *a3 = v7;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v10, 0), a3 + 1);
  return sub_10013B5F0(&v10);
}

void sub_10013E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_10013D504(&a15);
  }

  sub_10013B5F0(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_10013E318(void *a1)
{
  v1 = atomic_load(a1 + 71);
  v2 = a1[53];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = -1;
  do
  {
    v6 = a1[69];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 312) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 312);
      v4 = v3;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  atomic_compare_exchange_strong((a1[69] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_10013CE78(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_10013E3C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_10013E708(a2, a3);
  v7 = (a2 + 1);
  v14 = 0;
  v8 = atomic_load(a2 + 1);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(v7, &v9, v8 + 1);
      if (v9 == v8)
      {
        break;
      }

      v8 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = a2[38];
    if (v10)
    {
      a2[39] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 424))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 552) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 424) <= ++v11)
      {
        goto LABEL_12;
      }
    }

    *a4 = 0;
    atomic_store(atomic_exchange(&v14, 0), a4);
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }

  return sub_10013B5F0(&v14);
}

uint64_t sub_10013E51C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100226E60;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013E55C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_10013E5A8(unint64_t *a1, unint64_t *a2, int a3)
{
  v3 = a2;
  *a1 = 0;
  if (a2)
  {
    v5 = atomic_load(a2);
    if (!v5)
    {
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a2, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = a2[37];
    if (v8)
    {
      a2[38] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_10013B200(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_10013B2DC(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_10013E650(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10013E318(v1);
  if (v2)
  {
    sub_10013CA20(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_10013D1C8(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_10013D504(v4);
  }

  return result;
}

void sub_10013E6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_10013D504(&a9);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_10013E708(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 336));
  v3 = (a1 + 8);
  sub_10013BC88(a1 + 8, a2);
  v9 = 0;
  v4 = atomic_load(v3);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v6 = *(a1 + 304);
    v5 = v3;
    if (v6)
    {
      *(a1 + 312) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_10013A6CC((a1 + 328), &v9);
  result = sub_10013B5F0(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_10013B2DC(v3, v8, 1u);
  }

  return result;
}

void sub_10013E7D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  sub_10013E880(a1 + 40, a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_10013E840(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_10013E880(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 152) == 1)
  {
    sub_10013B51C(a1);
    *(a1 + 152) = 0;
  }

  sub_10013E8E4(a1, a2, a3);
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_10013E8E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1;
}

void sub_10013E964(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 304) = **(a1 + 296);
  sub_10013EA0C(a1 + 40, a2, a3);
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_10013E9CC(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 312) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_10013EA0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 152) == 1)
  {
    sub_10013B51C(a1);
    *(a1 + 152) = 0;
  }

  sub_10013EA70(a1, a2, a3);
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_10013EA70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *a3;
    *a1 = v5;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 1018212795;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 125) = 0u;
  *(a1 + 144) = -1;
  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1;
}

uint64_t sub_10013EAFC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_10013EBDC(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B088;
  sub_10013EC38(a1 + 3, a2, a3);
  return a1;
}

void *sub_10013EC38(void *a1, void *a2, void *a3)
{
  v5 = sub_10003B384(a1, a3);
  *v5 = off_100226808;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  a1[7] = a2[7];
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10013B15C(a1 + 9, a2 + 9);
  return a1;
}

void sub_10013ECC0(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = v1[6];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10013ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2037149547;
  LODWORD(v29) = 2037149547;
  sub_10009C144("header_signature", 2037149547, &v29, 1);
  *(a1 + 4) = 4;
  LODWORD(v29) = 4;
  sub_10009C144("version_t", 4, &v29, 1);
  *(a1 + 8) = 512;
  LODWORD(v29) = 512;
  sub_10009C144("header_size_t", 512, &v29, 1);
  sub_10014A538((a1 + 12), 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  v29 = &_mh_execute_header;
  sub_10009C144("segment_num_t", 0, &v29, 2);
  *(a1 + 60) = 0;
  v29 = &_mh_execute_header;
  sub_10009C144("segment_count_t", 0, &v29, 2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = *a4;
  v14 = *(a4 + 72);
  v15 = *(a4 + 88);
  v16 = *(a4 + 104);
  v17 = *(a4 + 120);
  v18 = *(a4 + 8);
  v19 = *(a4 + 24);
  v20 = *(a4 + 40);
  v21 = *(a4 + 56);
  *(a1 + 224) = 0u;
  *(a1 + 136) = v21;
  *(a1 + 120) = v20;
  *(a1 + 104) = v19;
  *(a1 + 88) = v18;
  *(a1 + 200) = v17;
  *(a1 + 184) = v16;
  *(a1 + 168) = v15;
  *(a1 + 152) = v14;
  *(a1 + 216) = a5;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = *a6;
  v22 = *(a6 + 8);
  v23 = *(a6 + 24);
  v24 = *(a6 + 40);
  *(a1 + 408) = *(a6 + 56);
  *(a1 + 392) = v24;
  *(a1 + 376) = v23;
  *(a1 + 360) = v22;
  v25 = *(a6 + 72);
  v26 = *(a6 + 88);
  v27 = *(a6 + 104);
  *(a1 + 472) = *(a6 + 120);
  *(a1 + 456) = v27;
  *(a1 + 440) = v26;
  *(a1 + 424) = v25;
  *(a1 + 488) = 2;
  v29 = &_mh_execute_header;
  v30 = 2;
  sub_10009C144("image_variant_type", 2, &v29, 3);
  *(a1 + 492) = a7;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v29 = &_mh_execute_header;
  sub_10009C144("segment_num_t", 1, &v29, 2);
  *(a1 + 56) = 1;
  v29 = &_mh_execute_header;
  sub_10009C144("segment_count_t", 1, &v29, 2);
  *(a1 + 60) = 1;
  *(a1 + 224) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  return a1;
}

uLong sub_10013EFB0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    if (result != 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = sub_100001860(exception, "Unknown checksum found", 0x16u);
    }

    return crc32(0, 0, 0) << 32;
  }

  return result;
}

uint64_t sub_10013F024(uint64_t a1, uint64_t a2)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v54 = &_mh_execute_header;
  sub_10009C144("segment_num_t", 0, &v54, 2);
  *(a1 + 60) = 0;
  v54 = &_mh_execute_header;
  sub_10009C144("segment_count_t", 0, &v54, 2);
  *(a1 + 80) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  sub_10012C534((a1 + 80));
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  sub_10012C534((a1 + 352));
  *(a1 + 356) = 0;
  *(a1 + 488) = 0;
  v54 = &_mh_execute_header;
  LODWORD(v55) = 2;
  sub_10009C144("image_variant_type", 0, &v54, 3);
  *(a1 + 492) = 0;
  v4 = *a2;
  LODWORD(v54) = 2037149547;
  sub_10009C144("header_signature", v4, &v54, 1);
  *a1 = 2037149547;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v54) = 4;
  sub_10009C144("version_t", v5, &v54, 1);
  *(a1 + 4) = 4;
  v6 = bswap32(*(a2 + 8));
  LODWORD(v54) = 512;
  sub_10009C144("header_size_t", v6, &v54, 1);
  *(a1 + 8) = 512;
  sub_10014A538(&v54, bswap32(*(a2 + 12)));
  *(a1 + 12) = v54;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap64(*(a2 + 32));
  *(a1 + 40) = bswap64(*(a2 + 40));
  *(a1 + 48) = bswap64(*(a2 + 48));
  v7 = bswap32(*(a2 + 56));
  v54 = &_mh_execute_header;
  sub_10009C144("segment_num_t", v7, &v54, 2);
  *(a1 + 56) = v7;
  v8 = bswap32(*(a2 + 60));
  v54 = &_mh_execute_header;
  sub_10009C144("segment_count_t", v8, &v54, 2);
  *(a1 + 60) = v8;
  *(a1 + 64) = *(a2 + 64);
  sub_10012C534(&v45);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  v51 = *(a2 + 176);
  v52 = v10;
  v53 = *(a2 + 208);
  v11 = *(a2 + 96);
  v12 = *(a2 + 128);
  v47 = *(a2 + 112);
  v48 = v12;
  v49 = *(a2 + 144);
  v50 = v9;
  v45 = *(a2 + 80);
  v46 = v11;
  v59 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 184);
  v62 = *(a2 + 200);
  v55 = *(a2 + 88);
  v56 = *(a2 + 104);
  v57 = *(a2 + 120);
  v58 = *(a2 + 136);
  v54 = v45;
  sub_10014132C(&v54, &v36);
  *(a1 + 80) = v36;
  v13 = v42;
  *(a1 + 152) = v41;
  *(a1 + 168) = v13;
  v14 = v44;
  *(a1 + 184) = v43;
  *(a1 + 200) = v14;
  v15 = v38;
  *(a1 + 88) = v37;
  *(a1 + 104) = v15;
  v16 = v40;
  *(a1 + 120) = v39;
  *(a1 + 136) = v16;
  *(a1 + 216) = bswap64(*(a2 + 216));
  *(a1 + 224) = bswap64(*(a2 + 224));
  v17 = *(a2 + 232);
  v18 = *(a2 + 248);
  v19 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v19;
  *(a1 + 232) = v17;
  *(a1 + 248) = v18;
  *(a1 + 296) = bswap64(*(a2 + 296));
  *(a1 + 304) = bswap64(*(a2 + 304));
  v20 = *(a2 + 312);
  v21 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v20;
  *(a1 + 328) = v21;
  sub_10012C534(&v45);
  v22 = *(a2 + 464);
  v51 = *(a2 + 448);
  v52 = v22;
  v23 = *(a2 + 400);
  v47 = *(a2 + 384);
  v48 = v23;
  v24 = *(a2 + 432);
  v49 = *(a2 + 416);
  v50 = v24;
  v25 = *(a2 + 368);
  v45 = *(a2 + 352);
  v46 = v25;
  v26 = *(a2 + 440);
  v59 = *(a2 + 424);
  v60 = v26;
  v27 = *(a2 + 472);
  v61 = *(a2 + 456);
  v62 = v27;
  v28 = *(a2 + 376);
  v55 = *(a2 + 360);
  v56 = v28;
  v29 = *(a2 + 408);
  v57 = *(a2 + 392);
  v53 = *(a2 + 480);
  v58 = v29;
  v54 = v45;
  sub_10014132C(&v54, &v36);
  *(a1 + 352) = v36;
  v30 = v42;
  *(a1 + 424) = v41;
  *(a1 + 440) = v30;
  v31 = v44;
  *(a1 + 456) = v43;
  *(a1 + 472) = v31;
  v32 = v38;
  *(a1 + 360) = v37;
  *(a1 + 376) = v32;
  v33 = v40;
  *(a1 + 392) = v39;
  *(a1 + 408) = v33;
  v34 = bswap32(*(a2 + 488));
  v54 = &_mh_execute_header;
  LODWORD(v55) = 2;
  sub_10009C144("image_variant_type", v34, &v54, 3);
  *(a1 + 488) = v34;
  *(a1 + 492) = bswap64(*(a2 + 492));
  return a1;
}

uint64_t sub_10013FAA8(uint64_t a1, uint64_t a2)
{
  if (sub_1000E0464())
  {
    *&v12 = "*udif::header::write(char *)";
    *(&v12 + 1) = 20;
    v13 = 2;
    sub_10013FC68(v14, &v12);
    sub_10013FDD4(v15, a1);
    std::ostream::~ostream();
    sub_100147064(v14);
    std::ios::~ios();
  }

  *a2 = *a1;
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = bswap64(*(a1 + 32));
  *(a2 + 40) = bswap64(*(a1 + 40));
  *(a2 + 48) = bswap64(*(a1 + 48));
  *(a2 + 56) = bswap32(*(a1 + 56));
  *(a2 + 60) = bswap32(*(a1 + 60));
  *(a2 + 64) = *(a1 + 64);
  v4 = sub_100141570(a1 + 80, a2 + 80);
  *v4 = bswap64(*(a1 + 216));
  *(v4 + 8) = bswap64(*(a1 + 224));
  v5 = *(a1 + 232);
  v6 = *(a1 + 248);
  v7 = *(a1 + 280);
  *(v4 + 48) = *(a1 + 264);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 80) = bswap64(*(a1 + 296));
  *(v4 + 88) = bswap64(*(a1 + 304));
  v9 = *(a1 + 312);
  v8 = *(a1 + 328);
  *(v4 + 128) = *(a1 + 344);
  *(v4 + 96) = v9;
  *(v4 + 112) = v8;
  v10 = sub_100141570(a1 + 352, v4 + 136);
  *v10 = bswap32(*(a1 + 488));
  *(v10 + 4) = bswap64(*(a1 + 492));
  return v10 + 12;
}

void sub_10013FC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10013FD90(va);
  _Unwind_Resume(a1);
}

void *sub_10013FC68(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014AA30(a1, a2);
  *a1 = off_100226F68;
  a1[45] = &off_100227068;
  a1[46] = &off_100227090;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100226F68;
  a1[45] = off_100226FF0;
  a1[46] = off_100227018;
  return a1;
}

void sub_10013FD6C(_Unwind_Exception *a1)
{
  sub_100147064(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10013FD90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100147064(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10013FDD4(void *a1, uint64_t a2)
{
  sub_1000026BC(a1, "header (", 8);
  v4 = std::ostream::operator<<();
  v5 = sub_1000026BC(v4, "):", 2);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a2 + 12);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v122 = *(a2 + 60);
  v123 = *(a2 + 56);
  v120 = *(a2 + 72);
  v121 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 168);
  v144 = *(a2 + 152);
  v145 = v14;
  v15 = *(a2 + 200);
  v146 = *(a2 + 184);
  v147 = v15;
  v16 = *(a2 + 104);
  v140 = *(a2 + 88);
  v141 = v16;
  v17 = *(a2 + 136);
  v142 = *(a2 + 120);
  v143 = v17;
  v118 = *(a2 + 224);
  v119 = *(a2 + 216);
  v18 = *(a2 + 248);
  v136 = *(a2 + 232);
  v137 = v18;
  v19 = *(a2 + 280);
  v138 = *(a2 + 264);
  v139 = v19;
  v20 = *(a2 + 304);
  v117 = *(a2 + 296);
  v21 = *(a2 + 328);
  v133 = *(a2 + 312);
  v134 = v21;
  v135 = *(a2 + 344);
  v22 = *(a2 + 352);
  v23 = *(a2 + 440);
  v129 = *(a2 + 424);
  v130 = v23;
  v24 = *(a2 + 472);
  v131 = *(a2 + 456);
  v132 = v24;
  v25 = *(a2 + 376);
  v125 = *(a2 + 360);
  v126 = v25;
  v26 = *(a2 + 408);
  v127 = *(a2 + 392);
  v128 = v26;
  v116 = *(a2 + 488);
  v115 = *(a2 + 492);
  v27 = sub_1000026BC(a1, "signature", 9);
  v28 = sub_1000026BC(v27, ": ", 2);
  v148[23] = 4;
  strcpy(v148, "koly");
  v29 = sub_1000026BC(v28, v148, 4);
  if ((v148[23] & 0x80000000) != 0)
  {
    operator delete(*v148);
  }

  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v31 = sub_1000026BC(a1, "version", 7);
  sub_1000026BC(v31, ": ", 2);
  v32 = std::ostream::operator<<();
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v34 = sub_1000026BC(a1, "header_size", 11);
  sub_1000026BC(v34, ": ", 2);
  v35 = std::ostream::operator<<();
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v37 = sub_1000026BC(a1, "flags", 5);
  v38 = sub_1000026BC(v37, ": ", 2);
  *v148 = v7;
  v39 = sub_10014AAF8(v38, v148);
  std::ios_base::getloc((v39 + *(*v39 - 24)));
  v40 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v41 = sub_1000026BC(a1, "run_data_fork_offset", 20);
  v42 = sub_1000026BC(v41, ": ", 2);
  v43 = *v42;
  v44 = v42 + *(*v42 - 24);
  v45 = *(v44 + 2);
  *(v44 + 2) = v45 & 0xFFFFFFB5 | 8;
  *(v42 + *(v43 - 24) + 8) |= 0x200u;
  v148[0] = 48;
  sub_100023058(v42, v148);
  std::ostream::operator<<();
  v46 = *v42;
  *(v42 + *(*v42 - 24) + 8) = v45;
  std::ios_base::getloc((v42 + *(v46 - 24)));
  v47 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v47->__vftable[2].~facet_0)(v47, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v48 = sub_1000026BC(a1, "data_fork_offset", 16);
  v49 = sub_1000026BC(v48, ": ", 2);
  v50 = *v49;
  v51 = v49 + *(*v49 - 24);
  LODWORD(v42) = *(v51 + 2);
  *(v51 + 2) = v42 & 0xFFFFFFB5 | 8;
  *(v49 + *(v50 - 24) + 8) |= 0x200u;
  v148[0] = 48;
  sub_100023058(v49, v148);
  std::ostream::operator<<();
  v52 = *v49;
  *(v49 + *(*v49 - 24) + 8) = v42;
  std::ios_base::getloc((v49 + *(v52 - 24)));
  v53 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v53->__vftable[2].~facet_0)(v53, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v54 = sub_1000026BC(a1, "data_fork_len", 13);
  sub_1000026BC(v54, ": ", 2);
  v55 = std::ostream::operator<<();
  std::ios_base::getloc((v55 + *(*v55 - 24)));
  v56 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v56->__vftable[2].~facet_0)(v56, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v57 = sub_1000026BC(a1, "rsrc_fork_offset", 16);
  v58 = sub_1000026BC(v57, ": ", 2);
  v59 = *v58;
  v60 = v58 + *(*v58 - 24);
  LODWORD(v42) = *(v60 + 2);
  *(v60 + 2) = v42 & 0xFFFFFFB5 | 8;
  *(v58 + *(v59 - 24) + 8) |= 0x200u;
  v148[0] = 48;
  sub_100023058(v58, v148);
  std::ostream::operator<<();
  v61 = *v58;
  *(v58 + *(*v58 - 24) + 8) = v42;
  std::ios_base::getloc((v58 + *(v61 - 24)));
  v62 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v62->__vftable[2].~facet_0)(v62, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v63 = sub_1000026BC(a1, "rsrc_fork_len", 13);
  sub_1000026BC(v63, ": ", 2);
  v64 = std::ostream::operator<<();
  std::ios_base::getloc((v64 + *(*v64 - 24)));
  v65 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v65->__vftable[2].~facet_0)(v65, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v66 = sub_1000026BC(a1, "segment_num", 11);
  v67 = sub_1000026BC(v66, ": ", 2);
  *v148 = v123;
  v68 = sub_10014ABC4(v67, v148);
  std::ios_base::getloc((v68 + *(*v68 - 24)));
  v69 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v69->__vftable[2].~facet_0)(v69, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v70 = sub_1000026BC(a1, "segment_count", 13);
  v71 = sub_1000026BC(v70, ": ", 2);
  *v148 = v122;
  v72 = sub_10014AC04(v71, v148);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  *v148 = v121;
  *&v148[8] = v120;
  v74 = sub_1000026BC(a1, "segment_id", 10);
  v75 = sub_1000026BC(v74, ": ", 2);
  sub_10014AC44(v75, v148, 16);
  std::ios_base::getloc((v75 + *(*v75 - 24)));
  v76 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v76->__vftable[2].~facet_0)(v76, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  *v148 = v13;
  v149 = v144;
  v150 = v145;
  v151 = v146;
  v152 = v147;
  *&v148[8] = v140;
  *&v148[24] = v141;
  *&v148[40] = v142;
  *&v148[56] = v143;
  v77 = sub_1000026BC(a1, "data_fork_checksum", 18);
  v78 = sub_1000026BC(v77, ": ", 2);
  sub_1001427DC(v78, v148);
  std::ios_base::getloc((v78 + *(*v78 - 24)));
  v79 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v79->__vftable[2].~facet_0)(v79, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v80 = sub_1000026BC(a1, "xml_offset", 10);
  v81 = sub_1000026BC(v80, ": ", 2);
  v82 = *v81;
  v83 = v81 + *(*v81 - 24);
  LODWORD(v42) = *(v83 + 2);
  *(v83 + 2) = v42 & 0xFFFFFFB5 | 8;
  *(v81 + *(v82 - 24) + 8) |= 0x200u;
  v148[0] = 48;
  sub_100023058(v81, v148);
  std::ostream::operator<<();
  v84 = *v81;
  *(v81 + *(*v81 - 24) + 8) = v42;
  std::ios_base::getloc((v81 + *(v84 - 24)));
  v85 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v85->__vftable[2].~facet_0)(v85, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v86 = sub_1000026BC(a1, "xml_length", 10);
  sub_1000026BC(v86, ": ", 2);
  v87 = std::ostream::operator<<();
  std::ios_base::getloc((v87 + *(*v87 - 24)));
  v88 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v88->__vftable[2].~facet_0)(v88, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  *v148 = v136;
  *&v148[16] = v137;
  *&v148[32] = v138;
  *&v148[48] = v139;
  v89 = sub_1000026BC(a1, "external", 8);
  v90 = sub_1000026BC(v89, ": ", 2);
  sub_10014AC44(v90, v148, 64);
  std::ios_base::getloc((v90 + *(*v90 - 24)));
  v91 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v91->__vftable[2].~facet_0)(v91, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v92 = sub_1000026BC(a1, "code_sign_offset", 16);
  v93 = sub_1000026BC(v92, ": ", 2);
  v94 = *v93;
  v95 = v93 + *(*v93 - 24);
  LODWORD(v42) = *(v95 + 2);
  *(v95 + 2) = v42 & 0xFFFFFFB5 | 8;
  *(v93 + *(v94 - 24) + 8) |= 0x200u;
  v148[0] = 48;
  sub_100023058(v93, v148);
  std::ostream::operator<<();
  v96 = *v93;
  *(v93 + *(*v93 - 24) + 8) = v42;
  std::ios_base::getloc((v93 + *(v96 - 24)));
  v97 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v97->__vftable[2].~facet_0)(v97, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v98 = sub_1000026BC(a1, "code_sign_length", 16);
  sub_1000026BC(v98, ": ", 2);
  v99 = std::ostream::operator<<();
  std::ios_base::getloc((v99 + *(*v99 - 24)));
  v100 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v100->__vftable[2].~facet_0)(v100, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  *v148 = v133;
  *&v148[16] = v134;
  *&v148[32] = v135;
  v101 = sub_1000026BC(a1, "reserved", 8);
  v102 = sub_1000026BC(v101, ": ", 2);
  sub_10014AC44(v102, v148, 40);
  std::ios_base::getloc((v102 + *(*v102 - 24)));
  v103 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v103->__vftable[2].~facet_0)(v103, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  *v148 = v22;
  v149 = v129;
  v150 = v130;
  v151 = v131;
  v152 = v132;
  *&v148[8] = v125;
  *&v148[24] = v126;
  *&v148[40] = v127;
  *&v148[56] = v128;
  v104 = sub_1000026BC(a1, "master_checksum", 15);
  v105 = sub_1000026BC(v104, ": ", 2);
  sub_1001427DC(v105, v148);
  std::ios_base::getloc((v105 + *(*v105 - 24)));
  v106 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v106->__vftable[2].~facet_0)(v106, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v107 = sub_1000026BC(a1, "image_variant", 13);
  v108 = sub_1000026BC(v107, ": ", 2);
  *v148 = v116;
  v109 = sub_10014ADD8(v108, v148);
  std::ios_base::getloc((v109 + *(*v109 - 24)));
  v110 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v110->__vftable[2].~facet_0)(v110, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  v111 = sub_1000026BC(a1, "sector_count", 12);
  sub_1000026BC(v111, ": ", 2);
  v112 = std::ostream::operator<<();
  std::ios_base::getloc((v112 + *(*v112 - 24)));
  v113 = std::locale::use_facet(v148, &std::ctype<char>::id);
  (v113->__vftable[2].~facet_0)(v113, 10);
  std::locale::~locale(v148);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_100141298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 233) < 0)
  {
    operator delete(*(v18 - 256));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10014132C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10013768C(a2, bswap32(*a1));
  v4[1] = 0;
  v8 = bswap32(*(a1 + 4));
  sub_100137724(v4 + 1, &v8);
  v6 = *a2;
  if (*a2)
  {
    v7 = v6 == 10;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v6 == 2)
    {
      *(a2 + 8) = bswap32(*(a1 + 8));
    }

    else
    {
      *(a2 + 72) = *(a1 + 72);
      *(a2 + 88) = *(a1 + 88);
      *(a2 + 104) = *(a1 + 104);
      *(a2 + 120) = *(a1 + 120);
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 40) = *(a1 + 40);
      result = *(a1 + 56);
      *(a2 + 56) = result;
    }
  }

  return result;
}

uint64_t sub_100141450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v6 = &v5;
  (off_100227170[v2])(&v7, &v6, a2 + 4);
  *a1 = v7;
  *(a1 + 72) = v12;
  *(a1 + 88) = v13;
  *(a1 + 104) = v14;
  *(a1 + 120) = v15;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  return a1;
}

unsigned int *sub_100141528@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = bswap32(*result);
  if ((v3 & 0x80000000) != 0)
  {
    result = sub_100147624(&v4, v3);
    v3 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100141570(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  v2 = (a2 + 8);
  v3 = *a1;
  if (*a1)
  {
    v4 = v3 == 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else if (v3 == 2)
  {
    *(a2 + 8) = bswap32(*(a1 + 8));
    v2 = (a2 + 12);
    v5 = 4;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v8 = *(a1 + 56);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 56) = v8;
    *v2 = v6;
    *(a2 + 24) = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    v11 = *(a1 + 120);
    *(a2 + 104) = *(a1 + 104);
    *(a2 + 120) = v11;
    *(a2 + 72) = v9;
    *(a2 + 88) = v10;
    v5 = 128;
  }

  bzero(v2, 128 - v5);
  return v2 - v5 + 128;
}

uint64_t sub_10014162C(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = *a2;
  *(result + 4) = 0u;
  *(result + 20) = 0u;
  *(result + 36) = 0;
  if ((*(a3 + 16) & 2) != 0)
  {
    v6 = *a3 - a4;
  }

  else
  {
    v6 = *a3 - a4 + 1;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a3 + 8) - *a3 + (*(a3 + 16) & 1) + ((*(a3 + 16) >> 1) & 1) - 1;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

int *sub_10014168C(int *a1)
{
  result = sub_10012EB2C(a1, 2);
  *(result + 1) = 0;
  *(result + 2) = 0;
  return result;
}

uint64_t sub_1001416E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(result + 8) + v3;
  v5 = v4 + *(result + 16);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 2;
  if (v4 < v5 && (v4 < v3 || v3 + *(a2 + 16) - 1 < v5 - 1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_100001860(exception, "Invalid UDIF, run is not within block boundary", 0x16u);
  }

  return result;
}

void sub_1001418FC(uint64_t a1, void *a2)
{
  values = a2;
  keys = @"resource-fork";
  sub_10014CD30(&keys, &values, 1, &propertyList);
  if (sub_1000E0464())
  {
    v3 = *__error();
    if (sub_1000E044C())
    {
      v16[0] = 0;
      v4 = sub_1000E03D8();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      *buf = 68158210;
      *&buf[4] = 41;
      *v19 = 2080;
      *&v19[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
      *&v19[10] = 2114;
      *&v19[12] = propertyList;
      v5 = _os_log_send_and_compose_impl();
      if (v5)
      {
        v6 = v5;
        fprintf(__stderrp, "%s\n", v5);
        free(v6);
      }
    }

    else
    {
      v7 = sub_1000E03D8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        *&buf[4] = 41;
        *v19 = 2080;
        *&v19[2] = "udif::details::UDIF_base::write_resources(CFDictionaryRef)";
        *&v19[10] = 2114;
        *&v19[12] = propertyList;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%.*s: res_dict: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v3;
  }

  sub_10014CE18(propertyList, v16);
  v8 = *(*(a1 + 72) + 216);
  v9 = *(a1 + 56);
  v10 = v16[1];
  BytePtr = CFDataGetBytePtr(v16[0]);
  v12 = *(sub_10019E2E8() + 1);
  *buf = BytePtr;
  *v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *&v19[8] = v10;
  *&v19[16] = v8;
  v20 = v10;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v13 = (*(*v9 + 120))(v9, buf);
  if (*v19)
  {
    sub_10000367C(*v19);
  }

  if ((v13 & 0x80000000) == 0)
  {
    *(*(a1 + 72) + 224) = v10;
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_100233158;
  v15 = std::generic_category();
  exception[1] = v13;
  exception[2] = v15;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Can't write UDIF resource part";
}

void sub_100141D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000C8E0(va);
  _Unwind_Resume(a1);
}

void *sub_100141DB8(void *a1, _DWORD *a2)
{
  if ((*a2 & 0x80000000) != 0)
  {
    v5 = sub_1000026BC(a1, "special: ", 9);
    if (*a2 == -1)
    {
      v6 = "ddm";
    }

    else
    {
      v6 = "entire_device";
    }

    if (*a2 == -1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 13;
    }

    return sub_1000026BC(v5, v6, v7);
  }

  else
  {
    sub_1000026BC(a1, "partition_num: ", 15);
    v3 = *a2;

    return std::ostream::operator<<();
  }
}

void *sub_100141E58(void *a1, uint64_t a2)
{
  v4 = sub_1000026BC(a1, "Blocks header", 13);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  v63 = *(a2 + 40);
  v64 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 152);
  v59 = *(a2 + 136);
  v60 = v12;
  v13 = *(a2 + 184);
  v61 = *(a2 + 168);
  v62 = v13;
  v14 = *(a2 + 88);
  v55 = *(a2 + 72);
  v56 = v14;
  v15 = *(a2 + 120);
  v57 = *(a2 + 104);
  v58 = v15;
  v16 = *(a2 + 200);
  v17 = sub_1000026BC(a1, "signature", 9);
  v18 = sub_1000026BC(v17, ": ", 2);
  v65[23] = 4;
  strcpy(v65, "mish");
  v19 = sub_1000026BC(v18, v65, 4);
  if ((v65[23] & 0x80000000) != 0)
  {
    operator delete(*v65);
  }

  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v21 = sub_1000026BC(a1, "version", 7);
  sub_1000026BC(v21, ": ", 2);
  v22 = std::ostream::operator<<();
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v24 = sub_1000026BC(a1, "first_sector_number", 19);
  sub_1000026BC(v24, ": ", 2);
  v25 = std::ostream::operator<<();
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v27 = sub_1000026BC(a1, "sector_count", 12);
  sub_1000026BC(v27, ": ", 2);
  v28 = std::ostream::operator<<();
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v30 = sub_1000026BC(a1, "data_start", 10);
  v31 = sub_1000026BC(v30, ": ", 2);
  v32 = *v31;
  v33 = v31 + *(*v31 - 24);
  v34 = *(v33 + 2);
  *(v33 + 2) = v34 & 0xFFFFFFB5 | 8;
  *(v31 + *(v32 - 24) + 8) |= 0x200u;
  v65[0] = 48;
  sub_100023058(v31, v65);
  std::ostream::operator<<();
  v35 = *v31;
  *(v31 + *(*v31 - 24) + 8) = v34;
  std::ios_base::getloc((v31 + *(v35 - 24)));
  v36 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  v37 = sub_1000026BC(a1, "decompression_buffer_req", 24);
  sub_1000026BC(v37, ": ", 2);
  v38 = std::ostream::operator<<();
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  LODWORD(v54.__locale_) = v10;
  v40 = sub_1000026BC(a1, "descriptor", 10);
  v41 = sub_1000026BC(v40, ": ", 2);
  v42 = sub_100141DB8(v41, &v54);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  *v65 = v63;
  *&v65[16] = v64;
  v44 = sub_1000026BC(a1, "reserved", 8);
  v45 = sub_1000026BC(v44, ": ", 2);
  sub_10014AC44(v45, v65, 24);
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v54, &std::ctype<char>::id);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v54);
  std::ostream::put();
  std::ostream::flush();
  *v65 = v11;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v72 = v62;
  *&v65[8] = v55;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v47 = sub_1000026BC(a1, "checksum", 8);
  v48 = sub_1000026BC(v47, ": ", 2);
  sub_1001427DC(v48, v65);
  std::ios_base::getloc((v48 + *(*v48 - 24)));
  v49 = std::locale::use_facet(&v54, &std::ctype<char>::id);
  (v49->__vftable[2].~facet_0)(v49, 10);
  std::locale::~locale(&v54);
  std::ostream::put();
  std::ostream::flush();
  v50 = sub_1000026BC(a1, "run_count", 9);
  sub_1000026BC(v50, ": ", 2);
  v51 = std::ostream::operator<<();
  std::ios_base::getloc((v51 + *(*v51 - 24)));
  v52 = std::locale::use_facet(v65, &std::ctype<char>::id);
  (v52->__vftable[2].~facet_0)(v52, 10);
  std::locale::~locale(v65);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_100142778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001427DC(void *a1, unsigned __int8 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = sub_1000026BC(a1, "type: ", 6);
  v17 = *a2;
  v6 = sub_100020DF4(v5, &v17);
  v7 = sub_1000026BC(v6, " ", 1);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = 48;
  v8 = sub_100023058(v7, &v16);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 24) = 2;
  v10 = *(v8 + *(v9 - 24) + 8);
  sub_1000026BC(v8, "len: ", 5);
  v11 = *(a2 + 1);
  v12 = std::ostream::operator<<();
  v13 = sub_1000026BC(v12, " data: ", 7);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  v14 = *(a2 + 1);
  if (v14)
  {
    sub_10014AC44(v8, a2 + 8, v14);
  }

  else
  {
    sub_1000026BC(v8, "(empty)", 7);
  }

  *(v8 + *(*v8 - 24) + 8) = v10;
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

uint64_t sub_1001429B4(void *a1, uint64_t a2)
{
  sub_1000026BC(a1, "plst: count = ", 14);
  v3 = *(a2 + 518);
  v4 = std::ostream::operator<<();
  sub_1000026BC(v4, " max =", 6);
  v5 = *(a2 + 516);

  return std::ostream::operator<<();
}

void *sub_100142A10()
{
  if ((atomic_load_explicit(&qword_100240BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100240BB8))
  {
    sub_10012EB2C(v1, -2147483643);
    v1[1] = 0;
    sub_10012EB2C(v2, -2147483641);
    v2[1] = 1;
    sub_10012EB2C(v3, -2147483640);
    v3[1] = 2;
    sub_10012EB2C(v4, -2147483642);
    v4[1] = 4;
    sub_10014AE18(&qword_100240BA0, v1, 4);
    __cxa_atexit(sub_100142B5C, &qword_100240BA0, &_mh_execute_header);
    __cxa_guard_release(&qword_100240BB8);
  }

  return &qword_100240BA0;
}

void *sub_100142B88@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  sub_100142A10();
  v4 = qword_100240BA8;
  if (!qword_100240BA8)
  {
    goto LABEL_9;
  }

  v5 = *a1;
  v6 = &qword_100240BA8;
  do
  {
    v7 = *(v4 + 28);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != &qword_100240BA8 && v5 >= *(v6 + 7))
  {
    result = sub_100142A10();
    *a2 = *(v6 + 8);
    v11 = 1;
  }

  else
  {
LABEL_9:
    result = sub_100142A10();
    v11 = 0;
    *a2 = 0;
  }

  *(a2 + 4) = v11;
  return result;
}

uint64_t *sub_100142C1C(uint64_t *result, uint64_t a2, void (__cdecl **a3)(std::ostringstream *__hidden this), unint64_t a4, unint64_t a5)
{
  if (HIBYTE(*a3) == 128)
  {
    v9 = result;
    v14 = *a3;
    (*(*result + 16))(v13);
    if ((BYTE4(v13[0]) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v13);
      sub_1000026BC(v13, "Unsupported compressed run (", 28);
      v14 = *a3;
      sub_100023380(v13, &v14);
      sub_1000026BC(v13, ")", 1);
      sub_100004290(exception, v13, 0x2Du);
    }

    v13[0] = a3;
    v10 = sub_10014B0D8(a2, a3)[5];
    if (v10)
    {
      v13[0] = a3;
      v10 = sub_10014B0D8(a2, a3)[5];
    }

    if (v10 > a4)
    {
      a4 = v10;
    }

    v13[0] = a3;
    result = sub_10014B0D8(a2, a3);
    result[5] = a4;
    *(v9 + 88) = 1;
    v11 = v9[12];
    if (v11 <= a5)
    {
      v11 = a5;
    }

    v9[12] = v11;
  }

  return result;
}

void sub_100142DF4(void *a1, void *a2)
{
  sub_10012EB2C(&v12, 1);
  sub_100142EA0(a1, &v12);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v11 = *(v5 + 8);
      v7 = v5[5];
      sub_100142EA0(a1, &v11);
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }
}

void sub_100142EA0(void *a1, _DWORD *a2)
{
  if (*a2 != 1)
  {
    LODWORD(v9) = *a2;
    (*(*a1 + 16))(&v10, a1, &v9);
    if ((v10 & 0x100000000) != 0)
    {
      LODWORD(v11) = v10;
      sub_10003B264((a1 + 7), &v11);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v8 = sub_100001860(exception, "UDIF: compression algo is invalid", 0x16u);
  }

  sub_10012EB2C(&v11, 1);
  *&v9 = &v11;
  v3 = sub_100058898((a1 + 13), &v11);
  v5 = a1[7];
  v4 = a1[8];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[6];
  v3[5] = v5;
  v3[6] = v4;
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_100143010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100143028(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  (*(**(a1 + 56) + 80))(&v22);
  v4 = *(a1 + 104);
  if (v4 != (a1 + 112))
  {
    while (1)
    {
      v5 = *(v4 + 5);
      if (v5 == *(a1 + 56))
      {
        break;
      }

      if (v5)
      {
        v6 = **v5;
        if (v7)
        {
          v8 = *(v4 + 6);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(&v22 + 1);
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          (*(*v7 + 192))(&v21);
          v26 = v4 + 8;
          v9 = sub_100058898(&v23, v4 + 8);
          v10 = v21;
          v21 = 0uLL;
          v11 = v9[6];
          *(v9 + 5) = v10;
          if (v11)
          {
            sub_10000367C(v11);
            if (*(&v21 + 1))
            {
              sub_10000367C(*(&v21 + 1));
            }
          }

          if (v20)
          {
            sub_10000367C(v20);
          }

LABEL_17:
          if (v8)
          {
            sub_10000367C(v8);
          }
        }
      }

      v14 = *(v4 + 1);
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
          v15 = *(v4 + 2);
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == (a1 + 112))
      {
        goto LABEL_25;
      }
    }

    *&v21 = v4 + 8;
    v12 = sub_100058898(&v23, v4 + 8);
    v13 = v22;
    if (*(&v22 + 1))
    {
      atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v12[6];
    *(v12 + 5) = v13;
    goto LABEL_17;
  }

LABEL_25:
  v17 = v24;
  *a2 = v23;
  *(a2 + 8) = v17;
  v18 = a2 + 8;
  v19 = v25;
  *(a2 + 16) = v25;
  if (v19)
  {
    v17[2] = v18;
    v23 = &v24;
    v24 = 0;
    v25 = 0;
    v17 = 0;
  }

  else
  {
    *a2 = v18;
  }

  *(a2 + 24) = v22;
  sub_100056314(&v23, v17);
}

uint64_t sub_1001432F8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != (result + 16))
  {
    do
    {
      if (*(v1 + 59) == 128 && (v1[5] - v1[4] + (v1[6] & 1) + ((*(v1 + 48) >> 1) & 1) - 1) << 9 > 0x400000)
      {
        v7 = (v1[5] - v1[4] + (v1[6] & 1) + ((*(v1 + 48) >> 1) & 1) - 1) << 9;
        *&v9 = "udif::details::UDIF_base::validate_runs()";
        *(&v9 + 1) = 39;
        v10 = 16;
        sub_100143508(v11, &v9);
        sub_1000026BC(v12, "Run interval: ", 14);
        sub_100124BF8(v12, (v1 + 4));
        sub_1000026BC(v12, " of type ", 9);
        LODWORD(v8) = *(v1 + 14);
        sub_100023380(v12, &v8);
        sub_1000026BC(v12, " has size ", 10);
        std::ostream::operator<<();
        sub_1000026BC(v12, "which is larger than allowed ", 29);
        std::ostream::operator<<();
        sub_1000026BC(v12, " or exceeds size_t size ", 24);
        v8 = -1;
        sub_1001434D8(v11, &v8);
        sub_100143630(v11);
        exception = __cxa_allocate_exception(0x40uLL);
        v6 = sub_100001860(exception, "UDIF: compressed runs should be <= 1MB", 0x16u);
      }

      v2 = v1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
    }

    while (v3 != (result + 16));
  }

  return result;
}

void sub_1001434BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100143630(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001434D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  std::ostream::operator<<();
  return a1;
}

void *sub_100143508(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014B1AC(a1, a2);
  *a1 = off_100227198;
  a1[45] = &off_100227298;
  a1[46] = &off_1002272C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100227198;
  a1[45] = off_100227220;
  a1[46] = off_100227248;
  return a1;
}

void sub_10014360C(_Unwind_Exception *a1)
{
  sub_100147944(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100143630(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100147944(a1);
  std::ios::~ios();
  return a1;
}

uint64_t *sub_100143674(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 + 40 != sub_10014B274(a1 + 32, a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_100001860(exception, "Invalid UDIF format, contains intersected blocks", 0x16u);
  }

  v6 = *(a3 + 2);
  v19 = *(a3 + 76);
  v20 = *(a3 + 92);
  v21 = *(a3 + 108);
  v22 = *(a3 + 124);
  v15 = *(a3 + 12);
  v16 = *(a3 + 28);
  v17 = *(a3 + 44);
  v18 = *(a3 + 60);
  v7 = *a3;
  v11 = *a2;
  v12 = *(a2 + 16);
  v13 = v7;
  v14 = v6;
  v23 = 1;
  return sub_10014B2F4((a1 + 32), &v11);
}

void sub_100143D74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23)
{
  sub_1001440DC(&a23);
  sub_1000085B4(&a20, a21);
  operator delete[]();
}

void *sub_100143E44(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BA78(a1, a2);
  *a1 = off_1002273B8;
  a1[45] = &off_1002274B8;
  a1[46] = &off_1002274E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002273B8;
  a1[45] = off_100227440;
  a1[46] = off_100227468;
  return a1;
}

void sub_100143F48(_Unwind_Exception *a1)
{
  sub_1001480DC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100143F6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001480DC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100143FB4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BB40(a1, a2);
  *a1 = off_1002275D8;
  a1[45] = &off_1002276D8;
  a1[46] = &off_100227700;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002275D8;
  a1[45] = off_100227660;
  a1[46] = off_100227688;
  return a1;
}

void sub_1001440B8(_Unwind_Exception *a1)
{
  sub_100148874(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001440DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100148874(a1);
  std::ios::~ios();
  return a1;
}

uint64_t *sub_100144120()
{
  if ((atomic_load_explicit(&qword_100240BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100240BD8))
  {
    sub_10012EB2C(&v1, 0);
    v2 = xmmword_1001D2930;
    v3 = 2;
    v4 = v1;
    v5 = 0;
    v6 = 0;
    sub_10014BC08(qword_100240BC0, &v2, 1);
    __cxa_atexit(sub_10014422C, qword_100240BC0, &_mh_execute_header);
    __cxa_guard_release(&qword_100240BD8);
  }

  return qword_100240BC0;
}

uint64_t sub_100144258(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6[0] = a2 / a4;
  v6[1] = (a3 + a2) / a4;
  v7 = 2;
  result = sub_10000C83C(a1 + 8, v6);
  if (a1 + 16 == result)
  {
    sub_100144120();
    return qword_100240BC0[0];
  }

  return result;
}

void sub_1001442BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v8 = sub_100144258(a1, a2, a3, 0x200uLL);
  if (v5)
  {
    v9 = v8;
    v10 = a1 + 16;
    v11 = a2;
    while (v9 != v10)
    {
      v12 = v9[4];
      v13 = v12 << 9;
      if (v11 < v12 << 9)
      {
        goto LABEL_11;
      }

      v14 = (v9[5] - v12) << 9;
      if (v14 - (v11 - v13) >= v5)
      {
        v15 = v5;
      }

      else
      {
        v15 = v14 - (v11 - v13);
      }

      v16 = *(v9 + 14);
      v29 = v16;
      if (HIBYTE(v16) == 128)
      {
        v30 = *(v9 + 4);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        *&v32 = v11 - a2;
        *(&v32 + 1) = v11 - v13;
      }

      else
      {
        *&v30 = v9[8] + v11 - v13;
        *(&v30 + 1) = v15;
        *&v31 = v11;
        *(&v31 + 1) = v15;
        v32 = v11 - a2;
      }

      v33 = v15;
      v22 = a4[1];
      v23 = *a4 + (v22 << 6);
      if (v22 == a4[2])
      {
        sub_10014BED0(a4, v23, 1, &v29, &v34);
      }

      else
      {
        *v23 = v16;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        *(v23 + 56) = v33;
        *(v23 + 40) = v26;
        *(v23 + 24) = v25;
        *(v23 + 8) = v24;
        ++a4[1];
      }

      v27 = v9[1];
      if (v27)
      {
        do
        {
          v9 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v9;
          v9 = v9[2];
        }

        while (*v9 != v28);
      }

LABEL_23:
      v11 += v15;
      v5 -= v15;
      if (!v5)
      {
        return;
      }
    }

    v13 = v11 + v5;
LABEL_11:
    if (v13 - v11 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v13 - v11;
    }

    sub_10012EB2C(&v29, 0);
    v30 = 0uLL;
    *&v31 = v11;
    *(&v31 + 1) = v15;
    v32 = v11 - a2;
    v33 = v15;
    v17 = a4[1];
    v18 = *a4 + (v17 << 6);
    if (v17 == a4[2])
    {
      sub_10014BED0(a4, v18, 1, &v29, &v34);
    }

    else
    {
      *v18 = v29;
      v19 = v30;
      v20 = v31;
      v21 = v32;
      *(v18 + 56) = v33;
      *(v18 + 40) = v21;
      *(v18 + 24) = v20;
      *(v18 + 8) = v19;
      ++a4[1];
    }

    goto LABEL_23;
  }
}

uint64_t sub_1001444D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C83C(a1 + 8, a2);
  sub_10000C534(a1 + 8, a2);
  return v4;
}

uint64_t sub_10014452C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  sub_100141450(v16, a3);
  if (sub_100054BF0(a4, v16))
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    sub_100144714(v16, &v14);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    sub_1000026BC(v17, v8, v9);
    sub_1000026BC(v17, " - same ", 8);
    sub_10014C1C8(v17, a3);
    std::ostream::~ostream();
    sub_10014900C(v16);
  }

  else
  {
    *&v14 = "udif::details::UDIF_base::print_checksum_verification_status(const std::string &, const csum_any &, const details::checksum &) const";
    *(&v14 + 1) = 60;
    v15 = 0;
    sub_100052128(v16, &v14);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    sub_1000026BC(v17, v11, v12);
    sub_1000026BC(v17, " - different calculated: <", 26);
    sub_10014C1C8(v17, a3);
    sub_1000026BC(v17, "> real: <", 9);
    sub_1001427DC(v17, a4);
    sub_1000026BC(v17, ">", 1);
    std::ostream::~ostream();
    sub_10005235C(v16);
  }

  return std::ios::~ios();
}

void sub_1001446E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10014483C(va);
  _Unwind_Resume(a1);
}

void *sub_100144714(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014C100(a1, a2);
  *a1 = off_1002277F8;
  a1[45] = &off_1002278F8;
  a1[46] = &off_100227920;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002277F8;
  a1[45] = off_100227880;
  a1[46] = off_1002278A8;
  return a1;
}

void sub_100144818(_Unwind_Exception *a1)
{
  sub_10014900C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014483C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014900C(a1);
  std::ios::~ios();
  return a1;
}

void sub_100144880(uint64_t a1, uint64_t *a2)
{
  *a1 = off_100226F00;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v3 = a2[2];
  *(a1 + 56) = a2[1];
  *(a1 + 64) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 72) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  sub_100142A10();
  sub_100144120();
  *(a1 + 89) = *(*(a1 + 72) + 216) >= *(*(a1 + 72) + 32) + *(*(a1 + 72) + 24);
  sub_100144BE4(a1);
}

void sub_100144B58(_Unwind_Exception *a1)
{
  sub_10002331C(v7 - 168);
  sub_100056314(v4, *(v1 + 112));
  v9 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v9)
  {
    operator delete();
  }

  v10 = *(v1 + 64);
  if (v10)
  {
    sub_10000367C(v10);
  }

  sub_1000085B4(v3, *v6);
  sub_1000085B4(v2, *v5);
  _Unwind_Resume(a1);
}

void sub_100144D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_100128A10(va);
  sub_100128A10(va1);
  v4 = *(v2 - 32);
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10000C8E0((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100144F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_10000C8E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10014529C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000C8E0(va);
  if (v5)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001452F8(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = off_100226F00;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 72) = 0;
  *(a1 + 80) = a3;
  *(a1 + 88) = 256;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  sub_100142A10();
  sub_100144120();
  return a1;
}

void sub_1001453B4(_Unwind_Exception *a1)
{
  v7 = v4;
  sub_100056314(v7, *(v2 + 112));
  v9 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v9)
  {
    operator delete();
  }

  v10 = *(v2 + 64);
  if (v10)
  {
    sub_10000367C(v10);
  }

  sub_1000085B4(v3, *v6);
  sub_1000085B4(v1, *v5);
  _Unwind_Resume(a1);
}

uint64_t sub_100145414(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFE00000000;
  *(a1 + 40) = 0u;
  v4 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_10012C534((a1 + 64));
  *(a1 + 68) = 0;
  *(a1 + 200) = 0;
  v5 = *a2;
  LODWORD(v28) = 1752394093;
  sub_10009C144("blocks_signature", v5, &v28, 1);
  *a1 = 1752394093;
  v6 = bswap32(*(a2 + 4));
  LODWORD(v28) = 1;
  sub_10009C144("version", v6, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = bswap64(*(a2 + 8));
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap32(*(a2 + 32));
  LODWORD(v28) = *(a2 + 36);
  sub_100141528(&v28, v26);
  *(a1 + 36) = v26[0];
  v7 = *(a2 + 40);
  *(v4 + 16) = *(a2 + 56);
  *v4 = v7;
  sub_10012C534(v26);
  v8 = *(a2 + 144);
  v9 = *(a2 + 176);
  v26[6] = *(a2 + 160);
  v26[7] = v9;
  v27 = *(a2 + 192);
  v10 = *(a2 + 80);
  v11 = *(a2 + 112);
  v26[2] = *(a2 + 96);
  v26[3] = v11;
  v26[4] = *(a2 + 128);
  v26[5] = v8;
  v26[0] = *(a2 + 64);
  v26[1] = v10;
  v33 = *(a2 + 136);
  v34 = *(a2 + 152);
  v35 = *(a2 + 168);
  v36 = *(a2 + 184);
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  v32 = *(a2 + 120);
  v28 = *&v26[0];
  sub_10014132C(&v28, &v17);
  *(a1 + 64) = v17;
  v12 = v23;
  *(a1 + 136) = v22;
  *(a1 + 152) = v12;
  v13 = v25;
  *(a1 + 168) = v24;
  *(a1 + 184) = v13;
  v14 = v19;
  *(a1 + 72) = v18;
  *(a1 + 88) = v14;
  v15 = v21;
  *(a1 + 104) = v20;
  *(a1 + 120) = v15;
  *(a1 + 200) = bswap32(*(a2 + 200));
  return a1;
}

void sub_100145654(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100002A4C(exception_object);
}

uint64_t sub_100145834(uint64_t a1, uint64_t a2)
{
  v4 = sub_10012CA9C(a1);
  v4[9] = 0;
  *(v4 + 5) = 0u;
  *(v4 + 1) = 0u;
  sub_10012EB2C(&v6, bswap32(*a2));
  *a1 = v6;
  *(a1 + 4) = bswap32(*(a2 + 4));
  *(a1 + 8) = bswap64(*(a2 + 8));
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = bswap64(*(a2 + 32));
  return a1;
}

uint64_t sub_10014597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, uint64_t a7, int a8)
{
  *a1 = 1752394093;
  v23 = 1752394093;
  sub_10009C144("blocks_signature", 1752394093, &v23, 1);
  *(a1 + 4) = 1;
  v24 = 1;
  sub_10009C144("version", 1, &v24, 1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = *a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = *a7;
  v16 = *(a7 + 8);
  v17 = *(a7 + 24);
  v18 = *(a7 + 40);
  *(a1 + 120) = *(a7 + 56);
  *(a1 + 104) = v18;
  *(a1 + 88) = v17;
  *(a1 + 72) = v16;
  v19 = *(a7 + 72);
  v20 = *(a7 + 88);
  v21 = *(a7 + 104);
  *(a1 + 184) = *(a7 + 120);
  *(a1 + 168) = v21;
  *(a1 + 152) = v20;
  *(a1 + 136) = v19;
  *(a1 + 200) = a8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100145AA8(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap64(*(a1 + 8));
  *(a2 + 16) = bswap64(*(a1 + 16));
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = bswap64(*(a1 + 32));
  return a2 + 40;
}

_DWORD *sub_100145AF8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap64(*(a1 + 8));
  *(a2 + 16) = bswap64(*(a1 + 16));
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = bswap32(*(a1 + 32));
  *(a2 + 36) = bswap32(*(a1 + 36));
  v3 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v3;
  v4 = sub_100141570(a1 + 64, a2 + 64);
  *v4 = bswap32(*(a1 + 200));
  return v4 + 1;
}

_DWORD *sub_100145B90(_DWORD *a1)
{
  bzero(a1, 0x408uLL);
  a1[129] = 65537;
  return a1;
}

_WORD *sub_100145BC4(unsigned __int16 *a1, _WORD *a2)
{
  if (sub_1000E0464())
  {
    *&v5 = "*udif::details::plst::write(char *)";
    *(&v5 + 1) = 27;
    v6 = 2;
    sub_100145CBC(v7, &v5);
    sub_1001429B4(v8, a1);
    std::ostream::~ostream();
    sub_1001498A0(v7);
    std::ios::~ios();
  }

  memcpy(a2, a1, 0x204uLL);
  a2[258] = bswap32(a1[258]) >> 16;
  a2[259] = bswap32(a1[259]) >> 16;
  memcpy(a2 + 260, a1 + 260, 0x200uLL);
  return a2 + 516;
}

void sub_100145CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100145DE4(va);
  _Unwind_Resume(a1);
}

void *sub_100145CBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014C7C8(a1, a2);
  *a1 = off_100227A18;
  a1[45] = &off_100227B18;
  a1[46] = &off_100227B40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100227A18;
  a1[45] = off_100227AA0;
  a1[46] = off_100227AC8;
  return a1;
}

void sub_100145DC0(_Unwind_Exception *a1)
{
  sub_1001498A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100145DE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001498A0(a1);
  std::ios::~ios();
  return a1;
}

CFDataRef sub_100145E28@<X0>(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  result = CFDataCreate(kCFAllocatorDefault, *a1, *(a1 + 8));
  *a2 = result;
  return result;
}

const void **sub_100145E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int16 *a4@<X3>, void *a5@<X4>, CFDictionaryRef *a6@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  cf = 0;
  v24 = CFStringCreateWithCString(kCFAllocatorDefault, v11, 0x8000100u);
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    cf = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
  }

  else
  {
    cf = &stru_100234B28;
  }

  keys[0] = 0;
  sub_100023024(keys);
  std::to_string(&v22, a3);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v22.__r_.__value_.__r.__words[0];
  }

  v21 = CFStringCreateWithCString(kCFAllocatorDefault, v13, 0x600u);
  sub_100009110(keys);
  sub_1000026BC(&v27, "0x", 2);
  *(&v28[-1].__locale_ + *(v27 - 24)) = *(&v28[-1].__locale_ + *(v27 - 24)) & 0xFFFFFFB5 | 8;
  LOBYTE(values[0]) = 48;
  sub_100023058(&v27, values);
  *(&v28[1].__locale_ + *(v27 - 24)) = 4;
  v14 = *a4;
  std::ostream::operator<<();
  sub_100137D88(&v27 + 8, &v20);
  *&v27 = v15;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v20;
  }

  else
  {
    v16 = v20.__r_.__value_.__r.__words[0];
  }

  v19 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x600u);
  *keys = *off_100226F18;
  v27 = *off_100226F28;
  v28[0].__locale_ = @"CFName";
  values[0] = a5;
  values[1] = v24;
  values[2] = v21;
  values[3] = v19;
  if (*(a2 + 24))
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  values[4] = cf;
  *a6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v17, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100023024(&v19);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  sub_100023024(&v21);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  sub_100023024(&cf);
  return sub_100023024(&v24);
}

void sub_10014623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  sub_100023024(&a31);
  sub_100023024(&a24);
  sub_100023024(&a25);
  _Unwind_Resume(a1);
}

void *sub_1001462E8(void *a1, int *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = sub_1000026BC(a1, "type: ", 6);
  v33 = *a2;
  v6 = sub_100023380(v5, &v33);
  v7 = sub_1000026BC(v6, " data: ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v7 + *(v8 - 24) + 8) |= 0x200u;
  v9 = *(a2 + 1);
  v10 = std::ostream::operator<<();
  v11 = sub_1000026BC(v10, "/", 1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v11 + *(v12 - 24) + 8) &= ~0x200u;
  v13 = *(a2 + 2);
  v14 = std::ostream::operator<<();
  v15 = sub_1000026BC(v14, " logical: ", 10);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v15 + *(v16 - 24) + 8) |= 0x200u;
  v17 = *(a2 + 3);
  v18 = std::ostream::operator<<();
  v19 = sub_1000026BC(v18, "/", 1);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v19 + *(v20 - 24) + 8) &= ~0x200u;
  v21 = *(a2 + 4);
  v22 = std::ostream::operator<<();
  v23 = sub_1000026BC(v22, " io: ", 5);
  v24 = *v23;
  *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v23 + *(v24 - 24) + 8) |= 0x200u;
  v25 = *(a2 + 5);
  v26 = std::ostream::operator<<();
  v27 = sub_1000026BC(v26, ",", 1);
  v28 = *v27;
  *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v27 + *(v28 - 24) + 8) &= ~0x200u;
  v29 = *(a2 + 6);
  v30 = std::ostream::operator<<();
  sub_1000026BC(v30, "/", 1);
  v31 = *(a2 + 7);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

uint64_t sub_100146698(void *a1)
{
  result = sub_10014CB00(*(*a1 + 8 * a1[4]));
  if (!result)
  {
    v3 = a1;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v6);
    sub_1000026BC(v6, "UDIF: Failed converting type array string (", 43);
    v5 = *(*v3 + 8 * v3[4]);
    std::ostream::operator<<();
    sub_1000026BC(v6, ") to type", 9);
    sub_100004290(exception, v6, 0x16u);
  }

  return result;
}

void sub_100146764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

const void *sub_100146798(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), *(*a1 + 8 * *(a1 + 32)));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_100001860(exception, "UDIF: Can't get resource array", 0x16u);
  }

  return result;
}

BOOL sub_1001467FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 == v4)
    {
      return *(a1 + 32) == *(a2 + 32);
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32);
}

void sub_100146858(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = *a2;
  v2 = a2[1];
  a1[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new[]();
}

void sub_100146B4C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100146D20(va);
  operator delete[]();
}

void *sub_100146BF8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014C890(a1, a2);
  *a1 = off_100227C38;
  a1[45] = &off_100227D38;
  a1[46] = &off_100227D60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100227C38;
  a1[45] = off_100227CC0;
  a1[46] = off_100227CE8;
  return a1;
}

void sub_100146CFC(_Unwind_Exception *a1)
{
  sub_10014A038(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100146D20(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A038(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100146D68(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  v5 = *a3;
  v4 = a3[1];
  *result = v3;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100146D94(uint64_t a1)
{
  sub_100059D1C(a1);

  operator delete();
}

uint64_t sub_100146DCC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100147064(v1);

  return std::ios::~ios();
}

uint64_t sub_100146E18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100147064(v1);

  return std::ios::~ios();
}

void sub_100146E78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100147064(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100146EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100146F1C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100146F88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100147064(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100146FEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100147064(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100147064(uint64_t a1)
{
  *a1 = off_100227100;
  sub_1001471D0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001471D0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100147380((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100147348(uint64_t a1)
{
  sub_100147064(a1);

  operator delete();
}

int *sub_100147380(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 85;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 85;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014757C(uint64_t a1)
{
  sub_10013768C(&v3, 0);
  *a1 = v3;
  v4 = 0;
  sub_100137724(v5, &v4);
  *(a1 + 4) = v5[0];
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

unsigned int *sub_100147624(unsigned int *result, unsigned int a2)
{
  *result = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "descriptor_special";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_100201C60;
    *(exception + 8) = a2;
  }

  return result;
}

uint64_t sub_1001476AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100147944(v1);

  return std::ios::~ios();
}

uint64_t sub_1001476F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100147944(v1);

  return std::ios::~ios();
}

void sub_100147758(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100147944(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001477C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001477FC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100147868(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100147944(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001478CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100147944(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100147944(uint64_t a1)
{
  *a1 = off_100227330;
  sub_100147AB0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100147AB0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100147C60((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100147BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100147C28(uint64_t a1)
{
  sub_100147944(a1);

  operator delete();
}

int *sub_100147C60(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 417;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 417;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100147E44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001480DC(v1);

  return std::ios::~ios();
}

uint64_t sub_100147E90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001480DC(v1);

  return std::ios::~ios();
}

void sub_100147EF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001480DC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100147F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100147F94(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100148000(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001480DC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100148064(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001480DC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001480DC(uint64_t a1)
{
  *a1 = off_100227550;
  sub_100148248(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100148248(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1001483F8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100148394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001483C0(uint64_t a1)
{
  sub_1001480DC(a1);

  operator delete();
}

int *sub_1001483F8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 458;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 458;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001485DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100148874(v1);

  return std::ios::~ios();
}

uint64_t sub_100148628(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100148874(v1);

  return std::ios::~ios();
}

void sub_100148688(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100148874(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001486F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014872C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100148798(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100148874(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001487FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100148874(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100148874(uint64_t a1)
{
  *a1 = off_100227770;
  sub_1001489E0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001489E0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100148B90((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100148B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100148B58(uint64_t a1)
{
  sub_100148874(a1);

  operator delete();
}

int *sub_100148B90(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 500;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 500;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100148D74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014900C(v1);

  return std::ios::~ios();
}

uint64_t sub_100148DC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014900C(v1);

  return std::ios::~ios();
}

void sub_100148E20(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014900C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100148E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100148EC4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100148F30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014900C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100148F94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014900C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014900C(uint64_t a1)
{
  *a1 = off_100227990;
  sub_100149178(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100149178(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100149328((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001492C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001492F0(uint64_t a1)
{
  sub_10014900C(a1);

  operator delete();
}

int *sub_100149328(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 601;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 601;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014950C(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = a4;
  return a1;
}

void sub_10014956C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100149584(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *(result + 16) = 0;
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = *(a2 + 32);
  *(result + 40) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (*(a3 + 24) == 1)
  {
    *(result + 56) = 0;
    *(result + 56) = *(a3 + 16);
    *(a3 + 16) = 0;
    *(result + 64) = 1;
  }

  *(result + 72) = *(a3 + 32);
  return result;
}

uint64_t sub_100149608(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001498A0(v1);

  return std::ios::~ios();
}

uint64_t sub_100149654(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001498A0(v1);

  return std::ios::~ios();
}

void sub_1001496B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001498A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100149758(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001497C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001498A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100149828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001498A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001498A0(uint64_t a1)
{
  *a1 = off_100227BB0;
  sub_100149A0C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100149A0C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100149BBC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100149B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100149B84(uint64_t a1)
{
  sub_1001498A0(a1);

  operator delete();
}

int *sub_100149BBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 768;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 768;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100149DA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A038(v1);

  return std::ios::~ios();
}

uint64_t sub_100149DEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A038(v1);

  return std::ios::~ios();
}

void sub_100149E4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A038(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100149EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100149EF0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100149F5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A038(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100149FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A038(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014A038(uint64_t a1)
{
  *a1 = off_100227DD0;
  sub_10014A1A4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10014A1A4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10014A354((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014A2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014A31C(uint64_t a1)
{
  sub_10014A038(a1);

  operator delete();
}

int *sub_10014A354(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 898;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 898;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *sub_10014A538(_DWORD *result, int a2)
{
  v2 = 0;
  *result = a2;
  v5 = 0x200000001;
  v6 = 4;
  do
  {
    a2 &= ~*(&v5 + v2);
    v2 += 4;
  }

  while (v2 != 12);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_flags";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100209F68;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_10014A628(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100227EF0;
  a1[2] = off_100227F58;
  a1[1] = off_100227F18;
  return a1;
}

std::exception *sub_10014A6AC(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10014A728(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014A7C4(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014A848(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014A8E8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014A980(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10014AA30(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227100;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014AAE0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10014AAF8(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = &unk_100227F90;
    v5 = 72;
    do
    {
      v6 = *(v4 - 4);
      if ((v6 & v3) != 0)
      {
        v3 &= ~v6;
        sub_1000026BC(a1, *(v4 - 1), *v4);
        if (v3)
        {
          v8 = 44;
          sub_1000026BC(a1, &v8, 1);
        }
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
    return a1;
  }

  else
  {

    return sub_1000026BC(a1, "none", 4);
  }
}

void *sub_10014ABC4(void *a1, _DWORD *a2)
{
  v2 = &off_100227FD0;
  v3 = 48;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_1000026BC(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_1000026BC(a1, v4, v5);
}

void *sub_10014AC04(void *a1, _DWORD *a2)
{
  v2 = &off_100228000;
  v3 = 48;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_1000026BC(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_1000026BC(a1, v4, v5);
}

uint64_t *sub_10014AC44(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + *(*a1 - 24) + 8);
  v7 = a3 - 1;
  if (a3 != 1)
  {
    v8 = a2;
    v9 = a3 - 1;
    do
    {
      *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
      v17 = 48;
      v10 = sub_100023058(a1, &v17);
      *(v10 + *(*v10 - 24) + 24) = 2;
      v11 = *v8++;
      v12 = std::ostream::operator<<();
      sub_1000026BC(v12, " ", 1);
      --v9;
    }

    while (v9);
    v5 = *a1;
  }

  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = 48;
  v13 = sub_100023058(a1, &v16);
  *(v13 + *(*v13 - 24) + 24) = 2;
  v14 = a2[v7];
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v6;
  return a1;
}

void *sub_10014ADD8(void *a1, _DWORD *a2)
{
  v2 = &off_100228030;
  v3 = 72;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_1000026BC(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_1000026BC(a1, v4, v5);
}

void *sub_10014AE18(void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_10014AE98(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10014AE98(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_10014AF30(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10014AF30(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_10014B0D8(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10014B1AC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227330;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014B25C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = (*(a2 + 16) & 2) != 0 ? *a2 : *a2 + 1;
  v6 = v2;
  do
  {
    v7 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = *(v6 + 32);
  if ((*(v6 + 48) & 2) == 0)
  {
    ++v10;
  }

  if ((*(a2 + 16) & 1) + *(a2 + 8) - 1 < v10)
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_10014B2F4(uint64_t **a1, uint64_t a2)
{
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14 == 3)
    {
      if (*(&v13 + 1) < v13)
      {
        return (a1 + 1);
      }
    }

    else if (v13 >= *(&v13 + 1))
    {
      return (a1 + 1);
    }
  }

  else if (v13 >= *(&v13 + 1) || (v13 + 1) >= *(&v13 + 1))
  {
    return (a1 + 1);
  }

  if (sub_10014B408(a2 + 24))
  {
    return (a1 + 1);
  }

  result = sub_10014B8A0(a1, a2);
  if ((v6 & 1) == 0)
  {
    v7 = sub_10000C83C(a1, &v13);
    v8 = sub_10000C534(a1, &v13);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10;
    v15 = v7;
    sub_10014B510(a1, &v13, (a2 + 24), &v15, &v12);
    return v15;
  }

  return result;
}

BOOL sub_10014B408(uint64_t a1)
{
  v1 = 0;
  LOBYTE(v6) = 0;
  v16 = 0;
  if (byte_10024034C == 1)
  {
    v6 = qword_1002402C0;
    v7 = dword_1002402C8;
    v12 = unk_10024030C;
    v13 = unk_10024031C;
    v14 = unk_10024032C;
    v15 = unk_10024033C;
    v8 = *algn_1002402CC;
    v9 = unk_1002402DC;
    v10 = unk_1002402EC;
    v11 = unk_1002402FC;
    v1 = 1;
    v16 = 1;
  }

  v2 = *(a1 + 140);
  v4 = v2 == v1;
  v3 = v2 == v1;
  v4 = !v4 || v2 == 0;
  if (!v4)
  {
    return *a1 == v6 && sub_100054BF0((a1 + 4), &v6 + 1);
  }

  return v3;
}

uint64_t sub_10014B510(uint64_t **a1, __int128 *a2, uint64_t *a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = (*a5)[1];
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = *a5;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (!v12);
  }

  v13 = *a4;
  if (*a1 == *a4)
  {
    v15 = (a1 + 1);
  }

  else
  {
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v16 = *a4;
      do
      {
        v15 = v16[2];
        v12 = *v15 == v16;
        v16 = v15;
      }

      while (v12);
    }
  }

  v27 = *a2;
  v28 = *(a2 + 2);
  *&v25 = qword_10023FE60;
  *(&v25 + 1) = qword_10023FE60;
  v26 = 2;
  v23 = *(v8 + 2);
  for (i = v8[6]; v13 != v10; *a4 = v13)
  {
    v25 = *(v13 + 2);
    v26 = *(v13 + 48);
    v21 = v27;
    v22 = v28;
    sub_10000C6B4(&v21, &v25, &v29);
    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_23;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_23:
      LOBYTE(v31) = 0;
      v41 = 0;
      if (*(a3 + 140) == 1)
      {
        v31 = *a3;
        v32 = *(a3 + 2);
        v37 = *(a3 + 76);
        v38 = *(a3 + 92);
        v39 = *(a3 + 108);
        v40 = *(a3 + 124);
        v33 = *(a3 + 12);
        v34 = *(a3 + 28);
        v35 = *(a3 + 44);
        v36 = *(a3 + 60);
        v41 = 1;
      }

      *a4 = sub_10014B9F4(a1, v15, &v29);
    }

    v21 = v27;
    v22 = v28;
    sub_10000C778(&v21, &v25, &v29);
    v27 = v29;
    LOBYTE(v28) = v30;
    v15 = *a4;
    v17 = (*a4)[1];
    v18 = *a4;
    if (v17)
    {
      do
      {
        v13 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v13 = v18[2];
        v12 = *v13 == v18;
        v18 = v13;
      }

      while (!v12);
    }
  }

  v29 = v27;
  v30 = v28;
  result = sub_10000C778(&v29, &v23, &v21);
  v20 = v21;
  if (!v22)
  {
    if (v21 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    v20 = v21 + 1;
    goto LABEL_38;
  }

  if (v22 != 3)
  {
LABEL_38:
    if (v20 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (*(&v21 + 1) < v21)
  {
    goto LABEL_42;
  }

LABEL_39:
  v29 = v21;
  v30 = v22;
  LOBYTE(v31) = 0;
  v41 = 0;
  if (*(a3 + 140) == 1)
  {
    v31 = *a3;
    v32 = *(a3 + 2);
    v37 = *(a3 + 76);
    v38 = *(a3 + 92);
    v39 = *(a3 + 108);
    v40 = *(a3 + 124);
    v33 = *(a3 + 12);
    v34 = *(a3 + 28);
    v35 = *(a3 + 44);
    v36 = *(a3 + 60);
    v41 = 1;
  }

  result = sub_10014B9F4(a1, v15, &v29);
  v15 = result;
LABEL_42:
  *a4 = v15;
  return result;
}

uint64_t sub_10014B8A0(uint64_t a1, uint64_t a2)
{
  result = *sub_10000BBD8(a1, &v3, a2);
  if (!result)
  {
    sub_10014B920();
  }

  return result;
}

uint64_t sub_10014B9F4(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  result = *sub_10000D36C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10014B920();
  }

  return result;
}

uint64_t sub_10014BA78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227550;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014BB28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BB40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227770;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014BBF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10014BC08(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10014BC8C(a1, v4, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10014BC8C(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_10014BD3C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10014BD3C(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000BBF04(a5, (a2 + 4)))
  {
    if (!sub_1000BBF04((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000BBF04(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000BBF04((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000BBE7C(a1, a3, a5);
}

void sub_10014BED0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_10014BF70(a1, a3);
  if (v11 >> 57)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(v11 << 6);
  sub_10014BFE4(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_10014BF70(uint64_t a1, uint64_t a2)
{
  v2 = 0x1FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x1FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x1FFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_10014BFE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1 + (a1[1] << 6);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);
      v16 = *(v13 + 5);
      *(v12 + 56) = v13[7];
      *(v12 + 40) = v16;
      *(v12 + 24) = v15;
      *(v12 + 8) = v14;
      v13 += 8;
      v12 += 64;
    }

    while (v13 != a4);
  }

  *v12 = *a6;
  v17 = *(a6 + 8);
  v18 = *(a6 + 24);
  v19 = *(a6 + 40);
  *(v12 + 56) = *(a6 + 56);
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  *(v12 + 8) = v17;
  if (v11 != a4)
  {
    v20 = v12 + (a5 << 6);
    do
    {
      *v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *(a4 + 24);
      v23 = *(a4 + 40);
      *(v20 + 56) = *(a4 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      a4 += 64;
      v20 += 64;
    }

    while (a4 != v11);
  }

  if (v10)
  {
    v24 = *a1;
    if (a1 + 3 != *a1)
    {
      operator delete(v24);
    }
  }

  v25 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v25;
  a1[2] = a3;
}

uint64_t sub_10014C100(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227990;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014C1B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v5 = &v4;
  return (off_100228070[v2])(&v5, a2 + 4);
}

void *sub_10014C230(void *a1)
{
  v1 = sub_1000026BC(a1, "none {", 6);
  v2 = sub_1000026BC(v1, "[empty]", 7);

  return sub_1000026BC(v2, "}", 1);
}

void sub_10014C2E8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10014C328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014C360(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_10014C380(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10014C3C0(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100228190;
  a1[2] = off_1002281F8;
  a1[1] = off_1002281B8;
  return a1;
}

std::exception *sub_10014C444(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10014C4C0(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014C55C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014C5E0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014C680(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014C718(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10014C7C8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227BB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014C878(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C890(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100227DD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10014C940(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10014C958(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

uint64_t sub_10014CB00(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Invalid resource key";
    goto LABEL_8;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Resource name is too long to fit uint32_t";
    goto LABEL_8;
  }

  v8.length = Length;
  *buffer = 0;
  v8.location = 0;
  if (CFStringGetBytes(a1, v8, 0, 0, 0, buffer, 4, 0) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Can't get key in cstring format";
LABEL_8:
    v6 = sub_100001860(exception, v5, 0x16u);
  }

  return bswap32(*buffer);
}

BOOL sub_10014CC18(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = v3;
  if (v3)
  {
    CFArrayAppendValue(a1, v3);
  }

  sub_10000441C(&v5);
  return v3 != 0;
}

BOOL sub_10014CC9C(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v7 = v5;
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  sub_10000441C(&v7);
  return v5 != 0;
}

__CFDictionary *sub_10014CD30@<X0>(const void **keys@<X0>, const void **values@<X1>, CFIndex numValues@<X2>, CFMutableDictionaryRef *a4@<X8>)
{
  if (keys && values && numValues)
  {
    result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, numValues, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = result;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = 0;
    result = sub_1000043E8(&v7);
  }

  *a4 = Mutable;
  return result;
}

CFMutableDictionaryRef sub_10014CDD0@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = result;
  return result;
}

const void **sub_10014CE18@<X0>(CFPropertyListRef propertyList@<X0>, const __CFData **a2@<X8>)
{
  error = 0;
  v3 = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
  v4 = v3;
  if (v3)
  {
    v5 = error == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v10 = std::generic_category();
    exception[1] = 22;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't serialize property list";
  }

  Length = CFDataGetLength(v3);
  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(v4);
    v12 = sub_100008328(v11);
  }

  v13 = 0;
  *a2 = v4;
  a2[1] = Length;
  sub_10008943C(&v13);
  return sub_1000898D4(&error);
}

void sub_10014CF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1000898D4(&a10);
  _Unwind_Resume(a1);
}

const void **sub_10014CF98@<X0>(UInt8 *bytes@<X0>, CFIndex length@<X1>, void *a3@<X8>)
{
  error = 0;
  v4 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v17 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v10 = std::generic_category();
    exception[1] = 12;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't create data for plist deserialization";
  }

  format = kCFPropertyListXMLFormat_v1_0;
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, v4, 0, &format, &error);
  if (v5)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    Code = CFErrorGetCode(error);
    *v11 = &off_100233158;
    v13 = std::generic_category();
    v11[1] = Code;
    v11[2] = v13;
    *(v11 + 24) = 0;
    *(v11 + 48) = 0;
    v11[7] = "Can't convert data to property list";
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(v5);
    v15 = sub_100008328(v14);
  }

  *a3 = v5;
  sub_10008943C(&v17);
  return sub_1000898D4(&error);
}

void sub_10014D178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_10008943C(&a11);
  sub_1000898D4(&a12);
  _Unwind_Resume(a1);
}

char *sub_10014D1C0@<X0>(const __CFData *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  Length = CFDataGetLength(a1);
  v9 = a3 + a2;
  v10 = __CFADD__(a3, a2);
  if (__CFADD__(a3, a2))
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 + a2;
  }

  if (__CFADD__(a3, a2))
  {
    v9 = v11;
  }

  v18 = v9;
  v19 = v10;
  v12 = sub_1000F8770(&v18);
  if (!a3)
  {
    a3 = Length;
  }

  if (Length < v12)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001860(exception, "Unable to convert data to vector.", 0x16u);
  }

  v13 = v12;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BytePtr = CFDataGetBytePtr(a1);
  sub_100065CC8(a4, a3);
  return sub_1000DDB00(a4, *a4, &BytePtr[a2], &BytePtr[v13], v13 - a2);
}

void sub_10014D2B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10014D2D0(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  v8 = v6;
  if (v6)
  {
    CFDictionarySetValue(a1, a2, v6);
  }

  sub_100023024(&v8);
  return v6 != 0;
}

void sub_10014D35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100023024(va);
  _Unwind_Resume(a1);
}

void sub_10014D370(CFMutableDictionaryRef *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = *a2 + 16 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v4 += 16;
      CFDictionaryAddValue(*a1, v6, v7);
    }

    while (v4 != v5);
  }
}

uint64_t sub_10014D42C()
{
  if (atomic_load_explicit(&qword_100240C50, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100240C50, &v4, sub_100153B64);
  }

  return qword_100240C48;
}

void sub_10014D498(int a1)
{
  qword_100240350 = ccaes_cbc_encrypt_mode();
  v2 = ccaes_cbc_decrypt_mode();
  qword_100240358 = v2;
  v3 = qword_100240350;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void sub_10014D5E0(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_100204580;
  *(a1 + 12) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100151958(a1 + 16, v7, v7 + v8, v8);
  *(a1 + 40) = a5;
  *a1 = off_100228230;
  sub_10014E4BC((a1 + 48));
}

void sub_10014D6D4(_Unwind_Exception *a1)
{
  sub_1000273B4(v3);
  v5 = v1[6];
  v1[6] = 0;
  if (v5)
  {
    operator delete[]();
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10014D730(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 40);
  *a1 = off_100204580;
  *(a1 + 12) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100065D90(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v4;
  *a1 = off_100228230;
  sub_10014E4BC((a1 + 48));
}

void sub_10014D828(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_1000273B4(v4);
  v6 = v1[6];
  v1[6] = 0;
  if (v6)
  {
    operator delete[]();
  }

  *v1 = v2;
  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014D884(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 12);
  qword_100240350 = ccaes_cbc_encrypt_mode();
  v11 = ccaes_cbc_decrypt_mode();
  qword_100240358 = v11;
  v14 = qword_100240350;
  if (v10)
  {
    v14 = v11;
  }

  v15 = *(v14 + 8);
  __chkstk_darwin(v11, v12, v13);
  for (; a5; --a5)
  {
    v16 = *(a1 + 48);
    v25 = v16[2];
    v26 = v16[3];
    v23 = *v16;
    v24 = v16[1];
    v30 = *(v16 + 14);
    v28 = v16[5];
    v29 = v16[6];
    v27 = v16[4];
    sub_10014D42C();
    cchmac_update();
    sub_10014D42C();
    cchmac_final();
    v17 = *(a1 + 12);
    qword_100240350 = ccaes_cbc_encrypt_mode();
    qword_100240358 = ccaes_cbc_decrypt_mode();
    cccbc_set_iv();
    v18 = *(a1 + 12);
    qword_100240350 = ccaes_cbc_encrypt_mode();
    qword_100240358 = ccaes_cbc_decrypt_mode();
    v19 = *(a1 + 56);
    v20 = *(a1 + 40);
    cccbc_update();
    v21 = *(a1 + 40);
    a3 += v21;
    a4 += v21;
    ++a2;
  }

  return 0;
}

void sub_10014DA48(int a1)
{
  qword_100240360 = ccaes_xts_encrypt_mode();
  v2 = ccaes_xts_decrypt_mode();
  qword_100240368 = v2;
  v3 = qword_100240360;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void sub_10014DBA0(uint64_t a1, int a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  *a1 = off_100204580;
  *(a1 + 12) = a2;
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100151958(a1 + 16, v9, v9 + v10, v10);
  *(a1 + 40) = a5;
  *a1 = off_100228258;
  *(a1 + 48) = 0;
  *(a1 + 64) = *a4;
  sub_10014DA48(a2);
}

void sub_10014DC8C(_Unwind_Exception *a1)
{
  sub_100027454(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10014DCBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_100204580;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  sub_100065D90(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_100228258;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 24) - *v6;
  sub_10014DA48(*(a1 + 12));
}

void sub_10014DDC8(_Unwind_Exception *a1)
{
  sub_100027454(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014DDF8(uint64_t a1, uint64_t *a2)
{
  ccaes_cbc_encrypt_mode();
  sub_10014DE5C(*a2, a2[1], &unk_1001D301D, 15, a1 + 32, 0x20uLL);
  sub_10014DE5C(*a2, a2[1], &unk_1001D302C, 15, a1, 0x20uLL);
  return a1;
}

uint64_t sub_10014DE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = ccaes_cbc_encrypt_mode();
  v9 = (v8[1] + *v8 + 159) / 0x50uLL;
  v12 = __chkstk_darwin(v8, v10, v11);
  v14 = &v23 - 2 * v13;
  __chkstk_darwin(v12, v15, v16);
  v18 = &v23 - 2 * v17;
  cccmac_init();
  v23 = 1;
  if (a6 >= 0x10)
  {
    do
    {
      memcpy(v18, v14, 80 * v9);
      cccmac_update();
      cccmac_update();
      v19 = *(v18[8] + 8);
      cccmac_final_generate();
      ++v23;
      a5 += 16;
    }

    while (v23 <= a6 >> 4);
  }

  v20 = v8[1] + *v8;
  cc_clear();
  v21 = v8[1] + *v8;
  return cc_clear();
}

void sub_10014DFFC(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_10014DDF8((a1 + 10), a3);
  *a1 = off_100228280;
  v9[0] = v7;
  v9[1] = 32;
  *&v8 = a1 + 14;
  *(&v8 + 1) = 32;
  sub_10014DBA0(a1, a2, v9, &v8, a4);
}

void sub_10014E090(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v2 = *(a2 + 128);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v3;
  *(a1 + 128) = v2;
  *a1 = off_100228280;
  v5 = *(a2 + 12);
  v7[0] = a1 + 80;
  v7[1] = 32;
  *&v6 = a1 + 112;
  *(&v6 + 1) = 32;
  sub_10014DBA0(a1, v5, v7, &v6, *(a2 + 40));
}

uint64_t sub_10014E144(uint64_t a1)
{
  *a1 = off_100228280;
  memset_s((a1 + 80), 0x20uLL, 0, 0x20uLL);
  memset_s((a1 + 112), 0x20uLL, 0, 0x20uLL);
  *a1 = off_100228258;
  sub_100027454((a1 + 48));
  *a1 = off_100204580;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10014E204(uint64_t a1)
{
  sub_10014E144(a1);

  operator delete();
}

uint64_t sub_10014E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 12);
  qword_100240360 = ccaes_xts_encrypt_mode();
  v11 = ccaes_xts_decrypt_mode();
  qword_100240368 = v11;
  v12 = qword_100240360;
  if (v10)
  {
    v12 = v11;
  }

  v13 = *(v12 + 16);
  v14 = *(a1 + 12);
  qword_100240360 = ccaes_xts_encrypt_mode();
  v15 = ccaes_xts_decrypt_mode();
  qword_100240368 = v15;
  v18 = qword_100240360;
  if (v14)
  {
    v18 = v15;
  }

  v19 = (*(v18 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15, v16, v17);
  for (; a5; --a5)
  {
    v20 = *(a1 + 12);
    qword_100240360 = ccaes_xts_encrypt_mode();
    qword_100240368 = ccaes_xts_decrypt_mode();
    v21 = *(a1 + 48);
    ccxts_set_tweak();
    v22 = *(a1 + 12);
    qword_100240360 = ccaes_xts_encrypt_mode();
    qword_100240368 = ccaes_xts_decrypt_mode();
    v24 = *(a1 + 40);
    v23 = *(a1 + 48);
    ccxts_update();
    v25 = *(a1 + 40);
    a3 += v25;
    a4 += v25;
    ++a2;
  }

  return 0;
}

void sub_10014E3C4(void *a1)
{
  *a1 = 0;
  v1 = *(sub_10014D42C() + 8);
  v2 = *(sub_10014D42C() + 16);
  v3 = 8 * (*(sub_10014D42C() + 8) + ((v1 + v2 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_10014E488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10014E4BC(void *a1)
{
  *a1 = 0;
  v1 = *(sub_10014D42C() + 8);
  v2 = *(sub_10014D42C() + 16);
  v3 = 8 * (*(sub_10014D42C() + 8) + ((v1 + v2 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_10014E5BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014E5EC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_100036CC4();
  }

  v4 = &v3;
  return (off_100228498[v1])(&v4, a1);
}

uint64_t sub_10014E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*a3 + 8);
    do
    {
      v11 = *v10;
      v10 += 2;
      v9 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = atomic_fetch_add_explicit(&qword_100240BE0, 1uLL, memory_order_relaxed) + 1;
  if (atomic_load_explicit(&qword_100240BE8, memory_order_acquire) != -1)
  {
    v19[0] = &v17;
    v19[1] = &qword_100240BF0;
    v18 = v19;
    std::__call_once(&qword_100240BE8, &v18, sub_100151B6C);
  }

  if (v9 >> 17 >= qword_100240BF0 / v12)
  {
    v13 = qword_100240BF0 / v12;
  }

  else
  {
    v13 = v9 >> 17;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 0x20000 || qos_class_self() < QOS_CLASS_DEFAULT || v13 <= 1)
  {
    v15 = sub_10014E5EC(a1);
    result = sub_10014E790(v15, a2, a3, a4, *(a1 + 152));
  }

  else
  {
    result = sub_10014E8D0(a1, v14, a2, a3, a4, v9);
  }

  atomic_fetch_add_explicit(&qword_100240BE0, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

uint64_t sub_10014E790(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (!a3[2])
  {
    return 0;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = **a4;
  v13 = **a3;
  do
  {
    if (v11 == &(*a4)[2 * a4[2]])
    {
      break;
    }

    result = (*(*a1 + 16))(a1, a2, v13, v12, 1);
    if (result)
    {
      return result;
    }

    v13 += a5;
    if (v13 == *v10 + v10[1])
    {
      v10 += 2;
      if (v10 != &(*a3)[2 * a3[2]])
      {
        v13 = *v10;
      }
    }

    v12 += a5;
    if (v12 == *v11 + v11[1])
    {
      v11 += 2;
      if (v11 != &(*a4)[2 * a4[2]])
      {
        v12 = *v11;
      }
    }

    ++a2;
  }

  while (v10 != &(*a3)[2 * a3[2]]);
  return 0;
}

uint64_t sub_10014E8D0(uint64_t a1, size_t iterations, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = 0;
  v6 = *(a1 + 152);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10014E974;
  v8[3] = &unk_100228298;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = (a6 / iterations + v6 - 1) / v6 * v6;
  v8[7] = a6;
  v8[8] = a5;
  v8[9] = a3;
  v8[10] = &v9;
  dispatch_apply(iterations, 0, v8);
  return v9;
}

void sub_10014E974(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = a1[7];
  sub_10014EAF0(a1[5]);
}

void sub_10014EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014EC04(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= 0x21 && qos_class_self() > 0x14)
  {
    v12 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10014EE70;
    v11[3] = &unk_1002282B8;
    v11[4] = a1;
    v11[5] = a3;
    v11[6] = a2;
    v11[7] = a4;
    v11[8] = &v12;
    dispatch_apply((a3 + 31) >> 5, 0, v11);
    return atomic_load(&v12);
  }

  else
  {
    v8 = sub_10014E5EC(a1);
    v9 = *(a1 + 152);

    return sub_10014ED04(v8, a2, a3, a4, v9, 0);
  }
}

uint64_t sub_10014ED04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a3;
  while (1)
  {
    v12 = a6 ? a6 : a2;
    v13 = (*(*a1 + 16))(a1, a4 / a5, a2, v12, 1);
    if (v13)
    {
      break;
    }

    a4 += a5;
    a2 += a5;
    if (!--v9)
    {
      return 0;
    }
  }

  v15 = v13;
  *&v16 = "int crypto::crypt_op::crypt_chunk(crypto::context::aes &, char *, size_t, uint64_t, size_t, char *)";
  *(&v16 + 1) = 33;
  v17 = 16;
  sub_10014EF5C(v18, &v16);
  sub_1000026BC(v19, "Crypto operation on data of ", 28);
  std::ostream::operator<<();
  sub_1000026BC(v19, " failed with ", 13);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100151E3C(v18);
  std::ios::~ios();
  if (v15 < 0)
  {
    return v15;
  }

  else
  {
    return -v15;
  }
}

void sub_10014EE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10014F084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014EE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_100027480(v13, v4);
  v6 = *(v4 + 152);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = sub_10014E5EC(v13);
  if ((v5 - 32 * a2) >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v5 - 32 * a2;
  }

  v11 = sub_10014ED04(v9, v8 + v6 * 32 * a2, v10, v7 + v6 * 32 * a2, *(v4 + 152), 0);
  if (v11)
  {
    atomic_store(v11, *(a1 + 64));
  }

  return sub_10002752C(v13);
}

void *sub_10014EF5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153B84(a1, a2);
  *a1 = off_1002284C8;
  a1[45] = &off_1002285C8;
  a1[46] = &off_1002285F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002284C8;
  a1[45] = off_100228550;
  a1[46] = off_100228578;
  return a1;
}

void sub_10014F060(_Unwind_Exception *a1)
{
  sub_100151E3C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014F084(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100151E3C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10014F0C8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t), uint64_t a4, unsigned int **a5)
{
  v7 = a1[2];
  if (v7)
  {
    v8 = a4;
    v10 = *a1;
    v11 = (a2 + (a4 >> 1));
    v12 = a3;
    v13 = 112 * v7;
    while (1)
    {
      if (v8)
      {
        (*(*v11 + v12))(v36, v11, v10);
      }

      else
      {
        a3(v36, v11, v10);
      }

      v14 = &(*a5)[6 * a5[2]];
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v36[0]) == 1)
      {
        *v14 = v36[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v37;
      v37 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      v16 = a5[2] + 1;
      a5[2] = v16;
      v17 = &(*a5)[6 * v16];
      if ((*(v17 - 20) & 1) == 0 && !*(v17 - 8))
      {
        break;
      }

      v10 += 112;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    *&v34 = "ssize_t crypto::crypt_op::backend_futures_prepare_and_run(const fixed_size_vector_t<sg_entry> &, Backend &, Backend::future_t (Backend::*)(const sg_entry &), fixed_size_vector_t<Backend::future_t> &)";
    *(&v34 + 1) = 138;
    v35 = 16;
    sub_10014F370(v36, &v34);
    sub_1000026BC(v38, "diskimagesuio: future read invalid in read", 42);
    std::ostream::~ostream();
    sub_1001525D4(v36);
    std::ios::~ios();
    a5[2] = (a5[2] - 1);
    return -5;
  }

  else
  {
LABEL_13:
    (*(*a2 + 152))(a2);
    v18 = a1[2];
    v19 = a5[2];
    v20 = v18 == 0;
    v21 = v19 == 0;
    v22 = 0;
    if (v18)
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_18:
      if (v20 && v21)
      {
        return v22;
      }

      else
      {
        return -5;
      }
    }

    else
    {
      v25 = *a5;
      v26 = 24 * v19 - 24;
      v27 = 112 * v18 - 112;
      v28 = (*a1 + 16);
      while (1)
      {
        v29 = sub_10003C008(v25);
        v30 = v29;
        v31 = *v28;
        v28 += 14;
        if (v31 != v29)
        {
          break;
        }

        v22 += v29;
        v20 = v27 == 0;
        v21 = v26 == 0;
        if (v27)
        {
          v25 += 6;
          v32 = v26;
          v26 -= 24;
          v27 -= 112;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      if (v29 >= 0)
      {
        return -5;
      }

      return v30;
    }
  }
}

void sub_10014F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10014F498(va);
  _Unwind_Resume(a1);
}

void *sub_10014F370(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153C4C(a1, a2);
  *a1 = off_1002286E8;
  a1[45] = &off_1002287E8;
  a1[46] = &off_100228810;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002286E8;
  a1[45] = off_100228770;
  a1[46] = off_100228798;
  return a1;
}

void sub_10014F474(_Unwind_Exception *a1)
{
  sub_1001525D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014F498(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001525D4(a1);
  std::ios::~ios();
  return a1;
}

void sub_10014F4DC(uint64_t a1, uint64_t a2)
{
  v2 = (3 * *(a2 + 16)) >> 60 != 0;
  if ((48 * *(a2 + 16)) >= 0xFFFFFFFFFFFFFFF0)
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = 48 * *(a2 + 16) + 16;
  }

  operator new[]();
}

void sub_10014F68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10014F6E8(void *a1)
{
  sub_100028B28(a1 + 25);
  sub_100029758(a1 + 22);
  if (a1[21])
  {
    a1[21] = 0;
  }

  sub_10002980C(a1 + 16);
}

uint64_t sub_10014F738(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sub_10014F4DC(*(a1 + 64), a1 + 176);
  }

  v2 = sub_10014F0C8((a1 + 128), *(a1 + 72), sub_10014F964, 0, (a1 + 104));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_10014F4DC(*(a1 + 64), a1 + 176);
  }

  v3 = v2;
  *&v5 = "crypto::crypt_op::crypt_consecutive_vector::operator()()";
  *(&v5 + 1) = 54;
  v6 = 16;
  sub_10014F988(v7, &v5);
  sub_1000026BC(v8, "crypt_consecutive_vector: check errors_in read futures ", 55);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100152D6C(v7);
  std::ios::~ios();
  return v3;
}

void sub_10014F940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10014FC40(va);
  _Unwind_Resume(a1);
}