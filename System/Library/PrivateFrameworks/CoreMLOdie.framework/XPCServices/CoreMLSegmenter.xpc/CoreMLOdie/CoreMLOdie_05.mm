uint64_t llvm::SourceMgr::SrcBuffer::getLineNumber(llvm::SourceMgr::SrcBuffer *this, const char *a2)
{
  v2 = a2;
  v4 = *(*this + 8);
  v5 = *(*this + 16) - v4;
  if (v5 <= 0xFF)
  {
    v7 = sub_10003D610(this + 8);
    v8 = *v7;
    v9 = v7[1] - *v7;
    if (v9)
    {
      v10 = *v7;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10[v9 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v9 += ~(v9 >> 1);
        if (v14 < (v2 - *(*this + 8)))
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      LODWORD(v8) = v10 - v8;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  else if (v5 >> 16)
  {
    v6 = *(this + 1);
    if (HIDWORD(v5))
    {
      if (!v6)
      {
        operator new();
      }

      v23 = v6[1];
      if (v23 != *v6)
      {
        v24 = &a2[-v4];
        v25 = (v23 - *v6) >> 3;
        v23 = *v6;
        do
        {
          v26 = v25 >> 1;
          v27 = &v23[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (v29 < v24)
          {
            v23 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v8 = (v23 - *v6) >> 3;
    }

    else
    {
      if (!v6)
      {
        operator new();
      }

      v30 = v6[1];
      if (v30 != *v6)
      {
        v31 = a2 - v4;
        v32 = (v30 - *v6) >> 2;
        v30 = *v6;
        do
        {
          v33 = v32 >> 1;
          v34 = &v30[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < v31)
          {
            v30 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      v8 = (v30 - *v6) >> 2;
    }
  }

  else
  {
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = v15[1];
    if (v16 != *v15)
    {
      v17 = (a2 - v4);
      v18 = v16 - *v15;
      v16 = *v15;
      do
      {
        v19 = v18 >> 1;
        v20 = &v16[v18 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v18 += ~(v18 >> 1);
        if (v22 < v17)
        {
          v16 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
    }

    v8 = (v16 - *v15) >> 1;
  }

  return (v8 + 1);
}

uint64_t llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(llvm::SourceMgr::SrcBuffer *this, unsigned int a2)
{
  v4 = *this;
  result = *(*this + 8);
  v6 = *(v4 + 16) - result;
  if (v6 <= 0xFF)
  {
    v9 = sub_10003D610(this + 8);
    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    result = *(*this + 8);
    if (a2 >= 2)
    {
      v12 = v9;
      v11 = *v9;
      if (v12[1] - v11 < v10)
      {
        return 0;
      }

      v14 = *(v11 + v10 - 1);
      goto LABEL_36;
    }
  }

  else if (v6 >> 16)
  {
    v7 = *(this + 1);
    if (HIDWORD(v6))
    {
      if (!v7)
      {
        operator new();
      }

      LODWORD(v8) = a2 - 1;
      if (a2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (a2 < 2)
      {
        return result;
      }

      if (v8 > (v7[1] - *v7) >> 3)
      {
        return 0;
      }

      v14 = *(*v7 + 8 * (v8 - 1));
LABEL_36:
      result += v14 + 1;
      return result;
    }

    if (!v7)
    {
      operator new();
    }

    LODWORD(v16) = a2 - 1;
    if (a2)
    {
      v16 = v16;
    }

    else
    {
      v16 = 0;
    }

    if (a2 >= 2)
    {
      if (v16 > (v7[1] - *v7) >> 2)
      {
        return 0;
      }

      v14 = *(*v7 + 4 * (v16 - 1));
      goto LABEL_36;
    }
  }

  else
  {
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    LODWORD(v15) = a2 - 1;
    if (a2)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (a2 >= 2)
    {
      if (v15 > (v13[1] - *v13) >> 1)
      {
        return 0;
      }

      v14 = *(*v13 + 2 * (v15 - 1));
      goto LABEL_36;
    }
  }

  return result;
}

void *llvm::SourceMgr::SrcBuffer::SrcBuffer(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  result[1] = a2[1];
  result[2] = v3;
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

void llvm::SourceMgr::SrcBuffer::~SrcBuffer(llvm::SourceMgr::SrcBuffer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t sub_10003D320(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100003FC0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v6 = 24 * v2;
  __p = 0;
  v16 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v17 = 24 * v2 + 24;
  v18 = 0;
  sub_10003D4CC(a1, &__p);
  v7 = *(a1 + 8);
  v8 = v16;
  for (i = v17; v17 != v8; i = v17)
  {
    v10 = (i - 24);
    v17 = i - 24;
    v11 = *(i - 16);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v12;
        operator delete(v12);
      }

      operator delete();
    }

    v13 = *v10;
    *v10 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

uint64_t **sub_10003D4CC(uint64_t **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 - (v6 - *result));
  if (v6 != *result)
  {
    v8 = (v4 - 8 * (v6 - *result) + 16);
    v9 = *result;
    do
    {
      v10 = *v9;
      v11 = v9[2];
      *(v8 - 1) = v9[1];
      *v8 = v11;
      *v9 = 0;
      v9[1] = 0;
      v9 += 3;
      *(v8 - 2) = v10;
      v8 += 3;
    }

    while (v9 != v6);
    do
    {
      v12 = v5[1];
      if (v12)
      {
        v13 = *v12;
        if (*v12)
        {
          *(v12 + 8) = v13;
          operator delete(v13);
        }

        operator delete();
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        result = ((*result)[1])(result);
      }

      v5 += 3;
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10003D610(uint64_t a1)
{
  if (!*a1)
  {
    operator new();
  }

  return *a1;
}

void sub_10003D764(uint64_t a1, _WORD *a2)
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
    sub_100003FC0();
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

    sub_100003FC0();
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

void sub_10003D874(uint64_t a1, _DWORD *a2)
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
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_100003FC0();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_100003FC0();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
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

void sub_10003D98C(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_100003FC0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_100003FC0();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

std::recursive_mutex *sub_10003DAE8(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    operator delete();
  }

  return result;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 16);
        v17 = *(a3 + 8);
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::printEscapedString(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = *v5;
      if (v7 == 92)
      {
        v8 = *(a3 + 4);
        if (v8 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
          v9 = *(result + 4);
          if (v9 < *(result + 3))
          {
LABEL_19:
            *(result + 4) = v9 + 1;
            *v9 = 92;
            goto LABEL_5;
          }
        }

        else
        {
          *(a3 + 4) = v8 + 1;
          *v8 = 92;
          result = a3;
          v9 = *(a3 + 4);
          if (v9 < *(a3 + 3))
          {
            goto LABEL_19;
          }
        }

        v6 = 92;
        goto LABEL_4;
      }

      v11 = *(a3 + 3);
      v10 = *(a3 + 4);
      if (v7 == 34 || (v7 - 32) > 0x5Eu)
      {
        if (v10 >= v11)
        {
          result = llvm::raw_ostream::write(a3, 92);
          v12 = a0123456789abcd_3[v7 >> 4];
          v13 = *(result + 4);
          if (v13 < *(result + 3))
          {
LABEL_21:
            *(result + 4) = v13 + 1;
            *v13 = v12;
            v6 = a0123456789abcd_3[v7 & 0xF];
            v14 = *(result + 4);
            if (v14 < *(result + 3))
            {
LABEL_22:
              *(result + 4) = v14 + 1;
              *v14 = v6;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          *(a3 + 4) = v10 + 1;
          *v10 = 92;
          result = a3;
          v12 = a0123456789abcd_3[v7 >> 4];
          v13 = *(a3 + 4);
          if (v13 < *(a3 + 3))
          {
            goto LABEL_21;
          }
        }

        result = llvm::raw_ostream::write(result, v12);
        v6 = a0123456789abcd_3[v7 & 0xF];
        v14 = *(result + 4);
        if (v14 < *(result + 3))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 < v11)
        {
          *(a3 + 4) = v10 + 1;
          *v10 = v7;
          goto LABEL_5;
        }

        result = a3;
        v6 = *v5;
      }

LABEL_4:
      result = llvm::raw_ostream::write(result, v6);
LABEL_5:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_10003DE3C(int a1)
{
  v2 = a1 + 1;
  result = malloc_type_calloc((a1 + 1), 0xCuLL, 0x17B874E6uLL);
  if (!result && (v2 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  result[a1] = 2;
  return result;
}

uint64_t llvm::StringMapImpl::LookupBucketFor(uint64_t a1, void *__s1, size_t __n, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *a1;
    v10 = v8 - 1;
    result = (v8 - 1) & a4;
    v12 = *a1 + 8 * v8 + 8;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = malloc_type_calloc(0x11uLL, 0xCuLL, 0x17B874E6uLL);
    if (!v18)
    {
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v9 = v18;
    v18[16] = 2;
    *a1 = v18;
    *(a1 + 8) = 16;
    v10 = 15;
    result = a4 & 0xF;
    v12 = (v9 + 17);
    if (__n)
    {
LABEL_3:
      v13 = 1;
      v14 = 0xFFFFFFFFLL;
      v15 = v9[result];
      i = result;
      if (v15)
      {
        while (1)
        {
          if (v15 == -8)
          {
            if (v14 == -1)
            {
              v14 = result;
            }

            else
            {
              v14 = v14;
            }
          }

          else if (*(v12 + 4 * i) == a4 && __n == *v15)
          {
            v28 = result;
            v26 = v12;
            v27 = v9;
            v24 = v14;
            v25 = v10;
            v23 = v13;
            v21 = memcmp(__s1, v15 + *(a1 + 20), __n);
            v13 = v23;
            v10 = v25;
            v14 = v24;
            v12 = v26;
            v9 = v27;
            v22 = v21;
            result = v28;
            if (!v22)
            {
              return result;
            }
          }

          LODWORD(result) = v10 & (result + v13++);
          v15 = v9[result];
          i = result;
          if (!v15)
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  v19 = 1;
  LODWORD(v14) = -1;
  v20 = v9[result];
  for (i = result; v20; i = result)
  {
    if (v20 == -8)
    {
      if (v14 == -1)
      {
        LODWORD(v14) = result;
      }
    }

    else if (*(v12 + 4 * i) == a4 && !*v20)
    {
      return result;
    }

    result = v10 & (result + v19++);
    v20 = v9[result];
  }

LABEL_4:
  v17 = v14;
  if (v14 == -1)
  {
    v17 = i;
    result = result;
  }

  else
  {
    result = v14;
  }

  *(v12 + 4 * v17) = a4;
  return result;
}

uint64_t llvm::StringMapImpl::FindKey(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v23 = a3;
        v24 = a2;
        v21 = a4;
        v22 = result;
        v18 = v5;
        v20 = v6;
        v17 = v8;
        v19 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v18;
        v9 = v19;
        v8 = v17;
        v6 = v20;
        a4 = v21;
        a3 = v23;
        a2 = v24;
        v15 = v14;
        result = v22;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t llvm::StringMapImpl::RemoveKey(uint64_t *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = llvm::xxh3_64bits(a2, a3);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (a3)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && a3 == *v14)
        {
          v23 = v6;
          v24 = v11;
          v25 = v10;
          v21 = v13;
          v22 = v9;
          v20 = v12;
          v15 = memcmp(a2, v14 + *(a1 + 5), a3);
          v13 = v21;
          v9 = v22;
          v12 = v20;
          v10 = v25;
          v16 = v15;
          v6 = v23;
          v11 = v24;
          if (!v16)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }
    }

    else
    {
      v17 = 1;
      v18 = *(v11 + 8 * v10);
      if (!v18)
      {
        return result;
      }

      while (v18 == -8 || *(v12 + 4 * v10) != v6 || *v18)
      {
        v10 = (v10 + v17++) & v9;
        v18 = *(v11 + 8 * v10);
        if (!v18)
        {
          return result;
        }
      }

      v25 = v10;
      v24 = *a1;
    }

    if (v25 != -1)
    {
      v19 = *(v24 + 8 * v25);
      *(v24 + 8 * v25) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
    }
  }

  return result;
}

uint64_t llvm::StringMapImpl::RehashTable(llvm::StringMapImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (3 * v4 < 4 * v3)
  {
    v6 = this;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + *(this + 4)) > v4 >> 3)
    {
      return a2;
    }

    v6 = this;
  }

  v7 = sub_10003DE3C(v4);
  v8 = *v6;
  v9 = *(v6 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v4 - 1;
    v12 = v2;
    do
    {
      v13 = v8[v10];
      if (v13 != -8 && v13 != 0)
      {
        v15 = *(&v8[v9 + 1] + v10);
        v16 = v15 & v11;
        if (v7[v16])
        {
          v17 = 1;
          do
          {
            v18 = v16 + v17++;
            v16 = v18 & v11;
          }

          while (v7[v16]);
        }

        v7[v16] = v13;
        *(&v7[v4 + 1] + v16) = v15;
        if (v10 == v12)
        {
          v2 = v16;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  free(v8);
  *v6 = v7;
  *(v6 + 2) = v4;
  *(v6 + 4) = 0;
  return v2;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t a3)
{
  v4 = *a1;
  v5 = a3 + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    v11 = sub_10003E4AC(v4, v5, v5, 0);
    a2 = v10;
    v6 = v11;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (a3)
  {
LABEL_6:
    memcpy(v6, a2, a3);
  }

LABEL_7:
  *(v6 + a3) = 0;
  return v6;
}

uint64_t sub_10003E4AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = a3 + (1 << a4);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0x1000)
  {
    v13 = *(a1 + 24) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    buffer = llvm::allocate_buffer((4096 << v13), 8uLL);
    v16 = *(a1 + 24);
    if (v16 >= *(a1 + 28))
    {
      v19 = buffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v16 + 1, 8);
      buffer = v19;
      LODWORD(v16) = *(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v16) = buffer;
    ++*(a1 + 24);
    v17 = &buffer[v14];
    result = &buffer[v5 - 1] & -v5;
    *a1 = result + a3;
    *(a1 + 8) = v17;
  }

  else
  {
    v8 = llvm::allocate_buffer((v6 - 1), 8uLL);
    v9 = *(a1 + 72);
    if (v9 >= *(a1 + 76))
    {
      v18 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), v9 + 1, 16);
      v8 = v18;
      LODWORD(v9) = *(a1 + 72);
    }

    v10 = (*(a1 + 64) + 16 * v9);
    *v10 = v8;
    v10[1] = v7;
    ++*(a1 + 72);
    return (v8 + v5 - 1) & -v5;
  }

  return result;
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

uint64_t llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1;
  v9 = (*a1 + a4);
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = memchr(v9, *a2, v6);
    if (v11)
    {
      return v11 - v8;
    }

    else
    {
      return -1;
    }
  }

  v12 = &v9[v6 - a3];
  v13 = a3 - 2;
  if (a3 == 2)
  {
    result = -1;
    while (*(v8 + a4) != *a2)
    {
      ++a4;
      if (v8 + a4 - 1 >= v12)
      {
        return result;
      }
    }

    return a4;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (1)
    {
      v26 = a4;
      v27 = a2;
      v28 = a3;
      if (!memcmp((v8 + a4), a2, a3))
      {
        break;
      }

      a4 = v26 + 1;
      result = -1;
      a2 = v27;
      a3 = v28;
      if (v8 + v26 >= v12)
      {
        return result;
      }
    }

    return v26;
  }

  else
  {
    v14 = v12 + 1;
    v30 = vdupq_n_s8(a3);
    v31 = v30;
    v29[12] = v30;
    v29[13] = v30;
    v29[10] = v30;
    v29[11] = v30;
    v29[8] = v30;
    v29[9] = v30;
    v29[6] = v30;
    v29[7] = v30;
    v29[4] = v30;
    v29[5] = v30;
    v29[2] = v30;
    v29[3] = v30;
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = a2 + 1;
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v29[0] = v30;
    v29[1] = v30;
    do
    {
      *(v29 + *(v16 - 1)) = v13 + 1;
      v18 = *v16;
      v16 += 2;
      *(v29 + v18) = v13;
      v13 -= 2;
      v17 -= 2;
    }

    while (v17);
    if (v10 != v15)
    {
      v19 = v15 + 1;
      do
      {
        *(v29 + a2[v15]) = v10 - v15;
        v15 = v19++;
      }

      while (v10 != v15);
    }

    v20 = a2[v10];
    while (1)
    {
      v21 = v9[v10];
      if (v21 == v20)
      {
        v22 = v9;
        v23 = a2;
        v24 = memcmp(v9, a2, v10);
        a2 = v23;
        v25 = v24;
        v9 = v22;
        if (!v25)
        {
          break;
        }
      }

      v9 += *(v29 + v21);
      if (v9 >= v14)
      {
        return -1;
      }
    }

    return &v22[-v8];
  }
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, char a6)
{
  v29 = *a1;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v29 + 1);
    if (a6)
    {
      do
      {
        v12 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v12 == -1)
        {
          break;
        }

        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v14 = v29;
        v15 = *(a2 + 8);
        if (v15 >= *(a2 + 12))
        {
          v18 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v15 + 1, 16);
          v12 = v18;
          v15 = *(a2 + 8);
        }

        v16 = (*a2 + 16 * v15);
        *v16 = v14;
        v16[1] = v13;
        ++*(a2 + 8);
        v17 = v12 + a4;
        if (v11 < v12 + a4)
        {
          v17 = v11;
        }

        v11 -= v17;
        *&v29 = v14 + v17;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v21 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v21)
        {
          if (v21 == -1)
          {
            break;
          }

          if (v21 >= v11)
          {
            v22 = v11;
          }

          else
          {
            v22 = v21;
          }

          v19 = v29;
          v23 = *(a2 + 8);
          if (v23 >= *(a2 + 12))
          {
            v25 = v21;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v23 + 1, 16);
            v21 = v25;
            v23 = *(a2 + 8);
          }

          v24 = (*a2 + 16 * v23);
          *v24 = v19;
          v24[1] = v22;
          ++*(a2 + 8);
        }

        else
        {
          v19 = v29;
        }

        v20 = v21 + a4;
        if (v11 < v21 + a4)
        {
          v20 = v11;
        }

        v11 -= v20;
        *&v29 = v19 + v20;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v29 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v26 = v29;
    v27 = *(a2 + 8);
    if (v27 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v27 + 1, 16);
      LODWORD(v27) = *(a2 + 8);
    }

    v28 = (*a2 + 16 * v27);
    *v28 = v26;
    v28[1] = v11;
    ++*(a2 + 8);
  }
}

uint64_t llvm::consumeUnsignedInteger(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v3 < 2)
  {
    a2 = 10;
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v11 = *a1;
  v12 = **a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = **a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 != 48)
  {
LABEL_31:
    if (*v11 == 28464)
    {
      a2 = 8;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else if (v12 == 48 && (v16 = v11[1], v15 = v11 + 1, (v16 - 48) <= 9))
    {
      a2 = 8;
      --v3;
      *a1 = v15;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else
    {
      a2 = 10;
    }

    goto LABEL_3;
  }

  v14 = v11[1];
  if ((v14 - 65) < 0x1A)
  {
    v14 += 32;
  }

  if (v14 != 98)
  {
    if (v14 == 120)
    {
      a2 = 16;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  a2 = 2;
  v3 -= 2;
  *a1 = v11 + 2;
  a1[1] = v3;
  if (!v3)
  {
    return 1;
  }

LABEL_3:
  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = v7 - 55;
        if (v8 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = v7 - 87;
        if (v8 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v8 = v7 - 48;
      if (v8 >= a2)
      {
        break;
      }
    }

    v9 = v4 * a2 + v8;
    *a3 = v9;
    if (v9 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v9;
    --v6;
  }

  while (v6);
  if (v3 != v6)
  {
    *a1 = v5;
    a1[1] = v6;
    return 0;
  }

  return 1;
}

uint64_t llvm::getAsUnsignedInteger(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = llvm::consumeUnsignedInteger(&v5, a3, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((llvm::consumeUnsignedInteger(&v8, a3, &v9) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((llvm::consumeUnsignedInteger(&v7, a3, &v9) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

BOOL llvm::StringRef::consumeInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (!a2)
  {
    if (v5 < 2)
    {
      v7 = 10;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_24;
    }

    v8 = *v6;
    if ((v8 - 65) >= 0x1A)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v8 + 32;
    }

    if (v9 == 48)
    {
      v10 = v6[1];
      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v10 == 98)
      {
        v6 += 2;
        v7 = 2;
        v5 -= 2;
        if (v5)
        {
          goto LABEL_24;
        }

        return 1;
      }

      if (v10 == 120)
      {
        v6 += 2;
        v7 = 16;
        v5 -= 2;
        if (!v5)
        {
          return 1;
        }

        goto LABEL_24;
      }
    }

    if (*v6 != 28464)
    {
      if (v8 == 48 && v6[1] - 48 <= 9)
      {
        v7 = 8;
        ++v6;
        if (!--v5)
        {
          return 1;
        }
      }

      else
      {
        v7 = 10;
      }

      goto LABEL_24;
    }

    v6 += 2;
    v7 = 8;
    v5 -= 2;
    if (v5)
    {
      goto LABEL_24;
    }

    return 1;
  }

  v7 = a2;
  if (!v5)
  {
    return 1;
  }

LABEL_24:
  v11 = 0;
  while (v6[v11] == 48)
  {
    if (v5 == ++v11)
    {
      v11 = -1;
      break;
    }
  }

  if (v11 >= v5)
  {
    v11 = v5;
  }

  v12 = &v6[v11];
  v13 = v5 - v11;
  if (v5 == v11)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[]();
    }

    result = 0;
    *a3 = 0;
    *(a3 + 2) = 64;
    *this = v12;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v11 - v5;
    v15 = v5 - v11;
    v16 = -1;
    do
    {
      v17 = 1 << ++v16;
      v14 += v15;
    }

    while (1 << v16 < v7);
    v18 = *(a3 + 2);
    if (v14 >= v18)
    {
      if (v14 > v18)
      {
        llvm::APInt::zext(a3, v14, &v37);
        if (*(a3 + 2) >= 0x41u && *a3)
        {
          operator delete[]();
        }

        *a3 = v37;
        v18 = v38;
        *(a3 + 2) = v38;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v38 = 1;
    v37 = 0;
    v36 = 1;
    v35 = 0;
    if (v17 != v7)
    {
      v34 = v14;
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v33);
      }

      v37 = v7;
      v38 = v34;
      v34 = v14;
      v33 = 0;
      v35 = 0;
      v36 = v14;
      v18 = *(a3 + 2);
    }

    if (v18 <= 0x40)
    {
      *a3 = 0;
      if (v17 != v7)
      {
        goto LABEL_52;
      }

      while (1)
      {
LABEL_70:
        if (*v12 < 48)
        {
          goto LABEL_90;
        }

        v25 = *v12;
        if (v25 >= 0x3A)
        {
          if (v25 <= 0x60)
          {
            if (v25 - 65 >= 0x1A)
            {
              goto LABEL_90;
            }

            v26 = -55;
          }

          else
          {
            if (v25 > 0x7A)
            {
              goto LABEL_90;
            }

            v26 = -87;
          }
        }

        else
        {
          v26 = -48;
        }

        v27 = v26 + v25;
        if (v27 >= v7)
        {
          goto LABEL_90;
        }

        v28 = *(a3 + 2);
        if (v28 <= 0x40)
        {
          break;
        }

        llvm::APInt::shlSlowCase(a3, v16);
        v28 = *(a3 + 2);
        if (v28 >= 0x41)
        {
          **a3 |= v27;
          ++v12;
          if (!--v13)
          {
            goto LABEL_90;
          }
        }

        else
        {
LABEL_86:
          if (v28)
          {
            v31 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
          }

          else
          {
            v31 = 0;
          }

          *a3 = (*a3 | v27) & v31;
          ++v12;
          if (!--v13)
          {
            goto LABEL_90;
          }
        }
      }

      v29 = *a3 << v16;
      if (v28 == v16)
      {
        v29 = 0;
      }

      v30 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
      if (!v28)
      {
        v30 = 0;
      }

      *a3 = v29 & v30;
      goto LABEL_86;
    }

    **a3 = 0;
    bzero((*a3 + 8), (((v18 + 63) >> 3) - 8) & 0xFFFFFFF8);
    if (v17 == v7)
    {
      goto LABEL_70;
    }

LABEL_52:
    while (*v12 >= 48)
    {
      v20 = *v12;
      if (v20 >= 0x3A)
      {
        if (v20 < 0x61)
        {
          if (v20 - 65 > 0x19)
          {
            break;
          }

          v21 = -55;
        }

        else
        {
          if (v20 >= 0x7B)
          {
            break;
          }

          v21 = -87;
        }
      }

      else
      {
        v21 = -48;
      }

      v22 = v21 + v20;
      if (v22 >= v7)
      {
        break;
      }

      llvm::APInt::operator*=(a3, &v37);
      v23 = v36;
      if (v36 > 0x40)
      {
        *v35 = v22;
        bzero(v35 + 1, (((v23 + 63) >> 3) - 8) & 0xFFFFFFF8);
        llvm::APInt::operator+=(a3, &v35);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }

      else
      {
        if (v36)
        {
          v24 = 0xFFFFFFFFFFFFFFFFLL >> -v36;
        }

        else
        {
          v24 = 0;
        }

        v35 = (v24 & v22);
        llvm::APInt::operator+=(a3, &v35);
        ++v12;
        if (!--v13)
        {
          break;
        }
      }
    }

LABEL_90:
    v32 = *(this + 1);
    result = v32 == v13;
    if (v32 != v13)
    {
      *this = v12;
      *(this + 1) = v13;
    }

    if (v36 >= 0x41 && v35)
    {
      operator delete[]();
    }

    if (v38 >= 0x41)
    {
      if (v37)
      {
        operator delete[]();
      }
    }
  }

  return result;
}

uint64_t llvm::StringRef::getAsInteger(llvm::StringRef *this, unsigned int a2, llvm::APInt *a3)
{
  v4 = *this;
  LODWORD(result) = llvm::StringRef::consumeInteger(&v4, a2, a3);
  if (*(&v4 + 1))
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t llvm::StringRef::getAsDouble(llvm::StringRef *this, double *a2, int a3)
{
  v6 = llvm::detail::IEEEFloat::IEEEFloat(&v16, 0.0);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v15, &v16, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(&v16);
  v8 = llvm::APFloat::convertFromString(v15, *this, *(this + 1), 1, &v16);
  if ((v17 & 1) == 0)
  {
    if (v16)
    {
      v10 = 1;
      if ((v16 & 0x10) == 0 || !a3)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = 0;
    *a2 = llvm::APFloat::convertToDouble(v15);
    goto LABEL_10;
  }

  v9 = v16;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = v9;
  sub_10002C548(&v13, &v14);
  v8 = v13;
  if (v13)
  {
    v8 = (*(*v13 + 8))(v13);
  }

  v10 = 1;
LABEL_10:
  if (v17)
  {
    v8 = v16;
    v16 = 0;
    if (v8)
    {
      v8 = (*(*v8 + 8))(v8);
    }
  }

  v11 = v15[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v8) == v11)
  {
    sub_10002B154(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }

  return v10;
}

uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &off_1002D4778;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  return a1;
}

BOOL llvm::StdThreadPool::grow(pthread_rwlock_t **this, int a2)
{
  llvm::sys::RWMutexImpl::lock(this + 4);
  v4 = this[1];
  v5 = this[2];
  v6 = (v5 - v4) >> 3;
  v7 = *(this + 75);
  if (v6 < v7)
  {
    v8 = v7 >= a2 ? a2 : *(this + 75);
    if (v8 > ((v5 - v4) >> 3))
    {
      v9 = this[3];
      if (v5 >= v9)
      {
        if (!((v6 + 1) >> 61))
        {
          v10 = v9 - v4;
          v11 = v10 >> 2;
          if (v10 >> 2 <= v6 + 1)
          {
            v11 = v6 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            sub_100003FC0();
          }

          operator new();
        }

        sub_100003FC0();
      }

      operator new();
    }
  }

  return llvm::sys::RWMutexImpl::unlock(this + 4);
}

uint64_t llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  v5 = (a2 >> 4) ^ (a2 >> 9);
  do
  {
    v60 = 0;
    v58 = 0;
    __lk.__m_ = v4;
    v7 = 1;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    v8 = *(a1 + 288);
    if (v8 == 1)
    {
      if (a2)
      {
        LOBYTE(v8) = 1;
        while (1)
        {
          v9 = *(a1 + 88);
          v7 = v9 != 0;
          if (v9)
          {
            break;
          }

          v10 = *(a1 + 280);
          if (!v10)
          {
            goto LABEL_27;
          }

          v11 = *(a1 + 264);
          v12 = v10 - 1;
          v13 = v12 & v5;
          v14 = *(v11 + 16 * (v12 & v5));
          if (v14 != a2)
          {
            v15 = 1;
            while (v14 != -4096)
            {
              v16 = v13 + v15++;
              v13 = v16 & v12;
              v14 = *(v11 + 16 * (v16 & v12));
              if (v14 == a2)
              {
                goto LABEL_10;
              }
            }

LABEL_27:
            v7 = 0;
            if (v8)
            {
              goto LABEL_31;
            }

            goto LABEL_18;
          }

LABEL_10:
          std::condition_variable::wait((a1 + 160), &__lk);
          LOBYTE(v8) = *(a1 + 288);
          if ((v8 & 1) == 0)
          {
            LOBYTE(v8) = 0;
            goto LABEL_29;
          }
        }
      }

      else
      {
        if (*(a1 + 88))
        {
          goto LABEL_31;
        }

        do
        {
          std::condition_variable::wait((a1 + 160), &__lk);
          LOBYTE(v8) = *(a1 + 288);
        }

        while ((v8 & 1) != 0 && !*(a1 + 88));
LABEL_29:
        v7 = 1;
      }
    }

    if (v8)
    {
LABEL_31:
      v19 = !v7;
      if (!a2)
      {
        v19 = 0;
      }

      if (v19)
      {
        v17 = 0;
        goto LABEL_53;
      }

      goto LABEL_34;
    }

LABEL_18:
    v17 = 0;
    if (a2)
    {
      v18 = v7;
    }

    else
    {
      v18 = 1;
    }

    if (!*(a1 + 88) || (v18 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_34:
    ++*(a1 + 256);
    v20 = *(a1 + 80);
    v21 = *(*(a1 + 56) + 8 * (v20 / 0x66));
    v22 = v60;
    v60 = 0;
    if (v22 == v59)
    {
      (*(*v22 + 32))(v22);
      v23 = v21 + 40 * (v20 % 0x66);
      v24 = *(v23 + 24);
      if (v24)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      v23 = v21 + 40 * (v20 % 0x66);
      v24 = *(v23 + 24);
      if (v24)
      {
LABEL_38:
        if (v24 == v23)
        {
          v60 = v59;
          (*(**(v23 + 24) + 24))(*(v23 + 24), v59);
        }

        else
        {
          v60 = v24;
          *(v23 + 24) = 0;
        }

        goto LABEL_44;
      }
    }

    v60 = 0;
LABEL_44:
    v25 = *(a1 + 80);
    v26 = *(*(a1 + 56) + 8 * (v25 / 0x66));
    v27 = v25 % 0x66;
    v58 = *(v26 + 40 * v27 + 32);
    if (v58)
    {
      v28 = sub_1000400B4(a1 + 264, &v58);
      ++*v28;
      v29 = *(a1 + 80);
      v26 = *(*(a1 + 56) + 8 * (v29 / 0x66));
      v27 = v29 % 0x66;
    }

    v30 = v26 + 40 * v27;
    v31 = *(v30 + 24);
    if (v31 == v30)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = vaddq_s64(*(a1 + 80), xmmword_1002B0300);
    *(a1 + 80) = v32;
    if (v32.i64[0] >= 0xCCuLL)
    {
      operator delete(**(a1 + 56));
      *(a1 + 56) += 8;
      *(a1 + 80) -= 102;
    }

    v17 = 1;
LABEL_53:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v17)
    {
      goto LABEL_86;
    }

    if (!v60)
    {
      sub_10000520C();
    }

    (*(*v60 + 48))(v60);
    std::mutex::lock(v4);
    v33 = *(a1 + 256) - 1;
    *(a1 + 256) = v33;
    v34 = v58;
    if (v58)
    {
      v35 = *(a1 + 264);
      v36 = *(a1 + 280);
      if (!v36)
      {
        goto LABEL_64;
      }

      v37 = (v36 - 1) & ((v58 >> 4) ^ (v58 >> 9));
      v38 = *(v35 + 16 * v37);
      if (v38 != v58)
      {
        v39 = 1;
        while (v38 != -4096)
        {
          v40 = v37 + v39++;
          v37 = v40 & (v36 - 1);
          v38 = *(v35 + 16 * v37);
          if (v38 == v58)
          {
            goto LABEL_65;
          }
        }

LABEL_64:
        v37 = *(a1 + 280);
      }

LABEL_65:
      v41 = v35 + 16 * v37;
      v42 = *(v41 + 8) - 1;
      *(v41 + 8) = v42;
      if (v42)
      {
        if (v34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        *v41 = -8192;
        *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
        v34 = v58;
        if (v58)
        {
LABEL_67:
          if (v36)
          {
            v43 = v36 - 1;
            v44 = (v36 - 1) & ((v34 >> 4) ^ (v34 >> 9));
            v45 = *(v35 + 16 * v44);
            if (v45 == v34)
            {
              goto LABEL_75;
            }

            v46 = 1;
            while (v45 != -4096)
            {
              v47 = v44 + v46++;
              v44 = v47 & v43;
              v45 = *(v35 + 16 * v44);
              if (v45 == v34)
              {
                goto LABEL_75;
              }
            }
          }

          v50 = *(a1 + 56);
          if (*(a1 + 64) != v50)
          {
            v51 = *(a1 + 80);
            v52 = (v50 + 8 * (v51 / 0x66));
            v53 = *v52;
            v54 = *v52 + 40 * (v51 % 0x66);
            v55 = *(v50 + 8 * ((*(a1 + 88) + v51) / 0x66)) + 40 * ((*(a1 + 88) + v51) % 0x66);
            while (v54 != v55)
            {
              if (*(v54 + 32) == v34)
              {
                goto LABEL_75;
              }

              v54 += 40;
              if (v54 - v53 == 4080)
              {
                v56 = v52[1];
                ++v52;
                v53 = v56;
                v54 = v56;
              }
            }
          }

          std::mutex::unlock(v4);
          std::condition_variable::notify_all((a1 + 208));
          v49 = (a1 + 160);
          goto LABEL_85;
        }
      }
    }

    if (v33)
    {
LABEL_75:
      std::mutex::unlock(v4);
      goto LABEL_86;
    }

    v48 = *(a1 + 88);
    std::mutex::unlock(v4);
    if (!v48)
    {
      v49 = (a1 + 208);
LABEL_85:
      std::condition_variable::notify_all(v49);
    }

LABEL_86:
    result = v60;
    if (v60 == v59)
    {
      result = (*(*v60 + 32))(v60);
    }

    else if (v60)
    {
      result = (*(*v60 + 40))();
    }
  }

  while ((v17 & 1) != 0);
  return result;
}

uint64_t sub_1000400B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_1000415A0(a1, v2);
    sub_1000414FC(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 32));
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
LABEL_5:
    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));
    v24.__m_ = (a1 + 96);
    v24.__owns_ = 1;
    std::mutex::lock((a1 + 96));
    v9 = (a2 >> 4) ^ (a2 >> 9);
    v10 = *(a1 + 280);
    if (v10)
    {
      while (1)
      {
        v11 = *(a1 + 264);
        v12 = v10 - 1;
        v13 = v12 & v9;
        v14 = *(v11 + 16 * (v12 & v9));
        if (v14 != a2)
        {
          break;
        }

LABEL_7:
        std::condition_variable::wait((a1 + 208), &v24);
        v10 = *(a1 + 280);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *(v11 + 16 * v13);
        if (v14 == a2)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_13:
    v17 = *(a1 + 56);
    if (*(a1 + 64) != v17)
    {
      v18 = *(a1 + 80);
      v19 = (v17 + 8 * (v18 / 0x66));
      v20 = *v19;
      v21 = *v19 + 40 * (v18 % 0x66);
      v22 = *(v17 + 8 * ((*(a1 + 88) + v18) / 0x66)) + 40 * ((*(a1 + 88) + v18) % 0x66);
      while (v21 != v22)
      {
        if (*(v21 + 32) == a2)
        {
          goto LABEL_7;
        }

        v21 += 40;
        if (v21 - v20 == 4080)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }

    if (v24.__owns_)
    {
      std::mutex::unlock(v24.__m_);
    }
  }

  else
  {
    v8 = current_id_impl;
    while (v8 != llvm::llvm_thread_get_id_impl(*v6, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));

    llvm::StdThreadPool::processTasks(a1, a2);
  }
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &off_1002D4778;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  llvm::deallocate_buffer(*(this + 33), (16 * *(this + 70)), 8uLL);
  std::condition_variable::~condition_variable((this + 208));
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  sub_100040ED8(this + 48);
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 4);
  v5 = *(this + 1);
  if (v5)
  {
    for (j = *(this + 2); j != v5; j -= 8)
    {
      if (*(j - 1))
      {
        std::terminate();
      }
    }

    *(this + 2) = v5;
    operator delete(v5);
  }
}

{
  llvm::StdThreadPool::~StdThreadPool(this);

  operator delete();
}

BOOL sub_100040598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10);
    }

    else
    {
      v11 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  sub_1000406F4((a1 + 48), v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  return llvm::StdThreadPool::grow(a1, v7 + v8);
}

uint64_t sub_1000406F4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_100040864(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    if (v9)
    {
LABEL_7:
      if (v9 == a2)
      {
        *(v8 + 24) = v8;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v8);
        v4 = a1[1];
        v5 = a1[2];
      }

      else
      {
        *(v8 + 24) = v9;
        *(a2 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    v9 = *(a2 + 24);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 24) = 0;
LABEL_12:
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = (v4 + 8 * (v12 / 0x66));
  v14 = *v13 + 40 * (v12 % 0x66);
  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == *v13)
  {
    return *(v13 - 1) + 4040;
  }

  else
  {
    return v15 - 40;
  }
}

void *sub_100040864(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

    sub_100003FC0();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_100040BB4(a1, &v11);
}

void *sub_100040BB4(void *result, void *a2)
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

      sub_100003FC0();
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

const void **sub_100040D40(const void **result, void *a2)
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

      sub_100003FC0();
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

uint64_t sub_100040ED8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(*(a1 + 40) + v4) / 0x66] + 40 * ((*(a1 + 40) + v4) % 0x66);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 40;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 51;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 102;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000410D0(uint64_t a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v4[0] = "llvm-worker-{0}";
  v4[1] = 15;
  v4[2] = &v7;
  v4[3] = 1;
  v5 = 1;
  v6[0] = &off_1002D47B8;
  v6[1] = a1 + 8;
  v7 = v6;
  v9 = 263;
  v8 = v4;
  llvm::set_thread_name(&v8, a2);
  llvm::ThreadPoolStrategy::apply_thread_strategy((v3 + 292), *(a1 + 8));
  llvm::StdThreadPool::processTasks(v3, 0);
  operator delete();
}

void *sub_1000411B0(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = sub_1000412F0(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (llvm::isPrefixedHexStyle(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

const mach_header_64 *sub_1000412F0(uint64_t a1)
{
  if (!llvm::StringRef::starts_with_insensitive(a1, "x", 1uLL))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    v4 = *a1;
    if (**a1 != 120)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *a1;
  if (**a1 == 11640)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 1);
  }

  else if (*v4 == 11608)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return &_mh_execute_header;
  }

  else if (*v4 == 11128)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 3);
  }

  else
  {
    if (*v4 == 120)
    {
LABEL_11:
      *a1 = v4 + 1;
      *(a1 + 8) = v2 - 1;
      return (&_mh_execute_header.magic + 3);
    }

    if (*v4 != 11096)
    {
LABEL_5:
      sub_100041470(a1, "X", 1uLL);
      return (&_mh_execute_header.magic + 2);
    }

    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 2);
  }
}

uint64_t sub_100041470(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  if (a3)
  {
    v7 = a1;
    v8 = a3;
    v9 = memcmp(*a1, a2, a3);
    a3 = v8;
    v10 = v9;
    a1 = v7;
    if (v10)
    {
      return 0;
    }
  }

  *a1 = &v6[a3];
  a1[1] = v4;
  return 1;
}

uint64_t sub_1000414FC(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_1000415A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v23 = &buffer[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &buffer[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -4096;
        *v20 = -4096;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

void llvm::CreateInfoOutputFile()
{
  if (!atomic_load_explicit(&qword_1002E4748, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_1002E4748, sub_100044870, sub_1000448C4);
  }

  if (*(qword_1002E4748 + 23) < 0)
  {
    v2 = *(qword_1002E4748 + 8);
    if (!v2)
    {
      goto LABEL_11;
    }

    if (v2 != 1 || **qword_1002E4748 != 45)
    {
LABEL_10:
      std::system_category();
      operator new();
    }
  }

  else
  {
    if (*(qword_1002E4748 + 23) != 1)
    {
      if (*(qword_1002E4748 + 23))
      {
        goto LABEL_10;
      }

LABEL_11:
      operator new();
    }

    if (*qword_1002E4748 != 45)
    {
      goto LABEL_10;
    }
  }

  operator new();
}

void llvm::TimerGroup::removeTimer(uint64_t *a1, uint64_t a2)
{
  if (!atomic_load_explicit(&qword_1002E4748, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_1002E4748, sub_100044870, sub_1000448C4);
  }

  v4 = qword_1002E4748;
  std::recursive_mutex::lock((qword_1002E4748 + 600));
  if (*(a2 + 129) == 1)
  {
    v6 = a1[8];
    if (v6 >= a1[9])
    {
      v5 = sub_100042D48(a1 + 7, a2, a2 + 80, a2 + 104);
LABEL_12:
      a1[8] = v5;
      goto LABEL_13;
    }

    v7 = *a2;
    v8 = *(a2 + 16);
    *(v6 + 32) = *(a2 + 32);
    *v6 = v7;
    *(v6 + 16) = v8;
    if (*(a2 + 103) < 0)
    {
      sub_100003FD0((v6 + 40), *(a2 + 80), *(a2 + 88));
      if ((*(a2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *(a2 + 80);
      *(v6 + 56) = *(a2 + 96);
      *(v6 + 40) = v9;
      if ((*(a2 + 127) & 0x80000000) == 0)
      {
LABEL_7:
        v10 = *(a2 + 104);
        *(v6 + 80) = *(a2 + 120);
        *(v6 + 64) = v10;
LABEL_11:
        v5 = (v6 + 88);
        goto LABEL_12;
      }
    }

    sub_100003FD0((v6 + 64), *(a2 + 104), *(a2 + 112));
    goto LABEL_11;
  }

LABEL_13:
  *(a2 + 136) = 0;
  v12 = *(a2 + 144);
  v11 = *(a2 + 152);
  *v12 = v11;
  if (v11)
  {
    *(v11 + 144) = v12;
  }

  if (!a1[6] && a1[7] != a1[8])
  {
    llvm::CreateInfoOutputFile(&v13, v5);
    llvm::TimerGroup::PrintQueuedTimers(a1, v13);
  }

  std::recursive_mutex::unlock((v4 + 600));
}

double *llvm::TimeRecord::print(double *this, const TimeRecord *a2, llvm::raw_ostream *a3)
{
  v5 = this;
  v6 = *&a2->scale;
  if (v6 == 0.0)
  {
LABEL_7:
    v8 = *(&a2->base + 4);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v6 >= 0.0000001)
  {
    v9 = this[1];
    v22 = &off_1002D47E8;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v9;
    v25 = v9 * 100.0 / v6;
    this = llvm::raw_ostream::operator<<(a3, &v22);
    goto LABEL_7;
  }

  v7 = *(a3 + 4);
  if ((*(a3 + 3) - v7) > 0x11)
  {
    *(v7 + 16) = 8224;
    *v7 = *"        -----     ";
    *(a3 + 4) += 18;
    v8 = *(&a2->base + 4);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v8 = *(&a2->base + 4);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (v8 >= 0.0000001)
  {
    v11 = *(v5 + 16);
    v22 = &off_1002D47E8;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v11;
    v25 = v11 * 100.0 / v8;
    this = llvm::raw_ostream::operator<<(a3, &v22);
  }

  else
  {
    v10 = *(a3 + 4);
    if ((*(a3 + 3) - v10) > 0x11)
    {
      *(v10 + 16) = 8224;
      *v10 = *"        -----     ";
      *(a3 + 4) += 18;
    }

    else
    {
      this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    }
  }

LABEL_15:
  v12 = *&a2->scale + *(&a2->base + 4);
  if (v12 == 0.0)
  {
    goto LABEL_21;
  }

  if (v12 >= 0.0000001)
  {
    v15 = *(v5 + 8) + *(v5 + 16);
    v22 = &off_1002D47E8;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v15;
    v25 = v15 * 100.0 / v12;
    this = llvm::raw_ostream::operator<<(a3, &v22);
LABEL_21:
    v14 = *&a2->value;
    if (*&a2->value >= 0.0000001)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v13 = *(a3 + 4);
  if ((*(a3 + 3) - v13) > 0x11)
  {
    *(v13 + 16) = 8224;
    *v13 = *"        -----     ";
    *(a3 + 4) += 18;
    v14 = *&a2->value;
    if (*&a2->value >= 0.0000001)
    {
      goto LABEL_29;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v14 = *&a2->value;
    if (*&a2->value >= 0.0000001)
    {
LABEL_29:
      v18 = *v5;
      v19 = *v5 * 100.0;
      v22 = &off_1002D47E8;
      v23 = "  %7.4f (%5.1f%%)";
      v24 = v18;
      v25 = v19 / v14;
      this = llvm::raw_ostream::operator<<(a3, &v22);
      v17 = *(a3 + 4);
      if (*(a3 + 3) - v17 <= 1uLL)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  v16 = *(a3 + 4);
  if ((*(a3 + 3) - v16) > 0x11)
  {
    *(v16 + 16) = 8224;
    *v16 = *"        -----     ";
    *(a3 + 4) += 18;
    v17 = *(a3 + 4);
    if (*(a3 + 3) - v17 <= 1uLL)
    {
      goto LABEL_30;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v17 = *(a3 + 4);
    if (*(a3 + 3) - v17 <= 1uLL)
    {
LABEL_30:
      this = llvm::raw_ostream::write(a3, "  ", 2uLL);
      if (!*&a2[1].value.hi)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

LABEL_26:
  *v17 = 8224;
  *(a3 + 4) += 2;
  if (*&a2[1].value.hi)
  {
LABEL_31:
    v20 = *(v5 + 24);
    v22 = &off_1002D4808;
    v23 = "%9lld  ";
    v24 = v20;
    this = llvm::raw_ostream::operator<<(a3, &v22);
  }

LABEL_32:
  if (a2[1].base)
  {
    v21 = *(v5 + 32);
    v22 = &off_1002D4808;
    v23 = "%9lld  ";
    v24 = v21;
    return llvm::raw_ostream::operator<<(a3, &v22);
  }

  return this;
}

void llvm::TimerGroup::~TimerGroup(llvm::TimerGroup *this)
{
  for (i = *(this + 6); i; i = *(this + 6))
  {
    llvm::TimerGroup::removeTimer(this, i);
  }

  if (!atomic_load_explicit(&qword_1002E4748, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_1002E4748, sub_100044870, sub_1000448C4);
  }

  v3 = qword_1002E4748;
  std::recursive_mutex::lock((qword_1002E4748 + 600));
  v5 = *(this + 10);
  v4 = *(this + 11);
  *v5 = v4;
  if (v4)
  {
    *(v4 + 80) = v5;
  }

  std::recursive_mutex::unlock((v3 + 600));
  v6 = *(this + 7);
  if (v6)
  {
    v7 = *(this + 8);
    v8 = *(this + 7);
    if (v7 == v6)
    {
LABEL_17:
      *(this + 8) = v6;
      operator delete(v8);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 24));
        if (*(v7 - 25) < 0)
        {
LABEL_15:
          operator delete(*(v7 - 48));
        }
      }

      else if (*(v7 - 25) < 0)
      {
        goto LABEL_15;
      }

      v7 -= 88;
      if (v7 == v6)
      {
        v8 = *(this + 7);
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_22;
  }
}

void llvm::TimerGroup::PrintQueuedTimers(llvm::TimerGroup *this, llvm::raw_ostream *a2)
{
  if (!atomic_load_explicit(&qword_1002E4748, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_1002E4748, sub_100044870, sub_1000448C4);
  }

  if (*(qword_1002E4748 + 536) == 1)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    v6 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3));
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    sub_100042EE0(v4, v5, v20, v7, 1);
  }

  v8 = 0uLL;
  *&v20[1] = 0u;
  v21 = 0u;
  v10 = *(this + 7);
  v9 = *(this + 8);
  if (v10 == v9)
  {
    v20[0] = 0;
    v15 = *(a2 + 4);
    if ((*(a2 + 3) - v15) <= 2)
    {
LABEL_18:
      llvm::raw_ostream::write(a2, "===", 3uLL);
LABEL_19:
      operator new();
    }

LABEL_12:
    *(v15 + 2) = 61;
    *v15 = 15677;
    *(a2 + 4) += 3;
    goto LABEL_19;
  }

  v11 = v9 - v10 - 88;
  if (v11 > 0x57)
  {
    v16 = v11 / 0x58 + 1;
    v14 = v10 + 88 * (v16 & 0x7FFFFFFFFFFFFFELL);
    v17 = v10 + 88;
    v12 = 0uLL;
    v13 = 0.0;
    v18 = v16 & 0x7FFFFFFFFFFFFFELL;
    v19 = 0uLL;
    do
    {
      v19 = vaddq_s64(v19, *(v17 - 64));
      v8 = vaddq_s64(v8, *(v17 + 24));
      v12 = vaddq_f64(vaddq_f64(v12, *(v17 - 80)), *(v17 + 8));
      v13 = v13 + *(v17 - 88) + *v17;
      v17 += 176;
      v18 -= 2;
    }

    while (v18);
    v8 = vaddq_s64(v8, v19);
    if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
    {
LABEL_17:
      *&v20[1] = v12;
      v21 = v8;
      *v20 = v13;
      v15 = *(a2 + 4);
      if ((*(a2 + 3) - v15) <= 2)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0uLL;
    v13 = 0.0;
    v14 = *(this + 7);
  }

  do
  {
    v13 = *v14 + v13;
    v12 = vaddq_f64(*(v14 + 8), v12);
    v8 = vaddq_s64(v8, *(v14 + 24));
    v14 += 88;
  }

  while (v14 != v9);
  goto LABEL_17;
}

uint64_t sub_1000429D0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = *a1;
    v9 = &v2[v3];
    if (v2 == v9)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v4 = *a1;
  if (*v2)
  {
    v5 = *v2 == -8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    do
    {
      v7 = v4[1];
      ++v4;
      v6 = v7;
      if (v7)
      {
        v8 = v6 == -8;
      }

      else
      {
        v8 = 1;
      }
    }

    while (v8);
  }

  v9 = &v2[v3];
  if (v4 != v9)
  {
LABEL_14:
    v10 = *v4;
    do
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        llvm::TimerGroup::~TimerGroup(v11);
        operator delete();
      }

      do
      {
        v12 = v4[1];
        ++v4;
        v10 = v12;
        if (v12)
        {
          v13 = v10 == -8;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (v4 != v9);
  }

LABEL_22:
  if (*(a1 + 12))
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = 8 * v14;
      do
      {
        v17 = *(*a1 + v15);
        if (v17 != -8 && v17 != 0)
        {
          v19 = *v17;
          sub_100042AF8(v17 + 16);
          llvm::deallocate_buffer(v17, (v19 + 41), 8uLL);
        }

        v15 += 8;
      }

      while (v16 != v15);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_100042AF8(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 == -8 || v5 == 0)
        {
          goto LABEL_5;
        }

        v7 = *v5;
        v8 = *(v5 + 18);
        if (v8)
        {
          llvm::TimerGroup::removeTimer(v8, v5 + 8);
        }

        if (*(v5 + 135) < 0)
        {
          operator delete(*(v5 + 14));
          if (*(v5 + 111) < 0)
          {
LABEL_16:
            operator delete(*(v5 + 11));
          }
        }

        else if (*(v5 + 111) < 0)
        {
          goto LABEL_16;
        }

        llvm::deallocate_buffer(v5, (v7 + 169), 8uLL);
LABEL_5:
        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_100042C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 64;
    v7 = (a2 + 40);
    while (1)
    {
      v9 = *(v7 - 40);
      v10 = *(v7 - 24);
      *(v6 - 32) = *(v7 - 1);
      *(v6 - 64) = v9;
      *(v6 - 48) = v10;
      v11 = (v6 - 24);
      if ((*(v7 + 23) & 0x80000000) == 0)
      {
        break;
      }

      sub_100003FD0(v11, *v7, *(v7 + 1));
      if (*(v7 + 47) < 0)
      {
LABEL_3:
        sub_100003FD0(v6, *(v7 + 3), *(v7 + 4));
        v8 = v7 - 40;
        v6 += 88;
        v7 = (v7 + 88);
        if (v8 + 88 == a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
LABEL_8:
        v13 = *(v7 + 24);
        *(v6 + 16) = *(v7 + 5);
        *v6 = v13;
        v6 += 88;
        v14 = v7 - 40;
        v7 = (v7 + 88);
        if (v14 + 88 == a3)
        {
          while (1)
          {
LABEL_11:
            if (v5 == a3)
            {
              return;
            }

            if (*(v5 + 87) < 0)
            {
              operator delete(*(v5 + 64));
              if ((*(v5 + 63) & 0x80000000) == 0)
              {
                goto LABEL_10;
              }
            }

            else if ((*(v5 + 63) & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            operator delete(*(v5 + 40));
LABEL_10:
            v5 += 88;
          }
        }
      }
    }

    v12 = *v7;
    *(v6 - 8) = *(v7 + 2);
    *v11 = v12;
    if (*(v7 + 47) < 0)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }
}

uint64_t sub_100042D48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_100003FC0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v7 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v8 = 8 * ((a1[1] - *a1) >> 3);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  if (*(a3 + 23) < 0)
  {
    sub_100003FD0((v8 + 40), *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v8 + 40) = *a3;
    *(v8 + 56) = *(a3 + 16);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      *(v8 + 64) = *a4;
      *(v8 + 80) = *(a4 + 16);
      goto LABEL_15;
    }
  }

  sub_100003FD0((v8 + 64), *a4, *(a4 + 8));
LABEL_15:
  v10 = a1[1];
  v11 = v8 + *a1 - v10;
  sub_100042C30(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v8 + 88;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 88;
}

void sub_100042EE0(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 11;
  v58 = (a2 - 264);
  v59 = a2 - 11;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v52 = *(a2 - 11);
      v45 = (a2 - 88);
      if (v52 < *a1)
      {
LABEL_80:
        v48 = a1;
LABEL_81:
        v51 = v45;
LABEL_82:

        sub_100044140(v48, v51);
      }

      return;
    }

LABEL_10:
    if (v12 <= 2111)
    {
      if (a5)
      {

        sub_1000436A0(a1, a2);
      }

      else
      {

        sub_10004384C(a1, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v53 = (v13 - 2) >> 1;
        v54 = v53 + 1;
        v55 = a1 + 11 * v53;
        do
        {
          sub_100044270(a1, a3, 0x2E8BA2E8BA2E8BA3 * (v12 >> 3), v55);
          v55 -= 11;
          --v54;
        }

        while (v54);
        v56 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
        do
        {
          sub_100044488(a1, a2, a3, v56);
          a2 = (a2 - 88);
        }

        while (v56-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (a1 + 88 * (v13 >> 1));
    v16 = *v8;
    if (v12 < 0x2C01)
    {
      v20 = *a1;
      if (*a1 >= *v15)
      {
        if (v16 < v20)
        {
          sub_100044140(a1, (a2 - 88));
          if (*a1 < *v15)
          {
            v21 = v15;
            v22 = a1;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = v15;
        if (v16 < v20)
        {
          goto LABEL_22;
        }

        sub_100044140(v15, a1);
        if (*v8 < *a1)
        {
          v21 = a1;
LABEL_22:
          v22 = (a2 - 88);
LABEL_35:
          sub_100044140(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v17 = *v15;
    if (*v15 < *a1)
    {
      v18 = a1;
      if (v16 >= v17)
      {
        sub_100044140(a1, v15);
        if (*v8 >= *v15)
        {
          goto LABEL_27;
        }

        v18 = v15;
      }

      v19 = (a2 - 88);
      goto LABEL_26;
    }

    if (v16 < v17)
    {
      sub_100044140(v15, (a2 - 88));
      if (*v15 < *a1)
      {
        v18 = a1;
        v19 = v15;
LABEL_26:
        sub_100044140(v18, v19);
      }
    }

LABEL_27:
    v23 = a1 + 11 * v14;
    v25 = *(v23 - 11);
    v24 = (v23 - 11);
    v26 = v25;
    v27 = *v59;
    if (v25 < *(a1 + 11))
    {
      v28 = (a1 + 88);
      if (v27 >= v26)
      {
        sub_100044140(v28, v24);
        if (*v59 >= *v24)
        {
          goto LABEL_42;
        }

        v28 = v24;
      }

      v29 = a2 - 11;
      goto LABEL_41;
    }

    if (v27 < v26)
    {
      sub_100044140(v24, v59);
      if (*v24 < *(a1 + 11))
      {
        v28 = (a1 + 88);
        v29 = v24;
LABEL_41:
        sub_100044140(v28, v29);
      }
    }

LABEL_42:
    v30 = a1 + 11 * v14;
    v32 = v30[11];
    v31 = (v30 + 11);
    v33 = v32;
    v34 = *v58;
    if (v32 < *(a1 + 22))
    {
      v35 = a1 + 11;
      if (v34 >= v33)
      {
        sub_100044140(v35, v31);
        if (*v58 >= *v31)
        {
          goto LABEL_51;
        }

        v35 = v31;
      }

      v36 = (a2 - 264);
      goto LABEL_50;
    }

    if (v34 < v33)
    {
      sub_100044140(v31, v58);
      if (*v31 < *(a1 + 22))
      {
        v35 = a1 + 11;
        v36 = v31;
LABEL_50:
        sub_100044140(v35, v36);
      }
    }

LABEL_51:
    v37 = *v15;
    v38 = *v31;
    if (*v15 < *v24)
    {
      v39 = v24;
      if (v38 >= v37)
      {
        sub_100044140(v24, v15);
        if (*v31 >= *v15)
        {
          goto LABEL_60;
        }

        v39 = v15;
      }

      v40 = v31;
      goto LABEL_59;
    }

    if (v38 < v37)
    {
      sub_100044140(v15, v31);
      if (*v15 < *v24)
      {
        v39 = v24;
        v40 = v15;
LABEL_59:
        sub_100044140(v39, v40);
      }
    }

LABEL_60:
    sub_100044140(a1, v15);
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(a1 - 11) >= *a1)
    {
      v9 = sub_1000439D8(a1, a2);
      goto LABEL_67;
    }

LABEL_62:
    v41 = sub_100043BA8(a1, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_65;
    }

    v43 = sub_100043D7C(a1, v41);
    v9 = v41 + 88;
    if (sub_100043D7C((v41 + 88), a2))
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_65:
      sub_100042EE0(a1, v41, a3, -v11, a5 & 1);
      v9 = v41 + 88;
LABEL_67:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      sub_100043588(a1, (a1 + 88), a1 + 11, (a2 - 88));
      return;
    }

    if (v13 == 5)
    {
      sub_100043588(a1, (a1 + 88), a1 + 11, (a1 + 264));
      v50 = *(a2 - 11);
      v49 = (a2 - 88);
      if (v50 < *(a1 + 33))
      {
        sub_100044140((a1 + 264), v49);
        if (*(a1 + 33) < *(a1 + 22))
        {
          sub_100044140(a1 + 11, (a1 + 264));
          if (*(a1 + 22) < *(a1 + 11))
          {
            sub_100044140((a1 + 88), a1 + 11);
            if (*(a1 + 11) < *a1)
            {
              v51 = (a1 + 88);
              v48 = a1;
              goto LABEL_82;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v44 = *(a1 + 11);
  v46 = *(a2 - 11);
  v45 = (a2 - 88);
  v47 = v46;
  if (v44 >= *a1)
  {
    if (v47 < v44)
    {
      sub_100044140((a1 + 88), v45);
      if (*(a1 + 11) < *a1)
      {
        v48 = a1;
        v51 = (a1 + 88);
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (v47 < v44)
    {
      goto LABEL_80;
    }

    sub_100044140(a1, (a1 + 88));
    if (*v45 < *(a1 + 11))
    {
      v48 = (a1 + 88);
      goto LABEL_81;
    }
  }
}

void sub_100043588(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      sub_100044140(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_100044140(a1, v10);
      goto LABEL_10;
    }

    sub_100044140(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    sub_100044140(a3, a4);
    if (*a3 < *a2)
    {
      sub_100044140(a2, a3);
      if (*a2 < *v7)
      {

        sub_100044140(v7, a2);
      }
    }
  }
}

void sub_1000436A0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v19 = v2;
    v20 = v3;
    v6 = a1 + 88;
    if (a1 + 88 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (*(v8 + 88) >= *v8)
        {
          goto LABEL_4;
        }

        v14 = *v6;
        v15 = *(v6 + 16);
        v16 = *(v6 + 32);
        if (*(v8 + 151) < 0)
        {
          sub_100003FD0(&v17, *(v8 + 128), *(v8 + 136));
          if (*(v8 + 175) < 0)
          {
LABEL_10:
            sub_100003FD0(&__p, *(v8 + 152), *(v8 + 160));
            goto LABEL_11;
          }
        }

        else
        {
          v17 = *(v8 + 128);
          if (*(v8 + 175) < 0)
          {
            goto LABEL_10;
          }
        }

        __p = *(v8 + 152);
LABEL_11:
        v10 = v7;
        while (1)
        {
          v11 = a1 + v10;
          v12 = *(a1 + v10 + 16);
          *(v11 + 88) = *(a1 + v10);
          *(v11 + 104) = v12;
          *(v11 + 120) = *(a1 + v10 + 32);
          std::string::operator=((a1 + v10 + 128), (a1 + v10 + 40));
          std::string::operator=((v11 + 152), (v11 + 64));
          if (!v10)
          {
            break;
          }

          v10 -= 88;
          if (*&v14 >= *(v11 - 88))
          {
            v13 = a1 + v10 + 88;
            goto LABEL_16;
          }
        }

        v13 = a1;
LABEL_16:
        *v13 = v14;
        *(v13 + 16) = v15;
        *(v13 + 32) = v16;
        std::string::operator=((v11 + 40), &v17);
        std::string::operator=((v11 + 64), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_20:
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_20;
        }

LABEL_4:
        v6 = v9 + 88;
        v7 += 88;
        v8 = v9;
      }

      while (v9 + 88 != a2);
    }
  }
}

void sub_10004384C(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v17 = v2;
    v18 = v3;
    v5 = a1;
    v6 = (a1 + 88);
    if ((a1 + 88) != a2)
    {
      v7 = (a1 + 152);
      do
      {
        v8 = v6;
        if (*(v5 + 11) >= *v5)
        {
          goto LABEL_4;
        }

        v12 = *v6;
        v13 = v6[1];
        v14 = *(v6 + 4);
        if (*(v5 + 151) < 0)
        {
          sub_100003FD0(&v15, *(v5 + 16), *(v5 + 17));
          if (*(v5 + 175) < 0)
          {
LABEL_10:
            sub_100003FD0(&__p, *(v5 + 19), *(v5 + 20));
            goto LABEL_11;
          }
        }

        else
        {
          v15 = *(v5 + 8);
          if (*(v5 + 175) < 0)
          {
            goto LABEL_10;
          }
        }

        __p = *(v5 + 152);
LABEL_11:
        v9 = v7;
        do
        {
          v10 = v9;
          v11 = *&v9[-6].__r_.__value_.__r.__words[1];
          *&v9[-3].__r_.__value_.__r.__words[1] = *&v9[-7].__r_.__value_.__r.__words[2];
          *&v9[-2].__r_.__value_.__l.__data_ = v11;
          v9[-2].__r_.__value_.__r.__words[2] = v9[-5].__r_.__value_.__r.__words[0];
          std::string::operator=(v9 - 1, (v9 - 112));
          v9 = (v9 - 88);
          std::string::operator=(v10, v9);
        }

        while (*&v12 < *&v10[-10].__r_.__value_.__l.__data_);
        *&v9[-3].__r_.__value_.__r.__words[1] = v12;
        *&v9[-2].__r_.__value_.__l.__data_ = v13;
        v9[-2].__r_.__value_.__r.__words[2] = v14;
        std::string::operator=(v9 - 1, &v15);
        std::string::operator=(v9, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_17:
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

LABEL_4:
        v6 = (v8 + 88);
        v7 = (v7 + 88);
        v5 = v8;
      }

      while ((v8 + 88) != a2);
    }
  }
}

unint64_t sub_1000439D8(unint64_t a1, __int128 *a2)
{
  v15 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    sub_100003FD0(&v18, *(a1 + 40), *(a1 + 48));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 64);
      v4 = *&v15;
      if (*&v15 < *(a2 - 11))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_100003FD0(&__p, *(a1 + 64), *(a1 + 72));
  v4 = *&v15;
  if (*&v15 < *(a2 - 11))
  {
LABEL_4:
    v5 = a1;
    do
    {
      v6 = *(v5 + 88);
      v5 += 88;
    }

    while (v4 >= v6);
    goto LABEL_12;
  }

LABEL_9:
  v7 = a1 + 88;
  do
  {
    v5 = v7;
    if (v7 >= a2)
    {
      break;
    }

    v7 += 88;
  }

  while (v4 >= *v5);
LABEL_12:
  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v4 < v8);
  }

  while (v5 < a2)
  {
    sub_100044140(v5, a2);
    do
    {
      v9 = *(v5 + 88);
      v5 += 88;
    }

    while (*&v15 >= v9);
    do
    {
      v10 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (*&v15 < v10);
  }

  v11 = (v5 - 88);
  if (v5 - 88 != a1)
  {
    v12 = *v11;
    v13 = *(v5 - 72);
    *(a1 + 32) = *(v5 - 56);
    *a1 = v12;
    *(a1 + 16) = v13;
    std::string::operator=((a1 + 40), (v5 - 48));
    std::string::operator=((a1 + 64), (v5 - 24));
  }

  *(v5 - 56) = v17;
  *v11 = v15;
  *(v5 - 72) = v16;
  std::string::operator=((v5 - 48), &v18);
  std::string::operator=((v5 - 24), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_25:
    operator delete(v18.__r_.__value_.__l.__data_);
    return v5;
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

  return v5;
}

unint64_t sub_100043BA8(__int128 *a1, __int128 *a2)
{
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 4);
  if (*(a1 + 63) < 0)
  {
    sub_100003FD0(&v20, *(a1 + 5), *(a1 + 6));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_100003FD0(&__p, *(a1 + 8), *(a1 + 9));
    goto LABEL_6;
  }

  v20 = *(a1 + 40);
  if (*(a1 + 87) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = *(a1 + 4);
LABEL_6:
  v4 = 0;
  do
  {
    v5 = *(a1 + v4 + 88);
    v4 += 88;
  }

  while (v5 < *&v17);
  v6 = a1 + v4;
  if (v4 == 88)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v8 >= *&v17);
  }

  else
  {
    do
    {
      v7 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v7 >= *&v17);
  }

  v9 = a1 + v4;
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      sub_100044140(v9, v10);
      do
      {
        v11 = *(v9 + 88);
        v9 += 88;
      }

      while (v11 < *&v17);
      do
      {
        v12 = *(v10 - 11);
        v10 = (v10 - 88);
      }

      while (v12 >= *&v17);
    }

    while (v9 < v10);
  }

  v13 = (v9 - 88);
  if ((v9 - 88) != a1)
  {
    v14 = *v13;
    v15 = *(v9 - 72);
    *(a1 + 4) = *(v9 - 56);
    *a1 = v14;
    a1[1] = v15;
    std::string::operator=((a1 + 40), (v9 - 48));
    std::string::operator=((a1 + 4), (v9 - 24));
  }

  *(v9 - 56) = v19;
  *v13 = v17;
  *(v9 - 72) = v18;
  std::string::operator=((v9 - 48), &v20);
  std::string::operator=((v9 - 24), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v9 - 88;
    }

LABEL_25:
    operator delete(v20.__r_.__value_.__l.__data_);
    return v9 - 88;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

  return v9 - 88;
}

BOOL sub_100043D7C(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 11);
        v5 = (a2 - 88);
        v10 = *(a2 - 11);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          sub_100044140((a1 + 88), v5);
          if (*(v3 + 11) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 88);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          sub_100044140(a1, (a1 + 88));
          if (*v5 >= *(v3 + 11))
          {
            return 1;
          }

          a1 = (v3 + 88);
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        sub_100044140(a1, v8);
        return 1;
      case 4:
        sub_100043588(a1, (a1 + 88), a1 + 11, (a2 - 88));
        return 1;
      case 5:
        sub_100043588(a1, (a1 + 88), a1 + 11, (a1 + 264));
        v7 = *(a2 - 11);
        v6 = (a2 - 88);
        if (v7 >= *(v3 + 33))
        {
          return 1;
        }

        sub_100044140((v3 + 264), v6);
        if (*(v3 + 33) >= *(v3 + 22))
        {
          return 1;
        }

        sub_100044140(v3 + 11, (v3 + 264));
        if (*(v3 + 22) >= *(v3 + 11))
        {
          return 1;
        }

        sub_100044140((v3 + 88), v3 + 11);
        if (*(v3 + 11) >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 88);
        a1 = v3;
        goto LABEL_17;
    }

LABEL_18:
    v11 = (a1 + 11);
    v12 = *(a1 + 22);
    v13 = *(a1 + 11);
    if (v13 >= *a1)
    {
      if (v12 >= v13)
      {
        goto LABEL_31;
      }

      sub_100044140((a1 + 88), a1 + 11);
      if (*(v3 + 11) >= *v3)
      {
        goto LABEL_31;
      }

      a1 = v3;
      v14 = (v3 + 88);
    }

    else
    {
      if (v12 >= v13)
      {
        sub_100044140(a1, (a1 + 88));
        if (*(v3 + 22) >= *(v3 + 11))
        {
LABEL_31:
          v15 = (v3 + 264);
          if ((v3 + 264) == a2)
          {
            return 1;
          }

          v16 = 0;
          v17 = 0;
          while (1)
          {
            if (*v15 >= *v11)
            {
              goto LABEL_35;
            }

            v24 = *v15;
            v25 = v15[1];
            v26 = *(v15 + 4);
            if (*(v15 + 63) < 0)
            {
              sub_100003FD0(&v27, *(v15 + 5), *(v15 + 6));
              if (*(v15 + 87) < 0)
              {
LABEL_41:
                sub_100003FD0(&__p, *(v15 + 8), *(v15 + 9));
                goto LABEL_42;
              }
            }

            else
            {
              v27 = *(v15 + 40);
              if (*(v15 + 87) < 0)
              {
                goto LABEL_41;
              }
            }

            __p = *(v15 + 4);
LABEL_42:
            v18 = v16;
            while (1)
            {
              v19 = v3 + v18;
              v20 = (v3 + v18 + 264);
              v21 = *(v3 + v18 + 192);
              *v20 = *(v3 + v18 + 176);
              v20[1] = v21;
              *(v3 + v18 + 296) = *(v3 + v18 + 208);
              std::string::operator=((v3 + v18 + 304), (v3 + v18 + 216));
              std::string::operator=((v19 + 328), v19 + 10);
              if (v18 == -176)
              {
                break;
              }

              v18 -= 88;
              if (*&v24 >= *(v19 + 11))
              {
                v22 = v3 + v18 + 264;
                goto LABEL_47;
              }
            }

            v22 = v3;
LABEL_47:
            *v22 = v24;
            *(v22 + 16) = v25;
            *(v22 + 32) = v26;
            std::string::operator=(v19 + 9, &v27);
            std::string::operator=(v19 + 10, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_34:
              if (++v17 == 8)
              {
                return (v15 + 88) == a2;
              }

              goto LABEL_35;
            }

            operator delete(v27.__r_.__value_.__l.__data_);
            if (++v17 == 8)
            {
              return (v15 + 88) == a2;
            }

LABEL_35:
            v11 = v15;
            v16 += 88;
            v15 = (v15 + 88);
            if (v15 == a2)
            {
              return 1;
            }
          }
        }

        a1 = (v3 + 88);
      }

      v14 = v3 + 11;
    }

    sub_100044140(a1, v14);
    goto LABEL_31;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = (a2 - 88);
      if (*(a2 - 11) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  return 1;
}

void sub_100044140(__int128 *a1, __int128 *a2)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  if (*(a1 + 63) < 0)
  {
    sub_100003FD0(&v9, *(a1 + 5), *(a1 + 6));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 4);
      goto LABEL_6;
    }
  }

  sub_100003FD0(&__p, *(a1 + 8), *(a1 + 9));
LABEL_6:
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  a1[1] = v5;
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 4), (a2 + 4));
  *a2 = v6;
  a2[1] = v7;
  *(a2 + 4) = v8;
  std::string::operator=((a2 + 40), &v9);
  std::string::operator=((a2 + 4), &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v9.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_100044270(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x2E8BA2E8BA2E8BA3 * ((a4 - a1) >> 3))
    {
      v11 = (0x5D1745D1745D1746 * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 88 * v11);
      if (0x5D1745D1745D1746 * ((a4 - a1) >> 3) + 2 < a3 && *v12 < *(v12 + 11))
      {
        v12 = (v12 + 88);
        v11 = 0x5D1745D1745D1746 * ((a4 - a1) >> 3) + 2;
      }

      if (*v12 >= *a4)
      {
        v18 = *a4;
        v19 = *(a4 + 1);
        v20 = *(a4 + 4);
        if (*(a4 + 63) < 0)
        {
          sub_100003FD0(&v21, *(a4 + 5), *(a4 + 6));
          if ((*(v7 + 87) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v21 = *(a4 + 5);
          if ((*(a4 + 87) & 0x80000000) == 0)
          {
LABEL_9:
            __p = *(v7 + 8);
            goto LABEL_14;
          }
        }

        sub_100003FD0(&__p, *(v7 + 8), *(v7 + 9));
        do
        {
LABEL_14:
          v13 = v12;
          v14 = *v12;
          v15 = v12[1];
          v7[4] = *(v12 + 4);
          *v7 = v14;
          *(v7 + 1) = v15;
          std::string::operator=((v7 + 5), (v12 + 40));
          std::string::operator=((v7 + 8), (v12 + 4));
          if (v9 < v11)
          {
            break;
          }

          v16 = 2 * v11;
          v11 = (2 * v11) | 1;
          v12 = (a1 + 88 * v11);
          v17 = v16 + 2;
          if (v17 < a3 && *v12 < *(v12 + 11))
          {
            v12 = (v12 + 88);
            v11 = v17;
          }

          v7 = v13;
        }

        while (*v12 >= *&v18);
        *(v13 + 4) = v20;
        *v13 = v18;
        v13[1] = v19;
        std::string::operator=((v13 + 40), &v21);
        std::string::operator=((v13 + 4), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_100044488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = *a1;
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    if (*(a1 + 63) < 0)
    {
      sub_100003FD0(&v28, *(a1 + 40), *(a1 + 48));
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = *(a1 + 40);
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
LABEL_4:
        __p = *(a1 + 64);
LABEL_7:
        v9 = 0;
        v10 = v4 >> 1;
        v11 = a1;
        do
        {
          v14 = v11;
          v15 = v11 + 88 * v9;
          v11 = v15 + 88;
          v16 = 2 * v9;
          v9 = (2 * v9) | 1;
          v17 = v16 + 2;
          if (v17 < a4)
          {
            v19 = *(v15 + 176);
            v18 = v15 + 176;
            if (*(v18 - 88) < v19)
            {
              v11 = v18;
              v9 = v17;
            }
          }

          v12 = *v11;
          v13 = *(v11 + 16);
          *(v14 + 32) = *(v11 + 32);
          *v14 = v12;
          *(v14 + 16) = v13;
          std::string::operator=((v14 + 40), (v11 + 40));
          std::string::operator=((v14 + 64), (v11 + 64));
        }

        while (v9 <= v10);
        v20 = (a2 - 88);
        if (v11 == a2 - 88)
        {
          *(v11 + 32) = v27;
          *v11 = v25;
          *(v11 + 16) = v26;
          std::string::operator=((v11 + 40), &v28);
          std::string::operator=((v11 + 64), &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_15:
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            return;
          }
        }

        else
        {
          v21 = *v20;
          v22 = *(a2 - 72);
          *(v11 + 32) = *(a2 - 56);
          *v11 = v21;
          *(v11 + 16) = v22;
          v23 = (a2 - 48);
          std::string::operator=((v11 + 40), (a2 - 48));
          v24 = (a2 - 24);
          std::string::operator=((v11 + 64), v24);
          *v20 = v25;
          v20[1] = v26;
          *(v20 + 4) = v27;
          std::string::operator=(v23, &v28);
          std::string::operator=(v24, &__p);
          sub_1000446D4(a1, v11 + 88, a3, 0x2E8BA2E8BA2E8BA3 * ((v11 + 88 - a1) >> 3));
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_15;
      }
    }

    sub_100003FD0(&__p, *(a1 + 64), *(a1 + 72));
    goto LABEL_7;
  }
}

void sub_1000446D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v19 = v4;
  v20 = v5;
  v7 = (a4 - 2) >> 1;
  v8 = (a1 + 88 * v7);
  v9 = (a2 - 88);
  if (*v8 >= *(a2 - 88))
  {
    return;
  }

  v14 = *v9;
  v15 = *(a2 - 72);
  v16 = *(a2 - 56);
  if (*(a2 - 25) < 0)
  {
    v10 = a2;
    sub_100003FD0(&v17, *(a2 - 48), *(a2 - 40));
    a2 = v10;
    if ((*(v10 - 1) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *(a2 - 48);
    if ((*(a2 - 1) & 0x80000000) == 0)
    {
LABEL_5:
      __p = *(a2 - 24);
      goto LABEL_8;
    }
  }

  sub_100003FD0(&__p, *(a2 - 24), *(a2 - 16));
  do
  {
LABEL_8:
    v11 = v8;
    v12 = *v8;
    v13 = v8[1];
    *(v9 + 4) = *(v8 + 4);
    *v9 = v12;
    v9[1] = v13;
    std::string::operator=((v9 + 40), (v8 + 40));
    std::string::operator=((v9 + 4), (v8 + 4));
    if (!v7)
    {
      break;
    }

    v7 = (v7 - 1) >> 1;
    v8 = (a1 + 88 * v7);
    v9 = v11;
  }

  while (*v8 < *&v14);
  *v11 = v14;
  v11[1] = v15;
  *(v11 + 4) = v16;
  std::string::operator=((v11 + 40), &v17);
  std::string::operator=((v11 + 4), &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }
}

uint64_t sub_1000448C4(uint64_t result)
{
  if (result)
  {
    sub_10004578C(result);

    operator delete();
  }

  return result;
}

void sub_100044904(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&v5 = "filename";
  *(&v5 + 1) = 8;
  *&v4 = "File to append -stats and -timer output to";
  *(&v4 + 1) = 42;
  v3 = 1;
  v2 = a1;
  sub_100044AB4(a1 + 24, "info-output-file", &v5, &v4, &v3, &v2);
  *&v5 = "Enable -time-passes memory tracking (this may be slow)";
  *(&v5 + 1) = 54;
  LODWORD(v4) = 1;
  sub_1000453D0(a1 + 232, "track-memory", &v5, &v4);
  *&v5 = "In the report, sort the timers in each group in wall clock time order";
  *(&v5 + 1) = 69;
  LOBYTE(v3) = 1;
  *&v4 = &v3;
  LODWORD(v2) = 1;
  sub_10004559C(a1 + 416, "sort-timers", &v5, &v4, &v2);
  std::recursive_mutex::recursive_mutex((a1 + 600));
  *(a1 + 664) = 0;
  *(a1 + 695) = 4;
  strcpy((a1 + 672), "misc");
  operator new();
}

uint64_t sub_100044AB4(uint64_t a1, char *a2, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = off_1002D4288;
  *a1 = &off_1002D4828;
  *(a1 + 168) = off_1002D4338;
  *(a1 + 176) = off_1002D4890;
  *(a1 + 200) = a1 + 176;
  sub_100044C7C(a1, a2, a3, a4, a5, a6);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

std::string *sub_100044C7C(uint64_t a1, char *__s, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  v12 = strlen(__s);
  v13 = llvm::cl::Option::setArgStr(a1, __s, v12);
  *(a1 + 48) = *a3;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  if (*(a1 + 120))
  {
    v19 = "cl::location(x) specified more than once!";
    v20 = 259;
    v14 = llvm::errs(v13);
    return llvm::cl::Option::error(a1, &v19, 0, 0, v14, v15, v16);
  }

  else
  {
    v18 = *a6;
    *(a1 + 120) = *a6;
    *(a1 + 160) = 1;

    return std::string::operator=((a1 + 136), v18);
  }
}

uint64_t sub_100044D7C(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_11;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_16;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    __dst.__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  __p = __dst;
  std::string::operator=(*(a1 + 120), &__p);
  *(a1 + 12) = a2;
  v9 = *(a1 + 200);
  if (!v9)
  {
    sub_10000520C();
LABEL_16:
    sub_100003FC0();
  }

  (*(*v9 + 48))(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t sub_100044EDC(uint64_t a1)
{
  *a1 = &off_1002D4828;
  v2 = a1 + 176;
  v3 = *(a1 + 200);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 128) = &off_1002D1AB0;
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 128) = &off_1002D1AB0;
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
LABEL_5:
      *a1 = &off_1002D4220;
      if (*(a1 + 108))
      {
        goto LABEL_6;
      }

LABEL_11:
      free(*(a1 + 88));
      v4 = *(a1 + 64);
      if (v4 == (a1 + 80))
      {
        return a1;
      }

      goto LABEL_7;
    }
  }

  operator delete(*(a1 + 136));
  *a1 = &off_1002D4220;
  if ((*(a1 + 108) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
LABEL_7:
    free(v4);
  }

  return a1;
}

void sub_100045048(uint64_t a1)
{
  *a1 = &off_1002D4828;
  v2 = a1 + 176;
  v3 = *(a1 + 200);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 128) = &off_1002D1AB0;
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 128) = &off_1002D1AB0;
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
LABEL_5:
      *a1 = &off_1002D4220;
      if (*(a1 + 108))
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 136));
  *a1 = &off_1002D4220;
  if (*(a1 + 108))
  {
LABEL_6:
    v4 = *(a1 + 64);
    if (v4 == (a1 + 80))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  free(*(a1 + 88));
  v4 = *(a1 + 64);
  if (v4 == (a1 + 80))
  {
LABEL_8:

    operator delete();
  }

LABEL_7:
  free(v4);
  goto LABEL_8;
}

void *sub_1000451F0(uint64_t a1, int a2, char a3)
{
  v5 = *(a1 + 120);
  if ((a3 & 1) != 0 || *(a1 + 160) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 159);
  if (v6 >= 0)
  {
    v7 = *(a1 + 159);
  }

  else
  {
    v7 = *(a1 + 144);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = v5[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = (a1 + 136)) : (v10 = *(a1 + 136)), (v11 = *v5, v9 >= 0) ? (v12 = v5) : (v12 = *v5), result = memcmp(v10, v12, v7), result))
  {
LABEL_16:
    v14 = *(v5 + 23);
    if (v14 >= 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = *v5;
    }

    if (v14 >= 0)
    {
      v16 = *(v5 + 23);
    }

    else
    {
      v16 = v5[1];
    }

    return llvm::cl::parser<std::string>::printOptionDiff((a1 + 168), a1, v15, v16, a1 + 128, a2);
  }

  return result;
}

void sub_1000452CC(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    v4 = *(a1 + 120);

    std::string::operator=(v4, v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=(*(a1 + 120), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t sub_1000453D0(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v14 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v14;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002D44A0;
  *(a1 + 136) = 0;
  *a1 = off_1002D4438;
  *(a1 + 144) = off_1002D42A8;
  *(a1 + 152) = off_1002D44C0;
  *(a1 + 176) = a1 + 152;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_10004559C(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4, _WORD *a5)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002D44A0;
  *(a1 + 136) = 0;
  *a1 = off_1002D4438;
  *(a1 + 144) = off_1002D42A8;
  *(a1 + 152) = off_1002D44C0;
  *(a1 + 176) = a1 + 152;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  *(a1 + 32) = *a3;
  v15 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v15;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_10004578C(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    sub_1000429D0(a1 + 784);
  }

  llvm::SignpostEmitter::~SignpostEmitter((a1 + 768));
  llvm::TimerGroup::~TimerGroup((a1 + 672));
  std::recursive_mutex::~recursive_mutex((a1 + 600));
  *(a1 + 416) = off_1002D4438;
  v2 = *(a1 + 592);
  if (v2 == a1 + 568)
  {
    (*(*v2 + 32))(v2);
    *(a1 + 416) = &off_1002D4220;
    if ((*(a1 + 524) & 1) == 0)
    {
LABEL_7:
      free(*(a1 + 504));
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    *(a1 + 416) = &off_1002D4220;
    if ((*(a1 + 524) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v3 = *(a1 + 480);
  if (v3 != (a1 + 496))
  {
    free(v3);
  }

  *(a1 + 232) = off_1002D4438;
  v4 = *(a1 + 408);
  if (v4 == a1 + 384)
  {
    (*(*v4 + 32))(v4);
    *(a1 + 232) = &off_1002D4220;
    if ((*(a1 + 340) & 1) == 0)
    {
LABEL_14:
      free(*(a1 + 320));
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 232) = &off_1002D4220;
    if ((*(a1 + 340) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 296);
  if (v5 != (a1 + 312))
  {
    free(v5);
  }

  *(a1 + 24) = &off_1002D4828;
  v6 = *(a1 + 224);
  if (v6 == a1 + 200)
  {
    (*(*v6 + 32))(v6);
    *(a1 + 152) = &off_1002D1AB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(a1 + 152) = &off_1002D1AB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_21:
      *(a1 + 24) = &off_1002D4220;
      if (*(a1 + 132))
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  operator delete(*(a1 + 160));
  *(a1 + 24) = &off_1002D4220;
  if (*(a1 + 132))
  {
LABEL_22:
    v7 = *(a1 + 88);
    if (v7 == (a1 + 104))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  free(*(a1 + 112));
  v7 = *(a1 + 88);
  if (v7 != (a1 + 104))
  {
LABEL_23:
    free(v7);
  }

LABEL_24:
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::CleanupInstaller::~CleanupInstaller(llvm::CleanupInstaller *this)
{
  v2 = *(this + 23);
  v3 = v2;
  v4 = *(this + 1);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5 == 1)
  {
    v6 = *this;
    if ((v2 & 0x80u) == 0)
    {
      v6 = this;
    }

    if (*v6 == 45)
    {
      if ((v2 & 0x80) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(*this);
      return;
    }
  }

  if ((*(this + 24) & 1) == 0)
  {
    v10 = 260;
    v9 = this;
    llvm::sys::fs::remove(&v9, 1);
    v2 = *(this + 23);
    v4 = *(this + 1);
    v3 = *(this + 23);
  }

  if (v3 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v3 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  llvm::sys::DontRemoveFileOnSignal(v7, v8);
  if ((*(this + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

_BYTE *llvm::ToolOutputFile::ToolOutputFile(_BYTE *__dst, _BYTE *__src, size_t __len, uint64_t a4, int a5)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003FC0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (!__len)
  {
    *__dst = 0;
    __dst[24] = 0;
    goto LABEL_9;
  }

  memmove(__dst, __src, __len);
  __dst[__len] = 0;
  __dst[24] = 0;
  if (__len != 1 || *__src != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(__src, __len);
  }

  __dst[32] = 0;
  v10 = (__dst + 32);
  __dst[128] = 0;
  if (*__src == 45)
  {
    *(__dst + 17) = llvm::outs(v10);
    v11 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v11;
  }

  else
  {
    v12 = llvm::raw_fd_ostream::raw_fd_ostream(v10, __src, 1, a4, a5);
    __dst[128] = 1;
    *(__dst + 17) = v12;
    if (*a4)
    {
      __dst[24] = 1;
    }
  }

  return __dst;
}

void llvm::Twine::str(llvm::Twine *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      LODWORD(v19) = 0;
      v22 = 0;
      v23 = 1;
      v20 = 0;
      v21 = 0;
      *(&v19 + 1) = 0;
      v18 = &off_1002D49D0;
      v24 = a2;
      llvm::raw_ostream::SetBufferAndMode(&v18, 0, 0, 0);
      llvm::raw_ostream::operator<<(&v18, v6, v7, v8, v9, v10, v11);
      if (v21 != *(&v19 + 1))
      {
        llvm::raw_ostream::flush_nonempty(&v18);
      }

      llvm::raw_ostream::~raw_ostream(&v18);
      return;
    }
  }

  else if (v3 == 4 && *(this + 33) == 1)
  {
    v4 = *this;
    if (*(*this + 23) < 0)
    {
      v16 = *v4;
      v17 = *(v4 + 8);

      sub_100003FD0(a2, v16, v17);
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 16);
      *a2 = v5;
    }

    return;
  }

  v18 = &v20;
  v19 = xmmword_1002AFEC0;
  v12 = sub_100045F94(this, &v18);
  if (!v12)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v15 = v18;
    if (v18 == &v20)
    {
      return;
    }

    goto LABEL_20;
  }

  v14 = v13;
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003FC0();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v13;
  if (v13)
  {
    memmove(a2, v12, v13);
  }

  *(a2 + v14) = 0;
  v15 = v18;
  if (v18 != &v20)
  {
LABEL_20:
    free(v15);
  }
}

uint64_t sub_100045F94(void **a1, uint64_t *a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      result = *a1;
      v7 = a1[1];
      return result;
    }

    goto LABEL_15;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v16 = *a1;
    if (*a1)
    {
      strlen(v16);
      return v16;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_15:
    v18 = 2;
    v22 = 0;
    v23 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = off_1002D4A48;
    v24 = a2;
    v9 = llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
    v12 = llvm::Twine::printOneChild(v9, &v17, *a1, a1[1], *(a1 + 32), v10, v11);
    llvm::Twine::printOneChild(v12, &v17, a1[2], a1[3], *(a1 + 33), v13, v14);
    llvm::raw_ostream::~raw_ostream(&v17);
    result = *a2;
    v15 = a2[1];
    return result;
  }

  v4 = *(*a1 + 23);
  if (v4 >= 0)
  {
    result = *a1;
  }

  else
  {
    result = **a1;
  }

  if (v4 >= 0)
  {
    v6 = *(*a1 + 23);
  }

  else
  {
    v6 = (*a1)[1];
  }

  return result;
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v10 = 2;
  v14 = 0;
  v15 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = off_1002D4A48;
  v16 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
  v6 = llvm::Twine::printOneChild(v3, &v9, *a1, *(a1 + 8), *(a1 + 32), v4, v5);
  llvm::Twine::printOneChild(v6, &v9, *(a1 + 16), *(a1 + 24), *(a1 + 33), v7, v8);
  llvm::raw_ostream::~raw_ostream(&v9);
}

llvm::raw_ostream *llvm::Twine::print(size_t *this, llvm::raw_ostream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = llvm::Twine::printOneChild(this, a2, *this, this[1], *(this + 32), a6, a7);
  v12 = this[2];
  v13 = this[3];
  v14 = *(this + 33);

  return llvm::Twine::printOneChild(v9, a2, v12, v13, v14, v10, v11);
}

void *llvm::Twine::toNullTerminatedStringRef(uint64_t a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v18 = 2;
    v22 = 0;
    v23 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = off_1002D4A48;
    v24 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
    v10 = llvm::Twine::printOneChild(v7, &v17, *a1, *(a1 + 8), *(a1 + 32), v8, v9);
    llvm::Twine::printOneChild(v10, &v17, *(a1 + 16), *(a1 + 24), *(a1 + 33), v11, v12);
    llvm::raw_ostream::~raw_ostream(&v17);
    v13 = a2[1];
    if ((v13 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 1, 1);
      v13 = a2[1];
    }

    *(*a2 + v13) = 0;
    result = *a2;
    v14 = a2[1];
    return result;
  }

  if (v4 == 6)
  {
    result = *a1;
    v16 = *(a1 + 8);
    return result;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v15 = *(*a1 + 8);
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3;
  for (i = a5; a5 == 2; i = a5)
  {
    result = llvm::Twine::printOneChild(result, a2, *v7, *(v7 + 8), *(v7 + 32));
    a5 = *(v7 + 33);
    v10 = v7 + 16;
    v7 = *(v7 + 16);
    a4 = *(v10 + 8);
  }

  if (i > 9)
  {
    if (i > 12)
    {
      switch(i)
      {
        case 13:
          v20 = *v7;

          return llvm::raw_ostream::operator<<(a2, v20);
        case 14:
          v21 = *v7;

          return llvm::raw_ostream::operator<<(a2, v21);
        case 15:
          v17 = *v7;

          return llvm::raw_ostream::write_hex(a2, v17);
      }

      return result;
    }

    if (i == 10)
    {
      v15 = v7;
      v16 = a2;
    }

    else
    {
      if (i == 11)
      {
        v18 = *v7;
        v19 = a2;

        return llvm::raw_ostream::operator<<(v19, v18);
      }

      v15 = *v7;
      v16 = a2;
    }

    return llvm::raw_ostream::operator<<(v16, v15);
  }

  if (i > 6)
  {
    if (i == 7)
    {

      return llvm::raw_ostream::operator<<(a2, v7, a3, a4, a5, a6, a7);
    }

    if (i == 8)
    {
      v23 = *(a2 + 4);
      if (v23 >= *(a2 + 3))
      {

        return llvm::raw_ostream::write(a2, v7);
      }

      else
      {
        *(a2 + 4) = v23 + 1;
        *v23 = v7;
      }

      return result;
    }

    v18 = v7;
    v19 = a2;

    return llvm::raw_ostream::operator<<(v19, v18);
  }

  if ((i - 5) < 2)
  {
    result = *(a2 + 4);
    if (a4 > *(a2 + 3) - result)
    {
      v14 = a2;
      v12 = v7;
      v13 = a4;

      return llvm::raw_ostream::write(v14, v12, v13);
    }

    if (a4)
    {
      v24 = v7;
      v25 = a4;
      result = memcpy(result, v24, a4);
      *(a2 + 4) += v25;
    }
  }

  else if (i == 3)
  {
    if (v7)
    {
      v22 = strlen(v7);
      result = *(a2 + 4);
      if (v22 > *(a2 + 3) - result)
      {
        v14 = a2;
        v12 = v7;
        v13 = v22;

        return llvm::raw_ostream::write(v14, v12, v13);
      }

      if (v22)
      {
        result = memcpy(result, v7, v22);
        *(a2 + 4) += v22;
      }
    }
  }

  else if (i == 4)
  {
    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v14 = a2;

    return llvm::raw_ostream::write(v14, v12, v13);
  }

  return result;
}

uint64_t sub_1000466E4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = (a2 + 24);
    v3 = *a2;
    if (v3 == v4)
    {
      v6 = *(a2 + 8);
      v7 = *(result + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          v9 = result;
          memmove(*result, v3, *(a2 + 8));
          result = v9;
        }

        *(result + 8) = v6;
      }

      else
      {
        if (*(result + 16) >= v6)
        {
          v8 = result;
          if (v7)
          {
            memmove(*result, v3, v7);
          }
        }

        else
        {
          *(result + 8) = 0;
          v8 = result;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), v6, 1);
          v7 = 0;
        }

        v10 = *(a2 + 8);
        if (v10 != v7)
        {
          memcpy((*v8 + v7), (*a2 + v7), v10 - v7);
        }

        result = v8;
        v8[1] = v6;
      }
    }

    else
    {
      if (*result != result + 24)
      {
        v5 = result;
        free(*result);
        result = v5;
        v3 = *a2;
      }

      *result = v3;
      *(result + 8) = *(a2 + 8);
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t *sub_100046804(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t *sub_1000469B0(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 9), 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer((a3 + 9), 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t sub_100046ACC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = 8 * v2;
    v5 = v3;
    do
    {
      v6 = ((v3 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v6 >= 0x1E)
      {
        LOBYTE(v6) = 30;
      }

      v7 = *v5++;
      llvm::deallocate_buffer(v7, (4096 << v6), 8uLL);
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = &v8[2 * v9];
    do
    {
      v11 = *v8;
      v12 = v8[1];
      v8 += 2;
      llvm::deallocate_buffer(v11, v12, 8uLL);
    }

    while (v8 != v10);
    v8 = *(a1 + 64);
  }

  if (v8 != (a1 + 80))
  {
    free(v8);
  }

  v13 = *(a1 + 16);
  if (v13 != (a1 + 32))
  {
    free(v13);
  }

  return a1;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = off_1002D48D8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

uint64_t llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  result = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (result)
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    operator new[]();
  }

  if (v5 != v3)
  {
    *(this + 4) = v3;
    result = (*(*this + 72))(this);
  }

  if (*(this + 11) == 1)
  {
    result = *v4;
    if (*v4)
    {
      operator delete[]();
    }
  }

  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *v4 = 0;
  return result;
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1 && *(result + 16))
  {
    operator delete[]();
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

void *llvm::raw_ostream::operator<<(void *a1, uint64_t a2)
{
  v4 = a1[3] - a1[4];
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      a1[4] += v7;
      return a1;
    }
  }

  v14 = v16;
  v15 = xmmword_1002B0230;
  do
  {
    v12 = v15;
    if (v15 != v7)
    {
      if (v15 <= v7)
      {
        if (*(&v15 + 1) < v7)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v14, v16, v7, 1);
          v12 = v15;
        }

        if (v7 != v12)
        {
          bzero(&v14[v12], v7 - v12);
        }
      }

      *&v15 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  llvm::raw_ostream::write(a1, v14, v10);
  if (v14 != v16)
  {
    free(v14);
  }

  return a1;
}

{
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_1002AFEF0;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = off_1002D4A48;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, "                                                                                ^\n]", v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, "                                                                                ^\n]", (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = off_1002D48D8;
    if (v17 == 1 && v13)
    {
      operator delete[]();
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

uint64_t llvm::raw_ostream::flush_nonempty(llvm::raw_ostream *this)
{
  v1 = *(this + 4);
  *(this + 4) = *(this + 2);
  return (*(*this + 72))();
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v13 = v12[2];
        v14 = v12[4] - v13;
        v12[4] = v13;
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v17 = a2;
      v18 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v18)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v17;
      a3 = v18;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v17;
    a3 = v18;
    if (v18 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v15 = this;
      v16 = a3;
      memcpy(v3, a2, a3);
      a3 = v16;
      this = v15;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void sub_100047588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::formatv_object_base::parseFormatString(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), a5, a6, a7, &v22);
  v9 = v22;
  if (v23)
  {
    v10 = 56 * v23;
    v11 = (v22 + 24);
    do
    {
      if (*(v11 - 6) == 1 || (v12 = *v11, *(a1 + 24) <= v12))
      {
        v16 = *(v11 - 2);
        v17 = *(v11 - 1);
        v18 = a2[4];
        if (v17 > a2[3] - v18)
        {
          llvm::raw_ostream::write(a2, v16, v17);
        }

        else if (v17)
        {
          v19 = *(v11 - 1);
          memcpy(v18, v16, v17);
          a2[4] += v19;
        }
      }

      else
      {
        v13 = *(v11 + 12);
        v20[0] = *(*(a1 + 16) + 8 * v12);
        v20[1] = vrev64_s32(*(v11 + 1));
        v21 = v13;
        v14 = *(v11 + 2);
        v15 = *(v11 + 3);
        sub_1000488F4(v20, a2);
      }

      v11 += 14;
      v10 -= 56;
    }

    while (v10);
    v9 = v22;
  }

  if (v9 != &v24)
  {
    free(v9);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, "                                                                                ^\n]", v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, "                                                                                ^\n]", v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, "                                                                                ^\n]", v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, "                                                                                ^\n]", v6);
  }

  return this;
}

void *llvm::raw_ostream::indent(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, "                                                                                ^\n]", a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, "                                                                                ^\n]", v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

uint64_t sub_100047A9C(uint64_t result)
{
  *result = off_1002D48D8;
  if (*(result + 44) == 1)
  {
    if (*(result + 16))
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t llvm::raw_ostream::changeColor(uint64_t a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = llvm::sys::Process::ColorNeedsFlush(a1);
    if (!v8 || (v8 = (*(*a1 + 48))(a1), v8))
    {
      if (llvm::sys::Process::ColorNeedsFlush(v8))
      {
        v9 = *(a1 + 16);
        if (*(a1 + 32) != v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
        }
      }

      if (a2 == 16)
      {
        v10 = llvm::sys::Process::OutputBold(a4);
        if (!v10)
        {
          return a1;
        }

        goto LABEL_11;
      }

      v10 = llvm::sys::Process::OutputColor(a2, a3, a4);
      if (v10)
      {
LABEL_11:
        v11 = v10;
        v12 = strlen(v10);
        llvm::raw_ostream::write(a1, v11, v12);
      }
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::ResetColor(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::OutputReverse(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002D4950;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = llvm::sys::fs::status(*(a1 + 48), v12);
    *(a1 + 54) = *&v12[40] == 2;
    *(a1 + 53) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = off_1002D4950;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v10 = "IO failure on output stream: ";
    v11 = 259;
    v6 = *(this + 72);
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    sub_10000550C(&v10, &v8, v12);
    llvm::report_fatal_error(v12, 0);
  }

  *this = off_1002D48D8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  operator delete();
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

void *llvm::outs(llvm *this)
{
  std::system_category();
  if ((atomic_load_explicit(&qword_1002E4760, memory_order_acquire) & 1) == 0)
  {
    sub_10029903C();
  }

  return &unk_1002E47A8;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(qword_1002E4768, memory_order_acquire) & 1) == 0)
  {
    sub_1002990B0();
  }

  return &unk_1002E4808;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  *this = off_1002D48D8;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

{
  *this = off_1002D48D8;
  if (*(this + 11) == 1 && *(this + 2))
  {
    operator delete[]();
  }

  operator delete();
}

void llvm::raw_svector_ostream::write_impl(llvm::raw_svector_ostream *this, const char *a2, size_t __n)
{
  v4 = *(this + 6);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(this + 6), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void sub_1000486A0(uint64_t a1)
{
  *a1 = off_1002D48D8;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10004872C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_1000487A8(uint64_t a1)
{
  v1 = *(a1 + 48);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_1000487C0(uint64_t a1)
{
  *a1 = off_1002D48D8;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10004884C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

void sub_1000488F4(void *a1, uint64_t a2)
{
  if (*(a1 + 3))
  {
    v38 = v40;
    *v39 = xmmword_1002B02A0;
    v30 = 2;
    v34 = 0;
    v36 = &v38;
    v35 = 0;
    v29 = off_1002D4A48;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    (*(**a1 + 24))(*a1, &v29);
    v4 = *(a1 + 3);
    v5 = v39[0];
    if (v39[0] < v4)
    {
      v6 = v4 - LODWORD(v39[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v14 = v6 >> 1;
        v15 = v39[0];
        if (v6 >= 2)
        {
          v16 = 0;
          do
          {
            while (1)
            {
              v17 = *(a1 + 16);
              v18 = *(a2 + 32);
              if (v18 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v18 + 1;
              *v18 = v17;
              if (++v16 == v14)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v19 = *(a2 + 16);
              if (v19)
              {
                *(a2 + 32) = v19;
                (*(*a2 + 72))(a2);
                v18 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v18 = *(a2 + 32);
              if (v18 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v37 = v17;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v16;
          }

          while (v16 != v14);
LABEL_31:
          v15 = v39[0];
        }

        llvm::raw_ostream::write(a2, v38, v15);
        if (v4 != v5)
        {
          v20 = 0;
          v21 = v6 - v14;
          do
          {
            while (1)
            {
              v22 = *(a1 + 16);
              v23 = *(a2 + 32);
              if (v23 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v23 + 1;
              *v23 = v22;
              if (++v20 == v21)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v24 = *(a2 + 16);
              if (v24)
              {
                *(a2 + 32) = v24;
                (*(*a2 + 72))(a2);
                v23 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v23 = *(a2 + 32);
              if (v23 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v37 = v22;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v20;
          }

          while (v20 != v21);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v38, v39[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v37 = v9;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v39[0]))
      {
        v25 = 0;
        do
        {
          while (1)
          {
            v26 = *(a1 + 16);
            v27 = *(a2 + 32);
            if (v27 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v27 + 1;
            *v27 = v26;
            if (++v25 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v28 = *(a2 + 16);
            if (v28)
            {
              *(a2 + 32) = v28;
              (*(*a2 + 72))(a2);
              v27 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v27 = *(a2 + 32);
            if (v27 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v37 = v26;
          (*(*a2 + 72))(a2, &v37, 1);
          ++v25;
        }

        while (v25 != v6);
LABEL_55:
        v5 = v39[0];
      }
    }

    llvm::raw_ostream::write(a2, v38, v5);
LABEL_57:
    v29 = off_1002D48D8;
    if (v35 == 1 && v31)
    {
      operator delete[]();
    }

    if (v38 != v40)
    {
      free(v38);
    }

    return;
  }

  v12 = *a1;
  v13 = *(**a1 + 24);

  v13();
}

uint64_t sub_100048E8C(uint64_t a1, _BYTE *a2)
{

  return llvm::raw_fd_ostream::raw_fd_ostream(v2 + 72, a2, 1, v3, 0);
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v86 = v3;
  v87 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }

    v6 = a3;
    v8 = __s;
    v7 = a1;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v74 = 0;
  ptr[0] = 0;
  v73 = 0u;
  v13 = 3 * (v9 >> 1);
  v14 = v13 + 1;
  *&v73 = v13 + 1;
  v15 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
  ptr[1] = v15;
  if (!v15)
  {
    free(v12);
    return 12;
  }

  v19 = v6;
  v75 = v12;
  v20 = v8;
  v21 = &v8[v9];
  v70 = v20;
  v71 = v21;
  LODWORD(ptr[0]) = 0;
  LODWORD(v74) = 0;
  v22 = 0.0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v23 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = v6 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = &_mh_execute_header;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  if (v13 < 0x7FFFFFFFFFFFFFFFLL || (v24 = (v13 + 2) / 2, v25 = ((v13 + 2 + ((v13 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v24, v14 >= v25))
  {
    v26 = 1;
  }

  else if (v25 >> 61)
  {
    v26 = 0;
    LODWORD(ptr[0]) = 12;
    v20 = &byte_1002E4868;
    v70 = &byte_1002E4868;
    v71 = &byte_1002E4868;
    v21 = &byte_1002E4868;
  }

  else
  {
    v54 = v6;
    v55 = v20;
    v56 = v15;
    v15 = malloc_type_realloc(v15, 24 * v24, 0x100004000313F17uLL);
    if (v15)
    {
      ptr[1] = v15;
      *&v73 = v25;
      v26 = 1;
      v20 = v55;
      v19 = v54;
    }

    else
    {
      v26 = 0;
      LODWORD(ptr[0]) = 12;
      v20 = &byte_1002E4868;
      v70 = &byte_1002E4868;
      v71 = &byte_1002E4868;
      v21 = &byte_1002E4868;
      v19 = v54;
      v15 = v56;
    }
  }

  *(&v73 + 1) = 1;
  *v15 = 0x8000000;
  *(v12 + 7) = *(&v73 + 1) - 1;
  if (v19)
  {
    sub_10004961C(&v70, 128, v22, v16, v17, v18);
  }

  else if ((v19 & 0x10) != 0)
  {
    if (v21 - v20 <= 0)
    {
      if (v26)
      {
        LODWORD(ptr[0]) = 14;
      }

      v20 = &byte_1002E4868;
      v70 = &byte_1002E4868;
      v71 = &byte_1002E4868;
      v21 = &byte_1002E4868;
    }

    if (v21 - v20 >= 1)
    {
      do
      {
        v70 = v20 + 1;
        *&v22 = sub_10004CD90(&v70, *v20, v22, v16, v17, v18).n128_u64[0];
        v20 = v70;
      }

      while (v71 - v70 > 0);
    }
  }

  else
  {
    sub_10004A99C(&v70, 128, 128, v22, v16, v17, v18);
  }

  v27 = *(&v73 + 1);
  if (!LODWORD(ptr[0]))
  {
    if (*(&v73 + 1) < v73 || (v28 = (v73 + 1) / 2, v29 = ((v73 + 1 + ((v73 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28, v73 >= v29))
    {
      v30 = 1;
    }

    else
    {
      if (v29 >> 61)
      {
        v30 = 0;
        LODWORD(ptr[0]) = 12;
        v70 = &byte_1002E4868;
        v71 = &byte_1002E4868;
        goto LABEL_35;
      }

      v57 = malloc_type_realloc(ptr[1], 24 * v28, 0x100004000313F17uLL);
      if (v57)
      {
        ptr[1] = v57;
        *&v73 = v29;
        v30 = LODWORD(ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(ptr[0]))
        {
          LODWORD(ptr[0]) = 12;
        }

        v30 = 0;
        v70 = &byte_1002E4868;
        v71 = &byte_1002E4868;
      }
    }

    v27 = *(&v73 + 1);
LABEL_35:
    *(&v73 + 1) = v27 + 1;
    *(ptr[1] + v27) = 0x8000000;
    v27 = *(&v73 + 1);
    *(v12 + 8) = *(&v73 + 1) - 1;
    if (v30)
    {
      v31 = *(v12 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v31 + i) && *v23 >= 1)
        {
          v33 = (*v23 + 7) >> 3;
          v34 = *(v12 + 4);
          while (!*(v34 + i))
          {
            v34 += v12[4];
            if (!--v33)
            {
              goto LABEL_37;
            }
          }

          v35 = v12[21];
          v12[21] = v35 + 1;
          *(v31 + i) = v35;
          if (i <= 126)
          {
            v36 = i;
            do
            {
              ++v36;
              if (!*(v31 + v36))
              {
                if (*v23 < 1)
                {
LABEL_46:
                  *(v31 + v36) = v35;
                }

                else
                {
                  v37 = (*v23 + 7) >> 3;
                  v38 = *(v12 + 4);
                  while (*(v38 + i) == *(v38 + v36))
                  {
                    v38 += v12[4];
                    if (!--v37)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }

            while (v36 != 127);
          }
        }

LABEL_37:
        ;
      }

      v27 = *(&v73 + 1);
    }

    goto LABEL_55;
  }

  *(v12 + 8) = *(&v73 + 1) - 1;
LABEL_55:
  *(v12 + 6) = v27;
  if (v27 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v39) = ptr[0];
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &byte_1002E4868;
    v71 = &byte_1002E4868;
    goto LABEL_86;
  }

  v43 = malloc_type_realloc(ptr[1], 8 * v27, 0x100004000313F17uLL);
  *(v12 + 1) = v43;
  LODWORD(v39) = ptr[0];
  if (!v43)
  {
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &byte_1002E4868;
    v71 = &byte_1002E4868;
    *(v12 + 1) = ptr[1];
    goto LABEL_86;
  }

  v44 = v43;
  v40 = v7;
  if (LODWORD(ptr[0]))
  {
    goto LABEL_85;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = (v44 + 8);
  v49 = (v44 + 8);
  do
  {
    v51 = *v49++;
    LODWORD(v50) = v51;
    v52 = ((v51 & 0xF8000000) - 0x10000000) >> 27;
    if (v52 > 0xD)
    {
      goto LABEL_76;
    }

    if (((1 << v52) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v52) & 0x2200) != 0)
    {
      v49 = v48;
      while (1)
      {
        v49 += v50 & 0x7FFFFFF;
        v50 = *v49;
        v53 = *v49 & 0xF8000000;
        if (v53 == 1610612736)
        {
          break;
        }

        if (v53 != -2013265920)
        {
          if (v53 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_84;
        }
      }

LABEL_76:
      if (v47 > v12[26])
      {
        v12[26] = v47;
        v45 = v46;
      }

      v47 = 0;
      goto LABEL_63;
    }

    if (v52)
    {
      goto LABEL_76;
    }

    if (!v47)
    {
      v46 = v48;
    }

    ++v47;
LABEL_63:
    v48 = v49;
  }

  while ((v50 & 0xF8000000) != 0x8000000);
  v63 = v12[26];
  if (v63)
  {
    v64 = malloc_type_malloc(v63 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v12[26];
      if (v66 < 1)
      {
        v40 = v7;
      }

      else
      {
        v40 = v7;
        do
        {
          do
          {
            v68 = *v45++;
            v67 = v68;
          }

          while ((v68 & 0xF8000000) != 0x10000000);
          *v65++ = v67;
        }

        while (v66-- > 1);
      }

      *v65 = 0;
    }

    else
    {
      v12[26] = 0;
      v40 = v7;
    }
  }

LABEL_84:
  LODWORD(v39) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_85:
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v42 = 0;
    v58 = (*(v12 + 1) + 8);
    do
    {
      v59 = *v58++;
      v60 = v59 & 0xF8000000;
      if (v39 <= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v39;
      }

      v62 = v39 - 1;
      if (v60 == 1207959552)
      {
        ++v39;
      }

      if (v60 == 1342177280)
      {
        v39 = v62;
        v42 = v61;
      }
    }

    while (v60 != 0x8000000);
    if (v39)
    {
      LODWORD(v39) = 0;
      v12[18] |= 4u;
    }

    v41 = 1;
  }

LABEL_86:
  *(v12 + 16) = v42;
  *v12 = 53829;
  *(v40 + 8) = *(v12 + 14);
  *(v40 + 24) = v12;
  *v40 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v41)
    {
      LODWORD(v39) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v70 = &byte_1002E4868;
    v71 = &byte_1002E4868;
  }

  if (!v39)
  {
    return 0;
  }

  llvm_regfree(v40);
  return LODWORD(ptr[0]);
}