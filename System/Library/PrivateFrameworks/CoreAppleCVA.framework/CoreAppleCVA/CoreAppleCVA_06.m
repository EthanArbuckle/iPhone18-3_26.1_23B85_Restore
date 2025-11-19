void cva::ItemHandler::getVector<BOOL>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((cva::ItemHandler::isVectorType(a1) & 1) == 0)
  {
    return;
  }

  cva::ItemHandler::getArray(a1, &v13);
  v4 = v13;
  if (v13)
  {
    if (*v13)
    {
      v5 = [*v13 count];
      *(a2 + 16) = v5;
      if (v5)
      {
        v6 = (v5 + 31) & 0x1FFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v6;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
        v7 = memptr;
        *a2 = memptr;
LABEL_8:
        v8 = 0;
        v9 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }

        while (v8 < [v9 count])
        {
          while (1)
          {
            if (*v4 && v8 < [*v4 count] && (v10 = objc_msgSend(*v4, "objectAtIndex:", v8), (v11 = v10) != 0))
            {
              CFRetain(v10);
              v7[v8] = [v11 BOOLValue];
              CFRelease(v11);
            }

            else
            {
              v7[v8] = 0;
            }

            ++v8;
            v9 = *v4;
            if (*v4)
            {
              break;
            }

LABEL_11:
            if (v8 >= 0)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 16) = 0;
    }

    v7 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_8;
  }

LABEL_19:
  v12 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_24507BF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

uint64_t cva::ItemHandler::isVectorType(cva::ItemHandler *this)
{
  if (!*this)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  cva::ItemHandler::getArray(this, &v11);
  v2 = v11;
  if (v11)
  {
    v3 = 0;
    while (1)
    {
      v4 = *v2 ? [*v2 count] : 0;
      result = v3 >= v4;
      if (v3 >= v4)
      {
        break;
      }

      result = *v2;
      if (!*v2)
      {
        break;
      }

      if (v3 < [result count])
      {
        v6 = [*v2 objectAtIndex:v3];
        v7 = v6;
        if (v6)
        {
          CFRetain(v6);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          CFRelease(v7);
          ++v3;
          if (isKindOfClass)
          {
            continue;
          }
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
LABEL_13:
    result = 0;
  }

  v9 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = result;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      return v10;
    }
  }

  return result;
}

uint64_t cva::ItemHandler::getArray@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*this)
  {
    v3 = this;
    objc_opt_class();
    this = objc_opt_isKindOfClass();
    if (this)
    {
      v4 = *v3;
      if (*(v3 + 8) == 1)
      {
        operator new();
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void sub_24507C1F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_24507C214(uint64_t result)
{
  v1 = *(result + 8);
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

void sub_24507C284(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_24507C294(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2857FD090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

void *cva::ArrayHandler::size(void **this)
{
  result = *this;
  if (result)
  {
    return [result count];
  }

  return result;
}

uint64_t *cva::ArrayHandler::item@<X0>(uint64_t *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 0 || (v4 = this, (this = *this) == 0) || (this = [this count], this <= a2))
  {
    *a3 = 0;
    goto LABEL_9;
  }

  this = [*v4 objectAtIndex:a2];
  v6 = *(v4 + 8);
  *a3 = this;
  *(a3 + 8) = v6;
  if (!this)
  {
LABEL_9:
    *(a3 + 8) = 0;
    return this;
  }

  return CFRetain(this);
}

void cva::ItemHandler::~ItemHandler(CFTypeRef *this)
{
  if (*this)
  {
    CFRelease(*this);
  }
}

{
  if (*this)
  {
    CFRelease(*this);
  }
}

void cva::ItemHandler::getVector<int>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((cva::ItemHandler::isVectorType(a1) & 1) == 0)
  {
    return;
  }

  cva::ItemHandler::getArray(a1, &v13);
  v4 = v13;
  if (v13)
  {
    if (*v13)
    {
      v5 = [*v13 count];
      *(a2 + 16) = v5;
      if (v5)
      {
        v6 = (4 * v5 + 31) & 0x7FFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v6 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
        v7 = memptr;
        *a2 = memptr;
LABEL_8:
        v8 = 0;
        v9 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }

        while (v8 < [v9 count])
        {
          while (1)
          {
            if (*v4 && v8 < [*v4 count] && (v10 = objc_msgSend(*v4, "objectAtIndex:", v8), (v11 = v10) != 0))
            {
              CFRetain(v10);
              v7[v8] = [v11 intValue];
              CFRelease(v11);
            }

            else
            {
              v7[v8] = 0;
            }

            ++v8;
            v9 = *v4;
            if (*v4)
            {
              break;
            }

LABEL_11:
            if (v8 >= 0)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 16) = 0;
    }

    v7 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_8;
  }

LABEL_19:
  v12 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_24507C580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getVector<unsigned int>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((cva::ItemHandler::isVectorType(a1) & 1) == 0)
  {
    return;
  }

  cva::ItemHandler::getArray(a1, &v13);
  v4 = v13;
  if (v13)
  {
    if (*v13)
    {
      v5 = [*v13 count];
      *(a2 + 16) = v5;
      if (v5)
      {
        v6 = (4 * v5 + 31) & 0x7FFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v6 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
        v7 = memptr;
        *a2 = memptr;
LABEL_8:
        v8 = 0;
        v9 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }

        while (v8 < [v9 count])
        {
          while (1)
          {
            if (*v4 && v8 < [*v4 count] && (v10 = objc_msgSend(*v4, "objectAtIndex:", v8), (v11 = v10) != 0))
            {
              CFRetain(v10);
              v7[v8] = [v11 unsignedIntValue];
              CFRelease(v11);
            }

            else
            {
              v7[v8] = 0;
            }

            ++v8;
            v9 = *v4;
            if (*v4)
            {
              break;
            }

LABEL_11:
            if (v8 >= 0)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 16) = 0;
    }

    v7 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_8;
  }

LABEL_19:
  v12 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_24507C75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getVector<float>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((cva::ItemHandler::isVectorType(a1) & 1) == 0)
  {
    return;
  }

  cva::ItemHandler::getArray(a1, &v14);
  v4 = v14;
  if (v14)
  {
    if (*v14)
    {
      v5 = [*v14 count];
      *(a2 + 16) = v5;
      if (v5)
      {
        v6 = (4 * v5 + 31) & 0x7FFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v6 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
        v7 = memptr;
        *a2 = memptr;
LABEL_8:
        v8 = 0;
        v9 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }

        while (v8 < [v9 count])
        {
          while (1)
          {
            if (*v4 && v8 < [*v4 count] && (v10 = objc_msgSend(*v4, "objectAtIndex:", v8), (v11 = v10) != 0))
            {
              CFRetain(v10);
              [v11 floatValue];
              v7[v8] = v12;
              CFRelease(v11);
            }

            else
            {
              v7[v8] = 0;
            }

            ++v8;
            v9 = *v4;
            if (*v4)
            {
              break;
            }

LABEL_11:
            if (v8 >= 0)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 16) = 0;
    }

    v7 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_8;
  }

LABEL_19:
  v13 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_24507C938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getVector<double>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((cva::ItemHandler::isVectorType(a1) & 1) == 0)
  {
    return;
  }

  cva::ItemHandler::getArray(a1, &v14);
  v4 = v14;
  if (v14)
  {
    if (*v14)
    {
      v5 = [*v14 count];
      *(a2 + 16) = v5;
      if (v5)
      {
        v6 = (8 * v5 + 31) & 0xFFFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v6 >> 3;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
        v7 = memptr;
        *a2 = memptr;
LABEL_8:
        v8 = 0;
        v9 = *v4;
        if (!*v4)
        {
          goto LABEL_11;
        }

        while (v8 < [v9 count])
        {
          while (1)
          {
            if (*v4 && v8 < [*v4 count] && (v10 = objc_msgSend(*v4, "objectAtIndex:", v8), (v11 = v10) != 0))
            {
              CFRetain(v10);
              [v11 doubleValue];
              v7[v8] = v12;
              CFRelease(v11);
            }

            else
            {
              v7[v8] = 0;
            }

            ++v8;
            v9 = *v4;
            if (*v4)
            {
              break;
            }

LABEL_11:
            if (v8 >= 0)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 16) = 0;
    }

    v7 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_8;
  }

LABEL_19:
  v13 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_24507CB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getMatrix<int>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (cva::ItemHandler::isMatrixType(a1))
  {
    cva::ItemHandler::getArray(a1, &v28);
    if (v28)
    {
      if (*v28)
      {
        v23 = [*v28 count];
        if (v23 >= 1)
        {
          v4 = 0;
          while (1)
          {
            v5 = v28;
            if (!*v28 || v4 >= [*v28 count])
            {
              break;
            }

            v6 = [*v5 objectAtIndex:v4];
            v7 = v6;
            v8 = *(v5 + 8);
            memptr = v6;
            v25 = v8;
            if (!v6)
            {
              goto LABEL_12;
            }

            CFRetain(v6);
LABEL_13:
            cva::ItemHandler::getArray(&memptr, &v26);
            if (v7)
            {
              CFRelease(v7);
            }

            v9 = v26;
            if (v26)
            {
              if (v4)
              {
                v11 = *(a2 + 16);
                v10 = *(a2 + 20);
                v12 = *a2;
              }

              else
              {
                if (*v26)
                {
                  v10 = [*v26 count];
                }

                else
                {
                  v10 = 0;
                }

                *(a2 + 16) = v23;
                *(a2 + 20) = v10;
                v13 = (v10 * v23);
                if (v13)
                {
                  v12 = *a2;
                  if (*(a2 + 8) < v13)
                  {
                    free(*a2);
                    v14 = (4 * v13 + 31) & 0x7FFFFFFE0;
                    *a2 = 0;
                    *(a2 + 8) = v14 >> 2;
                    memptr = 0;
                    malloc_type_posix_memalign(&memptr, 0x20uLL, v14, 0xE1AC2527uLL);
                    v12 = memptr;
                    *a2 = memptr;
                  }

                  v11 = v23;
                }

                else
                {
                  free(*a2);
                  v12 = 0;
                  *a2 = 0;
                  *(a2 + 8) = 0;
                  v11 = v23;
                }
              }

              v15 = 0;
              for (i = v4; ; i += v11)
              {
                v17 = *v9;
                if (*v9)
                {
                  LODWORD(v17) = [v17 count];
                }

                v18 = v17 >= v10 ? v10 : v17;
                if (v15 >= v18)
                {
                  break;
                }

                if (*v9 && v15 < [*v9 count] && (v19 = objc_msgSend(*v9, "objectAtIndex:", v15), (v20 = v19) != 0))
                {
                  CFRetain(v19);
                  v12[i] = [v20 intValue];
                  CFRelease(v20);
                }

                else
                {
                  v12[i] = 0;
                }

                ++v15;
              }
            }

            v21 = v27;
            if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            if (++v4 == (v23 & 0x7FFFFFFF))
            {
              goto LABEL_42;
            }
          }

          memptr = 0;
LABEL_12:
          v7 = 0;
          v25 = 0;
          goto LABEL_13;
        }
      }
    }

LABEL_42:
    v22 = v29;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_24507CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

uint64_t cva::ItemHandler::isMatrixType(cva::ItemHandler *this)
{
  if (!*this)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  cva::ItemHandler::getArray(this, &v28);
  if (!v28)
  {
LABEL_47:
    result = 0;
    v22 = v29;
    if (!v29)
    {
      return result;
    }

    goto LABEL_53;
  }

  if (!*v28)
  {
LABEL_49:
    result = 1;
    v22 = v29;
    if (!v29)
    {
      return result;
    }

    goto LABEL_53;
  }

  v2 = [*v28 count];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 & 0x7FFFFFFF;
    while (1)
    {
      v6 = v28;
      result = *v28;
      if (!*v28)
      {
        goto LABEL_52;
      }

      if (v3 >= [result count])
      {
        goto LABEL_47;
      }

      v8 = [*v6 objectAtIndex:v3];
      v9 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      CFRetain(v8);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      CFRelease(v9);
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_47;
      }

      if (*v6 && v3 < [*v6 count])
      {
        v11 = [*v6 objectAtIndex:v3];
        v12 = v11;
        v13 = *(v6 + 8);
        v24 = v11;
        LOBYTE(v25) = v13;
        if (v11)
        {
          CFRetain(v11);
          goto LABEL_17;
        }
      }

      else
      {
        v24 = 0;
      }

      v12 = 0;
      LOBYTE(v25) = 0;
LABEL_17:
      cva::ItemHandler::getArray(&v24, &v26);
      if (v12)
      {
        CFRelease(v12);
      }

      v14 = v26;
      if (!v26)
      {
        goto LABEL_36;
      }

      v15 = *v26;
      if (v3)
      {
        if (v15)
        {
          if ([v15 count] != v4)
          {
            goto LABEL_36;
          }
        }

        else if (v4)
        {
          goto LABEL_36;
        }

        if (v4 >= 1)
        {
          goto LABEL_27;
        }

LABEL_33:
        LOBYTE(v19) = 1;
        v21 = v27;
        if (v27)
        {
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      if (v15)
      {
        v16 = [v15 count];
        v4 = v16;
        if (v16 >= 1)
        {
LABEL_27:
          v17 = 0;
          while (*v14 && v17 < [*v14 count])
          {
            v18 = [*v14 objectAtIndex:v17];
            v19 = v18;
            if (!v18)
            {
              goto LABEL_37;
            }

            CFRetain(v18);
            objc_opt_class();
            v20 = objc_opt_isKindOfClass();
            CFRelease(v19);
            if ((v20 & 1) == 0)
            {
              break;
            }

            if (v4 == ++v17)
            {
              goto LABEL_33;
            }
          }

LABEL_36:
          LOBYTE(v19) = 0;
LABEL_37:
          v21 = v27;
          if (!v27)
          {
            goto LABEL_40;
          }

LABEL_38:
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          goto LABEL_40;
        }

        goto LABEL_33;
      }

      v4 = 0;
      LOBYTE(v19) = 1;
      v21 = v27;
      if (v27)
      {
        goto LABEL_38;
      }

LABEL_40:
      if ((v19 & 1) == 0)
      {
        goto LABEL_47;
      }

      if (++v3 == v5)
      {
        goto LABEL_49;
      }
    }
  }

  result = 1;
LABEL_52:
  v22 = v29;
  if (v29)
  {
LABEL_53:
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v23 = result;
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      return v23;
    }
  }

  return result;
}

void sub_24507D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24507C214(va);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getMatrix<float>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (cva::ItemHandler::isMatrixType(a1))
  {
    cva::ItemHandler::getArray(a1, &v29);
    if (v29)
    {
      if (*v29)
      {
        v24 = [*v29 count];
        if (v24 >= 1)
        {
          v4 = 0;
          while (1)
          {
            v5 = v29;
            if (!*v29 || v4 >= [*v29 count])
            {
              break;
            }

            v6 = [*v5 objectAtIndex:v4];
            v7 = v6;
            v8 = *(v5 + 8);
            memptr = v6;
            v26 = v8;
            if (!v6)
            {
              goto LABEL_12;
            }

            CFRetain(v6);
LABEL_13:
            cva::ItemHandler::getArray(&memptr, &v27);
            if (v7)
            {
              CFRelease(v7);
            }

            v9 = v27;
            if (v27)
            {
              if (v4)
              {
                v11 = *(a2 + 16);
                v10 = *(a2 + 20);
                v12 = *a2;
              }

              else
              {
                if (*v27)
                {
                  v10 = [*v27 count];
                }

                else
                {
                  v10 = 0;
                }

                *(a2 + 16) = v24;
                *(a2 + 20) = v10;
                v13 = (v10 * v24);
                if (v13)
                {
                  v12 = *a2;
                  if (*(a2 + 8) < v13)
                  {
                    free(*a2);
                    v14 = (4 * v13 + 31) & 0x7FFFFFFE0;
                    *a2 = 0;
                    *(a2 + 8) = v14 >> 2;
                    memptr = 0;
                    malloc_type_posix_memalign(&memptr, 0x20uLL, v14, 0xE1AC2527uLL);
                    v12 = memptr;
                    *a2 = memptr;
                  }

                  v11 = v24;
                }

                else
                {
                  free(*a2);
                  v12 = 0;
                  *a2 = 0;
                  *(a2 + 8) = 0;
                  v11 = v24;
                }
              }

              v15 = 0;
              for (i = v4; ; i += v11)
              {
                v17 = *v9;
                if (*v9)
                {
                  LODWORD(v17) = [v17 count];
                }

                v18 = v17 >= v10 ? v10 : v17;
                if (v15 >= v18)
                {
                  break;
                }

                if (*v9 && v15 < [*v9 count] && (v19 = objc_msgSend(*v9, "objectAtIndex:", v15), (v20 = v19) != 0))
                {
                  CFRetain(v19);
                  [v20 floatValue];
                  v12[i] = v21;
                  CFRelease(v20);
                }

                else
                {
                  v12[i] = 0;
                }

                ++v15;
              }
            }

            v22 = v28;
            if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            if (++v4 == (v24 & 0x7FFFFFFF))
            {
              goto LABEL_42;
            }
          }

          memptr = 0;
LABEL_12:
          v7 = 0;
          v26 = 0;
          goto LABEL_13;
        }
      }
    }

LABEL_42:
    v23 = v30;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

void sub_24507D4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

void cva::ItemHandler::getMatrix<double>(cva::ItemHandler *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (cva::ItemHandler::isMatrixType(a1))
  {
    cva::ItemHandler::getArray(a1, &v29);
    if (v29)
    {
      if (*v29)
      {
        v24 = [*v29 count];
        if (v24 >= 1)
        {
          v4 = 0;
          while (1)
          {
            v5 = v29;
            if (!*v29 || v4 >= [*v29 count])
            {
              break;
            }

            v6 = [*v5 objectAtIndex:v4];
            v7 = v6;
            v8 = *(v5 + 8);
            memptr = v6;
            v26 = v8;
            if (!v6)
            {
              goto LABEL_12;
            }

            CFRetain(v6);
LABEL_13:
            cva::ItemHandler::getArray(&memptr, &v27);
            if (v7)
            {
              CFRelease(v7);
            }

            v9 = v27;
            if (v27)
            {
              if (v4)
              {
                v11 = *(a2 + 16);
                v10 = *(a2 + 20);
                v12 = *a2;
              }

              else
              {
                if (*v27)
                {
                  v10 = [*v27 count];
                }

                else
                {
                  v10 = 0;
                }

                *(a2 + 16) = v24;
                *(a2 + 20) = v10;
                v13 = (v10 * v24);
                if (v13)
                {
                  v12 = *a2;
                  if (*(a2 + 8) < v13)
                  {
                    free(*a2);
                    v14 = (8 * v13 + 31) & 0xFFFFFFFE0;
                    *a2 = 0;
                    *(a2 + 8) = v14 >> 3;
                    memptr = 0;
                    malloc_type_posix_memalign(&memptr, 0x20uLL, v14, 0xE1AC2527uLL);
                    v12 = memptr;
                    *a2 = memptr;
                  }

                  v11 = v24;
                }

                else
                {
                  free(*a2);
                  v12 = 0;
                  *a2 = 0;
                  *(a2 + 8) = 0;
                  v11 = v24;
                }
              }

              v15 = 0;
              for (i = v4; ; i += v11)
              {
                v17 = *v9;
                if (*v9)
                {
                  LODWORD(v17) = [v17 count];
                }

                v18 = v17 >= v10 ? v10 : v17;
                if (v15 >= v18)
                {
                  break;
                }

                if (*v9 && v15 < [*v9 count] && (v19 = objc_msgSend(*v9, "objectAtIndex:", v15), (v20 = v19) != 0))
                {
                  CFRetain(v19);
                  [v20 doubleValue];
                  v12[i] = v21;
                  CFRelease(v20);
                }

                else
                {
                  v12[i] = 0;
                }

                ++v15;
              }
            }

            v22 = v28;
            if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            if (++v4 == (v24 & 0x7FFFFFFF))
            {
              goto LABEL_42;
            }
          }

          memptr = 0;
LABEL_12:
          v7 = 0;
          v26 = 0;
          goto LABEL_13;
        }
      }
    }

LABEL_42:
    v23 = v30;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

void sub_24507D814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24507C214(va);
  free(0);
  _Unwind_Resume(a1);
}

uint64_t cva::ItemHandler::ItemHandler(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t cva::ItemHandler::ItemHandler(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

{
  v2 = *a2;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    CFRetain(v2);
    return v3;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

{
  v2 = *a2;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    CFRetain(v2);
    return v3;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

{
  v2 = *a2;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    CFRetain(v2);
    return v3;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

{
  v2 = *a2;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    CFRetain(v2);
    return v3;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

CFTypeRef cva::ItemHandler::createData@<X0>(CFTypeRef this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = 0;
  if (this)
  {
    return CFRetain(this);
  }

  return this;
}

void cva::ItemHandler::createVector(cva::ItemHandler *this@<X0>, uint64_t a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:this];
  *a2 = v3;
  *(a2 + 8) = 1;
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t cva::ItemHandler::isDataType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isNumberType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isBoolType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isStringType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isArrayType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isDictionaryType(cva::ItemHandler *this)
{
  if (*this)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t cva::ItemHandler::isVectorTypeOfSize(cva::ItemHandler *this, int a2)
{
  result = cva::ItemHandler::isVectorType(this);
  if (!result)
  {
    return result;
  }

  cva::ItemHandler::getArray(this, &v8);
  if (!v8)
  {
    result = 0;
    v6 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_8;
  }

  v5 = *v8;
  if (*v8)
  {
    LODWORD(v5) = [v5 count];
  }

  result = v5 == a2;
  v6 = v9;
  if (v9)
  {
LABEL_8:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  return result;
}

uint64_t cva::ItemHandler::isMatrixTypeOfSize(cva::ItemHandler *this, int a2, int a3)
{
  result = cva::ItemHandler::isMatrixType(this);
  if (!result)
  {
    return result;
  }

  cva::ItemHandler::getArray(this, &v23);
  if (!v23)
  {
    goto LABEL_29;
  }

  v7 = *v23;
  if (*v23)
  {
    LODWORD(v7) = [v7 count];
  }

  if (v7 != a2)
  {
LABEL_29:
    result = 0;
    v16 = v24;
    if (!v24)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a2 >= 1)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = v23;
      if (*v23 && v8 < [*v23 count])
      {
        v11 = [*v10 objectAtIndex:v8];
        v12 = v11;
        v13 = *(v10 + 8);
        v19 = v11;
        LOBYTE(v20) = v13;
        if (v11)
        {
          CFRetain(v11);
          goto LABEL_15;
        }
      }

      else
      {
        v19 = 0;
      }

      v12 = 0;
      LOBYTE(v20) = 0;
LABEL_15:
      cva::ItemHandler::getArray(&v19, &v21);
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v21)
      {
        goto LABEL_26;
      }

      v14 = *v21;
      if (*v21)
      {
        LODWORD(v14) = [v14 count];
      }

      if (v14 != a3)
      {
LABEL_26:
        v17 = v22;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        goto LABEL_29;
      }

      v15 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      ++v8;
    }

    while (v9 != v8);
  }

  result = 1;
  v16 = v24;
  if (v24)
  {
LABEL_30:
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = result;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      return v18;
    }
  }

  return result;
}

void sub_24507DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24507C214(va);
  _Unwind_Resume(a1);
}

uint64_t cva::ItemHandler::getDictionary@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*this)
  {
    v3 = this;
    objc_opt_class();
    this = objc_opt_isKindOfClass();
    if (this)
    {
      v4 = *v3;
      if (*(v3 + 8) == 1)
      {
        operator new();
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void sub_24507E10C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_24507E12C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_24507E13C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2857FD020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

uint64_t cva::ItemHandler::getData(cva::ItemHandler *this)
{
  if (*this && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

cva::DictionaryHandler *cva::DictionaryHandler::DictionaryHandler(cva::DictionaryHandler *this)
{
  *this = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  *(this + 8) = 1;
  return this;
}

{
  *this = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  *(this + 8) = 1;
  return this;
}

uint64_t cva::DictionaryHandler::DictionaryHandler(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

uint64_t cva::DictionaryHandler::DictionaryHandler(uint64_t this, CFTypeRef cf)
{
  *this = cf;
  *(this + 8) = 1;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 1;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 0;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 0;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  return this;
}

void cva::DictionaryHandler::~DictionaryHandler(CFTypeRef *this)
{
  if (*this)
  {
    CFRelease(*this);
  }
}

{
  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t *cva::DictionaryHandler::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOBYTE(v2) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  return result;
}

void cva::DictionaryHandler::getKeys(CFDictionaryRef *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  Count = CFDictionaryGetCount(*this);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *a2) >> 3) < Count)
  {
    if (Count <= 0xAAAAAAAAAAAAAAALL)
    {
      v5 = *(a2 + 8);
      operator new();
    }

LABEL_35:
    sub_24504FAF4();
  }

  v25 = [(__CFDictionary *)*this keyEnumerator];
  [v25 nextObject];
  while (1)
    v7 = {;
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = [v7 UTF8String];
    v10 = v9;
    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    if (v12 >= v11)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (&v12[-*a2] >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_35;
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_24504FAF4();
      }

      v19 = 24 * v15;
      v28 = 0;
      v29 = v19;
      v30 = v19;
      v20 = strlen(v9);
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_24504FAF4();
      }

      v21 = v20;
      if (v20 >= 0x17)
      {
        operator new();
      }

      *(v19 + 23) = v20;
      if (v20)
      {
        memmove(v19, v10, v20);
      }

      *(v19 + v21) = 0;
      v6 = (v19 + 24);
      v22 = *(a2 + 8) - *a2;
      v23 = v29 - v22;
      memcpy((v29 - v22), *a2, v22);
      v24 = *a2;
      *a2 = v23;
      *(a2 + 8) = v30 + 24;
      *(a2 + 16) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v13 = strlen(v9);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v12[23] = v13;
      if (v13)
      {
        memmove(v12, v10, v13);
      }

      v12[v14] = 0;
      v6 = v12 + 24;
    }

    *(a2 + 8) = v6;

    [v26 nextObject];
  }
}

void ***sub_24507E818(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

uint64_t sub_24507E88C(uint64_t a1)
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

BOOL cva::DictionaryHandler::hasKey(id *this, const __CFString *a2)
{
  v2 = [*this valueForKey:a2];
  v3 = v2 != 0;

  return v3;
}

BOOL cva::DictionaryHandler::hasKey(id *this, const char *a2)
{
  v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0x8000100u, *MEMORY[0x277CBED00]);
  v4 = [*this valueForKey:v3];
  v5 = v4 != 0;

  CFRelease(v3);
  return v5;
}

CFTypeRef cva::DictionaryHandler::item@<X0>(id *this@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  result = [*this objectForKey:a2];
  v6 = *(this + 8);
  *a3 = result;
  *(a3 + 8) = v6;
  if (result)
  {

    return CFRetain(result);
  }

  else
  {
    *(a3 + 8) = 0;
  }

  return result;
}

void cva::DictionaryHandler::item(id *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0x8000100u, *MEMORY[0x277CBED00]);
  v6 = [*this objectForKey:v5];
  v7 = *(this + 8);
  *a3 = v6;
  *(a3 + 8) = v7;
  if (v6)
  {
    CFRetain(v6);
  }

  else
  {
    *(a3 + 8) = 0;
  }

  CFRelease(v5);
}

uint64_t cva::DictionaryHandler::setItem(id *this, const __CFString *a2, const cva::ItemHandler *a3)
{
  v3 = *(this + 8);
  if (v3 == 1)
  {
    [*this setValue:*a3 forKey:a2];
  }

  return v3;
}

uint64_t cva::DictionaryHandler::setItem(id *this, const char *a2, const cva::ItemHandler *a3)
{
  v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0x8000100u, *MEMORY[0x277CBED00]);
  v6 = *(this + 8);
  if (v6 == 1)
  {
    [*this setValue:*a3 forKey:v5];
  }

  CFRelease(v5);
  return v6;
}

uint64_t cva::DictionaryHandler::removeItem(id *this, const __CFString *a2)
{
  v2 = *(this + 8);
  if (v2 == 1)
  {
    [*this removeObjectForKey:a2];
  }

  return v2;
}

uint64_t cva::DictionaryHandler::removeItem(id *this, const char *a2)
{
  v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0x8000100u, *MEMORY[0x277CBED00]);
  v4 = *(this + 8);
  if (v4 == 1)
  {
    [*this removeObjectForKey:v3];
  }

  CFRelease(v3);
  return v4;
}

uint64_t sub_24507EC4C(void *a1, uint64_t *a2, int a3, unsigned int a4)
{
  v7 = a1;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v7])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB78]) initToMemory];
    [v8 open];
    v9 = [v8 streamError];

    if (v9 || (v11 = [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v8 options:a3 ^ 1u error:0], objc_msgSend(v8, "close"), !v11))
    {
      v10 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = [v12 initWithUTF8String:v13];
      v15 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v14 append:0];
      [v15 open];
      v16 = [v15 streamError];

      if (v16)
      {
        v10 = 0;
      }

      else
      {
        v17 = [v8 propertyForKey:*MEMORY[0x277CBE740]];
        v10 = [v17 writeToFile:v14 options:a4 error:0];
        [v15 close];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void cva::DictionaryHandler::readJsonFile(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [v5 initWithUTF8String:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:v7];
  [v8 open];
  v9 = [v8 streamError];

  if (v9)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v8 options:1 error:0];
    [v8 close];
    if (v10)
    {
      [v10 mutableCopy];
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
  }

  objc_autoreleasePoolPop(v4);
}

void sub_24507EF80(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v5);
  operator delete(v7);

  _Unwind_Resume(a1);
}

uint64_t cva::DictionaryHandler::writePlistFile(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [v4 initWithUTF8String:v5];
  v7 = [v3 writeToFile:v6 atomically:0];

  return v7;
}

void cva::DictionaryHandler::readPlistFile(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [v4 initWithUTF8String:v5];
  if ([objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v6])
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_24507F154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);

  _Unwind_Resume(a1);
}

cva::ArrayHandler *cva::ArrayHandler::ArrayHandler(cva::ArrayHandler *this)
{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(this + 8) = 1;
  return this;
}

{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(this + 8) = 1;
  return this;
}

uint64_t cva::ArrayHandler::ArrayHandler(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *a2 = 0;
  return result;
}

uint64_t cva::ArrayHandler::ArrayHandler(uint64_t this, CFTypeRef cf)
{
  *this = cf;
  *(this + 8) = 1;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 1;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  else
  {
    *(this + 8) = 0;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 0;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  return this;
}

{
  *this = cf;
  *(this + 8) = 0;
  if (cf)
  {
    v2 = this;
    CFRetain(cf);
    return v2;
  }

  return this;
}

void cva::ArrayHandler::~ArrayHandler(CFTypeRef *this)
{
  if (*this)
  {
    CFRelease(*this);
  }
}

{
  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t *cva::ArrayHandler::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOBYTE(v2) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  return result;
}

BOOL cva::ArrayHandler::validIndex(void **this, int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *this;
    if (v4)
    {
      return [v4 count] > a2;
    }
  }

  return result;
}

uint64_t cva::ArrayHandler::setItem(id *this, int a2, const cva::ItemHandler *a3)
{
  if (!*a3)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0 && *this)
  {
    v5 = this;
    if ([*this count] > a2 && *(v5 + 8) == 1)
    {
      [*v5 replaceObjectAtIndex:a2 withObject:*a3];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cva::ArrayHandler::addItem(cva::ArrayHandler *this, const cva::ItemHandler *a2)
{
  if (!*a2 || *(this + 8) != 1)
  {
    return 0;
  }

  [*this addObject:{v2, v3}];
  return 1;
}

void cva::ArrayHandler::readJsonFile(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [v5 initWithUTF8String:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:v7];
  [v8 open];
  v9 = [v8 streamError];

  if (v9)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v8 options:1 error:0];
    [v8 close];
    if (v10)
    {
      [v10 mutableCopy];
      operator new();
    }

    *a2 = 0;
    a2[1] = 0;
  }

  objc_autoreleasePoolPop(v4);
}

void sub_24507F698(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v5);
  operator delete(v7);

  _Unwind_Resume(a1);
}

void cva::DirectoryIterator::Private::Private(cva::DirectoryIterator::Private *this)
{
  operator new();
}

{
  operator new();
}

DIR *cva::DirectoryIterator::Private::seek_valid(cva::DirectoryIterator::Private *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = *(this + 1);
  if (result)
  {
    v9 = 0;
    if (!readdir_r(result, &v10, &v9) && v9)
    {
      v3 = strlen(v10.d_name);
      if (v3 < 0x7FFFFFFFFFFFFFF8)
      {
        v4 = v3;
        if (v3 < 0x17)
        {
          v8 = v3;
          if (v3)
          {
            memcpy(__p, v10.d_name, v3);
          }

          __p[v4] = 0;
          operator new();
        }

        operator new();
      }

      sub_24504FAF4();
    }

    v5 = *(this + 1);
    if (v5)
    {
      closedir(v5);
      *(this + 1) = 0;
    }

    operator new();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::DirectoryIterator::Private::close(cva::DirectoryIterator::Private *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    closedir(v2);
    *(this + 1) = 0;
  }

  operator new();
}

void cva::DirectoryIterator::DirectoryIterator(cva::DirectoryIterator *this)
{
  operator new();
}

{
  operator new();
}

void cva::DirectoryIterator::DirectoryIterator(cva::DirectoryIterator *this, const cva::Path *a2)
{
  operator new();
}

{
  operator new();
}

void cva::DirectoryIterator::DirectoryIterator()
{
  operator new();
}

{
  operator new();
}

void cva::DirectoryIterator::~DirectoryIterator(cva::DirectoryIterator *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2)
  {
    closedir(v2);
    *(v1 + 8) = 0;
  }

  operator new();
}

BOOL cva::operator==(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a2 + 8);
  result = (v3 | v4) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(v2 + 16);
    v8 = *(*a2 + 16);
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = v7[1];
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 8);
    }

    if (v10 == v11)
    {
      if (v9 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = *(*a2 + 16);
      }

      else
      {
        v14 = *v8;
      }

      return memcmp(v13, v14, v10) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double cva::ImageDirectory::ImageDirectory(cva::ImageDirectory *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 12) = this + 80;
  return result;
}

{
  *(this + 10) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 12) = this + 80;
  return result;
}

void cva::ImageDirectory::open(uint64_t a1, void *a2, const void **a3)
{
  if (a1 != a2)
  {
    if (*(a1 + 23) < 0)
    {
      v6 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v7 = v6;
      }

      sub_24506122C(a1, a2, v7);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_24505A134(a1, *a2, a2[1]);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v5;
    }
  }

  v8 = (a1 + 24);
  if ((a1 + 24) != a3)
  {
    v9 = *(a3 + 23);
    if (*(a1 + 47) < 0)
    {
      if (v9 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v9 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = a3[1];
      }

      sub_24506122C(v8, v11, v12);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      sub_24505A134(v8, *a3, a3[1]);
    }

    else
    {
      v10 = *a3;
      *(a1 + 40) = a3[2];
      *v8 = v10;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = off_278E22418[v13];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      break;
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    v18 = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    *(&__dst + v16) = 0;
    sub_245065C58(a1 + 48, &__dst);
    if (v18 < 0)
    {
      operator delete(__dst);
    }

    if (++v13 == 6)
    {

      cva::ImageDirectory::parseDirectory(a1);
    }
  }

  sub_24504FAF4();
}

void sub_2450811F0(char *a1)
{
  if (a1)
  {
    sub_2450811F0(*a1);
    sub_2450811F0(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void *sub_24508124C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 23);
  v4 = v3;
  v5 = result;
  if (v3 < 0)
  {
    v5 = *result;
    v4 = result[1];
  }

  v6 = v4 != a2;
  if ((v4 - a2) >= 2)
  {
    result = memmove(v5 + a2, v5 + a2 + v6, v4 - a2 - v6);
    LOBYTE(v3) = *(v2 + 23);
  }

  v7 = v4 - v6;
  if ((v3 & 0x80) != 0)
  {
    v2[1] = v7;
  }

  else
  {
    *(v2 + 23) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  return result;
}

void cva::ImageDirectory::open(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    if (*(a1 + 23) < 0)
    {
      v8 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v9 = v8;
      }

      sub_24506122C(a1, a2, v9);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_24505A134(a1, *a2, a2[1]);
    }

    else
    {
      v7 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v7;
    }
  }

  v10 = (a1 + 24);
  if ((a1 + 24) != a3)
  {
    v11 = *(a3 + 23);
    if (*(a1 + 47) < 0)
    {
      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v11 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_24506122C(v10, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      sub_24505A134(v10, *a3, a3[1]);
    }

    else
    {
      v12 = *a3;
      *(a1 + 40) = a3[2];
      *v10 = v12;
    }
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  while (v16 != v15)
  {
    v17 = *(v16 - 1);
    v16 -= 3;
    if (v17 < 0)
    {
      operator delete(*v16);
    }
  }

  *(a1 + 56) = v15;
  if (v15 >= *(a1 + 64))
  {
    v19 = sub_245077364(a1 + 48, a4);
  }

  else
  {
    if (*(a4 + 23) < 0)
    {
      sub_24505989C(v15, *a4, *(a4 + 8));
    }

    else
    {
      v18 = *a4;
      *(v15 + 16) = *(a4 + 16);
      *v15 = v18;
    }

    v19 = v15 + 24;
  }

  *(a1 + 56) = v19;

  cva::ImageDirectory::parseDirectory(a1);
}

void cva::ImageDirectory::close(char **this)
{
  v1 = this + 10;
  sub_2450811F0(this[10]);
  *(v1 - 1) = v1;
  *v1 = 0;
  v1[1] = 0;
  v1[2] = v1;
}

void cva::ImageDirectory::getCurrentImagePath(cva::ImageDirectory *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 23);
  if (v3 >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  if (v4 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v15, 0, sizeof(v15));
  *(&v15.__r_.__value_.__s + 23) = v4 + 1;
  if (v4)
  {
    if ((v3 & 0x80u) == 0)
    {
      v6 = this;
    }

    else
    {
      v6 = *this;
    }

    memmove(&v15, v6, v4);
  }

  *(&v15.__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(this + 12);
  v10 = *(v7 + 40);
  v8 = v7 + 40;
  v9 = v10;
  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v11 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  v14 = std::string::append(&v15, v12, v13);
  *a2 = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

const char *cva::ImageDirectory::getCurrentImageFormat(cva::ImageDirectory **this, char *a2, unsigned int *a3, unsigned int *a4)
{
  if (this[12] == (this + 10))
  {
    return 0;
  }

  v14 = v4;
  v15 = v5;
  cva::ImageDirectory::getCurrentImagePath(this, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  result = cva::imfinfo(p_p, a2, a3, a4, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v12;
  }

  return result;
}

uint64_t cva::ImageDirectory::getCurrentPosition(cva::ImageDirectory *this)
{
  v1 = *(this + 9);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = v1[1];
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
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    ++result;
    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

BOOL cva::ImageDirectory::forward(cva::ImageDirectory *this, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = this + 80;
  v3 = *(this + 12);
  do
  {
    v4 = *(v3 + 1);
    v5 = v3;
    if (v4)
    {
      do
      {
        v3 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v3 = *(v5 + 2);
        v6 = *v3 == v5;
        v5 = v3;
      }

      while (!v6);
    }

    if (v3 == v2)
    {
      break;
    }

    --a2;
  }

  while (a2);
  *(this + 12) = v3;
  return v3 != v2;
}

BOOL cva::ImageDirectory::backward(cva::ImageDirectory *this, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *(this + 9);
  v3 = *(this + 12);
  while (1)
  {
    v4 = v3 != v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *v3;
    if (*v3)
    {
      do
      {
        v6 = v5;
        v5 = v5[1];
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (v7);
    }

    *(this + 12) = v6;
    v3 = v6;
    if (!--a2)
    {
      return 1;
    }
  }

  return v4;
}

uint64_t cva::ImageDirectory::seekToFrame(cva::ImageDirectory *this, unint64_t a2)
{
  v2 = *(this + 10);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 80);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == (this + 80) || v3[4] > a2)
  {
    return 0;
  }

  *(this + 12) = v3;
  return 1;
}

BOOL cva::ImageDirectory::seekToPosition(cva::ImageDirectory *this, unint64_t a2)
{
  v2 = *(this + 11);
  if (v2 > a2)
  {
    v3 = *(this + 9);
    *(this + 12) = v3;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
      do
      {
        v11 = *v3;
        if (*v3)
        {
          do
          {
            v7 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v7 = v3[2];
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (v8);
        }

        v3 = v7;
      }

      while (!__CFADD__(v9++, 1));
      goto LABEL_19;
    }

    if (a2)
    {
      v4 = a2;
      do
      {
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

      while (v4-- > 1);
LABEL_19:
      *(this + 12) = v7;
    }
  }

  return v2 > a2;
}

const char *cva::imfinfo(const char *this, char *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  if (this)
  {
    *a2 = 0;
    *a3 = 0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], this, 0x8000100u);
    v10 = CFURLCreateWithFileSystemPath(v8, v9, kCFURLPOSIXPathStyle, 0);
    CFRelease(v9);
    v11 = CGImageSourceCreateWithURL(v10, 0);
    CFRelease(v10);
    if (v11)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
      CFRelease(v11);
      if (ImageAtIndex)
      {
        *a2 = CGImageGetWidth(ImageAtIndex);
        *a3 = CGImageGetHeight(ImageAtIndex);
        ColorSpace = CGImageGetColorSpace(ImageAtIndex);
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
        BitsPerComponent = CGImageGetBitsPerComponent(ImageAtIndex);
        BitmapInfo = CGImageGetBitmapInfo(ImageAtIndex);
        AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
        CGImageRelease(ImageAtIndex);
        if (AlphaInfo > kCGImageAlphaNoneSkipFirst || ((1 << AlphaInfo) & 0x61) == 0)
        {
          if (NumberOfComponents == 3 && AlphaInfo == kCGImageAlphaFirst)
          {
            if (BitsPerComponent == 16)
            {
              v19 = 1647719521;
            }

            else
            {
              v19 = 0;
            }

            if (BitsPerComponent == 8)
            {
              v19 = 32;
            }

            goto LABEL_37;
          }
        }

        else
        {
          if (NumberOfComponents == 3)
          {
            if (BitsPerComponent == 16)
            {
              v19 = 1647589490;
            }

            else
            {
              v19 = 0;
            }

            if (BitsPerComponent == 8)
            {
              v19 = 24;
            }

            goto LABEL_37;
          }

          if (NumberOfComponents == 1)
          {
            v19 = 1278226488;
            switch(BitsPerComponent)
            {
              case 8:
LABEL_37:
                *a4 = v19;
                return (v19 != 0);
              case 32:
                v19 = ((BitmapInfo << 23) >> 31) & 0x4C303066;
                goto LABEL_37;
              case 16:
                v19 = 1278226536;
                if ((BitmapInfo & 0x100) == 0)
                {
                  v19 = 1647392359;
                }

                goto LABEL_37;
            }
          }
        }

        v19 = 0;
        goto LABEL_37;
      }

      v20 = "CGImageSourceCreateImageAtIndex() failed!";
    }

    else
    {
      v20 = "CGImageSourceCreateWithURL() failed!";
    }

    puts(v20);
    return 0;
  }

  return this;
}

FILE *cva::ppml008read@<X0>(cva *this@<X0>, void *a2@<X8>)
{
  result = fopen(this, "rb");
  if (result)
  {
    v5 = result;
    v8 = 0;
    v7 = 0;
    if (sub_245081C2C(result, &v8 + 1, &v8, &v7))
    {
      v6 = v7 == 1278226488;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      operator new();
    }

    result = fclose(v5);
  }

  *a2 = 0;
  return result;
}

uint64_t sub_245081C2C(FILE *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v15[0] = 35;
  while (!feof(a1) && v15[0] == 35)
  {
    result = fgets(v15, 512, a1);
    if (!result)
    {
      goto LABEL_26;
    }
  }

  if (*v15 == 13904)
  {
    v9 = 24;
  }

  else
  {
    if (*v15 != 13648)
    {
      goto LABEL_25;
    }

    v9 = 0;
  }

  *a4 = v9;
  v15[0] = 35;
  while (!feof(a1) && v15[0] == 35)
  {
    result = fgets(v15, 512, a1);
    if (!result)
    {
      goto LABEL_26;
    }
  }

  v14 = 0;
  if (sscanf(v15, "%d %d", &v14 + 4, &v14) == 2)
  {
    v15[0] = 35;
    while (!feof(a1) && v15[0] == 35)
    {
      result = fgets(v15, 512, a1);
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v13 = 0;
    if (sscanf(v15, "%d", &v13) == 1)
    {
      if (!*a4)
      {
        if (v13 < 257)
        {
          v10 = 1278226488;
LABEL_29:
          *a4 = v10;
          goto LABEL_30;
        }

        if (v13 <= 0x10000)
        {
          v10 = 1647392359;
          goto LABEL_29;
        }
      }

LABEL_30:
      v12 = v14;
      *a2 = HIDWORD(v14);
      *a3 = v12;
      result = 1;
      goto LABEL_26;
    }
  }

LABEL_25:
  result = 0;
LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

FILE *cva::ppmb16gread@<X0>(cva *this@<X0>, void *a2@<X8>)
{
  result = fopen(this, "rb");
  if (result)
  {
    v5 = result;
    v8 = 0;
    v7 = 0;
    if (sub_245081C2C(result, &v8 + 1, &v8, &v7))
    {
      v6 = v7 == 1647392359;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      operator new();
    }

    result = fclose(v5);
  }

  *a2 = 0;
  return result;
}

FILE *cva::ppmrgb8read@<X0>(cva *this@<X0>, void *a2@<X8>)
{
  result = fopen(this, "rb");
  if (result)
  {
    v5 = result;
    v8 = 0;
    v7 = 0;
    if (sub_245081C2C(result, &v8 + 1, &v8, &v7))
    {
      v6 = v7 == 24;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      operator new();
    }

    result = fclose(v5);
  }

  *a2 = 0;
  return result;
}

uint64_t cva::imread<unsigned char>@<X0>(cva *a1@<X0>, size_t *a2@<X8>)
{
  strcpy(&size, ".ppm");
  strcpy(v10, ".pgm");
  if (sub_245082290(a1, &size) || sub_245082290(a1, v10))
  {
    result = cva::ppml008read(a1, &size);
    *a2 = size;
  }

  else
  {
    v9 = 0;
    v10[0] = 0;
    result = sub_245082370(a1, v10, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_245082290(char *__s, char *a2)
{
  result = 0;
  if (__s && a2)
  {
    if (!*__s || !*a2)
    {
      return 0;
    }

    result = strchr(__s, 46);
    if (result)
    {
      result = strchr(a2, 46);
      if (result)
      {
        v5 = -1;
        v6 = -1;
        while (1)
        {
          v7 = strlen(__s);
          if (v5 + 1 >= v7)
          {
            break;
          }

          v8 = __tolower(__s[v7 + v6]);
          v9 = strlen(a2);
          if (v8 != __tolower(a2[v9 + v6]))
          {
            break;
          }

          v10 = strlen(a2) - 1;
          --v6;
          ++v5;
          result = 1;
          if (v5 == v10)
          {
            return result;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_245082370(char *cStr, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, CGBitmapInfo *a6, CGImageAlphaInfo *a7)
{
  *a2 = 0;
  *a3 = 0;
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  v15 = CFURLCreateWithFileSystemPath(v13, v14, kCFURLPOSIXPathStyle, 0);
  CFRelease(v14);
  v16 = CGImageSourceCreateWithURL(v15, 0);
  CFRelease(v15);
  if (!v16)
  {
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
  CFRelease(v16);
  if (!ImageAtIndex)
  {
    return 0;
  }

  *a2 = CGImageGetWidth(ImageAtIndex);
  *a3 = CGImageGetHeight(ImageAtIndex);
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  *a4 = CGColorSpaceGetNumberOfComponents(ColorSpace);
  *a5 = CGImageGetBitsPerComponent(ImageAtIndex);
  *a6 = CGImageGetBitmapInfo(ImageAtIndex);
  *a7 = CGImageGetAlphaInfo(ImageAtIndex);
  CGImageRelease(ImageAtIndex);
  return 1;
}

BOOL sub_2450824A4(char *cStr, char *a2, unsigned int a3, int a4, unsigned int a5)
{
  LODWORD(v6) = a4;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  v11 = CFURLCreateWithFileSystemPath(v9, v10, kCFURLPOSIXPathStyle, 0);
  CFRelease(v10);
  v12 = CGImageSourceCreateWithURL(v11, 0);
  CFRelease(v11);
  if (!v12)
  {
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, 0);
  CFRelease(v12);
  if (!ImageAtIndex)
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v15 = CGDataProviderCopyData(DataProvider);
  if (!v15)
  {
LABEL_6:
    CGImageRelease(ImageAtIndex);
    return 0;
  }

  v16 = v15;
  BytePtr = CFDataGetBytePtr(v15);
  v18 = a3;
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  if (((CGImageGetBitsPerComponent(ImageAtIndex) * NumberOfComponents) >> 3) * v18 > a5)
  {
    CFRelease(v16);
    goto LABEL_6;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
  BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
  AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
  if (BitsPerPixel != 32 || AlphaInfo - 5 >= 2)
  {
    if (v6)
    {
      v26 = 0;
      v27 = 0;
      if (BytesPerRow >= a5)
      {
        v28 = a5;
      }

      else
      {
        v28 = BytesPerRow;
      }

      v6 = v6;
      do
      {
        memcpy(&a2[v26], &BytePtr[v27], v28);
        v27 += BytesPerRow;
        v26 += a5;
        --v6;
      }

      while (v6);
    }

    CFRelease(v16);
    CGImageRelease(ImageAtIndex);
    return 1;
  }

  else
  {
    v32.data = BytePtr;
    v32.height = v6;
    v32.width = v18;
    v32.rowBytes = BytesPerRow;
    v31.data = a2;
    v31.height = v6;
    v31.width = v18;
    v31.rowBytes = a5;
    if (AlphaInfo == kCGImageAlphaNoneSkipLast)
    {
      v29 = vImageConvert_RGBA8888toRGB888(&v32, &v31, 0);
    }

    else
    {
      v29 = vImageConvert_ARGB8888toRGB888(&v32, &v31, 0);
    }

    v30 = v29;
    CFRelease(v16);
    CGImageRelease(ImageAtIndex);
    return v30 == 0;
  }
}

uint64_t cva::imread<unsigned short>@<X0>(cva *a1@<X0>, size_t *a2@<X8>)
{
  strcpy(&size, ".ppm");
  strcpy(v10, ".pgm");
  if (sub_245082290(a1, &size) || sub_245082290(a1, v10))
  {
    result = cva::ppmb16gread(a1, &size);
    *a2 = size;
  }

  else
  {
    v9 = 0;
    v10[0] = 0;
    result = sub_245082370(a1, v10, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  return result;
}

uint64_t cva::imread<float>@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  strcpy(&size, ".tiff");
  result = sub_245082290(a1, &size);
  if (result)
  {
    v9 = 0;
    result = sub_245082370(a1, &v9 + 1, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t cva::imread<cva::Matrix<unsigned char,3u,1u,false>>@<X0>(cva *a1@<X0>, size_t *a2@<X8>)
{
  strcpy(&size, ".ppm");
  strcpy(v10, ".pgm");
  if (sub_245082290(a1, &size) || sub_245082290(a1, v10))
  {
    result = cva::ppmrgb8read(a1, &size);
    *a2 = size;
  }

  else
  {
    v9 = 0;
    v10[0] = 0;
    result = sub_245082370(a1, v10, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  return result;
}

uint64_t cva::imread<cva::Matrix<unsigned char,4u,1u,false>>@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  strcpy(&size, ".ppm");
  strcpy(v10, ".pgm");
  result = sub_245082290(a1, &size);
  if (result || (result = sub_245082290(a1, v10), (result & 1) != 0) || (strcpy(&size, ".tiff"), result = sub_245082290(a1, &size), (result & 1) != 0))
  {
    *a2 = 0;
  }

  else
  {
    v9 = 0;
    v10[0] = 0;
    result = sub_245082370(a1, v10, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  return result;
}

uint64_t cva::imread<cva::Matrix<unsigned short,4u,1u,false>>@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  strcpy(&size, ".ppm");
  strcpy(v10, ".pgm");
  result = sub_245082290(a1, &size);
  if (result || (result = sub_245082290(a1, v10), (result & 1) != 0) || (strcpy(&size, ".tiff"), result = sub_245082290(a1, &size), (result & 1) != 0))
  {
    *a2 = 0;
  }

  else
  {
    v9 = 0;
    v10[0] = 0;
    result = sub_245082370(a1, v10, &v9, &v8, &v7, &v6, &v5);
    if (result)
    {
      operator new();
    }

    *a2 = 0;
  }

  return result;
}

FILE *cva::imread(cva *this, const char *a2)
{
  v23 = 0;
  v24 = 0;
  pixelBuffer = 0;
  v22 = 0;
  strcpy(v25, ".ppm");
  strcpy(&pixelBufferOut, ".pgm");
  if (sub_245082290(this, v25) || sub_245082290(this, &pixelBufferOut))
  {
    result = fopen(this, "rb");
    if (!result)
    {
      return result;
    }

    v4 = result;
    v28 = 0;
    v27 = 0;
    pixelBufferOut = 0;
    if (sub_245081C2C(result, &v28 + 1, &v28, &v27))
    {
      v5 = v27;
      if (v27 == 24 || v27 == 1647392359 || v27 == 1278226488)
      {
        v6 = v28;
        v7 = HIDWORD(v28);
        AttributeDictionary = cva::createAttributeDictionary(HIDWORD(v28), v28, v27, 16, 16, 0, 1, 0, v20);
        if (AttributeDictionary)
        {
          v9 = AttributeDictionary;
          v10 = CVPixelBufferCreate(0, v7, v6, v5, AttributeDictionary, &pixelBufferOut);
          CFRelease(v9);
          if (!v10)
          {
            CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
            cva::imageViewFromPixelBuffer<unsigned char>();
          }
        }

        pixelBufferOut = 0;
      }
    }

    fclose(v4);
    return 0;
  }

  if (!sub_245082370(this, &v24 + 1, &v24, &v23 + 1, &v23, &v22 + 1, &v22))
  {
    return 0;
  }

  if (v22 <= 6 && ((1 << v22) & 0x61) != 0)
  {
    if (HIDWORD(v23) == 3)
    {
      if (v23 == 16)
      {
        v13 = 1647589490;
      }

      else
      {
        v13 = 0;
      }

      if (v23 == 8)
      {
        v11 = 24;
      }

      else
      {
        v11 = v13;
      }
    }

    else if (HIDWORD(v23) == 1)
    {
      v11 = 1278226488;
      if (v23 != 8)
      {
        if ((v22 & 0x10000000000) != 0)
        {
          v12 = 1278226536;
        }

        else
        {
          v12 = 1647392359;
        }

        if (v23 != 16)
        {
          v12 = 0;
        }

        if (v23 == 32)
        {
          v11 = ((HIDWORD(v22) << 23) >> 31) & 0x4C303066;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v23 == 16)
    {
      v14 = 1647719521;
    }

    else
    {
      v14 = 0;
    }

    if (v23 == 8)
    {
      v15 = 32;
    }

    else
    {
      v15 = v14;
    }

    if (v22 != 4)
    {
      v15 = 0;
    }

    if (HIDWORD(v23) == 3)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = v24;
  v16 = HIDWORD(v24);
  result = cva::createAttributeDictionary(HIDWORD(v24), v24, v11, 16, 16, 0, 1, 0, v20);
  if (result)
  {
    v18 = result;
    v19 = CVPixelBufferCreate(0, v16, v17, v11, result, &pixelBuffer);
    CFRelease(v18);
    if (!v19)
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      cva::imageViewFromPixelBuffer<unsigned char>();
    }

    return 0;
  }

  return result;
}

CGDataProviderRef cva::imwrite<unsigned char>(uint64_t a1, char *__s)
{
  strcpy(v13, ".ppm");
  strcpy(v12, ".pgm");
  if (!sub_245082290(__s, v13) && !sub_245082290(__s, v12))
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 0, 0, 0, 8u);
  }

  v4 = fopen(__s, "wb");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  fwrite("P5\n", 3uLL, 1uLL, v4);
  fprintf(v5, "%d %d\n", *(a1 + 8), *(a1 + 12));
  fwrite("255\n", 4uLL, 1uLL, v5);
  if (*(a1 + 12))
  {
    v7 = 0;
    v8 = (*(a1 + 16) * *(a1 + 8));
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = fwrite(v9, 1uLL, v8, v5);
      v6 = v10 == v8;
      if (v10 != v8)
      {
        break;
      }

      v9 += *(a1 + 20);
      if (++v7 >= *(a1 + 12))
      {
        v6 = 1;
        break;
      }
    }
  }

  fclose(v5);
  return v6;
}

CGDataProviderRef sub_245083314(void *data, unsigned int a2, unsigned int a3, unsigned int a4, char *a5, int a6, CGBitmapInfo a7, int a8, unsigned int a9)
{
  info = a8;
  result = CGDataProviderCreateWithData(&info, data, a4 * a3, 0);
  if (result)
  {
    v16 = result;
    if (a6)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if (DeviceRGB)
      {
        goto LABEL_4;
      }
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceGray();
      if (DeviceRGB)
      {
LABEL_4:
        v18 = DeviceRGB;
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceRGB);
        if (info == 3)
        {
          v20 = NumberOfComponents + 1;
        }

        else
        {
          v20 = NumberOfComponents;
        }

        v21 = CGImageCreate(a2, a3, a9, v20 * a9, a4, v18, a7, v16, 0, 0, kCGRenderingIntentDefault);
        CGColorSpaceRelease(v18);
        CGDataProviderRelease(v16);
        if (v21)
        {
          v22 = *MEMORY[0x277CBECE8];
          v23 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a5, 0);
          v24 = CFURLCreateWithFileSystemPath(v22, v23, kCFURLPOSIXPathStyle, 0);
          v25 = strrchr(a5, 46);
          v26 = CFStringCreateWithCString(v22, v25 + 1, 0x8000100u);
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v26, 0);
          v28 = CGImageDestinationCreateWithURL(v24, PreferredIdentifierForTag, 1uLL, 0);
          CFRelease(v23);
          CFRelease(v24);
          CFRelease(v26);
          CFRelease(PreferredIdentifierForTag);
          if (v28)
          {
            CGImageDestinationAddImage(v28, v21, 0);
            v29 = CGImageDestinationFinalize(v28);
            CFRelease(v28);
            CGImageRelease(v21);
            return v29;
          }

          CGImageRelease(v21);
        }

        return 0;
      }
    }

    CGDataProviderRelease(v16);
    return 0;
  }

  return result;
}

CGDataProviderRef cva::imwrite<unsigned short>(uint64_t a1, char *__s)
{
  strcpy(v13, ".ppm");
  strcpy(v12, ".pgm");
  if (!sub_245082290(__s, v13) && !sub_245082290(__s, v12))
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 0, 0x1000u, 0, 0x10u);
  }

  v4 = fopen(__s, "wb");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  fwrite("P5\n", 3uLL, 1uLL, v4);
  fprintf(v5, "%d %d\n", *(a1 + 8), *(a1 + 12));
  fwrite("65535\n", 6uLL, 1uLL, v5);
  if (*(a1 + 12))
  {
    v7 = 0;
    v8 = (*(a1 + 16) * *(a1 + 8));
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = fwrite(v9, 1uLL, v8, v5);
      v6 = v10 == v8;
      if (v10 != v8)
      {
        break;
      }

      v9 += *(a1 + 20);
      if (++v7 >= *(a1 + 12))
      {
        v6 = 1;
        break;
      }
    }
  }

  fclose(v5);
  return v6;
}

CGDataProviderRef cva::imwrite<float>(uint64_t a1, char *__s)
{
  strcpy(v5, ".tiff");
  result = sub_245082290(__s, v5);
  if (result)
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 0, 0x2F00u, 0, 0x20u);
  }

  return result;
}

CGDataProviderRef cva::imwrite<cva::Matrix<unsigned char,3u,1u,false>>(uint64_t a1, char *__s)
{
  strcpy(v13, ".ppm");
  strcpy(v12, ".pgm");
  if (!sub_245082290(__s, v13) && !sub_245082290(__s, v12))
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 1, 0, 0, 8u);
  }

  v4 = fopen(__s, "wb");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  fwrite("P6\n", 3uLL, 1uLL, v4);
  fprintf(v5, "%d %d\n", *(a1 + 8), *(a1 + 12));
  fwrite("255\n", 4uLL, 1uLL, v5);
  if (*(a1 + 12))
  {
    v7 = 0;
    v8 = (*(a1 + 16) * *(a1 + 8));
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = fwrite(v9, 1uLL, v8, v5);
      v6 = v10 == v8;
      if (v10 != v8)
      {
        break;
      }

      v9 += *(a1 + 20);
      if (++v7 >= *(a1 + 12))
      {
        v6 = 1;
        break;
      }
    }
  }

  fclose(v5);
  return v6;
}

CGDataProviderRef cva::imwrite<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, char *__s)
{
  strcpy(v6, ".ppm");
  strcpy(v5, ".pgm");
  if (sub_245082290(__s, v6))
  {
    return 0;
  }

  if (sub_245082290(__s, v5))
  {
    return 0;
  }

  strcpy(v6, ".tiff");
  if (sub_245082290(__s, v6))
  {
    return 0;
  }

  else
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 1, 1u, 3, 8u);
  }
}

CGDataProviderRef cva::imwrite<cva::Matrix<unsigned short,4u,1u,false>>(uint64_t a1, char *__s)
{
  strcpy(v6, ".ppm");
  strcpy(v5, ".pgm");
  if (sub_245082290(__s, v6))
  {
    return 0;
  }

  if (sub_245082290(__s, v5))
  {
    return 0;
  }

  strcpy(v6, ".tiff");
  if (sub_245082290(__s, v6))
  {
    return 0;
  }

  else
  {
    return sub_245083314(*(a1 + 24), *(a1 + 8), *(a1 + 12), *(a1 + 20), __s, 1, 0x1003u, 3, 0x10u);
  }
}

void *cva::Path::Private::Private(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void cva::Path::~Path(cva::Path *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x245D61480](v1, 0x1012C40EC159624);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x245D61480](v1, 0x1012C40EC159624);
  }
}

uint64_t cva::Path::Private::Private(uint64_t result, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_24505989C(result, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
  }

  return result;
}

{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_24505989C(result, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
  }

  return result;
}

void cva::Path::Path(cva::Path *this)
{
  operator new();
}

{
  operator new();
}

void cva::Path::Path(cva::Path *this, const char *a2)
{
  sub_245083C14();
}

{
  sub_245083C14();
}

void cva::Path::Path()
{
  operator new();
}

{
  operator new();
}

void cva::Path::Path(cva::Path *this, const cva::Path *a2)
{
  v2 = *a2;
  operator new();
}

{
  v2 = *a2;
  operator new();
}

const void **cva::Path::operator=(const void **result, const void **a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    v3 = *result;
    if (*result != *a2)
    {
      v4 = v2[23];
      if (*(v3 + 23) < 0)
      {
        if ((v4 & 0x80u) == 0)
        {
          v6 = *a2;
        }

        else
        {
          v6 = *v2;
        }

        if ((v4 & 0x80u) == 0)
        {
          v7 = v2[23];
        }

        else
        {
          v7 = *(v2 + 1);
        }

        v8 = result;
        sub_24506122C(v3, v6, v7);
      }

      else
      {
        if ((v2[23] & 0x80) == 0)
        {
          v5 = *v2;
          v3[2] = *(v2 + 2);
          *v3 = v5;
          return result;
        }

        v8 = result;
        sub_24505A134(v3, *v2, *(v2 + 1));
      }

      return v8;
    }
  }

  return result;
}

void cva::Path::directory(uint64_t **this)
{
  v1 = *this;
  v2 = *(*this + 23);
  if (*(*this + 23) < 0)
  {
    v4 = v1[1];
    if (v4)
    {
      v3 = *v1;
      if (*(*v1 + v4 - 1) != 47)
      {
        if (v4 != 1)
        {
          if (v4 != 2)
          {
            goto LABEL_13;
          }

LABEL_12:
          if (*v3 != 11822)
          {
            goto LABEL_13;
          }

          goto LABEL_33;
        }

        v7 = *v3;
LABEL_32:
        if (v7 != 46)
        {
          goto LABEL_13;
        }

LABEL_33:
        if ((v2 & 0x80u) == 0)
        {
          v14 = *(*this + 23);
        }

        else
        {
          v14 = v1[1];
        }

        if (v14 + 1 < 0x7FFFFFFFFFFFFFF8)
        {
          if (v14 + 1 >= 0x17)
          {
            operator new();
          }

          v21 = 0;
          v20 = 0uLL;
          HIBYTE(v21) = v14 + 1;
          if (v14)
          {
            if ((v2 & 0x80u) == 0)
            {
              v15 = v1;
            }

            else
            {
              v15 = *v1;
            }

            memmove(&v20, v15, v14);
          }

          *(&v20 + v14) = 47;
          operator new();
        }

        sub_24504FAF4();
      }
    }
  }

  else if (*(*this + 23) && *(v1 + *(*this + 23) - 1) != 47)
  {
    if (v2 != 1)
    {
      v3 = *this;
      if (v2 != 2)
      {
LABEL_13:
        v20 = 0uLL;
        v21 = 0;
        cva::utils::string::split(&v20, v1, "/", 1);
        v5 = *(&v20 + 1);
        v6 = (*(&v20 + 1) - 24);
        if (*(*(&v20 + 1) - 1) < 0)
        {
          operator delete(*v6);
        }

        *(&v20 + 1) = v6;
        if (v20 == v6)
        {
          if (v6 >= v21)
          {
            v8 = 0x5555555555555556 * ((v21 - v6) >> 3);
            if (v8 <= 1)
            {
              v8 = 1;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v21 - v6) >> 3) >= 0x555555555555555)
            {
              v9 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v9 = v8;
            }

            if (v9 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_24504FAF4();
          }

          *(v5 - 24) = 46;
          *(v5 - 1) = 1;
          *(&v20 + 1) = v5;
        }

        v17 = 1;
        LOWORD(__p) = 47;
        cva::utils::string::join(&v20, &__p, &v18);
        v10 = std::string::append(&v18, "/", 1uLL);
        v11 = v10->__r_.__value_.__r.__words[0];
        size = v10->__r_.__value_.__l.__size_;
        v19[0] = v10->__r_.__value_.__r.__words[2];
        *(v19 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
        v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
          if ((v17 & 0x80000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        operator delete(__p);
LABEL_28:
        operator new();
      }

      goto LABEL_12;
    }

    v7 = *v1;
    goto LABEL_32;
  }

  operator new();
}

void sub_245084420(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
LABEL_3:
      v38 = 0;
      v39 = 0;
      v40 = 0;
      cva::utils::string::split(&v38, a2, "/", 1);
      v4 = v39;
      v5 = v39 - 3;
      if (*(v39 - 1) < 0)
      {
        if (*(v39 - 2))
        {
          goto LABEL_11;
        }

        operator delete(*v5);
      }

      else if (*(v39 - 1))
      {
        goto LABEL_11;
      }

      v39 = v5;
      v4 = v5;
LABEL_11:
      v6 = v38;
      v7 = v4 - v38 - 24;
      if (v4 - v38 != 24)
      {
        goto LABEL_14;
      }

      if ((*(v4 - 1) & 0x8000000000000000) != 0)
      {
        if (*(v4 - 2))
        {
LABEL_14:
          if (!a3)
          {
            v11 = v4 - 3;
            if (*(v4 - 1) < 0)
            {
              operator delete(*v11);
            }

            v39 = v4 - 3;
            if (v6 != v11)
            {
              goto LABEL_88;
            }

            if (v6 < v40)
            {
              *(v4 - 3) = 46;
              *(v4 - 1) = 1;
              v39 = v4;
              goto LABEL_88;
            }

            v16 = 0x5555555555555556 * ((v40 - v6) >> 3);
            if (v16 <= 1)
            {
              v16 = 1;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v40 - v6) >> 3) >= 0x555555555555555)
            {
              v17 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v17 = v16;
            }

            if (v17 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_93;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v4 - v38) >> 3) >= 2)
          {
            while (1)
            {
              v9 = v4 - 3;
              v10 = *(v4 - 1);
              if (v10 < 0)
              {
                if (*(v4 - 2) != 1 || **v9 != 46)
                {
LABEL_29:
                  v39 = v4;
                  break;
                }

                operator delete(*v9);
              }

              else if (v10 != 1 || *v9 != 46)
              {
                goto LABEL_29;
              }

              v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
              v7 -= 24;
              v4 -= 3;
              if (v8 <= 1)
              {
                goto LABEL_29;
              }
            }
          }

          v12 = (v4 - 3);
          if ((*(v4 - 1) & 0x80000000) == 0)
          {
            v13 = *(v4 - 1);
            if (v13 != 1)
            {
              if (v13 == 2 && *v12 == 11822)
              {
                goto LABEL_53;
              }

LABEL_56:
              v39 = v4 - 3;
              if (v6 != v12)
              {
                goto LABEL_78;
              }

              if (v12 < v40)
              {
                *(v4 - 3) = 46;
                v19 = v41.__r_.__value_.__r.__words[0];
                *(v4 - 9) = *(v41.__r_.__value_.__r.__words + 7);
                *(v4 - 2) = v19;
                *(v4 - 1) = 1;
                v39 = v4;
                v12 = v4;
                goto LABEL_78;
              }

              v23 = 0x5555555555555556 * ((v40 - v12) >> 3);
              if (v23 <= 1)
              {
                v23 = 1;
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v40 - v12) >> 3) >= 0x555555555555555)
              {
                v24 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v24 = v23;
              }

              if (v24 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_93;
            }

            if (*v12 != 46)
            {
              goto LABEL_56;
            }

LABEL_53:
            if (v4 < v40)
            {
              *v4 = 11822;
              v18 = *(v41.__r_.__value_.__r.__words + 7);
              v4[1] = v41.__r_.__value_.__r.__words[0];
              *(v4 + 15) = v18;
              *(v4 + 23) = 2;
              v12 = (v4 + 3);
LABEL_77:
              v39 = v12;
LABEL_78:
              if (0xAAAAAAAAAAAAAAABLL * ((v12 - v38) >> 3) >= 2)
              {
                v27 = v12 - 24;
                v28 = v12 - 24 - v38;
                do
                {
                  v30 = v27[23];
                  if (v30 < 0)
                  {
                    if (*(v27 + 1) != 1 || **v27 != 46)
                    {
                      break;
                    }

                    operator delete(*v27);
                  }

                  else if (v30 != 1 || *v27 != 46)
                  {
                    break;
                  }

                  v12 -= 24;
                  v39 = v27;
                  v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
                  v27 -= 24;
                  v28 -= 24;
                }

                while (v29 > 1);
              }

LABEL_88:
              v36 = 1;
              LOWORD(__p) = 47;
              cva::utils::string::join(&v38, &__p, &v41);
              v31 = std::string::append(&v41, "/", 1uLL);
              v32 = v31->__r_.__value_.__r.__words[0];
              size = v31->__r_.__value_.__l.__size_;
              v37[0] = v31->__r_.__value_.__r.__words[2];
              *(v37 + 3) = *(&v31->__r_.__value_.__r.__words[2] + 3);
              v34 = SHIBYTE(v31->__r_.__value_.__r.__words[2]);
              v31->__r_.__value_.__l.__size_ = 0;
              v31->__r_.__value_.__r.__words[2] = 0;
              v31->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v41.__r_.__value_.__l.__data_);
                if ((v36 & 0x80000000) == 0)
                {
                  goto LABEL_90;
                }
              }

              else if ((v36 & 0x80000000) == 0)
              {
                goto LABEL_90;
              }

              operator delete(__p);
LABEL_90:
              operator new();
            }

            v20 = v4 - v6;
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3) + 1;
            if (v21 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_24504FAF4();
            }

            if (0x5555555555555556 * ((v40 - v6) >> 3) > v21)
            {
              v21 = 0x5555555555555556 * ((v40 - v6) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v40 - v6) >> 3) >= 0x555555555555555)
            {
              v22 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v22 = v21;
            }

            if (!v22)
            {
              v25 = 8 * ((v4 - v6) >> 3);
              *v25 = 11822;
              *(v25 + 23) = 2;
              v12 = (v25 + 24);
              v26 = (v25 - v20);
              memcpy((v25 - v20), v6, v20);
              v38 = v26;
              v40 = 0;
              if (v6)
              {
                operator delete(v6);
              }

              goto LABEL_77;
            }

            if (v22 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_93:
            sub_24504FAF4();
          }

          v14 = *(v4 - 3);
          v15 = *(v4 - 2);
          if (v15 == 1)
          {
            if (*v14 == 46)
            {
              goto LABEL_53;
            }
          }

          else if (v15 == 2 && *v14 == 11822)
          {
            goto LABEL_53;
          }

          operator delete(v14);
          goto LABEL_56;
        }
      }

      else if (*(v4 - 1))
      {
        goto LABEL_14;
      }

      v41.__r_.__value_.__r.__words[0] = "/";
      sub_245083C14();
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_3;
  }

  operator new();
}

void cva::Path::filename(cva::Path *this)
{
  v1 = *this;
  v2 = *(*this + 23);
  if (v2 < 0)
  {
    v4 = v1[1];
    if (v4)
    {
      v5 = *v1;
      if (v5[v4 - 1] != 47)
      {
        sub_24505989C(__p, v5, v4);
LABEL_9:
        cva::Path::safeBasename(__p, &v8);
        operator new();
      }
    }
  }

  else if (*(*this + 23) && *(v1 + v2 - 1) != 47)
  {
    v3 = *v1;
    v7 = v1[2];
    *__p = v3;
    goto LABEL_9;
  }

  operator new();
}

void *cva::Path::safeBasename@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 23) < 0)
  {
    if (result[1])
    {
      goto LABEL_3;
    }

LABEL_13:
    a2[23] = 1;
    *a2 = 46;
    return result;
  }

  if (!*(result + 23))
  {
    goto LABEL_13;
  }

LABEL_3:
  LODWORD(v2) = *(result + 23);
  while ((v2 & 0x80) != 0)
  {
    v3 = result[1];
    v4 = v3 - 1;
    if (v3 <= 1)
    {
      goto LABEL_22;
    }

    v5 = *result;
    if (*(*result + v3 - 1) != 47)
    {
      goto LABEL_15;
    }

    result[1] = v4;
LABEL_4:
    *(v5 + v4) = 0;
    LODWORD(v2) = *(result + 23);
  }

  if (v2 <= 1)
  {
    goto LABEL_22;
  }

  v3 = v2;
  if (*(result + v2 - 1) == 47)
  {
    v4 = v2 - 1;
    *(result + 23) = v2 - 1;
    v5 = result;
    goto LABEL_4;
  }

  v5 = result;
LABEL_15:
  v6 = v5 + v3;
  do
  {
    if (!v3)
    {
      goto LABEL_22;
    }

    v7 = *--v6;
    --v3;
  }

  while (v7 != 47);
  v8 = v6 - v5;
  if (v8 == -1)
  {
LABEL_22:
    *a2 = *result;
    *(a2 + 2) = result[2];
    result[1] = 0;
    result[2] = 0;
    *result = 0;
  }

  else
  {
    if ((v2 & 0x80) != 0)
    {
      v2 = result[1];
      if (v2 <= v8)
      {
        goto LABEL_32;
      }

      result = *result;
    }

    else
    {
      v2 = v2;
      if (v8 >= v2)
      {
LABEL_32:
        sub_24504FAF4();
      }
    }

    v9 = v8 + 1;
    v10 = v2 - (v8 + 1);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24504FAF4();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    a2[23] = v10;
    if (v2 != v9)
    {
      v11 = a2;
      result = memmove(a2, result + v9, v10);
      a2 = v11;
    }

    a2[v10] = 0;
  }

  return result;
}

void cva::Path::workingDirectory(cva::Path *this)
{
  if (getcwd(0, 0))
  {
    sub_245083C14();
  }

  operator new();
}

void cva::Path::canonical(cva::Path *this)
{
  if ((*(*this + 23) & 0x8000000000000000) != 0)
  {
    if (*(*this + 8))
    {
LABEL_3:
      cva::Path::absolute(this);
    }
  }

  else if (*(*this + 23))
  {
    goto LABEL_3;
  }

  operator new();
}

void cva::Path::absolute(cva::Path *this)
{
  v1 = *this;
  if (*(*this + 23) < 0)
  {
    if (!*(v1 + 1))
    {
      goto LABEL_8;
    }

    v2 = *v1;
  }

  else
  {
    v2 = *this;
    if (!*(*this + 23))
    {
      goto LABEL_8;
    }
  }

  if (*v2 == 47)
  {
    operator new();
  }

LABEL_8:
  if (getcwd(0, 0))
  {
    sub_245083C14();
  }

  operator new();
}

BOOL cva::Path::exists(const char **this)
{
  v1 = *this;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  return access(v1, 0) == 0;
}

BOOL cva::Path::isAbsolute(cva::Path *this)
{
  v1 = *this;
  if ((*(*this + 23) & 0x80000000) == 0)
  {
    if (!*(*this + 23))
    {
      return 0;
    }

    return *v1 == 47;
  }

  if (v1[1])
  {
    v1 = *v1;
    return *v1 == 47;
  }

  return 0;
}

uint64_t cva::Path::makeRelative(uint64_t **this, uint64_t **a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
  cva::utils::string::split(&v23, *this, "/", 1);
  cva::utils::string::split(&__p, *a2, "/", 1);
  v3 = v23;
  v4 = v24;
  v5 = __p;
  if (v23 == v24)
  {
    goto LABEL_27;
  }

  v6 = v21;
  if (__p == v21)
  {
    goto LABEL_27;
  }

  if (*(v21 - 1) < 0)
  {
    if (!*(v21 - 2))
    {
      operator delete(*(v21 - 3));
LABEL_8:
      v21 = v6 - 3;
      v6 -= 3;
    }
  }

  else if (!*(v21 - 1))
  {
    goto LABEL_8;
  }

  if (v5 == v6)
  {
LABEL_26:
    operator new();
  }

  v7 = v3;
  v8 = v5;
  while (v7 != v4)
  {
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = v7[1];
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = v8[1];
    }

    if (v10 != v11)
    {
      break;
    }

    v13 = v9 >= 0 ? v7 : *v7;
    v14 = *v8;
    v15 = v12 >= 0 ? v8 : *v8;
    if (memcmp(v13, v15, v10))
    {
      break;
    }

    v7 += 3;
    v8 += 3;
    if (v8 == v6)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  if (!v5)
  {
    if (!v3)
    {
      return 0;
    }

    goto LABEL_35;
  }

  v16 = v21;
  while (v16 != v5)
  {
    v17 = *(v16 - 1);
    v16 -= 3;
    if (v17 < 0)
    {
      operator delete(*v16);
    }
  }

  operator delete(v5);
  if (v3)
  {
LABEL_35:
    while (v4 != v3)
    {
      v19 = *(v4 - 1);
      v4 -= 3;
      if (v19 < 0)
      {
        operator delete(*v4);
      }
    }

    operator delete(v3);
  }

  return 0;
}

BOOL cva::Path::isDirectory(const char **this)
{
  v1 = *this;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  return !stat(v1, &v4) && (v4.st_mode & 0xF000) == 0x4000;
}

BOOL cva::Path::isRegularFile(const char **this)
{
  v1 = *this;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  return !stat(v1, &v4) && (v4.st_mode & 0xF000) == 0x8000;
}

BOOL cva::Path::createDirectory(const char **this, const cva::Path *a2)
{
  v3 = *this;
  if (v3[23] < 0)
  {
    v3 = *v3;
  }

  if (access(v3, 0))
  {
    v4 = *this;
    if ((*this)[23] < 0)
    {
      v4 = *v4;
    }

    return mkdir(v4, 0x1FFu) == 0;
  }

  else
  {
    v6 = *this;
    if ((*this)[23] < 0)
    {
      v6 = *v6;
    }

    return !stat(v6, &v8) && (v8.st_mode & 0xF000) == 0x4000;
  }
}

BOOL cva::Path::createDirectory(cva::Path *this, const cva::Path *a2)
{
  v3 = *this;
  v4 = *(v3 + 23);
  if (a2)
  {
    if (v4 < 0)
    {
      v3 = *v3;
    }

    if (access(v3, 0))
    {
      sub_245084420(&v9, *this, 0);
    }

LABEL_12:
    v7 = *this;
    if (*(*this + 23) < 0)
    {
      v7 = *v7;
    }

    return !stat(v7, &v9) && (v9.st_mode & 0xF000) == 0x4000;
  }

  if (v4 < 0)
  {
    v3 = *v3;
  }

  if (!access(v3, 0))
  {
    goto LABEL_12;
  }

  v5 = *this;
  if (*(*this + 23) < 0)
  {
    v5 = *v5;
  }

  return mkdir(v5, 0x1FFu) == 0;
}

void cva::Path::randomFilename(cva::Path *this)
{
  std::chrono::steady_clock::now();
  atomic_fetch_add(dword_27EDF64D0, 1u);
  operator new();
}

std::string *cva::Path::append(std::string **this, const std::string::value_type ***a2)
{
  v3 = *this;
  size = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v3->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_14;
    }

    v5 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v3->__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    v5 = v3;
  }

  if (v5->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    v6 = *a2;
    if (*(*a2 + 23) < 0)
    {
      if (!v6[1])
      {
        goto LABEL_14;
      }

      v6 = *v6;
    }

    else if (!*(*a2 + 23))
    {
      goto LABEL_14;
    }

    if (*v6 != 47)
    {
      v7 = a2;
      std::string::push_back(v3, 47);
      a2 = v7;
      v3 = *this;
    }
  }

LABEL_14:
  v8 = *(*a2 + 23);
  v9 = (*a2)[1];
  if ((v8 & 0x80u) == 0)
  {
    v10 = *a2;
  }

  else
  {
    v10 = **a2;
  }

  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  return std::string::append(v3, v10, v11);
}

std::string *cva::Path::concatenate(std::string **a1, const std::string::value_type *a2)
{
  v2 = *a1;
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return std::string::append(v2, a2, v4);
}

BOOL cva::Path::remove(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return unlink(a1) == 0;
}

BOOL cva::Path::rmdir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return rmdir(a1) == 0;
}

BOOL cva::Path::resize(const char *a1, off_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return truncate(a1, a2) == 0;
}

uint64_t cva::plistParseScalar<unsigned char>(CFTypeRef *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 unsignedIntegerValue];
  if (v5 > 0xFF)
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

uint64_t cva::plistParseScalar<unsigned short>(CFTypeRef *a1, _WORD *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 unsignedIntegerValue];
  if (v5 >> 16)
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

uint64_t cva::plistParseScalar<unsigned int>(CFTypeRef *a1, _DWORD *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 unsignedIntegerValue];
  if (HIDWORD(v5))
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

BOOL cva::plistParseScalar<unsigned long long>(CFTypeRef *a1, void *a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFNumberGetTypeID();
  if (v4 == TypeID)
  {
    *a2 = [*a1 unsignedIntegerValue];
  }

  return v4 == TypeID;
}

uint64_t cva::plistParseScalar<signed char>(CFTypeRef *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 integerValue];
  if (v5 != v5)
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

uint64_t cva::plistParseScalar<short>(CFTypeRef *a1, _WORD *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 integerValue];
  if (v5 != v5)
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

uint64_t cva::plistParseScalar<int>(CFTypeRef *a1, _DWORD *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  v5 = [*a1 integerValue];
  if (v5 != v5)
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

BOOL cva::plistParseScalar<long long>(CFTypeRef *a1, void *a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFNumberGetTypeID();
  if (v4 == TypeID)
  {
    *a2 = [*a1 integerValue];
  }

  return v4 == TypeID;
}

BOOL cva::plistParseScalar<BOOL>(CFTypeRef *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFBooleanGetTypeID();
  if (v4 == TypeID)
  {
    *a2 = [*a1 BOOLValue];
  }

  return v4 == TypeID;
}

BOOL cva::plistParseScalar<float>(CFTypeRef *a1, _DWORD *a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFNumberGetTypeID();
  if (v4 == TypeID)
  {
    [*a1 floatValue];
    *a2 = v6;
  }

  return v4 == TypeID;
}

BOOL cva::plistParseScalar<double>(CFTypeRef *a1, void *a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFNumberGetTypeID();
  if (v4 == TypeID)
  {
    [*a1 doubleValue];
    *a2 = v6;
  }

  return v4 == TypeID;
}

BOOL cva::plistParseScalar<std::string>(CFTypeRef *a1, void **a2)
{
  v4 = CFGetTypeID(*a1);
  TypeID = CFStringGetTypeID();
  if (v4 == TypeID)
  {
    v6 = *a1;
    sub_24508706C(a2, [v6 UTF8String]);
  }

  return v4 == TypeID;
}

void **sub_24508706C(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2450870B4(a1, __s, v4);
}

void **sub_2450870B4(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_24504FAF4();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

CFPropertyListRef cva::createPlistLoadFile(cva *this, const char *a2)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], this, 0);
  v4 = CFURLCreateWithFileSystemPath(v2, v3, kCFURLPOSIXPathStyle, 0);
  v5 = CFReadStreamCreateWithFile(v2, v4);
  CFReadStreamOpen(v5);
  v6 = CFPropertyListCreateWithStream(v2, v5, 0, 1uLL, 0, 0);
  CFReadStreamClose(v5);
  CFRelease(v5);
  CFRelease(v4);
  CFRelease(v3);
  return v6;
}

uint64_t cva::plistSaveFile(cva *this, const void *a2, const char *a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding", a3)}];
  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], this, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v6 = Data;
  if (Data)
  {
    v7 = [(__CFData *)Data writeToFile:v4 atomically:1];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL cva::plistGetDictElement(CFTypeRef *this, const void *const *a2, const void **a3, const void **a4)
{
  v7 = CFGetTypeID(*this);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0);
  v9 = CFDictionaryGetValueIfPresent(*this, v8, a3) != 0;
  CFRelease(v8);
  return v9;
}

BOOL cva::plistGetDataElement(CFTypeRef *this, const void **a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = CFGetTypeID(*this);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  v7 = *this;
  v8 = [v7 length];
  v9 = v8 == v3;
  v10 = v9;
  if (v9)
  {
    memcpy(a2, [v7 bytes], v8);
  }

  return v10;
}

void cva::plistPrintDict(CFDictionaryRef *this, const __CFDictionary *const *a2)
{
  Count = CFDictionaryGetCount(*this);
  v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(*this, v4, v5);
  if (Count)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v8 = *v6++;
      CFShow(v8);
      v9 = *v7++;
      CFShow(v9);
      --Count;
    }

    while (Count);
  }

  free(v4);

  free(v5);
}

std::string *cva::PrintError::print@<X0>(cva::PrintError *this@<X0>, std::string *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  strerror_r(this, __strerrbuf, 0x400uLL);
  result = cva::Sprintf::sprintf("%s (%d)", a2, __strerrbuf, this);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

FILE *cva::FileTarget::logImpl(uint64_t a1, int a2, const char *a3, va_list a4)
{
  result = *(a1 + 80);
  if (result)
  {
    fprintf(result, "< %-8s > ", off_278E22448[a2]);
    vfprintf(*(a1 + 80), a3, a4);
    result = fputc(10, *(a1 + 80));
    if (*(a1 + 88) == 1)
    {
      v8 = *(a1 + 80);

      return fflush(v8);
    }
  }

  return result;
}

void cva::FileTarget::~FileTarget(cva::FileTarget *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    fflush(v2);
    fclose(*(this + 10));
  }

  *this = &unk_2857FD528;
  std::mutex::~mutex((this + 8));

  JUMPOUT(0x245D61480);
}

{
  v2 = *(this + 10);
  if (v2)
  {
    fflush(v2);
    fclose(*(this + 10));
  }

  *this = &unk_2857FD528;
  std::mutex::~mutex((this + 8));
}

{
  v2 = *(this + 10);
  if (v2)
  {
    fflush(v2);
    fclose(*(this + 10));
  }

  *this = &unk_2857FD528;
  std::mutex::~mutex((this + 8));
}

uint64_t cva::ConsoleTarget::logImpl(uint64_t a1, int a2, const char *a3, va_list a4)
{
  v7 = *(a1 + 80);
  v8 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v8 = *v8;
  }

  fprintf(v7, "[%s] < %-8s > ", v8, off_278E22448[a2]);
  vfprintf(*(a1 + 80), a3, a4);
  v9 = *(a1 + 80);

  return fputc(10, v9);
}

void sub_245087854(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *a1 = &unk_2857FD528;
  std::mutex::~mutex((a1 + 8));

  JUMPOUT(0x245D61480);
}

uint64_t sub_2450878CC(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *a1 = &unk_2857FD528;
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void cva::OsLogTarget::logImpl(uint64_t a1, unsigned int a2, const char *a3, va_list a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = vsnprintf(0, 0, a3, a4);
  if (v7 != -1)
  {
    if (v7 > -2)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  vsnprintf(0, 0, a3, a4);
  v8 = *(a1 + 80);
  if (a2 >= 6)
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v9 = (0x1110000102uLL >> (8 * a2));
  }

  if (os_log_type_enabled(v8, v9))
  {
    v10 = off_278E22448[a2];
    *buf = 136315394;
    v14 = v10;
    v15 = 2080;
    v16 = 0;
    _os_log_impl(&dword_245028000, v8, v9, "< %-8s > %s", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_245087A8C(uint64_t a1)
{
  *a1 = &unk_2857FD528;
  std::mutex::~mutex((a1 + 8));

  JUMPOUT(0x245D61480);
}

uint64_t sub_245087AF0(uint64_t a1)
{
  *a1 = &unk_2857FD528;
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void *cva::Logger::instance(cva::Logger *this)
{
  if ((atomic_load_explicit(&qword_27EDF64E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EDF64E0))
  {
    cva::Logger::Logger(&unk_27EDF64D8);
  }

  return &unk_27EDF64D8;
}

void *sub_245087DCC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 24));
    sub_245087E24(*(v1 + 8));
    MEMORY[0x245D61480](v1, 0x1020C40791C62A7);
    return v2;
  }

  return result;
}

void sub_245087E24(char *a1)
{
  if (!a1)
  {
    return;
  }

  sub_245087E24(*a1);
  sub_245087E24(*(a1 + 1));
  v2 = *(a1 + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1[55] < 0)
  {
LABEL_5:
    operator delete(*(a1 + 4));
  }

LABEL_6:

  operator delete(a1);
}

void cva::Logger::Private::setTarget(uint64_t a1, __int128 *a2, const char *a3)
{
  std::mutex::lock((a1 + 24));
  v6 = strlen(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v24 = v6;
  if (v6)
  {
    memcpy(__dst, a3, v6);
  }

  *(__dst + v7) = 0;
  v8 = *(a1 + 8);
  if (!v8)
  {
LABEL_33:
    operator new();
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = __dst[1];
  }

  while (1)
  {
    while (1)
    {
      v11 = v8;
      v14 = v8[4];
      v12 = v8 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      v16 = v15 >= 0 ? v12 : v13;
      v17 = v15 >= 0 ? *(v12 + 23) : v12[1];
      v18 = v17 >= v10 ? v10 : v17;
      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_28;
      }

LABEL_14:
      v8 = *v11;
      if (!*v11)
      {
        goto LABEL_33;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v20 = memcmp(v16, v9, v18);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_32;
    }

    if (v17 >= v10)
    {
      break;
    }

LABEL_32:
    v8 = v11[1];
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  v21 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v22 = v11[8];
  *(v11 + 7) = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    if (v24 < 0)
    {
LABEL_37:
      operator delete(__dst[0]);
    }
  }

  else if (v24 < 0)
  {
    goto LABEL_37;
  }

  std::mutex::unlock((a1 + 24));
}

void sub_245088180(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2857FD0C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

void cva::Logger::setTarget(uint64_t *a1, void *a2, const char *a3)
{
  v3 = *a1;
  v4 = a2[1];
  *&v6 = *a2;
  *(&v6 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cva::Logger::Private::setTarget(v3, &v6, a3);
  v5 = *(&v6 + 1);
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void cva::Logger::Private::getTarget(cva::Logger::Private *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((this + 24));
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v26 = v6;
  if (v6)
  {
    memcpy(__dst, a2, v6);
  }

  *(__dst + v7) = 0;
  v8 = this + 8;
  v9 = *(this + 1);
  v10 = v26;
  if (!v9)
  {
    goto LABEL_42;
  }

  if ((v26 & 0x80u) == 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v12 = v26;
  }

  else
  {
    v12 = __dst[1];
  }

  v13 = this + 8;
  do
  {
    while (1)
    {
      v14 = v9[55];
      v15 = v14 >= 0 ? v9 + 32 : *(v9 + 4);
      v16 = v14 >= 0 ? v9[55] : *(v9 + 5);
      v17 = v12 >= v16 ? v16 : v12;
      v18 = memcmp(v15, v11, v17);
      if (v18)
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_29;
      }

LABEL_15:
      v9 = *(v9 + 1);
      if (!v9)
      {
        goto LABEL_30;
      }
    }

    if (v18 < 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v13 = v9;
    v9 = *v9;
  }

  while (v9);
LABEL_30:
  if (v13 == v8)
  {
    goto LABEL_42;
  }

  v19 = v13[55];
  if (v19 >= 0)
  {
    v20 = v13 + 32;
  }

  else
  {
    v20 = *(v13 + 4);
  }

  if (v19 >= 0)
  {
    v21 = v13[55];
  }

  else
  {
    v21 = *(v13 + 5);
  }

  if (v21 >= v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = v21;
  }

  v23 = memcmp(v11, v20, v22);
  if (!v23)
  {
    if (v12 >= v21)
    {
      goto LABEL_43;
    }

LABEL_42:
    v13 = this + 8;
    goto LABEL_43;
  }

  if (v23 < 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  if ((v10 & 0x80) != 0)
  {
    operator delete(__dst[0]);
    if (v8 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_48;
  }

  if (v8 == v13)
  {
LABEL_48:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_49;
  }

LABEL_45:
  v24 = *(v13 + 8);
  *a3 = *(v13 + 7);
  a3[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_49:

  std::mutex::unlock((this + 24));
}

void cva::Logger::logInCategory(cva::Logger::Private **a1, uint64_t a2, char *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  cva::Logger::Private::getTarget(*a1, a3, &v8);
  v6 = v8;
  if (v8 && a2 != 5 && *(v8 + 72) <= a2)
  {
    std::mutex::lock((v8 + 8));
    (*(*v6 + 16))(v6, a2, a4, va);
    std::mutex::unlock((v6 + 8));
  }

  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

BOOL cva::Logger::setMinimumSeverity(cva::Logger::Private **a1, int a2, char *a3)
{
  if (a2 == 5)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v6 = a2;
  cva::Logger::Private::getTarget(*a1, a3, &v9);
  result = v9 != 0;
  if (v9)
  {
    *(v9 + 72) = v6;
  }

  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  return result;
}

uint64_t cva::Logger::getMinimumSeverity(cva::Logger::Private **this, const char *a2)
{
  cva::Logger::Private::getTarget(*this, a2, &v5);
  if (v5)
  {
    result = *(v5 + 72);
    v3 = v6;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = 5;
    v3 = v6;
    if (!v6)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v4;
  }

  return result;
}

void sub_245088918(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 24) = &unk_2857FD528;

  std::mutex::~mutex((a1 + 32));
}

void sub_24508897C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2857FD058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

cva::FileTarget *cva::FileTarget::FileTarget(cva::FileTarget *this, const char *__filename, int a3, int a4)
{
  v5 = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  *this = &unk_2857FDB00;
  *(this + 1) = 850045863;
  if (a3)
  {
    v8 = "a";
  }

  else
  {
    v8 = "w";
  }

  v9 = fopen(__filename, v8);
  *(this + 10) = v9;
  *(this + 88) = a4;
  if (v9)
  {
    if (v5)
    {
      if (!a4)
      {
        return this;
      }

      goto LABEL_10;
    }

    v13 = time(0);
    v10 = *(this + 10);
    v11 = ctime(&v13);
    fprintf(v10, "-- %s", v11);
    if (*(this + 88))
    {
      v9 = *(this + 10);
LABEL_10:
      fflush(v9);
    }
  }

  return this;
}

{
  v5 = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  *this = &unk_2857FDB00;
  *(this + 1) = 850045863;
  if (a3)
  {
    v8 = "a";
  }

  else
  {
    v8 = "w";
  }

  v9 = fopen(__filename, v8);
  *(this + 10) = v9;
  *(this + 88) = a4;
  if (v9)
  {
    if (v5)
    {
      if (!a4)
      {
        return this;
      }

      goto LABEL_10;
    }

    v13 = time(0);
    v10 = *(this + 10);
    v11 = ctime(&v13);
    fprintf(v10, "-- %s", v11);
    if (*(this + 88))
    {
      v9 = *(this + 10);
LABEL_10:
      fflush(v9);
    }
  }

  return this;
}

void sub_245088D54(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    fflush(v2);
    fclose(*(a1 + 104));
  }

  *(a1 + 24) = &unk_2857FD528;

  std::mutex::~mutex((a1 + 32));
}

void sub_245088DBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2857FD100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D61480);
}

uint64_t cva::OsLogTarget::getOsLogType(unsigned int a1)
{
  v1 = 0x1110000102uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 2;
  }

  return v1;
}

void cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,3u,1u,false>>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<unsigned char>()
{
    ;
  }
}

void cva::Buffer<cva::half>::Buffer()
{
    ;
  }
}

{
    ;
  }
}

void cva::Buffer<cva::half>::~Buffer()
{
    ;
  }
}

void cva::Buffer<float>::Buffer()
{
    ;
  }
}

{
    ;
  }
}

void cva::Buffer<float>::~Buffer()
{
    ;
  }
}

void cva::Buffer<unsigned char>::Buffer()
{
    ;
  }
}

{
    ;
  }
}

void cva::Buffer<unsigned char>::~Buffer()
{
    ;
  }
}

void cva::Buffer<unsigned int>::Buffer()
{
    ;
  }
}

{
    ;
  }
}

void cva::Buffer<unsigned int>::~Buffer()
{
    ;
  }
}

void cva::Buffer<unsigned short>::Buffer()
{
    ;
  }
}

{
    ;
  }
}

void cva::Buffer<unsigned short>::~Buffer()
{
    ;
  }
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::log()
{
    ;
  }
}

void cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::log()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}