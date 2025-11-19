void sub_1AE720540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  v18 = a1;
  if (__p)
  {
    operator delete(__p);
    v18 = a1;
  }

  _Unwind_Resume(v18);
}

void sub_1AE7205EC(void *a1)
{
  sub_1AE692EE4(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE720628(uint64_t *a1, uint64_t a2)
{
  sub_1AE5CA7E0(__p, a2);
  v17 = *(a2 + 24);
  v4 = a1[4];
  if (v4 >= a1[5])
  {
    v6 = sub_1AE637444(a1 + 3, __p);
    v7 = SHIBYTE(v16);
    a1[4] = v6;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v16;
    *v4 = v5;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    *(v4 + 24) = v17;
    a1[4] = v4 + 32;
  }

  sub_1AE5CA7E0(__p, a2);
  v17 = *(a2 + 24);
  v8 = a1[7];
  if (v8 >= a1[8])
  {
    v10 = sub_1AE637444(a1 + 6, __p);
    v11 = SHIBYTE(v16);
    a1[7] = v10;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = *__p;
    *(v8 + 16) = v16;
    *v8 = v9;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    *(v8 + 24) = v17;
    a1[7] = v8 + 32;
  }

  v12 = a1[1];
  if (v12 >= a1[2])
  {
    result = sub_1AE5CAEF8(a1, a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_1AE5DBF1C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v13 = *a2;
      *(v12 + 16) = *(a2 + 16);
      *v12 = v13;
    }

    *(v12 + 24) = *(a2 + 24);
    result = v12 + 32;
    a1[1] = v12 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_1AE720790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE7207B0(void ***a1, void ***a2)
{
  v6 = a1[17];
  v5 = a1[18];
  v4 = a1 + 17;
  while (v5 != v6)
  {
    v7 = *(v5 - 9);
    v5 -= 4;
    if (v7 < 0)
    {
      operator delete(*v5);
    }
  }

  v8 = a1[20];
  a1[18] = v6;
  v9 = a1[21];
  while (v9 != v8)
  {
    v10 = *(v9 - 9);
    v9 -= 4;
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  a1[21] = v8;
  if (v4 != a2)
  {
    sub_1AE6A5530(v4, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  if (a1 + 20 != a2)
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;

    sub_1AE6A5530(a1 + 20, v11, v12, v13);
  }
}

uint64_t sub_1AE720898(uint64_t result, void *a2)
{
  if (a2[4] - a2[3] < 0x21uLL)
  {
    v5 = a2[18];
    if (a2[17] == v5)
    {
      __assert_rtn("lastToken", "CompletionStemImpl.cpp", 137, "false");
    }

    if (*(v5 - 9) < 0)
    {
      v8 = result;
      sub_1AE5DBF1C(result, *(v5 - 32), *(v5 - 24));
      result = v8;
    }

    else
    {
      v6 = *(v5 - 32);
      *(result + 16) = *(v5 - 16);
      *result = v6;
    }

    v4 = (v5 - 8);
  }

  else
  {
    v2 = a2[4];
    if (*(v2 - 41) < 0)
    {
      v7 = result;
      sub_1AE5DBF1C(result, *(v2 - 64), *(v2 - 56));
      result = v7;
    }

    else
    {
      v3 = *(v2 - 64);
      *(result + 16) = *(v2 - 48);
      *result = v3;
    }

    v4 = (v2 - 40);
  }

  *(result + 24) = *v4;
  return result;
}

void sub_1AE720974(std::string *this, const void **a2, const void **a3)
{
  *(&this->__r_.__value_.__s + 23) = 0;
  this->__r_.__value_.__s.__data_[0] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = *(v4 + 23);
      }

      else
      {
        v7 = v4[1];
      }

      if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      if (v7 + 1 >= 0x17)
      {
        operator new();
      }

      v12 = 0;
      v13 = 0;
      __p = 0;
      HIBYTE(v13) = v7 + 1;
      if (v7)
      {
        if ((v6 & 0x80u) == 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = *v4;
        }

        memmove(&__p, v8, v7);
      }

      *(&__p + v7) = 32;
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v13 >= 0)
      {
        v10 = HIBYTE(v13);
      }

      else
      {
        v10 = v12;
      }

      std::string::append(this, p_p, v10);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p);
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

const void **sub_1AE720AD0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE720B08()
{
  RootCursor = LXLexiconCreateRootCursor();
  v1 = LXCursorCreateByAdvancing();
  LXCursorEnumerateEntriesRecursively();
  if (v1)
  {
    CFRelease(v1);
  }

  if (RootCursor)
  {
    CFRelease(RootCursor);
  }
}

void sub_1AE720BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AE720AD0(va);
  sub_1AE720AD0((v7 - 40));
  _Unwind_Resume(a1);
}

void sub_1AE720BE8(uint64_t a1)
{
  v2 = LXEntryCopyString();
  v3 = *(a1 + 32);
  LXEntryGetProbability();
  v7 = v2;
  v6 = v4;
  v5 = *(v3 + 24);
  if (!v5)
  {
    sub_1AE60819C();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1AE720C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE720CA0(uint64_t a1, uint64_t a2)
{
  v57[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B2705500](*(a2 + 8));
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    cf.__r_.__value_.__r.__words[0] = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf.__r_.__value_.__l.__data_))
    {
      sub_1AE5CAD24(a1, cf.__r_.__value_.__l.__data_);
      CFRelease(cf.__r_.__value_.__l.__data_);
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      sub_1AE68CF18(&v49, *a2, 46);
      v53 = 20;
      strcpy(valuePtr, "CoreLM configuration");
      if (v49 == v50)
      {
        v31 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v32 = std::string::append(&__dst, " resource", 9uLL);
        cf = *v32;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        sub_1AE660DB0(v31, &cf);
        __cxa_throw(v31, &unk_1F2432910, sub_1AE64FC40);
      }

      if (v50 - v49 != 16)
      {
        sub_1AE5F2968(&cf);
        v33 = sub_1AE5DB608(&cf.__r_.__value_.__r.__words[2], "Duplicate ", 10);
        if (v53 >= 0)
        {
          v34 = valuePtr;
        }

        else
        {
          v34 = *valuePtr;
        }

        if (v53 >= 0)
        {
          v35 = v53;
        }

        else
        {
          v35 = *&valuePtr[8];
        }

        v36 = sub_1AE5DB608(v33, v34, v35);
        sub_1AE5DB608(v36, " resources:", 11);
        v37 = v49;
        v38 = v50;
        if (v49 != v50)
        {
          do
          {
            v42 = sub_1AE5DB608(&cf.__r_.__value_.__r.__words[2], " '", 2);
            Value = CFDictionaryGetValue(**v37, @"URL");
            sub_1AE77025C(Value);
            sub_1AE77028C(v48, Value);
            sub_1AE77033C(__p, v48);
            sub_1AE7703A8(v57, *__p[0]);
            sub_1AE770458(__p, v57);
            sub_1AE7704C4(&__dst, *__p[0]);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            v46 = sub_1AE5DB608(v42, p_dst, size);
            sub_1AE5DB608(v46, "'", 1);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            sub_1AE63109C(v57);
            sub_1AE68C59C(v48);
            v37 += 2;
          }

          while (v37 != v38);
        }

        v39 = __cxa_allocate_exception(0x20uLL);
        sub_1AE6963BC(&__dst, &v56);
        sub_1AE660DB0(v39, &__dst);
        __cxa_throw(v39, &unk_1F2432910, sub_1AE64FC40);
      }

      sub_1AE68CD74(valuePtr, **v49);
      if (!*valuePtr)
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v40, "Could not construct");
        __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      sub_1AE726040(&cf, *valuePtr, qword_1EB5E05B0);
      if (v56 == 1)
      {
        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          if (cf.__r_.__value_.__l.__size_ > 19)
          {
            if (cf.__r_.__value_.__l.__size_ == 20)
            {
              v11 = cf.__r_.__value_.__r.__words[0];
              if (*cf.__r_.__value_.__l.__data_ != 0x6974697263616944 || *(cf.__r_.__value_.__r.__words[0] + 8) != 0x69736E65736E4963 || *(cf.__r_.__value_.__r.__words[0] + 16) != 1702259060)
              {
                goto LABEL_111;
              }
            }

            else
            {
              if (cf.__r_.__value_.__l.__size_ != 27)
              {
                goto LABEL_111;
              }

              v11 = cf.__r_.__value_.__r.__words[0];
              v15 = *cf.__r_.__value_.__l.__data_ == 0x44646E4165736143 && *(cf.__r_.__value_.__r.__words[0] + 8) == 0x6369746972636169;
              v16 = v15 && *(cf.__r_.__value_.__r.__words[0] + 16) == 0x7469736E65736E49;
              if (!v16 || *(cf.__r_.__value_.__r.__words[0] + 19) != 0x6576697469736E65)
              {
                goto LABEL_111;
              }
            }
          }

          else if (cf.__r_.__value_.__l.__size_ == 5)
          {
            v11 = cf.__r_.__value_.__r.__words[0];
            if (*cf.__r_.__value_.__l.__data_ != 1667332165 || *(cf.__r_.__value_.__r.__words[0] + 4) != 116)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (cf.__r_.__value_.__l.__size_ != 15)
            {
              goto LABEL_111;
            }

            v11 = cf.__r_.__value_.__r.__words[0];
            if (*cf.__r_.__value_.__l.__data_ != 0x65736E4965736143 || *(cf.__r_.__value_.__r.__words[0] + 7) != 0x6576697469736E65)
            {
              goto LABEL_111;
            }
          }

          operator delete(v11);
          v10 = *valuePtr;
          if (!*valuePtr)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        switch(HIBYTE(cf.__r_.__value_.__r.__words[2]))
        {
          case 5u:
            if (LODWORD(cf.__r_.__value_.__l.__data_) == 1667332165 && cf.__r_.__value_.__s.__data_[4] == 116)
            {
              v10 = *valuePtr;
              if (!*valuePtr)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }

            break;
          case 0xFu:
            if (cf.__r_.__value_.__r.__words[0] == 0x65736E4965736143 && *(cf.__r_.__value_.__r.__words + 7) == 0x6576697469736E65)
            {
              v10 = *valuePtr;
              if (!*valuePtr)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }

            break;
          case 0x14u:
            v8 = cf.__r_.__value_.__r.__words[0] == 0x6974697263616944 && cf.__r_.__value_.__l.__size_ == 0x69736E65736E4963;
            if (!v8 || LODWORD(cf.__r_.__value_.__r.__words[2]) != 1702259060)
            {
              break;
            }

            v10 = *valuePtr;
            if (!*valuePtr)
            {
LABEL_75:
              sub_1AE68CD74(valuePtr, **v49);
              if (!*valuePtr)
              {
                v41 = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x1B2705EB0](v41, "Could not construct");
                __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              sub_1AE726040(&cf, *valuePtr, qword_1EB5E05B8);
              if (v56 == 1)
              {
                if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (cf.__r_.__value_.__l.__size_ == 6)
                  {
                    v22 = cf.__r_.__value_.__r.__words[0];
                    if (*cf.__r_.__value_.__l.__data_ != 1717924432 || *(cf.__r_.__value_.__r.__words[0] + 4) != 30825)
                    {
                      goto LABEL_112;
                    }

                    v47 = 0;
                  }

                  else
                  {
                    if (cf.__r_.__value_.__l.__size_ != 8)
                    {
                      goto LABEL_112;
                    }

                    v22 = cf.__r_.__value_.__r.__words[0];
                    if (*cf.__r_.__value_.__l.__data_ == 0x3156786966667553)
                    {
                      v23 = 1;
                    }

                    else
                    {
                      if (*cf.__r_.__value_.__l.__data_ != 0x3256786966667553)
                      {
                        goto LABEL_112;
                      }

                      v23 = 2;
                    }

                    v47 = v23;
                  }

                  operator delete(v22);
                  v25 = *valuePtr;
                  if (!*valuePtr)
                  {
                    goto LABEL_108;
                  }

                  goto LABEL_107;
                }

                if (HIBYTE(cf.__r_.__value_.__r.__words[2]) == 6)
                {
                  if (LODWORD(cf.__r_.__value_.__l.__data_) == 1717924432 && WORD2(cf.__r_.__value_.__r.__words[0]) == 30825)
                  {
                    v47 = 0;
                    v25 = *valuePtr;
                    if (!*valuePtr)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_107;
                  }
                }

                else if (HIBYTE(cf.__r_.__value_.__r.__words[2]) == 8)
                {
                  if (cf.__r_.__value_.__r.__words[0] == 0x3156786966667553)
                  {
                    v21 = 1;
LABEL_102:
                    v47 = v21;
                    v25 = *valuePtr;
                    if (!*valuePtr)
                    {
LABEL_108:
                      v48[3] = 0;
                      v48[4] = 0;
                      if (v47)
                      {
                        sub_1AE68CF18(v48, *a2, 54);
                        operator new();
                      }

                      operator new();
                    }

LABEL_107:
                    CFRelease(v25);
                    goto LABEL_108;
                  }

                  if (cf.__r_.__value_.__r.__words[0] == 0x3256786966667553)
                  {
                    v21 = 2;
                    goto LABEL_102;
                  }
                }
              }

LABEL_112:
              v28 = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              sub_1AE660DB0(v28, &__dst);
              __cxa_throw(v28, &unk_1F2432910, sub_1AE64FC40);
            }

LABEL_74:
            CFRelease(v10);
            goto LABEL_75;
          default:
            break;
        }
      }

LABEL_111:
      v27 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      sub_1AE660DB0(v27, &__dst);
      __cxa_throw(v27, &unk_1F2432910, sub_1AE64FC40);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v29, "Could not convert");
  }

  else
  {
    cf.__r_.__value_.__r.__words[0] = 0;
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v29, "Could not construct");
  }

  __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AE7252D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  sub_1AE5F2C0C(&a60, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B2706340](&STACK[0x200]);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6315E0(&a34);
  sub_1AE622290(a14);
  sub_1AE622290(a15);
  sub_1AE622290(a16);
  sub_1AE622290(a13);
  sub_1AE622290(v60);
  if (*(a25 + 23) < 0)
  {
    operator delete(*a25);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE726030);
}

void sub_1AE7256A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57)
{
  __cxa_free_exception(v57);
  sub_1AE621E54(&a57);
  _Unwind_Resume(a1);
}

void sub_1AE7256E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_1AE622290(v39);
  sub_1AE622290(&a29);
  sub_1AE622290(v41 - 128);
  sub_1AE622290(&a39);
  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v42);
  JUMPOUT(0x1AE725F34);
}

void sub_1AE725754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1AE5E1BBC(v24 + 60);
  sub_1AE5F6784(a24);
  sub_1AE622258((v25 + 48));
  JUMPOUT(0x1AE725E9CLL);
}

void sub_1AE72576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57)
{
  sub_1AE63109C(&a57);
  sub_1AE645234(v58 + 3);
  sub_1AE645234(v58);
  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  std::__shared_weak_count::~__shared_weak_count(v57);
  operator delete(v60);
  sub_1AE6315E0(&a29);
  JUMPOUT(0x1AE725F3CLL);
}

void sub_1AE725780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v30);
  sub_1AE6315E0(&a29);
  JUMPOUT(0x1AE725F3CLL);
}

void sub_1AE7257CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1AE5F6784(&a39);
  v61 = v60;
  sub_1AE5F6784(&a45);
  sub_1AE5F6784(&a51);
  do
  {
    v61 -= 48;
    sub_1AE6FB3E4(v61);
  }

  while (v61 != &a57);
  std::__shared_weak_count::~__shared_weak_count(v59);
  operator delete(v62);
  sub_1AE622290(a24);
  sub_1AE622290(v58);
  sub_1AE622290(v57);
  sub_1AE622290(&a37);
  sub_1AE622290(&a29);
  JUMPOUT(0x1AE725F24);
}

void sub_1AE7257EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_1AE5F6784(&a51);
  std::__shared_weak_count::~__shared_weak_count(v51);
  operator delete(v52);
  JUMPOUT(0x1AE725D60);
}

void sub_1AE725800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1AE622290(v39);
  sub_1AE622290(v38);
  sub_1AE622290(v37);
  sub_1AE622290(&a37);
  sub_1AE622290(&a29);
  JUMPOUT(0x1AE725F24);
}

void sub_1AE725814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1AE622290(&a45);
  sub_1AE622290(&a57);
  JUMPOUT(0x1AE725F00);
}

void sub_1AE7258BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57)
{
  __cxa_free_exception(v57);
  sub_1AE63109C(&a57);
  _Unwind_Resume(a1);
}

void sub_1AE7258D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, const void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((v66 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v66)
  {
LABEL_6:
    if (a66 == 1 && a65 < 0)
    {
      operator delete(a60);
    }

    sub_1AE621CF0(&a45);
    JUMPOUT(0x1AE725F48);
  }

  __cxa_free_exception(v67);
  goto LABEL_6;
}

void sub_1AE725958(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  v56[1].__shared_weak_owners_ = v57;
  if (a56 < 0)
  {
    operator delete(__p);
  }

  sub_1AE5E1BBC(v58 + 60);
  sub_1AE5F6784(a24);
  sub_1AE622258((v59 + 48));
  sub_1AE645234((v59 + 24));
  sub_1AE645234(v59);
  if (*(v60 - 105) < 0)
  {
    operator delete(*(v60 - 128));
  }

  std::__shared_weak_count::~__shared_weak_count(v56);
  operator delete(v61);
  JUMPOUT(0x1AE725F3CLL);
}

void sub_1AE725970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1AE6FB360(v58 + 48);
  sub_1AE6FB3E4(v59);
  sub_1AE6FB3E4(v57);
  sub_1AE6FB3E4(&a57);
  JUMPOUT(0x1AE72599CLL);
}

void sub_1AE7259A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  *(v56 + 40) = v58;
  if (a56 < 0)
  {
    operator delete(__p);
  }

  sub_1AE5E1BBC(v57 + 60);
  sub_1AE5F6784(a24);
  sub_1AE622258((v59 + 48));
  JUMPOUT(0x1AE725E9CLL);
}

void sub_1AE7259DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  sub_1AE66D210(v77);
  if (a77 < 0)
  {
    operator delete(__p);
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a75 & 0x80000000) == 0)
  {
LABEL_3:
    if (a73 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(a74);
  if (a73 < 0)
  {
LABEL_4:
    operator delete(a69);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a62 & 0x80000000) == 0)
    {
LABEL_7:
      sub_1AE622290(v78 + 72);
      JUMPOUT(0x1AE725D60);
    }

LABEL_6:
    operator delete(a57);
    goto LABEL_7;
  }

LABEL_11:
  operator delete(a63);
  if ((a62 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  goto LABEL_6;
}

void sub_1AE725A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_1AE5F6784(&a45);
  sub_1AE5F6784(&a51);
  JUMPOUT(0x1AE725AB4);
}

void sub_1AE725B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  sub_1AE645234(&a45);
  sub_1AE645234(&a51);
  sub_1AE645234(&a57);
  sub_1AE66D210(v58);
  sub_1AE66D210(v59 + 416);
  if (*(v59 + 415) < 0)
  {
    operator delete(*v57);
  }

  if (*(v59 + 384) == 1 && *(v59 + 383) < 0)
  {
    operator delete(*(v59 + 360));
  }

  sub_1AE746818(a20);
  JUMPOUT(0x1AE725CF8);
}

void sub_1AE725B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a53 < 0)
  {
    operator delete(__p);
    if (a44 < 0)
    {
LABEL_5:
      operator delete(a39);
      if ((a62 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      operator delete(a57);
LABEL_9:
      sub_1AE5E1BBC(v63 + 60);
      sub_1AE5F6784(a24);
      sub_1AE622258((v64 + 48));
      sub_1AE645234((v64 + 24));
      sub_1AE645234(v64);
      if (*(v65 - 105) < 0)
      {
        operator delete(*(v65 - 128));
      }

      std::__shared_weak_count::~__shared_weak_count(v62);
      operator delete(v66);
      JUMPOUT(0x1AE725F3CLL);
    }
  }

  else if (a44 < 0)
  {
    goto LABEL_5;
  }

  if ((a62 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_1AE725BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_1AE5F6784(v22);
  sub_1AE69E24C(a22);
  JUMPOUT(0x1AE725C38);
}

void sub_1AE725C44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a53 < 0)
  {
    operator delete(__p);
    if (a44 < 0)
    {
LABEL_5:
      operator delete(a39);
      if ((a62 & 0x80000000) == 0)
      {
LABEL_9:
        JUMPOUT(0x1AE725E84);
      }

LABEL_8:
      operator delete(a57);
      goto LABEL_9;
    }
  }

  else if (a44 < 0)
  {
    goto LABEL_5;
  }

  if ((a62 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_1AE725C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1AE5E1BBC(v25 + 60);
  sub_1AE5F6784(a24);
  sub_1AE622258(v26 + 48);
  sub_1AE645234(v26 + 24);
  sub_1AE645234(v26);
  if (*(v27 - 105) < 0)
  {
    operator delete(*(v27 - 128));
  }

  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v28);
  JUMPOUT(0x1AE725F3CLL);
}

void sub_1AE725C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if ((a44 & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE725CA8);
  }

  JUMPOUT(0x1AE725C70);
}

void sub_1AE725CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    JUMPOUT(0x1AE725CC8);
  }

  JUMPOUT(0x1AE725E84);
}

void sub_1AE725CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  shared_owners = v29[13].__shared_owners_;
  if (shared_owners)
  {
    operator delete(shared_owners);
  }

  sub_1AE5F6784(&v29[11].__shared_owners_);
  sub_1AE746628(a20);
  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v31);
  sub_1AE6315E0(&a29);
  JUMPOUT(0x1AE725F3CLL);
}

void sub_1AE725D14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1AE725D40);
}

void sub_1AE725D90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, std::mutex *a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 a51)
{
  sub_1AE622258((v51 - 128));
  sub_1AE63109C(&a39);
  sub_1AE622290(&a26);
  sub_1AE660D5C(&a28);
  sub_1AE622290(&a32);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&a51, "Failed at loading Toucan language Model Resource");
    sub_1AE660DB0(exception, &a51);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE6315E0(&a34);
  sub_1AE622290(a14);
  sub_1AE622290(a15);
  sub_1AE622290(a16);
  sub_1AE622290(a13);
  sub_1AE622290(a12);
  if (*(a25 + 23) < 0)
  {
    operator delete(*a25);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE725DB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
    if ((v62 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v62)
  {
LABEL_6:
    sub_1AE6089C0(&a51);
    JUMPOUT(0x1AE725DF8);
  }

  __cxa_free_exception(v63);
  goto LABEL_6;
}

void sub_1AE725E44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
    if ((v62 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v62)
  {
LABEL_6:
    sub_1AE6089C0(&a51);
    JUMPOUT(0x1AE725E84);
  }

  __cxa_free_exception(v63);
  goto LABEL_6;
}

void sub_1AE725ED4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  sub_1AE622258((v62 + 48));
  JUMPOUT(0x1AE725F08);
}

void sub_1AE725FAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((v56 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v56)
  {
LABEL_6:
    __cxa_end_catch();
    JUMPOUT(0x1AE725FE0);
  }

  __cxa_free_exception(v57);
  goto LABEL_6;
}

void sub_1AE726028(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1AE726030);
  }

  sub_1AE6090F0(a1);
}

_BYTE *sub_1AE726040(_BYTE *result, CFDictionaryRef theDict, void *key)
{
  v3 = result;
  if (theDict && key && (result = CFDictionaryGetValue(theDict, key), (v4 = result) != 0) && (TypeID = CFStringGetTypeID(), result = CFGetTypeID(v4), TypeID == result))
  {
    result = sub_1AE621740(v3, v4);
    v3[24] = 1;
  }

  else
  {
    *v3 = 0;
    v3[24] = 0;
  }

  return result;
}

const void **sub_1AE7260C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE7260FC(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    do
    {
      v8 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v8;
    }

    while (v8);
  }

  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 64);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 48);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(a1 + 32);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1AE7262BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242FAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE72633C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242FAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE7263D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242FA50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE726450(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  sub_1AE6A8898(a1 + 8);
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[6] = 0;
  v4 = a1[5];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1AE7264FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242FA00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE726574(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM19NeuralLanguageModelEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM19NeuralLanguageModelEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM19NeuralLanguageModelEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM19NeuralLanguageModelEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE7265D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE726600(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE726670(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1AE726790(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2432420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE726804(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  operator new();
}

void sub_1AE726C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  sub_1AE69F404(&a15);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE726CF8(void *a1)
{
  *a1 = &unk_1F242F968;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE726DA0(void *result)
{
  *result = &unk_1F242F968;
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

void sub_1AE726E50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242F918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE726EEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242F8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE726F60(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  v6 = *(a1 + 240);
  for (i = *(a1 + 248); v6 != i; v6 += 3)
  {
    (*(**v6 + 24))(&v19);
    v20 = v19;
    if (v19)
    {
      operator new();
    }

    v19 = 0;
    v8 = v6[2] + 1;
    v21 = 0;
    v22 = v8;
    v9 = v24;
    if (v24 >= v25)
    {
      v10 = sub_1AE6A48C8(&__p, &v20);
      v11 = v21;
      v24 = v10;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    else
    {
      *v24 = 0;
      v9[1] = 0;
      v9[2] = v8;
      v24 = v9 + 3;
    }

    v12 = v19;
    v19 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = *(a1 + 24);
  v14 = log10f(*(a2 + 4));
  v15 = *(a1 + 264);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_1AE6F75C0(a3, a1, (a1 + 32), a1 + 56, &__p, v15 + 1, 0, &v20, v14 + v13, 0.0);
  v16 = __p;
  if (__p)
  {
    v17 = v24;
    if (v24 != __p)
    {
      do
      {
        v18 = *(v17 - 2);
        if (v18)
        {
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }
        }

        v17 -= 3;
      }

      while (v17 != v16);
      v16 = __p;
    }

    operator delete(v16);
  }
}

void sub_1AE7271E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE69F404(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE727240(uint64_t a1, unsigned int *a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return (*(**(a1 + 8) + 152))(*(a1 + 8), *a2);
  }
}

void sub_1AE727278(void *a1)
{
  *a1 = &unk_1F242F870;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE727320(void *result)
{
  *result = &unk_1F242F870;
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

void sub_1AE7273D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242F820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE72746C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242F7D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE7274E8(void *a1)
{
  *a1 = &unk_1F242FB40;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE727558(void *a1)
{
  *a1 = &unk_1F242FB40;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1AE7275A8(void *a1, CFTypeRef cf, uint64_t a3)
{
  *a1 = &unk_1F242FB40;
  v5 = a1 + 1;
  if (cf)
  {
    CFRetain(cf);
    *v5 = cf;
    v7 = CFGetTypeID(cf);
    if (v7 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *v5 = 0;
  }

  a1[2] = a3;
  return a1;
}

void sub_1AE727668(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE65BA8C(v1);
  _Unwind_Resume(a1);
}

void sub_1AE727694(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727710;
  block[3] = &unk_1E7A2F0F8;
  block[4] = a1;
  *&block[5] = a3;
  v5 = a2;
  dispatch_sync(v3, block);
}

void sub_1AE727710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((*(a1 + 40) - *(v1 + 264)) * 0.0000115740741);
  if (*(a1 + 48) == 1)
  {
    if (v2 <= 1)
    {
      v2 = 1;
    }
  }

  else if (v2 < 1)
  {
    return;
  }

  v3 = *(v1 + 160);
  if (v3 != (v1 + 168))
  {
    do
    {
      v4 = v3[7];
      v5 = v2;
      if (v4 != v3 + 8)
      {
        do
        {
          v9 = v4;
          do
          {
            *(v9 + 14) = (*(v9 + 14) * 0.95);
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

            v9 = v11;
          }

          while (v11 != v3 + 8);
          v8 = __OFSUB__(v5--, 1);
        }

        while (!((v5 < 0) ^ v8 | (v5 == 0)));
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v12 = *v7 == v3;
          v3 = v7;
        }

        while (!v12);
      }

      v3 = v7;
    }

    while (v7 != (v1 + 168));
  }

  *(v1 + 264) = CFAbsoluteTimeGetCurrent();
}

void sub_1AE727848(uint64_t a1)
{
  v1 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE7278BC;
  block[3] = &unk_1E7A2F0D8;
  block[4] = a1;
  dispatch_sync(v1, block);
}

double sub_1AE7278C8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727978;
  block[3] = &unk_1E7A2F030;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1AE7279B0(uint64_t a1)
{
  v1 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727A24;
  block[3] = &unk_1E7A2F0B8;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1AE727A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE5CC864;
  block[3] = &unk_1E7A2F070;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void sub_1AE727AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727B20;
  block[3] = &unk_1E7A2F050;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

uint64_t sub_1AE727B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v4 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727BE8;
  block[3] = &unk_1E7A2F098;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_1AE727BE8(void *a1)
{
  result = sub_1AE6E5438(a1[5] + 8, a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1AE727C24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = *(a1 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727CA8;
  block[3] = &unk_1E7A2F008;
  block[4] = a1;
  v9 = a2;
  *&block[5] = a7;
  block[6] = a3;
  block[7] = a4;
  block[8] = a5;
  block[9] = a6;
  dispatch_sync(v7, block);
}

void sub_1AE727CC4(uint64_t a1)
{
  *a1 = &unk_1F242FB90;
  dispatch_release(*(a1 + 280));
  sub_1AE6E9FB0(a1 + 8);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE727D34(uint64_t a1)
{
  *a1 = &unk_1F242FB90;
  dispatch_release(*(a1 + 280));
  sub_1AE6E9FB0(a1 + 8);
  return a1;
}

void sub_1AE727F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  if (*(v11 - 25) < 0)
  {
    operator delete(*(v11 - 48));
  }

  sub_1AE650E5C((v11 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE727F6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = *(v1 + 8);
  v2 = (v1 + 8);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_38;
  }

  v5 = *(a1 + 71);
  if (v5 >= 0)
  {
    v6 = (a1 + 48);
  }

  else
  {
    v6 = *(a1 + 48);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 71);
  }

  else
  {
    v7 = *(a1 + 56);
  }

  v8 = v2;
  do
  {
    while (1)
    {
      v9 = *(v3 + 55);
      v10 = v9 >= 0 ? v3 + 4 : v3[4];
      v11 = v9 >= 0 ? *(v3 + 55) : v3[5];
      v12 = v7 >= v11 ? v11 : v7;
      v13 = memcmp(v10, v6, v12);
      if (v13)
      {
        break;
      }

      if (v11 < v7)
      {
        goto LABEL_23;
      }

LABEL_9:
      v8 = v3;
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v3 = v3[1];
  }

  while (v3);
LABEL_24:
  if (v8 == v2)
  {
    goto LABEL_38;
  }

  v14 = *(v8 + 55);
  if (v14 >= 0)
  {
    v15 = v8 + 4;
  }

  else
  {
    v15 = v8[4];
  }

  if (v14 >= 0)
  {
    v16 = *(v8 + 55);
  }

  else
  {
    v16 = v8[5];
  }

  if (v16 >= v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = v16;
  }

  result = memcmp(v6, v15, v17);
  if (!result)
  {
    if (v7 >= v16)
    {
      goto LABEL_36;
    }

LABEL_38:
    operator new();
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  *(*(*(a1 + 32) + 8) + 24) = v8[7];
  return result;
}

void sub_1AE7290CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15, char **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v65);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&a65, "Failed to create LanguageLikelihoodModel database");
    sub_1AE64FB94(exception, &a65);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  if (*(a19 + 255) < 0)
  {
    operator delete(*(a17 + 64));
  }

  sub_1AE627688(*a15);
  sub_1AE627688(*a16);
  sub_1AE651274(*a17);
  sub_1AE6512D8(a21);
  sub_1AE627688(*(a19 + 48));
  sub_1AE627688(*(a19 + 24));
  MEMORY[0x1B2706400](a19, 0x10B3C40E67E97D4);
  JUMPOUT(0x1AE729760);
}

void sub_1AE729188(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_end_catch();
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&a65, "Failed to create LanguageLikelihoodModel database");
    sub_1AE64FB94(exception, &a65);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  JUMPOUT(0x1AE729700);
}

void sub_1AE729244(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_end_catch();
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&a65, "Failed to create LanguageLikelihoodModel database");
    sub_1AE64FB94(exception, &a65);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  JUMPOUT(0x1AE729700);
}

void sub_1AE72927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
    if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x220]);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(STACK[0x208]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_6:
    if (a70 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(a71);
  if (a70 < 0)
  {
LABEL_13:
    operator delete(a65);
  }

LABEL_14:
  sub_1AE6EA1E0(a21);
  JUMPOUT(0x1AE729738);
}

void sub_1AE729470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15, char **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
    if ((v70 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v70)
  {
LABEL_6:
    __cxa_end_catch();
    if (*(a19 + 255) < 0)
    {
      operator delete(*(a17 + 64));
    }

    sub_1AE627688(*a15);
    sub_1AE627688(*a16);
    sub_1AE651274(*a17);
    sub_1AE6512D8(a21);
    sub_1AE627688(*(a19 + 48));
    sub_1AE627688(*(a19 + 24));
    MEMORY[0x1B2706400](a19, 0x10B3C40E67E97D4);
    JUMPOUT(0x1AE729760);
  }

  __cxa_free_exception(v71);
  goto LABEL_6;
}

void sub_1AE7294C0(void *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(a1);
    *(*(*(v2 + 32) + 8) + 24) = 0;
    if (qword_1ED9AC8F8 != -1)
    {
      v5 = v3;
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      v3 = v5;
    }

    v4 = qword_1ED9AC900;
    (*(*v3 + 16))(v3);
    sub_1AE731C2C(v4);
    __cxa_end_catch();
    JUMPOUT(0x1AE728CF4);
  }

  JUMPOUT(0x1AE72926CLL);
}

void sub_1AE729520(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1AE729598);
}

void sub_1AE729590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    JUMPOUT(0x1AE7295A8);
  }

  JUMPOUT(0x1AE729608);
}

void sub_1AE729804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE729814(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

_BYTE *sub_1AE729828(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_1AE5DBF1C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

dispatch_queue_t sub_1AE729854()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.LanguageModeling.LanguageLikelihoodModelCreation", v0);
  qword_1ED9AC618 = result;
  return result;
}

void sub_1AE729890(uint64_t a1)
{
  v1 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729904;
  block[3] = &unk_1E7A2F3A0;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1AE729910(uint64_t a1)
{
  v1 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729984;
  block[3] = &unk_1E7A2F358;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1AE729984(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 160) == 1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"VocabularyDidChange", (v1 + 8), 0, 0);
    *(v1 + 160) = 0;
  }
}

void sub_1AE7299D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1AE729A44;
  v3[3] = &unk_1E7A2F338;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_1AE729A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, v1, @"VocabularyDidChange", (v2 + 8));
}

void sub_1AE729A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729B00;
  block[3] = &unk_1E7A2F318;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void sub_1AE729B00(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, v1, v3, @"VocabularyDidChange", (v2 + 8), CFNotificationSuspensionBehaviorHold);
}

uint64_t sub_1AE729B58(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729C08;
  block[3] = &unk_1E7A2F2F8;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL sub_1AE729C08(uint64_t a1)
{
  result = sub_1AE6A90DC((*(a1 + 40) + 8), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1AE729C44(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729CBC;
  block[3] = &unk_1E7A2F2D0;
  v5 = a2;
  block[4] = a3;
  block[5] = a1;
  dispatch_sync(v3, block);
}

double sub_1AE729CCC(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729D7C;
  block[3] = &unk_1E7A2F2A8;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_1AE729D7C(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1[10];
  v3 = 0;
  if (v2)
  {
    v4 = *(result + 48);
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(result + 48);
      if (*&v2 <= v4)
      {
        v6 = v4 % v2.i32[0];
      }
    }

    else
    {
      v6 = (v2.i32[0] - 1) & v4;
    }

    v7 = *(v1[9] + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = *&v2 - 1;
          while (1)
          {
            v10 = v8[1];
            if (v10 == v4)
            {
              if (*(v8 + 4) == v4)
              {
                goto LABEL_22;
              }
            }

            else if ((v10 & v9) != v6)
            {
              goto LABEL_23;
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v8[1];
          if (v11 == v4)
          {
            if (*(v8 + 4) == v4)
            {
LABEL_22:
              v3 = *(v1[14] + 24 * *(v8 + 6) + 16);
              break;
            }
          }

          else
          {
            if (v11 >= *&v2)
            {
              v11 %= *&v2;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

LABEL_23:
  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_1AE729E7C(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729F28;
  block[3] = &unk_1E7A2F280;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_1AE729F28(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1[10];
  if (v2)
  {
    v3 = *(result + 48);
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = *(result + 48);
      if (*&v2 <= v3)
      {
        v5 = v3 % v2.i32[0];
      }
    }

    else
    {
      v5 = (v2.i32[0] - 1) & v3;
    }

    v6 = *(v1[9] + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          v8 = *&v2 - 1;
          while (1)
          {
            v9 = v7[1];
            if (v9 == v3)
            {
              if (*(v7 + 4) == v3)
              {
                goto LABEL_23;
              }
            }

            else if ((v9 & v8) != v5)
            {
              goto LABEL_21;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == v3)
          {
            if (*(v7 + 4) == v3)
            {
LABEL_23:
              v11 = *(v1[14] + 24 * *(v7 + 6) + 8);
              goto LABEL_22;
            }
          }

          else
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }

            if (v10 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  *(*(*(result + 32) + 8) + 24) = v11;
  return result;
}

uint64_t sub_1AE72A028(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72A0D4;
  block[3] = &unk_1E7A2F258;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_1AE72A0D4(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1[10];
  if (v2)
  {
    v3 = *(result + 48);
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = *(result + 48);
      if (*&v2 <= v3)
      {
        v5 = v3 % v2.i32[0];
      }
    }

    else
    {
      v5 = (v2.i32[0] - 1) & v3;
    }

    v6 = *(v1[9] + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          v8 = *&v2 - 1;
          while (1)
          {
            v9 = v7[1];
            if (v9 == v3)
            {
              if (*(v7 + 4) == v3)
              {
                goto LABEL_23;
              }
            }

            else if ((v9 & v8) != v5)
            {
              goto LABEL_21;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == v3)
          {
            if (*(v7 + 4) == v3)
            {
LABEL_23:
              v11 = *(v1[14] + 24 * *(v7 + 6));
              goto LABEL_22;
            }
          }

          else
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }

            if (v10 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  *(*(*(result + 32) + 8) + 24) = v11;
  return result;
}

uint64_t sub_1AE72A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  v3 = *(a1 + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = sub_1AE72A280;
  v6[3] = &unk_1E7A2F230;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t **sub_1AE72A280(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[7];
  if (v4)
  {
    *v4 = 0;
  }

  result = sub_1AE6AAE78((v3 + 32), v2);
  if (result)
  {
    v6 = *(v3 + 112) + 24 * *(result + 10);
    if (v4)
    {
      *v4 = *(v6 + 16);
    }

    v7 = *(v6 + 4);
  }

  else
  {
    v7 = 0;
  }

  *(*(a1[4] + 8) + 24) = v7;
  return result;
}

uint64_t sub_1AE72A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  v3 = *(a1 + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = sub_1AE72A3A4;
  v6[3] = &unk_1E7A2F208;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1AE72A3A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  sub_1AE5CC874(*(a1 + 48), __p);
  if (v3)
  {
    *v3 = 0;
  }

  v4 = sub_1AE6AAE78((v2 + 32), __p);
  if (!v4)
  {
    v6 = 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = *(v2 + 112) + 24 * *(v4 + 10);
  if (v3)
  {
    *v3 = *(v5 + 16);
  }

  v6 = *(v5 + 4);
  if (v8 < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }

LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_1AE72A448(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = sub_1AE72A57C;
  v12 = sub_1AE72A598;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72A5AC;
  block[3] = &unk_1E7A2F1E0;
  block[4] = &v8;
  block[5] = a1;
  v7 = a2;
  dispatch_sync(v4, block);
  if (*(v9 + 63) < 0)
  {
    sub_1AE5DBF1C(a3, v9[5], v9[6]);
  }

  else
  {
    v5 = *(v9 + 5);
    *(a3 + 16) = v9[7];
    *a3 = v5;
  }

  _Block_object_dispose(&v8, 8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1AE72A554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1AE72A57C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE72A598(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

double sub_1AE72A5AC(uint64_t a1)
{
  sub_1AE6AB0C4((*(a1 + 40) + 8), *(a1 + 48), &v4);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  result = *&v4;
  *(v2 + 40) = v4;
  *(v2 + 56) = v5;
  return result;
}

void sub_1AE72A610(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72A688;
  block[3] = &unk_1E7A2F1B8;
  v5 = a2;
  block[4] = a3;
  block[5] = a1;
  dispatch_sync(v3, block);
}

uint64_t sub_1AE72A698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = sub_1AE72A748;
  v6[3] = &unk_1E7A2F190;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t **sub_1AE72A748(void *a1)
{
  result = sub_1AE6AB384(a1[5] + 8, a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_1AE72A784(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72A834;
  block[3] = &unk_1E7A2F168;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1AE72A834(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[5];
    sub_1AE5CC874(v2, __p);
    v4 = sub_1AE6AAE78((v3 + 32), __p);
    if (v4)
    {
      v5 = *(*(v3 + 112) + 24 * *(v4 + 10) + 4) == *(*(v3 + 112) + 24 * *(v4 + 10));
      if (v7 < 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0;
      if (v7 < 0)
      {
LABEL_7:
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(*(a1[4] + 8) + 24) = v5;
}

uint64_t sub_1AE72A8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v10 = 0;
  v11 = &v10;
  v13 = 0;
  v12 = 0x2000000000;
  v5 = *(a1 + 168);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = sub_1AE72A988;
  v8[3] = &unk_1E7A2F380;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  *&v8[7] = a5;
  v8[8] = a4;
  dispatch_sync(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_1AE72A988(uint64_t a1)
{
  result = sub_1AE6ABA7C((*(a1 + 40) + 8), *(a1 + 48), *(a1 + 72), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1AE72A9C8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72AA78;
  block[3] = &unk_1E7A2F140;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1AE72AA78(uint64_t a1)
{
  result = sub_1AE6AC940(*(a1 + 40) + 8, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1AE72AAB0(uint64_t a1)
{
  *a1 = &unk_1F242FC70;
  dispatch_release(*(a1 + 168));
  sub_1AE6ACC94((a1 + 8));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE72AB20(uint64_t a1)
{
  *a1 = &unk_1F242FC70;
  dispatch_release(*(a1 + 168));
  sub_1AE6ACC94((a1 + 8));
  return a1;
}

uint64_t sub_1AE72AC54(uint64_t a1, int *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 24);
  v13 = (a1 + 24);
  v14 = (*(a1 + 32) - v12) >> 2;
  if (a3 <= v14)
  {
    if (a3 < v14)
    {
      *(a1 + 32) = &v12[a3];
    }
  }

  else
  {
    sub_1AE654188(a1 + 24, a3 - v14);
    v12 = *v13;
  }

  v15 = 4 * a3;
  if (v15)
  {
    do
    {
      v16 = *a2++;
      v17 = *(a1 + 16);
      v19 = v16;
      *v12++ = *(*(*v17 + 32))(v17, &v19);
      v15 -= 4;
    }

    while (v15);
    v12 = *v13;
  }

  return (*(**(a1 + 8) + 16))(*(a1 + 8), v12, (*(a1 + 32) - v12) >> 2, a4, a5, a6);
}

void sub_1AE72AD70(void *a1)
{
  *a1 = &unk_1F242FE08;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE72AE40(void *a1)
{
  *a1 = &unk_1F242FE08;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_1AE72AEF0(void *a1)
{
  if (*a1 != a1 + 1)
  {
    operator new();
  }

  v2 = a1 + 4;
  v3 = a1[3];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[5];
      if (v4)
      {
        v5 = sub_1AE6F1A98(v4);
        MEMORY[0x1B2706400](v5, 0x1020C4055CCDE27);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  sub_1AE673B40(a1[4]);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = v2;
  sub_1AE673B40(0);
}

void sub_1AE72B244(std::string *this, unsigned int **a2, uint64_t a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::append(this, " | ", 3uLL);
      }

      (*(*a3 + 40))(&v57, a3, *v6);
      if (v58 >= 0)
      {
        v9 = &v57;
      }

      else
      {
        v9 = v57;
      }

      if (v58 >= 0)
      {
        v10 = HIBYTE(v58);
      }

      else
      {
        v10 = *(&v57 + 1);
      }

      std::string::append(this, v9, v10);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  std::to_string(&v56, *(a2 + 23) + *(a2 + 6));
  v11 = std::string::insert(&v56, 0, "\t Score: ", 9uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v58 = v11->__r_.__value_.__r.__words[2];
  v57 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v58 >= 0)
  {
    v13 = &v57;
  }

  else
  {
    v13 = v57;
  }

  if (v58 >= 0)
  {
    v14 = HIBYTE(v58);
  }

  else
  {
    v14 = *(&v57 + 1);
  }

  std::string::append(this, v13, v14);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_24:
  (*(*a3 + 32))(&v56, a3, *a2, a2[1] - *a2);
  v15 = std::string::insert(&v56, 0, "\t text: ", 8uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v58 = v15->__r_.__value_.__r.__words[2];
  v57 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v58 >= 0)
  {
    v17 = &v57;
  }

  else
  {
    v17 = v57;
  }

  if (v58 >= 0)
  {
    v18 = HIBYTE(v58);
  }

  else
  {
    v18 = *(&v57 + 1);
  }

  std::string::append(this, v17, v18);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_32:
  v19 = *(a2 + 55);
  if (v19 >= 0)
  {
    v20 = *(a2 + 55);
  }

  else
  {
    v20 = a2[5];
  }

  if (v20 + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v57 + 1) = 8250;
  v58 = 0;
  HIBYTE(v58) = v20 + 10;
  *&v57 = *"\t prefix: ";
  if (v20)
  {
    if ((v19 & 0x80u) == 0)
    {
      v21 = (a2 + 4);
    }

    else
    {
      v21 = a2[4];
    }

    memmove(&v57 + 10, v21, v20);
  }

  *(&v57 + v20 + 10) = 0;
  if (v58 >= 0)
  {
    v22 = &v57;
  }

  else
  {
    v22 = v57;
  }

  if (v58 >= 0)
  {
    v23 = HIBYTE(v58);
  }

  else
  {
    v23 = *(&v57 + 1);
  }

  std::string::append(this, v22, v23);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  sub_1AE720974(&v56, a2[7], a2[8]);
  v24 = std::string::insert(&v56, 0, "\t starting stem: ", 0x11uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v58 = v24->__r_.__value_.__r.__words[2];
  v57 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (v58 >= 0)
  {
    v26 = &v57;
  }

  else
  {
    v26 = v57;
  }

  if (v58 >= 0)
  {
    v27 = HIBYTE(v58);
  }

  else
  {
    v27 = *(&v57 + 1);
  }

  std::string::append(this, v26, v27);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_59:
  std::to_string(&v56, a2[33]);
  v28 = std::string::insert(&v56, 0, "\t # predicted words: ", 0x15uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v58 = v28->__r_.__value_.__r.__words[2];
  v57 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (v58 >= 0)
  {
    v30 = &v57;
  }

  else
  {
    v30 = v57;
  }

  if (v58 >= 0)
  {
    v31 = HIBYTE(v58);
  }

  else
  {
    v31 = *(&v57 + 1);
  }

  std::string::append(this, v30, v31);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }
  }

  else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_67:
  std::to_string(&v56, 0xAAAAAAAAAAAAAAABLL * ((a2[31] - a2[30]) >> 3));
  v32 = std::string::insert(&v56, 0, "\t # active hypothesis: ", 0x17uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v58 = v32->__r_.__value_.__r.__words[2];
  v57 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v58 >= 0)
  {
    v34 = &v57;
  }

  else
  {
    v34 = v57;
  }

  if (v58 >= 0)
  {
    v35 = HIBYTE(v58);
  }

  else
  {
    v35 = *(&v57 + 1);
  }

  std::string::append(this, v34, v35);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }
  }

  else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_75:
  std::string::append(this, "\t active hypotheses: ", 0x15uLL);
  v36 = a2[30];
  v37 = a2[31];
  while (v36 != v37)
  {
    v38 = a2[33];
    v39 = *(v36 + 2);
    if (v39 < v38)
    {
      __assert_rtn("toString", "ToucanUtils.cpp", 33, "cursor.numWords >= hypothesis.numWords()");
    }

    std::to_string(&v53, v39 - v38);
    v40 = std::string::insert(&v53, 0, "{ # context words: ", 0x13uLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&__p, ", # total words: ", 0x11uLL);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v52, *(v36 + 2));
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v52;
    }

    else
    {
      v44 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v52.__r_.__value_.__l.__size_;
    }

    v46 = std::string::append(&v55, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v56, " }", 2uLL);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v58 = v48->__r_.__value_.__r.__words[2];
    v57 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (v58 >= 0)
    {
      v50 = &v57;
    }

    else
    {
      v50 = v57;
    }

    if (v58 >= 0)
    {
      v51 = HIBYTE(v58);
    }

    else
    {
      v51 = *(&v57 + 1);
    }

    std::string::append(this, v50, v51);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_94:
        if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_100;
      }
    }

    else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_101;
    }

LABEL_100:
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_77;
      }

      goto LABEL_102;
    }

LABEL_101:
    operator delete(v55.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_77:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_103;
      }

      goto LABEL_78;
    }

LABEL_102:
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_103:
      operator delete(v53.__r_.__value_.__l.__data_);
    }

LABEL_78:
    v36 += 6;
  }
}

void sub_1AE72B964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 + 23) < 0)
  {
    v41 = *v40;
    v42 = a1;
    operator delete(v41);
    a1 = v42;
  }

  _Unwind_Resume(a1);
}

void sub_1AE72BAF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {

      sub_1AE72BCA0(a1, a2);
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_28;
      }

      sub_1AE72BCA0(&v13, a2);
      MEMORY[0x1B27062D0](&v12);
      v8 = v15;
      if (v15 >= 0)
      {
        locale = &v13;
      }

      else
      {
        locale = v13.__locale_;
      }

      if (v15 < 0)
      {
        v8 = v14;
      }

      sub_1AE636B54(a1, locale, &v12, &locale[v8]);
      std::locale::~locale(&v12);
      if (v15 < 0)
      {
        operator delete(v13.__locale_);
      }
    }
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MEMORY[0x1B27062D0](&v13);
        v5 = *(a2 + 23);
        if (v5 >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        if (v5 < 0)
        {
          v5 = *(a2 + 8);
        }

        sub_1AE636B54(a1, v6, &v13, &v6[v5]);
        std::locale::~locale(&v13);
        return;
      }

LABEL_28:
      __assert_rtn("normalizeForExactMatching", "ToucanUtils.cpp", 69, "false");
    }

    if (*(a2 + 23) < 0)
    {
      v10 = *(a2 + 8);
      v11 = *a2;

      sub_1AE5DBF1C(a1, v11, v10);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }
  }
}

void sub_1AE72BC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::locale::~locale(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE72BCA0(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
  if (cf)
  {
    CFRelease(cf);
  }

  CFStringTransform(MutableCopy, 0, *MEMORY[0x1E695E998], 0);
  sub_1AE5CC874(MutableCopy, a1);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1AE72BDEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE67D824(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE72BE00(const void *a1)
{
  if (!a1)
  {
    v20 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(a1);
  v20 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(v20, @"MontrealModelType");
  if (!Value || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    LOBYTE(__p) = 0;
    v19 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v15, "Model resource is missing MontrealModelType");
    sub_1AE660DB0(v11, &v15);
    __cxa_throw(v11, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE621740(&__p, Value);
  v19 = 1;
  if ((v18 & 0x80) == 0)
  {
    if (v18 == 4)
    {
      if (__p != 808333942)
      {
        goto LABEL_32;
      }

      v6 = 0;
      v7 = v20;
      if (!v20)
      {
        return v6;
      }
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_32;
      }

      if (__p != 1701998403 || WORD2(__p) != 19788)
      {
        goto LABEL_32;
      }

      v6 = 1;
      v7 = v20;
      if (!v20)
      {
        return v6;
      }
    }

LABEL_29:
    CFRelease(v7);
    return v6;
  }

  if (v17 == 4)
  {
    v8 = __p;
    if (*__p != 808333942)
    {
      goto LABEL_32;
    }

    v6 = 0;
  }

  else
  {
    if (v17 != 6 || ((v8 = __p, *__p == 1701998403) ? (v9 = *(__p + 2) == 19788) : (v9 = 0), !v9))
    {
LABEL_32:
      v12 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      sub_1AE660DB0(v12, &v15);
      __cxa_throw(v12, &unk_1F2432910, sub_1AE64FC40);
    }

    v6 = 1;
  }

  operator delete(v8);
  v7 = v20;
  if (v20)
  {
    goto LABEL_29;
  }

  return v6;
}

void sub_1AE72C0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  sub_1AE621528((v22 - 40));
  _Unwind_Resume(a1);
}

void sub_1AE72C154(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  LOBYTE(__p) = 0;
  v4 = 1;
  sub_1AE5CA7E0(&v7, &__p);
  v8 = v4;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = a1;
  v6 = 0;
  operator new();
}

void sub_1AE72C324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void ***a17, uint64_t a18, char a19)
{
  sub_1AE61E3C4(&a19);
  *(v19 + 8) = v20;
  sub_1AE61E424(&a17);
  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
  }

  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1AE72C394(uint64_t a1, const __CFLocale *a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    theString = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v6 = 0;
    theString = 0;
  }

  Length = CFStringGetLength(v6);
  v9 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], Length, v6);
  CFStringLowercase(MutableCopy, a2);
  v11 = CFStringGetLength(theString);
  v12 = CFStringCreateMutableCopy(v9, v11, theString);
  CFStringCapitalize(v12, a2);
  if (CFStringCompare(theString, v12, 0) == kCFCompareEqualTo)
  {
    v13 = CFStringCompare(theString, MutableCopy, 0) != kCFCompareEqualTo;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = 0;
  if (v12)
  {
LABEL_15:
    CFRelease(v12);
  }

LABEL_16:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v13;
}

void sub_1AE72C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE631068(va);
  _Unwind_Resume(a1);
}

void sub_1AE72C540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1AE636D70(va);
  sub_1AE636D70(va1);
  sub_1AE63109C(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE72C574(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 111) < 0)
      {
        operator delete(v2[11]);
        if ((*(v2 + 87) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v2 + 63) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v2 + 87) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(v2[8]);
      if ((*(v2 + 63) & 0x80000000) == 0)
      {
LABEL_9:
        if (*(v2 + 39) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(v2[5]);
      if (*(v2 + 39) < 0)
      {
LABEL_14:
        operator delete(v2[2]);
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1AE72C62C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 24));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_9:
      operator delete(*a1);
      return a1;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*(a1 + 23) < 0)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_1AE72C6AC(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_7:
    operator delete(*a1);
    return a1;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 23) < 0)
  {
    goto LABEL_7;
  }

  return a1;
}

uint64_t *sub_1AE72C714(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
LABEL_7:
      operator delete(v2);
      return a1;
    }

    if (*(v2 + 111) < 0)
    {
      operator delete(*(v2 + 88));
      if ((*(v2 + 87) & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(v2 + 63) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }
    }

    else if ((*(v2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(v2 + 64));
    if ((*(v2 + 63) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      operator delete(*(v2 + 16));
      goto LABEL_7;
    }

LABEL_11:
    operator delete(*(v2 + 40));
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  return a1;
}

void sub_1AE72C7B4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    LXCursorCreateByAdvancingWithUTF8();
  }

  operator new();
}

void sub_1AE72C84C(void *a1)
{
  *a1 = &unk_1F242FE58;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;

  JUMPOUT(0x1B2706400);
}

void *sub_1AE72C8C0(void *a1)
{
  *a1 = &unk_1F242FE58;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  return a1;
}

void sub_1AE72C914(uint64_t a1)
{
  memset(&v2[1], 0, 24);
  v1 = *(a1 + 8);
  if (*(a1 + 16) != v1)
  {
    (*(**v1 + 24))(v2);
    operator new();
  }

  (*(**(a1 + 32) + 24))(v2);
  operator new();
}

void sub_1AE72CB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  sub_1AE656A70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE72CBA8(uint64_t **a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v2 == v3)
  {
LABEL_9:
    v7 = *(*a1[4] + 16);

    return v7();
  }

  else
  {
    v4 = 0;
    do
    {
      while ((v4 & 1) != 0)
      {
        ++v2;
        v4 = 1;
        if (v2 == v3)
        {
          return 1;
        }
      }

      v5 = *v2++;
      v4 = (*(*v5 + 16))(v5);
    }

    while (v2 != v3);
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 1;
  }
}

void sub_1AE72CC78(void *a1)
{
  *a1 = &unk_1F242FE88;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE72CD74(void *a1)
{
  *a1 = &unk_1F242FE88;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1AE72CE50(uint64_t a1, unsigned int a2)
{
  if (**(a1 + 16) > a2)
  {
    return 3;
  }

  if (*(a1 + 12) > a2)
  {
    return 0;
  }

  if (**(a1 + 40) > a2)
  {
    return 1;
  }

  if (**(a1 + 64) > a2)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1AE72CEAC(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = a4;
  if (a3 < 1)
  {
    return v5 - a4;
  }

  v5 = a4;
  if (a5 < 1)
  {
    return v5 - a4;
  }

  v6 = &a2[a3];
  v7 = *(a1 + 64);
  v5 = a4;
  v8 = &a4[a5];
  while (1)
  {
    v9 = *a2;
    if (*v7 <= *a2 && v7[*(a1 + 8)] > v9)
    {
      break;
    }

    *v5++ = v9;
LABEL_15:
    if (++a2 >= v6 || v5 >= v8)
    {
      return v5 - a4;
    }
  }

  v10 = *(a1 + 72);
  if (v10 != v7)
  {
    v11 = v10 - v7;
    v10 = v7;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[v11 >> 1];
      v15 = *v13;
      v14 = v13 + 1;
      v11 += ~(v11 >> 1);
      if (v15 > v9)
      {
        v11 = v12;
      }

      else
      {
        v10 = v14;
      }
    }

    while (v11);
  }

  if ((v8 - v5) >= 9)
  {
    v16 = v9 - *(v10 - 1);
    v17 = *(a1 + 40);
    v18 = (v10 - 1) - v7;
    v19 = v18 >> 2;
    v20 = *(v17 + 4 * ((v18 >> 2) + 1));
    v18 &= 0x3FFFFFFFCuLL;
    LODWORD(v17) = *(v17 + v18);
    v21 = v20 - v17;
    v22 = v16 / v21;
    v23 = v16 % v21 + v17;
    LODWORD(v17) = *(a1 + 12) + v19;
    *v5 = *(*(a1 + 16) + v18) + v22;
    v5[1] = v17;
    v5[2] = v23;
    v5 += 3;
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1AE72CFBC(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v6 = a4;
  if (a3 < 1)
  {
    return v6 - a4;
  }

  v6 = a4;
  if (a5 < 1)
  {
    return v6 - a4;
  }

  v7 = a2;
  v9 = &a2[a3];
  v6 = a4;
  v10 = &a4[a5];
  while (1)
  {
    v11 = *v7;
    if ((v9 - v7) >= 9)
    {
      v12 = *(a1 + 16);
      if (*v12 <= v11)
      {
        v13 = *(a1 + 8);
        if (*&v12[4 * v13] > v11)
        {
          v14 = *(a1 + 24);
          if (v14 != v12)
          {
            v15 = (v14 - v12) >> 2;
            v14 = *(a1 + 16);
            do
            {
              v16 = v15 >> 1;
              v17 = &v14[4 * (v15 >> 1)];
              v19 = *v17;
              v18 = (v17 + 1);
              v15 += ~(v15 >> 1);
              if (v19 > v11)
              {
                v15 = v16;
              }

              else
              {
                v14 = v18;
              }
            }

            while (v15);
          }

          v20 = v7[2];
          v21 = *(a1 + 40);
          if (*v21 <= v20 && v21[v13] > v20)
          {
            v22 = *(a1 + 48);
            if (v22 != v21)
            {
              v23 = v22 - v21;
              v22 = *(a1 + 40);
              do
              {
                v24 = v23 >> 1;
                v25 = &v22[v23 >> 1];
                v27 = *v25;
                v26 = v25 + 1;
                v23 += ~(v23 >> 1);
                if (v27 > v20)
                {
                  v23 = v24;
                }

                else
                {
                  v22 = v26;
                }
              }

              while (v23);
            }

            v28 = v7[1];
            v29 = *(a1 + 12);
            if (v28 == v29 + ((v14 - 4 - v12) >> 2) && v28 == v29 + (((v22 - 1) - v21) >> 2))
            {
              v30 = v20 - *(v22 - 1) + (v21[v28 - v29 + 1] - v21[v28 - v29]) * (v11 - *(v14 - 1)) + *(*(a1 + 64) + 4 * (v28 - v29));
              v31 = 12;
              goto LABEL_26;
            }
          }
        }
      }
    }

    if ((*(*a1 + 32))(a1, v11) != 3)
    {
      return 0;
    }

    v30 = *v7;
    v31 = 4;
LABEL_26:
    *v6++ = v30;
    v7 = (v7 + v31);
    if (v7 >= v9 || v6 >= v10)
    {
      return v6 - a4;
    }
  }
}

void sub_1AE72D1A8(void *a1)
{
  sub_1AE72D1E0(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE72D1E0(void *a1)
{
  *a1 = &unk_1F242FEF8;
  v2 = a1[18];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[18] = 0;
  v3 = a1[17];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[17] = 0;
  v4 = a1[14];
  if (v4)
  {
    v5 = a1[15];
    v6 = a1[14];
    if (v5 != v4)
    {
      v7 = a1[15];
      do
      {
        v8 = *(v7 - 16);
        v7 -= 16;
        if (v8 >= 0xF)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            MEMORY[0x1B27063D0](v9, 0x1000C8077774924);
          }
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[14];
    }

    a1[15] = v4;
    operator delete(v6);
  }

  v10 = a1[11];
  if (v10)
  {
    v11 = a1[12];
    v12 = a1[11];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 24);
        if (v13 && *(v11 - 26) == 1)
        {
          free(v13);
        }

        v11 -= 32;
      }

      while (v11 != v10);
      v12 = a1[11];
    }

    a1[12] = v10;
    operator delete(v12);
  }

  v14 = a1[8];
  if (v14)
  {
    a1[9] = v14;
    operator delete(v14);
  }

  v15 = a1[5];
  if (v15)
  {
    a1[6] = v15;
    operator delete(v15);
  }

  v16 = a1[2];
  if (v16)
  {
    a1[3] = v16;
    operator delete(v16);
  }

  return a1;
}

void sub_1AE72D33C(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *sub_1AE72D374(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = result[1];
    do
    {
      v5 = *(v4 - 16);
      v4 -= 16;
      if (v5 >= 0xF)
      {
        result = *(v2 - 8);
        if (result)
        {
          result = MEMORY[0x1B27063D0](result, 0x1000C8077774924);
        }
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_1AE72D3F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 16;
      *(a1 + 16) = v2 - 16;
      if (*(v2 - 16) >= 0xFu)
      {
        v5 = *(v2 - 8);
        if (v5)
        {
          MEMORY[0x1B27063D0](v5, 0x1000C8077774924);
          v4 = *(a1 + 16);
        }
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE72D480(uint64_t a1)
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
        v5 = *(v4 - 16);
        v4 -= 16;
        if (v5 >= 0xF)
        {
          v6 = *(v2 - 8);
          if (v6)
          {
            MEMORY[0x1B27063D0](v6, 0x1000C8077774924);
          }
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t sub_1AE72D50C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      v6 = *(v2 - 24);
      if (v6 && *(v2 - 26) == 1)
      {
        free(v6);
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

void **sub_1AE72D57C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v6 = *(v5 - 8);
        v5 -= 8;
        if (v6 >= 0xF)
        {
          v7 = *(v3 - 1);
          if (v7)
          {
            MEMORY[0x1B27063D0](v7, 0x1000C8077774924);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_1AE72D610(void **a1)
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
        if (v5 && *(v3 - 26) == 1)
        {
          free(v5);
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

uint64_t sub_1AE72D68C(uint64_t a1, const __CFURL *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F242FEF8;
  *(a1 + 16) = 0u;
  v3 = (a1 + 16);
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 112) = 0u;
  v5 = (a1 + 112);
  *(a1 + 144) = 0;
  v6 = (a1 + 144);
  v84 = (a1 + 88);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  v7 = sub_1AE5D471C(a2, 0);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_135;
  }

  Value = CFDictionaryGetValue(v7, @"Locale");
  v10 = CFDictionaryGetValue(v8, @"NonStemSuffixCount");
  valuePtr = 0;
  cf = CFDictionaryGetValue(v8, @"StemSuffixClasses");
  if (Value && (v11 = CFGetTypeID(Value), v11 == CFStringGetTypeID()) && CFStringGetLength(Value) >= 1 && v10 && (v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()) && cf && (v13 = CFGetTypeID(cf), v13 == CFArrayGetTypeID()) && CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr) && valuePtr >= 1)
  {
    v89 = 0;
    usedBufLen = 0;
    v88 = 0;
    v14 = CFLocaleCreate(0, Value);
    sub_1AE72D33C((a1 + 136), v14);
    *(a1 + 8) = CFArrayGetCount(cf);
    sub_1AE6369B4(v3, &v89);
    sub_1AE6369B4(a1 + 40, &v88 + 1);
    sub_1AE6369B4(v4, &v88);
    v111.length = CFStringGetLength(Value);
    v111.location = 0;
    CFStringGetBytes(Value, v111, 0x8000100u, 0, 0, buffer, 255, &usedBufLen);
    v15 = usedBufLen++;
    buffer[v15] = 0;
    v78 = sub_1AE733CD0(buffer);
    v16 = v84;
    if (*(a1 + 8))
    {
      v17 = 0;
      v79 = v3;
      while (1)
      {
        v80 = v17;
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v17);
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 != CFDictionaryGetTypeID())
        {
          break;
        }

        v22 = CFDictionaryGetValue(ValueAtIndex, @"Name");
        v82 = CFDictionaryGetValue(ValueAtIndex, @"Abbreviation");
        v23 = CFDictionaryGetValue(ValueAtIndex, @"StemCount");
        v81 = CFDictionaryGetValue(ValueAtIndex, @"SuffixCount");
        v86 = 0;
        if (!v22)
        {
          break;
        }

        v24 = CFGetTypeID(v22);
        if (v24 != CFStringGetTypeID())
        {
          break;
        }

        if (CFStringGetLength(v22) < 1)
        {
          break;
        }

        if (!v82)
        {
          break;
        }

        v25 = CFGetTypeID(v82);
        if (v25 != CFStringGetTypeID())
        {
          break;
        }

        if (CFStringGetLength(v82) < 1)
        {
          break;
        }

        if (!v23)
        {
          break;
        }

        v26 = CFGetTypeID(v23);
        if (v26 != CFNumberGetTypeID())
        {
          break;
        }

        if (!CFNumberGetValue(v23, kCFNumberSInt32Type, &v86 + 4))
        {
          break;
        }

        if (SHIDWORD(v86) < 1)
        {
          break;
        }

        if (!v81)
        {
          break;
        }

        v27 = CFGetTypeID(v81);
        if (v27 != CFNumberGetTypeID() || !CFNumberGetValue(v81, kCFNumberSInt32Type, &v86) || v86 < 1)
        {
          break;
        }

        v89 += HIDWORD(v86);
        HIDWORD(v88) += v86;
        LODWORD(v88) = v88 + HIDWORD(v86) * v86;
        sub_1AE6369B4(v3, &v89);
        sub_1AE6369B4(a1 + 40, &v88 + 1);
        sub_1AE6369B4(v4, &v88);
        sub_1AE75B650(&srcLength, v82);
        v29 = *(a1 + 96);
        v28 = *(a1 + 104);
        if (v29 >= v28)
        {
          v31 = (v29 - *v16) >> 5;
          if ((v31 + 1) >> 59)
          {
            sub_1AE5CBB70();
          }

          v32 = v28 - *v16;
          v33 = v32 >> 4;
          if (v32 >> 4 <= (v31 + 1))
          {
            v33 = v31 + 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFE0)
          {
            v34 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          v95 = v16;
          if (v34)
          {
            if (!(v34 >> 59))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          block = 0;
          v92 = 32 * v31;
          v93 = (32 * v31);
          v94 = 0;
          sub_1AE75BEBC(32 * v31, &srcLength);
          v30 = v93 + 32;
          v93 = (v93 + 32);
          v35 = *(a1 + 88);
          v36 = *(a1 + 96);
          v37 = v92 + v35 - v36;
          if (v35 == v36)
          {
            v16 = v84;
          }

          else
          {
            v38 = 0;
            do
            {
              sub_1AE75BEBC(v37 + v38, (v35 + v38));
              v38 += 32;
            }

            while (v35 + v38 != v36);
            v16 = v84;
            do
            {
              v39 = *(v35 + 8);
              if (v39 && *(v35 + 6) == 1)
              {
                free(v39);
              }

              v35 += 32;
            }

            while (v35 != v36);
            v35 = *v84;
          }

          *(a1 + 88) = v37;
          *(a1 + 96) = v30;
          *(a1 + 104) = v94;
          v3 = v79;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          sub_1AE75BEBC(*(a1 + 96), &srcLength);
          v30 = (v29 + 32);
          *(a1 + 96) = v29 + 32;
        }

        *(a1 + 96) = v30;
        if (srcLength)
        {
          if (v105 || (sub_1AE75BDA0(&srcLength), v105))
          {
            operator new();
          }

          pErrorCode[0] = U_ZERO_ERROR;
          pDestLength[0] = 0;
          if (v107)
          {
            v40 = v107;
          }

          else
          {
            v40 = v108;
          }

          u_strFromUTF8(0, 0, pDestLength, v40, srcLength, pErrorCode);
          v41 = pErrorCode[0];
          if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
          {
            if (pDestLength[0])
            {
              if ((pDestLength[0] & 0x80000000) == 0)
              {
                if ((pDestLength[0] & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              sub_1AE5CBB70();
            }

            pErrorCode[0] = U_ZERO_ERROR;
            if (v107)
            {
              v42 = v107;
            }

            else
            {
              v42 = v108;
            }

            u_strFromUTF8(0, 0, pDestLength, v42, srcLength, pErrorCode);
            v41 = pErrorCode[0];
          }

          v3 = v79;
          if (v41 <= U_ZERO_ERROR)
          {
            v50 = pDestLength[0];
            if (pDestLength[0] > 0)
            {
              __assert_rtn("compute_sort_key", "LMTIStringFunctions.cpp", 34, "ustr_len <= ustr.size()");
            }

            if (v78)
            {
              goto LABEL_93;
            }

            v97 = 0;
            v98 = &v97;
            v99 = 0x2000000000;
            v100 = 0;
            if (qword_1EB5E0F00 != -1)
            {
              dispatch_once(&qword_1EB5E0F00, &unk_1F2430080);
            }

            block = MEMORY[0x1E69E9820];
            v92 = 0x40000000;
            v93 = sub_1AE733378;
            v94 = &unk_1E7A2F4D0;
            v95 = &v97;
            v96 = 1;
            dispatch_sync(qword_1EB5E0EF8, &block);
            v51 = *(v98 + 3);
            _Block_object_dispose(&v97, 8);
            if (v51)
            {
              v50 = pDestLength[0];
LABEL_93:
              if (v50)
              {
                if ((v50 & 0x80000000) == 0)
                {
                  operator new();
                }

                sub_1AE5CBB70();
              }

              if (ucol_getSortKey())
              {
                operator new();
              }

              if (!MEMORY[0xFFFFFFFF])
              {
                __assert_rtn("initialize", "LMTIByteString.cpp", 31, "buffer_size <= std::numeric_limits<uint16_t>::max()");
              }

              __assert_rtn("compute_sort_key", "LMTIStringFunctions.cpp", 48, "key[key_len - 1] == 0");
            }
          }

          v16 = v84;
        }

        v43 = *(a1 + 120);
        v44 = *(a1 + 128);
        if (v43 >= v44)
        {
          v46 = (v43 - *v5) >> 4;
          v47 = v46 + 1;
          if ((v46 + 1) >> 60)
          {
            sub_1AE5CBB70();
          }

          v48 = v44 - *v5;
          if (v48 >> 3 > v47)
          {
            v47 = v48 >> 3;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF0)
          {
            v49 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          v95 = v5;
          if (v49)
          {
            if (!(v49 >> 60))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v52 = 16 * v46;
          block = 0;
          v92 = v52;
          *v52 = 0;
          v53 = 0;
          *(v52 + 2) = *__dst;
          *(v52 + 8) = *&__dst[6];
          v45 = 16 * v46 + 16;
          v93 = v45;
          v94 = 0;
          v54 = *(a1 + 112);
          v55 = *(a1 + 120);
          v97 = v5;
          v98 = pDestLength;
          v99 = pErrorCode;
          LOBYTE(v100) = 0;
          v56 = (v52 + v54 - v55);
          *pDestLength = v56;
          *pErrorCode = v56;
          if (v54 == v55)
          {
            v3 = v79;
          }

          else
          {
            v57 = v56;
            v58 = v56;
            v59 = v54;
            do
            {
              v60 = *v59;
              if (v60 >= 0xF)
              {
                *v58 = v60;
                operator new[]();
              }

              *v58 = *v59;
              v59 += 8;
              v58 += 8;
              *pErrorCode = v58;
            }

            while (v59 != v55);
            v3 = v79;
            do
            {
              if (*v54 >= 0xFu)
              {
                v61 = *(v54 + 1);
                if (v61)
                {
                  MEMORY[0x1B27063D0](v61, 0x1000C8077774924);
                }
              }

              v54 += 8;
            }

            while (v54 != v55);
            v54 = *v5;
            v45 = v93;
            v53 = v94;
            v56 = v57;
            v16 = v84;
          }

          *(a1 + 112) = v56;
          *(a1 + 120) = v45;
          v62 = *(a1 + 128);
          *(a1 + 128) = v53;
          v94 = v62;
          block = v54;
          v92 = v54;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v43 = 0;
          *(v43 + 2) = *__dst;
          *(v43 + 8) = *&__dst[6];
          v45 = v43 + 16;
          *(a1 + 120) = v43 + 16;
        }

        *(a1 + 120) = v45;
        if (v107 && v106 == 1)
        {
          free(v107);
        }

        v17 = v80 + 1;
        if (v80 + 1 >= *(a1 + 8))
        {
          goto LABEL_124;
        }
      }

      v63 = *(a1 + 88);
      for (i = *(a1 + 96); i != v63; i -= 32)
      {
        v65 = *(i - 24);
        if (v65 && *(i - 26) == 1)
        {
          free(v65);
        }
      }

      *(a1 + 96) = v63;
      sub_1AE72D374(v5);
      sub_1AE72D33C((a1 + 136), 0);
      v18 = 0;
    }

    else
    {
LABEL_124:
      v66 = *v3;
      v67 = -1;
      v68 = *v3;
      do
      {
        *v68++ += valuePtr;
        v69 = *(a1 + 8);
        ++v67;
      }

      while (v67 < v69);
      *(a1 + 12) = v66[v69];
      v70 = *(a1 + 40);
      v71 = -1;
      v72 = v70;
      LODWORD(v73) = v69;
      do
      {
        *v72++ += *(a1 + 12) + v73;
        v73 = *(a1 + 8);
        ++v71;
      }

      while (v71 < v73);
      v74 = *v4;
      v75 = -1;
      do
      {
        *v74++ += v70[v73];
        v73 = *(a1 + 8);
        ++v75;
      }

      while (v75 < v73);
      v76 = CFURLCopyAbsoluteURL(a2);
      if (*v6)
      {
        CFRelease(*v6);
      }

      *v6 = v76;
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v8);
  if ((v18 & 1) == 0)
  {
LABEL_135:
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(buffer, "invalid stem suffix lexicon ID converter plist");
    sub_1AE660DB0(exception, buffer);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  return a1;
}

void sub_1AE72E4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int16 a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  operator delete(v59);
  if (a21)
  {
    operator delete(a21);
  }

  if (a47 && a46 == 1)
  {
    free(a47);
  }

  sub_1AE6883BC(v58);
  sub_1AE67BE08((v55 + 136));
  sub_1AE72D57C(v57);
  sub_1AE72D610(a23);
  v61 = *v56;
  if (*v56)
  {
    *(v55 + 72) = v61;
    operator delete(v61);
  }

  v62 = *(v55 + 40);
  if (v62)
  {
    *(v55 + 48) = v62;
    operator delete(v62);
  }

  v63 = *a18;
  if (*a18)
  {
    *(v55 + 24) = v63;
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE72E6B0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 56);
  if (HIWORD(a2) >= v5)
  {
    return 1;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = (v7 + 4 * v4);
  v9 = (v6 + 4 * *v8);
  v10 = v5 - 1;
  if (v4 == v5 - 1)
  {
    v11 = (*(a1 + 24) + *(a1 + 32));
    if (v9 == v11)
    {
      return 1;
    }
  }

  else
  {
    v11 = (v6 + 4 * v8[1]);
    if (v9 == v11)
    {
      return 1;
    }
  }

  v13 = v11 - v9;
  v14 = a2;
  v15 = (v6 + 4 * *v8);
  do
  {
    v16 = v13 >> 1;
    v17 = &v15[v13 >> 1];
    v18 = *(v17 + 1);
    v19 = v17 + 1;
    v13 += ~(v13 >> 1);
    if (v18 < a2)
    {
      v15 = v19;
    }

    else
    {
      v13 = v16;
    }
  }

  while (v13);
  if (v15 >= v11)
  {
    return 1;
  }

  v20 = a2 << 16;
  v21 = *v15;
  v22 = v21 ^ (a2 << 16);
  v23 = v21 & 0x100;
  v24 = HIWORD(v22) || v23 == 0;
  if (v24 || !a4)
  {
    return 1;
  }

  v25 = (v4 == v10 ? *(a1 + 24) + *(a1 + 32) : v6 + 4 * v8[1]);
  if (v9 == v25)
  {
    return 1;
  }

  v26 = v25 - v9;
  do
  {
    v27 = v26 >> 1;
    v28 = &v9[v26 >> 1];
    v29 = *(v28 + 1);
    v30 = v28 + 1;
    v26 += ~(v26 >> 1);
    if (v29 < v14)
    {
      v9 = v30;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v9 >= v25)
  {
    return 1;
  }

  v31 = *v9;
  if ((*v9 ^ v20) >> 16)
  {
    return 1;
  }

  v32 = *(a3 + 4 * a4 - 4);
  v33 = v32 >> 16;
  if (HIWORD(*(a3 + 4 * a4 - 4)) >= v5)
  {
    return 1;
  }

  v34 = (v7 + 4 * v33);
  v35 = (v6 + 4 * *v34);
  v36 = (v33 == v10 ? *(a1 + 24) + *(a1 + 32) : v6 + 4 * v34[1]);
  if (v35 == v36)
  {
    return 1;
  }

  v37 = v31;
  v38 = v36 - v35;
  do
  {
    v39 = v38 >> 1;
    v40 = &v35[v38 >> 1];
    v41 = *(v40 + 1);
    v42 = v40 + 1;
    v38 += ~(v38 >> 1);
    if (v41 < *(a3 + 4 * a4 - 4))
    {
      v35 = v42;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v35 >= v36)
  {
    return 1;
  }

  v43 = *v35;
  if ((v43 ^ (v32 << 16)) >> 16)
  {
    return 1;
  }

  if (v43)
  {
    if ((v37 & 0xE0) != 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v43 & 2) == 0)
    {
      if ((v43 & 4) != 0)
      {
        if ((v37 & 0xB0) == 0)
        {
          return 1;
        }
      }

      else if ((v43 & 8) == 0 || (v37 & 0x70) == 0)
      {
        return 1;
      }

      return 0;
    }

    if ((v37 & 0xD0) != 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1AE72E8CC(uint64_t a1)
{
  *a1 = &unk_1F242FF58;
  *(a1 + 16) = &unk_1F2432098;
  if (*(a1 + 24))
  {
    v1 = a1;
    munmap(*(a1 + 24), *(a1 + 32));
    a1 = v1;
  }

  *(a1 + 32) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE72E968(uint64_t result)
{
  *result = &unk_1F242FF58;
  *(result + 16) = &unk_1F2432098;
  if (*(result + 24))
  {
    v1 = result;
    munmap(*(result + 24), *(result + 32));
    result = v1;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1AE72E9E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v8 = *v6;
          v9 = v6[5];
          if (v9)
          {
            do
            {
              v10 = *v9;
              operator delete(v9);
              v9 = v10;
            }

            while (v10);
          }

          v11 = v6[3];
          v6[3] = 0;
          if (v11)
          {
            operator delete(v11);
          }

          operator delete(v6);
          v6 = v8;
        }

        while (v8);
      }

      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_1AE72EAA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  *a1 = a3;
  a1[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = *a2;
  v12 = a2[1];
  a1[3] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  a1[4] = a7;
  v13 = *(a6 + 23);
  if (v13 >= 0)
  {
    v14 = a6;
  }

  else
  {
    v14 = *a6;
  }

  if (v14)
  {
    if (v13 >= 0)
    {
      v15 = *(a6 + 23);
    }

    else
    {
      v15 = *(a6 + 8);
    }

    v14 = CFStringCreateWithBytes(0, v14, v15, 0x8000100u, 0);
    cf = v14;
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  a1[5] = CFLocaleCreate(*MEMORY[0x1E695E480], v14);
  if (cf)
  {
    CFRelease(cf);
  }

  *(a1 + 12) = a5;
  v17 = *a1;
  v42 = 7;
  strcpy(v41, "_U_CAP_");
  v43 = 0;
  sub_1AE5CA7E0(&cf, v41);
  v40 = v43;
  (*(*v17 + 16))(__p, v17, &cf);
  v18 = *__p[0];
  __p[1] = __p[0];
  operator delete(__p[0]);
  if (v39 < 0)
  {
    operator delete(cf);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v41[0]);
LABEL_19:
  *(a1 + 6) = 0u;
  *(a1 + 13) = v18;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 22) = 1065353216;
  *(a1 + 7) = 0u;
  *(a1 + 32) = 1065353216;
  v19 = *(a7 + 416);
  v21 = *(v19 + 144);
  v20 = *(v19 + 152);
  v41[0] = v21;
  v41[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    Value = CFDictionaryGetValue(*v21, @"PrimaryThreshold");
    sub_1AE6F51FC(&cf, Value);
    if (v38)
    {
      v23 = vcnt_s8(v38);
      v23.i16[0] = vaddlv_u8(v23);
      if (v23.u32[0] > 1uLL)
      {
        v24 = a8;
        if (*&v38 <= a8)
        {
          v24 = a8 % *&v38;
        }
      }

      else
      {
        v24 = (*&v38 - 1) & a8;
      }

      v25 = *(cf + v24);
      if (v25)
      {
        v26 = *v25;
        if (v26)
        {
          if (v23.u32[0] < 2uLL)
          {
            while (1)
            {
              v27 = v26[1];
              if (v27 == a8)
              {
                if (v26[2] == a8)
                {
                  goto LABEL_37;
                }
              }

              else if ((v27 & (*&v38 - 1)) != v24)
              {
                goto LABEL_73;
              }

              v26 = *v26;
              if (!v26)
              {
                goto LABEL_73;
              }
            }
          }

          do
          {
            v31 = v26[1];
            if (v31 == a8)
            {
              if (v26[2] == a8)
              {
LABEL_37:
                if (a1 + 7 != v26 + 3)
                {
                  *(a1 + 22) = *(v26 + 14);
                  sub_1AE6F68E4((a1 + 7), v26[5]);
                }

                sub_1AE72E9E4(&cf);
                v28 = CFDictionaryGetValue(*v21, @"SecondaryThreshold");
                sub_1AE6F51FC(&cf, v28);
                if (!*&v38)
                {
                  goto LABEL_74;
                }

                v29 = vcnt_s8(v38);
                v29.i16[0] = vaddlv_u8(v29);
                if (v29.u32[0] > 1uLL)
                {
                  v30 = a8;
                  if (*&v38 <= a8)
                  {
                    v30 = a8 % *&v38;
                  }
                }

                else
                {
                  v30 = (*&v38 - 1) & a8;
                }

                v32 = *(cf + v30);
                if (!v32 || (v33 = *v32) == 0)
                {
LABEL_74:
                  sub_1AE5F1DA4("unordered_map::at: key not found");
                }

                if (v29.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v35 = v33[1];
                    if (v35 == a8)
                    {
                      if (v33[2] == a8)
                      {
                        goto LABEL_66;
                      }
                    }

                    else if ((v35 & (*&v38 - 1)) != v30)
                    {
                      goto LABEL_74;
                    }

                    v33 = *v33;
                    if (!v33)
                    {
                      goto LABEL_74;
                    }
                  }
                }

                while (1)
                {
                  v34 = v33[1];
                  if (v34 == a8)
                  {
                    if (v33[2] == a8)
                    {
LABEL_66:
                      if (a1 + 12 != v33 + 3)
                      {
                        *(a1 + 32) = *(v33 + 14);
                        sub_1AE6F68E4((a1 + 12), v33[5]);
                      }

                      sub_1AE72E9E4(&cf);
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    if (v34 >= *&v38)
                    {
                      v34 %= *&v38;
                    }

                    if (v34 != v30)
                    {
                      goto LABEL_74;
                    }
                  }

                  v33 = *v33;
                  if (!v33)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else
            {
              if (v31 >= *&v38)
              {
                v31 %= *&v38;
              }

              if (v31 != v24)
              {
                break;
              }
            }

            v26 = *v26;
          }

          while (v26);
        }
      }
    }

LABEL_73:
    sub_1AE5F1DA4("unordered_map::at: key not found");
  }

LABEL_69:
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  return a1;
}

void sub_1AE72EF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1AE621E54(&__p);
  sub_1AE622290(v23);
  sub_1AE622290(v22);
  _Unwind_Resume(a1);
}

float sub_1AE72F020(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = a3;
  }

  v5 = 4;
  if (a2 < 4)
  {
    v5 = a2;
  }

  v6 = a1[8];
  if (!*&v6)
  {
    goto LABEL_91;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % a1[8];
    }
  }

  else
  {
    v8 = (*&v6 + 3) & v4;
  }

  v9 = *(a1[7] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_91:
    sub_1AE5F1DA4("unordered_map::at: key not found");
  }

  if (v7.u32[0] < 2uLL)
  {
    v11 = *&v6 - 1;
    while (1)
    {
      v12 = v10[1];
      if (v4 == v12)
      {
        if (v10[2] == v4)
        {
          goto LABEL_19;
        }
      }

      else if ((v12 & v11) != v8)
      {
        goto LABEL_91;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_91;
      }
    }
  }

  while (1)
  {
    v16 = v10[1];
    if (v4 == v16)
    {
      break;
    }

    if (v16 >= *&v6)
    {
      v16 %= *&v6;
    }

    if (v16 != v8)
    {
      goto LABEL_91;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_91;
    }
  }

  if (v10[2] != v4)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = v10[4];
  if (!*&v13)
  {
    goto LABEL_91;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v5;
    if (v5 >= *&v13)
    {
      v15 = v5 % *&v13;
    }
  }

  else
  {
    v15 = (*&v13 + 7) & v5;
  }

  v17 = *(v10[3] + 8 * v15);
  if (!v17)
  {
    goto LABEL_91;
  }

  v18 = *v17;
  if (!v18)
  {
    goto LABEL_91;
  }

  if (v14.u32[0] < 2uLL)
  {
    v19 = *&v13 - 1;
    while (1)
    {
      v21 = *(v18 + 1);
      if (v5 == v21)
      {
        if (*(v18 + 2) == v5)
        {
          goto LABEL_46;
        }
      }

      else if ((v21 & v19) != v15)
      {
        goto LABEL_91;
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_91;
      }
    }
  }

  while (1)
  {
    v20 = *(v18 + 1);
    if (v5 == v20)
    {
      break;
    }

    if (v20 >= *&v13)
    {
      v20 %= *&v13;
    }

    if (v20 != v15)
    {
      goto LABEL_91;
    }

LABEL_36:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_91;
    }
  }

  if (*(v18 + 2) != v5)
  {
    goto LABEL_36;
  }

LABEL_46:
  v22 = a1[13];
  if (!*&v22)
  {
    goto LABEL_91;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  v24 = v23.u32[0];
  if (v23.u32[0] > 1uLL)
  {
    v25 = v4;
    if (v4 >= *&v22)
    {
      v25 = v4 % *&v22;
    }
  }

  else
  {
    v25 = (*&v22 + 3) & v4;
  }

  v26 = *(a1[12] + 8 * v25);
  if (!v26)
  {
    goto LABEL_91;
  }

  v27 = *v26;
  if (!v27)
  {
    goto LABEL_91;
  }

  result = v18[6];
  if (v24 < 2)
  {
    v29 = *&v22 - 1;
    while (1)
    {
      v31 = v27[1];
      if (v4 == v31)
      {
        if (v27[2] == v4)
        {
          goto LABEL_66;
        }
      }

      else if ((v31 & v29) != v25)
      {
        goto LABEL_91;
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_91;
      }
    }
  }

  while (1)
  {
    v30 = v27[1];
    if (v4 == v30)
    {
      break;
    }

    if (v30 >= *&v22)
    {
      v30 %= *&v22;
    }

    if (v30 != v25)
    {
      goto LABEL_91;
    }

LABEL_56:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_91;
    }
  }

  if (v27[2] != v4)
  {
    goto LABEL_56;
  }

LABEL_66:
  v32 = v27[4];
  if (!*&v32)
  {
    goto LABEL_91;
  }

  v33 = vcnt_s8(v32);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    v34 = v5;
    if (v5 >= *&v32)
    {
      v34 = v5 % *&v32;
    }
  }

  else
  {
    v34 = (*&v32 + 7) & v5;
  }

  v35 = *(v27[3] + 8 * v34);
  if (!v35)
  {
    goto LABEL_91;
  }

  v36 = *v35;
  if (!v36)
  {
    goto LABEL_91;
  }

  if (v33.u32[0] < 2uLL)
  {
    v37 = *&v32 - 1;
    while (1)
    {
      v39 = *(v36 + 1);
      if (v5 == v39)
      {
        if (*(v36 + 2) == v5)
        {
          goto LABEL_86;
        }
      }

      else if ((v39 & v37) != v34)
      {
        goto LABEL_91;
      }

      v36 = *v36;
      if (!v36)
      {
        goto LABEL_91;
      }
    }
  }

  while (1)
  {
    v38 = *(v36 + 1);
    if (v5 == v38)
    {
      break;
    }

    if (v38 >= *&v32)
    {
      v38 %= *&v32;
    }

    if (v38 != v34)
    {
      goto LABEL_91;
    }

LABEL_76:
    v36 = *v36;
    if (!v36)
    {
      goto LABEL_91;
    }
  }

  if (*(v36 + 2) != v5)
  {
    goto LABEL_76;
  }

LABEL_86:
  if (a4)
  {
    if (a4 == 2)
    {
      return fminf(result, v36[6]);
    }

    else
    {
      return v36[6];
    }
  }

  return result;
}

void sub_1AE72F3C4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v3 = *(a2 + 280);
  v2 = *(a2 + 288);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  operator new();
}

void sub_1AE72F578(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = a3[4];
  if (a3[3] == v7)
  {
    HIBYTE(v64) = 0;
    LOBYTE(__n[0]) = 0;
  }

  else if (*(v7 - 9) < 0)
  {
    v9 = a3;
    sub_1AE5DBF1C(__n, *(v7 - 32), *(v7 - 24));
    a3 = v9;
  }

  else
  {
    v8 = *(v7 - 32);
    v64 = *(v7 - 16);
    *__n = v8;
  }

  v11 = a3[12];
  v10 = a3[13];
  v61 = 0;
  v62 = 0;
  __p = 0;
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  (*(*a1[2] + 48))(a1[2], &__p, a2, a4);
  v12 = 1.0;
  v13 = 0.0;
  v14 = 0.0;
  if (sub_1AE72C394(__n, a1[5]))
  {
    v15 = HIBYTE(v64);
    if ((v64 & 0x8000000000000000) != 0)
    {
      v15 = __n[1];
    }

    v16 = *a2;
    if (v15 == 1 && a2[1] != v16)
    {
      v17 = 0;
      while (((*(**a1 + 168))(*a1, v17) & 1) != 0)
      {
LABEL_15:
        ++v17;
        v16 = *a2;
        if (v17 >= (a2[1] - *a2) >> 2)
        {
          goto LABEL_39;
        }
      }

      (*(**a1 + 48))(&v58);
      v18 = HIBYTE(v59);
      v19 = SHIBYTE(v59);
      if (v59 < 0)
      {
        v18 = *(&v58 + 1);
      }

      v20 = SHIBYTE(v64);
      if ((SHIBYTE(v64) & 0x8000000000000000) != 0)
      {
        if (v18 >= __n[1])
        {
          v21 = __n[0];
          v20 = __n[1];
LABEL_32:
          v23 = v58;
          if (v59 >= 0)
          {
            v25 = &v58;
          }

          else
          {
            v25 = v58;
          }

          if (!memcmp(v25, v21, v20))
          {
LABEL_36:
            v14 = *(*a2 + 4 * v17) + v14;
          }

LABEL_37:
          if (v19 < 0)
          {
            operator delete(v23);
          }

          goto LABEL_15;
        }
      }

      else if (v18 >= SHIBYTE(v64))
      {
        v21 = __n;
        goto LABEL_32;
      }

      if ((v64 & 0x8000000000000000) == 0)
      {
        v22 = __n;
      }

      else
      {
        v22 = __n[0];
      }

      v23 = v58;
      if (v59 >= 0)
      {
        v24 = &v58;
      }

      else
      {
        v24 = v58;
      }

      if (!memcmp(v22, v24, v18))
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

LABEL_39:
    v26 = *(a1 + 13);
    v12 = *(v16 + 4 * v26);
    v27 = v61;
    if (v61 >= v62)
    {
      v29 = __p;
      v30 = v61 - __p;
      v31 = (v61 - __p) >> 2;
      v32 = v31 + 1;
      if ((v31 + 1) >> 62)
      {
        sub_1AE5CBB70();
      }

      v33 = v62 - __p;
      if ((v62 - __p) >> 1 > v32)
      {
        v32 = v33 >> 1;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v34 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 62))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      *(4 * v31) = v26;
      v28 = 4 * v31 + 4;
      memcpy(0, v29, v30);
      __p = 0;
      v61 = v28;
      v62 = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v61 = v26;
      v28 = (v27 + 4);
    }

    v61 = v28;
    (*(*a1[2] + 48))(a1[2], &__p, a2, a4);
    if ((v64 & 0x8000000000000000) == 0)
    {
      v35 = __n;
    }

    else
    {
      v35 = __n[0];
    }

    if (v35)
    {
      if ((v64 & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v64);
      }

      else
      {
        v36 = __n[1];
      }

      v37 = CFStringCreateWithBytes(0, v35, v36, 0x8000100u, 0);
      v57 = v37;
      if (!v37)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v37 = 0;
      v57 = 0;
    }

    v39 = a1[5];
    Length = CFStringGetLength(v37);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], Length, v37);
    CFStringLowercase(MutableCopy, v39);
    cf = MutableCopy;
    if (MutableCopy)
    {
      v42 = CFGetTypeID(MutableCopy);
      if (v42 != CFStringGetTypeID())
      {
        v55 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v55, "Could not construct");
        __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v43 = cf;
    }

    else
    {
      v43 = 0;
    }

    sub_1AE5CC874(v43, &v58);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__n[0]);
    }

    *__n = v58;
    v64 = v59;
    HIBYTE(v59) = 0;
    LOBYTE(v58) = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v57)
    {
      CFRelease(v57);
    }
  }

  if (a2[1] != *a2)
  {
    v44 = 0;
    v13 = 0.0;
    while (((*(**a1 + 168))(*a1, v44) & 1) != 0)
    {
LABEL_74:
      if (++v44 >= ((a2[1] - *a2) >> 2))
      {
        goto LABEL_104;
      }
    }

    (*(**a1 + 48))(&v58);
    v45 = SHIBYTE(v59);
    if (v59 >= 0)
    {
      v46 = HIBYTE(v59);
    }

    else
    {
      v46 = *(&v58 + 1);
    }

    v47 = SHIBYTE(v64);
    if ((SHIBYTE(v64) & 0x8000000000000000) != 0)
    {
      v48 = __n[1];
      if (v46 >= __n[1])
      {
        v49 = __n[0];
LABEL_92:
        v51 = v58;
        if (v59 >= 0)
        {
          v53 = &v58;
        }

        else
        {
          v53 = v58;
        }

        if (!memcmp(v53, v49, v48))
        {
          if ((v47 & 0x80000000) == 0)
          {
            v48 = v47;
          }

          else
          {
            v48 = __n[1];
          }

LABEL_99:
          v54 = *(*a2 + 4 * v44);
          if (v46 < v48)
          {
            v54 = v54 * 0.03;
          }

          v13 = v54 + v13;
        }

LABEL_102:
        if (v45 < 0)
        {
          operator delete(v51);
        }

        goto LABEL_74;
      }
    }

    else
    {
      v48 = SHIBYTE(v64);
      if (v46 >= SHIBYTE(v64))
      {
        v49 = __n;
        v48 = SHIBYTE(v64);
        goto LABEL_92;
      }
    }

    if ((v64 & 0x8000000000000000) == 0)
    {
      v50 = __n;
    }

    else
    {
      v50 = __n[0];
    }

    v51 = v58;
    if (v59 >= 0)
    {
      v52 = &v58;
    }

    else
    {
      v52 = v58;
    }

    if (!memcmp(v50, v52, v46))
    {
      goto LABEL_99;
    }

    goto LABEL_102;
  }

LABEL_104:
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__n[0]);
  }

  log10f(v14 + (v13 * v12));
}

void sub_1AE72FC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  sub_1AE621E54(&a9);
  sub_1AE63109C(&a10);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(a1);
}

void sub_1AE72FD44(void *a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  (*(*a2[2] + 48))(a2[2], a4, a3, a8);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = *a3;
  if (a3[1] == *a3)
  {
    v15 = 0;
    goto LABEL_100;
  }

  v120 = a7;
  v121 = a1;
  v15 = 0;
  v16 = 0;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if (a9[3])
    {
      v19 = a9[1];
      if (v19)
      {
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] > 1uLL)
        {
          v21 = v16;
          if (*&v19 <= v16)
          {
            v21 = v16 % v19.i32[0];
          }
        }

        else
        {
          v21 = (*&v19 + 0x7FFFFFFFLL) & v16;
        }

        v22 = *(*a9 + 8 * v21);
        if (v22)
        {
          v23 = *v22;
          if (v23)
          {
            if (v20.u32[0] < 2uLL)
            {
              v24 = *&v19 - 1;
              while (1)
              {
                v26 = v23[1];
                if (v26 == v16)
                {
                  if (v16 == *(v23 + 4))
                  {
                    goto LABEL_28;
                  }
                }

                else if ((v26 & v24) != v21)
                {
                  goto LABEL_26;
                }

                v23 = *v23;
                if (!v23)
                {
                  goto LABEL_26;
                }
              }
            }

            do
            {
              v25 = v23[1];
              if (v25 == v16)
              {
                if (v16 == *(v23 + 4))
                {
                  goto LABEL_28;
                }
              }

              else
              {
                if (v25 >= *&v19)
                {
                  v25 %= *&v19;
                }

                if (v25 != v21)
                {
                  break;
                }
              }

              v23 = *v23;
            }

            while (v23);
          }
        }
      }

LABEL_26:
      if ((*(**a2 + 112))(*a2, v16))
      {
        v14 = *a3;
LABEL_28:
        v18 = *(v14 + 4 * v16) + v18;
      }
    }

    if (((*(**a2 + 168))(*a2, v16) & 1) == 0)
    {
      v27 = a6 && (*(**a2 + 160))(*a2, v16) && sub_1AE72C394(a5, a2[5]);
      if (((*(**a2 + 56))(*a2, v16, a5) | v27))
      {
        v28 = **a2;
        if (a6)
        {
          if (!(*(v28 + 144))())
          {
            goto LABEL_4;
          }

          v29 = *a3;
          v30 = v121[2];
          if (v15 >= v30)
          {
            v31 = v15;
            v32 = v15 >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              goto LABEL_193;
            }

            if (v30 >> 2 > v33)
            {
              v33 = v30 >> 2;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              if (!(v34 >> 61))
              {
                operator new();
              }

              goto LABEL_194;
            }

LABEL_59:
            v38 = (8 * v32);
            *v38 = v16;
            v38[1] = *(v29 + 4 * v16);
            v15 = 8 * v32 + 8;
            memcpy(0, 0, v31);
            v121[1] = v15;
            v121[2] = 8 * v34;
            goto LABEL_60;
          }
        }

        else
        {
          v35 = (*(v28 + 152))();
          v29 = *a3;
          if (v35)
          {
            v17 = *(v29 + 4 * v16) + v17;
            goto LABEL_4;
          }

          v36 = v121[2];
          if (v15 >= v36)
          {
            v31 = v15;
            v32 = v15 >> 3;
            v37 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
LABEL_193:
              *v121 = 0;
              sub_1AE5CBB70();
            }

            if (v36 >> 2 > v37)
            {
              v37 = v36 >> 2;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v37;
            }

            if (v34)
            {
              if (!(v34 >> 61))
              {
                operator new();
              }

LABEL_194:
              *v121 = 0;
              sub_1AE5CB09C();
            }

            goto LABEL_59;
          }
        }

        *v15 = v16;
        *(v15 + 4) = *(v29 + 4 * v16);
        v15 += 8;
LABEL_60:
        v121[1] = v15;
      }
    }

LABEL_4:
    ++v16;
    v14 = *a3;
  }

  while (v16 < (a3[1] - *a3) >> 2);
  a1 = v121;
  *v121 = 0;
  if (v18 <= 0.0)
  {
    if (v17 <= 0.0)
    {
      goto LABEL_100;
    }

    goto LABEL_83;
  }

  v39 = *(a5 + 23);
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(a5 + 8);
  }

  if (!v39)
  {
    v40 = (*(**a2 + 64))(*a2, 2);
    v41 = v121[2];
    if (v15 >= v41)
    {
      v42 = v15;
      v43 = v15 >> 3;
      v44 = (v15 >> 3) + 1;
      if (v44 >> 61)
      {
        sub_1AE5CBB70();
      }

      if (v41 >> 2 > v44)
      {
        v44 = v41 >> 2;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        if (!(v45 >> 61))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v46 = 8 * v43;
      *v46 = v40;
      *(v46 + 4) = v18;
      v15 = 8 * v43 + 8;
      memcpy(0, 0, v42);
      *v121 = 0;
      v121[1] = v15;
      v121[2] = 0;
    }

    else
    {
      *v15 = v40;
      *(v15 + 4) = v18;
      v15 += 8;
    }

    a7 = v120;
    v121[1] = v15;
    if (v17 <= 0.0)
    {
      goto LABEL_100;
    }

LABEL_83:
    v47 = *(a5 + 23);
    if ((v47 & 0x80u) != 0)
    {
      v47 = *(a5 + 8);
    }

    if (!v47)
    {
      v48 = (*(**a2 + 80))();
      v49 = v121[2];
      if (v15 >= v49)
      {
        v50 = *v121;
        v51 = v15 - *v121;
        v52 = (v51 >> 3) + 1;
        if (v52 >> 61)
        {
          sub_1AE5CBB70();
        }

        v53 = v49 - v50;
        if (v53 >> 2 > v52)
        {
          v52 = v53 >> 2;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          if (!(v54 >> 61))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v55 = 8 * (v51 >> 3);
        *v55 = v48;
        *(v55 + 4) = v17;
        v15 = v55 + 8;
        memcpy(0, v50, v51);
        *v121 = 0;
        v121[2] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v15 = v48;
        *(v15 + 4) = v17;
        v15 += 8;
      }

      a7 = v120;
      v121[1] = v15;
    }

    goto LABEL_100;
  }

  if (v17 > 0.0)
  {
    goto LABEL_83;
  }

LABEL_100:
  v56 = *a1;
  v57 = (v15 - *a1) >> 3;
  v58 = *a1 + 8 * (a7 + 6);
  if (v57 >= a7 + 6 && v58 != v15)
  {
    while (2)
    {
      v60 = (v15 - v56) >> 3;
      if (v60 < 2)
      {
        break;
      }

      if (v60 == 3)
      {
        v103 = *(v56 + 12);
        v104 = *(v56 + 4);
        v105 = *(v15 - 4);
        if (v103 <= v104)
        {
          if (v105 > v103)
          {
            v115 = *(v56 + 8);
            *(v56 + 8) = *(v15 - 8);
            *(v15 - 8) = v115;
            *(v56 + 12) = v105;
            *(v15 - 4) = v103;
            v116 = *(v56 + 12);
            v117 = *(v56 + 4);
            if (v116 > v117)
            {
              v118 = *v56;
              *v56 = *(v56 + 8);
              *(v56 + 8) = v118;
              *(v56 + 4) = v116;
              *(v56 + 12) = v117;
            }
          }
        }

        else
        {
          v106 = *v56;
          if (v105 <= v103)
          {
            *v56 = *(v56 + 8);
            *(v56 + 8) = v106;
            *(v56 + 4) = v103;
            *(v56 + 12) = v104;
            v119 = *(v15 - 4);
            if (v119 > v104)
            {
              *(v56 + 8) = *(v15 - 8);
              *(v15 - 8) = v106;
              *(v56 + 12) = v119;
              *(v15 - 4) = v104;
            }
          }

          else
          {
            *v56 = *(v15 - 8);
            *(v15 - 8) = v106;
            *(v56 + 4) = v105;
            *(v15 - 4) = v104;
          }
        }

        break;
      }

      if (v60 == 2)
      {
        v107 = *(v15 - 4);
        v108 = *(v56 + 4);
        if (v107 > v108)
        {
          v109 = *v56;
          *v56 = *(v15 - 8);
          *(v15 - 8) = v109;
          *(v56 + 4) = v107;
          *(v15 - 4) = v108;
        }

        break;
      }

      if (v60 <= 7)
      {
        while (v56 != v15 - 8)
        {
          v110 = v56;
          v56 += 8;
          if (v110 != v15 && v56 != v15)
          {
            v111 = v56;
            v112 = v110;
            do
            {
              if (v111[1] > v112[1])
              {
                v112 = v111;
              }

              v111 += 2;
            }

            while (v111 != v15);
            if (v112 != v110)
            {
              v113 = *v110;
              *v110 = *v112;
              *v112 = v113;
              v114 = *(v110 + 1);
              v110[1] = v112[1];
              *(v112 + 1) = v114;
            }
          }
        }

        break;
      }

      v61 = v56 + 8 * ((v15 - v56) >> 4);
      v62 = *(v61 + 4);
      v63 = *(v56 + 4);
      v64 = *(v15 - 4);
      if (v62 <= v63)
      {
        if (v64 > v62)
        {
          v66 = *v61;
          *v61 = *(v15 - 8);
          *(v15 - 8) = v66;
          *(v61 + 4) = v64;
          *(v15 - 4) = v62;
          v67 = *(v61 + 4);
          v68 = *(v56 + 4);
          if (v67 > v68)
          {
            v69 = *v56;
            *v56 = *v61;
            *v61 = v69;
            *(v56 + 4) = v67;
            *(v61 + 4) = v68;
          }

          goto LABEL_121;
        }

        v71 = 0;
      }

      else
      {
        v65 = *v56;
        if (v64 > v62)
        {
          *v56 = *(v15 - 8);
          *(v15 - 8) = v65;
          *(v56 + 4) = v64;
          goto LABEL_120;
        }

        *v56 = *v61;
        *v61 = v65;
        *(v56 + 4) = v62;
        *(v61 + 4) = v63;
        v70 = *(v15 - 4);
        if (v70 > v63)
        {
          *v61 = *(v15 - 8);
          *(v15 - 8) = v65;
          *(v61 + 4) = v70;
LABEL_120:
          *(v15 - 4) = v63;
        }

LABEL_121:
        v71 = 1;
      }

      v72 = v15 - 8;
      v73 = *(v56 + 4);
      v74 = *(v61 + 4);
      if (v73 <= v74)
      {
        v76 = v15 - 8;
        while (1)
        {
          v75 = v76 - 8;
          if (v76 - 8 == v56)
          {
            break;
          }

          v77 = *(v76 - 4);
          v76 -= 8;
          if (v77 > v74)
          {
            v78 = *v56;
            *v56 = *v75;
            *v75 = v78;
            *(v56 + 4) = v77;
            *(v75 + 4) = v73;
            if (v71)
            {
              v71 = 2;
            }

            else
            {
              v71 = 1;
            }

            goto LABEL_131;
          }
        }

        v92 = v56 + 8;
        v93 = *(v15 - 4);
        if (v73 <= v93)
        {
          if (v92 == v72)
          {
            break;
          }

          while (1)
          {
            v94 = *(v92 + 4);
            if (v73 > v94)
            {
              break;
            }

            v92 += 8;
            if (v92 == v72)
            {
              goto LABEL_105;
            }
          }

          v98 = *v92;
          *v92 = *(v15 - 8);
          *(v15 - 8) = v98;
          *(v92 + 4) = v93;
          *(v15 - 4) = v94;
          v92 += 8;
        }

        if (v92 == v72)
        {
          break;
        }

        while (1)
        {
          v99 = *(v56 + 4);
          do
          {
            v89 = v92;
            v100 = *(v92 + 4);
            v92 += 8;
          }

          while (v99 <= v100);
          do
          {
            v101 = *(v72 - 4);
            v72 -= 8;
          }

          while (v99 > v101);
          if (v89 >= v72)
          {
            break;
          }

          v102 = *v89;
          *v89 = *v72;
          *v72 = v102;
          *(v89 + 4) = v101;
          *(v72 + 4) = v100;
        }

        if (v89 > v58)
        {
          break;
        }
      }

      else
      {
        v75 = v15 - 8;
LABEL_131:
        v79 = v56 + 8;
        if (v56 + 8 >= v75)
        {
          v82 = v56 + 8;
        }

        else
        {
          v80 = v56 + 8;
          while (1)
          {
            v81 = *(v61 + 4);
            do
            {
              v82 = v80;
              v83 = *(v80 + 4);
              v80 += 8;
            }

            while (v83 > v81);
            do
            {
              v84 = *(v75 - 4);
              v75 -= 8;
            }

            while (v84 <= v81);
            if (v82 >= v75)
            {
              break;
            }

            v85 = *v82;
            *v82 = *v75;
            *v75 = v85;
            *(v82 + 4) = v84;
            *(v75 + 4) = v83;
            ++v71;
            if (v61 == v82)
            {
              v61 = v75;
            }
          }
        }

        if (v82 != v61)
        {
          v86 = *(v61 + 4);
          v87 = *(v82 + 4);
          if (v86 > v87)
          {
            v88 = *v82;
            *v82 = *v61;
            *v61 = v88;
            *(v82 + 4) = v86;
            *(v61 + 4) = v87;
            ++v71;
          }
        }

        if (v82 == v58)
        {
          break;
        }

        if (!v71)
        {
          if (v82 <= v58)
          {
            v95 = v82 + 8;
            while (v95 != v15)
            {
              v96 = *(v95 + 4);
              v97 = *(v95 - 4);
              v95 += 8;
              if (v96 > v97)
              {
                goto LABEL_146;
              }
            }
          }

          else
          {
            while (v79 != v82)
            {
              v90 = *(v79 + 4);
              v91 = *(v79 - 4);
              v79 += 8;
              if (v90 > v91)
              {
                goto LABEL_146;
              }
            }
          }

          break;
        }

LABEL_146:
        if (v82 <= v58)
        {
          v89 = v82 + 8;
        }

        else
        {
          v15 = v82;
          v89 = v56;
        }
      }

      v56 = v89;
      if (v15 == v58)
      {
        break;
      }

      continue;
    }
  }

LABEL_105:
  if (v57 > a7 + 6)
  {
    a1[1] = v58;
  }
}

void sub_1AE7308F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(a11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE730944(uint64_t *a1, void *a2, unsigned int *a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v7 = a4 + 32;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    if (v10 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = *(v7 + 8);
    }

    theString = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
    if (!theString)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    theString = 0;
  }

  if (!(*(**a2 + 160))(*a2, *a3))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    (*(**a2 + 40))(__p);
    if (v36 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if (v20)
    {
      if (v36 >= 0)
      {
        v21 = HIBYTE(v36);
      }

      else
      {
        v21 = __p[1];
      }

      v22 = CFStringCreateWithBytes(0, v20, v21, 0x8000100u, 0);
      v37 = v22;
      if (!v22)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v32, "Could not construct");
        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (v36 < 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
      v37 = 0;
      if (v36 < 0)
      {
LABEL_26:
        operator delete(__p[0]);
        v22 = v37;
      }
    }

    Length = CFStringGetLength(v22);
    v24 = CFStringGetLength(theString);
    if (v24 <= Length)
    {
      if (*(a1 + 23) < 0)
      {
        a1[1] = 0;
        a1 = *a1;
      }

      else
      {
        *(a1 + 23) = 0;
      }

      *a1 = 0;
      v28 = v37;
      if (!v37)
      {
        goto LABEL_47;
      }

LABEL_46:
      CFRelease(v28);
      goto LABEL_47;
    }

    v39.location = Length;
    v39.length = v24 - Length;
    v25 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v39);
    cf = v25;
    if (!v25)
    {
      goto LABEL_52;
    }

    v26 = CFGetTypeID(v25);
    if (v26 != CFStringGetTypeID())
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v33, "Could not construct");
      __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!cf)
    {
LABEL_52:
      v31 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v31, "Could not construct");
      __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      sub_1AE621740(__p, cf);
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      __p[0] = 0;
      HIBYTE(v36) = 0;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    operator delete(*a1);
LABEL_42:
    *a1 = *__p;
    a1[2] = v36;
    HIBYTE(v36) = 0;
    LOBYTE(__p[0]) = 0;
    CFRelease(cf);
    v28 = v37;
    if (!v37)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v14 = a2[5];
  v15 = CFStringGetLength(theString);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], v15, theString);
  CFStringLowercase(MutableCopy, v14);
  __p[0] = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_50;
  }

  v17 = CFGetTypeID(MutableCopy);
  if (v17 != CFStringGetTypeID())
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!__p[0])
  {
LABEL_50:
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v29, "Could not construct");
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = CFStringGetTypeID();
  if (v18 == CFGetTypeID(__p[0]))
  {
    sub_1AE621740(a1, __p[0]);
    v19 = __p[0];
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    v19 = __p[0];
    if (!__p[0])
    {
      goto LABEL_47;
    }
  }

  CFRelease(v19);
LABEL_47:
  if (theString)
  {
    CFRelease(theString);
  }
}

void sub_1AE730D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17)
{
  __cxa_free_exception(v18);
  sub_1AE621E54(&a9);
  sub_1AE63109C(&a16);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  sub_1AE63109C(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_1AE730EDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = a2[3];
  if (0x86BCA1AF286BCA1BLL * ((v5 - v4) >> 4) < a2[1])
  {
    return 1;
  }

  if (v3 == v2)
  {
    __assert_rtn("best", "PriorityQueue.h", 46, "!m_predictions.empty()");
  }

  if (v4 == v5)
  {
    __assert_rtn("worst", "PriorityQueue.h", 55, "!m_predictions.empty()");
  }

  return *(v2 - 120) + *(v2 - 280) > *(v4 + 184) + *(v4 + 24);
}

CFIndex sub_1AE730FC4(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v2)
  {
    if (v1 >= 0)
    {
      v3 = *(a1 + 23);
    }

    else
    {
      v3 = *(a1 + 8);
    }

    v4 = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
    cf = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v4 = 0;
    cf = 0;
  }

  Length = CFStringGetLength(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  return Length;
}

void sub_1AE731088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

void sub_1AE7310B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE63109C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AE7310C4(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (a3 == a4)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *v59 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    HIBYTE(v57) = 0;
    LOBYTE(__p[0]) = 0;
    v58 = 0;
    sub_1AE720628(v59, __p);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    v67 = 0;
    if (*(&v60 + 1) == v61)
    {
      HIBYTE(v55) = 0;
      LOBYTE(__dst[0]) = 0;
    }

    else if (*(v61 - 9) < 0)
    {
      sub_1AE5DBF1C(__dst, *(v61 - 32), *(v61 - 24));
    }

    else
    {
      v15 = *(v61 - 32);
      v55 = *(v61 - 16);
      *__dst = v15;
    }

    v47 = a6[1];
    v74 = *a6;
    v75 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    v76 = a6[2];
    operator new();
  }

  v9 = a3;
  v11 = *(a3 + 12);
  v12 = (*(a3 + 13) - v11) >> 2;
  v13 = a4 - a3 - 184;
  if (v13 <= 0xB7)
  {
    v14 = a3;
    do
    {
LABEL_18:
      v21 = *(v14 + 13);
      if ((v21 - *(v14 + 12)) >> 2 < v12)
      {
        v12 = (v21 - *(v14 + 12)) >> 2;
      }

      v14 += 184;
    }

    while (v14 != a4);
    goto LABEL_21;
  }

  v16 = v13 / 0xB8 + 1;
  v14 = &a3[184 * (v16 & 0x3FFFFFFFFFFFFFELL)];
  v17 = a3 + 288;
  v18 = v16 & 0x3FFFFFFFFFFFFFELL;
  v19 = (*(a3 + 13) - v11) >> 2;
  do
  {
    v20 = *(v17 - 1);
    if ((*(v17 - 23) - *(v17 - 24)) >> 2 < v12)
    {
      v12 = (*(v17 - 23) - *(v17 - 24)) >> 2;
    }

    if ((*v17 - v20) >> 2 < v19)
    {
      v19 = (*v17 - v20) >> 2;
    }

    v17 += 46;
    v18 -= 2;
  }

  while (v18);
  if (v12 >= v19)
  {
    v12 = v19;
  }

  if (v16 != (v16 & 0x3FFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

LABEL_21:
  v22 = 0;
  if (v12)
  {
LABEL_22:
    v23 = a3;
    while (*(v11 + 4 * v22) == *(*(v23 + 12) + 4 * v22))
    {
      v23 += 184;
      if (v23 == a4)
      {
        if (++v22 != v12)
        {
          goto LABEL_22;
        }

        v22 = v12;
        break;
      }
    }
  }

  v53 = v22;
  do
  {
    v24 = *(v9 + 4);
    if (*(v9 + 3) == v24)
    {
      HIBYTE(v57) = 0;
      LOBYTE(__p[0]) = 0;
    }

    else if (*(v24 - 9) < 0)
    {
      sub_1AE5DBF1C(__p, *(v24 - 32), *(v24 - 24));
    }

    else
    {
      v25 = *(v24 - 32);
      v57 = *(v24 - 16);
      *__p = v25;
    }

    sub_1AE72BAF8(v59, __p, *(a1 + 48));
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    v26 = MEMORY[0x1B2705500](*(a1 + 40));
    if (CFStringCompare(v26, @"zh-Hans", 0) == kCFCompareEqualTo)
    {
      goto LABEL_40;
    }

    (*(**a6 + 24))(__p);
    v27 = (*(*__p[0] + 16))(__p[0]);
    v28 = __p[0];
    __p[0] = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    if (v27)
    {
LABEL_40:
      __dst[1] = 0;
      v55 = 0;
      __dst[0] = 0;
      if (v53)
      {
        if ((v53 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v29 = 0.0;
      for (i = 0; ; ++i)
      {
        v34 = *(v9 + 12);
        if (i >= (*(v9 + 13) - v34) >> 2)
        {
          break;
        }

        LODWORD(__p[0]) = 1065353216;
        (*(**(a1 + 16) + 16))(*(a1 + 16), *(v34 + 4 * i), __dst, __p, a5);
        v35 = *(v9 + 12);
        v36 = __dst[1];
        if (__dst[1] < v55)
        {
          *__dst[1] = *(v35 + 4 * i);
          v31 = v36 + 4;
        }

        else
        {
          v37 = __dst[0];
          v38 = __dst[1] - __dst[0];
          v39 = (__dst[1] - __dst[0]) >> 2;
          v40 = v39 + 1;
          if ((v39 + 1) >> 62)
          {
            sub_1AE5CBB70();
          }

          v41 = v55 - __dst[0];
          if ((v55 - __dst[0]) >> 1 > v40)
          {
            v40 = v41 >> 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v42 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (!(v42 >> 62))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v43 = (4 * v39);
          v44 = *(v35 + 4 * i);
          v45 = &v43[-((__dst[1] - __dst[0]) >> 2)];
          *v43 = v44;
          v31 = v43 + 1;
          memcpy(v45, v37, v38);
          __dst[0] = v45;
          __dst[1] = v31;
          v55 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        __dst[1] = v31;
        v32 = *__p;
        v33 = log10f(*__p);
        if (v32 <= 0.0)
        {
          v33 = -10.0;
        }

        v29 = v33 + v29;
      }

      v46 = a6[1];
      v74 = *a6;
      v75 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
      }

      v76 = a6[2];
      operator new();
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(v59[0]);
    }

    v9 += 184;
  }

  while (v9 != a4);
  v48 = *(a2 + 16);
  v49 = *(a2 + 24);
  if (v71)
  {
    operator delete(v71);
  }

  return v48 != v49;
}

void sub_1AE7319CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE731B74(uint64_t a1)
{
  *a1 = &unk_1F242FFE8;
  CFRelease(*(a1 + 16));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE731BE0(uint64_t a1)
{
  *a1 = &unk_1F242FFE8;
  CFRelease(*(a1 + 16));
  return a1;
}

void sub_1AE731C2C(int *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[2] >= 3)
  {
    vsnprintf(__str, 0x3E8uLL, a3, &a9);
    v10 = CFStringCreateWithCStringNoCopy(0, __str, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v10)
    {
      (*(*a1 + 16))(a1, v10);
      CFRelease(v10);
    }
  }
}

void sub_1AE731D0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE731DFC(const __CFURL *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  __p[7] = Mutable;
  v5 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  __p[6] = v5;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69ABFC8], v5);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69ABFF8], @"LegacyTextInputLexicon");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69ABFE8], a2);
  __p[5] = 0;
  v6 = LXLexiconCreateMutable();
  if (!v6)
  {
    if (qword_1EB5E0B20 != -1)
    {
      dispatch_once(&qword_1EB5E0B20, &unk_1F2430040);
    }

    v8 = qword_1EB5E0B28;
    if (os_log_type_enabled(qword_1EB5E0B28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1AE5C8000, v8, OS_LOG_TYPE_DEFAULT, "failed to create a mutable lexicon", __p, 2u);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

void sub_1AE73205C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7320B0(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

uint64_t sub_1AE7320C8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

uint64_t sub_1AE7320E0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

const void **sub_1AE7321C0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1AE7321F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE732230(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1AE732240(uint64_t result)
{
  v1 = *(result + 40);
  *(result + 40) = 0;
  if (v1)
  {
    if (*v1)
    {
      sub_1AE774A30(v1);
      if (*v1)
      {
        MEMORY[0x1B2706400](*v1, 0x1010C4006136809);
      }
    }

    JUMPOUT(0x1B2706400);
  }

  return result;
}

uint64_t sub_1AE7322C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1AE7322D4(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE73230C(int a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  cf = sub_1AE5D40B8(a2, @"lexicon");
  sub_1AE61D968();
}

void sub_1AE732464(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE732614(void *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a2;
  ++*(*(a1[4] + 8) + 24);
  (*(**(*(a1[5] + 8) + 40) + 32))(__p);
  LODWORD(v4) = HIBYTE(v20);
  if (v20 >= 0)
  {
    v5 = HIBYTE(v20);
  }

  else
  {
    v5 = __p[1];
  }

  if (v5)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    (*(*a1[8] + 32))(buf);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v27;
    *__p = *buf;
    v4 = HIBYTE(v27);
    if ((v27 & 0x8000000000000000) == 0)
    {
LABEL_6:
      if (v4)
      {
        v6 = v4;
        v7 = __p;
LABEL_13:
        v8 = sub_1AE61D700(v7, v6);
        cf[1] = v8;
        v9 = a1[9];
        *buf = v8;
        v10 = *(v9 + 56);
        if (!v10)
        {
          sub_1AE60819C();
        }

        (*(*v10 + 48))(cf);
        Mutable = LXEntryCreateMutable();
        v17[5] = Mutable;
        *buf = 0;
        *&buf[8] = buf;
        v27 = 0x2000000000;
        v28 = 0;
        v12 = *(*(a1[6] + 8) + 40);
        v17[0] = MEMORY[0x1E69E9820];
        v13.n128_u64[0] = 0x40000000;
        v17[1] = 0x40000000;
        v17[2] = sub_1AE732A60;
        v17[3] = &unk_1E7A2F410;
        v17[4] = buf;
        sub_1AE774B40(v12, &v21, 1u, v17, v13);
        if (*(*&buf[8] + 24) < 1.0)
        {
          *(*&buf[8] + 24) = 1065353216;
        }

        LXMutableEntryUpdateUsageCount();
        if (sub_1AE732AB0(Mutable, a1[8], *(*(a1[5] + 8) + 40), a1[10], a1[9]))
        {
          ++*(*(a1[7] + 8) + 24);
        }

        else
        {
          if (qword_1EB5E0B20 != -1)
          {
            dispatch_once(&qword_1EB5E0B20, &unk_1F2430040);
          }

          v15 = qword_1EB5E0B28;
          if (os_log_type_enabled(qword_1EB5E0B28, OS_LOG_TYPE_DEFAULT))
          {
            v16 = __p;
            if (v20 < 0)
            {
              v16 = __p[0];
            }

            *v22 = 136315394;
            v23 = v16;
            v24 = 1024;
            v25 = a2;
            _os_log_impl(&dword_1AE5C8000, v15, OS_LOG_TYPE_DEFAULT, "failed to migrate entry '%s' with tokenID=%u", v22, 0x12u);
          }
        }

        _Block_object_dispose(buf, 8);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        goto LABEL_34;
      }

      goto LABEL_18;
    }
  }

  v6 = __p[1];
  if (__p[1])
  {
    v7 = __p[0];
    goto LABEL_13;
  }

LABEL_18:
  if (qword_1EB5E0B20 != -1)
  {
    dispatch_once(&qword_1EB5E0B20, &unk_1F2430040);
  }

  v14 = qword_1EB5E0B28;
  if (os_log_type_enabled(qword_1EB5E0B28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_1AE5C8000, v14, OS_LOG_TYPE_DEFAULT, "unable to migrate entry with tokenID=%u (failed to lookup corresponding string)", buf, 8u);
  }

LABEL_34:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE7329DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_1AE732A60(uint64_t a1, float a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

const void **sub_1AE732A78(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE732AB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  MutableCopy = LXEntryCreateMutableCopy();
  v9 = LXEntryCopyString();
  __p = 0;
  p_p = &__p;
  v28 = 0;
  v27 = 0x2000000000;
  LXLexiconEnumerateEntriesForString();
  v10 = *(p_p + 6);
  _Block_object_dispose(&__p, 8);
  if (v10)
  {
    operator new();
  }

  v12 = *(a5 + 24);
  if (!v12)
  {
    sub_1AE60819C();
  }

  (*(*v12 + 48))(&__p);
  v13 = (*(*a2 + 16))(a2, v9, 0);
  if (!v13)
  {
    if (!__p)
    {
      v11 = 0;
      goto LABEL_19;
    }

    v13 = (*(*a3 + 16))(a3, __p, 0);
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  v14 = a3[18];
  v15 = v14[7];
  if (v14[8] != v15)
  {
    v16 = v14[10];
    v17 = v14[11];
    v18 = (v15 + 8 * (v16 / 0x66));
    v19 = *v18;
    v20 = *v18 - 4080 * (v16 / 0x66) + 40 * v16;
    v21 = *(v15 + 8 * ((v17 + v16) / 0x66)) - 4080 * ((v17 + v16) / 0x66) + 40 * (v17 + v16);
    while (v20 != v21)
    {
      if (*(v20 + 24) == v13)
      {
        break;
      }

      v20 += 40;
      if (v20 - v19 == 4080)
      {
        v23 = v18[1];
        ++v18;
        v19 = v23;
        v20 = v23;
      }
    }
  }

  CEMStringContainsEmoji();
  LXMutableEntrySetMetaFlags();
  if (!LXLexiconAddEntryWithTokenID())
  {
LABEL_17:
    v11 = 0;
    v22 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  LXLexiconSetUserBitfield();
  v11 = 1;
  v22 = __p;
  if (__p)
  {
LABEL_18:
    CFRelease(v22);
  }

LABEL_19:
  if (v9)
  {
    CFRelease(v9);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v11;
}

void sub_1AE732EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1AE636D70(&__p);
  sub_1AE636D70(&a12);
  sub_1AE732A78(&a13);
  _Unwind_Resume(a1);
}

__n128 sub_1AE732F78(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE732F9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }

        *v3 = 0;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

void sub_1AE733028(void *a1, const void *a2)
{
  ++*(*(a1[4] + 8) + 24);
  if (sub_1AE732AB0(a2, a1[8], *(*(a1[5] + 8) + 40), a1[9], a1[10]))
  {
    ++*(*(a1[6] + 8) + 24);
    return;
  }

  v4 = *(a1[7] + 8);
  v5 = CFRetain(a2);
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_1AE5CBB70();
    }

    v12 = v6 - v9;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v14 = (v7 - v9) >> 3;
    v15 = 8 * v10 - 8 * v14;
    *(8 * v10) = v5;
    v8 = 8 * v10 + 8;
    if (v9 == v7)
    {
      goto LABEL_31;
    }

    v16 = v7 - v9 - 8;
    v17 = v9;
    v18 = (8 * v10 - 8 * v14);
    if (v16 >= 0x98)
    {
      v19 = 8 * v14;
      v20 = v9 >= v7 - v9 + (v16 & 0xFFFFFFFFFFFFFFF8) - 8 * v14 + 8 || v15 >= v9 + (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
      v17 = v9;
      v18 = (8 * v10 - 8 * v14);
      if (v20)
      {
        v21 = (v16 >> 3) + 1;
        v22 = v21 & 0x3FFFFFFFFFFFFFFCLL;
        v17 = &v9[v22];
        v23 = (8 * v10 - v19 + 16);
        v24 = v9;
        v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v26 = *v24;
          v27 = *(v24 + 1);
          *v24 = 0uLL;
          *(v24 + 1) = 0uLL;
          v24 += 4;
          *(v23 - 1) = v26;
          *v23 = v27;
          v23 += 2;
          v25 -= 4;
        }

        while (v25);
        if (v21 == (v21 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_28;
        }

        v18 = (v15 + v22 * 8);
      }
    }

    do
    {
      v28 = *v17;
      *v17++ = 0;
      *v18++ = v28;
    }

    while (v17 != v7);
    do
    {
LABEL_28:
      if (*v9)
      {
        CFRelease(*v9);
      }

      *v9++ = 0;
    }

    while (v9 != v7);
    v9 = v4[5];
LABEL_31:
    v4[5] = v15;
    v4[6] = v8;
    v4[7] = 0;
    if (v9)
    {
      operator delete(v9);
    }

    goto LABEL_33;
  }

  *v7 = v5;
  v8 = (v7 + 8);
LABEL_33:
  v4[6] = v8;
}

void *sub_1AE733270(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }

        *v3 = 0;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

os_log_t sub_1AE7332E4()
{
  result = os_log_create("com.apple.LanguageModeling", "LexiconMigrator");
  qword_1EB5E0B28 = result;
  return result;
}

uint64_t sub_1AE733314()
{
  result = ucol_open();
  qword_1EB5E0EE8 = result;
  return result;
}

void sub_1AE733378(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = qword_1EB5E0EB8[v1];
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (!v1)
    {
      if (qword_1EB5E0EF0 == -1)
      {
        v8 = qword_1EB5E0EE8;
        if (!qword_1EB5E0EE8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        dispatch_once(&qword_1EB5E0EF0, &unk_1F2430060);
        v8 = qword_1EB5E0EE8;
        if (!qword_1EB5E0EE8)
        {
LABEL_15:
          __assert_rtn("getRootCollator", "LMTIKeyboardCollator.cpp", 53, "rootCollator");
        }
      }

      goto LABEL_78;
    }

    if (qword_1EB5E0EF0 == -1)
    {
      if (!qword_1EB5E0EE8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&qword_1EB5E0EF0, &unk_1F2430060);
      if (!qword_1EB5E0EE8)
      {
        goto LABEL_15;
      }
    }

    v3 = qword_1EB5E0F08;
    v4 = qword_1EB5E0F10;
    if (qword_1EB5E0F08 || qword_1EB5E0F10 || dword_1EB5E0F18)
    {
LABEL_54:
      v23 = 0;
      if (v1 >= 1 && v3 && v4)
      {
        v24 = (v3 + 8 * v1);
        v25 = *(v24 - 1);
        if (v25 < 5 || v4 <= v25)
        {
          goto LABEL_62;
        }

        v23 = 0;
        if (*v24)
        {
          if (v4 >= (*v24 + v25))
          {
            v23 = ucol_openBinary();
            *buffer = 0;
            ucol_setStrength();
            ucol_setAttribute();
            if (*buffer > 0)
            {
              v33 = u_errorName(*buffer);
              printf("Collator customization failed: %s\n", v33);
              if (*buffer >= 1)
              {
                ucol_close();
LABEL_62:
                v23 = 0;
              }
            }
          }
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v23;
      v26 = *(*(*(a1 + 32) + 8) + 24);
      if (v26)
      {
LABEL_79:
        qword_1EB5E0EB8[*(a1 + 40)] = v26;
        return;
      }

      v27 = *(a1 + 40);
      Mutable = CFStringCreateMutable(0, 0);
      v29 = Mutable;
      if (v27 <= 2)
      {
        switch(v27)
        {
          case 1:
            v30 = @"& ь <<< Ь << ъ <<< Ъ & ї <<< Ї << і <<< І & 'ا' << 'أ' << 'إ' << 'آ' & 'و' << 'ؤ' & 'ي' << 'ئ' &[last primary ignorable ] << '׳' << '״' << 'ـ' << 'ً' << 'ٌ' << 'ٍ' << 'َ' << 'ُ' << 'ِ' << 'ّ' << 'ْ' << 'ٓ' << 'ٔ' << 'ٕ' << 'ٖ' << 'ٗ' << 'ٰ' << '़' << 'ँ' << 'ं' << 'ः' << '्' << '্' << '়' << 'ঁ' << 'ঃ' << 'ਁ' << 'ਂ' << 'ਃ' << '਼' << '੍' << 'ੑ' << 'ੰ' << 'ੱ' << 'ઁ' << 'ં' << 'ઃ' << '઼' << '્' << 'ః' << '్' & 'כ' < 'ך' & 'מ' < 'ם' & 'נ' < 'ן' & 'פ' < 'ף' & 'צ' < 'ץ' & 'ๆ' < '็' < '่' < '้' < '๊' < '๋' < '์' < 'ํ' < '๎' [suppressContractions [ก-๛]] & 'ํ' <<< 'ำ'/'า' & [before 1] 'অ' < 'ং' < 'ঃ' & [before 1] 'అ' < 'ఁ' < 'ం' < 'ః' & 'ে' <<< 'ো'/'া' <<< 'ৌ'/'ৗ' & 'ত' <<< 'ৎ'/'্' ";
            break;
          case 2:
            v30 = @"& i <<< İ << ı <<< I ";
            break;
          case 0:
            __assert_rtn("LMTIKeyboardCreateCustomCollationRulesForCollatorType", "LMTIKeyboardCollator.cpp", 80, "type != kRootCollator");
          default:
            goto LABEL_76;
        }
      }

      else
      {
        switch(v27)
        {
          case 3:
            v30 = @"& z < æ <<< Æ < å <<< Å < ä <<< Ä < ø <<< Ø < ö <<< Ö ";
            break;
          case 4:
            break;
          case 5:
            v30 = @"& n << w & k << g & p << b & a << A/a & e << E/e & i << I/i & o << O/o & u << U/u & [last primary ignorable] << ஂ << ் & [last primary ignorable] << அ & ஆ << ா & இ << ி & ஈ << ீ & உ << ு & ஊ << ூ & எ << ெ & ஏ << ே & ஐ << ை & ஒ << ொ & ஓ << ோ & ஔ << ௌ & க << '\u0BBD'/ஷ ";
            break;
          default:
LABEL_76:
            CFStringAppend(v29, @"& [before 1] a < ' ' < '&' ");
            Length = CFStringGetLength(v29);
            v32 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            if (!v32)
            {
              __assert_rtn("LMTIKeyboardCollatorCompile", "LMTIKeyboardCollator.cpp", 207, "buf");
            }

            v45.location = 0;
            v45.length = Length;
            CFStringGetCharacters(v29, v45, v32);
            CFRelease(v29);
            v8 = ucol_openRules();
            free(v32);
            ucol_setStrength();
            ucol_setAttribute();
LABEL_78:
            *(*(*(a1 + 32) + 8) + 24) = v8;
            v26 = *(*(*(a1 + 32) + 8) + 24);
            goto LABEL_79;
        }
      }

      CFStringAppend(Mutable, v30);
      goto LABEL_76;
    }

    v5 = getenv("LINGUISTIC_DATA");
    if (v5)
    {
      v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
      v42 = v6;
      if (!v6)
      {
        v7 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v6 = @"/System/Library/LinguisticData/";
      v42 = @"/System/Library/LinguisticData/";
    }

    v9 = CFGetTypeID(v6);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = v42;
LABEL_19:
    v10 = CFStringCreateWithFormat(0, 0, @"%@/collator.dat", v7);
    cf = v10;
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v35, "Could not construct");
        __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v12 = cf;
    }

    else
    {
      v12 = 0;
    }

    v13 = CFURLCreateWithFileSystemPath(0, v12, kCFURLPOSIXPathStyle, 1u);
    url = v13;
    if (v13)
    {
      v14 = CFGetTypeID(v13);
      if (v14 != CFURLGetTypeID())
      {
        v36 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v36, "Could not construct");
        __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v13 = url;
    }

    dword_1EB5E0F18 = -1;
    if (CFURLGetFileSystemRepresentation(v13, 1u, buffer, 1024))
    {
      v15 = open(buffer, 0);
      dword_1EB5E0F18 = v15;
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = dword_1EB5E0F18;
      if ((dword_1EB5E0F18 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    v16 = CFStringCreateWithBytes(0, "/System/Library/PrivateFrameworks/Lexicon.framework/collator.dat", 64, 0x8000100u, 0);
    if (!v16)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v37, "Could not construct");
      __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = cf;
    cf = v16;
    if (v17)
    {
      CFRelease(v17);
      v16 = cf;
    }

    v18 = CFURLCreateWithFileSystemPath(0, v16, kCFURLPOSIXPathStyle, 1u);
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 != CFURLGetTypeID())
      {
        v38 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v38, "Could not construct");
        __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v21 = url;
    v39 = url;
    url = v19;
    if (v39)
    {
      CFRelease(v21);
    }

    if (CFURLGetFileSystemRepresentation(v19, 1u, buffer, 1024))
    {
      v15 = open(buffer, 0);
      dword_1EB5E0F18 = v15;
      if (v15 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v15 = dword_1EB5E0F18;
      if (dword_1EB5E0F18 < 0)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    v22 = lseek(v15, 0, 2);
    if (v22 < 1)
    {
LABEL_46:
      close(dword_1EB5E0F18);
      dword_1EB5E0F18 = -1;
      goto LABEL_47;
    }

    qword_1EB5E0F10 = v22;
    lseek(dword_1EB5E0F18, 0, 0);
    qword_1EB5E0F08 = mmap(0, qword_1EB5E0F10, 1, 2, dword_1EB5E0F18, 0);
    if (qword_1EB5E0F08 == -1)
    {
LABEL_45:
      qword_1EB5E0F08 = 0;
      goto LABEL_46;
    }

    ucol_getVersion();
    if (*qword_1EB5E0F08)
    {
      munmap(qword_1EB5E0F08, qword_1EB5E0F10);
      goto LABEL_45;
    }

LABEL_47:
    if (url)
    {
      CFRelease(url);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    v3 = qword_1EB5E0F08;
    v4 = qword_1EB5E0F10;
    goto LABEL_54;
  }
}