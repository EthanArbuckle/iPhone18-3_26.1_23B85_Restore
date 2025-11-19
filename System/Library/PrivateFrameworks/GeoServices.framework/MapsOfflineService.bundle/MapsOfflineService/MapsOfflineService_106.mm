void sub_6C037C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6C03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C238;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6C0538(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6C0568(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6C059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6C07F8(a2, 1, v8);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6C07AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6C07F8(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  sub_6C0B5C(a1, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
    *(a3 + 80) = 0;
    *(a3 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a2)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a3, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6C0B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

double sub_6C0B5C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}

void sub_6C0FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6C1038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C280;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6C11A0(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6C11D0(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6C1204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6C1460(a2, 1, v8);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6C1414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6C1460(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  sub_6C17C4(a1, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
    *(a3 + 80) = 0;
    *(a3 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a2)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a3, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6C178C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

double sub_6C17C4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}

void sub_6C1C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6C1CA0(uint64_t **a1, uint64_t a2)
{
  v2 = 0x4FA4FA4FA4FA4FA5 * (a1[1] - *a1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xB60B60B60B60B6)
  {
    sub_1794();
  }

  if (0x9F49F49F49F49F4ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x9F49F49F49F49F4ALL * (a1[2] - *a1);
  }

  if ((0x4FA4FA4FA4FA4FA5 * (a1[2] - *a1)) >= 0x5B05B05B05B05BLL)
  {
    v5 = 0xB60B60B60B60B6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB60B60B60B60B6)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * (a1[1] - *a1);
  sub_5F1934(v15, a2);
  v6 = 360 * v2 + 360;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = (v15 + v9);
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      sub_6B8F84(v12, v11);
      v11 += 45;
      v12 = v13 + 360;
    }

    while (v11 != v8);
    do
    {
      sub_5C3168(v7);
      v7 += 45;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_6C1E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6C1E2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6C1E2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 360;
    sub_5C3168(i - 360);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_6C1E80()
{
  qword_27A2E08 = 0;
  qword_27A2E10 = 0;
  qword_27A2E00 = 0;
  operator new();
}

void sub_6C4ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x378]);
  if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x360]);
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x348]);
  if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x330]);
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x318]);
  if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x300]);
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2E8]);
  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2D0]);
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2B8]);
  if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2A0]);
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x270]);
  if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x258]);
  if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x240]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a72 & 0x80000000) == 0)
    {
LABEL_42:
      if (a68 < 0)
      {
        operator delete(a63);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a69);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void *sub_6C5170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  sub_6BEBC0(a1 + 1, a2, *(a4 + 1432));
  return a1;
}

void sub_6C51A0(uint64_t *a1, void *a2)
{
  v2 = a2[138];
  v3 = a2[139];
  if (v2 != v3)
  {
    v6 = a2 + 1097;
    do
    {
      if (*(v2 + 2008) != *(v2 + 2016))
      {
        v7 = (v2 + 385);
        if (!*(v2 + 386))
        {
          v7 = v6;
        }

        v8 = *v7;
        sub_6C5338(a1, (v2 + 2008));
        sub_6C5510(a1, a2, v8, v2);
        sub_6C5700(v9, v2);
        sub_6C57D0(a1, v2);
        sub_6C59A4(a1, v2);
      }

      v2 += 2616;
    }

    while (v2 != v3);
    v2 = a2[138];
    v3 = a2[139];
  }

  while (v2 != v3)
  {
    v10 = *(v2 + 2008);
    v11 = *(v2 + 2016);
    if (v10 != v11)
    {
      while (sub_6C6B7C(v10))
      {
        v10 += 360;
        if (v10 == v11)
        {
          v10 = v11;
          goto LABEL_21;
        }
      }

      if (v10 != v11)
      {
        for (i = v10 + 360; i != v11; i += 360)
        {
          if (sub_6C6B7C(i))
          {
            sub_6BDD8C(v10, i);
            v10 += 360;
          }
        }
      }
    }

LABEL_21:
    v13 = *(v2 + 2016);
    if (v10 != v13)
    {
      while (v13 != v10)
      {
        v13 -= 360;
        sub_5C3168(v13);
      }

      *(v2 + 2016) = v10;
    }

    v2 += 2616;
  }
}

uint64_t sub_6C5338(uint64_t a1, uint64_t *a2)
{
  result = sub_6C6B5C(*a2, 1);
  v4 = 0x4FA4FA4FA4FA4FA5 * ((a2[1] - *a2) >> 3);
  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      while (1)
      {
        v14 = sub_6B1BFC(a2, i);
        v15 = *a2;
        v16 = a2[1] - 360 * (~i + 0x4FA4FA4FA4FA4FA5 * ((a2[1] - *a2) >> 3)) - 360;
        while (v16 != v15)
        {
          v16 -= 360;
          if (sub_6C6B7C(v16))
          {
            v15 = v16 + 360;
            break;
          }
        }

        v17 = (v15 - 360);
        if (sub_6C7E90(v15 - 360) == 2 || sub_6C7E90(v15 - 360) == 4 || sub_6C7E90(v15 - 360) <= 2 && sub_6CA178(v15 - 360, v14))
        {
          break;
        }

        result = sub_6C6B5C(v14, 1);
        if (v4 == ++i)
        {
          return result;
        }
      }

      v6 = sub_6C7D24(v15 - 360);
      if (v6)
      {
        v7 = (v15 - 360);
      }

      else
      {
        v7 = v14;
      }

      if (v6)
      {
        v8 = v14;
      }

      else
      {
        v8 = v17;
      }

      sub_6CA4B8(v17, &v21);
      v9 = v21.n128_u64[0];
      sub_6CA4B8(v14, &v20);
      v10 = v20.n128_i64[1];
      sub_6CA4B8(v14, &v18);
      sub_681624(&v22, v9, v10, v19);
      sub_6C901C(v7, &v22);
      v11 = sub_6C7E90(v17);
      v12 = sub_6C7E90(v14);
      if (v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      sub_6C7E98(v7, v13);
      sub_6C6B5C(v7, 1);
      result = sub_6C6B5C(v8, 0);
    }
  }

  return result;
}

void sub_6C5510(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = sub_66242C(a2 + 936, *(a4 + 16));
  v9 = *(a4 + 2016);
  v10 = *(a4 + 2008);
  while (v9 != v10)
  {
    v9 -= 360;
    if (sub_6C6B7C(v9))
    {
      v10 = v9 + 360;
      break;
    }
  }

  v11 = v10 - 360;
  if (sub_6C7D24(v10 - 360) && (sub_6C5AB0(a1, a2, a4, v10 - 360) & 1) == 0)
  {
    *(a4 + 2056) = 1;
  }

  v12 = *(a4 + 2016) - *(a4 + 2008);
  if (v12)
  {
    v13 = 0;
    v14 = 0x4FA4FA4FA4FA4FA5 * (v12 >> 3);
    while (1)
    {
      v16 = sub_6B1BFC((a4 + 2008), v13);
      if (sub_6C6B7C(v16))
      {
        sub_6C6B5C(v16, 0);
        if (sub_6C7864(v16))
        {
          if (sub_6C7BB0(v16, a3))
          {
            break;
          }
        }
      }

LABEL_12:
      if (v14 == ++v13)
      {
        return;
      }
    }

    sub_6CA85C(v16, &v18);
    if (sub_6C7D24(v16))
    {
      if ((sub_6C5AB0(a1, a2, a4, v16) & 1) == 0)
      {
        *(a4 + 2056) = 1;
      }
    }

    else if (!sub_6C7D08(v16) || !sub_6BEF4C((a1 + 1), a4, v8) || !sub_6C5C60(a1, a2, v11, v13, a4))
    {
LABEL_23:
      if (sub_6C7E90(v16) == 1)
      {
        v15 = v18;
      }

      else
      {
        sub_6CA4B8(v16, &v17);
        v15 = v17.n128_u64[1];
      }

      v18 = v15;
      goto LABEL_12;
    }

    sub_6C6B5C(v16, 1);
    goto LABEL_23;
  }
}

void sub_6C5700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2008);
  for (i = *(a2 + 2016); v2 != i; v2 += 45)
  {
    v4 = sub_6C6B88(v2);
    if (v4)
    {
      v5 = 0;
      v6 = v4;
      do
      {
        if (sub_6C6B7C(v2) && (sub_6C9088(v2, v5) & 1) == 0)
        {
          v7 = sub_6C8244(v2, v5);
          if (v7[1] - *v7 != 1)
          {
            v8 = 13;
            sub_6C879C(v2, v5, &v8);
          }
        }

        ++v5;
      }

      while (v6 != v5);
    }
  }
}

void sub_6C57D0(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[252];
  v4 = a2[251];
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v7 = 0;
    v8 = a2 + 251;
    v9 = 0x4FA4FA4FA4FA4FA5 * (v5 >> 3);
    v10 = a2 + 126;
    while (1)
    {
      v11 = sub_6B1BFC(v8, v7);
      if (sub_6C6B7C(v11))
      {
        if (v7)
        {
          v12 = a2[251];
          v13 = a2[252] - 360 * (~v7 + 0x4FA4FA4FA4FA4FA5 * ((a2[252] - v12) >> 3)) - 360;
          while (v13 != v12)
          {
            v13 -= 360;
            if (sub_6C6B7C(v13))
            {
              v12 = v13 + 360;
              break;
            }
          }

          v14 = v10;
          if (v12 != *v8)
          {
            sub_6CA4B8((v12 - 360), &v15);
            v14 = &v15.n128_i64[1];
          }

          v16 = *v14;
          if (!sub_6C8FD0(v11))
          {
LABEL_16:
            sub_6C6280(a1, a2, v11, &v16);
            goto LABEL_4;
          }
        }

        else
        {
          v16 = *v10;
          if (!sub_6C8FD0(v11))
          {
            goto LABEL_16;
          }
        }

        sub_6C63E0(a1, a2, v11, &v16);
      }

LABEL_4:
      if (++v7 == v9)
      {
        v4 = a2[251];
        v3 = a2[252];
        break;
      }
    }
  }

  while (v4 != v3)
  {
    sub_6CA4CC(v4, &v15);
    if (sub_681630(&v15) < *(*a1 + 1928) && !sub_6C7D24(v4))
    {
      sub_6C6B5C(v4, 0);
    }

    v4 += 360;
  }
}

void sub_6C59A4(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[251];
  for (i = a2[252]; v2 != i; v2 = (v2 + 360))
  {
    if (sub_6C6B7C(v2))
    {
      sub_6CA4B8(v2, &v17);
      v15 = v17.n128_u64[0];
      sub_6CA4B8(v2, &v17);
      v16 = v17.n128_i64[1];
      if (sub_6C7D24(v2))
      {
        v6 = *a1;
        v7 = sub_6C8FD0(v2);
        v8 = sub_67A480(v6, v7) + v15;
        sub_6CA4CC(v2, &v17);
        v9 = v17.n128_u64[0];
        if (v17.n128_i64[0] >= v8)
        {
          v9 = v8;
        }
      }

      else
      {
        sub_6CA4CC(v2, &v17);
        v9 = v17.n128_u64[0];
      }

      v10 = a2[16];
      v11 = v9 < v10;
      v12 = v9 - v10;
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (v16 >= v10)
      {
        v14 = v16 - v10;
      }

      else
      {
        v14 = 0;
      }

      sub_681624(&v17, v13, v14, a2[15]);
      sub_6C9048(v2, &v17);
    }
  }
}

uint64_t sub_6C5AB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_66242C((a2 + 7488), *(a3 + 16));
  result = sub_6BF0A8((a1 + 1), a3, v7);
  if (result)
  {
    v9 = *(a3 + 160);
    if ((v9 - 82) < 3)
    {
      return 0;
    }

    v10 = v9 - 16;
    if (v10 < 0x18 && ((0x860005u >> v10) & 1) != 0)
    {
      return 0;
    }

    if (sub_6C92BC(a4))
    {
      return 1;
    }

    if (sub_6C6B88(a4) < 2u || sub_6C72BC(a4) && !sub_6C7384(a4))
    {
      return 0;
    }

    if (*(a3 + 1029) & 1) != 0 || (*(a3 + 1028))
    {
      return 1;
    }

    result = 1;
    if ((*(a3 + 1030) & 1) == 0 && *(a3 + 2057))
    {
      if (*(a3 + 160) != 3)
      {
        return sub_6C5E14(result, a3, a4) ^ 1;
      }

      v11 = *(a3 + 1008);
      v12 = *(*a1 + 1920);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      v15 = ((v14 < 0) ^ v13) | (v14 == 0) ? 0 : v14;
      v16 = sub_6C749C(a4);
      v17 = *a1;
      v18 = sub_6C8FD0(a4);
      result = sub_67A368(v17, v18);
      v19 = v15 >= result ? result : v15;
      if (v16 >= v19)
      {
        return sub_6C5E14(result, a3, a4) ^ 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_6C5C60(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_6B1BFC(a5 + 251, a4);
  v11 = sub_6C6B88(v10);
  if (v11 < 2u)
  {
    return 0;
  }

  v13 = sub_6C5EC4(v11, a5, v10, a3);
  v14 = sub_6C5FEC(a1, v10, a3);
  if (sub_6C7E90(v10) == 5)
  {
    return v13;
  }

  if (((sub_6C7E90(v10) == 6) & v14) != 0)
  {
    return 1;
  }

  if (sub_6C7E90(v10) == 7)
  {
    if (v13)
    {
      sub_6C7E98(v10, 5);
      return 1;
    }

    sub_6C7E98(v10, 6);
    if (v14)
    {
      return 1;
    }
  }

  if (a5[125] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = a5[126];
  }

  else
  {
    v15 = a5[125];
  }

  v16 = *a1;
  v17 = sub_6C8FD0(v10);
  v18 = sub_67A34C(v16, v17);
  if (v15 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15 - v18;
  }

  sub_6CA4B8(v10, &v21);
  if (v21.n128_i64[1] < v19)
  {
    return sub_6C60DC(a1, a2, a5, a4);
  }

  v20 = sub_6C749C(v10);
  sub_6CA4B8(v10, &v21);
  if (*(*a1 + 1920) + v20 < (a5[126] - v21.n128_u64[1]))
  {
    return 0;
  }

  return sub_6C9600(v10);
}

uint64_t sub_6C5E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_6C6E64(a3) == 1 && (*(a2 + 2416) & 1) == 0)
  {
    v5 = *(a2 + 160);
    if (v5 == 2)
    {
      v6 = sub_6C9794(a3);
      v7 = a3;

      return sub_6C9088(v7, v6);
    }

    if (v5 == 1)
    {
      v6 = sub_394BD0();
      v7 = a3;

      return sub_6C9088(v7, v6);
    }
  }

  return 0;
}

BOOL sub_6C5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_6C7E90(a4) != 4 || (*(a2 + 2056) & 1) != 0 || !sub_6C7034(a4))
  {
    return 0;
  }

  v7 = sub_394BD0();
  if (sub_6C784C(a4, v7))
  {
    v8 = sub_394BD0();
    v9 = sub_6C8244(a3, v8);
    v10 = v9[1] - *v9 > 1uLL;
    v11 = sub_6C9794(a4);
    if (!sub_6C784C(a4, v11))
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
    v13 = sub_6C9794(a4);
    if (!sub_6C784C(a4, v13))
    {
      return v10;
    }
  }

  v14 = sub_6C9794(a3);
  v15 = sub_6C8244(a3, v14);
  return v10 || v15[1] - *v15 > 1uLL;
}

uint64_t sub_6C5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_6C7E90(a3) != 4)
  {
    return 0;
  }

  result = sub_6C9598(a3, a2);
  if (result)
  {
    if (!sub_6C8FD0(a2))
    {
      return 1;
    }

    v7 = sub_394BD0();
    if (sub_6C784C(a3, v7))
    {
      v8 = 0;
      if (!sub_6C75FC(a2, 0))
      {
LABEL_6:
        v9 = 0;
        return v9 >= *(*a1 + 1880);
      }
    }

    else
    {
      v8 = sub_6C9794(a2);
      if (!sub_6C75FC(a2, v8))
      {
        goto LABEL_6;
      }
    }

    v9 = sub_6CA500(a2, v8);
    return v9 >= *(*a1 + 1880);
  }

  return result;
}

uint64_t sub_6C60DC(uint64_t *a1, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v8 = sub_5DBECC(a3 + 251, a4);
  v9 = sub_6C749C(v8);
  v10 = *a1;
  v11 = sub_6C8FD0(v8);
  if (v9 < sub_67A368(v10, v11))
  {
    return 0;
  }

  if (!sub_6C8FD0(v8))
  {
    v13 = 0;
    v23 = a3[5];
    v24 = *(*a1 + 1904);
    if (0x4FA4FA4FA4FA4FA5 * ((a3[252] - a3[251]) >> 3) <= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0x4FA4FA4FA4FA4FA5 * ((a3[252] - a3[251]) >> 3);
    }

    do
    {
      if (v4 == v14)
      {
        break;
      }

      v15 = sub_5DBECC(a3 + 251, v4);
      v16 = sub_6C6B88(v15);
      if (!v16)
      {
        break;
      }

      v17 = 0;
      v18 = 0;
      v19 = v16;
      do
      {
        v18 += sub_6C7570(v15, v17++);
      }

      while (v19 != v17);
      if (!v18)
      {
        break;
      }

      v20 = sub_6C73CC(v15);
      v21 = (sub_6C6B88(v15) - (v18 + v20)) / v18;
      if (v21 <= *(*a1 + 1896))
      {
        return 1;
      }

      v13 += sub_4D23F8(a2, v4 + v23, v21);
      ++v4;
    }

    while (*(*a1 + 1912) == 1 && v13 < v24);
    return 0;
  }

  return 1;
}

double sub_6C6280(uint64_t *a1, uint64_t *a2, __n128 *a3, uint64_t *a4)
{
  sub_6CA4B8(a3, &v23);
  v8 = v23.n128_u64[0];
  sub_6CA4B8(a3, &v23);
  v9 = v23.n128_i64[1];
  if (sub_6CA854(a3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = a2[126];
  }

  else
  {
    v10 = sub_6CA854(a3);
  }

  v11 = sub_6C7D24(a3);
  v12 = *a1;
  v13 = sub_6C8FD0(a3);
  if (v11)
  {
    v14 = sub_67A3D8(v12, v13);
    v9 = 0;
    if (*a4 >= a2[16] + v14)
    {
      v15 = a2[16] + v14;
    }

    else
    {
      v15 = *a4;
    }
  }

  else
  {
    v16 = sub_67A464(v12, v13) + v8;
    v17 = sub_6C6B88(a3);
    v18 = (v17 - sub_6C6E64(a3));
    if (v18 > 3)
    {
      v20 = v18 > 5;
      v19 = (*a1 + 1816);
      if (!v20)
      {
        v19 = (*a1 + 1808);
      }
    }

    else
    {
      v19 = (*a1 + 1800);
    }

    v21 = *v19 + v9;
    if (v21 >= v16)
    {
      v21 = v16;
    }

    if (v10 >= v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = v10;
    }
  }

  sub_681624(&v23, v15, v9, a2[15]);
  *&result = sub_6C9030(a3, &v23).n128_u64[0];
  return result;
}

double sub_6C63E0(uint64_t *a1, uint64_t a2, __n128 *a3, uint64_t *a4)
{
  sub_6CA4B8(a3, &v35);
  v8 = v35.n128_u64[0];
  sub_6CA4B8(a3, &v35);
  v9 = v35.n128_u64[1];
  if (sub_6CA854(a3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a2 + 1008);
    if (!sub_6C7D24(a3))
    {
LABEL_3:
      v11 = *a1;
      v12 = sub_6C8FD0(a3);
      v13 = sub_67A49C(v11, v12) + v9;
      v14 = *a1;
      v15 = sub_6C8FD0(a3);
      v16 = sub_67A3D8(v14, v15) + v9;
      v17 = *a1;
      v18 = sub_6C8FD0(a3);
      v19 = sub_67A464(v17, v18) + v8;
      if (v13 > v19)
      {
        v19 = v13;
      }

      if (v19 >= v10)
      {
        v19 = v10;
      }

      if (v16 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v16;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v10 = sub_6CA854(a3);
    if (!sub_6C7D24(a3))
    {
      goto LABEL_3;
    }
  }

  v21 = *a1;
  if (*(a2 + 1028) == 1)
  {
    v22 = *(v21 + 792);
  }

  else
  {
    v23 = sub_6C8FD0(a3);
    v22 = sub_67A480(v21, v23);
    v21 = *a1;
  }

  v24 = v22 + v8;
  v25 = sub_6C8FD0(a3);
  v26 = *(a2 + 128) + sub_67A3D8(v21, v25);
  v27 = *a1;
  v28 = sub_6C8FD0(a3);
  v29 = sub_67A330(v27, v28);
  if (v26 >= *a4)
  {
    v30 = *a4;
  }

  else
  {
    v30 = v26;
  }

  if (*(a2 + 128) + v29 >= *a4)
  {
    v31 = *a4;
  }

  else
  {
    v31 = *(a2 + 128) + v29;
  }

  if (sub_6F390((a2 + 2064)) && (v32 = *(a2 + 160), v32 - 82 >= 3) && (v32 > 0x27 || ((1 << v32) & 0x8600050000) == 0))
  {
    v33 = *(a2 + 128) + **(a2 + 2064);
  }

  else
  {
    v33 = *(a2 + 1008);
  }

  v9 = 0;
  if (v33 >= v24)
  {
    v33 = v24;
  }

  if (v31 > v33)
  {
    v33 = v31;
  }

  if (v30 >= v33)
  {
    v20 = v33;
  }

  else
  {
    v20 = v30;
  }

LABEL_32:
  sub_681624(&v35, v20, v9, *(a2 + 120));
  *&result = sub_6C9030(a3, &v35).n128_u64[0];
  return result;
}

void sub_6C6608()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A3EC0 = 0u;
  *algn_27A3ED0 = 0u;
  dword_27A3EE0 = 1065353216;
  sub_3A9A34(&xmmword_27A3EC0, v0);
  sub_3A9A34(&xmmword_27A3EC0, v3);
  sub_3A9A34(&xmmword_27A3EC0, __p);
  sub_3A9A34(&xmmword_27A3EC0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A3E98 = 0;
    qword_27A3EA0 = 0;
    qword_27A3E90 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6C6850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A3EA8)
  {
    qword_27A3EB0 = qword_27A3EA8;
    operator delete(qword_27A3EA8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6C68FC(uint64_t a1, unsigned __int8 a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 3;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 226) = 1;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = vnegq_f64(v3);
  *(a1 + 272) = v4;
  *(a1 + 288) = v4;
  *(a1 + 304) = v4;
  *(a1 + 320) = v4;
  *(a1 + 336) = v4;
  *(a1 + 352) = *(a1 + 352) & 0x80 | 4;
  sub_6C6A44(a1, a2, 0, 0, 0);
  return a1;
}

void sub_6C69F0(_Unwind_Exception *a1)
{
  sub_6CAD50(v6);
  sub_34BE0((v1 + 192));
  sub_34BE0(v5);
  sub_11BD8(v4);
  sub_11BD8(v3);
  sub_5ED604(v2);
  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

void sub_6C6A44(uint64_t a1, unsigned __int8 a2, char a3, int a4, int a5)
{
  v7 = *(a1 + 232);
  v8 = *(a1 + 240);
  v6 = (a1 + 232);
  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | a3;
  if (a5)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v16[0] = v10 | v11;
  v16[1] = -1;
  *v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v20 = 0;
  v12 = (v8 - v7) >> 6;
  if (a2 <= v12)
  {
    if (a2 < v12)
    {
      v13 = v7 + (a2 << 6);
      while (v8 != v13)
      {
        v14 = *(v8 - 24);
        if (v14)
        {
          *(v8 - 16) = v14;
          operator delete(v14);
        }

        v15 = *(v8 - 48);
        if (v15)
        {
          *(v8 - 40) = v15;
          operator delete(v15);
        }

        v8 -= 64;
      }

      *(a1 + 240) = v13;
    }
  }

  else
  {
    sub_6CB1CC(v6, a2 - v12, v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }
}

uint64_t sub_6C6B5C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xBF | v2;
  return result;
}

uint64_t sub_6C6BA0(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(a1 + 128);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 120) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 16) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 16) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

BOOL sub_6C6C8C(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = ((v2 - v1) >> 6) - 1;
  v4 = v2 - 64;
  v5 = 1;
  while (1)
  {
    v7 = *v1;
    v1 += 64;
    v6 = v7;
    v8 = *v4;
    v4 -= 64;
    v9 = v8 ^ v6;
    result = (v9 & 2) == 0;
    if ((v9 & 2) != 0)
    {
      break;
    }

    if (v5++ > --v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_6C6D08(uint64_t a1)
{
  v2 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6);
  if (v2 < 4u)
  {
    return 0;
  }

  v3 = v2;
  v5 = *(a1 + 232);
  v4 = *(a1 + 240);
  if (v5 == v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v6 = v4 - v5 - 64;
  if (v6 < 0x40)
  {
    v7 = 0;
    v8 = *(a1 + 232);
    do
    {
LABEL_9:
      v16 = *v8;
      v8 += 64;
      v7 += (v16 >> 1) & 1;
    }

    while (v8 != v4);
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  v11 = (v6 >> 6) + 1;
  v8 = &v5[64 * (v11 & 0x7FFFFFFFFFFFFFELL)];
  v12 = v5 + 64;
  v13 = v11 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v14 = *(v12 - 64);
    v15 = *v12;
    v12 += 128;
    v9 += (v14 >> 1) & 1;
    v10 += (v15 >> 1) & 1;
    v13 -= 2;
  }

  while (v13);
  v7 = v10 + v9;
  if (v11 != (v11 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_10:
  v17 = sub_6C6EF8(v7);
  if (v17 != 2)
  {
    if (v17 == 1)
    {
      v18 = *(a1 + 232);
      if ((*(v18 + 64) & 2) == 0)
      {
        v19 = v18 + (v3 << 6);
        if ((*(v19 - 128) & 2) == 0 && (*(v18 + 128) & 2) == 0)
        {
          return (*(v19 - 192) >> 1) & 1;
        }
      }

      return 1;
    }

    return 0;
  }

  v20 = *(a1 + 232);
  if ((*(v20 + 64) & 2) != 0 && (*(v20 + 128) & 2) != 0)
  {
    return 1;
  }

  v19 = v20 + (v3 << 6);
  if ((*(v19 - 128) & 2) == 0)
  {
    return 0;
  }

  return (*(v19 - 192) >> 1) & 1;
}

unint64_t sub_6C6E64(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 >> 1) & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += (v11 >> 1) & 1;
    v7 += (v12 >> 1) & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C6EF8(unint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6C6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

unint64_t sub_6C7034(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += v13 & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += v11 & 1;
    v7 += v12 & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C70C8(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 & 1) == 0;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = ~*(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += v11 & 1;
    v7 += (v12 & 1) == 0;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C7168(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 >> 2) & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += (v11 >> 2) & 1;
    v7 += (v12 >> 2) & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

BOOL sub_6C71FC(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return sub_6C6EF8(0) != 0;
  }

  v3 = v1 - v2 - 64;
  if (v3 >= 0x40)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 >> 6) + 1;
    v5 = &v2[64 * (v9 & 0x7FFFFFFFFFFFFFELL)];
    v10 = v2 + 64;
    v11 = v9 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      v12 = *(v10 - 64);
      v13 = *v10;
      v10 += 128;
      v7 += (v12 >> 1) & 1;
      v8 += (v13 >> 1) & 1;
      v11 -= 2;
    }

    while (v11);
    v4 = v8 + v7;
    if (v9 == (v9 & 0x7FFFFFFFFFFFFFELL))
    {
      return sub_6C6EF8(v4) != 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = v2;
  }

  do
  {
    v14 = *v5;
    v5 += 64;
    v4 += (v14 >> 1) & 1;
  }

  while (v5 != v1);
  return sub_6C6EF8(v4) != 0;
}

BOOL sub_6C72BC(uint64_t a1)
{
  v3 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v3 == v2)
  {
    v5 = 0;
    return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
  }

  v4 = v2 - v3 - 64;
  if (v4 < 0x40)
  {
    v5 = 0;
    v6 = v3;
    do
    {
LABEL_8:
      v14 = *v6;
      v6 += 64;
      v5 += (v14 >> 1) & 1;
    }

    while (v6 != v2);
    return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
  }

  v7 = 0;
  v8 = 0;
  v9 = (v4 >> 6) + 1;
  v6 = &v3[64 * (v9 & 0x7FFFFFFFFFFFFFELL)];
  v10 = v3 + 64;
  v11 = v9 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v12 = *(v10 - 64);
    v13 = *v10;
    v10 += 128;
    v7 += (v12 >> 1) & 1;
    v8 += (v13 >> 1) & 1;
    v11 -= 2;
  }

  while (v11);
  v5 = v8 + v7;
  if (v9 != (v9 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
}

unint64_t sub_6C7384(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  v3 = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = v4 >> 6;
    v6 = (v2 + 48);
    do
    {
      if ((*(v6 - 6) & 2) != 0 && *v6 - *(v6 - 1) > 1uLL)
      {
        ++v3;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return sub_6B79D0(v3);
}

uint64_t sub_6C73CC(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  result = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = v4 >> 6;
    v6 = (v2 + 48);
    do
    {
      if (*(v6 - 6))
      {
        if (*v6 - *(v6 - 1) <= 1uLL)
        {
          result = result;
        }

        else
        {
          result = (result + 1);
        }
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_6C7414(uint64_t a1)
{
  v1 = *(a1 + 240) - *(a1 + 232);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 >> 6;
  do
  {
    v6 = *(a1 + 232) + v3;
    if (*v6)
    {
      v7 = *(v6 + 48) - *(v6 + 40);
      if (v7 >= 2)
      {
        v4 = sub_6B79D0(v7 - 1) + v4;
      }
    }

    v3 += 64;
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t sub_6C749C(uint64_t a1)
{
  v1 = (a1 + 232);
  v2 = 0;
  v3 = *(a1 + 240) - *(a1 + 232);
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 6;
    do
    {
      v6 = sub_6B79D0(v4);
      if ((*(*v1 + (v6 << 6)) & 1) == 0)
      {
        v7 = sub_6C7650(v1, v6);
        v8 = *(v7 + 40);
        v9 = *(v7 + 48);
        if (v8 != v9)
        {
          while (*v8 != 12)
          {
            if (++v8 == v9)
            {
              if (*(*v1 + (v6 << 6) + 8) != 0x7FFFFFFFFFFFFFFFLL && v2 <= *(*v1 + (v4 << 6) + 8))
              {
                v2 = *(*v1 + (v4 << 6) + 8);
              }

              break;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return v2;
}

BOOL sub_6C7570(uint64_t a1, unsigned __int8 a2)
{
  v2 = (a1 + 232);
  v3 = a2;
  if ((*(*(a1 + 232) + (a2 << 6)) & 1) == 0)
  {
    v4 = sub_6C7650((a1 + 232), a2);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    if (v5 != v6)
    {
      while (*v5 != 12)
      {
        if (++v5 == v6)
        {
          return *(*v2 + (v3 << 6) + 8) != 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return 0;
}

BOOL sub_6C75FC(uint64_t a1, unsigned __int8 a2)
{
  v2 = sub_6C7650((a1 + 232), a2);
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 + 1;
  do
  {
    v6 = *(v5 - 1);
    result = v6 != 12;
  }

  while (v6 != 12 && v5++ != v3);
  return result;
}

unint64_t sub_6C7650(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 6);
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

  return *a1 + (a2 << 6);
}

void sub_6C776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_6C7864(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return 0;
  }

  v4 = v1 - v2 - 64;
  if (v4 < 0x40)
  {
    v5 = 0;
    v6 = v2;
    do
    {
LABEL_8:
      v15 = *v6;
      v6 += 64;
      v5 += (v15 >> 1) & 1;
    }

    while (v6 != v1);
    goto LABEL_9;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v4 >> 6) + 1;
  v6 = &v2[64 * (v10 & 0x7FFFFFFFFFFFFFELL)];
  v11 = v2 + 64;
  v12 = v10 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v11 - 64);
    v14 = *v11;
    v11 += 128;
    v8 += (v13 >> 1) & 1;
    v9 += (v14 >> 1) & 1;
    v12 -= 2;
  }

  while (v12);
  v5 = v9 + v8;
  if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!sub_6C6EF8(v5))
  {
    return 0;
  }

  v16 = *(a1 + 232);
  result = 1;
  v17 = *(a1 + 240) - v16;
  if (v17 && v17 != 64)
  {
    v19 = *v16;
    v18 = v16 + 64;
    v20 = v19 & 2;
    v21 = (v17 >> 6) - 1;
    do
    {
      v22 = *v18;
      v23 = (v20 != 0) & (v22 >> 1);
      if ((*(v18 - 64) & 2) != 0)
      {
        v23 = 0;
      }

      if (v23)
      {
        break;
      }

      v18 += 64;
      v20 = v20 != 0 || (v22 & 2) != 0;
      --v21;
    }

    while (v21);
    return v23 ^ 1u;
  }

  return result;
}

void sub_6C79A0(uint64_t a1)
{
  v2 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6);
  if (v2)
  {
    v3 = 0;
    v4 = v2;
    v5 = 40;
    do
    {
      v6 = *(a1 + 232);
      if (v3 < (*(a1 + 240) - v6) >> 6 && *(v6 + v5) == *(v6 + v5 + 8))
      {
        v7 = 12;
        sub_6C7A4C(a1, v3, &v7);
      }

      ++v3;
      v5 += 64;
    }

    while (v4 != v3);
  }
}

void sub_6C7A4C(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  v6 = *(a1 + 232) + (v5 << 6);
  v7 = *(v6 + 40);
  v9 = *(v6 + 48);
  v8 = (v6 + 40);
  v10 = v7;
  if (v7 != v9)
  {
    v10 = v7;
    while (*v10 != *a3)
    {
      if (++v10 == v9)
      {
        v10 = v9;
        break;
      }
    }
  }

  if (v10 == v9)
  {
    v11 = v8[2];
    if (v9 < v11)
    {
      *v9 = *a3;
      v12 = v9 + 1;
LABEL_9:
      v8[1] = v12;
      return;
    }

    v13 = (v9 - v7);
    v14 = v9 - v7 + 1;
    if (v14 < 0)
    {
      sub_1794();
    }

    v15 = v11 - v7;
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      operator new();
    }

    v17 = v9 - v7;
    *v13 = *a3;
    v12 = v13 + 1;
    memcpy(0, v7, v17);
    *v8 = 0;
    v8[1] = v13 + 1;
    v8[2] = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

    operator delete(v7);
    v8[1] = v12;
  }
}

BOOL sub_6C7BB0(uint64_t a1, int a2)
{
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = vdup_n_s32(a2 == 1);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_27A3EF0, xmmword_27A3F10);
  if (v6.i64[1] == v6.i64[0])
  {
    return 0;
  }

  v8 = 0;
LABEL_7:
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  result = v9 != v10;
  if (v9 != v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = v6.i64[0];
      while (*v12 != *v9)
      {
        if (++v12 == v6.i64[1])
        {
          v12 = v6.i64[1];
          break;
        }
      }

      if (v6.i64[1] == v12)
      {
        return 0;
      }

      v13 = &v12[-v6.i64[0]];
      if (v13 < v8)
      {
        return 0;
      }

      if (v11 <= v13)
      {
        v11 = v13;
      }

      if (++v9 == v10)
      {
        v2 += 64;
        result = 1;
        v8 = v11;
        if (v2 != v3)
        {
          goto LABEL_7;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_6C7CA8(uint64_t a1)
{
  if (*(a1 + 256) == 6)
  {
    return (*(a1 + 352) >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_6C7D54(void *a1)
{
  v2 = a1[29];
  v1 = a1[30];
  if (v2 == v1)
  {
    return 0;
  }

  v4 = v1 - v2 - 64;
  if (v4 < 0x40)
  {
    v5 = 0;
    v6 = v2;
    do
    {
LABEL_7:
      v14 = *v6;
      v6 += 64;
      v5 += (v14 >> 1) & 1;
    }

    while (v6 != v1);
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
  v9 = (v4 >> 6) + 1;
  v6 = &v2[64 * (v9 & 0x7FFFFFFFFFFFFFELL)];
  v10 = v2 + 64;
  v11 = v9 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v12 = *(v10 - 64);
    v13 = *v10;
    v10 += 128;
    v7 += (v12 >> 1) & 1;
    v8 += (v13 >> 1) & 1;
    v11 -= 2;
  }

  while (v11);
  v5 = v8 + v7;
  if (v9 != (v9 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!sub_6C6EF8(v5))
  {
    return 0;
  }

  v15 = a1[29];
  v16 = a1[30] - v15;
  if (v16 && v16 != 64)
  {
    v18 = *v15;
    v17 = v15 + 64;
    v19 = v18 & 2;
    v20 = (v16 >> 6) - 1;
    do
    {
      v21 = *v17;
      if ((*v17 & 2) != 0 && (*(v17 - 64) & 2) == 0 && v19 != 0)
      {
        return 0;
      }

      v17 += 64;
      v19 = v19 != 0 || (v21 & 2) != 0;
    }

    while (--v20);
  }

  return sub_68163C(a1 + 37);
}

uint64_t sub_6C7EA0(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (v1 <= 4)
  {
    if (v1 - 2 < 2)
    {
      return 51;
    }

    if (v1 == 4)
    {
      return 48;
    }

    return 0;
  }

  if (v1 != 6)
  {
    if (v1 == 5)
    {
      return 52;
    }

    return 0;
  }

  if ((*(a1 + 352) & 0x20) != 0)
  {
    return 54;
  }

  else
  {
    return 53;
  }
}

uint64_t sub_6C7F04(void *a1, unsigned __int8 a2)
{
  result = a2;
  v4 = a1[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % a1[1];
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = v8[1];
            if (v10 == a2)
            {
              if (*(v8 + 16) == a2)
              {
                return *(v8 + 17);
              }
            }

            else if ((v10 & v9) != v6)
            {
              return result;
            }

            v8 = *v8;
            if (!v8)
            {
              return result;
            }
          }
        }

        do
        {
          v11 = v8[1];
          if (v11 == a2)
          {
            if (*(v8 + 16) == a2)
            {
              return *(v8 + 17);
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              return result;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void sub_6C7FEC(uint64_t *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = a2;
  v14 = a2;
  if (a2 != a3)
  {
    __p = &v14;
    *(sub_6CBAB0(a1, &v14) + 17) = a3;
    return;
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a2;
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a2;
      if (v4 <= a2)
      {
        v7 = a2 % a1[1];
      }
    }

    else
    {
      v7 = (v4 - 1) & a2;
    }

    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        if (v6.u32[0] < 2uLL)
        {
          v10 = v4 - 1;
          while (1)
          {
            v12 = *(v9 + 8);
            if (v12 == v5)
            {
              if (*(v9 + 16) == v3)
              {
                goto LABEL_25;
              }
            }

            else if ((v12 & v10) != v7)
            {
              return;
            }

            v9 = *v9;
            if (!v9)
            {
              return;
            }
          }
        }

        do
        {
          v11 = *(v9 + 8);
          if (v11 == v5)
          {
            if (*(v9 + 16) == v3)
            {
LABEL_25:
              sub_24C14(a1, v9, &__p);
              v13 = __p;
              __p = 0;
              if (v13)
              {
                operator delete(v13);
              }

              return;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v7)
            {
              return;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }
}

void sub_6C8148(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  sub_6C8188(a1, a2);
  *(*(a1 + 232) + (v3 << 6)) |= 0x40u;
}

void sub_6C8188(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1 + 232;
  v3 = (*(a1 + 240) - *(a1 + 232)) >> 6;
  if (v3 <= a2)
  {
    v5 = sub_6B79D0(a2 - v3 + 1);
    if (v5)
    {
      v6 = *(a1 + 240);
      v7 = -256;
      *v8 = 0u;
      v9 = 0u;
      *__p = 0u;
      v11 = 0;
      sub_6C98B0(v2, v6, v5, &v7);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v8[1])
      {
        *&v9 = v8[1];
        operator delete(v8[1]);
      }
    }
  }
}

void *sub_6C8244(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 232);
  v3 = *(a1 + 240) - v2;
  v4 = v2 + (a2 << 6) + 40;
  if (a2 >= (v3 >> 6))
  {
    return &unk_27A3F28;
  }

  else
  {
    return v4;
  }
}

char *sub_6C826C(uint64_t a1, unsigned __int8 a2, _BYTE **a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  v6 = *(a1 + 232) + (v5 << 6);
  v7 = *(v6 + 48);
  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - *a3;

  return sub_6CADD4(v6 + 40, v7, v8, v9, v10);
}

char *sub_6C82CC(uint64_t a1, unsigned __int8 a2, char *a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  v6 = *(a1 + 232) + (v5 << 6);
  v9 = *(v6 + 40);
  v7 = v6 + 40;
  v8 = v9;

  return sub_6C8324(v7, v8, a3);
}

char *sub_6C8324(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 1;
      return v4;
    }

    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
      *(a1 + 8) = v6 + 1;
      if (v6 == v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = 0;
      *(a1 + 8) = 0;
      if (__src == -1)
      {
LABEL_19:
        v16 = v4 <= a3 && v9 > a3;
        *v4 = a3[v16];
        return v4;
      }
    }

    memmove(__src + 1, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_19;
  }

  v10 = *a1;
  v11 = &v6[-*a1 + 1];
  if (v11 < 0)
  {
    sub_1794();
  }

  v12 = v7 - v10;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    operator new();
  }

  v14 = (__src - v10);
  if (__src == v10)
  {
    operator new();
  }

  *v14 = *a3;
  memcpy(v14 + 1, __src, *(a1 + 8) - __src);
  v17 = *a1;
  v18 = &v14[*(a1 + 8) - v4 + 1];
  *(a1 + 8) = v4;
  v19 = &v14[v17 - v4];
  memcpy(v19, v17, v4 - v17);
  v20 = *a1;
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  return v14;
}

void sub_6C8520(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_6C8538(uint64_t a1, unsigned __int8 a2, unint64_t a3, unint64_t a4)
{
  v6 = a2 << 6;
  v7 = sub_6C85A4((*(a1 + 232) + v6 + 40), a3);
  result = sub_6C85A4((*(a1 + 232) + v6 + 40), a4);
  v9 = *v7;
  *v7 = *result;
  *result = v9;
  return result;
}

unint64_t sub_6C85A4(void *a1, unint64_t a2)
{
  if (a1[1] - *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, a1[1] - *a1);
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

  return *a1 + a2;
}

void sub_6C86BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_6C879C(void *result, unsigned __int8 a2, unsigned __int8 *a3)
{
  v3 = result[29];
  if (a2 < ((result[30] - v3) >> 6))
  {
    v4 = v3 + (a2 << 6);
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    v7 = v4 + 40;
    if (v6 != v5)
    {
      while (*v6 != *a3)
      {
        if (++v6 == v5)
        {
          v6 = v5;
          break;
        }
      }
    }

    if (v5 != v6)
    {
      v8 = v5 - (v6 + 1);
      if (v5 != v6 + 1)
      {
        result = memmove(v6, v6 + 1, v5 - (v6 + 1));
      }

      *(v7 + 8) = &v6[v8];
    }
  }

  return result;
}

char *sub_6C8830(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  result = (*(a1 + 232) + (v5 << 6) + 40);
  if (result != a3)
  {
    v7 = *a3;
    v8 = *(a3 + 8);
    v9 = v8 - *a3;

    return sub_384B90(result, v7, v8, v9);
  }

  return result;
}

char **sub_6C88A4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6);
  result = sub_6B79D0(0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (v4 >= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 8;
    v9 = 40;
    do
    {
      v10 = *a2;
      v11 = (*a2 + v8 - 8);
      sub_6C8188(a1, v7);
      result = (*(a1 + 232) + v9);
      if (result != v11)
      {
        result = sub_384B90(result, *v11, *(v10 + v8), *(v10 + v8) - *v11);
      }

      ++v7;
      v8 += 24;
      v9 += 64;
    }

    while (v6 != v7);
  }

  return result;
}

BOOL sub_6C8980(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 64;
  do
  {
    v4 = *(v3 - 24);
    v5 = *(v3 - 16);
    result = v4 != v5;
    v7 = v4 != v5 || v3 == v1;
    v3 += 64;
  }

  while (!v7);
  return result;
}

void sub_6C89B4(uint64_t *a1, unsigned __int8 a2, int a3)
{
  if (!a2)
  {
    return;
  }

  v5 = a1[30];
  if (a3)
  {
    v20 = -256;
    *v21 = 0u;
    v22 = 0u;
    *__p = 0u;
    v24 = 0;
    sub_6C98B0((a1 + 29), v5, a2, &v20);
    goto LABEL_33;
  }

  v6 = a1[29];
  v7 = v5 - v6;
  if ((v7 & 0x3FC0) == 0)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = (v7 >> 6);
  do
  {
    v10 = a1[1];
    if (!*&v10)
    {
      goto LABEL_26;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (*&v10 <= v8)
      {
        v12 = v8 % a1[1];
      }
    }

    else
    {
      v12 = (*&v10 + 255) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_26:
      v18 = sub_6B59E0(a2 + v8);
      goto LABEL_27;
    }

    if (v11.u32[0] < 2uLL)
    {
      v15 = *&v10 - 1;
      while (1)
      {
        v16 = v14[1];
        if (v16 == v8)
        {
          if (v8 == *(v14 + 16))
          {
            goto LABEL_30;
          }
        }

        else if ((v16 & v15) != v12)
        {
          goto LABEL_26;
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
      v17 = v14[1];
      if (v17 == v8)
      {
        break;
      }

      if (v17 >= *&v10)
      {
        v17 %= *&v10;
      }

      if (v17 != v12)
      {
        goto LABEL_26;
      }

LABEL_21:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    if (v8 != *(v14 + 16))
    {
      goto LABEL_21;
    }

LABEL_30:
    v19 = *(v14 + 17);
    if (v19 != 255)
    {
      v18 = v19 + a2;
LABEL_27:
      sub_6C7FEC(a1, v8, v18);
    }

    ++v8;
  }

  while (v8 != v9);
  v6 = a1[29];
LABEL_32:
  v20 = -256;
  *v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v24 = 0;
  sub_6C98B0((a1 + 29), v6, a2, &v20);
LABEL_33:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21[1])
  {
    *&v22 = v21[1];
    operator delete(v21[1]);
  }
}

void sub_6C8C0C(uint64_t a1, unsigned __int8 a2, const void ***a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = (sub_6CBDF8((a1 + 40), &v5) + 3);
  if (v4 != a3)
  {
    sub_74300(v4, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  }
}

uint64_t sub_6C8C84(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(a1 + 48);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 40) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 16) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 16) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

uint64_t *sub_6C8D70(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % *(a1 + 48);
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*(a1 + 40) + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 16) == a2)
        {
          return (v6 + 3);
        }
      }

      else if ((v8 & v7) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v10 = v6[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= v2)
    {
      v10 %= v2;
    }

    if (v10 != v4)
    {
      goto LABEL_22;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_16;
  }

  return (v6 + 3);
}

void sub_6C8E80(uint64_t a1, char ***a2)
{
  v2 = (a1 + 168);
  if (v2 != a2)
  {
    sub_5FC404(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

void sub_6C8EB0(uint64_t a1, char ***a2)
{
  v2 = (a1 + 192);
  if (v2 != a2)
  {
    sub_5FC404(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

uint64_t sub_6C8F04(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xFB | v2;
  return result;
}

uint64_t sub_6C8F30(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xF7 | v2;
  return result;
}

uint64_t sub_6C8F5C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xEF | v2;
  return result;
}

uint64_t sub_6C8F7C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xDF | v2;
  return result;
}

uint64_t sub_6C8FB0(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xFD | v2;
  return result;
}

__n128 sub_6C8FE4(uint64_t a1, __n128 *a2)
{
  v2 = *a2;
  *(a1 + 288) = a2[1].n128_u64[0];
  *(a1 + 272) = v2;
  v3 = *a2;
  *(a1 + 312) = a2[1].n128_u64[0];
  *(a1 + 296) = v3;
  result = *a2;
  *(a1 + 336) = a2[1].n128_u64[0];
  *(a1 + 320) = result;
  return result;
}

__n128 sub_6C901C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[18].n128_u64[0] = a2[1].n128_u64[0];
  a1[17] = result;
  return result;
}

__n128 sub_6C9030(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 312) = a2[1].n128_u64[0];
  *(a1 + 296) = result;
  return result;
}

__n128 sub_6C9048(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[21].n128_u64[0] = a2[1].n128_u64[0];
  a1[20] = result;
  return result;
}

uint64_t sub_6C9064(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 223) = *(a2 + 3);
  *(result + 220) = v2;
  return result;
}

uint64_t sub_6C90F0(uint64_t result, unsigned __int8 a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(*(result + 232) + (a2 << 6)) = *(*(result + 232) + (a2 << 6)) & 0xFD | v3;
  return result;
}

uint64_t sub_6C911C(uint64_t result, unsigned __int8 a2, int a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(*(result + 232) + (a2 << 6)) = *(*(result + 232) + (a2 << 6)) & 0xFB | v3;
  return result;
}

void sub_6C9148(uint64_t a1, unsigned __int8 a2, int a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(*(a1 + 232) + (v5 << 6)) = *(*(a1 + 232) + (v5 << 6)) & 0xEF | v6;
}

void sub_6C91BC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  *(*(a1 + 232) + (v5 << 6)) |= 0x20u;
  *(*(a1 + 232) + (v5 << 6) + 1) = a3;
}

void sub_6C922C(uint64_t a1, unsigned __int8 a2, int a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  if (a3)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(*(a1 + 232) + (v5 << 6)) = *(*(a1 + 232) + (v5 << 6)) & 0xF7 | v6;
}

uint64_t sub_6C9288(uint64_t result, unsigned __int8 a2, int a3)
{
  v3 = *(result + 232);
  if (a2 < ((*(result + 240) - v3) >> 6))
  {
    if (a3)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + (a2 << 6)) = v4 & 0x80 | *(v3 + (a2 << 6)) & 0x7F;
  }

  return result;
}

BOOL sub_6C92BC(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v1 != v2)
  {
    while (((*v1 ^ (*v1 >> 1)) & 1) == 0)
    {
      v1 += 64;
      if (v1 == v2)
      {
        v1 = *(a1 + 240);
        return v1 != v2;
      }
    }
  }

  return v1 != v2;
}

void sub_6C92F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v5 = *(a1 + 240);
  v4 = (a1 + 232);
  v6 = *(a2 + 240) - *(a2 + 232);
  v7 = (v5 - v3) >> 6;
  if (v6 >> 6 <= v7)
  {
    if (v6 >> 6 < v7)
    {
      v9 = v3 + v6;
      while (v5 != v9)
      {
        v10 = *(v5 - 24);
        if (v10)
        {
          *(v5 - 16) = v10;
          operator delete(v10);
        }

        v11 = *(v5 - 48);
        if (v11)
        {
          *(v5 - 40) = v11;
          operator delete(v11);
        }

        v5 -= 64;
      }

      *(a1 + 240) = v9;
    }
  }

  else
  {
    sub_6CB464((a1 + 232), (v6 >> 6) - v7);
  }

  v12 = *(a2 + 240) - *(a2 + 232);
  if (v12)
  {
    v13 = 0;
    v14 = v12 >> 6;
    do
    {
      *(*v4 + v13) = *(*v4 + v13) & 0xFE | *(*(a2 + 232) + v13) & 1;
      v13 += 64;
      --v14;
    }

    while (v14);
  }
}

void sub_6C93D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v5 = *(a1 + 240);
  v4 = (a1 + 232);
  v6 = *(a2 + 240) - *(a2 + 232);
  v7 = (v5 - v3) >> 6;
  if (v6 >> 6 <= v7)
  {
    if (v6 >> 6 < v7)
    {
      v9 = v3 + v6;
      while (v5 != v9)
      {
        v10 = *(v5 - 24);
        if (v10)
        {
          *(v5 - 16) = v10;
          operator delete(v10);
        }

        v11 = *(v5 - 48);
        if (v11)
        {
          *(v5 - 40) = v11;
          operator delete(v11);
        }

        v5 -= 64;
      }

      *(a1 + 240) = v9;
    }
  }

  else
  {
    sub_6CB464((a1 + 232), (v6 >> 6) - v7);
  }

  v12 = *(a2 + 240) - *(a2 + 232);
  if (v12)
  {
    v13 = 0;
    v14 = v12 >> 6;
    do
    {
      *(*v4 + v13) = *(*v4 + v13) & 0xFD | *(*(a2 + 232) + v13) & 2;
      v13 += 64;
      --v14;
    }

    while (v14);
  }
}

void sub_6C94B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v5 = *(a1 + 240);
  v4 = (a1 + 232);
  v6 = *(a2 + 240) - *(a2 + 232);
  v7 = (v5 - v3) >> 6;
  if (v6 >> 6 <= v7)
  {
    if (v6 >> 6 < v7)
    {
      v9 = v3 + v6;
      while (v5 != v9)
      {
        v10 = *(v5 - 24);
        if (v10)
        {
          *(v5 - 16) = v10;
          operator delete(v10);
        }

        v11 = *(v5 - 48);
        if (v11)
        {
          *(v5 - 40) = v11;
          operator delete(v11);
        }

        v5 -= 64;
      }

      *(a1 + 240) = v9;
    }
  }

  else
  {
    sub_6CB464((a1 + 232), (v6 >> 6) - v7);
  }

  v12 = *(a2 + 240) - *(a2 + 232);
  if (v12)
  {
    v13 = 0;
    v14 = v12 >> 6;
    do
    {
      *(*v4 + v13) = *(*v4 + v13) & 0xFD | (2 * (*(*(a2 + 232) + v13) & 1));
      v13 += 64;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_6C9598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v3 == v2)
  {
    return 0;
  }

  v5 = *(a2 + 232);
  v4 = *(a2 + 240);
  if (v5 == v4)
  {
    return 0;
  }

  if (*v3)
  {
    v6 = *v5 ^ 1;
    if ((*(v2 - 64) & 1) == 0)
    {
      return v6 & 1;
    }
  }

  else
  {
    v6 = 0;
    if ((*(v2 - 64) & 1) == 0)
    {
      return v6 & 1;
    }
  }

  return (v6 | *(v4 - 64) ^ 1) & 1;
}

BOOL sub_6C9600(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = *(v1 - 64) & 6;
  return (*v2 & 6) == 4 || v3 == 4;
}

void sub_6C9634(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = *(a1 + 240);
  v4 = v1;
  if (v1 != v2)
  {
    v3 = (v2 - 4);
    if (v2 - 4 > v1)
    {
      do
      {
        sub_6CB66C(&v4, &v3);
        v3 -= 64;
        v4 += 4;
      }

      while (v4 < v3);
    }
  }
}

uint64_t sub_6C9694(uint64_t a1)
{
  v1 = (a1 + 232);
  v2 = (*(a1 + 240) - *(a1 + 232)) >> 6;
  if (v2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 >> 1) - 1;
  do
  {
    v5 = *sub_6C7650(v1, v3);
    result = (v5 >> 1) & 1;
    if ((v5 & 2) != 0)
    {
      break;
    }
  }

  while (v4 != v3++);
  return result;
}

uint64_t sub_6C9718(uint64_t a1)
{
  v1 = (a1 + 232);
  v2 = *(a1 + 240) - *(a1 + 232);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 >> 6;
  v4 = v3 >> 1;
  v5 = v3 - 1;
  do
  {
    v6 = *sub_6C7650(v1, v4);
    result = (v6 >> 1) & 1;
    if ((v6 & 2) != 0)
    {
      break;
    }
  }

  while (v5 != v4++);
  return result;
}

uint64_t sub_6C9794(uint64_t a1)
{
  v1 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6) - 1;

  return sub_6B59E0(v1);
}

void sub_6C97D0(uint64_t a1, unsigned __int8 a2)
{
  if (a2)
  {
    v4 = *(a1 + 240);
    v5 = -256;
    *v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    v9 = 0;
    sub_6C98B0(a1 + 232, v4, a2, &v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v6[1])
    {
      *&v7 = v6[1];
      operator delete(v6[1]);
    }
  }

  *(a1 + 162) += a2;
}

char *sub_6C98B0(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a3 <= (v8 - v9) >> 6)
    {
      v14 = (v9 - a2) >> 6;
      v15 = a3;
      if (a3 <= v14)
      {
        goto LABEL_16;
      }

      v15 = (v9 - a2) >> 6;
      v16 = v9 + ((a3 - v14) << 6);
      v17 = *(a1 + 8);
      v18 = (a3 << 6) - (v14 << 6);
      do
      {
        sub_5F2BA0(v17, a4);
        v17 += 64;
        v18 -= 64;
      }

      while (v18);
      *(a1 + 8) = v16;
      if (v9 != v4)
      {
LABEL_16:
        sub_6CB778(a1, v4, v9, &v4[64 * a3]);
        if (v4 <= a4)
        {
          if (*(a1 + 8) <= a4)
          {
            v19 = 0;
          }

          else
          {
            v19 = a3;
          }

          a4 += v19 << 6;
        }

        v20 = v4;
        do
        {
          *v20 = *a4;
          if (v20 != a4)
          {
            sub_384B90(v20 + 2, *(a4 + 16), *(a4 + 24), *(a4 + 24) - *(a4 + 16));
            sub_384B90(v20 + 5, *(a4 + 40), *(a4 + 48), *(a4 + 48) - *(a4 + 40));
          }

          v20 += 64;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + ((v9 - *a1) >> 6);
      if (v11 >> 58)
      {
        sub_1794();
      }

      v12 = v8 - v10;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v33 = a1;
      if (v13)
      {
        if (!(v13 >> 58))
        {
          operator new();
        }

        sub_1808();
      }

      v21 = (a2 - v10) >> 6 << 6;
      __p = 0;
      v30 = v21;
      v31 = v21;
      v32 = 0;
      v22 = a3 << 6;
      v23 = v21 + (a3 << 6);
      do
      {
        sub_5F2BA0(v21, a4);
        v21 += 64;
        v22 -= 64;
      }

      while (v22);
      v31 = v23;
      v4 = sub_6CB8DC(a1, &__p, v4);
      v24 = v30;
      while (1)
      {
        v25 = v31;
        if (v31 == v24)
        {
          break;
        }

        v31 -= 64;
        v26 = *(v25 - 24);
        if (v26)
        {
          *(v25 - 16) = v26;
          operator delete(v26);
        }

        v27 = *(v25 - 48);
        if (v27)
        {
          *(v25 - 40) = v27;
          operator delete(v27);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v4;
}

void sub_6C9AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6CB3EC(va);
  _Unwind_Resume(a1);
}

void sub_6C9AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6CB3EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6C9B14(uint64_t result, unsigned __int8 a2)
{
  v2 = a2;
  v3 = *(result + 232);
  v4 = (result + 232);
  v5 = *(result + 240) - v3;
  if (a2 < (v5 >> 6))
  {
    LOBYTE(v6) = a2 + 1;
    v7 = (a2 + 1);
    v8 = (v5 >> 6);
    if (v8 <= v7)
    {
      v9 = (a2 + 1);
    }

    else
    {
      v9 = v8;
    }

    if (v7 < v8)
    {
      v10 = result;
      v11 = a2;
      while (1)
      {
        v12 = v6;
        v13 = v10[1];
        if (!v13)
        {
          goto LABEL_27;
        }

        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v6 = v6;
          if (v13 <= v6)
          {
            v6 = v6 % v10[1];
          }
        }

        else
        {
          v6 = (v13 - 1) & v6;
        }

        v15 = *(*v10 + 8 * v6);
        if (!v15 || (v16 = *v15) == 0)
        {
LABEL_27:
          v20 = v12 - 1;
          goto LABEL_28;
        }

        if (v14.u32[0] < 2uLL)
        {
          v17 = v13 - 1;
          while (1)
          {
            v18 = v16[1];
            if (v18 == v12)
            {
              if (v12 == *(v16 + 16))
              {
                goto LABEL_31;
              }
            }

            else if ((v18 & v17) != v6)
            {
              goto LABEL_27;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_27;
            }
          }
        }

        while (1)
        {
          v19 = v16[1];
          if (v19 == v12)
          {
            break;
          }

          if (v19 >= v13)
          {
            v19 %= v13;
          }

          if (v19 != v6)
          {
            goto LABEL_27;
          }

LABEL_22:
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        if (v12 != *(v16 + 16))
        {
          goto LABEL_22;
        }

LABEL_31:
        v21 = *(v16 + 17);
        if (v21 != 255 && v11 < v21)
        {
          v20 = v21 - 1;
LABEL_28:
          sub_6C7FEC(v10, v12, v20);
        }

        LOBYTE(v6) = v12 + 1;
        if (v9 == (v12 + 1))
        {
          v3 = *v4;
          break;
        }
      }
    }

    return sub_6C9CBC(v4, v3 + (v2 << 6));
  }

  return result;
}

uint64_t sub_6C9CBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (a2 + 64 == v4)
  {
    v6 = a2;
  }

  else
  {
    v5 = a2;
    do
    {
      *v5 = *(v5 + 64);
      v8 = *(v5 + 16);
      if (v8)
      {
        *(v5 + 24) = v8;
        operator delete(v8);
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
      }

      *(v5 + 16) = *(v5 + 80);
      *(v5 + 32) = *(v5 + 96);
      *(v5 + 88) = 0;
      *(v5 + 96) = 0;
      *(v5 + 80) = 0;
      v9 = *(v5 + 40);
      if (v9)
      {
        *(v5 + 48) = v9;
        operator delete(v9);
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
      }

      *(v5 + 40) = *(v5 + 104);
      *(v5 + 56) = *(v5 + 120);
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      *(v5 + 104) = 0;
      v6 = v5 + 64;
      v7 = v5 + 128;
      v5 += 64;
    }

    while (v7 != v4);
    v4 = *(a1 + 8);
  }

  while (v4 != v6)
  {
    v10 = *(v4 - 24);
    if (v10)
    {
      *(v4 - 16) = v10;
      operator delete(v10);
    }

    v11 = *(v4 - 48);
    if (v11)
    {
      *(v4 - 40) = v11;
      operator delete(v11);
    }

    v4 -= 64;
  }

  *(a1 + 8) = v6;
  return a2;
}

unint64_t sub_6C9DC8(void *a1)
{
  v2 = a1[29];
  v3 = a1[30];
  if (v2 == v3)
  {
LABEL_25:
    v14 = a1[29];
    if (v2 != a1[30] || v14 == v2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    LODWORD(v4) = -1;
    do
    {
      v4 = (v4 + 1);
      if (*v2)
      {
        v5 = sub_6B59E0(v4);
        v6 = a1[11];
        if (v6)
        {
          v7 = vcnt_s8(v6);
          v7.i16[0] = vaddlv_u8(v7);
          if (v7.u32[0] > 1uLL)
          {
            v8 = v5;
            if (v6 <= v5)
            {
              v8 = v5 % a1[11];
            }
          }

          else
          {
            v8 = (v6 - 1) & v5;
          }

          v9 = *(a1[10] + 8 * v8);
          if (v9)
          {
            v10 = *v9;
            if (v10)
            {
              if (v7.u32[0] < 2uLL)
              {
                v11 = v6 - 1;
                while (1)
                {
                  v12 = v10[1];
                  if (v12 == v5)
                  {
                    if (*(v10 + 16) == v5)
                    {
                      goto LABEL_3;
                    }
                  }

                  else if ((v12 & v11) != v8)
                  {
                    goto LABEL_25;
                  }

                  v10 = *v10;
                  if (!v10)
                  {
                    goto LABEL_25;
                  }
                }
              }

              while (1)
              {
                v13 = v10[1];
                if (v13 == v5)
                {
                  if (*(v10 + 16) == v5)
                  {
                    goto LABEL_3;
                  }
                }

                else
                {
                  if (v13 >= v6)
                  {
                    v13 %= v6;
                  }

                  if (v13 != v8)
                  {
                    goto LABEL_25;
                  }
                }

                v10 = *v10;
                if (!v10)
                {
                  goto LABEL_25;
                }
              }
            }
          }
        }

        goto LABEL_25;
      }

LABEL_3:
      v2 += 64;
    }

    while (v2 != v3);
    v2 = v3;
    v14 = a1[29];
    if (v3 != a1[30] || v14 == v3)
    {
      goto LABEL_30;
    }
  }

  v18 = v14;
  while ((*v18 & 1) == 0)
  {
    v18 += 64;
    if (v18 == v2)
    {
      goto LABEL_30;
    }
  }

  v2 = v18;
LABEL_30:

  return sub_6C6EF8((v2 - v14) >> 6);
}

unint64_t sub_6C9F58(void *a1)
{
  v2 = sub_6B79D0((a1[30] - a1[29]) >> 6);
  v3 = a1[29];
  v4 = a1[30];
  v5 = v4;
  if (v4 != v3)
  {
    v5 = a1[30];
    v6 = v5;
    while (1)
    {
      v7 = *(v6 - 64);
      v6 -= 64;
      --v2;
      if (v7)
      {
        break;
      }

LABEL_3:
      v5 = v6;
      if (v6 == v3)
      {
        goto LABEL_28;
      }
    }

    v8 = a1[11];
    if (v8)
    {
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = v2;
        if (v8 <= v2)
        {
          v10 = v2 % a1[11];
        }
      }

      else
      {
        v10 = (v8 - 1) & v2;
      }

      v11 = *(a1[10] + 8 * v10);
      if (v11)
      {
        v12 = *v11;
        if (v12)
        {
          if (v9.u32[0] < 2uLL)
          {
            v13 = v8 - 1;
            while (1)
            {
              v15 = v12[1];
              if (v15 == v2)
              {
                if (*(v12 + 16) == v2)
                {
                  goto LABEL_3;
                }
              }

              else if ((v15 & v13) != v10)
              {
                goto LABEL_25;
              }

              v12 = *v12;
              if (!v12)
              {
                goto LABEL_25;
              }
            }
          }

          do
          {
            v14 = v12[1];
            if (v14 == v2)
            {
              if (*(v12 + 16) == v2)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (v14 >= v8)
              {
                v14 %= v8;
              }

              if (v14 != v10)
              {
                break;
              }
            }

            v12 = *v12;
          }

          while (v12);
        }
      }
    }
  }

LABEL_25:
  if (v5 == v3)
  {
    do
    {
LABEL_28:
      if (v4 == v3)
      {
        v5 = a1[29];
        goto LABEL_31;
      }

      v16 = *(v4 - 64);
      v4 -= 64;
    }

    while ((v16 & 1) == 0);
    v5 = v4 + 64;
  }

LABEL_31:

  return sub_6C6EF8(((v5 - v3) >> 6) - 1);
}

uint64_t sub_6CA0D8(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v4 = *(a1 + 232);
  while (1)
  {
    v5 = *v2;
    if (*(a1 + 240) - v4) >> 6 > v5 && (*(v4 + (v5 << 6)))
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_6CA128(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v4 = *(a1 + 232);
  while (1)
  {
    v5 = *v2;
    if ((*(a1 + 240) - v4) >> 6 > v5 && (*(v4 + (v5 << 6)) & 2) != 0)
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_6CA178(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6);
  if (sub_6B79D0((*(a2 + 240) - *(a2 + 232)) >> 6) != v4)
  {
    v17 = *(v3 + 232);
    v16 = *(v3 + 240);
    if (v17 == v16)
    {
      v19 = 0;
      goto LABEL_19;
    }

    v18 = v16 - v17 - 64;
    if (v18 >= 0x40)
    {
      v21 = 0;
      v22 = 0;
      v23 = (v18 >> 6) + 1;
      v20 = &v17[64 * (v23 & 0x7FFFFFFFFFFFFFELL)];
      v24 = v17 + 64;
      v25 = v23 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v26 = *(v24 - 64);
        v27 = *v24;
        v24 += 128;
        v21 += (v26 >> 1) & 1;
        v22 += (v27 >> 1) & 1;
        v25 -= 2;
      }

      while (v25);
      v19 = v22 + v21;
      if (v23 == (v23 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_19:
        if ((*(v3 + 240) - *(v3 + 232)) >> 6 == sub_6C6EF8(v19))
        {
          return 0;
        }

        v30 = *(a2 + 232);
        v29 = *(a2 + 240);
        if (v30 == v29)
        {
          v32 = 0;
          goto LABEL_28;
        }

        v31 = v29 - v30 - 64;
        if (v31 >= 0x40)
        {
          v34 = 0;
          v35 = 0;
          v36 = (v31 >> 6) + 1;
          v33 = &v30[64 * (v36 & 0x7FFFFFFFFFFFFFELL)];
          v37 = v30 + 64;
          v38 = v36 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            v39 = *(v37 - 64);
            v40 = *v37;
            v37 += 128;
            v34 += (v39 >> 1) & 1;
            v35 += (v40 >> 1) & 1;
            v38 -= 2;
          }

          while (v38);
          v32 = v35 + v34;
          if (v36 == (v36 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_28:
            if ((*(a2 + 240) - *(a2 + 232)) >> 6 != sub_6C6EF8(v32))
            {
              v42 = sub_6B79D0((*(v3 + 240) - *(v3 + 232)) >> 6);
              if (sub_6B79D0((*(a2 + 240) - *(a2 + 232)) >> 6) <= v42)
              {
                v43 = a2;
              }

              else
              {
                v43 = v3;
              }

              v44 = sub_6B79D0((*(v3 + 240) - *(v3 + 232)) >> 6);
              if (sub_6B79D0((*(a2 + 240) - *(a2 + 232)) >> 6) > v44)
              {
                v3 = a2;
              }

              v45 = sub_6B79D0((*(v3 + 240) - *(v3 + 232)) >> 6);
              v46 = sub_6B79D0((*(v43 + 240) - *(v43 + 232)) >> 6);
              v47 = *(v3 + 232);
              if ((*v47 & 2) != 0)
              {
                v55 = *(v43 + 232);
                v54 = *(v43 + 240);
                if (v55 != v54)
                {
                  v56 = v55 + 64;
                  do
                  {
                    v57 = *v47;
                    v47 += 64;
                    result = ((v57 ^ *(v56 - 64)) & 2) == 0;
                    if (((v57 ^ *(v56 - 64)) & 2) != 0)
                    {
                      break;
                    }

                    v53 = v56 == v54;
                    v56 += 64;
                  }

                  while (!v53);
                  return result;
                }
              }

              else
              {
                if ((*(*(v3 + 240) - 64) & 2) == 0)
                {
                  return 0;
                }

                v49 = *(v43 + 232);
                v48 = *(v43 + 240);
                if (v49 != v48)
                {
                  v50 = &v47[64 * (v45 - v46)];
                  v51 = v49 + 64;
                  do
                  {
                    v52 = *v50;
                    v50 += 64;
                    result = ((v52 ^ *(v51 - 64)) & 2) == 0;
                    if (((v52 ^ *(v51 - 64)) & 2) != 0)
                    {
                      break;
                    }

                    v53 = v51 == v48;
                    v51 += 64;
                  }

                  while (!v53);
                  return result;
                }
              }

              return 1;
            }

            return 0;
          }
        }

        else
        {
          v32 = 0;
          v33 = *(a2 + 232);
        }

        do
        {
          v41 = *v33;
          v33 += 64;
          v32 += (v41 >> 1) & 1;
        }

        while (v33 != v29);
        goto LABEL_28;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(v3 + 232);
    }

    do
    {
      v28 = *v20;
      v20 += 64;
      v19 += (v28 >> 1) & 1;
    }

    while (v20 != v16);
    goto LABEL_19;
  }

  v5 = *(v3 + 232);
  v6 = *(v3 + 240);
  v7 = *(a2 + 232);
  if (v6 - v5 != *(a2 + 240) - v7)
  {
    return 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  v8 = ((v6 - v5) >> 6) - 1;
  do
  {
    v10 = *v5;
    v5 += 64;
    v9 = v10;
    v11 = *v7;
    v7 += 64;
    v12 = v11 ^ v9;
    result = ((v11 ^ v9) & 2) == 0;
    v15 = v8-- != 0;
  }

  while ((v12 & 2) == 0 && v15);
  return result;
}

__n128 sub_6CA4B8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[17];
  *a2 = result;
  a2[1].n128_u64[0] = a1[18].n128_u64[0];
  return result;
}

__n128 sub_6CA4CC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(a1 + 312);
  result = *(a1 + 296);
  *a2 = result;
  return result;
}

__n128 sub_6CA4EC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[20];
  *a2 = result;
  a2[1].n128_u64[0] = a1[21].n128_u64[0];
  return result;
}

uint64_t sub_6CA524(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_6CA640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_6CA768(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(a1 + 88);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 80) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 16) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 16) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

uint64_t *sub_6CA868(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v2 = (a1 + 232);
  if (a2 >= ((v4 - v3) >> 6))
  {
    return &qword_27A3F40;
  }

  else
  {
    return (sub_6C7650(v2, a2) + 16);
  }
}

char *sub_6CA8A8(uint64_t a1, unsigned __int8 a2, _BYTE **a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  *(*(a1 + 232) + (v5 << 6) + 24) = *(*(a1 + 232) + (v5 << 6) + 16);
  sub_6C8188(a1, v5);
  v6 = (*(a1 + 232) + (v5 << 6) + 16);
  v7 = *v6;
  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - *a3;

  return sub_6CADD4(v6, v7, v8, v9, v10);
}

char *sub_6CA924(uint64_t a1, unsigned __int8 a2, _BYTE **a3)
{
  v5 = a2;
  sub_6C8188(a1, a2);
  v6 = *(a1 + 232) + (v5 << 6);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  v10 = *a3;
  v11 = a3[1];
  v12 = v11 - *a3;

  return sub_6CADD4(v7, v8, v10, v11, v12);
}

uint64_t sub_6CA9B0(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 64;
  if (v3 <= 0x3F)
  {
    LODWORD(result) = 0;
    v5 = v2;
    do
    {
LABEL_12:
      if (*(v5 + 16) == *(v5 + 24))
      {
        result = result;
      }

      else
      {
        result = (result + 1);
      }

      v5 += 64;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = v2 + ((v8 & 0x7FFFFFFFFFFFFFELL) << 6);
  v9 = (v2 + 88);
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    if (*(v9 - 9) != *(v9 - 8))
    {
      ++v6;
    }

    if (*(v9 - 1) != *v9)
    {
      ++v7;
    }

    v9 += 16;
    v10 -= 2;
  }

  while (v10);
  result = (v7 + v6);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_6CAA4C(uint64_t a1)
{
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  v1 = (a1 + 232);
  if (v2 != v3)
  {
    while ((*v2 & 8) == 0)
    {
      v2 += 64;
      if (v2 == v3)
      {
        v2 = *(a1 + 240);
        goto LABEL_16;
      }
    }

    if (v2 != v3)
    {
      v5 = v2 + 64;
      if (v2 + 64 != v3)
      {
        do
        {
          if ((*v5 & 8) == 0)
          {
            *v2 = *v5;
            v6 = *(v2 + 16);
            if (v6)
            {
              *(v2 + 24) = v6;
              operator delete(v6);
              *(v2 + 16) = 0;
              *(v2 + 24) = 0;
              *(v2 + 32) = 0;
            }

            *(v2 + 16) = *(v5 + 16);
            *(v2 + 32) = *(v5 + 32);
            *(v5 + 16) = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            v7 = *(v2 + 40);
            if (v7)
            {
              *(v2 + 48) = v7;
              operator delete(v7);
              *(v2 + 40) = 0;
              *(v2 + 48) = 0;
              *(v2 + 56) = 0;
            }

            *(v2 + 40) = *(v5 + 40);
            *(v2 + 56) = *(v5 + 56);
            *(v5 + 40) = 0;
            *(v5 + 48) = 0;
            *(v5 + 56) = 0;
            v2 += 64;
          }

          v5 += 64;
        }

        while (v5 != v3);
        v3 = *(a1 + 240);
      }
    }
  }

LABEL_16:

  return sub_6CAB6C(v1, v2, v3);
}

uint64_t sub_6CAB6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v18 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        v11 = v9 + v8;
        v12 = (v7 + v8);
        *(v7 + v8) = *(v9 + v8);
        v14 = (v7 + v8 + 16);
        v13 = *v14;
        if (*v14)
        {
          v12[3] = v13;
          operator delete(v13);
          *v14 = 0;
          *(v7 + v8 + 24) = 0;
          *(v7 + v8 + 32) = 0;
        }

        *v14 = *(v11 + 16);
        v12[4] = *(v11 + 32);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        v17 = v12[5];
        v16 = v12 + 5;
        v15 = v17;
        if (v17)
        {
          *(v7 + v8 + 48) = v15;
          operator delete(v15);
          *v16 = 0;
          v16[1] = 0;
          v16[2] = 0;
        }

        v10 = (v9 + v8);
        *v16 = *(v9 + v8 + 40);
        *(v7 + v8 + 56) = *(v9 + v8 + 56);
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
        v7 += 64;
        v9 += 64;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v18 = v7 - v6;
    }

    while (v5 != v18)
    {
      v19 = *(v5 - 24);
      if (v19)
      {
        *(v5 - 16) = v19;
        operator delete(v19);
      }

      v20 = *(v5 - 48);
      if (v20)
      {
        *(v5 - 40) = v20;
        operator delete(v20);
      }

      v5 -= 64;
    }

    a1[1] = v18;
  }

  return a2;
}

unint64_t sub_6CACBC(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 >> 3) & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += (v11 >> 3) & 1;
    v7 += (v12 >> 3) & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

void **sub_6CAD50(void **a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char *sub_6CADD4(uint64_t a1, char *__dst, _BYTE *__src, char *a4, unint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v6 - v7) >= a5)
  {
    v13 = v7 - __dst;
    if ((v7 - __dst) >= a5)
    {
      v17 = &__dst[a5];
      v18 = (v7 - a5);
      v19 = *(a1 + 8);
      if (v7 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_70;
        }

        v18 += a5 & 0x7FFFFFFFFFFFFFE0;
        v19 = (v7 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v20 = (v7 + 16);
        v21 = (v7 + 16 - a5);
        v22 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 32;
        }

        while (v22);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_70:
          do
          {
            v24 = *v18++;
            *v19++ = v24;
          }

          while (v18 != v7);
        }
      }

      *(a1 + 8) = v19;
      if (v7 != v17)
      {
        v25 = __src;
        v26 = a5;
        memmove(v17, __dst, v7 - v17);
        a5 = v26;
        __src = v25;
      }

      v27 = v5;
      v28 = __src;
      v29 = a5;
      goto LABEL_64;
    }

    v14 = &__src[v13];
    v15 = a4 - &__src[v13];
    if (a4 == &__src[v13])
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v40 = &__src[v13];
      if (v15 < 0x20)
      {
        v16 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
        if (v7 - v14 >= 0x20)
        {
          v40 = &v14[v15 & 0xFFFFFFFFFFFFFFE0];
          v16 = (v7 + (v15 & 0xFFFFFFFFFFFFFFE0));
          v41 = (v7 + 16);
          v42 = (v14 + 16);
          v43 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v44 = *v42;
            *(v41 - 1) = *(v42 - 1);
            *v41 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 32;
          }

          while (v43);
          if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_48;
          }
        }
      }

      do
      {
        v54 = *v40++;
        *v16++ = v54;
      }

      while (v40 != a4);
    }

LABEL_48:
    *(a1 + 8) = v16;
    if (v13 < 1)
    {
      return v5;
    }

    v55 = &__dst[a5];
    v56 = &v16[-a5];
    if (&v16[-a5] >= v7)
    {
      v59 = v16;
    }

    else
    {
      v57 = v7 + a5 - v16;
      v58 = v57 >= 0x20 && a5 > 0x1F;
      v59 = v16;
      if (!v58)
      {
        goto LABEL_71;
      }

      v56 += v57 & 0xFFFFFFFFFFFFFFE0;
      v59 = &v16[v57 & 0xFFFFFFFFFFFFFFE0];
      v60 = v16 + 16;
      v61 = &v16[-a5 + 16];
      v62 = v57 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v63 = *v61;
        *(v60 - 1) = *(v61 - 1);
        *v60 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 32;
      }

      while (v62);
      if (v57 != (v57 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_71:
        do
        {
          v64 = *v56++;
          *v59++ = v64;
        }

        while (v56 != v7);
      }
    }

    *(a1 + 8) = v59;
    if (v16 != v55)
    {
      v65 = __src;
      memmove(v55, __dst, v16 - v55);
      __src = v65;
    }

    v27 = v5;
    v28 = __src;
    v29 = v13;
LABEL_64:
    memmove(v27, v28, v29);
    return v5;
  }

  v8 = *a1;
  v9 = v7 - *a1 + a5;
  if (v9 < 0)
  {
    sub_1794();
  }

  v10 = (__dst - v8);
  v11 = v6 - v8;
  if (2 * v11 > v9)
  {
    v9 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v9;
  }

  if (v12)
  {
    operator new();
  }

  v30 = (__dst - v8);
  v31 = &v10[a5];
  if (a5 < 8 || (__dst - &__src[v8]) < 0x20)
  {
    v32 = (__dst - v8);
    v33 = __src;
    goto LABEL_26;
  }

  if (a5 < 0x20)
  {
    v45 = 0;
    goto LABEL_42;
  }

  v45 = a5 & 0x7FFFFFFFFFFFFFE0;
  v46 = (__src + 16);
  v47 = v10 + 16;
  v48 = a5 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v49 = *v46;
    *(v47 - 1) = *(v46 - 1);
    *v47 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 32;
  }

  while (v48);
  if (v45 == a5)
  {
    goto LABEL_27;
  }

  if ((a5 & 0x18) != 0)
  {
LABEL_42:
    v32 = &v30[a5 & 0x7FFFFFFFFFFFFFF8];
    v33 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v50 = &__src[v45];
    v51 = (&__dst[v45] - v8);
    v52 = v45 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v53 = *v50++;
      *v51++ = v53;
      v52 += 8;
    }

    while (v52);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) == a5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v33 = &__src[v45];
  v32 = &v30[v45];
  do
  {
LABEL_26:
    v34 = *v33++;
    *v32++ = v34;
  }

  while (v32 != v31);
LABEL_27:
  v35 = *(a1 + 8) - __dst;
  memcpy(v31, __dst, v35);
  v37 = &v31[v35];
  *(a1 + 8) = v5;
  v38 = *a1;
  v39 = &v30[*a1 - v5];
  memcpy(v39, *a1, &v5[-*a1]);
  *a1 = v39;
  *(a1 + 8) = v37;
  *(a1 + 16) = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void sub_6CB1CC(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 <= (v5 - v6) >> 6)
  {
    if (a2)
    {
      v11 = a2 << 6;
      v12 = v6 + (a2 << 6);
      do
      {
        sub_5F2BA0(v6, a3);
        v6 += 64;
        v11 -= 64;
      }

      while (v11);
      v6 = v12;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = (v6 - *a1) >> 6;
    if ((v7 + a2) >> 58)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 5;
    if (v8 >> 5 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!(v10 >> 58))
      {
        operator new();
      }

      sub_1808();
    }

    v13 = v7 << 6;
    v23 = v13;
    v14 = a2 << 6;
    v15 = v13 + (a2 << 6);
    do
    {
      sub_5F2BA0(v13, a3);
      v13 += 64;
      v14 -= 64;
    }

    while (v14);
    v16 = *a1;
    v17 = a1[1];
    v18 = v23 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v23 + *a1 - v17;
      do
      {
        *v20 = *v19;
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        *(v20 + 16) = 0;
        *(v20 + 16) = *(v19 + 1);
        *(v20 + 32) = v19[4];
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = 0;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 56) = 0;
        *(v20 + 40) = *(v19 + 5);
        *(v20 + 56) = v19[7];
        v19[5] = 0;
        v19[6] = 0;
        v19[7] = 0;
        v19 += 8;
        v20 += 64;
      }

      while (v19 != v17);
      do
      {
        v21 = v16[5];
        if (v21)
        {
          v16[6] = v21;
          operator delete(v21);
        }

        v22 = v16[2];
        if (v22)
        {
          v16[3] = v22;
          operator delete(v22);
        }

        v16 += 8;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v15;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

void sub_6CB3D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6CB3EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6CB3EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_6CB464(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 6)
  {
    if (a2)
    {
      v9 = v3 + (a2 << 6);
      do
      {
        *v3 = -256;
        *(v3 + 8) = 0uLL;
        *(v3 + 24) = 0uLL;
        *(v3 + 40) = 0uLL;
        *(v3 + 56) = 0;
        v3 += 64;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 6;
    v6 = v5 + a2;
    if ((v5 + a2) >> 58)
    {
      sub_1794();
    }

    v7 = v4 - *a1;
    if (v7 >> 5 > v6)
    {
      v6 = v7 >> 5;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFC0)
    {
      v8 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 58))
      {
        operator new();
      }

      sub_1808();
    }

    v10 = v5 << 6;
    v11 = (v5 << 6) + (a2 << 6);
    v12 = v5 << 6;
    do
    {
      *v12 = -256;
      *(v12 + 8) = 0uLL;
      *(v12 + 24) = 0uLL;
      *(v12 + 40) = 0uLL;
      *(v12 + 56) = 0;
      v12 += 64;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 16) = 0;
        *(v17 + 16) = *(v16 + 1);
        *(v17 + 32) = v16[4];
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = 0;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        *(v17 + 40) = *(v16 + 5);
        *(v17 + 56) = v16[7];
        v16[5] = 0;
        v16[6] = 0;
        v16[7] = 0;
        v16 += 8;
        v17 += 64;
      }

      while (v16 != v14);
      do
      {
        v18 = v13[5];
        if (v18)
        {
          v13[6] = v18;
          operator delete(v18);
        }

        v19 = v13[2];
        if (v19)
        {
          v13[3] = v19;
          operator delete(v19);
        }

        v13 += 8;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

__n128 sub_6CB66C(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v6 = *(*a1 + 2);
  v5 = *(*a1 + 3);
  v7 = *(*a1 + 4);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v13 = *(v2 + 40);
  v14 = v4;
  v8 = *(v2 + 7);
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 7) = 0;
  *v2 = *v3;
  v9 = *(v3 + 32);
  v2[1] = *(v3 + 16);
  *(v2 + 4) = v9;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v10 = *(v2 + 5);
  if (v10)
  {
    *(v2 + 6) = v10;
    operator delete(v10);
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    *(v2 + 7) = 0;
    v10 = *(v3 + 16);
  }

  *(v2 + 40) = *(v3 + 40);
  *(v2 + 7) = *(v3 + 56);
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *v3 = v14;
  if (v10)
  {
    *(v3 + 24) = v10;
    operator delete(v10);
    v11 = *(v3 + 40);
    *(v3 + 16) = v6;
    *(v3 + 24) = v5;
    *(v3 + 32) = v7;
    if (v11)
    {
      *(v3 + 48) = v11;
      operator delete(v11);
    }
  }

  else
  {
    *(v3 + 16) = v6;
    *(v3 + 24) = v5;
    *(v3 + 32) = v7;
  }

  result = v13;
  *(v3 + 40) = v13;
  *(v3 + 56) = v8;
  return result;
}

__n128 sub_6CB778(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    *(a1 + 8) = v4;
    if (v4 == a4)
    {
      return result;
    }
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      *(v7 + 16) = *(v6 + 16);
      *(v7 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      result = *(v6 + 40);
      *(v7 + 40) = result;
      *(v7 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v6 += 64;
      v7 += 64;
    }

    while (v6 < a3);
    *(a1 + 8) = v7;
    if (v4 == a4)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = a4 - v4;
  do
  {
    v12 = v5 + v9;
    v13 = v4 + v9;
    v15 = (v4 + v9 - 48);
    v14 = *v15;
    *(v4 + v9 - 64) = *(v5 + v9 - 64);
    if (v14)
    {
      *(v13 - 40) = v14;
      operator delete(v14);
      *v15 = 0;
      *(v4 + v9 - 40) = 0;
      *(v4 + v9 - 32) = 0;
    }

    v16 = (v12 - 48);
    *v15 = *(v12 - 48);
    *(v13 - 32) = *(v12 - 32);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v19 = *(v13 - 24);
    v18 = (v13 - 24);
    v17 = v19;
    if (v19)
    {
      *(v4 + v9 - 16) = v17;
      operator delete(v17);
      v18->n128_u64[0] = 0;
      v18->n128_u64[1] = 0;
      v18[1].n128_u64[0] = 0;
    }

    v11 = v5 + v9;
    result = *(v5 + v9 - 24);
    *v18 = result;
    *(v4 + v9 - 8) = *(v5 + v9 - 8);
    *(v11 - 24) = 0;
    *(v11 - 16) = 0;
    *(v11 - 8) = 0;
    v9 -= 64;
  }

  while (v10 != v9);
  return result;
}

uint64_t sub_6CB8DC(char **a1, void *a2, char *a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 16) = *(v9 + 1);
      *(v8 + 32) = *(v9 + 4);
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 7);
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      v9 += 64;
      v8 += 64;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v11 = *(v10 + 5);
      if (v11)
      {
        *(v10 + 6) = v11;
        operator delete(v11);
      }

      v12 = *(v10 + 2);
      if (v12)
      {
        *(v10 + 3) = v12;
        operator delete(v12);
      }

      v10 += 64;
    }

    while (v10 != v7);
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v15 = (v14 + v13 - a3);
  if (v13 != a3)
  {
    v16 = v13;
    v17 = (v14 + v13 - a3);
    do
    {
      *v17 = *v16;
      *(v17 + 3) = 0;
      *(v17 + 4) = 0;
      *(v17 + 2) = 0;
      *(v17 + 1) = *(v16 + 1);
      *(v17 + 4) = *(v16 + 4);
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 4) = 0;
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
      *(v17 + 7) = 0;
      *(v17 + 40) = *(v16 + 40);
      *(v17 + 7) = *(v16 + 7);
      *(v16 + 5) = 0;
      *(v16 + 6) = 0;
      *(v16 + 7) = 0;
      v16 += 64;
      v17 += 64;
    }

    while (v16 != a3);
    do
    {
      v18 = *(v13 + 5);
      if (v18)
      {
        *(v13 + 6) = v18;
        operator delete(v18);
      }

      v19 = *(v13 + 2);
      if (v19)
      {
        *(v13 + 3) = v19;
        operator delete(v19);
      }

      v13 += 64;
    }

    while (v13 != a3);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  a1[1] = v20;
  a2[1] = v20;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t **sub_6CBAB0(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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
        if (v2 == *(v7 + 16))
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

  if (v2 != *(v7 + 16))
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t **sub_6CBDF8(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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
        if (v2 == *(v7 + 16))
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

  if (v2 != *(v7 + 16))
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_6CC12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_6CC140()
{
  xmmword_27A3EF0 = 0uLL;
  qword_27A3F00 = 0;
  operator new();
}

void sub_6CC1F8(_Unwind_Exception *exception_object)
{
  if (xmmword_27A3F10)
  {
    *(&xmmword_27A3F10 + 1) = xmmword_27A3F10;
    operator delete(xmmword_27A3F10);
  }

  _Unwind_Resume(exception_object);
}

void sub_6CC238(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = a3;
  a1[2] = a4;
  sub_6AAC1C(a1 + 3, a2);
}

void sub_6CC314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_6CC334(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *(a1 + 3736) = 0;
  *(a1 + 3560) = *(a1 + 3552);
  *(a1 + 3584) = *(a1 + 3576);
  *(a1 + 3600) = -1;
  *(a1 + 3608) = 0x7FFFFFFF;
  *(a1 + 3680) = -1;
  *(a1 + 3616) = 0u;
  *(a1 + 3640) = *(a1 + 3632);
  *(a1 + 3664) = *(a1 + 3656);
  *(a1 + 3688) = 0x7FFFFFFF;
  *(a1 + 3696) = 0u;
  *(a1 + 3720) = 0u;
  *(a1 + 3744) = 0u;
  v6 = a2 + a3;
  *(a1 + 3712) = v6;
  v7 = 40;
  if (a4)
  {
    v7 = 48;
  }

  v9 = a1 + 8;
  v8 = *(a1 + 8);
  *(a1 + 3728) = *(*(v9 + 8) + v7);
  sub_69D1C4(v8, v6, v75);
  sub_7495D4(v75, *a1, &__p);
  if ((a1 + 3552) != &__p)
  {
    sub_35354C((a1 + 3552), __p, v73, 0xAAAAAAAAAAAAAAABLL * ((v73 - __p) >> 2));
  }

  sub_6CCE00((a1 + 3552), (a1 + 3552));
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v10 = *a1;
  v11 = sub_7497C0(v75);
  sub_2B7A20(v10, v11 & 0xFFFFFFFFFFFFFFLL, &__p);
  sub_31BF20(&__p, &v63);
  if ((a1 + 3632) != &v63)
  {
    sub_35354C((a1 + 3632), v63, v64, 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 2));
  }

  sub_6CCE00((a1 + 3632), (a1 + 3632));
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  v12 = *(a1 + 3712);
  v13 = sub_6CD464(a1, a3);
  if (v13 != 1)
  {
LABEL_17:
    if (v13 == 2)
    {
      goto LABEL_18;
    }

    v16 = (a1 + 3600);
    v17 = (a1 + 3680);
    while (2)
    {
      v18 = *(a1 + 3712);
      if (v18 >= sub_4D1DC0(*(a1 + 8)) || *(a1 + 3728) - *(a1 + 3744) >= *(*(a1 + 16) + 56))
      {
LABEL_18:
        v15 = 0xFFFFFFFF00000000;
        v14 = 0xFFFFFFFFLL;
        goto LABEL_116;
      }

      sub_69D1C4(*(a1 + 8), *(a1 + 3712), &__p);
      v19 = *(a1 + 3720);
      v20 = v19 * *(*(a1 + 3664) - 8);
      if (v20 >= 0.0)
      {
        if (v20 >= 4.50359963e15)
        {
          goto LABEL_28;
        }

        v21 = (v20 + v20) + 1;
      }

      else
      {
        if (v20 <= -4.50359963e15)
        {
          goto LABEL_28;
        }

        v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      }

      v20 = (v21 >> 1);
LABEL_28:
      v71 = v20;
      v22 = v19 * *(*(a1 + 3584) - 8);
      if (v22 >= 0.0)
      {
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_34;
        }

        v23 = (v22 + v22) + 1;
      }

      else
      {
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_34;
        }

        v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v22 = (v23 >> 1);
LABEL_34:
      v70 = v22;
      v24 = *a1;
      v25 = sub_7497C0(&__p);
      sub_2B7A20(v24, v25 & 0xFFFFFFFFFFFFFFLL, &v63);
      sub_31BF20(&v63, v66);
      v26 = *(a1 + 3664);
      v62 = *(v26 - 8);
      v27 = *(a1 + 3704);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v28 = *(a1 + 3656);
      if (v26 != v28)
      {
        if (((v26 - v28) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v61 = 1;
      sub_475C4(v66, &v62, &v71, a3 ^ 1, (a1 + 3696), v27, &v58, &v67);
      if (v61 == 1 && v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v66[0])
      {
        v66[1] = v66[0];
        operator delete(v66[0]);
      }

      if (v64)
      {
        *&v65 = v64;
        operator delete(v64);
      }

      v29 = *(a1 + 3584);
      v66[0] = *(v29 - 8);
      v30 = *(a1 + 3624);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v31 = *(a1 + 3576);
      if (v29 != v31)
      {
        if (((v29 - v31) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v61 = 1;
      sub_475C4((a1 + 3552), v66, &v70, a3 ^ 1, (a1 + 3616), v30, &v58, &v63);
      if (v61 == 1 && v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      v32 = *v16;
      if (*v16 == -1 && *(a1 + 3604) == -1)
      {
        goto LABEL_104;
      }

      v33 = *v17;
      if (*v17 == -1 && *(a1 + 3684) == -1)
      {
        goto LABEL_104;
      }

      if (a3)
      {
        if (v33 == v67)
        {
          v34 = *(a1 + 3684);
          v35 = HIDWORD(v67);
          i = 0.0;
          if (v34 == HIDWORD(v67))
          {
            goto LABEL_77;
          }
        }

        else
        {
          v35 = HIDWORD(v67);
          v34 = *(a1 + 3684);
        }

        v39 = v67 - v33;
        v40 = --v39;
        if (v39 < -v39)
        {
          v40 = v39;
        }

          ;
        }

          ;
        }
      }

      else
      {
        if (v67 == v33)
        {
          v37 = HIDWORD(v67);
          v38 = *(a1 + 3684);
          i = 0.0;
          if (HIDWORD(v67) == v38)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v38 = *(a1 + 3684);
          v37 = HIDWORD(v67);
        }

        v41 = v33 - v67;
        v42 = --v41;
        if (v41 < -v41)
        {
          v42 = v41;
        }

          ;
        }

          ;
        }
      }

      if (a3)
      {
LABEL_77:
        if (v63 == v32)
        {
          v43 = *(a1 + 3604);
          v44 = HIDWORD(v63);
          j = 0.0;
          if (v43 == HIDWORD(v63))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v44 = HIDWORD(v63);
          v43 = *(a1 + 3604);
        }

        v48 = -(v32 - v63);
        if (v63 - v32 < (v32 - v63))
        {
          v48 = (v63 - v32);
        }

          ;
        }

        while (j < -180.0)
        {
          j = j + 360.0;
        }

        goto LABEL_100;
      }

LABEL_80:
      if (v32 == v63)
      {
        v46 = HIDWORD(v63);
        v47 = *(a1 + 3604);
        j = 0.0;
        if (HIDWORD(v63) == v47)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v47 = *(a1 + 3604);
        v46 = HIDWORD(v63);
      }

      v49 = -(v63 - v32);
      if (v32 - v63 < (v63 - v32))
      {
        v49 = (v32 - v63);
      }

        ;
      }

      while (j < -180.0)
      {
        j = j + 360.0;
      }

LABEL_100:
      sub_455D0(i, j);
      v50 = *(a1 + 16);
      if (v51 >= *(v50 + 24))
      {
        *(a1 + 3752) = 0;
      }

      else
      {
        v52 = *(a1 + 3752) + 1;
        *(a1 + 3752) = v52;
        if (v52 == *(v50 + 32))
        {
          v15 = v63 & 0xFFFFFFFF00000000;
          v14 = v63;
          v56 = __p;
          if (!__p)
          {
            goto LABEL_116;
          }

LABEL_114:
          v73 = v56;
          operator delete(v56);
          goto LABEL_116;
        }
      }

LABEL_104:
      *v17 = v67;
      *(a1 + 3688) = v68;
      *(a1 + 3696) = v69;
      *v16 = v63;
      *(a1 + 3608) = v64;
      *(a1 + 3616) = v65;
      v53 = 64;
      if (!*(a1 + 3752))
      {
        v53 = 72;
      }

      *(a1 + 3728) += *(*(a1 + 16) + v53);
      v54 = *(a1 + 3712);
      for (k = sub_6CD464(a1, a3); k == 1; k = sub_6CD464(a1, a3))
      {
        sub_6CD5B4(a1, v54);
        if (sub_6CD26C(a1, v54, a3))
        {
          goto LABEL_113;
        }

        v54 = *(a1 + 3712);
      }

      if (k != 2)
      {
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        continue;
      }

      break;
    }

LABEL_113:
    v15 = 0xFFFFFFFF00000000;
    v14 = 0xFFFFFFFFLL;
    v56 = __p;
    if (!__p)
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  v14 = 0xFFFFFFFFLL;
  while (1)
  {
    sub_6CD5B4(a1, v12);
    if (sub_6CD26C(a1, v12, a3))
    {
      break;
    }

    v12 = *(a1 + 3712);
    v13 = sub_6CD464(a1, a3);
    if (v13 != 1)
    {
      goto LABEL_17;
    }
  }

  v15 = 0xFFFFFFFF00000000;
LABEL_116:
  if (v75[0])
  {
    v75[1] = v75[0];
    operator delete(v75[0]);
  }

  return v15 | v14;
}

void sub_6CCCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 160);
  if (v32)
  {
    *(v30 - 152) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_6CCE00(void *a1, unsigned int **a2)
{
  v4 = a1 + 3;
  v3 = a1[3];
  a1[4] = v3;
  v5 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) - 1;
  if (v5 > (a1[5] - v3) >> 3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *a2;
  v7 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  if (v7 != 1)
  {
    v8 = v6[1];
    v9 = v6[4];
    v10 = exp(((v9 >> 1) + (v8 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v11 = atan((v10 + -1.0 / v10) * 0.5);
    v12 = cos(v11 * 57.2957795 / 180.0 * 3.14159265);
    v13 = *v6 - v6[3];
    v14 = sqrt(((v8 - v9) * (v8 - v9) + v13 * v13)) / 100.0 * 100.0 * (v12 * 0.00932288077) * 100.0;
    if (v14 >= 0.0)
    {
      v15 = v14;
      if (v14 >= 4.50359963e15)
      {
        goto LABEL_11;
      }

      v16 = (v14 + v14) + 1;
    }

    else
    {
      v15 = v14;
      if (v14 <= -4.50359963e15)
      {
        goto LABEL_11;
      }

      v16 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    }

    v15 = (v16 >> 1);
LABEL_11:
    if (v15 >= 9.22337204e18)
    {
      v33 = 0x7FFFFFFFFFFFFFFELL;
      sub_2512DC(v4, &v33);
      if (v7 == 2)
      {
        return;
      }

LABEL_22:
      v18 = 0;
      v19 = 0;
      v20 = v7 - 2;
      while (1)
      {
        v22 = &(*a2)[v18];
        v23 = v22[4];
        v24 = v22[7];
        v25 = exp(((v24 >> 1) + (v23 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
        v26 = atan((v25 + -1.0 / v25) * 0.5);
        v27 = cos(v26 * 57.2957795 / 180.0 * 3.14159265);
        v28 = v22[3] - v22[6];
        v29 = sqrt(((v23 - v24) * (v23 - v24) + v28 * v28)) / 100.0 * 100.0 * (v27 * 0.00932288077) * 100.0;
        if (v29 >= 0.0)
        {
          v30 = v29;
          if (v29 >= 4.50359963e15)
          {
            goto LABEL_31;
          }

          v31 = (v29 + v29) + 1;
        }

        else
        {
          v30 = v29;
          if (v29 <= -4.50359963e15)
          {
            goto LABEL_31;
          }

          v31 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
        }

        v30 = (v31 >> 1);
LABEL_31:
        if (v30 < 9.22337204e18)
        {
          if (v29 >= 0.0)
          {
            if (v29 < 4.50359963e15)
            {
              v32 = (v29 + v29) + 1;
LABEL_37:
              v29 = (v32 >> 1);
            }
          }

          else if (v29 > -4.50359963e15)
          {
            v32 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
            goto LABEL_37;
          }

          v21 = v29;
          goto LABEL_24;
        }

        v21 = 0x7FFFFFFFFFFFFFFELL;
LABEL_24:
        v33 = *(*v4 + 8 * v19) + v21;
        sub_2512DC(v4, &v33);
        ++v19;
        v18 += 3;
        if (v20 == v19)
        {
          return;
        }
      }
    }

    if (v14 >= 0.0)
    {
      if (v14 >= 4.50359963e15)
      {
        goto LABEL_20;
      }

      v17 = (v14 + v14) + 1;
    }

    else
    {
      if (v14 <= -4.50359963e15)
      {
        goto LABEL_20;
      }

      v17 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    }

    v14 = (v17 >> 1);
LABEL_20:
    v33 = v14;
    sub_2512DC(v4, &v33);
    if (v7 == 2)
    {
      return;
    }

    goto LABEL_22;
  }
}

uint64_t sub_6CD26C(uint64_t *a1, uint64_t a2, int a3)
{
  sub_69D1C4(a1[1], a2, v19);
  sub_69D1C4(a1[1], a1[464], v18);
  v5 = sub_4D1F50(a1[1], a1[464]);
  if (sub_6ABAB4((a1 + 3), v5))
  {
    goto LABEL_12;
  }

  v6 = a1[464];
  if (v6 >= sub_4D1DC0(a1[1]) || *(a1[2] + 16) != 1)
  {
    goto LABEL_12;
  }

  v7 = *a1;
  v8 = sub_7497C0(v18);
  if (a3)
  {
    v9 = sub_2B4EDC(v7, v8 & 0xFFFFFFFFFFFFLL, (v8 & 0xFF000000000000) == 0);
  }

  else
  {
    v9 = sub_2B4EDC(v7, v8 & 0xFFFFFFFFFFFFLL, (v8 & 0xFF000000000000) != 0);
  }

  sub_31C398(*a1, v9, &__p);
  v10 = sub_6CD8C0(__p, v17, a1);
  v11 = v17;
  if (v10 != v17)
  {
    v11 = v10;
  }

  v12 = v11 - __p;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v12 < 0x11)
  {
LABEL_12:
    v13 = 0;
    v14 = v18[0];
    if (!v18[0])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  v14 = v18[0];
  if (v18[0])
  {
LABEL_13:
    v18[1] = v14;
    operator delete(v14);
  }

LABEL_14:
  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  return v13;
}

void sub_6CD3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a13;
    if (!a13)
    {
LABEL_3:
      v21 = a18;
      if (!a18)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v20 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  v21 = a18;
  if (!a18)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v21);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6CD464(uint64_t a1, int a2)
{
  sub_69D1C4(*(a1 + 8), *(a1 + 3712), __p);
  v4 = *(a1 + 3728);
  v5 = *(a1 + 3736);
  v6 = *(a1 + 3744);
  v7 = *a1;
  v8 = sub_7497C0(__p);
  v9 = sub_2B51D8(v7, v8 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  v11 = 0.0;
  if (*v10 >= 9u)
  {
    v12 = v10[4];
    if (v12)
    {
      LODWORD(v11) = *(v9 + v12);
      v11 = *&v11;
    }
  }

  v13 = (v4 - (v5 + v6)) / v11;
  *(a1 + 3720) = v13;
  if (v13 > 1.0)
  {
    *(a1 + 3720) = 0;
    v14 = *(a1 + 3712);
    if (a2)
    {
      *(a1 + 3712) = v14 + 1;
      if (v14 + 1 != sub_4D1DC0(*(a1 + 8)))
      {
        v15 = 1;
        v16 = __p[0];
        if (!__p[0])
        {
          return v15;
        }

        goto LABEL_10;
      }
    }

    else if (v14)
    {
      *(a1 + 3712) = v14 - 1;
      v15 = 1;
      v16 = __p[0];
      if (!__p[0])
      {
        return v15;
      }

      goto LABEL_10;
    }

    v15 = 2;
    v16 = __p[0];
    if (!__p[0])
    {
      return v15;
    }

LABEL_10:
    __p[1] = v16;
    operator delete(v16);
    return v15;
  }

  v15 = 0;
  v16 = __p[0];
  if (__p[0])
  {
    goto LABEL_10;
  }

  return v15;
}

void sub_6CD594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6CD5B4(uint64_t a1, uint64_t a2)
{
  sub_69D1C4(*(a1 + 8), a2, v23);
  sub_69D1C4(*(a1 + 8), *(a1 + 3712), v22);
  sub_7495D4(v22, *a1, &__p);
  if ((a1 + 3552) != &__p)
  {
    sub_35354C((a1 + 3552), __p, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 2));
  }

  sub_6CCE00((a1 + 3552), (a1 + 3552));
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v4 = *a1;
  v5 = sub_7497C0(v22);
  sub_2B7A20(v4, v5 & 0xFFFFFFFFFFFFFFLL, &__p);
  sub_31BF20(&__p, &v20);
  if ((a1 + 3632) != &v20)
  {
    sub_35354C((a1 + 3632), v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 2));
  }

  sub_6CCE00((a1 + 3632), (a1 + 3632));
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  *(a1 + 3600) = -1;
  *(a1 + 3608) = 0x7FFFFFFF;
  *(a1 + 3616) = 0u;
  *(a1 + 3680) = -1;
  *(a1 + 3688) = 0x7FFFFFFF;
  *(a1 + 3696) = 0u;
  v6 = sub_4D1F50(*(a1 + 8), a2);
  v7 = sub_6ABAB4(a1 + 24, v6);
  v8 = *a1;
  if (v7)
  {
    v9 = sub_7497C0(v23);
    v10 = sub_2B51D8(v8, v9 & 0xFFFFFFFFFFFFLL);
    v11 = (v10 - *v10);
    if (*v11 >= 9u)
    {
      v12 = v11[4];
      v13 = 3744;
      if (v12)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    *(a1 + 3744) = *(a1 + 3744);
    v14 = v22[0];
    if (v22[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = sub_7497C0(v23);
    v10 = sub_2B51D8(v8, v15 & 0xFFFFFFFFFFFFLL);
    v16 = (v10 - *v10);
    if (*v16 >= 9u)
    {
      v12 = v16[4];
      v13 = 3736;
      if (v12)
      {
LABEL_14:
        *(a1 + v13) += *(v10 + v12);
        v14 = v22[0];
        if (!v22[0])
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_21:
      *(a1 + v13) = *(a1 + v13);
      v14 = v22[0];
      if (!v22[0])
      {
        goto LABEL_16;
      }

LABEL_15:
      v22[1] = v14;
      operator delete(v14);
      goto LABEL_16;
    }

    *(a1 + 3736) = *(a1 + 3736);
    v14 = v22[0];
    if (v22[0])
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }
}

void sub_6CD81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v20 = *(v18 - 72);
    if (!v20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = *(v18 - 72);
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  *(v18 - 64) = v20;
  operator delete(v20);
  _Unwind_Resume(exception_object);
}

unint64_t *sub_6CD8C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = sub_2B51D8(*a3, *v3);
      v8 = (v7 - *v7);
      if (*v8 < 0x9Bu)
      {
        break;
      }

      v9 = v8[77];
      if (!v9 || (*(v7 + v9) & 3) == 0)
      {
        break;
      }

      v10 = sub_2B51D8(*a3, *v3);
      v11 = (v10 - *v10);
      if (*v11 >= 0x2Fu)
      {
        v12 = v11[23];
        if (v12)
        {
          v13 = *(v10 + v12);
          v14 = v13 > 0x2D;
          v15 = (1 << v13) & 0x208040000000;
          if (!v14 && v15 != 0)
          {
            break;
          }
        }
      }

      v17 = sub_2B51D8(*a3, *v3);
      v18 = (v17 - *v17);
      if (*v18 >= 0x9Bu)
      {
        v19 = v18[77];
        if (v19)
        {
          if ((*(v17 + v19 + 2) & 4) != 0)
          {
            break;
          }
        }
      }

      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        v21 = sub_2B51D8(*a3, *i);
        v22 = (v21 - *v21);
        if (*v22 >= 0x9Bu)
        {
          v23 = v22[77];
          if (v23)
          {
            if ((*(v21 + v23) & 3) != 0)
            {
              if ((v24 = sub_2B51D8(*a3, *i), v25 = (v24 - *v24), *v25 < 0x2Fu) || (v26 = v25[23]) == 0 || ((v27 = *(v24 + v26), v14 = v27 > 0x2D, v28 = (1 << v27) & 0x208040000000, !v14) ? (v29 = v28 == 0) : (v29 = 1), v29))
              {
                v30 = sub_2B51D8(*a3, *i);
                v31 = (v30 - *v30);
                if (*v31 < 0x9Bu || (v32 = v31[77]) == 0 || (*(v30 + v32 + 2) & 4) == 0)
                {
                  *v3++ = *i;
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

void sub_6CDAB8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A3F88 = 0u;
  unk_27A3F98 = 0u;
  dword_27A3FA8 = 1065353216;
  sub_3A9A34(&xmmword_27A3F88, v0);
  sub_3A9A34(&xmmword_27A3F88, v3);
  sub_3A9A34(&xmmword_27A3F88, __p);
  sub_3A9A34(&xmmword_27A3F88, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A3F60 = 0;
    qword_27A3F68 = 0;
    qword_27A3F58 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6CDD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A3F70)
  {
    qword_27A3F78 = qword_27A3F70;
    operator delete(qword_27A3F70);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6CDDAC(uint64_t a1, __int128 *a2, int a3)
{
  if ((atomic_load_explicit(&qword_27A3FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27A3FB0))
  {
    sub_3608D0(&v16, "ar");
    sub_3608D0(v18, "bg");
    sub_3608D0(v19, "bn");
    sub_3608D0(v20, "ca");
    sub_3608D0(v21, "cs");
    sub_3608D0(v22, "da");
    sub_3608D0(v23, "de");
    sub_3608D0(v24, "el");
    sub_3608D0(v25, "en-au");
    sub_3608D0(v26, "en-gb");
    sub_3608D0(v27, "en-in");
    sub_3608D0(v28, "en");
    sub_3608D0(v29, "es-mx");
    sub_3608D0(v30, "es");
    sub_3608D0(v31, "fi");
    sub_3608D0(v32, "fr-ca");
    sub_3608D0(v33, "fr");
    sub_3608D0(v34, "gu");
    sub_3608D0(v35, "he");
    sub_3608D0(v36, "hi");
    sub_3608D0(v37, "hr");
    sub_3608D0(v38, "hu");
    sub_3608D0(v39, "id");
    sub_3608D0(v40, "it");
    sub_3608D0(v41, "ja");
    sub_3608D0(v42, "kk");
    sub_3608D0(v43, "kn");
    sub_3608D0(v44, "ko");
    sub_3608D0(v45, "lt");
    sub_3608D0(v46, "ml");
    sub_3608D0(v47, "mr");
    sub_3608D0(v48, "ms");
    sub_3608D0(v49, "nl");
    sub_3608D0(v50, "no");
    sub_3608D0(v51, "or");
    sub_3608D0(v52, "pa");
    sub_3608D0(v53, "pl");
    sub_3608D0(v54, "pt-pt");
    sub_3608D0(v55, "pt");
    sub_3608D0(v56, "ro");
    sub_3608D0(v57, "ru");
    sub_3608D0(v58, "sk");
    sub_3608D0(v59, "sl");
    sub_3608D0(v60, "sv");
    sub_3608D0(v61, "ta");
    sub_3608D0(v62, "te");
    sub_3608D0(v63, "th");
    sub_3608D0(v64, "tr");
    sub_3608D0(v65, "uk");
    sub_3608D0(v66, "ur");
    sub_3608D0(v67, "vi");
    sub_3608D0(v68, "zh-cn");
    sub_3608D0(v69, "zh-hk");
    sub_3608D0(v70, "zh-tw");
    sub_5275EC(qword_27A3FB8, &v16, 0x36uLL);
    v8 = 1296;
    do
    {
      if (*(&v16 + v8 - 1) < 0)
      {
        operator delete(*(&v15.__r_.__value_.__l.__data_ + v8));
      }

      v8 -= 24;
    }

    while (v8);
    __cxa_guard_release(&qword_27A3FB0);
  }

  sub_2C1C04(a1, qword_27A3FB8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  if (*(a2 + 23) < 0)
  {
    sub_325C((a1 + 64), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v6;
  }

  *(a1 + 96) = 850045863;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if ((sub_74788((a1 + 64)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v10 = std::string::append(&v15, " does not exist", 0x10uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    v16 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v17 >= 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16;
    }

    if (v17 >= 0)
    {
      v13 = HIBYTE(v17);
    }

    else
    {
      v13 = *(&v16 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  if (a3 && (*(a1 + 88) & 1) == 0)
  {
    sub_6CF714(a1, a1, &unk_229E888);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_6CE468(_Unwind_Exception *a1)
{
  v3 = (v1 + 1295);
  v4 = -1296;
  v5 = (v1 + 1295);
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_27A3FB0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_6CE4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    v14 = *(v13 - 1);
    v13 -= 3;
    if (v14 < 0)
    {
      operator delete(*v13);
    }

    if (v13 == &a13)
    {
      JUMPOUT(0x6CE4A0);
    }
  }
}

void sub_6CE4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      std::mutex::~mutex(v22);
      if ((*(v21 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  std::mutex::~mutex(v22);
  if ((*(v21 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    sub_6D01B4(v23);
    sub_1A104(v21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v23[5]);
  sub_6D01B4(v23);
  sub_1A104(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_6CE5D8(uint64_t a1)
{
  std::mutex::~mutex((a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 7);
      while (v4)
      {
        v6 = v4;
        v4 = *v4;
        v7 = v6[4];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v6;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v6 = v8;
        }

        operator delete(v6);
      }

      v5 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
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
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_6CEBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  sub_1F1A8(v15);
  _Unwind_Resume(a1);
}