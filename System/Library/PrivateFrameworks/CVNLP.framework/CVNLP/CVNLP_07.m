char *sub_1D9D7EBA4(uint64_t a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1D9D7C56C();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        v7 = *(a5 + 160) | 0x4000;
        goto LABEL_26;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        v15 = a2;
        sub_1D9D7D770(a5, 95);
        return v15 + 1;
      }
    }

    else
    {
      if (v5 == 98)
      {
        v16 = this;
        v15 = a2;
        v17 = 8;
LABEL_21:
        std::string::operator=(v16, v17);
        return v15 + 1;
      }

      if (v5 == 100)
      {
        v7 = *(a5 + 160) | 0x400;
LABEL_26:
        *(a5 + 160) = v7;
        return a2 + 1;
      }
    }

    return sub_1D9D7C5C4(a1, a2, a3, this);
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v5 == 68)
      {
        v6 = *(a5 + 164) | 0x400;
LABEL_24:
        *(a5 + 164) = v6;
        return a2 + 1;
      }

      return sub_1D9D7C5C4(a1, a2, a3, this);
    }

    v16 = this;
    v15 = a2;
    v17 = 0;
    goto LABEL_21;
  }

  if (v5 == 83)
  {
    v6 = *(a5 + 164) | 0x4000;
    goto LABEL_24;
  }

  if (v5 != 87)
  {
    return sub_1D9D7C5C4(a1, a2, a3, this);
  }

  *(a5 + 164) |= 0x500u;
  if (*(a5 + 169) != 1)
  {
    v19 = *(a5 + 170);
    v21 = *(a5 + 72);
    v20 = *(a5 + 80);
    if (v21 >= v20)
    {
      v28 = *(a5 + 64);
      v29 = (v21 - v28);
      v30 = v21 - v28 + 1;
      if (v30 < 0)
      {
        goto LABEL_56;
      }

      v31 = a2;
      v32 = v20 - v28;
      if (2 * v32 > v30)
      {
        v30 = 2 * v32;
      }

      if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v30;
      }

      if (v33)
      {
        operator new();
      }

      v35 = a5;
      v36 = v21 - v28;
      *v29 = 95;
      v22 = v29 + 1;
      memcpy(0, v28, v36);
      a5 = v35;
      v35[8] = 0;
      v35[9] = v29 + 1;
      v35[10] = 0;
      if (v28)
      {
        operator delete(v28);
        a5 = v35;
      }

      a2 = v31;
    }

    else
    {
      *v21 = 95;
      v22 = v21 + 1;
    }

    *(a5 + 72) = v22;
    return a2 + 1;
  }

  v8 = a2;
  v9 = a5;
  v10 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
  v11 = v9;
  v13 = v9[9];
  v12 = v9[10];
  if (v13 >= v12)
  {
    v23 = v9[8];
    v24 = (v13 - v23);
    v25 = v13 - v23 + 1;
    if (v25 >= 0)
    {
      v26 = v12 - v23;
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        operator new();
      }

      v34 = v13 - v23;
      *v24 = v10;
      v14 = v24 + 1;
      memcpy(0, v23, v34);
      v9[8] = 0;
      v9[9] = v24 + 1;
      v9[10] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v11 = v9;
      goto LABEL_50;
    }

LABEL_56:
    sub_1D9D67CB0();
  }

  *v13 = v10;
  v14 = v13 + 1;
LABEL_50:
  v11[9] = v14;
  return v8 + 1;
}

unsigned __int8 *sub_1D9D7EF0C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_55;
  }

  v5 = *a2;
  if (v5 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          sub_1D9D7C954(a1);
        }

        std::string::operator=(this, 12);
        return a2 + 1;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_32;
        }

        if (!this)
        {
          sub_1D9D7C954(a1);
        }

        std::string::operator=(this, 10);
        return a2 + 1;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (!this)
          {
            sub_1D9D7C954(a1);
          }

          std::string::operator=(this, 13);
          return a2 + 1;
        case 't':
          if (!this)
          {
            sub_1D9D7C954(a1);
          }

          std::string::operator=(this, 9);
          return a2 + 1;
        case 'v':
          if (!this)
          {
            sub_1D9D7C954(a1);
          }

          std::string::operator=(this, 11);
          return a2 + 1;
        default:
          goto LABEL_32;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v5 == 92)
  {
LABEL_17:
    if (!this)
    {
      sub_1D9D7C954(a1);
    }

    std::string::operator=(this, v5);
    return a2 + 1;
  }

  if (v5 != 97)
  {
    if (v5 == 98)
    {
      if (!this)
      {
        sub_1D9D7C954(a1);
      }

      std::string::operator=(this, 8);
      return a2 + 1;
    }

LABEL_32:
    if ((v5 & 0xF8) == 0x30)
    {
      v7 = v5 - 48;
      if (a2 + 1 == a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a2 + 1;
        v9 = a2[1];
        if ((v9 & 0xF8) == 0x30)
        {
          v10 = v9 + 8 * v7 - 48;
          if (a2 + 2 == a3)
          {
            v8 = a3;
            v14 = v10;
            if (!this)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v10 - 48;
            if (v12 == 48)
            {
              v8 = a2 + 3;
            }

            else
            {
              v8 = a2 + 2;
            }

            if (v12 == 48)
            {
              v10 = v13;
            }

            v14 = v10;
            if (!this)
            {
LABEL_54:
              sub_1D9D7C954(a1);
            }
          }

LABEL_52:
          std::string::operator=(this, v14);
          return v8;
        }
      }

      v14 = v7;
      if (!this)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_55:
    sub_1D9D7C56C();
  }

  if (!this)
  {
    sub_1D9D7C954(a1);
  }

  std::string::operator=(this, 7);
  return a2 + 1;
}

void sub_1D9D7F208()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7F260(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
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

  *(&__dst.__r_.__value_.__s + 23) = a4 - __src;
  if (a4 != __src)
  {
    memmove(&__dst, __src, v4);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v12, p_dst);
  *a1 = *&v12.__r_.__value_.__l.__data_;
  v8 = v12.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v12.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v10 = *(a1 + 23);
    if (v10 != 12 && v10 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v11 = *(a1 + 8);
  if (v11 == 1 || v11 == 12)
  {
LABEL_29:
    std::string::operator=(a1, &__dst);
    goto LABEL_15;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_15:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D7F470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1D9D7F4B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7F50C(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_1D9D67CB0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v12 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = 48 * v8 + 48;
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = v12 - v15;
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void sub_1D9D7F694(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
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

  v9 = a4 - __src;
  if (a4 != __src)
  {
    memmove(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v6 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v9 & 0x80u) != 0)
  {
    v6 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1D9D7F7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D7F7DC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7F834(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_1D9D67CB0();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_1D9D7F944(void *result)
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

void sub_1D9D7F9B8(void *a1)
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

uint64_t sub_1D9D7FA48(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D9D7FA78(void *result)
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

void sub_1D9D7FAEC(void *a1)
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

uint64_t sub_1D9D7FB7C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D9D7FD44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D9D7FD9C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D9D7FDF4(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D9D7FEA8(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D7FF7C(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1D9D80154(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_1D9D8021C(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D9D802D0(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D803BC(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D9D803D0(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D9D80484(void *a1)
{
  *a1 = &unk_1F554EF78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F554EAF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D80564(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1D9D805A0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D9D805B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA740E70](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D9D8060C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_1D9D7C954(a1);
    }

    if (v7 == a3)
    {
      if (*a2 != 46)
      {
        goto LABEL_19;
      }

LABEL_18:
      operator new();
    }

    v9 = *a2;
    if (v9 == 92)
    {
      v10 = *v7;
      if ((v10 - 36) <= 0x3A && ((1 << (v10 - 36)) & 0x580000000000441) != 0)
      {
        sub_1D9D7C954(a1);
      }
    }

    else if (v9 == 46)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  result = sub_1D9D7B2B0(a1, a2, a3);
  if (a2 == a3 || result != a2)
  {
    return result;
  }

  if (a2 + 1 == a3)
  {
    return a2;
  }

  if (*result != 92)
  {
    return a2;
  }

  v13 = a2[1];
  if (v13 == 40)
  {
    result = a2 + 2;
  }

  if (result != a2)
  {
    if ((*(a1 + 24) & 2) == 0)
    {
      operator new();
    }

    v14 = *(a1 + 28);
    do
    {
      if (result == a3)
      {
        goto LABEL_51;
      }

      v15 = result;
      v16 = *(a1 + 56);
      v17 = *(a1 + 28);
      v18 = sub_1D9D8060C(a1, result, a3);
      if (v15 == v18)
      {
        break;
      }

      v19 = *(a1 + 28);
      result = sub_1D9D809A4(a1, v18, a3);
    }

    while (v15 != result);
    if (v15 == a3)
    {
      result = a3;
    }

    else
    {
      if (v15 + 1 == a3 || *v15 != 92)
      {
        goto LABEL_51;
      }

      if (v15[1] == 41)
      {
        result = v15 + 2;
      }

      else
      {
        result = v15;
      }
    }

    if (result != v15)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      return result;
    }

LABEL_51:
    sub_1D9D79B20();
  }

  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    return a2;
  }

  result = a2;
  if ((v13 - 49) <= 8)
  {
    if ((v13 - 48) <= *(a1 + 28))
    {
      sub_1D9D7CB90(a1);
    }

    sub_1D9D7CB38();
  }

  return result;
}

unsigned __int8 *sub_1D9D809A4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 == 42)
    {
      sub_1D9D7FBB4();
    }

    if (a2 + 1 != a3 && v3 == 92)
    {
      v5 = a2[1] == 123 ? a2 + 2 : a2;
      if (v5 != a2)
      {
        if (v5 == a3)
        {
          v6 = 0;
        }

        else
        {
          v7 = *v5;
          if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38)
          {
            goto LABEL_52;
          }

          v6 = v7 - 48;
          v8 = v5 + 1;
          if (v5 + 1 != a3)
          {
            while (1)
            {
              v9 = *v8;
              if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
              {
                break;
              }

              if (v6 >= 214748364)
              {
                goto LABEL_52;
              }

              v6 = v9 + 10 * v6 - 48;
              if (++v8 == a3)
              {
                goto LABEL_20;
              }
            }

LABEL_21:
            if (v8 == v5)
            {
              goto LABEL_52;
            }

            if (v8 != a3)
            {
              v10 = *v8;
              v11 = v8 + 1;
              if (v10 == 44)
              {
                if (v11 == a3)
                {
                  goto LABEL_53;
                }

                v12 = *v11;
                if ((v12 & 0xF8) == 0x30 || (v12 & 0xFE) == 0x38)
                {
                  v11 = v8 + 2;
                  if (v8 + 2 == a3)
                  {
                    goto LABEL_53;
                  }

                  v13 = v12 - 48;
                  do
                  {
                    v15 = *v11;
                    if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
                    {
                      goto LABEL_42;
                    }

                    if (v13 >= 214748364)
                    {
                      goto LABEL_52;
                    }

                    v13 = v15 + 10 * v13 - 48;
                    ++v11;
                  }

                  while (v11 != a3);
                  v11 = a3;
                }

                else
                {
                  v13 = -1;
                }

LABEL_42:
                if (v11 != a3)
                {
                  if (v11 + 1 == a3 || *v11 != 92)
                  {
                    goto LABEL_53;
                  }

                  if (v11[1] == 125)
                  {
                    a3 = v11 + 2;
                  }

                  else
                  {
                    a3 = v11;
                  }
                }

                if (a3 != v11)
                {
                  if (v13 == -1 || v13 >= v6)
                  {
                    goto LABEL_51;
                  }

LABEL_52:
                  sub_1D9D7FD44();
                }
              }

              else if (v11 != a3 && v10 == 92)
              {
                v14 = (v8[1] == 125 ? v8 + 2 : v8);
                if (v8 != v14)
                {
LABEL_51:
                  sub_1D9D7FBB4();
                }
              }
            }

LABEL_53:
            sub_1D9D7FD9C();
          }
        }

LABEL_20:
        v8 = a3;
        goto LABEL_21;
      }
    }
  }

  return a2;
}

void *sub_1D9D80C1C(void *result)
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

void sub_1D9D80C90(void *a1)
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

uint64_t sub_1D9D80D20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
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

uint64_t sub_1D9D80D60(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1D9D7CB90(a1);
    }

    sub_1D9D7CB38();
  }

  return 0;
}

unsigned __int8 *sub_1D9D80DC4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    v8 = sub_1D9D8115C(a1, a2, a2);
    if (v8 != a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_33;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v10 == 5)
  {
    if (!*(a1 + 36))
    {
LABEL_34:
      sub_1D9D7C954(a1);
    }
  }

  else
  {
LABEL_33:
    if ((v9 - 123) >= 2)
    {
      goto LABEL_34;
    }
  }

LABEL_6:
  v11 = sub_1D9D8115C(a1, a2, a3);
  v12 = v11;
  if (v11 == a2)
  {
    if (*v11 == 46)
    {
      operator new();
    }

LABEL_9:
    v8 = sub_1D9D7B2B0(a1, a2, a3);
LABEL_10:
    v12 = v8;
  }

  if (v12 == a2 && v12 != a3)
  {
    v13 = *v12;
    switch(v13)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        v14 = *(a1 + 28);
        ++*(a1 + 36);
        v15 = sub_1D9D78630(a1, v12 + 1, a3);
        if (v15 == a3 || *v15 != 41)
        {
          sub_1D9D79B20();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v12 = v15 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v12 == a2)
  {
    return a2;
  }

  v16 = (*(a1 + 28) + 1);

  return sub_1D9D795E8(a1, v12, a3);
}

unsigned __int8 *sub_1D9D8115C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    sub_1D9D7C954(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return sub_1D9D7EF0C(a1, a2 + 1, a3, 0);
  }

  if (sub_1D9D80D60(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void *sub_1D9D81228(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1D9D815E8(a1, &v11);
}

void sub_1D9D81590(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D9D815E8(void *result, void *a2)
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

      sub_1D9D10E9C();
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

const void **sub_1D9D81774(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t sub_1D9D8190C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(*(a1 + 40) + v4) / 0x2A] + 96 * ((*(a1 + 40) + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 21;
    goto LABEL_19;
  }

  if (v11 == 2)
  {
    v12 = 42;
LABEL_19:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D81ABC(uint64_t a1, char *__src, _DWORD *a3, char *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v8;
  if (v7 - v8 >= 4)
  {
    v15 = v8 - __src;
    if (v8 - __src > 3)
    {
      v26 = __src + 4;
      if (v8 >= 4)
      {
        *v8 = *(v8 - 1);
        v9 = v8 + 4;
      }

      *(a1 + 8) = v9;
      if (v8 != v26)
      {
        memmove(__src + 4, __src, v8 - v26);
      }

      *__src = *a3;
    }

    else
    {
      v16 = a3 + v15;
      if (a3 + v15 != a4)
      {
        v17 = a3 + v15;
        v18 = a4 - v16 - 4;
        if (v18 < 0x1C)
        {
          goto LABEL_34;
        }

        if ((v8 - v16) < 0x20)
        {
          goto LABEL_34;
        }

        v19 = (v18 >> 2) + 1;
        v20 = 4 * (v19 & 0x7FFFFFFFFFFFFFF8);
        v17 = &v16[v20];
        v9 = &v8[v20];
        v21 = v8 + 16;
        v22 = (v16 + 16);
        v23 = v19 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v24 = *v22;
          *(v21 - 1) = *(v22 - 1);
          *v21 = v24;
          v21 += 2;
          v22 += 2;
          v23 -= 8;
        }

        while (v23);
        if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_34:
          do
          {
            v25 = *v17;
            v17 += 4;
            *v9 = v25;
            v9 += 4;
          }

          while (v17 != a4);
        }
      }

      *(a1 + 8) = v9;
    }
  }

  else
  {
    v10 = *a1;
    v11 = (&v8[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_1D9D84AB0();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
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

      sub_1D9D10E9C();
    }

    v27 = (4 * (v12 >> 2));
    *v27 = *a3;
    v28 = v9 - __src;
    memcpy(v27 + 1, __src, v9 - __src);
    *(a1 + 8) = __src;
    memcpy(0, v10, v12);
    *a1 = 0;
    *(a1 + 8) = v27 + v28 + 4;
    *(a1 + 16) = 0;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void *sub_1D9D81CF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        sub_1D9D84AB0();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1D9D81DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_1D9D81DFC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D81DFC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_1D9D81E6C(void ***a1)
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
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1D9D81EF4(int *a1, uint64_t *a2, float a3)
{
  v16 = a3;
  v7 = *a2;
  v6 = a2[1];
  v8 = powf(((v6 - *a2) >> 2), -*(a1 + 1)) * a3;
  v9 = *(a1 + 1);
  v15 = v8;
  v10 = *(a1 + 2);
  v11 = (v10 - v9) >> 5;
  if (v11 >= *a1)
  {
    if (v8 <= *(v9 + 4))
    {
      return;
    }

    sub_1D9D82B10(v9, *(a1 + 2), v11);
    v12 = *(a1 + 2);
    v13 = *(v12 - 24);
    if (v13)
    {
      *(v12 - 16) = v13;
      operator delete(v13);
    }

    *(a1 + 2) = v12 - 32;
    if ((v12 - 32) < *(a1 + 3))
    {
      sub_1D9D824A8(v12 - 32, *a2, a2[1], a3, v8);
      *(a1 + 2) = v12;
      goto LABEL_10;
    }

LABEL_9:
    v12 = sub_1D9D82318(a1 + 1, &v16, &v15, a2);
    goto LABEL_10;
  }

  if (v10 >= *(a1 + 3))
  {
    goto LABEL_9;
  }

  sub_1D9D824A8(*(a1 + 2), v7, v6, a3, v8);
  v12 = v10 + 32;
  *(a1 + 2) = v10 + 32;
LABEL_10:
  *(a1 + 2) = v12;
  v14 = *(a1 + 1);

  sub_1D9D82624(v14, v12, (v12 - v14) >> 5);
}

void sub_1D9D82074(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D9D822B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  sub_1D9D82D80(va);
  sub_1D9D66F00(va1);
  _Unwind_Resume(a1);
}

void sub_1D9D822CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D82D80(va);
  _Unwind_Resume(a1);
}

void sub_1D9D822E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D82318(uint64_t *a1, float *a2, float *a3, uint64_t *a4)
{
  v4 = (a1[1] - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1D9D67CB0();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v17 = 32 * v4;
  sub_1D9D824A8(32 * v4, *a4, a4[1], *a2, *a3);
  v9 = 32 * v4 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = v17 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v17 + *a1 - v11);
    do
    {
      *v14 = *v13;
      v14[2] = 0;
      v14[3] = 0;
      v14[1] = 0;
      *(v14 + 1) = *(v13 + 1);
      v14[3] = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v15 = v10[1];
      if (v15)
      {
        v10[2] = v15;
        operator delete(v15);
      }

      v10 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1D9D82494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D825B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D824A8(uint64_t result, uint64_t a2, uint64_t a3, float a4, float a5)
{
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  *result = a4;
  *(result + 4) = a5;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  return result;
}

void sub_1D9D82598(void *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  sub_1D9D3FB90(a1);
}

uint64_t sub_1D9D825B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 32;
        *(a1 + 16) = v2 - 32;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D82624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = a1 + 32 * (v3 >> 1);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D9D84AB0();
    }

    v9 = (a2 - 24);
    v8 = *(a2 - 24);
    v10 = *(a2 - 16);
    if (v10 != v8)
    {
      if (((v10 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D9D84AB0();
    }

    if (*(v5 + 4) > *(a2 - 28))
    {
      v11 = a2 - 32;
      v12 = *(a2 - 32);
      v13 = *(a2 - 28);
      v14 = *(a2 - 24);
      v15 = *(a2 - 16);
      *v9 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v16 = v15 - v14;
      if (v15 == v14)
      {
        v17 = a1 + 32 * (v3 >> 1);
        while (1)
        {
          v5 = v17;
          *v11 = *v17;
          if (v11 != v17)
          {
            sub_1D9D829B4((v11 + 8), *(v17 + 8), *(v17 + 16), (*(v17 + 16) - *(v17 + 8)) >> 2);
          }

          if (!v4)
          {
            goto LABEL_29;
          }

          v4 = (v4 - 1) >> 1;
          v17 = a1 + 32 * v4;
          v18 = *(v17 + 8);
          v19 = *(v17 + 16);
          if (v19 != v18)
          {
            break;
          }

          v11 = v5;
          if (*(v17 + 4) <= v13)
          {
            goto LABEL_29;
          }
        }

        if (((v19 - v18) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_39:
        sub_1D9D84AB0();
      }

      if (v16 < 0)
      {
        *v11 = *v5;
        if (v11 != v5)
        {
          sub_1D9D829B4(v9, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 2);
        }

        if (v3 >= 2)
        {
          v24 = ((16 * v4 - 16) & 0xFFFFFFFFFFFFFFE0) + a1;
          v26 = *(v24 + 8);
          v25 = *(v24 + 16);
          if (v25 == v26)
          {
            sub_1D9D84AB0();
          }

          if (((v25 - v26) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_39;
        }
      }

      else
      {
        *v11 = *v5;
        if (v11 != v5)
        {
          sub_1D9D829B4(v9, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 2);
        }

        if (v4)
        {
          v20 = a1 + 32 * ((v4 - 1) >> 1);
          v21 = *(v20 + 4);
          v23 = *(v20 + 8);
          v22 = *(v20 + 16);
          if (v22 == v23)
          {
            operator new();
          }

          if (((v22 - v23) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_39;
        }
      }

LABEL_29:
      *v5 = v12;
      *(v5 + 4) = v13;
      sub_1D9D829B4((v5 + 8), v14, v15, v16 >> 2);
      if (v14)
      {

        operator delete(v14);
      }
    }
  }
}

char *sub_1D9D829B4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1D9D84AB0();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_1D9D82B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v6 = *a1;
    v5 = *(a1 + 4);
    v21 = *(a1 + 8);
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v7 = (a3 - 2) >> 1;
    v8 = a1;
    *(a1 + 8) = 0;
    do
    {
      v9 = v8 + 32 * v4 + 32;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v13 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (v12 != v13)
        {
          if (((v12 - v13) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1D9D84AB0();
        }

        v14 = *(v9 + 40);
        v15 = *(v9 + 48);
        if (v15 != v14)
        {
          if (((v15 - v14) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1D9D84AB0();
        }

        if (*(v9 + 4) > *(v9 + 36))
        {
          v9 += 32;
          v4 = v11;
        }
      }

      *v8 = *v9;
      if (v8 != v9)
      {
        sub_1D9D829B4((v8 + 8), *(v9 + 8), *(v9 + 16), (*(v9 + 16) - *(v9 + 8)) >> 2);
      }

      v8 = v9;
    }

    while (v4 <= v7);
    if (a2 - 32 == v9)
    {
      *v9 = v6;
      *(v9 + 4) = v5;
      v17 = v21;
      sub_1D9D829B4((v9 + 8), v21, v19, (v19 - v21) >> 2);
    }

    else
    {
      v16 = *(a2 - 24);
      *v9 = *(a2 - 32);
      sub_1D9D829B4((v9 + 8), v16, *(a2 - 16), (*(a2 - 16) - v16) >> 2);
      v17 = v21;
      *(a2 - 32) = v6;
      *(a2 - 28) = v5;
      sub_1D9D829B4((a2 - 24), v21, v19, (v19 - v21) >> 2);
      sub_1D9D82624(a1, v9 + 32, (v9 + 32 - a1) >> 5);
    }

    if (v17)
    {

      operator delete(v17);
    }
  }
}

void ***sub_1D9D82D80(void ***a1)
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
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 32;
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

void sub_1D9D82E04(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  sub_1D9D82F10(a1, &__p);
  sub_1D9D830A8(__p, v5, 0, 0);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1D9D82ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    if (!v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void sub_1D9D82F10(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 >> 2;
    do
    {
      while (1)
      {
        v8 = *a1;
        v9 = a2[2];
        if (v5 >= v9)
        {
          break;
        }

        *v5 = *(v8 + 4 * v6);
        *(v5 + 4) = v6;
        v5 += 8;
        a2[1] = v5;
        if (v7 == ++v6)
        {
          goto LABEL_15;
        }
      }

      v10 = v5;
      v11 = v5 >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        *a2 = 0;
        sub_1D9D67CB0();
      }

      if (v9 >> 2 > v12)
      {
        v12 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        *a2 = 0;
        sub_1D9D10E9C();
      }

      v14 = (8 * v11);
      *v14 = *(v8 + 4 * v6);
      v14[1] = v6;
      v5 = 8 * v11 + 8;
      memcpy(0, 0, v10);
      a2[1] = v5;
      a2[2] = 0;
      a2[1] = v5;
      ++v6;
    }

    while (v7 != v6);
  }

LABEL_15:
  *a2 = 0;
}

void sub_1D9D83080(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D830A8(void *a1, void *a2, char *a3, char *a4)
{
  if (a3 != a4)
  {
    v4 = a3;
    if (a1 != a2)
    {
      do
      {
        *v4 = *a1;
        *(v4 + 1) = *(a1++ + 1);
        v4 += 8;
      }

      while (a1 != a2 && v4 != a4);
    }

    v6 = (v4 - a3) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7;
      do
      {
        if (v7 >= v8)
        {
          v10 = (8 * v8) >> 2;
          v11 = v10 | 1;
          v12 = &a3[8 * (v10 | 1)];
          v13 = v10 + 2;
          if (v13 < v6 && *v12 > v12[2])
          {
            v12 += 2;
            v11 = v13;
          }

          v14 = &a3[8 * v8];
          v15 = *v14;
          v16 = *v12;
          v17 = *v14;
          if (*v12 <= *v14)
          {
            v18 = *(v14 + 1);
            do
            {
              v19 = v14;
              v14 = v12;
              *v19 = v16;
              v19[1] = v12[1];
              if (v7 < v11)
              {
                break;
              }

              v20 = 2 * v11;
              v11 = (2 * (v11 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v12 = &a3[8 * v11];
              v21 = v20 + 2;
              if (v21 < v6 && *v12 > v12[2])
              {
                v12 += 2;
                v11 = v21;
              }

              v16 = *v12;
            }

            while (*v12 <= v17);
            *v14 = v15;
            *(v14 + 1) = v18;
          }
        }

        v9 = v8-- <= 0;
      }

      while (!v9);
    }

    if (a1 != a2)
    {
      if (v6 >= 2)
      {
        v22 = (a3 + 8);
        v23 = (a3 + 16);
        while (1)
        {
          if (COERCE_FLOAT(*a1) > *a3)
          {
            *a3 = *a1;
            if (v4 - a3 == 16 || *(a3 + 2) <= *(a3 + 4))
            {
              v24 = (a3 + 8);
              v25 = 1;
              v26 = *a3;
              v27 = *v22;
              v28 = *a3;
              if (*v22 <= *a3)
              {
LABEL_37:
                v29 = *(a3 + 1);
                v30 = a3;
                do
                {
                  v31 = v30;
                  v30 = v24;
                  *v31 = v27;
                  v31[1] = v24[1];
                  if (((v6 - 2) >> 1) < v25)
                  {
                    break;
                  }

                  v32 = 2 * v25;
                  v25 = (2 * v25) | 1;
                  v24 = &a3[8 * v25];
                  v33 = v32 + 2;
                  if (v33 < v6 && *v24 > v24[2])
                  {
                    v24 += 2;
                    v25 = v33;
                  }

                  v27 = *v24;
                }

                while (*v24 <= v28);
                *v30 = v26;
                *(v30 + 1) = v29;
              }
            }

            else
            {
              v24 = (a3 + 16);
              v25 = 2;
              v26 = *a3;
              v27 = *v23;
              v28 = *a3;
              if (*v23 <= *a3)
              {
                goto LABEL_37;
              }
            }
          }

          if (++a1 == a2)
          {
            goto LABEL_43;
          }
        }
      }

      do
      {
        if (COERCE_FLOAT(*a1) > *a3)
        {
          *a3 = *a1;
        }

        ++a1;
      }

      while (a1 != a2);
    }

LABEL_43:
    if (v6 >= 2)
    {
      v34 = v4;
      do
      {
        if (v6 >= 2)
        {
          v35 = 0;
          v36 = *a3;
          v37 = *(a3 + 1);
          v38 = a3;
          do
          {
            v39 = v38;
            v38 += 2 * v35 + 2;
            v40 = 2 * v35;
            v35 = (2 * v35) | 1;
            v41 = v40 + 2;
            if (v41 < v6 && *v38 > v38[2])
            {
              v38 += 2;
              v35 = v41;
            }

            *v39 = *v38;
            v39[1] = v38[1];
          }

          while (v35 <= ((v6 - 2) >> 1));
          if (v38 == v34 - 2)
          {
            *v38 = v36;
            *(v38 + 1) = v37;
          }

          else
          {
            *v38 = *(v34 - 2);
            v38[1] = *(v34 - 1);
            *(v34 - 2) = v36;
            *(v34 - 1) = v37;
            v42 = (v38 - a3 + 8) >> 3;
            v9 = v42 < 2;
            v43 = v42 - 2;
            if (!v9)
            {
              v44 = v43 >> 1;
              v45 = &a3[8 * (v43 >> 1)];
              v46 = *v38;
              v47 = *v45;
              v48 = *v38;
              if (*v45 > *v38)
              {
                v49 = *(v38 + 1);
                do
                {
                  v50 = v38;
                  v38 = v45;
                  *v50 = v47;
                  v50[1] = v45[1];
                  if (!v44)
                  {
                    break;
                  }

                  v44 = (v44 - 1) >> 1;
                  v45 = &a3[8 * v44];
                  v47 = *v45;
                }

                while (*v45 > v48);
                *v38 = v46;
                *(v38 + 1) = v49;
              }
            }
          }
        }

        v34 -= 2;
        v9 = v6-- > 2;
      }

      while (v9);
    }
  }

  return a2;
}

void sub_1D9D836E0(CGImage *a1)
{
  v2 = objc_autoreleasePoolPush();
  CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  operator new[]();
}

__CVBuffer *sub_1D9D83868(__CVBuffer *a1, size_t *a2)
{
  v3 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(a1) != 1111970369 || CVPixelBufferGetWidth(v3) != *a2 || CVPixelBufferGetHeight(v3) != a2[1])
  {
    pixelTransferSessionOut = 0;
    v4 = *MEMORY[0x1E695E480];
    if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
    {
      v3 = 0;
    }

    else
    {
      pixelBufferOut = 0;
      v11 = *MEMORY[0x1E69660D8];
      v12[0] = MEMORY[0x1E695E0F8];
      v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
      if (CVPixelBufferCreate(v4, *a2, a2[1], 0x42475241u, v6, &pixelBufferOut) || VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v3, pixelBufferOut))
      {
        CVPixelBufferRelease(pixelBufferOut);
        CFRelease(pixelTransferSessionOut);
        v3 = 0;
      }

      else
      {
        CFRelease(pixelTransferSessionOut);
        v3 = pixelBufferOut;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CVNLPBeamSearchCreate(void *a1, void *a2)
{
  v3 = a1;
  v67 = objc_msgSend_objectForKeyedSubscript_(v3, v4, CVNLPBeamSearchSize, v5);
  v66 = objc_msgSend_objectForKeyedSubscript_(v3, v6, CVNLPBeamSearchLengthNormalizationFactor, v7);
  v65 = objc_msgSend_objectForKeyedSubscript_(v3, v8, CVNLPBeamSearchOutputVocabSize, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v3, v10, CVNLPBeamEndToken, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v3, v13, CVNLPBeamSearchOutputVocabPath, v14);
  v18 = objc_msgSend_objectForKeyedSubscript_(v3, v16, CVNLPBeamSearchOutputVocabMap, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v3, v19, CVNLPBeamSearchOutputVocabFilterList, v20);
  v26 = objc_msgSend_objectForKeyedSubscript_(v3, v22, CVNLPBeamSearchBlacklistRules, v23);
  if (v67 && v12)
  {
    v63 = v18;
    v64 = v15;
    v62 = v21;
    v27 = objc_msgSend_objectForKeyedSubscript_(v3, v24, CVNLPBeamSearchIncludeLanguageModel, v25);
    if (objc_msgSend_BOOLValue(v27, v28, v29, v30))
    {
      v34 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v31, v32, v33);
      v37 = objc_msgSend_fileExistsAtPath_(v34, v35, @"/System/Library/PrivateFrameworks/CVNLP.framework/lm_vocabulary.plist", v36);

      if (v37)
      {
        v38 = @"/System/Library/PrivateFrameworks/CVNLP.framework/lm_vocabulary.plist";
      }

      else
      {
        v38 = @"/tmp/lm_vocabulary.plist";
      }
    }

    else
    {
      v38 = 0;
    }

    v41 = objc_msgSend_unsignedIntegerValue(v67, v31, v32, v33);
    objc_msgSend_floatValue(v66, v42, v43, v44);
    v46 = v45;
    v50 = objc_msgSend_unsignedIntegerValue(v65, v47, v48, v49);
    v54 = objc_msgSend_unsignedIntegerValue(v12, v51, v52, v53);
    v58 = objc_msgSend_path(v15, v55, v56, v57);
    v59 = *MEMORY[0x1E695E480];
    if (qword_1EE000538 != -1)
    {
      v61 = *MEMORY[0x1E695E480];
      dispatch_once(&qword_1EE000538, &unk_1F554F2B0);
    }

    Instance = _CFRuntimeCreateInstance();
    sub_1D9D97468(Instance + 16, v41, v50, v54, v58, v63, v62, v26, v46, v38);

    v18 = v63;
    v15 = v64;
    v21 = v62;
  }

  else
  {
    v39 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v24, CVNLPErrorDomain, 1, 0);
    v27 = v39;
    if (a2)
    {
      v27 = v39;
      Instance = 0;
      *a2 = v27;
    }

    else
    {
      Instance = 0;
    }
  }

  return Instance;
}

__CFArray *CVNLPBeamSearchOneStep(uint64_t a1, CFArrayRef theArray)
{
  v79 = 0;
  v80 = 0;
  v81 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      Value = CFDictionaryGetValue(ValueAtIndex, CVNLPBeamSearchNextTokenMetaData);
      v6 = ValueAtIndex;
      v3 = objc_msgSend_objectForKeyedSubscript_(v6, v7, CVNLPBeamSearchBeamID, v8);
      v11 = objc_msgSend_objectForKeyedSubscript_(v6, v9, CVNLPBeamSearchNextTokenID, v10);
      v14 = objc_msgSend_objectForKeyedSubscript_(v6, v12, CVNLPBeamSearchNextTokenSoftmaxValues, v13);
      v15 = v14;
      v19 = objc_msgSend_bytes(v15, v16, v17, v18);
      v74 = v11;
      v23 = objc_msgSend_unsignedIntegerValue(v11, v20, v21, v22);
      v27 = objc_msgSend_unsignedIntegerValue(v3, v24, v25, v26);
      v28 = v80;
      if (v80 >= v81)
      {
        v30 = (v80 - v79) >> 5;
        if ((v30 + 1) >> 59)
        {
          sub_1D9D84AB0();
        }

        v31 = (v81 - v79) >> 4;
        if (v31 <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        if (v81 - v79 >= 0x7FFFFFFFFFFFFFE0)
        {
          v32 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        v86 = &v79;
        if (v32)
        {
          if (!(v32 >> 59))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v71 = v3;
        v33 = (32 * v30);
        v82 = 0;
        v83 = v33;
        v84 = v33;
        v85 = 0;
        *v33 = v23;
        v33[1] = CFRetain(Value);
        v33[2] = v19;
        v33[3] = v27;
        v29 = v33 + 4;
        v84 = v33 + 4;
        v34 = v79;
        v35 = v80;
        v87 = &v79;
        v88 = &v93;
        v89 = &p_p;
        v90 = 0;
        v36 = (v33 + v79 - v80);
        p_p = v36;
        v93 = v36;
        if (v79 != v80)
        {
          v37 = (v33 + v79 - v80);
          v38 = v79;
          do
          {
            *v37 = *v38;
            v37[1] = CFRetain(v38[1]);
            v37[2] = v38[2];
            v37[3] = v38[3];
            v38 += 4;
            v37 = (p_p + 4);
            p_p += 4;
          }

          while (v38 != v35);
          v90 = 1;
          do
          {
            v39 = v34[1];
            if (v39)
            {
              CFRelease(v39);
              v34[1] = 0;
            }

            v34 += 4;
          }

          while (v34 != v35);
          v34 = v79;
        }

        v79 = v36;
        v80 = v29;
        v81 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v3 = v71;
      }

      else
      {
        *v80 = v23;
        v28[1] = CFRetain(Value);
        v28[2] = v19;
        v29 = v28 + 4;
        v28[3] = v27;
      }

      v80 = v29;
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v77 = 0;
  v78 = 0;
  __p = 0;
  p_p = &__p;
  v92 = 0;
  if (v80 != v79)
  {
    if (((v80 - v79) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  sub_1D9D989B0(a1 + 16, &__p, &v87);
  v43 = __p;
  if (__p)
  {
    v44 = v77;
    v45 = __p;
    if (v77 != __p)
    {
      do
      {
        v46 = *(v44 - 3);
        if (v46)
        {
          CFRelease(v46);
          *(v44 - 3) = 0;
        }

        v44 -= 32;
      }

      while (v44 != v43);
      v45 = __p;
    }

    v77 = v43;
    operator delete(v45);
  }

  v47 = v87;
  v48 = v88;
  if (v87 != v88)
  {
    do
    {
      v49 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v40, v41, v42);
      v52 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v50, v47[2], v51);
      objc_msgSend_setObject_forKeyedSubscript_(v49, v53, v52, CVNLPBeamSearchBeamID);

      v56 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v54, *v47, v55);
      objc_msgSend_setObject_forKeyedSubscript_(v49, v57, v56, CVNLPBeamSearchNextTokenID);

      CFDictionarySetValue(v49, CVNLPBeamSearchNextTokenMetaData, v47[1]);
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v59 = v47[3];
      v58 = v47[4];
      if (v58 != v59)
      {
        if (((v58 - v59) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      v60 = sub_1D9D84CBC(&v82);
      p_p = v60;
      CFDictionarySetValue(v49, CVNLPBeamTokens, v60);
      CFArrayAppendValue(Mutable, v49);
      if (v60)
      {
        CFRelease(v60);
      }

      v47 += 6;
    }

    while (v47 != v48);
    v47 = v87;
  }

  if (v47)
  {
    v61 = v88;
    v62 = v47;
    if (v88 != v47)
    {
      do
      {
        v63 = *(v61 - 5);
        if (v63)
        {
          CFRelease(v63);
          *(v61 - 5) = 0;
        }

        v64 = *(v61 - 3);
        if (v64)
        {
          *(v61 - 2) = v64;
          operator delete(v64);
        }

        v61 -= 6;
      }

      while (v61 != v47);
      v62 = v87;
    }

    v88 = v47;
    operator delete(v62);
  }

  v65 = v79;
  if (v79)
  {
    v66 = v80;
    v67 = v79;
    if (v80 != v79)
    {
      do
      {
        v68 = *(v66 - 3);
        if (v68)
        {
          CFRelease(v68);
          *(v66 - 3) = 0;
        }

        v66 -= 4;
      }

      while (v66 != v65);
      v67 = v79;
    }

    v80 = v65;
    operator delete(v67);
  }

  return Mutable;
}

void sub_1D9D843C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1D9D84598(va);
  sub_1D9D84598(va1);
  _Unwind_Resume(a1);
}

void sub_1D9D843E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1D9D84598(va);
  _Unwind_Resume(a1);
}

void sub_1D9D843F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1D9D84BAC((v10 - 120));
  sub_1D9D84598(va);
  _Unwind_Resume(a1);
}

void sub_1D9D84420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1D9D84598(va);
  _Unwind_Resume(a1);
}

void **sub_1D9D84598(void **a1)
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
          CFRelease(v5);
          *(v3 - 3) = 0;
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_1D9D84610(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t CVNLPBeamSearchCopyTopBeams(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_1D9D9B828(&__p, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 4));
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], v1, v2, v3);
  v8 = v4;
  v9 = __p;
  v31 = v35;
  if (__p != v35)
  {
    v30 = v4;
    do
    {
      memset(v33, 0, sizeof(v33));
      if (*(v9 + 2) != *(v9 + 1))
      {
        operator new();
      }

      v32 = sub_1D9D84CBC(v33);
      v37[0] = CVNLPBeamTokens;
      v10 = v32;
      v38[0] = v10;
      v37[1] = CVNLPBeamScore;
      LODWORD(v11) = *(v9 + 1);
      v15 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v12, v13, v14, v11);
      v38[1] = v15;
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v38, v37, 2);
      objc_msgSend_addObject_(v8, v18, v17, v19);

      if (v10)
      {
        CFRelease(v10);
      }

      v9 += 48;
    }

    while (v9 != v31);
  }

  v20 = objc_msgSend_copy(v8, v5, v6, v7, v30);

  v21 = __p;
  if (__p)
  {
    v22 = v35;
    v23 = __p;
    if (v35 != __p)
    {
      do
      {
        v25 = *(v22 - 2);
        if (v25)
        {
          CFRelease(v25);
          *(v22 - 2) = 0;
        }

        v26 = *(v22 - 5);
        if (v26)
        {
          v27 = *(v22 - 4);
          v24 = *(v22 - 5);
          if (v27 != v26)
          {
            do
            {
              if (*(v27 - 1) < 0)
              {
                operator delete(*(v27 - 24));
              }

              v27 -= 40;
            }

            while (v27 != v26);
            v24 = *(v22 - 5);
          }

          *(v22 - 4) = v26;
          operator delete(v24);
        }

        v22 -= 48;
      }

      while (v22 != v21);
      v23 = __p;
    }

    v35 = v21;
    operator delete(v23);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1D9D8499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1D9D85514(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D84A4C()
{
  qword_1EE000548 = 0;
  qword_1EE000558 = 0;
  unk_1EE000560 = 0;
  qword_1EE000550 = "CVNLPBeamSearch";
  qword_1EE000568 = sub_1D9D84AA8;
  xmmword_1EE000570 = 0u;
  unk_1EE000580 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EE000540 = result;
  return result;
}

uint64_t sub_1D9D84AC8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        CFRelease(v5);
        *(v3 - 24) = 0;
      }

      v3 -= 32;
    }
  }

  return a1;
}

uint64_t sub_1D9D84B30(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      v4 = i - 32;
      *(a1 + 16) = i - 32;
      v5 = *(i - 24);
      if (v5)
      {
        break;
      }

      i -= 32;
      if (v4 == v2)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v5);
    *(i - 24) = 0;
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_1D9D84BAC(void ***a1)
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
            CFRelease(v6);
            *(v4 - 3) = 0;
          }

          v4 -= 32;
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

void **sub_1D9D84C34(void **a1)
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
          CFRelease(v5);
          *(v3 - 5) = 0;
        }

        v6 = *(v3 - 3);
        if (v6)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

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

CFArrayRef sub_1D9D84CBC(uint64_t **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_1D9D850C0(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v38;
    do
    {
      v6 = *v3;
      if (v5 >= v39)
      {
        v8 = v5 - __p;
        v9 = (v5 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_1D9D84AB0();
        }

        v10 = (v39 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v39 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        p_p = &__p;
        if (v11)
        {
          if (!(v11 >> 61))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v12 = 8 * v9;
        valuePtr[0] = 0;
        valuePtr[1] = 8 * v9;
        v41 = 8 * v9;
        v42 = 0;
        v44 = v6;
        v13 = CFNumberCreate(0, kCFNumberLongType, &v44);
        *(8 * v9) = v13;
        if (!v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v14 = __p;
        v15 = v38;
        v16 = (v12 - (v38 - __p));
        v5 = (v12 + 8);
        v41 = v5;
        v17 = v38 - __p;
        if (v38 != __p)
        {
          v18 = v17 - 8;
          v19 = __p;
          v20 = v16;
          if ((v17 - 8) < 0x38)
          {
            goto LABEL_47;
          }

          if (v16 < __p + (v18 & 0xFFFFFFFFFFFFFFF8) + 8)
          {
            v19 = __p;
            v20 = v16;
            if (__p < v8 + (v18 & 0xFFFFFFFFFFFFFFF8) - v17 + 8)
            {
              goto LABEL_47;
            }
          }

          v21 = v17 >> 3;
          v22 = (v18 >> 3) + 1;
          v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
          v19 = (__p + v23);
          v20 = &v16[v23];
          v24 = (-8 * v21 + 8 * v9 + 16);
          v25 = (__p + 16);
          v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v27 = *v25;
            *(v24 - 1) = *(v25 - 1);
            *v24 = v27;
            *(v25 - 1) = 0uLL;
            *v25 = 0uLL;
            v24 += 2;
            v25 += 2;
            v26 -= 4;
          }

          while (v26);
          if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_47:
            do
            {
              *v20 = *v19;
              v20 += 8;
              *v19++ = 0;
            }

            while (v19 != v15);
          }

          do
          {
            if (*v14)
            {
              CFRelease(*v14);
            }

            ++v14;
          }

          while (v14 != v15);
          v14 = __p;
        }

        __p = v16;
        v38 = v5;
        v39 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        valuePtr[0] = *v3;
        v7 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
        *v5 = v7;
        if (!v7)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v38 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_1D9D85280(&__p);
  v29 = __p;
  if (__p)
  {
    v30 = result;
    v31 = v38;
    v32 = __p;
    if (v38 != __p)
    {
      do
      {
        v34 = *(v31 - 1);
        v31 -= 8;
        v33 = v34;
        if (v34)
        {
          CFRelease(v33);
        }
      }

      while (v31 != v29);
      v32 = __p;
    }

    v38 = v29;
    operator delete(v32);
    return v30;
  }

  return result;
}

void sub_1D9D84FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8500C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1D9D85470(v2);
  sub_1D9D85418(va1);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

void sub_1D9D850A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D850C0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1D9D84AB0();
  }

  return result;
}

CFArrayRef sub_1D9D85280(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      v2 = v1 - *a1;
      operator new();
    }

    sub_1D9D84AB0();
  }

  result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D9D853F0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D85418(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      CFRelease(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1D9D85470(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void **sub_1D9D854A4(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
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

void **sub_1D9D85514(void **a1)
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
        v6 = *(v3 - 2);
        if (v6)
        {
          CFRelease(v6);
          *(v3 - 2) = 0;
        }

        v7 = *(v3 - 5);
        if (v7)
        {
          v8 = *(v3 - 4);
          v5 = *(v3 - 5);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 24));
              }

              v8 -= 40;
            }

            while (v8 != v7);
            v5 = *(v3 - 5);
          }

          *(v3 - 4) = v7;
          operator delete(v5);
        }

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

void sub_1D9D85FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D54C6C(va);

  _Unwind_Resume(a1);
}

void sub_1D9D860D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionEncoderLSTM;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D9D86510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 - 120);
  if (!v13)
  {
    _Unwind_Resume(exception_object);
  }

  *(v11 - 112) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_1D9D86E40(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 129) < 0)
  {
    operator delete(*(v54 - 152));
  }

  if (a2 == 4)
  {
    v57 = __cxa_begin_catch(a1);
    if (v52)
    {
      *v52 = sub_1D9D87C90(v57);
    }
  }

  else if (a2 == 3)
  {
    v58 = __cxa_begin_catch(a1);
    if (v52)
    {
      *v52 = sub_1D9D87C18(v58);
    }
  }

  else
  {
    v59 = __cxa_begin_catch(a1);
    if (a2 != 2)
    {
      v60 = sub_1D9D54F4C(4);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *(v54 - 160) = 0;
        _os_log_impl(&dword_1D9D0A000, v60, OS_LOG_TYPE_ERROR, "Unknown error encountered during initWithOptions.", (v54 - 160), 2u);
      }

      __cxa_end_catch();
LABEL_20:
      JUMPOUT(0x1D9D86DB4);
    }

    if (v52)
    {
      *v52 = sub_1D9D87BA0(v59);
    }
  }

  __cxa_end_catch();
  goto LABEL_20;
}

void sub_1D9D87218(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1D9D87260(const __CFURL **a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89354(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D89364(v2, &cf);
  if (!cf)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v5, "Could not construct");
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  p_cf = &cf;
  sub_1D9D89274(&p_cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D87330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v9);
  sub_1D9D89320(&a9);
  _Unwind_Resume(a1);
}

void sub_1D9D87378(_BYTE *a1, uint64_t a2)
{
  sub_1D9D100A8(&v26);
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

  v7 = sub_1D9D12280(&v26, v5, v6);
  sub_1D9D12280(v7, "/", 1);
  v8 = sub_1D9D12280(&v26, "CLIP", 4);
  sub_1D9D12280(v8, "/", 1);
  std::stringbuf::str();
  if ((v25 & 0x8000000000000000) == 0)
  {
    p_src = &__src;
    if (v25 >= (v25 - 1))
    {
      v10 = v25 - 1;
    }

    else
    {
      v10 = v25;
    }

    if (v10 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_12;
    }

LABEL_39:
    sub_1D9D12168();
  }

  p_src = __src;
  if (v24 >= v24 - 1)
  {
    v10 = v24 - 1;
  }

  else
  {
    v10 = v24;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_39;
  }

LABEL_12:
  if (v10 >= 0x17)
  {
    operator new();
  }

  v21 = v10;
  if (v10)
  {
    memmove(v20, p_src, v10);
    *(v20 + v10) = 0;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(__src);
LABEL_15:
  v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v30);
  if ((v21 & 0x80u) == 0)
  {
    v13 = v20;
  }

  else
  {
    v13 = v20[0];
  }

  if (v13)
  {
    if ((v21 & 0x80u) == 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = v20[1];
    }

    cf = CFStringCreateWithBytes(0, v13, v14, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v21 & 0x80) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    cf = 0;
    if ((v21 & 0x80) != 0)
    {
LABEL_26:
      operator delete(v20[0]);
    }
  }

  v15 = objc_msgSend_createBundle(*(a2 + 24), v13, v11, v12, v20[0]);
  v17 = objc_msgSend_pathForResource_ofType_(v15, v16, cf, 0);
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_1F554FF38;
  }

  sub_1D9D87968(v17, a1);

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D876D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1D9D89420(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D8777C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D877C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v9, 0, sizeof(v9));
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 < 0)
  {
    v5 = *(a3 + 8);
  }

  sub_1D9D2B214(&v9.__pn_, v6, (v6 + v5));
  if (*(a2 + 31) < 0)
  {
    sub_1D9D12B94(&__dst, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __dst = *(a2 + 8);
  }

  if (std::__fs::filesystem::path::__root_directory(&v9).__size_)
  {
    std::string::operator=(&__dst, &v9.__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(&__dst).__size_)
    {
      std::string::push_back(&__dst, 47);
    }

    if ((v9.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v9.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v7, size);
  }

  sub_1D9D548FC(a1, &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_1D9D878E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D87920(uint64_t a1)
{
  if (*(MEMORY[0x1DA740E50]() + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D9D87968(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  sub_1D9D896B0(v3, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  p_cf = &cf;
  sub_1D9D89274(&p_cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D87A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v10);
  sub_1D9D89320(&a9);

  _Unwind_Resume(a1);
}

void sub_1D9D87A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1D9D89320(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D87A5C(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 8) != 3)
    {
      goto LABEL_29;
    }

    v4 = *a1;
    if (**a1 != 20547 || *(*a1 + 2) != 85)
    {
      if (*v4 != 20551 || *(v4 + 2) != 85)
      {
        goto LABEL_11;
      }

      return 0x100000005;
    }

    return 0x100000000;
  }

  if (v1 != 3)
  {
    goto LABEL_29;
  }

  if (*a1 == 20547 && *(a1 + 2) == 85)
  {
    return 0x100000000;
  }

  v3 = *a1 == 20551 && *(a1 + 2) == 85;
  v4 = a1;
  if (v3)
  {
    return 0x100000005;
  }

LABEL_11:
  v5 = *v4;
  v6 = *(v4 + 2);
  if (v5 != 20033 || v6 != 69)
  {
LABEL_29:
    exception = __cxa_allocate_exception(0x28uLL);
    sub_1D9D89788(exception, "Unrecognized value for engine=", a1);
    __cxa_throw(exception, &unk_1F554F2D0, sub_1D9D87920);
  }

  return 0x100002717;
}

id sub_1D9D87BA0(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, off_1ECB71968, 5, v1);

  return v3;
}

id sub_1D9D87C18(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, off_1ECB71968, 3, v1);

  return v3;
}

id sub_1D9D87C90(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, off_1ECB71968, 4, v1);

  return v3;
}

void sub_1D9D883EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 4)
  {
    v31 = __cxa_begin_catch(a1);
    if (v25)
    {
      *v25 = sub_1D9D87C90(v31);
    }
  }

  else if (a2 == 3)
  {
    v32 = __cxa_begin_catch(a1);
    if (v25)
    {
      *v25 = sub_1D9D87C18(v32);
    }
  }

  else
  {
    v33 = __cxa_begin_catch(a1);
    if (a2 != 2)
    {
      v34 = sub_1D9D54F4C(4);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        buf = 0;
        _os_log_impl(&dword_1D9D0A000, v34, OS_LOG_TYPE_ERROR, "Unknown error encountered during encodeImage.", &buf, 2u);
      }

      __cxa_end_catch();
LABEL_17:
      if (*MEMORY[0x1E69E9840] != *(v30 - 88))
      {
        JUMPOUT(0x1D9D87F04);
      }

      JUMPOUT(0x1D9D88304);
    }

    if (v25)
    {
      *v25 = sub_1D9D87BA0(v33);
    }
  }

  __cxa_end_catch();
  goto LABEL_17;
}

void sub_1D9D8891C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t buf)
{
  __cxa_free_exception(v19);
  sub_1D9D6336C(&buf);
  if (a2 == 4)
  {
    v22 = __cxa_begin_catch(a1);
    if (v18)
    {
      *v18 = sub_1D9D87C90(v22);
    }
  }

  else if (a2 == 3)
  {
    v23 = __cxa_begin_catch(a1);
    if (v18)
    {
      *v18 = sub_1D9D87C18(v23);
    }
  }

  else
  {
    v24 = __cxa_begin_catch(a1);
    if (a2 != 2)
    {
      v25 = sub_1D9D54F4C(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1D9D0A000, v25, OS_LOG_TYPE_ERROR, "Unknown Error encountered during encodeText.", &buf, 2u);
      }

      __cxa_end_catch();
LABEL_16:
      JUMPOUT(0x1D9D888A4);
    }

    if (v18)
    {
      *v18 = sub_1D9D87BA0(v24);
    }
  }

  __cxa_end_catch();
  goto LABEL_16;
}

void sub_1D9D88A64(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1D9D88F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t buf, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v32);
  sub_1D9D6336C(&a32);
  sub_1D9D54C6C(&a14);
  if (a2 == 4)
  {
    v35 = __cxa_begin_catch(exception_object);
    if (a9)
    {
      *a9 = sub_1D9D87C90(v35);
    }
  }

  else if (a2 == 3)
  {
    v36 = __cxa_begin_catch(exception_object);
    if (a9)
    {
      *a9 = sub_1D9D87C18(v36);
    }
  }

  else
  {
    v37 = __cxa_begin_catch(exception_object);
    if (a2 != 2)
    {
      v38 = sub_1D9D54F4C(4);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1D9D0A000, v38, OS_LOG_TYPE_ERROR, "Unknown Error encountered during encodeText.", &buf, 2u);
      }

      __cxa_end_catch();
LABEL_18:
      JUMPOUT(0x1D9D88EB8);
    }

    if (a9)
    {
      *a9 = sub_1D9D87BA0(v37);
    }
  }

  __cxa_end_catch();
  goto LABEL_18;
}

unint64_t sub_1D9D89274@<X0>(const __CFString ***a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = **a1;
  if (!v3 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D89464(v3, a2);
}

const void **sub_1D9D89320(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_1D9D89364@<X0>(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  result = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  *a2 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1D9D893EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9D89420(v1);
  _Unwind_Resume(a1);
}

const void **sub_1D9D89420(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t sub_1D9D89464@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    sub_1D9D12168();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_1D9D8962C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1D9D89648(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D8967C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_1D9D896B0@<X0>(const void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CFRetain(result);
    *a2 = v3;
    v4 = CFGetTypeID(v3);
    result = CFStringGetTypeID();
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

void sub_1D9D89750(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9D89420(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D89788(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1D9D100A8(&v12);
  sub_1D9D12280(&v12, "[InvalidArgument] ", 18);
  v6 = strlen(a2);
  sub_1D9D12280(&v12, a2, v6);
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

  sub_1D9D12280(&v12, v8, v9);
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
  MEMORY[0x1DA7411E0](&v16);
  *a1 = &unk_1F554F350;
  v10 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v10 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v10);
  *a1 = &unk_1F554F350;
  return a1;
}

void sub_1D9D89968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D8999C(uint64_t a1)
{
  if (*(MEMORY[0x1DA740E50]() + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D899F4()
{
  result = MGGetBoolAnswer();
  byte_1EE0005A8 = result;
  return result;
}

Class sub_1D9D89A1C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EE0005C0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9D89B70;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E000;
    v7 = 0;
    qword_1EE0005C0 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1EE0005C0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VNCreateSceneprintRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EE0005B8 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9D89B70(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EE0005C0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1D9D89BE4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EE0005C0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9D89B70;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E000;
    v7 = 0;
    qword_1EE0005C0 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1EE0005C0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EE0005C8 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9D89D38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = SHIBYTE(v7);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v7 < 0)
  {
    v3 = __p[1];
  }

  sub_1D9D2B214((a1 + 8), v4, (v3 + v4));
  *a1 = &unk_1F554E230;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F554E258;
  return a1;
}

void sub_1D9D89E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D89E50(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v12);
  sub_1D9D12280(&v12, "[InvalidArgument] ", 18);
  sub_1D9D12280(&v12, "Invalid model directory: ", 25);
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

  sub_1D9D2B0B0(&v12, v8, &v8[v9], 0x22u, 0x5Cu);
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
  MEMORY[0x1DA7411E0](&v16);
  *a1 = &unk_1F554F350;
  v10 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v10 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v10);
  *a1 = &unk_1F554F350;
  return a1;
}

void sub_1D9D8A038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D8A08C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554F398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D8A0E0(uint64_t a1)
{
  sub_1D9D8A240(a1 + 120);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 40));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (!v2)
  {
LABEL_5:
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_12:
  sub_1D9D8A240((v2 + 3));
  v4 = v2[2];
  v2[2] = 0;
  if (v4)
  {
    v5 = sub_1D9D8A368(v4);
    MEMORY[0x1DA741280](v5, 0x10B0C4005063E60);
  }

  v6 = v2[1];
  v2[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  MEMORY[0x1DA741280](v2, 0x1032C4086C30B0ALL);
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
LABEL_6:

    sub_1D9D8A4AC(a1 + 24, v3);
  }
}

uint64_t sub_1D9D8A240(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 48);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(a1 + 72));
  v2 = *(a1 + 48);
  if (!v2)
  {
LABEL_6:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_21;
  }

LABEL_13:
  v4 = *(a1 + 56);
  if (v4 == v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    do
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v2);
    v6 = *(a1 + 48);
    *(a1 + 56) = v2;
    operator delete(v6);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_20;
    }
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_21:
  operator delete(*a1);
  return a1;
}

uint64_t *sub_1D9D8A368(uint64_t *a1)
{
  a1[9] = &unk_1F554E3C8;
  v2 = a1[15];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  a1[2] = &unk_1F554E3C8;
  v4 = a1[8];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_1D9D8A4AC(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (*(a2 + 63) < 0)
    {
      operator delete(a2[5]);
      if ((*(a2 + 39) & 0x80000000) == 0)
      {
LABEL_4:
        v3 = a2[1];
        a2[1] = 0;
        if (!v3)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((*(a2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(a2[2]);
    v3 = a2[1];
    a2[1] = 0;
    if (!v3)
    {
LABEL_6:
      v5 = *a2;
      *a2 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      JUMPOUT(0x1DA741280);
    }

LABEL_5:
    v4 = sub_1D9D8A584(v3);
    MEMORY[0x1DA741280](v4, 0x10B0C409CF98BECLL);
    goto LABEL_6;
  }
}

uint64_t sub_1D9D8A584(uint64_t a1)
{
  *(a1 + 8) = &unk_1F554E3C8;
  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*v4)
    {
      CFRelease(*v4);
    }

    MEMORY[0x1DA741280](v4, 0x20C4093837F09);
  }

  return a1;
}

const __CFDictionary *sub_1D9D8A654(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v2 = strlen(v1);
  if (v1)
  {
    v12 = CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
    if (!v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_1D9D896B0(*MEMORY[0x1E695E650], &cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = v4;
  v5 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  v14 = v5;
  v10[0] = &v13;
  v10[1] = 1;
  v6 = sub_1D9D8A8A8(v10);
  v7 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1D9D8A7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8A7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  sub_1D9D89420(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9D8A810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D8A864(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

CFDictionaryRef sub_1D9D8A8A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v2 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v2;
}

void sub_1D9D8AB8C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1D9D8AF2C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1[1] + 104);
  v8 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  (*(*v7 + 24))(v20);
  (*(*a1 + 16))(&v18, a1, v20, a3);
  memset(v17, 0, sizeof(v17));
  v20[3] = v17;
  LOBYTE(v21) = 0;
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v10 = v18;
  if (!v18)
  {
    v11 = v20[0];
    if (!v20[0])
    {
      return;
    }

    goto LABEL_8;
  }

  v12 = v19;
  v13 = v18;
  if (v19 != v18)
  {
    v14 = v19;
    do
    {
      v16 = *(v14 - 3);
      v14 -= 24;
      v15 = v16;
      if (v16)
      {
        *(v12 - 2) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v10);
    v13 = v18;
  }

  v19 = v10;
  operator delete(v13);
  v11 = v20[0];
  if (v20[0])
  {
LABEL_8:
    v20[1] = v11;
    operator delete(v11);
  }
}

void sub_1D9D8B2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D8B380(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __p = 0;
  v7 = 0;
  v8 = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v3 = *(a1 + 8);
  LOBYTE(cf) = 0;
  v5 = 0;
  sub_1D9D8B8C8(v3, a2, &cf);
  operator new();
}

void sub_1D9D8B7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D8B8C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  LOBYTE(v23) = 0;
  if (*(a3 + 8))
  {
    v5 = *a3;
    if (*a3)
    {
      CFRetain(*a3);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
    v5 = v23;
  }

  sub_1D9D8F980(v24, a1, *a2, a2[1], v5, v6);
  if (v6 && v5)
  {
    CFRelease(v5);
  }

  v7 = *a1;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  if (!OutputDimension)
  {
    return 0;
  }

  v9 = ((a2[1] - *a2) >> 2) - 1;
  LODWORD(v10) = v24[0];
  v11 = 2;
  if (!v24[0])
  {
    v11 = 4;
  }

  v12 = *&v24[v11];
  if (v24[0])
  {
    LODWORD(v10) = 0;
    v13 = 0;
    v14 = v25 + 4 * v9 * v12;
    v15 = 0.0;
    do
    {
      v16 = *(v14 + 4 * v13);
      v17 = v15 < v16;
      v15 = fmaxf(v15, v16);
      if (v17)
      {
        v10 = v13;
      }

      else
      {
        v10 = v10;
      }

      ++v13;
    }

    while (OutputDimension != v13);
  }

  else
  {
    v19 = 0;
    v20 = 4 * v12;
    v21 = 0.0;
    v22 = (v25 + 4 * v9);
    do
    {
      v17 = v21 < *v22;
      v21 = fmaxf(v21, *v22);
      if (v17)
      {
        v10 = v19;
      }

      else
      {
        v10 = v10;
      }

      ++v19;
      v22 = (v22 + v20);
    }

    while (OutputDimension != v19);
  }

  return v10;
}

uint64_t sub_1D9D8BA40(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void sub_1D9D8BA80(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v160 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 20);
  v156 = v6;
  v158 = 0;
  v159 = 0;
  v157 = 0;
  v7 = *(a1 + 8);
  LOBYTE(v143) = 0;
  LOBYTE(v144) = 0;
  v8 = *a2;
  v9 = (a2[1] - v8) >> 2;
  LOBYTE(v145) = 0;
  LOBYTE(v146) = 0;
  LOBYTE(cf[0]) = 0;
  LOBYTE(cf[1]) = 0;
  sub_1D9D8FAE4(v7, v8, v9, cf);
  if (LOBYTE(cf[1]) == 1 && cf[0])
  {
    CFRelease(cf[0]);
  }

  v10 = *v7;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v12 = *v7;
  Output = MRLNeuralNetworkGetOutput();
  v128 = v6;
  v14 = *a2;
  v15 = a2[1];
  v16 = v15 - *a2;
  v17 = v16 >> 2;
  v18 = 0.0;
  v19 = (v16 >> 2) - 1;
  v117 = a4;
  v129 = a2;
  if (v16 >> 2 != 1)
  {
    v20 = 4 * OutputDimension;
    if (v17 == 2)
    {
      v21 = 0;
LABEL_10:
      v28 = Output + 4 * v21 * OutputDimension;
      v29 = ~v21 + v17;
      v30 = (v14 + 4 * v21 + 4);
      do
      {
        v31 = *v30++;
        v18 = logf(*(v28 + 4 * v31)) + v18;
        v28 += v20;
        --v29;
      }

      while (v29);
      goto LABEL_12;
    }

    v126 = a2[1];
    v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
    v22 = (v14 + 8);
    v23 = 0.0;
    v24 = v19 & 0xFFFFFFFFFFFFFFFELL;
    v127 = Output;
    v25 = Output;
    v26 = 0.0;
    do
    {
      v27 = *(v25 + v20 + 4 * *v22);
      v23 = logf(*(v25 + 4 * *(v22 - 1))) + v23;
      v26 = logf(v27) + v26;
      v22 += 2;
      v25 += 8 * OutputDimension;
      v24 -= 2;
    }

    while (v24);
    v18 = v26 + v23;
    v15 = v126;
    Output = v127;
    if ((v16 >> 2) - 1 != v21)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  if (v15 != v14)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v34 = 0;
  if (v128)
  {
    v32 = v159;
    if (!v159)
    {
LABEL_22:
      v37 = (v158 - v157) >> 5;
      if ((v37 + 1) >> 59)
      {
        sub_1D9D84AB0();
      }

      v38 = v32 - v157;
      v39 = v38 >> 4;
      if (v38 >> 4 <= (v37 + 1))
      {
        v39 = v37 + 1;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFE0)
      {
        v40 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v39;
      }

      *(&v149 + 1) = &v157;
      if (v40)
      {
        if (!(v40 >> 59))
        {
          operator new();
        }

        sub_1D9D10E9C();
      }

      v41 = (32 * v37);
      cf[0] = 0;
      cf[1] = v41;
      v148.__locale_ = (32 * v37);
      *&v149 = 0;
      *v41 = v18;
      *(32 * v37 + 8) = 0;
      *(v41 + 2) = 0;
      *(v41 + 3) = 0;
      v33 = (32 * v37 + 32);
      v42 = v157;
      v43 = (32 * v37 - (v158 - v157));
      memcpy(v43, v157, v158 - v157);
      v157 = v43;
      v158 = v33;
      v159 = 0;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (MEMORY[0] >= v18)
    {
      goto LABEL_34;
    }

    sub_1D9D919E8(0, 0, 0);
    v35 = v158;
    v36 = *(v158 - 3);
    if (v36)
    {
      *(v158 - 2) = v36;
      operator delete(v36);
    }

    v34 = v35 - 32;
    v158 = v35 - 32;
    v32 = v159;
    if ((v35 - 32) >= v159)
    {
      goto LABEL_22;
    }
  }

  *v34 = v18;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v33 = v34 + 32;
LABEL_33:
  v158 = v33;
  sub_1D9D91620(v157, v33, (v33 - v157) >> 5);
LABEL_34:
  v135 = v129;
  sub_1D9D8D304(v133, v157, v158);
  v44 = v157;
  if (v157)
  {
    v45 = v158;
    v46 = v157;
    if (v158 != v157)
    {
      do
      {
        v47 = *(v45 - 3);
        if (v47)
        {
          *(v45 - 2) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = v157;
    }

    v158 = v44;
    operator delete(v46);
  }

  v157 = 0;
  v158 = 0;
  v159 = 0;
  if (a3)
  {
    v124 = 0;
    v122 = *(MEMORY[0x1E69E54E8] + 8);
    v119 = *(MEMORY[0x1E69E54E8] + 24);
    v120 = *MEMORY[0x1E69E54E8];
    v121 = *(MEMORY[0x1E69E54E8] + 16);
    while (1)
    {
      v49 = v133[0];
      v123 = v133[1];
      if (v133[0] != v133[1])
      {
        break;
      }

      v50 = 0;
      v51 = 0;
LABEL_74:
      sub_1D9D8D304(&v143, v51, v50);
      sub_1D9D8D908(&v145, &v135, v143, v144);
      v75 = v143;
      if (v143)
      {
        v76 = v144;
        v77 = v143;
        if (v144 != v143)
        {
          do
          {
            v78 = *(v76 - 3);
            if (v78)
            {
              *(v76 - 2) = v78;
              operator delete(v78);
            }

            v76 -= 32;
          }

          while (v76 != v75);
          v77 = v143;
        }

        v144 = v75;
        operator delete(v77);
      }

      v79 = v145;
      v80 = v146;
      if (v145 == v146)
      {
        if (v145)
        {
          goto LABEL_107;
        }

        goto LABEL_114;
      }

      do
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v81 = v79[1];
        if (v81 != *v79)
        {
          if (((v81 - *v79) & 0x8000000000000000) == 0)
          {
            v82 = v81 - *v79;
            operator new();
          }

          sub_1D9D84AB0();
        }

        (*(**(*(a1 + 8) + 104) + 32))(v136);
        v155[6] = 0;
        v83 = MEMORY[0x1E69E5570] + 64;
        v155[0] = MEMORY[0x1E69E5570] + 64;
        cf[0] = v122;
        *(cf + *(v122 - 3)) = v121;
        v84 = (cf + *(cf[0] - 3));
        std::ios_base::init(v84, &cf[1]);
        v85 = (MEMORY[0x1E69E5570] + 24);
        v84[1].__vftable = 0;
        v84[1].__fmtflags_ = -1;
        cf[0] = v85;
        v155[0] = v83;
        v86 = (MEMORY[0x1E69E5538] + 16);
        cf[1] = (MEMORY[0x1E69E5538] + 16);
        MEMORY[0x1DA741190](&v148);
        v151 = 0u;
        v150 = 0u;
        v149 = 0u;
        v87 = (MEMORY[0x1E69E5548] + 16);
        memset(&v152, 0, sizeof(v152));
        v154 = 16;
        cf[1] = (MEMORY[0x1E69E5548] + 16);
        v153 = &v152;
        std::string::resize(&v152, 0x16uLL, 0);
        size = HIBYTE(v152.__r_.__value_.__r.__words[2]);
        if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v152.__r_.__value_.__l.__size_;
        }

        *(&v150 + 1) = &v152;
        *&v151 = &v152;
        *(&v151 + 1) = &v152 + size;
        sub_1D9D12280(cf, "[t=", 3);
        MEMORY[0x1DA7410A0](cf, v124);
        sub_1D9D12280(cf, "] sampleText: ", 14);
        if ((v137 & 0x80u) == 0)
        {
          v89 = v136;
        }

        else
        {
          v89 = v136[0];
        }

        if ((v137 & 0x80u) == 0)
        {
          v90 = v137;
        }

        else
        {
          v90 = v136[1];
        }

        sub_1D9D12280(cf, v89, v90);
        std::stringbuf::str();
        cf[0] = v120;
        *(cf + *(v120 - 3)) = v119;
        cf[1] = v87;
        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }

        cf[1] = v86;
        std::locale::~locale(&v148);
        std::ostream::~ostream();
        MEMORY[0x1DA7411E0](v155);
        if (v137 < 0)
        {
          operator delete(v136[0]);
          if (v139 < 0)
          {
LABEL_104:
            operator delete(v138);
            v91 = v140;
            if (!v140)
            {
              goto LABEL_85;
            }

LABEL_105:
            v141 = v91;
            operator delete(v91);
            goto LABEL_85;
          }
        }

        else if (v139 < 0)
        {
          goto LABEL_104;
        }

        v91 = v140;
        if (v140)
        {
          goto LABEL_105;
        }

LABEL_85:
        v79 += 3;
      }

      while (v79 != v80);
      v79 = v145;
      if (v145)
      {
LABEL_107:
        v92 = v146;
        v93 = v79;
        if (v146 != v79)
        {
          v94 = v146;
          do
          {
            v96 = *(v94 - 3);
            v94 -= 3;
            v95 = v96;
            if (v96)
            {
              *(v92 - 2) = v95;
              operator delete(v95);
            }

            v92 = v94;
          }

          while (v94 != v79);
          v93 = v145;
        }

        v146 = v79;
        operator delete(v93);
      }

LABEL_114:
      sub_1D9D8D304(cf, v157, v158);
      v97 = v133[0];
      if (v133[0])
      {
        v98 = v133[1];
        v99 = v133[0];
        if (v133[1] != v133[0])
        {
          do
          {
            v100 = *(v98 - 3);
            if (v100)
            {
              *(v98 - 2) = v100;
              operator delete(v100);
            }

            v98 -= 32;
          }

          while (v98 != v97);
          v99 = v133[0];
        }

        v133[1] = v97;
        operator delete(v99);
      }

      *v133 = *cf;
      locale = v148.__locale_;
      v101 = v157;
      if (v157)
      {
        v102 = v158;
        v48 = v157;
        if (v158 != v157)
        {
          do
          {
            v103 = *(v102 - 3);
            if (v103)
            {
              *(v102 - 2) = v103;
              operator delete(v103);
            }

            v102 -= 32;
          }

          while (v102 != v101);
          v48 = v157;
        }

        v158 = v101;
        operator delete(v48);
      }

      v157 = 0;
      v158 = 0;
      v159 = 0;
      if (++v124 == a3)
      {
        goto LABEL_128;
      }
    }

    while (1)
    {
      v52 = *(a1 + 8);
      v53 = v49[1];
      v54 = v49[2];
      LOBYTE(v143) = 0;
      LOBYTE(v144) = 0;
      v55 = (v54 - v53) >> 2;
      LOBYTE(v145) = 0;
      LOBYTE(v146) = 0;
      LOBYTE(cf[0]) = 0;
      LOBYTE(cf[1]) = 0;
      sub_1D9D8FAE4(v52, v53, v55, cf);
      if (LOBYTE(cf[1]) == 1 && cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v55 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55;
      }

      v57 = *v52;
      v58 = MRLNeuralNetworkGetOutputDimension();
      v59 = *v52;
      v60 = MRLNeuralNetworkGetOutput();
      v61 = (*(**(v52 + 104) + 88))(*(v52 + 104));
      if (v61)
      {
        if (!(v61 >> 62))
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      v62 = (*(**(v52 + 104) + 88))(*(v52 + 104));
      if (!v62)
      {
        goto LABEL_65;
      }

      v63 = v56 - 1;
      if (v62 > 7 && (v64 = 4 * v58 * v63, (-v60 - v64) >= 0x20))
      {
        v65 = v62 & 0xFFFFFFFFFFFFFFF8;
        v71 = (v60 + v64 + 16);
        v72 = 16;
        v73 = v62 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v74 = *v71;
          *(v72 - 16) = *(v71 - 1);
          *v72 = v74;
          v71 += 2;
          v72 += 32;
          v73 -= 8;
        }

        while (v73);
        if (v62 == v65)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v65 = 0;
      }

      v66 = v62 - v65;
      v67 = (4 * v65);
      v68 = (&v67[v58 * v63] + v60);
      do
      {
        v69 = *v68++;
        *v67++ = v69;
        --v66;
      }

      while (v66);
LABEL_65:
      v70 = *(a1 + 16);
      if (v70)
      {
        if ((v70 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1D9D67CB0();
      }

      sub_1D9D830A8(0, 0, 0, 0);
      v49 += 4;
      if (v49 == v123)
      {
        v51 = v157;
        v50 = v158;
        goto LABEL_74;
      }
    }
  }

LABEL_128:
  v130 = 0;
  v131 = 0;
  v132 = 0;
  cf[0] = &v130;
  LOBYTE(cf[1]) = 0;
  if (v133[1] != v133[0])
  {
    if (((v133[1] - v133[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  sub_1D9D8D908(v117, &v135, 0, 0);
  v104 = v130;
  if (v130)
  {
    v105 = v131;
    v106 = v130;
    if (v131 != v130)
    {
      do
      {
        v107 = *(v105 - 3);
        if (v107)
        {
          *(v105 - 2) = v107;
          operator delete(v107);
        }

        v105 -= 32;
      }

      while (v105 != v104);
      v106 = v130;
    }

    v131 = v104;
    operator delete(v106);
  }

  v108 = v133[0];
  if (v133[0])
  {
    v109 = v133[1];
    v110 = v133[0];
    if (v133[1] != v133[0])
    {
      do
      {
        v111 = *(v109 - 3);
        if (v111)
        {
          *(v109 - 2) = v111;
          operator delete(v111);
        }

        v109 -= 32;
      }

      while (v109 != v108);
      v110 = v133[0];
    }

    v133[1] = v108;
    operator delete(v110);
  }

  v112 = v157;
  if (v157)
  {
    v113 = v158;
    v114 = v157;
    if (v158 != v157)
    {
      do
      {
        v115 = *(v113 - 3);
        if (v115)
        {
          *(v113 - 2) = v115;
          operator delete(v115);
        }

        v113 -= 32;
      }

      while (v113 != v112);
      v114 = v157;
    }

    v158 = v112;
    operator delete(v114);
  }

  v116 = *MEMORY[0x1E69E9840];
}

void sub_1D9D8CF70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D8D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    JUMPOUT(0x1D9D8D2F4);
  }

  JUMPOUT(0x1D9D8D1C4);
}

void sub_1D9D8D284(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    if (!v27)
    {
      goto LABEL_7;
    }
  }

  else if (!v27)
  {
LABEL_7:
    JUMPOUT(0x1D9D8D2E4);
  }

  JUMPOUT(0x1D9D8D2DCLL);
}

void sub_1D9D8D2D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p)
{
  if (v32)
  {
    operator delete(v32);
  }

  operator delete(__p);
  if (a22)
  {
    operator delete(a22);
    if (!a30)
    {
      JUMPOUT(0x1D9D8D1D0);
    }

    JUMPOUT(0x1D9D8D1CCLL);
  }

  JUMPOUT(0x1D9D8D1C4);
}

void *sub_1D9D8D304(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D8D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 16) = v18;
    operator delete(v18);
  }

  sub_1D9D825B4(&a9);
  sub_1D9D66F00(v14);
  sub_1D9D66F00(&a14);
  _Unwind_Resume(a1);
}

void sub_1D9D8D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v10 = *v8;
  if (*v8)
  {
    *(v7 + 16) = v10;
    operator delete(v10);
  }

  *(v6 + 8) = v7;
  sub_1D9D66F00(v6);
  sub_1D9D66F00(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8D67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1D9D66F00(v6);
  sub_1D9D66F00(va);
  _Unwind_Resume(a1);
}

__n128 sub_1D9D8D69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(cf) = 0;
  sub_1D9D8F980(&v35, a2, a3, a4, cf, 0);
  v6 = v37;
  v7 = (*(**(a2 + 104) + 88))(*(a2 + 104));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v8 = (*(**(a2 + 104) + 88))(*(a2 + 104));
  if (v8)
  {
    v10 = v38;
    v11 = v36;
    if (v35)
    {
      v12 = v36;
    }

    else
    {
      v12 = v6;
    }

    if (!v35)
    {
      v20 = v8 >= 0xC && v12 == 1;
      if (v20 && (-v38 - 4 * v6 + 4) >= 0x20)
      {
        v21 = v8 & 0xFFFFFFFFFFFFFFF8;
        v30 = (4 * v6 + v38 + 12);
        v31 = 16;
        v32 = v8 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          result = v30[-1];
          v33 = *v30;
          *(v31 - 16) = result;
          *v31 = v33;
          v30 += 2;
          v31 += 32;
          v32 -= 8;
        }

        while (v32);
        if (v8 == v21)
        {
          return result;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v8 - v21;
      v23 = (4 * v21);
      v24 = (4 * v12 * v21 + 4 * v6 + v10 - 4);
      v25 = 4 * v12;
      do
      {
        result.n128_u32[0] = *v24;
        *v23++ = *v24;
        v24 = (v24 + v25);
        --v22;
      }

      while (v22);
      return result;
    }

    v13 = v6 - 1;
    if (v8 <= 0xB || (v14 = 4 * v36 * v13, (-v38 - v14) < 0x20))
    {
      v15 = 0;
LABEL_12:
      v16 = v8 - v15;
      v17 = (4 * v15);
      v18 = (&v17[v11 * v13] + v10);
      do
      {
        v19 = *v18++;
        result.n128_u32[0] = v19;
        *v17++ = v19;
        --v16;
      }

      while (v16);
      return result;
    }

    v15 = v8 & 0xFFFFFFFFFFFFFFF8;
    v26 = (v14 + v38 + 16);
    v27 = 16;
    v28 = v8 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      result = v26[-1];
      v29 = *v26;
      *(v27 - 16) = result;
      *v27 = v29;
      v26 += 2;
      v27 += 32;
      v28 -= 8;
    }

    while (v28);
    if (v8 != v15)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1D9D8D8D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    *(v2 + 8) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D8D908(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v4, 0, 24);
  v4[3] = v4;
  LOBYTE(v5) = 0;
  if (a4 != a3)
  {
    if (((a4 - a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1D9D8DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D82D80(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8DB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D82D80(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8DBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (!v14)
  {
    sub_1D9D616E8(v13);
    sub_1D9D66F00(&a10);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  sub_1D9D616E8(v13);
  sub_1D9D66F00(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D8DC30@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 20);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = result;
  if (v3)
  {
    v5 = *a2;
    v4 = a2[1];
    memset(v9, 0, 24);
    if (v4 != v5)
    {
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D9D84AB0();
    }

    sub_1D9D8DFF4(&v8);
    v7[0] = v6;
    v7[1] = v9;
    v7[2] = &v8;
    sub_1D9D8E0D8(v7);
    operator new();
  }

  return result;
}

void sub_1D9D8DF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 - 112);
  if (v11)
  {
    operator delete(v11);
  }

  sub_1D9D616E8(a9);
  _Unwind_Resume(a1);
}

void sub_1D9D8DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x1D9D8DF6CLL);
  }

  JUMPOUT(0x1D9D8DF68);
}

void sub_1D9D8DF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::random_device a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  sub_1D9D616E8(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D8DFF4(uint64_t a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v2 = MEMORY[0x1DA7410D0](a1);
  *(a1 + 8) = v2;
  v3 = 1;
  for (i = 3; i != 626; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(a1 + 4 * i) = i + v5 - 2;
    ++v3;
  }

  *(a1 + 2504) = 0;
  return a1;
}

void sub_1D9D8E0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D8E0D8(uint64_t *a1)
{
  v2 = *a1;
  sub_1D9D8D69C(v9, *(*a1 + 8), *a1[1], *(a1[1] + 8));
  sub_1D9D82E04(v9, *(v2 + 16), &__p);
  v3 = a1[2];
  memset(v6, 0, sizeof(v6));
  if (v8 != __p)
  {
    if (((v8 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  v4 = sub_1D9D8EF3C(v3, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v4;
}

void sub_1D9D8E1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      v20 = a16;
      if (!a16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  v20 = a16;
  if (!a16)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void sub_1D9D8E248(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  v4 = *(a1 + 20);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *&v20 = a3;
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    if (v5 != v6)
    {
      if (((v5 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D9D84AB0();
    }

    sub_1D9D8DFF4(v25);
    v22 = a1;
    v23 = v30;
    v24 = v25;
    sub_1D9D8E934(&v22);
    operator new();
  }

  v7 = (a1 + 16);
  LODWORD(v20) = 3;
  *&v25[0].__padding_ = 0;
  __p[0] = COERCE_VOID_(sqrt(0.0));
  sub_1D9D8F400(&v22, &v20, &v25[0].__padding_, __p);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  v21 = 3;
  if (v8 <= 0)
  {
    *&v25[0].__padding_ = 0;
    v11 = 0.0;
  }

  else
  {
    *&v25[0].__padding_ = v9;
    v11 = 0.0;
    v12 = v8 - 1;
    if (v12)
    {
      v11 = v10 / v12;
    }
  }

  v20 = sqrt(v11);
  sub_1D9D8F400(__p, &v21, &v25[0].__padding_, &v20);
  sub_1D9D100A8(&v25[0].__padding_);
  sub_1D9D12280(v25, "[p=", 3);
  v13 = *v7;
  std::ostream::operator<<();
  sub_1D9D12280(v25, "] Avg vocab subset size over ", 29);
  MEMORY[0x1DA741080](v25, 0);
  sub_1D9D12280(v25, " samples: ", 10);
  if (SHIBYTE(v24) >= 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22;
  }

  if (SHIBYTE(v24) >= 0)
  {
    v15 = HIBYTE(v24);
  }

  else
  {
    v15 = v23;
  }

  sub_1D9D12280(v25, v14, v15);
  sub_1D9D12280(v25, "; numRetries: ", 14);
  if (v19 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v19 >= 0)
  {
    v17 = HIBYTE(v19);
  }

  else
  {
    v17 = __p[1];
  }

  sub_1D9D12280(v25, v16, v17);
  std::stringbuf::str();
  *&v25[0].__padding_ = *MEMORY[0x1E69E54E8];
  *(&v25[0].__padding_ + *(*&v25[0].__padding_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v29);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_30:
      operator delete(v30[0]);
      return;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v22);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_30;
  }
}

void sub_1D9D8E850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  sub_1D9D55298(&a31);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1D9D616E8(a10);
  _Unwind_Resume(a1);
}

void sub_1D9D8E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!a17)
  {
    JUMPOUT(0x1D9D8E8ACLL);
  }

  JUMPOUT(0x1D9D8E8A8);
}

void sub_1D9D8E8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::random_device a25)
{
  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  sub_1D9D616E8(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D8E934(uint64_t a1)
{
  v2 = *a1;
  sub_1D9D8D69C(&__p, *(*a1 + 8), **(a1 + 8), *(*(a1 + 8) + 8));
  v3 = (((v33 - __p) >> 2) * 0.1);
  sub_1D9D8F5CC(&v29, &__p, v2, v3);
  v5 = v30;
  v4 = v31;
  v6 = 0.0;
  if (v29 < *(v2 + 16) && v3 < ((v33 - __p) >> 2))
  {
    v7 = 1;
    do
    {
      v8 = v7;
      v3 *= 2;
      sub_1D9D8F5CC(&v29, &__p, v2, v3);
      v9 = v29;
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v30;
      v4 = v31;
      if (v9 >= *(v2 + 16))
      {
        break;
      }

      v7 = v8 + 1;
    }

    while (v3 < ((v33 - __p) >> 2));
    v6 = v8;
  }

  v10 = *(v2 + 64);
  *(v2 + 64) = v10 + 1;
  if (v10)
  {
    v11 = *(v2 + 72);
    v12 = v6 - v11;
    v13 = (v6 - v11) / (v10 + 1) + v11;
    v14 = *(v2 + 88);
    *(v2 + 72) = v13;
    *(v2 + 80) = v13;
    v15 = v14 + (v6 - v13) * v12;
    *(v2 + 88) = v15;
    *(v2 + 96) = v15;
  }

  else
  {
    *(v2 + 72) = v6;
    *(v2 + 80) = v6;
    *(v2 + 88) = 0;
  }

  v16 = ((v4 - v5) >> 3);
  v17 = *(v2 + 24);
  *(v2 + 24) = v17 + 1;
  if (v17)
  {
    v18 = *(v2 + 32);
    v19 = v16 - v18;
    v20 = (v16 - v18) / (v17 + 1) + v18;
    v21 = *(v2 + 48);
    *(v2 + 32) = v20;
    *(v2 + 40) = v20;
    v22 = v21 + (v16 - v20) * v19;
    *(v2 + 48) = v22;
    *(v2 + 56) = v22;
    v23 = *(a1 + 16);
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (v4 != v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v2 + 32) = v16;
    *(v2 + 40) = v16;
    *(v2 + 48) = 0;
    v23 = *(a1 + 16);
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (v4 != v5)
    {
LABEL_14:
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D9D67CB0();
    }
  }

  v24 = sub_1D9D8EF3C(v23, &v26);
  if (v5)
  {
    operator delete(v5);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_1D9D8EB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (v18)
  {
    operator delete(v18);
    if (!v17)
    {
LABEL_3:
      v20 = __p;
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  v20 = __p;
  if (!__p)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v20);
  _Unwind_Resume(exception_object);
}

BOOL sub_1D9D8EC60(uint64_t *a1, char *__s)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v17 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
    *(__dst + v7) = 0;
    v8 = v17;
    if (v4 == v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(__dst[0]) = 0;
    v8 = v17;
    if (v4 == v5)
    {
      goto LABEL_22;
    }
  }

  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = __dst[1];
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  while (1)
  {
    v11 = *(v4 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = *(v4 + 8);
    }

    if (v11 == v9)
    {
      v13 = v12 >= 0 ? v4 : *v4;
      if (!memcmp(v13, v10, v9))
      {
        break;
      }
    }

    v4 += 24;
    if (v4 == v5)
    {
      v4 = v5;
      v14 = a1[1];
      if ((v8 & 0x80) == 0)
      {
        return v4 != v14;
      }

      goto LABEL_25;
    }
  }

LABEL_22:
  v14 = a1[1];
  if ((v8 & 0x80) != 0)
  {
LABEL_25:
    operator delete(__dst[0]);
  }

  return v4 != v14;
}

uint64_t *sub_1D9D8EDCC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D67CB0();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
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

    v9 = result;
    v10 = 24 * v5;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v11 = 24 * v5 + 24;
    v12 = *v2;
    v13 = *(v2 + 8) - *v2;
    v14 = v10 - v13;
    memcpy((v10 - v13), *v2, v13);
    *v2 = v14;
    *(v2 + 8) = v11;
    *(v2 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }

    result = v9;
    *(v2 + 8) = v11;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v2 + 8) = v3 + 3;
  }

  return result;
}

uint64_t sub_1D9D8EF3C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D67CB0();
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_1D9D2A760(&v30);
  v5 = a1 + 8;
  v7 = v30;
  v6 = v31;
  v8 = *(a1 + 2504);
  v9 = (v8 + 1) % 0x270uLL;
  v10 = *(a1 + 8 + 4 * v9);
  v11 = v10 & 0x7FFFFFFE | *(a1 + 8 + 4 * v8) & 0x80000000;
  if (v10)
  {
    v12 = -1727483681;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 ^ *(a1 + 8 + 4 * ((v8 + 397) % 0x270uLL)) ^ (v11 >> 1);
  *(v5 + 4 * v8) = v13;
  if (v9 == 623)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9 + 1;
  }

  v15 = *(v5 + 4 * v14);
  v16 = 397;
  if (v9 >= 0xE3)
  {
    v16 = -227;
  }

  v17 = *(v5 + 4 * (v16 + v9));
  if (v15)
  {
    v18 = -1727483681;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 ^ v17 ^ ((v15 & 0x7FFFFFFE | *(v5 + 4 * v9) & 0x80000000) >> 1);
  *(v5 + 4 * v9) = v19;
  *(a1 + 2504) = v14;
  if (v6 != v7)
  {
    v20 = ((v13 ^ (v13 >> 11)) << 7) & 0x9D2C5680 ^ v13 ^ (v13 >> 11);
    v21 = ((v20 << 15) & 0xEFC60000 ^ v20 ^ (((v20 << 15) & 0xEFC60000 ^ v20) >> 18));
    v22 = ((v19 ^ (v19 >> 11)) << 7) & 0x9D2C5680 ^ v19 ^ (v19 >> 11);
    v23 = (v21 + ((v22 << 15) & 0xEFC60000 ^ v22 ^ (((v22 << 15) & 0xEFC60000 ^ v22) >> 18)) * 4294967300.0) * 5.42101086e-20;
    v24 = v6 - v7;
    v6 = v7;
    do
    {
      v25 = v24 >> 1;
      v26 = &v6[v24 >> 1];
      v28 = *v26;
      v27 = v26 + 1;
      v24 += ~(v24 >> 1);
      if (v23 < v28)
      {
        v24 = v25;
      }

      else
      {
        v6 = v27;
      }
    }

    while (v24);
  }

  if (v7)
  {
    v31 = v7;
    operator delete(v7);
  }

  return HIDWORD(*(*a2 + 8 * ((v6 - v7) >> 3)));
}

void sub_1D9D8F384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  operator delete(v14);
  if (v13)
  {
    operator delete(v13);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D8F3DC(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D8F400(uint64_t a1, int *a2, double *a3, double *a4)
{
  sub_1D9D100A8(&v8);
  *(&v10[0].__locale_ + *(v8 - 24)) = *a2;
  MEMORY[0x1DA741060](&v8, *a3);
  sub_1D9D12280(&v8, " ± ", 4);
  MEMORY[0x1DA741060](&v8, *a4);
  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v12);
}

void sub_1D9D8F5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8F5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8F5CC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  sub_1D9D82E04(a2, a4, &__p);
  if (__p != v7)
  {
    v5 = *__p;
    operator new();
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1D9D8F7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_1D9D8F824(uint64_t a1, __int128 *a2)
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
    sub_1D9D84AB0();
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

    sub_1D9D10E9C();
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

void sub_1D9D8F980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, CFTypeRef cf, char a6)
{
  LOBYTE(v17) = 0;
  if (a6)
  {
    if (cf)
    {
      CFRetain(cf);
      v17 = cf;
      v19 = 0;
      CFRetain(cf);
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    cfa = cf;
    v19 = 1;
  }

  else
  {
    LOBYTE(cfa) = 0;
    v19 = 0;
  }

  v12 = (a4 - a3) >> 2;
  sub_1D9D8FAE4(a2, a3, v12, &cfa);
  if (v19 == 1 && cfa)
  {
    CFRelease(cfa);
  }

  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = *a2;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v15 = *a2;
  Output = MRLNeuralNetworkGetOutput();
  *a1 = 1;
  *(a1 + 8) = OutputDimension;
  *(a1 + 16) = v12;
  *(a1 + 24) = Output;
  if (a6)
  {
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void sub_1D9D8FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1D9D8BA40(&a11);
  sub_1D9D8BA40(&a9);
  _Unwind_Resume(a1);
}

void sub_1D9D8FAE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v12 = 5;
  strcpy(__p, "input");
  sub_1D9D8FDF4(a1, a2, a3, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (!sub_1D9D8EC60((a1 + 8), "position"))
    {
      goto LABEL_9;
    }
  }

  else if (!sub_1D9D8EC60((a1 + 8), "position"))
  {
    goto LABEL_9;
  }

  __p[0] = (a3 << 32);
  LODWORD(__p[1]) = 1;
  if (a3)
  {
    operator new();
  }

  v12 = 8;
  strcpy(__p, "position");
  sub_1D9D8FDF4(a1, 0, 0, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_9:
  if (sub_1D9D8EC60((a1 + 8), "temperature"))
  {
    v7 = *(a1 + 120);
    operator new();
  }

  __p[0] = 0;
  if (*(a4 + 8) == 1 && (v8 = *a4) != 0)
  {
    CFRetain(v8);
    v9 = *a1;
    MRLNeuralNetworkPredict();
  }

  else
  {
    v10 = *a1;
    MRLNeuralNetworkPredict();
    v8 = 0;
  }

  sub_1D9DB0DFC(a1);
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1D9D8FD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_1D9D8FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1D9D84610(&a9);
  sub_1D9D84610(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9D8FDF4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1D9D8FFD4(a1, a2, a3, a4);
  v7 = sub_1D9D90464((a1 + 7), a4)[7];
  v8 = sub_1D9D9013C(a1, a3);
  sub_1D9D91134((a1 + 10), a4)[7] = v8;
  v9 = sub_1D9D91134((a1 + 10), a4)[7];
  MRLNeuralNetworkTensorAppendData();
  v10 = *a1;
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v12)
  {
    if (v11 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = *(a4 + 8);
    }

    cf = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v15 = sub_1D9D91134((a1 + 10), a4)[7];
  MRLNeuralNetworkSetInputTensor();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D8FF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8FFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1D9D89420(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9D8FFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

void sub_1D9D8FFD4(uint64_t a1, uint64_t a2, unint64_t a3, const void **a4)
{
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v4 = sub_1D9D90464(a1 + 56, a4);
  v5 = v4[7];
  if (v5)
  {
    v4[8] = v5;
    operator delete(v5);
    v4[7] = 0;
    v4[8] = 0;
    v4[9] = 0;
  }

  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
}

void sub_1D9D90124(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D9013C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  sub_1D9D90688("InputDimension", &cf);
  valuePtr = 1;
  v3 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v13 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = cf;
  if (!cf)
  {
    v17 = 0;
    goto LABEL_6;
  }

  CFRetain(cf);
  v3 = v13;
  v17 = v4;
  if (v13)
  {
LABEL_6:
    CFRetain(v3);
  }

  v18 = v3;
  sub_1D9D90688("SequenceLength", &v12);
  v5 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  v19 = v5;
  valuePtr = a2;
  v20 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (!v20)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15[0] = &v17;
  v15[1] = 2;
  v6 = sub_1D9D8A8A8(v15);
  v15[2] = v6;
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v7 = MRLNeuralNetworkTensorCreate();
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1D9D9034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
{
  sub_1D9D91064(&a19);
  sub_1D9D91098((v19 + 16));
  sub_1D9D89320(&a9);
  sub_1D9D910CC(&a10);
  sub_1D9D89320(&a11);
  sub_1D9D8A864(&a16);
  _Unwind_Resume(a1);
}

void *sub_1D9D90464(uint64_t a1, const void **a2)
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

void sub_1D9D90610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D90624(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D90624(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
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

void sub_1D9D90688(const char *a1@<X0>, void *a2@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v47 = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
    *(&__dst + v5) = 0;
    v6 = v47;
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v6 = v47;
    if ((v47 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6 <= 11)
      {
        if (v6 <= 9)
        {
          if (v6 != 8)
          {
            if (v6 != 9)
            {
              goto LABEL_154;
            }

            if (__dst != 0x7461446C65646F4DLL || BYTE8(__dst) != 97)
            {
              if (__dst != 0x6D614E6C65646F4DLL || BYTE8(__dst) != 101)
              {
                goto LABEL_146;
              }

LABEL_56:
              v14 = MEMORY[0x1E69B2810];
              goto LABEL_156;
            }

LABEL_144:
            v14 = MEMORY[0x1E69B2808];
            goto LABEL_156;
          }

          if (__dst != 0x4C52556C65646F4DLL)
          {
            goto LABEL_146;
          }

LABEL_142:
          v14 = MEMORY[0x1E69B2818];
          goto LABEL_156;
        }

        if (v6 != 10)
        {
          if (__dst != 0x614E74757074754FLL || *(&__dst + 3) != 0x73656D614E747570)
          {
            goto LABEL_146;
          }

LABEL_91:
          v14 = MEMORY[0x1E69B2830];
          goto LABEL_156;
        }

        if (__dst != 0x6D614E7475706E49 || WORD4(__dst) != 29541)
        {
LABEL_146:
          if (v6 == 14)
          {
            p_dst = &__dst;
            goto LABEL_150;
          }

          goto LABEL_154;
        }

LABEL_85:
        v14 = MEMORY[0x1E69B2800];
        goto LABEL_156;
      }

      p_dst = &__dst;
      if (v6 <= 17)
      {
        if (v6 != 12)
        {
          if (v6 == 14)
          {
            goto LABEL_150;
          }

          goto LABEL_154;
        }

        if (__dst != 0x7265566C65646F4DLL || DWORD2(__dst) != 1852795251)
        {
          goto LABEL_146;
        }

LABEL_64:
        v14 = MEMORY[0x1E69B2828];
        goto LABEL_156;
      }

      if (v6 != 18)
      {
        if (v6 != 22)
        {
          goto LABEL_154;
        }

        goto LABEL_104;
      }

      if (__dst != 0x617A69746E617551 || *(&__dst + 1) != 0x617261506E6F6974 || v46 != 29549)
      {
        goto LABEL_146;
      }

LABEL_141:
      v14 = MEMORY[0x1E69B2838];
      goto LABEL_156;
    }
  }

  if (*(&__dst + 1) <= 9)
  {
    if (*(&__dst + 1) == 8)
    {
      if (*__dst == 0x4C52556C65646F4DLL)
      {
        goto LABEL_142;
      }
    }

    else if (*(&__dst + 1) == 9)
    {
      if (*__dst == 0x7461446C65646F4DLL && *(__dst + 8) == 97)
      {
        goto LABEL_144;
      }

      if (*__dst == 0x6D614E6C65646F4DLL && *(__dst + 8) == 101)
      {
        goto LABEL_56;
      }
    }
  }

  else if (*(&__dst + 1) == 10)
  {
    if (*__dst == 0x6D614E7475706E49 && *(__dst + 8) == 29541)
    {
      goto LABEL_85;
    }
  }

  else if (*(&__dst + 1) == 11)
  {
    if (*__dst == 0x614E74757074754FLL && *(__dst + 3) == 0x73656D614E747570)
    {
      goto LABEL_91;
    }
  }

  else if (*(&__dst + 1) == 12 && *__dst == 0x7265566C65646F4DLL && *(__dst + 8) == 1852795251)
  {
    goto LABEL_64;
  }

  if (*(&__dst + 1) == 18)
  {
    v21 = *__dst == 0x617A69746E617551 && *(__dst + 8) == 0x617261506E6F6974;
    if (v21 && *(__dst + 16) == 29549)
    {
      goto LABEL_141;
    }
  }

  v23 = *(&__dst + 1);
  if (*(&__dst + 1) == 36)
  {
LABEL_113:
    if (*__dst == 0x617A69746E617551 && *(__dst + 8) == 0x656863536E6F6974 && *(__dst + 16) == 0x7261656E694C656DLL && *(__dst + 24) == 0x676E615238746E49 && *(__dst + 32) == 1852394853)
    {
      v14 = MEMORY[0x1E69B2848];
      goto LABEL_156;
    }

    if (*__dst == 0x617A69746E617551 && *(__dst + 8) == 0x656863536E6F6974 && *(__dst + 16) == 0x7261656E694C656DLL && *(__dst + 24) == 0x676E615238746E49 && *(__dst + 32) == 2019642725)
    {
      v14 = MEMORY[0x1E69B2840];
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  if (*(&__dst + 1) == 22)
  {
    p_dst = __dst;
LABEL_104:
    v24 = *p_dst;
    v25 = p_dst[1];
    v26 = *(p_dst + 14);
    if (v24 == 0x617A69746E617551 && v25 == 0x656863536E6F6974 && v26 == 0x656D614E656D6568)
    {
      v14 = MEMORY[0x1E69B2850];
      goto LABEL_156;
    }

    v23 = *(&__dst + 1);
    if ((v6 & 0x80) != 0 && *(&__dst + 1) == 36)
    {
      goto LABEL_113;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_146;
    }
  }

  if (v23 == 14)
  {
    p_dst = __dst;
LABEL_150:
    v37 = *p_dst;
    v38 = *(p_dst + 6);
    if (v37 == 0x6D69447475706E49 && v38 == 0x6E6F69736E656D69)
    {
      v14 = MEMORY[0x1E69B2858];
      goto LABEL_156;
    }
  }

LABEL_154:
  if (!sub_1D9D90E1C(&__dst, "SequenceLength"))
  {
    sub_1D9D90EA8("Unexpected mrlkey: ", &v48);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v41 = qword_1ECB71C30;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = &v44;
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v44.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v50 = v42;
      _os_log_error_impl(&dword_1D9D0A000, v41, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &v44);
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
  }

  v14 = MEMORY[0x1E69B2860];
LABEL_156:
  sub_1D9D896B0(*v14, a2);
  if (v47 < 0)
  {
    operator delete(__dst);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1D9D90DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D9D90E1C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1D9D9104C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_1D9D90EA8(const char *a1, const char **a2)
{
  sub_1D9D100A8(&v8);
  v4 = strlen(a1);
  sub_1D9D12280(&v8, a1, v4);
  v5 = *a2;
  v6 = strlen(v5);
  sub_1D9D12280(&v8, v5, v6);
  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v12);
}

void sub_1D9D91024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9D91038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

const void **sub_1D9D91064(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D91098(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D910CC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D91100(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1D9D91134(uint64_t a1, const void **a2)
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

void sub_1D9D912DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D912F0(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D912F0(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_1D9D91358(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9D91538(a1, a2, a3, a4);
  v7 = sub_1D9D90464((a1 + 7), a4)[7];
  v8 = sub_1D9D9013C(a1, a3);
  sub_1D9D91134((a1 + 10), a4)[7] = v8;
  v9 = sub_1D9D91134((a1 + 10), a4)[7];
  MRLNeuralNetworkTensorAppendData();
  v10 = *a1;
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v12)
  {
    if (v11 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = *(a4 + 8);
    }

    cf = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v15 = sub_1D9D91134((a1 + 10), a4)[7];
  MRLNeuralNetworkSetInputTensor();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D914F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9D91504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1D9D89420(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9D91524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

void sub_1D9D91538(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v4 = sub_1D9D90464(a1 + 56, a4);
  v5 = v4[7];
  if (v5)
  {
    v4[8] = v5;
    operator delete(v5);
    v4[7] = 0;
    v4[8] = 0;
    v4[9] = 0;
  }

  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
}

void sub_1D9D91608(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D91620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = v3 >> 1;
  v7 = a1 + 32 * (v3 >> 1);
  v9 = *(v7 + 8);
  v8 = (v7 + 8);
  v10 = *(v7 + 16);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v12 = a2 - 32;
  v13 = *(a2 - 24);
  v14 = *(a2 - 16);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (*v7 <= *(a2 - 32))
  {
    return;
  }

  v15 = *(a2 - 32);
  v16 = *(a2 - 24);
  v17 = *(a2 - 16);
  v18 = *(a2 - 8);
  *(a2 - 24) = 0;
  *(a2 - 16) = 0;
  *(a2 - 8) = 0;
  if (v17 != v16)
  {
    if (v17 - v16 < 0)
    {
      *(a2 - 32) = *v7;
      v31 = *(v7 + 24);
      *(a2 - 24) = *(v7 + 8);
      *(a2 - 8) = v31;
      *v8 = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      if (v3 >= 2)
      {
        v32 = ((16 * v6 - 16) & 0xFFFFFFFFFFFFFFE0) + a1;
        v34 = *(v32 + 8);
        v33 = *(v32 + 16);
        if (v33 == v34)
        {
          sub_1D9D84AB0();
        }

        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_39:
        sub_1D9D84AB0();
      }
    }

    else
    {
      v35 = v18;
      v36 = v17;
      __p = v16;
      *v12 = *v7;
      v23 = *(a2 - 24);
      if (v23)
      {
        *(a2 - 16) = v23;
        operator delete(v23);
        *(a2 - 24) = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      v8 = (v7 + 8);
      *(a2 - 24) = *(v7 + 8);
      *(a2 - 8) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      if (v6)
      {
        v24 = (a1 + 32 * ((v6 - 1) >> 1));
        v25 = *v24;
        v27 = *(v24 + 1);
        v26 = *(v24 + 2);
        if (v26 == v27)
        {
          operator new();
        }

        if (((v26 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_39;
      }

LABEL_26:
      v17 = v36;
      v16 = __p;
      v18 = v35;
    }

    v29 = (v7 + 24);
    *v7 = v15;
    v30 = (v7 + 16);
    goto LABEL_32;
  }

  v35 = v18;
  v36 = v17;
  __p = v16;
  v19 = a1 + 32 * (v3 >> 1);
  do
  {
    v7 = v19;
    *v12 = *v19;
    v20 = *(v12 + 8);
    if (v20)
    {
      *(v12 + 16) = v20;
      operator delete(v20);
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
    }

    v8 = (v19 + 8);
    *(v12 + 8) = *(v19 + 8);
    *(v12 + 24) = *(v19 + 24);
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    if (!v6)
    {
      goto LABEL_26;
    }

    v6 = (v6 - 1) >> 1;
    v19 = a1 + 32 * v6;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_39;
    }

    v12 = v7;
  }

  while (*v19 > v15);
  v28 = *(v7 + 8);
  v29 = (v7 + 24);
  v30 = (v7 + 16);
  *v7 = v15;
  if (v28)
  {
    *v30 = v28;
    operator delete(v28);
    *v8 = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
  }

  v17 = v36;
  v16 = __p;
  v18 = v35;
LABEL_32:
  *v8 = v16;
  *v30 = v17;
  *v29 = v18;
}

void sub_1D9D919A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D919E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v5 = *a1;
    v22 = *(a1 + 8);
    v6 = *(a1 + 24);
    v19 = v6;
    v20 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v7 = (a3 - 2) >> 1;
    v8 = a1;
    *(a1 + 8) = 0;
    do
    {
      v9 = v8 + 32 * v4 + 32;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v13 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (v12 != v13)
        {
          if (((v12 - v13) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1D9D84AB0();
        }

        v14 = *(v9 + 40);
        v15 = *(v9 + 48);
        if (v15 != v14)
        {
          if (((v15 - v14) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1D9D84AB0();
        }

        if (*v9 > *(v9 + 32))
        {
          v9 += 32;
          v4 = v11;
        }
      }

      *v8 = *v9;
      v16 = *(v8 + 8);
      if (v16)
      {
        *(v8 + 16) = v16;
        operator delete(v16);
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
      }

      *(v8 + 8) = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v8 = v9;
    }

    while (v4 <= v7);
    if (a2 - 32 == v9)
    {
      *v9 = v5;
      *(v9 + 8) = v22;
      *(v9 + 16) = v20;
      *(v9 + 24) = v19;
    }

    else
    {
      *v9 = *(a2 - 32);
      v17 = *(a2 - 8);
      *(v9 + 8) = *(a2 - 24);
      *(v9 + 24) = v17;
      *(a2 - 32) = v5;
      *(a2 - 24) = v22;
      *(a2 - 16) = v20;
      *(a2 - 8) = v19;

      sub_1D9D91620(a1, v9 + 32, (v9 + 32 - a1) >> 5);
    }
  }
}