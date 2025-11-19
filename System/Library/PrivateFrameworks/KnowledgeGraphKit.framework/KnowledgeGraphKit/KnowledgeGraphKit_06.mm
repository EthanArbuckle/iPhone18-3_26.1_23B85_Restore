degas::Bitset *degas::Bitset::Bitset(degas::Bitset *this, const unsigned __int8 **a2)
{
  *this = 0;
  *(this + 1) = degas::_getUnsignedInt(a2, a2);
  UnsignedInt = degas::_getUnsignedInt(a2, v4);
  *(this + 1) = UnsignedInt;
  v7 = (this + 16);
  if (UnsignedInt == 1024)
  {
    *&v8 = -1;
    *(&v8 + 1) = -1;
    *(this + 7) = v8;
    *(this + 8) = v8;
    *(this + 5) = v8;
    *(this + 6) = v8;
    *(this + 3) = v8;
    *(this + 4) = v8;
    *v7 = v8;
    *(this + 2) = v8;
    *(this + 1) = 1024;
  }

  else
  {
    for (i = 0; i != 128; i += 4)
    {
      *(v7 + i) = degas::_getUnsignedInt(a2, v6) - 1;
    }
  }

  return this;
}

uint64_t degas::_getUnsignedInt(degas *this, const unsigned __int8 **a2)
{
  v2 = (*this)++;
  v3 = *v2;
  if (v3 < 0)
  {
    return v3 & 0x7F | (degas::_getUnsignedInt(this, a2) << 7);
  }

  return v3;
}

BOOL degas::Bitset::setBit(degas::Bitset *this, uint64_t a2)
{
  v2 = a2 - *(this + 1);
  v3 = 1 << v2;
  v4 = *(this + (v2 >> 5) + 4);
  if (((1 << v2) & v4) == 0)
  {
    *(this + (v2 >> 5) + 4) = v3 | v4;
    v5 = *(this + 1);
    if (v5 != -1)
    {
      *(this + 1) = v5 + 1;
    }
  }

  return (v3 & v4) == 0;
}

BOOL degas::Bitset::clearBit(degas::Bitset *this, uint64_t a2)
{
  v2 = a2 - *(this + 1);
  v3 = 1 << v2;
  v4 = *(this + (v2 >> 5) + 4);
  if (((1 << v2) & v4) != 0)
  {
    *(this + (v2 >> 5) + 4) = v4 & ~v3;
    v5 = *(this + 1);
    if (v5 != -1)
    {
      *(this + 1) = v5 - 1;
    }
  }

  return (v3 & v4) != 0;
}

void *degas::Bitset::setRange(void *this, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = this;
    v4 = this[1];
    v5 = v4 + 1024;
    v6 = a2 - v4;
    v7 = a2 >= v4 && v5 > a2;
    if (v7 && v5 > a3)
    {
      v9 = v6 >> 5;
      v10 = a3 - v4;
      if ((v6 & 0x1F) == 0x1F)
      {
        v11 = -1;
      }

      else
      {
        v11 = ~(-2 << v6);
      }

      v12 = v11 & ~(1 << v6);
      v13 = (-1 << v10) & ~(1 << v10);
      v14 = this + v9 + 4;
      if (v9 == v10 >> 5)
      {
        v13 |= v12;
      }

      else
      {
        v15 = v10 >> 5;
        *v14 |= ~v12;
        if (v9 + 1 < v10 >> 5)
        {
          this = memset(this + 4 * v9 + 20, 255, 4 * (v15 + ~v9));
        }

        v14 = (v3 + 16 + 4 * v15);
      }

      *v14 |= ~v13;
      *(v3 + 4) = -1;
    }
  }

  return this;
}

void degas::Bitset::clearRange(degas::Bitset *this, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v4 = *(this + 1);
    v5 = v4 + 1024;
    v6 = a2 - v4;
    v7 = a2 >= v4 && v5 > a2;
    if (v7 && v5 > a3)
    {
      v9 = v6 >> 5;
      v10 = a3 - v4;
      v11 = -2 << v6;
      v12 = (v6 & 0x1F) == 31;
      v13 = 1 << v6;
      if (v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = ~v11;
      }

      v15 = v14 & ~v13;
      v16 = (-1 << v10) & ~(1 << v10);
      if (v9 == v10 >> 5)
      {
        v16 |= v15;
        v17 = this + 4 * v9 + 16;
      }

      else
      {
        v18 = v10 >> 5;
        *(this + v9 + 4) &= v15;
        if (v9 + 1 < v10 >> 5)
        {
          bzero(this + 4 * v9 + 20, 4 * (v18 + ~v9));
        }

        v17 = this + 4 * v18 + 16;
      }

      *v17 &= v16;
      *(this + 1) = -1;
    }
  }
}

uint64_t degas::Bitset::countBitsInRange(degas::Bitset *this, unint64_t a2, unint64_t a3, int8x8_t a4)
{
  v4 = *(this + 1);
  v5 = v4 + 1023;
  if (v4 < a2 || v5 > a3)
  {
    v7 = 0;
    if (v5 >= a3)
    {
      v5 = a3;
    }

    v8 = a2 - v4;
    if (a2 < v4)
    {
      v8 = 0;
    }

    v9 = v8 >> 5;
    v10 = v5 - v4;
    if (((v5 - v4) & 0x1F) == 0x1F)
    {
      v11 = -1;
    }

    else
    {
      v11 = ~(-2 << v10);
    }

    if (v9 <= v10 >> 5)
    {
      v12 = 0;
      v7 = 0;
      v13 = -1 << v8;
      v14 = v9 - (v10 >> 5);
      v15 = this + 4 * v9 + 16;
      do
      {
        if (v12)
        {
          v16 = -1;
        }

        else
        {
          v16 = v13;
        }

        if (v14)
        {
          v17 = -1;
        }

        else
        {
          v17 = v11;
        }

        a4.i32[0] = v17 & v16 & *&v15[4 * v12];
        a4 = vcnt_s8(a4);
        a4.i16[0] = vaddlv_u8(a4);
        v7 += a4.u32[0];
        ++v14;
        ++v12;
      }

      while (v14 != 1);
    }
  }

  else
  {
    v18 = *(this + 1);
    if (v18 == -1)
    {
      v19 = 0;
      v20 = 0uLL;
      do
      {
        do
        {
          v20 = vpadalq_u16(v20, vpaddlq_u8(vcntq_s8(*(this + 4 * v19 + 16))));
          v19 += 4;
        }

        while (v19 != 32);
        v19 = 0;
        v18 = vaddvq_s32(v20);
        v20 = 0uLL;
      }

      while (v18 == -1);
      *(this + 1) = v18;
    }

    return v18;
  }

  return v7;
}

BOOL degas::Bitset::overlapsWith(degas::Bitset *this, const degas::Bitset *a2)
{
  if ((*(a2 + 4) & *(this + 4)) != 0)
  {
    return 1;
  }

  v3 = 0;
  v4 = 31;
  while (v3 != 31)
  {
    v5 = *(this + v3 + 5);
    v6 = *(a2 + v3++ + 5);
    if ((v6 & v5) != 0)
    {
      v4 = v3 - 1;
      return v4 < 0x1F;
    }
  }

  return v4 < 0x1F;
}

BOOL degas::Bitset::isSubsetOf(degas::Bitset *this, const degas::Bitset *a2)
{
  v2 = 0;
  for (i = 0; i != 32; ++i)
  {
    v4 = *(this + i + 4);
    if (v4 && (v4 & ~*(a2 + i + 4)) != 0)
    {
      break;
    }

    v2 = i > 0x1E;
  }

  return v2;
}

unint64_t degas::Bitset::rangeOfBatch(degas::Bitset *this, unint64_t a2, unint64_t *a3, unint64_t *a4, uint32x4_t a5)
{
  v8 = *(this + 1);
  v9 = *a3 - v8;
  if (*a3 <= v8)
  {
    v16 = *(this + 1);
    if (v16 == -1)
    {
      v17 = 0;
      a5 = 0uLL;
      do
      {
        do
        {
          a5 = vpadalq_u16(a5, vpaddlq_u8(vcntq_s8(*(this + 4 * v17 + 16))));
          v17 += 4;
        }

        while (v17 != 32);
        v17 = 0;
        v16 = vaddvq_s32(a5);
        a5 = 0uLL;
      }

      while (v16 == -1);
      *(this + 1) = v16;
    }

    v15 = v16;
    if (v16 <= a2)
    {
      *a4 = v8 + 1023;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = *(this + v19 + 4);
        a5.i32[0] = v20;
        *a5.i8 = vcnt_s8(*a5.i8);
        a5.i16[0] = vaddlv_u8(*a5.i8);
        v15 = v18 + a5.u32[0];
        if (v15 >= a2)
        {
          break;
        }

        ++v19;
        v18 += a5.u32[0];
        if (v19 == 32)
        {
          return v15;
        }
      }

      if (v15 == a2)
      {
        v21 = v8 + 32 * v19;
LABEL_30:
        *a4 = v21 + 31;
        return a2;
      }

      if (v15 > a2)
      {
        v22 = v8 + 32 * v19;
        v27 = v22;
        v23 = v8 + 1024 <= v22 || v8 > v22;
        v24 = v20 & 1;
        if (v23)
        {
          v24 = 0;
        }

        v15 = v18 + v24;
        if (v18 + v24 < a2)
        {
          do
          {
            v15 += degas::Bitset::nextBit(this, &v27, v27);
          }

          while (v15 < a2);
          v22 = v27;
        }

        *a4 = v22;
      }
    }
  }

  else if (*a3 > v8 + 1023 || v9 > 0x3FF)
  {
    return 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = v9 >> 5;
    v13 = (32 * (v9 >> 5)) | 0x1F;
    while (1)
    {
      if (v10)
      {
        a5.i64[0] = *(this + v12 + 4);
      }

      else
      {
        v14 = ((*a3 - *(this + 2)) & 0x1F) == 0x1F ? -1 : ~(-2 << (*a3 - *(this + 2)));
        a5.i32[0] = v14 & *(this + v12 + 4);
      }

      *a5.i8 = vcnt_s8(*a5.i8);
      a5.i16[0] = vaddlv_u8(*a5.i8);
      v15 = v11 + a5.u32[0];
      if (v15 >= a2)
      {
        break;
      }

      ++v12;
      *a4 = v13 + *(this + 1);
      v13 += 32;
      --v10;
      v11 += a5.u32[0];
      if (v12 == 32)
      {
        return v15;
      }
    }

    if (v15 == a2)
    {
      v21 = *(this + 1) + 32 * v12;
      goto LABEL_30;
    }

    if (v15 > a2)
    {
      v25 = *(this + 1) + 32 * v12 - 1;
      v27 = v25;
      if (v11 < a2)
      {
        do
        {
          v11 += degas::Bitset::nextBit(this, &v27, v27);
        }

        while (v11 < a2);
        v25 = v27;
      }

      *a4 = v25;
      return v11;
    }
  }

  return v15;
}

uint64_t degas::Bitset::nextBit(degas::Bitset *this, unint64_t *a2, unint64_t a3)
{
  v3 = this + 16;
  v4 = *(this + 1);
  while (1)
  {
    if (a3 != -1)
    {
      v5 = a3 - v4;
      if (a3 >= v4)
      {
        break;
      }
    }

    a3 = *(this + 1);
    if (v4 <= 0xFFFFFFFFFFFFFBFFLL)
    {
      a3 = *(this + 1);
      if (*v3)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = v5 >> 5;
  if ((v5 & 0x1F) == 0x1F || (v7 = *&v3[4 * v6] & (-2 << (v5 & 0x1F))) == 0)
  {
    if (v5 > 0x3DF)
    {
      return 0;
    }

    v8 = 30 - v6;
    if (v6 > 0x1E)
    {
      v8 = 0;
    }

    v9 = v8 + 1;
    v10 = v6 + 1;
    v11 = (this + 4 * v6 + 20);
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13)
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        return 0;
      }
    }

    v4 += __clz(__rbit32(v12)) | (32 * v10);
  }

  else
  {
    v4 += (v5 & 0xFFFFFFFFFFFFFFE0) + __clz(__rbit32(v7));
  }

LABEL_18:
  *a2 = v4;
  return 1;
}

uint64_t degas::Bitset::firstBit(degas::Bitset *this, unint64_t *a2)
{
  v2 = *(this + 1);
  if (v2 > 0xFFFFFFFFFFFFFBFFLL || (*(this + 16) & 1) == 0)
  {
    return degas::Bitset::nextBit(this, a2, v2);
  }

  *a2 = v2;
  return 1;
}

uint64_t degas::Bitset::lastBit(degas::Bitset *this, unint64_t *a2)
{
  v2 = (this + 140);
  v3 = 31;
  do
  {
    v5 = *v2--;
    v4 = v5;
    if (v5)
    {
      v6 = 32 * v3;
      goto LABEL_7;
    }

    --v3;
  }

  while (v3);
  v4 = *(this + 4);
  if (v4)
  {
    v6 = 0;
LABEL_7:
    *a2 = (v6 | __clz(v4) ^ 0x1F) + *(this + 1);
    return 1;
  }

  return 0;
}

uint64_t __Block_byref_object_copy__3362(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double degas::StatementPerformanceEntry::reset(degas::StatementPerformanceEntry *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return result;
}

double degas::StatementPerformanceEntry::addStep(degas::StatementPerformanceEntry *this, double a2, unsigned int a3)
{
  *(this + 2) += a3;
  result = *(this + 6) + a2;
  *(this + 6) = result;
  return result;
}

int32x2_t degas::StatementPerformanceEntry::addIO(int32x2_t *this, int32x2_t *a2)
{
  result = vadd_s32(this[7], *a2);
  this[7] = result;
  this[8].i32[0] += a2[1].i32[0];
  return result;
}

uint64_t degas::StatementPerformanceLog::StatementPerformanceLog(uint64_t a1, __int128 *a2)
{
  *a1 = -1;
  v3 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  return a1;
}

{
  *a1 = -1;
  v3 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  return a1;
}

uint64_t degas::StatementPerformanceLog::appendEntry(degas::StatementPerformanceLog *this, const degas::StatementPerformanceEntry *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v4 = MEMORY[0x259C43DD0](&v29, *a2);
  LOBYTE(__p[0]) = 44;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __p, 1);
  v6 = MEMORY[0x259C43DF0](v5, *(a2 + 1));
  LOBYTE(__p[0]) = 44;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, __p, 1);
  v8 = MEMORY[0x259C43DF0](v7, *(a2 + 2));
  LOBYTE(__p[0]) = 44;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, __p, 1);
  v10 = MEMORY[0x259C43DF0](v9, *(a2 + 3));
  LOBYTE(__p[0]) = 44;
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __p, 1);
  v12 = MEMORY[0x259C43DF0](v11, *(a2 + 4));
  LOBYTE(__p[0]) = 44;
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, __p, 1);
  v14 = MEMORY[0x259C43DF0](v13, *(a2 + 5));
  LOBYTE(__p[0]) = 44;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, __p, 1);
  v16 = MEMORY[0x259C43DB0](v15, *(a2 + 6));
  LOBYTE(__p[0]) = 44;
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, __p, 1);
  v18 = MEMORY[0x259C43DC0](v17, *(a2 + 14));
  LOBYTE(__p[0]) = 44;
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, __p, 1);
  v20 = MEMORY[0x259C43DC0](v19, *(a2 + 15));
  LOBYTE(__p[0]) = 44;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, __p, 1);
  v22 = MEMORY[0x259C43DC0](v21, *(a2 + 16));
  LOBYTE(__p[0]) = 44;
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, __p, 1);
  v24 = MEMORY[0x259C43DC0](v23, (*(a2 + 15) + *(a2 + 14) + *(a2 + 16)));
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  degas::LocalLogFile::writeText(this, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = *MEMORY[0x277D82828];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v33);
}

void sub_255919BC8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x259C43E80](va);
  _Unwind_Resume(a1);
}

unint64_t degas::StatementPerformanceLog::rowCountForTable(degas::StatementPerformanceLog *this, const degas::Table *a2)
{
  v4 = this + 40;
  v3 = *(this + 5);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 48);
  v6 = this + 40;
  do
  {
    v7 = v3[32];
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != v4 && v5 >= v6[32])
  {
    return *(v6 + 5);
  }

LABEL_9:
  v17 = 0;
  v10 = degas::Table::rowCount(a2, &v17);
  v11 = v17;
  if (!v10)
  {
    v12 = *(a2 + 48);
    v13 = *v4;
    if (!*v4)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (v12 >= v15)
        {
          break;
        }

        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_16;
        }
      }

      if (v15 >= v12)
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    v14[5] = v17;
  }

  return v11;
}

void sub_25591A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25591B6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25591B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25591D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25591D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

degas::DatabaseMap *degas::DatabaseMap::DatabaseMap(degas::DatabaseMap *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 6) = 0;
  *(this + 4) = CFDateFormatterCreate(*MEMORY[0x277CBECE8], 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  return this;
}

void std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,degas::DatabaseMap::DatabaseMapEntry>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,degas::DatabaseMap::DatabaseMapEntry>,void,0>(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_BYTE *degas::DatabaseMap::openModeName@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 2)
  {
    v2 = "none";
  }

  else
  {
    v2 = off_2797FF020[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t degas::DatabaseMap::DatabaseMapEntry::DatabaseMapEntry(uint64_t a1, __int128 *a2, int a3, uint64_t a4, int a5)
{
  *a1 = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v8;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (a5)
  {
    degas::callstackFrames(a1 + 40);
  }

  *(a1 + 64) = CFAbsoluteTimeGetCurrent();
  return a1;
}

void sub_25591E600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void degas::logStackFrames(__int128 **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v2 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_255870000, v2, OS_LOG_TYPE_INFO, "[", &buf, 2u);
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        buf.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&buf.__r_.__value_.__l.__data_ = v5;
      }

      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v6 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v11 = 136315138;
        v12 = p_buf;
        _os_log_impl(&dword_255870000, v6, OS_LOG_TYPE_INFO, "%s", v11, 0xCu);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v8 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_255870000, v8, OS_LOG_TYPE_INFO, "]", &buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void degas::timestampString(CFDateFormatterRef formatter@<X0>, CFAbsoluteTime a2@<D0>, _BYTE *a3@<X8>)
{
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x277CBECE8], formatter, a2);
  CStringPtr = CFStringGetCStringPtr(StringWithAbsoluteTime, 0x8000100u);
  std::string::basic_string[abi:ne200100]<0>(a3, CStringPtr);
  CFRelease(StringWithAbsoluteTime);
}

void sub_25591E8B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void degas::DatabaseMap::clear(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6);
  std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::destroy(*&this[2]._os_unfair_lock_opaque);
  *&this->_os_unfair_lock_opaque = this + 2;
  *&this[4]._os_unfair_lock_opaque = 0;
  *&this[2]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 6);
}

void degas::DatabaseMap::registerDatabase(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v48[5] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 24));
  v8 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v8 != v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = 0;
    v29 = (a4 - 1);
    do
    {
      v13 = v12;
      v14 = *(v10 + 14);
      v15 = a4 == 2 && v14 == 2;
      v16 = !v15;
      if (a4 == 3 || (v14 != 3 ? (v17 = v16 == 0) : (v17 = 1), v17 || v10[11] == a3))
      {
        v30 = 0;
        *&v31.__r_.__value_.__l.__data_ = 0uLL;
        degas::callstackFrames(&v30);
        degas::timestampString(*(a1 + 32), *(v10 + 15), __p);
        if (degas::DegasLoggingConnection(void)::onceToken != -1)
        {
          dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
        }

        v18 = degas::DegasLoggingConnection(void)::log;
        if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
        {
          if (*(a2 + 23) >= 0)
          {
            v21 = a2;
          }

          else
          {
            v21 = *a2;
          }

          v28 = v21;
          v22 = "none";
          if (v29 <= 2)
          {
            v22 = off_2797FF020[v29];
          }

          std::string::basic_string[abi:ne200100]<0>(v40, v22);
          if (v41 >= 0)
          {
            v23 = v40;
          }

          else
          {
            v23 = v40[0];
          }

          v24 = *(v10 + 14) - 1;
          v25 = "none";
          if (v24 <= 2)
          {
            v25 = off_2797FF020[v24];
          }

          std::string::basic_string[abi:ne200100]<0>(v38, v25);
          v26 = v38;
          if (v39 < 0)
          {
            v26 = v38[0];
          }

          v27 = __p;
          if (v43 < 0)
          {
            v27 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
          *(buf.__r_.__value_.__r.__words + 4) = v28;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
          v45 = v26;
          LOWORD(v46.__r_.__value_.__l.__data_) = 2080;
          *(v46.__r_.__value_.__r.__words + 2) = v27;
          _os_log_error_impl(&dword_255870000, v18, OS_LOG_TYPE_ERROR, "second open attempt on database at path %s with incompatible mode %s\nprevious mode %s, timestamp:%s stacks with previous first:", &buf, 0x2Au);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }

          if (v41 < 0)
          {
            operator delete(v40[0]);
          }
        }

        memset(v37, 0, sizeof(v37));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v37, v10[12], v10[13], 0xAAAAAAAAAAAAAAABLL * ((v10[13] - v10[12]) >> 3));
        degas::logStackFrames(v37);
        buf.__r_.__value_.__r.__words[0] = v37;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
        memset(v36, 0, sizeof(v36));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v36, v30, v31.__r_.__value_.__l.__data_, 0xAAAAAAAAAAAAAAABLL * ((v31.__r_.__value_.__r.__words[0] - v30) >> 3));
        degas::logStackFrames(v36);
        buf.__r_.__value_.__r.__words[0] = v36;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        buf.__r_.__value_.__r.__words[0] = &v30;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
      }

      v19 = v10[1];
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
          v20 = v10[2];
          v15 = *v20 == v10;
          v10 = v20;
        }

        while (!v15);
      }

      v12 = v13 + 1;
      v10 = v20;
    }

    while (v20 != v11);
  }

  degas::DatabaseMap::DatabaseMapEntry::DatabaseMapEntry(&v30, a2, a4, a3, sDatabaseOpenStackCapture);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a2, *(a2 + 8));
  }

  else
  {
    buf = *a2;
  }

  LODWORD(v45) = v30;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v31;
  }

  v47 = v32;
  memset(v48, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v48, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3));
  v48[3] = v35;
  operator new();
}

void sub_25591EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 185) < 0)
  {
    operator delete(*(v44 - 208));
  }

  degas::DatabaseMap::DatabaseMapEntry::~DatabaseMapEntry(&a15);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
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

  while (std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>::operator()[abi:ne200100](a2, v3 + 4))
  {
    v2 = v3;
LABEL_23:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v8 = *(v3 + 55);
  if (v8 >= 0)
  {
    v9 = *(v3 + 55);
  }

  else
  {
    v9 = v3[5];
  }

  if (v8 >= 0)
  {
    v10 = v3 + 4;
  }

  else
  {
    v10 = v3[4];
  }

  if (v6 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = memcmp(v10, v7, v11);
  v13 = v9 < v6;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    ++v3;
    goto LABEL_23;
  }

  v16 = *v3;
  v14 = v3;
  if (*v3)
  {
    v14 = v3;
    do
    {
      v17 = *(v16 + 55);
      if (v17 >= 0)
      {
        v18 = *(v16 + 55);
      }

      else
      {
        v18 = v16[5];
      }

      if (v17 >= 0)
      {
        v19 = v16 + 4;
      }

      else
      {
        v19 = v16[4];
      }

      if (v6 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v6;
      }

      v21 = memcmp(v19, v7, v20);
      v22 = v18 < v6;
      if (v21)
      {
        v22 = v21 < 0;
      }

      v23 = !v22;
      v24 = v22;
      if (v23)
      {
        v14 = v16;
      }

      v16 = v16[v24];
    }

    while (v16);
  }

  for (i = v3[1]; i; i = *(i + v27))
  {
    if (std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>::operator()[abi:ne200100](a2, (i + 32)))
    {
      v27 = 0;
    }

    else
    {
      v27 = 8;
    }
  }

  return v14;
}

uint64_t std::pair<std::string,degas::DatabaseMap::DatabaseMapEntry>::~pair(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void degas::DatabaseMap::DatabaseMapEntry::~DatabaseMapEntry(void **this)
{
  v2 = this + 5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void degas::DatabaseMap::deregisterDatabase(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 24));
  v8 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v8 != v9)
  {
    v12 = v8;
    while (v12[11] != a3 || *(v12 + 14) != a4)
    {
      v13 = v12[1];
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
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
      if (v14 == v9)
      {
        goto LABEL_28;
      }
    }

    v16 = v12[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      v18 = v12;
      do
      {
        v17 = v18[2];
        v15 = *v17 == v18;
        v18 = v17;
      }

      while (!v15);
    }

    if (*a1 == v12)
    {
      *a1 = v17;
    }

    v19 = *(a1 + 8);
    --*(a1 + 16);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v19, v12);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,degas::DatabaseMap::DatabaseMapEntry>,void,0>((v12 + 4));
    operator delete(v12);
    goto LABEL_28;
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v10 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *__p = 136315138;
    *&__p[4] = v11;
    _os_log_fault_impl(&dword_255870000, v10, OS_LOG_TYPE_FAULT, "double deregister of a database at path %s", __p, 0xCu);
LABEL_28:
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }
  }

  v20 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 2)
    {
      v21 = "none";
    }

    else
    {
      v21 = off_2797FF020[a4 - 1];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v21);
    if (v26 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = *__p;
    }

    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    *buf = 136315394;
    v28 = v22;
    v29 = 2080;
    v30 = v23;
    _os_log_impl(&dword_255870000, v20, OS_LOG_TYPE_INFO, "released database with mode %s at path %s", buf, 0x16u);
    if (v26 < 0)
    {
      operator delete(*__p);
    }
  }

  os_unfair_lock_unlock((a1 + 24));
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t degas::DatabaseMap::changeMode(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(a1 + 6);
  v10 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v10 == v11)
  {
    goto LABEL_28;
  }

  v12 = 1;
  v13 = v11;
  do
  {
    v14 = *(v10 + 14);
    if (v14 == a4)
    {
      v15 = v10;
    }

    else
    {
      v15 = v13;
    }

    v16 = a5 == 2 && v14 == 2;
    v17 = !v16;
    v18 = v17 & v12;
    if (v14 == 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    if (a5 == 3)
    {
      v19 = 0;
    }

    if (v10[11] == a3)
    {
      v13 = v15;
    }

    else
    {
      v12 = v19;
    }

    v20 = v10[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v10[2];
        v16 = *v21 == v10;
        v10 = v21;
      }

      while (!v16);
    }

    v10 = v21;
  }

  while (v21 != v11);
  if (((v13 != v11) & v12) == 0)
  {
LABEL_28:
    v22 = 0;
  }

  else
  {
    *(v13 + 14) = a5;
    v22 = 1;
  }

  os_unfair_lock_unlock(a1 + 6);
  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v23 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 2)
    {
      v24 = "none";
    }

    else
    {
      v24 = off_2797FF020[a4 - 1];
    }

    v25 = v34;
    std::string::basic_string[abi:ne200100]<0>(v34, v24);
    if (v35 < 0)
    {
      v25 = v34[0];
    }

    if ((a5 - 1) > 2)
    {
      v26 = "none";
    }

    else
    {
      v26 = off_2797FF020[a5 - 1];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v26);
    v27 = "failed to change";
    if (v22)
    {
      v27 = "changed";
    }

    if (v33 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    *buf = 136315906;
    v37 = v27;
    v38 = 2080;
    v39 = v25;
    v40 = 2080;
    v41 = v28;
    v42 = 2080;
    v43 = v29;
    _os_log_impl(&dword_255870000, v23, OS_LOG_TYPE_INFO, "%s mode for database from %s to %s at path %s", buf, 0x2Au);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_25591F82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void degas::DatabaseMap::iterateDatabasesForPath(os_unfair_lock_s *a1, const void **a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 6);
  v6 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v6 != v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if (v8[11])
      {
        (*(a3 + 16))(a3);
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  os_unfair_lock_unlock(a1 + 6);
}

void *degas::nullStatementPtr(degas *this)
{
  {
    __cxa_atexit(std::shared_ptr<degas::Statement>::~shared_ptr[abi:ne200100], &degas::nullStatementPtr(void)::nullPtr, &dword_255870000);
  }

  return &degas::nullStatementPtr(void)::nullPtr;
}

uint64_t std::shared_ptr<degas::Statement>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t degas::Statement::enableQueryExplain(uint64_t this)
{
  degas::sExplainQuery = this;
  if (this)
  {
    degas::sExplainQueryPlan = 0;
  }

  return this;
}

uint64_t degas::Statement::enableQueryPlanExplain(uint64_t this)
{
  degas::sExplainQueryPlan = this;
  if (this)
  {
    degas::sExplainQuery = 0;
  }

  return this;
}

sqlite3_stmt **degas::Statement::Statement(sqlite3_stmt **ppStmt, sqlite3 *db, uint64_t a3)
{
  v55[19] = *MEMORY[0x277D85DE8];
  *(ppStmt + 5) = 0;
  *ppStmt = 0;
  ppStmt[1] = db;
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
    v8 = *(a3 + 8);
  }

  v9 = sqlite3_prepare_v2(db, v7, v8, ppStmt, 0);
  if (v9)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v10 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v34 = a3;
      }

      else
      {
        v34 = *a3;
      }

      *v50 = 136315650;
      *&v50[4] = v34;
      *&v50[12] = 1024;
      *&v50[14] = v9;
      v51 = 2080;
      v52 = sqlite3_errmsg(db);
      _os_log_fault_impl(&dword_255870000, v10, OS_LOG_TYPE_FAULT, "Failed to prepare statement for query: <%s> rc=%d err=<%s>", v50, 0x1Cu);
    }
  }

  *(ppStmt + 4) = v9;
  if ((degas::sExplainQueryPlan & 1) != 0 || degas::sExplainQuery == 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v50);
    if (degas::sExplainQueryPlan)
    {
      v11 = "explain query plan ";
    }

    else
    {
      v11 = "explain ";
    }

    if (degas::sExplainQueryPlan)
    {
      v12 = 19;
    }

    else
    {
      v12 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v11, v12);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v14, v15);
    std::stringbuf::str();
    ppStmta = 0;
    if ((v45 & 0x80u) == 0)
    {
      v16 = &v43;
    }

    else
    {
      v16 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v17 = v45;
    }

    else
    {
      v17 = v44;
    }

    sqlite3_prepare_v2(db, v16, v17, &ppStmta, 0);
    v18 = sqlite3_step(ppStmta);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
    for (i = v18; i == 100; i = sqlite3_step(ppStmta))
    {
      v20 = sqlite3_column_count(ppStmta);
      if (v20 >= 1)
      {
        for (j = 0; j != v20; ++j)
        {
          v22 = sqlite3_column_text(ppStmta, j);
          v23 = v22;
          if (v22)
          {
            v24 = strlen(v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v23, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, " ", 1);
          }
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n", 1);
    }

    if (v18 == 100)
    {
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v25 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
      {
        v26 = *(a3 + 23);
        v27 = *a3;
        std::stringbuf::str();
        v28 = v26 >= 0 ? a3 : v27;
        v29 = v36 >= 0 ? &__p : __p;
        *buf = 136315394;
        v47 = v28;
        v48 = 2080;
        v49 = v29;
        _os_log_impl(&dword_255870000, v25, OS_LOG_TYPE_INFO, "query plan for: %s\n%s", buf, 0x16u);
        if (v36 < 0)
        {
          operator delete(__p);
        }
      }
    }

    sqlite3_finalize(ppStmta);
    v37 = *MEMORY[0x277D82828];
    v30 = v37;
    v31 = *(MEMORY[0x277D82828] + 24);
    *(&v37 + *(v37 - 24)) = v31;
    v38 = MEMORY[0x277D82878] + 16;
    if (v40 < 0)
    {
      operator delete(v39[7].__locale_);
    }

    v38 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v39);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](&v41);
    if (v45 < 0)
    {
      operator delete(v43);
    }

    *v50 = v30;
    *&v50[*(v30 - 24)] = v31;
    *&v50[8] = MEMORY[0x277D82878] + 16;
    if (v54 < 0)
    {
      operator delete(v53);
    }

    *&v50[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v50[16]);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](v55);
  }

  v32 = *MEMORY[0x277D85DE8];
  return ppStmt;
}

void sub_25591FF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  std::ostringstream::~ostringstream(&a12);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a56);
  _Unwind_Resume(a1);
}

void degas::Statement::~Statement(degas::Statement *this)
{
  if (*(this + 4) == 100)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v2 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_255870000, v2, OS_LOG_TYPE_DEBUG, "deleting statement with possible open cursor", v3, 2u);
    }
  }

  if (*this)
  {
    sqlite3_finalize(*this);
    *this = 0;
  }
}

uint64_t degas::Statement::prepareForUse(degas::Statement *this)
{
  if (*(this + 4) == 100)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v2 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_255870000, v2, OS_LOG_TYPE_DEBUG, "resetting statement with possible open cursor", v8, 2u);
    }
  }

  v3 = sqlite3_reset(*this);
  if (v3 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v3 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v3)
  {
    v6 = 0;
  }

  if (v3 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t degas::Statement::bindInteger(sqlite3_stmt **this, int a2, sqlite3_int64 a3)
{
  v4 = sqlite3_bind_int64(*this, a2, a3);
  *(this + 4) = v4;
  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::Statement::bindDouble(sqlite3_stmt **this, int a2, double a3)
{
  v4 = sqlite3_bind_double(*this, a2, a3);
  *(this + 4) = v4;
  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::Statement::bindString(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(a3 + 23);
  v6 = *(a3 + 2);
  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    a3 = *a3;
    v7 = v6;
  }

  v8 = sqlite3_bind_text(v4, a2, a3, v7, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 16) = v8;
  result = 3;
  if (v8 > 99)
  {
    if (v8 == 100)
    {
      return 1;
    }

    else if (v8 == 101)
    {
      return 2;
    }
  }

  else if (v8)
  {
    if (v8 == 17)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t degas::Statement::bindBitmap(degas::Statement *this, const Bitmap *a2, const degas::Bitmap *a3)
{
  v3 = a2;
  degas::LiteralBitmap::makeLiteralBitmap(a3, a2);
  v6 = v5;
  v7 = degas::Statement::bindLiteralBitmap(this, v3, v5);
  MEMORY[0x259C43EB0](v6, 0x1000C4000313F17);
  return v7;
}

uint64_t degas::Statement::bindLiteralBitmap(uint64_t a1, int a2, _DWORD *a3)
{
  v4 = sqlite3_bind_blob(*a1, a2, a3, (144 * a3[1]) | 8, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 16) = v4;
  result = 3;
  if (v4 > 99)
  {
    if (v4 == 100)
    {
      return 1;
    }

    else if (v4 == 101)
    {
      return 2;
    }
  }

  else if (v4)
  {
    if (v4 == 17)
    {
      return 4;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t degas::Statement::bindBitmapPointer(sqlite3_stmt **this, int a2, Bitmap *a3)
{
  result = sqlite3_bind_pointer(*this, a2, a3, degas::kBitmapPointerTypeName, 0);
  *(this + 4) = result;
  if (result > 99)
  {
    if (result == 100)
    {
      return 1;
    }

    v5 = result == 101;
    v6 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = result == 17;
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 3;
  }
}

uint64_t degas::Statement::bindArrayPointer(sqlite3_stmt **this, int a2, void *a3)
{
  result = sqlite3_bind_pointer(*this, a2, a3, degas::kArrayPointerTypeName, 0);
  *(this + 4) = result;
  if (result > 99)
  {
    if (result == 100)
    {
      return 1;
    }

    v5 = result == 101;
    v6 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = result == 17;
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 3;
  }
}

uint64_t degas::Statement::bindNull(sqlite3_stmt **this, int a2)
{
  v3 = sqlite3_bind_null(*this, a2);
  *(this + 4) = v3;
  if (v3 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v3 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v3)
  {
    v6 = 0;
  }

  if (v3 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t degas::Statement::next(sqlite3_stmt **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step(*this);
  *(this + 4) = v2;
  if ((v2 - 102) <= 0xFFFFFFFD)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v3 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v2;
      _os_log_error_impl(&dword_255870000, v3, OS_LOG_TYPE_ERROR, "statement step error: %d", v9, 8u);
    }
  }

  if (v2 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v2 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v2)
  {
    v6 = 0;
  }

  if (v2 <= 99)
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t degas::Statement::finishStatementCursor(degas::Statement *this)
{
  v1 = *(this + 4);
  if (v1 > 99)
  {
    if (v1 == 100)
    {
      v5 = sqlite3_reset(*this);
      *(this + 4) = 101;
      if (v5 == 101)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (v5 == 100)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      if (v5 == 17)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }

      if (!v5)
      {
        v8 = 0;
      }

      if (v5 <= 99)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    else if (v1 == 101)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (v1 == 17)
    {
      v2 = 4;
    }

    else
    {
      v2 = 3;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t degas::Statement::update(sqlite3_stmt **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step(*this);
  *(this + 4) = v2;
  if ((v2 - 102) <= 0xFFFFFFFD)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v3 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v2;
      _os_log_error_impl(&dword_255870000, v3, OS_LOG_TYPE_ERROR, "statement update error: %d", v9, 8u);
    }
  }

  if (v2 == 101)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v4 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v4)
  {
    v6 = 0;
  }

  if (v4 <= 99)
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double degas::Statement::stringColumnValue(sqlite3_stmt **a1, int a2, uint64_t a3)
{
  v4 = sqlite3_column_text(*a1, a2);
  if (v4)
  {
    v6 = v4;
    v7 = strlen(v4);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    result = *&__dst;
    *a3 = __dst;
    *(a3 + 16) = v10;
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void degas::Statement::bitmapColumnValue(sqlite3_stmt **this, int a2, degas::Bitmap *a3)
{
  v4 = degas::Statement::literalBitmapColumnValue(this, a2);
  if (v4)
  {
    degas::Bitmap::Bitmap(v7, v4);
    degas::Bitmap::operator=(a3, v7);
    v9 = &v8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v5 = *(a3 + 2);
    for (i = *(a3 + 3); i != v5; i -= 16)
    {
      degas::BitsetPtr::releaseBitset((i - 16));
      *(i - 8) = 0;
    }

    *(a3 + 3) = v5;
  }
}

void sub_255920998(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

unsigned int *degas::Statement::literalBitmapColumnValue(sqlite3_stmt **this, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_column_blob(*this, a2);
  v5 = sqlite3_column_bytes(*this, a2);
  if (((144 * v4[1]) | 8) != v5)
  {
    v6 = v5;
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v7 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10 = (144 * v4[1]) | 8;
      v11 = 134218240;
      v12 = v6;
      v13 = 2048;
      v14 = v10;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "bad literal bitmap read, column has %lu bytes, bitmap thinks it needs %lu", &v11, 0x16u);
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t degas::Statement::measureIO(sqlite3 **this, degas::IOAccountingEntry *a2)
{
  pHiwtr = 0;
  v4 = sqlite3_db_status(this[1], 8, a2 + 1, &pHiwtr, 0);
  if (!v4)
  {
    v4 = sqlite3_db_status(this[1], 7, a2, &pHiwtr, 0);
    if (!v4)
    {
      v4 = sqlite3_db_status(this[1], 12, a2 + 2, &pHiwtr, 0);
    }
  }

  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void *degas::Cursor::Cursor(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 degas::Cursor::Cursor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void degas::Cursor::~Cursor(degas::Statement **this)
{
  degas::Statement::finishStatementCursor(*this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t degas::Cursor::columnDataType(sqlite3_stmt ***this, int a2)
{
  LODWORD(result) = sqlite3_column_type(**this, a2);
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t degas::EdgeTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = degas::EdgeTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = sqlite3_errmsg(this[4]);
    v9 = 136315138;
    v10 = v8;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge delete failed: %s", &v9, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

degas::Statement **degas::EdgeTable::deleteStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_5;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable15deleteStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "delete from ", 12);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where identifier=?1", 20);
  operator new();
}

void sub_255921000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::EdgeTable::createTable(degas::EdgeTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "create table ", 13);
  v2 = *(this + 1);
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = this + 8;
  }

  else
  {
    v4 = *(this + 1);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 31);
  }

  else
  {
    v5 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, " (identifier integer primary key autoincrement, labels blob, sourceNodeId integer, targetNodeId integer)", 104);
  v6 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v6, &__p);
  if (SHIBYTE(v37[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v7 = degas::Statement::update(ppStmt);
  v8 = MEMORY[0x277D82828];
  if (!v7)
  {
    if (*(this + 49) == 1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "create index ", 13);
      v9 = *(this + 31);
      if (v9 >= 0)
      {
        v10 = this + 8;
      }

      else
      {
        v10 = *(this + 1);
      }

      if (v9 >= 0)
      {
        v11 = *(this + 31);
      }

      else
      {
        v11 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "_source_idx on ", 15);
      v12 = *(this + 31);
      if (v12 >= 0)
      {
        v13 = this + 8;
      }

      else
      {
        v13 = *(this + 1);
      }

      if (v12 >= 0)
      {
        v14 = *(this + 31);
      }

      else
      {
        v14 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v13, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, " (sourceNodeId)", 15);
      v15 = *(this + 4);
      std::stringbuf::str();
      degas::Statement::Statement(v34, v15, &v29);
      if (SHIBYTE(v31[0].__locale_) < 0)
      {
        operator delete(v29);
      }

      v7 = degas::Statement::update(v34);
      if (v7)
      {
        v16 = *v8;
        v17 = *(v8 + 24);
      }

      else
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "create index ", 13);
        v18 = *(this + 31);
        if (v18 >= 0)
        {
          v19 = this + 8;
        }

        else
        {
          v19 = *(this + 1);
        }

        if (v18 >= 0)
        {
          v20 = *(this + 31);
        }

        else
        {
          v20 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v19, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "_target_idx on ", 15);
        v21 = *(this + 31);
        if (v21 >= 0)
        {
          v22 = this + 8;
        }

        else
        {
          v22 = *(this + 1);
        }

        if (v21 >= 0)
        {
          v23 = *(this + 31);
        }

        else
        {
          v23 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v22, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, " (targetNodeId)", 15);
        v24 = *(this + 4);
        std::stringbuf::str();
        degas::Statement::Statement(v28, v24, &v26);
        if (v27 < 0)
        {
          operator delete(v26);
        }

        v7 = degas::Statement::update(v28);
        degas::Statement::~Statement(v28);
        v16 = *v8;
        v29 = *v8;
        v17 = *(v8 + 24);
        *(&v29 + *(v29 - 3)) = v17;
        v30 = MEMORY[0x277D82878] + 16;
        if (v32 < 0)
        {
          operator delete(v31[7].__locale_);
        }

        v30 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v31);
        std::ostream::~ostream();
        MEMORY[0x259C43E80](&v33);
      }

      degas::Statement::~Statement(v34);
      __p = v16;
      *(&__p + *(v16 - 3)) = v17;
      v36 = MEMORY[0x277D82878] + 16;
      if (v38 < 0)
      {
        operator delete(v37[7].__locale_);
      }

      v36 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v37);
      std::ostream::~ostream();
      MEMORY[0x259C43E80](&v39);
    }

    else
    {
      v7 = 0;
    }
  }

  degas::Statement::~Statement(ppStmt);
  v41 = *v8;
  *(&v41 + *(v41 - 3)) = *(v8 + 24);
  v42 = MEMORY[0x277D82878] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v45);
  return v7;
}

void sub_2559215E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, void *a52)
{
  degas::Statement::~Statement(&a13);
  std::ostringstream::~ostringstream(&a16);
  degas::Statement::~Statement(&a49);
  std::ostringstream::~ostringstream(&a52);
  degas::Statement::~Statement(&STACK[0x260]);
  std::ostringstream::~ostringstream(&STACK[0x278]);
  _Unwind_Resume(a1);
}

void degas::EdgeTable::~EdgeTable(degas::EdgeTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::EdgeTable::EdgeTable(void *a1, uint64_t a2, __int128 *a3, char a4, char a5, uint64_t a6)
{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9B68;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9B68;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

degas::Statement **degas::EdgeTable::insertStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_3707;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable15insertStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "insert into ", 12);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " (identifier, labels, sourceNodeId, targetNodeId) values(?1, ?2, ?3, ?4)", 72);
  operator new();
}

void sub_255921AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByIdentifierStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_3710;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where identifier=?1", 20);
  operator new();
}

void sub_255921DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByBitmapStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_3712;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " e, identifierBitmap(?) b where e.identifier = b.value", 54);
  operator new();
}

void sub_255922078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByLabelStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable20readByLabelStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_3715;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable20readByLabelStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapContainsIdentifier(labels, ?1)", 43);
  operator new();
}

void sub_255922340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAllLabelsStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x802;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable24readByAllLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_14_3717;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable24readByAllLabelsStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapContainsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_255922608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAllLabelsAndIdentifiersStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x803;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_16_3719;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " e, identifierBitmap(?1) b where e.identifier = b.value and bitmapContainsBitmap(e.labels, ?2)", 94);
  operator new();
}

void sub_2559228D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAnyLabelsStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x804;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable24readByAnyLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_18_3721;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable24readByAnyLabelsStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapOverlapsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_255922B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAnyLabelsAndIdentifiersStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x805;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_3723;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " e, identifierBitmap(?1) b where e.identifier = b.value and bitmapOverlapsBitmap(e.labels, ?2)", 94);
  operator new();
}

void sub_255922E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readAllStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_22_3725;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " order by identifier", 20);
  operator new();
}

void sub_255923128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::EdgeTable::insert(sqlite3 **this, sqlite3_int64 *a2, const degas::Bitmap *a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v18 = *MEMORY[0x277D85DE8];
  inserted = degas::EdgeTable::insertStatement(this);
  v11 = *inserted;
  if (*a2)
  {
    degas::Statement::bindInteger(v11, 1, *a2);
  }

  else
  {
    degas::Statement::bindNull(v11, 1);
  }

  degas::Statement::bindBitmap(*inserted, 2, a3);
  degas::Statement::bindInteger(*inserted, 3, a4);
  degas::Statement::bindInteger(*inserted, 4, a5);
  v12 = degas::Statement::update(*inserted);
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(this[4]);
      v16 = 136315138;
      v17 = v13;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge insert failed: %s", &v16, 0xCu);
    }
  }

  else if (!*a2)
  {
    *a2 = sqlite3_last_insert_rowid(this[4]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByIdentifier(degas::EdgeTable *this, sqlite3_int64 a2)
{
  v3 = degas::EdgeTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByBitmap(degas::EdgeTable *this, Bitmap *a2)
{
  v3 = degas::EdgeTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByLabel(degas::EdgeTable *this, sqlite3_int64 a2)
{
  v3 = degas::EdgeTable::readByLabelStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::Statement **degas::EdgeTable::prepareStatementToReadByAllLabels(degas::EdgeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::EdgeTable::readByAllLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByAllLabelsAndIdentifiers(degas::EdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::EdgeTable::readByAllLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

degas::Statement **degas::EdgeTable::prepareStatementToReadByAnyLabels(degas::EdgeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::EdgeTable::readByAnyLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(degas::EdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::EdgeTable::readByAnyLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

void *degas::EdgeCursor::EdgeCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void degas::EdgeCursor::setForSelectAll(degas::EdgeCursor *this, const degas::EdgeTable *a2)
{
  AllStatement = degas::EdgeTable::readAllStatement(a2);
  v5 = *AllStatement;
  v4 = AllStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void degas::EdgeCursor::setForIdentifier(degas::EdgeCursor *this, sqlite3_int64 a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForIdentifiers(degas::EdgeCursor *this, Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForLabel(degas::EdgeCursor *this, sqlite3_int64 a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByLabelStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAllLabels(degas::EdgeCursor *this, const degas::Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByAllLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAllLabelsAndIdentifiers(degas::EdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::EdgeTable *a4)
{
  v5 = degas::EdgeTable::prepareStatementToReadByAllLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAnyLabels(degas::EdgeCursor *this, const degas::Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByAnyLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAnyLabelsAndIdentifiers(degas::EdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::EdgeTable *a4)
{
  v5 = degas::EdgeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_255926620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, id a16)
{
  objc_sync_exit(obj);
  objc_sync_exit(a16);
  _Unwind_Resume(a1);
}

void *degas::Migration::Migration(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::Migration::migrateAttributeSchema(degas::Migration *this)
{
  AllStatement = degas::AttributeTable::readAllStatement((*this + 304));
  v4 = AllStatement[1];
  v38[0] = *AllStatement;
  v38[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  do
  {
    v5 = degas::Statement::next(v38[0]);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v1 = 0;
      }

      else
      {
        v1 = v5;
      }

      break;
    }

    v6 = sqlite3_column_int64(*v38[0], 0);
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    degas::Statement::stringColumnValue(v38[0], 1, v36);
    degas::AttributeInstanceTable::AttributeInstanceTable(v35, *(this + 1), v36, 0, 1, *this + 40);
    v7 = degas::AttributeInstanceTable::readAllStatement(v35);
    v8 = *(v7 + 1);
    v33 = *v7;
    v34 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    while (1)
    {
      v9 = degas::Statement::next(v33);
      v10 = v9;
      if (v9 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v33, 0);
      v12 = sqlite3_column_int64(*v33, 4);
      v13 = 1;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          __p = 0;
          v31 = 0;
          v32 = 0;
          degas::Statement::stringColumnValue(v33, 3, &__p);
          v13 = degas::Database::setNodeAttributeValue(*this, v11, v6, &__p);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_16;
        }

        if (v12 == 4)
        {
          v16 = sqlite3_column_int64(*v33, 1);
          v15 = degas::Database::setNodeAttributeValueUnsigned(*this, v11, v6, v16);
          goto LABEL_15;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v17 = sqlite3_column_int64(*v33, 1);
          v15 = degas::Database::setNodeAttributeValue(*this, v11, v6, v17);
          goto LABEL_15;
        }

        if (v12 == 2)
        {
          v14 = sqlite3_column_double(*v33, 2);
          v15 = degas::Database::setNodeAttributeValue(*this, v11, v6, v14);
LABEL_15:
          v13 = v15;
        }
      }

LABEL_16:
      v18 = v13;
      if (v13 >= 2)
      {
        goto LABEL_21;
      }
    }

    v13 = v9;
    v18 = v1;
LABEL_21:
    degas::Cursor::~Cursor(&v33);
    degas::AttributeInstanceTable::~AttributeInstanceTable(v35);
    if (v10 == 1)
    {
      v19 = 0;
      v1 = v18;
      goto LABEL_41;
    }

    degas::AttributeInstanceTable::AttributeInstanceTable(v35, *(this + 1), v36, 0, 2, *this + 40);
    v20 = degas::AttributeInstanceTable::readAllStatement(v35);
    v21 = *(v20 + 1);
    v33 = *v20;
    v34 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    while (2)
    {
      v22 = degas::Statement::next(v33);
      v19 = v22 != 1;
      if (v22 == 1)
      {
        v23 = sqlite3_column_int64(*v33, 0);
        v24 = sqlite3_column_int64(*v33, 4);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            __p = 0;
            v31 = 0;
            v32 = 0;
            degas::Statement::stringColumnValue(v33, 3, &__p);
            v13 = degas::Database::setEdgeAttributeValue(*this, v23, v6, &__p);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_36;
          }

          if (v24 != 4)
          {
            goto LABEL_36;
          }

          v27 = sqlite3_column_int64(*v33, 1);
          v26 = degas::Database::setEdgeAttributeValueUnsigned(*this, v23, v6, v27);
        }

        else
        {
          if (v24 != 1)
          {
            if (v24 == 2)
            {
              v25 = sqlite3_column_double(*v33, 2);
              v26 = degas::Database::setEdgeAttributeValue(*this, v23, v6, v25);
              goto LABEL_35;
            }

LABEL_36:
            if (v13 >= 2)
            {
              goto LABEL_40;
            }

            continue;
          }

          v28 = sqlite3_column_int64(*v33, 1);
          v26 = degas::Database::setEdgeAttributeValue(*this, v23, v6, v28);
        }

LABEL_35:
        v13 = v26;
        goto LABEL_36;
      }

      break;
    }

    v13 = v18;
LABEL_40:
    degas::Cursor::~Cursor(&v33);
    degas::AttributeInstanceTable::~AttributeInstanceTable(v35);
    v1 = v13;
LABEL_41:
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }
  }

  while (v19);
  degas::Cursor::~Cursor(v38);
  return v1;
}

void sub_25592799C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  if (*(v17 - 81) < 0)
  {
    operator delete(*(v17 - 104));
  }

  degas::Cursor::~Cursor((v17 - 80));
  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateBitmapSchema(sqlite3 **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *this;
  AllStatement = degas::LabelTable::readAllStatement((*this + 80));
  v5 = AllStatement[1];
  v25[0] = *AllStatement;
  v25[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = MEMORY[0x277D86220];
  while (degas::Statement::next(v25[0]) == 1)
  {
    v8 = sqlite3_column_int64(*v25[0], 0);
    v30[0] = sqlite3_column_blob(*v25[0], 2);
    *__p = 0u;
    memset(v34, 0, 25);
    if (v30[0] && (degas::Bitmap::replaceFromEncodedBuffer(__p, v30) & 1) == 0)
    {
      ppStmt[0] = v34;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
      v1 = 4;
LABEL_38:
      degas::Cursor::~Cursor(v25);
      goto LABEL_53;
    }

    *v35 = sqlite3_column_blob(*v25[0], 3);
    *ppStmt = 0u;
    memset(v32, 0, 25);
    if (*v35 && (degas::Bitmap::replaceFromEncodedBuffer(ppStmt, v35) & 1) == 0)
    {
      v9 = 0;
      v6 = 4;
      v1 = 4;
    }

    else
    {
      v6 = degas::LabelTable::update((v3 + 80), v8, __p, ppStmt);
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = sqlite3_errmsg(*(v3 + 14));
          *buf = 136315138;
          *&buf[4] = v10;
          _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "node update failed: %s", buf, 0xCu);
        }

        v9 = 0;
        v1 = v6;
      }

      else
      {
        v9 = 1;
      }
    }

    *buf = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    ppStmt[0] = v34;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
    if ((v9 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  degas::Cursor::~Cursor(v25);
  v11 = *this;
  degas::NodeCursor::NodeCursor(v30);
  degas::NodeCursor::setForSelectAll(v30, (v11 + 192));
  v12 = this[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "update Node set labels=?2, edgesIn=?3, edgesOut=?4 where identifier=?1");
  degas::Statement::Statement(buf, v12, __p);
  if (v34[7] < 0)
  {
    operator delete(__p[0]);
  }

  v13 = MEMORY[0x277D86220];
  while (1)
  {
    v14 = degas::Statement::next(v30[0]);
    v15 = v14 == 1;
    if (v14 != 1)
    {
      break;
    }

    v16 = sqlite3_column_int64(*v30[0], 0);
    v29 = sqlite3_column_blob(*v30[0], 1);
    *__p = 0u;
    memset(v34, 0, 25);
    if (v29 && (degas::Bitmap::replaceFromEncodedBuffer(__p, &v29) & 1) == 0)
    {
      ppStmt[0] = v34;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
      v6 = 4;
      v15 = 1;
      v1 = 4;
      break;
    }

    v28 = sqlite3_column_blob(*v30[0], 2);
    *ppStmt = 0u;
    memset(v32, 0, 25);
    if (v28 && (degas::Bitmap::replaceFromEncodedBuffer(ppStmt, &v28) & 1) == 0)
    {
      v17 = 0;
      v6 = 4;
      v1 = 4;
    }

    else
    {
      v27 = sqlite3_column_blob(*v30[0], 3);
      *v25 = 0u;
      memset(v26, 0, 25);
      if (v27 && (degas::Bitmap::replaceFromEncodedBuffer(v25, &v27) & 1) == 0)
      {
        v17 = 0;
        v6 = 4;
        v1 = 4;
      }

      else
      {
        degas::Statement::prepareForUse(buf);
        degas::Statement::bindInteger(buf, 1, v16);
        degas::Statement::bindBitmap(buf, 2, __p);
        degas::Statement::bindBitmap(buf, 3, ppStmt);
        degas::Statement::bindBitmap(buf, 4, v25);
        v6 = degas::Statement::update(buf);
        if (v6)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v18 = sqlite3_errmsg(*(v11 + 28));
            *v35 = 136315138;
            *&v35[4] = v18;
            _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "node update failed: %s", v35, 0xCu);
          }

          v17 = 0;
          v1 = v6;
        }

        else
        {
          v17 = 1;
        }
      }

      *v35 = v26;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v35);
    }

    v25[0] = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v25);
    ppStmt[0] = v34;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
    if ((v17 & 1) == 0)
    {
      v15 = 1;
      break;
    }
  }

  degas::Statement::~Statement(buf);
  degas::Cursor::~Cursor(v30);
  if (!v15)
  {
    v19 = *this;
    degas::EdgeCursor::EdgeCursor(v25);
    degas::EdgeCursor::setForSelectAll(v25, (v19 + 248));
    v20 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "update Edge set labels=?2 where identifier=?1");
    degas::Statement::Statement(ppStmt, v20, __p);
    if (v34[7] < 0)
    {
      operator delete(__p[0]);
    }

    while (degas::Statement::next(v25[0]) == 1)
    {
      v21 = sqlite3_column_int64(*v25[0], 0);
      v30[0] = sqlite3_column_blob(*v25[0], 1);
      *__p = 0u;
      memset(v34, 0, 25);
      if (v30[0] && (degas::Bitmap::replaceFromEncodedBuffer(__p, v30) & 1) == 0)
      {
        v6 = 4;
LABEL_51:
        *buf = v34;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
        break;
      }

      degas::Statement::prepareForUse(ppStmt);
      degas::Statement::bindInteger(ppStmt, 1, v21);
      degas::Statement::bindBitmap(ppStmt, 2, __p);
      v6 = degas::Statement::update(ppStmt);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v22 = sqlite3_errmsg(*(v19 + 35));
          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge update failed: %s", buf, 0xCu);
        }

        goto LABEL_51;
      }

      *buf = v34;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    degas::Statement::~Statement(ppStmt);
    degas::Cursor::~Cursor(v25);
    v1 = v6;
  }

LABEL_53:
  v23 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_255928030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v35 - 128) = v34;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v35 - 128));
  degas::Statement::~Statement(&a23);
  degas::Cursor::~Cursor(&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateWeights(degas::Migration *this)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v11, kgDefaultWeightPropertyName);
  v2 = *this;
  degas::AttributeCursor::AttributeCursor(v10, v11, (*this + 304));
  v3 = 0;
  while (degas::Statement::next(v10[0]) == 1)
  {
    v3 = sqlite3_column_int64(*v10[0], 0);
  }

  if (v3)
  {
LABEL_5:
    v4 = *this;
    std::string::basic_string[abi:ne200100]<0>(buf, "select identifier, weight from Node");
    degas::Database::cursorForAdhocStatement();
  }

  v5 = *this;
  if (*(*this + 32))
  {
    v6 = 8;
  }

  else
  {
    *buf = 0;
    v6 = degas::AttributeTable::insert((v5 + 304), buf, v11);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = sqlite3_errmsg(*(v2 + 336));
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "weight migration failed: %s", buf, 0xCu);
  }

  degas::Cursor::~Cursor(v10);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2559285CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, degas::Statement *a10, uint64_t a11, degas::Statement *a12, uint64_t a13, degas::Statement *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  degas::Statement::~Statement(&a29);
  degas::Statement::~Statement((v34 - 80));
  degas::Cursor::~Cursor(&a10);
  degas::Cursor::~Cursor(&a12);
  degas::Cursor::~Cursor(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateEdgeIndex(degas::Migration *this)
{
  v2 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "create index edge_source_idx on edge (sourceNodeId)");
  degas::Statement::Statement(ppStmt, v2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = degas::Statement::update(ppStmt);
  if (!v3)
  {
    v4 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(v6, "create index edge_target_idx on edge (targetNodeId)");
    degas::Statement::Statement(__p, v4, v6);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    v3 = degas::Statement::update(__p);
    degas::Statement::~Statement(__p);
  }

  degas::Statement::~Statement(ppStmt);
  return v3;
}

void sub_2559287A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  degas::Statement::~Statement(&a16);
  degas::Statement::~Statement((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2559287E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2559287D8);
}

uint64_t degas::Migration::migratePruneSchema(sqlite3 **this)
{
  if (sqlite3_table_column_metadata(this[1], 0, "Attribute", "dataType", 0, 0, 0, 0, 0))
  {
    goto LABEL_34;
  }

  v3 = this[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "alter table Attribute drop column dataType");
  degas::Statement::Statement(ppStmt, v3, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  if (!v2)
  {
LABEL_34:
    if (sqlite3_table_column_metadata(this[1], 0, "Attribute", "flags", 0, 0, 0, 0, 0))
    {
      goto LABEL_35;
    }

    v4 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "alter table Attribute drop column flags");
    degas::Statement::Statement(ppStmt, v4, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = degas::Statement::update(ppStmt);
    degas::Statement::~Statement(ppStmt);
    if (!v2)
    {
LABEL_35:
      if (sqlite3_table_column_metadata(this[1], 0, "Node", "attrIds", 0, 0, 0, 0, 0))
      {
        goto LABEL_36;
      }

      v5 = this[1];
      std::string::basic_string[abi:ne200100]<0>(__p, "alter table Node drop column attrIds");
      degas::Statement::Statement(ppStmt, v5, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = degas::Statement::update(ppStmt);
      degas::Statement::~Statement(ppStmt);
      if (!v2)
      {
LABEL_36:
        if (sqlite3_table_column_metadata(this[1], 0, "Edge", "attrIds", 0, 0, 0, 0, 0))
        {
          goto LABEL_37;
        }

        v6 = this[1];
        std::string::basic_string[abi:ne200100]<0>(__p, "alter table Edge drop column attrIds");
        degas::Statement::Statement(ppStmt, v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v2 = degas::Statement::update(ppStmt);
        degas::Statement::~Statement(ppStmt);
        if (!v2)
        {
LABEL_37:
          if (sqlite3_table_column_metadata(this[1], 0, "TombstoneNode", "attrIds", 0, 0, 0, 0, 0))
          {
            goto LABEL_38;
          }

          v7 = this[1];
          std::string::basic_string[abi:ne200100]<0>(__p, "alter table TombstoneNode drop column attrIds");
          degas::Statement::Statement(ppStmt, v7, __p);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }

          v2 = degas::Statement::update(ppStmt);
          degas::Statement::~Statement(ppStmt);
          if (!v2)
          {
LABEL_38:
            if (sqlite3_table_column_metadata(this[1], 0, "TombstoneEdge", "attrIds", 0, 0, 0, 0, 0))
            {
              return 0;
            }

            else
            {
              v8 = this[1];
              std::string::basic_string[abi:ne200100]<0>(__p, "alter table TombstoneEdge drop column attrIds");
              degas::Statement::Statement(ppStmt, v8, __p);
              if (v11 < 0)
              {
                operator delete(__p[0]);
              }

              v2 = degas::Statement::update(ppStmt);
              degas::Statement::~Statement(ppStmt);
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t degas::Migration::migrate(degas::Migration *this, int a2, int a3)
{
  if (!a2)
  {
    goto LABEL_34;
  }

  v5 = a3 > 1 && a2 < 2;
  v6 = a2 >= 4 || a3 <= 3;
  v7 = !v6;
  v8 = a2 >= 6 || a3 <= 5;
  v9 = !v8;
  v10 = a2 >= 8 || a3 <= 7;
  v11 = !v10;
  if (a2 > 2 || a3 < 3 || (result = degas::Migration::migrateBitmapSchema(this), !result))
  {
    if (!v11 || (result = degas::Migration::migratePruneSchema(this), !result))
    {
      if (!v5 || (result = degas::Migration::migrateAttributeSchema(this), !result))
      {
        if (!v7 || (result = degas::Migration::migrateWeights(this), !result))
        {
          if (!v9 || (result = degas::Migration::migrateEdgeIndex(this), !result))
          {
LABEL_34:
            if ((*(*this + 32) & 1) == 0)
            {
              degas::MetadataTable::insertOrUpdate((*this + 136), 3, a3);
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t degas::BitsetPoolPage::BitsetPoolPage(uint64_t this, os_unfair_lock_s *a2)
{
  *(this + 8352) = 0;
  *(this + 8360) = a2;
  return this;
}

{
  *(this + 8352) = 0;
  *(this + 8360) = a2;
  return this;
}

uint64_t degas::BitsetPoolPage::allocBitsetSlot(degas::BitsetPoolPage *this)
{
  v2 = degas::BitsetPoolPage::provideFreeSlot(this);
  *(this + 1044) |= 1 << v2;
  return this + 144 * v2;
}

uint64_t degas::BitsetPoolPage::provideFreeSlot(degas::BitsetPoolPage *this)
{
  v1 = *(this + 1044);
  if ((~v1 & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    __assert_rtn("provideFreeSlot", "bitsetPool.cpp", 129, "!isFull()");
  }

  result = 0;
  while (((v1 >> result) & 1) != 0)
  {
    if (++result == 58)
    {
      return 0;
    }
  }

  return result;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, uint64_t a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  *(this + 1044) |= 1 << v6;
  v7 = this + 144 * v6;
  *v7 = 0;
  *(v7 + 1) = a3;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, const degas::Bitset *a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  v7 = this + 144 * v6;
  *(this + 1044) |= 1 << v6;
  v8 = *(a3 + 1);
  *v7 = 0;
  *(v7 + 1) = v8;
  *(v7 + 1) = *(a3 + 1);
  v9 = *(a3 + 4);
  v11 = *(a3 + 1);
  v10 = *(a3 + 2);
  *(v7 + 3) = *(a3 + 3);
  *(v7 + 4) = v9;
  *(v7 + 1) = v11;
  *(v7 + 2) = v10;
  v12 = *(a3 + 8);
  v14 = *(a3 + 5);
  v13 = *(a3 + 6);
  *(v7 + 7) = *(a3 + 7);
  *(v7 + 8) = v12;
  *(v7 + 5) = v14;
  *(v7 + 6) = v13;
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, const unsigned __int8 **a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  v7 = (this + 144 * v6);
  *(this + 1044) |= 1 << v6;
  degas::Bitset::Bitset(v7, a3);
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::releaseBitset(os_unfair_lock_t *this, degas::Bitset *a2)
{
  v2 = a2;
  os_unfair_lock_lock(this[1045]);
  this[1044] = (this[1044] & ~(1 << ((v2 - this) / 0x90u)));
  v4 = this[1045];

  os_unfair_lock_unlock(v4);
}

uint64_t degas::BitsetPool::BitsetPool(uint64_t this)
{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = this;
  *(this + 32) = 0;
  return this;
}

{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = this;
  *(this + 32) = 0;
  return this;
}

uint64_t degas::BitsetPool::getPageWithSlotFree(degas::BitsetPool *this)
{
  v1 = *(this + 3);
  if (v1 == this)
  {
LABEL_5:
    v4 = this;
    do
    {
      v4 = *(v4 + 1);
      *(this + 3) = v4;
      if (v4 == v1)
      {
        operator new();
      }

      v3 = *(v4 + 2);
    }

    while ((~*(v3 + 8352) & 0x3FFFFFFFFFFFFFFLL) == 0);
  }

  else
  {
    v2 = *(this + 3);
    while (1)
    {
      v3 = *(v2 + 2);
      if ((~*(v3 + 8352) & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      v2 = *(v2 + 1);
      *(this + 3) = v2;
      if (v2 == this)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, const degas::Bitset *a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, const unsigned __int8 **a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::purgeEmptyPages(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[2]._os_unfair_lock_opaque;
  while (v2 != this)
  {
    v3 = *&v2[4]._os_unfair_lock_opaque;
    if (*(v3 + 8352))
    {
      v2 = *&v2[2]._os_unfair_lock_opaque;
    }

    else
    {
      v4 = *&this[6]._os_unfair_lock_opaque;
      if (*(v4 + 16) == v3)
      {
        *&this[6]._os_unfair_lock_opaque = *(v4 + 8);
      }

      v5 = *&v2->_os_unfair_lock_opaque;
      v6 = *&v2[2]._os_unfair_lock_opaque;
      *(v5 + 8) = v6;
      *&v6->_os_unfair_lock_opaque = v5;
      --*&this[4]._os_unfair_lock_opaque;
      operator delete(v2);
      MEMORY[0x259C43EB0](v3, 0x1020C4058D1BB3BLL);
      v2 = v6;
    }
  }

  os_unfair_lock_unlock(this + 8);
}

uint64_t degas::getBitsetPool(degas *this)
{
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  return degas::getBitsetPool(void)::sPool;
}

void *degas::BitsetPtr::BitsetPtr(void *this, degas::Bitset *a2, degas::BitsetPoolPage *a3)
{
  *this = a2;
  this[1] = a3;
  ++*a2;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  ++*a2;
  return this;
}

__n128 degas::BitsetPtr::BitsetPtr(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  ++*result.n128_u64[0];
  return result;
}

{
  result = *a2;
  *this = *a2;
  ++*result.n128_u64[0];
  return result;
}

void degas::BitsetPtr::releaseBitset(degas::BitsetPtr *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      if ((*v3)-- == 1)
      {
        degas::BitsetPoolPage::releaseBitset(v2, v3);
      }
    }
  }

  *this = 0;
}

void degas::BitsetPtr::~BitsetPtr(degas::BitsetPtr *this)
{
  degas::BitsetPtr::releaseBitset(this);
  *(this + 1) = 0;
}

{
  degas::BitsetPtr::releaseBitset(this);
  *(this + 1) = 0;
}

degas::BitsetPtr *degas::BitsetPtr::operator=(degas::BitsetPtr *a1, __int128 *a2)
{
  degas::BitsetPtr::releaseBitset(a1);
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    ++*v4;
  }

  return a1;
}

void degas::BitsetPtr::reset(degas::BitsetPtr *this, degas::Bitset *a2, degas::BitsetPoolPage *a3)
{
  degas::BitsetPtr::releaseBitset(this);
  *this = a2;
  if (a3)
  {
    *(this + 1) = a3;
  }

  ++*a2;
}

uint64_t degas::NodeFilter_Labels::resolveNodes(degas::NodeFilter_Labels *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = (v4 + 192);
  v7[1] = v4;
  if (degas::Bitmap::count((this + 16)) != 1)
  {
    return degas::NodeLabelQuery::nodesForAllLabels(v7, (this + 16), a2, 0);
  }

  Bit = degas::Bitmap::firstBit((this + 16));
  return degas::NodeLabelQuery::nodesForLabel(v7, Bit, a2);
}

void degas::NodeFilter_Labels::~NodeFilter_Labels(degas::NodeFilter_Labels *this)
{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::NodeFilter_Attribute::resolveNodes(degas::NodeFilter_Attribute *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = v4 + 472;
  v7[1] = degas::Database::nodeCount(v4);
  v5 = *(this + 4);
  switch(v5)
  {
    case 3:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), this + 48, 1, a2);
    case 2:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), 1, a2, *(this + 5));
    case 1:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), *(this + 4), 1, a2);
  }

  return 3;
}

void degas::NodeFilter_Attribute::~NodeFilter_Attribute(void **this)
{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t degas::NodeFilter_Or::resolveNodes(degas::NodeFilter_Or *this, degas::Bitmap *a2)
{
  v9 = 0u;
  memset(v10, 0, 25);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
LABEL_4:
    degas::Bitmap::operator=(a2, &v9);
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v7 = 0u;
      memset(v8, 0, 25);
      v5 = (*(**v3 + 16))(*v3, &v7);
      if (v5)
      {
        break;
      }

      degas::Bitmap::unionWith<degas::Bitmap>(&v9, &v7);
      v11 = v8;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v11 = v8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  *&v7 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v5;
}

void sub_255929A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::NodeFilter_Or::~NodeFilter_Or(degas::NodeFilter_Or *this)
{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::NodeFilter_And::resolveNodes(degas::NodeFilter_And *this, degas::Bitmap *a2)
{
  v10 = 0u;
  memset(v11, 0, 25);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
LABEL_8:
    degas::Bitmap::operator=(a2, &v10);
    v6 = 0;
  }

  else
  {
    v5 = 1;
    while (1)
    {
      v8 = 0u;
      memset(v9, 0, 25);
      v6 = (*(**v3 + 16))(*v3, &v8);
      if (v6)
      {
        break;
      }

      if (v5)
      {
        degas::Bitmap::operator=(&v10, &v8);
      }

      else
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v10, &v8);
      }

      v12 = v9;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 = 0;
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    v12 = v9;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  *&v8 = v11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v8);
  return v6;
}

void sub_255929C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::NodeFilter_And::~NodeFilter_And(degas::NodeFilter_And *this)
{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *degas::NodeFilter::NodeFilter(void *result, uint64_t a2)
{
  *result = &unk_2867A9BD0;
  result[1] = a2;
  return result;
}

degas::NodeFilter_Labels *degas::NodeFilter_Labels::NodeFilter_Labels(degas::NodeFilter_Labels *this, degas::Database *a2, const degas::Bitmap *a3)
{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 32, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
  *(this + 56) = *(a3 + 40);
  return this;
}

{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 32, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
  *(this + 56) = *(a3 + 40);
  return this;
}

degas::NodeFilter_Labels *degas::NodeFilter_Labels::NodeFilter_Labels(degas::NodeFilter_Labels *this, degas::Database *a2, unint64_t a3)
{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 41) = 0u;
  *(this + 1) = 0u;
  degas::Bitmap::setBit((this + 16), a3);
  return this;
}

void sub_255929EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  *result = &unk_2867A9C20;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_2867A9C20;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v5;
  }

  return a1;
}

void *degas::NodeFilter_Or::NodeFilter_Or(void *result, uint64_t a2)
{
  *result = &unk_2867A9C48;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867A9C48;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::NodeFilter_Or::NodeFilter_Or(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2867A9C48;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867A9C48;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(a4);
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }
}

void *degas::NodeFilter_And::NodeFilter_And(void *result, uint64_t a2)
{
  *result = &unk_2867A9C70;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867A9C70;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::NodeFilter_And::NodeFilter_And(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2867A9C70;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867A9C70;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

uint64_t kgWaitForProtectedAccess(unsigned int a1, const char *a2)
{
  if (kgDeviceCanProceedForProtectionClass(a1, a2) == 1)
  {
    return 1;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v5 = dispatch_queue_create("com.apple.photos.knowledge.unlock", 0);
  v6 = dispatch_semaphore_create(0);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = -1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __kgWaitForProtectedAccess_block_invoke;
  v11[3] = &unk_2797FF1D0;
  v11[4] = v18;
  v11[5] = &v20;
  v11[6] = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __kgWaitForProtectedAccess_block_invoke_2;
  block[3] = &unk_2797FF1F8;
  v10 = a1;
  block[4] = v11;
  block[5] = v12;
  block[6] = &v14;
  block[7] = &v20;
  block[8] = v18;
  block[9] = v5;
  block[10] = a2;
  block[11] = v6;
  dispatch_sync(v5, block);
  if (*(v15 + 6) == 1)
  {
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __kgWaitForProtectedAccess_block_invoke_4;
    v8[3] = &unk_2797FF220;
    v8[4] = v12;
    dispatch_sync(v5, v8);
  }

  dispatch_release(v6);
  dispatch_release(v5);
  v4 = *(v21 + 6);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  return v4;
}

uint64_t kgDeviceCanProceedForProtectionClass(unsigned int a1, const char *a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  if (a1 < 2)
  {
    *&v10.st_dev = xmmword_2797FF240;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = 0;
    v3 = 1;
    CFDictionaryCreate(*MEMORY[0x277CBECE8], &v10, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = MKBGetDeviceLockState();
    if (v5 <= 7 && ((1 << v5) & 0x89) != 0)
    {
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      memset(&v10, 0, sizeof(v10));
      if (stat(a2, &v10) == -1 && *__error() == 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
LABEL_4:
      v3 = 1;
LABEL_14:
      v7 = *MEMORY[0x277D85DE8];
      return v3;
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282186880]();
}

void *__kgWaitForProtectedAccess_block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  if (!*(v1 + 24))
  {
    *(v1 + 24) = 1;
    v3 = result[5];
    v2 = result[6];
    *(*(v3 + 8) + 24) = 1;
    return dispatch_semaphore_signal(v2);
  }

  return result;
}

void __kgWaitForProtectedAccess_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2797FF250[v2];
  }

  if (notify_register_dispatch(v3, (*(*(a1 + 40) + 8) + 24), *(a1 + 72), *(a1 + 32)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to register for protected device access notification", v6, 2u);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (kgDeviceCanProceedForProtectionClass(*(a1 + 96), *(a1 + 80)) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v4 = *(*(a1 + 64) + 8);
      if (!*(v4 + 24))
      {
        *(v4 + 24) = 1;
        v5 = *(a1 + 88);

        dispatch_semaphore_signal(v5);
      }
    }
  }
}

void sub_25592B04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25592B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *degas::AttributeQuery::AttributeQuery(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, degas::Bitmap *a5)
{
  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, a3, a4, v9);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a5);
  }

  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  degas::Cursor::~Cursor(v13);
  return v11;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, int a3, degas::Bitmap *a4, double a5)
{
  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, a3, v9, a5);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a4);
  }

  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  degas::Cursor::~Cursor(v13);
  return v11;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, int a4, degas::Bitmap *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, &__p, a4, v9);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a5);
  }

  degas::Cursor::~Cursor(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 2)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void sub_25592C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, degas::Statement *a16)
{
  degas::Cursor::~Cursor(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::elementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, void *a3, int a4, int a5, degas::Bitmap *a6)
{
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a2, a3, a4, a5, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

{
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a2, a3, a4, a5, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

{
  return degas::implElementsForAttributeValues<char const*>(a2, a3, a4, a5, a6, *a1);
}

uint64_t degas::implElementsForAttributeValues<char const*>(sqlite3_int64 a1, void *a2, int a3, int a4, degas::Bitmap *a5, uint64_t a6)
{
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a1, a2, a3, a4, a6);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a5);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, uint64_t *a3, int a4, int a5, degas::Bitmap *a6)
{
  v12 = a4;
  std::vector<char const*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v13 = 0;
    do
    {
      v14 = a3;
      if (*(a3 + 23) < 0)
      {
        v14 = *a3;
      }

      *(__p[0] + v13++) = v14;
      a3 += 3;
    }

    while (v12 != v13);
  }

  v15 = degas::implElementsForAttributeValues<char const*>(a2, __p[0], a4, a5, a6, *a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v15;
}

void sub_25592C5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25592C650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, degas::Bitmap *a6)
{
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForRange(v15, a2, a3, a4, a5, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, int a3, degas::Bitmap *a4, double a5, double a6)
{
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForRange(v15, a2, a3, v11, a5, a6);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a4);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, int a5, degas::Bitmap *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
  }

  else
  {
    v15 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v16);
  degas::AggregateValueCursor::setForRange(v16, a2, &v15, &__p, a5, v11);
  while (1)
  {
    v12 = degas::Statement::next(v16[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v16[0], 0, a6);
  }

  degas::Cursor::~Cursor(v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v12 == 2)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void sub_25592C904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::filterElementsForAggregateCursor(sqlite3_stmt ***this, degas::AggregateValueCursor *a2, degas::Bitmap *a3, const degas::Bitmap *a4)
{
  v10 = 0u;
  memset(v11, 0, 25);
  while (1)
  {
    v7 = degas::Statement::next(*this);
    v8 = v7;
    if (v7 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(*this, 0, &v10);
  }

  if (v7 == 2)
  {
    if (*(a3 + 2) != *(a3 + 3))
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v10, a3);
    }

    degas::Bitmap::operator=(a2, &v10);
    v8 = 0;
  }

  v12 = v11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v8;
}

void sub_25592C9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5, degas::AggregateValueCursor *a6)
{
  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v17);
  if (degas::Bitmap::count(a5) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v17, a2, a3, a4, v11);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v17, a2, a3, a4, a5, v11);
    degas::Bitmap::emptyBitmap(v13);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v17, a6, a5, v14);
  degas::Cursor::~Cursor(v17);
  return v15;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, int a3, Bitmap *a4, degas::AggregateValueCursor *a5, double a6)
{
  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v17);
  if (degas::Bitmap::count(a4) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v17, a2, a3, v11, a6);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v17, a2, a3, a4, v11, a6);
    degas::Bitmap::emptyBitmap(v13);
    a4 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v17, a5, a4, v14);
  degas::Cursor::~Cursor(v17);
  return v15;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, int a4, Bitmap *a5, degas::AggregateValueCursor *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v18);
  if (degas::Bitmap::count(a5) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v18, a2, &__p, a4, v11);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v18, a2, &__p, a4, a5, v11);
    degas::Bitmap::emptyBitmap(v13);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v18, a6, a5, v14);
  degas::Cursor::~Cursor(v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_25592CD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, degas::Statement *a16)
{
  degas::Cursor::~Cursor(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, void *a3, int a4, int a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v19, a2, a3, a4, a5, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v19, a2, a3, a4, a5, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

{
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v19, a2, a3, a4, a5, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v19, a2, a3, a4, a5, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

uint64_t degas::implFilterElementsForAttributeValues<char const*>(sqlite3_int64 a1, void *a2, int a3, int a4, Bitmap *a5, degas::AggregateValueCursor *a6, uint64_t a7, unint64_t a8)
{
  degas::AggregateValueCursor::AggregateValueCursor(v20);
  if (degas::Bitmap::count(a5) / a8 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v20, a1, a2, a3, a4, a7);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v20, a1, a2, a3, a4, a5, a7);
    degas::Bitmap::emptyBitmap(v16);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v18 = degas::filterElementsForAggregateCursor(v20, a6, a5, v17);
  degas::Cursor::~Cursor(v20);
  return v18;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValues(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4, int a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v14 = a4;
  std::vector<char const*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v15 = 0;
    do
    {
      v16 = a3;
      if (*(a3 + 23) < 0)
      {
        v16 = *a3;
      }

      *(__p[0] + v15++) = v16;
      a3 += 3;
    }

    while (v14 != v15);
  }

  v17 = degas::implFilterElementsForAttributeValues<char const*>(a2, __p[0], a4, a5, a6, a7, *a1, *(a1 + 8));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v17;
}

void sub_25592D1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v19, a2, a3, a4, a5, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v19, a2, a3, a4, a5, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, int a3, Bitmap *a4, degas::AggregateValueCursor *a5, double a6, double a7)
{
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a4) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v19, a2, a3, v13, a6, a7);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v19, a2, a3, a4, v13, a6, a7);
    degas::Bitmap::emptyBitmap(v15);
    a4 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a5, a4, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, int a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
  }

  else
  {
    v20 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v21);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v21, a2, &v20, &__p, a5, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v21, a2, &v20, &__p, a5, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v21, a7, a6, v16);
  degas::Cursor::~Cursor(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_25592D554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double degas::UncountedPathCollection::UncountedPathCollection(degas::UncountedPathCollection *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

degas::UncountedPathCollection *degas::UncountedPathCollection::UncountedPathCollection(degas::UncountedPathCollection *this, const degas::Bitmap *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 3) = *a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 40, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 64) = *(a2 + 40);
  return this;
}

uint64_t degas::UncountedPathCollection::addPath(degas::UncountedPathCollection *this, unint64_t a2, unint64_t a3)
{
  v5 = *(this + 1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 8;
  do
  {
    v7 = *(v5 + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 == this + 8 || *(v6 + 4) > a3)
  {
LABEL_9:
    operator new();
  }

  degas::Bitmap::setBit(*(v6 + 5), a2);
  return degas::Bitmap::setBit((this + 24), a3);
}

void sub_25592D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<degas::Bitmap>>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::unique_ptr<degas::Bitmap>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x259C43EB0](v2, 0x1020C40C46AEF4ELL);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972C8ELL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = (v1 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);

    JUMPOUT(0x259C43EB0);
  }

  return result;
}

void std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::UncountedPathCollection::addPaths(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 8 && *(v6 + 32) <= a2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(*(v6 + 40), *a3);
  }

  else
  {
LABEL_9:
    v10 = a3[1];
    v12 = *a3;
    v13 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<degas::Bitmap>>>(a1, a2);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return degas::Bitmap::setBit((a1 + 24), a2);
}

void sub_25592DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void degas::UncountedPathCollection::clear(degas::UncountedPathCollection *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*(this + 1));
  *this = v2;
  *v2 = 0u;
  *(this + 24) = 0u;
  v3 = *(this + 5);
  for (i = *(this + 6); i != v3; i -= 16)
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 8) = 0;
  }

  *(this + 6) = v3;
}

unint64_t degas::UncountedPathCollection::addToCollectionWithFilter(degas::UncountedPathCollection *this, degas::UncountedPathCollection *a2, const degas::Bitmap *a3)
{
  result = degas::Bitmap::count(a3);
  if (result < *(this + 2))
  {
    result = degas::Bitmap::begin(a3, &v21);
    v7 = (this + 8);
    while (1)
    {
      v8 = v22;
      v9 = v21 == a3 && v22 == -1;
      if (v9)
      {
        if (v23 == *(a3 + 3))
        {
          return result;
        }

        v8 = -1;
      }

      v10 = *v7;
      if (*v7)
      {
        v11 = v7;
        do
        {
          v12 = v10[4];
          v13 = v12 >= v8;
          v14 = v12 < v8;
          if (v13)
          {
            v11 = v10;
          }

          v10 = v10[v14];
        }

        while (v10);
        if (v11 != v7 && v8 >= v11[4])
        {
          degas::UncountedPathCollection::addPaths(a2, v8, v11 + 5);
        }
      }

      result = degas::Bitmap::iterator::operator++(&v21);
    }
  }

  v17 = *this;
  v15 = this + 8;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = *(v16 + 4);
      result = degas::Bitmap::isSet(a3, v18);
      if (result)
      {
        result = degas::UncountedPathCollection::addPaths(a2, v18, v16 + 5);
      }

      v19 = *(v16 + 1);
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
          v20 = *(v16 + 2);
          v9 = *v20 == v16;
          v16 = v20;
        }

        while (!v9);
      }

      v16 = v20;
    }

    while (v20 != v15);
  }

  return result;
}

char *degas::UncountedPathCollection::sourceNodesForTargetNodeId(char **this, unint64_t a2)
{
  {
    v14 = a2;
    v15 = this;
    a2 = v14;
    this = v15;
    if (v13)
    {
      __cxa_atexit(std::shared_ptr<degas::Bitmap>::~shared_ptr[abi:ne200100], &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap, &dword_255870000);
      a2 = v14;
      this = v15;
    }
  }

  v4 = this[1];
  v2 = (this + 1);
  v3 = v4;
  if (!v4)
  {
    return &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  v9 = &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap;
  if (v5 != v2)
  {
    v10 = *(v5 + 4);
    v11 = v5 + 40;
    if (v10 <= a2)
    {
      return v11;
    }
  }

  return v9;
}

uint64_t std::shared_ptr<degas::Bitmap>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

double degas::CountedPathCollection::CountedPathCollection(degas::CountedPathCollection *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

degas::CountedPathCollection *degas::CountedPathCollection::CountedPathCollection(degas::CountedPathCollection *this, const degas::Bitmap *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 3) = *a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 40, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 64) = *(a2 + 40);
  return this;
}

void degas::CountedPathCollection::addPath(degas::CountedPathCollection *this, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (this + 8);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (this + 8) && v7[4] <= a3)
  {
    v13 = v7[6];
    v11 = v7 + 6;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v11;
    do
    {
      v15 = v12[4];
      v9 = v15 >= a2;
      v16 = v15 < a2;
      if (v9)
      {
        v14 = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
    if (v14 != v11 && v14[4] <= a2)
    {
      *(v14 + 10) += a4;
    }

    else
    {
LABEL_19:
      LODWORD(v17[0]) = a4;
      std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>((v11 - 1), a2);
    }
  }

  else
  {
LABEL_9:
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    LODWORD(v17[0]) = a4;
    std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(&v18, a2);
    std::map<unsigned long long,int>::map[abi:ne200100](v17, &v18);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(this, a3);
    std::__tree<unsigned long long>::destroy(v17[1]);
    degas::Bitmap::setBit((this + 24), a3);
    std::__tree<unsigned long long>::destroy(v19[0]);
  }
}

uint64_t std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::map<unsigned long long,int>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t degas::CountedPathCollection::addPaths(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 8 && *(v6 + 32) <= a2)
  {
    v11 = a3 + 1;
    v12 = *a3;
    if (*a3 != a3 + 1)
    {
      v13 = (v6 + 48);
      do
      {
        v14 = v12[4];
        v15 = *v13;
        if (!*v13)
        {
          goto LABEL_21;
        }

        v16 = v6 + 48;
        do
        {
          v17 = *(v15 + 32);
          v8 = v17 >= v14;
          v18 = v17 < v14;
          if (v8)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        if (v16 != v13 && v14 >= *(v16 + 32))
        {
          *(v16 + 40) += *(v12 + 10);
        }

        else
        {
LABEL_21:
          v23 = v12[4];
          LODWORD(v24[0]) = *(v12 + 10);
          std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v6 + 40, v14);
        }

        v19 = v12[1];
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
            v20 = v12[2];
            v21 = *v20 == v12;
            v12 = v20;
          }

          while (!v21);
        }

        v12 = v20;
      }

      while (v20 != v11);
    }
  }

  else
  {
LABEL_9:
    std::map<unsigned long long,int>::map[abi:ne200100](v24, a3);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(a1, a2);
    std::__tree<unsigned long long>::destroy(v24[1]);
  }

  return degas::Bitmap::setBit((a1 + 24), a2);
}

unint64_t degas::CountedPathCollection::addToCollectionWithFilter(degas::CountedPathCollection *this, degas::CountedPathCollection *a2, const degas::Bitmap *a3)
{
  result = degas::Bitmap::count(a3);
  if (result < *(this + 2))
  {
    result = degas::Bitmap::begin(a3, &v21);
    v7 = (this + 8);
    while (1)
    {
      v8 = v22;
      v9 = v21 == a3 && v22 == -1;
      if (v9)
      {
        if (v23 == *(a3 + 3))
        {
          return result;
        }

        v8 = -1;
      }

      v10 = *v7;
      if (*v7)
      {
        v11 = v7;
        do
        {
          v12 = v10[4];
          v13 = v12 >= v8;
          v14 = v12 < v8;
          if (v13)
          {
            v11 = v10;
          }

          v10 = v10[v14];
        }

        while (v10);
        if (v11 != v7 && v8 >= v11[4])
        {
          degas::CountedPathCollection::addPaths(a2, v8, v11 + 5);
        }
      }

      result = degas::Bitmap::iterator::operator++(&v21);
    }
  }

  v17 = *this;
  v15 = this + 8;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = *(v16 + 4);
      result = degas::Bitmap::isSet(a3, v18);
      if (result)
      {
        result = degas::CountedPathCollection::addPaths(a2, v18, v16 + 5);
      }

      v19 = *(v16 + 1);
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
          v20 = *(v16 + 2);
          v9 = *v20 == v16;
          v16 = v20;
        }

        while (!v9);
      }

      v16 = v20;
    }

    while (v20 != v15);
  }

  return result;
}

uint64_t *degas::CountedPathCollection::sourcePathsForTargetNodeId(char **this, unint64_t a2)
{
  {
    v14 = a2;
    v15 = this;
    a2 = v14;
    this = v15;
    if (v13)
    {
      qword_27F7D9DD8 = 0;
      qword_27F7D9DD0 = 0;
      degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry = &qword_27F7D9DD0;
      __cxa_atexit(std::map<unsigned long long,int>::~map[abi:ne200100], &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry, &dword_255870000);
      a2 = v14;
      this = v15;
    }
  }

  v4 = this[1];
  v2 = (this + 1);
  v3 = v4;
  if (!v4)
  {
    return &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  v9 = &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry;
  if (v5 != v2)
  {
    v10 = *(v5 + 4);
    v11 = v5 + 40;
    if (v10 <= a2)
    {
      return v11;
    }
  }

  return v9;
}

double degas::Distribution::Distribution(degas::Distribution *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void degas::Distribution::setCountedPathCollection(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void degas::Distribution::setUncountedPathCollection(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *degas::Distribution::enumeratePaths(void *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    v6 = *v3;
    v4 = v3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      do
      {
        v7 = v5[4];
        for (result = degas::Bitmap::begin(v5[5], v20); ; result = degas::Bitmap::iterator::operator++(v20))
        {
          v8 = v5[5];
          v9 = v20[0] == v8 && v20[1] == -1;
          if (v9 && v20[2] == *(v8 + 24))
          {
            break;
          }

          (*(a2 + 16))(a2);
        }

        v10 = v5[1];
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
            v11 = v5[2];
            v9 = *v11 == v5;
            v5 = v11;
          }

          while (!v9);
        }

        v5 = v11;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v12 = *result + 8;
    v13 = **result;
    if (v13 != v12)
    {
      do
      {
        v14 = v13[5];
        if (v14 != v13 + 6)
        {
          v15 = v13[4];
          do
          {
            result = (*(a2 + 16))(a2, v14[4], v15, *(v14 + 10));
            v16 = v14[1];
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = v14[2];
                v9 = *v17 == v14;
                v14 = v17;
              }

              while (!v9);
            }

            v14 = v17;
          }

          while (v17 != v13 + 6);
        }

        v18 = v13[1];
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
            v19 = v13[2];
            v9 = *v19 == v13;
            v13 = v19;
          }

          while (!v9);
        }

        v13 = v19;
      }

      while (v19 != v12);
    }
  }

  return result;
}

uint64_t kg_errorCodeFromDegasReturnCode(int a1)
{
  if ((a1 - 2) > 9)
  {
    return -1;
  }

  else
  {
    return qword_255972CE0[a1 - 2];
  }
}

void sub_25592F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4361(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255931A5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void degas::Bitmap::symmetricDiffWith<degas::Bitmap>(degas::Bitmap *this, uint64_t a2)
{
  v2 = (*(a2 + 24) - *(a2 + 16)) >> 4;
  if (v2)
  {
    Offset = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 2);
      v8 = (*(this + 3) - v7) >> 4;
      if (v8 <= Offset)
      {
        break;
      }

      v9 = *(*(a2 + 16) + 16 * v6);
      v10 = *(*(v7 + 16 * Offset) + 8);
      v11 = *(v9 + 8);
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          v12 = *this;
          if (*this != 0xFFFFFFFFLL)
          {
            v13 = *(v9 + 4);
            if (v13 == -1)
            {
              v14 = 0;
              v15 = 0uLL;
              do
              {
                do
                {
                  v15 = vpadalq_u16(v15, vpaddlq_u8(vcntq_s8(*(v9 + 16 + 4 * v14))));
                  v14 += 4;
                }

                while (v14 != 32);
                v14 = 0;
                v13 = vaddvq_s32(v15);
                v15 = 0uLL;
              }

              while (v13 == -1);
              *(v9 + 4) = v13;
            }

            *this = v12 + v13;
          }

          degas::Bitmap::insertBitset(this, Offset++, v9);
          ++v6;
          *(this + 40) = 1;
        }

        else
        {
          degas::Bitmap::unshadowedBitSetAtIndex(this, Offset, v21);
          v16 = 0;
          v17 = v21[0];
          v18 = v21[0] + 16;
          do
          {
            *(v18 + v16) ^= *(v9 + 16 + v16);
            v16 += 4;
          }

          while (v16 != 128);
          *(v17 + 4) = -1;
          ++Offset;
          ++v6;
          *this = 0xFFFFFFFFLL;
          *(this + 40) = 1;
          degas::BitsetPtr::releaseBitset(v21);
        }
      }

      else
      {
        Offset = degas::Bitmap::findOffset(this, v11, Offset, v8);
      }
    }

    while (v6 < v2);
    v19 = v2 - v6;
    if (v2 > v6)
    {
      v20 = 16 * v6;
      do
      {
        degas::Bitmap::appendBitset(this, *(*(a2 + 16) + v20));
        *(this + 40) = 1;
        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_2559337F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255933C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_255933D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL degas::Bitmap::isSubsetOf<degas::Bitmap>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (((a4 - a3) & 0xFFFFFFFF0) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a3 + 16 * v4);
      v6 = *(*a1 + 8);
      v7 = *(v5 + 8);
      if (v6 < v7)
      {
        break;
      }

      if (v6 <= v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = v5 + 16;
        do
        {
          v11 = *(*a1 + 16 + 4 * v9);
          if (v11 && (v11 & ~*(v10 + 4 * v9)) != 0)
          {
            break;
          }

          v8 = v9++ > 0x1E;
        }

        while (v9 != 32);
        if (!v8)
        {
          return 0;
        }

        a1 += 16;
      }

      if (a1 != a2 && ++v4 < ((a4 - a3) >> 4))
      {
        continue;
      }

      return a1 == a2;
    }
  }

  return 0;
}

void sub_2559343CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 - 40) = &a12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));

  _Unwind_Resume(a1);
}

_DWORD *degas::LiteralBitmap::LiteralBitmap(_DWORD *this, int a2)
{
  *this = 7;
  this[1] = a2;
  return this;
}

{
  *this = 7;
  this[1] = a2;
  return this;
}

__n128 degas::LiteralBitmap::makeLiteralBitmap(degas::LiteralBitmap *this, const Bitmap *a2)
{
  v3 = (*(this + 3) - *(this + 2)) >> 4;
  v4 = operator new((144 * v3) | 8);
  *v4 = 7;
  v4[1] = v3;
  v6 = *(this + 2);
  v7 = *(this + 3);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v6 += 2;
      v10 = *(v9 + 4);
      v11 = &v4[36 * v8 + 2];
      *v11 = 0;
      *(v11 + 4) = v10;
      *(v11 + 8) = *(v9 + 8);
      v12 = *(v9 + 96);
      *(v11 + 80) = *(v9 + 80);
      *(v11 + 96) = v12;
      v13 = *(v9 + 128);
      *(v11 + 112) = *(v9 + 112);
      *(v11 + 128) = v13;
      v14 = *(v9 + 32);
      *(v11 + 16) = *(v9 + 16);
      *(v11 + 32) = v14;
      result = *(v9 + 48);
      v15 = *(v9 + 64);
      ++v8;
      *(v11 + 48) = result;
      *(v11 + 64) = v15;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t degas::LiteralBitmap::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v2 = *(a2 + 4);
  if (v2 == *(a1 + 4))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = (a2 + 24);
    for (i = (a1 + 24); *(i - 1) == *(v3 - 1) && !memcmp(i, v3, 0x80uLL); i += 18)
    {
      v3 += 18;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t degas::LiteralBitmap::rangeCompare(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3)
{
  if (*(this + 1) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 18 * a3 + 2);
  if (v3 + 1024 > a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 > a2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

unint64_t degas::LiteralBitmap::findOffset(degas::LiteralBitmap *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3 > a2 || v3 + 1024 > a2)
  {
    return 0;
  }

  if (v2 != 1)
  {
    v6 = this + 8;
    v7 = 1;
    v8 = *(this + 1);
    while (1)
    {
      result = (v8 + v7) >> 1;
      if (result >= v2)
      {
        goto LABEL_15;
      }

      v9 = *&v6[144 * result + 8];
      if (v9 <= a2)
      {
        break;
      }

      v8 = (v8 + v7) >> 1;
LABEL_16:
      if (v7 == v8)
      {
        return result;
      }
    }

    if (v9 + 1024 > a2)
    {
      return result;
    }

LABEL_15:
    v7 = result + 1;
    result = v8;
    goto LABEL_16;
  }

  return 1;
}

unint64_t degas::LiteralBitmap::findOffset(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 != a4)
  {
    v5 = *(this + 1);
    v6 = this + 8;
    while (1)
    {
      result = (a3 + a4) >> 1;
      if (result >= v5)
      {
        goto LABEL_8;
      }

      v7 = *&v6[144 * result + 8];
      if (v7 <= a2)
      {
        break;
      }

      a4 = (a3 + a4) >> 1;
LABEL_9:
      if (a3 == a4)
      {
        return result;
      }
    }

    if (v7 + 1024 > a2)
    {
      return result;
    }

LABEL_8:
    a3 = result + 1;
    result = a4;
    goto LABEL_9;
  }

  return a3;
}

uint64_t degas::LiteralBitmap::isSet(degas::LiteralBitmap *this, unint64_t a2)
{
  Offset = degas::LiteralBitmap::findOffset(this, a2);
  if (Offset < *(this + 1) && ((v5 = this + 144 * Offset, v6 = *(v5 + 2), v7 = v6 + 1024, v8 = a2 >= v6, v9 = a2 - v6, v8) ? (v10 = v7 > a2) : (v10 = 0), v10))
  {
    return (*&v5[4 * (v9 >> 5) + 24] >> v9) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t degas::LiteralBitmap::bitAtIndex(degas::LiteralBitmap *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return -1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = (this + 144 * v4 + 8);
    v7 = *(v6 + 1);
    if (v7 == -1)
    {
      v8 = 0;
      v9 = 0uLL;
      do
      {
        do
        {
          v9 = vpadalq_u16(v9, vpaddlq_u8(vcntq_s8(*(v6 + 4 * v8 + 16))));
          v8 += 4;
        }

        while (v8 != 32);
        v8 = 0;
        v7 = vaddvq_s32(v9);
        v9 = 0uLL;
      }

      while (v7 == -1);
      *(v6 + 1) = v7;
    }

    if (v5 + v7 > a2)
    {
      break;
    }

    ++v4;
    v5 += v7;
    if (v4 == v2)
    {
      return -1;
    }
  }

  v10 = -1;
  v12 = -1;
  do
  {
    degas::Bitset::nextBit(v6, &v12, v10);
    v10 = v12;
    ++v5;
  }

  while (v5 <= a2);
  return v10;
}

uint64_t degas::LiteralBitmap::count(degas::LiteralBitmap *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = this + 8;
  do
  {
    v6 = &v5[144 * v3];
    v7 = *(v6 + 1);
    if (v7 == -1)
    {
      v8 = 0;
      v9 = 0uLL;
      do
      {
        do
        {
          v9 = vpadalq_u16(v9, vpaddlq_u8(vcntq_s8(*&v6[4 * v8 + 16])));
          v8 += 4;
        }

        while (v8 != 32);
        v8 = 0;
        v7 = vaddvq_s32(v9);
        v9 = 0uLL;
      }

      while (v7 == -1);
      *(v6 + 1) = v7;
    }

    result += v7;
    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t degas::LiteralBitmap::countBitsInRange(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return 0;
  }

  Offset = degas::LiteralBitmap::findOffset(this, a2);
  v8 = *(this + 1);
  if (Offset >= v8)
  {
    return 0;
  }

  v9 = Offset;
  v10 = this + 8;
  v11 = Offset;
  v12 = *(this + 1);
  do
  {
    v13 = (v12 + v11) >> 1;
    if (v13 < v8)
    {
      v14 = *&v10[144 * v13 + 8];
      if (v14 > a3)
      {
        v12 = (v12 + v11) >> 1;
        continue;
      }

      if (v14 + 1024 > a3)
      {
        break;
      }
    }

    v11 = v13 + 1;
    v13 = v12;
  }

  while (v11 != v12);
  v15 = v13 - (v13 >= v8);
  v16 = &v10[144 * Offset];
  v17 = *(v16 + 1);
  if (v17 <= a3 && v17 + 1024 >= a2)
  {
    v19 = degas::Bitset::countBitsInRange(v16, a2, a3, *v7.i8);
  }

  else
  {
    v19 = 0;
  }

  if (v9 != v15)
  {
    v21 = v9 + 1;
    if (v9 + 1 < v15)
    {
      do
      {
        v22 = &v10[144 * v21];
        v23 = *(v22 + 1);
        if (v23 <= a3 && v23 + 1024 >= a2)
        {
          v25 = *(v22 + 1);
          if (v25 == -1)
          {
            v26 = 0;
            v7 = 0uLL;
            do
            {
              do
              {
                v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*&v22[4 * v26 + 16])));
                v26 += 4;
              }

              while (v26 != 32);
              v26 = 0;
              v25 = vaddvq_s32(v7);
              v7 = 0uLL;
            }

            while (v25 == -1);
            *(v22 + 1) = v25;
          }

          v19 += v25;
        }

        ++v21;
      }

      while (v21 != v15);
    }

    v27 = &v10[144 * v15];
    v28 = *(v27 + 1);
    if (v28 <= a3 && v28 + 1024 >= a2)
    {
      v19 += degas::Bitset::countBitsInRange(v27, a2, a3, *v7.i8);
    }
  }

  return v19;
}

unint64_t degas::LiteralBitmap::firstBit(degas::LiteralBitmap *this)
{
  v1 = -1;
  v3 = -1;
  if (*(this + 1))
  {
    v1 = *(this + 2);
    if (v1 > 0xFFFFFFFFFFFFFBFFLL || (*(this + 24) & 1) == 0)
    {
      degas::Bitset::nextBit((this + 8), &v3, v1);
      return v3;
    }
  }

  return v1;
}

uint64_t degas::LiteralBitmap::lastBit(degas::LiteralBitmap *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = this + 144 * (v1 - 1);
  v3 = (v2 + 148);
  v4 = 31;
  do
  {
    v6 = *v3--;
    v5 = v6;
    if (v6)
    {
      v4 *= 32;
      return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 2);
    }

    --v4;
  }

  while (v4);
  result = 0;
  v5 = *(v2 + 6);
  if (!v5)
  {
    return result;
  }

  return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 2);
}

uint64_t *degas::LiteralBitmap::emptyBitmap(degas::LiteralBitmap *this)
{
  {
    degas::LiteralBitmap::emptyBitmap(void)::bitmap = 7;
  }

  return &degas::LiteralBitmap::emptyBitmap(void)::bitmap;
}

void degas::AggregateValueTable::~AggregateValueTable(degas::AggregateValueTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::AggregateValueTable::AggregateValueTable(void *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5)
{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9D58;
  *(result + 48) = a4;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9D58;
  *(result + 48) = a4;
  return result;
}

degas::Statement **degas::AggregateValueTable::readByIdentifierStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4786;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select mergeLiteralBitmap(elementId) from ", 42);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1", 19);
  operator new();
}

void sub_2559358DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByAttrIdIdentifierStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable31readByAttrIdIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_4790;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable31readByAttrIdIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select mergeLiteralBitmap(elementId) from ", 42);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1 and attributeId=?2", 38);
  operator new();
}

void sub_255935BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByBitmapStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_4792;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select mergeLiteralBitmap(v.elementId) from ", 44);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " v, identifierBitmap(?1) b where v.elementId = b.value", 54);
  operator new();
}

void sub_255935E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_10_4795;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and intValue", 34);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_255936194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_12_4798;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and realValue", 35);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_2559364BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_14_4800;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and stringValue", 37);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?2 order by elementId", 21);
  operator new();
}

void sub_2559367E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_16_4802;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xC00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and intValue", 34);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'int64') order by elementId", 46);
  operator new();
}

void sub_255936AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_18_4804;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xD00u, v5);
}

void ___ZNK5degas19AggregateValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and realValue", 35);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'double') order by elementId", 47);
  operator new();
}

void sub_255936DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_20_4806;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xE00u, v5);
}

void ___ZNK5degas19AggregateValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where attributeId=?1 and stringValue", 37);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?2, ?3, 'char*') order by elementId", 46);
  operator new();
}

void sub_255937100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_23;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +intValue", 75);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_25593742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_25;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +realValue", 76);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_255937758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_27;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +stringValue", 78);
  v6 = *(a1 + 40);
  if (v6 > 8)
  {
    v7 = " == ";
  }

  else
  {
    v7 = *(&off_2797FE388 + v6);
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "?3", 2);
  operator new();
}

void sub_255937A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByIntValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_29;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xC00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByIntValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +intValue", 75);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?3, ?4, 'int64') order by elementId", 46);
  operator new();
}

void sub_255937D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable36readByRealValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_31_4813;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xD00u, v5);
}

void ___ZNK5degas19AggregateValueTable36readByRealValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +realValue", 76);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?3, ?4, 'double') order by elementId", 47);
  operator new();
}

void sub_2559380A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable38readByStringValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_33;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xE00u, v5);
}

void ___ZNK5degas19AggregateValueTable38readByStringValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +stringValue", 78);
  v6 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "valueArray(?3, ?4, 'char*') order by elementId", 46);
  operator new();
}

void sub_2559383AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_37_4816;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("intValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2559386E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_39_4820;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("realValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255938A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_41_4822;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("stringValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " order by elementId", 19);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255938D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable34readByIntRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_44_4824;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable34readByIntRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+intValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2559390E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByRealRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_46_4827;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByRealRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+realValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}