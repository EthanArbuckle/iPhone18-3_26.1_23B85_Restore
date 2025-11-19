uint64_t llvm::ConvertUTF8toUTF32Impl(unint64_t *a1, unsigned __int8 *a2, unsigned int **a3, unint64_t a4, int a5, int a6)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v6;
    *a3 = v7;
    return 0;
  }

  v8 = 0;
  if (a5)
  {
    v9 = a6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v15 = *v6;
        v16 = llvm::trailingBytesForUTF8[*v6];
        if (a2 - v6 <= v16)
        {
          if (v10)
          {
            *a1 = v6;
            *a3 = v7;
            return 1;
          }

          if (v15 - 194 >= 0x1E && v6 + 1 != a2)
          {
            v21 = v6[1];
            if (v15 == 224)
            {
              goto LABEL_66;
            }

            if (v15 - 225 <= 0xB)
            {
              goto LABEL_70;
            }

            if (v15 == 237)
            {
              goto LABEL_74;
            }

            if ((v15 & 0xFE) == 0xEE)
            {
              goto LABEL_70;
            }

            v22 = (v6 + 2);
            if (v15 != 240)
            {
              goto LABEL_79;
            }

            goto LABEL_31;
          }

LABEL_81:
          v30 = 1;
          goto LABEL_82;
        }

        if (v7 >= a4)
        {
          *a1 = v6;
          *a3 = v7;
          return 2;
        }

        v17 = llvm::trailingBytesForUTF8[*v6];
        v18 = v16 + 1;
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (v17 != 3)
            {
              goto LABEL_62;
            }

            v18 = llvm::trailingBytesForUTF8[*v6];
            if (v6[v16] > -65)
            {
              goto LABEL_62;
            }
          }

          v23 = &v6[v18];
          v24 = *(v23 - 1);
          v19 = v23 - 1;
          if (v24 > -65)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (!llvm::trailingBytesForUTF8[*v6])
          {
            goto LABEL_47;
          }

          v19 = &v6[v18];
        }

        v25 = *(v19 - 1);
        if (v25 > -65)
        {
          goto LABEL_62;
        }

        if (*v6 > 0xEFu)
        {
          if (v15 == 240)
          {
            if (v25 < 0x90u)
            {
              goto LABEL_62;
            }

            goto LABEL_49;
          }

          if (v15 == 244)
          {
            if (v25 <= 0x8Fu)
            {
              goto LABEL_49;
            }

            goto LABEL_62;
          }

          goto LABEL_47;
        }

        if (v15 == 224)
        {
          if (v25 >= 0xA0u)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v15 == 237)
        {
          break;
        }

LABEL_47:
        if (v15 >= -62 && v15 < 0xF5)
        {
          goto LABEL_49;
        }

LABEL_62:
        if (!a5)
        {
          goto LABEL_94;
        }

        if (v15 - 194 < 0x1E)
        {
          goto LABEL_81;
        }

        v30 = 1;
        if (v6 + 1 != a2)
        {
          v21 = v6[1];
          if (v15 == 224)
          {
LABEL_66:
            if ((v21 & 0xE0) == 0xA0)
            {
              v30 = 2;
            }

            else
            {
              v30 = 1;
            }

            goto LABEL_82;
          }

          if (v15 - 225 <= 0xB)
          {
            goto LABEL_70;
          }

          if (v15 == 237)
          {
LABEL_74:
            if (v21 >= -96)
            {
              v30 = 1;
            }

            else
            {
              v30 = 2;
            }

            goto LABEL_82;
          }

          if ((v15 & 0xFE) == 0xEE)
          {
LABEL_70:
            if (v21 >= -64)
            {
              v30 = 1;
            }

            else
            {
              v30 = 2;
            }

            goto LABEL_82;
          }

          v22 = (v6 + 2);
          if (v15 != 240)
          {
LABEL_79:
            v31 = v21;
            if (v15 - 241 > 2)
            {
              v30 = 1;
              if (v15 != 244 || v31 > -113)
              {
                goto LABEL_82;
              }

LABEL_86:
              if (v22 == a2)
              {
                v30 = 2;
              }

              else if (*v22 >= -64)
              {
                v30 = 2;
              }

              else
              {
                v30 = 3;
              }

              goto LABEL_82;
            }

            if (v21 <= -65)
            {
              goto LABEL_86;
            }

            goto LABEL_81;
          }

LABEL_31:
          if ((v21 - 144) <= 0x2F)
          {
            goto LABEL_86;
          }

          goto LABEL_81;
        }

LABEL_82:
        v6 += v30;
        v8 = 3;
        *v7++ = 65533;
        if (v6 >= a2)
        {
          goto LABEL_95;
        }
      }

      if (v25 > 0x9Fu)
      {
        goto LABEL_62;
      }

LABEL_49:
      v26 = 0;
      if (llvm::trailingBytesForUTF8[*v6] > 1u)
      {
        break;
      }

      if (llvm::trailingBytesForUTF8[*v6])
      {
        goto LABEL_57;
      }

      ++v6;
      v13 = v15 - llvm::offsetsFromUTF8[v16];
      if (v13 < 0x110000)
      {
        goto LABEL_9;
      }

LABEL_52:
      v8 = 3;
      *v7++ = 65533;
      if (v6 >= a2)
      {
        goto LABEL_95;
      }
    }

    if (v17 != 2)
    {
      v26 = v15 << 6;
      v27 = *++v6;
      v15 = v27;
    }

    v28 = *++v6;
    v26 = (v26 + v15) << 6;
    v15 = v28;
LABEL_57:
    v29 = v6[1];
    v6 += 2;
    v13 = ((v26 + v15) << 6) + v29 - llvm::offsetsFromUTF8[v16];
    if (v13 >= 0x110000)
    {
      goto LABEL_52;
    }

LABEL_9:
    v12 = v13 & 0x1FF800;
    if ((v13 & 0x1FF800) == 0xD800)
    {
      v13 = 65533;
    }

    if (v12 == 55296 && a5 == 0)
    {
      break;
    }

    *v7++ = v13;
    if (v6 >= a2)
    {
      goto LABEL_95;
    }
  }

  v6 += ~v16;
LABEL_94:
  v8 = 3;
LABEL_95:
  *a1 = v6;
  *a3 = v7;
  return v8;
}

uint64_t llvm::ConverterEBCDIC::convertToEBCDIC(char *a1, unint64_t a2, void *a3)
{
  v3 = a2;
  if (a3[2] < a2)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (!a2)
  {
LABEL_13:
    std::system_category();
    return 0;
  }

  while (1)
  {
    v5 = *a1;
    if ((v5 & 0x80000000) == 0)
    {
      --v3;
      ++a1;
      v6 = ISO88591ToIBM1047[v5];
      v7 = a3[1];
      if ((v7 + 1) > a3[2])
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if ((v5 + 60) <= 0xFDu)
    {
      goto LABEL_14;
    }

    if (v3 == 1)
    {
      break;
    }

    v8 = a1[1];
    if ((v8 & 0xC0) != 0x80)
    {
LABEL_14:
      v10 = 92;
      goto LABEL_16;
    }

    a1 += 2;
    v3 -= 2;
    v6 = ISO88591ToIBM1047[(v8 | (v5 << 6))];
    v7 = a3[1];
    if ((v7 + 1) > a3[2])
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

LABEL_6:
    *(*a3 + v7) = v6;
    ++a3[1];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v10 = 22;
LABEL_16:
  std::generic_category();
  return v10;
}

unsigned __int8 *llvm::ConverterEBCDIC::convertToUTF8(unsigned __int8 *result, unint64_t a2, void *a3)
{
  v3 = a2;
  v4 = result;
  if (a3[2] < a2)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (a2)
  {
    v5 = a3[1];
    do
    {
      v6 = *v4++;
      v7 = IBM1047ToISO88591[v6];
      v8 = a3[2];
      if (v7 < 0)
      {
        if (v5 + 1 > v8)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a3 + v5) = (v7 >> 6) | 0xC0;
        v8 = a3[2];
        v5 = a3[1] + 1;
        a3[1] = v5;
        LOBYTE(v7) = v7 & 0xBF;
      }

      if (v5 + 1 > v8)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a3 + v5) = v7;
      v5 = a3[1] + 1;
      a3[1] = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL llvm::ConvertUTF8toWide(int a1, const unsigned __int8 **a2, size_t a3, void **a4, void *a5)
{
  switch(a1)
  {
    case 4:
      v11 = *a4;
      v12 = a2;
      v9 = llvm::ConvertUTF8toUTF32(&v12, a2 + a3, &v11, &v11[2 * a3], 0);
      if (v9)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 2:
      v11 = *a4;
      v12 = a2;
      v9 = llvm::ConvertUTF8toUTF16(&v12, a2 + a3, &v11, &v11[a3], 0);
      if (v9)
      {
LABEL_7:
        *a5 = v12;
        return v9 == 0;
      }

LABEL_9:
      *a4 = v11;
      return v9 == 0;
    case 1:
      v12 = a2;
      if (llvm::isLegalUTF8String(&v12, (a2 + a3), a3))
      {
        memcpy(*a4, a2, a3);
        v9 = 0;
        *a4 = *a4 + a3;
      }

      else
      {
        *a5 = v12;
        v9 = 3;
      }

      break;
    default:
      v9 = 0;
      break;
  }

  return v9 == 0;
}

uint64_t llvm::ConvertCodePointToUTF8(llvm *this, uint64_t *a2, char **a3)
{
  v7 = this;
  v5 = *a2;
  v6 = &v7;
  if (llvm::ConvertUTF32toUTF8(&v6, &v8, &v5, v5 + 4, 0))
  {
    return 0;
  }

  *a2 = v5;
  return 1;
}

BOOL llvm::hasUTF16ByteOrderMark(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 != 255)
  {
    if (v2 == 254)
    {
      return a1[1] == 255;
    }

    return 0;
  }

  return a1[1] == 254;
}

BOOL llvm::convertUTF16ToUTF8String(char *__src, uint64_t a2, std::string *this)
{
  if (a2)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = __src;
  v28 = 0;
  v29 = __src;
  v5 = &__src[a2];
  __p = 0;
  v27 = 0;
  v6 = *__src;
  if (v6 == 65534)
  {
    v7 = a2;
    std::vector<unsigned short>::__insert_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(&__p, 0, __src, v5, a2 >> 1);
    v4 = __p;
    v5 = v27;
    if (__p == v27)
    {
LABEL_20:
      v29 = v4;
      v6 = *v4;
      a2 = v7;
      goto LABEL_21;
    }

    v8 = v27 - __p - 2;
    v9 = __p;
    if (v8 >= 6)
    {
      v10 = (v8 >> 1) + 1;
      if (v8 < 0x1E)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFF0;
      v13 = (__p + 16);
      v14 = v10 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15 = vrev16q_s8(*v13);
        v13[-1] = vrev16q_s8(v13[-1]);
        *v13 = v15;
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
      if (v10 == v11)
      {
        goto LABEL_20;
      }

      if ((v10 & 0xC) != 0)
      {
LABEL_14:
        v9 = &v4[2 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
        v16 = &v4[2 * v11];
        v17 = v11 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *v16 = vrev16_s8(*v16);
          ++v16;
          v17 += 4;
        }

        while (v17);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v9 = &v4[2 * v11];
    }

    do
    {
LABEL_19:
      *v9 = bswap32(*v9) >> 16;
      v9 += 2;
    }

    while (v9 != v5);
    goto LABEL_20;
  }

LABEL_21:
  if (v6 == 65279)
  {
    v29 = v4 + 2;
  }

  std::string::resize(this, (4 * a2) | 1, 0);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v19 = this;
  }

  else
  {
    v19 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v25 = v19;
  v20 = llvm::ConvertUTF16toUTF8(&v29, v5, &v25, v19 + size, 0);
  result = v20 == 0;
  if (v20)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = this;
    }

    else
    {
      v21 = this->__r_.__value_.__r.__words[0];
    }

    std::string::resize(this, v25 - v21, 0);
    std::string::push_back(this, 0);
    v22 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v22 < 0)
    {
      v23 = this->__r_.__value_.__l.__size_ - 1;
      this->__r_.__value_.__l.__size_ = v23;
      this = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v23 = v22 - 1;
      *(&this->__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    this->__r_.__value_.__s.__data_[v23] = 0;
    result = 1;
  }

  if (__p)
  {
    v27 = __p;
    v24 = result;
    operator delete(__p);
    return v24;
  }

  return result;
}

BOOL llvm::convertUTF32ToUTF8String(unsigned int *__src, uint64_t a2, std::string *this)
{
  if ((a2 & 3) != 0)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v28[5] = v3;
  v28[6] = v4;
  v7 = __src;
  v27 = 0;
  v28[0] = __src;
  v8 = __src + a2;
  __p = 0;
  v26 = 0;
  v9 = *__src;
  if (*__src == -131072)
  {
    v10 = a2;
    std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(&__p, 0, __src, v8, a2 >> 2);
    v7 = __p;
    v8 = v26;
    if (__p != v26)
    {
      v11 = v26 - __p - 4;
      v12 = __p;
      if (v11 <= 0x1B)
      {
        goto LABEL_35;
      }

      v13 = (v11 >> 2) + 1;
      v12 = (__p + 4 * (v13 & 0x7FFFFFFFFFFFFFF8));
      v14 = (__p + 16);
      v15 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16 = vrev32q_s8(*v14);
        v14[-1] = vrev32q_s8(v14[-1]);
        *v14 = v16;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_35:
        do
        {
          *v12 = bswap32(*v12);
          ++v12;
        }

        while (v12 != v8);
      }
    }

    v28[0] = v7;
    v9 = *v7;
    a2 = v10;
  }

  if (v9 == 65279)
  {
    v28[0] = v7 + 1;
  }

  std::string::resize(this, (4 * a2) | 1, 0);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v18 = this;
  }

  else
  {
    v18 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v24 = v18;
  v19 = llvm::ConvertUTF32toUTF8(v28, v8, &v24, v18 + size, 0);
  result = v19 == 0;
  if (v19)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = this;
    }

    else
    {
      v20 = this->__r_.__value_.__r.__words[0];
    }

    std::string::resize(this, v24 - v20, 0);
    std::string::push_back(this, 0);
    v21 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v21 < 0)
    {
      v22 = this->__r_.__value_.__l.__size_ - 1;
      this->__r_.__value_.__l.__size_ = v22;
      this = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v22 = v21 - 1;
      *(&this->__r_.__value_.__s + 23) = v22 & 0x7F;
    }

    this->__r_.__value_.__s.__data_[v22] = 0;
    result = 1;
  }

  if (__p)
  {
    v26 = __p;
    v23 = result;
    operator delete(__p);
    return v23;
  }

  return result;
}

BOOL llvm::convertUTF8ToUTF16String(unint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v15 = a1;
    v5 = a2 + 1;
    v6 = a3[1];
    if (v6 != a2 + 1)
    {
      if (v6 <= a2 + 1)
      {
        if (a3[2] < v5)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v5 != v6)
        {
          v7 = a2;
          bzero((*a3 + 2 * v6), 2 * (v5 - v6));
          a2 = v7;
        }
      }

      a3[1] = v5;
    }

    v14 = *a3;
    v8 = llvm::ConvertUTF8toUTF16(&v15, a1 + a2, &v14, &v14[v5], 0);
    result = v8 == 0;
    if (v8)
    {
      a3[1] = 0;
    }

    else
    {
      v11 = a3[1];
      v12 = (v14 - *a3) >> 1;
      if (v11 != v12)
      {
        if (v11 <= v12)
        {
          if (a3[2] < v12)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v12 != v11)
          {
            v13 = result;
            bzero((*a3 + 2 * v11), 2 * (v12 - v11));
            result = v13;
          }
        }

        a3[1] = v12;
      }

      if (v12 + 1 > a3[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a3 + 2 * v12) = 0;
      a3[1] = a3[1];
    }
  }

  else
  {
    v10 = a3[1];
    if ((v10 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a3 + 2 * v10) = 0;
    return 1;
  }

  return result;
}

BOOL llvm::ConvertUTF8toWide(unint64_t a1, uint64_t a2, std::wstring *this)
{
  std::wstring::resize(this, a2 + 1, 0);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  v10 = v6;
  v11 = a1;
  v7 = llvm::ConvertUTF8toUTF32(&v11, (a1 + a2), &v10, v6 + 4 * a2, 0);
  if (v7)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    std::wstring::resize(this, (v10 - v8) >> 2, 0);
  }

  return v7 == 0;
}

uint64_t llvm::ConvertUTF8toWide(const char *a1, std::wstring *a2)
{
  if (a1)
  {
    v4 = strlen(a1);
    std::wstring::resize(a2, v4 + 1, 0);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    v8 = v5;
    v9 = a1;
    if (llvm::ConvertUTF8toUTF32(&v9, &a1[v4], &v8, &v5[v4], 0))
    {
      result = 0;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        *a2->__r_.__value_.__l.__data_ = 0;
        a2->__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        a2->__r_.__value_.__s.__data_[0] = 0;
        *(&a2->__r_.__value_.__s + 23) = 0;
      }
    }

    else
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2->__r_.__value_.__r.__words[0];
      }

      std::wstring::resize(a2, (v8 - v7) >> 2, 0);
      return 1;
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    return 1;
  }

  return result;
}

BOOL llvm::convertWideToUTF8(uint64_t a1, std::string *this)
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

  if ((v3 & 0x80u) == 0)
  {
    v5 = a1 + 4 * v3;
  }

  else
  {
    v5 = *a1 + 4 * *(a1 + 8);
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  v12 = v4;
  std::string::resize(this, 4 * v3, 0);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v11 = v7;
  v8 = llvm::ConvertUTF32toUTF8(&v12, v5, &v11, v7 + size, 0);
  if (v8)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    return v8 == 0;
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = this;
    }

    else
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    std::string::resize(this, v11 - v10, 0);
    return 1;
  }
}

char *std::vector<unsigned short>::__insert_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 1)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 1);
    if (v10 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = __dst - v9;
    v12 = v7 - v9;
    if (v12 > v10)
    {
      v10 = v12;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v38 = (2 * (v11 >> 1));
    v39 = 2 * a5;
    memcpy(v38, __src, 2 * a5);
    v40 = &v38[v39];
    v41 = v8 - v5;
    memcpy(v40, v5, v41);
    *(a1 + 8) = v5;
    memcpy(0, v9, v11);
    *a1 = 0;
    *(a1 + 8) = &v40[v41];
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    return (2 * (v11 >> 1));
  }

  v14 = v8 - __dst;
  v15 = (v8 - __dst) >> 1;
  if (v15 >= a5)
  {
    v14 = 2 * a5;
    v25 = &__dst[2 * a5];
    v26 = (v8 - 2 * a5);
    if (v26 >= v8)
    {
      v30 = *(a1 + 8);
    }

    else
    {
      v27 = v26 + 1;
      if (v8 > (v26 + 1))
      {
        v27 = *(a1 + 8);
      }

      v28 = v27 + v14 + ~v8;
      v29 = v28 >= 0x1E && a5 > 0xF;
      v30 = *(a1 + 8);
      if (!v29)
      {
        goto LABEL_66;
      }

      v31 = (v28 >> 1) + 1;
      v32 = 2 * (v31 & 0xFFFFFFFFFFFFFFF0);
      v26 = (v26 + v32);
      v30 = (v8 + v32);
      v33 = (v8 + 16);
      v34 = (v8 + 16 - v14);
      v35 = v31 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 16;
      }

      while (v35);
      if (v31 != (v31 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_66:
        do
        {
          v37 = *v26++;
          *v30++ = v37;
        }

        while (v26 < v8);
      }
    }

    *(a1 + 8) = v30;
    if (v8 != v25)
    {
      v42 = __src;
      memmove(v25, __dst, v8 - v25);
      __src = v42;
    }

    goto LABEL_60;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v18 = *(a1 + 8);
  }

  else
  {
    v17 = &__dst[a4] - __src - v8 - 2;
    if (v17 < 0x1E)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v19 = (v17 >> 1) + 1;
        v20 = 2 * (v19 & 0xFFFFFFFFFFFFFFF0);
        v16 += v20;
        v18 = v8 + v20;
        v21 = (v8 + 16);
        v22 = &__src[v8 + 16 - __dst];
        v23 = v19 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v24 = *v22;
          *(v21 - 1) = *(v22 - 1);
          *v21 = v24;
          v21 += 2;
          v22 += 32;
          v23 -= 16;
        }

        while (v23);
        if (v19 == (v19 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v43 = *v16;
      v16 += 2;
      *v18 = v43;
      v18 += 2;
    }

    while (v16 != a4);
  }

LABEL_42:
  *(a1 + 8) = v18;
  if (v15 >= 1)
  {
    v44 = a5;
    v45 = &__dst[2 * a5];
    v46 = (v18 - 2 * a5);
    if (v46 >= v8)
    {
      v50 = v18;
    }

    else
    {
      v47 = v46 + 1;
      if (v8 > (v46 + 1))
      {
        v47 = v8;
      }

      v48 = &v47[v44] + ~v18;
      v49 = v48 >= 0x1E && a5 > 0xF;
      v50 = v18;
      if (!v49)
      {
        goto LABEL_67;
      }

      v51 = (v48 >> 1) + 1;
      v52 = 2 * (v51 & 0xFFFFFFFFFFFFFFF0);
      v46 = (v46 + v52);
      v50 = (v18 + v52);
      v53 = (v18 + 16);
      v54 = (v18 + 16 - v44 * 2);
      v55 = v51 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v56 = *v54;
        *(v53 - 1) = *(v54 - 1);
        *v53 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 16;
      }

      while (v55);
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_67:
        do
        {
          v57 = *v46++;
          *v50++ = v57;
        }

        while (v46 < v8);
      }
    }

    *(a1 + 8) = v50;
    if (v18 != v45)
    {
      v58 = __src;
      memmove(v45, __dst, v18 - v45);
      __src = v58;
    }

    if (v8 != v5)
    {
LABEL_60:
      memmove(v5, __src, v14);
    }
  }

  return v5;
}

char *std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 2)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 2);
    if (v10 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = __dst - v9;
    v12 = v7 - v9;
    if (v12 >> 1 > v10)
    {
      v10 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v38 = (4 * (v11 >> 2));
    v39 = 4 * a5;
    memcpy(v38, __src, 4 * a5);
    v40 = &v38[v39];
    v41 = v8 - v5;
    memcpy(v40, v5, v41);
    *(a1 + 8) = v5;
    memcpy(0, v9, v11);
    *a1 = 0;
    *(a1 + 8) = &v40[v41];
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    return (4 * (v11 >> 2));
  }

  v14 = v8 - __dst;
  v15 = (v8 - __dst) >> 2;
  if (v15 >= a5)
  {
    v14 = 4 * a5;
    v25 = &__dst[4 * a5];
    v26 = (v8 - 4 * a5);
    if (v26 >= v8)
    {
      v30 = *(a1 + 8);
    }

    else
    {
      v27 = v26 + 1;
      if (v8 > (v26 + 1))
      {
        v27 = *(a1 + 8);
      }

      v28 = v27 + v14 + ~v8;
      v29 = v28 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v30 = *(a1 + 8);
      if (v29)
      {
        goto LABEL_64;
      }

      v31 = (v28 >> 2) + 1;
      v32 = 4 * (v31 & 0x7FFFFFFFFFFFFFF8);
      v26 = (v26 + v32);
      v30 = (v8 + v32);
      v33 = (v8 + 16);
      v34 = (v8 + 16 - v14);
      v35 = v31 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 8;
      }

      while (v35);
      if (v31 != (v31 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_64:
        do
        {
          v37 = *v26++;
          *v30++ = v37;
        }

        while (v26 < v8);
      }
    }

    *(a1 + 8) = v30;
    if (v8 != v25)
    {
      v42 = __src;
      memmove(v25, __dst, v8 - v25);
      __src = v42;
    }

    goto LABEL_58;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v18 = *(a1 + 8);
  }

  else
  {
    v17 = &__dst[a4] - __src - v8 - 4;
    if (v17 < 0x1C)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v19 = (v17 >> 2) + 1;
        v20 = 4 * (v19 & 0x7FFFFFFFFFFFFFF8);
        v16 += v20;
        v18 = v8 + v20;
        v21 = (v8 + 16);
        v22 = &__src[v8 + 16 - __dst];
        v23 = v19 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v24 = *v22;
          *(v21 - 1) = *(v22 - 1);
          *v21 = v24;
          v21 += 2;
          v22 += 32;
          v23 -= 8;
        }

        while (v23);
        if (v19 == (v19 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_41;
        }
      }
    }

    do
    {
      v43 = *v16;
      v16 += 4;
      *v18 = v43;
      v18 += 4;
    }

    while (v16 != a4);
  }

LABEL_41:
  *(a1 + 8) = v18;
  if (v15 >= 1)
  {
    v44 = a5;
    v45 = &__dst[4 * a5];
    v46 = (v18 - 4 * a5);
    if (v46 >= v8)
    {
      v50 = v18;
    }

    else
    {
      v47 = v46 + 1;
      if (v8 > (v46 + 1))
      {
        v47 = v8;
      }

      v48 = &v47[v44] + ~v18;
      v49 = v48 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v50 = v18;
      if (v49)
      {
        goto LABEL_65;
      }

      v51 = (v48 >> 2) + 1;
      v52 = 4 * (v51 & 0x7FFFFFFFFFFFFFF8);
      v46 = (v46 + v52);
      v50 = (v18 + v52);
      v53 = (v18 + 16);
      v54 = (v18 + 16 - v44 * 4);
      v55 = v51 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v56 = *v54;
        *(v53 - 1) = *(v54 - 1);
        *v53 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 8;
      }

      while (v55);
      if (v51 != (v51 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_65:
        do
        {
          v57 = *v46++;
          *v50++ = v57;
        }

        while (v46 < v8);
      }
    }

    *(a1 + 8) = v50;
    if (v18 != v45)
    {
      v58 = __src;
      memmove(v45, __dst, v18 - v45);
      __src = v58;
    }

    if (v8 != v5)
    {
LABEL_58:
      memmove(v5, __src, v14);
    }
  }

  return v5;
}

llvm::CrashRecoveryContext *llvm::CrashRecoveryContext::CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  llvm::sys::DisableSystemDialogsOnCrash(this);
  return this;
}

{
  *(this + 5) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  llvm::sys::DisableSystemDialogsOnCrash(this);
  return this;
}

void llvm::CrashRecoveryContext::~CrashRecoveryContext(llvm::CrashRecoveryContext *this)
{
  v2 = *(this + 1);
  v5 = *IsRecoveringFromCrash;
  *IsRecoveringFromCrash = this;
  if (v2)
  {
    do
    {
      v6 = *(v2 + 32);
      *(v2 + 16) = 1;
      (*(*v2 + 16))(v2);
      (*(*v2 + 8))(v2);
      v2 = v6;
    }

    while (v6);
  }

  *IsRecoveringFromCrash = v5;
  v7 = *this;
  if (*this)
  {
    if ((*(v7 + 208) & 2) == 0)
    {
      *v8 = v9;
    }

    if (*(v7 + 239) < 0)
    {
      operator delete(*(v7 + 216));
    }

    MEMORY[0x259C63180](v7, 0x1072C40897D38BCLL);
  }
}

{
  v2 = *(this + 1);
  v5 = *IsRecoveringFromCrash;
  *IsRecoveringFromCrash = this;
  if (v2)
  {
    do
    {
      v6 = *(v2 + 32);
      *(v2 + 16) = 1;
      (*(*v2 + 16))(v2);
      (*(*v2 + 8))(v2);
      v2 = v6;
    }

    while (v6);
  }

  *IsRecoveringFromCrash = v5;
  v7 = *this;
  if (*this)
  {
    if ((*(v7 + 208) & 2) == 0)
    {
      *v8 = v9;
    }

    if (*(v7 + 239) < 0)
    {
      operator delete(*(v7 + 216));
    }

    MEMORY[0x259C63180](v7, 0x1072C40897D38BCLL);
  }
}

uint64_t llvm::CrashRecoveryContext::GetCurrent(llvm::CrashRecoveryContext *this, uint64_t a2)
{
  if (_MergedGlobals_6 != 1)
  {
    return 0;
  }

  if (*v2)
  {
    return *(*v2 + 8);
  }

  else
  {
    return 0;
  }
}

void llvm::CrashRecoveryContext::Enable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(qword_27F874440, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
    if (_MergedGlobals_6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((_MergedGlobals_6 & 1) == 0)
  {
LABEL_3:
    _MergedGlobals_6 = 1;
    v1.__sigaction_u.__sa_handler = CrashRecoverySignalHandler;
    *&v1.sa_mask = 0;
    sigaction(6, &v1, &qword_27F874440[1]);
    sigaction(10, &v1, &qword_27F874440[3]);
    sigaction(8, &v1, &qword_27F874440[5]);
    sigaction(4, &v1, &qword_27F874440[7]);
    sigaction(11, &v1, &qword_27F874440[9]);
    sigaction(5, &v1, &qword_27F874440[11]);
  }

LABEL_4:
}

void llvm::CrashRecoveryContext::Disable(llvm::CrashRecoveryContext *this)
{
  if ((atomic_load_explicit(qword_27F874440, memory_order_acquire) & 1) == 0)
  {
    llvm::CrashRecoveryContext::Enable();
  }

  if (_MergedGlobals_6 == 1)
  {
    _MergedGlobals_6 = 0;
    sigaction(6, &qword_27F874440[1], 0);
    sigaction(10, &qword_27F874440[3], 0);
    sigaction(8, &qword_27F874440[5], 0);
    sigaction(4, &qword_27F874440[7], 0);
    sigaction(11, &qword_27F874440[9], 0);
    sigaction(5, &qword_27F874440[11], 0);
  }
}

uint64_t llvm::CrashRecoveryContext::registerCleanup(uint64_t this, llvm::CrashRecoveryContextCleanup *a2)
{
  if (a2)
  {
    v2 = *(this + 8);
    if (v2)
    {
      *(v2 + 24) = a2;
    }

    *(a2 + 4) = v2;
    *(this + 8) = a2;
  }

  return this;
}

uint64_t llvm::CrashRecoveryContext::unregisterCleanup(uint64_t this, llvm::CrashRecoveryContextCleanup *a2)
{
  if (a2)
  {
    v2 = *(a2 + 4);
    if (*(this + 8) == a2)
    {
      *(this + 8) = v2;
      if (!v2)
      {
        return (*(*a2 + 8))(a2);
      }

      v3 = 0;
    }

    else
    {
      v3 = *(a2 + 3);
      *(v3 + 32) = v2;
      if (!v2)
      {
        return (*(*a2 + 8))(a2);
      }
    }

    *(v2 + 24) = v3;
    return (*(*a2 + 8))(a2);
  }

  return this;
}

const char *llvm::CrashRecoveryContext::getStacktrace(llvm::CrashRecoveryContext *this)
{
  if (*(this + 16) != 1)
  {
    return "";
  }

  v1 = *this;
  if (!*this)
  {
    return "";
  }

  v4 = *(v1 + 216);
  v2 = v1 + 216;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t llvm::CrashRecoveryContext::RunSafely(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (_MergedGlobals_6 == 1)
  {
    operator new();
  }

  a2(a3);
  return 1;
}

void *anonymous namespace::CrashRecoveryContextImpl::HandleCrash(_anonymous_namespace_::CrashRecoveryContextImpl *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((*(this + 208) & 4) != 0)
  {
    v10 = 0;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2868A3EF8;
    v16 = this + 216;
    llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v9, 0);
    llvm::raw_ostream::~raw_ostream(&v9);
  }

  *result = v7;
  *(this + 208) |= 1u;
  v8 = *(this + 1);
  if (*(v8 + 24) == 1)
  {
    result = llvm::sys::CleanupOnSignal(a3);
    v8 = *(this + 1);
  }

  *(v8 + 20) = v4;
  if ((*(this + 208) & 8) != 0)
  {
    longjmp(this + 4, 1);
  }

  return result;
}

BOOL llvm::CrashRecoveryContext::throwIfCrash(llvm::CrashRecoveryContext *this)
{
  v1 = this;
  if (this >= 129)
  {
    llvm::sys::unregisterHandlers(this);
    raise(v1 - 128);
  }

  return v1 > 128;
}

uint64_t RunSafelyOnThread_Dispatch(void *a1)
{
  if (*(a1 + 24) == 1)
  {
    setpriority(3, 0, 4096);
  }

  result = llvm::CrashRecoveryContext::RunSafely(*(a1 + 2), *a1, *(a1 + 1));
  *(a1 + 25) = result;
  return result;
}

void *CrashRecoverySignalHandler(int a1, uint64_t a2)
{
  v4 = *v3;
  if (*v3)
  {
    v5 = 1 << (a1 - 1);
    if (a1 > 32)
    {
      v5 = 0;
    }

    v8 = v5;
    sigprocmask(2, &v8, 0);
    if (a1 == 13)
    {
      v6 = 74;
    }

    else
    {
      v6 = (a1 + 128);
    }
  }

  else
  {
    llvm::CrashRecoveryContext::Disable(v3);

    return raise(a1);
  }
}

uint64_t llvm::thread::ThreadProxy<std::tuple<void (*)(void *),anonymous namespace::RunSafelyOnThreadInfo *>>(uint64_t a1)
{
  (*a1)(*(a1 + 8));
  MEMORY[0x259C63180](a1, 0xA0C40BD48D6D6);
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D82690];

  return __cxa_atexit(v4, a2, a3);
}

void llvm::CSKYAttributeParser::fpuHardFP(llvm::CSKYAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v7 = ULEB128;
  v16 = ULEB128;
  memset(&v15, 0, sizeof(v15));
  v8 = (ULEB128 & 1) == 0;
  if (ULEB128)
  {
    std::string::append(&v15, 0, 0);
    std::string::append(&v15, "Half");
    if ((v7 & 2) == 0)
    {
LABEL_3:
      if ((v7 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((ULEB128 & 2) == 0)
  {
    goto LABEL_3;
  }

  std::string::append(&v15, ((v7 << 63 >> 63) & " "), v7 & 1);
  std::string::append(&v15, "Single");
  v8 = 0;
  if ((v7 & 4) == 0)
  {
LABEL_4:
    v9 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_8;
    }

LABEL_22:
    llvm::ELFAttributeParser::printAttribute(this, a2, v7, "", size);
    std::generic_category();
    v13[0] = "unknown Tag_CSKY_FPU_HARDFP value: ";
    v13[2] = &v16;
    v14 = 3331;
    llvm::Twine::str(v13, &__p);
    llvm::createStringError();
  }

LABEL_15:
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = " ";
  }

  std::string::append(&v15, v12, !v8);
  std::string::append(&v15, "Double");
  v9 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (v9 >= 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  llvm::ELFAttributeParser::printAttribute(this, a2, v7, v11, size);
  *a3 = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::CSKYAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v4 = a3 - 4;
  if ((a3 - 4) > 0x12 || ((0x7F03Fu >> v4) & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(&off_27983C328 + v4);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = (this + (v7 >> 1));
  if ((v7 & 1) == 0)
  {
    v10 = a4;
    this = v6(v8);
    if (*v10)
    {
      return this;
    }

    goto LABEL_7;
  }

  v10 = a4;
  this = (*(*v8 + v6))();
  if (!*v10)
  {
LABEL_7:
    a4 = v10;
    *a2 = 1;
LABEL_8:
    *a4 = 0;
  }

  return this;
}

void llvm::CSKYAttributeParser::~CSKYAttributeParser(llvm::CSKYAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x259C63180);
}

BOOL llvm::DataExtractor::prepareRead(llvm::DataExtractor *this, unint64_t a2, uint64_t a3, llvm::Error *a4)
{
  v5 = a3 + a2;
  if (__CFADD__(a3, a2))
  {
    v6 = 0;
    if (!a4)
    {
      return v6;
    }
  }

  else
  {
    v6 = *(this + 1) > (v5 - 1);
    if (!a4)
    {
      return v6;
    }
  }

  if (!v6)
  {
    v7 = *(this + 1);
    std::generic_category();
    if (v7 < a2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v15 = 0;
      v19 = 0;
      v20 = 1;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v14 = &unk_2868A3EF8;
      v21 = &v22;
      llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
      v9 = &unk_2868A01B0;
      v10 = "offset 0x%llx is beyond the end of data at 0x%zx";
      v11 = a2;
      v12 = v7;
      llvm::raw_ostream::operator<<(&v14, &v9);
      llvm::raw_ostream::~raw_ostream(&v14);
      operator new();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 1;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v14 = &unk_2868A3EF8;
    v21 = &v22;
    llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
    v9 = &unk_2868A0178;
    v10 = "unexpected end of data at offset 0x%zx while reading [0x%llx, 0x%llx)";
    v11 = v7;
    v12 = a2;
    v13 = v5;
    llvm::raw_ostream::operator<<(&v14, &v9);
    llvm::raw_ostream::~raw_ostream(&v14);
    operator new();
  }

  return v6;
}

uint64_t llvm::DataExtractor::getU8(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v6 = *a2;
  result = llvm::DataExtractor::prepareRead(this, *a2, 1, a3);
  if (result)
  {
    result = *(*this + v6);
    ++*a2;
  }

  return result;
}

unsigned __int8 *llvm::DataExtractor::getU8(llvm::DataExtractor *this, unint64_t *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a4;
  v5 = *a2 + a4;
  if (__CFADD__(*a2, a4) || *(this + 1) <= v5 - 1)
  {
    return 0;
  }

  if (a4)
  {
    v6 = a3;
    do
    {
      while (1)
      {
        v7 = *a2;
        if (*a2 != -1 && *(this + 1) > v7)
        {
          break;
        }

        *v6++ = 0;
        if (!--v4)
        {
          goto LABEL_9;
        }
      }

      v8 = *(*this + v7);
      ++*a2;
      *v6++ = v8;
      --v4;
    }

    while (v4);
LABEL_9:
    *a2 = v5;
    return a3;
  }

  else
  {
    *a2 = *a2;
    return a3;
  }
}

_BYTE *llvm::DataExtractor::getU8(llvm::DataExtractor *a1, llvm::Error *a2, _BYTE *a3, unsigned int a4)
{
  v4 = (a2 + 8);
  if (*(a2 + 1))
  {
    return 0;
  }

  v8 = *a2;
  v10 = a4;
  if (!llvm::DataExtractor::prepareRead(a1, *a2, a4, v4))
  {
    return 0;
  }

  if (a4)
  {
    v11 = v10;
    v12 = a3;
    do
    {
      while (1)
      {
        if (!*v4)
        {
          v13 = *a2;
          if (llvm::DataExtractor::prepareRead(a1, *a2, 1, v4))
          {
            break;
          }
        }

        *v12++ = 0;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      v14 = *(*a1 + v13);
      ++*a2;
      *v12++ = v14;
      --v11;
    }

    while (v11);
LABEL_9:
    v8 += v10;
  }

  *a2 = v8;
  return a3;
}

uint64_t llvm::DataExtractor::getU16(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v5 = *a2;
  if (!llvm::DataExtractor::prepareRead(this, *a2, 2, a3))
  {
    return 0;
  }

  v6 = *(*this + v5);
  v7 = bswap32(v6) >> 16;
  if (*(this + 16) != 1)
  {
    LOWORD(v6) = v7;
  }

  *a2 += 2;
  return v6;
}

unsigned __int16 *llvm::DataExtractor::getU16(llvm::DataExtractor *this, unint64_t *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = *a2;
  v5 = 2 * a4;
  if (__CFADD__(*a2, v5))
  {
    return 0;
  }

  v6 = *(this + 1);
  if (v6 <= *a2 + v5 - 1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = a3;
    v8 = *a2;
    do
    {
      LOWORD(v9) = 0;
      if (v4 <= 0xFFFFFFFFFFFFFFFDLL && v6 > v4 + 1)
      {
        v9 = *(*this + v4);
        v4 += 2;
        v10 = bswap32(v9) >> 16;
        if (*(this + 16) != 1)
        {
          LOWORD(v9) = v10;
        }

        *a2 = v4;
      }

      *v7++ = v9;
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  else
  {
    v8 = *a2;
  }

  *a2 = v8;
  return a3;
}

uint64_t llvm::DataExtractor::getU24(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v5 = *a2;
  if (!llvm::DataExtractor::prepareRead(this, *a2, 3, a3))
  {
    return 0;
  }

  v6 = (*this + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(this + 16);
  v11 = v10 == 1;
  if (v10 == 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  *a2 += 3;
  return v12 | (v8 << 8) | (v13 << 16);
}

uint64_t llvm::DataExtractor::getU32(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v6 = *a2;
  result = llvm::DataExtractor::prepareRead(this, *a2, 4, a3);
  if (result)
  {
    v7 = *(*this + v6);
    v8 = bswap32(v7);
    if (*(this + 16) == 1)
    {
      result = v7;
    }

    else
    {
      result = v8;
    }

    *a2 += 4;
  }

  return result;
}

unsigned int *llvm::DataExtractor::getU32(llvm::DataExtractor *this, unint64_t *a2, unsigned int *a3, unsigned int a4)
{
  v4 = *a2;
  v5 = 4 * a4;
  if (__CFADD__(*a2, v5))
  {
    return 0;
  }

  v6 = *(this + 1);
  if (v6 <= *a2 + v5 - 1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = a3;
    v8 = *a2;
    do
    {
      v9 = 0;
      if (v4 <= 0xFFFFFFFFFFFFFFFBLL && v6 > v4 + 3)
      {
        v9 = *(*this + v4);
        v4 += 4;
        v10 = bswap32(v9);
        if (*(this + 16) != 1)
        {
          v9 = v10;
        }

        *a2 = v4;
      }

      *v7++ = v9;
      v8 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    v8 = *a2;
  }

  *a2 = v8;
  return a3;
}

unint64_t llvm::DataExtractor::getU64(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v5 = *a2;
  if (!llvm::DataExtractor::prepareRead(this, *a2, 8, a3))
  {
    return 0;
  }

  v6 = bswap64(*(*this + v5));
  if (*(this + 16) == 1)
  {
    result = *(*this + v5);
  }

  else
  {
    result = v6;
  }

  *a2 += 8;
  return result;
}

unint64_t *llvm::DataExtractor::getU64(llvm::DataExtractor *this, unint64_t *a2, unint64_t *a3, unsigned int a4)
{
  v4 = *a2;
  v5 = 8 * a4;
  if (__CFADD__(*a2, v5))
  {
    return 0;
  }

  v6 = *(this + 1);
  if (v6 <= *a2 + v5 - 1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = a3;
    do
    {
      while (1)
      {
        v11 = *a2;
        if (*a2 <= 0xFFFFFFFFFFFFFFF7 && v6 > *a2 + 7)
        {
          break;
        }

        *v7++ = 0;
        v4 += 8;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v8 = v11 + 8;
      v9 = bswap64(*(*this + v11));
      if (*(this + 16) == 1)
      {
        v10 = *(*this + v11);
      }

      else
      {
        v10 = v9;
      }

      *a2 = v8;
      *v7++ = v10;
      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

LABEL_14:
  *a2 = v4;
  return a3;
}

uint64_t llvm::DataExtractor::getUnsigned(llvm::DataExtractor *this, unint64_t *a2, unsigned int a3, llvm::Error *a4)
{
  v6 = __clz(__rbit32(a3));
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (!a4 || !*a4)
      {
        v9 = *a2;
        if (llvm::DataExtractor::prepareRead(this, *a2, 4, a4))
        {
          v10 = *(*this + v9);
          v11 = bswap32(v10);
          if (*(this + 16) == 1)
          {
            result = v10;
          }

          else
          {
            result = v11;
          }

          *a2 += 4;
          return result;
        }
      }
    }

    else if (!a4 || !*a4)
    {
      v15 = *a2;
      if (llvm::DataExtractor::prepareRead(this, *a2, 8, a4))
      {
        v16 = bswap64(*(*this + v15));
        if (*(this + 16) == 1)
        {
          result = *(*this + v15);
        }

        else
        {
          result = v16;
        }

        *a2 += 8;
        return result;
      }
    }

    return 0;
  }

  if (!v6)
  {
    if (!a4 || !*a4)
    {
      v7 = *a2;
      if (llvm::DataExtractor::prepareRead(this, *a2, 1, a4))
      {
        result = *(*this + v7);
        ++*a2;
        return result;
      }
    }

    return 0;
  }

  if (a4 && *a4)
  {
    return 0;
  }

  v12 = *a2;
  if (!llvm::DataExtractor::prepareRead(this, *a2, 2, a4))
  {
    return 0;
  }

  v13 = *(*this + v12);
  v14 = bswap32(v13) >> 16;
  if (*(this + 16) != 1)
  {
    LOWORD(v13) = v14;
  }

  *a2 += 2;
  return v13;
}

unint64_t llvm::DataExtractor::getSigned(llvm::DataExtractor *this, unint64_t *a2, unsigned int a3)
{
  v3 = __clz(__rbit32(a3));
  v4 = *a2;
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (v4 != -1 && *(this + 1) > v4)
      {
        result = *(*this + v4);
        *a2 = v4 + 1;
        return result;
      }

      return 0;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFFDLL && *(this + 1) > v4 + 1)
    {
      v9 = v4 + 2;
      v10 = *(*this + v4);
      v11 = bswap32(v10) >> 16;
      if (*(this + 16) != 1)
      {
        LOWORD(v10) = v11;
      }

      *a2 = v9;
      return v10;
    }

    return 0;
  }

  if (v3 != 2)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFF7 && *(this + 1) > v4 + 7)
    {
      v12 = *(*this + v4);
      v13 = v4 + 8;
      v14 = bswap64(v12);
      if (*(this + 16) == 1)
      {
        result = v12;
      }

      else
      {
        result = v14;
      }

      *a2 = v13;
      return result;
    }

    return 0;
  }

  if (v4 > 0xFFFFFFFFFFFFFFFBLL || *(this + 1) <= v4 + 3)
  {
    return 0;
  }

  v6 = v4 + 4;
  v7 = *(*this + v4);
  v8 = bswap32(v7);
  if (*(this + 16) != 1)
  {
    v7 = v8;
  }

  *a2 = v6;
  return v7;
}

void *llvm::DataExtractor::getCStrRef(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (!a3 || !*a3)
  {
    v4 = *a2;
    v5 = *(this + 1);
    if (v5 > *a2)
    {
      v6 = *this;
      v7 = (*this + v4);
      v9 = memchr(v7, 0, v5 - *a2);
      v10 = &v9[-v6];
      if (v9 && v10 + 1 != 0)
      {
        *a2 = (v10 + 1);
        return v7;
      }
    }

    if (a3)
    {
      std::generic_category();
      memset(v22, 0, sizeof(v22));
      v15 = 0;
      v19 = 0;
      v20 = 1;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v14 = &unk_2868A3EF8;
      v21 = v22;
      llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
      v13[0] = &unk_2868A01E8;
      v13[1] = "no null terminated string at offset 0x%llx";
      v13[2] = v4;
      llvm::raw_ostream::operator<<(&v14, v13);
      llvm::raw_ostream::~raw_ostream(&v14);
      operator new();
    }
  }

  return 0;
}

uint64_t llvm::DataExtractor::getFixedLengthString(void *a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a2 + a3;
  if (__CFADD__(*a2, a3) || (v9 = a1[1], v9 <= v8 - 1))
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    if (v9 < v7)
    {
      v7 = a1[1];
    }

    v10 = *a1 + v7;
    v11 = v9 - v7;
    if (v11 >= a3)
    {
      v11 = a3;
    }

    *a2 = v8;
  }

  v15 = v10;
  v16 = v11;
  first_not_of = llvm::StringRef::find_first_not_of(&v15, a4, a5, 0);
  if (first_not_of >= v16)
  {
    v13 = v16;
  }

  else
  {
    v13 = first_not_of;
  }

  v17[0] = v15 + v13;
  v17[1] = v16 - v13;
  llvm::StringRef::find_last_not_of(v17, a4, a5, 0xFFFFFFFFFFFFFFFFLL);
  return v17[0];
}

unint64_t llvm::DataExtractor::getBytes(llvm::DataExtractor *this, unint64_t *a2, uint64_t a3, llvm::Error *a4)
{
  if (a4 && *a4 || !llvm::DataExtractor::prepareRead(this, *a2, a3, a4))
  {
    return 0;
  }

  if (*(this + 1) >= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(this + 1);
  }

  result = *this + v7;
  *a2 += a3;
  return result;
}

uint64_t llvm::DataExtractor::getULEB128(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (a3 && *a3)
  {
    return 0;
  }

  v18[3] = v3;
  v18[4] = v4;
  v8 = 0;
  result = 0;
  v9 = 0;
  v10 = v6 + *a2;
  v11 = v5 - *a2;
  v12 = "malformed uleb128, extends past end";
  while (v11 != v8)
  {
    v13 = *(v10 + v8);
    v14 = v13 & 0x7F;
    if (v9 >= 0x3F)
    {
      v15 = v14 > 1;
      if (v9 != 63)
      {
        v15 = v14 != 0;
      }

      if (v15)
      {
        v12 = "uleb128 too big for uint64";
        break;
      }
    }

    result += v14 << v9;
    v9 += 7;
    ++v8;
    if ((v13 & 0x80) == 0)
    {
      *a2 += v8;
      return result;
    }
  }

  v18[0] = v12;
  if (a3)
  {
    v17 = std::generic_category();
    llvm::createStringError<unsigned long long,char const*>(92, v17, "unable to decode LEB128 at offset 0x%8.8llx: %s", a2, v18);
  }

  return 0;
}

uint64_t llvm::DataExtractor::getSLEB128(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  v6 = *this;
  v5 = *(this + 1);
  if (a3 && *a3)
  {
    return 0;
  }

  v21[3] = v3;
  v21[4] = v4;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v6 + *a2;
  v12 = v5 - *a2;
  v13 = "malformed sleb128, extends past end";
  while (v12 != v8)
  {
    v14 = *(v11 + v8);
    v15 = v14 & 0x7F;
    if (v10 >= 0x3F)
    {
      if (v10 == 63)
      {
        v16 = v14 - 127 < 2 || v14 == 0;
        if (!v16 && v14 != 255)
        {
LABEL_17:
          v13 = "sleb128 too big for int64";
          break;
        }
      }

      else if (((v9 >> 63) & 0x7F) != v15)
      {
        goto LABEL_17;
      }
    }

    v9 |= v15 << v10;
    v10 += 7;
    ++v8;
    if ((v14 & 0x80) == 0)
    {
      v19 = v14 < 0x40 || v10 > 0x3F;
      v20 = -1 << v10;
      if (v19)
      {
        v20 = 0;
      }

      result = v9 | v20;
      *a2 += v8;
      return result;
    }
  }

  v21[0] = v13;
  if (a3)
  {
    v18 = std::generic_category();
    llvm::createStringError<unsigned long long,char const*>(92, v18, "unable to decode LEB128 at offset 0x%8.8llx: %s", a2, v21);
  }

  return 0;
}

BOOL llvm::DataExtractor::skip(_BOOL8 result, unint64_t *a2, uint64_t a3)
{
  if (!a2[1])
  {
    result = llvm::DataExtractor::prepareRead(result, *a2, a3, (a2 + 1));
    if (result)
    {
      *a2 += a3;
    }
  }

  return result;
}

void llvm::createStringError<unsigned long long,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  memset(__p, 0, sizeof(__p));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2868A3EF8;
  v18 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v8 = *a4;
  v10[0] = &unk_2868A0220;
  v10[1] = a3;
  v9 = *a5;
  v10[2] = v8;
  v10[3] = v9;
  llvm::raw_ostream::operator<<(&v11, v10);
  llvm::raw_ostream::~raw_ostream(&v11);
  operator new();
}

uint64_t llvm::isCurrentDebugType(llvm *this, const char *a2)
{
  if (atomic_load_explicit(&llvm::CurrentDebugType, memory_order_acquire))
  {
    if (*llvm::CurrentDebugType == *(llvm::CurrentDebugType + 8))
    {
      return 1;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&llvm::CurrentDebugType, llvm::object_creator<std::vector<std::string>>::call, llvm::object_deleter<std::vector<std::string>>::call);
    if (*llvm::CurrentDebugType == *(llvm::CurrentDebugType + 8))
    {
      return 1;
    }
  }

  if (atomic_load_explicit(&llvm::CurrentDebugType, memory_order_acquire))
  {
    v3 = *llvm::CurrentDebugType;
    v4 = *(llvm::CurrentDebugType + 8);
    if (*llvm::CurrentDebugType == v4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(&llvm::CurrentDebugType, llvm::object_creator<std::vector<std::string>>::call, llvm::object_deleter<std::vector<std::string>>::call);
  v3 = *llvm::CurrentDebugType;
  v4 = *(llvm::CurrentDebugType + 8);
  if (*llvm::CurrentDebugType != v4)
  {
LABEL_9:
    v5 = strlen(this);
    do
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        if (v5 == v3[1])
        {
          if (v5 == -1)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v7 = *v3;
LABEL_10:
          if (!memcmp(v7, this, v5))
          {
            return 1;
          }
        }
      }

      else
      {
        v7 = v3;
        if (v5 == v6)
        {
          goto LABEL_10;
        }
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  return 0;
}

void llvm::setCurrentDebugTypes(const char **this, const char **a2)
{
  v2 = a2;
  if (!atomic_load_explicit(&llvm::CurrentDebugType, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&llvm::CurrentDebugType, llvm::object_creator<std::vector<std::string>>::call, llvm::object_deleter<std::vector<std::string>>::call);
  }

  v4 = llvm::CurrentDebugType;
  v5 = *llvm::CurrentDebugType;
  v6 = *(llvm::CurrentDebugType + 8);
  while (v6 != v5)
  {
    v7 = *(v6 - 1);
    v6 -= 3;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  *(v4 + 8) = v5;
  if (v2)
  {
    for (i = v2; i; --i)
    {
      if (!atomic_load_explicit(&llvm::CurrentDebugType, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(&llvm::CurrentDebugType, llvm::object_creator<std::vector<std::string>>::call, llvm::object_deleter<std::vector<std::string>>::call);
      }

      v9 = llvm::CurrentDebugType;
      v10 = *this;
      v11 = strlen(*this);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v14 = v11;
      if (v11)
      {
        memmove(&__dst, v10, v11);
        *(&__dst + v12) = 0;
        std::vector<std::string>::push_back[abi:nn200100](v9, &__dst);
        if (v14 < 0)
        {
LABEL_19:
          operator delete(__dst);
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        std::vector<std::string>::push_back[abi:nn200100](llvm::CurrentDebugType, &__dst);
        if (v14 < 0)
        {
          goto LABEL_19;
        }
      }

      ++this;
    }
  }
}

void ***llvm::object_deleter<std::vector<std::string>>::call(void ***result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = result[1];
      v4 = *result;
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
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

llvm::raw_ostream *llvm::DebugCounter::Chunk::print(llvm::DebugCounter::Chunk *this, llvm::raw_ostream *a2)
{
  v3 = *this;
  v4 = *(this + 1);
  result = llvm::raw_ostream::operator<<(a2, *this);
  if (v3 != v4)
  {
    v6 = *(result + 4);
    if (*(result + 3) == v6)
    {
      result = llvm::raw_ostream::write(result, "-", 1uLL);
      v7 = *(this + 1);
    }

    else
    {
      *v6 = 45;
      ++*(result + 4);
      v7 = *(this + 1);
    }

    return llvm::raw_ostream::operator<<(result, v7);
  }

  return result;
}

llvm::raw_ostream *llvm::DebugCounter::printChunks(llvm::raw_ostream *this, unint64_t *a2, uint64_t a3)
{
  v3 = this;
  if (a3)
  {
    v7 = *a2;
    v6 = a2[1];
    this = llvm::raw_ostream::operator<<(this, *a2);
    if (v7 != v6)
    {
      v8 = *(this + 4);
      if (*(this + 3) == v8)
      {
        this = llvm::raw_ostream::write(this, "-", 1uLL);
      }

      else
      {
        *v8 = 45;
        ++*(this + 4);
      }

      this = llvm::raw_ostream::operator<<(this, v6);
    }

    if (a3 == 1)
    {
      return this;
    }

    v10 = &a2[2 * a3];
    v11 = a2 + 2;
    while (1)
    {
      v13 = *v11;
      v12 = v11[1];
      v14 = *(v3 + 4);
      if (v14 >= *(v3 + 3))
      {
        llvm::raw_ostream::write(v3, 58);
        this = llvm::raw_ostream::operator<<(v3, v13);
        if (v13 != v12)
        {
LABEL_22:
          v15 = *(this + 4);
          if (*(this + 3) == v15)
          {
            this = llvm::raw_ostream::write(this, "-", 1uLL);
          }

          else
          {
            *v15 = 45;
            ++*(this + 4);
          }

          this = llvm::raw_ostream::operator<<(this, v12);
        }
      }

      else
      {
        *(v3 + 4) = v14 + 1;
        *v14 = 58;
        this = llvm::raw_ostream::operator<<(v3, v13);
        if (v13 != v12)
        {
          goto LABEL_22;
        }
      }

      v11 += 2;
      if (v11 == v10)
      {
        return this;
      }
    }
  }

  v9 = *(this + 4);
  if ((*(this + 3) - v9) > 4)
  {
    *(v9 + 4) = 121;
    *v9 = 1953525093;
    *(this + 4) += 5;
  }

  else
  {

    return llvm::raw_ostream::write(this, "empty", 5uLL);
  }

  return this;
}

uint64_t llvm::DebugCounter::parseChunks(_BYTE *a1, size_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v40 = &v41;
  v4 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v40);
  if (v4 == -1)
  {
    return 1;
  }

  while (1)
  {
    v5 = *(a3 + 8);
    if (v5)
    {
      if (v4 <= *(*a3 + 16 * v5 - 8))
      {
        break;
      }
    }

    if (v42 && *v41 == 45)
    {
      v6 = v4;
      ++v41;
      --v42;
      v7 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v40);
      if (v7 == -1)
      {
        return 1;
      }

      v8 = v7;
      if (v6 >= v7)
      {
        v28 = v7;
        v29 = llvm::errs(v7);
        v30 = *(v29 + 4);
        if ((*(v29 + 3) - v30) > 8)
        {
          *(v30 + 8) = 32;
          *v30 = *"Expected ";
          *(v29 + 4) += 9;
          v32 = llvm::raw_ostream::operator<<(v29, v6);
          v33 = *(v32 + 4);
          if ((*(v32 + 3) - v33) <= 2)
          {
            goto LABEL_35;
          }

LABEL_32:
          *(v33 + 2) = 32;
          *v33 = 15392;
          *(v32 + 4) += 3;
          v34 = llvm::raw_ostream::operator<<(v32, v28);
          v35 = *(v34 + 4);
          if (*(v34 + 3) - v35 > 3uLL)
          {
            goto LABEL_33;
          }

LABEL_36:
          v34 = llvm::raw_ostream::write(v34, " in ", 4uLL);
        }

        else
        {
          v31 = llvm::raw_ostream::write(v29, "Expected ", 9uLL);
          v32 = llvm::raw_ostream::operator<<(v31, v6);
          v33 = *(v32 + 4);
          if ((*(v32 + 3) - v33) > 2)
          {
            goto LABEL_32;
          }

LABEL_35:
          v36 = llvm::raw_ostream::write(v32, " < ", 3uLL);
          v34 = llvm::raw_ostream::operator<<(v36, v28);
          v35 = *(v34 + 4);
          if (*(v34 + 3) - v35 <= 3uLL)
          {
            goto LABEL_36;
          }

LABEL_33:
          *v35 = 544106784;
          *(v34 + 4) += 4;
        }

        v37 = llvm::raw_ostream::operator<<(v34, v6);
        v38 = *(v37 + 4);
        if (*(v37 + 3) == v38)
        {
          v39 = llvm::raw_ostream::write(v37, "-", 1uLL);
          v26 = llvm::raw_ostream::operator<<(v39, v28);
          v27 = *(v26 + 4);
          if (*(v26 + 3) != v27)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *v38 = 45;
          ++*(v37 + 4);
          v26 = llvm::raw_ostream::operator<<(v37, v28);
          v27 = *(v26 + 4);
          if (*(v26 + 3) != v27)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_42;
      }

      v4 = v6;
      v5 = *(a3 + 8);
      v9 = *(a3 + 12);
    }

    else
    {
      v9 = *(a3 + 12);
      v8 = v4;
    }

    if (v5 >= v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (*a3 + 16 * v5);
    *v10 = v4;
    v10[1] = v8;
    ++*(a3 + 8);
    if (!v42)
    {
      return 0;
    }

    if (*v41 != 58)
    {
      v12 = llvm::errs(v4);
      v13 = v12[4];
      if (v12[3] - v13 > 0x14uLL)
      {
        qmemcpy(v13, "Failed to parse at : ", 21);
        v25 = v12[3];
        v14 = (v12[4] + 21);
        v12[4] = v14;
        v15 = v41;
        v16 = v42;
        if (v42 <= v25 - v14)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, "Failed to parse at : ", 0x15uLL);
        v14 = v12[4];
        v15 = v41;
        v16 = v42;
        if (v42 <= v12[3] - v14)
        {
LABEL_19:
          if (v16)
          {
            v17 = v12;
            v18 = v16;
            memcpy(v14, v15, v16);
            v17[4] += v18;
          }

          return 1;
        }
      }

      llvm::raw_ostream::write(v12, v15, v16);
      return 1;
    }

    ++v41;
    --v42;
    v4 = llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(&v40);
    if (v4 == -1)
    {
      return 1;
    }
  }

  v19 = v4;
  v20 = llvm::errs(v4);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 0x29uLL)
  {
    qmemcpy(v21, "Expected Chunks to be in increasing order ", 42);
    *(v20 + 4) += 42;
    v23 = llvm::raw_ostream::operator<<(v20, v19);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 3uLL)
    {
      goto LABEL_23;
    }

LABEL_27:
    v23 = llvm::raw_ostream::write(v23, " <= ", 4uLL);
    goto LABEL_28;
  }

  v22 = llvm::raw_ostream::write(v20, "Expected Chunks to be in increasing order ", 0x2AuLL);
  v23 = llvm::raw_ostream::operator<<(v22, v19);
  v24 = *(v23 + 4);
  if (*(v23 + 3) - v24 <= 3uLL)
  {
    goto LABEL_27;
  }

LABEL_23:
  *v24 = 540884000;
  *(v23 + 4) += 4;
LABEL_28:
  v26 = llvm::raw_ostream::operator<<(v23, *(*a3 + 16 * *(a3 + 8) - 8));
  v27 = *(v26 + 4);
  if (*(v26 + 3) != v27)
  {
LABEL_39:
    *v27 = 10;
    ++*(v26 + 4);
    return 1;
  }

LABEL_42:
  llvm::raw_ostream::write(v26, "\n", 1uLL);
  return 1;
}

unint64_t llvm::DebugCounter::parseChunks(llvm::StringRef,llvm::SmallVector<llvm::DebugCounter::Chunk,3u> &)::$_0::operator()(const void ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  if (v4)
  {
    v5 = 0;
    while (v3[v5] - 58 >= 0xFFFFFFF6)
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = -1;
  }

  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v19 = 0;
  AsSignedInteger = llvm::getAsSignedInteger(v3, v6, 0xA, &v19);
  if (AsSignedInteger)
  {
    v8 = llvm::errs(AsSignedInteger);
    v9 = v8[4];
    if (v8[3] - v9 > 0x18uLL)
    {
      qmemcpy(v9, "Failed to parse int at : ", 25);
      v12 = (v8[4] + 25);
      v8[4] = v12;
      v10 = **a1;
      v11 = (*a1)[1];
      if (v11 <= v8[3] - v12)
      {
LABEL_12:
        if (v11)
        {
          v13 = v8;
          v14 = v11;
          memcpy(v12, v10, v11);
          v8 = v13;
          v12 = (v13[4] + v14);
          v13[4] = v12;
        }

        if (v8[3] != v12)
        {
          goto LABEL_15;
        }

LABEL_22:
        llvm::raw_ostream::write(v8, "\n", 1uLL);
        return -1;
      }
    }

    else
    {
      v8 = llvm::raw_ostream::write(v8, "Failed to parse int at : ", 0x19uLL);
      v10 = **a1;
      v11 = (*a1)[1];
      v12 = v8[4];
      if (v11 <= v8[3] - v12)
      {
        goto LABEL_12;
      }
    }

    v8 = llvm::raw_ostream::write(v8, v10, v11);
    v12 = v8[4];
    if (v8[3] != v12)
    {
LABEL_15:
      *v12 = 10;
      ++v8[4];
      return -1;
    }

    goto LABEL_22;
  }

  result = v19;
  v16 = *a1;
  v17 = (*a1)[1];
  if (v17 >= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = (*a1)[1];
  }

  *v16 = &v18[**a1];
  v16[1] = (v17 - v18);
  return result;
}

void llvm::initDebugCounterOptions(llvm *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    llvm::initDebugCounterOptions();
  }
}

uint64_t *llvm::DebugCounter::instance(llvm::DebugCounter *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    llvm::initDebugCounterOptions();
  }

  return &qword_27F8744C8;
}

uint64_t anonymous namespace::DebugCounterOwner::DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner *this)
{
  qword_27F8744C8 = 0;
  unk_27F8744D0 = 0;
  dword_27F8744D8 = 0;
  qword_27F8744F0 = 0;
  qword_27F8744F8 = 0;
  qword_27F8744E8 = 0;
  qword_27F8744E0 = &qword_27F8744E8;
  qword_27F874500 = 0;
  unk_27F874508 = 0;
  unk_27F87450F = 0;
  LODWORD(v4) = 1;
  v8.n128_u64[0] = "Comma separated list of debug counter skip and count";
  v8.n128_u64[1] = 52;
  v7 = 1;
  v6 = &qword_27F8744C8;
  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::list<char [14],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::MiscFlags,llvm::cl::LocationClass<llvm::DebugCounter>>(&qword_27F874518, "debug-counter", &v4, &v8, &v7, &v6);
  qword_27F874518 = &unk_2868A0258;
  v7 = 1;
  v5 = 0;
  v6 = &algn_27F874511;
  v3 = 0;
  v4 = &v3;
  v8.n128_u64[0] = "Print out debug counter info after all counters accumulated";
  v8.n128_u64[1] = 59;
  llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_27F874600, "print-debug-counter", &v7, &v5, &v6, &v4, &v8);
  v7 = 1;
  v5 = 0;
  v6 = &byte_27F874512;
  v3 = 0;
  v4 = &v3;
  v8.n128_u64[0] = "Insert a break point on the last enabled count of a chunks list";
  v8.n128_u64[1] = 63;
  v1 = llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_27F8746C0, "debug-counter-break-on-last", &v7, &v5, &v6, &v4, &v8);
  return llvm::dbgs(v1);
}

void anonymous namespace::DebugCounterOwner::~DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner **this)
{
  if (*(this + 73) == 1)
  {
    v2 = llvm::dbgs(this);
    llvm::DebugCounter::print(this, v2, v3, v4, v5);
  }

  this[63] = &unk_2868A0408;
  v6 = this[86];
  if (v6 == (this + 83))
  {
    (*(*v6 + 32))(v6);
    this[63] = &unk_28689F010;
    v7 = this[75];
    if (v7 != this[74])
    {
LABEL_7:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    this[63] = &unk_28689F010;
    v7 = this[75];
    if (v7 != this[74])
    {
      goto LABEL_7;
    }
  }

  v8 = this[71];
  if (v8 != this + 73)
  {
    free(v8);
  }

  this[39] = &unk_2868A0408;
  v9 = this[62];
  if (v9 == (this + 59))
  {
    (*(*v9 + 32))(v9);
    this[39] = &unk_28689F010;
    v10 = this[51];
    if (v10 != this[50])
    {
LABEL_14:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    this[39] = &unk_28689F010;
    v10 = this[51];
    if (v10 != this[50])
    {
      goto LABEL_14;
    }
  }

  v11 = this[47];
  if (v11 != this + 49)
  {
    free(v11);
  }

  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(this + 10);

  llvm::DebugCounter::~DebugCounter(this);
}

void llvm::DebugCounter::push_back(uint64_t a1, void **a2)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v2)
  {
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    __src = v6;
    v35 = v2;
    LOBYTE(__p) = 61;
    v7 = llvm::StringRef::find(&__src, &__p, 1uLL, 0);
    if (v7 == -1 || (v7 >= v35 ? (v8 = v35) : (v8 = v7), v9 = v35 - (v7 + 1), v35 <= v7 + 1))
    {
      v12 = llvm::errs(v7);
      v13 = v12[4];
      if ((v12[3] - v13) > 0x13)
      {
        *(v13 + 16) = 540701295;
        *v13 = *"DebugCounter Error: ";
        v12[4] += 20;
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, "DebugCounter Error: ", 0x14uLL);
      }

      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = a2[1];
      }

      v17 = llvm::raw_ostream::write(v12, v15, v16);
      v18 = v17[4];
      if (v17[3] - v18 > 0x19uLL)
      {
        qmemcpy(v18, " does not have an = in it\n", 26);
        v17[4] += 26;
      }

      else
      {
        llvm::raw_ostream::write(v17, " does not have an = in it\n", 0x1AuLL);
      }
    }

    else
    {
      v10 = v7;
      v11 = __src;
      __src = v36;
      v35 = 0x300000000;
      if ((llvm::DebugCounter::parseChunks(v7 + v11 + 1, v9, &__src) & 1) == 0)
      {
        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v8 >= 0x17)
        {
          operator new();
        }

        v33 = v8;
        if (v10)
        {
          memmove(&__p, v11, v8);
        }

        *(&__p + v8) = 0;
        v19 = llvm::UniqueVector<std::string>::idFor(a1 + 24, &__p);
        v20 = v19;
        if (v33 < 0)
        {
          operator delete(__p);
        }

        LODWORD(__p) = v20;
        if (v20)
        {
          if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
          {
            llvm::DebugCounter::push_back();
          }

          byte_27F874510 = 1;
          v21 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](a1, &__p);
          *(v21 + 16) = 1;
          v22 = (v21 + 48);
          if ((v21 + 48) != &__src)
          {
            v23 = v21;
            v24 = __src;
            if (__src == v36)
            {
              v30 = v35;
              v31 = *(v21 + 56);
              if (v31 >= v35)
              {
                if (v35)
                {
                  memmove(*v22, __src, 16 * v35);
                }
              }

              else
              {
                if (*(v21 + 60) < v35)
                {
                  *(v21 + 56) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v31)
                {
                  memmove(*v22, __src, 16 * v31);
                }

                else
                {
                  v31 = 0;
                }

                if (v35 != v31)
                {
                  memcpy(*v22 + 16 * v31, __src + 16 * v31, 16 * (v35 - v31));
                }
              }

              *(v23 + 56) = v30;
            }

            else
            {
              v25 = *(v21 + 48);
              if (v25 != (v23 + 64))
              {
                free(v25);
                v24 = __src;
              }

              *(v23 + 48) = v24;
              *(v23 + 56) = v35;
              __src = v36;
              HIDWORD(v35) = 0;
            }

            LODWORD(v35) = 0;
          }
        }

        else
        {
          v26 = llvm::errs(v19);
          v27 = v26[4];
          if ((v26[3] - v27) > 0x13)
          {
            *(v27 + 16) = 540701295;
            *v27 = *"DebugCounter Error: ";
            v28 = (v26[4] + 20);
            v26[4] = v28;
          }

          else
          {
            v26 = llvm::raw_ostream::write(v26, "DebugCounter Error: ", 0x14uLL);
            v28 = v26[4];
          }

          if (v8 <= v26[3] - v28)
          {
            if (v10)
            {
              v29 = v26;
              memcpy(v28, v11, v8);
              v26 = v29;
              v28 = (v29[4] + v8);
              v29[4] = v28;
            }
          }

          else
          {
            v26 = llvm::raw_ostream::write(v26, v11, v8);
            v28 = v26[4];
          }

          if (v26[3] - v28 > 0x1CuLL)
          {
            qmemcpy(v28, " is not a registered counter\n", 29);
            v26[4] += 29;
          }

          else
          {
            llvm::raw_ostream::write(v26, " is not a registered counter\n", 0x1DuLL);
          }
        }
      }

      if (__src != v36)
      {
        free(__src);
      }
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (37 * *a2) & (v2 - 1);
    v5 = *a1 + 120 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 120 * (v12 & v3);
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
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 56) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = v5 + 72;
  *(v5 + 68) = 3;
  return v5 + 8;
}

void llvm::DebugCounter::print(llvm::DebugCounter *this, llvm::raw_ostream *a2, double a3, double a4, int8x16_t a5)
{
  v96[32] = *MEMORY[0x277D85DE8];
  v8 = *(this + 6);
  v7 = *(this + 7);
  __base = v96;
  v95 = 0x1000000000;
  v9 = v7 - *&v8;
  v10 = (v7 - *&v8) >> 3;
  v11 = -1431655765 * v10;
  if (0xAAAAAAAAAAAAAAABLL * v10 >= 0x11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (*&v8 != v7)
  {
    v12 = __base;
    v13 = v9 - 24;
    if ((v9 - 24) < 0x30 || ((v14 = v13 / 0x18, __base < *&v8 + 24 * (v13 / 0x18) + 24) ? (v15 = *&v8 >= __base + 16 * (v13 / 0x18) + 16) : (v15 = 1), !v15))
    {
      do
      {
LABEL_21:
        if (*(*&v8 + 23) >= 0)
        {
          v67 = v8;
        }

        else
        {
          v67 = **&v8;
        }

        *v12 = v67;
        v68 = *(*&v8 + 23);
        if ((v68 & 0x80u) != 0)
        {
          v68 = *(*&v8 + 8);
        }

        *(v12 + 1) = v68;
        *&v8 += 24;
        v12 += 16;
      }

      while (*&v8 != v7);
      goto LABEL_27;
    }

    if (v13 >= 0x180)
    {
      v90 = v13 / 0x18;
      v17 = (v14 + 1) & 0xF;
      if (!v17)
      {
        v17 = 16;
      }

      v88 = v17;
      v18 = v14 + 1 - v17;
      a5.i64[0] = 240;
      v19 = *&v8;
      v89 = v18;
      v20 = __base;
      do
      {
        v21 = v19 + 12;
        v22 = vdupq_n_s64(v19);
        v23 = v19;
        v103 = vld3q_f64(v23);
        v23 += 6;
        v107 = vld3q_f64(v21);
        v24.i64[0] = v19;
        v25 = v19 + 42;
        v26.i64[0] = (v19 + 12);
        v27.i8[0] = *(v19 + 23);
        v28.i8[0] = v27.i8[0];
        v28.i8[1] = *(v19 + 47);
        v28.i8[2] = *(v19 + 71);
        v28.i8[3] = *(v19 + 95);
        v28.i8[4] = *(v19 + 119);
        v28.i8[5] = *(v19 + 143);
        v29 = v19 + 18;
        v30 = v19 + 24;
        v109 = vld3q_f64(v29);
        v106 = vld3q_f64(v30);
        v28.i8[6] = *(v19 + 167);
        v28.i8[7] = *(v19 + 191);
        v31 = v19 + 30;
        LOBYTE(v29) = *(v19 + 335);
        v105 = vld3q_f64(v31);
        LOBYTE(v31) = *(v19 + 359);
        v28.i8[8] = *(v19 + 215);
        v28.i8[9] = *(v19 + 239);
        v28.i8[10] = *(v19 + 263);
        v28.i8[11] = *(v19 + 287);
        v28.i8[12] = *(v19 + 311);
        v28.i8[13] = v29;
        v27.i8[1] = v28.i8[1];
        v28.i8[14] = v31;
        v32 = *(v19 + 383);
        v28.i8[15] = v32;
        v27.i8[2] = v28.i8[2];
        v33 = vcltzq_s8(v28);
        v34 = vmovl_s8(*v33.i8);
        v27.i8[3] = *(v19 + 95);
        v27.i8[4] = *(v19 + 119);
        v35 = vmovl_high_s16(v34);
        v36.i64[0] = v35.i32[2];
        v36.i64[1] = v35.i32[3];
        v37 = v36;
        v27.i8[5] = *(v19 + 143);
        v27.i8[6] = *(v19 + 167);
        v100.val[0] = vbslq_s8(v36, v109.val[0], vaddq_s64(v22, xmmword_25739F440));
        v27.i8[7] = *(v19 + 191);
        v38 = vmovl_u8(v27);
        v39 = vmovl_high_u16(v38);
        v36.i64[0] = v39.u32[2];
        v36.i64[1] = v39.u32[3];
        v100.val[1] = vbslq_s8(v37, v109.val[1], v36);
        v109 = vld3q_f64(v25);
        v26.i64[1] = (v19 + 15);
        v36.i64[0] = v35.i32[0];
        v36.i64[1] = v35.i32[1];
        v109.val[2] = v36;
        v99.val[0] = vbslq_s8(v36, v107.val[0], v26);
        v36.i64[0] = v39.u32[0];
        v36.i64[1] = v39.u32[1];
        v99.val[1] = vbslq_s8(v109.val[2], v107.val[1], v36);
        v108 = vld3q_f64(v23);
        v24.i64[1] = (v19 + 3);
        v26.i8[0] = *(v19 + 215);
        v26.i8[1] = *(v19 + 239);
        v109.val[2] = vmovl_s16(*v34.i8);
        v36.i64[0] = SLODWORD(v109.val[2].f64[0]);
        v36.i64[1] = SHIDWORD(v109.val[2].f64[0]);
        v40 = v36;
        v26.i8[2] = *(v19 + 263);
        v41 = vmovl_u16(*v38.i8);
        v36.i64[0] = v41.u32[0];
        v36.i64[1] = v41.u32[1];
        v97.val[0] = vbslq_s8(v40, v103.val[0], v24);
        v97.val[1] = vbslq_s8(v40, v103.val[1], v36);
        v26.i8[3] = *(v19 + 287);
        v26.i8[4] = *(v19 + 311);
        v42 = v23 + 30;
        v104 = vld3q_f64(v42);
        v43 = v20;
        vst2q_f64(v43, v97);
        v43 += 4;
        v26.i8[5] = v29;
        v26.i8[6] = v31;
        v97.val[1] = vmovl_high_s8(v33);
        v44 = vmovl_s16(*&v97.val[1].f64[0]);
        v45 = v20 + 8;
        vst2q_f64(v45, v99);
        v36.i64[0] = v44.i32[0];
        v36.i64[1] = v44.i32[1];
        v46 = v36;
        v47 = v20 + 12;
        vst2q_f64(v47, v100);
        v26.i8[7] = v32;
        v48 = vmovl_u8(*v26.i8);
        v49 = vmovl_u16(*v48.i8);
        v36.i64[0] = v49.u32[0];
        v36.i64[1] = v49.u32[1];
        v99.val[1] = vbslq_s8(v46, v106.val[0], vaddq_s64(v22, xmmword_25739F450));
        v100.val[0] = vbslq_s8(v46, v106.val[1], v36);
        v50 = v20 + 16;
        vst2q_f64(v50, v100);
        v36.i64[0] = v44.i32[2];
        v36.i64[1] = v44.i32[3];
        v51 = v36;
        v36.i64[0] = v49.u32[2];
        v36.i64[1] = v49.u32[3];
        v106.val[1] = vbslq_s8(v51, v105.val[0], vaddq_s64(v22, xmmword_25739F460));
        v106.val[2] = vbslq_s8(v51, v105.val[1], v36);
        v97.val[1] = vmovl_high_s16(v97.val[1]);
        v52 = vmovl_high_u16(v48);
        v53 = v20 + 20;
        v36.i64[0] = SLODWORD(v97.val[1].f64[0]);
        v36.i64[1] = SHIDWORD(v97.val[1].f64[0]);
        v54 = v36;
        vst2q_f64(v53, *v106.val[1].f64);
        v36.i64[0] = v52.u32[0];
        v36.i64[1] = v52.u32[1];
        v105.val[1] = vbslq_s8(v54, v104.val[0], vaddq_s64(v22, xmmword_25739F470));
        v105.val[2] = vbslq_s8(v54, v104.val[1], v36);
        v55 = v20 + 24;
        vst2q_f64(v55, *v105.val[1].f64);
        *&v97.val[0].f64[0] = v23;
        *&v97.val[0].f64[1] = v19 + 9;
        v36.i64[0] = SLODWORD(v109.val[2].f64[1]);
        v36.i64[1] = SHIDWORD(v109.val[2].f64[1]);
        v56 = v36;
        v104.val[0] = vbslq_s8(v36, v108.val[0], v97.val[0]);
        v36.i64[0] = v41.u32[2];
        v36.i64[1] = v41.u32[3];
        v104.val[1] = vbslq_s8(v56, v108.val[1], v36);
        vst2q_f64(v43, *v104.val[0].f64);
        v36.i64[0] = SLODWORD(v97.val[1].f64[1]);
        v36.i64[1] = SHIDWORD(v97.val[1].f64[1]);
        v97.val[1] = v36;
        v36.i64[0] = v52.u32[2];
        v36.i64[1] = v52.u32[3];
        v98.val[0] = vbslq_s8(v97.val[1], v57, vaddq_s64(v22, xmmword_25739F480));
        v98.val[1] = vbslq_s8(v97.val[1], v109.val[0], v36);
        v58 = v20 + 28;
        vst2q_f64(v58, v98);
        v20 += 32;
        v19 += 48;
        v18 -= 16;
      }

      while (v18);
      v16 = v89;
      v14 = v90;
      if (v88 < 3)
      {
        *&v8 += 24 * v89;
        v12 = __base + 16 * v89;
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v12 = __base + 16 * (v14 & 0xFFFFFFFFFFFFFFELL);
    v59 = (__base + 16 * v16);
    v60 = v16 - (v14 & 0xFFFFFFFFFFFFFFELL);
    v61 = *&v8 + 24 * v16;
    v62.i64[0] = 255;
    v62.i64[1] = 255;
    do
    {
      v63.i64[0] = v61;
      v63.i64[1] = v61 + 24;
      a5.i8[0] = *(v61 + 23);
      a5.i8[4] = *(v61 + 47);
      v64 = vcltz_s32(vshr_n_s32(vshl_n_s32(*a5.i8, 0x18uLL), 0x18uLL));
      v65.i64[0] = v64.i32[0];
      v65.i64[1] = v64.i32[1];
      v66 = v65;
      v102 = vld3q_f64(v61);
      v61 += 48;
      v101.val[0] = vbslq_s8(v65, v102.val[0], v63);
      v65.i64[0] = a5.u32[0];
      v65.i64[1] = a5.u32[1];
      a5 = vandq_s8(v102.val[1], v66);
      v101.val[1] = vorrq_s8(a5, vandq_s8(vbicq_s8(v65, v66), v62));
      vst2q_f64(v59, v101);
      v59 += 4;
      v60 += 2;
    }

    while (v60);
    *&v8 += 24 * (v14 & 0xFFFFFFFFFFFFFFELL);
    goto LABEL_21;
  }

LABEL_27:
  LODWORD(v95) = -1431655765 * v10;
  if (v11 >= 2)
  {
    qsort(__base, v11, 0x10uLL, llvm::array_pod_sort_comparator<llvm::StringRef>);
    if (atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire))
    {
LABEL_29:
      v69 = *(a2 + 4);
      if (*(a2 + 3) - v69 <= 0x14uLL)
      {
        goto LABEL_30;
      }

LABEL_34:
      qmemcpy(v69, "Counters and values:\n", 21);
      *(a2 + 4) += 21;
      v70 = __base;
      v71 = v95;
      if (!v95)
      {
        goto LABEL_57;
      }

      goto LABEL_35;
    }
  }

  else if (atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire))
  {
    goto LABEL_29;
  }

  llvm::DebugCounter::push_back();
  v69 = *(a2 + 4);
  if (*(a2 + 3) - v69 > 0x14uLL)
  {
    goto LABEL_34;
  }

LABEL_30:
  llvm::raw_ostream::write(a2, "Counters and values:\n", 0x15uLL);
  v70 = __base;
  v71 = v95;
  if (v95)
  {
LABEL_35:
    v72 = &v70[2 * v71];
    while (1)
    {
      v73 = v70[1];
      if (v73 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v74 = *v70;
      if (v73 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v92) = v70[1];
      if (v73)
      {
        memmove(__dst, v74, v73);
        *(__dst + v73) = 0;
        v75 = llvm::UniqueVector<std::string>::idFor(this + 24, __dst);
        if (SHIBYTE(v92) < 0)
        {
LABEL_49:
          v82 = v75;
          operator delete(__dst[0]);
          v75 = v82;
        }
      }

      else
      {
        LOBYTE(__dst[0]) = 0;
        v75 = llvm::UniqueVector<std::string>::idFor(this + 24, __dst);
        if (SHIBYTE(v92) < 0)
        {
          goto LABEL_49;
        }
      }

      v93 = v75;
      v76 = (*(this + 6) + 24 * (v75 - 1));
      v77 = *(v76 + 23);
      v78 = v76[1];
      if (v77 < 0)
      {
        v76 = *v76;
      }

      if (v77 < 0)
      {
        v77 = v78;
      }

      __dst[0] = v76;
      __dst[1] = v77;
      v92 = 0x100000020;
      v79 = llvm::raw_ostream::operator<<(a2, __dst);
      v80 = *(v79 + 4);
      if ((*(v79 + 3) - v80) > 2)
      {
        *(v80 + 2) = 123;
        *v80 = 8250;
        v81 = v79;
        *(v79 + 4) += 3;
      }

      else
      {
        v81 = llvm::raw_ostream::write(v79, ": {", 3uLL);
      }

      v83 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](&qword_27F8744C8, &v93);
      v84 = llvm::raw_ostream::operator<<(v81, *v83);
      v85 = *(v84 + 4);
      if (*(v84 + 3) == v85)
      {
        llvm::raw_ostream::write(v84, ",", 1uLL);
      }

      else
      {
        *v85 = 44;
        ++*(v84 + 4);
      }

      v86 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::operator[](&qword_27F8744C8, &v93);
      llvm::DebugCounter::printChunks(a2, *(v86 + 48), *(v86 + 56));
      v87 = *(a2 + 4);
      if (*(a2 + 3) - v87 > 1uLL)
      {
        *v87 = 2685;
        *(a2 + 4) += 2;
        v70 += 2;
        if (v70 == v72)
        {
          goto LABEL_56;
        }
      }

      else
      {
        llvm::raw_ostream::write(a2, "}\n", 2uLL);
        v70 += 2;
        if (v70 == v72)
        {
LABEL_56:
          v70 = __base;
          break;
        }
      }
    }
  }

LABEL_57:
  if (v70 != v96)
  {
    free(v70);
  }
}

BOOL llvm::DebugCounter::shouldExecuteImpl(llvm::DebugCounter *this)
{
  if (atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire))
  {
    v1 = qword_27F8744C8;
    v2 = dword_27F8744D8;
    if (dword_27F8744D8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = v1 + 120 * v2;
    goto LABEL_10;
  }

  v16 = this;
  llvm::initDebugCounterOptions();
  LODWORD(this) = v16;
  v1 = qword_27F8744C8;
  v2 = dword_27F8744D8;
  if (!dword_27F8744D8)
  {
    goto LABEL_9;
  }

LABEL_3:
  v3 = v2 - 1;
  v4 = (v2 - 1) & (37 * this);
  v5 = v1 + 120 * v4;
  v6 = *v5;
  if (*v5 != this)
  {
    v7 = 1;
    while (v6 != -1)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = v1 + 120 * (v8 & v3);
      v6 = *v5;
      if (*v5 == this)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (v5 == v1 + 120 * v2)
  {
    return 1;
  }

  v9 = *(v5 + 8);
  *(v5 + 8) = v9 + 1;
  v10 = *(v5 + 64);
  if (!v10)
  {
    return 1;
  }

  v11 = *(v5 + 16);
  if (v11 >= v10)
  {
    return 0;
  }

  v12 = *(v5 + 56);
  v13 = (v12 + 16 * v11);
  if (*v13 <= v9)
  {
    result = v13[1] >= v9;
    if (byte_27F874512 != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = 0;
    if (byte_27F874512 != 1)
    {
      goto LABEL_22;
    }
  }

  if (v11 == v10 - 1 && v9 == v13[1])
  {
    __debugbreak();
    JUMPOUT(0x2571B5E88);
  }

LABEL_22:
  if (v9 > *(v12 + 16 * v11 + 8))
  {
    v15 = *(v5 + 16) + 1;
    *(v5 + 16) = v15;
    if (v15 < *(v5 + 64) && v9 == *(v12 + 16 * v15))
    {
      return 1;
    }
  }

  return result;
}

void llvm::DebugCounter::dump(llvm::DebugCounter *this)
{
  v2 = llvm::dbgs(this);

  llvm::DebugCounter::print(this, v2, v3, v4, v5);
}

uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::list<char [14],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::MiscFlags,llvm::cl::LocationClass<llvm::DebugCounter>>(uint64_t a1, const char *a2, _WORD *a3, _OWORD *a4, _WORD *a5, void *a6)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  v14 = *(a1 + 72) + 1;
  *(a1 + 128) = 0u;
  *(a1 + 72) = v14;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *a1 = &unk_2868A0320;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = &unk_28689F5B8;
  *(a1 + 200) = &unk_2868A0388;
  *(a1 + 224) = a1 + 200;
  v15 = strlen(a2);
  v16 = llvm::cl::Option::setArgStr(a1, a2, v15);
  v17 = *(a1 + 10) & 0xFF9F | (32 * (*a3 & 3));
  *(a1 + 10) = v17;
  *(a1 + 32) = *a4;
  *(a1 + 10) = ((*a5 & 0x1F) << 9) | v17;
  if (*(a1 + 128))
  {
    v20 = "cl::location(x) specified more than once!";
    v21 = 259;
    v18 = llvm::errs(v16);
    llvm::cl::Option::error(a1, &v20, 0, 0, v18);
  }

  else
  {
    *(a1 + 128) = *a6;
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  v12 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (*(a1 + 160) == 1)
  {
    *(a1 + 176) = *(a1 + 168);
    *(a1 + 160) = 0;
  }

  if (!__src)
  {
    __dst = 0uLL;
    v14 = 0;
    goto LABEL_13;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_18;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    *(&__dst + __len) = 0;
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(__p[0]);
LABEL_13:
  *__p = __dst;
  v11 = v14;
  llvm::DebugCounter::push_back(*(a1 + 128), __p);
  *(a1 + 12) = v12;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 168, &v12);
  v8 = *(a1 + 224);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_18:
    std::string::__throw_length_error[abi:nn200100]();
  }

  (*(*v8 + 48))(v8, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void anonymous namespace::DebugCounterList::~DebugCounterList(_anonymous_namespace_::DebugCounterList *this)
{
  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::DebugCounterList::printOptionInfo(_anonymous_namespace_::DebugCounterList *this, unsigned int a2)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v4 = llvm::outs(this);
  v5 = v4[4];
  if ((v4[3] - v5) <= 2)
  {
    v4 = llvm::raw_ostream::write(v4, "  -", 3uLL);
    v6 = v4[4];
    v7 = *(this + 2);
    v8 = *(this + 3);
    if (v8 <= v4[3] - v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::raw_ostream::write(v4, v7, v8);
    goto LABEL_7;
  }

  *(v5 + 2) = 45;
  *v5 = 8224;
  v11 = v4[3];
  v6 = (v4[4] + 3);
  v4[4] = v6;
  v7 = *(this + 2);
  v8 = *(this + 3);
  if (v8 > v11 - v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8)
  {
    v9 = v4;
    v10 = v8;
    memcpy(v6, v7, v8);
    v9[4] += v10;
  }

LABEL_7:
  llvm::cl::Option::printHelpStr(*(this + 4), *(this + 5), a2, *(this + 3) + 6);
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    llvm::initDebugCounterOptions();
    v12 = qword_27F8744F8;
    v13 = qword_27F874500;
    if (qword_27F8744F8 == qword_27F874500)
    {
      return;
    }

    while (1)
    {
LABEL_11:
      v34 = llvm::UniqueVector<std::string>::idFor(&qword_27F8744E0, v12);
      v14 = qword_27F8744F8 + 24 * (v34 - 1);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::lookup(&qword_27F8744C8, &v34, v35);
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *v14, *(v14 + 8));
      }

      else
      {
        v15 = *v14;
        v31.__r_.__value_.__r.__words[2] = *(v14 + 16);
        *&v31.__r_.__value_.__l.__data_ = v15;
      }

      v32 = __p;
      v33 = v37;
      v37 = 0;
      __p = 0uLL;
      v16 = v38;
      if (v38 != v39)
      {
        free(v38);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p);
        }
      }

      v17 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v31.__r_.__value_.__r.__words[2]) : LODWORD(v31.__r_.__value_.__r.__words[1]);
      v18 = llvm::outs(v16);
      v19 = v18[4];
      if ((v18[3] - v19) > 4)
      {
        *(v19 + 4) = 61;
        *v19 = 538976288;
        v18[4] += 5;
      }

      else
      {
        v18 = llvm::raw_ostream::write(v18, "    =", 5uLL);
      }

      v20 = a2 - v17;
      v21 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
      v22 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v31.__r_.__value_.__r.__words[2]) : v31.__r_.__value_.__l.__size_;
      v23 = llvm::raw_ostream::write(v18, v21, v22);
      v24 = llvm::outs(v23);
      v25 = llvm::raw_ostream::indent(v24, v20 - 8);
      v26 = v25[4];
      if ((v25[3] - v26) > 4)
      {
        *(v26 + 4) = 32;
        *v26 = 538979616;
        v25[4] += 5;
      }

      else
      {
        v25 = llvm::raw_ostream::write(v25, " -   ", 5uLL);
      }

      v27 = v33 >= 0 ? &v32 : v32;
      v28 = v33 >= 0 ? HIBYTE(v33) : *(&v32 + 1);
      v29 = llvm::raw_ostream::write(v25, v27, v28);
      v30 = *(v29 + 4);
      if (v30 >= *(v29 + 3))
      {
        break;
      }

      *(v29 + 4) = v30 + 1;
      *v30 = 10;
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_40;
      }

LABEL_41:
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v12 += 24;
      if (v12 == v13)
      {
        return;
      }
    }

    llvm::raw_ostream::write(v29, 10);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_40:
    operator delete(v32);
    goto LABEL_41;
  }

  v12 = qword_27F8744F8;
  v13 = qword_27F874500;
  if (qword_27F8744F8 != qword_27F874500)
  {
    goto LABEL_11;
  }
}

void llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::setDefault(uint64_t *a1)
{
  a1[22] = a1[21];
  v1 = a1[17];
  for (i = a1[18]; v1 != i; v1 += 40)
  {
    llvm::DebugCounter::push_back(a1[16], (v1 + 8));
  }
}

void llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(void *a1)
{
  llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739F63BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739F63BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739F63BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739F63BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(void *a1)
{
  *a1 = &unk_2868A0320;
  v2 = a1 + 25;
  v3 = a1[28];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[21];
    if (v4)
    {
LABEL_5:
      a1[22] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[21];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[17];
  if (v5)
  {
    v6 = a1[18];
    v7 = a1[17];
    if (v6 != v5)
    {
      v8 = v6 - 40;
      v9 = a1[18];
      do
      {
        *(v9 - 40) = &unk_28685B750;
        v9 -= 40;
        if (*(v9 + 31) < 0)
        {
          operator delete(*(v6 - 32));
        }

        v8 -= 40;
        v6 = v9;
      }

      while (v9 != v5);
      v7 = a1[17];
    }

    a1[18] = v5;
    operator delete(v7);
  }

  *a1 = &unk_28689F010;
  v10 = a1[12];
  if (v10 != a1[11])
  {
    free(v10);
  }

  v11 = a1[8];
  if (v11 != a1 + 10)
  {
    free(v11);
  }

  return a1;
}

double llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::lookup@<D0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
LABEL_18:
    result = 0.0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 48) = a3 + 64;
    *(a3 + 60) = 3;
    return result;
  }

  v5 = *a1;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = *(*a1 + 120 * v7);
  if (*a2 != v8)
  {
    v16 = 1;
    while (v8 != -1)
    {
      v17 = v7 + v16++;
      v7 = v17 & v6;
      v8 = *(v5 + 120 * v7);
      if (*a2 == v8)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_18;
  }

LABEL_3:
  v9 = v5 + 120 * v7;
  v10 = v9 + 8;
  v11 = *(v9 + 8);
  *(a3 + 16) = *(v9 + 24);
  *a3 = v11;
  if (*(v9 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 24), *(v9 + 32), *(v9 + 40));
  }

  else
  {
    v12 = *(v9 + 32);
    *(a3 + 40) = *(v9 + 48);
    *(a3 + 24) = v12;
  }

  *(a3 + 48) = a3 + 64;
  *&result = 0x300000000;
  *(a3 + 56) = 0x300000000;
  v14 = *(v10 + 56);
  if (v10 != a3 && v14 != 0)
  {
    if (v14 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy((a3 + 64), *(v10 + 48), 16 * *(v10 + 56));
    *(a3 + 56) = v14;
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *a2, _WORD *a3, _WORD *a4, _BYTE **a5, _BYTE **a6, __n128 *a7)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 145) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *a1 = &unk_2868A0408;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_2868A04B8;
  *(a1 + 184) = a1 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>,char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(a1, a2, a3, a4, a5, a6, a7);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>,char [20],llvm::cl::OptionHidden,llvm::cl::NumOccurrencesFlag,llvm::cl::LocationClass<BOOL>,llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *__s, _WORD *a3, _WORD *a4, _BYTE **a5, _BYTE **a6, __n128 *a7)
{
  v14 = strlen(__s);
  v15 = llvm::cl::Option::setArgStr(a1, __s, v14);
  v16 = *(a1 + 10) & 0xFF9F | (32 * (*a3 & 3));
  *(a1 + 10) = v16;
  *(a1 + 10) = v16 & 0xFFF8 | *a4 & 7;
  if (*(a1 + 128))
  {
    v21 = "cl::location(x) specified more than once!";
    v22 = 259;
    v17 = llvm::errs(v15);
    llvm::cl::Option::error(a1, &v21, 0, 0, v17);
    v18 = *(a1 + 128);
  }

  else
  {
    v18 = *a5;
    *(a1 + 128) = *a5;
    *(a1 + 145) = 1;
    *(a1 + 144) = *v18;
  }

  v19 = *a6;
  *v18 = **a6;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v19;
  result = *a7;
  *(a1 + 32) = *a7;
  return result;
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<BOOL>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    **(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_2868A0408;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt(void *a1)
{
  *a1 = &unk_2868A0408;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 145) != 1 || *(a1 + 144) != **(a1 + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = **(a1 + 128);
    v7 = *(a1 + 144);
    v6 = &unk_28685B4A0;
    llvm::cl::parser<BOOL>::printOptionDiff((a1 + 152), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::setDefault(uint64_t result)
{
  if (*(result + 145) == 1)
  {
    **(result + 128) = *(result + 144);
  }

  else
  {
    **(result + 128) = 0;
  }

  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739F763)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739F763 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739F763))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739F763 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::DebugCounter::~DebugCounter(llvm::DebugCounter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
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
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(this + 24, *(this + 4));
  v6 = *(this + 4);
  v7 = *this;
  if (v6)
  {
    v8 = v7 + 72;
    v9 = 120 * v6;
    do
    {
      if (*(v8 - 18) <= 0xFFFFFFFD)
      {
        v10 = *(v8 - 2);
        if (v8 != v10)
        {
          free(v10);
        }

        if (*(v8 - 17) < 0)
        {
          operator delete(*(v8 - 5));
        }
      }

      v8 += 120;
      v9 -= 120;
    }

    while (v9);
    v7 = *this;
    v11 = 120 * *(this + 4);
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v7, v11);
}

uint64_t llvm::UniqueVector<std::string>::idFor(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return 0;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 >= v17;
  if (v20)
  {
    v21 = v20 >= 0;
  }

  if (v21)
  {
    return *(v7 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 120 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 120 * (v13 & v5));
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(120 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 30 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 120 * v11 - 120;
    if (v12 < 0x78)
    {
      v13 = result;
LABEL_14:
      v17 = &result[30 * v11];
      do
      {
        *v13 = -1;
        v13 += 30;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x78 + 1;
    v13 = &result[30 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[30] = -1;
      v15 += 60;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 120 * v6 - 120;
    if (v8 < 0x78)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[30 * v6];
      do
      {
        *v9 = -1;
        v9 += 30;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x78 + 1;
    v9 = &v7[30 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[30] = -1;
      v11 += 60;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (37 * v14);
        v17 = *a1 + 120 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v23 = 0;
          v24 = 1;
          while (v18 != -1)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v18 == -2;
            }

            if (v25)
            {
              v23 = v17;
            }

            v26 = v16 + v24++;
            v16 = v26 & v15;
            v17 = *a1 + 120 * v16;
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v23)
          {
            v17 = v23;
          }
        }

LABEL_14:
        *v17 = v14;
        v19 = *(v4 + 2);
        *(v17 + 24) = *(v4 + 24);
        *(v17 + 8) = v19;
        v20 = *(v4 + 2);
        *(v17 + 48) = *(v4 + 6);
        *(v17 + 32) = v20;
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
        *(v4 + 4) = 0;
        *(v17 + 56) = v17 + 72;
        v21 = v17 + 56;
        *(v21 + 8) = 0x300000000;
        if (v4[16])
        {
          llvm::SmallVectorImpl<llvm::StringRef>::operator=(v21, v4 + 7);
        }

        ++*(a1 + 8);
        v22 = *(v4 + 7);
        if (v22 != v4 + 18)
        {
          free(v22);
        }

        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 4));
        }
      }

      v4 += 30;
    }

    while (v4 != a3);
  }
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t llvm::DeltaAlgorithm::GetTestResult(uint64_t a1, void *a2)
{
  if (std::__tree<std::set<unsigned int>>::__count_unique<std::set<unsigned int>>(a1 + 8, a2))
  {
    return 0;
  }

  if (((*(*a1 + 8))(a1, a2) & 1) == 0)
  {
    if (!*std::__tree<std::set<unsigned int>>::__find_equal<std::set<unsigned int>>(a1 + 8, &v5, a2))
    {
      operator new();
    }

    return 0;
  }

  return 1;
}

void llvm::DeltaAlgorithm::Split(uint64_t a1, void *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v13[1] = 0;
  v14 = v15;
  v12 = v13;
  v13[0] = 0;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v3 = 0;
    do
    {
      if (v3 >= (a2[2] >> 1))
      {
        v4 = &v12;
      }

      else
      {
        v4 = &v14;
      }

      v5 = v4[1];
      if (!v5)
      {
LABEL_13:
        operator new();
      }

      v6 = *(v2 + 7);
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = *(v5 + 7);
          if (v6 >= v8)
          {
            break;
          }

          v5 = *v7;
          if (!*v7)
          {
            goto LABEL_13;
          }
        }

        if (v8 >= v6)
        {
          break;
        }

        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      ++v3;
      v2 = v10;
    }

    while (v10 != a2 + 1);
  }

  std::__tree<long long>::destroy(&v12, v13[0]);
  std::__tree<long long>::destroy(&v14, v15[0]);
}

void llvm::DeltaAlgorithm::Delta(void (***a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  (**a1)(a1);
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > 1)
  {
    v23 = 0;
    v24 = 0;
    v22 = &v23;
    v9 = llvm::DeltaAlgorithm::Search(a1, a2, a3, &v22);
    if (v9)
    {
      v10 = v23;
      *a4 = v22;
      a4[1] = v10;
      v11 = a4 + 1;
      v12 = v24;
      a4[2] = v24;
      if (v12)
      {
        v10[2] = v11;
        v22 = &v23;
        v23 = 0;
        v24 = 0;
        v10 = 0;
      }

      else
      {
        *a4 = v11;
      }

      goto LABEL_21;
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    v13 = *a3;
    v14 = a3[1];
    if (*a3 == v14)
    {
      goto LABEL_11;
    }

    do
    {
      llvm::DeltaAlgorithm::Split(v9, v13);
      v13 += 3;
    }

    while (v13 != v14);
    if (v20 - __p == a3[1] - *a3)
    {
LABEL_11:
      a4[2] = 0;
      a4[1] = 0;
      *a4 = (a4 + 1);
      std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a4, *a2, (a2 + 8));
      v15 = __p;
      if (!__p)
      {
        goto LABEL_20;
      }
    }

    else
    {
      llvm::DeltaAlgorithm::Delta(a4, a1, a2, &__p);
      v15 = __p;
      if (!__p)
      {
LABEL_20:
        v10 = v23;
LABEL_21:
        std::__tree<long long>::destroy(&v22, v10);
        return;
      }
    }

    v16 = v20;
    v17 = v15;
    if (v20 != v15)
    {
      do
      {
        v18 = v16 - 24;
        std::__tree<long long>::destroy((v16 - 24), *(v16 - 2));
        v16 = v18;
      }

      while (v18 != v15);
      v17 = __p;
    }

    v20 = v15;
    operator delete(v17);
    goto LABEL_20;
  }

  a4[2] = 0;
  a4[1] = 0;
  *a4 = (a4 + 1);
  v8 = *a2;

  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a4, v8, (a2 + 8));
}

uint64_t llvm::DeltaAlgorithm::Search(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  if (*a3 == v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = (a2 + 1);
  while (1)
  {
    TestResult = llvm::DeltaAlgorithm::GetTestResult(a1, (v4 + v9));
    if (TestResult)
    {
      break;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3) >= 3)
    {
      v35 = 0;
      v36 = 0;
      v34 = &v35;
      v12 = *a2;
      v13 = v4 + v9;
      v14 = *(v4 + v9);
      v42 = v10;
      v43 = v12;
      v40 = v4 + v9 + 8;
      v41 = v14;
      v31 = &v34;
      v32 = &v35;
      std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::insert_iterator<std::set<unsigned int>> &>(&v43, &v42, &v41, &v40, &v31, &__p);
      if (llvm::DeltaAlgorithm::GetTestResult(a1, &v34))
      {
        __p = 0;
        v38 = 0;
        v39 = 0;
        std::vector<std::set<unsigned int>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::set<unsigned int> const*>,std::__wrap_iter<std::set<unsigned int> const*>>(&__p, 0, *a3, (v4 + v9), 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 3));
        std::vector<std::set<unsigned int>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::set<unsigned int> const*>,std::__wrap_iter<std::set<unsigned int> const*>>(&__p, v38, v13 + 24, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - v4 - v9 - 24) >> 3));
        llvm::DeltaAlgorithm::Delta(&v31, a1, &v34, &__p);
        v20 = a4 + 8;
        std::__tree<long long>::destroy(a4, *(a4 + 8));
        v21 = v32;
        *a4 = v31;
        *(a4 + 8) = v21;
        v22 = v33;
        *(a4 + 16) = v33;
        if (v22)
        {
          v21[2] = v20;
          v31 = &v32;
          v32 = 0;
          v33 = 0;
          std::__tree<long long>::destroy(&v31, 0);
          v23 = __p;
          if (!__p)
          {
            goto LABEL_25;
          }
        }

        else
        {
          *a4 = v20;
          std::__tree<long long>::destroy(&v31, v21);
          v23 = __p;
          if (!__p)
          {
LABEL_25:
            std::__tree<long long>::destroy(&v34, v35);
            return 1;
          }
        }

        v27 = v38;
        v28 = v23;
        if (v38 != v23)
        {
          do
          {
            v29 = (v27 - 24);
            std::__tree<long long>::destroy(v27 - 24, *(v27 - 16));
            v27 = v29;
          }

          while (v29 != v23);
          v28 = __p;
        }

        v38 = v23;
        operator delete(v28);
        goto LABEL_25;
      }

      std::__tree<long long>::destroy(&v34, v35);
    }

    v9 += 24;
    if (v4 + v9 == v5)
    {
      return 0;
    }
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  llvm::DeltaAlgorithm::Split(TestResult, (v4 + v9));
  llvm::DeltaAlgorithm::Delta(&v34, a1, v4 + v9, &__p);
  v16 = a4 + 8;
  std::__tree<long long>::destroy(a4, *(a4 + 8));
  v17 = v35;
  *a4 = v34;
  *(a4 + 8) = v17;
  v18 = v36;
  *(a4 + 16) = v36;
  if (v18)
  {
    v17[2] = v16;
    v34 = &v35;
    v35 = 0;
    v36 = 0;
    std::__tree<long long>::destroy(&v34, 0);
    v19 = __p;
    if (!__p)
    {
      return 1;
    }
  }

  else
  {
    *a4 = v16;
    std::__tree<long long>::destroy(&v34, v17);
    v19 = __p;
    if (!__p)
    {
      return 1;
    }
  }

  v24 = v38;
  v25 = v19;
  if (v38 != v19)
  {
    do
    {
      v26 = (v24 - 24);
      std::__tree<long long>::destroy(v24 - 24, *(v24 - 16));
      v24 = v26;
    }

    while (v26 != v19);
    v25 = __p;
  }

  v38 = v19;
  operator delete(v25);
  return 1;
}

void llvm::DeltaAlgorithm::Run(void (***a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  __p = &v13;
  TestResult = llvm::DeltaAlgorithm::GetTestResult(a1, &__p);
  std::__tree<long long>::destroy(&__p, v13);
  if (TestResult)
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = (a3 + 1);
  }

  else
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    llvm::DeltaAlgorithm::Split(v7, a2);
    llvm::DeltaAlgorithm::Delta(a1, a2, &__p, a3);
    v8 = __p;
    if (__p)
    {
      v9 = v13;
      v10 = __p;
      if (v13 != __p)
      {
        do
        {
          v11 = v9 - 3;
          std::__tree<long long>::destroy((v9 - 3), *(v9 - 2));
          v9 = v11;
        }

        while (v11 != v8);
        v10 = __p;
      }

      v13 = v8;
      operator delete(v10);
    }
  }
}

void std::__tree<std::set<unsigned int>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::set<unsigned int>>::destroy(a1, *a2);
    std::__tree<std::set<unsigned int>>::destroy(a1, a2[1]);
    std::__tree<long long>::destroy((a2 + 4), a2[5]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::set<unsigned int>>::__count_unique<std::set<unsigned int>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = *a2;
  v3 = a2 + 1;
  v4 = v5;
  if (v5 == v3)
  {
    while (1)
    {
      v6 = v2[4];
      if (v6 == v2 + 5)
      {
        break;
      }

      v7 = v4;
      while (v7 != v3)
      {
        v8 = *(v7 + 7);
        v9 = *(v6 + 7);
        if (v8 < v9)
        {
          break;
        }

        if (v9 >= v8)
        {
          v10 = v7[1];
          v11 = v7;
          if (v10)
          {
            do
            {
              v7 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v7 = v11[2];
              v12 = *v7 == v11;
              v11 = v7;
            }

            while (!v12);
          }

          v13 = v6[1];
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
              v14 = v6[2];
              v12 = *v14 == v6;
              v6 = v14;
            }

            while (!v12);
          }

          v6 = v14;
          if (v14 != v2 + 5)
          {
            continue;
          }
        }

        return 1;
      }

      result = 0;
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    return 1;
  }

  else
  {
    do
    {
      v16 = v2[4];
      v17 = v2 + 5;
      if (v16 == v2 + 5)
      {
LABEL_39:
        v26 = v4;
        while (v16 != v17)
        {
          v27 = *(v16 + 7);
          v28 = *(v26 + 7);
          if (v27 < v28)
          {
            break;
          }

          if (v28 >= v27)
          {
            v29 = v16[1];
            v30 = v16;
            if (v29)
            {
              do
              {
                v16 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v16 = v30[2];
                v12 = *v16 == v30;
                v30 = v16;
              }

              while (!v12);
            }

            v31 = v26[1];
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v26[2];
                v12 = *v32 == v26;
                v26 = v32;
              }

              while (!v12);
            }

            v26 = v32;
            if (v32 != v3)
            {
              continue;
            }
          }

          return 1;
        }

        ++v2;
      }

      else
      {
        v18 = v4;
        v19 = v2[4];
        while (v18 != v3)
        {
          v20 = *(v18 + 7);
          v21 = *(v19 + 7);
          if (v20 < v21)
          {
            break;
          }

          if (v21 >= v20)
          {
            v22 = v18[1];
            v23 = v18;
            if (v22)
            {
              do
              {
                v18 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v18 = v23[2];
                v12 = *v18 == v23;
                v23 = v18;
              }

              while (!v12);
            }

            v24 = v19[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v19[2];
                v12 = *v25 == v19;
                v19 = v25;
              }

              while (!v12);
            }

            v19 = v25;
            if (v25 != v17)
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }

      result = 0;
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void *std::__tree<std::set<unsigned int>>::__find_equal<std::set<unsigned int>>(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
LABEL_60:
    v12 = result;
LABEL_61:
    *a2 = v12;
    return result;
  }

  v8 = *a3;
  v6 = a3 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      while (1)
      {
        v12 = v4;
        v21 = v4[4];
        v22 = v4 + 5;
        v23 = v7;
        v24 = v21;
        if (v21 != v22)
        {
          break;
        }

LABEL_25:
        v25 = v7;
        while (v21 != v22)
        {
          v26 = *(v21 + 7);
          v27 = *(v25 + 7);
          if (v26 < v27)
          {
            break;
          }

          if (v27 >= v26)
          {
            v28 = v21[1];
            v29 = v21;
            if (v28)
            {
              do
              {
                v21 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v21 = v29[2];
                v18 = *v21 == v29;
                v29 = v21;
              }

              while (!v18);
            }

            v30 = v25[1];
            if (v30)
            {
              do
              {
                v31 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v31 = v25[2];
                v18 = *v31 == v25;
                v25 = v31;
              }

              while (!v18);
            }

            v25 = v31;
            if (v31 != v6)
            {
              continue;
            }
          }

          goto LABEL_61;
        }

        result = v12 + 1;
        v4 = v12[1];
        if (!v4)
        {
          goto LABEL_61;
        }
      }

      while (v23 != v6)
      {
        v32 = *(v23 + 7);
        v33 = *(v24 + 7);
        if (v32 < v33)
        {
          break;
        }

        if (v33 >= v32)
        {
          v34 = v23[1];
          v35 = v23;
          if (v34)
          {
            do
            {
              v23 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v23 = v35[2];
              v18 = *v23 == v35;
              v35 = v23;
            }

            while (!v18);
          }

          v36 = v24[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = v24[2];
              v18 = *v37 == v24;
              v24 = v37;
            }

            while (!v18);
          }

          v24 = v37;
          if (v37 != v22)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v4 = *v12;
      result = v12;
    }

    while (*v12);
    goto LABEL_61;
  }

  v9 = v4[4];
  v10 = v4 + 5;
  if (v9 != v4 + 5)
  {
    v11 = result;
    v12 = v4;
    do
    {
      result = v12;
      v13 = v7;
      while (v13 != v6)
      {
        v14 = *(v13 + 7);
        v15 = *(v9 + 7);
        if (v14 < v15)
        {
          break;
        }

        if (v15 >= v14)
        {
          v16 = v13[1];
          v17 = v13;
          if (v16)
          {
            do
            {
              v13 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v13 = v17[2];
              v18 = *v13 == v17;
              v17 = v13;
            }

            while (!v18);
          }

          v19 = v9[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v9[2];
              v18 = *v20 == v9;
              v9 = v20;
            }

            while (!v18);
          }

          v9 = v20;
          if (v20 != v10)
          {
            continue;
          }
        }

        v38 = result;
        result = v11;
        *a2 = v38;
        return result;
      }

      v12 = *result;
      if (!*result)
      {
        goto LABEL_60;
      }

      v9 = v12[4];
      v10 = v12 + 5;
      v11 = result;
    }

    while (v9 != v12 + 5);
    goto LABEL_61;
  }

  *a2 = v4;
  return result;
}

void *std::vector<std::set<unsigned int>>::__emplace_back_slow_path<std::set<unsigned int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  v6[2] = 0;
  *(24 * v2 + 8) = 0;
  *v6 = 24 * v2 + 8;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((24 * v2), *a2, (a2 + 8));
  v7 = *a1;
  v8 = a1[1];
  v9 = 24 * v2 - (v8 - *a1);
  if (v8 != *a1)
  {
    v10 = 0;
    v11 = -8 * ((v8 - *a1) >> 3) + 24 * v2;
    do
    {
      while (1)
      {
        v12 = (v11 + v10 * 8);
        v13 = &v7[v10 + 1];
        v14 = *v13;
        *v12 = v7[v10];
        *(v11 + v10 * 8 + 8) = v14;
        v15 = v11 + v10 * 8 + 8;
        v16 = v7[v10 + 2];
        v12[2] = v16;
        if (!v16)
        {
          break;
        }

        *(v14 + 16) = v15;
        v7[v10] = v13;
        *v13 = 0;
        v7[v10 + 2] = 0;
        v10 += 3;
        if (&v7[v10] == v8)
        {
          goto LABEL_15;
        }
      }

      *v12 = v15;
      v10 += 3;
    }

    while (&v7[v10] != v8);
    do
    {
LABEL_15:
      std::__tree<long long>::destroy(v7, v7[1]);
      v7 += 3;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = (v6 + 3);
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6 + 3;
}

uint64_t *std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = a2;
    v7 = result;
    do
    {
      result = std::__tree<unsigned int>::__find_equal<unsigned int>(v7, v7 + 1, v12, &v11, v6 + 7);
      if (!*result)
      {
        operator new();
      }

      v8 = *(v6 + 1);
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
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

double std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long> &,std::insert_iterator<std::set<unsigned int>> &>@<D0>(unsigned int **a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  if (*a1 == *a2)
  {
LABEL_32:
    v11 = v10;
  }

  else
  {
    for (i = *a3; *a3 != *a4; i = *a3)
    {
      v15 = v10[7];
      v16 = *(i + 7);
      if (v15 >= v16)
      {
        if (v16 >= v15)
        {
          v23 = *(v10 + 1);
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
              v24 = *(v10 + 2);
              v20 = *v24 == v10;
              v10 = v24;
            }

            while (!v20);
          }

          *a1 = v24;
          v25 = *a3;
          v26 = *(*a3 + 8);
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v25[2];
              v20 = *v27 == v25;
              v25 = v27;
            }

            while (!v20);
          }

          *a3 = v27;
          v10 = *a1;
          v11 = *a2;
          if (*a1 == *a2)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v21 = i[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = i[2];
              v20 = *v22 == i;
              i = v22;
            }

            while (!v20);
          }

          *a3 = v22;
          v10 = *a1;
          v11 = *a2;
          if (*a1 == *a2)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        std::insert_iterator<std::set<unsigned int>>::operator=[abi:nn200100](a5, v10 + 7);
        v17 = *a1;
        v18 = *(*a1 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v17 + 2);
            v20 = *v19 == v17;
            v17 = v19;
          }

          while (!v20);
        }

        *a1 = v19;
        v10 = v19;
        v11 = *a2;
        if (v19 == *a2)
        {
          goto LABEL_32;
        }
      }
    }
  }

  std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::insert_iterator<std::set<unsigned int>>>(v10, v11, *a5, a5[1], &v29);
  *a6 = v29;
  result = *&v30;
  *(a6 + 8) = v30;
  return result;
}

void **std::insert_iterator<std::set<unsigned int>>::operator=[abi:nn200100](void **a1, unsigned int *a2)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(*a1, a1[1], &v9, &v8, a2);
  if (!v3)
  {
    operator new();
  }

  a1[1] = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

void std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::insert_iterator<std::set<unsigned int>>>(unsigned int *a1@<X1>, unsigned int *a2@<X2>, unsigned int *a3@<X3>, uint64_t *a4@<X4>, unsigned int **a5@<X8>)
{
  v6 = a1;
  if (a1 == a2)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4;
    do
    {
      v10 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a3, v8, &v16, &v15, v6 + 7);
      if (!v10)
      {
        operator new();
      }

      v11 = *(v10 + 8);
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = *(v10 + 16);
          v12 = *v8 == v10;
          v10 = v8;
        }

        while (!v12);
      }

      v13 = *(v6 + 1);
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
          v14 = *(v6 + 2);
          v12 = *v14 == v6;
          v6 = v14;
        }

        while (!v12);
      }

      v6 = v14;
    }

    while (v14 != a2);
    v6 = a2;
  }

  *a5 = v6;
  a5[1] = a3;
  a5[2] = v8;
}

uint64_t std::vector<std::set<unsigned int>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::set<unsigned int> const*>,std::__wrap_iter<std::set<unsigned int> const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v9 - a2) >> 3)) >= a5)
      {
        v19 = v9 - 24 * a5;
        v20 = a1[1];
        if (v19 < v9)
        {
          v21 = 0;
          do
          {
            while (1)
            {
              v22 = (v9 + v21);
              v23 = (v19 + v21 + 8);
              v24 = *v23;
              *v22 = *(v19 + v21);
              *(v9 + v21 + 8) = v24;
              v25 = v9 + v21 + 8;
              v26 = *(v19 + v21 + 16);
              v22[2] = v26;
              if (!v26)
              {
                break;
              }

              *(v24 + 16) = v25;
              *(v19 + v21) = v23;
              *v23 = 0;
              *(v19 + v21 + 16) = 0;
              v21 += 24;
              if (v19 + v21 >= v9)
              {
                goto LABEL_21;
              }
            }

            *v22 = v25;
            v21 += 24;
          }

          while (v19 + v21 < v9);
LABEL_21:
          v20 = v9 + v21;
        }

        a1[1] = v20;
        if (v9 != a2 + 24 * a5)
        {
          v27 = 0;
          v28 = a2 + 24 * a5 - v9;
          do
          {
            while (1)
            {
              v29 = v19 + v27;
              v30 = (v9 + v27 - 16);
              std::__tree<long long>::destroy(v9 + v27 - 24, *v30);
              v31 = (v19 + v27 - 16);
              v32 = *v31;
              *(v9 + v27 - 24) = *(v19 + v27 - 24);
              *v30 = v32;
              v33 = *(v19 + v27 - 8);
              *(v9 + v27 - 8) = v33;
              if (!v33)
              {
                break;
              }

              v32[2] = v30;
              *(v29 - 24) = v31;
              *v31 = 0;
              *(v29 - 8) = 0;
              v27 -= 24;
              if (v28 == v27)
              {
                goto LABEL_27;
              }
            }

            *(v9 + v27 - 24) = v30;
            v27 -= 24;
          }

          while (v28 != v27);
        }

LABEL_27:
        v34 = &v7[3 * a5];
        v35 = v7 + 1;
        v36 = v5;
        do
        {
          if (v7 != v36)
          {
            std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v36, *v7, v35);
          }

          v7 += 3;
          v36 += 3;
          v35 += 3;
        }

        while (v7 != v34);
      }

      else
      {
        v16 = v14 + a3;
        if ((v14 + a3) == a4)
        {
          v17 = a1[1];
          v18 = v17;
          a1[1] = v9;
          if (v14 < 1)
          {
            return v5;
          }
        }

        else
        {
          v69 = a1;
          v46 = (v16 + 8);
          v47 = (v9 + 8);
          v17 = a1[1];
          v48 = (v14 + a3);
          do
          {
            *v47 = 0;
            v47[1] = 0;
            *(v47 - 1) = v47;
            v49 = *v48;
            v48 += 3;
            std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v47 - 1, v49, v46);
            v46 += 6;
            v47 += 3;
            v17 += 3;
          }

          while (v48 != a4);
          v18 = v47 - 1;
          v5 = a2;
          a1 = v69;
          v69[1] = v17;
          if (v14 < 1)
          {
            return v5;
          }
        }

        v50 = v5 + 24 * a5;
        v51 = v17;
        if (&v17[-3 * a5] < v9)
        {
          v52 = 0;
          v53 = -3 * a5;
          do
          {
            while (1)
            {
              v54 = &v17[v52];
              v55 = &v17[v53 + 1];
              v56 = *v55;
              *v54 = v17[v53];
              v17[v52 + 1] = v56;
              v57 = &v17[v52 + 1];
              v58 = v17[v53 + 2];
              v54[2] = v58;
              if (!v58)
              {
                break;
              }

              *(v56 + 16) = v57;
              v17[v53] = v55;
              *v55 = 0;
              v17[v53 + 2] = 0;
              v53 += 3;
              v52 += 3;
              if (&v17[v53] >= v9)
              {
                goto LABEL_46;
              }
            }

            *v54 = v57;
            v53 += 3;
            v52 += 3;
          }

          while (&v17[v53] < v9);
LABEL_46:
          v51 = &v17[v52];
        }

        a1[1] = v51;
        if (v18 != v50)
        {
          v59 = 0;
          v60 = -3 * a5;
          do
          {
            while (1)
            {
              v61 = &v17[v60];
              v62 = &v17[v59 - 2];
              std::__tree<long long>::destroy(&v17[v59 - 3], *v62);
              v63 = &v17[v60 - 2];
              v64 = *v63;
              v17[v59 - 3] = v17[v60 - 3];
              *v62 = v64;
              v65 = v17[v60 - 1];
              v17[v59 - 1] = v65;
              if (!v65)
              {
                break;
              }

              v64[2] = v62;
              *(v61 - 3) = v63;
              *v63 = 0;
              *(v61 - 1) = 0;
              v60 -= 3;
              v59 -= 3;
              v50 += 24;
              if (v17 == v50)
              {
                goto LABEL_52;
              }
            }

            v17[v59 - 3] = v62;
            v60 -= 3;
            v59 -= 3;
            v50 += 24;
          }

          while (v17 != v50);
        }

LABEL_52:
        v66 = v7 + 1;
        v67 = v5;
        do
        {
          if (v7 != v67)
          {
            std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v67, *v7, v66);
          }

          v7 += 3;
          v67 += 3;
          v66 += 3;
        }

        while (v7 != v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x5555555555555555 * ((v9 - *a1) >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      v74 = a1;
      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v37 = a1;
      __p = 0;
      v71 = 8 * ((a2 - v10) >> 3);
      v73 = 0;
      v38 = 24 * a5;
      v39 = v71 + 24 * a5;
      v40 = (v71 + 8);
      v41 = (a3 + 8);
      do
      {
        *v40 = 0;
        v40[1] = 0;
        *(v40 - 1) = v40;
        v42 = *v7;
        v7 += 3;
        std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v40 - 1, v42, v41);
        v40 += 3;
        v41 += 6;
        v38 -= 24;
      }

      while (v38);
      v72 = v39;
      v5 = std::vector<std::set<unsigned int>>::__swap_out_circular_buffer(v37, &__p, v5);
      v44 = v71;
      for (i = v72; v72 != v44; i = v72)
      {
        v72 = i - 24;
        std::__tree<long long>::destroy(i - 24, *(i - 16));
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

uint64_t std::vector<std::set<unsigned int>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = 0;
    v9 = a2[2];
    do
    {
      while (1)
      {
        v10 = (v9 + v8);
        v11 = (a3 + v8 + 8);
        v12 = *v11;
        *v10 = *(a3 + v8);
        *(v9 + v8 + 8) = v12;
        v13 = v9 + v8 + 8;
        v14 = *(a3 + v8 + 16);
        v10[2] = v14;
        if (!v14)
        {
          break;
        }

        *(v12 + 16) = v13;
        *(a3 + v8) = v11;
        *v11 = 0;
        *(a3 + v8 + 16) = 0;
        v8 += 24;
        if (a3 + v8 == v7)
        {
          goto LABEL_6;
        }
      }

      *v10 = v13;
      v8 += 24;
    }

    while (a3 + v8 != v7);
LABEL_6:
    v15 = a3;
    do
    {
      std::__tree<long long>::destroy(v15, *(v15 + 8));
      v15 += 24;
    }

    while (v15 != v7);
  }

  v16 = *a1;
  v17 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v18 = v17 + v16 - a3;
  if (v16 != a3)
  {
    v19 = 0;
    do
    {
      while (1)
      {
        v20 = (v18 + v19);
        v21 = (v16 + v19 + 8);
        v22 = *v21;
        *v20 = *(v16 + v19);
        *(v18 + v19 + 8) = v22;
        v23 = v18 + v19 + 8;
        v24 = *(v16 + v19 + 16);
        v20[2] = v24;
        if (!v24)
        {
          break;
        }

        *(v22 + 16) = v23;
        *(v16 + v19) = v21;
        *v21 = 0;
        *(v16 + v19 + 16) = 0;
        v19 += 24;
        if (v16 + v19 == a3)
        {
          goto LABEL_13;
        }
      }

      *v20 = v23;
      v19 += 24;
    }

    while (v16 + v19 != a3);
    do
    {
LABEL_13:
      std::__tree<long long>::destroy(v16, *(v16 + 8));
      v16 += 24;
    }

    while (v16 != a3);
  }

  a2[1] = v18;
  v25 = *a1;
  *a1 = v18;
  a1[1] = v25;
  a2[1] = v25;
  v26 = a1[1];
  a1[1] = a2[2];
  a2[2] = v26;
  v27 = a1[2];
  a1[2] = a2[3];
  a2[3] = v27;
  *a2 = a2[1];
  return v6;
}

void std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = *(v14 + 7);
      *(v9 + 7) = v15;
      v16 = *v8;
      v17 = (v5 + 8);
      v18 = (v5 + 8);
      if (*v8)
      {
        break;
      }

LABEL_23:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_25:
      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= *(v16 + 7))
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_23;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v5 = v19;
    goto LABEL_25;
  }

  v12 = v9;
LABEL_13:
  std::__tree<long long>::destroy(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    std::__tree<long long>::destroy(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

void llvm::DeltaTree::DeltaTree(llvm::DeltaTree *this)
{
  operator new();
}

{
  operator new();
}

void llvm::DeltaTree::DeltaTree(llvm::DeltaTree *this, const llvm::DeltaTree *a2)
{
  operator new();
}

{
  operator new();
}

void llvm::DeltaTree::~DeltaTree(_anonymous_namespace_::DeltaTreeInteriorNode **this)
{
  v1 = *this;
  if ((*(v1 + 121) & 1) == 0)
  {
  }

  MEMORY[0x259C63180]();
}

{
  v1 = *this;
  if ((*(v1 + 121) & 1) == 0)
  {
  }

  MEMORY[0x259C63180]();
}

uint64_t llvm::DeltaTree::getDeltaAt(llvm::DeltaTree *this, unsigned int a2)
{
  result = 0;
  while (1)
  {
    v6 = *this;
    if (!*(v6 + 120))
    {
      if (*(v6 + 121))
      {
        return result;
      }

      v4 = 0;
LABEL_4:
      v5 = v4;
      goto LABEL_5;
    }

    v4 = 0;
    v7 = (v6 + 4);
    while (1)
    {
      v8 = *(v7 - 1);
      if (v8 >= a2)
      {
        break;
      }

      v9 = *v7;
      v7 += 2;
      result = (v9 + result);
      if (*(v6 + 120) == ++v4)
      {
        v4 = *(v6 + 120);
        break;
      }
    }

    if (*(v6 + 121))
    {
      return result;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        v10 = 0;
LABEL_18:
        v14 = (v6 + 8 * v10 + 128);
        v15 = v4 - v10;
        do
        {
          v16 = *v14++;
          result = (*(v16 + 124) + result);
          --v15;
        }

        while (v15);
        goto LABEL_20;
      }

      v11 = 0;
      v10 = v4 & 0x7FFFFFFE;
      v12 = v6 + 136;
      v13 = v10;
      do
      {
        LODWORD(result) = *(*(v12 - 8) + 124) + result;
        v11 += *(*v12 + 124);
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      result = (v11 + result);
      if (v10 != v4)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    if (v8 < a2)
    {
      goto LABEL_4;
    }

    v5 = v4;
    if (*(v6 + 8 * v4) == a2)
    {
      return (*(*(v6 + 8 * v4 + 128) + 124) + result);
    }

LABEL_5:
    this = (v6 + 8 * v5 + 128);
  }
}

BOOL llvm::DeltaTree::AddDelta(llvm::DeltaTree *this, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    operator new();
  }

  return result;
}

BOOL anonymous namespace::DeltaTreeNode::DoInsertion(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = a2;
  v7 = (a1 + 120);
  v8 = *(a1 + 120);
  *(a1 + 124) += a3;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (a1 + 4);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = v12 < a2;
      if (v12 >= a2)
      {
        break;
      }

      ++v10;
      v11 += 2;
      if (v8 == v10)
      {
        v10 = v8;
        goto LABEL_7;
      }
    }

    if (v12 == a2)
    {
      *v11 += a3;
      return v9;
    }

LABEL_7:
    if ((*(a1 + 121) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v8 == 15)
    {
    }

    if (v12 >= a2)
    {
      v17 = v10;
      v18 = a1;
      memmove((a1 + 8 * (v10 + 1)), (a1 + 8 * v10), 8 * (v8 - v10));
      a1 = v18;
      goto LABEL_19;
    }

LABEL_18:
    v17 = v10;
LABEL_19:
    *(a1 + 8 * v17) = v6 | (a3 << 32);
LABEL_26:
    ++*v7;
    return v9;
  }

  v10 = 0;
  if (*(a1 + 121))
  {
    v9 = v8 != 0;
    goto LABEL_18;
  }

  v13 = 1;
  v4 = a4;
  v9 = v8 != 0;
LABEL_13:
  v14 = a1;
  v15 = a1 + 128;
  {
    v16 = v10;
    if (*v7 == 15)
    {
      *(v15 + 8 * v10) = *v4;
    }

    if (v13)
    {
      *(v15 + 8 * v10) = *v4;
      *(v15 + 8 * (v10 + 1)) = v4[1];
    }

    else
    {
      v19 = 8 * (v10 + 1);
      memmove((v15 + 8 * (v16 + 2)), (v15 + v19), 8 * (v8 - v16));
      *(v15 + 8 * v16) = *v4;
      *(v15 + 8 * (v16 + 1)) = v4[1];
      memmove((v14 + v19), (v14 + 8 * v16), 8 * (v8 - v16));
    }

    *(v14 + 8 * v16) = v4[2];
    goto LABEL_26;
  }

  return v9;
}

void anonymous namespace::DeltaTreeInteriorNode::~DeltaTreeInteriorNode(_anonymous_namespace_::DeltaTreeInteriorNode *this)
{
  v2 = *(this + 120) + 1;
  v3 = 128;
  do
  {
    v4 = *(this + v3);
    if ((*(v4 + 121) & 1) == 0)
    {
    }

    MEMORY[0x259C63180]();
    v3 += 8;
    --v2;
  }

  while (v2);
}

void anonymous namespace::DeltaTreeNode::DoSplit(uint64_t a1)
{
  if ((a1 == 0) | *(a1 + 121) & 1)
  {
    operator new();
  }

  operator new();
}

uint64_t *llvm::SignedDivisionByConstantInfo::get@<X0>(llvm::SignedDivisionByConstantInfo *this@<X0>, uint64_t a2@<X8>)
{
  v49 = 1;
  v48 = 0;
  v5 = *(this + 2);
  v47 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&v46);
  }

  v46 = (1 << (v5 - 1));
  *(a2 + 8) = 1;
  *a2 = 0;
  llvm::APInt::abs(this, &v44);
  v41 = *(this + 2);
  if (v41 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v40, this);
  }

  v40 = *this >> (v41 - 1);
  llvm::APInt::operator+=(&v40, &v46);
  v43 = v41;
  v42 = v40;
  v37 = v41;
  if (v41 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, &v42);
  }

  v36 = v40;
  llvm::APInt::operator-=(&v36, 1uLL);
  v39 = v37;
  v38 = v36;
  v37 = 0;
  llvm::APInt::urem(&v42, &v44, &v34);
  if (v35 > 0x40)
  {
    llvm::APInt::flipAllBitsSlowCase(&v34);
  }

  else
  {
    if (v35)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v35;
    }

    else
    {
      v6 = 0;
    }

    v34 = v6 & ~v34;
  }

  llvm::APInt::operator++(&v34);
  llvm::APInt::operator+=(&v34, &v38);
  v41 = v35;
  v40 = v34;
  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  v10 = *(this + 2);
  v39 = 1;
  v38 = 0;
  v35 = 1;
  v34 = 0;
  v33 = 1;
  v32 = 0;
  v31 = 1;
  v30 = 0;
  llvm::APInt::udivrem(&v46, &v40, &v38, &v34, v7, v8, v9);
  llvm::APInt::udivrem(&v46, &v44, &v32, &v30, v11, v12, v13);
  while (1)
  {
    if (v39 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v38, 1u);
      v16 = v35;
      if (v35 > 0x40)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v14 = 2 * v38;
      if (v39 == 1)
      {
        v14 = 0;
      }

      if (v39)
      {
        v15 = 0xFFFFFFFFFFFFFFFFLL >> -v39;
      }

      else
      {
        v15 = 0;
      }

      v38 = (v14 & v15);
      v16 = v35;
      if (v35 > 0x40)
      {
LABEL_32:
        llvm::APInt::shlSlowCase(&v34, 1u);
        if ((llvm::APInt::compare(&v34, &v40) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }
    }

    v17 = 2 * v34;
    if (v16 == 1)
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
    }

    else
    {
      v18 = 0;
    }

    v34 = v17 & v18;
    if ((llvm::APInt::compare(&v34, &v40) & 0x80000000) == 0)
    {
LABEL_41:
      llvm::APInt::operator++(&v38);
      llvm::APInt::operator-=(&v34, &v40);
    }

LABEL_42:
    if (v33 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v32, 1u);
      v21 = v31;
      if (v31 > 0x40)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v19 = 2 * v32;
      if (v33 == 1)
      {
        v19 = 0;
      }

      if (v33)
      {
        v20 = 0xFFFFFFFFFFFFFFFFLL >> -v33;
      }

      else
      {
        v20 = 0;
      }

      v32 = v19 & v20;
      v21 = v31;
      if (v31 > 0x40)
      {
LABEL_49:
        llvm::APInt::shlSlowCase(&v30, 1u);
        if ((llvm::APInt::compare(&v30, &v44) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

LABEL_58:
        llvm::APInt::operator++(&v32);
        llvm::APInt::operator-=(&v30, &v44);
        goto LABEL_59;
      }
    }

    v22 = 2 * v30;
    if (v21 == 1)
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0xFFFFFFFFFFFFFFFFLL >> -v21;
    }

    else
    {
      v23 = 0;
    }

    v30 = v22 & v23;
    if ((llvm::APInt::compare(&v30, &v44) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_59:
    if (v49 > 0x40 || v45 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v48, &v44);
    }

    else
    {
      v48 = v44;
      v49 = v45;
    }

    llvm::APInt::operator-=(&v48, &v30);
    if ((llvm::APInt::compare(&v38, &v48) & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    if (v39 > 0x40)
    {
      if (!llvm::APInt::equalSlowCase(&v38, &v48))
      {
        goto LABEL_70;
      }
    }

    else if (v38 != v48)
    {
      goto LABEL_70;
    }

    v24 = v35;
    if (v35 <= 0x40)
    {
      break;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v34) != v24)
    {
      goto LABEL_70;
    }

LABEL_24:
    ++v10;
  }

  if (!v34)
  {
    goto LABEL_24;
  }

LABEL_70:
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
  }

  *a2 = v32;
  *(a2 + 8) = v33;
  v33 = 0;
  result = llvm::APInt::operator++(a2);
  v26 = *(this + 2);
  v27 = (*this + 8 * ((v26 - 1) >> 6));
  if (v26 < 0x41)
  {
    v27 = this;
  }

  if ((*v27 >> (v26 - 1)))
  {
    v28 = *(a2 + 8);
    if (v28 > 0x40)
    {
      llvm::APInt::flipAllBitsSlowCase(a2);
    }

    else
    {
      if (v28)
      {
        v29 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
      }

      else
      {
        v29 = 0;
      }

      *a2 = v29 & ~*a2;
    }

    result = llvm::APInt::operator++(a2);
    v26 = *(this + 2);
  }

  *(a2 + 16) = v10 - v26;
  if (v31 >= 0x41)
  {
    result = v30;
    if (v30)
    {
      result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    }
  }

  if (v33 >= 0x41)
  {
    result = v32;
    if (v32)
    {
      result = MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }
  }

  if (v35 >= 0x41)
  {
    result = v34;
    if (v34)
    {
      result = MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }

  if (v39 >= 0x41)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  if (v41 >= 0x41)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }
  }

  if (v43 >= 0x41)
  {
    result = v42;
    if (v42)
    {
      result = MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
      result = MEMORY[0x259C63150](v44, 0x1000C8000313F17);
    }
  }

  if (v47 >= 0x41)
  {
    result = v46;
    if (v46)
    {
      result = MEMORY[0x259C63150](v46, 0x1000C8000313F17);
    }
  }

  if (v49 >= 0x41)
  {
    result = v48;
    if (v48)
    {
      return MEMORY[0x259C63150](v48, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::UnsignedDivisionByConstantInfo::get@<X0>(llvm::UnsignedDivisionByConstantInfo *this@<X0>, const llvm::APInt *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v92 = 1;
  v91 = 0;
  *(a4 + 8) = 1;
  *a4 = 0;
  *(a4 + 16) = 0;
  v7 = *(this + 2);
  v90 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v89);
  }

  v89 = 0;
  if (v7 == a2)
  {
LABEL_10:
    v9 = *(this + 2);
    v88 = v9;
    if (v9 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_13:
    llvm::APInt::initSlowCase(&v87);
  }

  if (v7 - a2 > 0x40)
  {
    llvm::APInt::setBitsSlowCase(&v89, 0, v7 - a2);
    goto LABEL_10;
  }

  v8 = 0xFFFFFFFFFFFFFFFFLL >> (a2 - v7);
  if (v90 <= 0x40)
  {
    v89 |= v8;
    v9 = *(this + 2);
    v88 = v9;
    if (v9 <= 0x40)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  *v89 |= v8;
  v9 = *(this + 2);
  v88 = v9;
  if (v9 > 0x40)
  {
    goto LABEL_13;
  }

LABEL_11:
  v87 = 0;
  v87 |= 1 << (v9 - 1);
  v10 = *(this + 2);
  v86 = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v85);
  }

  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v11 = 0;
  }

  v85 = v11;
  v85 &= ~(1 << (v10 - 1));
  v78 = v90;
  if (v90 > 0x40)
  {
    llvm::APInt::initSlowCase(&v77, &v89);
  }

  v77 = v89;
  llvm::APInt::operator+=(&v77, 1);
  v80 = v78;
  v79 = v77;
  v78 = 0;
  llvm::APInt::operator-=(&v79, this);
  v82 = v80;
  v81 = v79;
  v80 = 0;
  llvm::APInt::urem(&v81, this, &v60);
  if (v61 > 0x40)
  {
    llvm::APInt::flipAllBitsSlowCase(&v60);
  }

  else
  {
    if (v61)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v61;
    }

    else
    {
      v12 = 0;
    }

    v60 = v12 & ~v60;
  }

  llvm::APInt::operator++(&v60);
  llvm::APInt::operator+=(&v60, &v89);
  v84 = v61;
  v83 = v60;
  v61 = 0;
  if (v82 >= 0x41 && v81)
  {
    MEMORY[0x259C63150](v81, 0x1000C8000313F17);
  }

  if (v80 >= 0x41 && v79)
  {
    MEMORY[0x259C63150](v79, 0x1000C8000313F17);
  }

  if (v78 >= 0x41 && v77)
  {
    MEMORY[0x259C63150](v77, 0x1000C8000313F17);
  }

  v16 = *(this + 2);
  v82 = 1;
  v81 = 0;
  v76 = 1;
  v75 = 0;
  v74 = 1;
  v73 = 0;
  v72 = 1;
  v71 = 0;
  llvm::APInt::udivrem(&v87, &v83, &v81, &v75, v13, v14, v15);
  llvm::APInt::udivrem(&v85, this, &v73, &v71, v17, v18, v19);
  v20 = 0;
  while (1)
  {
    v70 = v84;
    if (v84 > 0x40)
    {
      llvm::APInt::initSlowCase(&v69, &v83);
    }

    v69 = v83;
    llvm::APInt::operator-=(&v69, &v75);
    v22 = v70;
    v61 = v70;
    v23 = v69;
    v60 = v69;
    v70 = 0;
    v24 = llvm::APInt::compare(&v75, &v60);
    v25 = v24;
    if (v22 >= 0x41 && v23 != 0)
    {
      MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      if (v70 >= 0x41)
      {
        if (v69)
        {
          MEMORY[0x259C63150](v69, 0x1000C8000313F17);
        }
      }
    }

    if ((v25 & 0x80000000) == 0)
    {
      if (v82 > 0x40)
      {
        llvm::APInt::shlSlowCase(&v81, 1u);
        llvm::APInt::operator++(&v81);
        v29 = v76;
        if (v76 > 0x40)
        {
LABEL_58:
          llvm::APInt::shlSlowCase(&v75, 1u);
          goto LABEL_75;
        }
      }

      else
      {
        v27 = 2 * v81;
        if (v82 == 1)
        {
          v27 = 0;
        }

        if (v82)
        {
          v28 = 0xFFFFFFFFFFFFFFFFLL >> -v82;
        }

        else
        {
          v28 = 0;
        }

        v81 = (v27 & v28);
        llvm::APInt::operator++(&v81);
        v29 = v76;
        if (v76 > 0x40)
        {
          goto LABEL_58;
        }
      }

      v33 = 2 * v75;
      if (v29 == 1)
      {
        v33 = 0;
      }

      if (v29)
      {
        v34 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
      }

      else
      {
        v34 = 0;
      }

      v75 = v33 & v34;
LABEL_75:
      llvm::APInt::operator-=(&v75, &v83);
      v68 = v72;
      if (v72 > 0x40)
      {
        goto LABEL_84;
      }

      goto LABEL_76;
    }

    if (v82 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v81, 1u);
      v32 = v76;
      if (v76 > 0x40)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v30 = 2 * v81;
      if (v82 == 1)
      {
        v30 = 0;
      }

      if (v82)
      {
        v31 = 0xFFFFFFFFFFFFFFFFLL >> -v82;
      }

      else
      {
        v31 = 0;
      }

      v81 = (v30 & v31);
      v32 = v76;
      if (v76 > 0x40)
      {
LABEL_66:
        llvm::APInt::shlSlowCase(&v75, 1u);
        v68 = v72;
        if (v72 > 0x40)
        {
          goto LABEL_84;
        }

        goto LABEL_76;
      }
    }

    v35 = 2 * v75;
    if (v32 == 1)
    {
      v35 = 0;
    }

    if (v32)
    {
      v36 = 0xFFFFFFFFFFFFFFFFLL >> -v32;
    }

    else
    {
      v36 = 0;
    }

    v75 = v35 & v36;
    v68 = v72;
    if (v72 > 0x40)
    {
LABEL_84:
      llvm::APInt::initSlowCase(&v67, &v71);
    }

LABEL_76:
    v67 = v71;
    llvm::APInt::operator+=(&v67, 1);
    v61 = v68;
    v60 = v67;
    v68 = 0;
    v64 = *(this + 2);
    if (v64 > 0x40)
    {
      llvm::APInt::initSlowCase(&v63, this);
    }

    v63 = *this;
    llvm::APInt::operator-=(&v63, &v71);
    v37 = v64;
    v66 = v64;
    v38 = v63;
    v65 = v63;
    v64 = 0;
    v39 = llvm::APInt::compare(&v60, &v65);
    v40 = v39;
    if (v37 >= 0x41)
    {
      if (v38)
      {
        MEMORY[0x259C63150](v38, 0x1000C8000313F17);
        if (v64 >= 0x41)
        {
          if (v63)
          {
            MEMORY[0x259C63150](v63, 0x1000C8000313F17);
          }
        }
      }
    }

    if (v61 >= 0x41 && v60)
    {
      MEMORY[0x259C63150](v60, 0x1000C8000313F17);
    }

    if (v68 >= 0x41 && v67)
    {
      MEMORY[0x259C63150](v67, 0x1000C8000313F17);
    }

    if (v40 < 0)
    {
      if ((llvm::APInt::compare(&v73, &v87) & 0x80000000) == 0)
      {
        v20 = 1;
        *(a4 + 16) = 1;
      }

      if (v74 > 0x40)
      {
        llvm::APInt::shlSlowCase(&v73, 1u);
        v46 = v72;
        if (v72 > 0x40)
        {
LABEL_119:
          llvm::APInt::shlSlowCase(&v71, 1u);
          goto LABEL_136;
        }
      }

      else
      {
        v44 = 2 * v73;
        if (v74 == 1)
        {
          v44 = 0;
        }

        if (v74)
        {
          v45 = 0xFFFFFFFFFFFFFFFFLL >> -v74;
        }

        else
        {
          v45 = 0;
        }

        v73 = v44 & v45;
        v46 = v72;
        if (v72 > 0x40)
        {
          goto LABEL_119;
        }
      }

      v49 = 2 * v71;
      if (v46 == 1)
      {
        v49 = 0;
      }

      if (v46)
      {
        v50 = 0xFFFFFFFFFFFFFFFFLL >> -v46;
      }

      else
      {
        v50 = 0;
      }

      v71 = v49 & v50;
LABEL_136:
      llvm::APInt::operator++(&v71);
      if (v92 > 0x40)
      {
        goto LABEL_139;
      }

      goto LABEL_137;
    }

    if ((llvm::APInt::compare(&v73, &v85) & 0x80000000) == 0)
    {
      v20 = 1;
      *(a4 + 16) = 1;
    }

    if (v74 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v73, 1u);
      llvm::APInt::operator++(&v73);
      v43 = v72;
      if (v72 > 0x40)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v41 = 2 * v73;
      if (v74 == 1)
      {
        v41 = 0;
      }

      if (v74)
      {
        v42 = 0xFFFFFFFFFFFFFFFFLL >> -v74;
      }

      else
      {
        v42 = 0;
      }

      v73 = v41 & v42;
      llvm::APInt::operator++(&v73);
      v43 = v72;
      if (v72 > 0x40)
      {
LABEL_109:
        llvm::APInt::shlSlowCase(&v71, 1u);
        goto LABEL_127;
      }
    }

    v47 = 2 * v71;
    if (v43 == 1)
    {
      v47 = 0;
    }

    v48 = v43 ? 0xFFFFFFFFFFFFFFFFLL >> -v43 : 0;
    v71 = v47 & v48;
LABEL_127:
    llvm::APInt::operator++(&v71);
    llvm::APInt::operator-=(&v71, this);
    if (v92 > 0x40)
    {
      goto LABEL_139;
    }

LABEL_137:
    v51 = *(this + 2);
    if (v51 <= 0x40)
    {
      v91 = *this;
      v92 = v51;
      goto LABEL_140;
    }

LABEL_139:
    llvm::APInt::assignSlowCase(&v91, this);
LABEL_140:
    llvm::APInt::operator--(&v91);
    llvm::APInt::operator-=(&v91, &v71);
    v52 = *(this + 2);
    if (v16 >= 2 * v52)
    {
      goto LABEL_148;
    }

    if ((llvm::APInt::compare(&v81, &v91) & 0x80000000) == 0)
    {
      break;
    }

LABEL_39:
    ++v16;
  }

  if (v82 > 0x40)
  {
    if (!llvm::APInt::equalSlowCase(&v81, &v91))
    {
      goto LABEL_148;
    }
  }

  else if (v81 != v91)
  {
    goto LABEL_148;
  }

  v53 = v76;
  if (v76 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v75) != v53)
    {
      goto LABEL_148;
    }

    goto LABEL_39;
  }

  if (!v75)
  {
    goto LABEL_39;
  }

LABEL_148:
  if (v20)
  {
    if (v52 > 0x40)
    {
      if (**this & 1) == 0 && (a3)
      {
        llvm::APInt::countTrailingZerosSlowCase(this);
        v66 = v52;
        llvm::APInt::initSlowCase(&v65, this);
      }
    }

    else
    {
      v54 = *this;
      if (*this & 1) == 0 && (a3)
      {
        v55 = __clz(__rbit64(v54));
        if (v52 >= v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = v52;
        }

        v66 = v52;
        v65 = v54;
        if (v52 == v56)
        {
          v65 = 0;
        }

        else
        {
          v65 >>= v56;
        }

        result = llvm::UnsignedDivisionByConstantInfo::get(&v60, &v65, (v56 + v4), 1u, v21);
        *a4 = v60;
        *(a4 + 8) = v61;
        *(a4 + 16) = v62;
        *(a4 + 24) = v56;
        if (v66 >= 0x41)
        {
          result = v65;
          if (v65)
          {
            result = MEMORY[0x259C63150](v65, 0x1000C8000313F17);
          }
        }

        goto LABEL_164;
      }
    }
  }

  *a4 = v73;
  *(a4 + 8) = v74;
  v74 = 0;
  result = llvm::APInt::operator++(a4);
  v58 = *(this + 2);
  *(a4 + 20) = v16 - v58;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 20) = ~v58 + v16;
  }

  *(a4 + 24) = 0;
LABEL_164:
  if (v72 >= 0x41)
  {
    result = v71;
    if (v71)
    {
      result = MEMORY[0x259C63150](v71, 0x1000C8000313F17);
    }
  }

  if (v74 >= 0x41)
  {
    result = v73;
    if (v73)
    {
      result = MEMORY[0x259C63150](v73, 0x1000C8000313F17);
    }
  }

  if (v76 >= 0x41)
  {
    result = v75;
    if (v75)
    {
      result = MEMORY[0x259C63150](v75, 0x1000C8000313F17);
    }
  }

  if (v82 >= 0x41)
  {
    result = v81;
    if (v81)
    {
      result = MEMORY[0x259C63150](v81, 0x1000C8000313F17);
    }
  }

  if (v84 >= 0x41)
  {
    result = v83;
    if (v83)
    {
      result = MEMORY[0x259C63150](v83, 0x1000C8000313F17);
    }
  }

  if (v86 >= 0x41)
  {
    result = v85;
    if (v85)
    {
      result = MEMORY[0x259C63150](v85, 0x1000C8000313F17);
    }
  }

  if (v88 >= 0x41)
  {
    result = v87;
    if (v87)
    {
      result = MEMORY[0x259C63150](v87, 0x1000C8000313F17);
    }
  }

  if (v90 >= 0x41)
  {
    result = v89;
    if (v89)
    {
      result = MEMORY[0x259C63150](v89, 0x1000C8000313F17);
    }
  }

  if (v92 >= 0x41)
  {
    result = v91;
    if (v91)
    {
      return MEMORY[0x259C63150](v91, 0x1000C8000313F17);
    }
  }

  return result;
}