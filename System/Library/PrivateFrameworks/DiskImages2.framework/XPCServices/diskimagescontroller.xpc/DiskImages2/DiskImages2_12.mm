uint64_t sub_100115A00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100115C98(v1);

  return std::ios::~ios();
}

uint64_t sub_100115A4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100115C98(v1);

  return std::ios::~ios();
}

void sub_100115AAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100115C98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100115B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100115B50(_BYTE *a1, int a2)
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

void sub_100115BBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100115C98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100115C20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100115C98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100115C98(uint64_t a1)
{
  *a1 = off_1002231C0;
  sub_100115E04(a1);
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

uint64_t sub_100115E04(uint64_t a1)
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
        sub_100115FB4((a1 + 72), __p);
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

void sub_100115F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100115F7C(uint64_t a1)
{
  sub_100115C98(a1);

  operator delete();
}

int *sub_100115FB4(uint64_t *a1, uint64_t *a2)
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
    v21 = 3600;
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
      v21 = 3600;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

atomic_ullong *sub_100116198@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v20 = 0;
  v21 = a2;
  sub_100116414(a1, a2, a3, &v18);
  if (v18 && (*(v18 + 344) & 1) == 0 || v18 && (*(v18 + 344) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 736);
    if ((v8 & 1) == 0 || v19 == (a1 + 760))
    {
      *a4 = 0;
      return sub_1000E7978(&v18);
    }

    while ((v8 & 2) == 0)
    {
      sub_1001168E8(a1, a2, &v16);
      v20 = v16;
      sub_1000E9838(&v18, &v17);
      sub_1000E7978(&v17);
      if (v18 && (*(v18 + 344) & 1) == 0)
      {
        goto LABEL_23;
      }

      v9 = sub_100116AF0(a1);
      if (v9)
      {
        v20 = v9;
        sub_100116B98(a1, v9, a2, &v16);
        sub_1000E9838(&v18, &v16);
        sub_1000E7978(&v16);
LABEL_23:
        std::mutex::lock((a1 + 776));
        v13 = sub_100117F3C((a1 + 752), v19, &v21);
        if ((v14 & 1) == 0)
        {
          *(v13 + 40) = v20;
        }

        std::condition_variable::notify_all((a1 + 840));
        std::mutex::unlock((a1 + 776));
        v22[0] = 0;
        v23 = 0;
        sub_100116C84(a1, 0, v22);
        if (v23 == 1)
        {
          sub_1001181E4(v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 736);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a4 = 0;
    v11 = atomic_load((a1 + 104));
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v15 = *(a1 + 432);
      if (v15)
      {
        *(a1 + 440) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a4);
  return sub_1000E7978(&v18);
}

void sub_1001163A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100002A4C(exception_object);
}

void sub_100116414(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 776);
  v9 = (a1 + 760);
  v10 = a1 + 1008;
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
        sub_1000E7978(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_100116DF4(a1 + 752, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_1000E7978(&__lk);
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
      sub_100107738(&__lk, (v20 + 360));
      if (!__lk.__m_ || (__lk.__m_[5].__m_.__opaque[16] & 1) != 0)
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
          sub_1000E7978(&__lk);
          v36[0] = off_100223240;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_100116C84(a1, 0, v36);
          if (v37 == 1)
          {
            sub_1001181E4(v36);
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

              v31 = *(a1 + 432);
              v30 = v32;
              if (v31)
              {
                *(a1 + 440) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
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
            sub_1000E7978(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 592), 1uLL);
          __lk.__m_ = sub_100199F08(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 368) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100199F94(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
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
        sub_1000E7978(&v33);
      }

      sub_1000E7978(&__lk);
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
            v28 = *(v27 + 360);
            if (v28)
            {
              if ((*(v28 + 344) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 736) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 840), &v35);
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

  while ((*(a1 + 736) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_1000E7978(&v35);
}

void sub_100116850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

atomic_ullong *sub_1001168E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v10 = 0;
  std::mutex::lock((a1 + 520));
  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 504) & 0x1FFLL));
    ++*(a1 + 504);
    *(a1 + 512) = v6 - 1;
    sub_10006A604(a1 + 472, 1);
    sub_100116B98(a1, v7, a2, v11);
    sub_1000E9838(&v10, v11);
    sub_1000E7978(v11);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 520));
  v8 = atomic_load((a1 + 608));
  if (v8 + v6 >= *(a1 + 464))
  {
    v12[0] = 0;
    v13 = 0;
    sub_100116C84(a1, 0, v12);
    if (v13 == 1)
    {
      sub_1001181E4(v12);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100117064;
    v11[3] = &unk_1002232C0;
    v11[4] = a1;
    sub_100157E0C((a1 + 744), v11);
  }

  *a3 = v7;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v10, 0), a3 + 1);
  return sub_1000E7978(&v10);
}

void sub_100116A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_1001181E4(&a15);
  }

  sub_1000E7978(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_100116AF0(void *a1)
{
  v1 = atomic_load(a1 + 75);
  v2 = a1[57];
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
    v6 = a1[73];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 344) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 344);
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
  atomic_compare_exchange_strong((a1[73] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_100117844(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_100116B98@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_100117E04(a2, a3);
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

    v10 = a2[42];
    if (v10)
    {
      a2[43] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 456))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 584) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 456) <= ++v11)
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

  return sub_1000E7978(&v14);
}

uint64_t sub_100116C84(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 968))
  {
    return 0;
  }

  std::mutex::lock((a1 + 888));
  if (*(a1 + 968))
  {
    v6 = *(a1 + 960);
    if (v6 == (a1 + 952))
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
        if ((sub_1000E79A4(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_10011818C(a3, v9, v6[3])))
        {
          v10 = sub_100199F08(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 368), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 968);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_10011818C(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 952));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 888));
  return v8;
}

void *sub_100116DF4(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_100116F30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223240;
  a2[1] = v2;
  return result;
}

uint64_t sub_100116F70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_100116FBC(unint64_t *a1, unint64_t *a2, int a3)
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

    v8 = a2[41];
    if (v8)
    {
      a2[42] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_1001077DC(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_1000E79A4(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_100117064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100116AF0(v1);
  if (v2)
  {
    sub_10011711C(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_100116C84(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_1001181E4(v4);
  }

  return result;
}

void sub_1001170FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_1001181E4(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011711C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 520));
  sub_100117178((a1 + 472), &v3);
  std::mutex::unlock((a1 + 520));
}

void *sub_100117178(void *result, void *a2)
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
    result = sub_100117200(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100117200(void *a1)
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

void sub_100117388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001173D4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1001177FC(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001174DC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1001177FC(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1001175E8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1001177FC(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001176F0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1001177FC(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1001177FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_100117844(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 608), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 1uLL);
  }

  atomic_fetch_or((a2 + 368), 2u);
  sub_1000E7978((a2 + 360));
  if (a4)
  {
    sub_1000E7978(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 368));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 368))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 520));
          v10 = *(a1 + 512);
          std::mutex::unlock((a1 + 520));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_100116C84(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_1001181E4(v31);
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
          sub_100117B94(v18, &v27, &v26, &v24);
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
          v13 = atomic_load((a2 + 368));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 368))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 520));
                v15 = *(a1 + 512);
                std::mutex::unlock((a1 + 520));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 368));
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
        v20 = *(a2 + 368);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 512))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 368));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 368));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_1002232F0;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_100116C84(a1, 1, v29);
    if (v30 == 1)
    {
      sub_1001181E4(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 368), 0xFFFFFFFD) & 1;
}

void sub_100117B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_1001181E4(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100117B94(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 368));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 368))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 520));
      v10 = *(v8 + 512);
      std::mutex::unlock((v8 + 520));
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
  v15 = atomic_load((*a4 + 368));
  if (v15 & 4) != 0 || (*(*a4 + 368))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 520));
  v16 = *(v14 + 512) != 0;
  std::mutex::unlock((v14 + 520));
  return v16;
}

uint64_t sub_100117D78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002232F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100117DB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_100117E04(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 368));
  v3 = (a1 + 8);
  sub_100117ED4(a1 + 8, a2);
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

    v6 = *(a1 + 336);
    v5 = v3;
    if (v6)
    {
      *(a1 + 344) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_1000E9838((a1 + 360), &v9);
  result = sub_1000E7978(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_1000E79A4(v3, v8, 1u);
  }

  return result;
}

uint64_t sub_100117ED4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 344) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = sub_100107A58(a1 + 40);
  v4 = *(a1 + 328);
  if (v4)
  {
    *(a1 + 336) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

uint64_t sub_100117F3C(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_100117FE4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_100117FE4(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t sub_10011818C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001181E4(uint64_t a1)
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

uint64_t sub_100118264(uint64_t a1)
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

uint64_t sub_1001182E4(uint64_t result)
{
  if (*(result + 360) == 1)
  {
    v1 = result;
    std::mutex::~mutex((result + 280));
    sub_100069604((v1 + 232));
    std::mutex::~mutex((v1 + 168));
    std::mutex::~mutex((v1 + 104));
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    sub_1000E7874((v1 + 16), 0);
    result = sub_1000E78F8(v1 + 24);
    *(v1 + 360) = 0;
  }

  return result;
}

uint64_t *sub_10011835C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  result = sub_1001183B0(a1, a2);
  result[5] = *result;
  result[6] = v4;
  if (v4 && a3)
  {
    v6 = 0;
    do
    {
      v7 = (*result + v6);
      *v7 = 0;
      v7[1] = 0;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *sub_1001183B0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(16 * a2, 0x1000040451B5BE8uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  v7[0] = off_100223370;
  v7[3] = v7;
  v8 = v3;
  sub_1001185F4(v9, v7);
  sub_1001184D4(a1, &v8);
  sub_1000E7874(&v8, 0);
  sub_1000E78F8(v9);
  sub_1000E78F8(v7);
  return a1;
}

void sub_1001184B4(_Unwind_Exception *a1)
{
  sub_1000E7874(v1, 0);
  sub_1000E78F8((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *sub_1001184D4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_1000E7874(a1, v4);
  sub_100118674((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_1001185A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001185F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100118674(uint64_t a1, uint64_t a2)
{
  sub_1001186F8(a1);
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

uint64_t sub_1001186F8(uint64_t a1)
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

void *sub_10011877C(void *a1)
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
    sub_100039298(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100118950(a1, &v10);
}

void sub_100118904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100118950(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100039298(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100118A58(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100039298(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100118B64(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100039298(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100118C6C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100039298(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_100118D78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 336) = **(a1 + 328);
  sub_100107A58(a1 + 40);
  sub_1000F30D8(a1 + 40, a2, a3, *a4, *a5, 0);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_100118E2C(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_100118E6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, char *a6)
{
  *(a1 + 336) = **(a1 + 328);
  sub_100107A58(a1 + 40);
  sub_1000F30D8(a1 + 40, a2, a3, *a4, *a5, *a6);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_100118F24(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_100118F64(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D8A0;
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

void sub_100119014(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011902C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DAC0;
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

void sub_1001190DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001190F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DCE0;
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

void sub_1001191A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001191BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DF00;
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

void sub_10011926C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100119284(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E120;
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

void sub_100119334(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011934C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1001193A0(uint64_t a1)
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

uint64_t sub_100119420(uint64_t a1)
{
  *(a1 + 912) &= ~1u;
  if (*(a1 + 632))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 760) + 8 * v3), 0);
      if (v4)
      {
        sub_100119640(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_1000E6B5C((v4 + 536));
        sub_100119E84(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 632) > v3);
  }

  sub_100157EC4((a1 + 920), &stru_100223410);
  if (*(a1 + 760))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 696));
  v5 = *(a1 + 656);
  if (*(a1 + 664) != v5)
  {
    v6 = *(a1 + 680);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 688) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 688) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_1000E6B5C((v9 + 536));
        sub_100119E84(v9 + 8);
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

  std::mutex::unlock((a1 + 696));
  sub_10011A084(a1 + 1768);
  sub_10011A104(a1 + 1736);
  sub_1000E6B5C((a1 + 1720));
  sub_100119E84(a1 + 1192);
  sub_10011E0EC(a1 + 1152);
  sub_10011A184((a1 + 1128));
  std::mutex::~mutex((a1 + 1064));
  std::condition_variable::~condition_variable((a1 + 1016));
  std::mutex::~mutex((a1 + 952));
  sub_1000085B4(a1 + 928, *(a1 + 936));
  sub_100157D44((a1 + 920));
  std::condition_variable::~condition_variable((a1 + 864));
  std::mutex::~mutex((a1 + 800));
  std::mutex::~mutex((a1 + 696));
  sub_100069604((a1 + 648));

  return sub_10011A1E8(a1);
}

uint64_t sub_100119640(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 784), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 1uLL);
  }

  atomic_fetch_or((a2 + 544), 2u);
  sub_1000E6B5C((a2 + 536));
  if (a4)
  {
    sub_1000E6B5C(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 544));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 544))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 696));
          v10 = *(a1 + 688);
          std::mutex::unlock((a1 + 696));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_100119994(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_100119CD0(v31);
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
          sub_100119B04(v18, &v27, &v26, &v24);
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
          v13 = atomic_load((a2 + 544));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 544))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 696));
                v15 = *(a1 + 688);
                std::mutex::unlock((a1 + 696));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 544));
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
        v20 = *(a2 + 544);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 688))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 544));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 544));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_100223440;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_100119994(a1, 1, v29);
    if (v30 == 1)
    {
      sub_100119CD0(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 544), 0xFFFFFFFD) & 1;
}

void sub_100119914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_100119CD0(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100119994(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 1144))
  {
    return 0;
  }

  std::mutex::lock((a1 + 1064));
  if (*(a1 + 1144))
  {
    v6 = *(a1 + 1136);
    if (v6 == (a1 + 1128))
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
        if ((sub_1000E6B88(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_100119C78(a3, v9, v6[3])))
        {
          v10 = sub_100199F08(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 544), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 1144);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_100119C78(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 1128));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 1064));
  return v8;
}

uint64_t sub_100119B04(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 544));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 544))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 696));
      v10 = *(v8 + 688);
      std::mutex::unlock((v8 + 696));
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
  v15 = atomic_load((*a4 + 544));
  if (v15 & 4) != 0 || (*(*a4 + 544))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 696));
  v16 = *(v14 + 688) != 0;
  std::mutex::unlock((v14 + 696));
  return v16;
}

uint64_t sub_100119C78(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100119CD0(uint64_t a1)
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

uint64_t sub_100119DC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223440;
  a2[1] = v2;
  return result;
}

uint64_t sub_100119E00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100119E4C(uint64_t a1)
{
  sub_1000E6B5C((a1 + 536));
  sub_100119E84(a1 + 8);
  return a1;
}

uint64_t sub_100119E84(uint64_t a1)
{
  sub_10011E0EC(a1 + 472);
  sub_100119F10(a1 + 440);
  sub_100119F90(a1 + 408);
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    sub_100069604((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    sub_1000E7874((a1 + 56), 0);
    sub_1000E78F8(a1 + 64);
  }

  return a1;
}

uint64_t sub_100119F10(uint64_t a1)
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

uint64_t sub_100119F90(uint64_t a1)
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

uint64_t sub_10011A010(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    std::mutex::~mutex((a1 + 280));
    sub_100069604((a1 + 232));
    std::mutex::~mutex((a1 + 168));
    std::mutex::~mutex((a1 + 104));
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    sub_1000E7874((a1 + 16), 0);
    sub_1000E78F8(a1 + 24);
  }

  return a1;
}

uint64_t sub_10011A084(uint64_t a1)
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

uint64_t sub_10011A104(uint64_t a1)
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

void *sub_10011A184(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_10011A1E8(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_1000E6B88(a1 + 104, v3, 1u);
  }

  sub_100119E84(v2);
  sub_10011E0EC(a1 + 64);
  sub_100119F10(a1 + 32);

  return sub_100119F90(a1);
}

uint64_t sub_10011A260(uint64_t a1)
{
  *(a1 + 736) &= ~1u;
  if (*(a1 + 456))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 584) + 8 * v3), 0);
      if (v4)
      {
        sub_100117844(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_1000E7978((v4 + 360));
        sub_10011A4B4(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 456) > v3);
  }

  sub_100157EC4((a1 + 744), &stru_1002234E0);
  if (*(a1 + 584))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 520));
  v5 = *(a1 + 480);
  if (*(a1 + 488) != v5)
  {
    v6 = *(a1 + 504);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 512) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 512) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_1000E7978((v9 + 360));
        sub_10011A4B4(v9 + 8);
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

  std::mutex::unlock((a1 + 520));
  sub_10011A6A4(a1 + 1416);
  sub_10011A724(a1 + 1384);
  sub_1000E7978((a1 + 1368));
  sub_10011A4B4(a1 + 1016);
  sub_1001193A0(a1 + 976);
  sub_10011A184((a1 + 952));
  std::mutex::~mutex((a1 + 888));
  std::condition_variable::~condition_variable((a1 + 840));
  std::mutex::~mutex((a1 + 776));
  sub_1000085B4(a1 + 752, *(a1 + 760));
  sub_100157D44((a1 + 744));
  std::condition_variable::~condition_variable((a1 + 688));
  std::mutex::~mutex((a1 + 624));
  std::mutex::~mutex((a1 + 520));
  sub_100069604((a1 + 472));

  return sub_10011A7A4(a1);
}

uint64_t sub_10011A47C(uint64_t a1)
{
  sub_1000E7978((a1 + 360));
  sub_10011A4B4(a1 + 8);
  return a1;
}

uint64_t sub_10011A4B4(uint64_t a1)
{
  sub_1001193A0(a1 + 296);
  sub_10011A538(a1 + 264);
  sub_10011A5B8(a1 + 232);
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = off_100210120;
    sub_100087F1C((a1 + 96), 0);
    sub_1000880A8(a1 + 104);
  }

  return a1;
}

uint64_t sub_10011A538(uint64_t a1)
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

uint64_t sub_10011A5B8(uint64_t a1)
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

uint64_t sub_10011A638(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::mutex::~mutex((a1 + 120));
    *(a1 + 32) = off_100210120;
    sub_100087F1C((a1 + 56), 0);
    sub_1000880A8(a1 + 64);
  }

  return a1;
}

uint64_t sub_10011A6A4(uint64_t a1)
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

uint64_t sub_10011A724(uint64_t a1)
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

uint64_t sub_10011A7A4(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_1000E79A4(a1 + 104, v3, 1u);
  }

  sub_10011A4B4(v2);
  sub_1001193A0(a1 + 64);
  sub_10011A538(a1 + 32);

  return sub_10011A5B8(a1);
}

uint64_t sub_10011A81C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E3C0;
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

void sub_10011A8CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011A8E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E5E0;
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

void sub_10011A994(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_10011AA28(uint64_t a1, uint64_t a2)
{
  *a2 = off_100223510;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10011AA6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011AAB8(uint64_t a1)
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

uint64_t *sub_10011AB38(uint64_t a1, char *a2, uint64_t a3, char **a4, char *a5, void *a6, char *a7, unint64_t a8)
{
  v8 = a8;
  v14 = *(a1 + 32);
  v15 = v14 >> 9;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = (v16 + 8 * (v14 >> 9));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 3) + ((a2 - v18) << 6) - ((v19 - *v18) >> 3);
  }

  v21 = *(a1 + 40);
  if (v20 < v21 - v20)
  {
    if (a8 > v14)
    {
      sub_10011B0B0(a1, a8 - v14);
      v14 = *(a1 + 32);
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
      v15 = v14 >> 9;
    }

    v22 = (v16 + 8 * v15);
    if (v17 == v16)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22 + 8 * (v14 & 0x1FF);
    }

    v87.n128_u64[0] = v16 + 8 * v15;
    v87.n128_u64[1] = v23;
    if (v8 <= v20)
    {
      goto LABEL_51;
    }

    if (v20 >= v8 >> 1)
    {
      v29 = v8 - v20 + ((a5 - *a4) >> 3);
      if (v29 >= 1)
      {
        a4 += v29 >> 9;
        goto LABEL_32;
      }

      v34 = 511 - v29;
      v35 = ~v34;
      a4 -= v34 >> 9;
    }

    else
    {
      if (!v20)
      {
        a4 = a6;
        v32 = a7;
        goto LABEL_42;
      }

      v29 = (&a7[-*a6] >> 3) - v20;
      if (v29 >= 1)
      {
        a4 = &a6[v29 >> 9];
LABEL_32:
        v32 = &(*a4)[8 * (v29 & 0x1FF)];
LABEL_42:
        if (v32 != a5)
        {
          v39 = *(a1 + 40);
          v40 = *v22;
          v41 = a4;
          v42 = v32;
          do
          {
            if (v23 == v40)
            {
              v43 = *--v22;
              v40 = v43;
              v23 = v43 + 4096;
            }

            if (v42 == *v41)
            {
              v44 = *--v41;
              v42 = (v44 + 4096);
            }

            v45 = *(v42 - 1);
            v42 -= 8;
            *(v23 - 8) = v45;
            v23 -= 8;
            --v14;
            ++v39;
          }

          while (v42 != a5);
          *(a1 + 32) = v14;
          *(a1 + 40) = v39;
        }

        a5 = v32;
        v8 = v20;
LABEL_51:
        if (v8)
        {
          v85 = a6;
          v46 = sub_10011B3DC(&v87, v8);
          v48 = v46;
          v49 = v47;
          v50 = v87.n128_u64[1];
          if (v87.n128_u64[1] != v47)
          {
            v51 = *(a1 + 32);
            v52 = *v22;
            v53 = v46;
            v54 = v47;
            do
            {
              if (v23 == v52)
              {
                v55 = *--v22;
                v52 = v55;
                v23 = v55 + 4096;
              }

              if (v54 == *v53)
              {
                v56 = *--v53;
                v54 = (v56 + 4096);
              }

              v57 = *(v54 - 1);
              v54 -= 8;
              *(v23 - 8) = v57;
              v23 -= 8;
              v51 = vaddq_s64(v51, xmmword_1001CD040);
            }

            while (v54 != v50);
            *(a1 + 32) = v51;
          }

          if (v8 >= v20)
          {
            v60 = v87.n128_u64[0];
          }

          else
          {
            v58 = sub_10011B3DC(&v87, v20);
            v88 = v87;
            sub_10011B7C0(v48, v49, v58, v59, &v88);
            v50 = v88.n128_u64[1];
            v60 = v88.n128_u64[0];
            v87 = v88;
          }

          v88.n128_u64[0] = v60;
          v88.n128_u64[1] = v50;
          sub_10011B7C0(a4, a5, v85, a7, &v88);
        }

        goto LABEL_88;
      }

      v38 = 511 - v29;
      v35 = ~v38;
      a4 = &a6[-(v38 >> 9)];
    }

    v32 = &(*a4)[8 * (v35 & 0x1FF)];
    goto LABEL_42;
  }

  v24 = ((v17 - v16) << 6) - 1;
  if (v17 == v16)
  {
    v24 = 0;
  }

  v25 = v14 + v21;
  v26 = v24 - v25;
  if (a8 > v26)
  {
    sub_10011B440(a1, a8 - v26);
    v21 = *(a1 + 40);
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v25 = *(a1 + 32) + v21;
  }

  v84 = a4;
  v27 = (v16 + 8 * (v25 >> 9));
  if (v17 == v16)
  {
    v28 = 0;
  }

  else
  {
    v28 = &(*v27)[8 * (v25 & 0x1FF)];
  }

  v87.n128_u64[0] = v16 + 8 * (v25 >> 9);
  v87.n128_u64[1] = v28;
  v30 = v21 - v20;
  if (v21 - v20 < v8)
  {
    if (v30 >= v8 >> 1)
    {
      v31 = v21 - v20 - v8 + (&a7[-*a6] >> 3);
      if (v31 >= 1)
      {
        a6 += v31 >> 9;
        goto LABEL_35;
      }

      v36 = 511 - v31;
      v37 = ~v36;
      a6 -= v36 >> 9;
    }

    else
    {
      if (!v30)
      {
        a6 = v84;
        v33 = a5;
        goto LABEL_66;
      }

      v31 = v30 + ((a5 - *v84) >> 3);
      if (v31 >= 1)
      {
        a6 = &v84[v31 >> 9];
LABEL_35:
        v33 = *a6 + 8 * (v31 & 0x1FF);
LABEL_66:
        if (v33 != a7)
        {
          v62 = *v27;
          v63 = a6;
          v64 = v33;
          do
          {
            *v28 = *v64;
            v28 += 8;
            if (v28 - v62 == 4096)
            {
              v65 = v27[1];
              ++v27;
              v62 = v65;
              v28 = v65;
            }

            v64 += 8;
            if (&v64[-*v63] == 4096)
            {
              v66 = v63[1];
              ++v63;
              v64 = v66;
            }

            ++v21;
          }

          while (v64 != a7);
          *(a1 + 40) = v21;
        }

        a7 = v33;
        v8 = v30;
        goto LABEL_75;
      }

      v61 = 511 - v31;
      v37 = ~v61;
      a6 = &v84[-(v61 >> 9)];
    }

    v33 = *a6 + 8 * (v37 & 0x1FF);
    goto LABEL_66;
  }

LABEL_75:
  if (v8)
  {
    v86 = a6;
    v67 = sub_10011B758(&v87, v8);
    v69 = v67;
    v70 = v68;
    v71 = v87.n128_u64[1];
    if (v87.n128_u64[1] != v68)
    {
      v72 = *(a1 + 40);
      v73 = *v27;
      v74 = v67;
      v75 = v68;
      do
      {
        *v28 = *v75;
        v28 += 8;
        if (v28 - v73 == 4096)
        {
          v76 = v27[1];
          ++v27;
          v73 = v76;
          v28 = v76;
        }

        v75 += 8;
        if (&v75[-*v74] == 4096)
        {
          v77 = v74[1];
          ++v74;
          v75 = v77;
        }

        ++v72;
      }

      while (v75 != v71);
      *(a1 + 40) = v72;
    }

    if (v8 >= v30)
    {
      v80 = v87.n128_u64[0];
    }

    else
    {
      v78 = sub_10011B758(&v87, v30);
      sub_10011B950(v78, v79, v69, v70, v87.n128_u64[0], v87.n128_u64[1], &v88);
      v71 = v89.n128_u64[1];
      v80 = v89.n128_u64[0];
      v87 = v89;
    }

    sub_10011B950(v84, a5, v86, a7, v80, v71, &v88);
  }

LABEL_88:
  v81 = *(a1 + 8);
  if (*(a1 + 16) == v81)
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v81 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v88.n128_u64[0] = v81 + 8 * (*(a1 + 32) >> 9);
  v88.n128_u64[1] = v82;
  return sub_10011B3DC(&v88, v20);
}

const void **sub_10011B0B0(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_100118A58(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        sub_100039298(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_100118A58(v2, v17);
    }
  }

  return result;
}

void sub_10011B368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10011B3DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void *sub_10011B440(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_100118950(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_100039298(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100118950(v2, v16);
    }
  }

  return result;
}

void sub_10011B6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10011B758(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 3) - a2;
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

double sub_10011B7C0(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_10011B884(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10011B884(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_10011B884(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_10011B884@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

__n128 sub_10011B950@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10011BA20(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  sub_10011BA20(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10011BA20@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void sub_10011BADC(uint64_t a1, unint64_t **a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a3 != a5)
  {
    v12 = *a2;
    v13 = a3;
    v14 = a3;
    v15 = a2;
    while (1)
    {
      if (++v14 - v12 == 4096)
      {
        v16 = v15[1];
        ++v15;
        v12 = v16;
        v14 = v16;
      }

      if (v14 == a5)
      {
        break;
      }

      if (*v13 < *v14)
      {
        v13 = v14;
      }
    }

    std::mutex::lock((a1 + 8));
    sub_10011BBFC(a1 + 72, a2, a3, a4, a5);
    if (*v13 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + *v13;
    }

    sub_1000F78CC(a1, a6);

    std::mutex::unlock((a1 + 8));
  }
}

uint64_t sub_10011BBFC(uint64_t result, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    v8 = result;
    do
    {
      result = sub_10011BC70(v8, v8 + 1, v6++);
      if ((v6 - *a2) == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t sub_10011BC70(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_100117FE4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_10011BD08(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021EA20;
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

void sub_10011BDB8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011BDD0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021EC40;
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

void sub_10011BE80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011BE98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021EE60;
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

void sub_10011BF48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011BF60(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F080;
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

void sub_10011C010(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C028(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F2A0;
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

void sub_10011C0D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C0F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F4C0;
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

void sub_10011C1A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C1B8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F6E0;
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

void sub_10011C268(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C280(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FB20;
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

void sub_10011C330(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011C348(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FD40;
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

void sub_10011C3F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10011C410(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 952);
  v9 = (a1 + 936);
  v10 = a1 + 1184;
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
        sub_1000E6B5C(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_100116DF4(a1 + 928, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_1000E6B5C(&__lk);
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
      sub_10011CC84(&__lk, (v20 + 536));
      if (!__lk.__m_ || (__lk.__m_[8].__m_.__opaque[0] & 1) != 0)
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
          sub_1000E6B5C(&__lk);
          v36[0] = off_1002235A0;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_100119994(a1, 0, v36);
          if (v37 == 1)
          {
            sub_100119CD0(v36);
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

              v31 = *(a1 + 608);
              v30 = v32;
              if (v31)
              {
                *(a1 + 616) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
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
            sub_1000E6B5C(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 768), 1uLL);
          __lk.__m_ = sub_100199F08(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 544) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100199F94(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
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
        sub_1000E6B5C(&v33);
      }

      sub_1000E6B5C(&__lk);
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
            v28 = *(v27 + 536);
            if (v28)
            {
              if ((*(v28 + 520) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 912) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 1016), &v35);
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

  while ((*(a1 + 912) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_1000E6B5C(&v35);
}

void sub_10011C84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

atomic_ullong *sub_10011C8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v11 = 0;
  std::mutex::lock((a1 + 696));
  v6 = *(a1 + 688);
  if (v6)
  {
    v7 = *(a1 + 680);
    v8 = *(*(*(a1 + 656) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
    *(a1 + 688) = v6 - 1;
    *(a1 + 680) = v7 + 1;
    sub_10006A604(a1 + 648, 1);
    sub_10011CB98(a1, v8, a2, v12);
    sub_1000F385C(&v11, v12);
    sub_1000E6B5C(v12);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 696));
  v9 = atomic_load((a1 + 784));
  if (v9 + v6 >= *(a1 + 640))
  {
    v13[0] = 0;
    v14 = 0;
    sub_100119994(a1, 0, v13);
    if (v14 == 1)
    {
      sub_100119CD0(v13);
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10011CFA8;
    v12[3] = &unk_100223610;
    v12[4] = a1;
    sub_100157E0C((a1 + 920), v12);
  }

  *a3 = v8;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v11, 0), a3 + 1);
  return sub_1000E6B5C(&v11);
}

void sub_10011CA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_100119CD0(&a15);
  }

  sub_1000E6B5C(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_10011CAF0(void *a1)
{
  v1 = atomic_load(a1 + 97);
  v2 = a1[79];
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
    v6 = a1[95];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 520) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 520);
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
  atomic_compare_exchange_strong((a1[95] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_100119640(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_10011CB98@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_10011D318(a2, a3);
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

    v10 = a2[64];
    if (v10)
    {
      a2[65] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 632))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 760) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 632) <= ++v11)
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

  return sub_1000E6B5C(&v14);
}

unint64_t *sub_10011CC84(unint64_t *a1, unint64_t *a2)
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

    v6 = v3[63];
    if (v6)
    {
      v3[64] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!sub_10011CD28(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        sub_1000E6B88(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL sub_10011CD28(uint64_t a1)
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
    if (v6 != 2 && (*(a1 + 520) & 1) == 0)
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

uint64_t sub_10011CE74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002235A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011CEB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_10011CF00(unint64_t *a1, unint64_t *a2, int a3)
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

    v8 = a2[63];
    if (v8)
    {
      a2[64] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_10011CD28(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_1000E6B88(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_10011CFA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10011CAF0(v1);
  if (v2)
  {
    sub_10011D060(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_100119994(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_100119CD0(v4);
  }

  return result;
}

void sub_10011D040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100119CD0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011D060(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 696));
  sub_10011D0BC((a1 + 648), &v3);
  std::mutex::unlock((a1 + 696));
}

void *sub_10011D0BC(void *result, void *a2)
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
    result = sub_10011D144(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10011D144(void *a1)
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

void sub_10011D2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *sub_10011D318(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 544));
  v3 = (a1 + 8);
  sub_10011D3E8(a1 + 8, a2);
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

    v6 = *(a1 + 512);
    v5 = v3;
    if (v6)
    {
      *(a1 + 520) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_1000F385C((a1 + 536), &v9);
  result = sub_1000E6B5C(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_1000E6B88(v3, v8, 1u);
  }

  return result;
}

uint64_t sub_10011D3E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 520) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = sub_1001182E4(a1 + 40);
  v4 = *(a1 + 504);
  if (v4)
  {
    *(a1 + 512) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

void sub_10011D450(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  *(a1 + 512) = **(a1 + 504);
  sub_1001182E4(a1 + 40);
  sub_10011D548(a1 + 40, a2, a3, a4, a5, a6);
}

void sub_10011D508(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_10011D548(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000E839C(a1, a2, v7, *a4, *a5, *a6);
}

void sub_10011D5B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011D5C8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 512) = **(a1 + 504);
  sub_1001182E4(a1 + 40);
  sub_10011D6B8(a1 + 40, a2, a3, a4, a5);
}

void sub_10011D678(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_10011D6B8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000E839C(a1, a2, v6, *a4, *a5, 0);
}

void sub_10011D720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011D738(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FF60;
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

void sub_10011D7E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D800(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220180;
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

void sub_10011D8B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D8C8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10011D91C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002203A0;
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

void sub_10011D9CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D9E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002205C0;
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

void sub_10011DA94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DAAC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002207E0;
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

void sub_10011DB5C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DB74(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220A00;
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

void sub_10011DC24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DC3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220C20;
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

void sub_10011DCEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DD04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220E40;
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

void sub_10011DDB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DDCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221060;
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

void sub_10011DE7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DE94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221280;
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

void sub_10011DF44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DF5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002214A0;
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

void sub_10011E00C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E024(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002216C0;
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

void sub_10011E0D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E0EC(uint64_t a1)
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

void sub_10011E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10011E524(a1);
  *(v8 + 632) = a2;
  *(v8 + 640) = a3;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 696) = 850045863;
  *(v8 + 704) = 0u;
  *(v8 + 720) = 0u;
  *(v8 + 736) = 0u;
  *(v8 + 752) = 0;
  *(v8 + 768) = 0u;
  *(v8 + 784) = 0u;
  *(v8 + 800) = 850045863;
  *(v8 + 808) = 0u;
  *(v8 + 824) = 0u;
  *(v8 + 840) = 0u;
  *(v8 + 856) = 0;
  *(v8 + 864) = 1018212795;
  *(v8 + 904) = 0;
  *(v8 + 872) = 0u;
  *(v8 + 888) = 0u;
  *(v8 + 912) = 1;
  sub_100157DF8(v8 + 920, "dealloc_queue");
  *(a1 + 936) = 0u;
  *(a1 + 928) = a1 + 936;
  *(a1 + 952) = 850045863;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 1018212795;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 850045863;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = a1 + 1128;
  *(a1 + 1136) = a1 + 1128;
  *(a1 + 1144) = 0;
  sub_10011EA84(a1 + 1152, a4);
  sub_10011EB1C(a1 + 1184, a1);
  *(a1 + 1736) = off_1002238F0;
  *(a1 + 1744) = a1;
  *(a1 + 1760) = a1 + 1736;
  *(a1 + 1768) = off_100223980;
  *(a1 + 1776) = a1;
  *(a1 + 1792) = a1 + 1768;
  operator new[]();
}

void sub_10011E3A0(_Unwind_Exception *a1)
{
  sub_10011E0EC(v1 + 1152);
  sub_10011A184(v3);
  std::mutex::~mutex((v1 + 1064));
  std::condition_variable::~condition_variable((v1 + 1016));
  std::mutex::~mutex((v1 + 952));
  sub_1000085B4(v1 + 928, *v4);
  sub_100157D44((v1 + 920));
  std::condition_variable::~condition_variable((v1 + 864));
  std::mutex::~mutex((v1 + 800));
  std::mutex::~mutex((v1 + 696));
  sub_100069604(v2);
  sub_10011A1E8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E464(uint64_t a1, void *a2)
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
    sub_10011D144(a1);
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

uint64_t sub_10011E524(uint64_t a1)
{
  *a1 = off_100223640;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_1002236D0;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100223760;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_10011E898(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_10011D3E8(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 624) = 1;
  return a1;
}

void sub_10011E5E8(_Unwind_Exception *a1)
{
  sub_10011E0EC(v3);
  sub_100119F10(v2);
  sub_100119F90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011E770(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011E84C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011E898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 400) = 0;
  sub_10011E954(a1 + 408, a2);
  sub_10011E9EC(a1 + 440, a3);
  sub_10011EA84(a1 + 472, a4);
  *(a1 + 504) = a5;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  return a1;
}

void sub_10011E920(_Unwind_Exception *a1)
{
  sub_100119F10(v1 + 440);
  sub_100119F90(v1 + 408);
  sub_10011A010(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10011E954(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011E9EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011EA84(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011EB1C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_1002237F0;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100223870;
  v4[1] = a1;
  v4[3] = v4;
  sub_10011E898(a1 + 8, v5, v4, a2 + 1152, a2 + 776);
  sub_100119F10(v4);
  sub_100119F90(v5);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  return a1;
}

void sub_10011EBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100119F10(va);
  sub_100119F90(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011EC80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002237F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011ECC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011ED10(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t sub_10011EDE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223870;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011EE1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011EE68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10011EF2C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002238F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011EF6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011EFB8(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 544) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 1064));
      operator new();
    }

    sub_10011F168(a1, a3);
    sub_1000E6B5C((a2 + 536));
    if ((atomic_fetch_or((a2 + 544), 1u) & 2) == 0)
    {
      sub_10011D060(a1, a2);
    }

    if (atomic_fetch_add((a1 + 784), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 792)))
      {
        std::mutex::lock((a1 + 800));
        if (atomic_load((a1 + 792)))
        {
          std::condition_variable::notify_all((a1 + 864));
        }

        std::mutex::unlock((a1 + 800));
      }
    }

    v8 = (a1 + 768);
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

void sub_10011F168(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 952));
  sub_1000460A8((a1 + 928), &v3);
  std::condition_variable::notify_all((a1 + 1016));
  std::mutex::unlock((a1 + 952));
}

uint64_t sub_10011F23C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223980;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011F274(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011F2C0(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 632);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 760);
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
        sub_100119640(a1, a2, 1uLL, a3);

        sub_10011D060(a1, a2);
      }
    }
  }
}

void sub_10011F36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10011F718(a1);
  *(v8 + 456) = a2;
  *(v8 + 464) = a3;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 0u;
  *(v8 + 504) = 0u;
  *(v8 + 520) = 850045863;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0u;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0;
  *(v8 + 592) = 0u;
  *(v8 + 608) = 0u;
  *(v8 + 624) = 850045863;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0;
  *(v8 + 688) = 1018212795;
  *(v8 + 728) = 0;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0u;
  *(v8 + 736) = 1;
  sub_100157DF8(v8 + 744, "dealloc_queue");
  *(a1 + 760) = 0u;
  *(a1 + 752) = a1 + 760;
  *(a1 + 776) = 850045863;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *(a1 + 840) = 1018212795;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 888) = 850045863;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 952) = a1 + 952;
  *(a1 + 960) = a1 + 952;
  *(a1 + 968) = 0;
  sub_10011FC78(a1 + 976, a4);
  sub_10011FD10(a1 + 1008, a1);
  *(a1 + 1384) = off_100223CC0;
  *(a1 + 1392) = a1;
  *(a1 + 1408) = a1 + 1384;
  *(a1 + 1416) = off_100223D50;
  *(a1 + 1424) = a1;
  *(a1 + 1440) = a1 + 1416;
  operator new[]();
}

void sub_10011F594(_Unwind_Exception *a1)
{
  sub_1001193A0(v1 + 976);
  sub_10011A184(v3);
  std::mutex::~mutex((v1 + 888));
  std::condition_variable::~condition_variable((v1 + 840));
  std::mutex::~mutex((v1 + 776));
  sub_1000085B4(v1 + 752, *v4);
  sub_100157D44((v1 + 744));
  std::condition_variable::~condition_variable((v1 + 688));
  std::mutex::~mutex((v1 + 624));
  std::mutex::~mutex((v1 + 520));
  sub_100069604(v2);
  sub_10011A7A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F658(uint64_t a1, void *a2)
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
    sub_100117200(a1);
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

uint64_t sub_10011F718(uint64_t a1)
{
  *a1 = off_100223A10;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_100223AA0;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100223B30;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_10011FA8C(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_100117ED4(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 448) = 1;
  return a1;
}

void sub_10011F7DC(_Unwind_Exception *a1)
{
  sub_1001193A0(v3);
  sub_10011A538(v2);
  sub_10011A5B8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F88C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011F964(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011FA40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  sub_10011FB48(a1 + 232, a2);
  sub_10011FBE0(a1 + 264, a3);
  sub_10011FC78(a1 + 296, a4);
  *(a1 + 328) = a5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  return a1;
}

void sub_10011FB14(_Unwind_Exception *a1)
{
  sub_10011A538(v1 + 264);
  sub_10011A5B8(v1 + 232);
  sub_10011A638(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10011FB48(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011FBE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011FC78(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011FD10(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_100223BC0;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100223C40;
  v4[1] = a1;
  v4[3] = v4;
  sub_10011FA8C(a1 + 8, v5, v4, a2 + 976, a2 + 600);
  sub_10011A538(v4);
  sub_10011A5B8(v5);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return a1;
}

void sub_10011FDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10011A538(va);
  sub_10011A5B8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011FE74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223BC0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011FEB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011FF04(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

uint64_t sub_10011FFD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223C40;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012005C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100120120(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223CC0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001201AC(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 368) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 888));
      operator new();
    }

    sub_10012035C(a1, a3);
    sub_1000E7978((a2 + 360));
    if ((atomic_fetch_or((a2 + 368), 1u) & 2) == 0)
    {
      sub_10011711C(a1, a2);
    }

    if (atomic_fetch_add((a1 + 608), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 616)))
      {
        std::mutex::lock((a1 + 624));
        if (atomic_load((a1 + 616)))
        {
          std::condition_variable::notify_all((a1 + 688));
        }

        std::mutex::unlock((a1 + 624));
      }
    }

    v8 = (a1 + 592);
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

void sub_10012035C(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 776));
  sub_1000460A8((a1 + 752), &v3);
  std::condition_variable::notify_all((a1 + 840));
  std::mutex::unlock((a1 + 776));
}

uint64_t sub_100120430(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223D50;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001204B4(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 456);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 584);
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
        sub_100117844(a1, a2, 1uLL, a3);

        sub_10011711C(a1, a2);
      }
    }
  }
}

uint64_t sub_1001205D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100223DE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120604(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100223E40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100120650(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v9[0] = off_10021D0C0;
  v9[1] = v4;
  (*(**(v4 + 16) + 80))(&v10);
  if (*(a2 + 113) == 1)
  {
    sub_1000EB1E4(v3, v9, *(a2 + 8) / *(v3 + 88), 0, 0, &v8);
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(v8 + 520) & 1) == 0)
  {
    if (*(v8 + 400))
    {
      v5 = v8 + 40;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F3280(a2, v9, v5, *(v3 + 28));
  sub_1000E6B5C(&v8);
  v9[0] = off_10021D0C0;
  if (v11)
  {
    sub_10000367C(v11);
  }

  return v6;
}

void sub_10012076C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001207A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100120838(uint64_t a1)
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

uint64_t sub_1001208B8(std::__thread_struct **a1)
{
  v6 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v6[1];
  sub_1001207A0(v7, (v6 + 2));
  sub_1000EA8DC(v4, v7);
  sub_100120838(v7);
  sub_10012097C(&v6);
  return 0;
}

void sub_100120958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__thread_struct **a9, char a10)
{
  sub_100120838(&a10);
  sub_10012097C(&a9);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_10012097C(std::__thread_struct ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100120838((v1 + 2));
    sub_1001209D0(v1);
    operator delete();
  }

  return result;
}

std::__thread_struct **sub_1001209D0(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void *sub_100120A18(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100223F00;
  a1[2] = off_100223F68;
  a1[1] = off_100223F28;
  return a1;
}

std::exception *sub_100120A9C(std::exception *a1)
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

void sub_100120B18(std::exception *a1)
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

void sub_100120BB4(std::exception *a1)
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

void sub_100120C38(std::exception *a1)
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

void sub_100120CD8(void *a1)
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

void sub_100120D70(void *a1)
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

std::exception *sub_100120E20(std::exception *a1)
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
  return a1;
}

_WORD *sub_100120E9C(_WORD *result, int a2)
{
  *result = 0;
  if (a2)
  {
    v2 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "total_segments_t";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_100216898;
    *(exception + 16) = v2;
  }

  return result;
}

void sub_100120F20(std::exception *a1)
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

void sub_100120FBC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 1;
  v1[1].__vftable = off_100213BA0;
  v3 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100121054(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[1].__vftable = off_100213BA0;
  v2 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 1);

  operator delete();
}

uint64_t sub_100121104(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221B70;
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

void sub_1001211B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1001211CC(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100224120;
  a1[2] = off_100224188;
  a1[1] = off_100224148;
  return a1;
}

std::exception *sub_100121250(std::exception *a1)
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

void sub_1001212CC(std::exception *a1)
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

void sub_100121368(std::exception *a1)
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

void sub_1001213EC(std::exception *a1)
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

void sub_10012148C(void *a1)
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

void sub_100121524(void *a1)
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

uint64_t sub_1001215D4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221FB0;
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

void sub_100121684(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012169C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221D90;
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

void sub_10012174C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100121764(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002223F0;
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

void sub_100121814(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012182C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002221D0;
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

void sub_1001218DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1001218F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v5 = *(*(a1 + 8) + 16);
  result = sub_1000E8B2C(a1, a2, v18);
  v16 = 0u;
  v17 = 0u;
  while (v18[0] != v19[3] || v18[1] != v19[4])
  {
    v11[0] = (*(*(v19[0] + 56) + 16 * v19[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v19[0] + 8) + 28);
    if (v11[0])
    {
      sub_100121AA8(v20, v11);
    }

    sub_1000EC31C(a1, v19, v11);
    while (v11[0] != v14 || v11[1] != v15)
    {
      v10 = (*(*(v12 + 56) + 16 * v13 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v12 + 8) + 28);
      if (v10)
      {
        sub_100121AA8(v20, &v10);
      }

      if (*(v5 + 160) == 1)
      {
        v7 = atomic_load((*(v12 + 56) + 16 * v13 + 8));
        v8 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          v9 = &v17;
          if (v8 != 2)
          {
            v9 = &v17 + 8;
          }
        }

        else if (v8)
        {
          v9 = &v16 + 8;
        }

        else
        {
          v9 = &v16;
        }

        ++*v9;
      }

      sub_1000E82E4(v11);
    }

    result = sub_1000E81BC(v18);
  }

  if (*(v5 + 160) == 1)
  {
    return sub_100121B14(v5, &v16);
  }

  return result;
}

void **sub_100121AA8(void **a1, unint64_t *a2)
{
  v3 = sub_10011BC70(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

atomic_ullong *sub_100121B14(atomic_ullong *result, unint64_t *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 11, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 12, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 13, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 14, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

void sub_100121BE4(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v4 = a2[1];
  v5 = *(a3 + 1);
  if (v4 != v5)
  {
    v10 = *a2;
    v11 = a2[2];
    v12 = v4 + 1;
    if (v4 + 1 != v5)
    {
      v13 = v10 + v11 * v12;
      v14 = a2[1];
      do
      {
        if (v10 + v14 * v11 < v13)
        {
          v4 = v12;
          v14 = v12;
        }

        ++v12;
        v13 += v11;
      }

      while (v5 != v12);
    }

    std::mutex::lock((a1 + 8));
    v18 = *a2;
    v19 = a2[2];
    v16 = *a3;
    v17 = *(a3 + 2);
    sub_100121CF8(a1 + 72, &v18, &v16);
    v15 = v10 + v4 * v11;
    if (v15 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + v15;
    }

    sub_1000F78CC(a1, a4);
    std::mutex::unlock((a1 + 8));
  }
}

uint64_t sub_100121CF8(uint64_t result, void *a2, uint64_t a3)
{
  v5 = a2[1];
  if (v5 != *(a3 + 8))
  {
    v9[5] = v3;
    v9[6] = v4;
    v8 = result;
    do
    {
      v9[0] = *a2 + a2[2] * v5;
      result = sub_10011BC70(v8, v8 + 1, v9);
      v5 = a2[1] + 1;
      a2[1] = v5;
    }

    while (v5 != *(a3 + 8));
  }

  return result;
}

void sub_100121D88(uint64_t ***a1)
{
  v1 = ***a1;
  sub_100158014((v1 + 56), (v1 + 48));
  sub_100158004(v1 + 56);

  sub_100158020(v1 + 56);
}

uint64_t sub_100121DD8(uint64_t a1, void **a2)
{
  v2 = *sub_100077DC8(a1, &v4, a2);
  if (!v2)
  {
    sub_100121E80();
  }

  return v2;
}

uint64_t sub_100121F28(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100121F74(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100121F74(uint64_t a1)
{
  sub_100121FC4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100121FC4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1002241B0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_10012201C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100122034(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24))
  {
    v4[0] = a1;
    v4[1] = __str;
    sub_10012207C(v4);
  }

  else
  {

    std::string::operator=(this, __str);
  }
}

__n128 sub_10012207C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_1000093B4(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_100121FC4(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[1].n128_u32[2] = 0;
  return result;
}

void sub_1001220E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001220E8(a1, *a2);
    sub_1001220E8(a1, a2[1]);
    sub_100121F74((a2 + 4));

    operator delete(a2);
  }
}

void sub_100122144(uint64_t a1, uint64_t a2, void **a3)
{
  sub_10012227C(*a3);
  v4 = *a3;
  sub_100003410(__p, "telemetryIndex");
  v5 = v4[1];
  v6 = *(*v4 + 24);
  v16 = __p;
  v7 = sub_100121DD8(v5, __p);
  v8 = v7;
  if (*(v7 + 80) != 1)
  {
    sub_100121FC4(v7 + 56);
    *(v8 + 80) = 1;
  }

  *(v8 + 56) = v6;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a3;
  sub_100003410(__p, "numChuncksDefraged");
  v10 = v9[1];
  v11 = *(*v9 + 32);
  v16 = __p;
  v12 = sub_100121DD8(v10, __p);
  v13 = v12;
  if (*(v12 + 80) != 1)
  {
    sub_100121FC4(v12 + 56);
    *(v13 + 80) = 1;
  }

  *(v13 + 56) = v11;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012225C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012227C(void *a1)
{
  sub_100003410(v7, "telemetryID");
  v2 = *a1;
  if (*(*a1 + 23) < 0)
  {
    sub_1000093B4(&__p, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  v4 = a1[1];
  v9 = v7;
  v5 = sub_100121DD8(v4, v7);
  sub_100122034(v5 + 56, (v5 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_100122338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012236C(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  result = (*(**v1[2] + 184))(*v1[2]);
  if (*(v2 + 44) != 1)
  {
    *(v2 + 64) = sub_10019E294();
    *(v2 + 72) = v4;
    v5 = *(v2 + 16);
    sub_1000F87C4(v2 + 32);
  }

  return result;
}

uint64_t sub_1001223E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222940;
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

void sub_100122498(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001224B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222B60;
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

void sub_100122560(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100122578(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222D80;
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

void sub_100122628(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100122640(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222FA0;
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

void sub_1001226F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100122708(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002231C0;
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

void sub_1001227B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100122F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  sub_10000C8E0(&a9);
  v13 = a10;
  a10 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_10000C8E0((v11 - 40));
  _Unwind_Resume(a1);
}

const void **sub_100123000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100021798(a1 + *(*a1 - 112), &v6);
  v7 = @"Encryption Info";
  v8 = v6;
  v6 = 0;
  sub_10000C8E0(&v6);
  v4[0] = &v7;
  v4[1] = 1;
  sub_10014D3C0(v4, &v5);
  *a2 = v5;
  v5 = 0;
  sub_1000043E8(&v5);
  return sub_100004450(&v8);
}

uint64_t sub_1001230E0(uint64_t a1)
{
  *(a1 + 56) = off_100224908;
  *(a1 + 24) = off_100224960;
  sub_100023024((a1 + 88));
  return a1;
}

void sub_100123224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001232D0(uint64_t a1)
{
  *(a1 + 56) = off_100224908;
  *(a1 + 24) = off_100224960;
  sub_100023024((a1 + 88));

  operator delete();
}

const void **sub_100123368(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001233C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123468(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001234C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123568(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001235C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123668(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001236C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123768(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001237C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123868(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001238C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

const void **sub_100123968(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  return sub_100023024(v1 + 11);
}

void sub_1001239C8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100224908;
  *(v1 + 3) = off_100224960;
  sub_100023024(v1 + 11);

  operator delete();
}

AAByteStream *sub_100123A90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**a1 + 192))(*a1);
  if (v3 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001860(exception, "AEAHelper: Invalid file descriptor.", 0x16u);
  }

  v7 = AAFileStreamOpenWithFD(v3, 0);
  sub_100139D08(&v8, &v7);
  sub_100139DE8(&v7, &v8);
  sub_10013A0A4(a2, &v7);
  sub_100139DEC(&v7);
  return sub_100139D0C(&v8);
}

void sub_100123B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, AEAContext a9, AAByteStream a10)
{
  sub_100139DEC(&a9);
  sub_100139D0C(&a10);
  _Unwind_Resume(a1);
}

void sub_100123F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10012496C(v40);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  if (a34)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100124038(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v5);
    sub_1000026BC(v5, "Not allowed more than one instance of ", 38);
    v4 = strlen((0x80000001001D07AFLL & 0x7FFFFFFFFFFFFFFFLL));
    sub_1000026BC(v5, 0x80000001001D07AFLL & 0x7FFFFFFFFFFFFFFFLL, v4);
    sub_1000026BC(v5, " auth entry", 11);
    sub_100004290(exception, v5, 0x16u);
  }

  return sub_100124A10(a1, a2);
}

void sub_100124118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100124150@<X0>(AEAAuthData *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = malloc_type_valloc(0x800uLL, 0x8B7C732DuLL);
  if (!v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }

  __s = off_1002249C8;
  v24[2] = &__s;
  __s2 = v6;
  sub_1000DF1F8(v26, &__s);
  sub_1000298F0(&__s);
  v7 = sub_10013A0D8(a1);
  if (v7)
  {
    v8 = 0;
    v9 = __s2;
    while (1)
    {
      v22 = 0;
      bzero(v9, 0x800uLL);
      if (sub_10013A0E0(a1, v8, 0x800uLL, v9, 0, 0, 0, &v22))
      {
        v12 = std::generic_category();
        *a3 = 1;
        goto LABEL_13;
      }

      v10 = *(a2 + 23);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 8);
      }

      else
      {
        v11 = a2;
      }

      v9 = __s2;
      if (!strncmp(v11, __s2, v10))
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }

    if (v22 < 0x100000)
    {
      v15 = malloc_type_valloc(v22 + 1, 0x8B7C732DuLL);
      if (!v15)
      {
        v20 = __cxa_allocate_exception(8uLL);
        v21 = std::bad_alloc::bad_alloc(v20);
      }

      v27[0] = off_1002249C8;
      v27[3] = v27;
      __s = v15;
      sub_1000DF1F8(v24, v27);
      sub_1000298F0(v27);
      bzero(__s, v22 + 1);
      if (sub_10013A0E0(a1, v8, 0x800uLL, __s2, 0, v22, __s, 0))
      {
        v16 = std::generic_category();
        v17 = 0;
        *a3 = 1;
        *(a3 + 8) = v16;
      }

      else
      {
        sub_100003410(a3, __s);
        v17 = 1;
      }

      *(a3 + 24) = v17;
      sub_10002986C(&__s, 0);
      sub_1000298F0(v24);
      goto LABEL_14;
    }

    v12 = std::generic_category();
    v13 = 84;
  }

  else
  {
LABEL_10:
    v12 = std::generic_category();
    v13 = 22;
  }

  *a3 = v13;
LABEL_13:
  *(a3 + 8) = v12;
  *(a3 + 24) = 0;
LABEL_14:
  sub_10002986C(&__s2, 0);
  return sub_1000298F0(v26);
}

void sub_100124404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_10002986C(va, 0);
  sub_1000298F0(v2 + 8);
  sub_10002986C(va1, 0);
  sub_1000298F0(v3 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012444C(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    v5 = *(a1 + 23);
    if (*(a2 + 24))
    {
      if (v5 < 0)
      {
        operator delete(*a1);
      }

      v6 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v6;
      *(a2 + 23) = 0;
      *a2 = 0;
    }

    else
    {
      if (v5 < 0)
      {
        operator delete(*a1);
      }

      *a1 = *a2;
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 24))
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

void **sub_100124500(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a1 + 112) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v7);
    sub_1000026BC(v7, "Not allowed more than one instance of ", 38);
    v6 = strlen(("N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_1000026BC(v7, "N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL, v6);
    sub_1000026BC(v7, " auth entry", 11);
    sub_100004290(exception, v7, 0x16u);
  }

  v3 = (a1 + 80);

  return sub_100124A78(v3, a2, a3);
}

void sub_1001245DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void **sub_100124614(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v6);
    sub_1000026BC(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_1000026BC(v6, "N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_1000026BC(v6, " auth entry", 11);
    sub_100004290(exception, v6, 0x16u);
  }

  v2 = (a1 + 48);

  return sub_100124B00(v2, a2);
}

void sub_1001246F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void **sub_100124728(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v6);
    sub_1000026BC(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_1000026BC(v6, "N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_1000026BC(v6, " auth entry", 11);
    sub_100004290(exception, v6, 0x16u);
  }

  v2 = (a1 + 16);

  return sub_100124B00(v2, a2);
}

void sub_100124804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100124920(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100224A28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10012496C(uint64_t *a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(a1[2]);
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t *sub_100124A10(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      operator delete[]();
    }
  }

  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 1;
  return a1;
}

void **sub_100124A78(void **__dst, __int128 *a2, void *a3)
{
  if (*(__dst + 32) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 32) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v6;
  }

  __dst[3] = a3;
  *(__dst + 32) = 1;
  return __dst;
}

void **sub_100124B00(void **__dst, __int128 *a2)
{
  if (*(__dst + 24) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 24) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 1;
  return __dst;
}

void sub_100124B78()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001860(exception, "User data is not supported in this image format", 0x2Du);
}

void sub_100124BB8()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001860(exception, "User data is not supported in this image format", 0x2Du);
}

void *sub_100124BF8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v4 == 3)
    {
      if (v5 < v6)
      {
LABEL_4:
        if ((v4 & 2) != 0)
        {
          v7 = "[";
        }

        else
        {
          v7 = "(";
        }

        sub_100003410(&v27, v7);
        if ((v29 & 0x80u) == 0)
        {
          v8 = &v27;
        }

        else
        {
          v8 = v27;
        }

        if ((v29 & 0x80u) == 0)
        {
          v9 = v29;
        }

        else
        {
          v9 = v28;
        }

        v10 = sub_1000026BC(a1, v8, v9);
        if (*(a2 + 16))
        {
          v11 = "]";
        }

        else
        {
          v11 = ")";
        }

        sub_100003410(&__p, v11);
        if ((v26 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v26 & 0x80u) == 0)
        {
          v13 = v26;
        }

        else
        {
          v13 = v25;
        }

        goto LABEL_44;
      }
    }

    else if (v6 >= v5)
    {
      goto LABEL_4;
    }
  }

  else if (v6 >= v5 || v6 + 1 >= v5)
  {
    goto LABEL_4;
  }

  if ((v4 & 2) != 0)
  {
    v15 = "[";
  }

  else
  {
    v15 = "(";
  }

  sub_100003410(&v27, v15);
  if ((v29 & 0x80u) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27;
  }

  if ((v29 & 0x80u) == 0)
  {
    v17 = v29;
  }

  else
  {
    v17 = v28;
  }

  sub_1000026BC(a1, v16, v17);
  v18 = *a2;
  v19 = std::ostream::operator<<();
  sub_1000026BC(v19, ",", 1);
  v20 = *(a2 + 8);
  v10 = std::ostream::operator<<();
  if (*(a2 + 16))
  {
    v21 = "]";
  }

  else
  {
    v21 = ")";
  }

  sub_100003410(&__p, v21);
  if ((v26 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25;
  }

LABEL_44:
  v22 = sub_1000026BC(v10, p_p, v13);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v27);
  }

  return v22;
}

void sub_100124DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100124E14(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 8))();
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

BOOL sub_100124E80(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 8);
  v5 = *(*a2 + 8);
  if (*v4 != *v5)
  {
    return 0;
  }

  result = sub_10000D4E4(v4 + 8, v5 + 8);
  if (result)
  {
    if (*(v4 + 48) == *(v5 + 48) && *(v2 + 40) == *(v3 + 40))
    {
      return a1[10] == a2[10];
    }

    return 0;
  }

  return result;
}

double sub_100124F38@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 2;
  *(a2 + 24) = 3;
  if (*(**(v3 + 8) + 8))
  {
    if (sub_1000E0464())
    {
      *v10 = "DiskImage::const_extents_iterator_t::make_val() const";
      *&v10[8] = 45;
      *&v10[16] = 2;
      sub_10009F6FC(&v11, v10);
      sub_1000026BC(v14, "Disk image is terminated, skipping ...", 38);
      std::ostream::~ostream();
      sub_10009F930(&v11);
      std::ios::~ios();
    }
  }

  else if (v4 < v5 && a1[8] != 3)
  {
    (**v3)(&v11, v3);
    *v9 = v11;
    *&v9[16] = v12;
    sub_10006D5EC(v9, v3 + 16, v10);
    *&v10[24] = v13;
    if (v13 != 3 && (a1[10] & (1 << v13)) == 0)
    {
      do
      {
        v8 = *a1;
        if (*(*a1 + 40) >= (*(*a1 + 32) & 1) + *(*a1 + 24))
        {
          break;
        }

        *(v8 + 40) = (v10[16] & 1) + *&v10[8];
        (**v8)(&v11, v8);
        v15 = v11;
        v16 = v12;
        sub_10006D5EC(&v15, v8 + 16, v9);
        *&v9[24] = v13;
        *v10 = *v9;
        *&v10[12] = *&v9[12];
        if (v13 == 3)
        {
          break;
        }
      }

      while ((a1[10] & (1 << v13)) == 0);
    }

    *a2 = *v10;
    result = *&v10[12];
    *(a2 + 12) = *&v10[12];
  }

  return result;
}

void sub_100125158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v20 = *(*v19 + 24);
    *v18 = *(*v19 + 40);
    *(v18 + 8) = v20;
    *(v18 + 16) = 2;
    *(v18 + 24) = 3;
    __cxa_end_catch();
    JUMPOUT(0x100125140);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1001251AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = (a1[3] & 1) + a1[2];
  *(v2 + 40) = v3;
  if (v3 < (*(v2 + 32) & 1) + *(v2 + 24))
  {
    sub_100124F38(a1, v5);
    *(a1 + 1) = v5[0];
    *(a1 + 20) = *(v5 + 12);
  }

  return a1;
}

uint64_t *sub_100125224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 8))(*a1);
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = *(a1 + 10);
  return sub_1001251AC(a1);
}

void sub_100125290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1001A37E0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001252AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 40))(v6);
    v5 = *(a1 + 32);
  }

  *(a1 + 40) = v5;
  sub_1001254D0(a1 + 56, a2 + 56);
  return a1;
}

uint64_t sub_10012533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_10023FE60;
  *a2 = qword_10023FE60;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  sub_10005D16C(a1, v11);
  sub_10005D2EC(a1, v10);
  while (!sub_100124E80(v11, v10))
  {
    sub_100125224(v11, &v8);
    *a2 = v9[0];
    *(a2 + 12) = *(v9 + 12);
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_100125458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(v15 - 64);
  *(v15 - 64) = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001254D0(uint64_t a1, uint64_t a2)
{
  sub_100125554(a1);
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

uint64_t sub_100125554(uint64_t a1)
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

void sub_1001255D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*a3 + 24))(a3);
  if (v6 == (*(*a4 + 24))(a4))
  {
    v24 = 0u;
    v23 = 0u;
    (*(*a3 + 80))(&v23, a3);
    v21 = 0u;
    v22 = 0u;
    (*(*a4 + 80))(&v21, a4);
    v7 = *(&v22 + 1) / v6 * v6;
    v8 = sub_10003B0B0();
    v9 = v8;
    if (!v7)
    {
      v7 = v8[2] / v6 * v6;
    }

    v10 = v7;
    if (v23)
    {
      v10 = (v7 + (v6 + v23 - 1) / v6 * v6 - 1) / ((v6 + v23 - 1) / v6 * v6) * (v6 + v23 - 1) / v6 * v6;
    }

    v11 = v24;
    v12 = *(v8 + 2);
    if (v12 == 1)
    {
      v13 = (*v8)();
    }

    else
    {
      if (v12)
      {
        sub_100036CC4();
      }

      v13 = *v8;
    }

    v14 = v11 + v10;
    if (v13 << (*(v9 + 8) == 2) >= (v9[3] / v14))
    {
      v15 = v9[3] / v14;
    }

    else
    {
      v15 = v13 << (*(v9 + 8) == 2);
    }

    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    sub_1001350BC(v27, v16);
    (*(*a3 + 32))(a3);
    v20 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2000000000;
    v19[3] = &v20;
    sub_1001556A8(v26, v14, v16, 0);
    __p[0] = (*(*a3 + 144))(a3);
    v25 = (*(*a4 + 144))(a4);
    sub_10012623C();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  sub_100002148(__p);
  sub_1000026BC(__p, "Block size mismatch between source (", 36);
  std::ostream::operator<<();
  sub_1000026BC(__p, ") and dest disk image (", 23);
  (*(*a4 + 24))(a4);
  std::ostream::operator<<();
  sub_1000026BC(__p, ")", 1);
  sub_100004290(exception, __p, 0xFFFFFFED);
}

void sub_100126038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p)
{
  sub_100126DF0(&__p);
  if (a48)
  {
    (*(*a48 + 24))(a48);
  }

  sub_100046A5C(&STACK[0x428]);
  sub_10000E944(&STACK[0x370]);
  sub_100155754(&STACK[0x4B8]);
  _Block_object_dispose(&STACK[0x3B8], 8);
  sub_10013517C(&STACK[0x558]);
  _Unwind_Resume(a1);
}

void sub_10012634C(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 144) != 1 || v5 != v4)
  {
    while (v5 == v4)
    {
      std::condition_variable::wait((a1 + 96), &__lk);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
    }

    v7 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    sub_100135274(a2, v7);
  }

  sub_10012623C();
}

void sub_10012645C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t *a10, std::mutex *a11, char a12)
{
  v13 = a9;
  a9 = 0;
  if (v13)
  {
    sub_1001A3AA0(v13);
  }

  sub_1001A3AD4(&a9, &a10);
  std::mutex::unlock(a11);
  _Unwind_Resume(a1);
}

void sub_10012649C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = (*(a1 + 48) - v3 + (v2 & 1) + (((v2 >> 1) & 1) - 1)) * v4;
  if ((v2 & 2) != 0)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = v3 + 1;
  }

  v7 = v6 * v4;
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v29 = *(a1 + 72);
  v30 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = v5;
  v32 = v7;
  v33 = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v10 = *(a1 + 96);
  sub_100025704(&v29, v43);
  sub_1000246F4(v44, &v40);
  sub_100024448(v44, v37);
  v11 = sub_10000247C(*v10);
  v13 = v12;
  if (v39)
  {
    sub_10000367C(v39);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  if (v42)
  {
    sub_10000367C(v42);
  }

  if (*(&v40 + 1))
  {
    sub_10000367C(*(&v40 + 1));
  }

  sub_1000036E8(v43);
  v14 = *(a1 + 96);
  if (v11 < 0 && v11)
  {
    v19 = *(a1 + 104);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = 0;
    atomic_compare_exchange_strong(*(a1 + 112), &v20, v11);
    v21 = v20 == 0;
    if (v21 && v14 != 0)
    {
      sub_10000FE1C(*(v14 + 8));
    }

    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v21)
    {
      *&v40 = "convert(DiskImage::const_extents_iterator_t, DiskImage::const_extents_iterator_t, DiskImage &, DiskImage &, const std::function<void (int64_t)> &, BOOL *)_block_invoke";
      *(&v40 + 1) = 133;
      v41 = 16;
      sub_100126918(v43, &v40);
      sub_1000026BC(v45, "Conversion: read error ", 23);
      std::ostream::operator<<();
      sub_100126A40(v43);
    }
  }

  else
  {
    sub_1000587B8(&v27, &v29, v5, v7 - v13, v7, v33 - (v7 - v13));
    sub_100025704(&v27, v43);
    sub_1000246F4(v44, &v40);
    sub_100024448(v44, v37);
    v15 = sub_1000037F0(*(v14 + 8));
    if (v39)
    {
      sub_10000367C(v39);
    }

    if (v38)
    {
      sub_10000367C(v38);
    }

    if (v42)
    {
      sub_10000367C(v42);
    }

    if (*(&v40 + 1))
    {
      sub_10000367C(*(&v40 + 1));
    }

    sub_1000036E8(v43);
    if (v28)
    {
      sub_10000367C(v28);
    }

    if (v15 < 0 && v15)
    {
      v23 = *(a1 + 96);
      v24 = *(a1 + 104);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = 0;
      atomic_compare_exchange_strong(*(a1 + 112), &v25, v15);
      v26 = v25 == 0;
      if (!v25 && v23)
      {
        sub_10000FE1C(*(v23 + 8));
      }

      if (v24)
      {
        sub_10000367C(v24);
      }

      if (v26)
      {
        *&v40 = "convert(DiskImage::const_extents_iterator_t, DiskImage::const_extents_iterator_t, DiskImage &, DiskImage &, const std::function<void (int64_t)> &, BOOL *)_block_invoke";
        *(&v40 + 1) = 133;
        v41 = 16;
        sub_10008BDBC(v43, &v40);
        sub_1000026BC(v45, "Conversion: write error ", 24);
        std::ostream::operator<<();
        sub_10008BEE4(v43);
      }
    }

    else
    {
      v16 = atomic_load(*(*(*(a1 + 32) + 8) + 24));
      if (v7 > v16)
      {
        v17 = v16;
        atomic_compare_exchange_strong(*(*(*(a1 + 32) + 8) + 24), &v17, v7);
        if (v17 == v16)
        {
          v18 = *(a1 + 120);
          if (*(v18 + 24))
          {
            sub_100126A84(v18, 100 * v7 / *(a1 + 128));
          }
        }
      }
    }
  }

  if (v30)
  {
    sub_10000367C(v30);
  }
}

void sub_100126840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  sub_10008BEE4(&STACK[0x2A8]);
  if (a25)
  {
    sub_10000367C(a25);
  }

  _Unwind_Resume(a1);
}

void *sub_100126918(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10013547C(a1, a2);
  *a1 = off_100224AB0;
  a1[45] = &off_100224BB0;
  a1[46] = &off_100224BD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224AB0;
  a1[45] = off_100224B38;
  a1[46] = off_100224B60;
  return a1;
}

void sub_100126A1C(_Unwind_Exception *a1)
{
  sub_100128D6C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100126A40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100128D6C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100126A84(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_100126AD8(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100126B0C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    sub_10000367C(v3);
  }
}

void *sub_100126B5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100135544(a1, a2);
  *a1 = off_100224CD0;
  a1[45] = &off_100224DD0;
  a1[46] = &off_100224DF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224CD0;
  a1[45] = off_100224D58;
  a1[46] = off_100224D80;
  return a1;
}

void sub_100126C60(_Unwind_Exception *a1)
{
  sub_100129504(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100126C84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100129504(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100126CC8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10013560C(a1, a2);
  *a1 = off_100224EF0;
  a1[45] = &off_100224FF0;
  a1[46] = &off_100225018;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224EF0;
  a1[45] = off_100224F78;
  a1[46] = off_100224FA0;
  return a1;
}

void sub_100126DCC(_Unwind_Exception *a1)
{
  sub_100129C9C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100126DF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100129C9C(a1);
  std::ios::~ios();
  return a1;
}

void sub_100126E34(unint64_t **a1)
{
  v2 = *a1;
  *&v51 = sub_10006C1F0(**a1);
  *(&v51 + 1) = v3;
  if (!(v51 | v3))
  {
    *&v51 = sub_10019E294();
    *(&v51 + 1) = v4;
  }

  v5 = a1[1];
  if (v5 - 3 >= 4 && v5 != 8)
  {
    sub_100008154(*v2, 2 * (a1[8] & 1), 7, v43);
    sub_100128218(v43, "Could not get mapping information", v46);
    v17 = sub_10000827C(v46);
    sub_1000705E8(&cf, v17);
    v18 = (*(**v2 + 32))();
    v19 = (*(**v2 + 24))() * v18;
    v20 = a1[1];
    if (v20 - 1 < 2)
    {
      v49 = 0;
      v50 = 0;
      if (v20 == 1)
      {
        operator new();
      }

      if (a1[7] == 2)
      {
        v24 = a1[3];
        *&v48[0] = a1[2];
        *(&v48[0] + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
        }

        sub_1000F84F0(v45);
        operator new();
      }

      LOWORD(v48[0]) = 1;
      BYTE2(v48[0]) = 0;
      *(v48 + 3) = 0;
      BYTE11(v48[0]) = 0;
      v25 = *v2;
      v26 = **v2;
      v27 = *v26;
      if (v28)
      {
        BYTE1(v48[0]) = v28[217];
      }

      v26[3](v25);
      (*(**v2 + 32))();
      (*(**v2 + 24))();
      operator new();
    }

    if (v20 == 9)
    {
      v21 = a1[2];
      v22 = a1[3];
      v45[0] = v21;
      v45[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
      }

      v23 = (*(*v21 + 56))(v21, v19);
      if (!v23)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v34 = std::generic_category();
      exception[1] = v23;
      exception[2] = v34;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "failed to set the bundle's size";
    }

    v31 = __cxa_allocate_exception(0x40uLL);
    *v31 = &off_100233158;
    v32 = std::generic_category();
    v31[1] = 45;
    v31[2] = v32;
    *(v31 + 24) = 0;
    *(v31 + 48) = 0;
    v31[7] = "Destination image format is unknown";
  }

  if ((a1[8] & 2) == 0)
  {
    v7 = a1[3];
    v39 = a1[2];
    v40 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100008154(*v2, 1, 2, &v49);
    sub_100128218(&v49, "Could not get mapping information", v48);
    v8 = sub_10000827C(v48);
    sub_1000705E8(v47, v8);
    sub_10005D16C(v47, v37);
    sub_100124E14(v38, v37);
    v38[6] = sub_1001282A8;
    v9 = v37[0];
    v37[0] = 0;
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    sub_10005D2EC(v47, v35);
    sub_100124E14(v36, v35);
    v36[6] = sub_1001282A8;
    v10 = v35[0];
    v35[0] = 0;
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    sub_1001282BC(v38, v36, v46);
    sub_1001282BC(v38, v36, v45);
    sub_100008098(v48, v43);
    v11 = sub_10000801C(v43, "Could not get media info");
    v12 = (*(**v2 + 32))();
    cf = v39;
    v42 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001357C0(v43, (v11 + 32), &cf, v46, v12, &v51);
    if (v42)
    {
      sub_10000367C(v42);
    }

    v13 = a1[5];
    if (v13)
    {
      if (!(v13 >> 20))
      {
        v29 = __cxa_allocate_exception(0x40uLL);
        *v29 = &off_100233158;
        v30 = std::generic_category();
        v29[1] = 22;
        v29[2] = v30;
        *(v29 + 24) = 0;
        *(v29 + 48) = 0;
        v29[7] = "Raw run size limit cannot be smaller than compressed run size limit";
      }

      v44 = 0;
    }

    sub_1001366F0(&cf, v38, v36, 0);
    v14 = *(v11 + 32);
    if (v14 != v11 + 40)
    {
      v15 = *(v14 + 48);
      v16 = *(v14 + 32);
    }

    sub_10012A19C((v11 + 32));
    sub_10013425C();
  }

  sub_1001356D4();
}