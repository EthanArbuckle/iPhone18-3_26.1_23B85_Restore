uint64_t sub_10001D100(uint64_t a1)
{
  sub_10001A8D0((a1 + 8));
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  sub_10001A648((a1 + 40));
  if (*(a1 + 64))
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  sub_10001A5FC((a1 + 40));
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  sub_10001A884((a1 + 8));
  return a1;
}

uint64_t sub_10001D1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1000ACCC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 245);
  sub_10004AF14((a1 + 56));
  v5 = *(a2 + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v6 = *v6;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_10001D27C(a1, v6, v7);
  return a1;
}

void sub_10001D230(_Unwind_Exception *a1)
{
  sub_10004AF1C((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10001D27C(uint64_t *result, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sub_10001D6E8(a2, a3, v6, &v5, &v4);
    sub_10004B134(v3 + 7, &v4);
    result = sub_10004AF1C(&v4);
    if (!v3[7])
    {
      operator new();
    }
  }

  return result;
}

void sub_10001D3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004AF1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D3F4(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000ACCC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10004AF14((a1 + 56));
  v4 = *(a2 + 64);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  sub_10001D27C(a1, v5, v6);
  return a1;
}

void sub_10001D47C(_Unwind_Exception *a1)
{
  sub_10004AF1C((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10001D4CC(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  a1[1] = 0;
  *a1 = off_1000ACCC0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  *(a1 + 48) = 0;
  sub_10004AF14(a1 + 7);
  v10 = 0;
  sub_10001432C(a3, a4, &v10, &v9);
  sub_10004B134(a1 + 7, &v9);
  sub_10004AF1C(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sub_10004AF1C(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sub_10001D27C(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_10001D5D0(_Unwind_Exception *a1)
{
  sub_10004AF1C((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_10001D638(void *a1)
{
  *a1 = off_1000ACCC0;
  sub_10004AF1C(a1 + 7);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001D6B0(void *a1)
{
  sub_10001D638(a1);

  operator delete();
}

void *sub_10001D6E8@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X2>, void *a4@<X3>, void *a5@<X8>)
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
      return sub_10004AF14(a5);
    }

    v10 = "Trie data size exceeds the input blob size.";
    v11 = 43;
  }

  return sub_10004B080(a5, 13, v10, v11);
}

void *sub_10001D750@<X0>(size_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X3>, const void **a5@<X4>, uint64_t *a6@<X8>)
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

      return sub_10004AF14(a6);
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

  sub_10004AF1C(a6);
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)))
  {
    v13 = 0;
    while (1)
    {
      sub_10001DF58(a1, a2, v8, &v39);
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
  sub_10001E14C(a5, 3 * v8);
  if ((*(a1 + 48) & 1) == 0 && (*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    if ((*(**(a1 + 32) + 32))(*(a1 + 32)))
    {
      v14 = 3;
      std::string::append(a4, "▁", 3uLL);
      do
      {
        v39 = v13;
        sub_10001E1EC(a5, &v39);
        --v14;
      }

      while (v14);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v13;
      sub_10001E1EC(a5, &v39);
    }
  }

  v15 = (*(**(a1 + 32) + 24))(*(a1 + 32));
  do
  {
    sub_10001DF58(a1, a2, v8, &v39);
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
        v16 = (v16 - 1);
        if (!v16)
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
      v21 = *(v18 + v17);
      if (v20 && v21 == 32)
      {
        std::string::append(a4, "▁", 3uLL);
        v22 = 3;
        do
        {
          v44[0] = v19;
          sub_10001E1EC(a5, v44);
          --v22;
        }

        while (v22);
      }

      else
      {
        std::string::push_back(a4, v21);
        v44[0] = v19;
        sub_10001E1EC(a5, v44);
      }

      v18 = (v18 + 1);
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
        v34 = sub_1000177C0(&v40);
        sub_1000192F4(v34, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
        sub_1000192F4(&v40, "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&v40, ") [", 3);
        sub_1000192F4(&v40, "(length) >= (0)", 15);
        sub_1000192F4(&v40, "] ", 2);
        sub_1000145A8(&v39, v37);
        goto LABEL_72;
      }

      v32 = (v27 - v24) & 0x7FFFFFFF;
      v25 = *(*a5 + v32);
      std::string::resize(a4, v32, 0);
      sub_10001E2CC(a5, v32);
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
        sub_10001E1EC(a5, &v39);
        --v33;
      }

      while (v33);
    }

    else
    {
      std::string::append(a4, " ");
      v39 = v25;
      sub_10001E1EC(a5, &v39);
    }
  }

  v39 = v25;
  sub_10001E1EC(a5, &v39);
  v35 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = a4->__r_.__value_.__l.__size_;
  }

  if ((a5[1] - *a5) >> 3 == v35 + 1)
  {
    return sub_10004AF14(v37);
  }

  LODWORD(v39) = 13;
  v36 = sub_1000177C0(&v40);
  sub_1000192F4(v36, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/normalizer.cc", 69);
  sub_1000192F4(&v40, "(", 1);
  std::ostream::operator<<();
  sub_1000192F4(&v40, ") [", 3);
  sub_1000192F4(&v40, "(norm_to_orig->size()) == (normalized->size() + 1)", 50);
  sub_1000192F4(&v40, "] ", 2);
  sub_1000145A8(&v39, v37);
LABEL_72:
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  std::locale::~locale(v42);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10001DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

size_t sub_10001DF58@<X0>(size_t result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = a2;
    v7 = result;
    v8 = *(result + 40);
    if (v8 && (LOBYTE(v27) = 0, result = sub_10001E3C0(v8, a2, a3, &v27), v27 == 1))
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
            v18 = &v28[16 * v12 - 8];
            *v18 = v13[v14] & 0x7FFFFFFF;
            *(v18 + 1) = v11 + 1;
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
      v21 = v28;
      v22 = v28;
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
        v27 = 0;
        v25 = sub_100048824(v6, &v6[a3], &v27);
        v26 = v25 != 65533;
        if (v25 == 65533)
        {
          result = 3;
        }

        else
        {
          result = v27;
        }

        if (v27 == 3)
        {
          v26 = 1;
        }

        if (v26)
        {
          LODWORD(v19) = v27;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        if (!v26)
        {
          v6 = &unk_100090CE8;
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

  return result;
}

void *sub_10001E14C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100019CE4(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void sub_10001E1EC(const void **a1, void *a2)
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
      sub_100003F50();
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
      sub_100019CE4(a1, v12);
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

void sub_10001E2CC(void *a1, unint64_t a2)
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
    sub_10001EDE4(a1, a2 - v2);
  }
}

void sub_10001E2FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  (*(*a1 + 32))(&v2);
  nullsub_1(&v2);
  sub_10004AF1C(&v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_10001E384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_10004AF1C(&a9);
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

uint64_t sub_10001E3C0(uint64_t a1, _BYTE *a2, uint64_t a3, BOOL *a4)
{
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
          v11 = &v23[16 * v7];
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
            v16 = &v23[16 * v7];
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
    v22 = asc_1000A0733[*a2 >> 4];
    if (v22 >= a3)
    {
      return a3;
    }

    else
    {
      return v22;
    }
  }

  if (v7 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v18 = v7 & 0x7FFFFFFF;
  v19 = &v24;
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
  return result;
}

void sub_10001E590(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_10001E688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

std::string *sub_10001E6C4@<X0>(const std::string::value_type *a1@<X0>, std::string::size_type a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  memset(&v14, 0, sizeof(v14));
  std::string::resize(&v14, 4uLL, 0);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  LODWORD(v10->__r_.__value_.__l.__data_) = a2;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v14;
  }

  else
  {
    v11 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  std::string::append(a5, v11, size);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  std::string::append(a5, a1, a2);
  return std::string::append(a5, a3, a4);
}

void sub_10001E794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *sub_10001E7CC(void *result, void *a2)
{
  *result = 0;
  v3 = a2[2];
  if (v3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_10001EA98(&__p, v3);
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
            sub_100003F50();
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
            sub_10001A4C0(&__p, v11);
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

void sub_10001EA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
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

void *sub_10001EA98(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_10001A4C0(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void *sub_10001EB3C(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_10001EC1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_10001EF14(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10001EC3C@<X0>(std::string *result@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X2>, const std::string::value_type *a4@<X3>, std::string::size_type a5@<X4>, std::string *a6@<X8>)
{
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (a3)
  {
    v8 = a3;
    v10 = result;
    do
    {
      v14 = 0;
      v12 = sub_10001E3C0(v10, a2, v8, &v14);
      LODWORD(v13) = v12;
      if (v14)
      {
        result = std::string::append(a6, a4, a5);
        v13 = v13;
      }

      else
      {
        v13 = v12;
        result = std::string::append(a6, a2, v12);
      }

      a2 += v13;
      v8 -= v13;
    }

    while (v8);
  }

  return result;
}

void sub_10001ECFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10001ED18@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003DBC();
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

void sub_10001EDE4(uint64_t a1, unint64_t a2)
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
      sub_100003F50();
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
      sub_100019CE4(a1, v10);
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

uint64_t sub_10001EF38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = &unk_1000B6718;
  }

  v4 = v3[68];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_10001F170();
    }

    if (v4 == 4)
    {
      sub_10001F1E0();
    }
  }

  else
  {
    if (v4 == 1)
    {
      sub_10001F090();
    }

    if (v4 == 2)
    {
      sub_10001F100();
    }
  }

  result = sub_100048804();
  if (result <= 2)
  {
    LOBYTE(v13) = 0;
    v6 = sub_1000192F4(&std::cerr, "model_factory.cc", 16);
    sub_1000192F4(v6, "(", 1);
    v7 = std::ostream::operator<<();
    v8 = sub_1000192F4(v7, ") ", 2);
    v9 = sub_1000192F4(v8, "LOG(", 4);
    v10 = sub_1000192F4(v9, "ERROR", 5);
    v11 = sub_1000192F4(v10, ") ", 2);
    sub_1000192F4(v11, "Unknown model_type: ", 20);
    v12 = v3[68];
    std::ostream::operator<<();
    result = sub_1000179E8(&v13);
  }

  *a2 = 0;
  return result;
}

void sub_10001F07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000179E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14[1] = a2;
  v14[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    sub_10001F454();
  }

  if (!v6)
  {
    sub_10001F3D4();
  }

  result = sub_100048804();
  if (result <= 2)
  {
    LOBYTE(v14[0]) = 0;
    v8 = sub_1000192F4(&std::cerr, "model_factory.cc", 16);
    sub_1000192F4(v8, "(", 1);
    v9 = std::ostream::operator<<();
    v10 = sub_1000192F4(v9, ") ", 2);
    v11 = sub_1000192F4(v10, "LOG(", 4);
    v12 = sub_1000192F4(v11, "ERROR", 5);
    v13 = sub_1000192F4(v12, ") ", 2);
    sub_1000192F4(v13, "Unknown model_type: ", 20);
    (*(*a1 + 80))(a1);
    std::ostream::operator<<();
    result = sub_1000179E8(v14);
  }

  *a4 = 0;
  return result;
}

void sub_10001F3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000179E8(va);
  _Unwind_Resume(a1);
}

void *sub_10001F4D4(void *a1)
{
  *a1 = off_1000ACD18;
  v2 = sub_10003B654();
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = v2;
  return a1;
}

void *sub_10001F520(void *result, uint64_t a2)
{
  *result = off_1000ACD18;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_10001F544(void *a1)
{
  *a1 = off_1000ACD18;
  v2 = a1[3];
  if (v2)
  {
    sub_100030D60(v2);
  }

  return a1;
}

void *sub_10001F590(void *a1)
{
  *a1 = off_1000ACD18;
  v2 = a1[3];
  if (v2)
  {
    sub_100030D60(v2);
  }

  return a1;
}

void sub_10001F5DC(void *a1)
{
  *a1 = off_1000ACD18;
  v1 = a1[3];
  if (v1)
  {
    sub_100030D60(v1);
  }

  operator delete();
}

uint64_t sub_10001F6C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100030EAC(a2, *(*(a1 + 8) + 56));
  v5 = *(a1 + 8);
  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      result = sub_10002FEAC(v5 + 48, v6);
      *(*a2 + 8 * v6++) = result;
      v5 = *(a1 + 8);
    }

    while (v6 < *(v5 + 56));
  }

  return result;
}

void sub_10001F738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_10001F77C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0.0;
  }

  LODWORD(result) = *(v1 + 80);
  return result;
}

uint64_t sub_10001F794(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    sub_100030F38();
  }

  return result;
}

void sub_10001F7FC(uint64_t a1)
{
  v1 = sub_10001F794(a1);

  sub_10001F824(v1);
}

void sub_10001F824(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    if (v3 < 0)
    {
      if (!*(v2 + 8))
      {
        return;
      }

      v3 = *(v2 + 8);
    }

    else if (!*(v2 + 23))
    {
      return;
    }

    sub_10002FF8C(&__p, v3 + 1);
    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    if (v5 < 0)
    {
      v6 = *v4;
      v5 = *(v4 + 8);
    }

    else
    {
      v6 = (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = __p;
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = asc_1000A0733[*v6 >> 4];
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v12 = v8 + v11;
        if (v8 + v11 > v8)
        {
          v13 = 0;
          v14 = v12 - v8;
          v15 = vdupq_n_s64(v14 - 1);
          v16 = &v7[4 * v8 + 8];
          do
          {
            v17 = vdupq_n_s64(v13);
            v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_100090CA0)));
            if (vuzp1_s16(v18, 2).u8[0])
            {
              *(v16 - 2) = v9;
            }

            if (vuzp1_s16(v18, 2).i8[2])
            {
              *(v16 - 1) = v9;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_100090C90)))).i32[1])
            {
              *v16 = v9;
              *(v16 + 1) = v9;
            }

            v13 += 4;
            v16 += 16;
          }

          while (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v13);
        }

        ++v9;
        v6 += v11;
        v8 += v11;
        v5 -= v11;
      }

      while (v5);
    }

    else
    {
      v9 = 0;
      v12 = 0;
    }

    *&v7[4 * v12] = v9;
    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = (v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 56);
    if (v21)
    {
      v22 = vdup_n_s32(((v30 - v7) >> 2) - 1);
      v23 = 8 * v21;
      do
      {
        v24 = *v20++;
        v25 = *(v24 + 40);
        v26 = vmin_s32(v22, vmax_s32(*(v24 + 68), 0));
        v27 = *&v7[4 * v26.i32[0]];
        *(v24 + 40) = v25 | 8;
        *(v24 + 68) = v27;
        v28 = *&v7[4 * v26.i32[1]];
        *(v24 + 40) = v25 | 0x18;
        *(v24 + 72) = v28;
        v23 -= 8;
      }

      while (v23);
    }

    v30 = v7;
    operator delete(v7);
  }
}

void *sub_10001FA2C(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1000ACD38;
  return result;
}

void *sub_10001FA50(void *a1)
{
  *a1 = off_1000ACD38;
  v2 = a1[2];
  if (v2)
  {
    sub_100030D60(v2);
  }

  return a1;
}

void *sub_10001FA9C(void *a1)
{
  *a1 = off_1000ACD38;
  v2 = a1[2];
  if (v2)
  {
    sub_100030D60(v2);
  }

  return a1;
}

void sub_10001FAE8(void *a1)
{
  *a1 = off_1000ACD38;
  v1 = a1[2];
  if (v1)
  {
    sub_100030D60(v1);
  }

  operator delete();
}

uint64_t sub_10001FB54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001FB6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = sub_1000300A0(*(a1 + 8) + 16, a2);
  *a3 = off_1000ACD18;
  a3[1] = result;
  a3[2] = 0;
  a3[3] = 0;
  return result;
}

void sub_10001FBB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100031074(a2, *(v3 + 24));
    v5 = *(a1 + 8);
    if (*(v5 + 24) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v10 = sub_1000300A0(v5 + 16, v7);
        v8 = (*a2 + v6);
        v9 = v8[3];
        v8[1] = v10;
        v8[2] = 0;
        v8[3] = 0;
        if (v9)
        {
          sub_100030D60(v9);
        }

        ++v7;
        v5 = *(a1 + 8);
        v6 += 32;
      }

      while (v7 < *(v5 + 24));
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_10001FCC0(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    sub_1000312B0();
  }

  return result;
}

void sub_10001FD24(uint64_t a1)
{
  if (sub_10001FCC0(a1))
  {
    v2 = sub_10001FCC0(a1);
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = (v3 + 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = 8 * v5;
      do
      {
        v7 = *v4++;
        sub_10001F824(v7);
        v6 -= 8;
      }

      while (v6);
    }
  }
}

_BYTE *sub_10001FD80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return sub_10006CE54(v2, a2);
  }

  else
  {
    return sub_100009A74(a2, "");
  }
}

double sub_10001FD9C(uint64_t a1)
{
  *a1 = &off_1000ACD58;
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

uint64_t sub_10001FDDC(uint64_t a1)
{
  *a1 = &off_1000ACD58;
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

void sub_10001FF40(uint64_t a1)
{
  sub_10001FDDC(a1);

  operator delete();
}

uint64_t sub_10001FF78()
{
  sub_100020118(v1);
  if ((*(&v1[4] + *(v1[0] - 3)) & 5) == 0)
  {
    std::istream::read();
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return 0;
}

void sub_1000200E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100020118(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000202A4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000202DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_10001FF78())
  {
    sub_100020414();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_1000203F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002088C(&a9);
  sub_10002088C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100020480@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1000474BC();
  }

  return sub_10004B080(a2, 5, "model file path should not be empty.", 36);
}

void sub_100020814(_Unwind_Exception *exception_object)
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

uint64_t *sub_10002088C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10004488C();
    operator delete();
  }

  return a1;
}

uint64_t *sub_1000208D4(uint64_t a1)
{
  (*(*a1 + 16))(&v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    v11 = 1;
    v1 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v1, "(", 1);
    v2 = std::ostream::operator<<();
    v3 = sub_1000192F4(v2, ") [", 3);
    v4 = sub_1000192F4(v3, "_status.ok()", 12);
    v5 = sub_1000192F4(v4, "] ", 2);
    sub_10004B2FC(&v12, __p);
    if ((v10 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = __p[1];
    }

    sub_1000192F4(v5, v6, v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000179E8(&v11);
  }

  return sub_10004AF1C(&v12);
}

void sub_1000209E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000179E8((v15 - 25));
  sub_10004AF1C((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_100020AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10002088C(&a9);
  sub_10002088C(&a10);
  _Unwind_Resume(a1);
}

void sub_100020D50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &unk_1000B6860;
  }

  if (v5[80] == 1)
  {
    if (sub_100048804() <= 0)
    {
      LOBYTE(v23) = 0;
      v6 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
      sub_1000192F4(v6, "(", 1);
      v7 = std::ostream::operator<<();
      v8 = sub_1000192F4(v7, ") ", 2);
      v9 = sub_1000192F4(v8, "LOG(", 4);
      v10 = sub_1000192F4(v9, "INFO", 4);
      v11 = sub_1000192F4(v10, ") ", 2);
      sub_1000192F4(v11, "Enable Apple addition for backward compatibility", 48);
      sub_1000179E8(&v23);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v12 = *(v4 + 80);
    if (!v12)
    {
      v13 = *(v4 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_100045A50(v13);
      *(v4 + 80) = v12;
      v4 = *a2;
    }

    *(v12 + 40) |= 0x4000u;
    *(v12 + 245) = 1;
    *(v4 + 48) |= 2u;
    v14 = *(v4 + 88);
    if (!v14)
    {
      v15 = *(v4 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_100045B20(v15);
      *(v4 + 88) = v14;
      v4 = *a2;
    }

    *(v14 + 48) |= 0x10u;
    *(v14 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v16 = v4 + 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 32);
  *(a1 + 32) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v16 = *(a1 + 32);
  }

  sub_10001EF38(v16 - 16, &v23);
  v18 = v23;
  v23 = 0;
  v19 = *(a1 + 8);
  *(a1 + 8) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v23;
    v23 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (*(v16 + 72))
  {
    v21 = *(v16 + 72);
  }

  if (*(v16 + 64))
  {
    v22 = *(v16 + 64);
  }

  sub_100021760();
}

void sub_100021850(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  v12 = strlen(a3);
  sub_1000313EC(a3, v12, a4, a5, a6, &__p);
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

void sub_100021928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100021964(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 88))(a1);
    if (!*a5)
    {
      sub_10004AF1C(a5);
      if ((atomic_load_explicit(&qword_1000B6470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B6470))
      {
        v39[3] = unk_1000AD020;
        *__p = unk_1000AD030;
        v41 = off_1000AD040;
        v42 = 3;
        v38 = off_1000ACFE0;
        v39[0] = unk_1000ACFF0;
        v39[1] = xmmword_1000AD000;
        v39[2] = *&off_1000AD010;
        sub_100032E18(&qword_1000B6458, &v38, 5);
        __cxa_atexit(sub_10002C74C, &qword_1000B6458, &_mh_execute_header);
        __cxa_guard_release(&qword_1000B6470);
      }

      sub_100030444(&v36, a2, a3, ":", 1, 0);
      v10 = v36;
      v11 = v37;
      if (v36 == v37)
      {
LABEL_24:
        if (v10)
        {
          v37 = v10;
          operator delete(v10);
        }

        sub_10004AF14(a5);
      }

      else
      {
        while (1)
        {
          v12 = sub_100031990(&qword_1000B6458, v10);
          v13 = v12;
          if (v12 == &unk_1000B6460)
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
              sub_100003F50();
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
              sub_10000418C(a4, v23);
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
            v26 = sub_1000149B8(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 504))(a1, v26, v27);
            if ((*(*a1 + 528))(a1, v28))
            {
              LODWORD(v38) = 13;
              sub_1000177C0(&v38 + 1);
              sub_1000192F4(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_1000192F4(&v38 + 1, "(", 1);
              std::ostream::operator<<();
              sub_1000192F4(&v38 + 1, ") [", 3);
              sub_1000192F4(&v38 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              sub_1000192F4(&v38 + 1, "] ", 2);
              v32 = sub_1000149B8(a1[1]);
              sub_1000192F4(&v38 + 1, v32, v33);
              sub_1000145A8(&v38, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sub_100014A3C(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 504))(a1, v29, v30);
            if ((*(*a1 + 528))(a1, v31))
            {
              LODWORD(v38) = 13;
              sub_1000177C0(&v38 + 1);
              sub_1000192F4(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_1000192F4(&v38 + 1, "(", 1);
              std::ostream::operator<<();
              sub_1000192F4(&v38 + 1, ") [", 3);
              sub_1000192F4(&v38 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              sub_1000192F4(&v38 + 1, "] ", 2);
              v34 = sub_100014A3C(a1[1]);
              sub_1000192F4(&v38 + 1, v34, v35);
              sub_1000145A8(&v38, a5);
LABEL_35:
              if (SBYTE7(v41) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v36;
            goto LABEL_24;
          }
        }

        LODWORD(v38) = 13;
        sub_1000177C0(&v38 + 1);
        sub_1000192F4(&v38 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&v38 + 1, "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&v38 + 1, ") [", 3);
        sub_1000192F4(&v38 + 1, "it != extra_option_map.end()", 28);
        sub_1000192F4(&v38 + 1, "] ", 2);
        sub_1000192F4(&v38 + 1, "option ", 8);
        sub_1000192F4(&v38 + 1, *v10, v10[1]);
        sub_1000192F4(&v38 + 1, " is not available.", 19);
        sub_1000145A8(&v38, a5);
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        std::locale::~locale(v39 + 1);
        std::ostream::~ostream();
        std::ios::~ios();
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }
      }
    }
  }

  else
  {

    sub_10004AF14(a5);
  }
}

void *sub_100022280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 16))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sub_10004AF1C(a2);
        result = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (!*a2)
        {
          v6 = sub_10004AF1C(a2);

          return sub_10004AF14(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = sub_1000177C0(&v10);
    sub_1000192F4(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "normalizer_", 11);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000192F4(&v10, "Normalizer is not initialized.", 30);
    sub_1000145A8(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = sub_1000177C0(&v10);
    sub_1000192F4(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "model_", 6);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000192F4(&v10, "Model is not initialized.", 25);
    sub_1000145A8(&v9, a2);
  }

  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000225C8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sub_10004AF1C(a3);
  v6 = a1[4];
  {
    LODWORD(v23) = 13;
    v20 = sub_1000177C0(&v24);
    sub_1000192F4(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v24, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v24, ") [", 3);
    sub_1000192F4(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    sub_1000192F4(&v24, "] ", 2);
    sub_1000192F4(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sub_1000145A8(&v23, a3);
LABEL_26:
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    std::locale::~locale(v26);
    std::ostream::~ostream();
    std::ios::~ios();
    return;
  }

  v9 = v8;
  v10 = &unk_1000B6718;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = sub_1000177C0(&v24);
    sub_1000192F4(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v24, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v24, ") [", 3);
    sub_1000192F4(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    sub_1000192F4(&v24, "] ", 2);
    sub_1000192F4(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sub_1000145A8(&v23, a3);
    goto LABEL_26;
  }

  sub_1000316D0(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_100030364((v9 + 7), v11);
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
        if (&v24 == sub_100031990(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_1000A0733[*v18 >> 4]))
        {
          if (!sub_10003DC78(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sub_10003DC78(1))
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

  sub_10004AF14(a3);
  sub_100019B78(&v23, v24);
}

void *sub_100022A74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a2)
  {
    sub_10004AF1C(a2);
    v5 = a1[4];
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
            if (!sub_10003DC78(1))
            {
              sub_100033524();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sub_10004AF14(a2);
    }

    else
    {
      v14 = 13;
      v13 = sub_1000177C0(&v15);
      sub_1000192F4(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v15, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v15, ") [", 3);
      sub_1000192F4(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      sub_1000192F4(&v15, "] ", 2);
      sub_1000192F4(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sub_1000145A8(&v14, a2);
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      std::locale::~locale(v17);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_100023354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  sub_10000CCE0(&__p);
  __p = (v10 - 152);
  sub_10000CCE0(&__p);
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

BOOL sub_100023448(const char *a1)
{
  sub_100031A20(v8);
  v2 = strlen(a1);
  v3 = sub_1000192F4(&v9, a1, v2);
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    v4 = 0;
  }

  else
  {
    v5 = std::istream::operator>>();
    v4 = (*(v5 + *(*v5 - 24) + 32) & 5) == 0;
  }

  v9 = v6;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_10002363C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100023660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100030704(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

uint64_t sub_100023700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_10004AF1C(a5);
    if (a4)
    {
      sub_10000CD34(a4);
      sub_10003B3AC(&v16, 0);
      (*(*a1 + 232))(a1, a2, a3, &v16);
      if (!*a5)
      {
        sub_10004AF1C(a5);
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
              v12 = sub_100019994(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_100031E14(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
              v12 += 24;
            }

            *(a4 + 8) = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_10004AF14(a5);
      }

      return sub_10003B618(&v16);
    }

    else
    {
      v16 = 13;
      v15 = sub_1000177C0(&v17);
      sub_1000192F4(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v17, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v17, ") [", 3);
      sub_1000192F4(&v17, "pieces", 6);
      sub_1000192F4(&v17, "] ", 2);
      sub_1000192F4(&v17, "output container is null", 24);
      sub_1000145A8(&v16, a5);
      if (v23 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v19);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_100023A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_10004AF1C(a5);
    if (a4)
    {
      a4[1] = *a4;
      sub_10003B3AC(&v24, 0);
      (*(*a1 + 232))(a1, a2, a3, &v24);
      if (!*a5)
      {
        sub_10004AF1C(a5);
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
                sub_100003F50();
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
                sub_10000418C(a4, v21);
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

        sub_10004AF14(a5);
      }

      return sub_10003B618(&v24);
    }

    else
    {
      v24 = 13;
      v23 = sub_1000177C0(&v25);
      sub_1000192F4(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v25, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v25, ") [", 3);
      sub_1000192F4(&v25, "ids", 3);
      sub_1000192F4(&v25, "] ", 2);
      sub_1000192F4(&v25, "output container is null", 24);
      sub_1000145A8(&v24, a5);
      if (v31 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v27);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_100023DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

void sub_100023DD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_100023660(a2, __p);
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100023E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
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

      sub_10003B3AC(&v10, 0);
      (*(*a1 + 272))(a1, a2, &v10);
      if (!*a4)
      {
        sub_10004AF1C(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_10004AF14(a4);
      }

      return sub_10003B618(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_1000177C0(&v11);
      sub_1000192F4(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v11, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v11, ") [", 3);
      sub_1000192F4(&v11, "detokenized", 11);
      sub_1000192F4(&v11, "] ", 2);
      sub_1000192F4(&v11, "output container is null", 24);
      sub_1000145A8(&v10, a4);
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      std::locale::~locale(v13);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
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

      sub_10003B3AC(&v10, 0);
      (*(*a1 + 280))(a1, a2, &v10);
      if (!*a4)
      {
        sub_10004AF1C(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_10004AF14(a4);
      }

      return sub_10003B618(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_1000177C0(&v11);
      sub_1000192F4(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v11, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v11, ") [", 3);
      sub_1000192F4(&v11, "detokenized", 11);
      sub_1000192F4(&v11, "] ", 2);
      sub_1000192F4(&v11, "output container is null", 24);
      sub_1000145A8(&v10, a4);
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      std::locale::~locale(v13);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002443C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_10004AF1C(a6);
    if (a5)
    {
      v13 = *a5;
      v14 = a5[1];
      while (v14 != v13)
      {
        v14 -= 3;
        v31 = v14;
        sub_10000CCE0(&v31);
      }

      a5[1] = v13;
      sub_10003C150(&v31, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v31);
      if (!*a6)
      {
        sub_10004AF1C(a6);
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
                  v21 = sub_100019994(&v28, v23);
                }

                else
                {
                  if (*(v23 + 23) < 0)
                  {
                    sub_100019AD4(v21, *v23, *(v23 + 8));
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
              v26 = sub_100031ED4(a5, &v28);
            }

            else
            {
              sub_100031E74(a5, &v28);
              v26 = (v25 + 3);
            }

            a5[1] = v26;
            v38 = &v28;
            sub_10000CCE0(&v38);
            ++v15;
          }

          while (v15 != v16);
        }

        sub_10004AF14(a6);
      }

      return sub_10003C2EC(&v31);
    }

    else
    {
      LODWORD(v31) = 13;
      v27 = sub_1000177C0(&v32);
      sub_1000192F4(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v32, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v32, ") [", 3);
      sub_1000192F4(&v32, "pieces", 6);
      sub_1000192F4(&v32, "] ", 2);
      sub_1000192F4(&v32, "output container is null", 24);
      sub_1000145A8(&v31, a6);
      if (v37 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v34);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_1000247FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002484C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_10004AF1C(a6);
    if (a5)
    {
      sub_100024CA0(a5);
      sub_10003C150(&v38, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v38);
      if (!*a6)
      {
        sub_10004AF1C(a6);
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
                    sub_100003F50();
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
                    sub_10000418C(&__src, v26);
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
              v32 = sub_100032144(a5, &__src);
            }

            else
            {
              sub_1000320F0(a5, &__src);
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

        sub_10004AF14(a6);
      }

      return sub_10003C2EC(&v38);
    }

    else
    {
      v38 = 13;
      v33 = sub_1000177C0(&v39);
      sub_1000192F4(v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v39, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v39, ") [", 3);
      sub_1000192F4(&v39, "ids", 3);
      sub_1000192F4(&v39, "] ", 2);
      sub_1000192F4(&v39, "output container is null", 24);
      sub_1000145A8(&v38, a6);
      if (v44 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v41);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_100024CA0(uint64_t *a1)
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

uint64_t sub_100024CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_10004AF1C(a6);
    if (a5)
    {
      sub_10000CD34(a5);
      sub_10003B3AC(&v20, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v20, a7);
      if (!*a6)
      {
        sub_10004AF1C(a6);
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
              v16 = sub_100019994(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_100031E14(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
              v16 += 24;
            }

            *(a5 + 8) = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_10004AF14(a6);
      }

      return sub_10003B618(&v20);
    }

    else
    {
      v20 = 13;
      v19 = sub_1000177C0(&v21);
      sub_1000192F4(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v21, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v21, ") [", 3);
      sub_1000192F4(&v21, "pieces", 6);
      sub_1000192F4(&v21, "] ", 2);
      sub_1000192F4(&v21, "output container is null", 24);
      sub_1000145A8(&v20, a6);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v23);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002503C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_10004AF1C(a6);
    if (a5)
    {
      a5[1] = *a5;
      sub_10003B3AC(&v28, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v28, a7);
      if (!*a6)
      {
        sub_10004AF1C(a6);
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
                sub_100003F50();
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
                sub_10000418C(a5, v25);
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

        sub_10004AF14(a6);
      }

      return sub_10003B618(&v28);
    }

    else
    {
      v28 = 13;
      v27 = sub_1000177C0(&v29);
      sub_1000192F4(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v29, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v29, ") [", 3);
      sub_1000192F4(&v29, "ids", 3);
      sub_1000192F4(&v29, "] ", 2);
      sub_1000192F4(&v29, "output container is null", 24);
      sub_1000145A8(&v28, a6);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v31);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_1000253D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100025408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_10004AF1C(a8);
    if (a7)
    {
      v19 = *a7;
      v20 = a7[1];
      while (v20 != v19)
      {
        v20 -= 4;
        v39 = v20;
        sub_10000CCE0(&v39);
      }

      a7[1] = v19;
      sub_10003C150(&v39, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v39, a9);
      if (!*a8)
      {
        sub_10004AF1C(a8);
        v21 = *a7;
        v22 = a7[1];
        while (v22 != v21)
        {
          v22 -= 4;
          v36 = v22;
          sub_10000CCE0(&v36);
        }

        a7[1] = v21;
        sub_10002589C(a7, SLODWORD(v42.__locale_));
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
            sub_100025938(&v36, *(v26 + 56));
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
                  v30 = sub_100019994(&v36, v32);
                }

                else
                {
                  if (*(v32 + 23) < 0)
                  {
                    sub_100019AD4(v30, *v32, *(v32 + 8));
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

            LODWORD(v46[0]) = *(v26 + 80);
            v34 = a7[1];
            if (v34 >= a7[2])
            {
              v35 = sub_100032460(a7, &v36, v46);
            }

            else
            {
              sub_1000323EC(a7, &v36, v46);
              v35 = (v34 + 4);
            }

            a7[1] = v35;
            v46[0] = &v36;
            sub_10000CCE0(v46);
            ++v24;
          }

          while (v24 != v25);
        }

        sub_10004AF14(a8);
      }

      return sub_10003C2EC(&v39);
    }

    else
    {
      LODWORD(v39) = 13;
      v23 = sub_1000177C0(&v40);
      sub_1000192F4(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v40, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v40, ") [", 3);
      sub_1000192F4(&v40, "pieces", 6);
      sub_1000192F4(&v40, "] ", 2);
      sub_1000192F4(&v40, "output container is null", 24);
      sub_1000145A8(&v39, a8);
      if (v45 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v42);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void sub_100025848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

void *sub_10002589C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100018E8C(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void *sub_100025938(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10000CB48(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

uint64_t sub_1000259F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_10004AF1C(a8);
    if (a7)
    {
      sub_10001919C(a7);
      sub_10003C150(&v46, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v46, a9);
      if (!*a8)
      {
        v40 = a8;
        sub_10004AF1C(a8);
        sub_10001919C(a7);
        sub_100025EB8(a7, SLODWORD(v49.__locale_));
        if (v50)
        {
          v19 = (v50 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (LODWORD(v49.__locale_))
        {
          v41 = &v19[SLODWORD(v49.__locale_)];
          do
          {
            v20 = *v19;
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_100025F54(&__src, *(v20 + 56));
            v21 = *(v20 + 64);
            if (v21)
            {
              v22 = v21 + 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v20 + 56);
            if (v23)
            {
              v24 = v44;
              v25 = 8 * v23;
              do
              {
                v26 = *(*v22 + 64);
                if (v24 >= v45)
                {
                  v27 = __src;
                  v28 = v24 - __src;
                  v29 = (v24 - __src) >> 2;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 62)
                  {
                    sub_100003F50();
                  }

                  v31 = v45 - __src;
                  if ((v45 - __src) >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    sub_10000418C(&__src, v32);
                  }

                  v33 = v29;
                  v34 = (4 * v29);
                  v35 = &v34[-v33];
                  *v34 = v26;
                  v24 = (v34 + 1);
                  memcpy(v35, v27, v28);
                  v36 = __src;
                  __src = v35;
                  v44 = v24;
                  v45 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v24 = v26;
                  v24 += 4;
                }

                v44 = v24;
                v22 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            v42 = *(v20 + 80);
            v37 = a7[1];
            if (v37 >= a7[2])
            {
              v38 = sub_1000326D0(a7, &__src, &v42);
            }

            else
            {
              sub_100032668(a7, &__src, &v42);
              v38 = (v37 + 32);
            }

            a7[1] = v38;
            if (__src)
            {
              v44 = __src;
              operator delete(__src);
            }

            ++v19;
          }

          while (v19 != v41);
        }

        sub_10004AF14(v40);
      }

      return sub_10003C2EC(&v46);
    }

    else
    {
      v46 = 13;
      v39 = sub_1000177C0(&v47);
      sub_1000192F4(v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v47, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v47, ") [", 3);
      sub_1000192F4(&v47, "ids", 3);
      sub_1000192F4(&v47, "] ", 2);
      sub_1000192F4(&v47, "output container is null", 24);
      sub_1000145A8(&v46, a8);
      if (v52 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v49);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

void *sub_100025EB8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100032588(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void *sub_100025F54(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_10000418C(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void *sub_100025FF4@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 8);
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "!w.empty()", 10);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000192F4(&__p[1], "Empty piece is not allowed.", 27);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            sub_1000307B8(__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_10004C9A4((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = sub_10003CA94(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        sub_10007BCC0(a7 + 48, v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "(end) < (norm_to_orig.size())", 29);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "(orig_begin) <= (input.size())", 30);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "(orig_end) <= (input.size())", 28);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = sub_1000177C0(&__p[1]);
        sub_1000192F4(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&__p[1], "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&__p[1], ") [", 3);
        sub_1000192F4(&__p[1], "(orig_begin) <= (orig_end)", 26);
        sub_1000192F4(&__p[1], "] ", 2);
        sub_1000145A8(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                sub_10007BCC0(a7 + 48, v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = sub_10003CA94(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sub_1000155CC(v27, &__dst);
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

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            sub_1000307B8(__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_10004C9A4((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              sub_1000307B8(__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              sub_10004C9A4((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = sub_100030DCC(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_10004C9A4(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            sub_100003DBC();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_10004C9A4((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          sub_10007BCC0(a7 + 48, v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = sub_10003CA94(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      sub_1000307B8(__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C9A4((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      sub_1000307B8(__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C9A4((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 24;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sub_100026EA8(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sub_10004AF1C(a8);
      *(a7 + 40) |= 1u;
      sub_1000307B8(__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C9A4((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_10004AF14(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = sub_1000177C0(&__p[1]);
  sub_1000192F4(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  sub_1000192F4(&__p[1], "(", 1);
  std::ostream::operator<<();
  sub_1000192F4(&__p[1], ") [", 3);
  sub_1000192F4(&__p[1], "(consumed) == (normalized.size())", 33);
  sub_1000192F4(&__p[1], "] ", 2);
  sub_1000192F4(&__p[1], "all normalized characters are not consumed.", 43);
  sub_1000145A8(__p, a8);
LABEL_130:
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  std::locale::~locale(v98);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100026DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100026EA8@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sub_10004AF14(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sub_10003B10C(v25, v26);
            }

            else
            {
              sub_10006937C(v25, v26);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sub_10004B080(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        sub_10007BCC0(a3 + 48, v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = sub_10003CA94(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      sub_10004FCEC(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = sub_10004FD04(__p, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v56, &v47->__r_.__value_.__l.__data_);
      sub_10004FE48(__p);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sub_1000149B8(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 504))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sub_1000149B8(a1[1]);
    sub_1000149B8(a1[1]);
    *(v48 + 40) |= 1u;
    sub_1000307B8(__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9A4((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sub_10004AF14(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sub_100014A3C(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 504))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sub_100014A3C(a1[1]);
        sub_100014A3C(a1[1]);
        *(v33 + 40) |= 1u;
        sub_1000307B8(__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        sub_10004C9A4((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = sub_10003CA94(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    sub_10007BCC0(a3 + 48, v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = sub_100030DCC(a3 + 48, v14);
        if ((*(*a1 + 528))(a1, *(v15 + 64)))
        {
          v16 = sub_100014934(a1[1]);
          sub_100014934(a1[1]);
          *(v15 + 40) |= 1u;
          sub_1000307B8(__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_10004C9A4((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sub_10004B080(a4, 13, "unknown extra_option type.", 26);
}

void sub_1000273F0(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sub_10004AF1C(a5);
    if (a4)
    {
      sub_10003B694(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sub_10004AF1C(a5);
        (*(*a1[1] + 40))(__p);
        if (SHIBYTE(v19) >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sub_100025FF4(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          v11 = sub_10004AF1C(a5);
          sub_10004AF14(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = sub_1000177C0(&v18);
      sub_1000192F4(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v18, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v18, ") [", 3);
      sub_1000192F4(&v18, "spt", 3);
      sub_1000192F4(&v18, "] ", 2);
      sub_1000192F4(&v18, "output proto is null", 20);
      sub_1000145A8(&v17, a5);
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      std::locale::~locale(v20);
      std::ostream::~ostream();
      std::ios::~ios();
    }
  }
}

void sub_100027748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000277A4(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sub_10004AF1C(a5);
  if (a4)
  {
    sub_10003C370(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sub_10004AF1C(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                sub_10007BCC0(a4 + 16, v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = sub_10003CB64(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sub_100025FF4(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sub_10004AF1C(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sub_10004AF14(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        sub_1000177C0(&v30);
        sub_1000192F4(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&v30, "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&v30, ") [", 3);
        sub_1000192F4(&v30, "!nbests.empty()", 15);
        sub_1000192F4(&v30, "] ", 2);
        sub_1000192F4(&v30, "NBestEncode returns empty result.", 33);
        sub_1000145A8(&v29, a5);
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(v32);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_29:
        v29 = &v21;
        sub_100019148(&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        sub_1000177C0(&v30);
        sub_1000192F4(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&v30, "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&v30, ") [", 3);
        sub_1000192F4(&v30, "model_->IsNBestEncodeAvailable()", 32);
        sub_1000192F4(&v30, "] ", 2);
        sub_1000192F4(&v30, "NBestEncode is not available for the current model.", 51);
        sub_1000145A8(&v29, a5);
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(v32);
        std::ostream::~ostream();
        std::ios::~ios();
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = sub_1000177C0(&v30);
    sub_1000192F4(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v30, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v30, ") [", 3);
    sub_1000192F4(&v30, "nbest_spt", 9);
    sub_1000192F4(&v30, "] ", 2);
    sub_1000192F4(&v30, "output proto is null", 20);
    sub_1000145A8(&v29, a5);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(v32);
    std::ostream::~ostream();
    std::ios::~ios();
  }
}

void sub_100027F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_100019148(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100027FC8(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sub_10004AF1C(a6);
  if (a5)
  {
    sub_10003B694(a5);
    if (a4 < 513)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      __p = 0;
      v34 = 0;
      v35 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v36, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v36);
        }

        return;
      }

      sub_10004AF1C(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if (a4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v31);
          if (v31 == v32)
          {
            LODWORD(v39) = 13;
            sub_1000177C0(&v40);
            sub_1000192F4(&v40, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_1000192F4(&v40, "(", 1);
            std::ostream::operator<<();
            sub_1000192F4(&v40, ") [", 3);
            sub_1000192F4(&v40, "!nbests.empty()", 15);
            sub_1000192F4(&v40, "] ", 2);
            sub_1000192F4(&v40, "NBestEncode returns empty result.", 33);
            sub_1000145A8(&v39, a6);
            sub_100014638(&v39);
          }

          else
          {
            LODWORD(v29) = 0;
            sub_1000116E4(&v39, (v32 - v31) >> 5);
            if (v32 != v31)
            {
              v19 = v39;
              if (((v32 - v31) >> 5) <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = (v32 - v31) >> 5;
              }

              v21 = (v31 + 24);
              do
              {
                v22 = *v21;
                v21 += 8;
                *v19++ = expf(v22 * a7);
                --v20;
              }

              while (v20);
            }

            sub_100048D3C();
            v24 = v23;
            sub_1000327EC(&v29, v39, v40);
            v25 = HIBYTE(v38);
            v26 = v37;
            v27 = sub_100032B54(&v29, v24, &v29);
            if ((v25 & 0x80u) == 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = v26;
            }

            sub_100025FF4(a1, a2, a3, v28, &__p, (v31 + 32 * v27), a5, a6);
            if (!*a6)
            {
              sub_10004AF1C(a6);
              if (v29)
              {
                v30 = v29;
                operator delete(v29);
              }

              if (v39)
              {
                v40 = v39;
                operator delete(v39);
              }

              v39 = &v31;
              sub_100019148(&v39);
LABEL_55:
              sub_10004AF14(a6);
              goto LABEL_5;
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }

            if (v39)
            {
              v40 = v39;
              operator delete(v39);
            }
          }

          v39 = &v31;
          sub_100019148(&v39);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v39);
        if (v38 >= 0)
        {
          v18 = HIBYTE(v38);
        }

        else
        {
          v18 = v37;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v39) = 13;
          sub_1000177C0(&v40);
          sub_1000192F4(&v40, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          sub_1000192F4(&v40, "(", 1);
          std::ostream::operator<<();
          sub_1000192F4(&v40, ") [", 3);
          sub_1000192F4(&v40, "model_->IsSampleEncodeAvailable()", 33);
          sub_1000192F4(&v40, "] ", 2);
          sub_1000192F4(&v40, "SampleEncode is not available for the current model.", 52);
          sub_1000145A8(&v39, a6);
          sub_100014638(&v39);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v39, a7);
        if (v38 >= 0)
        {
          v18 = HIBYTE(v38);
        }

        else
        {
          v18 = v37;
        }
      }

      sub_100025FF4(a1, a2, a3, v18, &__p, &v39, a5, a6);
      if (*a6)
      {
        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        goto LABEL_5;
      }

      sub_10004AF1C(a6);
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      goto LABEL_55;
    }

    LODWORD(v39) = 13;
    v15 = sub_1000177C0(&v40);
    sub_1000192F4(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v40, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v40, ") [", 3);
    sub_1000192F4(&v40, "(nbest_size) <= (512)", 21);
    sub_1000192F4(&v40, "] ", 2);
    sub_1000192F4(&v40, "nbest_size must be nbest_size <= 512", 36);
    sub_1000145A8(&v39, a6);
  }

  else
  {
    LODWORD(v39) = 13;
    v14 = sub_1000177C0(&v40);
    sub_1000192F4(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v40, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v40, ") [", 3);
    sub_1000192F4(&v40, "spt", 3);
    sub_1000192F4(&v40, "] ", 2);
    sub_1000192F4(&v40, "output proto is null", 20);
    sub_1000145A8(&v39, a6);
  }

  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  std::locale::~locale(v42);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_1000287DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  sub_100019148(&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1000288C8(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sub_10004AF1C(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              sub_10007BCC0(a4 + 16, v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_10003CB64(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sub_100025FF4(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sub_10004AF1C(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sub_10004AF14(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      sub_1000177C0(&v32);
      sub_1000192F4(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v32, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v32, ") [", 3);
      sub_1000192F4(&v32, "!results.empty()", 16);
      sub_1000192F4(&v32, "] ", 2);
      sub_1000192F4(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sub_1000145A8(&v31, a5);
      if (v36 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(v34);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_23:
      v31 = &v23;
      sub_100019148(&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = sub_1000177C0(&v32);
    sub_1000192F4(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v32, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v32, ") [", 3);
    sub_1000192F4(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    sub_1000192F4(&v32, "] ", 2);
    sub_1000192F4(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sub_1000145A8(&v31, a5);
    if (v36 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(v34);
    std::ostream::~ostream();
    std::ios::~ios();
  }
}

void sub_100028E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_100019148(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100028F08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sub_10004AF1C(a5);
      if (SHIBYTE(v20) >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (SHIBYTE(v20) >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sub_10004AF14(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = sub_1000177C0(&v19);
    sub_1000192F4(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v19, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v19, ") [", 3);
    sub_1000192F4(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    sub_1000192F4(&v19, "] ", 2);
    sub_1000192F4(&v19, "CalculateEntropy is not available for the current model.", 56);
    sub_1000145A8(&v18, a5);
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    std::locale::~locale(v21);
    std::ostream::~ostream();
    std::ios::~ios();
  }
}

void sub_1000291FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002923C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_100023660(a2, __p);
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1000292CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000292E8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v61 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    return;
  }

  sub_10004AF1C(a4);
  if (!v4)
  {
    LODWORD(__dst) = 13;
    sub_1000177C0(&__dst + 1);
    sub_1000192F4(&__dst + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&__dst + 1, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&__dst + 1, ") [", 3);
    sub_1000192F4(&__dst + 1, "spt", 3);
    sub_1000192F4(&__dst + 1, "] ", 2);
    sub_1000192F4(&__dst + 1, "output proto is null", 20);
    sub_1000145A8(&__dst, a4);
    if (v72 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v69);
    std::ostream::~ostream();
    std::ios::~ios();
    return;
  }

  sub_10003B694(v4);
  v8 = a1[4];
  if (v8 && (*(*v8 + 72))(v8))
  {
    v9 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
    v9 = &unk_100090D51;
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = v61;
      v15 = *(v61 + 64);
      if (!v15)
      {
        break;
      }

      v16 = *(v61 + 56);
      v17 = *v15;
      if (v16 >= *v15)
      {
        if (v17 == *(v61 + 60))
        {
LABEL_18:
          sub_10007BCC0(v61 + 48, v17 + 1);
          v15 = *(v61 + 64);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v18 = sub_10003CA94(*(v14 + 48));
        v19 = *(v14 + 56);
        v20 = *(v14 + 64) + 8 * v19;
        *(v14 + 56) = v19 + 1;
        *(v20 + 8) = v18;
        goto LABEL_20;
      }

      *(v61 + 56) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_20:
      *(v18 + 40) |= 1u;
      v21 = *(v18 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = sub_10004C9D8((v18 + 48), v21);
      std::string::assign(v22, v12, v13);
      v23 = (*(*a1 + 504))(a1, v12, v13);
      *(v18 + 40) |= 4u;
      *(v18 + 64) = v23;
      v10 += 16;
      if (v10 == v11)
      {
        v4 = v61;
        goto LABEL_24;
      }
    }

    v17 = *(v61 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sub_100026EA8(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    return;
  }

  sub_10004AF1C(a4);
  *(v4 + 40) |= 1u;
  v24 = *(v4 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  v59[1] = &v60;
  v60 = sub_10004C9D8((v4 + 72), v24);
  v57 = 0;
  v58[0] = &v61;
  v58[1] = v59;
  v59[0] = &v61;
  v56[0] = 0;
  v56[1] = 0;
  v25 = *(v4 + 56);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    while (1)
    {
      v30 = sub_10002FEAC(v4 + 48, v28);
      if (!(*(*a1 + 552))(a1, *(v30 + 64)))
      {
        break;
      }

      ++v28;
LABEL_69:
      v4 = v61;
      v25 = *(v61 + 56);
      if (v28 >= v25)
      {
        goto LABEL_87;
      }
    }

    sub_100029CD4(v58, v27, v28, a4);
    if (*a4)
    {
      goto LABEL_95;
    }

    sub_10004AF1C(a4);
    if (v26)
    {
      goto LABEL_36;
    }

    v31 = *(v60 + 23);
    if (v31 < 0)
    {
      v31 = v60[1];
    }

    if (v31)
    {
LABEL_36:
      v29 = 0;
    }

    v32 = *(v30 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v32 + 23);
    if ((v33 & 0x8000000000000000) != 0)
    {
      v34 = *v32;
      v33 = *(v32 + 8);
    }

    else
    {
      v34 = (*(v30 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = *(v30 + 64);
    if ((*(*a1 + 536))(a1, v35))
    {
      sub_100009A74(&v53, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v35))
      {
        if (v29 & 1) != 0 && ((v38 = a1[4]) == 0 || (v39 = (*(*v38 + 152))(v38), ((*(*v39 + 16))(v39)) || (v40 = (*(*a1[4] + 152))(a1[4]), (*(*v40 + 24))(v40))))
        {
          if (v33 >= 3)
          {
            v45 = *v34 != 38626 || v34[2] != 129;
            if (!v45)
            {
              v34 += 3;
              v33 -= 3;
            }

            v41 = !v45;
          }

          else
          {
            v41 = 0;
          }

          v46 = a1[4];
          if (v46)
          {
            v47 = (*(*v46 + 152))(v46);
            if ((*(*v47 + 24))(v47))
            {
              v41 = 0;
            }
          }
        }

        else
        {
          v41 = 0;
        }

        *&__dst = &unk_100090DE6;
        *(&__dst + 1) = 3;
        v68 = " ";
        v69.__locale_ = 1;
        v63 = 0;
        v64 = 0;
        v62 = 0;
        sub_100030A9C(&v62, &__dst, &v70, 1uLL);
        sub_100030868(v34, v33, &v62, &v65);
        v53 = v65;
        v54 = v66;
        v66 = 0;
        v65 = 0uLL;
        v55 = v41;
        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        goto LABEL_60;
      }

      v36 = (*(*a1 + 512))(a1, v35);
      if (v37 == v33 && !memcmp(v36, v34, v33))
      {
        sub_100009A74(&v53, v9);
      }

      else
      {
        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100003DBC();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v68) = v33;
        if (v33)
        {
          memmove(&__dst, v34, v33);
        }

        *(&__dst + v33) = 0;
        v53 = __dst;
        v54 = v68;
      }
    }

    v55 = 0;
LABEL_60:
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[0]);
    }

    v57 = v54;
    *v56 = v53;
    v26 = v55;
    if (SHIBYTE(v54) >= 0)
    {
      v42 = v56;
    }

    else
    {
      v42 = v53;
    }

    if (SHIBYTE(v54) >= 0)
    {
      v43 = v54 >> 56;
    }

    else
    {
      v43 = *(&v53 + 1);
    }

    sub_10002A280(v59, v28++, v42, v43);
    v27 = v28;
    goto LABEL_69;
  }

  v27 = 0;
LABEL_87:
  sub_100029CD4(v58, v27, v25, a4);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    v48 = a1[3];
    if (v48)
    {
      if ((*(v60 + 23) & 0x8000000000000000) != 0)
      {
        v49 = *v60;
        v50 = v60[1];
      }

      (*(*v48 + 40))(&__dst);
      v51 = v60;
      if (*(v60 + 23) < 0)
      {
        operator delete(*v60);
      }

      v52 = __dst;
      v51[2] = v68;
      *v51 = v52;
    }

    sub_10004AF14(a4);
  }

LABEL_95:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }
}

void sub_100029C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100029CD4(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 >= a3)
  {

    sub_10004AF14(a4);
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
    v8 = a2;
    do
    {
      v9 = *(sub_10002FEAC(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sub_100016110(v10, v11);
      if (v12 < 0)
      {
        v31 = 13;
        sub_1000177C0(&v32);
        sub_1000192F4(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_1000192F4(&v32, "(", 1);
        std::ostream::operator<<();
        sub_1000192F4(&v32, ") [", 3);
        sub_1000192F4(&v32, "(0) <= (byte)", 13);
        sub_1000192F4(&v32, "] ", 2);
        sub_1000145A8(&v31, a4);
        goto LABEL_51;
      }

      std::string::append(&v36, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v29 = a4;
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v36.__r_.__value_.__r.__words[1];
    }

    if (v13 >= 1)
    {
      v14 = 0;
      while (1)
      {
        v30 = 0;
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v36.__r_.__value_.__l.__size_;
        }

        if (size < v14)
        {
          sub_100030B94("string_view::substr");
        }

        v16 = v14;
        v17 = v36.__r_.__value_.__r.__words[0];
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v36;
        }

        if (sub_100048824(v17 + v16, v17 + size, &v30) != 65533)
        {
          break;
        }

        v18 = v16 + a2;
        if (v30 != 1)
        {
          if (v30 != 3)
          {
            v31 = 13;
            sub_1000177C0(&v32);
            sub_1000192F4(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_1000192F4(&v32, "(", 1);
            std::ostream::operator<<();
            sub_1000192F4(&v32, ") [", 3);
            sub_1000192F4(&v32, "(consumed) == (1)", 17);
            sub_1000192F4(&v32, "] ", 2);
            sub_1000145A8(&v31, v29);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        sub_10002A280(*(a1 + 8), v16 + a2, &unk_100090DE2, 3uLL);
        LODWORD(v21) = v30;
LABEL_41:
        v14 = v16 + v21;
        if (v14 >= v13)
        {
          goto LABEL_48;
        }
      }

      v18 = v16 + a2;
LABEL_22:
      v19 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v36.__r_.__value_.__l.__size_;
      }

      v20 = v19 - v16;
      if (v19 < v16)
      {
        sub_100030B94("string_view::substr");
      }

      v21 = v30;
      v22 = &v36;
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v36.__r_.__value_.__r.__words[0];
      }

      if (v20 >= v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = v20;
      }

      if (v30)
      {
        v24 = 0;
        v25 = v22 + v16;
        do
        {
          v26 = v21 - 1;
          if (v24 == v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = "";
          }

          if (v24 == v26)
          {
            v28 = v23;
          }

          else
          {
            v28 = 0;
          }

          sub_10002A280(*(a1 + 8), v18, v27, v28);
          ++v24;
          v21 = v30;
          ++v18;
        }

        while (v30 > v24);
      }

      goto LABEL_41;
    }

    v14 = 0;
LABEL_48:
    if (v14 + a2 == a3)
    {
      sub_10004AF14(v29);
      goto LABEL_54;
    }

    v31 = 13;
    sub_1000177C0(&v32);
    sub_1000192F4(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v32, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v32, ") [", 3);
    sub_1000192F4(&v32, "(token_index_begin + offset) == (token_index_end)", 49);
    sub_1000192F4(&v32, "] ", 2);
    sub_1000145A8(&v31, v29);
LABEL_51:
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    std::locale::~locale(v34);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_54:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10002A218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10002A280(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v7 = sub_100030DCC(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_10004C9A4((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_10002A3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002A3EC(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = (*(*a1 + 496))(a1);
  sub_100025938(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    v13 = v20;
    if (v20 >= v21)
    {
      v14 = sub_1000197FC(&v19, &__p);
    }

    else
    {
      sub_100019738(&v19, &__p);
      v14 = v13 + 24;
    }

    v20 = v14;
    ++v10;
  }

  sub_10002A5EC("Invalid id: ", 0xCuLL, &v18, &__p);
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

  sub_10004B080(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  sub_10000CCE0(&__p);
}

void sub_10002A5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_10000CCE0(&__p);
  _Unwind_Resume(a1);
}

void sub_10002A5EC(void *__src@<X0>, size_t __len@<X1>, unsigned int *a3@<X2>, std::string *a4@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  v6 = *a3;
  sub_100032CA4();
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

  v9 = std::string::append(&__dst, v7, v8);
  *a4 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_10002A690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_10002A6C4(void **a1)
{
  ((*a1)[11])(&v14);
  v2 = v14;
  sub_10004AF1C(&v14);
  if (!v2)
  {
    return (*(*a1[1] + 128))(a1[1]);
  }

  if (sub_100048804() <= 2)
  {
    v13 = 0;
    v3 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v3, "(", 1);
    v4 = std::ostream::operator<<();
    v5 = sub_1000192F4(v4, ") ", 2);
    v6 = sub_1000192F4(v5, "LOG(", 4);
    v7 = sub_1000192F4(v6, "ERROR", 5);
    v8 = sub_1000192F4(v7, ") ", 2);
    ((*a1)[11])(&v14, a1);
    v9 = sub_10004B23C(&v14);
    v10 = strlen(v9);
    v11 = sub_1000192F4(v8, v9, v10);
    sub_1000192F4(v11, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v14);
    sub_1000179E8(&v13);
  }

  return 0;
}

uint64_t sub_10002A874(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v18);
  v6 = v18;
  sub_10004AF1C(&v18);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sub_100048804() <= 2)
  {
    v17 = 0;
    v7 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v7, "(", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_1000192F4(v8, ") ", 2);
    v10 = sub_1000192F4(v9, "LOG(", 4);
    v11 = sub_1000192F4(v10, "ERROR", 5);
    v12 = sub_1000192F4(v11, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v13 = sub_10004B23C(&v18);
    v14 = strlen(v13);
    v15 = sub_1000192F4(v12, v13, v14);
    sub_1000192F4(v15, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v18);
    sub_1000179E8(&v17);
  }

  return 0;
}

const char *sub_10002AA3C(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v17);
  v4 = v17;
  sub_10004AF1C(&v17);
  if (!v4)
  {
    return (*(*a1[1] + 120))(a1[1], a2);
  }

  if (sub_100048804() <= 2)
  {
    v16 = 0;
    v5 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v5, "(", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_1000192F4(v6, ") ", 2);
    v8 = sub_1000192F4(v7, "LOG(", 4);
    v9 = sub_1000192F4(v8, "ERROR", 5);
    v10 = sub_1000192F4(v9, ") ", 2);
    ((*a1)[11])(&v17, a1);
    v11 = sub_10004B23C(&v17);
    v12 = strlen(v11);
    v13 = sub_1000192F4(v10, v11, v12);
    v14 = sub_1000192F4(v13, "\nReturns default value ", 23);
    sub_1000192F4(v14, "", 0);
    sub_10004AF1C(&v17);
    sub_1000179E8(&v16);
  }

  return "";
}

float sub_10002AC0C(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v17);
  v4 = v17;
  sub_10004AF1C(&v17);
  if (!v4)
  {
    return (*(*a1[1] + 136))(a1[1], a2);
  }

  v5 = 0.0;
  if (sub_100048804() <= 2)
  {
    v16 = 0;
    v6 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v6, "(", 1);
    v7 = std::ostream::operator<<();
    v8 = sub_1000192F4(v7, ") ", 2);
    v9 = sub_1000192F4(v8, "LOG(", 4);
    v10 = sub_1000192F4(v9, "ERROR", 5);
    v11 = sub_1000192F4(v10, ") ", 2);
    ((*a1)[11])(&v17, a1);
    v12 = sub_10004B23C(&v17);
    v13 = strlen(v12);
    v14 = sub_1000192F4(v11, v12, v13);
    sub_1000192F4(v14, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v17);
    sub_1000179E8(&v16);
  }

  return v5;
}

uint64_t sub_10002ADDC(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v16);
  v4 = v16;
  sub_10004AF1C(&v16);
  if (!v4)
  {
    return (*(*a1[1] + 152))(a1[1], a2);
  }

  if (sub_100048804() <= 2)
  {
    v15 = 0;
    v5 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v5, "(", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_1000192F4(v6, ") ", 2);
    v8 = sub_1000192F4(v7, "LOG(", 4);
    v9 = sub_1000192F4(v8, "ERROR", 5);
    v10 = sub_1000192F4(v9, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v11 = sub_10004B23C(&v16);
    v12 = strlen(v11);
    v13 = sub_1000192F4(v10, v11, v12);
    sub_1000192F4(v13, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v16);
    sub_1000179E8(&v15);
  }

  return 0;
}

uint64_t sub_10002AF9C(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v16);
  v4 = v16;
  sub_10004AF1C(&v16);
  if (!v4)
  {
    return (*(*a1[1] + 144))(a1[1], a2);
  }

  if (sub_100048804() <= 2)
  {
    v15 = 0;
    v5 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v5, "(", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_1000192F4(v6, ") ", 2);
    v8 = sub_1000192F4(v7, "LOG(", 4);
    v9 = sub_1000192F4(v8, "ERROR", 5);
    v10 = sub_1000192F4(v9, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v11 = sub_10004B23C(&v16);
    v12 = strlen(v11);
    v13 = sub_1000192F4(v10, v11, v12);
    sub_1000192F4(v13, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v16);
    sub_1000179E8(&v15);
  }

  return 0;
}

uint64_t sub_10002B15C(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v16);
  v4 = v16;
  sub_10004AF1C(&v16);
  if (!v4)
  {
    return (*(*a1[1] + 160))(a1[1], a2);
  }

  if (sub_100048804() <= 2)
  {
    v15 = 0;
    v5 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v5, "(", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_1000192F4(v6, ") ", 2);
    v8 = sub_1000192F4(v7, "LOG(", 4);
    v9 = sub_1000192F4(v8, "ERROR", 5);
    v10 = sub_1000192F4(v9, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v11 = sub_10004B23C(&v16);
    v12 = strlen(v11);
    v13 = sub_1000192F4(v10, v11, v12);
    sub_1000192F4(v13, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v16);
    sub_1000179E8(&v15);
  }

  return 0;
}

uint64_t sub_10002B31C(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v16);
  v4 = v16;
  sub_10004AF1C(&v16);
  if (!v4)
  {
    return (*(*a1[1] + 176))(a1[1], a2);
  }

  if (sub_100048804() <= 2)
  {
    v15 = 0;
    v5 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v5, "(", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_1000192F4(v6, ") ", 2);
    v8 = sub_1000192F4(v7, "LOG(", 4);
    v9 = sub_1000192F4(v8, "ERROR", 5);
    v10 = sub_1000192F4(v9, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v11 = sub_10004B23C(&v16);
    v12 = strlen(v11);
    v13 = sub_1000192F4(v10, v11, v12);
    sub_1000192F4(v13, "\nReturns default value ", 23);
    std::ostream::operator<<();
    sub_10004AF1C(&v16);
    sub_1000179E8(&v15);
  }

  return 0;
}

uint64_t sub_10002B4DC(uint64_t *a1)
{
  v2 = sub_100014934(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 528))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002B59C(uint64_t *a1)
{
  v2 = sub_1000149B8(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002B65C(uint64_t *a1)
{
  v2 = sub_100014A3C(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002B71C(uint64_t *a1)
{
  v2 = sub_100014AC0(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002B7DC@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    if (a3)
    {
      sub_10000CD34(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 200);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1000177C0(&v14);
      sub_1000192F4(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v14, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v14, ") [", 3);
      sub_1000192F4(&v14, "pieces", 6);
      sub_1000192F4(&v14, "] ", 2);
      sub_1000192F4(&v14, "output container is null", 24);
      sub_1000145A8(&v13, a4);
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      std::locale::~locale(v16);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002BA90@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 208);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1000177C0(&v14);
      sub_1000192F4(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v14, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v14, ") [", 3);
      sub_1000192F4(&v14, "ids", 3);
      sub_1000192F4(&v14, "] ", 2);
      sub_1000192F4(&v14, "output container is null", 24);
      sub_1000145A8(&v13, a4);
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      std::locale::~locale(v16);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002BD44@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    if (a3)
    {
      sub_10000CD34(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 216);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1000177C0(&v14);
      sub_1000192F4(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v14, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v14, ") [", 3);
      sub_1000192F4(&v14, "pieces", 6);
      sub_1000192F4(&v14, "] ", 2);
      sub_1000192F4(&v14, "output container is null", 24);
      sub_1000145A8(&v13, a4);
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      std::locale::~locale(v16);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002BFF0@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 224);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_1000177C0(&v14);
      sub_1000192F4(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_1000192F4(&v14, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&v14, ") [", 3);
      sub_1000192F4(&v14, "ids", 3);
      sub_1000192F4(&v14, "] ", 2);
      sub_1000192F4(&v14, "output container is null", 24);
      sub_1000145A8(&v13, a4);
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      std::locale::~locale(v16);
      std::ostream::~ostream();
      return std::ios::~ios();
    }
  }

  return result;
}

uint64_t sub_10002C29C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_10002C310(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_10002C384@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sub_10004AF1C(a4);
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sub_10004AF1C(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    v12 = 13;
    v11 = sub_1000177C0(&v13);
    sub_1000192F4(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v13, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v13, ") [", 3);
    sub_1000192F4(&v13, "norm_to_orig", 12);
    sub_1000192F4(&v13, "] ", 2);
    sub_1000192F4(&v13, "output container is null", 24);
    sub_1000145A8(&v12, a4);
  }

  else
  {
    v12 = 13;
    v9 = sub_1000177C0(&v13);
    sub_1000192F4(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v13, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v13, ") [", 3);
    sub_1000192F4(&v13, "normalized", 10);
    sub_1000192F4(&v13, "] ", 2);
    sub_1000192F4(&v13, "output container is null", 24);
    sub_1000145A8(&v12, a4);
  }

  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_10002C778(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10002C7B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_10002C7F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  {
    v8 = 1;
    v4 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v4, "(", 1);
    v5 = std::ostream::operator<<();
    v6 = sub_1000192F4(v5, ") [", 3);
    v7 = sub_1000192F4(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_.get()))", 68);
    sub_1000192F4(v7, "] ", 2);
    result = sub_1000179E8(&v8);
    __break(1u);
  }

  return result;
}

_BYTE *sub_10002C8F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  {

    return sub_10006CE54(v5, a2);
  }

  else
  {

    return sub_100009A74(a2, "");
  }
}

void sub_10002C998(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 88))(&v37);
  if (v37.__r_.__value_.__r.__words[0])
  {
    v36.__r_.__value_.__s.__data_[0] = 1;
    v4 = sub_1000192F4(&std::cerr, "sentencepiece_processor.cc", 26);
    sub_1000192F4(v4, "(", 1);
    v5 = std::ostream::operator<<();
    v6 = sub_1000192F4(v5, ") [", 3);
    v7 = sub_1000192F4(v6, "status().ok()", 13);
    v8 = sub_1000192F4(v7, "] ", 2);
    sub_1000192F4(v8, "To serialize, SentencePieceProcessor has to be initialized.", 59);
    sub_1000179E8(&v36);
  }

  sub_10004AF1C(&v37);
  sub_100089270(*(a1 + 32), &v37);
  sub_100049274(&v37);
  (*(**(a1 + 8) + 232))(&v36);
  sub_100049274(&v36);
  (*(**(a1 + 16) + 48))(&v35);
  sub_100049274(&v35);
  v9 = *(a1 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&__p);
  }

  else
  {
    sub_100009A74(&__p, "");
  }

  sub_100049274(&__p);
  v10 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  v11 = v37.__r_.__value_.__r.__words[1];
  v12 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  v13 = v36.__r_.__value_.__r.__words[1];
  v14 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  v15 = v35.__r_.__value_.__r.__words[1];
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v17 = __p.__r_.__value_.__r.__words[1];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  memset(&v33, 0, sizeof(v33));
  std::string::resize(&v33, 0x14uLL, 0);
  if ((v16 & 0x80u) == 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if ((v14 & 0x80u) == 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if ((v12 & 0x80u) == 0)
  {
    v20 = v12;
  }

  else
  {
    v20 = v13;
  }

  if ((v10 & 0x80u) == 0)
  {
    v21 = v10;
  }

  else
  {
    v21 = v11;
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v33;
  }

  else
  {
    v22 = v33.__r_.__value_.__r.__words[0];
  }

  LODWORD(v22->__r_.__value_.__l.__data_) = 0;
  HIDWORD(v22->__r_.__value_.__r.__words[0]) = v21;
  LODWORD(v22->__r_.__value_.__r.__words[1]) = v20;
  HIDWORD(v22->__r_.__value_.__r.__words[1]) = v19;
  LODWORD(v22->__r_.__value_.__r.__words[2]) = v18;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v23, size);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v37;
  }

  else
  {
    v25 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v25, v26);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v36;
  }

  else
  {
    v27 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v36.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v27, v28);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v35;
  }

  else
  {
    v29 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v35.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
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
    v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_10002CD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002CDC0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = **v4;
    {

      sub_10002C8F0(a1, a2);
    }

    else
    {

      sub_10002C998(a1, a2);
    }
  }

  else
  {

    sub_100009A74(a2, "");
  }
}

void *sub_10002CE90@<X0>(_DWORD *a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v14 = a1;
  v15 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v9) = 13;
    v6 = sub_1000177C0(&v10);
    sub_1000192F4(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "(size) >= (sizeof(MMapHeader))", 30);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000145A8(&v9, a3);
  }

  else if (*a1)
  {
    LODWORD(v9) = 13;
    v5 = sub_1000177C0(&v10);
    sub_1000192F4(v5, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "header->sentinel == 0", 21);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000192F4(&v10, "This file format is not for mmap-based loading.", 47);
    sub_1000145A8(&v9, a3);
  }

  else
  {
    result = sub_1000492DC(&v14, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sub_10004AF1C(a3);
    if (v15 >= a1[1])
    {
      operator new();
    }

    LODWORD(v9) = 13;
    v8 = sub_1000177C0(&v10);
    sub_1000192F4(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_1000192F4(&v10, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v10, ") [", 3);
    sub_1000192F4(&v10, "(blob.size()) >= (header->model_proto_size)", 43);
    sub_1000192F4(&v10, "] ", 2);
    sub_1000145A8(&v9, a3);
  }

  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10002DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100014638(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DAF8(uint64_t a1, const std::string::value_type *a2, std::string::size_type a3)
{
  v4 = a1 + 96;
  std::string::assign((a1 + 96), a2, a3);
  v5 = *(a1 + 119);
  if (v5 < 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 104);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v4, v5);
}

void sub_10002DCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002DCBC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_100032FC0(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100019AD4(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    v11 = sub_1000177C0(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_1000192F4(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    sub_100033198(&__p.__pn_.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sub_1000145A8(&__p, a4);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    std::locale::~locale(v27);
    std::ostream::~ostream();
    std::ios::~ios();
    return;
  }

  sub_100033008(a2, &v31);
  sub_1000330D0(a2, &v30);
  std::__fs::filesystem::__status(&v31, 0);
  if (__p.__pn_.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(&__p, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    sub_1000177C0(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]);
    if ((v31.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v31;
    }

    else
    {
      v18 = v31.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v31.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v31.__pn_.__r_.__value_.__l.__size_;
    }

    sub_100033198(&__p.__pn_.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sub_1000145A8(&__p, a4);
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(&__p, v30.__pn_.__r_.__value_.__l.__data_, v30.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v30;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v32) < 0)
    {
      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v22 = sub_1000177C0(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_1000192F4(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v32.st_size;
      *(a1 + 16) = v32.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sub_10004AF14(a4);
        return;
      }

      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v23 = sub_1000177C0(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_1000192F4(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      std::ostream::operator<<();
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
  sub_1000177C0(&__p.__pn_.__r_.__value_.__l.__size_);
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
  std::ostream::operator<<();
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "fd >= 0", 7);
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
  sub_1000192F4(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  sub_100033198(&__p.__pn_.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sub_1000145A8(&__p, a4);
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  std::locale::~locale(v27);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_10002E630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_10002E80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002E828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_100047584();
  }

  return sub_10004B080(a2, 5, "model file path should not be empty.", 36);
}

void sub_10002EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 - 56);
  *(v15 - 56) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002EB98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EBFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CCE0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002EC14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EC78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002EC94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002ECF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100030C24(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002ED10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002ED74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100030C98(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002ED8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EDF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CCE0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002EE08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002EE88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100030CEC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002EF04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100019148(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10002EF80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002EFE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002F000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002F064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002F080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_10004AF1C(&v3);
}

void sub_10002F0E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_10002F100(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_10004AF1C(&v3);
  return v1;
}

void sub_10002F164(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = off_1000ACD18;
  v12 = 0;
  v13 = 0;
  v11 = sub_10003B654();
  v8 = sub_10001F794(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_10006CE54(v11, a4);
  sub_10004AF1C(&v9);
  v10 = off_1000ACD18;
  if (v13)
  {
    sub_100030D60(v13);
  }
}

void sub_10002F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10004AF1C(&a10);
  if (a14)
  {
    sub_100030D60(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10002F268(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = off_1000ACD18;
  v16 = 0;
  v17 = 0;
  v15 = sub_10003B654();
  v12 = sub_10001F794(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  sub_10006CE54(v15, a5);
  sub_10004AF1C(&v13);
  v14 = off_1000ACD18;
  if (v17)
  {
    sub_100030D60(v17);
  }
}

void sub_10002F358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10004AF1C(&a10);
  if (a14)
  {
    sub_100030D60(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10002F384(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = off_1000ACD38;
  v10 = sub_10001FCC0(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_10001FD80(v12, a5);
  sub_10004AF1C(&v11);
  v12[0] = off_1000ACD38;
  if (v13)
  {
    sub_100030D60(v13);
  }
}

void sub_10002F45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10004AF1C(&a9);
  if (a12)
  {
    sub_100030D60(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10002F488(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = off_1000ACD38;
  v16 = sub_10001FCC0(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sub_10001FD80(v18, a7);
  sub_10004AF1C(&v17);
  v18[0] = off_1000ACD38;
  if (v19)
  {
    sub_100030D60(v19);
  }
}

void sub_10002F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10004AF1C(&a9);
  if (a12)
  {
    sub_100030D60(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10002F5BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = off_1000ACD18;
  v10 = 0;
  v11 = 0;
  v9 = sub_10003B654();
  v6 = sub_10001F794(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  sub_10006CE54(v9, a3);
  sub_10004AF1C(&v7);
  v8 = off_1000ACD18;
  if (v11)
  {
    sub_100030D60(v11);
  }
}

void sub_10002F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10004AF1C(&a10);
  if (a14)
  {
    sub_100030D60(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10002F6B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = off_1000ACD18;
  v10 = 0;
  v11 = 0;
  v9 = sub_10003B654();
  v6 = sub_10001F794(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  sub_10006CE54(v9, a3);
  sub_10004AF1C(&v7);
  v8 = off_1000ACD18;
  if (v11)
  {
    sub_100030D60(v11);
  }
}

void sub_10002F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10004AF1C(&a10);
  if (a14)
  {
    sub_100030D60(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10002F7B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = off_1000ACD18;
  v10 = 0;
  v11 = 0;
  v9 = sub_10003B654();
  v6 = sub_10001F794(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  sub_10006CE54(v9, a3);
  sub_10004AF1C(&v7);
  v8 = off_1000ACD18;
  if (v11)
  {
    sub_100030D60(v11);
  }
}

void sub_10002F884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10004AF1C(&a10);
  if (a14)
  {
    sub_100030D60(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10002F8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = off_1000ACD18;
  v8 = sub_10003B654();
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v8;
  v9 = sub_10001F794(a4);
  (*(*a1 + 232))(&v11, a1, a2, a3, v9);
  return sub_10004AF1C(&v11);
}

void sub_10002F968(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>)
{
  *a5 = off_1000ACD18;
  v12 = sub_10003B654();
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = v12;
  v13 = sub_10001F794(a5);
  (*(*a1 + 248))(&v15, a1, a2, a3, a4, v13, a6);
  return sub_10004AF1C(&v15);
}

void sub_10002FA54(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002FA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = off_1000ACD38;
  v9 = sub_10001FCC0(a5);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v9);
  return sub_10004AF1C(&v11);
}

void sub_10002FB28(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  a7[1] = 0;
  a7[2] = 0;
  *a7 = off_1000ACD38;
  v15 = sub_10001FCC0(a7);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v15, a8);
  return sub_10004AF1C(&v17);
}

void sub_10002FC2C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = off_1000ACD18;
  v6 = sub_10003B654();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_10001F794(a3);
  (*(*a1 + 264))(&v9, a1, a2, v7);
  return sub_10004AF1C(&v9);
}

void sub_10002FCF8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = off_1000ACD18;
  v6 = sub_10003B654();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_10001F794(a3);
  (*(*a1 + 272))(&v9, a1, a2, v7);
  return sub_10004AF1C(&v9);
}

void sub_10002FDC4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002FDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = off_1000ACD18;
  v6 = sub_10003B654();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_10001F794(a3);
  (*(*a1 + 280))(&v9, a1, a2, v7);
  return sub_10004AF1C(&v9);
}

void sub_10002FE90(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_100030D60(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002FEAC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_10002FF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10002FF8C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100004150(result, a2);
  }

  return result;
}

void sub_100030084(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000300A0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100030160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030180(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_100030248(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_100030364(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100030424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_100030444(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            sub_100030588(a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    sub_100030588(a1, &v23);
  }

  return a1;
}

void sub_100030568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100030588(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100003F50();
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
      sub_10001A37C(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_100030660(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000CAFC(result, a2);
  }

  return result;
}

void *sub_100030704(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10003077C(result, a2);
  }

  return result;
}

void sub_100030760(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003077C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10001A37C(a1, a2);
  }

  sub_100003F50();
}

_BYTE *sub_1000307B8(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_100030868(void *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

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

    sub_100030960(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a4);
    std::string::operator=(&__dst, a4);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_100030934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100030960(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t sub_100030A9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100030B10(result, a4);
  }

  return result;
}

void sub_100030AF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100030B10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100030B4C(a1, a2);
  }

  sub_100003F50();
}

void sub_100030B4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003E64();
}

void sub_100030B94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100030BF0(exception, a1);
}

std::logic_error *sub_100030BF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100030C24(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_10000CCE0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100030C98(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100024CA0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100030CEC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        sub_10000CCE0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100030D60(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_100030DCC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_100030E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_100030EAC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100003F14(result, a2);
  }

  return result;
}

void sub_100030F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100030F94(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1000AD098;
  sub_10003B3AC(a1 + 3, 0);
  return a1;
}

void sub_100031014(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000AD098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100031074(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000310E0(result, a2);
  }

  return result;
}

void sub_1000310E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000311A8(a1, a2);
  }

  sub_100003F50();
}

void *sub_10003111C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  if (a2)
  {
    v4 = 32 * a2;
    v5 = result[1];
    v6 = &v3[4 * a2];
    do
    {
      *v3 = off_1000ACD18;
      result = sub_10003B654();
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = result;
      v3 += 4;
      v5 += 32;
      v4 -= 32;
    }

    while (v4);
    v3 = v6;
  }

  v2[1] = v3;
  return result;
}

void sub_1000311A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003E64();
}

void sub_1000311F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_10003130C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1000AD0E8;
  sub_10003C150(a1 + 3, 0);
  return a1;
}

void sub_10003138C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1000AD0E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000313EC(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, char *a4@<X3>, void **a5@<X4>, std::string *a6@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  sub_1000314F0(v11, v12, a4, a5, &__p);
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
  *a6 = *v15;
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

void sub_1000314BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1000314F0(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, std::string *a5@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  v8 = strlen(a3);
  sub_1000315E4(a3, v8, a4, &__p);
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

  v11 = std::string::append(&__dst, p_p, size);
  *a5 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1000315B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1000315E4(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  sub_1000307B8(&__dst, __src, __len);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  sub_1000307B8(__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_10003169C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *sub_1000316D0(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100031754(a1, v4, v6);
      v6 += 16;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_100031754(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1000317EC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1000317EC(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_10001A020(a1, a5, (a2 + 4)))
  {
    if (!sub_10001A020(a1, (a2 + 4), a5))
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
      if (!sub_10001A020(a1, a5, (v15 + 4)))
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

  if (sub_10001A020(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100019F2C(a1, a3, a5);
}

uint64_t sub_100031990(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10001A020(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10001A020(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}