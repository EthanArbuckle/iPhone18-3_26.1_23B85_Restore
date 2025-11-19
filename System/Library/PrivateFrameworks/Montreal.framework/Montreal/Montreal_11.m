void sub_19D379AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type sub_19D379AF0(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (this > a3 || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a3 == a4)
      {
        size = 0;
        v20 = 0;
        v18 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v18 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v20 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v18 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v20;
      }

      if ((v18 & 0x80u) == 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_36:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_36;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void sub_19D379DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D379E28()
{
  qword_1EB0131F8 = 0;
  unk_1EB013200 = "MontrealNeuralNetworkState";
  qword_1EB013208 = 0;
  unk_1EB013210 = 0;
  qword_1EB013218 = sub_19D2B0D5C;
  unk_1EB013220 = 0u;
  unk_1EB013230 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB0131F0 = result;
  return result;
}

void sub_19D379E90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_19D379EF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 48) = 0u;
  v5 = a1 + 48;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 88) = 0;
  if (a3 * a2)
  {
    if (((a3 * a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a3)
  {
    operator new();
  }

  v8 = *v5;
  if (*v5)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_19D37A098(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *(v1 + 24);
    if (!v5)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v1 + 24);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v1 + 8) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D37A0F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_19D37A14C(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = sub_19D37D73C(a2 + 16, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = v4;
    memmove((*a1 + v5 * *(a1 + 88)), v4, v5);
    v7 = *(a1 + 72);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*(v6 + i))
        {
          if (!(v7 >> 62))
          {
            operator new();
          }

          sub_19D2AE2B4();
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_19D37A2D0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_19D37A328(void *a1, uint64_t a2, const void **a3)
{
  v4 = sub_19D37D73C(a2 + 16, a3);
  v5 = a1[10];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }
  }

  else
  {
    v7 = a1[3];
    if (v7)
    {
      a1[4] = v7;
      operator delete(v7);
      a1[3] = 0;
      a1[4] = 0;
      a1[5] = 0;
    }

    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    v6 = a1[9];
    if (!v6)
    {
      vDSP_vflt8(v4, 1, 0, 1, 0);
      v8 = 1025507328;
      MEMORY[0x19EAFB210](0, 1, &v8, 0, 1, a1[9]);
      operator new();
    }

    if (!(v6 >> 62))
    {
      operator new();
    }
  }

  sub_19D2AE2B4();
}

void sub_19D37A650(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_19D37A6BC(void *a1, uint64_t a2, uint64_t a3, _DWORD *__src)
{
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
    *a1 = &unk_1F10B9D38;
    v7 = __src[80];
    if (v7 < 1)
    {
      return a1;
    }
  }

  else
  {
    *a1 = &unk_1F10B9D38;
    v7 = __src[80];
    if (v7 < 1)
    {
      return a1;
    }
  }

  v8 = 0;
  v9 = a1 + 6;
  do
  {
    v10 = v8 + 9;
    v11 = *v9;
    if (!*v9)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 32);
        if (v13 <= v10)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_16;
        }
      }

      if (v13 >= v10)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    ++v8;
  }

  while (v8 < v7);
  return a1;
}

void sub_19D37A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D37A8CC(void *a1, int a2, int a3)
{
  v4 = a3 * a2;
  if (a3 * a2 <= 0)
  {
    v5 = a1[7];
  }

  else
  {
    v5 = a1[7];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          v9 = *sub_19D387D50(a1, v8 + 9);
          v10 = *sub_19D387A2C(a1, 1);
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          memcpy(v9, v10, 4 * v21 * v22 * v23);
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          v11 = (v21 * v22 * v23) << 32;
          v12 = sub_19D387A2C(a1, 1);
          *v12 += v11 >> 30;
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          v13 = (v21 * v22 * v23) << 32;
          v14 = sub_19D387D50(a1, v8 + 9);
          *v14 += v13 >> 30;
          ++v8;
          v5 = a1[7];
        }

        while (v5 > v8);
        v7 = a1[7];
      }

      ++v6;
    }

    while (v6 != v4);
  }

  if (v5)
  {
    v15 = 0;
    do
    {
      (*(*a1 + 168))(&v21, a1, (v15 + 9));
      v16 = (v21 * v22 * v23 * v24 * v25) << 32;
      v17 = sub_19D387D50(a1, v15 + 9);
      *v17 -= v16 >> 30;
      ++v15;
    }

    while (a1[7] > v15);
  }

LABEL_13:
  (*(*a1 + 160))(&v21, a1, 1);
  v18 = (v21 * v22 * v23 * v24 * v25) << 32;
  v19 = sub_19D387A2C(a1, 1);
  *v19 -= v18 >> 30;
  return (*(*a1 + 32))(a1);
}

uint64_t sub_19D37ABAC(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = (*(*v1 + 224))(v1);
      v4 = v1[6];
      v5 = v2 + 9;
      if (!v4)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v6 = v4;
          v7 = *(v4 + 32);
          if (v7 <= v5)
          {
            break;
          }

          v4 = *v6;
          if (!*v6)
          {
            goto LABEL_11;
          }
        }

        if (v7 >= v5)
        {
          break;
        }

        v4 = v6[1];
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      v6[8] = v3;
      result = (*(*v1 + 216))(v1, 1);
      v8 = v1[6];
      if (!v8)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 32);
          if (v10 <= v5)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_18;
          }
        }

        if (v10 >= v5)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v9[9] = result;
      ++v2;
    }

    while (v1[7] > v2);
  }

  return result;
}

void *sub_19D37ADD0(void *a1, uint64_t a2, uint64_t a3, _DWORD *__src)
{
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
    *a1 = &unk_1F10B9EA8;
    v7 = __src[80];
    if (v7 < 1)
    {
      return a1;
    }
  }

  else
  {
    *a1 = &unk_1F10B9EA8;
    v7 = __src[80];
    if (v7 < 1)
    {
      return a1;
    }
  }

  v8 = 0;
  v9 = a1 + 6;
  do
  {
    v10 = v8 + 9;
    v11 = *v9;
    if (!*v9)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 32);
        if (v13 <= v10)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_16;
        }
      }

      if (v13 >= v10)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    ++v8;
  }

  while (v8 < v7);
  return a1;
}

void sub_19D37AFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D37AFE0(void *a1, int a2, int a3)
{
  v4 = a3 * a2;
  if (a3 * a2 <= 0)
  {
    v5 = a1[7];
  }

  else
  {
    v5 = a1[7];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          v9 = *sub_19D387D50(a1, v8 + 9);
          v10 = *sub_19D387A2C(a1, 1);
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          memcpy(v9, v10, v21 * v22 * v23);
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          v11 = (v21 * v22 * v23) << 32;
          v12 = sub_19D387A2C(a1, 1);
          *v12 += v11 >> 30;
          (*(*a1 + 168))(&v21, a1, (v8 + 9));
          v13 = (v21 * v22 * v23) << 32;
          v14 = sub_19D387D50(a1, v8 + 9);
          *v14 += v13 >> 30;
          ++v8;
          v5 = a1[7];
        }

        while (v5 > v8);
        v7 = a1[7];
      }

      ++v6;
    }

    while (v6 != v4);
  }

  if (v5)
  {
    v15 = 0;
    do
    {
      (*(*a1 + 168))(&v21, a1, (v15 + 9));
      v16 = (v21 * v22 * v23 * v24 * v25) << 32;
      v17 = sub_19D387D50(a1, v15 + 9);
      *v17 -= v16 >> 30;
      ++v15;
    }

    while (a1[7] > v15);
  }

LABEL_13:
  (*(*a1 + 160))(&v21, a1, 1);
  v18 = (v21 * v22 * v23 * v24 * v25) << 32;
  v19 = sub_19D387A2C(a1, 1);
  *v19 -= v18 >> 30;
  return (*(*a1 + 32))(a1);
}

uint64_t sub_19D37B2C0(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = (*(*v1 + 224))(v1);
      v4 = v1[6];
      v5 = v2 + 9;
      if (!v4)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v6 = v4;
          v7 = *(v4 + 32);
          if (v7 <= v5)
          {
            break;
          }

          v4 = *v6;
          if (!*v6)
          {
            goto LABEL_11;
          }
        }

        if (v7 >= v5)
        {
          break;
        }

        v4 = v6[1];
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      v6[8] = v3;
      result = (*(*v1 + 216))(v1, 1);
      v8 = v1[6];
      if (!v8)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 32);
          if (v10 <= v5)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_18;
          }
        }

        if (v10 >= v5)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v9[9] = result;
      ++v2;
    }

    while (v1[7] > v2);
  }

  return result;
}

void sub_19D37B4E8(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D37B514(uint64_t a1)
{
  v1 = sub_19D388648(a1);

  operator delete(v1);
}

uint64_t sub_19D37B53C(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  *(result + 16) = a3;
  *(result + 20) = a3;
  *(result + 24) = a2;
  *(result + 28) = a3;
  *(result + 32) = 1;
  return result;
}

_DWORD *sub_19D37B558(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  *result = a4;
  result[1] = a5;
  result[2] = a6;
  result[3] = a7;
  result[4] = a8;
  result[5] = a9;
  result[6] = a2;
  result[7] = a3;
  result[8] = 1;
  return result;
}

_DWORD *sub_19D37B578(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  *result = a5;
  result[1] = a6;
  result[2] = a7;
  result[3] = a8;
  result[4] = a9;
  result[5] = a10;
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  return result;
}

void sub_19D37B928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void *sub_19D37BA0C(void *result)
{
  *result = &unk_1F10BA048;
  result[1] = 0;
  return result;
}

void *sub_19D37BA2C(void *a1)
{
  *a1 = &unk_1F10BA048;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_19D37BA7C(void *__p)
{
  *__p = &unk_1F10BA048;
  v2 = __p[1];
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(__p);
}

uint64_t sub_19D37BADC(uint64_t a1, uint64_t a2)
{
  sub_19D362F00();
  v4 = MEMORY[0x1E695DFF8];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a2, v6);
  v10 = objc_msgSend_fileURLWithPath_(v4, v8, v7, v9);

  v11 = off_1EB014860(v10, 8, 0);
  if (!v11)
  {
    sub_19D2C78CC(@"Failed to create NLModelContainer from file: %@", v12, v13, v14, v15, v16, v17, v18, v10);
  }

  *(a1 + 8) = v11;

  return 1;
}

uint64_t sub_19D37BBB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v283 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    sub_19D2C78CC(@"No saved model container", a2, a3, a4, a5, a6, a7, a8, v202);
  }

  v206 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4);
  v9 = [MontrealNNModelNetwork alloc];
  v207 = objc_msgSend_initWithModelContainer_tensors_(v9, v10, *(a1 + 8), v206);
  v14 = objc_msgSend_inputs(v207, v11, v12, v13);
  sub_19D37CE70(&v273, v14);

  v18 = objc_msgSend_outputs(v207, v15, v16, v17);
  sub_19D37CE70(&v271, v18);

  sub_19D42AAB0(a2, &v273, &v271);
  v270 = 0u;
  v269 = 0u;
  v268 = 0u;
  v267 = 0u;
  v22 = objc_msgSend_nodes(v207, v19, v20, v21);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v267, v282, 16);
  if (v26)
  {
    v27 = *v268;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v268 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v267 + 1) + 8 * i);
        memset(__src, 0, 512);
        if (v29)
        {
          objc_msgSend_parameters_(v29, v24, *(a1 + 8), v25);
        }

        else
        {
          bzero(__src, 0x2C0uLL);
        }

        if (objc_msgSend_isValid(v29, v30, v31, v32))
        {
          memcpy(__dst, __src, sizeof(__dst));
          v36 = objc_msgSend_name(v29, v33, v34, v35);
          v37 = v36;
          v41 = objc_msgSend_UTF8String(v36, v38, v39, v40);
          v42 = strlen(v41);
          if (v42 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_19D2AD774();
          }

          v43 = v42;
          if (v42 >= 0x17)
          {
            operator new();
          }

          v264 = v42;
          if (v42)
          {
            memmove(&__p, v41, v42);
          }

          *(&__p + v43) = 0;
          sub_19D42B3F4(a2, __dst, &__p);
          if (v264 < 0)
          {
            operator delete(__p);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v267, v282, 16);
    }

    while (v26);
  }

  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v47 = objc_msgSend_inputs(v207, v44, v45, v46);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v259, v281, 16);
  if (v52)
  {
    v210 = *v260;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v260 != v210)
        {
          objc_enumerationMutation(v47);
        }

        v53 = *(*(&v259 + 1) + 8 * j);
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v54 = objc_msgSend_asInput(v53, v49, v50, v51);
        obj = objc_msgSend_allObjects(v54, v55, v56, v57);

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v255, v280, 16);
        if (v62)
        {
          v63 = *v256;
          v216 = *v256;
          do
          {
            v64 = 0;
            v219 = v62;
            do
            {
              if (*v256 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v65 = *(*(&v255 + 1) + 8 * v64);
              if (objc_msgSend_isValid(v65, v59, v60, v61))
              {
                v66 = objc_msgSend_inputs(v65, v59, v60, v61);
                v232 = objc_msgSend_indexOfObject_(v66, v67, v53, v68);

                v72 = objc_msgSend_name(v53, v69, v70, v71);
                v73 = v72;
                v77 = objc_msgSend_UTF8String(v72, v74, v75, v76);
                v226 = sub_19D37D0A8("None");
                v229 = objc_msgSend_name(v65, v78, v79, v80);
                v84 = objc_msgSend_UTF8String(v229, v81, v82, v83);
                v85 = strlen(v77);
                if (v85 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_19D2AD774();
                }

                v86 = v85;
                if (v85 >= 0x17)
                {
                  operator new();
                }

                BYTE7(__src[1]) = v85;
                if (v85)
                {
                  memcpy(__src, v77, v85);
                }

                *(__src + v86) = 0;
                v87 = strlen(v84);
                if (v87 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_19D2AD774();
                }

                v88 = v87;
                if (v87 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(__dst[2]) = v87;
                if (v87)
                {
                  memmove(__dst, v84, v87);
                }

                *(__dst + v88) = 0;
                sub_19D42D0E0(a2, __src, v226, __dst, v232 + 1);
                if (SHIBYTE(__dst[2]) < 0)
                {
                  operator delete(__dst[0]);
                  v63 = v216;
                  v62 = v219;
                  if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                else
                {
                  v63 = v216;
                  v62 = v219;
                  if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                  {
LABEL_49:

                    goto LABEL_31;
                  }
                }

                operator delete(*&__src[0]);
                goto LABEL_49;
              }

LABEL_31:
              ++v64;
            }

            while (v62 != v64);
            v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v255, v280, 16);
          }

          while (v62);
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v259, v281, 16);
    }

    while (v52);
  }

  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v92 = objc_msgSend_outputs(v207, v89, v90, v91);
  v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v251, v279, 16);
  if (!v97)
  {
    goto LABEL_87;
  }

  v211 = *v252;
  do
  {
    for (k = 0; k != v97; ++k)
    {
      if (*v252 != v211)
      {
        objc_enumerationMutation(v92);
      }

      v98 = *(*(&v251 + 1) + 8 * k);
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v99 = objc_msgSend_asOutput(v98, v94, v95, v96);
      v227 = objc_msgSend_allObjects(v99, v100, v101, v102);

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v103, &v247, v278, 16);
      if (v107)
      {
        v108 = *v248;
        v217 = v98;
        v220 = *v248;
        do
        {
          v109 = 0;
          obja = v107;
          do
          {
            if (*v248 != v108)
            {
              objc_enumerationMutation(v227);
            }

            v110 = *(*(&v247 + 1) + 8 * v109);
            if (objc_msgSend_isValid(v110, v104, v105, v106))
            {
              v111 = objc_msgSend_outputs(v110, v104, v105, v106);
              v233 = objc_msgSend_indexOfObject_(v111, v112, v98, v113);

              v117 = objc_msgSend_name(v110, v114, v115, v116);
              v118 = v117;
              v122 = objc_msgSend_UTF8String(v117, v119, v120, v121);
              v230 = objc_msgSend_name(v98, v123, v124, v125);
              v129 = objc_msgSend_UTF8String(v230, v126, v127, v128);
              v130 = sub_19D37D0A8("None");
              v131 = strlen(v122);
              if (v131 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_19D2AD774();
              }

              v132 = v131;
              if (v131 >= 0x17)
              {
                operator new();
              }

              BYTE7(__src[1]) = v131;
              if (v131)
              {
                memcpy(__src, v122, v131);
              }

              *(__src + v132) = 0;
              v133 = strlen(v129);
              if (v133 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_19D2AD774();
              }

              v134 = v133;
              if (v133 >= 0x17)
              {
                operator new();
              }

              HIBYTE(__dst[2]) = v133;
              if (v133)
              {
                memmove(__dst, v129, v133);
              }

              *(__dst + v134) = 0;
              sub_19D42D0E0(a2, __src, v233 + 9, __dst, v130);
              if (SHIBYTE(__dst[2]) < 0)
              {
                operator delete(__dst[0]);
                v98 = v217;
                v108 = v220;
                v107 = obja;
                if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v98 = v217;
                v108 = v220;
                v107 = obja;
                if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                {
LABEL_81:

                  goto LABEL_63;
                }
              }

              operator delete(*&__src[0]);
              goto LABEL_81;
            }

LABEL_63:
            ++v109;
          }

          while (v107 != v109);
          v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v104, &v247, v278, 16);
        }

        while (v107);
      }
    }

    v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v251, v279, 16);
  }

  while (v97);
LABEL_87:

  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v204 = v206;
  v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v204, v135, &v243, v277, 16);
  if (!v139)
  {
    goto LABEL_129;
  }

  v203 = *v244;
  while (2)
  {
    v205 = 0;
    while (2)
    {
      if (*v244 != v203)
      {
        objc_enumerationMutation(v204);
      }

      v140 = *(*(&v243 + 1) + 8 * v205);
      v239 = 0u;
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v141 = objc_msgSend_asOutput(v140, v136, v137, v138, v203);
      v208 = objc_msgSend_allObjects(v141, v142, v143, v144);

      v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v145, &v239, v276, 16);
      if (v149)
      {
        v209 = *v240;
        do
        {
          v212 = 0;
          v215 = v149;
          do
          {
            if (*v240 != v209)
            {
              objc_enumerationMutation(v208);
            }

            v150 = *(*(&v239 + 1) + 8 * v212);
            if (objc_msgSend_isValid(v150, v146, v147, v148))
            {
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v151 = objc_msgSend_asInput(v140, v146, v147, v148);
              v221 = objc_msgSend_allObjects(v151, v152, v153, v154);

              v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v155, &v235, v275, 16);
              if (!v156)
              {
                goto LABEL_95;
              }

              v160 = *v236;
              v218 = v150;
              while (1)
              {
                v231 = v156;
                for (m = 0; m != v231; ++m)
                {
                  if (*v236 != v160)
                  {
                    objc_enumerationMutation(v221);
                  }

                  v162 = *(*(&v235 + 1) + 8 * m);
                  if (objc_msgSend_isValid(v162, v157, v158, v159))
                  {
                    v163 = objc_msgSend_inputs(v162, v157, v158, v159);
                    v228 = objc_msgSend_indexOfObject_(v163, v164, v140, v165);

                    v169 = objc_msgSend_outputs(v150, v166, v167, v168);
                    objb = objc_msgSend_indexOfObject_(v169, v170, v140, v171);

                    v234 = objc_msgSend_name(v150, v172, v173, v174);
                    v175 = v234;
                    v179 = objc_msgSend_UTF8String(v234, v176, v177, v178);
                    objc_msgSend_name(v162, v180, v181, v182);
                    v184 = v183 = v139;
                    v188 = objc_msgSend_UTF8String(v184, v185, v186, v187);
                    v189 = strlen(v179);
                    if (v189 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_19D2AD774();
                    }

                    v190 = v189;
                    if (v189 >= 0x17)
                    {
                      operator new();
                    }

                    BYTE7(__src[1]) = v189;
                    if (v189)
                    {
                      memcpy(__src, v179, v189);
                    }

                    *(__src + v190) = 0;
                    v191 = strlen(v188);
                    if (v191 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_19D2AD774();
                    }

                    v192 = v191;
                    if (v191 >= 0x17)
                    {
                      operator new();
                    }

                    HIBYTE(__dst[2]) = v191;
                    if (v191)
                    {
                      memmove(__dst, v188, v191);
                    }

                    *(__dst + v192) = 0;
                    sub_19D42D0E0(a2, __src, objb + 9, __dst, v228 + 1);
                    if (SHIBYTE(__dst[2]) < 0)
                    {
                      operator delete(__dst[0]);
                      v139 = v183;
                      v149 = v215;
                      v150 = v218;
                      if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                      {
                        goto LABEL_121;
                      }
                    }

                    else
                    {
                      v139 = v183;
                      v149 = v215;
                      v150 = v218;
                      if ((SBYTE7(__src[1]) & 0x80000000) == 0)
                      {
LABEL_121:

                        continue;
                      }
                    }

                    operator delete(*&__src[0]);
                    goto LABEL_121;
                  }
                }

                v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v157, &v235, v275, 16);
                if (!v156)
                {
LABEL_95:

                  break;
                }
              }
            }

            ++v212;
          }

          while (v212 != v149);
          v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v146, &v239, v276, 16);
        }

        while (v149);
      }

      if (++v205 != v139)
      {
        continue;
      }

      break;
    }

    v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v204, v136, &v243, v277, 16);
    if (v139)
    {
      continue;
    }

    break;
  }

LABEL_129:

  v193 = v271;
  if (v271)
  {
    v194 = v272;
    v195 = v271;
    if (v272 != v271)
    {
      do
      {
        v196 = *(v194 - 1);
        v194 -= 3;
        if (v196 < 0)
        {
          operator delete(*v194);
        }
      }

      while (v194 != v193);
      v195 = v271;
    }

    v272 = v193;
    operator delete(v195);
  }

  v197 = v273;
  if (v273)
  {
    v198 = v274;
    v199 = v273;
    if (v274 != v273)
    {
      do
      {
        v200 = *(v198 - 1);
        v198 -= 3;
        if (v200 < 0)
        {
          operator delete(*v198);
        }
      }

      while (v198 != v197);
      v199 = v273;
    }

    v274 = v197;
    operator delete(v199);
  }

  return 1;
}

void sub_19D37CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v14 = STACK[0x820];
  if (STACK[0x820])
  {
    v15 = STACK[0x828];
    v16 = STACK[0x820];
    if (STACK[0x828] != v14)
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
      v16 = STACK[0x820];
    }

    STACK[0x828] = v14;
    operator delete(v16);
  }

  v18 = STACK[0x838];
  if (STACK[0x838])
  {
    v19 = STACK[0x840];
    v20 = STACK[0x838];
    if (STACK[0x840] != v18)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = STACK[0x838];
    }

    STACK[0x840] = v18;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D37CE70(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v22, v26, 16);
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = objc_msgSend_name(*(*(&v22 + 1) + 8 * i), v5, v6, v7);
        v12 = v11;
        v16 = objc_msgSend_UTF8String(v11, v13, v14, v15);
        v17 = strlen(v16);
        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_19D2AD774();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          operator new();
        }

        v21 = v17;
        if (v17)
        {
          memmove(&__dst, v16, v17);
        }

        *(&__dst + v18) = 0;
        sub_19D37D5A4(a1, &__dst);
        if (v21 < 0)
        {
          operator delete(__dst);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v22, v26, 16);
    }

    while (v8);
  }
}

void sub_19D37D03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_19D2AD850(v15);

  _Unwind_Resume(a1);
}

uint64_t sub_19D37D0A8(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v14 = v2;
  if (!v2)
  {
    LOBYTE(__dst) = 0;
    v4 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (v13 == 2 && *__dst == 12376)
    {
      v5 = 1;
      goto LABEL_22;
    }

    if (v13 == 2 && *__dst == 12377)
    {
      v5 = 9;
    }

    else
    {
      if (v13 == 2 && *__dst == 12632)
      {
        v5 = 2;
        goto LABEL_22;
      }

      if (v13 != 2 || *__dst != 12633)
      {
        if (v13 != 4 || *__dst != 1701736270)
        {
LABEL_38:
          exception = __cxa_allocate_exception(0x10uLL);
          *(&v10.__r_.__value_.__s + 23) = 17;
          strcpy(&v10, "Unexpected Port: ");
          v8 = std::string::append(&v10, a1);
          v9 = *&v8->__r_.__value_.__l.__data_;
          v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
          *&v11.__r_.__value_.__l.__data_ = v9;
          v8->__r_.__value_.__l.__size_ = 0;
          v8->__r_.__value_.__r.__words[2] = 0;
          v8->__r_.__value_.__r.__words[0] = 0;
          std::logic_error::logic_error(exception, &v11);
          exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
          __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
        }

        goto LABEL_21;
      }

      v5 = 10;
    }

LABEL_36:
    operator delete(__dst);
    return v5;
  }

  memcpy(&__dst, a1, v2);
  *(&__dst + v3) = 0;
  v4 = v14;
  if (v14 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v4 != 2)
  {
    if (v4 != 4 || __dst != 1701736270)
    {
      goto LABEL_38;
    }

LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (__dst == 12376)
  {
    return 1;
  }

  if (__dst == 12377)
  {
    v5 = 9;
    goto LABEL_22;
  }

  if (__dst != 12632)
  {
    if (__dst != 12633)
    {
      goto LABEL_38;
    }

    v5 = 10;
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      return v5;
    }

    goto LABEL_36;
  }

  return 2;
}

void sub_19D37D3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      if (v23 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t sub_19D37D428(uint64_t a1, uint64_t a2, char *a3)
{
  sub_19D362F00();
  v6 = off_1EB014868(a2, 0);
  if (!v6)
  {
    sub_19D2C78CC(@"Failed to create NLModelContainer from model data", v7, v8, v9, v10, v11, v12, v13, v15);
  }

  *(a1 + 8) = v6;
  sub_19D37BBB0(a1, a3, v8, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t sub_19D37D49C(uint64_t a1, uint64_t a2, char *a3)
{
  sub_19D37BADC(a1, a2);
  sub_19D37BBB0(a1, a3, v5, v6, v7, v8, v9, v10);
  return 1;
}

void sub_19D37D5A4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

uint64_t sub_19D37D700(uint64_t a1)
{
  sub_19D2A3E48(a1 + 24, *(a1 + 32));
  sub_19D2C6548(a1, *(a1 + 8));
  return a1;
}

uint64_t *sub_19D37D73C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    sub_19D2AEA2C("map::at:  key not found");
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
      v6 = *(v2 + 55);
      if (v6 >= 0)
      {
        v7 = *(v2 + 55);
      }

      else
      {
        v7 = v2[5];
      }

      if (v6 >= 0)
      {
        v8 = (v2 + 4);
      }

      else
      {
        v8 = v2[4];
      }

      if (v7 >= v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v7;
      }

      v10 = memcmp(v5, v8, v9);
      v11 = v4 < v7;
      if (v10)
      {
        v11 = v10 < 0;
      }

      if (!v11)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_25;
      }
    }

    v12 = memcmp(v8, v5, v9);
    v13 = v7 < v4;
    if (v12)
    {
      v13 = v12 < 0;
    }

    if (!v13)
    {
      return v2[7];
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_19D37D83C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = sub_19D398AE4();
  sub_19D454D68(v2, v1);
  return 0;
}

__n128 sub_19D37D87C@<Q0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
LABEL_25:
    sub_19D2AEA2C("map::at:  key not found");
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v4 + 55);
      if (v8 >= 0)
      {
        v9 = *(v4 + 55);
      }

      else
      {
        v9 = v4[5];
      }

      if (v8 >= 0)
      {
        v10 = v4 + 4;
      }

      else
      {
        v10 = v4[4];
      }

      if (v9 >= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v9;
      }

      v12 = memcmp(v7, v10, v11);
      v13 = v6 < v9;
      if (v12)
      {
        v13 = v12 < 0;
      }

      if (!v13)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    v14 = memcmp(v10, v7, v11);
    v15 = v9 < v6;
    if (v14)
    {
      v15 = v14 < 0;
    }

    if (!v15)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  result = *(v4 + 7);
  v17 = *(v4 + 9);
  *(a3 + 32) = v4[11];
  *a3 = result;
  *(a3 + 16) = v17;
  return result;
}

void sub_19D37D990(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = sub_19D398AE4();
  sub_19D454E1C(v3, v2, v1);
}

char *sub_19D37D9D8(uint64_t a1, const void **a2, uint64_t a3)
{
  result = (sub_19D2C444C(a1, a2) + 7);
  if (result != a3)
  {
    return sub_19D37DAE0(result, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  }

  return result;
}

__n128 sub_19D37DA88(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = sub_19D37DE20(a1 + 24, a2);
  result = *a3;
  v6 = *(a3 + 16);
  v4[11] = *(a3 + 32);
  *(v4 + 9) = v6;
  *(v4 + 7) = result;
  return result;
}

char *sub_19D37DAE0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

void *sub_19D37DC2C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = *result;
  if (result[2] - *result < a4)
  {
    if (v7)
    {
      result[1] = v7;
      v8 = v7;
      v9 = a4;
      operator delete(v8);
      a4 = v9;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v10 = result[1];
  v11 = v10 - v7;
  if (v10 - v7 < a4)
  {
    v12 = &__src[v11];
    if (v10 == v7)
    {
      v13 = result[1];
      v14 = v13;
      if (v12 == a3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = memmove(*result, __src, v11);
      v13 = v6[1];
      v14 = v13;
      if (v12 == a3)
      {
        goto LABEL_21;
      }
    }

    v17 = &a3[v7] - &__src[v10];
    if (v17 >= 0x20)
    {
      v14 = v13;
      if (v7 + v13 - &__src[v10] >= 0x20)
      {
        v12 += v17 & 0xFFFFFFFFFFFFFFE0;
        v14 = (v13 + (v17 & 0xFFFFFFFFFFFFFFE0));
        v18 = (v13 + 16);
        v19 = &__src[v10 - v7 + 16];
        v20 = v17 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v21 = *v19;
          *(v18 - 1) = *(v19 - 1);
          *v18 = v21;
          v18 += 2;
          v19 += 32;
          v20 -= 32;
        }

        while (v20);
        if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v14 = v13;
    }

    do
    {
      v22 = *v12++;
      *v14++ = v22;
    }

    while (v12 != a3);
LABEL_21:
    v16 = v14;
    goto LABEL_22;
  }

  v15 = a3 - __src;
  if (v15)
  {
    result = memmove(*result, __src, v15);
  }

  v16 = v7 + v15;
LABEL_22:
  v6[1] = v16;
  return result;
}

void *sub_19D37DE20(uint64_t a1, const void **a2)
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

void sub_19D37DFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D37DFE8(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v50 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BA0B8;
  sub_19D395534(a1 + 1016, __src);
  HIBYTE(v52) = 14;
  strcpy(&__s2, "dilationStride");
  LODWORD(v47) = 1;
  sub_19D37EC34(a1 + 1016, &__s2);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__s2);
  }

  *(a1 + 1152) = 0;
  *(a1 + 1136) = 0u;
  *(a1 + 1160) = __src[7];
  v7 = *(a1 + 1040);
  v8 = *(a1 + 1080);
  v9 = *(a1 + 1120);
  LODWORD(__s2) = 1;
  *(&__s2 + 1) = v7;
  v52 = v8;
  v54 = 0;
  v55 = 0;
  v53 = v9;
  sub_19D2AD9C0(a1 + 16, &__s2, &v56);
  v10 = sub_19D395094((a1 + 1040));
  v11 = sub_19D395094((a1 + 1080));
  v12 = *(a1 + 1128);
  LODWORD(__s2) = 9;
  *(&__s2 + 1) = v10;
  v52 = v11;
  v54 = 0;
  v55 = 0;
  v53 = v12;
  sub_19D2AD9C0(a1 + 40, &__s2, &v56);
  v13 = __src[72];
  HIBYTE(v52) = 4;
  strcpy(&__s2, "bias");
  v53 = v13;
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  sub_19D37F190(&v47, v48, &__s2);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__s2);
    HIBYTE(v52) = 4;
    strcpy(&__s2, "bias");
    v14 = v48[0];
    if (!v48[0])
    {
LABEL_44:
      v35 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    HIBYTE(v52) = 4;
    strcpy(&__s2, "bias");
    v14 = v48[0];
    if (!v48[0])
    {
      goto LABEL_44;
    }
  }

  v15 = v48;
  v16 = v14;
  do
  {
    v17 = v15;
    v18 = (v16 + 32);
    v19 = v16[55];
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v16 + 5);
    }

    if (v20 >= 0)
    {
      v21 = v16 + 32;
    }

    else
    {
      v21 = *(v16 + 4);
    }

    if (v19 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v19;
    }

    v23 = v19 < 4;
    v24 = memcmp(v21, &__s2, v22);
    if (v24)
    {
      v25 = v24 < 0;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v15 = v17;
    }

    else
    {
      v15 = v16;
    }

    v16 = *&v16[v26];
  }

  while (v16);
  if (v15 == v48)
  {
    goto LABEL_44;
  }

  if (v25)
  {
    v27 = (v17 + 4);
  }

  else
  {
    v27 = v18;
  }

  v28 = *(v15 + 55);
  v29 = v15[5];
  if ((v28 & 0x80u) != 0)
  {
    v30 = *v27;
  }

  else
  {
    v29 = v28;
    v30 = v27;
  }

  if (v29 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v29;
  }

  v32 = v29 > 4;
  v33 = memcmp(&__s2, v30, v31);
  v34 = v33 < 0;
  if (!v33)
  {
    v34 = v32;
  }

  if (v34)
  {
    goto LABEL_44;
  }

  v38 = v14;
  while (1)
  {
    while (1)
    {
      v39 = v38[55];
      if (v39 >= 0)
      {
        v40 = v38[55];
      }

      else
      {
        v40 = *(v38 + 5);
      }

      if (v39 >= 0)
      {
        v41 = v38 + 32;
      }

      else
      {
        v41 = *(v38 + 4);
      }

      if (v40 >= 4)
      {
        v42 = 4;
      }

      else
      {
        v42 = v40;
      }

      v43 = memcmp(&__s2, v41, v42);
      v44 = v43 < 0;
      if (!v43)
      {
        v44 = v40 > 4;
      }

      if (!v44)
      {
        break;
      }

      v38 = *v38;
      if (!v38)
      {
        goto LABEL_64;
      }
    }

    v45 = memcmp(v41, &__s2, v42);
    v46 = v40 < 4;
    if (v45)
    {
      v46 = v45 < 0;
    }

    if (!v46)
    {
      break;
    }

    v38 = *(v38 + 1);
    if (!v38)
    {
LABEL_64:
      sub_19D2AEA2C("map::at:  key not found");
    }
  }

  v35 = *(v38 + 7);
LABEL_45:
  v36 = *(a1 + 1128);
  *(a1 + 1136) = 0;
  *(a1 + 1144) = v36;
  *(a1 + 1152) = v35;
  sub_19D2A3E48(&v47, v14);
  return a1;
}

void sub_19D37E3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_19D2A3E48(&a10, a11);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_19D2A3E48(v24 + 1016, *(v24 + 1024));
  sub_19D38640C(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_19D37E480(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 200);

  return v10(a2, a1);
}

uint64_t sub_19D37E584(uint64_t a1, int a2, int a3)
{
  *(a1 + 280) = a3;
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  if (v4 != v5)
  {
    v6 = (a3 * a2);
    do
    {
      v7 = *v4++;
      (*(*v7 + 16))(v7, v6);
    }

    while (v4 != v5);
  }

  v8 = *(*a1 + 32);

  return v8(a1);
}

uint64_t sub_19D37E628(void *a1, int a2)
{
  v4 = a1[2];
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  v7 = sub_19D3950F8((a1 + 130));
  v8 = sub_19D37EE00((a1 + 127), 0);
  v9 = sub_19D37F014((a1 + 127), 0);
  v10 = sub_19D3950F8((a1 + 135));
  v17 = sub_19D37EE00((a1 + 127), 1);
  v16 = sub_19D37F014((a1 + 127), 1);
  v18 = a1[141];
  v15 = (*(*a1 + 224))(a1);
  result = (*(*a1 + 216))(a1, 1);
  v12 = a1[6];
  if (!v12)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = *(v12 + 32);
      if (v14 <= a2)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_8;
      }
    }

    if (v14 >= a2)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v13[5] = (v6 + 2 * v7 - v8) / v9 + 1;
  v13[6] = (v5 + 2 * v10 - v17) / v16 + 1;
  v13[7] = v18;
  v13[8] = v15;
  v13[9] = result;
  return result;
}

BOOL sub_19D37E84C(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    return 0;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v7 <= a3)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= a3)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (v6[5] != *a2)
  {
    return 1;
  }

  v8 = *v5;
  if (!*v5)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 32);
      if (v10 <= a3)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 >= a3)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v9[6] != a2[1])
  {
    return 1;
  }

  v11 = *v5;
  if (!*v5)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      if (v13 <= a3)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_26;
      }
    }

    if (v13 >= a3)
    {
      return v12[7] != a2[2];
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_26;
    }
  }
}

__n128 sub_19D37EAC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *sub_19D387A2C(a1, 1);
  v7 = *(a1 + 16);
  v8 = *(v7 + 56);
  *a3 = 1;
  result = *(v7 + 40);
  *(a3 + 8) = result;
  *(a3 + 24) = v8;
  *(a3 + 32) = a2;
  *(a3 + 40) = v6;
  return result;
}

__n128 sub_19D37EB1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *sub_19D387D50(a1, 9);
  v7 = *(a1 + 40);
  v8 = *(v7 + 56);
  *a3 = 1;
  result = *(v7 + 40);
  *(a3 + 8) = result;
  *(a3 + 24) = v8;
  *(a3 + 32) = a2;
  *(a3 + 40) = v6;
  return result;
}

uint64_t sub_19D37EB78(uint64_t a1)
{
  *a1 = &unk_1F10BA0B8;
  sub_19D2A3E48(a1 + 1016, *(a1 + 1024));

  return sub_19D38640C(a1);
}

void sub_19D37EBD4(uint64_t a1)
{
  *a1 = &unk_1F10BA0B8;
  sub_19D2A3E48(a1 + 1016, *(a1 + 1024));
  v2 = sub_19D38640C(a1);

  operator delete(v2);
}

void *sub_19D37EC34(uint64_t a1, const void **a2)
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

void sub_19D37EDEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D37EE00(uint64_t a1, int a2)
{
  v16 = 6;
  strcpy(__s1, "filter");
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_20:
    sub_19D2AEA2C("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 55);
      if (v4 >= 0)
      {
        v5 = *(v2 + 55);
      }

      else
      {
        v5 = v2[5];
      }

      if (v4 >= 0)
      {
        v6 = (v2 + 4);
      }

      else
      {
        v6 = v2[4];
      }

      if (v5 >= 6)
      {
        v7 = 6;
      }

      else
      {
        v7 = v5;
      }

      v8 = memcmp(__s1, v6, v7);
      v9 = v8 < 0;
      if (!v8)
      {
        v9 = v5 > 6;
      }

      if (!v9)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    v10 = memcmp(v6, __s1, v7);
    v11 = v5 < 6;
    if (v10)
    {
      v11 = v10 < 0;
    }

    if (!v11)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v17 = a2;
  v12 = *(v2 + 18);
  if (v12 == -1)
  {
    sub_19D37EF7C();
  }

  v18 = &v17;
  result = (off_1F10BA230[v12])(&v18, v2 + 7);
  if (v16 < 0)
  {
    v14 = result;
    operator delete(__s1[0]);
    return v14;
  }

  return result;
}

void sub_19D37EF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D37EF7C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

uint64_t sub_19D37EFD4(unsigned int **a1, uint64_t a2)
{
  v2 = **a1;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = v2 + 2;
  }

  if (v2 >= 2)
  {
    sub_19D2AEA2C("array::at");
  }

  return *(a2 + 8 * v2);
}

uint64_t sub_19D37F014(uint64_t a1, int a2)
{
  v16 = 6;
  strcpy(__s1, "stride");
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_20:
    sub_19D2AEA2C("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 55);
      if (v4 >= 0)
      {
        v5 = *(v2 + 55);
      }

      else
      {
        v5 = v2[5];
      }

      if (v4 >= 0)
      {
        v6 = (v2 + 4);
      }

      else
      {
        v6 = v2[4];
      }

      if (v5 >= 6)
      {
        v7 = 6;
      }

      else
      {
        v7 = v5;
      }

      v8 = memcmp(__s1, v6, v7);
      v9 = v8 < 0;
      if (!v8)
      {
        v9 = v5 > 6;
      }

      if (!v9)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_20;
      }
    }

    v10 = memcmp(v6, __s1, v7);
    v11 = v5 < 6;
    if (v10)
    {
      v11 = v10 < 0;
    }

    if (!v11)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v17 = a2;
  v12 = *(v2 + 18);
  if (v12 == -1)
  {
    sub_19D37EF7C();
  }

  v18 = &v17;
  result = (off_1F10BA230[v12])(&v18, v2 + 7);
  if (v16 < 0)
  {
    v14 = result;
    operator delete(__s1[0]);
    return v14;
  }

  return result;
}

void sub_19D37F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D37F190(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_19D2C3F28(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_19D37F290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

void *sub_19D37F2A4(void *result)
{
  *result = &unk_1F10BA250;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void *sub_19D37F318(void *result)
{
  *result = &unk_1F10BA250;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_19D37F38C(void *a1)
{
  *a1 = &unk_1F10BA250;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_19D37F40C(uint64_t a1, uint64_t a2)
{
  v4 = 1024;
  if (*(a2 + 1057))
  {
    v4 = 1040;
  }

  if (*(a2 + v4))
  {
    v5 = *(a1 + 8);
    v6 = (*(*a2 + 72))(a2, 1);
    v7 = sub_19D427EDC(a2);
    v8 = sub_19D387A2C(a2, 1);
    if (*(a2 + 1057))
    {
      v9 = 1040;
    }

    else
    {
      v9 = 1024;
    }

    v10 = sub_19D387D50(a2, 9);
    v11 = 1032;
    if (*(a2 + 1057))
    {
      v11 = 1048;
    }

    __p = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v12 = (*(*v5 + 56))(v5, v6, v7, v8, a2 + v9, v10, a2 + v11, 0, &__p, v21);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    __p = v12;
    sub_19D2F8C80(a2 + 160, &__p);
  }

  v13 = *(a2 + 1016);
  if (v13)
  {
    v14 = *(a1 + 8);
    v15 = sub_19D427EDC(a2);
    v16 = 1024;
    if (*(a2 + 1057))
    {
      v16 = 1040;
    }

    if (*(a2 + v16))
    {
      v17 = sub_19D387D50(a2, 9);
    }

    else
    {
      v17 = sub_19D387A2C(a2, 1);
    }

    v18 = v17;
    v19 = sub_19D387D50(a2, 9);
    __p = 0;
    v23 = 0;
    v24 = 0;
    v20 = (*(*v14 + 48))(v14, v13, v15, v18, v19, &__p, 0, 0, 0.0);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    __p = v20;
    sub_19D2F8C80(a2 + 160, &__p);
  }
}

void sub_19D37F648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D37F668(uint64_t a1, uint64_t a2)
{
  v3 = 1024;
  if (*(a2 + 1057))
  {
    v3 = 1040;
  }

  if (*(a2 + v3))
  {
    (*(*a2 + 72))(a2, 1);
    sub_19D388400();
  }

  v4 = *(a2 + 1016);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = sub_19D427EDC(a2);
    v7 = 1024;
    if (*(a2 + 1057))
    {
      v7 = 1040;
    }

    if (*(a2 + v7))
    {
      v8 = sub_19D387D50(a2, 9);
    }

    else
    {
      v8 = sub_19D387A2C(a2, 1);
    }

    v9 = v8;
    v10 = sub_19D387D50(a2, 9);
    __p = 0;
    v13 = 0;
    v14 = 0;
    v11 = (*(*v5 + 48))(v5, v4, v6, v9, v10, &__p, 0, 0, 0.0);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    __p = v11;
    sub_19D2F8C80(a2 + 160, &__p);
  }
}

void sub_19D37FAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D37FB00(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 104))(a2);
  if (v4 > 15)
  {
    switch(v4)
    {
      case 16:
LABEL_10:
        v14 = *(a1 + 8);
        v15 = (*(*a2 + 72))(a2, 1);
        v16 = sub_19D387A2C(a2, 1);
        v17 = sub_19D387D50(a2, 9);
        __p[0] = 0;
        __p[1] = 0;
        *&v21 = 0;
        v18 = (*(*v14 + 48))(v14, 0, v15, v16, v17, __p, 0, 0, 0.0);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        __p[0] = v18;
        sub_19D2F8C80(a2 + 160, __p);
        return;
      case 25:
        (*(*a2 + 160))(__p, a2, 1);
        operator new();
      case 28:
        v10 = *(a1 + 8);
        v19 = 2;
        (*(*a2 + 160))(__p, a2, 1);
        v11 = sub_19D387A2C(a2, 1);
        (*(*a2 + 160))(&v22, a2, 2);
        v12 = sub_19D387A2C(a2, 2);
        v13 = sub_19D387D50(a2, 9);
        __p[0] = (*(*v10 + 24))(v10, &v19, __p, v11, &v22, v12, v13, 0);
        sub_19D2F8C80(a2 + 160, __p);
        break;
    }
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 != 14)
      {
        if (v4 == 15)
        {
          v5 = (*(*a2 + 72))(a2, 1);
          v6 = *(a1 + 8);
          sub_19D37B558(__p, 0, v5, 0, 0, 0, v5, v5, v5);
          v7 = sub_19D387A2C(a2, 1);
          v8 = sub_19D387A2C(a2, 2);
          v9 = sub_19D387D50(a2, 9);
          __p[0] = (*(*v6 + 16))(v6, __p, v7, v8, v9);
          sub_19D2F8C80(a2 + 160, __p);
        }

        return;
      }

      goto LABEL_10;
    }

    (*(*a2 + 16))(__p, a2);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((*(*a2 + 72))(a2, 1) >= 1)
    {
      operator new();
    }
  }
}

void sub_19D3800F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D38012C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v12 = 7;
  (*(*a2 + 160))(&v11, a2, 1);
  v4 = sub_19D387A2C(a2, 1);
  v5 = (*(*a2 + 224))(a2);
  v6 = (*(*a2 + 216))(a2, 1);
  v7 = vdupq_n_s64(1uLL);
  v8 = 1;
  v9 = v5;
  v10 = v6;
  *&v11 = (*(*v3 + 40))(v3, &v12, &v11, v4, &v7, a2 + 1032, 0);
  sub_19D2F8C80(a2 + 160, &v11);
  (*(*a2 + 160))(&v11, a2, 1);
  sub_19D388400();
}

void sub_19D380D9C(uint64_t a1, uint64_t a2)
{
  v12 = &v13;
  v13 = a2;
  if (((*(*a2 + 120))(a2) & 0x40) == 0)
  {
    (*(*v13 + 64))(v13, 9);
    sub_19D388400();
  }

  v3 = *(a1 + 8);
  sub_19D3813D0(&v11, &v12, 2);
  v4 = sub_19D387A2C(v13, 1);
  v5 = v13;
  v6 = sub_19D387D50(v13, 9);
  *&v11 = (*(*v3 + 16))(v3, &v11, v4, v5 + 1016, v6);
  sub_19D2F8C80(v13 + 160, &v11);
  v7 = *(a1 + 8);
  sub_19D3813D0(&v11, &v12, 0);
  v8 = sub_19D387D50(v13, 9);
  v9 = v13;
  v10 = sub_19D387D50(v13, 9);
  *&v11 = (*(*v7 + 16))(v7, &v11, v8, v9 + 1024, v10);
  sub_19D2F8C80(v13 + 160, &v11);
}

_DWORD *sub_19D3813D0(_DWORD *a1, void **a2, int a3)
{
  v6 = *(**a2 + 24);
  if (!v6)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = *(v6 + 8);
      if (v8 < 2)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (v8 == 1)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v7 + 12) * *(v7 + 10);
  v10 = **a2;
  if (v9 < 2)
  {
    v15 = (*(*v10 + 72))(**a2, 1);
    v16 = (*(***a2 + 72))(**a2, 1);
    v17 = (*(***a2 + 72))(**a2, 1);
    return sub_19D37B558(a1, a3, v15, 0, 0, 0, v16, 0, v17);
  }

  else
  {
    v11 = v10[3];
    if (!v11)
    {
LABEL_17:
      operator new();
    }

    v12 = v10[3];
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 8);
        if (v14 < 2)
        {
          break;
        }

        v12 = *v13;
        if (!*v13)
        {
          goto LABEL_17;
        }
      }

      if (v14 == 1)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v19 = *(v13 + 12) * *(v13 + 10);
    while (1)
    {
      while (1)
      {
        v20 = v11;
        v21 = *(v11 + 8);
        if (v21 < 2)
        {
          break;
        }

        v11 = *v20;
        if (!*v20)
        {
          goto LABEL_23;
        }
      }

      if (v21 == 1)
      {
        break;
      }

      v11 = v20[1];
      if (!v11)
      {
LABEL_23:
        operator new();
      }
    }

    v22 = *(v20 + 14);
    v23 = (*(*v10 + 72))(v10, 1);
    v24 = (*(***a2 + 72))(**a2, 1);
    return sub_19D37B578(a1, a3, v19, v22, 0, 0, 0, v23, 0, v24);
  }
}

void sub_19D3817B0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 80))(a2, 9);
  (*(*a2 + 88))(a2);
  sub_19D388400();
}

void sub_19D382670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3826E8(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 216))(a2, 2);
  (*(*a2 + 88))(a2);
  sub_19D388400();
}

void sub_19D382990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3829B0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 216))(a2, 2);
  (*(*a2 + 224))(a2);
  (*(*a2 + 88))(a2);
  sub_19D388400();
}

void sub_19D3835BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D38361C(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 216))(a2, 1);
  (*(*a2 + 216))(a2, 2);
  (*(*a2 + 72))(a2, 1);
  (*(*a2 + 224))(a2);
  (*(*a2 + 88))(a2);
  sub_19D388400();
}

int *sub_19D384320(int *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = result;
    v4 = (**(result + 6) + 4 * result[6]);
    v5 = (**(result + 5) + 4 * result[5]);
    do
    {
      result = memmove(v4, v5, 4 * v3[4]);
      v5 += 4 * v3[7];
      v4 += 4 * v3[8];
      --v2;
    }

    while (v2);
  }

  return result;
}

float sub_19D3843A0(uint64_t a1)
{
  v2 = **(a1 + 104);
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = **(a1 + 112);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  bzero(v6, 4 * v7 * v8 * v10 * v9 * *(a1 + 88));
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v43 = v11 * v12 / v11;
  v39 = v11 * v12 % v11;
  if (v43 | v39)
  {
    v13 = *(a1 + 32);
    v14 = v13 * *(a1 + 24);
    v15 = v14 / v13;
    v16 = v14 % v13;
    if ((v14 / v13) | (v14 % v13))
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = v41 * v3;
        v42 = v41 * v3 * v4;
        v40 = v5 * v42;
        v22 = v8 * v7;
        v23 = v8 * v7 * v10;
        v24 = v9 * v23;
        v25 = *(a1 + 96);
        v26 = v25 + 5;
        if (v25 >= 0)
        {
          v26 = *(a1 + 96);
        }

        do
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = v18;
          v31 = v40 * v18;
          do
          {
            v32 = 0;
            v33 = v27;
            v34 = v2 + 4 * v3 * v28 + 4 * v21 * v27 + 4 * v42 * v19 + 4 * v31;
            do
            {
              __B = v32;
              v45 = v28;
              v46 = v33;
              v47 = v19;
              v48 = v30;
              *(&__B + v26) = 0;
              v35 = v6 + 4 * __B + 4 * v7 * v45 + 4 * v22 * v46 + 4 * v23 * v47;
              *(v35 + 4 * v24 * v48) = *(v35 + 4 * v24 * v48) + *(v34 + 4 * v32++);
            }

            while (v17 != v32);
            v28 = ++v29 / v13;
            v27 = v29 % v13;
          }

          while (v29 / v13 != v15 || v27 != v16);
          v19 = ++v20 / v11;
          v18 = v20 % v11;
        }

        while (v20 / v11 != v43 || v18 != v39);
      }
    }
  }

  v37 = *(a1 + 96);
  if (v37 < 0)
  {
    v37 = v37 + 5;
  }

  *&__B = *(a1 + 8 * v37 + 16);
  vDSP_vsdiv(**(a1 + 112), 1, &__B, **(a1 + 112), 1, *(a1 + 56) * *(a1 + 64) * *(a1 + 72) * *(a1 + 80) * *(a1 + 88));
  return result;
}

_DWORD *sub_19D384614(_DWORD *result)
{
  if (result[12] <= result[22])
  {
    v1 = result[22];
  }

  else
  {
    v1 = result[12];
  }

  if (v1 >= 1)
  {
    v2 = result;
    v3 = **(result + 14);
    v4 = **(result + 13);
    v5 = **(result + 12);
    v6 = v1;
    do
    {
      memmove(v3, v5, 4 * v2[4] * v2[6] * v2[8] * v2[10]);
      v10 = &v3[4 * v2[4] * v2[6] * v2[8] * v2[10]];
      result = memmove(v10, v4, 4 * v2[14] * v2[16] * v2[18] * v2[20]);
      if (v1 == v2[12])
      {
        v7 = v2[4] * v2[6] * v2[8] * v2[10];
      }

      else
      {
        v7 = 0;
      }

      v8 = v2[14] * v2[16] * v2[18] * v2[20];
      v3 = &v10[4 * v8];
      v5 += 4 * v7;
      if (v1 == v2[22])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v4 += 4 * v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_19D384774(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  v39 = v2 * v1 / v2;
  v37 = v2 * v1 % v2;
  if (v39 | v37)
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = *(result + 16);
    LODWORD(v41) = v4 * v3 % v4;
    HIDWORD(v41) = v4 * v3 / v4;
    if (v41 && v5 != 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *(result + 128);
      v11 = **(result + 136);
      v12 = **(result + 144);
      v13 = *(result + 56);
      v14 = v3 * v5;
      v38 = v1 * v14 * v4;
      v15 = *(result + 64) * v13;
      v16 = v15 * *(result + 72);
      v17 = *(result + 80) * v16;
      v19 = *(result + 96);
      v18 = *(result + 104);
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v19 + 5;
      }

      v21 = v18 + 5;
      if (v18 >= 0)
      {
        v21 = v18;
      }

      v23 = *(result + 112);
      v22 = *(result + 120);
      result = v23;
      v24 = v23 < 0;
      v25 = v23 + 5;
      if (v24)
      {
        result = v25;
      }

      v26 = v22;
      v24 = v22 < 0;
      v27 = v22 + 5;
      if (v24)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      v29 = v10;
      v24 = v10 < 0;
      v30 = v10 + 5;
      if (v24)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      do
      {
        v40 = v9;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        do
        {
          v35 = 0;
          do
          {
            v42[0] = v35;
            v42[1] = v33;
            v42[2] = v32;
            v42[3] = v8;
            v42[4] = v7;
            *(v12 + 4 * v42[v20] + 4 * v13 * v42[v21] + 4 * v15 * v42[result] + 4 * v16 * v42[v28] + 4 * v17 * v42[v31]) = *(v11 + 4 * v5 * v33 + 4 * v14 * v32 + 4 * v14 * v4 * v8 + 4 * v38 * v7 + 4 * v35++);
          }

          while (v5 != v35);
          v33 = ++v34 / v4;
          v32 = v34 % v4;
        }

        while (v34 / v4 != HIDWORD(v41) || v32 != v41);
        ++v9;
        v8 = (v40 + 1) / v2;
        v7 = (v40 + 1) % v2;
      }

      while (v8 != v39 || v7 != v37);
    }
  }

  return result;
}

uint64_t sub_19D3849A0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *__src)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v19 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 0;
  *a1 = &unk_1F10BA440;
  v8 = (a1 + 24);
  v17 = vdupq_n_s64(1uLL);
  do
  {
    v9 = __src[4 * v7 + 32];
    if (v9 < 1)
    {
      break;
    }

    v10 = v7 + 1;
    v11 = *v8;
    if (!*v8)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = *(v11 + 8);
        if (v10 >= v13)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_15;
        }
      }

      if (v7 < v13)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    *(v12 + 5) = v17;
    v12[8] = 0;
    v12[9] = 0;
    ++v7;
    v12[7] = v9;
  }

  while (v10 != 8);
  v14 = __src[64];
  v20 = 9;
  v21 = vdupq_n_s64(1uLL);
  v23 = 0;
  v24 = 0;
  v22 = v14;
  sub_19D2AD9C0(a1 + 40, &v20, &v25);
  if (*__src == 25)
  {
    v15 = __src[80];
    if (v15 == 3)
    {
      v15 = 4;
    }

    *(a1 + 1016) = v15;
  }

  return a1;
}

void sub_19D384BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D384C2C(void ***a1, uint64_t a2, uint64_t a3)
{
  if (((*a1)[13])(a1) == 25 || ((*a1)[13])(a1) == 28)
  {
    (*(**a1[20] + 16))(*a1[20], a3);
    v6 = (*a1)[4];

    return v6(a1);
  }

  else
  {

    return sub_19D387698(a1, a2, a3);
  }
}

uint64_t sub_19D384D48(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 80);

  return v10(a2, a1);
}

BOOL sub_19D384E4C(uint64_t a1, void *a2)
{
  if ((*(*a1 + 104))(a1) != 25 && (*(*a1 + 104))(a1) != 28)
  {
    return 0;
  }

  (*(*a1 + 160))(v9, a1, 1);
  return *a2 != v9[0] || a2[1] != v9[1] || a2[2] != v9[2] || a2[3] != v9[3] || a2[4] != v9[4];
}

uint64_t *sub_19D384F48(void *a1, int a2, int a3)
{
  result = (*(*a1 + 104))(a1);
  if (result == 14)
  {
    v7 = a1[2];
    if (v7 != a1 + 3)
    {
      v8 = (a3 - 1) * a2;
      do
      {
        v9 = v8 * (*(*a1 + 72))(a1, *(v7 + 8));
        result = sub_19D387A2C(a1, *(v7 + 8));
        *result += 4 * v9;
        v10 = v7[1];
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
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != a1 + 3);
    }
  }

  return result;
}

uint64_t *sub_19D38504C(void *a1, uint64_t a2)
{
  result = (*(*a1 + 104))(a1);
  v5 = a1[2];
  v6 = a1 + 3;
  if (result == 14)
  {
    if (v5 != v6)
    {
      do
      {
        v7 = (*(*a1 + 72))(a1, *(v5 + 8)) * a2;
        result = sub_19D387A2C(a1, *(v5 + 8));
        *result -= 4 * v7;
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

      while (v9 != v6);
    }
  }

  else if (v5 != v6)
  {
    do
    {
      result = (*(*a1 + 336))(a1, a2, *(v5 + 8));
      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v10 = *v12 == v5;
          v5 = v12;
        }

        while (!v10);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

void sub_19D3851C0(uint64_t *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v4 = (*(*a1 + 104))(a1);
  v5 = *a1;
  if (v4 == 16)
  {
    v6 = (*(v5 + 72))(a1, 1);
    v7 = (*(*a1 + 224))(a1);
    v8 = v6;
    v9 = (*(*a1 + 216))(a1, 1);
    v10 = a1[6];
    if (!v10)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = *(v10 + 8);
        if (v12 <= a2)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_9;
        }
      }

      if (v12 >= a2)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    *(v11 + 5) = vdupq_n_s64(1uLL);
    v11[7] = v8;
    v11[8] = v7;
    v11[9] = v9;
    return;
  }

  if ((*(v5 + 104))(a1) == 14)
  {
    v13 = a1[6];
    v14 = a1[2];
    if (!v13)
    {
      goto LABEL_25;
    }

    while (1)
    {
      while (1)
      {
        v15 = v13;
        v16 = *(v13 + 8);
        if (v16 <= a2)
        {
          break;
        }

        v13 = *v15;
        if (!*v15)
        {
          goto LABEL_25;
        }
      }

      if (v16 >= a2)
      {
        goto LABEL_26;
      }

      v13 = v15[1];
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  if ((*(*a1 + 104))(a1) == 15)
  {
    v17 = a1[6];
    v14 = a1[2];
    if (!v17)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v15 = v17;
        v18 = *(v17 + 8);
        if (v18 <= a2)
        {
          break;
        }

        v17 = *v15;
        if (!*v15)
        {
          goto LABEL_25;
        }
      }

      if (v18 >= a2)
      {
        break;
      }

      v17 = v15[1];
      if (!v17)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    v19 = *(v14 + 40);
    v20 = *(v14 + 56);
    v15[9] = *(v14 + 72);
    *(v15 + 7) = v20;
    *(v15 + 5) = v19;
    return;
  }

  if ((*(*a1 + 104))(a1) == 3)
  {
    v21 = (*(*a1 + 224))(a1);
    v22 = (*(*a1 + 216))(a1, 1);
    v23 = a1[6];
    v24 = *(a1 + 142);
    v25 = v21;
    if (!v23)
    {
LABEL_36:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v26 = v23;
        v27 = *(v23 + 8);
        if (v27 <= a2)
        {
          break;
        }

        v23 = *v26;
        if (!*v26)
        {
          goto LABEL_36;
        }
      }

      if (v27 >= a2)
      {
        break;
      }

      v23 = v26[1];
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    *(v26 + 5) = vdupq_n_s64(1uLL);
    v26[7] = v24;
    v26[8] = v25;
    v26[9] = v22;
  }

  else if ((*(*a1 + 104))(a1) == 25)
  {
    v28 = a1[6];
    v29 = a1[2];
    v30 = *(v29 + 56);
    *__p = *(v29 + 40);
    v42 = v30;
    v43 = *(v29 + 72);
    v31 = *(a1 + 254);
    if (v31 < 0)
    {
      v31 = v31 + 5;
    }

    __p[v31] = 1;
    if (!v28)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v32 = v28;
        v33 = *(v28 + 8);
        if (v33 <= a2)
        {
          break;
        }

        v28 = *v32;
        if (!*v32)
        {
          goto LABEL_47;
        }
      }

      if (v33 >= a2)
      {
        break;
      }

      v28 = v32[1];
      if (!v28)
      {
        goto LABEL_47;
      }
    }

    v34 = v42;
    *(v32 + 5) = *__p;
    *(v32 + 7) = v34;
    v32[9] = v43;
  }

  else if ((*(*a1 + 104))(a1) == 28)
  {
    v35 = a1[2];
    v36 = *(v35 + 56);
    *__p = *(v35 + 40);
    v42 = v36;
    v43 = *(v35 + 72);
    v37 = sub_19D3858A0((a1 + 5), &v40);
    *v37 = *__p;
    *(v37 + 1) = v42;
    v37[4] = v43;
  }

  else
  {
    v39 = (*(*a1 + 104))(a1);
    sub_19D385990("unable to determine output shape of layer ", &v39);
    v38 = sub_19D398AE4();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_19D454EE8(__p, v38);
    }

    if (SBYTE7(v42) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_19D385878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_19D3858A0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_19D385990(const char *a1, void *a2)
{
  sub_19D2AE334(&v6);
  v4 = strlen(a1);
  sub_19D2AE554(&v6, a1, v4);
  MEMORY[0x19EAFA2F0](&v6, *a2);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v10);
}

void sub_19D385AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
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
  v17 = va_arg(va1, void);
  sub_19D2AE8F8(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x19EAFA410](va1);
  _Unwind_Resume(a1);
}

void sub_19D385B2C(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

uint64_t sub_19D385B54(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BA5C8;
  *(a1 + 1016) = __src[56];
  *(a1 + 1024) = __src[72];
  v7 = *(__src + 96);
  *(a1 + 1048) = v7;
  v8 = *(__src + 80);
  *(a1 + 1052) = v8;
  if (v7 == 0.0)
  {
    v9 = 0.000001;
    if (!v8)
    {
      v9 = 1.0e-12;
    }

    *(a1 + 1048) = v9;
  }

  v10 = *(__src + 32);
  v15 = 1;
  v16 = vdupq_n_s64(1uLL);
  v18 = 0;
  v19 = 0;
  v17 = v10;
  sub_19D2AD9C0(a1 + 16, &v15, &v20);
  v11 = *(__src + 64);
  v15 = 9;
  v16 = vdupq_n_s64(1uLL);
  v18 = 0;
  v19 = 0;
  v17 = v11;
  sub_19D2AD9C0(a1 + 40, &v15, &v20);
  return a1;
}

void sub_19D385D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_19D385D24(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 < 2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 == 1)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v3 + 5);
  v10 = *(v3 + 7);
  v11 = v3[9];
  v5 = *(a1 + 48);
  if (!v5)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 8);
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  result = v9;
  *(v6 + 5) = v9;
  *(v6 + 7) = v10;
  v6[9] = v11;
  return result;
}

uint64_t sub_19D385F04(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 112);

  return v10(a2, a1);
}

BOOL sub_19D3860D8(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (v6 <= a3)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_9;
      }
    }

    if (v6 >= a3)
    {
      return v5[5] != *a2 || v5[6] != a2[1] || v5[7] != a2[2] || v5[8] != a2[3] || v5[9] != a2[4];
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }
}

void sub_19D386204(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

uint64_t sub_19D38622C(uint64_t a1, __int128 *a2, uint64_t a3, void *__src)
{
  *a1 = &unk_1F10BA750;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v6 = __src[6];
  v7 = __src[15];
  *(a1 + 208) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 192) = v6;
  *(a1 + 200) = v7;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 232;
  *(a1 + 240) = a1 + 232;
  *(a1 + 248) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8((a1 + 256), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 272) = *(a2 + 2);
    *(a1 + 256) = v8;
  }

  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  memcpy((a1 + 312), __src, 0x2C0uLL);
  return a1;
}

void sub_19D386398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, void **a16)
{
  sub_19D2C8F00(v24);
  sub_19D2C8F60(v23);
  v26 = *v18;
  if (*v18)
  {
    *(v17 + 168) = v26;
    operator delete(v26);
  }

  sub_19D2AD8CC(v22, *v21);
  sub_19D2AD8CC(a10, *v16);
  sub_19D2AD8CC(a11, *v20);
  sub_19D2AD8CC(a12, *v19);
  sub_19D2AD8CC(a13, *a14);
  sub_19D2AD8CC(a15, *a16);
  _Unwind_Resume(a1);
}

uint64_t sub_19D38640C(uint64_t a1)
{
  *a1 = &unk_1F10BA750;
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 248))
  {
    v4 = *(a1 + 240);
    v5 = *(*(a1 + 232) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(a1 + 248) = 0;
    if (v4 != (a1 + 232))
    {
      do
      {
        v7 = v4[1];
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (a1 + 232));
    }
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 216);
    v10 = *(a1 + 208);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *(a1 + 208);
    }

    *(a1 + 216) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    *(a1 + 168) = v12;
    operator delete(v12);
  }

  sub_19D2AD8CC(a1 + 136, *(a1 + 144));
  sub_19D2AD8CC(a1 + 112, *(a1 + 120));
  sub_19D2AD8CC(a1 + 88, *(a1 + 96));
  sub_19D2AD8CC(a1 + 64, *(a1 + 72));
  sub_19D2AD8CC(a1 + 40, *(a1 + 48));
  sub_19D2AD8CC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_19D3865C8(uint64_t a1)
{
  v2 = *(a1 + 208);
  for (i = *(a1 + 216); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(a1 + 216) = v2;
}

uint64_t sub_19D386664(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(a1 + 216);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v5 = *v1;
    v6 = v1[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *v5;
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v4 = *v5;
    }

    v3 = (v4 + v3);
    v1 += 2;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_19D386720(uint64_t a1)
{
  v1 = a1 + 232;
  v2 = *(a1 + 240);
  if (v2 == a1 + 232)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + *(v2 + 16));
    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return result;
}

void sub_19D386754(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 16);
  v3 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    do
    {
      sub_19D2C7CE4(a2, v2 + 8);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_19D3867E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3867FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      sub_19D2C7CE4(a2, v2 + 8);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_19D386888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3868A4(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return (*(v3 + 10) * *(v3 + 12) * *(v3 + 14));
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

unint64_t sub_19D386994(void *a1, int a2)
{
  v2 = a1[6];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = *(v3 + 10) * *(v3 + 12) * *(v3 + 14);
  return v5 >> (*(*a1 + 240))(a1);
}

__n128 sub_19D386AB4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (a4)
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
LABEL_8:
      operator new();
    }

    v5 = *(a1 + 24);
    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = *(v5 + 32);
        if (v7 <= a3)
        {
          break;
        }

        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a3)
      {
        break;
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6[8] = *(a2 + 24);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v4 = *v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v4 = v8[1];
      if (!v4)
      {
LABEL_15:
        operator new();
      }
    }

    v8[9] = *(a2 + 32);
  }

  else
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = *(v10 + 8);
        if (v12 <= a3)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_23;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    result = *a2;
    v14 = *(a2 + 16);
    v11[9] = *(a2 + 32);
    *(v11 + 7) = v14;
    *(v11 + 5) = result;
  }

  return result;
}

__n128 sub_19D386D18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  result = *a2;
  v7 = *(a2 + 16);
  v4[9] = *(a2 + 32);
  *(v4 + 7) = v7;
  *(v4 + 5) = result;
  return result;
}

uint64_t sub_19D386E0C(void *a1)
{
  if (a1[24] == 1)
  {
    v1 = 1;
  }

  else
  {
    v2 = a1;
    v1 = (*(*a1 + 72))();
    a1 = v2;
  }

  return (*(*a1 + 88))(a1) * v1;
}

uint64_t sub_19D386EA4(uint64_t a1)
{
  v2 = (*(*a1 + 80))(a1);
  v3 = v2 << (*(*a1 + 240))(a1);
  return (*(*a1 + 88))(a1) * v3;
}

double sub_19D386F7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 284) = *(*a2 + 56);
  result = *(v2 + 48);
  *(a1 + 292) = result;
  return result;
}

__n128 sub_19D386FA8@<Q0>(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = a1 + 24;
  v7 = *(a1 + 24);
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
LABEL_8:
    sub_19D387240("input shape not found at port ", &v18);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v8 = *v5;
    if (!*v5)
    {
LABEL_14:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 8);
        if (v18 >= v10)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_14;
        }
      }

      if (v10 >= v18)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    v11 = v20;
    *(v9 + 5) = v19;
    *(v9 + 7) = v11;
    v9[9] = v21;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v4 = *v5;
  }

  if (!v4)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v4;
      v13 = *(v4 + 8);
      if (v18 >= v13)
      {
        break;
      }

      v4 = *v12;
      if (!*v12)
      {
        goto LABEL_24;
      }
    }

    if (v13 >= v18)
    {
      break;
    }

    v4 = v12[1];
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  result = *(v12 + 5);
  v15 = *(v12 + 7);
  *(a3 + 32) = v12[9];
  *a3 = result;
  *(a3 + 16) = v15;
  return result;
}

void sub_19D387218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D387240(const char *a1, unsigned int *a2)
{
  sub_19D2AE334(&v6);
  v4 = strlen(a1);
  sub_19D2AE554(&v6, a1, v4);
  MEMORY[0x19EAFA2E0](&v6, *a2);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v10);
}

void sub_19D3873AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3873C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

__n128 sub_19D3873D4@<Q0>(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = a1 + 48;
  v7 = *(a1 + 48);
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
LABEL_8:
    sub_19D387240("output shape not found at port ", &v15);
    v8 = sub_19D398AE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_19D454F80();
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
LABEL_11:
      v4 = *v5;
      goto LABEL_12;
    }

    operator delete(__p);
    goto LABEL_11;
  }

LABEL_12:
  if (!v4)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v4;
      v10 = *(v4 + 8);
      if (v15 >= v10)
      {
        break;
      }

      v4 = *v9;
      if (!*v9)
      {
        goto LABEL_18;
      }
    }

    if (v10 >= v15)
    {
      break;
    }

    v4 = v9[1];
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  result = *(v9 + 5);
  v12 = *(v9 + 7);
  *(a3 + 32) = v9[9];
  *a3 = result;
  *(a3 + 16) = v12;
  return result;
}

void sub_19D387568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D387584(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return *(v3 + 18);
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

char *sub_19D387670@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[279] < 0)
  {
    return sub_19D2AD6B8(a2, *(result + 32), *(result + 33));
  }

  *a2 = *(result + 16);
  *(a2 + 16) = *(result + 34);
  return result;
}

uint64_t sub_19D387698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 280) = a3;
  v6 = a1 + 232;
  if (*(a1 + 240) != a1 + 232)
  {
    sub_19D43026C();
  }

  (*(*a1 + 312))(a1, a3, a2);
  if (v4 >= 1)
  {
    do
    {
      v11 = *(a1 + 160);
      v12 = *(a1 + 168);
      while (v11 != v12)
      {
        v13 = *v11++;
        (*(*v13 + 16))(v13, a3);
      }

      (*(*a1 + 320))(a1, a3);
      (*(*a1 + 328))(a1, a3);
    }

    while (v4-- > 1);
  }

  for (i = *(a1 + 240); i != v6; i = *(i + 8))
  {
    sub_19D430284(*(a1 + 8), *(i + 16) * a3, *(i + 24));
    *(i + 24) = 0;
  }

  v8 = *(*a1 + 32);

  return v8(a1);
}

uint64_t sub_19D387870(uint64_t result)
{
  if (*(result + 240) != result + 232)
  {
    sub_19D43026C();
  }

  return result;
}

void sub_19D3878CC(uint64_t a1, int a2)
{
  v2 = a1 + 232;
  v3 = *(a1 + 240);
  if (v3 != a1 + 232)
  {
    do
    {
      sub_19D430284(*(a1 + 8), *(v3 + 16) * a2, *(v3 + 24));
      *(v3 + 24) = 0;
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void sub_19D38792C(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[5] = *(*a2 + 8);
  v6 = a1 + 208;

  sub_19D387B00(v6, a2);
}

uint64_t *sub_19D387A2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3 + 5;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_19D387B00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
LABEL_5:
    *(a1 + 8) = v6;
    return;
  }

  v7 = (v3 - *a1) >> 4;
  v8 = v7 + 1;
  if ((v7 + 1) >> 60)
  {
    sub_19D2AE2B4();
  }

  v9 = v4 - *a1;
  if (v9 >> 3 > v8)
  {
    v8 = v9 >> 3;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v14 = 16 * v7;
  v15 = *a2;
  *(16 * v7) = *a2;
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (v14 + 16);
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v14 - v12;
  memcpy((v14 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_5;
  }

  operator delete(v11);
  *(a1 + 8) = v6;
}

void sub_19D387C50(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[5] = *(*a2 + 8);
  v6 = a1 + 208;

  sub_19D387B00(v6, a2);
}

uint64_t *sub_19D387D50(uint64_t a1, int a2)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3 + 5;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19D387E28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = (result + 24);
  if (v2 != (result + 24))
  {
    v5 = result;
    do
    {
      result = (*(*v5 + 336))(v5, a2, *(v2 + 8));
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_19D387EDC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = (result + 48);
  if (v2 != (result + 48))
  {
    v5 = result;
    do
    {
      result = (*(*v5 + 344))(v5, a2, *(v2 + 8));
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_19D387F90(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  result = (*(*a1 + 72))(a1, a3);
  v7 = a1[9];
  if (!v7)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 32);
      if (v9 <= v3)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= v3)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8[5] += 4 * result * a2;
  return result;
}

uint64_t sub_19D3880A8(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = (*(*a1 + 80))(a1, a3);
  result = (*(*a1 + 240))(a1);
  v8 = a1[12];
  if (!v8)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 32);
      if (v10 <= v3)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

    if (v10 >= v3)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v9[5] += 4 * (v6 << result) * a2;
  return result;
}

__n128 sub_19D3881F0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[2].n128_i32[0];
      if (v5 <= a3)
      {
        break;
      }

      v3 = v4->n128_u64[0];
      if (!v4->n128_u64[0])
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4->n128_u64[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4[2].n128_u32[2] = *a2;
  result = *(a2 + 8);
  v7 = *(a2 + 24);
  v4[5].n128_u64[0] = *(a2 + 40);
  v4[3] = result;
  v4[4] = v7;
  v4[5].n128_u64[1] = *(a2 + 48);
  return result;
}

__n128 sub_19D3882F8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 144);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[2].n128_i32[0];
      if (v5 <= a3)
      {
        break;
      }

      v3 = v4->n128_u64[0];
      if (!v4->n128_u64[0])
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4->n128_u64[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4[2].n128_u32[2] = *a2;
  result = *(a2 + 8);
  v7 = *(a2 + 24);
  v4[5].n128_u64[0] = *(a2 + 40);
  v4[3] = result;
  v4[4] = v7;
  v4[5].n128_u64[1] = *(a2 + 48);
  return result;
}

uint64_t sub_19D388468(uint64_t a1, __int128 *a2, uint64_t a3, void *__src)
{
  *a1 = &unk_1F10BA8C0;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v6 = __src[6];
  v7 = __src[15];
  *(a1 + 208) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 192) = v6;
  *(a1 + 200) = v7;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 232;
  *(a1 + 240) = a1 + 232;
  *(a1 + 248) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8((a1 + 256), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 272) = *(a2 + 2);
    *(a1 + 256) = v8;
  }

  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  memcpy((a1 + 312), __src, 0x2C0uLL);
  return a1;
}

void sub_19D3885D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, void **a16)
{
  sub_19D2C8F00(v24);
  sub_19D2C8F60(v23);
  v26 = *v18;
  if (*v18)
  {
    *(v17 + 168) = v26;
    operator delete(v26);
  }

  sub_19D2AD8CC(v22, *v21);
  sub_19D2AD8CC(a10, *v16);
  sub_19D2AD8CC(a11, *v20);
  sub_19D2AD8CC(a12, *v19);
  sub_19D2AD8CC(a13, *a14);
  sub_19D2AD8CC(a15, *a16);
  _Unwind_Resume(a1);
}

uint64_t sub_19D388648(uint64_t a1)
{
  *a1 = &unk_1F10BA8C0;
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 248))
  {
    v4 = *(a1 + 240);
    v5 = *(*(a1 + 232) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(a1 + 248) = 0;
    if (v4 != (a1 + 232))
    {
      do
      {
        v7 = v4[1];
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (a1 + 232));
    }
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 216);
    v10 = *(a1 + 208);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *(a1 + 208);
    }

    *(a1 + 216) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    *(a1 + 168) = v12;
    operator delete(v12);
  }

  sub_19D2AD8CC(a1 + 136, *(a1 + 144));
  sub_19D2AD8CC(a1 + 112, *(a1 + 120));
  sub_19D2AD8CC(a1 + 88, *(a1 + 96));
  sub_19D2AD8CC(a1 + 64, *(a1 + 72));
  sub_19D2AD8CC(a1 + 40, *(a1 + 48));
  sub_19D2AD8CC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_19D388804(uint64_t a1)
{
  v2 = *(a1 + 208);
  for (i = *(a1 + 216); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(a1 + 216) = v2;
}

uint64_t sub_19D3888A0(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(a1 + 216);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v5 = *v1;
    v6 = v1[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *v5;
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v4 = *v5;
    }

    v3 = (v4 + v3);
    v1 += 2;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_19D38895C(uint64_t a1)
{
  v1 = a1 + 232;
  v2 = *(a1 + 240);
  if (v2 == a1 + 232)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + *(v2 + 16));
    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return result;
}

void sub_19D388990(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 16);
  v3 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    do
    {
      sub_19D2C7CE4(a2, v2 + 8);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_19D388A1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D388A38(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      sub_19D2C7CE4(a2, v2 + 8);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_19D388AC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D388AE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return (*(v3 + 10) * *(v3 + 12) * *(v3 + 14));
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

unint64_t sub_19D388BD0(void *a1, int a2)
{
  v2 = a1[6];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = *(v3 + 10) * *(v3 + 12) * *(v3 + 14);
  return v5 >> (*(*a1 + 240))(a1);
}

__n128 sub_19D388CF0(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (a4)
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
LABEL_8:
      operator new();
    }

    v5 = *(a1 + 24);
    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = *(v5 + 32);
        if (v7 <= a3)
        {
          break;
        }

        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a3)
      {
        break;
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6[8] = *(a2 + 24);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v4 = *v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v4 = v8[1];
      if (!v4)
      {
LABEL_15:
        operator new();
      }
    }

    v8[9] = *(a2 + 32);
  }

  else
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = *(v10 + 8);
        if (v12 <= a3)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_23;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    result = *a2;
    v14 = *(a2 + 16);
    v11[9] = *(a2 + 32);
    *(v11 + 7) = v14;
    *(v11 + 5) = result;
  }

  return result;
}

__n128 sub_19D388F54(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  result = *a2;
  v7 = *(a2 + 16);
  v4[9] = *(a2 + 32);
  *(v4 + 7) = v7;
  *(v4 + 5) = result;
  return result;
}

uint64_t sub_19D389048(void *a1)
{
  if (a1[24] == 1)
  {
    v1 = 1;
  }

  else
  {
    v2 = a1;
    v1 = (*(*a1 + 72))();
    a1 = v2;
  }

  return (*(*a1 + 88))(a1) * v1;
}

uint64_t sub_19D3890E0(uint64_t a1)
{
  v2 = (*(*a1 + 80))(a1);
  v3 = v2 << (*(*a1 + 240))(a1);
  return (*(*a1 + 88))(a1) * v3;
}

double sub_19D3891B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 284) = *(*a2 + 56);
  result = *(v2 + 48);
  *(a1 + 292) = result;
  return result;
}

__n128 sub_19D3891E4@<Q0>(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = a1 + 24;
  v7 = *(a1 + 24);
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
LABEL_8:
    sub_19D387240("input shape not found at port ", &v18);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v8 = *v5;
    if (!*v5)
    {
LABEL_14:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 8);
        if (v18 >= v10)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_14;
        }
      }

      if (v10 >= v18)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    v11 = v20;
    *(v9 + 5) = v19;
    *(v9 + 7) = v11;
    v9[9] = v21;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v4 = *v5;
  }

  if (!v4)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v4;
      v13 = *(v4 + 8);
      if (v18 >= v13)
      {
        break;
      }

      v4 = *v12;
      if (!*v12)
      {
        goto LABEL_24;
      }
    }

    if (v13 >= v18)
    {
      break;
    }

    v4 = v12[1];
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  result = *(v12 + 5);
  v15 = *(v12 + 7);
  *(a3 + 32) = v12[9];
  *a3 = result;
  *(a3 + 16) = v15;
  return result;
}

void sub_19D389454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_19D38947C@<Q0>(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = a1 + 48;
  v7 = *(a1 + 48);
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
LABEL_8:
    sub_19D387240("output shape not found at port ", &v15);
    v8 = sub_19D398AE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_19D454F80();
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
LABEL_11:
      v4 = *v5;
      goto LABEL_12;
    }

    operator delete(__p);
    goto LABEL_11;
  }

LABEL_12:
  if (!v4)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v4;
      v10 = *(v4 + 8);
      if (v15 >= v10)
      {
        break;
      }

      v4 = *v9;
      if (!*v9)
      {
        goto LABEL_18;
      }
    }

    if (v10 >= v15)
    {
      break;
    }

    v4 = v9[1];
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  result = *(v9 + 5);
  v12 = *(v9 + 7);
  *(a3 + 32) = v9[9];
  *a3 = result;
  *(a3 + 16) = v12;
  return result;
}

void sub_19D389610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D38962C(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return *(v3 + 18);
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

char *sub_19D389718@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[279] < 0)
  {
    return sub_19D2AD6B8(a2, *(result + 32), *(result + 33));
  }

  *a2 = *(result + 16);
  *(a2 + 16) = *(result + 34);
  return result;
}

uint64_t sub_19D389740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 280) = a3;
  v6 = a1 + 232;
  if (*(a1 + 240) != a1 + 232)
  {
    sub_19D43026C();
  }

  (*(*a1 + 312))(a1, a3, a2);
  if (v4 >= 1)
  {
    do
    {
      v11 = *(a1 + 160);
      v12 = *(a1 + 168);
      while (v11 != v12)
      {
        v13 = *v11++;
        (*(*v13 + 16))(v13, a3);
      }

      (*(*a1 + 320))(a1, a3);
      (*(*a1 + 328))(a1, a3);
    }

    while (v4-- > 1);
  }

  for (i = *(a1 + 240); i != v6; i = *(i + 8))
  {
    sub_19D430284(*(a1 + 8), *(i + 16) * a3, *(i + 24));
    *(i + 24) = 0;
  }

  v8 = *(*a1 + 32);

  return v8(a1);
}

void sub_19D389918(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[5] = *(*a2 + 8);
  v6 = a1 + 208;

  sub_19D387B00(v6, a2);
}

void sub_19D389A18(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[5] = *(*a2 + 8);
  v6 = a1 + 208;

  sub_19D387B00(v6, a2);
}

uint64_t sub_19D389B1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = (result + 24);
  if (v2 != (result + 24))
  {
    v5 = result;
    do
    {
      result = (*(*v5 + 336))(v5, a2, *(v2 + 8));
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_19D389BD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = (result + 48);
  if (v2 != (result + 48))
  {
    v5 = result;
    do
    {
      result = (*(*v5 + 344))(v5, a2, *(v2 + 8));
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_19D389C84(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  result = (*(*a1 + 72))(a1, a3);
  v7 = a1[9];
  if (!v7)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 32);
      if (v9 <= v3)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= v3)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8[5] += 4 * result * a2;
  return result;
}

uint64_t sub_19D389D9C(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = (*(*a1 + 80))(a1, a3);
  result = (*(*a1 + 240))(a1);
  v8 = a1[12];
  if (!v8)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 32);
      if (v10 <= v3)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

    if (v10 >= v3)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v9[5] += 4 * (v6 << result) * a2;
  return result;
}

__n128 sub_19D389EE4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[2].n128_i32[0];
      if (v5 <= a3)
      {
        break;
      }

      v3 = v4->n128_u64[0];
      if (!v4->n128_u64[0])
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4->n128_u64[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4[2].n128_u32[2] = *a2;
  result = *(a2 + 8);
  v7 = *(a2 + 24);
  v4[5].n128_u64[0] = *(a2 + 40);
  v4[3] = result;
  v4[4] = v7;
  v4[5].n128_u64[1] = *(a2 + 48);
  return result;
}

__n128 sub_19D389FEC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 144);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[2].n128_i32[0];
      if (v5 <= a3)
      {
        break;
      }

      v3 = v4->n128_u64[0];
      if (!v4->n128_u64[0])
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      break;
    }

    v3 = v4->n128_u64[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4[2].n128_u32[2] = *a2;
  result = *(a2 + 8);
  v7 = *(a2 + 24);
  v4[5].n128_u64[0] = *(a2 + 40);
  v4[3] = result;
  v4[4] = v7;
  v4[5].n128_u64[1] = *(a2 + 48);
  return result;
}

void sub_19D38ABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_19D38ACDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_msgSend_labels(*(a1 + 32), v2, v3, v4);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  objc_msgSend_computeLoss_(WeakRetained, v10, *(a1 + 40), v11);
  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, *(a1 + 72), v15 / v9);
  }

  v17 = objc_msgSend_seqLearningRateDecayHandler(WeakRetained, v12, v13, v14);
  objc_msgSend_updateGlobalStep(v17, v18, v19, v20);

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_19D38AEB4(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v6)
  {
    v7 = *v11;
    if (a3)
    {
      if (!(a3 >> 62))
      {
        if (((a3 - 1) & 0x3FFFFFFFFFFFFFFFLL) < 7)
        {
          operator new();
        }

        operator new();
      }

      sub_19D2AE2B4();
    }

    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_readBytes_strideBytes_(*(*(&v10 + 1) + 8 * i), v5, 0, 0);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v6);
  }
}

void sub_19D38B6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_19D38B808(uint64_t a1, void *a2)
{
  v54 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v4, 0, v5);
  v10 = objc_msgSend_combinedLossLabels(*(a1 + 40), v7, v8, v9);
  v57 = objc_msgSend_labels(v10, v11, v12, v13);

  v17 = 0;
  v55 = WeakRetained;
  v56 = v6;
  while (v17 < objc_msgSend_count(v57, v14, v15, v16, v54))
  {
    v21 = objc_msgSend_data(v6, v18, v19, v20);
    v22 = v21;
    objc_msgSend_contents(v22, v23, v24, v25);
    objc_msgSend_rowBytes(v6, v26, v27, v28);

    v32 = objc_msgSend_outputChannels(*(a1 + 48), v29, v30, v31);
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v35 = *(a1 + 56);
    v36 = objc_msgSend_objectAtIndexedSubscript_(v57, v33, v17, v34);
    v40 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39);
    v41 = *(v35 + 16);
    if (!v41)
    {
LABEL_12:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v42 = v41;
        v43 = *(v41 + 32);
        if (v43 <= v40)
        {
          break;
        }

        v41 = *v42;
        if (!*v42)
        {
          goto LABEL_12;
        }
      }

      if (v43 >= v40)
      {
        break;
      }

      v41 = v42[1];
      if (!v41)
      {
        goto LABEL_12;
      }
    }

    v44 = v42[6];
    if (!v44)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v45 = v44;
      if (!*(v44 + 7))
      {
        break;
      }

      v44 = *v44;
      if (!*v45)
      {
        goto LABEL_18;
      }
    }

    ++*(v45 + 8);
    WeakRetained = v55;
    v48 = objc_msgSend_objectAtIndexedSubscript_(v57, v46, v17, v47);
    v6 = v56;
    v52 = objc_msgSend_unsignedIntegerValue(v48, v49, v50, v51);
    *(*(a1 + 56) + 32) = *(*(a1 + 56) + 32) + log2f(*(4 * v52));

    operator delete(0);
    ++v17;
  }

  objc_msgSend_computeLoss_(WeakRetained, v18, *(a1 + 40), v20);
  *(*(a1 + 56) + 36) = *(*(a1 + 56) + 36) + v53;
  dispatch_semaphore_signal(*(a1 + 64));
}

void sub_19D38C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19D38C1C8(__n128 *a1, __n128 *a2)
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

void sub_19D38C1EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_19D38C204(uint64_t a1, void *a2)
{
  v37 = a2;
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v3, 0, v4);
  v9 = objc_msgSend_combinedLossLabels(*(a1 + 40), v6, v7, v8);
  v13 = objc_msgSend_labels(v9, v10, v11, v12);

  for (i = 0; i < objc_msgSend_count(v13, v14, v15, v16); ++i)
  {
    v21 = objc_msgSend_data(v5, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_contents(v22, v23, v24, v25);
    v30 = objc_msgSend_rowBytes(v5, v27, v28, v29);

    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 56);
    v36 = objc_msgSend_outputChannels(*(a1 + 48), v33, v34, v35);
    sub_19D38C5D0(v31 + 48, v32, (v26 + v30 * i), (v26 + v30 * i + 4 * v36), v36);
  }
}

uint64_t sub_19D38C5D0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 2)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 2);
    if (v11 >> 62)
    {
      sub_19D2AE2B4();
    }

    v12 = __dst - v10;
    v13 = v8 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v47 = (4 * (v12 >> 2));
    v48 = 4 * a5;
    memcpy(v47, __src, 4 * a5);
    v49 = v9 - v5;
    memcpy(&v47[v48], v5, v49);
    *(a1 + 8) = v5;
    memcpy(0, v10, v12);
    *a1 = 0;
    *(a1 + 8) = &v47[v48 + v49];
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    return 4 * (v12 >> 2);
  }

  v15 = v9 - __dst;
  v16 = (v9 - __dst) >> 2;
  if (v16 >= a5)
  {
    v15 = 4 * a5;
    v34 = &__dst[4 * a5];
    v35 = (v9 - 4 * a5);
    if (v35 >= v9)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v9 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v9;
      v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_54;
      }

      v40 = (v37 >> 2) + 1;
      v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
      v35 = (v35 + v41);
      v39 = (v9 + v41);
      v42 = (v9 + 16);
      v43 = (v9 + 16 - v15);
      v44 = v40 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 8;
      }

      while (v44);
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_54:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v9);
      }
    }

    *(a1 + 8) = v39;
    if (v9 != v34)
    {
      memmove(&__dst[4 * a5], __dst, v9 - v34);
    }

    goto LABEL_48;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v9 + v17);
  *(a1 + 8) = v9 + v17;
  if (v16 >= 1)
  {
    v21 = 4 * a5;
    v22 = (v5 + 4 * a5);
    v23 = &v20[-4 * a5];
    if (v23 >= v9)
    {
      v26 = (v9 + v17);
    }

    else
    {
      v24 = &a4[v5] - &__src[v21] + 4;
      if (v9 > v24)
      {
        v24 = v9;
      }

      v25 = &__src[v21 + ~v5 + v24] - a4;
      v26 = (v9 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_55;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_55;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&a4[v5] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_55:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v9);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove((v5 + 4 * a5), v5, v20 - v22);
    }

    if (v9 != v5)
    {
LABEL_48:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

CFArrayRef sub_19D38C918(int **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5DDC(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v18;
    do
    {
      v6 = *v3;
      v16 = *v3;
      if (v5 >= v19)
      {
        v5 = sub_19D38CAD4(&__p, &v16);
      }

      else
      {
        valuePtr = v6;
        v7 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        *v5 = v7;
        if (!v7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v18 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_19D2C5F9C(&__p);
  v9 = __p;
  if (__p)
  {
    v10 = result;
    v11 = v18;
    v12 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          CFRelease(v13);
        }
      }

      while (v11 != v9);
      v12 = __p;
    }

    v18 = v9;
    operator delete(v12);
    return v10;
  }

  return result;
}

void sub_19D38CA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

void sub_19D38CA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, const void **a12)
{
  sub_19D2C618C(v12);
  a12 = v12;
  sub_19D2C6440(&a11);
  _Unwind_Resume(a1);
}

void sub_19D38CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

void sub_19D38CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D38CAD4(unint64_t *a1, int *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * v3;
  valuePtr = *a2;
  v9 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(8 * v3) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - (v11 - *a1);
  v13 = v8 + 8;
  v14 = v11 - *a1;
  if (v11 != *a1)
  {
    v15 = v14 - 8;
    v16 = *a1;
    v17 = v12;
    if ((v14 - 8) < 0x98)
    {
      goto LABEL_32;
    }

    if (v12 < v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v16 = *a1;
      v17 = v12;
      if (v10 < v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8)
      {
        goto LABEL_32;
      }
    }

    v18 = v14 >> 3;
    v19 = (v15 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v10[v20];
    v17 = (v12 + v20 * 8);
    v21 = (-8 * v18 + 8 * v3 + 16);
    v22 = (v10 + 2);
    v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      *(v22 - 1) = 0uLL;
      *v22 = 0uLL;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v17++ = *v16;
        *v16++ = 0;
      }

      while (v16 != v11);
    }

    do
    {
      if (*v10)
      {
        CFRelease(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

void sub_19D38CD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D2C618C(v9);
  sub_19D2C6134(&a9);
  _Unwind_Resume(a1);
}

id sub_19D38CD54(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v57 = objc_alloc_init(MLPInferenceResult);
  v56 = objc_msgSend_commandQueue(a1[23], v6, v7, v8);
  v9 = dispatch_semaphore_create(1);
  v10 = objc_autoreleasePoolPush();
  v11 = v55[2];
  v59 = 0;
  v54 = v9;
  v15 = v11(v55, a3, a4, 1, &v59);
  v16 = v59;
  if (v59)
  {
    objc_msgSend_waitUntilCompleted(0, v12, v13, v14);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v12, v15, a4, *a1);
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v17 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v20, v56, v21);
    v18 = objc_msgSend_runInference_databatch_inferredResult_semaphore_(*a1, v22, v17, v19, v57, v9);
    objc_msgSend_commit(v17, v23, v24, v25);
  }

  objc_autoreleasePoolPop(v10);
  v33 = v17;
  if (v16)
  {
    v35 = v9;
    v34 = v55;
  }

  else
  {
    v35 = v9;
    v34 = v55;
    do
    {
      v36 = objc_autoreleasePoolPush();
      v59 = 0;
      v40 = (v34)[2](v34, a3, a4, 0, &v59);
      v41 = v59;
      if (v59 == 1)
      {
        objc_msgSend_waitUntilCompleted(v33, v37, v38, v39);
      }

      else
      {
        v42 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v37, v40, a4, *a1);
        dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
        v45 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v43, v56, v44);

        v47 = objc_msgSend_runInference_databatch_inferredResult_semaphore_(*a1, v46, v45, v42, v57, v35);
        objc_msgSend_commit(v45, v48, v49, v50);
        v18 += v47;

        v33 = v45;
        v35 = v54;
        v34 = v55;
      }

      objc_autoreleasePoolPop(v36);
    }

    while ((v41 & 1) == 0);
  }

  if (!v18)
  {
    sub_19D2C78CC(@"No data was provided for validation", v26, v27, v28, v29, v30, v31, v32, v53);
  }

  v51 = sub_19D2BD908(v57, v18, a1[18]);

  return v51;
}

void sub_19D38D108(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[12];
  v44 = objc_msgSend_commandQueue(a1[23], a2, a3, a4);
  v6 = dispatch_semaphore_create(1);
  v7 = objc_autoreleasePoolPush();
  v50 = 0;
  v8 = (*(a1[5] + 16))();
  v10 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v9, v8, v5, *a1, &v47);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v13 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v11, v44, v12);
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = sub_19D38D4C0;
  v48 = &unk_1E7626A98;
  v49 = a1;
  v14 = MEMORY[0x19EAFAD10](&v45);
  objc_msgSend_runTraining_databatch_iteration_lossCallback_semaphore_(*a1, v15, v13, v10, 0, v14, v6);
  objc_msgSend_commit(v13, v16, v17, v18);

  v19 = 1;
  objc_autoreleasePoolPop(v7);
  v20 = v13;
  do
  {
    v21 = objc_autoreleasePoolPush();
    v50 = 0;
    v25 = (*(a1[5] + 16))();
    v26 = v50;
    if (v50 == 1)
    {
      objc_msgSend_waitUntilCompleted(v20, v22, v23, v24);
    }

    else
    {
      v27 = objc_msgSend_dataBatch_batchSize_network_(MLPDataBatch, v22, v25, v5, *a1);
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v30 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x1E6974450], v28, v44, v29);

      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = sub_19D38D4C0;
      v48 = &unk_1E7626A98;
      v49 = a1;
      v31 = MEMORY[0x19EAFAD10](&v45);
      objc_msgSend_runTraining_databatch_iteration_lossCallback_semaphore_(*a1, v32, v30, v27, v19, v31, v6);
      objc_msgSend_commit(v30, v33, v34, v35);
      ++v19;

      v20 = v30;
    }

    objc_autoreleasePoolPop(v21);
  }

  while ((v26 & 1) == 0);
  if (!v19)
  {
    sub_19D2C78CC(@"No data was provided for training", v36, v37, v38, v39, v40, v41, v42, v43);
  }
}

void sub_19D38D4F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (*(a1 + 56))
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9);
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_19D38D5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x19EAFAD10](a2);
  v14 = a1[5];
  a1[5] = v13;

  a1[8] = a3;
  a1[9] = a4;
  v15 = MEMORY[0x19EAFAD10](v11);
  v16 = a1[6];
  a1[6] = v15;

  v17 = MEMORY[0x19EAFAD10](v12);
  v18 = a1[7];
  a1[7] = v17;

  if (a1[11])
  {
    v25 = 0;
    do
    {
      sub_19D38D4F8(a1, @"Starting epoch: %d", v19, v20, v21, v22, v23, v24, v25);
      v26 = objc_autoreleasePoolPush();
      sub_19D38D108(a1, v27, v28, v29);
      objc_autoreleasePoolPop(v26);
      v30 = objc_autoreleasePoolPush();
      v33 = sub_19D38D708(a1, v25, v31, v32);
      objc_autoreleasePoolPop(v30);
      if (v33)
      {
        break;
      }

      ++v25;
    }

    while (v25 < a1[11]);
  }

  v34 = a1[2];
  a1[2] = 0;

  return v34;
}

uint64_t sub_19D38D708(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = sub_19D38CD54(a1, *(a1 + 40), v9, *(a1 + 112));

    v13 = objc_msgSend_exMRL_numberForKey_(v10, v11, MLPModelTrainerOverallAccuracyKey, v12);
    v8 = v10;
    v15 = (a1 + 24);
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    v15 = (a1 + 24);
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  if (objc_msgSend_compare_(v13, v6, v14, v7) != 1)
  {
    ++*(a1 + 32);
    v25 = 0;
    v22 = *(a1 + 48);
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v22 + 16))(v22, a2, v8, &v25);
    goto LABEL_14;
  }

LABEL_6:
  *(a1 + 32) = 0;
  objc_storeStrong(v15, v13);
  v19 = *(a1 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  *(a1 + 16) = 0;
  ModelContainer = objc_msgSend_generateModelContainer(*a1, v16, v17, v18);
  v21 = *(a1 + 16);
  if (v21)
  {
    CFRelease(v21);
  }

  *(a1 + 16) = ModelContainer;
  v25 = 0;
  v22 = *(a1 + 48);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_14:
  v23 = (*(a1 + 32) >= *(a1 + 80)) | v25;

  return v23 & 1;
}

uint64_t sub_19D38D8A4(uint64_t a1, const void *a2, void *a3)
{
  v8 = a3;
  *a1 = 0;
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 16) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 8) = v9;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  v10 = objc_msgSend_mutableCopy(v8, v5, v6, v7);
  v13 = objc_msgSend_exMRL_stringForKey_(v10, v11, MLPModelTrainerDataLayoutKey, v12);
  v14 = [MLPDeviceHandler alloc];
  v17 = objc_msgSend_initWithDataLayout_(v14, v15, v13, v16);
  v18 = *(a1 + 184);
  *(a1 + 184) = v17;

  v19 = v10;
  v98 = v19;
  objc_storeStrong((a1 + 176), v10);
  v20 = sub_19D38DD58(&v98, MLPModelTrainerNumberOfEpochsKey, &unk_1F10C4F80);
  *(a1 + 88) = objc_msgSend_unsignedIntegerValue(v20, v21, v22, v23);

  v24 = sub_19D38DD58(&v98, MLPModelTrainerBatchSizeKey, &unk_1F10C4F98);
  *(a1 + 96) = objc_msgSend_unsignedIntegerValue(v24, v25, v26, v27);

  v28 = MLPModelTrainerEvaluationBatchSizeKey;
  v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v29, *(a1 + 96), v30);
  v32 = sub_19D38DD58(&v98, v28, v31);
  *(a1 + 112) = objc_msgSend_unsignedIntegerValue(v32, v33, v34, v35);

  v36 = sub_19D38DD58(&v98, MLPModelTrainerLossBatchSizeKey, &unk_1F10C4FB0);
  *(a1 + 104) = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39);

  v40 = v98;
  v43 = objc_msgSend_objectForKeyedSubscript_(v98, v41, MLPModelTrainerInputLengthKey, v42);
  *(a1 + 120) = objc_msgSend_unsignedIntegerValue(v43, v44, v45, v46);

  v49 = objc_msgSend_objectForKeyedSubscript_(v40, v47, MLPModelTrainerInputHeightKey, v48);
  *(a1 + 128) = objc_msgSend_unsignedIntegerValue(v49, v50, v51, v52);

  v55 = objc_msgSend_objectForKeyedSubscript_(v40, v53, MLPModelTrainerInputChannelsKey, v54);
  *(a1 + 136) = objc_msgSend_unsignedIntegerValue(v55, v56, v57, v58);

  v61 = objc_msgSend_objectForKeyedSubscript_(v40, v59, MLPModelTrainerNumberOfLabelsKey, v60);
  *(a1 + 144) = objc_msgSend_unsignedIntegerValue(v61, v62, v63, v64);

  v67 = objc_msgSend_objectForKeyedSubscript_(v40, v65, MLPModelTrainerVocabSizeKey, v66);
  *(a1 + 152) = objc_msgSend_unsignedIntegerValue(v67, v68, v69, v70);

  v73 = objc_msgSend_objectForKeyedSubscript_(v40, v71, MLPModelTrainerEmbeddingDimensionKey, v72);
  *(a1 + 160) = objc_msgSend_unsignedIntegerValue(v73, v74, v75, v76);

  v77 = MLPModelTrainerNoImprovementWindowKey;
  v80 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v78, *(a1 + 88), v79);
  v81 = sub_19D38DD58(&v98, v77, v80);
  *(a1 + 80) = objc_msgSend_unsignedIntegerValue(v81, v82, v83, v84);

  v87 = objc_msgSend_objectForKeyedSubscript_(v19, v85, off_1EB013C30, v86);
  v88 = *(a1 + 168);
  *(a1 + 168) = v87;

  if (!*(a1 + 8) && (!*(a1 + 120) || !*(a1 + 128) || !*(a1 + 136) || !*(a1 + 144)) && (!*(a1 + 152) || !*(a1 + 144) || !*(a1 + 160)))
  {
    sub_19D2C78CC(@"Invalid dimensions - cannot create network", v89, v90, v91, v92, v93, v94, v95, v97);
  }

  sub_19D438AB8(a1, v89, v90, v91);

  return a1;
}

void sub_19D38DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_19D38DEA4(v12);

  _Unwind_Resume(a1);
}

id sub_19D38DD58(void **a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(*a1, v6, a2, v7);
  v12 = v8;
  v13 = v8;
  if (v5)
  {
    v14 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
    v13 = v12;
    if (!v14)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*a1, v15, v5, a2);
      v13 = v5;
    }
  }

  v16 = v13;

  return v16;
}

uint64_t sub_19D38DE18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 16) = 0;

  return a1;
}

const void **sub_19D38DEA4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_19D38F44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, char a26, void *__p, uint64_t a28)
{
  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_19D38F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27)
  {
    operator delete(a27);
    if (a22)
    {
      operator delete(a22);
      if (!v28)
      {
        JUMPOUT(0x19D38F5D8);
      }

      JUMPOUT(0x19D38F5D0);
    }

    JUMPOUT(0x19D38F5CCLL);
  }

  JUMPOUT(0x19D38F5C8);
}

void sub_19D38F648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27)
  {
    operator delete(a27);
    if (a22)
    {
      operator delete(a22);
      if (!v28)
      {
        JUMPOUT(0x19D38F5D8);
      }

      JUMPOUT(0x19D38F5D0);
    }

    JUMPOUT(0x19D38F5CCLL);
  }

  JUMPOUT(0x19D38F5C8);
}

void sub_19D38F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    JUMPOUT(0x19D38F670);
  }

  JUMPOUT(0x19D38F5C8);
}

const void **sub_19D38F738(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t sub_19D38F76C(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v161 = a2 - 3;
  v10 = (a2 - 5);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v100 = v11 + 3;
          v101 = v11[3];
          v102 = v11 + 1;
          v103 = v11[1];
          v104 = *v9;
          if (v101 <= v103)
          {
            if (v104 <= v101)
            {
              return result;
            }

            v150 = v11[2];
            v11[2] = *v8;
            *v8 = v150;
            v151 = v11[3];
            v11[3] = *v9;
            *v9 = v151;
            if (v11[3] <= v11[1])
            {
              return result;
            }

            v152 = *v11;
            *v11 = v11[2];
            v11[2] = v152;
          }

          else
          {
            v105 = *v11;
            if (v104 <= v101)
            {
              *v11 = v11[2];
              v11[1] = v101;
              v11[2] = v105;
              v11[3] = v103;
              if (*v9 <= v103)
              {
                return result;
              }

              v11[2] = *v8;
              *v8 = v105;
              v102 = v11 + 3;
            }

            else
            {
              *v11 = *v8;
              *v8 = v105;
            }

            v100 = a2 - 1;
          }

          v160 = *v102;
          *v102 = *v100;
          *v100 = v160;
          return result;
        case 4:

          return sub_19D390308(v11, v11 + 2, v11 + 4, a2 - 2);
        case 5:
          result = sub_19D390308(v11, v11 + 2, v11 + 4, v11 + 6);
          if (*v9 > v11[7])
          {
            v88 = v11[6];
            v11[6] = *v8;
            *v8 = v88;
            v89 = v11[7];
            v11[7] = *v9;
            *v9 = v89;
            v90 = v11[7];
            v91 = v11[5];
            if (v90 > v91)
            {
              v92 = v11[6];
              v93 = v11[3];
              v94 = v11[4];
              v11[4] = v92;
              v11[5] = v90;
              v11[6] = v94;
              v11[7] = v91;
              if (v90 > v93)
              {
                v95 = v11[1];
                v96 = v11[2];
                v11[2] = v92;
                v11[3] = v90;
                v11[4] = v96;
                v11[5] = v93;
                if (v90 > v95)
                {
                  v97 = *v11;
                  *v11 = v92;
                  v11[1] = v90;
                  v11[2] = v97;
                  v11[3] = v95;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*v9 > v11[1])
        {
          v98 = *v11;
          *v11 = *v8;
          *v8 = v98;
          v99 = v11[1];
          v11[1] = *v9;
          *v9 = v99;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v120 = (v12 - 2) >> 1;
      v121 = v120;
      while (1)
      {
        if (v120 >= v121)
        {
          v123 = (2 * (v121 & 0xFFFFFFFFFFFFFFFLL)) | 1;
          v124 = &v11[4 * v121];
          if (2 * (v121 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
          {
            v125 = &v124[2 * (v124[3] > v124[5]) + 2];
            if (v124[3] > v124[5])
            {
              v123 = 2 * (v121 & 0xFFFFFFFFFFFFFFFLL) + 2;
            }

            v126 = &v11[2 * v121];
            v127 = v126[1];
            if (v125[1] > v127)
            {
              goto LABEL_143;
            }

LABEL_151:
            v128 = *v126;
            do
            {
              v129 = v126;
              v126 = v125;
              *v129 = *v125;
              v129[1] = v125[1];
              if (v120 < v123)
              {
                break;
              }

              v130 = (2 * v123) | 1;
              v125 = &v11[4 * v123 + 2];
              v131 = 2 * v123 + 2;
              if (v131 < v12)
              {
                v132 = v125[1];
                v133 = v125[3];
                v125 += 2 * (v132 > v133);
                if (v132 > v133)
                {
                  v130 = v131;
                }
              }

              result = v125[1];
              v123 = v130;
            }

            while (result <= v127);
            *v126 = v128;
            v126[1] = v127;
            goto LABEL_143;
          }

          v125 = v124 + 2;
          v126 = &v11[2 * v121];
          v127 = v126[1];
          if (v125[1] <= v127)
          {
            goto LABEL_151;
          }
        }

LABEL_143:
        v122 = v121-- <= 0;
        if (v122)
        {
          do
          {
            v134 = 0;
            v135 = *v11;
            v136 = v11[1];
            v137 = v11;
            do
            {
              v141 = &v137[2 * v134];
              v140 = v141 + 2;
              v142 = (2 * v134) | 1;
              v134 = 2 * v134 + 2;
              if (v134 < v12)
              {
                v138 = v141[3];
                result = v141[5];
                v139 = v141 + 4;
                if (v138 <= result)
                {
                  v134 = v142;
                }

                else
                {
                  v140 = v139;
                }
              }

              else
              {
                v134 = v142;
              }

              *v137 = *v140;
              v137[1] = v140[1];
              v137 = v140;
            }

            while (v134 <= ((v12 - 2) >> 1));
            if (v140 == a2 - 2)
            {
              *v140 = v135;
              v140[1] = v136;
            }

            else
            {
              *v140 = *(a2 - 2);
              v140[1] = *(a2 - 1);
              *(a2 - 2) = v135;
              *(a2 - 1) = v136;
              v143 = (v140 - v11 + 16) >> 4;
              v122 = v143 < 2;
              v144 = v143 - 2;
              if (!v122)
              {
                v145 = v144 >> 1;
                v146 = &v11[2 * (v144 >> 1)];
                v147 = v140[1];
                if (v146[1] > v147)
                {
                  v148 = *v140;
                  do
                  {
                    v149 = v140;
                    v140 = v146;
                    *v149 = *v146;
                    v149[1] = v146[1];
                    if (!v145)
                    {
                      break;
                    }

                    v145 = (v145 - 1) >> 1;
                    v146 = &v11[2 * v145];
                  }

                  while (v146[1] > v147);
                  *v140 = v148;
                  v140[1] = v147;
                }
              }
            }

            a2 -= 2;
            v122 = v12-- <= 2;
          }

          while (!v122);
          return result;
        }
      }
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = *v9;
    if (v12 < 0x81)
    {
      v20 = v11 + 1;
      v21 = v11[1];
      v22 = v13 + 1;
      v23 = v13[1];
      if (v21 > v23)
      {
        v24 = *v13;
        if (v14 <= v21)
        {
          *v13 = *v11;
          v13[1] = v21;
          *v11 = v24;
          v11[1] = v23;
          if (*v9 <= v23)
          {
            goto LABEL_39;
          }

          *v11 = *v8;
          *v8 = v24;
          v22 = v11 + 1;
        }

        else
        {
          *v13 = *v8;
          *v8 = v24;
        }

        v20 = a2 - 1;
        goto LABEL_38;
      }

      if (v14 > v21)
      {
        v29 = *v11;
        *v11 = *v8;
        *v8 = v29;
        v30 = v11[1];
        v11[1] = *v9;
        *v9 = v30;
        if (v11[1] > *v22)
        {
          v31 = *v13;
          *v13 = *v11;
          *v11 = v31;
LABEL_38:
          v44 = *v22;
          *v22 = *v20;
          *v20 = v44;
        }
      }

LABEL_39:
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_40:
      v46 = *v11;
      v45 = v11[1];
LABEL_67:
      v64 = v11;
      do
      {
        v65 = v64;
        v64 += 2;
      }

      while (v65[3] > v45);
      v66 = a2;
      if (v65 == v11)
      {
        v69 = a2;
        while (v64 < v69)
        {
          v67 = v69 - 2;
          v70 = *(v69 - 1);
          v69 -= 2;
          if (v70 > v45)
          {
            goto LABEL_75;
          }
        }

        v67 = v69;
        v11 = v64;
      }

      else
      {
        do
        {
          v67 = v66 - 2;
          v68 = *(v66 - 1);
          v66 -= 2;
        }

        while (v68 <= v45);
LABEL_75:
        v11 = v64;
        if (v64 < v67)
        {
          v71 = v67;
          do
          {
            v72 = *v11;
            *v11 = *v71;
            *v71 = v72;
            v73 = v11[1];
            v11[1] = v71[1];
            v71[1] = v73;
            do
            {
              v74 = v11[3];
              v11 += 2;
            }

            while (v74 > v45);
            do
            {
              v75 = *(v71 - 1);
              v71 -= 2;
            }

            while (v75 <= v45);
          }

          while (v11 < v71);
        }
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      *(v11 - 2) = v46;
      *(v11 - 1) = v45;
      if (v64 < v67)
      {
LABEL_86:
        result = sub_19D38F76C(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v76 = sub_19D390480(v7, v11 - 2);
        result = sub_19D390480(v11, a2);
        if (result)
        {
          a2 = v11 - 2;
          if (v76)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v76)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      v15 = (v13 + 1);
      v16 = v13[1];
      v17 = v11 + 1;
      v18 = v11[1];
      if (v16 > v18)
      {
        v19 = *v11;
        if (v14 <= v16)
        {
          *v11 = *v13;
          v11[1] = v16;
          *v13 = v19;
          v13[1] = v18;
          if (*v9 <= v18)
          {
            goto LABEL_29;
          }

          *v13 = *v8;
          *v8 = v19;
          v17 = v13 + 1;
        }

        else
        {
          *v11 = *v8;
          *v8 = v19;
        }

        v28 = a2 - 1;
        goto LABEL_28;
      }

      if (v14 > v16)
      {
        v25 = *v13;
        *v13 = *v8;
        *v8 = v25;
        v26 = v13[1];
        v13[1] = *v9;
        *v9 = v26;
        if (v13[1] > *v17)
        {
          v27 = *v11;
          *v11 = *v13;
          *v13 = v27;
          v28 = v13 + 1;
LABEL_28:
          v32 = *v17;
          *v17 = *v28;
          *v28 = v32;
        }
      }

LABEL_29:
      v33 = (v13 - 1);
      v34 = *(v13 - 1);
      v35 = v13 - 2;
      v36 = v11 + 3;
      v37 = v11[3];
      v38 = *v161;
      if (v34 > v37)
      {
        v39 = v11[2];
        if (v38 <= v34)
        {
          v11[2] = *v35;
          v11[3] = v34;
          *v35 = v39;
          *(v13 - 1) = v37;
          if (*v161 <= v37)
          {
            goto LABEL_45;
          }

          *v35 = *(a2 - 4);
          *(a2 - 4) = v39;
          v36 = v13 - 1;
        }

        else
        {
          v11[2] = *(a2 - 4);
          *(a2 - 4) = v39;
        }

        v43 = a2 - 3;
        goto LABEL_44;
      }

      if (v38 > v34)
      {
        v40 = *v35;
        *v35 = *(a2 - 4);
        *(a2 - 4) = v40;
        v41 = *(v13 - 1);
        *(v13 - 1) = *(a2 - 3);
        *(a2 - 3) = v41;
        if (*(v13 - 1) > *v36)
        {
          v42 = v11[2];
          v11[2] = *v35;
          *v35 = v42;
          v43 = v13 - 1;
LABEL_44:
          v47 = *v36;
          *v36 = *v43;
          *v43 = v47;
        }
      }

LABEL_45:
      v48 = v13[3];
      v49 = v13 + 2;
      v50 = v11 + 5;
      v51 = v11[5];
      result = *v10;
      if (v48 > v51)
      {
        v52 = v11[4];
        if (result <= v48)
        {
          v11[4] = *v49;
          v11[5] = v48;
          *v49 = v52;
          v13[3] = v51;
          v48 = v51;
          if (*v10 <= v51)
          {
            goto LABEL_55;
          }

          *v49 = *(a2 - 6);
          *(a2 - 6) = v52;
          v50 = v13 + 3;
        }

        else
        {
          v11[4] = *(a2 - 6);
          *(a2 - 6) = v52;
        }

        v56 = a2 - 5;
        goto LABEL_54;
      }

      if (result > v48)
      {
        v53 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v53;
        v54 = v13[3];
        v13[3] = *(a2 - 5);
        *(a2 - 5) = v54;
        v48 = v13[3];
        if (v48 > *v50)
        {
          v55 = v11[4];
          v11[4] = *v49;
          *v49 = v55;
          v56 = v13 + 3;
LABEL_54:
          v57 = *v50;
          *v50 = *v56;
          *v56 = v57;
          v48 = v13[3];
        }
      }

LABEL_55:
      v58 = *v15;
      v59 = *v33;
      if (*v15 <= *v33)
      {
        v60 = *v13;
        if (v48 <= v58)
        {
          goto LABEL_65;
        }

        v61 = *v49;
        *v13 = *v49;
        v13[1] = v48;
        *v49 = v60;
        v13[3] = v58;
        if (v48 > v59)
        {
          v62 = *v35;
          *v35 = v61;
          *v13 = v62;
LABEL_64:
          *v33 = v48;
          *v15 = v59;
          v60 = *v13;
          v58 = v13[1];
          goto LABEL_65;
        }

        v58 = v48;
        v60 = v61;
      }

      else
      {
        v60 = *v35;
        if (v48 > v58)
        {
          *v35 = *v49;
          *v49 = v60;
LABEL_63:
          v15 = (v13 + 3);
          goto LABEL_64;
        }

        *v35 = *v13;
        *(v13 - 1) = v58;
        *v13 = v60;
        v13[1] = v59;
        if (v48 > v59)
        {
          *v13 = *v49;
          *v49 = v60;
          v33 = (v13 + 1);
          goto LABEL_63;
        }

        v58 = v59;
      }

LABEL_65:
      v63 = *v11;
      *v11 = v60;
      v11[1] = v58;
      *v13 = v63;
      --a3;
      if (a4)
      {
        goto LABEL_40;
      }

LABEL_66:
      v46 = *v11;
      v45 = v11[1];
      if (*(v11 - 1) > v45)
      {
        goto LABEL_67;
      }

      if (v45 <= *v9)
      {
        v79 = v11 + 2;
        do
        {
          v11 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = v79[1];
          v79 += 2;
        }

        while (v45 <= v80);
      }

      else
      {
        v77 = v11;
        do
        {
          v11 = v77 + 2;
          v78 = v77[3];
          v77 += 2;
        }

        while (v45 <= v78);
      }

      v81 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v81 = v82 - 2;
          v83 = *(v82 - 1);
          v82 -= 2;
        }

        while (v45 > v83);
      }

      while (v11 < v81)
      {
        v84 = *v11;
        *v11 = *v81;
        *v81 = v84;
        v85 = v11[1];
        v11[1] = v81[1];
        v81[1] = v85;
        do
        {
          v86 = v11[3];
          v11 += 2;
        }

        while (v45 <= v86);
        do
        {
          v87 = *(v81 - 1);
          v81 -= 2;
        }

        while (v45 > v87);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      a4 = 0;
      *(v11 - 2) = v46;
      *(v11 - 1) = v45;
    }
  }

  v106 = v11 + 2;
  v108 = v11 == a2 || v106 == a2;
  if (a4)
  {
    if (v108)
    {
      return result;
    }

    v109 = 0;
    v110 = v11 + 1;
    v111 = v11;
    while (1)
    {
      v113 = v111[3];
      v114 = v111[1];
      v111 = v106;
      if (v113 > v114)
      {
        v115 = *v106;
        v116 = v109;
        v117 = v110;
        do
        {
          v118 = *v117;
          v117[1] = *(v117 - 1);
          v117[2] = v118;
          if (!v116)
          {
            v112 = v11;
            goto LABEL_133;
          }

          v119 = *(v117 - 2);
          v117 -= 2;
          v116 += 16;
        }

        while (v113 > v119);
        v112 = v117 + 1;
LABEL_133:
        *v112 = v115;
        v112[1] = v113;
      }

      v106 = v111 + 2;
      v110 += 2;
      v109 -= 16;
      if (v111 + 2 == a2)
      {
        return result;
      }
    }
  }

  if (!v108)
  {
    v153 = v11 + 1;
    do
    {
      v154 = v7[3];
      v155 = v7[1];
      v7 = v106;
      if (v154 > v155)
      {
        v156 = *v106;
        v157 = v153;
        do
        {
          v158 = *v157;
          v157[1] = *(v157 - 1);
          v157[2] = v158;
          v159 = *(v157 - 2);
          v157 -= 2;
        }

        while (v154 > v159);
        v157[1] = v156;
        v157[2] = v154;
      }

      v106 = v7 + 2;
      v153 += 2;
    }

    while (v7 + 2 != a2);
  }

  return result;
}