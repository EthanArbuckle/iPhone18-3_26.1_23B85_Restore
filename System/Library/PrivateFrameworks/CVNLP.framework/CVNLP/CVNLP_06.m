void sub_1D9D6F28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D6F2A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D6F2A0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1D9D6752C((v1 + 64), *(v1 + 56));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1D9D6F300(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D6F368(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 7;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_1D9D3EC54();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_1D9D6752C(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_1D9D67D88(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_1D9D6752C(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_1D9D6752C(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_1D9D6F584(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 4;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_1D9D3EC54();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_1D9D6752C(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_1D9D67D88(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_1D9D6752C(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_1D9D6752C(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_1D9D6F7A0(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v30[0] = 0;
    v31 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    v33 = (a1[2] - a1[1]) >> 3;
    v32 = 5;
    v4 = a1[15];
    if (!v4)
    {
      sub_1D9D3EC54();
    }

    if ((*(*v4 + 48))(v4, &v33, &v32, v30))
    {
LABEL_5:
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v11 = v30[0];
        v12 = v31;
        v30[0] = 0;
        v31 = 0;
        v13 = *a1;
        v14 = **a1;
        *v13 = v11;
        v28 = v14;
        v15 = *(v13 + 8);
        *(v13 + 8) = v12;
        v29 = v15;
        sub_1D9D6752C(&v29, v14);
        v16 = *a1;
LABEL_17:
        v10 = 1;
        goto LABEL_18;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          v7 = *(v6 + 8);
          v8 = v7[1];
          if (v8 >= v7[2])
          {
            v9 = sub_1D9D67D88(v7, v30);
          }

          else
          {
            *v8 = v30[0];
            *(v8 + 8) = v31;
            v30[0] = 0;
            v31 = 0;
            v9 = v8 + 16;
          }

          v7[1] = v9;
          v25 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v17 = (a1[8] - 1);
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v30[0];
          v20 = v31;
          v30[0] = 0;
          v31 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v27 = v23;
          sub_1D9D6752C(&v27, v22);
          v24 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v10 = 0;
LABEL_18:
    sub_1D9D6752C(&v31, v30[0]);
    return v10;
  }

  return 0;
}

uint64_t sub_1D9D6F9B4(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 5;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_1D9D3EC54();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_1D9D6752C(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_1D9D67D88(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_1D9D6752C(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_1D9D6752C(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_1D9D6FBCC(uint64_t a1)
{
  if ((*(*(a1 + 32) + (((*(a1 + 40) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 40) - 1)))
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1D9D6FE44(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 6;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_1D9D3EC54();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_1D9D6752C(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_1D9D67D88(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_1D9D6752C(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_1D9D6752C(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_1D9D70060(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554E680;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1DA740E00](a1 + 16, a2 + 16);
  *a1 = &unk_1F554E820;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1D9D700DC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554E680;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1DA740E00](a1 + 16, a2 + 16);
  *a1 = &unk_1F554E7E0;
  return a1;
}

uint64_t sub_1D9D7014C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554E680;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1DA740E00](a1 + 16, a2 + 16);
  *a1 = &unk_1F554E778;
  return a1;
}

uint64_t sub_1D9D701BC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554E680;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1DA740E00](a1 + 16, a2 + 16);
  *a1 = &unk_1F554E7B8;
  return a1;
}

uint64_t sub_1D9D7022C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554E680;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1DA740E00](a1 + 16, a2 + 16);
  *a1 = &unk_1F554E658;
  return a1;
}

void sub_1D9D7029C(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F554E680;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D70304(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_14:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }
}

void sub_1D9D70444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v26 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v26 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 48));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D704E0(uint64_t a1)
{
  sub_1D9D6752C((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1D9D705A0(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = 0;
    v10 = *a2;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        operator new();
      }

      if (v10 == 4)
      {
        LOBYTE(v22) = 0;
        v9 = v22;
      }
    }

    else
    {
      if (v10 == 1)
      {
        operator new();
      }

      if (v10 == 2)
      {
        operator new();
      }
    }

    v14 = *a1;
    v15 = **a1;
    *v14 = v10;
    v21 = v15;
    v16 = *(v14 + 8);
    *(v14 + 8) = v9;
    v22 = v16;
    sub_1D9D6752C(&v22, v15);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = sub_1D9D70818(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_1D9D6873C((v6 + 8), v7);
        v8 = v6 + 16;
        v5[1] = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          operator new();
        }

        if (v12 == 4)
        {
          LOBYTE(v20) = 0;
          v11 = v20;
        }
      }

      else
      {
        if (v12 == 1)
        {
          operator new();
        }

        if (v12 == 2)
        {
          operator new();
        }
      }

      v17 = a1[4];
      v18 = *v17;
      *v17 = v12;
      v19 = *(v17 + 1);
      *(v17 + 1) = v11;
      v20 = v19;
      sub_1D9D6752C(&v20, v18);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D70818(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v17 = 16 * v2;
  v7 = *a2;
  *(16 * v2) = v7;
  sub_1D9D6873C((16 * v2 + 8), v7);
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = 16 * v2 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 8) = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
      v13 += 16;
    }

    while (v12 != v10);
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 2;
      sub_1D9D6752C(v9 + 1, v15);
      v9 = v14;
    }

    while (v14 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_1D9D7096C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D67CC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D70980(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1D9D6752C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1D9D70A98(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1D9D6752C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D70A98(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 7;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1D9D6752C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_1D9D70BDC(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1D9D6752C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1D9D70CF4(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1D9D6752C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D70CF4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 4;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1D9D6752C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_1D9D70E38(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_1D9D6752C(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_1D9D70F34(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_1D9D6752C(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D70F34(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = (v3 - v2) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v6)
  {
    v6 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v9 = (v3 - v2) >> 4;
  v10 = 16 * v5;
  *v10 = 0;
  *(v10 + 8) = 0;
  v11 = 16 * v5 + 16;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v10 - 16 * v9;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    v15 = v2;
    do
    {
      v16 = *v15;
      v15 += 2;
      sub_1D9D6752C(v2 + 1, v16);
      v2 = v15;
    }

    while (v15 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

uint64_t sub_1D9D7106C(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1D9D6752C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1D9D71184(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1D9D6752C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D71184(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 5;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1D9D6752C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

void sub_1D9D712C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        operator new();
      }

      sub_1D9D71514(v3);
    }

    operator new();
  }

  operator new();
}

void sub_1D9D714CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_1D9D71514(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v5 = 16 * v1;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  sub_1D9D67CB0();
}

void sub_1D9D716A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  sub_1D9D67CC8(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9D716C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D67CC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D716D8(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1D9D6752C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1D9D717F0(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1D9D6752C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1D9D717F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_1D9D67CB0();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 6;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_1D9D6752C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_1D9D71934(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_8;
    }

LABEL_12:
    (*(*v4 + 32))(v4);
    return a1;
  }

  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_1D9D71A34(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v9);
  sub_1D9D12280(&v9, "[KeyError] ", 11);
  sub_1D9D12280(&v9, "Expected bridge_model_spec.json to contain key: ", 48);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D12280(&v9, v5, v6);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v13);
  *a1 = &unk_1F554E848;
  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *(a1 + 16);
  }

  std::runtime_error::runtime_error(a1, v7);
  *a1 = &unk_1F554E848;
  return a1;
}

void sub_1D9D71C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D71C40(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);
  if (*(v2 + 39) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D71C98(uint64_t a1, const void **a2)
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

uint64_t sub_1D9D71E24(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        v5 = *(a2 + 1);
        operator new();
      case 2:
        v6 = *(a2 + 1);
        operator new();
      case 3:
        v3 = *(a2 + 1);
        operator new();
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v4 = a2[8];
        goto LABEL_16;
      }

LABEL_12:
      v4 = *(a2 + 1);
LABEL_16:
      *(result + 8) = v4;
      return result;
    }

    if (v2 == 6 || v2 == 7)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1D9D72014(_Unwind_Exception *a1)
{
  sub_1D9D67EC4(v1, v1[1]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D72034(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_1D9D72170(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_1D9D72138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D6F2A0(va);
  _Unwind_Resume(a1);
}

void sub_1D9D7214C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_1D9D6F2A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D72170(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
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

void sub_1D9D7256C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_1D9D67CB0();
  }
}

void sub_1D9D72658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1D9D67D20(&a11);
  *(v11 + 8) = v12;
  sub_1D9D72678(&a9);
  _Unwind_Resume(a1);
}

void ***sub_1D9D72678(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_1D9D6752C(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

std::string *sub_1D9D72704(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_1D9D6EFFC(a1);
    sub_1D9D94D70(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be string, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_1D9D6EE60(302, &v10, exception);
    __cxa_throw(exception, &unk_1F554E790, sub_1D9D6F024);
  }

  v2 = *(a1 + 8);

  return std::string::operator=(this, v2);
}

void sub_1D9D727E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double sub_1D9D72844(double *a1, _DWORD *a2)
{
  v2 = *a1;
  if (v2 > 5)
  {
    if (v2 != 7)
    {
      if (v2 == 6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    result = a1[1];
    *a2 = result;
  }

  else
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
LABEL_4:
        *a2 = *(a1 + 2);
        return result;
      }

LABEL_7:
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = sub_1D9D6EFFC(a1);
      sub_1D9D94D70(&v9, v5);
      v6 = std::string::insert(&v9, 0, "type must be number, but is ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v11 = v6->__r_.__value_.__r.__words[2];
      v10 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      sub_1D9D6EE60(302, &v10, exception);
      __cxa_throw(exception, &unk_1F554E790, sub_1D9D6F024);
    }

    *a2 = *(a1 + 8);
  }

  return result;
}

void sub_1D9D7296C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D729DC(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v9);
  sub_1D9D12280(&v9, "[KeyError] ", 11);
  sub_1D9D12280(&v9, "Expected model_spec.json to contain key: ", 41);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D12280(&v9, v5, v6);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v13);
  *a1 = &unk_1F554E848;
  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *(a1 + 16);
  }

  std::runtime_error::runtime_error(a1, v7);
  *a1 = &unk_1F554E848;
  return a1;
}

void sub_1D9D72BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D72BE8(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v9);
  sub_1D9D12280(&v9, "[KeyError] ", 11);
  sub_1D9D12280(&v9, "runtime_parameters.json file exists but does not contain filterTokens: ", 71);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D12280(&v9, v5, v6);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v13);
  *a1 = &unk_1F554E848;
  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *(a1 + 16);
  }

  std::runtime_error::runtime_error(a1, v7);
  *a1 = &unk_1F554E848;
  return a1;
}

void sub_1D9D72DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D9D72DF4(unsigned __int8 *a1, void ***a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_1D9D6EFFC(a1);
    sub_1D9D94D70(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1D9D6EE60(302, &v9, exception);
    __cxa_throw(exception, &unk_1F554E790, sub_1D9D6F024);
  }

  return sub_1D9D72F28(a1, a2);
}

void sub_1D9D72EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double sub_1D9D72F28(unsigned __int8 *a1, void ***a2)
{
  v20 = 0uLL;
  v21 = 0;
  v3 = *a1;
  if (v3 == 2)
  {
    v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (v4 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_1D9D84AB0();
    }

LABEL_7:
    operator new();
  }

  if (v3 == 1)
  {
    v4 = *(*(a1 + 1) + 16);
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*a1)
  {
    goto LABEL_7;
  }

LABEL_12:
  v16 = a1;
  v17 = 0;
  v18 = 0;
  v19 = 0x8000000000000000;
  v6 = *a1;
  if (*a1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 1);
      v18 = *v7;
      v13 = a1;
      v14 = 0;
      *&v15 = v7[1];
      *(&v15 + 1) = 0x8000000000000000;
      goto LABEL_17;
    }

    if (v6 == 1)
    {
      v5 = *(a1 + 1);
      v17 = *v5;
      v15 = xmmword_1D9DDDC60;
      v13 = a1;
      v14 = v5 + 1;
      goto LABEL_17;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v13 = a1;
  v14 = 0;
  *&v15 = 0;
  *(&v15 + 1) = 1;
LABEL_17:
  sub_1D9D7313C(&v16, &v13, &v20, 0);
  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    v10 = *a2;
    if (v9 != v8)
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
      v10 = *a2;
    }

    a2[1] = v8;
    operator delete(v10);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v20;
  *a2 = v20;
  a2[2] = v21;
  return result;
}

void sub_1D9D73128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D7313C(unsigned __int8 **a1, unsigned __int8 **a2, void *a3, void **a4)
{
  v6 = a2;
  v7 = a1;
  while (!sub_1D9D7344C(a1, a2))
  {
    v8 = sub_1D9D732D0(v7);
    memset(&__p, 0, sizeof(__p));
    sub_1D9D72704(v8, &__p);
    v9 = sub_1D9D73558(a3, a4, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v9;
      operator delete(__p.__r_.__value_.__l.__data_);
      v9 = v10;
    }

    v11 = **v7;
    if (v11 == 2)
    {
      v7[2] += 16;
    }

    else if (v11 == 1)
    {
      v12 = v7[1];
      v13 = *(v12 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v12 + 2);
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v7[1] = v14;
    }

    else
    {
      ++v7[3];
    }

    a4 = v9 + 3;
    a1 = v7;
    a2 = v6;
  }

  return a3;
}

void sub_1D9D73248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D73268(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_1D9D732D0(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(v6, "cannot get value");
    sub_1D9D6EC10(214, v6, exception);
    __cxa_throw(exception, &unk_1F554E750, sub_1D9D6EDA4);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(v6, "cannot get value");
    sub_1D9D6EC10(214, v6, v4);
    __cxa_throw(v4, &unk_1F554E750, sub_1D9D6EDA4);
  }

  return result;
}

void sub_1D9D73408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D9D7344C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9D94D70(v7, "cannot compare iterators of different containers");
    sub_1D9D6EC10(212, v7, exception);
    __cxa_throw(exception, &unk_1F554E750, sub_1D9D6EDA4);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_1D9D7351C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void **sub_1D9D73558(void *a1, void **a2, __n128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D84AB0();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v33 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v30 = 0;
    v31 = 8 * ((a2 - v16) >> 3);
    v32 = v31;
    sub_1D9D737C8(&v30, a3);
    v22 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v30 = v27;
    v31 = v27;
    if (v27)
    {
      operator delete(v27);
    }

    return v22;
  }

  else if (a2 == v7)
  {
    v21 = *a3;
    *(v7 + 16) = a3[1].n128_u64[0];
    *v7 = v21;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    a1[1] = v7 + 24;
  }

  else
  {
    v8 = (v7 - 24);
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 24;
      v10 = *v8;
      *(v7 + 16) = *(v7 - 8);
      *v7 = v10;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *v8 = 0;
    }

    a1[1] = v9;
    if (v7 != a2 + 3)
    {
      v11 = 0;
      v12 = a2 - v7 + 24;
      do
      {
        v14 = v7 + v11;
        v15 = v7 + v11 - 24;
        if (*(v7 + v11 - 1) < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *(v14 - 48);
        *(v15 + 16) = *(v14 - 32);
        *v15 = v13;
        *(v14 - 25) = 0;
        *(v14 - 48) = 0;
      }

      while (v12 != v11);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v20 = *a3;
    v4[2] = a3[1].n128_u64[0];
    *v4 = v20;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  return v4;
}

void sub_1D9D737B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D73268(va);
  _Unwind_Resume(a1);
}

__n128 sub_1D9D737C8(__int128 **a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = (v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v9 = *v6;
        *(v5 + 2) = *(v6 + 2);
        *v5 = v9;
        v5 = (v5 + 24);
        *(v6 + 23) = 0;
        *v6 = 0;
        v6 = (v6 + 24);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = (v6 + 24 * v8);
    a1[2] = v5;
  }

  result = *a2;
  *(v5 + 2) = a2[1].n128_u64[0];
  *v5 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[2] = (a1[2] + 24);
  return result;
}

void *sub_1D9D73998(void *a1, uint64_t a2)
{
  sub_1D9D100A8(&v11);
  sub_1D9D12280(&v11, "[FileNotFoundError] ", 20);
  sub_1D9D12280(&v11, "Filename specified by brdige_model_spec.json for video captioning espresso bridge network not found: ", 101);
  v6 = *(a2 + 8);
  v5 = a2 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  sub_1D9D2B0B0(&v11, v8, &v8[v9], 0x22u, 0x5Cu);
  std::stringbuf::str();
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v15);
  *a1 = &unk_1F554E870;
  return a1;
}

void sub_1D9D73B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D73B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D73B84(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D73BDC(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_1D9D73BF8(void *result)
{
  *result = &unk_1F554E898;
  v1 = result[2];
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

void sub_1D9D73C8C(void *a1)
{
  *a1 = &unk_1F554E898;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D73D54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554E8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D73DB4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v7;
  }

  sub_1D9D7456C(a1 + 56, a3);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  if (*(a3 + 28))
  {
    v8 = *(a3 + 24);
  }

  else if (qword_1EE000530 != -1)
  {
    dispatch_once(&qword_1EE000530, &unk_1F554E908);
  }

  v9 = *(a3 + 40);
  context = espresso_create_context();
  *v6 = context;
  if (context)
  {
    v11 = *(a3 + 44);
    plan = espresso_create_plan();
    *(a1 + 24) = plan;
    if (plan)
    {
      if (*(a3 + 52) == 1 && (v13 = *(a3 + 48), LODWORD(v26.__r_.__value_.__l.__data_) = espresso_plan_set_priority(), HIBYTE(__p[2]) = 20, strcpy(__p, "Setting plan priorty"), sub_1D9D64D08(&v26, __p), SHIBYTE(__p[2]) < 0))
      {
        operator delete(__p[0]);
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_13:
        *__p = *a2;
        __p[2] = *(a2 + 2);
        goto LABEL_16;
      }

      sub_1D9D12B94(__p, *a2, *(a2 + 1));
LABEL_16:
      v14 = *(a3 + 135);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 120);
      }

      if (v14)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v15 = HIBYTE(__p[2]);
        }

        else
        {
          v15 = __p[1];
        }

        if (v15 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1D9D12168();
        }

        if (v15 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v26, 0, sizeof(v26));
        *(&v26.__r_.__value_.__s + 23) = v15 + 1;
        if (v15)
        {
          if (SHIBYTE(__p[2]) >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          memmove(&v26, v16, v15);
        }

        *(&v26.__r_.__value_.__l.__data_ + v15) = 58;
        v17 = *(a3 + 135);
        if (v17 >= 0)
        {
          v18 = (a3 + 112);
        }

        else
        {
          v18 = *(a3 + 112);
        }

        if (v17 >= 0)
        {
          v19 = *(a3 + 135);
        }

        else
        {
          v19 = *(a3 + 120);
        }

        v20 = std::string::append(&v26, v18, v19);
        v21 = v20->__r_.__value_.__r.__words[0];
        *&v28 = v20->__r_.__value_.__l.__size_;
        *(&v28 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
        v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v21;
        __p[1] = v28;
        *(&__p[1] + 7) = *(&v28 + 7);
        HIBYTE(__p[2]) = v22;
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      v23 = *(a1 + 24);
      v24 = *(a3 + 32);
      *(a3 + 36);
      LODWORD(v28) = espresso_plan_add_network();
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso plan.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso context.");
  }

  exception->__vftable = &unk_1F554E5B0;
  __cxa_throw(exception, &unk_1F554E588, std::runtime_error::~runtime_error);
}

void sub_1D9D74478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1D9D63270(v27);
  sub_1D9D63270(v26);
  sub_1D9D6467C(v25 + 56);
  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D7456C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1D9D29BD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 49);
  *(a1 + 72) = 0u;
  *(a1 + 49) = v6;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *(a1 + 88) = 0u;
  *(a1 + 104) = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1D9D65F1C(a1 + 72, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v8 = *(a1 + 80);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a1 + 96) / *(a1 + 104));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 88); i; i = *i)
  {
    sub_1D9D7474C((a1 + 72), (i + 2));
  }

  if (*(a2 + 135) < 0)
  {
    sub_1D9D12B94((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v14 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v14;
  }

  return a1;
}

void sub_1D9D74710(_Unwind_Exception *a1)
{
  sub_1D9D5D9DC(v2);
  sub_1D9D54C6C(v1);
  _Unwind_Resume(a1);
}

void sub_1D9D7472C(_Unwind_Exception *a1)
{
  sub_1D9D5D9DC(v2);
  sub_1D9D54C6C(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1D9D7474C(void *a1, uint64_t a2)
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

  v6 = sub_1D9D115A0(&v24, a2, v5);
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

void sub_1D9D74B58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D74B84(va);
  _Unwind_Resume(a1);
}

void sub_1D9D74B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D74B84(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D74B84(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1D9D74BEC()
{
  result = MGGetBoolAnswer();
  byte_1EE000528 = result;
  return result;
}

uint64_t sub_1D9D74C14(uint64_t a1)
{
  if (*(a1 + 24))
  {
    espresso_plan_destroy();
  }

  if (*(a1 + 16))
  {
    espresso_context_destroy();
  }

  sub_1D9D63270(a1 + 232);
  sub_1D9D63270(a1 + 192);
  sub_1D9D6467C(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void *sub_1D9D74C8C(void *a1, uint64_t a2)
{
  sub_1D9D100A8(&v11);
  sub_1D9D12280(&v11, "[FileNotFoundError] ", 20);
  sub_1D9D12280(&v11, "Filename specified by model_spec.json for video captioning espresso decoder network not found: ", 95);
  v6 = *(a2 + 8);
  v5 = a2 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  sub_1D9D2B0B0(&v11, v8, &v8[v9], 0x22u, 0x5Cu);
  std::stringbuf::str();
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v15);
  *a1 = &unk_1F554E870;
  return a1;
}

void sub_1D9D74E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D74E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D74E98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554E938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D74F14(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 40) == 1)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        v4 = *(v1 + 24);
        v5 = *(v1 + 16);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 1);
            v4 -= 3;
            if (v6 < 0)
            {
              operator delete(*v4);
            }
          }

          while (v4 != v3);
          v5 = *(v1 + 16);
        }

        *(v1 + 24) = v3;
        operator delete(v5);
      }
    }

    MEMORY[0x1DA741280](v1, 0x1022C409BF09FA6);
    return v2;
  }

  return result;
}

void sub_1D9D74FBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D74FF4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 40) == 1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = *(v1 + 24);
        v4 = *(v1 + 16);
        if (v3 != v2)
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
          v4 = *(v1 + 16);
        }

        *(v1 + 24) = v2;
        operator delete(v4);
      }
    }

    JUMPOUT(0x1DA741280);
  }

  return result;
}

uint64_t sub_1D9D750A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001D9DDE177)
  {
    if (((v2 & 0x80000001D9DDE177 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001D9DDE177))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001D9DDE177 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D9D75118(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
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

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1D9D84AB0();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v18 = *(v13 - 1);
      v13 -= 3;
      if (v18 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v22 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        while ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v17 = *&v15->__r_.__value_.__l.__data_;
          v16[2] = v15->__r_.__value_.__r.__words[2];
          *v16 = v17;
          v16 += 3;
          ++v15;
          v22 = v16;
          if (v15 == a3)
          {
            goto LABEL_17;
          }
        }

        sub_1D9D12B94(v16, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        ++v15;
        v16 = v22 + 3;
        v22 += 3;
      }

      while (v15 != a3);
    }

LABEL_17:
    *(a1 + 8) = v16;
  }
}

void sub_1D9D753E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D9D66F74(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1D9D75400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D9D66F74(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1D9D75C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D75D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  v175 = v3;
  v176 = 0;
  v5 = v4 + v3;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0uLL;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v177 = 0;
  v178 = 0;
  v6 = (*(a2 + 28) + 1);
  *&v179 = v4 + v3;
  *(&v179 + 1) = v4 + v3;
  v180 = 0;
  sub_1D9D7A8D4(&v176, v6, &v179);
  v181 = v4;
  v182 = v4;
  v183 = 0;
  v184 = v179;
  v185 = v180;
  v187 = v4;
  v186 = 1;
  v173 = v4;
  if ((*(a2 + 24) & 0x1F0) == 0)
  {
    if (sub_1D9D7A438(a2, v4, v5, &v176, 4160, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v174 = v5;
  if (!*(a2 + 28))
  {
    memset(__src, 0, 48);
    v16 = *(a2 + 40);
    if (!v16)
    {
      goto LABEL_292;
    }

    *v193 = 0;
    memset(&v193[8], 0, 48);
    v194 = 0uLL;
    memset(v195, 0, 21);
    sub_1D9D81228(__src);
    v17 = *(*&__src[8] + 8 * ((*&__src[32] + *&__src[40]) / 0x2AuLL)) + 96 * ((*&__src[32] + *&__src[40]) % 0x2AuLL);
    v18 = *&v193[16];
    *v17 = *v193;
    *(v17 + 16) = v18;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 32) = 0;
    memset(&v193[32], 0, 24);
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    *(v17 + 72) = 0;
    v194 = 0uLL;
    v195[0] = 0;
    v19 = v195[1];
    *(v17 + 85) = *(&v195[1] + 5);
    *(v17 + 80) = v19;
    v20 = *&__src[32];
    v21 = *&__src[40];
    v22 = ++*&__src[40];
    v23 = *&__src[8];
    v24 = *(a2 + 32);
    v25 = *(*&__src[8] + 8 * ((*&__src[32] + v21) / 0x2AuLL)) + 96 * ((*&__src[32] + v21) % 0x2AuLL);
    *v25 = 0;
    *(v25 + 8) = v173;
    *(v25 + 16) = v173;
    *(v25 + 24) = v5;
    v26 = *(v25 + 56);
    v27 = (*(v25 + 64) - v26) >> 4;
    if (v24 <= v27)
    {
      if (v24 < v27)
      {
        *(v25 + 64) = v26 + 16 * v24;
      }
    }

    else
    {
      sub_1D9D7AFCC(v25 + 56, v24 - v27);
      v20 = *&__src[32];
      v22 = *&__src[40];
      v23 = *&__src[8];
    }

    v171 = 0;
    v116 = 0;
    v172 = 0;
    v117 = *(v23 + 8 * ((v20 + v22 - 1) / 0x2AuLL)) + 96 * ((v20 + v22 - 1) % 0x2AuLL);
    *(v117 + 80) = v16;
    *(v117 + 88) = 4160;
    *(v117 + 92) = 1;
    while (1)
    {
      if ((++v116 & 0xFFF) == 0 && (v116 >> 12) >= v175)
      {
        sub_1D9D7AAF4();
      }

      v119 = *(*&__src[8] + 8 * ((v22 + *&__src[32] - 1) / 0x2AuLL)) + 96 * ((v22 + *&__src[32] - 1) % 0x2AuLL);
      v120 = *(v119 + 80);
      if (v120)
      {
        (*(*v120 + 16))(v120, v119);
      }

      v121 = *v119;
      if (*v119 <= -995)
      {
        if (v121 == -1000)
        {
          if (*(v119 + 16) != v174)
          {
            goto LABEL_213;
          }

          v140 = v172;
          if (v172 <= v174 - *(v119 + 8))
          {
            v140 = v174 - *(v119 + 8);
          }

          if ((v171 & 1) == 0)
          {
            v140 = v174 - *(v119 + 8);
          }

          v172 = v140;
          if (v140 != v175)
          {
            v149 = (*(*&__src[8] + 8 * ((*&__src[40] + *&__src[32] - 1) / 0x2AuLL)) + 96 * ((*&__src[40] + *&__src[32] - 1) % 0x2AuLL));
            v150 = v149[7];
            if (v150)
            {
              v149[8] = v150;
              operator delete(v150);
            }

            v151 = v149[4];
            if (v151)
            {
              v149[5] = v151;
              operator delete(v151);
            }

            v152 = 42 * ((*&__src[16] - *&__src[8]) >> 3) - 1;
            v153 = (*&__src[40])--;
            if (*&__src[16] == *&__src[8])
            {
              v152 = 0;
            }

            if ((v152 - (v153 + *&__src[32]) + 1) >= 0x54)
            {
              operator delete(*(*&__src[16] - 8));
              *&__src[16] -= 8;
            }

            v171 = 1;
            goto LABEL_190;
          }

          v141 = *&__src[8];
          v142 = *&__src[16];
          if (*&__src[16] == *&__src[8])
          {
            *&__src[40] = 0;
            v155 = 0;
          }

          else
          {
            v143 = (*&__src[8] + 8 * (*&__src[32] / 0x2AuLL));
            v144 = (*v143 + 96 * (*&__src[32] % 0x2AuLL));
            v145 = *(*&__src[8] + 8 * ((*&__src[40] + *&__src[32]) / 0x2AuLL)) + 96 * ((*&__src[40] + *&__src[32]) % 0x2AuLL);
            if (v144 != v145)
            {
              do
              {
                v146 = v144[7];
                if (v146)
                {
                  v144[8] = v146;
                  operator delete(v146);
                }

                v147 = v144[4];
                if (v147)
                {
                  v144[5] = v147;
                  operator delete(v147);
                }

                v144 += 12;
                if ((v144 - *v143) == 4032)
                {
                  v148 = v143[1];
                  ++v143;
                  v144 = v148;
                }
              }

              while (v144 != v145);
              v141 = *&__src[8];
              v142 = *&__src[16];
            }

            *&__src[40] = 0;
            v155 = (v142 - v141) >> 3;
            if (v155 >= 3)
            {
              do
              {
                operator delete(*v141);
                v141 = (*&__src[8] + 8);
                *&__src[8] = v141;
                v155 = (*&__src[16] - v141) >> 3;
              }

              while (v155 > 2);
            }
          }

          if (v155 == 1)
          {
            v156 = 21;
LABEL_274:
            *&__src[32] = v156;
          }

          else if (v155 == 2)
          {
            v156 = 42;
            goto LABEL_274;
          }

          v171 = 1;
          v172 = v175;
          goto LABEL_190;
        }

        if (v121 != -999)
        {
          if (v121 != -995)
          {
LABEL_310:
            sub_1D9D7AB4C();
          }

          v122 = *&__src[32];
          v123 = *&__src[8];
          v124 = *&__src[16];
          if (!*&__src[32])
          {
            v125 = 42 * ((*&__src[16] - *&__src[8]) >> 3) - 1;
            if (*&__src[16] == *&__src[8])
            {
              v125 = 0;
            }

            if ((v125 - *&__src[40]) < 0x2A)
            {
              if (*&__src[16] - *&__src[8] < *&__src[24] - *__src)
              {
                if (*&__src[8] != *__src)
                {
                  operator new();
                }

                operator new();
              }

              if (*&__src[24] == *__src)
              {
                v154 = 1;
              }

              else
              {
                v154 = (*&__src[24] - *__src) >> 2;
              }

              if (!(v154 >> 61))
              {
                operator new();
              }

LABEL_314:
              sub_1D9D10E9C();
            }

            *&__src[32] = 42;
            v126 = *&__src[16] - 8;
            v127 = *(*&__src[16] - 8);
            *&__src[16] -= 8;
            if (*&__src[8] == *__src)
            {
              if (v126 >= *&__src[24])
              {
                if (*&__src[24] == *&__src[8])
                {
                  v158 = 1;
                }

                else
                {
                  v158 = (*&__src[24] - *&__src[8]) >> 2;
                }

                if (!(v158 >> 61))
                {
                  operator new();
                }

                goto LABEL_314;
              }

              v157 = (((*&__src[24] - v126) >> 3) + 1) / 2;
              v128 = 8 * v157 + *&__src[8];
              if (v126 != *&__src[8])
              {
                memmove((8 * v157 + *&__src[8]), *&__src[8], v126 - *&__src[8]);
                v126 = *&__src[16];
              }

              *&__src[16] = v126 + 8 * v157;
            }

            else
            {
              v128 = *&__src[8];
            }

            *(v128 - 8) = v127;
            *&__src[8] = v128 - 8;
            v122 = *&__src[32];
            v124 = *&__src[16];
            v123 = v128 - 8;
          }

          v159 = (v123 + 8 * (v122 / 0x2A));
          v160 = *v159 + 96 * (v122 % 0x2A);
          if (v124 == v123)
          {
            v161 = 0;
          }

          else
          {
            v161 = v160;
          }

          if (v161 == *v159)
          {
            v161 = *(v159 - 1) + 4032;
          }

          v162 = *(v119 + 16);
          *(v161 - 96) = *v119;
          *(v161 - 80) = v162;
          *(v161 - 56) = 0;
          *(v161 - 48) = 0;
          *(v161 - 64) = 0;
          *(v161 - 64) = *(v119 + 32);
          *(v161 - 48) = *(v119 + 48);
          *(v119 + 32) = 0;
          *(v119 + 40) = 0;
          *(v119 + 48) = 0;
          *(v161 - 40) = 0;
          *(v161 - 32) = 0;
          *(v161 - 24) = 0;
          *(v161 - 40) = *(v119 + 56);
          *(v161 - 24) = *(v119 + 72);
          *(v119 + 56) = 0;
          *(v119 + 64) = 0;
          *(v119 + 72) = 0;
          v163 = *(v119 + 80);
          *(v161 - 11) = *(v119 + 85);
          *(v161 - 16) = v163;
          v164 = vdupq_laneq_s64(*&__src[32], 1);
          *&__src[32] = vaddq_s64(*&__src[32], xmmword_1D9DDDC00);
          v164.i64[0] = vaddq_s64(v164, *&__src[32]).u64[0];
          v129 = (*(*&__src[8] + 8 * (v164.i64[0] / 0x2AuLL)) + 96 * (v164.i64[0] % 0x2AuLL));
          v130 = v129[7];
          if (v130)
          {
            goto LABEL_214;
          }

          goto LABEL_215;
        }
      }

      else
      {
        if (v121 > -993)
        {
          if (v121 == -992)
          {
            sub_1D9D7B120(v193, v119);
            (*(**(v119 + 80) + 24))(*(v119 + 80), 1, v119);
            (*(*v195[1] + 24))(v195[1], 0, v193);
            v134 = *&__src[8];
            if (*&__src[16] == *&__src[8])
            {
              v135 = 0;
            }

            else
            {
              v135 = 42 * ((*&__src[16] - *&__src[8]) >> 3) - 1;
            }

            v136 = *&__src[40] + *&__src[32];
            if (v135 == *&__src[40] + *&__src[32])
            {
              sub_1D9D81228(__src);
              v134 = *&__src[8];
              v136 = *&__src[40] + *&__src[32];
            }

            v137 = *(v134 + 8 * (v136 / 0x2A)) + 96 * (v136 % 0x2A);
            v138 = *&v193[16];
            *v137 = *v193;
            *(v137 + 16) = v138;
            *(v137 + 40) = 0;
            *(v137 + 48) = 0;
            *(v137 + 32) = 0;
            *(v137 + 32) = *&v193[32];
            *(v137 + 48) = *&v193[48];
            memset(&v193[32], 0, 24);
            *(v137 + 56) = 0;
            *(v137 + 64) = 0;
            *(v137 + 72) = 0;
            *(v137 + 56) = v194;
            *(v137 + 72) = v195[0];
            v194 = 0uLL;
            v195[0] = 0;
            v139 = v195[1];
            *(v137 + 85) = *(&v195[1] + 5);
            *(v137 + 80) = v139;
            ++*&__src[40];
            if (v194)
            {
              *(&v194 + 1) = v194;
              operator delete(v194);
            }

            if (*&v193[32])
            {
              *&v193[40] = *&v193[32];
              operator delete(*&v193[32]);
            }
          }

          else if (v121 != -991)
          {
            goto LABEL_310;
          }

          goto LABEL_190;
        }

        if (v121 != -994)
        {
          if (v121 != -993)
          {
            goto LABEL_310;
          }

LABEL_213:
          v129 = (*(*&__src[8] + 8 * ((*&__src[40] + *&__src[32] - 1) / 0x2AuLL)) + 96 * ((*&__src[40] + *&__src[32] - 1) % 0x2AuLL));
          v130 = v129[7];
          if (v130)
          {
LABEL_214:
            v129[8] = v130;
            operator delete(v130);
          }

LABEL_215:
          v131 = v129[4];
          if (v131)
          {
            v129[5] = v131;
            operator delete(v131);
          }

          v132 = 42 * ((*&__src[16] - *&__src[8]) >> 3) - 1;
          v133 = (*&__src[40])--;
          if (*&__src[16] == *&__src[8])
          {
            v132 = 0;
          }

          if ((v132 - (v133 + *&__src[32]) + 1) >= 0x54)
          {
            operator delete(*(*&__src[16] - 8));
            *&__src[16] -= 8;
          }
        }
      }

LABEL_190:
      v22 = *&__src[40];
      if (!*&__src[40])
      {
        if (v171)
        {
          v165 = v176;
          *v176 = v173;
          v165[1] = v173 + v172;
          LOBYTE(v16) = 1;
          *(v165 + 16) = 1;
LABEL_292:
          v166 = *&__src[8];
          v167 = *&__src[16];
          *&__src[40] = 0;
          v168 = (*&__src[16] - *&__src[8]) >> 3;
          if (v168 >= 3)
          {
            do
            {
LABEL_293:
              operator delete(*v166);
              v167 = *&__src[16];
              v166 = (*&__src[8] + 8);
              *&__src[8] = v166;
              v168 = (*&__src[16] - v166) >> 3;
            }

            while (v168 > 2);
          }
        }

        else
        {
          LOBYTE(v16) = 0;
          v166 = *&__src[8];
          v167 = *&__src[16];
          *&__src[40] = 0;
          v168 = (*&__src[16] - *&__src[8]) >> 3;
          if (v168 >= 3)
          {
            goto LABEL_293;
          }
        }

        if (v168 == 1)
        {
          v169 = 21;
LABEL_298:
          *&__src[32] = v169;
        }

        else if (v168 == 2)
        {
          v169 = 42;
          goto LABEL_298;
        }

        if (v166 != v167)
        {
          do
          {
            v170 = *v166++;
            operator delete(v170);
          }

          while (v166 != v167);
          if (*&__src[16] != *&__src[8])
          {
            *&__src[16] += (*&__src[8] - *&__src[16] + 7) & 0xFFFFFFFFFFFFFFF8;
          }
        }

        if (*__src)
        {
          operator delete(*__src);
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_31:
        v13 = v176;
        v30 = v176 + 8;
        if (v177 == v176)
        {
          v30 = &v179 + 8;
        }

        v185 = *v30 != *(&v184 + 1);
        if (v177 != v176)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v177 - v176) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1D9D67CB0();
        }

        v12 = 1;
        v14 = v185;
        if (v176)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  v196 = 0;
  v197 = 0;
  v198 = 0;
  *v193 = 0;
  memset(&v193[8], 0, 48);
  v194 = 0u;
  memset(v195, 0, 21);
  v7 = *(a2 + 40);
  if (!v7)
  {
    v8 = 0;
    v28 = 0;
    v29 = v194;
    if (!v194)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *&v191 = v5;
  *(&v191 + 1) = v5;
  v192 = 0;
  *__src = 0;
  memset(&__src[8], 0, 48);
  __p = 0uLL;
  memset(v190, 0, 21);
  v8 = sub_1D9D7AC28(&v196, __src);
  v197 = v8;
  if (__p)
  {
    operator delete(__p);
  }

  if (*&__src[32])
  {
    operator delete(*&__src[32]);
  }

  v9 = *(v8 - 64);
  *(v8 - 96) = 0;
  *(v8 - 88) = v173;
  *(v8 - 80) = v173;
  *(v8 - 72) = v5;
  v10 = *(a2 + 28);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 - 56) - v9) >> 3);
  if (v10 <= v11)
  {
    if (v10 < v11)
    {
      *(v8 - 56) = v9 + 24 * v10;
    }
  }

  else
  {
    sub_1D9D7AE00((v8 - 64), v10 - v11, &v191);
  }

  v33 = *(v8 - 40);
  v34 = *(a2 + 32);
  v35 = (*(v8 - 32) - v33) >> 4;
  if (v34 <= v35)
  {
    if (v34 < v35)
    {
      *(v8 - 32) = v33 + 16 * v34;
    }
  }

  else
  {
    sub_1D9D7AFCC(v8 - 40, v34 - v35);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  *(v8 - 16) = v7;
  *(v8 - 8) = 4160;
  *(v8 - 4) = 1;
  do
  {
    v39 = (++v38 & 0xFFF) != 0 || (v38 >> 12) < v175;
    if (!v39)
    {
      sub_1D9D7AAF4();
    }

    v41 = (v8 - 16);
    v40 = *(v8 - 16);
    v42 = (v8 - 96);
    if (v40)
    {
      (*(*v40 + 16))(v40, v8 - 96);
    }

    v43 = *v42;
    if (*v42 <= -994)
    {
      if ((v43 + 995) < 2)
      {
        goto LABEL_54;
      }

      if (v43 != -1000)
      {
LABEL_309:
        sub_1D9D7AB4C();
      }

      if (*(v8 - 80) != v174)
      {
LABEL_69:
        v44 = v197;
        v45 = *(v197 - 5);
        if (v45)
        {
          *(v197 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v44 - 8);
        if (v46)
        {
          *(v44 - 7) = v46;
          operator delete(v46);
        }

        v197 = v44 - 6;
        goto LABEL_54;
      }

      v50 = v174 - *(v8 - 88);
      if ((v37 & (v36 >= v50)) == 0)
      {
        v51 = *(v8 - 80);
        *v193 = *v42;
        *&v193[16] = v51;
        if (v193 != v42)
        {
          v53 = *(v8 - 64);
          v52 = *(v8 - 56);
          v54 = v52 - v53;
          v55 = *&v193[48];
          v56 = *&v193[32];
          if (*&v193[48] - *&v193[32] < v52 - v53)
          {
            if (*&v193[32])
            {
              *&v193[40] = *&v193[32];
              operator delete(*&v193[32]);
              v55 = 0;
              memset(&v193[32], 0, 24);
            }

            v57 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 3);
            if (v57 <= 0xAAAAAAAAAAAAAAALL)
            {
              v58 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
              if (2 * v58 > v57)
              {
                v57 = 2 * v58;
              }

              if (v58 >= 0x555555555555555)
              {
                v59 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v59 = v57;
              }

              if (v59 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }
            }

            sub_1D9D67CB0();
          }

          v60 = *&v193[40];
          if (*&v193[40] - *&v193[32] >= v54)
          {
            while (v53 != v52)
            {
              *v56 = *v53;
              *(v56 + 16) = *(v53 + 16);
              v53 += 24;
              v56 += 24;
            }
          }

          else
          {
            v61 = (v53 + *&v193[40] - *&v193[32]);
            if (*&v193[40] != *&v193[32])
            {
              do
              {
                *v56 = *v53;
                *(v56 + 16) = *(v53 + 16);
                v53 += 24;
                v56 += 24;
              }

              while (v53 != v61);
            }

            if (v61 == v52)
            {
              v56 = v60;
            }

            else
            {
              v56 = v60;
              do
              {
                v62 = *v61;
                *(v60 + 16) = *(v61 + 2);
                *v60 = v62;
                v60 += 24;
                v61 = (v61 + 24);
                v56 += 24;
              }

              while (v61 != v52);
            }
          }

          *&v193[40] = v56;
          v63 = *(v8 - 40);
          v64 = *(v8 - 32);
          v65 = v64 - v63;
          v66 = v195[0];
          v67 = v194;
          if (v195[0] - v194 < (v64 - v63))
          {
            if (v194)
            {
              *(&v194 + 1) = v194;
              operator delete(v194);
              v66 = 0;
              v194 = 0uLL;
              v195[0] = 0;
            }

            v68 = v65 >> 4;
            if (!((v65 >> 4) >> 60))
            {
              if (v66 >> 3 > v68)
              {
                v68 = v66 >> 3;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFF0)
              {
                v69 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v68;
              }

              if (!(v69 >> 60))
              {
                operator new();
              }
            }

            sub_1D9D67CB0();
          }

          v70 = *(&v194 + 1);
          if (*(&v194 + 1) - v194 >= v65)
          {
            if (v63 == v64)
            {
              v73 = v194;
            }

            else
            {
              v75 = v65 - 16;
              if ((v65 - 16) < 0x50)
              {
                goto LABEL_124;
              }

              v97 = v194 + 8 >= &v63[(v75 & 0xFFFFFFFFFFFFFFF0) + 16] || (v63 + 8) >= v194 + (v75 & 0xFFFFFFFFFFFFFFF0) + 16;
              v98 = !v97;
              if (v63 < v194 + 8 + (v75 & 0xFFFFFFFFFFFFFFF0) && v194 < &v63[(v75 & 0xFFFFFFFFFFFFFFF0) + 8])
              {
                goto LABEL_124;
              }

              if (v98)
              {
                goto LABEL_124;
              }

              v100 = (v75 >> 4) + 1;
              v101 = 16 * (v100 & 0x1FFFFFFFFFFFFFFCLL);
              v73 = (v194 + v101);
              v102 = &v63[v101];
              v103 = (v63 + 32);
              v104 = (v194 + 32);
              v105 = v100 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v107 = *(v103 - 2);
                v106 = *(v103 - 1);
                v109 = *v103;
                v108 = v103[1];
                v103 += 4;
                *(v104 - 2) = v107;
                *(v104 - 1) = v106;
                *v104 = v109;
                v104[1] = v108;
                v104 += 4;
                v105 -= 4;
              }

              while (v105);
              v67 = v73;
              v63 = v102;
              if (v100 != (v100 & 0x1FFFFFFFFFFFFFFCLL))
              {
LABEL_124:
                v73 = v67;
                do
                {
                  *v73 = *v63;
                  v73[1] = *(v63 + 1);
                  v63 += 16;
                  v73 += 2;
                }

                while (v63 != v64);
              }
            }
          }

          else
          {
            v71 = &v63[*(&v194 + 1) - v194];
            if (*(&v194 + 1) != v194)
            {
              v72 = *(&v194 + 1) - v194 - 16;
              if (v72 < 0x50)
              {
                goto LABEL_317;
              }

              v83 = v194 + 8 >= &v63[(v72 & 0xFFFFFFFFFFFFFFF0) + 16] || (v63 + 8) >= v194 + (v72 & 0xFFFFFFFFFFFFFFF0) + 16;
              v84 = !v83;
              if (v63 < v194 + 8 + (v72 & 0xFFFFFFFFFFFFFFF0) && v194 < &v63[(v72 & 0xFFFFFFFFFFFFFFF0) + 8])
              {
                goto LABEL_317;
              }

              if (v84)
              {
                goto LABEL_317;
              }

              v86 = (v72 >> 4) + 1;
              v87 = 16 * (v86 & 0x1FFFFFFFFFFFFFFCLL);
              v88 = (v194 + v87);
              v89 = &v63[v87];
              v90 = (v63 + 32);
              v91 = (v194 + 32);
              v92 = v86 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v94 = *(v90 - 2);
                v93 = *(v90 - 1);
                v96 = *v90;
                v95 = v90[1];
                v90 += 4;
                *(v91 - 2) = v94;
                *(v91 - 1) = v93;
                *v91 = v96;
                v91[1] = v95;
                v91 += 4;
                v92 -= 4;
              }

              while (v92);
              v67 = v88;
              v63 = v89;
              if (v86 != (v86 & 0x1FFFFFFFFFFFFFFCLL))
              {
LABEL_317:
                do
                {
                  *v67 = *v63;
                  v67[1] = *(v63 + 1);
                  v63 += 16;
                  v67 += 2;
                }

                while (v63 != v71);
              }
            }

            if (v71 == v64)
            {
              v73 = v70;
            }

            else
            {
              v73 = v70;
              do
              {
                v74 = *v71;
                v71 += 16;
                *v70++ = v74;
                v73 += 2;
              }

              while (v71 != v64);
            }
          }

          *(&v194 + 1) = v73;
        }

        v76 = *v41;
        *(&v195[1] + 5) = *(v41 + 5);
        v195[1] = v76;
        v36 = v50;
      }

      v77 = v197;
      if (v36 == v175)
      {
        v78 = v196;
        while (v77 != v78)
        {
          v79 = *(v77 - 5);
          if (v79)
          {
            *(v77 - 4) = v79;
            operator delete(v79);
          }

          v80 = *(v77 - 8);
          if (v80)
          {
            *(v77 - 7) = v80;
            operator delete(v80);
          }

          v77 -= 6;
        }

        v197 = v78;
        v37 = 1;
        v36 = v175;
      }

      else
      {
        v81 = *(v197 - 5);
        if (v81)
        {
          *(v197 - 4) = v81;
          operator delete(v81);
        }

        v82 = *(v77 - 8);
        if (v82)
        {
          *(v77 - 7) = v82;
          operator delete(v82);
        }

        v197 = v77 - 6;
        v37 = 1;
      }
    }

    else
    {
      switch(v43)
      {
        case -993:
          goto LABEL_69;
        case -992:
          sub_1D9D7B120(__src, (v8 - 96));
          (*(**v41 + 24))(*v41, 1, v8 - 96);
          (*(*v190[1] + 24))(v190[1], 0, __src);
          v47 = v197;
          if (v197 >= v198)
          {
            v197 = sub_1D9D7AC28(&v196, __src);
            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }
          }

          else
          {
            v48 = *&__src[16];
            *v197 = *__src;
            v47[1] = v48;
            *(v47 + 6) = 0;
            *(v47 + 7) = 0;
            *(v47 + 4) = 0;
            *(v47 + 5) = 0;
            v47[2] = *&__src[32];
            *(v47 + 6) = *&__src[48];
            *&__src[32] = 0;
            *&__src[40] = 0;
            *(v47 + 8) = 0;
            *(v47 + 9) = 0;
            *(v47 + 56) = __p;
            *(v47 + 9) = v190[0];
            *&__src[48] = 0;
            __p = 0uLL;
            v190[0] = 0;
            v49 = v190[1];
            *(v47 + 85) = *(&v190[1] + 5);
            *(v47 + 10) = v49;
            v197 = v47 + 6;
          }

          if (*&__src[32])
          {
            *&__src[40] = *&__src[32];
            operator delete(*&__src[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_309;
      }
    }

LABEL_54:
    v28 = v196;
    v8 = v197;
  }

  while (v196 != v197);
  if ((v37 & 1) == 0)
  {
    LOBYTE(v7) = 0;
    v29 = v194;
    if (!v194)
    {
      goto LABEL_27;
    }

LABEL_26:
    *(&v194 + 1) = v29;
    operator delete(v29);
    goto LABEL_27;
  }

  v110 = v176;
  *v176 = v173;
  v110[1] = v173 + v36;
  *(v110 + 16) = 1;
  if (*&v193[40] != *&v193[32])
  {
    v111 = 0xAAAAAAAAAAAAAAABLL * ((*&v193[40] - *&v193[32]) >> 3);
    v112 = (*&v193[32] + 16);
    v113 = 1;
    do
    {
      v114 = &v110[3 * v113];
      *v114 = *(v112 - 1);
      v115 = *v112;
      v112 += 24;
      v114[16] = v115;
      v39 = v111 > v113++;
    }

    while (v39);
  }

  LOBYTE(v7) = 1;
  v29 = v194;
  if (v194)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (*&v193[32])
  {
    *&v193[40] = *&v193[32];
    operator delete(*&v193[32]);
  }

  if (v28)
  {
    while (v8 != v28)
    {
      v31 = *(v8 - 40);
      if (v31)
      {
        *(v8 - 32) = v31;
        operator delete(v31);
      }

      v32 = *(v8 - 64);
      if (v32)
      {
        *(v8 - 56) = v32;
        operator delete(v32);
      }

      v8 -= 96;
    }

    operator delete(v28);
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    goto LABEL_31;
  }

LABEL_16:
  v12 = 0;
  v13 = v176;
  v14 = v185;
  if (v176)
  {
LABEL_17:
    v177 = v13;
    operator delete(v13);
  }

LABEL_18:
  if (v12 && v14)
  {
    return 0;
  }

  return v12;
}

void sub_1D9D779A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1D9D8190C(&a33);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D77A6C(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void sub_1D9D780FC(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1D9D78160()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D9D781B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  while (1)
  {
    v8 = v7;
    v7 = sub_1D9D78B60(a1, v7, a3);
    if (v8 == v7)
    {
      break;
    }

LABEL_2:
    if (v7 == v8)
    {
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 28);
  v11 = sub_1D9D78ED4(a1, v8, a3);
  if (v8 != v11)
  {
    v12 = *(a1 + 28);
    v7 = sub_1D9D795E8(a1, v11, a3);
    goto LABEL_2;
  }

LABEL_6:
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    if (*v8 == 124)
    {
      v13 = *(a1 + 56);
      v14 = v8 + 1;
      v15 = v8 + 1;
      while (1)
      {
        v16 = v15;
        v15 = sub_1D9D78B60(a1, v15, a3);
        if (v16 == v15)
        {
          v17 = *(a1 + 56);
          v18 = *(a1 + 28);
          v19 = sub_1D9D78ED4(a1, v16, a3);
          if (v16 == v19)
          {
LABEL_10:
            if (v16 != v14)
            {
              operator new();
            }

            operator new();
          }

          v20 = *(a1 + 28);
          v15 = sub_1D9D795E8(a1, v19, a3);
        }

        if (v15 == v16)
        {
          goto LABEL_10;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *sub_1D9D78474(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      operator new();
    }

    if (a2 != a3)
    {
      do
      {
        if (result == a3)
        {
          v6 = a3;
          goto LABEL_13;
        }

        v6 = result;
        v7 = *(a1 + 56);
        v8 = *(a1 + 28);
        v9 = sub_1D9D8060C(a1, result, a3);
        if (v6 == v9)
        {
          break;
        }

        v10 = *(a1 + 28);
        result = sub_1D9D809A4(a1, v9, a3);
      }

      while (v6 != result);
      if (v6 + 1 == a3 && *v6 == 36)
      {
        operator new();
      }

LABEL_13:
      if (v6 != a3)
      {
        sub_1D9D805B4();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *sub_1D9D78630(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = *(a1 + 56);
  v7 = sub_1D9D80DC4(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = sub_1D9D80DC4(a1, v7, v3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    goto LABEL_12;
  }

  if (v8 != v3)
  {
    if (*v8 == 124)
    {
      v9 = *(a1 + 56);
      v10 = v8 + 1;
      v11 = sub_1D9D80DC4(a1, v8 + 1, v3);
      if (v8 + 1 != v11)
      {
        do
        {
          v12 = v11;
          v11 = sub_1D9D80DC4(a1, v11, v3);
        }

        while (v12 != v11);
        if (v12 != v10)
        {
          operator new();
        }
      }

LABEL_12:
      sub_1D9D805B4();
    }

    return v8;
  }

  return v3;
}

void sub_1D9D787E4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7886C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D788A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1D9D788D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001D9DDE265)
  {
    if (((v2 & 0x80000001D9DDE265 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001D9DDE265))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001D9DDE265 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D9D78944(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D789B8(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D78A48(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D9D78A5C(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D78AD0(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

unsigned __int8 *sub_1D9D78B60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x5B)
    {
      if (v3 == 92)
      {
        if (a2 + 1 != a3)
        {
          v10 = a2[1];
          if (v10 == 66)
          {
            sub_1D9D79964();
          }

          if (v10 == 98)
          {
            operator new();
          }
        }
      }

      else if (v3 == 94)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 36)
      {
        operator new();
      }

      if (v3 == 40)
      {
        v4 = a2 + 1;
        if (a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
        {
          v5 = a2[2];
          if (v5 == 33)
          {
            sub_1D9D799E8(v14);
            v15 = *(a1 + 24);
            sub_1D9D77B04(v14, v4 + 2, a3);
            v13 = *(a1 + 28);
            sub_1D9D79A58();
          }

          if (v5 == 61)
          {
            sub_1D9D799E8(v14);
            v15 = *(a1 + 24);
            sub_1D9D77B04(v14, v4 + 2, a3);
            v8 = *(a1 + 28);
            sub_1D9D79A58();
          }
        }
      }
    }
  }

  return a2;
}

char *sub_1D9D78ED4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x3E)
  {
    v5 = v4 - 92;
    if (v5 <= 0x21)
    {
      v3 = a2;
      if (((1 << (v4 - 92)) & 0x300000006) != 0)
      {
        return v3;
      }

      if (v4 == 92)
      {
        v10 = (a2 + 1);
        if (a3 == a2 + 1)
        {
          sub_1D9D7C56C();
        }

        v11 = *v10;
        v12 = v11 - 48;
        if (v11 == 48)
        {
          goto LABEL_43;
        }

        if ((v11 - 49) <= 8)
        {
          v17 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_44;
          }

          do
          {
            v18 = *v17;
            if ((v18 - 48) > 9)
            {
              break;
            }

            if (v12 >= 0x19999999)
            {
              goto LABEL_65;
            }

            ++v17;
            v12 = v18 + 10 * v12 - 48;
          }

          while (v17 != a3);
          if (v12)
          {
LABEL_44:
            if (v12 <= *(a1 + 28))
            {
              sub_1D9D7CB90(a1);
            }
          }

LABEL_65:
          sub_1D9D7CB38();
        }

        if (*v10 > 0x63u)
        {
          if (v11 == 119)
          {
            operator new();
          }

          if (v11 == 115)
          {
            operator new();
          }

          v3 = (a2 + 1);
          if (v11 == 100)
          {
            operator new();
          }
        }

        else
        {
          if (v11 == 68)
          {
            operator new();
          }

          if (v11 == 83)
          {
            operator new();
          }

          v3 = (a2 + 1);
          if (v11 == 87)
          {
            operator new();
          }
        }

        if (v10 == v3)
        {
          v3 = a2;
          v19 = sub_1D9D7C5C4(a1, v10, a3, 0);
          if (v19 != v10)
          {
            return v19;
          }
        }

        return v3;
      }

      if (v5 == 31)
      {
        goto LABEL_63;
      }
    }

    if (v4 != 91)
    {
      if (v4 == 63)
      {
        goto LABEL_63;
      }

      goto LABEL_43;
    }

    return sub_1D9D7B2B0(a1, a2, a3);
  }

  v3 = a2;
  if (*a2 > 0x28u)
  {
    if (v4 != 41)
    {
      if (v4 == 46)
      {
        operator new();
      }

      if (v4 - 42 < 2)
      {
LABEL_63:
        sub_1D9D7C410();
      }

LABEL_43:
      sub_1D9D7C954(a1);
    }

    return v3;
  }

  if (v4 == 36)
  {
    return v3;
  }

  if (v4 != 40)
  {
    goto LABEL_43;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_64;
  }

  if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
  {
    ++*(a1 + 36);
    v8 = sub_1D9D781B8();
    if (v8 != a3 && *v8 == 41)
    {
      --*(a1 + 36);
      return (v8 + 1);
    }

LABEL_64:
    sub_1D9D79B20();
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    operator new();
  }

  v13 = *(a1 + 28);
  ++*(a1 + 36);
  v16 = sub_1D9D781B8();
  if (v16 == a3 || *v16 != 41)
  {
    goto LABEL_64;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    operator new();
  }

  --*(a1 + 36);
  return (v16 + 1);
}

unsigned __int8 *sub_1D9D795E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *(a1 + 24) & 0x1F0;
  v5 = *a2;
  if (v5 > 0x3E)
  {
    if (v5 == 63)
    {
      v16 = a2 + 1;
      if (v4)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 == a3;
      }

      if (!v17)
      {
        *v16;
      }
    }

    else
    {
      v3 = a2;
      if (v5 != 123)
      {
        return v3;
      }

      v7 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_62;
      }

      v8 = *v7;
      if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38)
      {
        goto LABEL_62;
      }

      v9 = v8 - 48;
      v10 = a2 + 2;
      if (a2 + 2 == a3)
      {
LABEL_18:
        v10 = a3;
      }

      else
      {
        while (1)
        {
          v11 = *v10;
          if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
          {
            break;
          }

          if (v9 >= 214748364)
          {
            goto LABEL_62;
          }

          v9 = v11 + 10 * v9 - 48;
          if (++v10 == a3)
          {
            goto LABEL_18;
          }
        }
      }

      if (v10 == v7)
      {
        goto LABEL_62;
      }

      if (v10 == a3)
      {
        goto LABEL_63;
      }

      v12 = *v10;
      if (v12 != 44)
      {
        if (v12 == 125)
        {
          v13 = v10 + 1;
          if (!v4 && v13 != a3)
          {
            *v13;
          }

          goto LABEL_60;
        }

LABEL_62:
        sub_1D9D7FD44();
      }

      v18 = v10 + 1;
      if (v10 + 1 == a3)
      {
        goto LABEL_62;
      }

      v19 = *v18;
      if (v19 == 125)
      {
        v20 = v10 + 2;
        if (!v4 && v20 != a3)
        {
          *v20;
        }

        goto LABEL_60;
      }

      if (v18 == a3 || (v19 & 0xF8) != 0x30 && (v19 & 0xFE) != 0x38)
      {
        goto LABEL_63;
      }

      v21 = v19 - 48;
      v22 = v10 + 2;
      if (v22 == a3)
      {
LABEL_52:
        v22 = a3;
      }

      else
      {
        while (1)
        {
          v23 = *v22;
          if ((v23 & 0xF8) != 0x30 && (v23 & 0xFE) != 0x38)
          {
            break;
          }

          if (v21 >= 214748364)
          {
            goto LABEL_62;
          }

          v21 = v23 + 10 * v21 - 48;
          if (++v22 == a3)
          {
            goto LABEL_52;
          }
        }
      }

      if (v22 == v18 || v22 == a3 || *v22 != 125)
      {
LABEL_63:
        sub_1D9D7FD9C();
      }

      if (v21 < v9)
      {
        goto LABEL_62;
      }

      v24 = v22 + 1;
      if (!v4 && v24 != a3)
      {
        *v24;
      }
    }

LABEL_60:
    sub_1D9D7FBB4();
  }

  if (v5 == 42)
  {
    v14 = a2 + 1;
    if (v4)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == a3;
    }

    if (!v15)
    {
      *v14;
    }

    goto LABEL_60;
  }

  v3 = a2;
  if (v5 == 43)
  {
    v6 = a2 + 1;
    if (!v4 && v6 != a3)
    {
      *v6;
    }

    goto LABEL_60;
  }

  return v3;
}

uint64_t sub_1D9D799E8(uint64_t a1)
{
  v2 = MEMORY[0x1DA741190]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1D9D79B20()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D9D79B78(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D79BEC(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D79C7C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_1D9D79CE4(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D79D58(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D79DE8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_1D9D79E3C(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EBB8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D9D79EC8(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EBB8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D79F74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_1D9D7A0C8(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EC00;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D9D7A1A0(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EC00;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D7A298(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_1D9D7A8D4(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_1D9D7A438(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:

  operator delete(v10);
}

void sub_1D9D7A41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D7A438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *&v49 = a3;
  *(&v49 + 1) = a3;
  v50 = 0;
  *v46 = 0;
  memset(&v46[8], 0, 48);
  *__p = 0u;
  memset(v48, 0, 21);
  v13 = sub_1D9D7AC28(&v51, v46);
  v52 = v13;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v46[32])
  {
    operator delete(*&v46[32]);
  }

  v14 = *(v13 - 64);
  *(v13 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 56) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 56) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1D9D7AE00((v13 - 64), v15 - v16, &v49);
  }

  v18 = *(v13 - 40);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 32) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 32) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_1D9D7AFCC(v13 - 40, v19 - v20);
  }

  *(v13 - 16) = v6;
  *(v13 - 8) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_1D9D7AAF4();
    }

    v23 = (v13 - 96);
    v24 = *(v13 - 16);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 96);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          sub_1D9D7B120(v46, (v13 - 96));
          (*(**(v13 - 16) + 24))(*(v13 - 16), 1, v13 - 96);
          (*(*v48[1] + 24))(v48[1], 0, v46);
          v30 = v52;
          if (v52 >= v53)
          {
            v52 = sub_1D9D7AC28(&v51, v46);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v46[16];
            *v52 = *v46;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v46[32];
            *(v30 + 6) = *&v46[48];
            *&v46[32] = 0;
            *&v46[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v48[0];
            *&v46[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v48[0] = 0;
            v32 = v48[1];
            *(v30 + 85) = *(&v48[1] + 5);
            *(v30 + 10) = v32;
            v52 = v30 + 6;
          }

          if (*&v46[32])
          {
            *&v46[40] = *&v46[32];
            operator delete(*&v46[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_59;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v51;
    v13 = v52;
    ++v21;
    if (v51 == v52)
    {
      v17 = 0;
      if (!v51)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_59:
    sub_1D9D7AB4C();
  }

  v26 = *(v13 - 80);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v52;
    v28 = *(v52 - 5);
    if (v28)
    {
      *(v52 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v52 = v27 - 6;
    goto LABEL_17;
  }

  v37 = *a4;
  *v37 = a2;
  *(v37 + 8) = v26;
  *(v37 + 16) = 1;
  v38 = *(v13 - 64);
  v39 = *(v13 - 56) - v38;
  if (v39)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 3);
    v41 = (v38 + 16);
    v42 = 1;
    do
    {
      v43 = v37 + 24 * v42;
      *v43 = *(v41 - 1);
      v44 = *v41;
      v41 += 24;
      *(v43 + 16) = v44;
    }

    while (v40 > v42++);
  }

  v17 = 1;
  v22 = v51;
  if (v51)
  {
LABEL_44:
    for (i = v52; i != v22; i -= 6)
    {
      v34 = *(i - 5);
      if (v34)
      {
        *(i - 4) = v34;
        operator delete(v34);
      }

      v35 = *(i - 8);
      if (v35)
      {
        *(i - 7) = v35;
        operator delete(v35);
      }
    }

    operator delete(v22);
  }

  return v17;
}

void sub_1D9D7A864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D9D7AAB0(&a9);
  sub_1D9D7ABA4((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_1D9D7A8D4(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < a2)
  {
    if (v6)
    {
      a1[1] = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= a2)
    {
      v9 = a2;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  v11 = a1[1];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  if (v12 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  }

  if (v13)
  {
    v14 = *a3;
    v15 = a3[1];
    v16 = v13;
    v17 = *(a3 + 16);
    if (v13 == 1)
    {
      goto LABEL_28;
    }

    result = &v6[24 * (v13 & 0xFFFFFFFFFFFFFFFELL)];
    v16 = v13 & 1;
    v18 = v6 + 24;
    v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 3) = v14;
      *(v18 - 2) = v15;
      *v18 = v14;
      *(v18 + 1) = v15;
      *(v18 - 8) = v17;
      v18[16] = v17;
      v18 += 48;
      v19 -= 2;
    }

    while (v19);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_28:
      do
      {
        *result = v14;
        *(result + 1) = v15;
        result[16] = v17;
        result += 24;
        --v16;
      }

      while (v16);
    }
  }

  if (a2 <= v12)
  {
    a1[1] = &v6[24 * a2];
  }

  else
  {
    v20 = &v11[24 * (a2 - v12)];
    v21 = 24 * a2 - 24 * v12;
    do
    {
      v22 = *a3;
      *(v11 + 2) = a3[2];
      *v11 = v22;
      v11 += 24;
      v21 -= 24;
    }

    while (v21);
    a1[1] = v20;
  }

  return result;
}

void *sub_1D9D7AAB0(void *a1)
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

  return a1;
}

void sub_1D9D7AAF4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7AB4C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void **sub_1D9D7ABA4(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D9D7AC28(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1D9D67CB0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v6 = *(a2 + 16);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 72) = v8;
  *(v7 + 80) = v9;
  v10 = 96 * v2 + 96;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v7 + *a1 - v12;
    do
    {
      v16 = *(v14 + 1);
      *v15 = *v14;
      *(v15 + 16) = v16;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v14[6];
      v14[4] = 0;
      v14[5] = 0;
      v14[6] = 0;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 72) = v14[9];
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      v17 = v14[10];
      *(v15 + 85) = *(v14 + 85);
      *(v15 + 80) = v17;
      v14 += 12;
      v15 += 96;
    }

    while (v14 != v12);
    do
    {
      v18 = v11[7];
      if (v18)
      {
        v11[8] = v18;
        operator delete(v18);
      }

      v19 = v11[4];
      if (v19)
      {
        v11[5] = v19;
        operator delete(v19);
      }

      v11 += 12;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1D9D7AE00(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D67CB0();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_1D9D7AFCC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1D9D67CB0();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1D9D7B120(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  v8 = *(a2 + 10);
  *(result + 85) = *(a2 + 85);
  *(result + 80) = v8;
  return result;
}

void sub_1D9D7B27C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1D9D7B2B0(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1];
      operator new();
    }

    sub_1D9D7EA60();
  }

  return a2;
}

void sub_1D9D7C240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D7C410()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D9D7C468(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D7C4DC(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D7C56C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

char *sub_1D9D7C5C4(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 != 102)
      {
        if (v5 == 110)
        {
          if (this)
          {
            std::string::operator=(this, 10);
            return (v4 + 1);
          }

          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if (this)
      {
        std::string::operator=(this, 12);
        return (v4 + 1);
      }
    }

    else
    {
      if (v5 == 48)
      {
        if (this)
        {
          std::string::operator=(this, 0);
          return (v4 + 1);
        }

        goto LABEL_68;
      }

      if (v5 != 99)
      {
        if (v5 == 95)
        {
          goto LABEL_69;
        }

        goto LABEL_64;
      }

      v4 = (a2 + 1);
      if (a2 + 1 == a3)
      {
        goto LABEL_69;
      }

      if (*v4 < 65)
      {
        goto LABEL_69;
      }

      v7 = *v4;
      if (v7 >= 0x5B && (v7 - 97) > 0x19u)
      {
        goto LABEL_69;
      }

      v8 = v7 & 0x1F;
      if (this)
      {
        goto LABEL_67;
      }
    }

LABEL_68:
    sub_1D9D7C954(a1);
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (this)
      {
        std::string::operator=(this, 13);
        return (v4 + 1);
      }

      goto LABEL_68;
    }

    if (v5 == 116)
    {
      if (this)
      {
        std::string::operator=(this, 9);
        return (v4 + 1);
      }

      goto LABEL_68;
    }
  }

  else
  {
    switch(v5)
    {
      case 'u':
        if (a2 + 1 == a3)
        {
          goto LABEL_69;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_69;
        }

        v4 = (a2 + 2);
        if (a2 + 2 == a3)
        {
          goto LABEL_69;
        }

        v11 = *v4;
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v12 = -87;
        }

        v6 = 16 * (v12 + v11);
LABEL_41:
        if (v4 + 1 == a3)
        {
          goto LABEL_69;
        }

        v13 = v4[1];
        v14 = -48;
        if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
        {
          v13 |= 0x20u;
          if ((v13 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v14 = -87;
        }

        if (v4 + 2 != a3)
        {
          v15 = v4[2];
          v16 = -48;
          if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
          {
LABEL_51:
            if (!this)
            {
              sub_1D9D7C954(a1);
            }

            std::string::operator=(this, v15 + 16 * (v6 + v14 + v13) + v16);
            v4 += 3;
            return v4;
          }

          v15 |= 0x20u;
          if ((v15 - 97) < 6)
          {
            v16 = -87;
            goto LABEL_51;
          }
        }

LABEL_69:
        sub_1D9D7C56C();
      case 'v':
        if (this)
        {
          std::string::operator=(this, 11);
          return (v4 + 1);
        }

        goto LABEL_68;
      case 'x':
        v6 = 0;
        goto LABEL_41;
    }
  }

LABEL_64:
  if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
  {
    goto LABEL_69;
  }

  v8 = *a2;
  if (!this)
  {
    goto LABEL_68;
  }

LABEL_67:
  std::string::operator=(this, v8);
  return (v4 + 1);
}

void sub_1D9D7C954(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1D9D7CACC(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_1F554EAF8;
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1DA741280](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1D9D7CB38()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7CB90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_1D9D7CCC8(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EC90;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D9D7CD54(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EC90;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7CE00(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_1D9D7CEA0(std::locale *a1)
{
  a1->__locale_ = &unk_1F554ECD8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D9D7CF2C(std::locale *a1)
{
  a1->__locale_ = &unk_1F554ECD8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7CFD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_1D9D7D020(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D7D094(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7D124(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_1D9D7D16C(std::locale *a1)
{
  a1->__locale_ = &unk_1F554ED68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D9D7D1F8(std::locale *a1)
{
  a1->__locale_ = &unk_1F554ED68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7D2A4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_1D9D7D3D4(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EDB0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D9D7D460(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EDB0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7D50C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D9D7D598(void *result)
{
  *result = &unk_1F554EAF8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1D9D7D60C(void *a1)
{
  *a1 = &unk_1F554EAF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7D69C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_1D9D7CB38();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_1D9D7D770(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v6 = *(a1 + 170);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v8 < v7)
    {
      *v8 = a2;
      *(a1 + 48) = v8 + 1;
      return;
    }

    v9 = *(a1 + 40);
    v14 = (v8 - v9);
    v15 = v8 - v9 + 1;
    if (v15 >= 0)
    {
      v16 = v7 - v9;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v20 = v8 - v9;
      *v14 = a2;
      v19 = v14 + 1;
      memcpy(0, v9, v20);
      *(a1 + 40) = 0;
      *(a1 + 48) = v14 + 1;
      *(a1 + 56) = 0;
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_1D9D67CB0();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v9 = *(a1 + 40);
  v10 = (v5 - v9);
  v11 = v5 - v9 + 1;
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v4 - v9;
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

  v18 = v5 - v9;
  *v10 = v3;
  v19 = v10 + 1;
  memcpy(0, v9, v18);
  *(a1 + 40) = 0;
  *(a1 + 48) = v10 + 1;
  *(a1 + 56) = 0;
  if (v9)
  {
LABEL_23:
    operator delete(v9);
    *(a1 + 48) = v19;
    return;
  }

LABEL_25:
  *(a1 + 48) = v19;
}

uint64_t sub_1D9D7D98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_1F554EE40;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1D9D7DACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_1D9D54C6C((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_1D9D7E640(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_1D9D7E640(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_1D9D7DB90(std::locale *a1)
{
  sub_1D9D7E734(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D7DBC8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v9 = 0;
    v10 = *(a1 + 168);
    goto LABEL_92;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_67;
  }

  LOBYTE(__src) = *v4;
  v6 = v4[1];
  HIBYTE(__src) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v116, &__s);
  __p = v116;
  size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v116.__r_.__value_.__r.__words[2]);
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v116.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v116);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v116;
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v116.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v116.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_185;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_185:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_67:
    v10 = 0;
    v9 = 1;
    goto LABEL_68;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_67;
  }

LABEL_16:
  v11 = *(a1 + 112);
  v12 = *(a1 + 120) - v11;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 1);
    while (__src != *(v14 - 1) || HIBYTE(__src) != *v14)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_239;
  }

LABEL_25:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    *(&__s.__r_.__value_.__s + 23) = 2;
    LOWORD(__s.__r_.__value_.__l.__data_) = __src;
    __s.__r_.__value_.__s.__data_[2] = 0;
    (*(**(a1 + 32) + 32))(&v116);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 88);
    v17 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
    v18 = *(a1 + 96) - v16;
    if (v18)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 4);
      v111 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      v20 = (v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v116.__r_.__value_.__r.__words[2]) : v116.__r_.__value_.__l.__size_;
      v21 = (v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v116 : v116.__r_.__value_.__r.__words[0];
      v22 = v19 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v18 >> 4);
      v23 = (v16 + 47);
      v24 = 1;
      v25 = 1;
      do
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v20)
        {
          v29 = v20;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(v21, v28, v29);
        v31 = v20 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v20 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v20;
          }

          v36 = memcmp(v34, v21, v35);
          v37 = v33 >= v20;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            v38 = 5;
            goto LABEL_187;
          }
        }

        v25 = v24++ < v19;
        v23 += 48;
        --v22;
      }

      while (v22);
      v38 = 0;
LABEL_187:
      v17 = v111;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v17 < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v90 = 1;
      goto LABEL_219;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v90 = 0;
    goto LABEL_221;
  }

  p_s = &__s;
  sub_1D9D7E8B0(&__s, a1 + 16, &__src, &v116);
  v92 = *(a1 + 136);
  v93 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v94 = *(a1 + 144) - v92;
  if (v94)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v96 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v95 <= 1)
    {
      v97 = 1;
    }

    else
    {
      v97 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    }

    v98 = 1;
    v99 = 1;
    while (1)
    {
      v100 = *(v92 + 23);
      v101 = v100;
      if ((v100 & 0x80u) != 0)
      {
        v100 = *(v92 + 8);
      }

      if (v96 == v100)
      {
        v102 = v101 >= 0 ? v92 : *v92;
        if (!memcmp(p_s, v102, v96))
        {
          break;
        }
      }

      v99 = v98++ < v95;
      v92 += 24;
      if (!--v97)
      {
        goto LABEL_215;
      }
    }

    v90 = 1;
    v38 = 5;
  }

  else
  {
    v99 = 0;
LABEL_215:
    v38 = 0;
    v90 = 0;
  }

  if (v93 < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (!v99)
  {
LABEL_221:
    if (__src < 0)
    {
      v106 = *(a1 + 164);
    }

    else
    {
      v103 = *(a1 + 160);
      v104 = *(*(a1 + 24) + 16);
      v105 = *(v104 + 4 * __src);
      if (((v105 & v103) != 0 || __src == 95 && (v103 & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((*(v104 + 4 * SHIBYTE(__src)) & v103) != 0 || (v103 & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_239;
      }

      v106 = *(a1 + 164);
      if ((v106 & v105) != 0 || __src == 95 && (v106 & 0x80) != 0)
      {
LABEL_238:
        v10 = v90;
LABEL_240:
        v9 = 2;
        goto LABEL_92;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(__src)) & v106) == 0)
      {
        v10 = 1;
        if (SHIBYTE(__src) != 95 || (v106 & 0x80) == 0)
        {
          goto LABEL_240;
        }
      }

      goto LABEL_238;
    }

LABEL_239:
    v10 = 1;
    goto LABEL_240;
  }

LABEL_219:
  v9 = 2;
  v10 = v90;
  if (v38)
  {
    goto LABEL_92;
  }

LABEL_68:
  v40 = **(v2 + 16);
  __p.__r_.__value_.__s.__data_[0] = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v40) = (*(**(a1 + 24) + 40))(*(a1 + 24), v40);
    __p.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = *(a1 + 40);
  v42 = *(a1 + 48) - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_91;
      }
    }

    while (--v42);
  }

  v44 = *(a1 + 164);
  if (v44 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v40 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v40) & v44) == 0)
    {
      v46 = (v44 >> 7) & 1;
      v45 = v40 == 95 ? v46 : 0;
    }

    else
    {
      v45 = 1;
    }

    v47 = *(a1 + 72);
    v48 = memchr(*(a1 + 64), v40, v47 - *(a1 + 64));
    v49 = !v48 || v48 == v47;
    v50 = !v49;
    if ((v45 & 1) == 0 && !v50)
    {
LABEL_91:
      v10 = 1;
      goto LABEL_92;
    }
  }

  v53 = *(a1 + 88);
  v54 = *(a1 + 96);
  if (v53 != v54)
  {
    v112 = v10;
    if (*(a1 + 170) == 1)
    {
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
      (*(**(a1 + 32) + 32))(&v116);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      v53 = *(a1 + 88);
      v55 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      v56 = *(a1 + 96) - v53;
      if (!v56)
      {
LABEL_101:
        v57 = 0;
        if ((v55 & 0x80) == 0)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }
    }

    else
    {
      v55 = 1;
      *(&v116.__r_.__value_.__s + 23) = 1;
      LOWORD(v116.__r_.__value_.__l.__data_) = v40;
      v56 = v54 - v53;
      if (!v56)
      {
        goto LABEL_101;
      }
    }

    v108 = v2;
    v109 = v9;
    v58 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
    v107 = v55;
    if ((v55 & 0x80u) == 0)
    {
      v59 = v55;
    }

    else
    {
      v59 = v116.__r_.__value_.__l.__size_;
    }

    if ((v55 & 0x80u) == 0)
    {
      v60 = &v116;
    }

    else
    {
      v60 = v116.__r_.__value_.__r.__words[0];
    }

    if (v58 <= 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
    }

    v62 = (v53 + 47);
    v63 = 1;
    v57 = 1;
    do
    {
      v64 = *(v62 - 24);
      if (v64 >= 0)
      {
        v65 = *(v62 - 24);
      }

      else
      {
        v65 = *(v62 - 39);
      }

      if (v64 >= 0)
      {
        v66 = (v62 - 47);
      }

      else
      {
        v66 = *(v62 - 47);
      }

      if (v65 >= v59)
      {
        v67 = v59;
      }

      else
      {
        v67 = v65;
      }

      v68 = memcmp(v60, v66, v67);
      v69 = v59 >= v65;
      if (v68)
      {
        v69 = v68 >= 0;
      }

      if (v69)
      {
        v70 = *v62;
        if (v70 >= 0)
        {
          v71 = *v62;
        }

        else
        {
          v71 = *(v62 - 15);
        }

        if (v70 >= 0)
        {
          v72 = (v62 - 23);
        }

        else
        {
          v72 = *(v62 - 23);
        }

        if (v59 >= v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = v59;
        }

        v74 = memcmp(v72, v60, v73);
        v75 = v71 >= v59;
        if (v74)
        {
          v75 = v74 >= 0;
        }

        if (v75)
        {
          v10 = 1;
          v2 = v108;
          goto LABEL_141;
        }
      }

      v57 = v63++ < v58;
      v62 += 48;
      --v61;
    }

    while (v61);
    v2 = v108;
    v10 = v112;
LABEL_141:
    v9 = v109;
    if ((v107 & 0x80) == 0)
    {
LABEL_143:
      if (v57)
      {
        goto LABEL_92;
      }

      goto LABEL_144;
    }

LABEL_142:
    operator delete(v116.__r_.__value_.__l.__data_);
    goto LABEL_143;
  }

LABEL_144:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_169;
  }

  v76 = &__s;
  sub_1D9D7E8B0(&__s, a1 + 16, &__p, &__p.__r_.__value_.__s.__data_[1]);
  v77 = *(a1 + 136);
  v78 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v79 = *(a1 + 144) - v77;
  if (v79)
  {
    v110 = v9;
    v113 = v10;
    v80 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = __s.__r_.__value_.__r.__words[0];
    }

    if (v80 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 3);
    }

    v83 = 1;
    v84 = 1;
    do
    {
      v85 = *(v77 + 23);
      v86 = v85;
      if ((v85 & 0x80u) != 0)
      {
        v85 = *(v77 + 8);
      }

      if (v81 == v85)
      {
        v87 = v86 >= 0 ? v77 : *v77;
        if (!memcmp(v76, v87, v81))
        {
          v10 = 1;
          v9 = v110;
          if ((v78 & 0x80) == 0)
          {
            goto LABEL_167;
          }

          goto LABEL_166;
        }
      }

      v84 = v83++ < v80;
      v77 += 24;
      --v82;
    }

    while (v82);
    v10 = v113;
    v9 = v110;
    if ((v78 & 0x80) == 0)
    {
      goto LABEL_167;
    }
  }

  else
  {
    v84 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_167;
    }
  }

LABEL_166:
  operator delete(__s.__r_.__value_.__l.__data_);
LABEL_167:
  if (v84)
  {
    goto LABEL_92;
  }

  LOBYTE(v40) = __p.__r_.__value_.__s.__data_[0];
LABEL_169:
  v88 = *(a1 + 160);
  if ((v40 & 0x80) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v40) & v88) != 0)
  {
    goto LABEL_91;
  }

  v89 = (v88 >> 7) & 1;
  if (v40 != 95)
  {
    LOBYTE(v89) = 0;
  }

  v10 |= v89;
LABEL_92:
  if (*(a1 + 168) == (v10 & 1))
  {
    v51 = 0;
    v52 = -993;
  }

  else
  {
    *(v2 + 16) += v9;
    v51 = *(a1 + 8);
    v52 = -995;
  }

  *v2 = v52;
  *(v2 + 80) = v51;
}

void sub_1D9D7E5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      _Unwind_Resume(a1);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void ***sub_1D9D7E640(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_1D9D7E6D8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *sub_1D9D7E734(std::locale *a1)
{
  a1->__locale_ = &unk_1F554EE40;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
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

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F554EAF8;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_1D9D7E8B0(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v13 = a4 - __src;
  if (a4 != __src)
  {
    memcpy(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v8, v8 + v7);
  v9 = *(a1 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9 == 1)
  {
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v9 == 12)
  {
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v11[11] = v11[3];
    if (v13 < 0)
    {
      goto LABEL_24;
    }

    return;
  }

  if ((v10 & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    goto LABEL_23;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
  if (v13 < 0)
  {
LABEL_24:
    operator delete(__dst[0]);
  }
}

void sub_1D9D7EA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D7EA60()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

char *sub_1D9D7EAB8(uint64_t a1, char *__src, char *a3, uint64_t a4)
{
  if (a3 - __src < 2 || a3 - 1 == __src)
  {
    goto LABEL_15;
  }

  v5 = __src + 1;
  v6 = __src;
  if (*__src != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    sub_1D9D7EA60();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  sub_1D9D7F260(&v10, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    sub_1D9D7F208();
  }

  return v6 + 2;
}