void sub_1AF089780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void internal::marisa::grimoire::trie::LoudsTrie::restore_(uint64_t a1, std::string *a2, unint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a1 + 1056) & a3;
      v7 = *(a1 + 1024) + 12 * v6;
      if (a3 != *(v7 + 4))
      {
        break;
      }

      v8 = *(v7 + 8);
      if (v8 <= 0xFFFFFEFF)
      {
        v18 = *(a1 + 1000);
        if (v18)
        {
          internal::marisa::grimoire::trie::LoudsTrie::restore_(v18, a2, v8);
        }

        else
        {
          internal::marisa::grimoire::trie::Tail::restore((a1 + 744), a2, v8);
        }
      }

      else
      {
        std::string::push_back(a2, v8);
      }

      a3 = *(*(a1 + 1024) + 12 * v6);
      if (!a3)
      {
        return;
      }
    }

    v9 = *(*(a1 + 640) + a3);
    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v10 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a3);
      v11 = *(a1 + 720);
      v12 = v11 * v10;
      v13 = (v11 * v10) & 0x3F;
      v14 = v13 + v11;
      v15 = (*(a1 + 688) + 8 * ((v11 * v10) >> 6));
      v16 = *v15;
      v17 = v14 > 0x40 ? ((2 * v15[1]) << ~v12) | (v16 >> v12) : v16 >> v13;
      v19 = v9 | ((*(a1 + 728) & v17) << 8);
      v20 = *(a1 + 1000);
      if (v20)
      {
        internal::marisa::grimoire::trie::LoudsTrie::restore_(v20, a2, v19);
      }

      else
      {
        internal::marisa::grimoire::trie::Tail::restore((a1 + 744), a2, v19);
      }
    }

    else
    {
      std::string::push_back(a2, v9);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = internal::marisa::grimoire::vector::BitVector::select1(a1, a3) + ~a3;
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::match_(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  while (1)
  {
    while (1)
    {
      v10 = *(a1 + 1056) & a5;
      v11 = *(a1 + 1024) + 12 * v10;
      if (a5 == *(v11 + 4))
      {
        break;
      }

      if (((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        if (*(*(a1 + 640) + a5) != *(a2 + *a4))
        {
          return 0;
        }

        ++*a4;
        goto LABEL_27;
      }

      v13 = *(a1 + 1000);
      v14 = *(*(a1 + 640) + a5);
      v15 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a5);
      v16 = *(a1 + 720);
      v17 = v16 * v15;
      v18 = (v16 * v15) & 0x3F;
      v19 = v18 + v16;
      v20 = (*(a1 + 688) + 8 * ((v16 * v15) >> 6));
      v21 = *v20;
      if (v13)
      {
        if (v19 > 0x40)
        {
          v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v22 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v22) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((internal::marisa::grimoire::trie::LoudsTrie::match_(v26, a2, a3, a4, v25) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v19 > 0x40)
        {
          v24 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v24 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v24) << 8);
      }

      if ((internal::marisa::grimoire::trie::Tail::match((a1 + 744), a2, a3, a4, v25) & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      if (*a4 >= a3)
      {
        return 0;
      }

      a5 = internal::marisa::grimoire::vector::BitVector::select1(a1, a5) + ~a5;
    }

    v12 = *(v11 + 8);
    if (v12 <= 0xFFFFFEFF)
    {
      v23 = *(a1 + 1000);
      if (v23)
      {
        if ((internal::marisa::grimoire::trie::LoudsTrie::match_(v23, a2, a3, a4, v12) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((internal::marisa::grimoire::trie::Tail::match((a1 + 744), a2, a3, a4, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + *a4) != v12)
      {
        return 0;
      }

      ++*a4;
    }

    a5 = *(*(a1 + 1024) + 12 * v10);
    if (!a5)
    {
      return 1;
    }

    if (*a4 >= a3)
    {
      return 0;
    }
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *a6)
{
  while (1)
  {
    v12 = *(a1 + 1056) & a5;
    v13 = *(a1 + 1024) + 12 * v12;
    if (a5 != *(v13 + 4))
    {
      v15 = *(*(a1 + 640) + a5);
      if ((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        v16 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a5);
        v17 = *(a1 + 720);
        v18 = v17 * v16;
        v19 = (v17 * v16) & 0x3F;
        v20 = v19 + v17;
        v21 = (*(a1 + 688) + 8 * ((v17 * v16) >> 6));
        v22 = *v21;
        if (v20 > 0x40)
        {
          v23 = ((2 * v21[1]) << ~v18) | (v22 >> v18);
        }

        else
        {
          v23 = v22 >> v19;
        }

        v25 = v15 | ((*(a1 + 728) & v23) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v26, a2, a3, a4, v25, a6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!internal::marisa::grimoire::trie::Tail::prefix_match((a1 + 744), a2, a3, a4, v25, a6))
        {
          return 0;
        }
      }

      else
      {
        if (v15 != *(a2 + *a4))
        {
          return 0;
        }

        std::string::push_back(a6, v15);
        ++*a4;
      }

      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      a5 = internal::marisa::grimoire::vector::BitVector::select1(a1, a5) + ~a5;
      goto LABEL_22;
    }

    v14 = *(v13 + 8);
    if (v14 > 0xFFFFFEFF)
    {
      if (*(a2 + *a4) != v14)
      {
        return 0;
      }

      std::string::push_back(a6, v14);
      ++*a4;
      goto LABEL_21;
    }

    v24 = *(a1 + 1000);
    if (!v24)
    {
      break;
    }

    if ((internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v24, a2, a3, a4, v14, a6) & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    a5 = *(*(a1 + 1024) + 12 * v12);
    if (!a5)
    {
      return 1;
    }

LABEL_22:
    if (*a4 >= a3)
    {
      internal::marisa::grimoire::trie::LoudsTrie::restore_(a1, a6, a5);
      return 1;
    }
  }

  if (internal::marisa::grimoire::trie::Tail::prefix_match((a1 + 744), a2, a3, a4, v14, a6))
  {
    goto LABEL_21;
  }

  return 0;
}

void internal::marisa::grimoire::trie::Tail::~Tail(internal::marisa::grimoire::trie::Tail *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x1B2716AD0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x1B2716AD0](v4, 0x1000C8077774924);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x1B2716AD0](v5, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1B2716AD0](*this, 0x1000C8077774924);
  }
}

uint64_t internal::marisa::grimoire::trie::Config::parse_(internal::marisa::grimoire::trie::Config *this, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000034;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:52: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  if ((a2 & 0x7F) != 0)
  {
    *this = a2 & 0x7F;
  }

  internal::marisa::grimoire::trie::Config::parse_cache_level(this, a2);
  internal::marisa::grimoire::trie::Config::parse_tail_mode(this, a2);

  return internal::marisa::grimoire::trie::Config::parse_node_order(this, a2);
}

uint64_t internal::marisa::grimoire::trie::Config::parse_cache_level(uint64_t this, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000060;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:96: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(this + 8) = v3;
  return this;
}

uint64_t internal::marisa::grimoire::trie::Config::parse_tail_mode(uint64_t this, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000075;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:117: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(this + 12) = v2;
  return this;
}

uint64_t internal::marisa::grimoire::trie::Config::parse_node_order(uint64_t this, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F24C93B0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008ALL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:138: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(this + 16) = v2;
  return this;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 60)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = v5[1] + 8 * v8;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_1AF0AC100)));
      if (v14.i8[0])
      {
        *(v13 + 8 * v10) = v11;
      }

      if (v14.i8[4])
      {
        *(v13 + 8 * v10 + 8) = v11;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  v5[3] = v4;
  return result;
}

void *internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](8 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

void *internal::marisa::grimoire::vector::Vector<unsigned long long>::shrink(void *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = result[3];
  if (v2 != result[4])
  {

    return internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, v2);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::BitVector::map_(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  *(this + 6) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (*(this + 6) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:134: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(this + 7) = v4;
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map(this + 4, a2);
  internal::marisa::grimoire::vector::Vector<unsigned int>::map(this + 7, a2);

  return internal::marisa::grimoire::vector::Vector<unsigned int>::map(this + 10, a2);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08A450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08A510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08A5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  internal::marisa::grimoire::io::Mapper::map<unsigned long long>(this, (a1 + 16), v4 >> 3);
  internal::marisa::grimoire::io::Mapper::seek(this, 0);
  *(a1 + 24) = v5;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<unsigned long long>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x10000007ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:122: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  internal::marisa::grimoire::io::Mapper::map<internal::marisa::grimoire::vector::RankIndex>(this, (a1 + 16), v5);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v5;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<internal::marisa::grimoire::vector::RankIndex>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  internal::marisa::grimoire::io::Mapper::map<unsigned int>(this, (a1 + 16), v4 >> 2);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<unsigned int>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *internal::marisa::grimoire::vector::FlatVector::map_(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h";
    exception[2] = 0xA00000084;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h:132: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(this + 6) = v4;
  *(this + 14) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  result = internal::marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  *(this + 8) = *result;
  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, a2);
  }

  v3[3] = v2;
  return result;
}

void internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::realloc(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 12 * v6), 12 * (v2 - v6));
  }

  a1[3] = v2;
}

_DWORD *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[2] = *(v6 + 2);
      *v7 = v8;
      v7 += 3;
      v6 = (v6 + 12);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 61)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, a2);
  }

  v3[3] = v2;
  return result;
}

_DWORD *internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](4 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::BitVector::write_(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(this, a2);
  __buf = *(this + 6);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  v5 = *(this + 7);
  internal::marisa::grimoire::io::Writer::write_data(a2, &v5, 4uLL);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_(this + 64, a2);
  internal::marisa::grimoire::vector::Vector<unsigned int>::write_(this + 112, a2);
  return internal::marisa::grimoire::vector::Vector<unsigned int>::write_(this + 160, a2);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 8 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned long long>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 0);
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned long long>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 8 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 12 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<internal::marisa::grimoire::vector::RankIndex>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 4 * (*(a1 + 24) & 1));
}

uint64_t internal::marisa::grimoire::io::Writer::write<internal::marisa::grimoire::vector::RankIndex>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 12 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 4 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned int>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 4 * (*(a1 + 24) & 1));
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned int>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 4 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::FlatVector::write_(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(this, a2);
  LODWORD(__buf) = *(this + 6);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(this + 14);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  __buf = *(this + 8);
  return internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char const*>>,std::reverse_iterator<std::__wrap_iter<char const*>>>(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](24 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = result + 16;
    v7 = (a1[1] + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::Key>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = xmmword_1AF0AC0F0;
    v15 = xmmword_1AF0AC100;
    v16 = (v11 + 64);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v18, *v13.i8).u8[0])
      {
        *(v16 - 12) = v12;
      }

      if (vuzp1_s16(v18, *&v13).i8[2])
      {
        *(v16 - 6) = v12 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v16 = v12 + 2;
        v16[6] = v12 + 3;
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v17);
      v15 = vaddq_s64(v15, v17);
      v16 += 24;
    }

    while (((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  v19 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v11, v11 + 24 * v10, 0);
  v20 = 256;
  if (a5 != 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19 / *(a4 + 8));
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(a1 + 126, v21);
  a1[132] = v21 - 1;
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  LOBYTE(v71[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, v71);
  internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
  v61 = a3;
  v62 = a5;
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, &v65);
  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v63 = a4;
    do
    {
      v23 = a1[58];
      v24 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v22 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v28 = v23 - v22;
      if (v25 < v26)
      {
        while (1)
        {
          v29 = *(a2 + 8) + 24 * v25;
          if (*(v29 + 8) != v27)
          {
            break;
          }

          *(v29 + 12) = v28;
          v25 = (v25 + 1);
          if (v26 == v25)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v26)
      {
        v30 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v30)
        {
          MEMORY[0x1B2716AD0](v30, 0x1000C8077774924);
        }

        v31 = *(a2 + 8);
        v32 = *(v31 + 24 * v25 + 12);
        v33 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v64 = v23;
          v34 = v32;
          v35 = 24 * v25;
          v36 = (v25 << 32) + 0x100000000;
          do
          {
            if (*(*(v31 + v35) + v27) != *(*(v31 + v35 + 24) + v27))
            {
              *&v37 = v34;
              v65.n128_u64[0] = v36 + v25;
              v65.n128_u64[1] = v27 | (v37 << 32);
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
              v31 = *(a2 + 8);
              v34 = 0.0;
              LODWORD(v25) = v33;
            }

            v34 = v34 + *(v31 + v35 + 36);
            ++v33;
            v35 += 24;
            v36 += 0x100000000;
          }

          while (v26 != v33);
          v32 = v34;
          a4 = v63;
          v23 = v64;
        }

        v65.n128_u32[0] = v25;
        v65.n128_u32[1] = v26;
        v65.n128_u64[1] = v27 | (LODWORD(v32) << 32);
        v38 = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v38);
        }

        v39 = v68[1];
        if (v23 == v22)
        {
          a1[133] = v68[1];
        }

        if (v39)
        {
          v40 = 0;
          do
          {
            v41 = (*(&v67 + 1) + 16 * v40);
            v42 = *(v41 + 2);
            v43 = *(a2 + 8) + 24 * *v41;
            v44 = *(v43 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = *(v41 + 2);
              do
              {
                v48 = v47;
                v47 = v45;
                v49 = (*(a2 + 8) + 24 * *v41);
                v50 = *v41;
                while (++v50 < *(v41 + 1))
                {
                  v51 = *v49;
                  v52 = v49[3];
                  v49 += 3;
                  if (*(v51 + v47) != *(v52 + v47))
                  {
                    v46 = v48;
                    LODWORD(v44) = v47;
                    goto LABEL_45;
                  }
                }

                v45 = v47 + 1;
              }

              while (v47 + 1 != v44);
            }

LABEL_45:
            v53 = v41[3];
            v54 = a1[127] + 12 * (((32 * v28) ^ v28 ^ *(*v43 + v42)) & a1[132]);
            if (*(v54 + 8) < v53)
            {
              v55 = a1[81];
              *v54 = v28;
              *(v54 + 4) = v55;
              *(v54 + 8) = v53;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v65.n128_u8[0] = *(*(*(a2 + 8) + 24 * *v41) + v46);
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v56 = *(v41 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v41) + v56;
              v65.n128_u64[1] = (v44 - v56);
              v65.n128_f32[3] = v41[3];
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(v71, &v65);
            }

            *(v41 + 2) = v44;
            std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, v41);
            internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
            ++v40;
          }

          while (v40 < v68[1]);
        }
      }

LABEL_51:
      internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
      v22 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  internal::marisa::grimoire::vector::BitVector::build(a1, v62 == 1, 1);
  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1 + 624);
  internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::Key>(a1, a2, v61);
  v57 = *a2;
  *a2 = v71[0];
  v71[0] = v57;
  v58 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v58;
  v59 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v59;
  LOBYTE(v58) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v58;
  if (v67)
  {
    MEMORY[0x1B2716AD0](v67, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1B2716AD0](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08BBA4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1B2716AD0](a11, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1B2716AD0](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
  }

  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::vector::FlatVector::build(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  internal::marisa::grimoire::vector::FlatVector::build_(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08BD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

__n128 internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 59)
    {
      v7 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::realloc(a1, v8);
    v4 = a1[3];
  }

  result = *a2;
  *(a1[1] + 16 * v4) = *a2;
  ++a1[3];
  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(result, v8);
    v4 = v3[3];
  }

  v9 = v3[1] + 24 * v4;
  *v9 = *a2;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 12) = *(a2 + 12);
  *(v9 + 16) = *(a2 + 16);
  ++v3[3];
  return result;
}

_BYTE *internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(result, v2);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1B2716AD0](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08C08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Key>(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 + a3);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 + a3);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
  }

  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 + a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 + a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 + a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Key *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Key>(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a1 + a3);
    v8 = (*a2 + a3);
    while (v6)
    {
      v9 = *v7;
      v10 = *v8;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      ++v7;
      ++v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

_BYTE *internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

void *std::deque<internal::marisa::grimoire::trie::Range>::push_back(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = 341 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<internal::marisa::grimoire::trie::Range>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x155)) + 12 * (v7 % 0x155);
  v9 = *a2;
  *(v8 + 8) = *(a2 + 2);
  *v8 = v9;
  ++v3[5];
  return result;
}

void *std::deque<internal::marisa::grimoire::trie::Range>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *&>(a1, &v10);
}

void sub_1AF08C95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result, v11);
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

const void **std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_front<internal::marisa::grimoire::trie::Range *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result, v9);
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

void *std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result[4], v11);
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

const void **std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_front<internal::marisa::grimoire::trie::Range *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 129)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_1AF08CF94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u32[0] = a2[-1].n128_u32[3];
      if (a7.n128_f32[0] > a1->n128_f32[3])
      {
        a7 = *a1;
        *a1 = a2[-1];
        a2[-1] = a7;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        v17.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, v14, a3, v15, a5, a7);
        v18.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13], v17);

        a7.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(a5, &a5[v13], &a5[v13], &a5[a4], a1, v18);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, v14, a3, v15, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v16).n128_u64[0];
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2);
    }
  }

  return a7.n128_f64[0];
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 28);
        v6 = *(v4 + 12);
        v4 = v2;
        if (v5 > v6)
        {
          v10 = *v2;
          v11 = *(v2 + 8);
          v7 = v3;
          while (1)
          {
            *(result + v7 + 16) = *(result + v7);
            if (!v7)
            {
              break;
            }

            v8 = *(result + v7 - 4);
            v7 -= 16;
            if (v5 <= v8)
            {
              v9 = result + v7 + 16;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v10;
          *(v9 + 8) = v11;
          *(v9 + 12) = v5;
        }

        v2 = v4 + 16;
        v3 += 16;
      }

      while (v4 + 16 != a2);
    }
  }

  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

double std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f32[3] <= a1->n128_f32[3])
    {
      v7 = *a1++;
      a6 = v7;
    }

    else
    {
      v6 = *a3++;
      a6 = v6;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      result.n128_u32[0] = a2->n128_u32[3];
      v13 = -a5;
      while (1)
      {
        v14 = &a1[v12];
        if (result.n128_f32[0] > a1[v12].n128_f32[3])
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v39 = a3;
      v40 = a8;
      if (-v13 >= v10)
      {
        if (v13 == -1)
        {
          v43 = a1[v12];
          a1[v12] = *a2;
          result = v43;
          *a2 = v43;
          return result;
        }

        v26 = v16 / 2;
        v20 = &a1[v16 / 2 + v12];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v27 = a3 - a2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v30 = v29->n128_f32[3];
            v31 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (v30 > v20->n128_f32[3])
            {
              v18 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - a2;
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[v10 / 2];
        if (v14 == a2)
        {
          v25 = &a1[v12];
          v20 = &a1[v12];
        }

        else
        {
          v19 = (a2 - a1 - v12 * 16) >> 4;
          v20 = &a1[v12];
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[v19 >> 1];
            v23 = v22->n128_f32[3];
            v24 = v22 + 1;
            v19 += ~(v19 >> 1);
            if (v18->n128_f32[3] > v23)
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = (v25 - a1 - v12 * 16) >> 4;
      }

      a5 = -(v26 + v13);
      v32 = v10 - v17;
      v33 = v17;
      v34 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,internal::marisa::grimoire::trie::WeightedRange *>(v20, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v26 + v35 >= v10 - (v26 + v35) - v13)
      {
        v38 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(v34, v18, v39, a4, a5, v32, a7, v40);
        v18 = v20;
        v32 = v38;
        a5 = v26;
        a8 = v40;
        a3 = v36;
      }

      else
      {
        v37 = v26;
        a8 = v40;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(v14, v20, v34, a4, v37, v35, a7, v40);
        v14 = v36;
        a3 = v39;
      }

      v10 = v32;
      a1 = v14;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    result.n128_u64[0] = std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a3, a4, a5, v10, a7, result).n128_u64[0];
  }

  return result;
}

__n128 std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    result = *a1;
    *a3 = *a1;
    v4 = a1 + 1;
    if (&a1[1] != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = a1;
        v8 = v6;
        a1 = v4;
        v9 = ++v6;
        if (v7[1].n128_f32[3] > v8->n128_f32[3])
        {
          *v6 = *v8;
          v9 = a3;
          if (v8 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = (a3 + v10);
              if (v7[1].n128_f32[3] <= *(&a3->n128_f32[-1] + v10))
              {
                break;
              }

              *v9 = v9[-1];
              v10 -= 16;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }
        }

        result = *a1;
        *v9 = *a1;
        v4 = a1 + 1;
        v5 += 16;
      }

      while (&a1[1] != a2);
    }
  }

  return result;
}

__n128 std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src, __n128 result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v14 = -__src;
      v15 = __src;
      v16 = a1;
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 4;
        v14 -= 16;
      }

      while (v16 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f32[3] <= *(__src + 12))
        {
          v19 = *__src;
          __src += 16;
          result = v19;
        }

        else
        {
          v18 = *a2++;
          result = v18;
        }

        *a1++ = result;
        if (v15 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v14));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      *(__src + v8 * 16) = result;
      ++v8;
    }

    while (&a2[v8] != a3);
    v9 = (__src + v8 * 16);
    while (a2 != a1)
    {
      v10 = v9[-1].n128_f32[3];
      v11 = a2[-1].n128_f32[3];
      v12 = v10 <= v11;
      if (v10 <= v11)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = a2 - 1;
      }

      result = *v13;
      a3[-1] = *v13;
      --a3;
      if (v12)
      {
        --v9;
      }

      else
      {
        --a2;
      }

      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        result = v9[-1];
        a3[v20--] = result;
        --v9;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,internal::marisa::grimoire::trie::WeightedRange *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      v6 = a3 - a2;
      memmove(__src, __src + 16, a3 - a2);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *>(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 4;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 4)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 16;
      v7 = a1 + 16;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 16;
        v9 = v6 == a3;
        v6 += 16;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = (a2 - a1) >> 4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[16 * v11];
    do
    {
      v14 = *(v13 - 1);
      v13 -= 16;
      v15 = &v13[v3];
      v16 = v13;
      do
      {
        v17 = v16;
        v16 = v15;
        *v17 = *v15;
        v18 = __OFSUB__(v4, (a3 - v15) >> 4);
        v20 = v4 - ((a3 - v15) >> 4);
        v19 = (v20 < 0) ^ v18;
        v15 = &a1[16 * v20];
        if (v19)
        {
          v15 = v16 + v3;
        }
      }

      while (v15 != v13);
      *v16 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](void *a1)
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
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<internal::marisa::grimoire::trie::Range *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<internal::marisa::grimoire::trie::Range *>::~__split_buffer(uint64_t a1)
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

uint64_t internal::marisa::grimoire::vector::FlatVector::build_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
    v10 = 32 - __clz(v5);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 != 0;
  v13 = (v11 * v4 + 63) >> 6;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(a1, v14);
  if (v14)
  {
    *(*(a1 + 8) + 8 * *(a1 + 24) - 8) = 0;
  }

  *(a1 + 48) = v11;
  if (v11)
  {
    *(a1 + 56) = 0xFFFFFFFF >> -v11;
  }

  v16 = *(a2 + 24);
  *(a1 + 64) = v16;
  if (v16)
  {
    v17 = 0;
    do
    {
      result = internal::marisa::grimoire::vector::FlatVector::set(a1, v17, *(*(a2 + 16) + 4 * v17));
      ++v17;
    }

    while (v17 < *(a2 + 24));
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::FlatVector::set(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 48);
  v4 = (v3 * a2) & 0x3F;
  v5 = *(this + 56);
  v6 = (*(this + 8) + 8 * ((v3 * a2) >> 6));
  v7 = v5 & a3;
  *v6 = *v6 & ~(v5 << (v3 * a2)) | (v7 << (v3 * a2));
  if ((v4 + v3) >= 0x41)
  {
    v6[1] = v6[1] & ~(v5 >> -v4) | (v7 >> -v4);
  }

  return this;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,std::pair<unsigned int,unsigned int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], *v39 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], *v55 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < *v5 || v7 >= v6 && v5[3] < v5[1])
        {
          v9 = v5[2];
          v8 = v5[3];
          v10 = v5[1];
          v5[2] = v7;
          v4[1] = v10;
          v11 = result;
          if (v5 != result)
          {
            v12 = v3;
            do
            {
              v13 = *(result + v12 - 8);
              if (v13 <= v9)
              {
                if (v13 < v9)
                {
                  v11 = v5;
                  goto LABEL_17;
                }

                v11 = (result + v12);
                v14 = *(result + v12 - 4);
                if (v14 <= v8)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                v14 = *(result + v12 - 4);
              }

              v5 -= 2;
              v15 = (result + v12);
              *v15 = v13;
              v15[1] = v14;
              v12 -= 8;
            }

            while (v12);
            v11 = result;
          }

LABEL_17:
          *v11 = v9;
          v11[1] = v8;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1AF0AC0F0;
    v13 = xmmword_1AF0AC100;
    v14 = (v9 + 64);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 12) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 6) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[6] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 24;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v9 + 24 * v8, 0);
  v18 = 256;
  if (a5 != 1)
  {
    v18 = 1;
  }

  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17 / *(a4 + 8));
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(a1 + 126, v19);
  a1[132] = v19 - 1;
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  LOBYTE(v71[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, v71);
  internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, &v65);
  v20 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v62 = a4;
    do
    {
      v21 = a1[58];
      v22 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v20 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v64 = v21;
      v26 = v21 - v20;
      if (v23 < v24)
      {
        while (1)
        {
          v27 = *(a2 + 8) + 24 * v23;
          if (*(v27 + 8) != v25)
          {
            break;
          }

          *(v27 + 12) = v26;
          v23 = (v23 + 1);
          if (v24 == v23)
          {
            goto LABEL_51;
          }
        }
      }

      if (v23 != v24)
      {
        v28 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v28)
        {
          MEMORY[0x1B2716AD0](v28, 0x1000C8077774924);
        }

        v29 = *(a2 + 8);
        v30 = *(v29 + 24 * v23 + 12);
        v31 = v23 + 1;
        if (v23 + 1 < v24)
        {
          v63 = v20;
          v32 = v30;
          v33 = 24 * v23;
          v34 = (v23 << 32) + 0x100000000;
          do
          {
            if (*(*(v29 + v33) - v25 - 1) != *(*(v29 + v33 + 24) - v25 - 1))
            {
              *&v35 = v32;
              v65.n128_u64[0] = v34 + v23;
              v65.n128_u64[1] = v25 | (v35 << 32);
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
              v29 = *(a2 + 8);
              v32 = 0.0;
              LODWORD(v23) = v31;
            }

            v32 = v32 + *(v29 + v33 + 36);
            ++v31;
            v33 += 24;
            v34 += 0x100000000;
          }

          while (v24 != v31);
          v30 = v32;
          a4 = v62;
          v20 = v63;
        }

        v65.n128_u32[0] = v23;
        v65.n128_u32[1] = v24;
        v65.n128_u64[1] = v25 | (LODWORD(v30) << 32);
        v36 = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v36);
        }

        v37 = v68[1];
        if (v64 == v20)
        {
          a1[133] = v68[1];
        }

        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = (*(&v67 + 1) + 16 * v38);
            v40 = *(v39 + 2);
            v41 = *(a2 + 8);
            v42 = *(v41 + 24 * *v39 + 8);
            v43 = v40 + 1;
            if (v40 + 1 >= v42)
            {
              v44 = *(v39 + 2);
              LODWORD(v42) = v40 + 1;
            }

            else
            {
              v44 = v42 - 1;
              v45 = (v41 + 24 * *v39);
              v46 = *(v39 + 2);
              do
              {
                v47 = v46;
                v46 = v43;
                v48 = v45;
                v49 = *v39;
                while (++v49 < *(v39 + 1))
                {
                  v50 = *v48;
                  v51 = v48[3];
                  v48 += 3;
                  if (*(v50 + ~v47 - 1) != *(v51 + ~v47 - 1))
                  {
                    v44 = v47;
                    LODWORD(v42) = v43;
                    goto LABEL_45;
                  }
                }

                ++v43;
              }

              while (v46 + 1 != v42);
            }

LABEL_45:
            v52 = a1[81];
            v53 = v39[3];
            v54 = a1[127] + 12 * (a1[132] & v52);
            if (*(v54 + 8) < v53)
            {
              *v54 = v26;
              *(v54 + 4) = v52;
              *(v54 + 8) = v53;
              v40 = *(v39 + 2);
            }

            if (v44 == v40)
            {
              v65.n128_u8[0] = *(~v44 + *(*(a2 + 8) + 24 * *v39));
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v55 = *(v39 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v39) - v55;
              v65.n128_u64[1] = (v42 - v55);
              v65.n128_f32[3] = v39[3];
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(v71, &v65);
            }

            *(v39 + 2) = v42;
            std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, v39);
            internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
            ++v38;
          }

          while (v38 < v68[1]);
        }
      }

LABEL_51:
      internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
      v20 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  internal::marisa::grimoire::vector::BitVector::build(a1, a5 == 1, 1);
  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1 + 624);
  internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, a3);
  v56 = *a2;
  *a2 = v71[0];
  v71[0] = v56;
  v57 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v57;
  v58 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v58;
  LOBYTE(v57) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v57;
  if (v67)
  {
    MEMORY[0x1B2716AD0](v67, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1B2716AD0](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1AF08FEAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1B2716AD0](a11, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1B2716AD0](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
  }

  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1B2716AD0](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF090084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::ReverseKey>(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 - a3 - 1);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 - a3 - 1);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::ReverseKey *>(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
  }

  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(~a4 + *a1);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(~a4 + *a2);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(~a4 + *a3);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::ReverseKey *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::ReverseKey>(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 + ~a3);
    v8 = (*a1 + ~a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 3;
      *v7 = v8;
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1B2716AD0);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  *(a1 + 16) = internal::marisa::grimoire::io::Mapper::map_data(this, v4);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v4;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned char>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, -*(a1 + 24) & 7);
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, a3);
}

double internal::marisa::grimoire::trie::Tail::Tail(internal::marisa::grimoire::trie::Tail *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  return result;
}

uint64_t internal::marisa::grimoire::trie::Tail::build(__int128 *a1, uint64_t a2, __int128 *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x200000011;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:17: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_28;
  }

  if (a4 == 0x2000)
  {
    goto LABEL_15;
  }

  if (a4 != 4096)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000028;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:40: MARISA_CODE_ERROR: undefined tail mode";
LABEL_28:
    exception[3] = v17;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    a4 = 4096;
    while (1)
    {
      v7 = *(a2 + 8) + 16 * v6;
      v8 = *(v7 + 8);
      if (v8)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        goto LABEL_15;
      }
    }

    v9 = *v7;
    v10 = -v8;
    while (*(v9 + 1 + v10))
    {
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_11;
      }
    }

    a4 = 0x2000;
  }

  else
  {
    a4 = 4096;
  }

LABEL_15:
  memset(v18, 0, 41);
  memset(v19, 0, 41);
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v19[3] = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  internal::marisa::grimoire::trie::Tail::build_(v18, a2, a3, a4);
  v12 = *a1;
  *a1 = v18[0];
  v18[0] = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *&v18[1];
  *&v18[1] = v13;
  v14 = *(a1 + 24);
  *(a1 + 24) = *(&v18[1] + 8);
  *(&v18[1] + 8) = v14;
  LOBYTE(v13) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v18[2]);
  BYTE8(v18[2]) = v13;
  internal::marisa::grimoire::vector::BitVector::swap((a1 + 3), v19);
  if (v24)
  {
    MEMORY[0x1B2716AD0](v24, 0x1000C8077774924);
  }

  if (v22)
  {
    MEMORY[0x1B2716AD0](v22, 0x1000C8077774924);
  }

  if (v20)
  {
    MEMORY[0x1B2716AD0](v20, 0x1000C8077774924);
  }

  if (*&v19[0])
  {
    MEMORY[0x1B2716AD0](*&v19[0], 0x1000C8077774924);
  }

  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1B2716AD0](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::Tail::build_(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_1AF0AC0F0;
    v13 = xmmword_1AF0AC100;
    v14 = (v9 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[4] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v9, v9 + 16 * v8, 0);
  memset(v37, 0, 41);
  v17 = *(a2 + 24);
  LODWORD(v36[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v37, v17, v36);
  v36[0] = 0;
  v36[1] = 0;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v36;
    do
    {
      --v18;
      v20 = *(a2 + 8) + 16 * v18;
      v21 = *(v20 + 8);
      if (!v21)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F24C93B0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        exception[2] = 0x4000000ACLL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:172: MARISA_RANGE_ERROR: current.length() == 0";
      }

      v22 = 0;
      v23 = 0;
      v24 = *(v19 + 2);
      while (v24 != v23)
      {
        if (*(*v19 + v22) != *(*v20 + v22))
        {
          goto LABEL_19;
        }

        ++v23;
        --v22;
        if (v21 == v23)
        {
          goto LABEL_20;
        }
      }

      v23 = *(v19 + 2);
LABEL_19:
      if (v23 != v21)
      {
        v25 = *(&v37[0] + 1);
        goto LABEL_23;
      }

LABEL_20:
      v25 = *(&v37[0] + 1);
      if (v24)
      {
        *(*(&v37[0] + 1) + 4 * *(v20 + 12)) = v24 - v21 + *(*(&v37[0] + 1) + 4 * *(v19 + 3));
        goto LABEL_35;
      }

LABEL_23:
      *(v25 + 4 * *(v20 + 12)) = *(a1 + 24);
      v26 = *(v20 + 8);
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v35 = *(*v20 - v26 + i + 1);
          internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1, &v35);
          v26 = *(v20 + 8);
        }

        if (a4 != 4096)
        {
          if (v26 >= 2)
          {
            v28 = 1;
            do
            {
              internal::marisa::grimoire::vector::BitVector::push_back((a1 + 48), 0);
              ++v28;
            }

            while (v28 < *(v20 + 8));
          }

LABEL_33:
          internal::marisa::grimoire::vector::BitVector::push_back((a1 + 48), 1);
          goto LABEL_34;
        }
      }

      else if (a4 != 4096)
      {
        goto LABEL_33;
      }

      v35 = 0;
      internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1, &v35);
LABEL_34:
      if (*(a1 + 28))
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        *v34 = &unk_1F24C93B0;
        v34[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        v34[2] = 0x7000000C2;
        v34[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:194: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
      }

LABEL_35:
      v19 = v20;
    }

    while (v18);
  }

  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1);
  v29 = *a3;
  *a3 = v37[0];
  v37[0] = v29;
  v30 = *(a3 + 2);
  *(a3 + 2) = *&v37[1];
  *&v37[1] = v30;
  v31 = *(a3 + 24);
  *(a3 + 24) = *(&v37[1] + 8);
  *(&v37[1] + 8) = v31;
  LOBYTE(v30) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v37[2]);
  result = v29;
  BYTE8(v37[2]) = v30;
  if (v29)
  {
    return MEMORY[0x1B2716AD0](v29, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF090EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B2716AD0](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *internal::marisa::grimoire::trie::Tail::swap(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::trie::Tail *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);

  return internal::marisa::grimoire::vector::BitVector::swap((this + 48), (a2 + 48));
}

uint64_t internal::marisa::grimoire::trie::Tail::map(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  internal::marisa::grimoire::vector::Vector<char>::map(v8, a2);
  internal::marisa::grimoire::vector::BitVector::map(v9, a2);
  v4 = *this;
  *this = v8[0];
  v8[0] = v4;
  v5 = *(this + 2);
  *(this + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(this + 24);
  *(this + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  internal::marisa::grimoire::vector::BitVector::swap((this + 48), v9);
  if (v14)
  {
    MEMORY[0x1B2716AD0](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x1B2716AD0](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x1B2716AD0](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x1B2716AD0](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1B2716AD0](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::Tail::write(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::write_(this, a2);

  return internal::marisa::grimoire::vector::BitVector::write_((this + 48), a2);
}

void internal::marisa::grimoire::trie::Tail::restore(void *a1, std::string *this, unint64_t a3)
{
  v3 = a3;
  if (a1[12])
  {
    do
    {
      std::string::push_back(this, *(a1[2] + v3));
      v6 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = a1[2];
    v8 = *(v7 + a3);
    if (v8)
    {
      v9 = (a3 + v7 + 1);
      do
      {
        std::string::push_back(this, v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }
  }
}

uint64_t internal::marisa::grimoire::trie::Tail::match(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = a1[2];
  if (a1[12])
  {
    v6 = *a4;
    do
    {
      if (*(v5 + a5) != *(a2 + v6))
      {
        break;
      }

      *a4 = ++v6;
      if ((*(a1[8] + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        return 1;
      }

      ++a5;
    }

    while (v6 < a3);
  }

  else
  {
    v7 = (v5 + a5);
    v8 = *a4;
    v11 = *v7;
    v9 = v7 + 1;
    v10 = v11;
    while (v10 == *(a2 + v8))
    {
      *a4 = ++v8;
      v10 = *v9;
      if (!*v9)
      {
        return 1;
      }

      ++v9;
      if (v8 >= a3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL internal::marisa::grimoire::trie::Tail::prefix_match(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *this)
{
  v7 = a5;
  if (a1[12])
  {
    v12 = *a4;
    while (1)
    {
      v13 = *(a1[2] + v7);
      v14 = *(a2 + v12);
      v15 = v13 == v14;
      if (v13 != v14)
      {
        break;
      }

      std::string::push_back(this, v13);
      v12 = *a4 + 1;
      *a4 = v12;
      if ((*(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }

      ++v7;
      if (v12 >= a3)
      {
        do
        {
          std::string::push_back(this, *(a1[2] + v7));
          v16 = *(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7;
          ++v7;
        }

        while ((v16 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v17 = a1[2];
    v18 = *a4;
    v19 = v17 + a5 - *a4;
    v20 = *(v17 + a5);
    v21 = *a4;
    while (1)
    {
      v22 = *(a2 + v21);
      v15 = v20 == v22;
      if (v20 != v22)
      {
        break;
      }

      std::string::push_back(this, v20);
      v23 = *a4;
      v21 = *a4 + 1;
      *a4 = v21;
      v20 = *(v19 + v21);
      if (!v20)
      {
        break;
      }

      if (v21 >= a3)
      {
        v24 = (v7 - v18 + v17 + v23 + 2);
        do
        {
          std::string::push_back(this, v20);
          v25 = *v24++;
          v20 = v25;
        }

        while (v25);
        return 1;
      }
    }
  }

  return v15;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = (v5[1] + 4 * v8 + 8);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC100)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = v11;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = v11;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC0F0)))).i32[1])
      {
        *v13 = v11;
        v13[1] = v11;
      }

      v10 += 4;
      v13 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v5[3] = v4;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<char>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B2716AD0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1AF0914D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B2716AD0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 < 11)
  {
    v53 = 0;
    goto LABEL_77;
  }

  v53 = 0;
  v7 = a1;
  v8 = a1;
  do
  {
    v9 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Entry>(v8, v8 + 16 * (v6 >> 1), v4 - 16, a3);
    v10 = v9;
    v11 = v8;
    v5 = v4;
    v12 = v8;
    v13 = v4;
    while (v11 < v5)
    {
      v14 = *(v11 + 8);
      v15 = a3 >= v14 ? -1 : *(*v11 - a3);
      if (v15 > v9)
      {
        break;
      }

      if (v15 == v9)
      {
        v16 = *v11;
        v17 = *(v11 + 12);
        *v11 = *v12;
        *(v11 + 8) = *(v12 + 8);
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 12) = v17;
        v12 += 16;
      }

LABEL_11:
      v11 += 16;
    }

    if (v11 < v5)
    {
      v18 = v5 - 16;
      do
      {
        v5 = v18;
        v19 = *(v18 + 8);
        if (a3 >= v19)
        {
          v20 = -1;
        }

        else
        {
          v20 = *(*v5 - a3);
        }

        if (v20 < v9)
        {
          break;
        }

        if (v20 == v9)
        {
          v21 = *(v13 - 16);
          v13 -= 16;
          v22 = *v5;
          v23 = *(v5 + 12);
          *v5 = v21;
          *(v5 + 8) = *(v13 + 8);
          *v13 = v22;
          *(v13 + 8) = v19;
          *(v13 + 12) = v23;
        }

        v18 = v5 - 16;
      }

      while (v11 < v5);
    }

    if (v11 < v5)
    {
      v24 = *v11;
      *v11 = *v5;
      v25 = *(v5 + 8);
      *v5 = v24;
      v26 = *(v11 + 8);
      *(v11 + 8) = v25;
      *(v5 + 8) = v26;
      goto LABEL_11;
    }

    while (v12 > v8)
    {
      v28 = *(v12 - 16);
      v12 -= 16;
      v27 = v28;
      v29 = *(v11 - 16);
      v11 -= 16;
      *v12 = v29;
      v30 = *(v11 + 8);
      *v11 = v27;
      v31 = *(v12 + 8);
      *(v12 + 8) = v30;
      *(v11 + 8) = v31;
    }

    while (v13 < v4)
    {
      v32 = *v13;
      *v13 = *v5;
      v33 = *(v5 + 8);
      *v5 = v32;
      v34 = *(v13 + 8);
      *(v13 + 8) = v33;
      *(v5 + 8) = v34;
      v13 += 16;
      v5 += 16;
    }

    v35 = v11 - v7;
    v36 = (v11 - v7) >> 4;
    v37 = v5 - v11;
    v38 = (v5 - v11) >> 4;
    if (v36 <= v38)
    {
      v39 = (v4 - v5) >> 4;
      if (v39 <= v38)
      {
        if (v35 == 16)
        {
          v42 = v53 + 1;
        }

        else
        {
          if (v36 < 2)
          {
LABEL_52:
            if (v4 - v5 == 16)
            {
              v44 = v53 + 1;
            }

            else
            {
              v44 = v53;
              if (v39 >= 2)
              {
                v45 = v4;
                v46 = v38;
                v47 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v5, v45, a3);
                v38 = v46;
                v44 = v47 + v53;
              }
            }

            if (v37 == 16)
            {
              v53 = v44 + 1;
              v4 = v5;
              v5 = v11;
            }

            else
            {
              if (v10 == -1)
              {
                v48 = v44 + 1;
              }

              else
              {
                v48 = v44;
              }

              if (v10 == -1)
              {
                v49 = a3;
              }

              else
              {
                v49 = a3 + 1;
              }

              if (v10 == -1)
              {
                v50 = v5;
              }

              else
              {
                v50 = v11;
              }

              if (v38 >= 2)
              {
                v44 = v48;
              }

              v53 = v44;
              if (v38 >= 2)
              {
                a3 = v49;
              }

              v4 = v5;
              if (v38 >= 2)
              {
                v5 = v50;
              }

              else
              {
                v5 = v11;
              }
            }

            goto LABEL_74;
          }

          v43 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v8, v11, a3);
          v39 = (v4 - v5) >> 4;
          v38 = (v5 - v11) >> 4;
          v42 = v43 + v53;
        }

        v53 = v42;
        goto LABEL_52;
      }
    }

    if (v37 == 16)
    {
      v40 = v53;
      goto LABEL_32;
    }

    v40 = v53;
    if (v38 >= 2)
    {
      if (v9 == -1)
      {
LABEL_32:
        ++v40;
      }

      else
      {
        v40 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v11, v5, a3 + 1) + v53;
      }
    }

    v41 = v4 - v5;
    if (v36 >= (v4 - v5) >> 4)
    {
      if (v41 == 16)
      {
        ++v40;
      }

      else if (v41 >> 4 >= 2)
      {
        v40 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v5, v4, a3);
      }

      v53 = v40;
      v4 = v11;
      v5 = v8;
    }

    else
    {
      if (v35 == 16)
      {
        ++v40;
      }

      else if (v36 >= 2)
      {
        v40 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Entry *>(v8, v11, a3);
      }

      v53 = v40;
    }

LABEL_74:
    v6 = (v4 - v5) >> 4;
    v7 = v5;
    v8 = v5;
  }

  while (v6 > 10);
LABEL_77:
  if (v6 < 2)
  {
    return v53;
  }

  else
  {
    return internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Entry *>(v5, v4, a3) + v53;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 - a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 - a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 - a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 + 16);
  if (a1 + 16 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v14 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 2;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Entry>((v8 - 2), v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 2);
        *(v8 - 2) = *v8;
        v12 = v8[1];
        *v8 = v11;
        v13 = *(v8 - 1);
        *(v8 - 1) = v12;
        v8[1] = v13;
        v8 -= 2;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v14 = v10 != 0;
    }

    v7 += v14;
    v3 += 2;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 - a3);
    v8 = (*a1 - a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

uint64_t internal::marisa::grimoire::vector::BitVector::rank1(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t internal::marisa::grimoire::vector::BitVector::select0(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

unint64_t internal::marisa::grimoire::vector::anonymous namespace::select_bit(internal::marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

unint64_t internal::marisa::grimoire::vector::BitVector::select1(internal::marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

void internal::marisa::grimoire::vector::BitVector::build_index(internal::marisa::grimoire::vector::BitVector *this, const internal::marisa::grimoire::vector::BitVector *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a2 + 6);
  v9 = v8 >> 9;
  if ((v8 & 0x1FF) != 0)
  {
    ++v9;
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::resize(this + 8, v9 + 1);
  v10 = *(v6 + 3);
  if (!v10)
  {
    LODWORD(v13) = 0;
    if ((v8 & 0x1FF) == 0)
    {
      goto LABEL_55;
    }

LABEL_35:
    v32 = (v8 - 1) >> 9;
    v33 = ((v8 - 1) >> 6) & 7;
    if (v33 > 3)
    {
      if ((((v8 - 1) >> 6) & 7) > 5)
      {
        if (v33 == 7)
        {
          goto LABEL_55;
        }

        v34 = *(this + 9);
        v40 = (v34 + 12 * v32);
        v41 = v40[2];
        v36 = v13 - *v40;
        goto LABEL_54;
      }

      if (v33 != 4)
      {
        v34 = *(this + 9);
        v44 = (v34 + 12 * v32);
        v45 = v44[2];
        v36 = v13 - *v44;
LABEL_53:
        v41 = v45 & 0xFFFC01FF | ((v36 & 0x1FF) << 9);
        *(v34 + 12 * v32 + 8) = v41;
LABEL_54:
        *(v34 + 12 * v32 + 8) = v41 & 0xF803FFFF | ((v36 & 0x1FF) << 18);
        goto LABEL_55;
      }

      v34 = *(this + 9);
      v36 = v13 - *(v34 + 12 * v32);
LABEL_52:
      v47 = v34 + 12 * v32;
      v45 = *(v47 + 8) & 0xFFFFFE00 | v36 & 0x1FF;
      *(v47 + 8) = v45;
      goto LABEL_53;
    }

    if ((((v8 - 1) >> 6) & 7) > 1)
    {
      if (v33 != 2)
      {
        v34 = *(this + 9);
        v46 = (v34 + 12 * v32);
        v43 = v46[1];
        v36 = v13 - *v46;
        goto LABEL_51;
      }

      v34 = *(this + 9);
      v38 = (v34 + 12 * v32);
      v39 = v38[1];
      v36 = v13 - *v38;
    }

    else
    {
      if (v33)
      {
        v34 = *(this + 9);
        v42 = (v34 + 12 * v32);
        v37 = v42[1];
        v36 = v13 - *v42;
      }

      else
      {
        v34 = *(this + 9);
        v35 = (v34 + 12 * v32);
        v36 = v13 - *v35;
        v37 = v35[1] & 0xFFFFFF80 | v36 & 0x7F;
        v35[1] = v37;
      }

      v39 = v37 & 0xFFFF807F | (v36 << 7);
      *(v34 + 12 * v32 + 4) = v39;
    }

    v43 = v39 & 0xFF807FFF | (v36 << 15);
    *(v34 + 12 * v32 + 4) = v43;
LABEL_51:
    *(v34 + 12 * v32 + 4) = v43 & 0x7FFFFF | (v36 << 23);
    goto LABEL_52;
  }

  v48 = v8 & 0x1FF;
  v49 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v52 = *(v6 + 3);
  do
  {
    v15 = v14 & 7;
    v16 = *(this + 9) + 12 * (v11 >> 9);
    if (v15 <= 3)
    {
      if ((v14 & 7u) > 1uLL)
      {
        if (v15 == 2)
        {
          v17 = *(v16 + 4) & 0xFFFF807F | ((v13 - *v16) << 7);
        }

        else
        {
          v17 = *(v16 + 4) & 0xFF807FFF | ((v13 - *v16) << 15);
        }
      }

      else
      {
        if ((v14 & 7) == 0)
        {
          *v16 = v13;
          goto LABEL_22;
        }

        v17 = *(v16 + 4) & 0xFFFFFF80 | (v13 - *v16) & 0x7F;
      }

      goto LABEL_19;
    }

    if ((v14 & 7u) > 5uLL)
    {
      if (v15 == 6)
      {
        v18 = *(v16 + 8) & 0xFFFC01FF | (((v13 - *v16) & 0x1FF) << 9);
      }

      else
      {
        v18 = *(v16 + 8) & 0xF803FFFF | (((v13 - *v16) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v15 == 4)
      {
        v17 = *(v16 + 4) & 0x7FFFFF | ((v13 - *v16) << 23);
LABEL_19:
        *(v16 + 4) = v17;
        goto LABEL_22;
      }

      v18 = *(v16 + 8) & 0xFFFFFE00 | (v13 - *v16) & 0x1FF;
    }

    *(v16 + 8) = v18;
LABEL_22:
    v19 = *(*(v6 + 2) + 8 * v14);
    v20 = (((((v19 >> 1) & 0x5555555555555555) + (v19 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v19 >> 1) & 0x5555555555555555) + (v19 & 0x5555555555555555)) & 0x3333333333333333);
    v21 = (0x101010101010101 * (((v20 >> 4) & 0x707070707070707) + (v20 & 0x707070707070707))) >> 56;
    if (a3)
    {
      v22 = v6;
      v23 = a3;
      v24 = a4;
      v25 = 64;
      if (v8 < 0x40)
      {
        v25 = v8;
      }

      v26 = v25 - v21;
      v27 = (-v12 & 0x1FFLL);
      if (v25 - v21 > v27)
      {
        v50 = v12;
        v51 = v13;
        internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v53);
        v12 = v50;
        v13 = v51;
        v10 = v52;
      }

      v12 += v26;
      a4 = v24;
      a3 = v23;
      v6 = v22;
    }

    if (a4)
    {
      v28 = (-v13 & 0x1FFLL);
      if (v21 > v28)
      {
        v29 = v19;
        v30 = v13;
        v31 = v12;
        internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v53);
        v12 = v31;
        v10 = v52;
        v13 = v30;
      }
    }

    v13 += v21;
    ++v14;
    v11 += 64;
    v8 -= 64;
  }

  while (v10 != v14);
  v8 = v49;
  if (v48)
  {
    goto LABEL_35;
  }

LABEL_55:
  *(this + 6) = v8;
  *(this + 7) = *(v6 + 7);
  *(*(this + 9) + 12 * *(this + 11) - 12) = v13;
  if (a3)
  {
    v53 = v8;
    internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v53);
    internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 28);
  }

  if (a4)
  {
    v53 = v8;
    internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v53);
    internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 40);
  }
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::push_back(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *internal::marisa::grimoire::vector::Vector<unsigned int>::shrink(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F24C93B0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v2);
  }

  return result;
}

uint64_t greek_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  among_b = find_among_b(a1, &a_0, 46);
  if (among_b)
  {
    while (2)
    {
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      switch(among_b)
      {
        case 1:
          v5 = &s_0;
          goto LABEL_29;
        case 2:
          v5 = &s_1;
          goto LABEL_29;
        case 3:
          v5 = &s_2;
          goto LABEL_29;
        case 4:
          v5 = &s_3;
          goto LABEL_29;
        case 5:
          v5 = &s_4;
          goto LABEL_29;
        case 6:
          v5 = &s_5;
          goto LABEL_29;
        case 7:
          v5 = &s_6;
          goto LABEL_29;
        case 8:
          v5 = &s_7;
          goto LABEL_29;
        case 9:
          v5 = &s_8;
          goto LABEL_29;
        case 10:
          v5 = &s_9;
          goto LABEL_29;
        case 11:
          v5 = &s_10;
          goto LABEL_29;
        case 12:
          v5 = &s_11;
          goto LABEL_29;
        case 13:
          v5 = &s_12;
          goto LABEL_29;
        case 14:
          v5 = &s_13;
          goto LABEL_29;
        case 15:
          v5 = &s_14;
          goto LABEL_29;
        case 16:
          v5 = &s_15;
          goto LABEL_29;
        case 17:
          v5 = &s_16;
          goto LABEL_29;
        case 18:
          v5 = &s_17;
          goto LABEL_29;
        case 19:
          v5 = &s_18;
          goto LABEL_29;
        case 20:
          v5 = &s_19;
          goto LABEL_29;
        case 21:
          v5 = &s_20;
          goto LABEL_29;
        case 22:
          v5 = &s_21;
          goto LABEL_29;
        case 23:
          v5 = &s_22;
          goto LABEL_29;
        case 24:
          v5 = &s_23;
LABEL_29:
          result = slice_from_s(a1, 2, v5);
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          return result;
        case 25:
          v6 = skip_utf8(*a1, v4, *(a1 + 16), 0, -1);
          if (v6 < 0)
          {
            break;
          }

          *(a1 + 8) = v6;
          goto LABEL_30;
        default:
LABEL_30:
          *(a1 + 24) = *(a1 + 8);
          among_b = find_among_b(a1, &a_0, 46);
          if (!among_b)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  *(a1 + 8) = *(a1 + 12);
  if (len_utf8(*a1) < 3)
  {
    return 0;
  }

  **(a1 + 48) = 1;
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  *(a1 + 24) = v9;
  v10 = find_among_b(a1, &a_1, 40);
  if (v10)
  {
    *(a1 + 20) = *(a1 + 8);
    if (v10 > 5)
    {
      if (v10 <= 8)
      {
        if (v10 == 6)
        {
          v11 = &s_29;
        }

        else if (v10 == 7)
        {
          v11 = &s_30;
        }

        else
        {
          v11 = &s_31;
        }

        goto LABEL_57;
      }

      if (v10 != 9)
      {
        if (v10 == 10)
        {
          v11 = &s_33;
          v12 = a1;
          v13 = 12;
          goto LABEL_60;
        }

        if (v10 == 11)
        {
          v11 = &s_34;
          v12 = a1;
          v13 = 10;
          goto LABEL_60;
        }

LABEL_61:
        **(a1 + 48) = 0;
        goto LABEL_62;
      }

      v11 = &s_32;
LABEL_59:
      v12 = a1;
      v13 = 4;
LABEL_60:
      result = slice_from_s(v12, v13, v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_61;
    }

    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        v11 = &s_24;
        goto LABEL_59;
      }

      if (v10 != 2)
      {
        goto LABEL_61;
      }

      v11 = &s_25;
    }

    else
    {
      if (v10 != 3)
      {
        if (v10 != 4)
        {
          v11 = &s_28;
          v12 = a1;
          v13 = 8;
          goto LABEL_60;
        }

        v11 = &s_27;
        goto LABEL_59;
      }

      v11 = &s_26;
    }

LABEL_57:
    v12 = a1;
    v13 = 6;
    goto LABEL_60;
  }

LABEL_62:
  v14 = v9 - v8;
  v15 = *(a1 + 12) + v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v15;
  if (!find_among_b(a1, &a_4, 14))
  {
    goto LABEL_73;
  }

  *(a1 + 20) = *(a1 + 8);
  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  **(a1 + 48) = 0;
  v16 = *(a1 + 12);
  v17 = *(a1 + 8);
  *(a1 + 20) = v17;
  *(a1 + 24) = v17;
  if (v17 - 3 > *(a1 + 16) && (v18 = *(*a1 + v17 - 1), (v18 & 0xE0) == 0xA0) && ((0x80220000 >> v18) & 1) != 0 && find_among_b(a1, &a_2, 9) && *(a1 + 8) <= *(a1 + 16))
  {
    v20 = &s_35;
    v21 = a1;
    v22 = 2;
  }

  else
  {
    v19 = *(a1 + 12) + v17 - v16;
    *(a1 + 8) = v19;
    *(a1 + 20) = v19;
    *(a1 + 24) = v19;
    if (!find_among_b(a1, &a_3, 22) || *(a1 + 8) > *(a1 + 16))
    {
      goto LABEL_73;
    }

    v20 = &s_36;
    v21 = a1;
    v22 = 4;
  }

  result = slice_from_s(v21, v22, v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_73:
  v23 = *(a1 + 12) + v14;
  *(a1 + 8) = v23;
  *(a1 + 24) = v23;
  if (find_among_b(a1, &a_6, 7))
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    **(a1 + 48) = 0;
    v24 = *(a1 + 8);
    *(a1 + 20) = v24;
    *(a1 + 24) = v24;
    if (find_among_b(a1, &a_5, 8))
    {
      if (*(a1 + 8) <= *(a1 + 16))
      {
        result = slice_from_s(a1, 4, &s_37);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }
  }

  v25 = *(a1 + 12) + v14;
  *(a1 + 8) = v25;
  *(a1 + 24) = v25;
  if (find_among_b(a1, &a_9, 7))
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    **(a1 + 48) = 0;
    v27 = *(a1 + 8);
    v26 = *(a1 + 12);
    if (eq_s_b(a1, 6, &s_38))
    {
      v28 = *(a1 + 16);
      if (*(a1 + 8) <= v28)
      {
        v29 = &s_39;
LABEL_92:
        v34 = a1;
        v35 = 4;
        goto LABEL_93;
      }
    }

    else
    {
      v28 = *(a1 + 16);
    }

    v30 = v26 - v27;
    v31 = *(a1 + 12) - v30;
    *(a1 + 8) = v31;
    *(a1 + 20) = v31;
    *(a1 + 24) = v31;
    if (v31 - 3 > v28)
    {
      v32 = *(*a1 + v31 - 1);
      if ((v32 & 0xE0) == 0xA0 && ((0x80220000 >> v32) & 1) != 0 && find_among_b(a1, &a_7, 19) && *(a1 + 8) <= *(a1 + 16))
      {
        v29 = &s_40;
        v34 = a1;
        v35 = 2;
LABEL_93:
        result = slice_from_s(v34, v35, v29);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_94;
      }
    }

    v33 = *(a1 + 12) - v30;
    *(a1 + 8) = v33;
    *(a1 + 20) = v33;
    *(a1 + 24) = v33;
    if (find_among_b(a1, &a_8, 13) && *(a1 + 8) <= *(a1 + 16))
    {
      v29 = &s_41;
      goto LABEL_92;
    }
  }

LABEL_94:
  *(a1 + 8) = *(a1 + 12) + v14;
  result = r_steps4(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 8) = *(a1 + 12) + v14;
    result = r_steps5(a1);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 8) = *(a1 + 12) + v14;
      result = r_steps6(a1);
      if ((result & 0x80000000) == 0)
      {
        *(a1 + 8) = *(a1 + 12) + v14;
        result = r_steps7(a1);
        if ((result & 0x80000000) == 0)
        {
          *(a1 + 8) = *(a1 + 12) + v14;
          result = r_steps8(a1);
          if ((result & 0x80000000) == 0)
          {
            *(a1 + 8) = *(a1 + 12) + v14;
            result = r_steps9(a1);
            if ((result & 0x80000000) == 0)
            {
              *(a1 + 8) = *(a1 + 12) + v14;
              result = r_steps10(a1);
              if ((result & 0x80000000) == 0)
              {
                *(a1 + 8) = *(a1 + 12) + v14;
                result = r_step2a(a1);
                if ((result & 0x80000000) == 0)
                {
                  *(a1 + 8) = *(a1 + 12) + v14;
                  result = r_step2b(a1);
                  if ((result & 0x80000000) == 0)
                  {
                    *(a1 + 8) = *(a1 + 12) + v14;
                    result = r_step2c(a1);
                    if ((result & 0x80000000) == 0)
                    {
                      *(a1 + 8) = *(a1 + 12) + v14;
                      result = r_step2d(a1);
                      if ((result & 0x80000000) == 0)
                      {
                        *(a1 + 8) = *(a1 + 12) + v14;
                        result = r_step3(a1);
                        if ((result & 0x80000000) == 0)
                        {
                          *(a1 + 8) = *(a1 + 12) + v14;
                          result = r_step4(a1);
                          if ((result & 0x80000000) == 0)
                          {
                            *(a1 + 8) = *(a1 + 12) + v14;
                            result = r_step5a(a1);
                            if ((result & 0x80000000) == 0)
                            {
                              *(a1 + 8) = *(a1 + 12) + v14;
                              result = r_step5b(a1);
                              if ((result & 0x80000000) == 0)
                              {
                                *(a1 + 8) = *(a1 + 12) + v14;
                                result = r_step5c(a1);
                                if ((result & 0x80000000) == 0)
                                {
                                  *(a1 + 8) = *(a1 + 12) + v14;
                                  result = r_step5d(a1);
                                  if ((result & 0x80000000) == 0)
                                  {
                                    *(a1 + 8) = *(a1 + 12) + v14;
                                    result = r_step5e(a1);
                                    if ((result & 0x80000000) == 0)
                                    {
                                      *(a1 + 8) = *(a1 + 12) + v14;
                                      result = r_step5f(a1);
                                      if ((result & 0x80000000) == 0)
                                      {
                                        *(a1 + 8) = *(a1 + 12) + v14;
                                        result = r_step5g(a1);
                                        if ((result & 0x80000000) == 0)
                                        {
                                          *(a1 + 8) = *(a1 + 12) + v14;
                                          result = r_step5h(a1);
                                          if ((result & 0x80000000) == 0)
                                          {
                                            *(a1 + 8) = *(a1 + 12) + v14;
                                            result = r_step5j(a1);
                                            if ((result & 0x80000000) == 0)
                                            {
                                              *(a1 + 8) = *(a1 + 12) + v14;
                                              result = r_step5i(a1);
                                              if ((result & 0x80000000) == 0)
                                              {
                                                *(a1 + 8) = *(a1 + 12) + v14;
                                                result = r_step5k(a1);
                                                if ((result & 0x80000000) == 0)
                                                {
                                                  *(a1 + 8) = *(a1 + 12) + v14;
                                                  result = r_step5l(a1);
                                                  if ((result & 0x80000000) == 0)
                                                  {
                                                    *(a1 + 8) = *(a1 + 12) + v14;
                                                    result = r_step5m(a1);
                                                    if ((result & 0x80000000) == 0)
                                                    {
                                                      *(a1 + 8) = *(a1 + 12) + v14;
                                                      result = r_step6(a1);
                                                      if ((result & 0x80000000) == 0)
                                                      {
                                                        *(a1 + 8) = *(a1 + 12) + v14;
                                                        result = r_step7(a1);
                                                        if ((result & 0x80000000) == 0)
                                                        {
                                                          *(a1 + 8) = *(a1 + 16);
                                                          return 1;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_steps4(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_11, 7);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v3 = *(a1 + 8);
      *(a1 + 20) = v3;
      *(a1 + 24) = v3;
      if (v3 - 3 <= *(a1 + 16))
      {
        return 0;
      }

      v4 = *(*a1 + v3 - 1);
      if ((v4 & 0xE0) != 0xA0 || ((0x80220000 >> v4) & 1) == 0)
      {
        return 0;
      }

      result = find_among_b(a1, &a_10, 19);
      if (!result)
      {
        return result;
      }

      if (*(a1 + 8) <= *(a1 + 16))
      {
        LODWORD(result) = slice_from_s(a1, 2, &s_42);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t r_steps5(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  if (!find_among_b(a1, &a_14, 11))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v2 = slice_del(a1);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  **(a1 + 48) = 0;
  v3 = *(a1 + 12);
  v4 = *(a1 + 8);
  *(a1 + 20) = v4;
  *(a1 + 24) = v4;
  if (v4 - 3 > *(a1 + 16))
  {
    v5 = *(*a1 + v4 - 1);
    if ((v5 == 191 || v5 == 181) && find_among_b(a1, &a_12, 7) && *(a1 + 8) <= *(a1 + 16))
    {
      v9 = slice_from_s(a1, 2, &s_43);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      return 1;
    }
  }

  v6 = *(a1 + 12) + v4 - v3;
  *(a1 + 8) = v6;
  *(a1 + 20) = v6;
  *(a1 + 24) = v6;
  if (!find_among_b(a1, &a_13, 33) || *(a1 + 8) > *(a1 + 16))
  {
    return 0;
  }

  v8 = slice_from_s(a1, 6, &s_44);
  if (v8 >= 0)
  {
    v2 = v2;
  }

  else
  {
    v2 = v8;
  }

  if ((v8 & 0x80000000) == 0)
  {
    return 1;
  }

  return v2;
}

uint64_t r_steps6(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_18, 6);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      v3 = *(a1 + 12);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      v5 = *(a1 + 16);
      if (v4 - 3 <= v5 || *(*a1 + v4 - 1) != 181 || (v6 = find_among_b(a1, &a_15, 5), v5 = *(a1 + 16), !v6) || *(a1 + 8) > v5)
      {
        v7 = v3 - v4;
        v8 = *(a1 + 12) - v7;
        *(a1 + 8) = v8;
        *(a1 + 20) = v8;
        *(a1 + 24) = v8;
        if (v8 - 7 > v5 && *(*a1 + v8 - 1) == 181)
        {
          among_b = find_among_b(a1, &a_16, 2);
          v5 = *(a1 + 16);
          if (among_b)
          {
            if (*(a1 + 8) <= v5)
            {
              v13 = &s_46;
              v14 = a1;
              v15 = 2;
              goto LABEL_42;
            }
          }
        }

        v10 = *(a1 + 12) - v7;
        *(a1 + 8) = v10;
        *(a1 + 24) = v10;
        if (v10 - 9 <= v5)
        {
          return 0;
        }

        v11 = *(*a1 + v10 - 1);
        if (v11 != 189 && v11 != 186)
        {
          return 0;
        }

        result = find_among_b(a1, &a_17, 10);
        if (!result)
        {
          return result;
        }

        v12 = result;
        *(a1 + 20) = *(a1 + 8);
        result = 1;
        if (v12 > 5)
        {
          if (v12 <= 7)
          {
            if (v12 != 6)
            {
              v13 = &s_53;
              goto LABEL_27;
            }

            v13 = &s_52;
          }

          else
          {
            if (v12 == 8)
            {
              v13 = &s_54;
              v14 = a1;
              v15 = 16;
              goto LABEL_42;
            }

            if (v12 == 9)
            {
              v13 = &s_55;
              goto LABEL_41;
            }

            if (v12 != 10)
            {
              return result;
            }

            v13 = &s_56;
          }
        }

        else
        {
          if (v12 <= 2)
          {
            if (v12 != 1)
            {
              if (v12 != 2)
              {
                return result;
              }

              v13 = &s_48;
              v14 = a1;
              v15 = 8;
              goto LABEL_42;
            }

            v13 = &s_47;
            goto LABEL_41;
          }

          if (v12 != 3)
          {
            if (v12 != 4)
            {
              v13 = &s_51;
LABEL_41:
              v14 = a1;
              v15 = 12;
LABEL_42:
              result = slice_from_s(v14, v15, v13);
              if ((result & 0x80000000) == 0)
              {
                return 1;
              }

              return result;
            }

            v13 = &s_50;
LABEL_27:
            v14 = a1;
            v15 = 6;
            goto LABEL_42;
          }

          v13 = &s_49;
        }

        v14 = a1;
        v15 = 10;
        goto LABEL_42;
      }

      v13 = &s_45;
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t r_steps7(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 9 <= *(a1 + 16))
  {
    return 0;
  }

  if ((*(*a1 + v1 - 1) | 8) != 0xB9)
  {
    return 0;
  }

  result = find_among_b(a1, &a_20, 4);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      v5 = v4 - 1;
      if (v5 <= *(a1 + 16) || (*(*a1 + v5) | 4) != 0x87)
      {
        return 0;
      }

      result = find_among_b(a1, &a_19, 2);
      if (!result)
      {
        return result;
      }

      if (*(a1 + 8) > *(a1 + 16))
      {
        return 0;
      }

      LODWORD(result) = slice_from_s(a1, 8, &s_57);
      if (result >= 0)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t r_steps8(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  if (!find_among_b(a1, &a_23, 8))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v2 = slice_del(a1);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  **(a1 + 48) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a1 + 20) = v4;
  *(a1 + 24) = v4;
  if (find_among_b(a1, &a_21, 33) && *(a1 + 8) <= *(a1 + 16))
  {
    v9 = &s_58;
    v10 = a1;
    v11 = 4;
    goto LABEL_16;
  }

  v5 = v3 - v4;
  v6 = *(a1 + 12) - v5;
  *(a1 + 8) = v6;
  *(a1 + 20) = v6;
  *(a1 + 24) = v6;
  if (find_among_b(a1, &a_22, 15) && *(a1 + 8) <= *(a1 + 16))
  {
    v9 = &s_59;
    v10 = a1;
    v11 = 6;
LABEL_16:
    v12 = slice_from_s(v10, v11, v9);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    return 1;
  }

  v7 = *(a1 + 12) - v5;
  *(a1 + 8) = v7;
  *(a1 + 20) = v7;
  *(a1 + 24) = v7;
  if (!eq_s_b(a1, 6, &s_60))
  {
    return 0;
  }

  v8 = slice_from_s(a1, 6, &s_61);
  if (v8 >= 0)
  {
    v2 = v2;
  }

  else
  {
    v2 = v8;
  }

  if ((v8 & 0x80000000) == 0)
  {
    return 1;
  }

  return v2;
}

uint64_t r_steps9(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0xA0 || ((0xA0020000 >> v3) & 1) == 0 || !find_among_b(a1, &a_26, 3))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v4 = slice_del(a1);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  **(a1 + 48) = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  *(a1 + 20) = v6;
  *(a1 + 24) = v6;
  among_b = find_among_b(a1, &a_24, 4);
  v8 = *(a1 + 16);
  if (among_b && *(a1 + 8) <= v8)
  {
    v13 = slice_from_s(a1, 4, &s_62);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    return 1;
  }

  v9 = *(a1 + 12) + v6 - v5;
  *(a1 + 8) = v9;
  *(a1 + 20) = v9;
  *(a1 + 24) = v9;
  v10 = v9 - 1;
  if (v10 <= v8 || (*(*a1 + v10) | 8) != 0xBD || !find_among_b(a1, &a_25, 2))
  {
    return 0;
  }

  v11 = slice_from_s(a1, 4, &s_63);
  if (v11 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = v11;
  }

  if ((v11 & 0x80000000) == 0)
  {
    return 1;
  }

  return v4;
}

uint64_t r_steps10(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_28, 4);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v3 = *(a1 + 8);
      *(a1 + 20) = v3;
      *(a1 + 24) = v3;
      result = find_among_b(a1, &a_27, 7);
      if (result)
      {
        if (*(a1 + 8) <= *(a1 + 16))
        {
          LODWORD(result) = slice_from_s(a1, 6, &s_64);
          if (result >= 0)
          {
            return 1;
          }

          else
          {
            return result;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t r_step2a(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 189 && v3 != 131)
  {
    return 0;
  }

  result = find_among_b(a1, &a_29, 2);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      *(a1 + 24) = v6;
      if (find_among_b(a1, &a_30, 10))
      {
        result = 0;
        *(a1 + 20) = *(a1 + 8);
      }

      else
      {
        v7 = v6 - v5;
        v8 = *(a1 + 12);
        v9 = v8 + v6 - v5;
        *(a1 + 8) = v9;
        LODWORD(result) = insert_s(a1, v8 + v7, v8 + v7, 4, &s_65);
        *(a1 + 8) = v9;
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t r_step2b(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 189 && v3 != 131)
  {
    return 0;
  }

  result = find_among_b(a1, &a_31, 2);
  if (!result)
  {
    return result;
  }

  *(a1 + 20) = *(a1 + 8);
  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v5 = *(a1 + 8);
  *(a1 + 20) = v5;
  *(a1 + 24) = v5;
  if (v5 - 3 <= *(a1 + 16))
  {
    return 0;
  }

  v6 = *(*a1 + v5 - 1);
  if (v6 != 187 && v6 != 128)
  {
    return 0;
  }

  result = find_among_b(a1, &a_32, 8);
  if (result)
  {
    LODWORD(result) = slice_from_s(a1, 4, &s_66);
    if (result >= 0)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t r_step2c(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 9 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 189 && v3 != 131)
  {
    return 0;
  }

  result = find_among_b(a1, &a_33, 2);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      v5 = *(a1 + 8);
      *(a1 + 20) = v5;
      *(a1 + 24) = v5;
      result = find_among_b(a1, &a_34, 15);
      if (result)
      {
        LODWORD(result) = slice_from_s(a1, 6, &s_67);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t r_step2d(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 5 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 189 && v3 != 131)
  {
    return 0;
  }

  result = find_among_b(a1, &a_35, 2);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v5 = *(a1 + 8);
      *(a1 + 20) = v5;
      *(a1 + 24) = v5;
      result = find_among_b(a1, &a_36, 8);
      if (result)
      {
        if (*(a1 + 8) > *(a1 + 16))
        {
          return 0;
        }

        LODWORD(result) = slice_from_s(a1, 2, &s_68);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t r_step3(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_37, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v3 = *(a1 + 8);
      *(a1 + 20) = v3;
      *(a1 + 24) = v3;
      if (in_grouping_b_U(a1, &g_v, 945, 969, 0))
      {
        return 0;
      }

      else
      {
        LODWORD(result) = slice_from_s(a1, 2, &s_69);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t r_step4(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_38, 4);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      v3 = *(a1 + 12);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      if (in_grouping_b_U(a1, &g_v, 945, 969, 0))
      {
        v5 = *(a1 + 12) + v4 - v3;
        *(a1 + 8) = v5;
        *(a1 + 24) = v5;
      }

      else
      {
        result = slice_from_s(a1, 4, &s_70);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v5 = *(a1 + 8);
      }

      *(a1 + 20) = v5;
      result = find_among_b(a1, &a_39, 36);
      if (result)
      {
        if (*(a1 + 8) <= *(a1 + 16))
        {
          LODWORD(result) = slice_from_s(a1, 4, &s_71);
          if (result >= 0)
          {
            return 1;
          }

          else
          {
            return result;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t r_step5a(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  if (!eq_s_b(a1, 10, &s_72) || *(a1 + 8) > *(a1 + 16) || (result = slice_from_s(a1, 8, &s_73), (result & 0x80000000) == 0))
  {
    v5 = v3 - v2;
    v6 = *(a1 + 16);
    v7 = *(a1 + 12) + v5;
    *(a1 + 8) = v7;
    *(a1 + 24) = v7;
    if (v7 - 9 > v6 && *(*a1 + v7 - 1) == 181 && find_among_b(a1, &a_40, 5))
    {
      *(a1 + 20) = *(a1 + 8);
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      **(a1 + 48) = 0;
    }

    v8 = *(a1 + 12) + v5;
    *(a1 + 8) = v8;
    *(a1 + 24) = v8;
    result = eq_s_b(a1, 6, &s_74);
    if (result)
    {
      *(a1 + 20) = *(a1 + 8);
      result = slice_del(a1);
      if ((result & 0x80000000) == 0)
      {
        **(a1 + 48) = 0;
        v9 = *(a1 + 8);
        *(a1 + 20) = v9;
        *(a1 + 24) = v9;
        result = find_among_b(a1, &a_41, 12);
        if (result)
        {
          if (*(a1 + 8) <= *(a1 + 16))
          {
            LODWORD(result) = slice_from_s(a1, 4, &s_75);
            if (result >= 0)
            {
              return 1;
            }

            else
            {
              return result;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_step5b(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  *(a1 + 24) = v3;
  if (v3 - 9 <= *(a1 + 16) || *(*a1 + v3 - 1) != 181 || !find_among_b(a1, &a_43, 11) || (*(a1 + 20) = *(a1 + 8), result = slice_del(a1), (result & 0x80000000) == 0) && ((**(a1 + 48) = 0, v5 = *(a1 + 8), *(a1 + 20) = v5, *(a1 + 24) = v5, v5 - 3 <= *(a1 + 16)) || (*(*a1 + v5 - 1) | 2) != 0x83 || !find_among_b(a1, &a_42, 2) || *(a1 + 8) > *(a1 + 16) || (result = slice_from_s(a1, 8, &s_76), (result & 0x80000000) == 0)))
  {
    v6 = *(a1 + 12) + v3 - v2;
    *(a1 + 8) = v6;
    *(a1 + 24) = v6;
    result = eq_s_b(a1, 6, &s_77);
    if (result)
    {
      *(a1 + 20) = *(a1 + 8);
      result = slice_del(a1);
      if ((result & 0x80000000) == 0)
      {
        **(a1 + 48) = 0;
        v8 = *(a1 + 8);
        v7 = *(a1 + 12);
        *(a1 + 20) = v8;
        *(a1 + 24) = v8;
        if (in_grouping_b_U(a1, &g_v2, 945, 969, 0))
        {
          v9 = *(a1 + 12) + v8 - v7;
          *(a1 + 8) = v9;
          *(a1 + 24) = v9;
        }

        else
        {
          result = slice_from_s(a1, 4, &s_78);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v9 = *(a1 + 8);
        }

        *(a1 + 20) = v9;
        result = find_among_b(a1, &a_44, 95);
        if (result)
        {
          if (*(a1 + 8) <= *(a1 + 16))
          {
            LODWORD(result) = slice_from_s(a1, 4, &s_79);
            if (result >= 0)
            {
              return 1;
            }

            else
            {
              return result;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_step5c(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  *(a1 + 24) = v3;
  if (v3 - 9 > *(a1 + 16) && *(*a1 + v3 - 1) == 181 && find_among_b(a1, &a_45, 1))
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    **(a1 + 48) = 0;
  }

  v5 = *(a1 + 12) + v3 - v2;
  *(a1 + 8) = v5;
  *(a1 + 24) = v5;
  result = eq_s_b(a1, 6, &s_80);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v7 = *(a1 + 8);
      v6 = *(a1 + 12);
      *(a1 + 20) = v7;
      *(a1 + 24) = v7;
      if (in_grouping_b_U(a1, &g_v2, 945, 969, 0))
      {
        v8 = v6 - v7;
        v9 = *(a1 + 12) - v8;
        *(a1 + 8) = v9;
        *(a1 + 20) = v9;
        *(a1 + 24) = v9;
        if (!find_among_b(a1, &a_46, 31))
        {
          v11 = *(a1 + 12) - v8;
          *(a1 + 8) = v11;
          *(a1 + 24) = v11;
LABEL_15:
          *(a1 + 20) = v11;
          result = find_among_b(a1, &a_47, 25);
          if (result)
          {
            if (*(a1 + 8) <= *(a1 + 16))
            {
              LODWORD(result) = slice_from_s(a1, 4, &s_83);
              if (result >= 0)
              {
                return 1;
              }

              else
              {
                return result;
              }
            }

            else
            {
              return 0;
            }
          }

          return result;
        }

        v10 = &s_82;
      }

      else
      {
        v10 = &s_81;
      }

      result = slice_from_s(a1, 4, v10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = *(a1 + 8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t r_step5d(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 9 <= *(a1 + 16) || *(*a1 + v1 - 1) != 131 || !find_among_b(a1, &a_48, 2))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v3 = slice_del(a1);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  **(a1 + 48) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a1 + 20) = v5;
  *(a1 + 24) = v5;
  if (eq_s_b(a1, 6, &s_84) && *(a1 + 8) <= *(a1 + 16))
  {
    v9 = slice_from_s(a1, 6, &s_85);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    return 1;
  }

  v6 = *(a1 + 12) + v5 - v4;
  *(a1 + 8) = v6;
  *(a1 + 20) = v6;
  *(a1 + 24) = v6;
  if (!eq_s_b(a1, 6, &s_86))
  {
    return 0;
  }

  v7 = slice_from_s(a1, 6, &s_87);
  if (v7 >= 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = v7;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 1;
  }

  return v3;
}

uint64_t r_step5e(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 11 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 181)
  {
    return 0;
  }

  result = find_among_b(a1, &a_49, 2);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      result = eq_s_b(a1, 4, &s_88);
      if (result)
      {
        if (*(a1 + 8) > *(a1 + 16))
        {
          return 0;
        }

        LODWORD(result) = slice_from_s(a1, 10, &s_89);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t r_step5f(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a1 + 24) = v3;
  if (!eq_s_b(a1, 10, &s_90) || (*(a1 + 20) = *(a1 + 8), result = slice_del(a1), (result & 0x80000000) == 0) && ((**(a1 + 48) = 0, v5 = *(a1 + 8), *(a1 + 20) = v5, *(a1 + 24) = v5, v6 = v5 - 1, v6 <= *(a1 + 16)) || (v7 = *(*a1 + v6), v7 != 134) && v7 != 128 || !find_among_b(a1, &a_50, 6) || *(a1 + 8) > *(a1 + 16) || (result = slice_from_s(a1, 8, &s_91), (result & 0x80000000) == 0)))
  {
    v8 = *(a1 + 12) + v3 - v2;
    *(a1 + 8) = v8;
    *(a1 + 24) = v8;
    result = eq_s_b(a1, 8, &s_92);
    if (result)
    {
      *(a1 + 20) = *(a1 + 8);
      result = slice_del(a1);
      if ((result & 0x80000000) == 0)
      {
        **(a1 + 48) = 0;
        v9 = *(a1 + 8);
        *(a1 + 20) = v9;
        *(a1 + 24) = v9;
        result = find_among_b(a1, &a_51, 9);
        if (result)
        {
          if (*(a1 + 8) <= *(a1 + 16))
          {
            LODWORD(result) = slice_from_s(a1, 8, &s_93);
            if (result >= 0)
            {
              return 1;
            }

            else
            {
              return result;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_step5g(uint64_t a1)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a1 + 24) = v4;
  if (find_among_b(a1, &a_52, 3))
  {
    *(a1 + 20) = *(a1 + 8);
    v1 = slice_del(a1);
    if ((v1 & 0x80000000) != 0)
    {
      return v1;
    }

    **(a1 + 48) = 0;
  }

  v5 = *(a1 + 12) + v4 - v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v5;
  if (!find_among_b(a1, &a_55, 3))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v6 = slice_del(a1);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  **(a1 + 48) = 0;
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  *(a1 + 20) = v8;
  *(a1 + 24) = v8;
  if (find_among_b(a1, &a_53, 6))
  {
    v6 = slice_from_s(a1, 4, &s_94);
    if ((v6 & 0x80000000) == 0)
    {
      return 1;
    }

    return v6;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 12) + v8 - v7;
  *(a1 + 8) = v10;
  *(a1 + 20) = v10;
  *(a1 + 24) = v10;
  v11 = v10 - 1;
  if (v11 <= v9 || *(*a1 + v11) != 184 || !find_among_b(a1, &a_54, 5) || *(a1 + 8) > *(a1 + 16))
  {
    return 0;
  }

  v13 = slice_from_s(a1, 4, &s_95);
  if (v13 >= 0)
  {
    v1 = v1;
  }

  else
  {
    v1 = v13;
  }

  if ((v13 & 0x80000000) == 0)
  {
    return 1;
  }

  return v1;
}

uint64_t r_step5h(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  if (!find_among_b(a1, &a_58, 3))
  {
    return 0;
  }

  *(a1 + 20) = *(a1 + 8);
  v2 = slice_del(a1);
  if ((v2 & 0x80000000) == 0)
  {
    **(a1 + 48) = 0;
    v4 = *(a1 + 8);
    v3 = *(a1 + 12);
    *(a1 + 20) = v4;
    *(a1 + 24) = v4;
    if (find_among_b(a1, &a_56, 12))
    {
      v5 = slice_from_s(a1, 6, &s_96);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

      return 1;
    }

    v6 = *(a1 + 12) + v4 - v3;
    *(a1 + 8) = v6;
    *(a1 + 20) = v6;
    *(a1 + 24) = v6;
    if (!find_among_b(a1, &a_57, 25) || *(a1 + 8) > *(a1 + 16))
    {
      return 0;
    }

    v8 = slice_from_s(a1, 6, &s_97);
    if (v8 >= 0)
    {
      v2 = v2;
    }

    else
    {
      v2 = v8;
    }

    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  return v2;
}

uint64_t r_step5j(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_63, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v3 = *(a1 + 8);
      *(a1 + 20) = v3;
      *(a1 + 24) = v3;
      v4 = v3 - 1;
      if (v4 <= *(a1 + 16) || *(*a1 + v4) != 189)
      {
        return 0;
      }

      result = find_among_b(a1, &a_64, 6);
      if (!result)
      {
        return result;
      }

      if (*(a1 + 8) <= *(a1 + 16))
      {
        LODWORD(result) = slice_from_s(a1, 4, &s_102);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}