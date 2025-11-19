void *sub_1D9D0C1C8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F554CC60;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1DA741250](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_1D9D0C22C(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_1F554CB40;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F554CC60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F554CC60;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_1D9D3F470((a1 + 96));
  sub_1D9D0C360(a1, a3, a4, &v8);
  sub_1D9D3F690((a1 + 96), &v8);
  sub_1D9D3F478(&v8);
  return a1;
}

void sub_1D9D0C310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D3F478(va);
  sub_1D9D3F478((v4 + 96));
  sub_1D9D0C1C8(v5);
  sub_1D9D0C1C8(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    sub_1D9D12204(v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sub_1D9D0C360@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_1D9D0CA08(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    result = sub_1D9D3D904(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_1D9D3F478(a4);
      result = sub_1D9D0CA08(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sub_1D9D3F478(a4);
        result = sub_1D9D3D904(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_1D9D3F478(a4);
          v7 = 0;
          result = sub_1D9D0CC14(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_1D9D3F478(a4);
            result = sub_1D9D3D904(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_1D9D3F478(a4);
              sub_1D9D0CE20();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1D9D0C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D0CA08@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1D9D100A8(&v8);
    sub_1D9D12280(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1D9D12280(&v8, "(", 1);
    MEMORY[0x1DA741080](&v8, 448);
    sub_1D9D12280(&v8, ") [", 3);
    sub_1D9D12280(&v8, "string.size() >= sizeof(T)", 26);
    sub_1D9D12280(&v8, "] ", 2);
    sub_1D9D0CE90(&v7, a4);
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

  else
  {
    *a3 = *a1;

    return sub_1D9D3F470(a4);
  }
}

void *sub_1D9D0CC14@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1D9D100A8(&v8);
    sub_1D9D12280(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1D9D12280(&v8, "(", 1);
    MEMORY[0x1DA741080](&v8, 448);
    sub_1D9D12280(&v8, ") [", 3);
    sub_1D9D12280(&v8, "string.size() >= sizeof(T)", 26);
    sub_1D9D12280(&v8, "] ", 2);
    sub_1D9D0CE90(&v7, a4);
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

  else
  {
    *a3 = *a1;

    return sub_1D9D3F470(a4);
  }
}

void sub_1D9D0CE90(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_1D9D3F5DC(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D9D0CF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D0CF20(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 8) = *MEMORY[0x1E69E54E8];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](a1 + 120);
  return a1;
}

void *sub_1D9D0D044(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (v2 = **v1, (result = __dynamic_cast(v1, &unk_1F554CC30, &unk_1F554DC10, 16)) == 0))
  {
    v9 = 1;
    v4 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_interface.cc", 18);
    v5 = sub_1D9D12280(v4, "(", 1);
    v6 = MEMORY[0x1DA741080](v5, 103);
    v7 = sub_1D9D12280(v6, ") [", 3);
    v8 = sub_1D9D12280(v7, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_1D9D12280(v8, "] ", 2);
    result = sub_1D9D103D8(&v9);
    __break(1u);
  }

  return result;
}

void *sub_1D9D0D13C(void *a1)
{
  *a1 = &unk_1F554CB40;
  sub_1D9D3F478(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_1F554CC60;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x1DA741250](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_1F554CC60;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x1DA741250](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_1D9D12204((a1 + 2), v4);
  }

  return a1;
}

const char *sub_1D9D0D21C(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_1D9D0D2A0(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_1D9D0D324(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_1D9D0D3A8(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_1D9D0D42C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_1D9D0D59C(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_1D9D3F478(&__p);
  if (v12)
  {
    sub_1D9D3F68C(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_1D9D0D798(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = sub_1D9D12788(a5, v20);
        }

        else
        {
          sub_1D9D126C4(a5, v20);
          v19 = (v18 + 24);
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sub_1D9D3F68C(a6, a1 + 96);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_1D9D0D774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0D798(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  sub_1D9D12610(a6, a5);
  v12 = sub_1D9D104B8(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  sub_1D9D107C0(a6, v12);
}

void sub_1D9D0D818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0D834(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_1D9D3F478(&__p);
  if (v12)
  {
    sub_1D9D3F68C(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_1D9D0D798(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_1D9D84AB0();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_1D9D12A0C(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_1D9D3F68C(a6, a1 + 96);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_1D9D0DA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0DA8C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sub_1D9D3F478(&v23);
  if (v10)
  {
    sub_1D9D3F68C(a5, a1 + 96);
  }

  else
  {
    sub_1D9D0DD48(a1 + 24, a2, a3, &v23);
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = a4[1];
        if (v15 >= a4[2])
        {
          v16 = sub_1D9D12788(a4, __p);
        }

        else
        {
          sub_1D9D126C4(a4, __p);
          v16 = (v15 + 24);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        sub_1D9D0F81C("<0x%02X>", &v25, __p);
        v18 = a4[1];
        if (v18 >= a4[2])
        {
          v20 = sub_1D9D12A54(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            sub_1D9D12B94(a4[1], __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = v18 + 24;
          a4[1] = v18 + 24;
        }

        a4[1] = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_1D9D3F68C(a5, a1 + 96);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_1D9D0DCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0DD48(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1D9D12610(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
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
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_1D9D107C0(a4, v13);
}

void sub_1D9D0DE98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0DEE4(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sub_1D9D3F478(&v41);
  if (v10)
  {
    sub_1D9D3F68C(a5, a1 + 96);
  }

  else
  {
    sub_1D9D0DD48(a1 + 24, a2, a3, &v41);
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_1D9D84AB0();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_1D9D12A0C(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        sub_1D9D0F81C("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_1D9D84AB0();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1D9D12A0C(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_1D9D3F68C(a5, a1 + 96);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_1D9D0E25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0E29C(uint64_t a1)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(a1 + 88) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  sub_1D9D12C8C(&__p, 256);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_1D9D3F5DC(&v54, 13, "unk is not defined.", 19);
      sub_1D9D3F690((a1 + 96), &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_1ECB71DF0;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, sub_1D9D133E8(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sub_1D9D0EB4C(a1 + 24, &v51, &v54), sub_1D9D3F690((a1 + 96), &v54), sub_1D9D3F478(&v54), (*(*a1 + 16))(&v54, a1), v25 = v54, sub_1D9D3F478(&v54), !v25))
        {
          if (!v50 || (sub_1D9D0EB4C(a1 + 56, &v48, &v54), sub_1D9D3F690((a1 + 96), &v54), sub_1D9D3F478(&v54), (*(*a1 + 16))(&v54, a1), v26 = v54, sub_1D9D3F478(&v54), !v26))
          {
            sub_1D9D0F014();
          }
        }

        goto LABEL_69;
      }

      sub_1D9D3F690((a1 + 96), &v54);
    }

LABEL_68:
    sub_1D9D3F478(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_1D9D11200(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_1D9D3F5DC(&v54, 13, "piece must not be empty.", 24);
        sub_1D9D3F690((a1 + 96), &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    sub_1D9D12F50(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      sub_1D9D13354(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_1ECB71DF0;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sub_1D9D3F5DC(&v43, 13, v37, v41);
        sub_1D9D3F690((a1 + 96), &v43);
        sub_1D9D3F478(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_1D9D0E9F8(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_1D9D3F5DC(&v54, 13, "unk is already defined.", 23);
        sub_1D9D3F690((a1 + 96), &v54);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  sub_1D9D132C8(&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sub_1D9D3F5DC(&v42, 13, v31, v32);
  sub_1D9D3F690((a1 + 96), &v42);
  sub_1D9D3F478(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_1D9D12C38(&v46, v47[0]);
  sub_1D9D12C38(&v48, v49);
  sub_1D9D12C38(&v51, v52);
}

void sub_1D9D0E8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sub_1D9D3F478(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_1D9D12C38(&a19, a20);
  sub_1D9D12C38(&a22, a23);
  sub_1D9D12C38(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D0E9F8(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_1ECB71BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECB71BA0))
  {
    sub_1D9D0F8CC();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v4 = qword_1ECB71B98;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_1D9D13510(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D9D0EB4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_1D9D84AB0();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_1D9D1360C(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          sub_1D9D84AB0();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_1D9D12A0C(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        sub_1D9D0F9B4(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sub_1D9D3F5DC(a3, 13, "no pieces are loaded.", 21);
}

void sub_1D9D0EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0F084(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_1D9D17C80(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_1D9D3D89C(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_1D9D3D89C(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D0F34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0F3C4(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_1D9DED443[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_1D9D84AB0();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_1D9D134C8(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_1D9D134C8(a5, 1uLL);
  }
}

void sub_1D9D0F7E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D0F81C@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_1D9D0F8B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0F998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D0F9B4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_1D9D13654(&v6, v12);
}

uint64_t sub_1D9D0FAF4@<X0>(void *a1@<X8>)
{
  result = sub_1D9D3D4EC();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1D9D12280(v3, "(", 1);
    v5 = MEMORY[0x1DA741080](v4, 96);
    v6 = sub_1D9D12280(v5, ") ", 2);
    v7 = sub_1D9D12280(v6, "LOG(", 4);
    v8 = sub_1D9D12280(v7, "ERROR", 5);
    v9 = sub_1D9D12280(v8, ") ", 2);
    sub_1D9D12280(v9, "Not implemented.", 16);
    result = sub_1D9D103D8(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1D9D0FBD0@<X0>(void *a1@<X8>)
{
  result = sub_1D9D3D4EC();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1D9D12280(v3, "(", 1);
    v5 = MEMORY[0x1DA741080](v4, 102);
    v6 = sub_1D9D12280(v5, ") ", 2);
    v7 = sub_1D9D12280(v6, "LOG(", 4);
    v8 = sub_1D9D12280(v7, "ERROR", 5);
    v9 = sub_1D9D12280(v8, ") ", 2);
    sub_1D9D12280(v9, "Not implemented.", 16);
    result = sub_1D9D103D8(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1D9D0FCAC(void *a1@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1D9D3D4EC() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v3 = sub_1D9D12280(v2, "(", 1);
    v4 = MEMORY[0x1DA741080](v3, 117);
    v5 = sub_1D9D12280(v4, ") ", 2);
    v6 = sub_1D9D12280(v5, "LOG(", 4);
    v7 = sub_1D9D12280(v6, "ERROR", 5);
    v8 = sub_1D9D12280(v7, ") ", 2);
    sub_1D9D12280(v8, "Not implemented.", 16);
    sub_1D9D103D8(&__p);
  }

  __p = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_1D9D11D3C(a1, &__p, &v14, 1uLL);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1D9D0FDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D9D0FE00()
{
  if (sub_1D9D3D4EC() <= 2)
  {
    v8 = 0;
    v0 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v1 = sub_1D9D12280(v0, "(", 1);
    v2 = MEMORY[0x1DA741080](v1, 125);
    v3 = sub_1D9D12280(v2, ") ", 2);
    v4 = sub_1D9D12280(v3, "LOG(", 4);
    v5 = sub_1D9D12280(v4, "ERROR", 5);
    v6 = sub_1D9D12280(v5, ") ", 2);
    sub_1D9D12280(v6, "Not implemented.", 16);
    sub_1D9D103D8(&v8);
  }

  return 0.0;
}

uint64_t sub_1D9D0FF1C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1D9D1003C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_1D9D100A8(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1D9D10214((a1 + 1), 16);
  return a1;
}

void sub_1D9D101EC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D10214(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1DA741190](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1D9D102D0(a1);
  return a1;
}

void sub_1D9D102A8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9D102D0(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_1D9D103D8(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_1D9D3F324();
  }

  return a1;
}

unint64_t sub_1D9D104B8(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_1D9D107F0(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_1D9D107F0(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_1D9D10F18(v43);
  return v24;
}

void sub_1D9D107A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D9D10F18(va);
  _Unwind_Resume(a1);
}

void sub_1D9D107C0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1D9D11014(a1, a2 - v2);
  }
}

__n128 sub_1D9D107F0(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1D9D108A0(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *sub_1D9D108A0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    sub_1D9D10ED0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1D9D10A74(a1, &v10);
}

void sub_1D9D10A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1D9D10A74(void *result, void *a2)
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

      sub_1D9D10ED0(result, v11);
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

const void **sub_1D9D10B7C(const void **result, void *a2)
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

      sub_1D9D10ED0(result, v9);
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

void *sub_1D9D10C88(void *result, void *a2)
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

      sub_1D9D10ED0(result[4], v11);
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

const void **sub_1D9D10D90(const void **result, void *a2)
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

      sub_1D9D10ED0(result[4], v9);
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

void sub_1D9D10E9C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1D9D10ED0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D10F18(void *a1)
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
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D9D10FC4(a1);
}

uint64_t sub_1D9D10FC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1D9D11014(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1D9D84AB0();
    }

    v8 = v4 - *a1;
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
      sub_1D9D111B8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1D9D11128(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1D9D11184(exception, a1);
  __cxa_throw(exception, off_1E858DD38, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1D9D11184(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1D9D111B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D11200(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D112C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

const void **sub_1D9D112E0(void *a1, const void **a2)
{
  v4 = sub_1D9D11560(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1D9D11A0C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_1D9D11560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1D9D115A0(&v5, a2, v3);
}

unint64_t sub_1D9D115A0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1D9D1194C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1D9D118A0(a2, a3);
  }

  else
  {
    return sub_1D9D117A8(a2, a3);
  }
}

unint64_t sub_1D9D117A8(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1D9D118A0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1D9D1194C(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_1D9D11A0C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_1D9D11A84(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1D9D11B74(a1, prime);
    }
  }
}

void sub_1D9D11B74(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1D9D11CD8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1D9D11D3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D11DC4(result, a4);
  }

  return result;
}

void sub_1D9D11DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D9D120BC(&a9);
  _Unwind_Resume(a1);
}

void sub_1D9D11DC4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D9D11E00(a1, a2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D11E00(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D11E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1D9D11F10(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1D9D12034(v8);
  return v4;
}

uint64_t sub_1D9D11F10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D9D11F90(result, a4);
  }

  return result;
}

void sub_1D9D11F74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D11F90(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1D9D11FDC(a1, a2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D11FDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D12034(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D9D1206C(a1);
  }

  return a1;
}

void sub_1D9D1206C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1D9D120BC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D9D12110(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D9D12110(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1D9D12180(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F554CC60;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1DA741250](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9D12204(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x1DA741280);
  }
}

void *sub_1D9D12280(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA741020](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1D9D12428(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1DA741030](v13);
  return a1;
}

void sub_1D9D123C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1DA741030](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D9D123A0);
}

uint64_t sub_1D9D12428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1D9D12168();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1D9D125F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D12610(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D12688(result, a2);
  }

  return result;
}

void sub_1D9D1266C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D12688(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D9D111B8(a1, a2);
  }

  sub_1D9D84AB0();
}

void *sub_1D9D126C4(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

char *sub_1D9D12788(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1D9D84AB0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1D9D12920(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v18 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_1D9D12978(&v16);
  return v10;
}

void sub_1D9D1290C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D12978(va);
  _Unwind_Resume(a1);
}

void sub_1D9D12920(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D12978(uint64_t a1)
{
  sub_1D9D129B0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D129B0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

void sub_1D9D12A0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D12A54(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1D9D84AB0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1D9D12920(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1D9D12978(&v17);
  return v11;
}

void sub_1D9D12B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D12978(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D12B94(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1D9D12168();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_1D9D12C38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1D9D12C38(a1, *a2);
    sub_1D9D12C38(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_1D9D12C8C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D9D12D60(result, a2);
  }

  return result;
}

void sub_1D9D12D60(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1D9D12DA4(a1, v2);
  }

  sub_1D9D84AB0();
}

void sub_1D9D12DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

void *sub_1D9D12DEC(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_1D9D12EA0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_1D9D12F50(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1D9D12FEC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1D9D12FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1D9D130E0(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1D9D130E0(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_1D9D13088(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_1D9D1312C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_1D9D130E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t *sub_1D9D1312C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_1D9D132C8(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_1D9D13354(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1D9D12FEC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1D9D133E8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void sub_1D9D134C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

const void **sub_1D9D13510(void *a1, const void **a2)
{
  v4 = sub_1D9D11560(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_1D9D11A0C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1D9D1360C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

void sub_1D9D13654(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_1D9D13C14(a1, a2, v2);
  }

  sub_1D9D14040(a1, a2);
}

uint64_t *sub_1D9D13748(uint64_t *a1)
{
  sub_1D9D13794(a1);
  if (*a1)
  {
    MEMORY[0x1DA741250](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1D9D13794(uint64_t *a1)
{
  sub_1D9D137E0(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1D9D137E0(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_1D9D13840(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_1D9D13840(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
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

void sub_1D9D13980(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1DA741280);
}

const char *sub_1D9D139B8(uint64_t a1)
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

uint64_t *sub_1D9D139D0(uint64_t *a1)
{
  sub_1D9D13A1C(a1);
  if (*a1)
  {
    MEMORY[0x1DA741250](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1D9D13A1C(uint64_t *a1)
{
  sub_1D9D13A68(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1D9D13A68(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_1D9D13AD8(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_1D9D13AD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
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

void sub_1D9D13C14(void (**a1)(unint64_t, uint64_t), unint64_t *a2, uint64_t *a3)
{
  sub_1D9D14A8C(a3);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      sub_1D9D14B60(a3, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  sub_1D9D1500C(a3, 0);
  v13 = *a3;
  v14 = *(*a3 + 8);
  v15 = **a3;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  *a3[3] = v17 | *(v13 + 10);
  *a3[6] = v14;
  sub_1D9D1486C(a3);
  sub_1D9D14308(a3 + 15);
  sub_1D9D14308(a3 + 18);
  sub_1D9D14308(a3 + 21);

  sub_1D9D1543C((a3 + 9));
}

void sub_1D9D13D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = 1;
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  if (*(a1 + 24) < v5)
  {
    sub_1D9D13AD8(a1 + 8, v5);
  }

  v6 = 4 * *(a2 + 104);
  operator new[]();
}

void sub_1D9D14040(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    sub_1D9D13AD8(a1 + 8, v4);
  }

  operator new[]();
}

uint64_t *sub_1D9D142CC(uint64_t *a1)
{
  sub_1D9D14308(a1);

  return sub_1D9D144F0(a1);
}

uint64_t sub_1D9D14308(uint64_t *a1)
{
  sub_1D9D14354(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1D9D14354(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > a2)
  {
    *(result + 8) = a2;
    v2 = a2;
  }

  if (*(result + 16) < a2)
  {
    sub_1D9D143B4(result, a2);
  }

  if (v2 < a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_1D9D143B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
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

uint64_t *sub_1D9D144F0(uint64_t *a1)
{
  sub_1D9D14308(a1);
  if (*a1)
  {
    MEMORY[0x1DA741250](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_1D9D1453C(uint64_t *a1)
{
  sub_1D9D14598(a1);
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1DA741250](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return sub_1D9D144F0(a1);
}

uint64_t sub_1D9D14598(uint64_t *a1)
{
  sub_1D9D14308(a1);
  result = a1[3];
  if (result)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8052888210);
    a1[3] = 0;
  }

  return result;
}

uint64_t *sub_1D9D145DC(uint64_t *a1)
{
  sub_1D9D14628(a1);
  if (*a1)
  {
    MEMORY[0x1DA741250](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1D9D14628(uint64_t *a1)
{
  sub_1D9D14674(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1D9D14674(void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_1D9D146E4(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_1D9D146E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
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

uint64_t *sub_1D9D14820(uint64_t *a1)
{
  sub_1D9D1486C(a1);
  if (*a1)
  {
    MEMORY[0x1DA741250](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1D9D1486C(uint64_t *a1)
{
  sub_1D9D148B8(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x1DA741250](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void *sub_1D9D148B8(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_1D9D1493C(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void sub_1D9D1493C(uint64_t a1, unint64_t a2)
{
  if (a2 < 2 * *(a1 + 16))
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

void *sub_1D9D14A8C(void *a1)
{
  v7 = 0;
  sub_1D9D14DB8(a1 + 15, 0x400uLL, &v7);
  v2 = a1[22];
  if (v2)
  {
    v3 = *a1 + 12 * *(a1[21] + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --a1[22];
  }

  else
  {
    sub_1D9D14EC4(a1);
  }

  sub_1D9D14F1C(a1 + 9);
  sub_1D9D14F6C(a1 + 3);
  v4 = a1[7];
  if (v4 == a1[8])
  {
    sub_1D9D13840((a1 + 6), v4 + 1);
  }

  a1[7] = v4 + 1;
  a1[24] = 1;
  *(*a1 + 8) = -1;
  v6 = 0;
  return sub_1D9D14FB8(a1 + 18, &v6);
}

void *sub_1D9D14B60(void *result, uint64_t a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_1F554CCA8;
    exception[1] = v24;
    __cxa_throw(exception, &unk_1F554CC80, std::exception::~exception);
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *result;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a2 + v9);
    if (v9 < a3 && !*(a2 + v9))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return result;
    }
  }

  *(v13 + 10) = 1;
  result = sub_1D9D1500C(result, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + v9);
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      sub_1D9D14EC4(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    result = sub_1D9D14FB8(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return result;
}

void *sub_1D9D14DB8(void *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    sub_1D9D143B4(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_1D9DDCE00)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_1D9DDCDF0)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

void *sub_1D9D14EC4(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_1D9D1493C(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

void *sub_1D9D14F1C(void *result)
{
  v1 = result;
  v2 = result[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    result = sub_1D9D14FB8(result, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return result;
}

void *sub_1D9D14F6C(void *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_1D9D146E4(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

void *sub_1D9D14FB8(void *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_1D9D143B4(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t sub_1D9D1500C(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 152);
  v4 = *(*(result + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        sub_1D9D14308((v2 + 120));
        v34 = 0;
        sub_1D9D14DB8((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      result = sub_1D9D152DC(v2, v4, &v33);
      if (result)
      {
        v21 = result;
        *(*(v2 + 72) + 4 * (result >> 5)) |= 1 << result;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        sub_1D9D14F1C((v2 + 72));
        result = sub_1D9D14F6C((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          sub_1D9D13840(v2 + 48, v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          result = sub_1D9D14FB8((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = v26 + 12 * v27;
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return result;
}

uint64_t sub_1D9D152DC(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *a1 + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = a1[15];
  v12 = a1[16];
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *a1;
    v17 = *a1 + 12 * a2;
    v18 = a1[3];
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(a1[6] + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *sub_1D9D15580(unsigned int *result, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F554CCA8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
    __cxa_throw(exception, &unk_1F554CC80, std::exception::~exception);
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *result = *result & 0x800001FF | v2;
  return result;
}

unsigned int *sub_1D9D15604(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = a2 + 9;
  v9 = *(a2[3] + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(a2[9] + 4 * (v9 >> 7))) != 0 && (v13 = *(*(a1 + 64) + 4 * (sub_1D9D15C04(a2 + 9, v10) - 1))) != 0 && ((v14 = v13 ^ a4, ((v13 ^ a4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ a4) == 0) : (v15 = 1), v15))
  {
    if (*(a2[6] + v10))
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

    return sub_1D9D15580((v16 + 4 * v17), v14);
  }

  else
  {
    result = sub_1D9D15988(a1, a2, a3, a4);
    v19 = result;
    if ((*(a2[9] + 4 * v11) & v12) != 0)
    {
      result = sub_1D9D15C04(v8, v10);
      *(*(a1 + 64) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(a2[6] + v10))
      {
        result = sub_1D9D15604(a1, a2, v10, v19 ^ *(a2[6] + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(a2[3] + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void sub_1D9D1577C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    sub_1D9D13A68((a1 + 8), (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(a1 + 32);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(a1 + 16) <= v6)
        {
          sub_1D9D1577C(a1);
          v7 = *(a1 + 32);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(a1 + 72))
        {
          *(a1 + 72) = v13;
          if (v6 == v13)
          {
            *(a1 + 72) = *(a1 + 16);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(a1 + 8) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    sub_1D9D13A68((a1 + 8), (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(a1 + 32);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(a1 + 32);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(a1 + 72);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t sub_1D9D15988(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  sub_1D9D137E0(a1 + 40, 0);
  v8 = *(*(a2 + 24) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 48) + v9);
      sub_1D9D15C68((a1 + 40), &v38);
      v10 = *(*(a2 + 24) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 16);
  if (v14 > v13)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(a1 + 72);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(a1 + 48);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  sub_1D9D15580((*(a1 + 8) + 4 * a4), v21 ^ a4);
  if (*(a1 + 48))
  {
    v26 = 0;
    v27 = *(*(a2 + 24) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(a1 + 40) + v26);
      if (*(a1 + 16) <= v28)
      {
        sub_1D9D1577C(a1);
      }

      if (*(a1 + 72) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(a1 + 32);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(a1 + 72) = v31;
        if (v31 == v28)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v30 = *(a1 + 32);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(a1 + 8);
      if (*(*(a2 + 48) + v27))
      {
        *(v35 + 4 * v28) = *(*(a1 + 40) + v26);
        v36 = *(*(a2 + 24) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 24) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(a1 + 48));
  }

  else
  {
    v30 = *(a1 + 32);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t sub_1D9D15C04(void *a1, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(a1[3] + v2);
  LODWORD(v2) = *(*a1 + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

void *sub_1D9D15C68(void *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_1D9D13840(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

uint64_t *sub_1D9D15CBC(uint64_t *a1)
{
  sub_1D9D1486C(a1);
  sub_1D9D14628(a1 + 3);
  sub_1D9D13794(a1 + 6);
  sub_1D9D14598(a1 + 9);
  sub_1D9D14308(a1 + 15);
  sub_1D9D14308(a1 + 18);
  sub_1D9D14308(a1 + 21);
  a1[24] = 0;
  sub_1D9D142CC(a1 + 21);
  sub_1D9D142CC(a1 + 18);
  sub_1D9D144F0(a1 + 15);
  sub_1D9D1453C(a1 + 9);
  sub_1D9D13748(a1 + 6);
  sub_1D9D145DC(a1 + 3);

  return sub_1D9D14820(a1);
}

uint64_t sub_1D9D15D5C(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = sub_1D9D15EC4(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          sub_1D9D15D5C(a1, a2, a3, v16, a5 + 1, v12 ^ v15);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t sub_1D9D15EC4(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_1D9D137E0(a1 + 40, 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_1F554CCA8;
        exception[1] = v43;
        __cxa_throw(exception, &unk_1F554CC80, std::exception::~exception);
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        sub_1D9D15C68((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  sub_1D9D15580((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        sub_1D9D1577C(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}

uint64_t sub_1D9D1624C(uint64_t a1)
{
  sub_1D9D13A1C((a1 + 8));
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x1DA741250](v2, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_1D9D13794((a1 + 40));
  v3 = *(a1 + 64);
  if (v3)
  {
    MEMORY[0x1DA741250](v3, 0x1000C8052888210);
    *(a1 + 64) = 0;
  }

  *(a1 + 72) = 0;
  sub_1D9D13748((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x1DA741250](v4, 0x1000C80CBA68D63);
    *(a1 + 32) = 0;
  }

  sub_1D9D139D0((a1 + 8));
  return a1;
}

uint64_t sub_1D9D162F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F554CCD0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 245);
  sub_1D9D3F470((a1 + 56));
  v5 = *(a2 + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_1D9D163C8(a1, v6, v7);
  return a1;
}

void sub_1D9D1637C(_Unwind_Exception *a1)
{
  sub_1D9D3F478((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D163C8(uint64_t *result, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sub_1D9D16834(a2, a3, v6, &v5, &v4);
    sub_1D9D3F690(v3 + 7, &v4);
    result = sub_1D9D3F478(&v4);
    if (!v3[7])
    {
      operator new();
    }
  }

  return result;
}

void sub_1D9D16524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D3F478(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D16540(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554CCD0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1D9D3F470((a1 + 56));
  v4 = *(a2 + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_1D9D163C8(a1, v5, v6);
  return a1;
}

void sub_1D9D165C8(_Unwind_Exception *a1)
{
  sub_1D9D3F478((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D16618(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  a1[1] = 0;
  *a1 = &unk_1F554CCD0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  *(a1 + 48) = 0;
  sub_1D9D3F470(a1 + 7);
  v10 = 0;
  sub_1D9D0CC14(a3, a4, &v10, &v9);
  sub_1D9D3F690(a1 + 7, &v9);
  sub_1D9D3F478(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sub_1D9D3F478(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sub_1D9D163C8(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_1D9D1671C(_Unwind_Exception *a1)
{
  sub_1D9D3F478((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_1D9D16784(void *a1)
{
  *a1 = &unk_1F554CCD0;
  sub_1D9D3F478(a1 + 7);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D9D167FC(void *a1)
{
  sub_1D9D16784(a1);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9D16834@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (a2 < 5 || (v7 = *a1, a2 <= v7))
  {
    v10 = "Blob for normalization rule is broken.";
    v11 = 38;
  }

  else
  {
    if ((v7 + 1) < a2)
    {
      v8 = a1 + 1;
      *a3 = v8;
      a3[1] = v7;
      *a4 = v7 + v8;
      a4[1] = a2 - v7 - 4;
      return sub_1D9D3F470(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sub_1D9D3F5DC(a5, 13, v10, v11);
}

void *sub_1D9D1689C@<X0>(size_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  a5[1] = *a5;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    *a4->__r_.__value_.__l.__data_ = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    if (!a3)
    {
LABEL_11:

      return sub_1D9D3F470(a6);
    }
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    *(&a4->__r_.__value_.__s + 23) = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  result = (*(*a1 + 24))(a1);
  if (*a6)
  {
    return result;
  }

  sub_1D9D3F478(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v13 = 0;
    while (1)
    {
      sub_1D9D170A4(a1, a2, v8, &v39);
      if (v40 != 1 || *v39 != 32)
      {
        break;
      }

      a2 += v41;
      v13 += v41;
      v8 -= v41;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v37 = a6;
  }

  else
  {
    v37 = a6;
    v13 = 0;
  }

  std::string::reserve(a4, 3 * v8);
  sub_1D9D17298(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v14 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v13;
        sub_1D9D17338(a5, &v39);
        --v14;
      }

      while (v14);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v13;
      sub_1D9D17338(a5, &v39);
    }
  }

  v15 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sub_1D9D170A4(a1, a2, v8, &v39);
    v17 = v39;
    v16 = v40;
    if (v15)
    {
      if (!v40)
      {
        goto LABEL_40;
      }

      while (*v17 == 32)
      {
        ++v17;
        if (!--v16)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v40)
    {
      v15 = 0;
      goto LABEL_40;
    }

    v18 = 0;
    v38 = v13;
    v19 = v13;
    do
    {
      v20 = (*(**(a1 + 32) + 32))(*(a1 + 32));
      v21 = v17[v18];
      if (v20 && v21 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v22 = 3;
        do
        {
          v45[0] = v19;
          sub_1D9D17338(a5, v45);
          --v22;
        }

        while (v22);
      }

      else
      {
        std::string::push_back(a4, v21);
        v45[0] = v19;
        sub_1D9D17338(a5, v45);
      }

      ++v18;
    }

    while (v18 != v16);
    v15 = v17[v16 - 1] == 32;
    v13 = v38;
LABEL_40:
    v13 += v41;
    a2 += v41;
    v8 -= v41;
    v15 &= (*(**(a1 + 32) + 24))(*(a1 + 32));
  }

  while (v8);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v23 = (*(**(a1 + 32) + 32))(*(a1 + 32));
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v25) = v13;
    if (v23)
    {
      v26 = "▁";
    }

    else
    {
      v26 = " ";
    }

    while (1)
    {
      v27 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v28 = a4->__r_.__value_.__r.__words[0];
        size = a4->__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = a4;
        size = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      v30 = size >= v24;
      v31 = size - v24;
      if (!v30 || memcmp(v28 + v31, v26, v24))
      {
        break;
      }

      if ((v27 & 0x80000000) != 0)
      {
        v27 = a4->__r_.__value_.__l.__size_;
      }

      if (v27 - v24 < 0)
      {
        LODWORD(v39) = 13;
        v34 = sub_1D9D100A8(&v40);
        sub_1D9D12280(v34, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        sub_1D9D12280(&v40, "(", 1);
        MEMORY[0x1DA741080](&v40, 186);
        sub_1D9D12280(&v40, ") [", 3);
        sub_1D9D12280(&v40, "(length) >= (0)", 15);
        sub_1D9D12280(&v40, "] ", 2);
        sub_1D9D0CE90(&v39, v37);
        goto LABEL_72;
      }

      v32 = (v27 - v24) & 0x7FFFFFFF;
      v25 = *(*a5 + v32);
      std::string::resize(a4, v32, 0);
      sub_1D9D17418(a5, v32);
    }
  }

  else
  {
    LODWORD(v25) = v13;
  }

  if (*(a1 + 48) == 1 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v33 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v25;
        sub_1D9D17338(a5, &v39);
        --v33;
      }

      while (v33);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v25;
      sub_1D9D17338(a5, &v39);
    }
  }

  v39 = v25;
  sub_1D9D17338(a5, &v39);
  v35 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v35 + 1)
  {
    return sub_1D9D3F470(v37);
  }

  LODWORD(v39) = 13;
  v36 = sub_1D9D100A8(&v40);
  sub_1D9D12280(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  sub_1D9D12280(&v40, "(", 1);
  MEMORY[0x1DA741080](&v40, 198);
  sub_1D9D12280(&v40, ") [", 3);
  sub_1D9D12280(&v40, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  sub_1D9D12280(&v40, "] ", 2);
  sub_1D9D0CE90(&v39, v37);
LABEL_72:
  v40 = *MEMORY[0x1E69E54E8];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v41 = MEMORY[0x1E69E5548] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v44);
}

void sub_1D9D17084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

size_t sub_1D9D170A4@<X0>(size_t result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[63] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 40);
    if (v8 && (LOBYTE(v28) = 0, result = sub_1D9D1750C(v8, a2, a3, &v28), v28 == 1))
    {
      v9 = result;
      if (a3 < result)
      {
        v9 = a3;
      }

      *a4 = v6;
      *(a4 + 8) = v9;
      *(a4 + 16) = result;
    }

    else
    {
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 0;
      v13 = *(v10 + 16);
      v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
      do
      {
        v15 = v6[v11];
        v16 = v14 ^ v15;
        v17 = v13[v16];
        if ((v17 & 0x800000FF) != v15)
        {
          break;
        }

        v14 = v16 ^ (v17 >> 10 << ((v17 >> 6) & 8));
        if ((v17 & 0x100) != 0)
        {
          if (v12 <= 0x1F)
          {
            v18 = &v29[2 * v12 - 1];
            *v18 = v13[v14] & 0x7FFFFFFF;
            v18[1] = v11 + 1;
          }

          ++v12;
        }

        ++v11;
      }

      while (a3 != v11);
      if (!v12)
      {
        goto LABEL_24;
      }

      v19 = 0;
      v20 = 0;
      v21 = v29;
      v22 = v29;
      do
      {
        v24 = *v22;
        v22 += 2;
        v23 = v24;
        if (!v19 || v23 > v19)
        {
          v20 = *(v21 - 2);
          v19 = v23;
        }

        v21 = v22;
        --v12;
      }

      while (v12);
      if (v19)
      {
        v6 = (*(v7 + 16) + v20);
        result = strlen(v6);
      }

      else
      {
LABEL_24:
        v28 = 0;
        v25 = sub_1D9D3D4FC(v6, &v6[a3], &v28);
        v26 = v25 != 65533;
        if (v25 == 65533)
        {
          result = 3;
        }

        else
        {
          result = v28;
        }

        if (v28 == 3)
        {
          v26 = 1;
        }

        if (v26)
        {
          LODWORD(v19) = v28;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        if (!v26)
        {
          v6 = &unk_1D9DDCE34;
        }
      }

      *a4 = v6;
      *(a4 + 8) = result;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D9D17298(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1D9D12DA4(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9D17338(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1D9D84AB0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1D9D12DA4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_1D9D17418(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1D9D17D4C(a1, a2 - v2);
  }
}

void sub_1D9D17448(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v2);
  nullsub_3(&v2);
  sub_1D9D3F478(&v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1D9D174D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_1D9D3F478(&a9);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D1750C(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
  v25[127] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_33;
  }

  v4 = *(*a1 + 16);
  v5 = (*v4 >> 10 << ((*v4 >> 6) & 8));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a2[v6];
      v9 = v5 ^ v8;
      v10 = v4[v9];
      if ((v10 & 0x800000FF) != v8)
      {
        break;
      }

      v5 = v9 ^ (v10 >> 10 << ((v10 >> 6) & 8));
      if ((v10 & 0x100) != 0)
      {
        if (v7 <= 0x3F)
        {
          v11 = &v24[16 * v7];
          *v11 = v4[v5] & 0x7FFFFFFF;
          *(v11 + 1) = v6 + 1;
        }

        ++v7;
      }

      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    v12 = *a2;
    if (*a2)
    {
      v7 = 0;
      v13 = 1;
      do
      {
        v14 = v5 ^ v12;
        v15 = v4[v14];
        if ((v15 & 0x800000FF) != v12)
        {
          break;
        }

        v5 = v14 ^ (v15 >> 10 << ((v15 >> 6) & 8));
        if ((v15 & 0x100) != 0)
        {
          if (v7 <= 0x3F)
          {
            v16 = &v24[16 * v7];
            *v16 = v4[v5] & 0x7FFFFFFF;
            *(v16 + 1) = v13;
          }

          ++v7;
        }

        v12 = a2[v13++];
      }

      while (v12);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  if (a4)
  {
    *a4 = v7 > 0;
  }

  if (!v7)
  {
LABEL_33:
    v22 = asc_1D9DED443[*a2 >> 4];
    if (v22 >= a3)
    {
      result = a3;
    }

    else
    {
      result = v22;
    }

    goto LABEL_36;
  }

  if (v7 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v18 = v7 & 0x7FFFFFFF;
    v19 = v25;
    do
    {
      v21 = *v19;
      v19 += 4;
      v20 = v21;
      if (result <= v21)
      {
        result = v20;
      }

      else
      {
        result = result;
      }

      --v18;
    }

    while (v18);
  }

LABEL_36:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D176DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *v5 = v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    memset(&v13, 0, sizeof(v13));
    std::string::resize(&v13, 4uLL, 0);
    v9 = 4 * v8;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13.__r_.__value_.__r.__words[0];
    }

    LODWORD(v10->__r_.__value_.__l.__data_) = v9;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v11, size);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, v7, v9);
    std::string::append(a2, *(a1 + 16), *(a1 + 24));
  }
}

void sub_1D9D177D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *sub_1D9D17810(void *result, void *a2)
{
  *result = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_1D9D17ADC(&__p, v3);
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = v19;
      do
      {
        v8 = v5[4];
        if (v7 >= v20)
        {
          v9 = (v7 - __p) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_1D9D84AB0();
          }

          v10 = (v20 - __p) >> 2;
          if (v10 <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v11 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_1D9D1360C(&__p, v11);
          }

          v12 = (8 * v9);
          *v12 = v8;
          v7 = (8 * v9 + 8);
          v13 = v12 - (v19 - __p);
          memcpy(v13, __p, v19 - __p);
          v14 = __p;
          __p = v13;
          v19 = v7;
          v20 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 8;
        }

        v19 = v7;
        v15 = v5[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v5[2];
            v17 = *v16 == v5;
            v5 = v16;
          }

          while (!v17);
        }

        v5 = v16;
      }

      while (v16 != v4);
    }

    operator new();
  }

  return result;
}

void sub_1D9D17A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D17ADC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1D9D1360C(result, a2);
    }

    sub_1D9D84AB0();
  }

  return result;
}

void *sub_1D9D17B80(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_1D9D17C60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1D9D17E7C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D17C80@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1D9D12168();
    }

    v5 = *(v3 + 16);
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      result = memmove(a2, v5, v4);
    }

    a2 += v4;
  }

  else
  {
    a2[23] = 0;
  }

  *a2 = 0;
  return result;
}

void sub_1D9D17D4C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1D9D84AB0();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1D9D12DA4(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_1D9D17EA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = &unk_1ECB71DF0;
  }

  v4 = v3[68];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_1D9D180D8();
    }

    if (v4 == 4)
    {
      sub_1D9D18148();
    }
  }

  else
  {
    if (v4 == 1)
    {
      sub_1D9D17FF8();
    }

    if (v4 == 2)
    {
      sub_1D9D18068();
    }
  }

  result = sub_1D9D3D4EC();
  if (result <= 2)
  {
    LOBYTE(v14) = 0;
    v6 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_factory.cc", 16);
    v7 = sub_1D9D12280(v6, "(", 1);
    v8 = MEMORY[0x1DA741080](v7, 43);
    v9 = sub_1D9D12280(v8, ") ", 2);
    v10 = sub_1D9D12280(v9, "LOG(", 4);
    v11 = sub_1D9D12280(v10, "ERROR", 5);
    v12 = sub_1D9D12280(v11, ") ", 2);
    v13 = sub_1D9D12280(v12, "Unknown model_type: ", 20);
    MEMORY[0x1DA741080](v13, v3[68]);
    result = sub_1D9D103D8(&v14);
  }

  *a2 = 0;
  return result;
}

void sub_1D9D17FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D103D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D181B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17[1] = a2;
  v17[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    sub_1D9D183BC();
  }

  if (!v6)
  {
    sub_1D9D1833C();
  }

  result = sub_1D9D3D4EC();
  if (result <= 2)
  {
    LOBYTE(v17[0]) = 0;
    v8 = sub_1D9D12280(MEMORY[0x1E69E5300], "model_factory.cc", 16);
    v9 = sub_1D9D12280(v8, "(", 1);
    v10 = MEMORY[0x1DA741080](v9, 61);
    v11 = sub_1D9D12280(v10, ") ", 2);
    v12 = sub_1D9D12280(v11, "LOG(", 4);
    v13 = sub_1D9D12280(v12, "ERROR", 5);
    v14 = sub_1D9D12280(v13, ") ", 2);
    v15 = sub_1D9D12280(v14, "Unknown model_type: ", 20);
    v16 = (*(*a1 + 80))(a1);
    MEMORY[0x1DA741090](v15, v16);
    result = sub_1D9D103D8(v17);
  }

  *a4 = 0;
  return result;
}

void sub_1D9D18324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D103D8(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D1843C(void *a1)
{
  *a1 = &unk_1F554CD28;
  v2 = a1[3];
  if (v2)
  {
    sub_1D9D28BE8(v2);
  }

  return a1;
}

void sub_1D9D18488(void *a1)
{
  *a1 = &unk_1F554CD28;
  v1 = a1[3];
  if (v1)
  {
    sub_1D9D28BE8(v1);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D184F4(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    sub_1D9D28D34();
  }

  return result;
}

void *sub_1D9D1855C(void *a1)
{
  *a1 = &unk_1F554CD48;
  v2 = a1[2];
  if (v2)
  {
    sub_1D9D28BE8(v2);
  }

  return a1;
}

void sub_1D9D185A8(void *a1)
{
  *a1 = &unk_1F554CD48;
  v1 = a1[2];
  if (v1)
  {
    sub_1D9D28BE8(v1);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D18614(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    sub_1D9D28E70();
  }

  return result;
}

_BYTE *sub_1D9D18678@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return sub_1D9D4D8BC(v2, a2);
  }

  else
  {
    return sub_1D9D94D70(a2, "");
  }
}

double sub_1D9D18694(uint64_t a1)
{
  *a1 = &unk_1F554CD68;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t sub_1D9D186D4(uint64_t a1)
{
  *a1 = &unk_1F554CD68;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void sub_1D9D18838(uint64_t a1)
{
  sub_1D9D186D4(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D18870()
{
  v4[19] = *MEMORY[0x1E69E9840];
  sub_1D9D18A10(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1DA740F90](v3);
  std::istream::~istream();
  MEMORY[0x1DA7411E0](v4);
  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D9D189E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D9D27F68(&a10, MEMORY[0x1E69E54C8]);
  MEMORY[0x1DA7411E0](&a63);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D18A10(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1DA740F80](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1D9D18B9C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1DA7411E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D18BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1D9D18870())
  {
    sub_1D9D18D0C();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_1D9D18CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D9D19184(&a9);
  sub_1D9D19184(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D18D78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1D9D3C900();
  }

  return sub_1D9D3F5DC(a2, 5, "model file path should not be empty.", 36);
}

void sub_1D9D1910C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9D19184(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_1D9D39E58();
    MEMORY[0x1DA741280](v3, 0x10A1C4047CE62CFLL);
  }

  return a1;
}

uint64_t *sub_1D9D191CC(uint64_t a1)
{
  (*(*a1 + 16))(&v13);
  if (v13.__r_.__value_.__r.__words[0])
  {
    v12 = 1;
    v1 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v2 = sub_1D9D12280(v1, "(", 1);
    v3 = MEMORY[0x1DA741080](v2, 239);
    v4 = sub_1D9D12280(v3, ") [", 3);
    v5 = sub_1D9D12280(v4, "_status.ok()", 12);
    v6 = sub_1D9D12280(v5, "] ", 2);
    sub_1D9D3F79C(&v13, __p);
    if ((v11 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = __p[1];
    }

    sub_1D9D12280(v6, v7, v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1D9D103D8(&v12);
  }

  return sub_1D9D3F478(&v13);
}

void sub_1D9D192DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D103D8((v15 - 25));
  sub_1D9D3F478((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_1D9D193A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D9D19184(&a9);
  sub_1D9D19184(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9D19648(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &unk_1ECB71D50;
  }

  if (v5[80] == 1)
  {
    if (sub_1D9D3D4EC() <= 0)
    {
      LOBYTE(v24) = 0;
      v6 = sub_1D9D12280(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
      v7 = sub_1D9D12280(v6, "(", 1);
      v8 = MEMORY[0x1DA741080](v7, 260);
      v9 = sub_1D9D12280(v8, ") ", 2);
      v10 = sub_1D9D12280(v9, "LOG(", 4);
      v11 = sub_1D9D12280(v10, "INFO", 4);
      v12 = sub_1D9D12280(v11, ") ", 2);
      sub_1D9D12280(v12, "Enable Apple addition for backward compatibility", 48);
      sub_1D9D103D8(&v24);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v13 = *(v4 + 80);
    if (!v13)
    {
      v14 = *(v4 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = sub_1D9D3AEF0(v14);
      *(v4 + 80) = v13;
      v4 = *a2;
    }

    *(v13 + 40) |= 0x4000u;
    *(v13 + 245) = 1;
    *(v4 + 48) |= 2u;
    v15 = *(v4 + 88);
    if (!v15)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_1D9D3AFC0(v16);
      *(v4 + 88) = v15;
      v4 = *a2;
    }

    *(v15 + 48) |= 0x10u;
    *(v15 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v17 = v4 + 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 32);
  *(a1 + 32) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v17 = *(a1 + 32);
  }

  sub_1D9D17EA0(v17 - 16, &v24);
  v19 = v24;
  v24 = 0;
  v20 = *(a1 + 8);
  *(a1 + 8) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v21 = v24;
    v24 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  if (*(v17 + 72))
  {
    v22 = *(v17 + 72);
  }

  if (*(v17 + 64))
  {
    v23 = *(v17 + 64);
  }

  sub_1D9D1A058();
}

void sub_1D9D1A148(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  sub_1D9D28640(&__dst, __src, __len);
  v12 = strlen(a3);
  sub_1D9D28FAC(a3, v12, a4, a5, a6, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a7 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D1A220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1D9D1A25C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45[19] = *MEMORY[0x1E69E9840];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 88))(a1);
    if (!*a5)
    {
      sub_1D9D3F478(a5);
      if ((atomic_load_explicit(&qword_1ECB71B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECB71B80))
      {
        v41[3] = xmmword_1E858DD90;
        *__p = unk_1E858DDA0;
        v43 = xmmword_1E858DDB0;
        v44 = 3;
        v40 = xmmword_1E858DD50;
        v41[0] = unk_1E858DD60;
        v41[1] = xmmword_1E858DD70;
        v41[2] = *&off_1E858DD80;
        sub_1D9D2AD30(&qword_1ECB71B60, &v40, 5);
        __cxa_atexit(sub_1D9D25094, &qword_1ECB71B60, &dword_1D9D0A000);
        __cxa_guard_release(&qword_1ECB71B80);
      }

      sub_1D9D2822C(&v38, a2, a3, ":", 1, 0);
      v10 = v38;
      v11 = v39;
      if (v38 == v39)
      {
LABEL_24:
        if (v10)
        {
          v39 = v10;
          operator delete(v10);
        }

        sub_1D9D3F470(a5);
      }

      else
      {
        while (1)
        {
          v12 = sub_1D9D29550(&qword_1ECB71B60, v10);
          v13 = v12;
          if (v12 == &unk_1ECB71B68)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              sub_1D9D84AB0();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_1D9D12A0C(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sub_1D9D0D2A0(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 504))(a1, v26, v27);
            if ((*(*a1 + 528))(a1, v28))
            {
              LODWORD(v40) = 13;
              sub_1D9D100A8(&v40 + 1);
              sub_1D9D12280(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_1D9D12280(&v40 + 1, "(", 1);
              MEMORY[0x1DA741080](&v40 + 8, 1135);
              sub_1D9D12280(&v40 + 1, ") [", 3);
              sub_1D9D12280(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              sub_1D9D12280(&v40 + 1, "] ", 2);
              v33 = sub_1D9D0D2A0(a1[1]);
              sub_1D9D12280(&v40 + 1, v33, v34);
              sub_1D9D0CE90(&v40, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sub_1D9D0D324(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 504))(a1, v29, v30);
            if ((*(*a1 + 528))(a1, v31))
            {
              LODWORD(v40) = 13;
              sub_1D9D100A8(&v40 + 1);
              sub_1D9D12280(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_1D9D12280(&v40 + 1, "(", 1);
              MEMORY[0x1DA741080](&v40 + 8, 1140);
              sub_1D9D12280(&v40 + 1, ") [", 3);
              sub_1D9D12280(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              sub_1D9D12280(&v40 + 1, "] ", 2);
              v35 = sub_1D9D0D324(a1[1]);
              sub_1D9D12280(&v40 + 1, v35, v36);
              sub_1D9D0CE90(&v40, a5);
LABEL_35:
              *(&v40 + 1) = *MEMORY[0x1E69E54E8];
              *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x1E69E54E8] + 24);
              *&v41[0] = MEMORY[0x1E69E5548] + 16;
              if (SBYTE7(v43) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v38;
            goto LABEL_24;
          }
        }

        LODWORD(v40) = 13;
        sub_1D9D100A8(&v40 + 1);
        sub_1D9D12280(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1D9D12280(&v40 + 1, "(", 1);
        MEMORY[0x1DA741080](&v40 + 8, 1129);
        sub_1D9D12280(&v40 + 1, ") [", 3);
        sub_1D9D12280(&v40 + 1, "it != extra_option_map.end()", 28);
        sub_1D9D12280(&v40 + 1, "] ", 2);
        sub_1D9D12280(&v40 + 1, "option ", 8);
        sub_1D9D12280(&v40 + 1, *v10, v10[1]);
        sub_1D9D12280(&v40 + 1, " is not available.", 19);
        sub_1D9D0CE90(&v40, a5);
        *(&v40 + 1) = *MEMORY[0x1E69E54E8];
        *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x1E69E54E8] + 24);
        *&v41[0] = MEMORY[0x1E69E5548] + 16;
        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v41[0] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v41 + 1);
        std::ostream::~ostream();
        MEMORY[0x1DA7411E0](v45);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }

    v37 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v32 = *MEMORY[0x1E69E9840];

    sub_1D9D3F470(a5);
  }
}

void *sub_1D9D1AB78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 16))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sub_1D9D3F478(a2);
        result = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (!*a2)
        {
          v6 = sub_1D9D3F478(a2);

          return sub_1D9D3F470(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 320);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "normalizer_", 11);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D12280(&v10, "Normalizer is not initialized.", 30);
    sub_1D9D0CE90(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 319);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "model_", 6);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D12280(&v10, "Model is not initialized.", 25);
    sub_1D9D0CE90(&v9, a2);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v14);
}

void sub_1D9D1AEC0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sub_1D9D3F478(a3);
  v6 = a1[4];
  if (!v6 || (v7 = **v6, (v8 = __dynamic_cast(v6, &unk_1F554CC30, &unk_1F554DC10, 16)) == 0))
  {
    LODWORD(v23) = 13;
    v20 = sub_1D9D100A8(&v24);
    sub_1D9D12280(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v24, "(", 1);
    MEMORY[0x1DA741080](&v24, 331);
    sub_1D9D12280(&v24, ") [", 3);
    sub_1D9D12280(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    sub_1D9D12280(&v24, "] ", 2);
    sub_1D9D12280(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sub_1D9D0CE90(&v23, a3);
LABEL_26:
    v24 = *MEMORY[0x1E69E54E8];
    *(&v24 + *(v24 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v25 = MEMORY[0x1E69E5548] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v26);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](&v28);
    return;
  }

  v9 = v8;
  v10 = &unk_1ECB71DF0;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = sub_1D9D100A8(&v24);
    sub_1D9D12280(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1D9D12280(&v24, "(", 1);
    MEMORY[0x1DA741080](&v24, 336);
    sub_1D9D12280(&v24, ") [", 3);
    sub_1D9D12280(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    sub_1D9D12280(&v24, "] ", 2);
    sub_1D9D12280(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sub_1D9D0CE90(&v23, a3);
    goto LABEL_26;
  }

  sub_1D9D29290(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_1D9D2814C((v9 + 7), v11);
      v13 = v12;
      if ((*(v12 + 60) - 2) >= 3)
      {
        v14 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v14 + 23);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = *((*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v22[0] = v14;
        v22[1] = v15;
        if (&v24 == sub_1D9D29550(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_1D9DED443[*v18 >> 4]))
        {
          if (!sub_1D9D34E34(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sub_1D9D34E34(1))
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        *(v13 + 40) |= 4u;
        *(v13 + 60) = v19;
      }

      ++v11;
    }

    while (v11 < *(v9 + 16));
  }

  sub_1D9D3F470(a3);
  sub_1D9D12C38(&v23, v24);
}

void *sub_1D9D1B36C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a2)
  {
    sub_1D9D3F478(a2);
    v5 = a1[4];
    if (v5 && (v6 = **v5, (v7 = __dynamic_cast(v5, &unk_1F554CC30, &unk_1F554DC10, 16)) != 0))
    {
      v8 = *(v7 + 9);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[16];
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          v12 = *v9;
          if (*(*v9 + 60) == 5)
          {
            if (!sub_1D9D34E34(1))
            {
              sub_1D9D2B43C();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sub_1D9D3F470(a2);
    }

    else
    {
      v14 = 13;
      v13 = sub_1D9D100A8(&v15);
      sub_1D9D12280(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v15, "(", 1);
      MEMORY[0x1DA741080](&v15, 365);
      sub_1D9D12280(&v15, ") [", 3);
      sub_1D9D12280(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      sub_1D9D12280(&v15, "] ", 2);
      sub_1D9D12280(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sub_1D9D0CE90(&v14, a2);
      v15 = *MEMORY[0x1E69E54E8];
      *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v16 = MEMORY[0x1E69E5548] + 16;
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      v16 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v17);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v19);
    }
  }

  return result;
}

void sub_1D9D1BC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  sub_1D9D28538(&__p);
  __p = (v10 - 152);
  sub_1D9D28538(&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1D9D1BD40(const char *a1, uint64_t a2, uint64_t a3)
{
  sub_1D9D295E0(v11);
  v5 = strlen(a1);
  v6 = sub_1D9D12280(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1DA740FF0](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x1DA7411E0](&v16);
  return v7;
}

void sub_1D9D1BF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D29884(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1DA7411E0](v2 + 128);
  _Unwind_Resume(a1);
}

void *sub_1D9D1BF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9D2858C(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

uint64_t sub_1D9D1BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_1D9D3F478(a5);
    if (a4)
    {
      sub_1D9D1C31C(a4);
      sub_1D9D32CB4(&v16, 0);
      (*(*a1 + 232))(a1, a2, a3, &v16);
      if (!*a5)
      {
        sub_1D9D3F478(a5);
        if (v21)
        {
          v11 = v21 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v20)
        {
          v12 = *(a4 + 8);
          v13 = 8 * v20;
          do
          {
            v14 = *(*v11 + 48);
            if (v12 >= *(a4 + 16))
            {
              v12 = sub_1D9D12A54(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_1D9D299D4(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
              v12 += 24;
            }

            *(a4 + 8) = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_1D9D3F470(a5);
      }

      return sub_1D9D32DDC(&v16);
    }

    else
    {
      v16 = 13;
      v15 = sub_1D9D100A8(&v17);
      sub_1D9D12280(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v17, "(", 1);
      MEMORY[0x1DA741080](&v17, 415);
      sub_1D9D12280(&v17, ") [", 3);
      sub_1D9D12280(&v17, "pieces", 6);
      sub_1D9D12280(&v17, "] ", 2);
      sub_1D9D12280(&v17, "output container is null", 24);
      sub_1D9D0CE90(&v16, a5);
      v17 = *MEMORY[0x1E69E54E8];
      *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v18 = MEMORY[0x1E69E5548] + 16;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      v18 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v19);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v24);
    }
  }

  return result;
}

void sub_1D9D1C31C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1D9D1C36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_1D9D3F478(a5);
    if (a4)
    {
      a4[1] = *a4;
      sub_1D9D32CB4(&v24, 0);
      (*(*a1 + 232))(a1, a2, a3, &v24);
      if (!*a5)
      {
        sub_1D9D3F478(a5);
        if (v29)
        {
          v11 = v29 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v28)
        {
          v12 = a4[1];
          v13 = 8 * v28;
          do
          {
            v14 = *(*v11 + 64);
            v15 = a4[2];
            if (v12 >= v15)
            {
              v16 = *a4;
              v17 = v12 - *a4;
              v18 = v17 >> 2;
              v19 = (v17 >> 2) + 1;
              if (v19 >> 62)
              {
                sub_1D9D84AB0();
              }

              v20 = v15 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                sub_1D9D12A0C(a4, v21);
              }

              *(4 * v18) = v14;
              v12 = (4 * v18 + 4);
              memcpy(0, v16, v17);
              v22 = *a4;
              *a4 = 0;
              a4[1] = v12;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v12++ = v14;
            }

            a4[1] = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_1D9D3F470(a5);
      }

      return sub_1D9D32DDC(&v24);
    }

    else
    {
      v24 = 13;
      v23 = sub_1D9D100A8(&v25);
      sub_1D9D12280(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v25, "(", 1);
      MEMORY[0x1DA741080](&v25, 428);
      sub_1D9D12280(&v25, ") [", 3);
      sub_1D9D12280(&v25, "ids", 3);
      sub_1D9D12280(&v25, "] ", 2);
      sub_1D9D12280(&v25, "output container is null", 24);
      sub_1D9D0CE90(&v24, a5);
      v25 = *MEMORY[0x1E69E54E8];
      *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v26 = MEMORY[0x1E69E5548] + 16;
      if (v31 < 0)
      {
        operator delete(__p);
      }

      v26 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v27);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v32);
    }
  }

  return result;
}

void sub_1D9D1C6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D1C720(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D9D1BF58(a2, __p);
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9D1C7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D1C7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_1D9D32CB4(&v10, 0);
      (*(*a1 + 272))(a1, a2, &v10);
      if (!*a4)
      {
        sub_1D9D3F478(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_1D9D3F470(a4);
      }

      return sub_1D9D32DDC(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_1D9D100A8(&v11);
      sub_1D9D12280(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v11, "(", 1);
      MEMORY[0x1DA741080](&v11, 447);
      sub_1D9D12280(&v11, ") [", 3);
      sub_1D9D12280(&v11, "detokenized", 11);
      sub_1D9D12280(&v11, "] ", 2);
      sub_1D9D12280(&v11, "output container is null", 24);
      sub_1D9D0CE90(&v10, a4);
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
      return MEMORY[0x1DA7411E0](&v15);
    }
  }

  return result;
}

uint64_t sub_1D9D1CAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_1D9D32CB4(&v10, 0);
      (*(*a1 + 280))(a1, a2, &v10);
      if (!*a4)
      {
        sub_1D9D3F478(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_1D9D3F470(a4);
      }

      return sub_1D9D32DDC(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_1D9D100A8(&v11);
      sub_1D9D12280(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v11, "(", 1);
      MEMORY[0x1DA741080](&v11, 458);
      sub_1D9D12280(&v11, ") [", 3);
      sub_1D9D12280(&v11, "detokenized", 11);
      sub_1D9D12280(&v11, "] ", 2);
      sub_1D9D12280(&v11, "output container is null", 24);
      sub_1D9D0CE90(&v10, a4);
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
      return MEMORY[0x1DA7411E0](&v15);
    }
  }

  return result;
}

uint64_t sub_1D9D1CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_1D9D3F478(a6);
    if (a5)
    {
      v13 = *a5;
      v14 = a5[1];
      while (v14 != v13)
      {
        v14 -= 3;
        v31 = v14;
        sub_1D9D28538(&v31);
      }

      a5[1] = v13;
      sub_1D9D3377C(&v31, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v31);
      if (!*a6)
      {
        sub_1D9D3F478(a6);
        if (v35)
        {
          v15 = (v35 + 8);
        }

        else
        {
          v15 = 0;
        }

        if (LODWORD(v34.__locale_))
        {
          v16 = &v15[SLODWORD(v34.__locale_)];
          do
          {
            v17 = *v15;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v18 = *(v17 + 64);
            if (v18)
            {
              v19 = v18 + 8;
            }

            else
            {
              v19 = 0;
            }

            v20 = *(v17 + 56);
            if (v20)
            {
              v21 = 0;
              v22 = 8 * v20;
              do
              {
                v23 = *(*v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v21 >= v30)
                {
                  v21 = sub_1D9D12A54(&v28, v23);
                }

                else
                {
                  if (*(v23 + 23) < 0)
                  {
                    sub_1D9D12B94(v21, *v23, *(v23 + 8));
                  }

                  else
                  {
                    v24 = *v23;
                    *(v21 + 16) = *(v23 + 16);
                    *v21 = v24;
                  }

                  v21 += 24;
                }

                v29 = v21;
                v19 += 8;
                v22 -= 8;
              }

              while (v22);
            }

            v25 = a5[1];
            if (v25 >= a5[2])
            {
              v26 = sub_1D9D29A94(a5, &v28);
            }

            else
            {
              sub_1D9D29A34(a5, &v28);
              v26 = (v25 + 3);
            }

            a5[1] = v26;
            v39 = &v28;
            sub_1D9D28538(&v39);
            ++v15;
          }

          while (v15 != v16);
        }

        sub_1D9D3F470(a6);
      }

      return sub_1D9D33838(&v31);
    }

    else
    {
      LODWORD(v31) = 13;
      v27 = sub_1D9D100A8(&v32);
      sub_1D9D12280(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v32, "(", 1);
      MEMORY[0x1DA741080](&v32, 470);
      sub_1D9D12280(&v32, ") [", 3);
      sub_1D9D12280(&v32, "pieces", 6);
      sub_1D9D12280(&v32, "] ", 2);
      sub_1D9D12280(&v32, "output container is null", 24);
      sub_1D9D0CE90(&v31, a6);
      v32 = *MEMORY[0x1E69E54E8];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v33 = MEMORY[0x1E69E5548] + 16;
      if (v37 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v34);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v38);
    }
  }

  return result;
}

void sub_1D9D1D144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D1D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_1D9D3F478(a6);
    if (a5)
    {
      sub_1D9D1D5E8(a5);
      sub_1D9D3377C(&v38, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v38);
      if (!*a6)
      {
        sub_1D9D3F478(a6);
        if (v42)
        {
          v13 = (v42 + 8);
        }

        else
        {
          v13 = 0;
        }

        if (LODWORD(v41.__locale_))
        {
          v34 = &v13[SLODWORD(v41.__locale_)];
          do
          {
            v14 = *v13;
            __src = 0;
            v36 = 0;
            v37 = 0;
            v15 = *(v14 + 64);
            if (v15)
            {
              v16 = v15 + 8;
            }

            else
            {
              v16 = 0;
            }

            v17 = *(v14 + 56);
            if (v17)
            {
              v18 = 0;
              v19 = 8 * v17;
              do
              {
                v20 = *(*v16 + 64);
                if (v18 >= v37)
                {
                  v21 = __src;
                  v22 = v18 - __src;
                  v23 = (v18 - __src) >> 2;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 62)
                  {
                    sub_1D9D84AB0();
                  }

                  v25 = v37 - __src;
                  if ((v37 - __src) >> 1 > v24)
                  {
                    v24 = v25 >> 1;
                  }

                  if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v26 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  if (v26)
                  {
                    sub_1D9D12A0C(&__src, v26);
                  }

                  v27 = (v18 - __src) >> 2;
                  v28 = (4 * v23);
                  v29 = (4 * v23 - 4 * v27);
                  *v28 = v20;
                  v18 = (v28 + 1);
                  memcpy(v29, v21, v22);
                  v30 = __src;
                  __src = v29;
                  v36 = v18;
                  v37 = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  *v18 = v20;
                  v18 += 4;
                }

                v36 = v18;
                v16 += 8;
                v19 -= 8;
              }

              while (v19);
            }

            v31 = a5[1];
            if (v31 >= a5[2])
            {
              v32 = sub_1D9D29ECC(a5, &__src);
            }

            else
            {
              sub_1D9D29E78(a5, &__src);
              v32 = v31 + 24;
            }

            a5[1] = v32;
            if (__src)
            {
              v36 = __src;
              operator delete(__src);
            }

            ++v13;
          }

          while (v13 != v34);
        }

        sub_1D9D3F470(a6);
      }

      return sub_1D9D33838(&v38);
    }

    else
    {
      v38 = 13;
      v33 = sub_1D9D100A8(&v39);
      sub_1D9D12280(v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v39, "(", 1);
      MEMORY[0x1DA741080](&v39, 488);
      sub_1D9D12280(&v39, ") [", 3);
      sub_1D9D12280(&v39, "ids", 3);
      sub_1D9D12280(&v39, "] ", 2);
      sub_1D9D12280(&v39, "output container is null", 24);
      sub_1D9D0CE90(&v38, a6);
      v39 = *MEMORY[0x1E69E54E8];
      *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v40 = MEMORY[0x1E69E5548] + 16;
      if (v44 < 0)
      {
        operator delete(__p);
      }

      v40 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v41);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v45);
    }
  }

  return result;
}

void sub_1D9D1D5E8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

uint64_t sub_1D9D1D640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_1D9D3F478(a6);
    if (a5)
    {
      sub_1D9D1C31C(a5);
      sub_1D9D32CB4(&v20, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v20, a7);
      if (!*a6)
      {
        sub_1D9D3F478(a6);
        if (v25)
        {
          v15 = v25 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v24)
        {
          v16 = *(a5 + 8);
          v17 = 8 * v24;
          do
          {
            v18 = *(*v15 + 48);
            if (v16 >= *(a5 + 16))
            {
              v16 = sub_1D9D12A54(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_1D9D299D4(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
              v16 += 24;
            }

            *(a5 + 8) = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_1D9D3F470(a6);
      }

      return sub_1D9D32DDC(&v20);
    }

    else
    {
      v20 = 13;
      v19 = sub_1D9D100A8(&v21);
      sub_1D9D12280(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v21, "(", 1);
      MEMORY[0x1DA741080](&v21, 506);
      sub_1D9D12280(&v21, ") [", 3);
      sub_1D9D12280(&v21, "pieces", 6);
      sub_1D9D12280(&v21, "] ", 2);
      sub_1D9D12280(&v21, "output container is null", 24);
      sub_1D9D0CE90(&v20, a6);
      v21 = *MEMORY[0x1E69E54E8];
      *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v22 = MEMORY[0x1E69E5548] + 16;
      if (v27 < 0)
      {
        operator delete(__p);
      }

      v22 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v23);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v28);
    }
  }

  return result;
}

uint64_t sub_1D9D1D984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_1D9D3F478(a6);
    if (a5)
    {
      a5[1] = *a5;
      sub_1D9D32CB4(&v28, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v28, a7);
      if (!*a6)
      {
        sub_1D9D3F478(a6);
        if (v33)
        {
          v15 = v33 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v32)
        {
          v16 = a5[1];
          v17 = 8 * v32;
          do
          {
            v18 = *(*v15 + 64);
            v19 = a5[2];
            if (v16 >= v19)
            {
              v20 = *a5;
              v21 = v16 - *a5;
              v22 = v21 >> 2;
              v23 = (v21 >> 2) + 1;
              if (v23 >> 62)
              {
                sub_1D9D84AB0();
              }

              v24 = v19 - v20;
              if (v24 >> 1 > v23)
              {
                v23 = v24 >> 1;
              }

              if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                sub_1D9D12A0C(a5, v25);
              }

              *(4 * v22) = v18;
              v16 = (4 * v22 + 4);
              memcpy(0, v20, v21);
              v26 = *a5;
              *a5 = 0;
              a5[1] = v16;
              a5[2] = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v16++ = v18;
            }

            a5[1] = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_1D9D3F470(a6);
      }

      return sub_1D9D32DDC(&v28);
    }

    else
    {
      v28 = 13;
      v27 = sub_1D9D100A8(&v29);
      sub_1D9D12280(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v29, "(", 1);
      MEMORY[0x1DA741080](&v29, 520);
      sub_1D9D12280(&v29, ") [", 3);
      sub_1D9D12280(&v29, "ids", 3);
      sub_1D9D12280(&v29, "] ", 2);
      sub_1D9D12280(&v29, "output container is null", 24);
      sub_1D9D0CE90(&v28, a6);
      v29 = *MEMORY[0x1E69E54E8];
      *(&v29 + *(v29 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v30 = MEMORY[0x1E69E5548] + 16;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v30 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v31);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v36);
    }
  }

  return result;
}

void sub_1D9D1DD20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D1DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_1D9D3F478(a8);
    if (a7)
    {
      v19 = *a7;
      v20 = a7[1];
      while (v20 != v19)
      {
        v20 -= 4;
        v39 = v20;
        sub_1D9D28538(&v39);
      }

      a7[1] = v19;
      sub_1D9D3377C(&v39, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v39, a9);
      if (!*a8)
      {
        sub_1D9D3F478(a8);
        v21 = *a7;
        v22 = a7[1];
        while (v22 != v21)
        {
          v22 -= 4;
          v36 = v22;
          sub_1D9D28538(&v36);
        }

        a7[1] = v21;
        sub_1D9D1E1E4(a7, SLODWORD(v42.__locale_));
        if (v43)
        {
          v24 = (v43 + 8);
        }

        else
        {
          v24 = 0;
        }

        if (LODWORD(v42.__locale_))
        {
          v25 = &v24[SLODWORD(v42.__locale_)];
          do
          {
            v26 = *v24;
            v36 = 0;
            __dst = 0;
            v38 = 0;
            sub_1D9D1E280(&v36, *(v26 + 56));
            v27 = *(v26 + 64);
            if (v27)
            {
              v28 = v27 + 8;
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v26 + 56);
            if (v29)
            {
              v30 = __dst;
              v31 = 8 * v29;
              do
              {
                v32 = *(*v28 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v30 >= v38)
                {
                  v30 = sub_1D9D12A54(&v36, v32);
                }

                else
                {
                  if (*(v32 + 23) < 0)
                  {
                    sub_1D9D12B94(v30, *v32, *(v32 + 8));
                  }

                  else
                  {
                    v33 = *v32;
                    *(v30 + 16) = *(v32 + 16);
                    *v30 = v33;
                  }

                  v30 += 24;
                }

                __dst = v30;
                v28 += 8;
                v31 -= 8;
              }

              while (v31);
            }

            LODWORD(v47[0]) = *(v26 + 80);
            v34 = a7[1];
            if (v34 >= a7[2])
            {
              v35 = sub_1D9D2A264(a7, &v36, v47);
            }

            else
            {
              sub_1D9D2A1F0(a7, &v36, v47);
              v35 = (v34 + 4);
            }

            a7[1] = v35;
            v47[0] = &v36;
            sub_1D9D28538(v47);
            ++v24;
          }

          while (v24 != v25);
        }

        sub_1D9D3F470(a8);
      }

      return sub_1D9D33838(&v39);
    }

    else
    {
      LODWORD(v39) = 13;
      v23 = sub_1D9D100A8(&v40);
      sub_1D9D12280(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1D9D12280(&v40, "(", 1);
      MEMORY[0x1DA741080](&v40, 535);
      sub_1D9D12280(&v40, ") [", 3);
      sub_1D9D12280(&v40, "pieces", 6);
      sub_1D9D12280(&v40, "] ", 2);
      sub_1D9D12280(&v40, "output container is null", 24);
      sub_1D9D0CE90(&v39, a8);
      v40 = *MEMORY[0x1E69E54E8];
      *(&v40 + *(v40 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v41 = MEMORY[0x1E69E5548] + 16;
      if (v45 < 0)
      {
        operator delete(__p);
      }

      v41 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v42);
      std::ostream::~ostream();
      return MEMORY[0x1DA7411E0](&v46);
    }
  }

  return result;
}

void sub_1D9D1E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D0CF20(va);
  _Unwind_Resume(a1);
}