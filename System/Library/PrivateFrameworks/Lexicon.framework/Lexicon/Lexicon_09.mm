void sub_1B5D6BC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6BCC0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D594D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6BD00(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D6BD38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59470;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6BDCC(uint64_t a1, _DWORD **a2, int *a3)
{
  v6 = 0;
  result = (*(*(a1 + 8) + 112))();
  if (result)
  {
    result = sub_1B5CF7770(*a2, &v6);
    if (result)
    {
      if ((v6 & 0x7FFFFF) == 0x7FFFFF)
      {
        return 0;
      }

      else
      {
        *a3 = v6 & 0x7FFFFF;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D6BE80(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F2D59470;
  v11[1] = a4;
  v11[3] = v11;
  sub_1B5D614DC(v12, v11);
  sub_1B5D6B004(a1 + 8, a2, a3, v12, a5);
  sub_1B5D11AAC(v12);
  result = sub_1B5D615AC(v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6BF40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6BF64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D59470;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6B230((a1 + 8), a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6C01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(&v10);
  (*(*a1 + 120))(&v11, a1, &v10, a2, a3);
  sub_1B5D6AD44(&v10);
  v8 = (*(*a1 + 128))(a1, &v11, a4);
  sub_1B5D6AD44(&v11);
  return v8;
}

void sub_1B5D6C124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D6AD44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6C14C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v51[0] = 0;
  v51[1] = 0;
  v50 = v51;
  if (v4 == v3)
  {
LABEL_13:
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v50, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v52, v16, 0, v19 - 1, &v47);
        v20 = *sub_1B5D624A4(&v50, &v52);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v52.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v48, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v47, v29, 0, v28, &v52);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v47.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v49 == sub_1B5D030FC(&v48, &__str))
            {
              v32 = *sub_1B5D624A4(&v50, &v47);
              if (v32 > *sub_1B5D624A4(&v50, &__str))
              {
                v33 = *sub_1B5D624A4(&v50, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v52, &__str, 0, v34 - 1, v53);
                v35 = *sub_1B5D624A4(&v50, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v52.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v48, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v52, 0, sizeof(v52));
    memset(&v47, 0, sizeof(v47));
    if (v48 != v49)
    {
      v41 = v52.__r_.__value_.__l.__size_;
      if (v52.__r_.__value_.__l.__size_ >= v52.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v52, &v48[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v48[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v52.__r_.__value_.__l.__size_, v48[1].__r_.__value_.__l.__size_, v48[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v48[1].__r_.__value_.__r.__words[1];
          *(v52.__r_.__value_.__l.__size_ + 16) = v48[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v52.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    v44 = sub_1B5D6B418(a1 + 8, &v52, &v47);
    if (v47.__r_.__value_.__r.__words[0])
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47.__r_.__value_.__r.__words[0] = &v52;
    sub_1B5CE5D7C(&v47);
    sub_1B5D0C050(v49[0]);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = 0;
      v10 = v3 + 24 * v8;
      while (1)
      {
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v10 + 8);
        }

        if (v9 > v11)
        {
          break;
        }

        v12 = *sub_1B5D624A4(a1 + 32, v10);
        std::string::basic_string(&v52, v10, 0, v9, &v48);
        v48 = &v52;
        v13 = sub_1B5D5F6C8(&v50, &v52);
        *(v13 + 56) = v12 + *(v13 + 56);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        ++v9;
      }

      if (*(*a3 + 4 * v8) == 0x7FFFFF)
      {
        break;
      }

      ++v8;
      v3 = *a2;
      v4 = a2[1];
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
      {
        goto LABEL_13;
      }
    }

    v44 = 0;
  }

  sub_1B5D0C050(v51[0]);
  return v44;
}

void sub_1B5D6C710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6C7EC(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D6C8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D6C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D593F0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6C980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6C9A0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6CA04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D593F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D59370;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6CB3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6CB5C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D593D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6CBC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59370;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6CC54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D6CCB0(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D6CE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D6CE48(uint64_t a1)
{
  *a1 = &unk_1F2D59298;
  sub_1B5D0C050(*(a1 + 40));
  sub_1B5D6AB40(a1 + 8);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D6CEB8(uint64_t a1)
{
  *a1 = &unk_1F2D59298;
  sub_1B5D0C050(*(a1 + 40));
  sub_1B5D6AB40(a1 + 8);
  return a1;
}

void *sub_1B5D6CF08(void *a1)
{
  *a1 = &unk_1F2D56850;
  v2 = (a1 + 2);
  sub_1B5D132A8(a1 + 1, 0);
  sub_1B5D13120(v2);
  return a1;
}

uint64_t sub_1B5D6CF68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5E0F0;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D13558((a1 + 8), a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6D020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6D050(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6D090(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D6D0C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5E0F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6D15C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D137A8((a1 + 8), a2, &v5);
  if (result)
  {
    if ((v5 & 0x7FFFFF) == 0x7FFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0x7FFFFF;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D6D1D4(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5E0F0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D138B4(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6D294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6D2B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5E0F0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D13CE4(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6D370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = (*(*a1 + 104))(a1);
  v11[1] = v8;
  v12[0] = (*(*a1 + 120))(a1, v11, a2, a3);
  v12[1] = v9;
  return (*(*a1 + 128))(a1, v12, a4);
}

BOOL sub_1B5D6D480(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v51[0] = 0;
  v51[1] = 0;
  v50 = v51;
  if (v4 == v3)
  {
LABEL_13:
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v50, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v52, v16, 0, v19 - 1, &v47);
        v20 = *sub_1B5D624A4(&v50, &v52);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v52.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v48, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v47, v29, 0, v28, &v52);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v47.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v49 == sub_1B5D030FC(&v48, &__str))
            {
              v32 = *sub_1B5D624A4(&v50, &v47);
              if (v32 > *sub_1B5D624A4(&v50, &__str))
              {
                v33 = *sub_1B5D624A4(&v50, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v52, &__str, 0, v34 - 1, v53);
                v35 = *sub_1B5D624A4(&v50, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v52.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v48, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v52, 0, sizeof(v52));
    memset(&v47, 0, sizeof(v47));
    if (v48 != v49)
    {
      v41 = v52.__r_.__value_.__l.__size_;
      if (v52.__r_.__value_.__l.__size_ >= v52.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v52, &v48[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v48[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v52.__r_.__value_.__l.__size_, v48[1].__r_.__value_.__l.__size_, v48[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v48[1].__r_.__value_.__r.__words[1];
          *(v52.__r_.__value_.__l.__size_ + 16) = v48[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v52.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    v44 = sub_1B5D13F00((a1 + 8), &v52, &v47);
    if (v47.__r_.__value_.__r.__words[0])
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47.__r_.__value_.__r.__words[0] = &v52;
    sub_1B5CE5D7C(&v47);
    sub_1B5D0C050(v49[0]);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = 0;
      v10 = v3 + 24 * v8;
      while (1)
      {
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v10 + 8);
        }

        if (v9 > v11)
        {
          break;
        }

        v12 = *sub_1B5D624A4(a1 + 56, v10);
        std::string::basic_string(&v52, v10, 0, v9, &v48);
        v48 = &v52;
        v13 = sub_1B5D5F6C8(&v50, &v52);
        *(v13 + 56) = v12 + *(v13 + 56);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        ++v9;
      }

      if (*(*a3 + 4 * v8) == 0x7FFFFF)
      {
        break;
      }

      ++v8;
      v3 = *a2;
      v4 = a2[1];
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
      {
        goto LABEL_13;
      }
    }

    v44 = 0;
  }

  sub_1B5D0C050(v51[0]);
  return v44;
}

void sub_1B5D6DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6DB20(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D6DBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1B5D6DC08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __len = 0;
  v3 = sub_1B5CF468C(*(a1 + 16), &__len);
  return sub_1B5D5EC18(a2, v3, __len);
}

uint64_t sub_1B5D6DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5E070;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6DCF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6DD14(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E0D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6DD78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5E070;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6DE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5DFF0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6DEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6DED0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5E050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6DF34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DFF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D6DFC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D6E024(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D6E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D6E1BC(uint64_t a1)
{
  *a1 = &unk_1F2D5DF18;
  sub_1B5D0C050(*(a1 + 64));
  *(a1 + 8) = &unk_1F2D56850;
  sub_1B5D132A8((a1 + 16), 0);
  sub_1B5D13120(a1 + 24);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D6E258(uint64_t a1)
{
  *a1 = &unk_1F2D5DF18;
  sub_1B5D0C050(*(a1 + 64));
  *(a1 + 8) = &unk_1F2D56850;
  sub_1B5D132A8((a1 + 16), 0);
  sub_1B5D13120(a1 + 24);
  return a1;
}

void *sub_1B5D6E2D4(void *a1)
{
  *a1 = &unk_1F2D5DD58;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_1B5D6E334(a1);
}

void *sub_1B5D6E334(void *a1)
{
  *a1 = &unk_1F2D5CD10;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = &unk_1F2D56948;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8052888210);
    a1[4] = 0;
  }

  return a1;
}

uint64_t sub_1B5D6E3B8(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  for (i = 1; ; ++i)
  {
    v7 = *(v5 + 24);
    v8 = *(v7 + 4 * *a2);
    if (i != (*(v7 + 4 * ((v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i)) & 0x800000FF))
    {
      break;
    }

    v9 = (v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i;
    result = sub_1B5D6E468(*(a3 + 24), i);
    if (i > 0xFE)
    {
      return result;
    }

LABEL_6:
    ;
  }

  if (i <= 0xFE)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B5D6E468(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_1B5D6E4B8(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 != -1)
  {
    v7 = result;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v26 = v4;
    sub_1B5D6E78C(v27, __p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    if (*(&v28 + 1))
    {
      do
      {
        v8 = *(&v27[0] + 1);
        v9 = v28;
        v10 = v28 >> 7;
        v11 = v28 & 0x7F;
        v12 = *(*(&v27[0] + 1) + 8 * (v28 >> 7)) + 32 * v11;
        if (*(v12 + 23) < 0)
        {
          sub_1B5CE4AC4(__p, *v12, *(v12 + 8));
          v8 = *(&v27[0] + 1);
          v9 = v28;
          v10 = v28 >> 7;
          v11 = v28 & 0x7F;
        }

        else
        {
          v13 = *v12;
          v25 = *(v12 + 16);
          *__p = v13;
        }

        v26 = *(v12 + 24);
        v14 = *(v8 + 8 * v10) + 32 * v11;
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
          v9 = v28;
        }

        v15 = v9 + 1;
        v28 = __PAIR128__(*(&v28 + 1), v15) + __PAIR128__(-1, 0);
        if (v15 >= 0x100)
        {
          operator delete(**(&v27[0] + 1));
          *(&v27[0] + 1) += 8;
          *&v28 = v28 - 128;
        }

        v22 = 0;
        if (*(*v7 + 128))(v7, &v26, &v22) && (v25 >= 0 ? (v16 = __p) : (v16 = __p[0]), v25 >= 0 ? (v17 = HIBYTE(v25)) : (v17 = __p[1]), sub_1B5D136E8(*(a3 + 24), v22, v16, v17, &v23), (v23))
        {
          v18 = 1;
        }

        else
        {
          if ((a4 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v19 = HIBYTE(v25);
          if (v25 < 0)
          {
            v19 = __p[1];
          }

          if (v19 < a4)
          {
LABEL_25:
            v29[0] = &unk_1F2D5CF68;
            v29[1] = v27;
            v29[2] = __p;
            v29[3] = v29;
            (*(*v7 + 144))(v7, &v26, v29);
            sub_1B5D6ECA0(v29);
          }

          v18 = 0;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v28 + 1))
        {
          v20 = v18;
        }

        else
        {
          v20 = 1;
        }
      }

      while ((v20 & 1) == 0);
    }

    result = sub_1B5D75D4C(v27);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6E748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D75D4C(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_1B5D6E78C(uint64_t a1, __n128 *a2)
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
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1B5D051D8(v13);
    }

    *(a1 + 32) = v8 - 128;
    v16 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_1B5D53F00(a1, &v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v14[1].n128_u64[0] = a2[1].n128_u64[0];
  *v14 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v14[1].n128_u64[1] = a2[1].n128_u64[1];
  ++*(a1 + 40);
  return result;
}

void sub_1B5D6EC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6ECA0(uint64_t a1)
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

uint64_t sub_1B5D6ED2C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CFD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D6ED6C(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  sub_1B5D62618(&__p, *(a1 + 16), *a2);
  v7 = *a3;
  sub_1B5D6E78C(v4, &__p);
  if (v6 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1B5D6EDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D6EDEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5CF68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D6EE88(void *a1, unsigned int *a2, int *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v8 = a1[3];
    v9 = *(v8 + 4 * v7);
    if ((v9 & 0x100) != 0)
    {
      v10 = *(v8 + 4 * ((v9 >> 10 << ((v9 >> 6) & 8)) ^ v7)) & 0x7FFFFFFF;
    }

    else
    {
      v10 = -1;
    }

    *a3 = v10;
    return v10 != -1;
  }

  return result;
}

uint64_t sub_1B5D6EF2C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = *(a1 + 4 * a2);
  if (a4)
  {
    while (1)
    {
      v5 = *a3++;
      a2 = a2 ^ (v4 >> 10 << ((v4 >> 6) & 8)) ^ v5;
      v4 = *(a1 + 4 * a2);
      if ((v4 & 0x800000FF) != v5)
      {
        break;
      }

      if (!--a4)
      {
        return a2;
      }
    }

    return -1;
  }

  v6 = *a3;
  if (*a3)
  {
    v7 = a3 + 1;
    while (1)
    {
      a2 = a2 ^ v6 ^ (v4 >> 10 << ((v4 >> 6) & 8));
      v4 = *(a1 + 4 * a2);
      if ((v4 & 0x800000FF) != v6)
      {
        break;
      }

      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        return a2;
      }
    }

    return -1;
  }

  return a2;
}

uint64_t sub_1B5D6EFD0(uint64_t a1, const void *a2, size_t a3)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = (*(*a1 + 104))(a1);
  v10[0] = (*(*a1 + 120))(a1, v10, a2, a3);
  result = (*(*a1 + 112))(a1, v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D6F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D11AAC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D6F224(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CF48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D6F264(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D136E8(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D6F34C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5CEE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D6F3F8(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  result = off_1EE895080();
  v9 = *(v8 + 24);
  v10 = (*v9 >> 10 << ((*v9 >> 6) & 8));
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v10 ^ v14;
      v16 = v9[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v10 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 <= 0x7F)
        {
          v17 = result + 16 * v13;
          *v17 = v9[v10] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (!*a2)
    {
      return result;
    }

    v13 = 0;
    v19 = 1;
    do
    {
      v20 = v10 ^ v18;
      v21 = v9[v20];
      if ((v21 & 0x800000FF) != v18)
      {
        break;
      }

      v10 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
      if ((v21 & 0x100) != 0)
      {
        if (v13 <= 0x7F)
        {
          v22 = result + 16 * v13;
          *v22 = v9[v10] & 0x7FFFFFFF;
          *(v22 + 8) = v19;
        }

        ++v13;
      }

      v18 = a2[v19++];
    }

    while (v18);
  }

  v27 = 0;
  if (v13)
  {
    v23 = v13 - 1;
    v24 = (result + 8);
    do
    {
      v25 = v23;
      if (a3 >= *v24)
      {
        v26 = *v24;
      }

      else
      {
        v26 = a3;
      }

      result = sub_1B5D136E8(*(a4 + 24), *(v24 - 2), a2, v26, &v27);
      if (v27)
      {
        break;
      }

      v23 = v25 - 1;
      v24 += 2;
    }

    while (v25);
  }

  return result;
}

BOOL sub_1B5D6F588(uint64_t a1, _BYTE *a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 24);
  v5 = *v4;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = *a2++;
      v6 ^= (v5 >> 10 << ((v5 >> 6) & 8)) ^ v7;
      v5 = v4[v6];
      if ((v5 & 0x800000FF) != v7)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = *a2;
    if (*a2)
    {
      v6 = 0;
      v9 = a2 + 1;
      while (1)
      {
        v6 ^= (v5 >> 10 << ((v5 >> 6) & 8)) ^ v8;
        v5 = v4[v6];
        if ((v5 & 0x800000FF) != v8)
        {
          break;
        }

        v10 = *v9++;
        v8 = v10;
        if (!v10)
        {
LABEL_10:
          if ((v5 & 0x100) != 0)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    else
    {
      v6 = 0;
      if ((v5 & 0x100) != 0)
      {
LABEL_13:
        v11 = v4[v6 ^ (v5 >> 10 << ((v5 >> 6) & 8))] & 0x7FFFFFFF;
        goto LABEL_14;
      }
    }
  }

  v11 = -1;
LABEL_14:
  *a4 = v11;
  return v11 != -1;
}

uint64_t sub_1B5D6F650(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[3] = 0;
  v6 = a1[4];
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8052888210);
    a1[4] = 0;
  }

  a1[2] = a3;
  a1[3] = a2;
  return 1;
}

void sub_1B5D6F6AC(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  memset(v18, 0, sizeof(v18));
  memset(__p, 0, sizeof(__p));
  memset(v16, 0, sizeof(v16));
  sub_1B5D6F85C(v18, v8);
  sub_1B5D6F900(__p, v8);
  sub_1B5D6F9A0(v16, v8);
  if (v6 != v7)
  {
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    do
    {
      v12 = (*a2 + v9);
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      v15 = v12;
      sub_1B5D140B0(v18, &v15);
      v13 = *a2 + v9;
      v14 = *(v13 + 23);
      if ((v14 & 0x8000000000000000) != 0)
      {
        v14 = *(v13 + 8);
      }

      v15 = v14;
      sub_1B5D14180(__p, &v15);
      LODWORD(v15) = *(*a3 + 4 * v10);
      sub_1B5D0DE58(v16, &v15);
      ++v10;
      v9 += 24;
    }

    while (v11 != v10);
  }

  sub_1B5D6FA44(a1 + 8, v8, v18[0], __p[0], v16[0]);
}

void sub_1B5D6F81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D6F85C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1B5D0F384(a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

void *sub_1B5D6F900(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1B5CE1E28(result, a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

void *sub_1B5D6F9A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_1B5D0DF30(a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

void sub_1B5D6FA44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  memset(v42, 0, 60);
  if (!a5)
  {
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = v9;
      v9 *= 2;
    }

    while (v11 < v5);
    if (v10)
    {
      sub_1B5D70A0C(v42 + 8, v10);
    }

    operator new[]();
  }

  v6 = a4;
  v54 = 0;
  v52 = 0uLL;
  v53 = 0uLL;
  v51 = 0uLL;
  v49 = 0uLL;
  memset(v50, 0, sizeof(v50));
  v47 = 0uLL;
  v48 = 0uLL;
  v55[0] = 0;
  sub_1B5D71FAC(&v51, 0x400u, v55);
  v7 = DWORD2(v53);
  if (DWORD2(v53))
  {
    v8 = v47 + 12 * *(v53 + 4 * DWORD2(v53) - 4);
    *(v8 + 7) = 0;
    *v8 = 0;
    DWORD2(v53) = v7 - 1;
  }

  else
  {
    sub_1B5D71DE4(&v47);
  }

  sub_1B5D72034(v50);
  sub_1B5D72084(&v48);
  if (DWORD2(v49) == HIDWORD(v49))
  {
    sub_1B5D707FC(&v49, DWORD2(v49) + 1);
  }

  ++DWORD2(v49);
  v54 = 1;
  *(v47 + 8) = -1;
  v55[0] = 0;
  sub_1B5D71F58(&v52, v55);
  if (!v5)
  {
    goto LABEL_45;
  }

  v12 = 0;
  v38 = v6;
  v39 = v5;
LABEL_14:
  v13 = *(a3 + 8 * v12);
  if (v6)
  {
    v14 = *(v6 + 8 * v12);
  }

  else
  {
    v15 = 0;
      ;
    }

    v14 = v15 - 1;
  }

  v17 = *(a5 + 4 * v12);
  if (v17 < 0)
  {
    v36 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1146: exception: failed to insert key: negative value";
  }

  else if (v14)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = *(v47 + 12 * v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *(v13 + v19);
      if (v19 < v14 && !*(v13 + v19))
      {
        break;
      }

      v22 = v47 + 12 * v20;
      v23 = *(v22 + 8);
      if (v21 < v23)
      {
        v36 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1167: exception: failed to insert key: wrong key order";
        goto LABEL_62;
      }

      if (v21 > v23)
      {
        *(v22 + 10) = 1;
        sub_1B5D71984(&v47, v20);
LABEL_30:
        if (v19 <= v14)
        {
          do
          {
            if (v19 >= v14)
            {
              v25 = 0;
            }

            else
            {
              v25 = *(v13 + v19);
            }

            v26 = DWORD2(v53);
            if (DWORD2(v53))
            {
              v27 = v47;
              v24 = *(v53 + 4 * DWORD2(v53) - 4);
              v28 = v47 + 12 * v24;
              *(v28 + 7) = 0;
              *v28 = 0;
              DWORD2(v53) = v26 - 1;
            }

            else
            {
              v24 = DWORD2(v47);
              sub_1B5D71DE4(&v47);
              v27 = v47;
            }

            v55[0] = v24;
            v29 = (v27 + 12 * v18);
            v30 = *v29;
            if (!*v29)
            {
              *(v27 + 12 * v24 + 9) = 1;
            }

            v31 = v27 + 12 * v24;
            *(v31 + 4) = v30;
            *(v31 + 8) = v25;
            *v29 = v24;
            sub_1B5D71F58(&v52, v55);
            ++v19;
            v18 = v24;
          }

          while (v19 <= v14);
        }

        else
        {
          v24 = v18;
        }

        *(v47 + 12 * v24) = v17;
        v6 = v38;
        v5 = v39;
LABEL_42:
        ++v12;
        if (*&v42[0])
        {
          (*&v42[0])(v12, v5 + 1);
        }

        if (v12 == v5)
        {
LABEL_45:
          sub_1B5D71984(&v47, 0);
          v32 = *(v47 + 8);
          v33 = *v47;
          if (v32)
          {
            if (*(v47 + 9))
            {
              v34 = 2;
            }

            else
            {
              v34 = 0;
            }

            v35 = v34 | (4 * v33);
          }

          else
          {
            v35 = 2 * v33;
          }

          *v48 = v35 | *(v47 + 10);
          *v49 = v32;
          if (v47)
          {
            MEMORY[0x1B8C880C0](v47, 0x1000C8077774924);
            *&v47 = 0;
          }

          *(&v47 + 1) = 0;
          if (v51)
          {
            MEMORY[0x1B8C880C0](v51, 0x1000C8077774924);
            *&v51 = 0;
          }

          *(&v51 + 1) = 0;
          if (v52)
          {
            MEMORY[0x1B8C880C0](v52, 0x1000C8077774924);
            *&v52 = 0;
          }

          *(&v52 + 1) = 0;
          if (v53)
          {
            MEMORY[0x1B8C880C0](v53, 0x1000C8077774924);
            *&v53 = 0;
          }

          *(&v53 + 1) = 0;
          operator new[]();
        }

        goto LABEL_14;
      }

      ++v19;
      v18 = *(v47 + 12 * v18);
      if (v19 > v14)
      {
        goto LABEL_42;
      }
    }

    v36 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1162: exception: failed to insert key: invalid null character";
  }

  else
  {
    v36 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1148: exception: failed to insert key: zero-length key";
  }

LABEL_62:
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F2D56920;
  exception[1] = v36;
  __cxa_throw(exception, &unk_1F2D574C0, std::exception::~exception);
}

void sub_1B5D70608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  __cxa_end_catch();
  sub_1B5D70B94(&a27);
  sub_1B5D70650(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D70650(uint64_t a1)
{
  sub_1B5D70718((a1 + 8));
  v2 = *(a1 + 24);
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C80CBA68D63);
    *(a1 + 24) = 0;
  }

  sub_1B5D70764(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8052888210);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  sub_1B5D707B4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    MEMORY[0x1B8C880C0](v4, 0x1000C80CBA68D63);
    *(a1 + 24) = 0;
  }

  sub_1B5D70718((a1 + 8));
  v5 = *(a1 + 8);
  if (v5)
  {
    MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_1B5D70718(uint64_t *a1)
{
  sub_1B5D70990(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1B8C880C0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  return result;
}

uint64_t sub_1B5D70764(uint64_t a1)
{
  if (*(a1 + 8))
  {
    *(a1 + 8) = 0;
  }

  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1B8C880C0]();
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *sub_1B5D707B4(void *a1)
{
  sub_1B5D70764(a1);
  if (*a1)
  {
    MEMORY[0x1B8C880C0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

void sub_1B5D707FC(uint64_t a1, unsigned int a2)
{
  if (a2 < 2 * *(a1 + 12))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

const char *sub_1B5D70940(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

void sub_1B5D70958(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D70990(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 > a2)
  {
    *(a1 + 8) = a2;
    v4 = a2;
  }

  if (*(a1 + 12) < a2)
  {
    sub_1B5D70A0C(a1, a2);
  }

  if (v4 < a2)
  {
    bzero((*a1 + 4 * v4), 4 * (~v4 + a2) + 4);
    *(a1 + 8) = a2;
  }
}

void sub_1B5D70A0C(uint64_t a1, unsigned int a2)
{
  if (a2 < 2 * *(a1 + 12))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t sub_1B5D70B50(uint64_t a1)
{
  sub_1B5D70764(a1);
  result = *(a1 + 16);
  if (result)
  {
    result = MEMORY[0x1B8C880C0](result, 0x1000C8052888210);
    *(a1 + 16) = 0;
  }

  return result;
}

void *sub_1B5D70B94(void *a1)
{
  sub_1B5D70764(a1);
  sub_1B5D70764((a1 + 2));
  sub_1B5D70764((a1 + 4));
  sub_1B5D70B50((a1 + 6));
  sub_1B5D70764((a1 + 10));
  sub_1B5D70764((a1 + 12));
  sub_1B5D70764((a1 + 14));
  a1[16] = 0;
  sub_1B5D71408(a1 + 14);
  sub_1B5D71408(a1 + 12);
  sub_1B5D707B4(a1 + 10);
  sub_1B5D70B50((a1 + 6));
  v2 = a1[8];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8052888210);
    a1[8] = 0;
  }

  sub_1B5D707B4(a1 + 6);
  sub_1B5D707B4(a1 + 4);
  sub_1B5D70764((a1 + 2));
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    a1[2] = 0;
  }

  sub_1B5D70764(a1);
  if (*a1)
  {
    MEMORY[0x1B8C880C0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

void sub_1B5D70C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 + 256;
  if ((v2 >> 8) - 16 > 0xFFFFFFEE)
  {
    sub_1B5D70990(a1 + 8, v2 + 256);
  }

  else
  {
    v4 = ((v2 >> 8) - 16) << 8;
    v5 = *(a1 + 24);
    v6 = 9;
    v7 = ((v2 >> 8) - 16) << 8;
    while (*(v5 + 3072 * ((v2 >> 8) & 0xF) + v6) == 1)
    {
      LOBYTE(v7) = v7 + 1;
      v6 += 12;
      if (v6 == 3081)
      {
        LOBYTE(v7) = 0;
        break;
      }
    }

    v8 = 3072 * ((v2 >> 8) & 0xF);
    v9 = 256;
    do
    {
      if ((*(v5 + v8 + 8) & 1) == 0)
      {
        if (v4 >= *(a1 + 16))
        {
          sub_1B5D70C88(a1);
          v5 = *(a1 + 24);
        }

        v10 = (v5 + v8);
        v11 = *(v5 + v8 + 4);
        if (v4 == *(a1 + 56))
        {
          *(a1 + 56) = v11;
          if (v4 == v11)
          {
            *(a1 + 56) = *(a1 + 16);
          }
        }

        v12 = *v10;
        *(v5 + 12 * (*v10 & 0xFFF) + 4) = v11;
        *(v5 + 12 * (v10[1] & 0xFFF)) = v12;
        *(v10 + 8) = 1;
        *(*(a1 + 8) + 4 * v4) = v7 ^ v4;
      }

      ++v4;
      v8 += 12;
      --v9;
    }

    while (v9);
    sub_1B5D70990(a1 + 8, v2 + 256);
    if (v2 <= 0xFFFFFEFF)
    {
      v13 = *(a1 + 24);
      v14 = 256;
      v15 = v2;
      do
      {
        *(v13 + 12 * (v15++ & 0xFFF) + 8) = 0;
        --v14;
      }

      while (v14);
    }
  }

  v16 = *(a1 + 24);
  if (v2 + 1 < v3)
  {
    v17 = v2;
    do
    {
      *(v16 + 12 * (v17 & 0xFFF) + 4) = v17 + 1;
      *(v16 + 12 * ((v17 + 1) & 0xFFF)) = v17;
      v18 = v17 + 2;
      ++v17;
    }

    while (v18 != v3);
  }

  v19 = 12 * (v2 & 0xFFF);
  *(v16 + v19) = v2 + 255;
  v20 = *(a1 + 56);
  v21 = 12 * (v20 & 0xFFF);
  v22 = *(v16 + v21);
  *(v16 + v19) = v22;
  *(v16 + 12 * ((v2 + 255) & 0xFFF) + 4) = v20;
  *(v16 + 12 * (v22 & 0xFFF) + 4) = v2;
  *(v16 + v21) = v2 + 255;
}

void sub_1B5D70E98(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    if (*(a1 + 40))
    {
      *(a1 + 40) = 0;
    }

    if (a3 < a4)
    {
      v12 = -1;
      v13 = a3;
      while (1)
      {
        v14 = a2[2];
        if (v14)
        {
          if (*(v14 + 8 * v13) > a5)
          {
            v52 = *(*(a2[1] + 8 * v13) + a5);
            LODWORD(v15) = v52;
            if (!v52)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v50 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1731: exception: failed to build double-array: invalid null character";
              goto LABEL_84;
            }

            goto LABEL_22;
          }

          v52 = 0;
        }

        else
        {
          v52 = *(*(a2[1] + 8 * v13) + a5);
          LODWORD(v15) = v52;
          if (v52)
          {
            goto LABEL_22;
          }
        }

        v16 = a2[3];
        if (v16)
        {
          if ((*(v16 + 4 * v13) & 0x80000000) != 0)
          {
            goto LABEL_83;
          }
        }

        else if ((v13 & 0x80000000) != 0)
        {
LABEL_83:
          exception = __cxa_allocate_exception(0x10uLL);
          v50 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1733: exception: failed to build double-array: negative value";
LABEL_84:
          *exception = &unk_1F2D56920;
          exception[1] = v50;
          __cxa_throw(exception, &unk_1F2D574C0, std::exception::~exception);
        }

        if (v12 == -1)
        {
          if (v16)
          {
            v12 = *(v16 + 4 * v13);
          }

          else
          {
            v12 = v13;
          }
        }

        v15 = *a1;
        if (*a1)
        {
          v15(v13 + 1, *a2 + 1);
          LODWORD(v15) = 0;
        }

LABEL_22:
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_26;
        }

        v18 = *(*(a1 + 32) + (v17 - 1));
        if (v15 != v18)
        {
          if (v15 < v18)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v50 = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1748: exception: failed to build double-array: wrong key order";
            goto LABEL_84;
          }

LABEL_26:
          sub_1B5D713B4(a1 + 32, &v52);
        }

        if (a4 == ++v13)
        {
          v19 = v12 | 0x80000000;
          goto LABEL_30;
        }
      }
    }

    v19 = -1;
LABEL_30:
    v51 = v19;
    v20 = *(a1 + 56);
    v21 = *(a1 + 16);
    if (v20 < v21)
    {
      v23 = *(a1 + 24);
      v22 = *(a1 + 32);
      v26 = *v22;
      v24 = v22 + 1;
      v25 = v26;
      v27 = *(a1 + 56);
      do
      {
        v28 = v27 ^ v25;
        v29 = (v27 ^ v25) & 0xFFF;
        if ((*(v23 + 12 * v29 + 9) & 1) == 0 && (v28 == a6 || ((v28 ^ a6) & 0x1FE00000) == 0))
        {
          v30 = *(a1 + 40);
          if (v30 < 2)
          {
            goto LABEL_43;
          }

          v31 = v30 - 1;
          v32 = v24;
          while (1)
          {
            v33 = *v32++;
            if (*(v23 + 12 * (v29 ^ v33) + 8) == 1)
            {
              break;
            }

            if (!--v31)
            {
              goto LABEL_43;
            }
          }
        }

        v27 = *(v23 + 12 * (v27 & 0xFFF) + 4);
      }

      while (v27 != v20);
    }

    v28 = v21 | a6;
LABEL_43:
    sub_1B5D71330((*(a1 + 8) + 4 * a6), v28 ^ a6);
    if (*(a1 + 40))
    {
      v34 = 0;
      v35 = *(a1 + 32);
      do
      {
        v36 = v28 ^ *(v35 + v34);
        if (*(a1 + 16) <= v36)
        {
          sub_1B5D70C88(a1);
        }

        if (*(a1 + 56) == v36)
        {
          v37 = v36 & 0xFFF;
          v38 = *(a1 + 24);
          v39 = *(v38 + 12 * (v36 & 0xFFF) + 4);
          *(a1 + 56) = v39;
          if (v39 == v36)
          {
            *(a1 + 56) = *(a1 + 16);
          }
        }

        else
        {
          v38 = *(a1 + 24);
          v37 = v36 & 0xFFF;
        }

        v40 = (v38 + 12 * v37);
        v41 = *v40;
        v42 = v40[1];
        *(v38 + 12 * (*v40 & 0xFFF) + 4) = v42;
        *(v38 + 12 * (v42 & 0xFFF)) = v41;
        *(v40 + 8) = 1;
        v35 = *(a1 + 32);
        if (*(v35 + v34))
        {
          *(*(a1 + 8) + 4 * v36) = *(v35 + v34);
        }

        else
        {
          v43 = *(a1 + 8);
          *(v43 + 4 * a6) |= 0x100u;
          *(v43 + 4 * v36) = v51;
        }

        ++v34;
      }

      while (v34 < *(a1 + 40));
    }

    else
    {
      v38 = *(a1 + 24);
    }

    *(v38 + 12 * (v28 & 0xFFF) + 9) = 1;
    if (a3 < a4)
    {
      v44 = a2[2];
      while (v44 && *(v44 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v45 = a2[2];
    if (v45 && *(v45 + 8 * a3) <= a5)
    {
      v46 = 0;
    }

    else
    {
      v46 = *(*(a2[1] + 8 * a3) + a5);
    }

    v47 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v45 && *(v45 + 8 * v47) <= a5)
        {
          v48 = 0;
        }

        else
        {
          v48 = *(*(a2[1] + 8 * v47) + a5);
        }

        if (v48 != v46)
        {
          sub_1B5D70E98(a1, a2, a3, v47, a5 + 1, v28 ^ v46);
          v45 = a2[2];
          if (v45 && *(v45 + 8 * v47) <= a5)
          {
            v46 = 0;
          }

          else
          {
            v46 = *(*(a2[1] + 8 * v47) + a5);
          }

          a3 = v47;
        }

        ++v47;
      }

      while (a4 != v47);
    }

    a6 = v28 ^ v46;
    ++a5;
  }
}

unsigned int *sub_1B5D71330(unsigned int *result, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F2D56920;
    exception[1] = "/AppleInternal/Library/BuildRoots/4~B_v4ugAaKm1SvYqNR_j_WeNVO3EdPp1fUmfDZDE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/darts_clone.h:1385: exception: failed to modify unit: too large offset";
    __cxa_throw(exception, &unk_1F2D574C0, std::exception::~exception);
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *result = *result & 0x800001FF | v2;
  return result;
}

uint64_t sub_1B5D713B4(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  if (v2 == *(result + 12))
  {
    sub_1B5D707FC(result, v2 + 1);
  }

  *(result + 8) = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

void *sub_1B5D71408(void *a1)
{
  sub_1B5D70764(a1);

  return sub_1B5D707B4(a1);
}

void sub_1B5D71440(uint64_t a1, unsigned int a2)
{
  if (a2 < 2 * *(a1 + 12))
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

unsigned int *sub_1B5D71584(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a2[2] + 4 * a3);
  v9 = v8 >> 2;
  v10 = v8 >> 7;
  v11 = a2[6];
  v12 = 1 << (v8 >> 2);
  if ((v12 & *(v11 + 4 * (v8 >> 7))) != 0 && (v13 = *(*(a1 + 48) + 4 * (sub_1B5D71928(v11, a2[8], v8 >> 2) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(a2[4] + v9))
    {
      v16 = *(a1 + 8);
      v17 = a4;
    }

    else
    {
      v17 = a4;
      v16 = *(a1 + 8);
      *(v16 + 4 * a4) |= 0x100u;
    }

    return sub_1B5D71330((v16 + 4 * v17), v14);
  }

  else
  {
    if (*(a1 + 40))
    {
      *(a1 + 40) = 0;
    }

    if (v8 >= 4)
    {
      v18 = v8 >> 2;
      do
      {
        v51 = *(a2[4] + v18);
        sub_1B5D713B4(a1 + 32, &v51);
        v19 = *(a2[2] + 4 * v18);
        v20 = __CFADD__(v18, 1);
        LODWORD(v18) = v18 + 1;
        v21 = v20;
      }

      while ((v19 & 1) != 0 && !v21);
    }

    v49 = v12;
    v22 = *(a1 + 56);
    v23 = *(a1 + 16);
    if (v22 < v23)
    {
      v25 = *(a1 + 24);
      v24 = *(a1 + 32);
      v28 = *v24;
      v26 = v24 + 1;
      v27 = v28;
      v29 = *(a1 + 56);
      do
      {
        v30 = v29 ^ v27;
        v31 = (v29 ^ v27) & 0xFFF;
        if ((*(v25 + 12 * v31 + 9) & 1) == 0 && (v30 == a4 || ((v30 ^ a4) & 0x1FE00000) == 0))
        {
          v32 = *(a1 + 40);
          if (v32 < 2)
          {
            goto LABEL_32;
          }

          v33 = v32 - 1;
          v34 = v26;
          while (1)
          {
            v35 = *v34++;
            if (*(v25 + 12 * (v31 ^ v35) + 8) == 1)
            {
              break;
            }

            if (!--v33)
            {
              goto LABEL_32;
            }
          }
        }

        v29 = *(v25 + 12 * (v29 & 0xFFF) + 4);
      }

      while (v29 != v22);
    }

    v30 = v23 | a4;
LABEL_32:
    v50 = v10;
    sub_1B5D71330((*(a1 + 8) + 4 * a4), v30 ^ a4);
    if (*(a1 + 40))
    {
      v36 = 0;
      v37 = *(a2[2] + 4 * a3) >> 2;
      do
      {
        v38 = v30 ^ *(*(a1 + 32) + v36);
        if (*(a1 + 16) <= v38)
        {
          sub_1B5D70C88(a1);
        }

        if (*(a1 + 56) == v38)
        {
          v39 = v38 & 0xFFF;
          v40 = *(a1 + 24);
          v41 = *(v40 + 12 * (v38 & 0xFFF) + 4);
          *(a1 + 56) = v41;
          if (v41 == v38)
          {
            *(a1 + 56) = *(a1 + 16);
          }
        }

        else
        {
          v40 = *(a1 + 24);
          v39 = v38 & 0xFFF;
        }

        v42 = (v40 + 12 * v39);
        v43 = *v42;
        v44 = v42[1];
        *(v40 + 12 * (v43 & 0xFFF) + 4) = v44;
        *(v40 + 12 * (v44 & 0xFFF)) = v43;
        *(v42 + 8) = 1;
        if (*(a2[4] + v37))
        {
          *(*(a1 + 8) + 4 * v38) = *(*(a1 + 32) + v36);
          v45 = *(a2[2] + 4 * v37);
        }

        else
        {
          v46 = *(a1 + 8);
          *(v46 + 4 * a4) |= 0x100u;
          v45 = *(a2[2] + 4 * v37);
          *(v46 + 4 * v38) = (v45 >> 1) | 0x80000000;
        }

        v37 = ((v45 << 31) >> 31) & (v37 + 1);
        ++v36;
      }

      while (v36 < *(a1 + 40));
    }

    else
    {
      v40 = *(a1 + 24);
    }

    *(v40 + 12 * (v30 & 0xFFF) + 9) = 1;
    result = a2[6];
    if ((result[v50] & v49) != 0)
    {
      result = sub_1B5D71928(result, a2[8], v9);
      *(*(a1 + 48) + 4 * (result - 1)) = v30;
    }

    do
    {
      if (*(a2[4] + v9))
      {
        result = sub_1B5D71584(a1, a2, v9, v30 ^ *(a2[4] + v9));
      }

      if (v9 == -1)
      {
        break;
      }

      v48 = *(a2[2] + 4 * v9);
      LODWORD(v9) = v9 + 1;
    }

    while ((v48 & 1) != 0);
  }

  return result;
}

uint64_t sub_1B5D71928(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v4 = *(a2 + v3);
  LODWORD(v3) = *(a1 + v3) & (0xFFFFFFFF >> ~a3);
  LODWORD(v3) = ((((((v3 >> 1) & 0x55555555) + (v3 & 0x55555555)) >> 2) & 0x33333333) + ((((v3 >> 1) & 0x55555555) + (v3 & 0x55555555)) & 0x33333333) + (((((((v3 >> 1) & 0x55555555) + (v3 & 0x55555555)) >> 2) & 0x33333333) + ((((v3 >> 1) & 0x55555555) + (v3 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v3 + BYTE1(v3) + ((v3 + (v3 >> 8)) >> 16)) & 0x3Fu) + v4;
}

uint64_t sub_1B5D71984(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 104);
  v4 = *(*(result + 96) + 4 * v3 - 4);
  if (v4 != a2)
  {
    v5 = a2;
    while (1)
    {
      *(v2 + 104) = v3 - 1;
      v6 = *(v2 + 88);
      if (*(v2 + 128) >= (v6 - (v6 >> 2)))
      {
        v7 = 2 * v6;
        sub_1B5D70764(v2 + 80);
        v63 = 0;
        result = sub_1B5D71FAC(v2 + 80, v7, &v63);
        v8 = *(v2 + 24);
        if (v8 >= 2)
        {
          v9 = *(v2 + 32);
          v10 = *(v2 + 16);
          for (i = 1; i < v8; ++i)
          {
            if (!*(v9 + i) || (*(v10 + 4 * i) & 2) != 0)
            {
              v12 = 0;
              v13 = i;
              do
              {
                v14 = *(v10 + 4 * v13);
                v15 = (v14 ^ ~(*(v9 + v13) << 24)) + (v14 << 15);
                v16 = 2057 * ((5 * (v15 ^ (v15 >> 12))) ^ ((5 * (v15 ^ (v15 >> 12))) >> 4));
                v12 ^= HIWORD(v16) ^ v16;
                v17 = __CFADD__(v13++, 1);
              }

              while (!v17 && (v14 & 1) != 0);
              v18 = *(v2 + 88);
              v19 = v12 % v18;
              v20 = *(v2 + 80);
              while (*(v20 + 4 * v19))
              {
                if (v19 + 1 == v18)
                {
                  v19 = 0;
                }

                else
                {
                  v19 = (v19 + 1);
                }
              }

              *(v20 + 4 * v19) = i;
              v8 = *(v2 + 24);
            }
          }
        }
      }

      if (!v4)
      {
        v50 = *(v2 + 80);
        v39 = *v50;
        if (*v50)
        {
          v37 = 0;
          v51 = *(v2 + 16);
          v52 = *(*v2 + 4);
          while (1)
          {
            v53 = v39;
            if (*(*v2 + 4))
            {
              v53 = v39;
              while ((*(v51 + 4 * v53) & 1) != 0)
              {
                ++v53;
                if (!*(*v2 + 12 * *(*v2 + 4) + 4))
                {
                  goto LABEL_62;
                }
              }
            }

            else
            {
LABEL_62:
              if ((*(v51 + 4 * v53) & 1) == 0)
              {
LABEL_74:
                *(*(v2 + 48) + 4 * (v39 >> 5)) |= 1 << v39;
                if (!v4)
                {
                  goto LABEL_79;
                }

                goto LABEL_78;
              }
            }

            v37 = (v37 + 1) % *(v2 + 88);
            v39 = v50[v37];
            if (!v39)
            {
              goto LABEL_64;
            }
          }
        }

        v37 = 0;
        v49 = 0;
        goto LABEL_77;
      }

      v21 = *v2;
      v22 = -1;
      v23 = 1;
      v24 = v4;
      do
      {
        v25 = v22;
        v26 = v23;
        LODWORD(v24) = *(v21 + 12 * v24 + 4);
        ++v22;
        ++v23;
      }

      while (v24);
      v27 = 0;
      v28 = v25 + 2;
      v29 = v4;
      do
      {
        v30 = (v21 + 12 * v29);
        v31 = *v30;
        if (*(v30 + 8))
        {
          if (*(v30 + 9))
          {
            v32 = 2;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32 | (4 * v31);
        }

        else
        {
          v33 = 2 * v31;
        }

        v34 = ((v33 | *(v30 + 10)) ^ ~(*(v30 + 8) << 24)) + ((v33 | *(v30 + 10)) << 15);
        v35 = 2057 * ((5 * (v34 ^ (v34 >> 12))) ^ ((5 * (v34 ^ (v34 >> 12))) >> 4));
        v27 ^= HIWORD(v35) ^ v35;
        v29 = v30[1];
      }

      while (v29);
      v36 = *(v2 + 88);
      v37 = v27 % v36;
      v38 = *(v2 + 80);
      v39 = *(v38 + 4 * v37);
      if (v39)
      {
        v40 = *(v2 + 16);
        v41 = *(v21 + 12 * v4 + 4);
        do
        {
          v42 = v39;
          if (*(v21 + 12 * v4 + 4))
          {
            v42 = v39;
            while ((*(v40 + 4 * v42) & 1) != 0)
            {
              ++v42;
              if (!*(v21 + 12 * *(v21 + 12 * v4 + 4) + 4))
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
LABEL_35:
            if ((*(v40 + 4 * v42) & 1) == 0)
            {
              v43 = v4;
              while (1)
              {
                v44 = (v21 + 12 * v43);
                v45 = *v44;
                if (*(v44 + 8))
                {
                  v46 = *(v44 + 9) ? 2 : 0;
                  v47 = v46 | (4 * v45);
                }

                else
                {
                  v47 = 2 * v45;
                }

                result = *(v40 + 4 * v42);
                if ((v47 | *(v44 + 10)) != result || *(v44 + 8) != *(*(v2 + 32) + v42))
                {
                  break;
                }

                v43 = v44[1];
                --v42;
                if (!v43)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          if (v37 + 1 == v36)
          {
            v37 = 0;
          }

          else
          {
            ++v37;
          }

          v39 = *(v38 + 4 * v37);
        }

        while (v39);
      }

      if (v28)
      {
        break;
      }

LABEL_64:
      v49 = 0;
      if (v4)
      {
        goto LABEL_65;
      }

LABEL_77:
      v39 = v49 + 1;
      *(*(v2 + 80) + 4 * v37) = v49 + 1;
      ++*(v2 + 128);
      if (!v4)
      {
        goto LABEL_79;
      }

      do
      {
LABEL_78:
        v61 = *(*v2 + 12 * v4 + 4);
        v64 = v4;
        result = sub_1B5D71F58(v2 + 112, &v64);
        v4 = v61;
      }

      while (v61);
LABEL_79:
      v3 = *(v2 + 104);
      v62 = *(v2 + 96) + 4 * v3;
      *(*v2 + 12 * *(v62 - 4)) = v39;
      v4 = *(v62 - 4);
      if (v4 == v5)
      {
        goto LABEL_80;
      }
    }

    do
    {
      sub_1B5D72034(v2 + 48);
      result = sub_1B5D72084(v2 + 16);
      v48 = *(v2 + 40);
      if (v48 == *(v2 + 44))
      {
        sub_1B5D707FC(v2 + 32, v48 + 1);
      }

      *(v2 + 40) = v48 + 1;
      --v26;
    }

    while (v26);
    v49 = *(v2 + 76) - 1;
LABEL_65:
    v54 = *v2;
    v55 = v4;
    do
    {
      v56 = (v54 + 12 * v55);
      v57 = *(v56 + 8);
      v58 = *v56;
      if (v57)
      {
        if (*(v56 + 9))
        {
          v59 = 2;
        }

        else
        {
          v59 = 0;
        }

        v60 = v59 | (4 * v58);
      }

      else
      {
        v60 = 2 * v58;
      }

      *(*(v2 + 16) + 4 * v49) = v60 | *(v56 + 10);
      *(*(v2 + 32) + v49--) = v57;
      v54 = *v2;
      v55 = *(*v2 + 12 * v55 + 4);
    }

    while (v55);
    goto LABEL_77;
  }

LABEL_80:
  *(v2 + 104) = v3 - 1;
  return result;
}

uint64_t sub_1B5D71DE4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == *(result + 12))
  {
    v2 = v1 + 1;
    if (v1 + 1 < 2 * v1)
    {
      v3 = 1;
      do
      {
        v4 = v3;
        v3 *= 2;
      }

      while (v4 < v2);
    }

    operator new[]();
  }

  *(result + 8) = v1 + 1;
  v5 = *result + 12 * v1;
  *(v5 + 7) = 0;
  *v5 = 0;
  return result;
}

uint64_t sub_1B5D71F58(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 8);
  if (v2 == *(result + 12))
  {
    sub_1B5D71440(result, v2 + 1);
  }

  *(result + 8) = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t sub_1B5D71FAC(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 8);
  if (v3 > a2)
  {
    *(result + 8) = a2;
    v3 = a2;
  }

  if (*(result + 12) < a2)
  {
    sub_1B5D71440(result, a2);
  }

  if (v3 < a2)
  {
    v4 = *result;
    do
    {
      *(result + 8) = v3 + 1;
      *(v4 + 4 * v3) = *a3;
      v3 = *(result + 8);
    }

    while (v3 < a2);
  }

  return result;
}

uint64_t sub_1B5D72034(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    result = sub_1B5D71F58(result, &v3);
    v2 = *(v1 + 28);
  }

  *(v1 + 28) = v2 + 1;
  return result;
}

uint64_t sub_1B5D72084(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == *(result + 12))
  {
    v2 = v1 + 1;
    if (v1 + 1 < 2 * v1)
    {
      v3 = 1;
      do
      {
        v4 = v3;
        v3 *= 2;
      }

      while (v4 < v2);
    }

    operator new[]();
  }

  *(result + 8) = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void sub_1B5D721D4(uint64_t a1, uint64_t **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  memset(v11, 0, sizeof(v11));
  memset(__p, 0, sizeof(__p));
  sub_1B5D6F85C(v11, v4);
  sub_1B5D6F900(__p, v4);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      v7 = *v6;
    }

    v9 = v7;
    sub_1B5D140B0(v11, &v9);
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v6[1];
    }

    v9 = v8;
    sub_1B5D14180(__p, &v9);
    v6 += 3;
  }

  sub_1B5D6FA44(a1 + 8, v4, v11[0], __p[0], 0);
}

void sub_1B5D722D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D72314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5CE68;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D723B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D723D8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CEC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7243C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5CE68;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D724D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5CDE8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D72574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D72594(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CE48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D725F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5CDE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7268C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

void sub_1B5D726E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v9 = a5;
    memset(v13, 0, sizeof(v13));
    sub_1B5D6F9A0(v13, a2);
    if (a2)
    {
      v10 = a2;
      do
      {
        v11 = *v9++;
        v12 = v11;
        sub_1B5D0DE58(v13, &v12);
        --v10;
      }

      while (v10);
    }

    sub_1B5D6FA44(a1 + 8, a2, a3, a4, v13[0]);
  }

  sub_1B5D6FA44(a1 + 8, a2, a3, a4, 0);
}

void sub_1B5D727B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D727CC(void *a1)
{
  sub_1B5D6E334(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D72808(uint64_t result, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    v3 = result;
    for (i = *(*(result + 40) + 2 * *a2); i; i = *(*(v3 + 40) + 2 * v10 + 1))
    {
      v7 = *(v3 + 24);
      v8 = *(v7 + 4 * *a2);
      v9 = (v8 >> 10 << ((v8 >> 6) & 8)) ^ *a2 ^ i;
      if ((*(v7 + 4 * v9) & 0x800000FF) != i)
      {
        v9 = -1;
      }

      v10 = v9;
      result = sub_1B5D6E468(*(a3 + 24), i);
    }
  }

  return result;
}

uint64_t sub_1B5D728D4(void *a1, unsigned int *a2, unint64_t a3)
{
  v3 = a3 <= 3 || (a3 & 0xFFFFFFFFFFFFFFFCLL) == 4;
  v4 = !v3;
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2 + 2;
    a1[2] = 0;
    a1[3] = 0;
    v9 = a1[4];
    if (v9)
    {
      MEMORY[0x1B8C880C0](v9, 0x1000C8052888210);
      a1[4] = 0;
    }

    a1[2] = v6;
    a1[3] = v8;
    v10 = v8 + v6;
    sub_1B5D72A68(a1 + 5, v7);
    v11 = 2 * v7;
    v12 = a1[7];
    v13 = a1[5];
    if (v7 > (v12 - v13) >> 1)
    {
      if (v13)
      {
        a1[6] = v13;
        operator delete(v13);
        v12 = 0;
        a1[5] = 0;
        a1[6] = 0;
        a1[7] = 0;
      }

      if (v12 <= v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        sub_1B5D0DF78(v15);
      }

      sub_1B5D04FA0();
    }

    v16 = a1[6];
    v17 = v16 - v13;
    if (v7 <= (v16 - v13) >> 1)
    {
      if (v7)
      {
        memmove(a1[5], v10, 2 * v7);
      }

      v18 = &v13[v11];
    }

    else
    {
      if (v16 != v13)
      {
        memmove(a1[5], v10, v16 - v13);
      }

      v19 = a1[6];
      if (v17 != v11)
      {
        v20 = &v10[v17];
        v21 = (&v13[v11] - v16);
        v19 = a1[6];
        do
        {
          v22 = *v20;
          v20 += 2;
          *v19 = v22;
          v19 += 2;
          v21 -= 2;
        }

        while (v21);
      }

      v18 = v19;
    }

    a1[6] = v18;
  }

  return v4;
}

void sub_1B5D72A68(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 2 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = v7 - v3;
        if (v8 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1B5D0DF78(v10);
      }

      sub_1B5D04FA0();
    }

    bzero(a1[1], 2 * v6);
    v11 = v4 + 2 * v6;
  }

  a1[1] = v11;
}

void sub_1B5D72CBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B5D72CA8);
}

void sub_1B5D72CCC()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0;
  v0 = 0;
  operator new();
}

void sub_1B5D72D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D6ECA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D72DAC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DE78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D72DEC(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  if (*v3)
  {
    *(v4 + 2 * **(a1 + 32) + 1) = v2;
  }

  else
  {
    *(v4 + 2 * **(a1 + 24)) = v2;
    *v3 = 1;
  }

  sub_1B5D72CCC();
}

__n128 sub_1B5D72E70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5DE18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

std::string *sub_1B5D72F4C@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  memset(&v18, 0, sizeof(v18));
  std::string::resize(&v18, 4uLL, 0);
  v8 = 4 * v5;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v18;
  }

  else
  {
    v9 = v18.__r_.__value_.__r.__words[0];
  }

  LODWORD(v9->__r_.__value_.__l.__data_) = v8;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v18;
  }

  else
  {
    v10 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v13 = a1[5];
  v12 = a1[6];
  memset(&v18, 0, sizeof(v18));
  std::string::resize(&v18, 4uLL, 0);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18.__r_.__value_.__r.__words[0];
  }

  LODWORD(v14->__r_.__value_.__l.__data_) = (v12 - v13) >> 1;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v18;
  }

  else
  {
    v15 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v18.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v15, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v4, v8);
  return std::string::append(a2, v6, v7 - v6);
}

void sub_1B5D73090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D73100(void *a1)
{
  sub_1B5D6E2D4(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D7313C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D56948;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D731C0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D56948;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_1B5D7322C(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5DE98;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6E4B8(a1 + 8, a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D732E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D73314(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5DEF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D73354(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D7338C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5DE98;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D73420(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D6EE88((a1 + 8), a2, &v5);
  if (result)
  {
    if ((v5 & 0x7FFFFF) == 0x7FFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0x7FFFFF;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D734A4(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5DE98;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6EFD0(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D73564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D73588(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5DE98;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6F3F8(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D73640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D73664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, &v9, a2, a3);
  return (*(*a1 + 128))(a1, &v10, a4);
}

uint64_t sub_1B5D73738(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  if (v4 == v3)
  {
LABEL_13:
    v48[0] = 0;
    v48[1] = 0;
    v47 = v48;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v49, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v51, v16, 0, v19 - 1, &v46);
        v20 = *sub_1B5D624A4(&v49, &v51);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v51.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v47, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v46, v29, 0, v28, &v51);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v46.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v48 == sub_1B5D030FC(&v47, &__str))
            {
              v32 = *sub_1B5D624A4(&v49, &v46);
              if (v32 > *sub_1B5D624A4(&v49, &__str))
              {
                v33 = *sub_1B5D624A4(&v49, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v51, &__str, 0, v34 - 1, v52);
                v35 = *sub_1B5D624A4(&v49, &v51);
                if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v51.__r_.__value_.__l.__data_);
                }

                v51.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v47, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v51, 0, sizeof(v51));
    memset(&v46, 0, sizeof(v46));
    if (v47 != v48)
    {
      v41 = v51.__r_.__value_.__l.__size_;
      if (v51.__r_.__value_.__l.__size_ >= v51.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v51, &v47[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v47[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v51.__r_.__value_.__l.__size_, v47[1].__r_.__value_.__l.__size_, v47[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v47[1].__r_.__value_.__r.__words[1];
          *(v51.__r_.__value_.__l.__size_ + 16) = v47[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v51.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    sub_1B5D6F6AC(a1 + 8, &v51, &v46);
  }

  v8 = 0;
  while (1)
  {
    v9 = 0;
    v10 = v3 + 24 * v8;
    while (1)
    {
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v9 > v11)
      {
        break;
      }

      v12 = *sub_1B5D624A4(a1 + 72, v10);
      std::string::basic_string(&v51, v10, 0, v9, &v47);
      v47 = &v51;
      v13 = sub_1B5D5F6C8(&v49, &v51);
      *(v13 + 56) = v12 + *(v13 + 56);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      ++v9;
    }

    if (*(*a3 + 4 * v8) == 0x7FFFFF)
    {
      break;
    }

    ++v8;
    v3 = *a2;
    v4 = a2[1];
    if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
    {
      goto LABEL_13;
    }
  }

  sub_1B5D0C050(v50[0]);
  return 0;
}

void sub_1B5D73D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D73DE0(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D73EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D73ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5D078;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D73F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D73F94(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D0D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D73FF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D078;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5CFF8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D74130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D74150(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D058))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D741B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5CFF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D74248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D742A4(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D743FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D7443C(uint64_t a1)
{
  *a1 = &unk_1F2D5DC98;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D6E2D4((a1 + 8));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D744AC(uint64_t a1)
{
  *a1 = &unk_1F2D5DC98;
  sub_1B5D0C050(*(a1 + 80));
  sub_1B5D6E2D4((a1 + 8));
  return a1;
}

uint64_t sub_1B5D74504(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D0F8;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6E4B8(a1 + 8, a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D745BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D745EC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5D158))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7462C(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D74664(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5D0F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D746F8(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D6EE88((a1 + 8), a2, &v5);
  if (result)
  {
    if ((v5 & 0x7FFFFF) == 0x7FFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0x7FFFFF;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D7477C(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D0F8;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6EFD0(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7483C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D74860(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5D0F8;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D6F3F8(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D74918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, &v9, a2, a3);
  return (*(*a1 + 128))(a1, &v10, a4);
}

uint64_t sub_1B5D74A08(void *a1, uint64_t a2, uint64_t a3)
{
  a1[3] = 0;
  a1[4] = 0;
  v6 = a1[5];
  if (v6)
  {
    MEMORY[0x1B8C880C0](v6, 0x1000C8052888210);
    a1[5] = 0;
  }

  a1[3] = a3;
  a1[4] = a2;
  return 1;
}

uint64_t sub_1B5D74A64(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  if (v4 == v3)
  {
LABEL_13:
    v48[0] = 0;
    v48[1] = 0;
    v47 = v48;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v49, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v51, v16, 0, v19 - 1, &v46);
        v20 = *sub_1B5D624A4(&v49, &v51);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v51.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v47, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v46, v29, 0, v28, &v51);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v46.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v48 == sub_1B5D030FC(&v47, &__str))
            {
              v32 = *sub_1B5D624A4(&v49, &v46);
              if (v32 > *sub_1B5D624A4(&v49, &__str))
              {
                v33 = *sub_1B5D624A4(&v49, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v51, &__str, 0, v34 - 1, v52);
                v35 = *sub_1B5D624A4(&v49, &v51);
                if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v51.__r_.__value_.__l.__data_);
                }

                v51.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v47, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v51, 0, sizeof(v51));
    memset(&v46, 0, sizeof(v46));
    if (v47 != v48)
    {
      v41 = v51.__r_.__value_.__l.__size_;
      if (v51.__r_.__value_.__l.__size_ >= v51.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v51, &v47[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v47[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v51.__r_.__value_.__l.__size_, v47[1].__r_.__value_.__l.__size_, v47[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v47[1].__r_.__value_.__r.__words[1];
          *(v51.__r_.__value_.__l.__size_ + 16) = v47[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v51.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    sub_1B5D6F6AC(a1 + 8, &v51, &v46);
  }

  v8 = 0;
  while (1)
  {
    v9 = 0;
    v10 = v3 + 24 * v8;
    while (1)
    {
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v9 > v11)
      {
        break;
      }

      v12 = *sub_1B5D624A4(a1 + 48, v10);
      std::string::basic_string(&v51, v10, 0, v9, &v47);
      v47 = &v51;
      v13 = sub_1B5D5F6C8(&v49, &v51);
      *(v13 + 56) = v12 + *(v13 + 56);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      ++v9;
    }

    if (*(*a3 + 4 * v8) == 0x7FFFFF)
    {
      break;
    }

    ++v8;
    v3 = *a2;
    v4 = a2[1];
    if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
    {
      goto LABEL_13;
    }
  }

  sub_1B5D0C050(v50[0]);
  return 0;
}

void sub_1B5D75028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D75104(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D751CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D751FC(uint64_t a1)
{
  *a1 = &unk_1F2D5CC38;
  sub_1B5D0C050(*(a1 + 56));
  sub_1B5D6E334((a1 + 8));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D7526C(uint64_t a1)
{
  *a1 = &unk_1F2D5CC38;
  sub_1B5D0C050(*(a1 + 56));
  sub_1B5D6E334((a1 + 8));
  return a1;
}

double sub_1B5D752BC(uint64_t *a1)
{
  if ((a1[10] & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      MEMORY[0x1B8C880C0]();
    }
  }

  v3 = a1[1];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_1B5D75328(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v13 = 0;
  do
  {
    __s = v7;
    v8 = *a2;
    v14 = 0;
    v15 = v8;
    result = sub_1B5D753DC((a1 + 8), &__s, &v15, &v14, 1uLL);
    v10 = v15;
    if (result == -2)
    {
      v10 = -1;
    }

    v15 = v10;
    if (v10 != -1)
    {
      result = sub_1B5D75494(*(a3 + 24), v7);
      v6 = v13;
    }

    if (v6)
    {
      break;
    }

    v11 = v7++;
  }

  while (v11 < 0xFF);
  return result;
}

uint64_t sub_1B5D753DC(uint64_t *a1, char *__s, void *a3, unint64_t *a4, size_t a5)
{
  if (!a5)
  {
    a5 = strlen(__s);
  }

  v9 = *a1;
  v10 = *(*a1 + 8 * *a3);
  for (i = *a4; i < a5; *a4 = i)
  {
    v12 = v10 + __s[i] + 1;
    if (v10 != *(v9 + 8 * v12 + 4))
    {
      return 4294967294;
    }

    *a3 = v12;
    v10 = *(v9 + 8 * v12);
    i = *a4 + 1;
  }

  v13 = (v9 + 8 * v10);
  if (v10 == v13[1])
  {
    return ~(*v13 & (*v13 >> 31));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1B5D75494(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_1B5CEC274();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_1B5D754E4(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 != -1)
  {
    v7 = result;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v26 = v4;
    sub_1B5D757B8(v27, __p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    if (*(&v28 + 1))
    {
      do
      {
        v8 = *(&v27[0] + 1);
        v9 = v28;
        v10 = v28 >> 7;
        v11 = v28 & 0x7F;
        v12 = *(*(&v27[0] + 1) + 8 * (v28 >> 7)) + 32 * v11;
        if (*(v12 + 23) < 0)
        {
          sub_1B5CE4AC4(__p, *v12, *(v12 + 8));
          v8 = *(&v27[0] + 1);
          v9 = v28;
          v10 = v28 >> 7;
          v11 = v28 & 0x7F;
        }

        else
        {
          v13 = *v12;
          v25 = *(v12 + 16);
          *__p = v13;
        }

        v26 = *(v12 + 24);
        v14 = *(v8 + 8 * v10) + 32 * v11;
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
          v9 = v28;
        }

        v15 = v9 + 1;
        v28 = __PAIR128__(*(&v28 + 1), v15) + __PAIR128__(-1, 0);
        if (v15 >= 0x100)
        {
          operator delete(**(&v27[0] + 1));
          *(&v27[0] + 1) += 8;
          *&v28 = v28 - 128;
        }

        v22 = 0;
        if (*(*v7 + 128))(v7, &v26, &v22) && (v25 >= 0 ? (v16 = __p) : (v16 = __p[0]), v25 >= 0 ? (v17 = HIBYTE(v25)) : (v17 = __p[1]), sub_1B5D136E8(*(a3 + 24), v22, v16, v17, &v23), (v23))
        {
          v18 = 1;
        }

        else
        {
          if ((a4 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v19 = HIBYTE(v25);
          if (v25 < 0)
          {
            v19 = __p[1];
          }

          if (v19 < a4)
          {
LABEL_25:
            v29[0] = &unk_1F2D5C950;
            v29[1] = v27;
            v29[2] = __p;
            v29[3] = v29;
            (*(*v7 + 144))(v7, &v26, v29);
            sub_1B5D75CCC(v29);
          }

          v18 = 0;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v28 + 1))
        {
          v20 = v18;
        }

        else
        {
          v20 = 1;
        }
      }

      while ((v20 & 1) == 0);
    }

    result = sub_1B5D75D4C(v27);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D75774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D75D4C(&a18);
  _Unwind_Resume(a1);
}

__n128 sub_1B5D757B8(uint64_t a1, __n128 *a2)
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
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1B5D051D8(v13);
    }

    *(a1 + 32) = v8 - 128;
    v16 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_1B5D53F00(a1, &v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v14[1].n128_u64[0] = a2[1].n128_u64[0];
  *v14 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v14[1].n128_u64[1] = a2[1].n128_u64[1];
  ++*(a1 + 40);
  return result;
}

void sub_1B5D75C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D75CCC(uint64_t a1)
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

uint64_t sub_1B5D75D4C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 128;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D75EC0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C9C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D75F00(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  sub_1B5D62618(&__p, *(a1 + 16), *a2);
  v7 = *a3;
  sub_1B5D757B8(v4, &__p);
  if (v6 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1B5D75F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D75F80(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5C950;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D7601C(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7 = *a2;
    v9 = 0;
    v10 = v7;
    v8 = sub_1B5D753DC(a1 + 1, "", &v10, &v9, 0);
    *a3 = v8;
    return v8 != -1;
  }

  return result;
}

uint64_t sub_1B5D760AC(uint64_t a1, uint64_t *a2, char *__s, size_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D753DC((a1 + 8), __s, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5D76110(uint64_t a1, const void *a2, size_t a3)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = (*(*a1 + 104))(a1);
  v10[0] = (*(*a1 + 120))(a1, v10, a2, a3);
  result = (*(*a1 + 112))(a1, v10);
  if (result)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__dst, a2, a3);
        }

        *(&__dst + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D76324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_1B5D11AAC(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D76364(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C930))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D763A4(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D136E8(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D7648C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D5C8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

size_t sub_1B5D76538(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4)
{
  v7 = off_1EE895068();
  result = sub_1B5D765E8((v8 + 8), v9, v7, a3);
  v15 = 0;
  if (result)
  {
    v11 = result - 1;
    v12 = (v7 + 8);
    do
    {
      v13 = v11;
      if (a3 >= *v12)
      {
        v14 = *v12;
      }

      else
      {
        v14 = a3;
      }

      result = sub_1B5D136E8(*(a4 + 24), *(v12 - 2), a2, v14, &v15);
      if (v15)
      {
        break;
      }

      v11 = v13 - 1;
      v12 += 2;
    }

    while (v13);
  }

  return result;
}

size_t sub_1B5D765E8(unsigned int **a1, char *__s, uint64_t a3, size_t a4)
{
  if (a4)
  {
    v7 = *a1;
    LODWORD(v8) = **a1;
    goto LABEL_4;
  }

  a4 = strlen(__s);
  v7 = *a1;
  v8 = **a1;
  if (a4)
  {
LABEL_4:
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &v7[2 * v8];
      if (v8 == v11[1])
      {
        v12 = *v11;
        if (v12 < 0)
        {
          if (v10 <= 0x7F)
          {
            v13 = a3 + 16 * v10;
            *v13 = ~v12;
            *(v13 + 8) = v9;
          }

          ++v10;
        }
      }

      v14 = &v7[2 * v8 + 2 + 2 * __s[v9]];
      if (v8 != v14[1])
      {
        return v10;
      }

      ++v9;
      v8 = *v14;
    }

    while (a4 != v9);
    v15 = &v7[2 * v8];
    if (v8 != v15[1])
    {
      return v10;
    }

    v16 = *v15;
    if ((v16 & 0x80000000) == 0)
    {
      return v10;
    }

    if (v10 <= 0x7F)
    {
      goto LABEL_19;
    }

    return v10 + 1;
  }

  v17 = &v7[2 * v8];
  if (v8 == v17[1])
  {
    v16 = *v17;
    v10 = 0;
    if (v16 < 0)
    {
LABEL_19:
      v18 = a3 + 16 * v10;
      *v18 = ~v16;
      *(v18 + 8) = a4;
      return v10 + 1;
    }
  }

  return a4;
}

uint64_t sub_1B5D76708(uint64_t a1, char *__s, size_t a3, int *a4)
{
  v5 = __s;
  if (a3)
  {
    v7 = *(a1 + 8);
    v8 = *v7;
    goto LABEL_4;
  }

  a3 = strlen(__s);
  v7 = *(a1 + 8);
  v8 = *v7;
  if (a3)
  {
LABEL_4:
    while (1)
    {
      v9 = *v5++;
      v10 = &v7[2 * (v8 + v9 + 1)];
      if (v8 != v10[1])
      {
        return 0;
      }

      v8 = *v10;
      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = 0;
    v12 = &v7[2 * v8];
    if (v8 == v12[1])
    {
      v13 = *v12;
      if (v13 < 0)
      {
        *a4 = ~v13;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D767B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 3;
  sub_1B5D752BC((a1 + 8));
  *(a1 + 8) = a2;
  *(a1 + 88) = 1;
  *(a1 + 24) = v5;
  return 1;
}

BOOL sub_1B5D76804(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  memset(v23, 0, sizeof(v23));
  __p = 0;
  v21 = 0;
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  sub_1B5D6F85C(v23, v8);
  sub_1B5D6F900(&__p, v8);
  sub_1B5D6F9A0(v19, v8);
  if (v6 == v7)
  {
LABEL_11:
    v15 = v19[0];
    v16 = sub_1B5D769CC((a1 + 8), v8, v23[0], __p, v19[0]) == 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  while (1)
  {
    v12 = (*a2 + v9);
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    v18 = v12;
    sub_1B5D140B0(v23, &v18);
    v13 = *a2 + v9;
    v14 = *(v13 + 23);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v14 = *(v13 + 8);
    }

    v18 = v14;
    sub_1B5D14180(&__p, &v18);
    LODWORD(v18) = *(*a3 + 4 * v10);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    sub_1B5D0DE58(v19, &v18);
    ++v10;
    v9 += 24;
    if (v11 == v10)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
  v15 = v19[0];
  if (v19[0])
  {
LABEL_12:
    operator delete(v15);
  }

LABEL_13:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23[0])
  {
    operator delete(v23[0]);
  }

  return v16;
}

void sub_1B5D7698C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D769CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3)
  {
    a1[11] = 0;
    a1[4] = a3;
    a1[5] = a2;
    a1[6] = a4;
    a1[7] = a5;
    a1[8] = 0;
    sub_1B5D76ACC(a1);
  }

  return 0;
}

void sub_1B5D76AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D76ACC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  operator new[]();
}

uint64_t sub_1B5D76BE0(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(a1 + 84) & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = a2[2];
  v5 = a2[3];
  if (v6 < v5)
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = *(v9 + 8 * v6);
        v11 = a2[1];
        if (v10 < v11)
        {
          goto LABEL_30;
        }

        v12 = *(*(a1 + 32) + 8 * v6);
      }

      else
      {
        v12 = *(*(a1 + 32) + 8 * v6);
        v10 = strlen(v12);
        v11 = a2[1];
        if (v10 < v11)
        {
          goto LABEL_30;
        }
      }

      if (v10 == v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12[v11] + 1;
      }

      if (v8 > v13)
      {
        result = 0;
        *(a1 + 84) = -3;
        return result;
      }

      v15 = *a3;
      v14 = *(a3 + 8);
      if (v13 != v8 || v15 == v14)
      {
        if (v15 != v14)
        {
          *(v14 - 1) = v6;
        }

        v16 = v11 + 1;
        v17 = *(a3 + 16);
        if (v14 >= v17)
        {
          v19 = v14 - v15;
          v20 = (v14 - v15) >> 5;
          v21 = v20 + 1;
          if ((v20 + 1) >> 59)
          {
            sub_1B5D04FA0();
          }

          v22 = v17 - v15;
          if (v22 >> 4 > v21)
          {
            v21 = v22 >> 4;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFE0)
          {
            v23 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 59))
            {
              operator new();
            }

            sub_1B5CE5968();
          }

          v24 = 32 * v20;
          *v24 = v13;
          *(v24 + 8) = v16;
          *(v24 + 16) = v6;
          v18 = 32 * v20 + 32;
          memcpy(0, v15, v19);
          *a3 = 0;
          *(a3 + 8) = v18;
          *(a3 + 16) = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = v13;
          v18 = (v14 + 32);
          *(v14 + 1) = v16;
          *(v14 + 2) = v6;
        }

        *(a3 + 8) = v18;
        v5 = a2[3];
        v8 = v13;
      }

LABEL_30:
      ++v6;
    }

    while (v6 < v5);
  }

  v25 = *(a3 + 8) - *a3;
  if (v25)
  {
    *a3;
    *(*(a3 + 8) - 8) = v5;
  }

  return v25 >> 5;
}

unint64_t sub_1B5D76DD8(uint64_t a1, unsigned int **a2)
{
  if ((*(a1 + 84) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = **a2;
  if ((v4 + 1) > *(a1 + 72))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = v5 - 1;
  if (*(a1 + 24) <= (v5 - 1))
  {
    sub_1B5D76ACC(a1);
  }

  v7 = 0;
  for (i = 0; ; i = 1)
  {
    do
    {
      while (1)
      {
        v9 = v6++;
        if (*(a1 + 24) <= v6)
        {
          sub_1B5D76ACC(a1);
        }

        if (!*(*a1 + 8 * v6 + 4))
        {
          break;
        }

        ++v7;
      }

      if (!i)
      {
        *(a1 + 72) = v6;
      }

      v10 = v6 - **a2;
      if (*(a1 + 24) <= v10 + *(a2[1] - 8))
      {
        *(a1 + 40);
        *(a1 + 64);
        sub_1B5D76ACC(a1);
      }

      v11 = *(a1 + 8);
      i = 1;
    }

    while (*(v11 + v10));
    v12 = (a2[1] - *a2) >> 5;
    if (v12 < 2)
    {
      break;
    }

    v13 = *a2 + 8;
    v14 = v12 - 1;
    while (1)
    {
      v15 = *v13;
      v13 += 8;
      if (*(*a1 + 8 * v10 + 8 * v15 + 4))
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_23:
  if (v7 / (v9 - *(a1 + 72) + 2) >= 0.95)
  {
    *(a1 + 72) = v6;
  }

  *(v11 + v10) = 1;
  v16 = *(a1 + 16);
  v17 = *a2;
  v18 = a2[1];
  if (v16 <= v10 + *(v18 - 8) + 1)
  {
    v16 = v10 + *(v18 - 8) + 1;
  }

  *(a1 + 16) = v16;
  if (v18 == v17)
  {
    return v10;
  }

  v19 = (v18 - v17) >> 5;
  v20 = *a1 + 8 * v10;
  if (v19 <= 1)
  {
    v19 = 1;
  }

  v21 = v17;
  do
  {
    v22 = *v21;
    v21 += 8;
    *(v20 + 8 * v22 + 4) = v10;
    --v19;
  }

  while (v19);
  v23 = 0;
  v24 = 0;
  while (1)
  {
    memset(__p, 0, sizeof(__p));
    if (!sub_1B5D76BE0(a1, &v17[v23], __p))
    {
      break;
    }

    *(*a1 + 8 * v10 + 8 * (*a2)[v23]) = sub_1B5D76DD8(a1, __p);
LABEL_41:
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    ++v24;
    v17 = *a2;
    v23 += 8;
    if (v24 >= (a2[1] - *a2) >> 5)
    {
      return v10;
    }
  }

  v25 = *(a1 + 56);
  v26 = *a2;
  v27 = *&(*a2)[v23 + 4];
  if (!v25)
  {
    *(*a1 + 8 * v10 + 8 * v26[v23]) = ~v27;
LABEL_39:
    ++*(a1 + 64);
    v28 = *(a1 + 88);
    if (v28)
    {
      v29 = *(a1 + 40);
      v28();
    }

    goto LABEL_41;
  }

  *(*a1 + 8 * v10 + 8 * v26[v23]) = ~*(v25 + 4 * v27);
  if ((*(v25 + 4 * v27) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  *(a1 + 84) = -2;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5D770DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5D770F8(uint64_t a1, uint64_t **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  memset(v16, 0, sizeof(v16));
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_1B5D6F85C(v16, v4);
  sub_1B5D6F900(&__p, v4);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      v7 = *v6;
    }

    v12 = v7;
    sub_1B5D140B0(v16, &v12);
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = v6[1];
    }

    v12 = v8;
    sub_1B5D14180(&__p, &v12);
    v6 += 3;
  }

  v9 = v16[0];
  v10 = sub_1B5D769CC((a1 + 8), v4, v16[0], __p, 0);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  return v10 == 0;
}

void sub_1B5D77200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D77244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5C850;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D772E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D77308(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C8B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7736C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C850;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D77400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5C7D0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D11AAC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D774A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D11AAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D774C4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5C830))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D77528(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C7D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D775BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D77618(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D77770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D777B0(void *a1)
{
  *a1 = &unk_1F2D5C6F8;
  sub_1B5D752BC(a1 + 1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D77814(void *a1)
{
  *a1 = &unk_1F2D5C6F8;
  sub_1B5D752BC(a1 + 1);
  return a1;
}

uint64_t sub_1B5D77860(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5CAF0;
  v9[1] = a3;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D754E4(a1 + 8, a2, v10, a4);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D77918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D77948(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CB50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D77988(uint64_t result, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2 & 0x7FFFFF;
  if (v4 != 0x7FFFFF)
  {
    return sub_1B5D61690(*(*(result + 8) + 24), v4, *a3, a3[1], a4);
  }

  return result;
}

uint64_t sub_1B5D779C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5CAF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D77A54(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  result = sub_1B5D7601C((a1 + 8), a2, &v5);
  if (result)
  {
    if ((v5 & 0x7FFFFF) == 0x7FFFFF)
    {
      return 0;
    }

    else
    {
      *a3 = v5 & 0x7FFFFF;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D77AB4(uint64_t a1, uint64_t *a2, char *__s, size_t a4)
{
  v4 = *a2;
  v6 = 0;
  v7 = v4;
  if (sub_1B5D753DC((a1 + 16), __s, &v7, &v6, a4) == -2)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B5D77B18(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5CAF0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D76110(a1 + 8, a2, a3);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D77BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D77BFC(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F2D5CAF0;
  v9[1] = a4;
  v9[3] = v9;
  sub_1B5D614DC(v10, v9);
  sub_1B5D76538(a1 + 8, a2, a3, v10);
  sub_1B5D11AAC(v10);
  result = sub_1B5D615AC(v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D77CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1B5D11AAC(va1);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D77CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a1 + 104))(a1);
  v10 = (*(*a1 + 120))(a1, &v9, a2, a3);
  return (*(*a1 + 128))(a1, &v10, a4);
}

uint64_t sub_1B5D77DA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 3;
  sub_1B5D752BC((a1 + 16));
  *(a1 + 16) = a2;
  *(a1 + 96) = 1;
  *(a1 + 32) = v5;
  return 1;
}

BOOL sub_1B5D77DF0(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) != (a3[1] - *a3) >> 2)
  {
    __assert_rtn("build", "ProbabilisticTrie.h", 267, "keys.size() == values.size()");
  }

  v51[0] = 0;
  v51[1] = 0;
  v50 = v51;
  if (v4 == v3)
  {
LABEL_13:
    v49[0] = 0;
    v49[1] = 0;
    v48 = v49;
    if (v4 != v3)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v3 + v14;
        v17 = *(*a3 + 4 * v15);
        v18 = *sub_1B5D624A4(&v50, (v3 + v14));
        v19 = *(v16 + 23);
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v16 + 8);
        }

        std::string::basic_string(&v52, v16, 0, v19 - 1, &v47);
        v20 = *sub_1B5D624A4(&v50, &v52);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v52.__r_.__value_.__r.__words[0] = v16;
        v21 = sub_1B5D66C08(&v48, v16);
        v22 = (sqrt(v18 / v20) * 255.0);
        if (v22 >= 255)
        {
          v23 = 255;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v18 / v20 <= 0.0;
        }

        v25 = v23 << 23;
        if (!v24)
        {
          v25 = 0x800000;
        }

        *(v21 + 14) = v25 & 0xFF800000 | v17 & 0x7FFFFF;
        ++v15;
        v3 = *a2;
        v26 = a2[1];
        v14 += 24;
      }

      while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3));
      if (v26 != v3)
      {
        v27 = 0;
        do
        {
          v28 = 0;
          v29 = (v3 + 24 * v27);
          while (1)
          {
            size = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
            if ((size & 0x8000000000000000) != 0)
            {
              size = v29->__r_.__value_.__l.__size_;
            }

            if (v28 >= size - 1)
            {
              break;
            }

            std::string::basic_string(&v47, v29, 0, v28, &v52);
            v31 = v29;
            if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
            {
              v31 = v29->__r_.__value_.__r.__words[0];
            }

            sub_1B5D62618(&__str, &v47.__r_.__value_.__l.__data_, v31->__r_.__value_.__s.__data_[v28]);
            if (v49 == sub_1B5D030FC(&v48, &__str))
            {
              v32 = *sub_1B5D624A4(&v50, &v47);
              if (v32 > *sub_1B5D624A4(&v50, &__str))
              {
                v33 = *sub_1B5D624A4(&v50, &__str);
                v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = __str.__r_.__value_.__l.__size_;
                }

                std::string::basic_string(&v52, &__str, 0, v34 - 1, v53);
                v35 = *sub_1B5D624A4(&v50, &v52);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v52.__r_.__value_.__r.__words[0] = &__str;
                v36 = sub_1B5D66C08(&v48, &__str);
                v37 = (sqrt(v33 / v35) * 255.0);
                if (v37 >= 255)
                {
                  v38 = 255;
                }

                else
                {
                  v38 = v37;
                }

                if (v37)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v33 / v35 <= 0.0;
                }

                v40 = (v38 << 23) | 0x7FFFFF;
                if (!v39)
                {
                  v40 = 0xFFFFFF;
                }

                *(v36 + 14) = v40;
              }
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            ++v28;
          }

          ++v27;
          v3 = *a2;
        }

        while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      }
    }

    memset(&v52, 0, sizeof(v52));
    memset(&v47, 0, sizeof(v47));
    if (v48 != v49)
    {
      v41 = v52.__r_.__value_.__l.__size_;
      if (v52.__r_.__value_.__l.__size_ >= v52.__r_.__value_.__r.__words[2])
      {
        v43 = sub_1B5D6269C(&v52, &v48[1].__r_.__value_.__r.__words[1]);
      }

      else
      {
        if (v48[2].__r_.__value_.__s.__data_[7] < 0)
        {
          sub_1B5CE4AC4(v52.__r_.__value_.__l.__size_, v48[1].__r_.__value_.__l.__size_, v48[1].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = *&v48[1].__r_.__value_.__r.__words[1];
          *(v52.__r_.__value_.__l.__size_ + 16) = v48[2].__r_.__value_.__l.__data_;
          *v41 = v42;
        }

        v43 = v41 + 24;
      }

      v52.__r_.__value_.__l.__size_ = v43;
      sub_1B5D0DF30(1uLL);
    }

    v44 = sub_1B5D76804(a1 + 8, &v52, &v47);
    if (v47.__r_.__value_.__r.__words[0])
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v47.__r_.__value_.__r.__words[0] = &v52;
    sub_1B5CE5D7C(&v47);
    sub_1B5D0C050(v49[0]);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = 0;
      v10 = v3 + 24 * v8;
      while (1)
      {
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v10 + 8);
        }

        if (v9 > v11)
        {
          break;
        }

        v12 = *sub_1B5D624A4(a1 + 112, v10);
        std::string::basic_string(&v52, v10, 0, v9, &v48);
        v48 = &v52;
        v13 = sub_1B5D5F6C8(&v50, &v52);
        *(v13 + 56) = v12 + *(v13 + 56);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        ++v9;
      }

      if (*(*a3 + 4 * v8) == 0x7FFFFF)
      {
        break;
      }

      ++v8;
      v3 = *a2;
      v4 = a2[1];
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3))
      {
        goto LABEL_13;
      }
    }

    v44 = 0;
  }

  sub_1B5D0C050(v51[0]);
  return v44;
}

void sub_1B5D783B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_1B5CE5D7C(&__p);
  sub_1B5D0C050(a23);
  sub_1B5D0C050(a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D78490(uint64_t a1, void *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a2[1] != *a2)
  {
    v4 = 1;
    do
    {
      v7 = v4;
      sub_1B5D0DE58(&__p, &v7);
      ++v4;
    }

    while (v4 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v5 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5D78558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D7858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5CA70;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D78630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D78650(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CAD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D786B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5CA70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D78748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D5C9E0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D615AC(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D787EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D615AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7880C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D5CA50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D78870(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D5C9E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D78904(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D78960(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, void *a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v9 = a2;
    v10 = a5;
    do
    {
      v11 = *a3;
      v13 = *a4++;
      v12 = v13;
      v20 = v13;
      v21 = v11;
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_1B5D61294(&v25, &v21, &v20);
      }

      else
      {
        sub_1B5D5EC18(v26, v11, v12);
        v15 = v14 + 24;
      }

      v26 = v15;
      if (a5)
      {
        LODWORD(v21) = *v10;
        sub_1B5D0DE58(&__p, &v21);
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v16 = *a1;
  if (a5)
  {
    v17 = (*(v16 + 64))(a1, &v25, &__p);
  }

  else
  {
    v17 = (*(v16 + 56))(a1, &v25);
  }

  v18 = v17;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  __p = &v25;
  sub_1B5CE5D7C(&__p);
  return v18;
}

void sub_1B5D78AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D78AF8(uint64_t a1)
{
  *a1 = &unk_1F2D5C620;
  sub_1B5D0C050(*(a1 + 120));
  *(a1 + 8) = &unk_1F2D5C6F8;
  sub_1B5D752BC((a1 + 16));

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D78B88(uint64_t a1)
{
  *a1 = &unk_1F2D5C620;
  sub_1B5D0C050(*(a1 + 120));
  *(a1 + 8) = &unk_1F2D5C6F8;
  sub_1B5D752BC((a1 + 16));
  return a1;
}

uint64_t sub_1B5D78C04(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1B5D78C44(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 8);
  result = sub_1B5D5ECC8(v3, a2);
  if ((v3 + 8) == result)
  {
    return sub_1B5D5F768(v3, a2);
  }

  return result;
}

uint64_t sub_1B5D78CA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59218;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D78D38()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v26 = *MEMORY[0x1E69E9840];
  result = (*(*v0 + 112))(v0);
  if (!result)
  {
    goto LABEL_30;
  }

  v7 = *(v4 + 24);
  v8 = *v4;
  v9 = HIBYTE(*v4) & 3;
  if (v7 + 1 <= v9)
  {
    LODWORD(__dst[0]) = *v4;
    __dst[1] = *(v4 + 1);
    LODWORD(__dst[2]) = v4[4];
    v11 = v7 + 1;
    LOBYTE(__dst[3]) = v11;
    if (v9 >= v11)
    {
      v12 = *(&__dst[2] + v11);
    }

    else
    {
      v12 = 0;
    }

    result = sub_1B5D677C0(*(v2 + 24), v12);
  }

  else
  {
    v10 = v8 & 0xFFFFFF;
    if ((v8 & 0xFFFFFF) != 0)
    {
      if (v10 < *(v5 + 84))
      {
        __assert_rtn("enumerateChildren", "PatriciaTrie.h", 275, "cursor.isRoot() || firstChildOffset >= m_trieRootOffset");
      }
    }

    else
    {
      if (*(v4 + 24))
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == 0;
      }

      if (!v13 || *(v4 + 16) != 0)
      {
        goto LABEL_30;
      }

      v10 = 0;
    }

    v15 = sub_1B5D67810(v5, v10);
    result = memcpy(__dst, v15, 0x10CuLL);
    v16 = 0x1FFFFFFFFFFFFD00;
    do
    {
      v17 = &__dst[v16];
      *(v17 + 1604) = v15[v16 + 802];
      v17[803] = v15[v16 + 803];
      *(v17 + 1608) = v15[v16 + 804];
      v16 += 3;
    }

    while (v16 * 8);
    v24 = *(v15 + 401);
    v25 = v15[804];
    v18 = __dst[1];
    if (LODWORD(__dst[1]))
    {
      v19 = 0;
      do
      {
        while (1)
        {
          v20 = &__dst[3 * *(&__dst[1] + v19 + 4) + 34];
          if ((*v20 & 0x10FFFFFF) == 0x10000000 && (v20[1] & 0xFF00000000) == 0)
          {
            break;
          }

          result = sub_1B5D677C0(*(v2 + 24), *(v20 + 4));
          if (++v19 >= v18)
          {
            goto LABEL_30;
          }
        }

        ++v19;
      }

      while (v19 < v18);
    }
  }

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D78FA8()
{
  __p = 0;
  v1 = 0uLL;
  operator new();
}

void sub_1B5D79044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D79060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v17[1] = a5;
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v17[0] = 0;
    v16 = 0;
    result = (*(*a1 + 128))(a1, a2, v17);
    if (!result || ((v11 = *(a3 + 23), v11 >= 0) ? (v12 = a3) : (v12 = *a3), v11 >= 0 ? (v13 = *(a3 + 23)) : (v13 = *(a3 + 8)), result = sub_1B5D61690(*(a4 + 24), v17[0], v12, v13, &v16), (v16 & 1) == 0))
    {
      if ((a5 & 0x80000000) != 0)
      {
        goto LABEL_14;
      }

      v14 = *(a3 + 23);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 8);
      }

      if (v14 < a5)
      {
LABEL_14:
        operator new();
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1B5D67B54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D79234(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D591F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D79274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 8;
  v5 = *(a1 + 8);
  v6 = *(v7 + 8);
  v8 = *(a3 + 24);
  if ((*(a3 + 3) & 3u) >= v8)
  {
    v9 = *(a3 + v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  std::string::push_back(v5, v9);
  result = sub_1B5D79060(v6, a3, *(a1 + 8), *(a1 + 24), **(a1 + 32));
  v11 = *(a1 + 8);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = v11[1] - 1;
    v11[1] = v13;
    v11 = *v11;
  }

  else
  {
    v13 = v12 - 1;
    *(v11 + 23) = v13 & 0x7F;
  }

  *(v11 + v13) = 0;
  return result;
}

__n128 sub_1B5D79320(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D59198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D793CC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    if (*(a2 + 24) + 1 <= (*(a2 + 3) & 3u))
    {
      return 0;
    }

    else
    {
      v6 = *(a2 + 8);
      *a3 = v6;
      return v6 != 0;
    }
  }

  return result;
}

uint64_t sub_1B5D79448@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  *a5 = *a2;
  v8 = *(a2 + 8);
  *(a5 + 8) = v8;
  v9 = *(a2 + 16);
  *(a5 + 16) = v9;
  v10 = *(a2 + 24);
  *(a5 + 24) = v10;
  if (a4)
  {
    v11 = a4;
    v13 = result;
    do
    {
      if (v10 == -1)
      {
        goto LABEL_17;
      }

      v14 = *a3;
      if (v10 + 1 <= (HIBYTE(v7) & 3))
      {
        result = sub_1B5D67FA0(a5);
        if (result != v14)
        {
          goto LABEL_16;
        }

        v7 = *a5;
        v8 = *(a5 + 8);
        v9 = *(a5 + 16);
        v10 = *(a5 + 24) + 1;
      }

      else
      {
        result = (*(*v13 + 112))(v13, a5);
        if (!result)
        {
          goto LABEL_16;
        }

        v15 = *a5;
        if (*(a5 + 24) + 1 <= (HIBYTE(*a5) & 3u))
        {
          __assert_rtn("advanceCursorToChildNode", "PatriciaTrie.h", 378, "!cursor.hasMorePatriciaKeyBytes()");
        }

        v9 = v15 & 0xFFFFFF;
        if ((v15 & 0xFFFFFF) != 0)
        {
          goto LABEL_11;
        }

        v8 = 0;
        v10 = -1;
        if (*(a5 + 24) || v15)
        {
          v7 = v15 & 0xFFFFFF;
          goto LABEL_18;
        }

        v7 = 0;
        if (!*(a5 + 16))
        {
LABEL_11:
          result = sub_1B5D67810(v13, v9);
          v16 = result + 24 * v14;
          v17 = v16 + 272;
          v7 = *(v16 + 272);
          if (!v7)
          {
            v18 = *(v16 + 288);
            if (!*(v17 + 16))
            {
LABEL_16:
              v9 = 0;
              v8 = 0;
              v7 = 0;
LABEL_17:
              v10 = -1;
              goto LABEL_18;
            }
          }

          v10 = 0;
          v8 = *(v17 + 8);
          v9 = *(v17 + 16);
        }
      }

LABEL_18:
      *a5 = v7;
      *(a5 + 8) = v8;
      *(a5 + 16) = v9;
      ++a3;
      *(a5 + 24) = v10;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1B5D795F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 0xFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

void sub_1B5D7960C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void *sub_1B5D79620(uint64_t a1, const void *a2, size_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(*a1 + 104))(v10);
  result = (*(*a1 + 120))(v13, a1, v10, a2, a3);
  LODWORD(v10[0]) = v13[0];
  v10[1] = v13[1];
  v11 = v14;
  v12 = v15;
  if (v15 != 255)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a3 < 0x17)
      {
        v9 = a3;
        if (a3)
        {
          memmove(&__p, a2, a3);
        }

        *(&__p + a3) = 0;
        operator new();
      }

      operator new();
    }

    sub_1B5D114C8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1B5D615AC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7986C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59178))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D798AC(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = v9 + v8;
  v11 = a1[1];
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = *(v11 + 23);
  }

  v14 = *a3;
  if (v13 < v10)
  {
    std::string::resize(a1[1], v9 + v8, 0);
    v11 = a1[1];
    v9 = a1[3];
    LOBYTE(v12) = *(v11 + 23);
  }

  v15 = v11;
  if ((v12 & 0x80) != 0)
  {
    v15 = *v11;
  }

  if (v8)
  {
    memmove((v15 + v9), v14, v8);
    v11 = a1[1];
    LOBYTE(v12) = *(v11 + 23);
  }

  v16 = *a2;
  if ((v12 & 0x80) != 0)
  {
    v11 = *v11;
  }

  v17 = *(a1[4] + 24);

  return sub_1B5D61690(v17, v16, v11, v10, a4);
}

__n128 sub_1B5D79994(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D59118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *sub_1B5D79A40(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v18 = 0;
    (*(*result + 104))(v15);
    v8 = 0;
    v14 = 0;
    while (1)
    {
      result = (*(*v7 + 120))(v11, v7, v15, v8 + a2, 1);
      LODWORD(v15[0]) = v11[0];
      v15[1] = v11[1];
      v16 = v12;
      v17 = v13;
      if (v13 == 255)
      {
        break;
      }

      result = (*(*v7 + 128))(v7, v15, &v14);
      if (result)
      {
        v9 = v8 + 1;
        if (a3 >= v8 + 1)
        {
          v10 = v8 + 1;
        }

        else
        {
          v10 = a3;
        }

        result = sub_1B5D61690(*(a4 + 24), v14, a2, v10, &v18);
        if (v18)
        {
          return result;
        }

        ++v8;
        if (v9 >= a3)
        {
          return result;
        }
      }

      else if (++v8 >= a3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D79B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(v9);
  (*(*a1 + 120))(v10, a1, v9, a2, a3);
  return (*(*a1 + 128))(a1, v10, a4);
}

uint64_t sub_1B5D79C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  result = sub_1B5D00E78(a2, a3, 68, (a1 + 84));
  if (result)
  {
    v8 = 0;
    result = sub_1B5D00E78(*(a1 + 32), *(a1 + 40), 40, &v8);
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = v8;
      *(a1 + 6504) = v8;
      *(a1 + 6512) = v5;
      *(a1 + 6520) = v6;
      *(a1 + 12944) = v7;
      *(a1 + 12952) = v5;
      *(a1 + 12960) = v6;
      *(a1 + 80) = 1;
    }
  }

  return result;
}

void sub_1B5D79CE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) == (a3[1] - *a3) >> 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (v4 != v3)
    {
      v7 = 0;
      do
      {
        memset(v31, 0, sizeof(v31));
        v30 = 0u;
        LODWORD(v29) = *(*a3 + 4 * v7);
        HIDWORD(v29) = v7;
        v8 = (v3 + 24 * v7);
        v9 = v8[23];
        if ((v9 & 0x8000000000000000) != 0)
        {
          v8 = *v8;
          v9 = *(v3 + 24 * v7 + 8);
        }

        sub_1B5CFF868(&v30, v8, &v8[v9], v9);
        v10 = v31[2];
        v11 = v31[1];
        if (v9 <= v31[2] - v31[1])
        {
          if (v9 < v31[2] - v31[1])
          {
            v10 = v31[1] + v9;
            v31[2] = v31[1] + v9;
          }
        }

        else
        {
          sub_1B5D228D4(&v31[1], v9 - (v31[2] - v31[1]));
          v10 = v31[2];
          v11 = v31[1];
        }

        if (v11 != v10)
        {
          v12 = v10 - v11;
          v13 = vdupq_n_s64(v12 - 1);
          v14 = -((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = (v11 + 7);
          v16 = 15;
          do
          {
            v17 = v16 - 15;
            v18 = vdupq_n_s64(v16 - 15);
            v19 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC2630)));
            if (vuzp1_s8(vuzp1_s16(v19, *v13.i8), *v13.i8).u8[0])
            {
              *(v15 - 7) = v17;
            }

            if (vuzp1_s8(vuzp1_s16(v19, *&v13), *&v13).i8[1])
            {
              *(v15 - 6) = v17 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC2640)))), *&v13).i8[2])
            {
              *(v15 - 5) = v17 | 2;
              *(v15 - 4) = v17 | 3;
            }

            v20 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A60)));
            if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i32[1])
            {
              *(v15 - 3) = v17 | 4;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(v20, *&v13)).i8[5])
            {
              *(v15 - 2) = v17 | 5;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A50))))).i8[6])
            {
              *(v15 - 1) = v17 | 6;
              *v15 = v17 | 7;
            }

            v21 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3AB0)));
            if (vuzp1_s8(vuzp1_s16(v21, *v13.i8), *v13.i8).u8[0])
            {
              v15[1] = v17 | 8;
            }

            if (vuzp1_s8(vuzp1_s16(v21, *&v13), *&v13).i8[1])
            {
              v15[2] = v17 | 9;
            }

            if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3AA0)))), *&v13).i8[2])
            {
              v15[3] = v17 | 0xA;
              v15[4] = v17 | 0xB;
            }

            v22 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A90)));
            if (vuzp1_s8(*&v13, vuzp1_s16(v22, *&v13)).i32[1])
            {
              v15[5] = v17 | 0xC;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(v22, *&v13)).i8[5])
            {
              v15[6] = v17 | 0xD;
            }

            if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v18, xmmword_1B5DC3A80))))).i8[6])
            {
              v15[7] = v17 | 0xE;
              v15[8] = v17 | 0xF;
            }

            v16 += 16;
            v15 += 16;
          }

          while (v14 + v16 != 15);
        }

        *v32 = 0x3FF0000000000000;
        *&v32[8] = 1;
        v32[12] = 0;
        v23 = v27;
        if (v27 >= v28)
        {
          v27 = sub_1B5D68C50(&v26, &v29);
          if (v31[1])
          {
            v31[2] = v31[1];
            operator delete(v31[1]);
          }
        }

        else
        {
          *v27 = v29;
          v23[1] = 0;
          v23[3] = 0;
          v23[4] = 0;
          v23[2] = 0;
          *(v23 + 1) = v30;
          v23[3] = v31[0];
          v30 = 0uLL;
          v23[5] = 0;
          v23[6] = 0;
          *(v23 + 2) = *&v31[1];
          v23[6] = v31[3];
          memset(v31, 0, sizeof(v31));
          v24 = *v32;
          *(v23 + 61) = *&v32[5];
          v23[7] = v24;
          v27 = v23 + 9;
        }

        if (v30)
        {
          *(&v30 + 1) = v30;
          operator delete(v30);
        }

        ++v7;
        v3 = *a2;
      }

      while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }

    sub_1B5D5F528(a1);
  }

  __assert_rtn("build", "PatriciaTrie.h", 140, "keys.size() == values.size()");
}

void sub_1B5D7A1B0(_Unwind_Exception *a1)
{
  *(v2 - 160) = v1;
  sub_1B5D018D4((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7A1E0(uint64_t a1, void *a2)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8 = 1;
  if (a2[1] != *a2)
  {
    v4 = 2;
    do
    {
      sub_1B5D0DE58(&__p, &v8);
      v8 = v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= v4++);
  }

  v6 = (*(*a1 + 64))(a1, a2, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_1B5D7A2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D7A2D0@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[5];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = result[4];
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

void sub_1B5D7A370(uint64_t a1)
{
  sub_1B5D5F5D8(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D7A3B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D58F20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D7A3F8(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (v6 + 8 == sub_1B5D5ECC8(v6, a2))
  {
    v27 = 0;
    v25 = 0u;
    *__p = 0u;
    *v24 = 0u;
    v7 = *a2;
    if (v7 <= 0xE)
    {
      v8 = (a2 + 1);
    }

    else
    {
      v8 = *(a2 + 1);
    }

    sub_1B5CFF868(&v24[1], v8, &v8[v7], v7);
    v9 = *(a1 + 16);
    memset(v40, 0, sizeof(v40));
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_1B5D5CABC(v41, a3);
    v10 = 0;
    for (i = 0; ; v10 = HIWORD(i))
    {
      v11 = v42;
      if (!v42)
      {
        sub_1B5CDF8F4(v41);
        v11 = v42;
      }

      if (v10 >= v11)
      {
        break;
      }

      v12 = LOWORD(v40[0]);
      LOBYTE(v31) = v40[0];
      sub_1B5D7A7FC(&v37, &v31);
      v13 = sub_1B5D8EBAC(v41);
      (*(**(v9 + 1376) + 16))(&v35);
      if (v35 >= 3u)
      {
        ++*(v9 + 8);
      }

      sub_1B5CDD368(&v31, v9, v40, v13, &v35);
      if (v12 >= 0xF && *(&v40[0] + 1))
      {
        MEMORY[0x1B8C880C0](*(&v40[0] + 1), 0x1000C8077774924);
      }

      v40[0] = v31;
      if (v31 >= 0xFu)
      {
        LOWORD(v31) = 0;
      }

      LOBYTE(v40[1]) = v32;
      if (WORD4(v40[1]) >= 0xFu && *&v40[2])
      {
        MEMORY[0x1B8C880C0](*&v40[2], 0x1000C8077774924);
      }

      *(&v40[1] + 8) = v33;
      if (v33 >= 0xFu)
      {
        LOWORD(v33) = 0;
      }

      DWORD2(v40[2]) = v34;
      if (v31 >= 0xFu && *(&v31 + 1))
      {
        MEMORY[0x1B8C880C0](*(&v31 + 1), 0x1000C8077774924);
      }

      if (v35 >= 0xFu)
      {
        if (v36)
        {
          MEMORY[0x1B8C880C0](v36, 0x1000C8077774924);
        }
      }
    }

    v22 = 0uLL;
    v23 = 0;
    v14 = v37;
    v15 = v38 - v37;
    if (v38 != v37)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v17 <= v14[v16])
        {
          do
          {
            LOBYTE(v31) = v16;
            sub_1B5D7A7FC(&v22, &v31);
            v18 = v17 + 1;
          }

          while (v17++ < v14[v16]);
        }

        else
        {
          v18 = v17;
        }

        ++v16;
        v17 = v18;
      }

      while (v16 < v15);
    }

    if (v44)
    {
      v20 = v43 == 1;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      free(v44);
    }

    if (v14)
    {
      operator delete(v14);
    }

    if (WORD4(v40[1]) >= 0xFu && *&v40[2])
    {
      MEMORY[0x1B8C880C0](*&v40[2], 0x1000C8077774924);
    }

    if (LOWORD(v40[0]) >= 0xFu && *(&v40[0] + 1))
    {
      MEMORY[0x1B8C880C0](*(&v40[0] + 1), 0x1000C8077774924);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v22;
    v27 = v23;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_1B5D5F3A4(*(a1 + 8), a2);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v24[1])
    {
      *&v25 = v24[1];
      operator delete(v24[1]);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B5D7A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int16 a28, uint64_t a29, void *__p)
{
  sub_1B5D2D650((v30 - 176));
  sub_1B5D5F4E4(&a13);
  _Unwind_Resume(a1);
}

void sub_1B5D7A7FC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1B5D04FA0();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

__n128 sub_1B5D7A8F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D58EC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D7A990(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[10];
    if (v3)
    {
      __p[11] = v3;
      operator delete(v3);
    }

    v4 = __p[7];
    if (v4)
    {
      __p[8] = v4;
      operator delete(v4);
    }

    if (*(__p + 16) >= 0xFu)
    {
      v5 = __p[5];
      if (v5)
      {
        MEMORY[0x1B8C880C0](v5, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D7AA30(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D588B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1B5D7AA70(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 8);
  result = sub_1B5D5ECC8(v3, a2);
  if ((v3 + 8) == result)
  {
    return sub_1B5D5EDC0(v3, a2);
  }

  return result;
}

uint64_t sub_1B5D7AAD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D58850;
  a2[1] = v2;
  return result;
}

uint64_t *sub_1B5D7AB64(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1B5D01D0C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_1B5D7AD88(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      sub_1B5CE62F8(a1 + 2, a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  sub_1B5CE62F8(a1 + 2, a2 + 4, v8);
  a1[3] = &v7[v8];
  a1[4] = (a3 - v8 - 4) >> 3;
  return 1;
}

void sub_1B5D7AE44(std::ios_base::failure *a1, const void **a2, uint64_t a3, unsigned int a4)
{
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = &v19;
  sub_1B5D4DDDC(&v19, v8 + 13);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v19.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, " failed for '");
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  v14 = std::string::append(&v19, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v20, "'", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __msg.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__msg.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  *&__ec.__val_ = a4;
  __ec.__cat_ = std::generic_category();
  std::ios_base::failure::failure(a1, &__msg, &__ec);
  if (SHIBYTE(__msg.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__msg.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1B5D7AFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D7AFF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_1F2D59BA8;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    sub_1B5CE688C(a1 + 2, a2, v10, a4);
    result = sub_1B5D5FE94(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7B0C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7B0E8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59C08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7B128(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D7B188(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return sub_1B5CE86A4(v9, v8, v6, v7, a4);
}

unint64_t sub_1B5D7B188(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1B5D07108(exception, "Marisa Payload");
      __cxa_throw(exception, off_1E7C20490, MEMORY[0x1E69E5280]);
    }

    return *(*(a1 + 24) + 8 * a2);
  }

  return a2;
}

__n128 sub_1B5D7B214(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D59BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D7B2BC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59690))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_1B5D7B2FC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1B5D0E3EC(*(a1 + 8), *a3, *(a3 + 8));
  *a4 = 1;
  return result;
}

uint64_t sub_1B5D7B338(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59630;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7B3D8(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59710))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D7B418(uint64_t a1, uint64_t a2, unsigned __int8 **a3, BOOL *a4)
{
  v4 = a3[1];
  if (!v4)
  {
    __assert_rtn("operator()", "LXLemmatizerImpl.cpp", 127, "!posAndLemma.empty()");
  }

  if (**a3 <= 0xCu)
  {
    v7 = sub_1B5CDFA10(*a3 + 1, (v4 - 1));
    v8 = *(a1 + 16);
    (*(**(a1 + 8) + 16))();
    *a4 = **(a1 + 16) != 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_1B5D7B4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5CE5794(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_1B5D7B4F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D596B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D7B594(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a2 != a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v5 = *a2;
      v4 = a2[1];
    }

    sub_1B5D60A70(1uLL);
  }

  sub_1B5CE61D0((a1 + 16), &__p, a4, *(a1 + 8));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t sub_1B5D7B730@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_1B5CF7CDC(v17);
  sub_1B5CE64A4(a1 + 2, &v18);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v5 = v20[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - locale;
  if (v4)
  {
    memmove(&__dst, locale, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  v7 = a1[4];
  if (v7)
  {
    v8 = SHIBYTE(v16);
    if (v16 >= 0)
    {
      v9 = HIBYTE(v16);
    }

    else
    {
      v9 = *(&__dst + 1);
    }

    *__s = v9;
    v10 = a1[3];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v8 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    std::string::append(a2, p_dst, v9);
    std::string::append(a2, v10, 8 * v7);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = __dst;
    a2->__r_.__value_.__r.__words[2] = v16;
  }

  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C88080](&v26);
}

void sub_1B5D7BA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_1B5CFBC44(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](va);
  _Unwind_Resume(a1);
}

void *sub_1B5D7BA60(void *a1)
{
  *a1 = &unk_1F2D598D0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1B5CE61CC(a1 + 2);
  return a1;
}

uint64_t sub_1B5D7BAB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_1F2D59C28;
    v8[1] = a3;
    v8[3] = v8;
    sub_1B5CE6910(a1 + 2, a2, v8);
    result = sub_1B5D5FC3C(v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7BB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FC3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7BBA0(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59C88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7BBF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59C28;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7BC88(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  v6 = sub_1B5CE6574(a1 + 2, a2, &v8);
  if (v6)
  {
    *a3 = sub_1B5D7B188(a1, v8);
  }

  return v6;
}

double sub_1B5D7BD4C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B5D7BD58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2D59B28;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  sub_1B5CE6784((a1 + 16), a2, a3, v7, a5);
  result = sub_1B5D5FE94(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7BDE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7BE00(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59B88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7BE40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D7B188(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return sub_1B5CE86A4(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D7BEA8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D59B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D7BF44(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D59AA8;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_1B5CE6700((a1 + 16), a2, a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7BFCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7BFEC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59B08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7C02C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_1B5D7B188(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return sub_1B5CE86A4(v9, v8, v6, v7, a4);
}

__n128 sub_1B5D7C094(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D59AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5D7C130(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v8 = 0;
  v6 = sub_1B5CE65F8((a1 + 16), a2, a3, &v8);
  if (v6)
  {
    *a4 = sub_1B5D7B188(a1, v8);
  }

  return v6;
}

uint64_t sub_1B5D7C190(void *a1, uint64_t **a2, uint64_t **a3)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = sub_1B5D7B594(a1, v5, v6, &__p);
  if (v9)
  {
    sub_1B5CE96E0(a1 + 5, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    v10 = a1[5];
    v11 = a2[1] - *a2;
    if (v11)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v13 = *a3;
      v14 = __p;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        *(v10 + 8 * v17) = v15;
        --v12;
      }

      while (v12);
    }

    v18 = (a1[6] - v10) >> 3;
    a1[3] = v10;
    a1[4] = v18;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1B5D7C2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D7C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D59A28;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7C384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7C3A4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59A88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7C408(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D59A28;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2D599A8;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3, v6);
  result = sub_1B5D5FE94(v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D7C540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D5FE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D7C560(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D59A08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D7C5C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D599A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5D7C658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_1B5D7C6B4(uint64_t *a1, uint64_t a2, void **a3, size_t *a4, uint64_t *a5)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  __src = 0;
  v34 = 0;
  v35 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v12 = *a4++;
      v11 = v12;
      v31 = v12;
      v32 = v10;
      v13 = v37;
      if (v37 >= v38)
      {
        v14 = sub_1B5D61294(&v36, &v32, &v31);
      }

      else
      {
        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1B5D114C8();
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v37[23] = v11;
        if (v11)
        {
          memmove(v13, v10, v11);
        }

        *(v13 + v11) = 0;
        v14 = v13 + 24;
      }

      v37 = v14;
      if (a5)
      {
        v15 = *v9;
        v16 = v34;
        if (v34 >= v35)
        {
          v18 = __src;
          v19 = v34 - __src;
          v20 = (v34 - __src) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1B5D04FA0();
          }

          v22 = v35 - __src;
          if ((v35 - __src) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFF8;
          v24 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            sub_1B5CE1E28(&__src, v24);
          }

          *(8 * v20) = v15;
          v17 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          v25 = __src;
          __src = 0;
          v34 = v17;
          v35 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v34 = v15;
          v17 = (v16 + 8);
        }

        v34 = v17;
      }

      ++v9;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v26 = *a1;
  if (a5)
  {
    v27 = (*(v26 + 64))();
  }

  else
  {
    v27 = (*(v26 + 56))();
  }

  v28 = v27;
  if (__src)
  {
    v34 = __src;
    operator delete(__src);
  }

  __src = &v36;
  sub_1B5CE5D7C(&__src);
  return v28;
}