void sub_25D5DA758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdBookmark::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  if (*(a2 + 16))
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = &unk_25D70E4C8;
  }

  CsString::append((a1 + 8), v4);
  v5 = *(a1 + 32);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(a1 + 32) = 0;
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  operator new[](v6);
}

uint64_t WrdBookmarkTable::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  v5 = *(a2 + 16);
  if (((*(a2 + 24) - v5) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    do
    {
      v8 = (*(**(v5 + 8 * v7) + 16))(*(v5 + 8 * v7));
      v12 = v8;
      v9 = *(a1 + 24);
      if (v9 >= *(a1 + 32))
      {
        v10 = std::vector<WrdBookmark *,ChAllocator<WrdBookmark *>>::__emplace_back_slow_path<WrdBookmark *>(v4, &v12);
      }

      else
      {
        *v9 = v8;
        v10 = (v9 + 1);
      }

      *(a1 + 24) = v10;
      ++v7;
      v5 = *(a2 + 16);
    }

    while (v7 < ((*(a2 + 24) - v5) >> 3));
  }

  return a1;
}

void sub_25D5DAA60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdBookmark *,ChAllocator<WrdBookmark *>>::__emplace_back_slow_path<WrdBookmark *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DAC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdBookmark *,ChAllocator<WrdBookmark *>>::__emplace_back_slow_path<WrdBookmark * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DAD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL WrdCharacterProperties::WrdCharacterPropertiesOverridden::isEqualWithoutRevisions(WrdCharacterProperties::WrdCharacterPropertiesOverridden *this, const WrdCharacterProperties::WrdCharacterPropertiesOverridden *a2)
{
  v2 = *a2 ^ *this;
  if ((v2 & 0xFF7FFFFFF0FFFFB7) != 0)
  {
    return 0;
  }

  if ((v2 & 0xF000000) != 0 || ((*(a2 + 2) ^ *(this + 2)) & 0x7E3FFF) != 0)
  {
    return 0;
  }

  if (((*(a2 + 6) ^ *(this + 6)) & 0x79C) != 0)
  {
    return 0;
  }

  return ((*(a2 + 6) ^ *(this + 6)) & 0x800) == 0;
}

void non-virtual thunk toWrdCharacterProperties::~WrdCharacterProperties(WrdCharacterProperties *this)
{
  WrdCharacterProperties::~WrdCharacterProperties((this - 8));
}

{
  WrdCharacterProperties::~WrdCharacterProperties((this - 8));

  JUMPOUT(0x25F897000);
}

BOOL WrdCharacterProperties::isEqualWithoutRevisions(WrdCharacterProperties *this, const WrdCharacterProperties *a2)
{
  result = WrdCharacterProperties::WrdCharacterPropertiesOverridden::isEqualWithoutRevisions(&this->var2, &a2->var2);
  if (result)
  {
    result = WrdShading::operator==(this->var6, a2->var6);
    if (result)
    {
      result = WrdBorder::operator==(this->var7, a2->var7);
      if (result)
      {
        if (this->var13 != a2->var13)
        {
          return 0;
        }

        if (this->var14 != a2->var14)
        {
          return 0;
        }

        if (this->var15 != a2->var15)
        {
          return 0;
        }

        if (this->var16 != a2->var16)
        {
          return 0;
        }

        if (this->var17 != a2->var17)
        {
          return 0;
        }

        if (this->var18 != a2->var18)
        {
          return 0;
        }

        if (this->var19 != a2->var19)
        {
          return 0;
        }

        if (this->var20 != a2->var20)
        {
          return 0;
        }

        if (this->var21 != a2->var21)
        {
          return 0;
        }

        if (this->var22 != a2->var22)
        {
          return 0;
        }

        if (*(&this->var2 + 7) != *(&a2->var2 + 7))
        {
          return 0;
        }

        if (this->var3.var0 != a2->var3.var0)
        {
          return 0;
        }

        if (this->var3.var1 != a2->var3.var1)
        {
          return 0;
        }

        if (this->var3.var2 != a2->var3.var2)
        {
          return 0;
        }

        if (this->var3.var3 != a2->var3.var3)
        {
          return 0;
        }

        if (this->var4.var0 != a2->var4.var0)
        {
          return 0;
        }

        if (this->var4.var1 != a2->var4.var1)
        {
          return 0;
        }

        if (this->var4.var2 != a2->var4.var2)
        {
          return 0;
        }

        if (this->var39 != a2->var39)
        {
          return 0;
        }

        if (this->var40 != a2->var40)
        {
          return 0;
        }

        if (this->var41 != a2->var41)
        {
          return 0;
        }

        if (this->var43 != a2->var43)
        {
          return 0;
        }

        if (this->var44 != a2->var44)
        {
          return 0;
        }

        if (this->var45 != a2->var45)
        {
          return 0;
        }

        if (this->var46 != a2->var46)
        {
          return 0;
        }

        if (this->var47 != a2->var47)
        {
          return 0;
        }

        if (this->var48 != a2->var48)
        {
          return 0;
        }

        if (this->var49 != a2->var49)
        {
          return 0;
        }

        if (this->var50 != a2->var50)
        {
          return 0;
        }

        if (this->var51 != a2->var51)
        {
          return 0;
        }

        if (this->var52 != a2->var52)
        {
          return 0;
        }

        if (this->var53 != a2->var53)
        {
          return 0;
        }

        if (this->var54 != a2->var54)
        {
          return 0;
        }

        if (this->var55 != a2->var55)
        {
          return 0;
        }

        if (this->var56 != a2->var56)
        {
          return 0;
        }

        if (this->var57 != a2->var57)
        {
          return 0;
        }

        if (this->var58 != a2->var58)
        {
          return 0;
        }

        if (this->var59 != a2->var59)
        {
          return 0;
        }

        if (this->var60 != a2->var60)
        {
          return 0;
        }

        if (this->var61 != a2->var61)
        {
          return 0;
        }

        if (this->var62 != a2->var62)
        {
          return 0;
        }

        if (this->var63 != a2->var63)
        {
          return 0;
        }

        if (this->var64 != a2->var64)
        {
          return 0;
        }

        if (this->var65 != a2->var65)
        {
          return 0;
        }

        if (this->var66 != a2->var66)
        {
          return 0;
        }

        if (this->var72 != a2->var72)
        {
          return 0;
        }

        if (this->var42 != a2->var42)
        {
          return 0;
        }

        if (this->var75 != a2->var75)
        {
          return 0;
        }

        v5 = *(a2 + 85) ^ *(this + 85);
        if ((v5 & 0x7E) != 0)
        {
          return 0;
        }

        result = 0;
        if ((v5 & 0xF80) == 0 && this->var38 == a2->var38)
        {
          result = 0;
          if ((v5 & 0x87FF000) == 0 && this->var109 == a2->var109)
          {
            if (this->var105 != a2->var105 || this->var106 != a2->var106 || this->var107 != a2->var107 || this->var108 != a2->var108 || this->var23 != a2->var23 || this->var24 != a2->var24 || this->var25 != a2->var25 || this->var27 != a2->var27 || this->var28 != a2->var28 || this->var29 != a2->var29 || this->var26 != a2->var26 || this->var30 != a2->var30 || this->var31 != a2->var31 || this->var32 != a2->var32 || this->var33 != a2->var33 || this->var34 != a2->var34)
            {
              return 0;
            }

            result = 0;
            if ((v5 & 0x10000001) == 0 && this->var35 == a2->var35)
            {
              result = CsString::operator==(&this->var5, &a2->var5);
              if (result)
              {
                return this->var110 == a2->var110;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t WrdCharacterProperties::setEmphasisMark(uint64_t result, int a2)
{
  *(result + 16) |= 0x40000uLL;
  *(result + 132) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setWarichuBracket(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000000000000000;
  *(result + 148) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setFitTextWidth(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 6) |= 0x10u;
  this->var48 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setOffsetToOLE1Object(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 2) |= 0x100u;
  this->var53 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setFitTextID(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 6) |= 0x80u;
  this->var54 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToAuthorIDOfRevisionListNumber(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 6) |= 1u;
  this->var70 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setTatenakayoko(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x100000000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFBFF | ((a2 & 1) << 10);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setTatenakayokoNewLineState(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x200000000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFF7FF | ((a2 & 1) << 11);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setTatenakayokoID(WrdCharacterProperties *this, unsigned __int8 a2)
{
  *&this->var2 |= 0x400000000000000uLL;
  this->var109 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setWarichu(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x800000000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFEFFF | ((a2 & 1) << 12);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setFitTextFE(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x4000000000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFF7FFF | ((a2 & 1) << 15);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setRevisionListNumber(WrdCharacterProperties *this, char a2)
{
  *(&this->var2 + 2) |= 0x80000000;
  *(this + 85) = *(this + 85) & 0xFEFFFFFF | ((a2 & 1) << 24);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setXmlTag(WrdCharacterProperties *this, unsigned __int8 a2)
{
  *(&this->var2 + 6) |= 0x800u;
  this->var110 = a2;
  return this;
}

uint64_t WrdCharacterProperties::clearAllRevisionPropertiesAttributes(WrdCharacterProperties *this)
{
  v2 = *(&this->var2 + 2);
  *(this + 85) &= ~0x800000u;
  *(&this->var2 + 2) = v2 & 0xFD7FFFFF;
  result = (*(this->var8->var0 + 3))(this->var8);
  *(&this->var2 + 2) &= ~0x1000000u;
  this->var69 = 0;
  return result;
}

uint64_t WrdCharacterTextRun::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3 || !*(a1 + 32) || (v5 = *(a2 + 24)) == 0 || !*(a2 + 32))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  WrdCharacterProperties::operator=(v3, v5);
  WrdCharacterProperties::operator=(*(a1 + 32), *(a2 + 32));
  return a1;
}

void *WrdCharacterTextRun::WrdCharacterTextRun(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = WrdTextRun::WrdTextRun(a1, a2, a3);
  *result = &unk_286ED4308;
  if (!a4 || (result[3] = a4, !a5))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  result[4] = a5;
  return result;
}

void WrdCharacterTextRun::clone(WrdCharacterTextRun *this)
{
  (*(this->var4->var0 + 3))(this->var4);
  (*(this->var5->var0 + 3))(this->var5);
  operator new();
}

BOOL WrdCHPXFKP::isRoomForGrpprl(WrdCHPXFKP *this, int a2)
{
  v3 = 5 * *(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1) + 10;
  v4 = (*(*this + 56))(this);
  return v4 >= v3 && v4 - v3 > a2 + 1;
}

void *WrdCHPXFKP::appendGrpprl(WrdCHPXFKP *this, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = (*(*this + 64))(this, a3, a2);
  v11 = *(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize;
  if (*(v11 - 1))
  {
    v12 = (*(*this + 56))(this) + ~v7;
    v13 = *(this + 2);
    v14 = *(v13 + WrdFormattedDiskPage::s_unPageBufferSize - 1);
    memmove((v13 + 4 * v14 + 8), (v13 + 4 * v14 + 4), v14);
    result = WrdFormattedDiskPage::setFC(this, ++*(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1), a5);
  }

  else
  {
    *(v11 - 1) = 1;
    WrdFormattedDiskPage::setFC(this, 0, a4);
    result = WrdFormattedDiskPage::setFC(this, 1u, a5);
    v12 = WrdFormattedDiskPage::s_unPageBufferSize - v7 - 2;
  }

  if (v10 == WrdFormattedDiskPage::s_unUndefinedOffset)
  {
    v16 = v12 & 0xFFFE;
    v17 = *(this + 2);
    v18 = *(v17 + WrdFormattedDiskPage::s_unPageBufferSize - 1);
    *(v17 + 4 * v18 + (v18 - 1) + 4) = v12 >> 1;
    if (*(this + 12) < (v12 & 0xFFFE))
    {
      v16 = *(this + 12);
    }

    *(this + 12) = v16;
    result = (*(*this + 32))(this, (*(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1) - 1));
    *(*(this + 2) + result) = v7;
    if (v7)
    {
      v19 = (*(this + 2) + (v12 | 1u));

      return memcpy(v19, a2, v7);
    }
  }

  else
  {
    v20 = *(this + 2);
    v21 = *(v20 + WrdFormattedDiskPage::s_unPageBufferSize - 1);
    *(v20 + 4 * v21 + (v21 - 1) + 4) = v10 >> 1;
    v22 = *(this + 12);
    if (v22 >= v10)
    {
      LOWORD(v22) = v10;
    }

    *(this + 12) = v22;
  }

  return result;
}

void WrdCommandDescription::WrdCommandDescription(WrdCommandDescription *this)
{
  *this = &unk_286ED43B8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  CsString::CsString(this + 1);
  CsString::CsString(this + 2);
  CsString::CsString(this + 3);
  CsString::CsString(this + 4);
  CsString::CsString(this + 5);
  *(this + 72) = 0;
  CsString::CsString((this + 152));
}

void sub_25D5DBC34(_Unwind_Exception *a1)
{
  CsString::~CsString(v1 + 5);
  CsString::~CsString(v1 + 4);
  CsString::~CsString(v1 + 3);
  CsString::~CsString(v1 + 2);
  CsString::~CsString(v1 + 1);
  _Unwind_Resume(a1);
}

void WrdCommandDescription::~WrdCommandDescription(WrdCommandDescription *this)
{
  *this = &unk_286ED43B8;
  v2 = (this + 24);
  CsString::~CsString((this + 152));
  CsString::~CsString(this + 5);
  CsString::~CsString(this + 4);
  CsString::~CsString(this + 3);
  CsString::~CsString(this + 2);
  CsString::~CsString(v2);
}

{
  WrdCommandDescription::~WrdCommandDescription(this);

  JUMPOUT(0x25F897000);
}

void *WrdCPTable::operator=(void *a1, uint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  *(v4 + 8) = v3;
  v5 = *(a2 + 8);
  if (((*(a2 + 16) - v5) & 0x3FFFFFFFCLL) != 0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v3 >= a1[3])
      {
        v3 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int const&>(v4, (v5 + v7));
        v5 = *(a2 + 8);
      }

      else
      {
        *v3++ = *(v5 + v7);
      }

      a1[2] = v3;
      ++v8;
      v7 += 4;
    }

    while (v8 < ((*(a2 + 16) - v5) >> 2));
  }

  return a1;
}

void WrdCustomization::WrdCustomization(WrdCustomization *this)
{
  *this = &unk_286ED4460;
  OcBinaryData::OcBinaryData((this + 8));
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
}

void WrdCustomization::~WrdCustomization(WrdCustomization *this)
{
  *this = &unk_286ED4460;
  WrdCustomization::clear(this);
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  OcBinaryData::~OcBinaryData((this + 8));
}

{
  WrdCustomization::~WrdCustomization(this);

  JUMPOUT(0x25F897000);
}

void *WrdCustomization::clear(void *this)
{
  v1 = this;
  v2 = this[10];
  if (((this[11] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[10];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[10];
    }

    while (v3 < ((v1[11] - v2) >> 3));
  }

  v4 = v1[13];
  if (((v1[14] - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      this = *(v4 + 8 * v5);
      if (this)
      {
        this = (*(*this + 8))(this);
        v4 = v1[13];
      }

      *(v4 + 8 * v5++) = 0;
      v4 = v1[13];
    }

    while (v5 < ((v1[14] - v4) >> 3));
  }

  v6 = v1[16];
  if (((v1[17] - v6) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    do
    {
      this = *(v6 + 8 * v7);
      if (this)
      {
        this = (*(*this + 8))(this);
        v6 = v1[16];
      }

      *(v6 + 8 * v7++) = 0;
      v6 = v1[16];
    }

    while (v7 < ((v1[17] - v6) >> 3));
  }

  v8 = v1[19];
  if (((v1[20] - v8) & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    do
    {
      this = *(v8 + 8 * v9);
      if (this)
      {
        this = (*(*this + 8))(this);
        v8 = v1[19];
      }

      *(v8 + 8 * v9++) = 0;
      v8 = v1[19];
    }

    while (v9 < ((v1[20] - v8) >> 3));
  }

  v10 = v1[22];
  if (((v1[23] - v10) & 0x7FFFFFFF8) != 0)
  {
    v11 = 0;
    do
    {
      this = *(v10 + 8 * v11);
      if (this)
      {
        this = (*(*this + 8))(this);
        v10 = v1[22];
      }

      *(v10 + 8 * v11++) = 0;
      v10 = v1[22];
    }

    while (v11 < ((v1[23] - v10) >> 3));
  }

  return this;
}

void WrdCustomizedMenu::WrdCustomizedMenu(WrdCustomizedMenu *this)
{
  *this = &unk_286ED44A0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void WrdCustomizedMenu::~WrdCustomizedMenu(WrdCustomizedMenu *this)
{
  *this = &unk_286ED44A0;
  WrdCustomizedMenu::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  WrdCustomizedMenu::~WrdCustomizedMenu(this);

  JUMPOUT(0x25F897000);
}

void *WrdCustomizedMenu::clear(void *this)
{
  v1 = this[2];
  if (((this[3] - v1) & 0x7FFFFFFF8) != 0)
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = *(v1 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v1 = v2[2];
      }

      *(v1 + 8 * v3++) = 0;
      v1 = v2[2];
    }

    while (v3 < ((v2[3] - v1) >> 3));
  }

  return this;
}

void WrdDocumentFileRecord::WrdDocumentFileRecord(WrdDocumentFileRecord *this)
{
  *this = &unk_286ED4528;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  OcBinaryData::OcBinaryData((this + 32));
}

void sub_25D5DC578(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdDocumentFileRecord::getType(WrdDocumentFileRecord *this)
{
  if (((*(this + 2) - *(this + 1)) & 0x3FFFFFFFCLL) != 0)
  {
    return 6;
  }

  else
  {
    return 8 * (*(this + 12) != 0);
  }
}

uint64_t std::vector<WrdDocumentFileRecord::WrdListToStyleIndex,ChAllocator<WrdDocumentFileRecord::WrdListToStyleIndex>>::__emplace_back_slow_path<WrdDocumentFileRecord::WrdListToStyleIndex const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8) - *a1;
  v5 = (*(a1 + 16) - *a1) >> 2;
  if (2 * v5 <= (v4 >> 2) + 1)
  {
    v6 = (v4 >> 2) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x3FFFFFFFCLL);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x3FFFFFFFCLL) + 4;
  std::vector<EshRegroupItems::Item,ChAllocator<EshRegroupItems::Item>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DC6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdDocumentProperties::operator=(uint64_t a1, uint64_t a2)
{
  WrdDOPTypography::operator=(*(a1 + 16), *(a2 + 16));
  WrdDrawingObjectGrid::operator=(*(a1 + 24), *(a2 + 24));
  WrdAutoSummaryInfo::operator=(*(a1 + 32), *(a2 + 32));
  WrdDateTime::operator=(*(a1 + 40), *(a2 + 40));
  WrdDateTime::operator=(*(a1 + 48), *(a2 + 48));
  WrdDateTime::operator=(*(a1 + 56), *(a2 + 56));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 148) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 148) & 1;
  *(a1 + 148) = v4;
  v5 = v4 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*(a2 + 148) >> 1) & 1));
  *(a1 + 148) = v5;
  v6 = v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((*(a2 + 148) >> 2) & 1));
  *(a1 + 148) = v6;
  v7 = v6 & 0xFFFFFFFFFFFFFFF7 | (8 * ((*(a2 + 148) >> 3) & 1));
  *(a1 + 148) = v7;
  v8 = v7 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((*(a2 + 148) >> 4) & 1));
  *(a1 + 148) = v8;
  v9 = v8 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*(a2 + 148) >> 5) & 1));
  *(a1 + 148) = v9;
  v10 = v9 & 0xFFFFFFFFFFFFFFBFLL | (((*(a2 + 148) >> 6) & 1) << 6);
  *(a1 + 148) = v10;
  v11 = v10 & 0xFFFFFFFFFFFFFF7FLL | (((*(a2 + 148) >> 7) & 1) << 7);
  *(a1 + 148) = v11;
  v12 = v11 & 0xFFFFFFFFFFFFFEFFLL | (((*(a2 + 148) >> 8) & 1) << 8);
  *(a1 + 148) = v12;
  v13 = v12 & 0xFFFFFFFFFFFFFDFFLL | (((*(a2 + 148) >> 9) & 1) << 9);
  *(a1 + 148) = v13;
  v14 = v13 & 0xFFFFFFFFFFFFFBFFLL | (((*(a2 + 148) >> 10) & 1) << 10);
  *(a1 + 148) = v14;
  v15 = v14 & 0xFFFFFFFFFFFFF7FFLL | (((*(a2 + 148) >> 11) & 1) << 11);
  *(a1 + 148) = v15;
  v16 = v15 & 0xFFFFFFFFFFFFEFFFLL | (((*(a2 + 148) >> 12) & 1) << 12);
  *(a1 + 148) = v16;
  v17 = v16 & 0xFFFFFFFFFFFFDFFFLL | (((*(a2 + 148) >> 13) & 1) << 13);
  *(a1 + 148) = v17;
  v18 = v17 & 0xFFFFFFFFFFFFBFFFLL | (((*(a2 + 148) >> 14) & 1) << 14);
  *(a1 + 148) = v18;
  v19 = v18 & 0xFFFFFFFFFFFF7FFFLL | (((*(a2 + 148) >> 15) & 1) << 15);
  *(a1 + 148) = v19;
  v20 = v19 & 0xFFFFFFFFFFFEFFFFLL | (((*(a2 + 148) >> 16) & 1) << 16);
  *(a1 + 148) = v20;
  v21 = v20 & 0xFFFFFFFFFFFDFFFFLL | (((*(a2 + 148) >> 17) & 1) << 17);
  *(a1 + 148) = v21;
  v22 = v21 & 0xFFFFFFFFFFFBFFFFLL | (((*(a2 + 148) >> 18) & 1) << 18);
  *(a1 + 148) = v22;
  v23 = v22 & 0xFFFFFFFFFFF7FFFFLL | (((*(a2 + 148) >> 19) & 1) << 19);
  *(a1 + 148) = v23;
  v24 = v23 & 0xFFFFFFFFFFEFFFFFLL | (((*(a2 + 148) >> 20) & 1) << 20);
  *(a1 + 148) = v24;
  v25 = v24 & 0xFFFFFFFFFFDFFFFFLL | (((*(a2 + 148) >> 21) & 1) << 21);
  *(a1 + 148) = v25;
  v26 = v25 & 0xFFFFFFFFFFBFFFFFLL | (((*(a2 + 148) >> 22) & 1) << 22);
  *(a1 + 148) = v26;
  v27 = v26 & 0xFFFFFFFFFF7FFFFFLL | (((*(a2 + 148) >> 23) & 1) << 23);
  *(a1 + 148) = v27;
  v28 = v27 & 0xFFFFFFFFFEFFFFFFLL | (((*(a2 + 148) >> 24) & 1) << 24);
  *(a1 + 148) = v28;
  v29 = v28 & 0xFFFFFFFFFDFFFFFFLL | (((*(a2 + 148) >> 25) & 1) << 25);
  *(a1 + 148) = v29;
  v30 = v29 & 0xFFFFFFFFFBFFFFFFLL | (((*(a2 + 148) >> 26) & 1) << 26);
  *(a1 + 148) = v30;
  v31 = v30 & 0xFFFFFFFFF7FFFFFFLL | (((*(a2 + 148) >> 27) & 1) << 27);
  *(a1 + 148) = v31;
  v32 = v31 & 0xFFFFFFFFEFFFFFFFLL | (((*(a2 + 148) >> 28) & 1) << 28);
  *(a1 + 148) = v32;
  v33 = v32 & 0xFFFFFFFFDFFFFFFFLL | (((*(a2 + 148) >> 29) & 1) << 29);
  *(a1 + 148) = v33;
  v34 = v33 & 0xFFFFFFFFBFFFFFFFLL | (((*(a2 + 148) >> 30) & 1) << 30);
  *(a1 + 148) = v34;
  v35 = v34 & 0xFFFFFFFF7FFFFFFFLL | (((*(a2 + 148) >> 31) & 1) << 31);
  *(a1 + 148) = v35;
  v36 = v35 & 0xFFFFFFFEFFFFFFFFLL | ((HIDWORD(*(a2 + 148)) & 1) << 32);
  *(a1 + 148) = v36;
  v37 = v36 & 0xFFFFFFFDFFFFFFFFLL | (((*(a2 + 148) >> 33) & 1) << 33);
  *(a1 + 148) = v37;
  v38 = v37 & 0xFFFFFFFBFFFFFFFFLL | (((*(a2 + 148) >> 34) & 1) << 34);
  *(a1 + 148) = v38;
  v39 = v38 & 0xFFFFFFF7FFFFFFFFLL | (((*(a2 + 148) >> 35) & 1) << 35);
  *(a1 + 148) = v39;
  v40 = v39 & 0xFFFFFFEFFFFFFFFFLL | (((*(a2 + 148) >> 36) & 1) << 36);
  *(a1 + 148) = v40;
  v41 = v40 & 0xFFFFFFDFFFFFFFFFLL | (((*(a2 + 148) >> 37) & 1) << 37);
  *(a1 + 148) = v41;
  v42 = v41 & 0xFFFFFFBFFFFFFFFFLL | (((*(a2 + 148) >> 38) & 1) << 38);
  *(a1 + 148) = v42;
  v43 = v42 & 0xFFFFFF7FFFFFFFFFLL | (((*(a2 + 148) >> 39) & 1) << 39);
  *(a1 + 148) = v43;
  v44 = v43 & 0xFFFFFEFFFFFFFFFFLL | (((*(a2 + 148) >> 40) & 1) << 40);
  *(a1 + 148) = v44;
  v45 = v44 & 0xFFFFFDFFFFFFFFFFLL | (((*(a2 + 148) >> 41) & 1) << 41);
  *(a1 + 148) = v45;
  v46 = v45 & 0xFFFFFBFFFFFFFFFFLL | (((*(a2 + 148) >> 42) & 1) << 42);
  *(a1 + 148) = v46;
  v47 = v46 & 0xFFFFF7FFFFFFFFFFLL | (((*(a2 + 148) >> 43) & 1) << 43);
  *(a1 + 148) = v47;
  v48 = v47 & 0xFFFFEFFFFFFFFFFFLL | (((*(a2 + 148) >> 44) & 1) << 44);
  *(a1 + 148) = v48;
  v49 = v48 & 0xFFFFDFFFFFFFFFFFLL | (((*(a2 + 148) >> 45) & 1) << 45);
  *(a1 + 148) = v49;
  v50 = v49 & 0xFFFFBFFFFFFFFFFFLL | (((*(a2 + 148) >> 46) & 1) << 46);
  *(a1 + 148) = v50;
  v51 = v50 & 0xFFFF7FFFFFFFFFFFLL | (((*(a2 + 148) >> 47) & 1) << 47);
  *(a1 + 148) = v51;
  v52 = v51 & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(*(a2 + 148)) & 1) << 48);
  *(a1 + 148) = v52;
  v53 = v52 & 0xFFFDFFFFFFFFFFFFLL | (((*(a2 + 148) >> 49) & 1) << 49);
  *(a1 + 148) = v53;
  v54 = v53 & 0xFFFBFFFFFFFFFFFFLL | (((*(a2 + 148) >> 50) & 1) << 50);
  *(a1 + 148) = v54;
  v55 = v54 & 0xFFF7FFFFFFFFFFFFLL | (((*(a2 + 148) >> 51) & 1) << 51);
  *(a1 + 148) = v55;
  v56 = v55 & 0xFFEFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 52) & 1) << 52);
  *(a1 + 148) = v56;
  v57 = v56 & 0xFFDFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 53) & 1) << 53);
  *(a1 + 148) = v57;
  v58 = v57 & 0xFFBFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 54) & 1) << 54);
  *(a1 + 148) = v58;
  v59 = v58 & 0xFF7FFFFFFFFFFFFFLL | (((*(a2 + 148) >> 55) & 1) << 55);
  *(a1 + 148) = v59;
  v60 = v59 & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(*(a2 + 148)) & 1) << 56);
  *(a1 + 148) = v60;
  v61 = v60 & 0xFDFFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 57) & 1) << 57);
  *(a1 + 148) = v61;
  v62 = v61 & 0xFBFFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 58) & 1) << 58);
  *(a1 + 148) = v62;
  v63 = v62 & 0xF7FFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 59) & 1) << 59);
  *(a1 + 148) = v63;
  v64 = v63 & 0xEFFFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 60) & 1) << 60);
  *(a1 + 148) = v64;
  v65 = v64 & 0xDFFFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 61) & 1) << 61);
  *(a1 + 148) = v65;
  v66 = v65 & 0xBFFFFFFFFFFFFFFFLL | (((*(a2 + 148) >> 62) & 1) << 62);
  *(a1 + 148) = v66;
  *(a1 + 148) = *(a2 + 148) & 0x8000000000000000 | v66 & 0x7FFFFFFFFFFFFFFFLL;
  v67 = *(a1 + 156) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 156) & 1;
  *(a1 + 156) = v67;
  v68 = v67 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*(a2 + 156) >> 1) & 1));
  *(a1 + 156) = v68;
  v69 = v68 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((*(a2 + 156) >> 2) & 1));
  *(a1 + 156) = v69;
  v70 = v69 & 0xFFFFFFFFFFFFFFF7 | (8 * ((*(a2 + 156) >> 3) & 1));
  *(a1 + 156) = v70;
  v71 = v70 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((*(a2 + 156) >> 4) & 1));
  *(a1 + 156) = v71;
  v72 = v71 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*(a2 + 156) >> 5) & 1));
  *(a1 + 156) = v72;
  v73 = v72 & 0xFFFFFFFFFFFFFFBFLL | (((*(a2 + 156) >> 6) & 1) << 6);
  *(a1 + 156) = v73;
  v74 = v73 & 0xFFFFFFFFFFFFFF7FLL | (((*(a2 + 156) >> 7) & 1) << 7);
  *(a1 + 156) = v74;
  v75 = v74 & 0xFFFFFFFFFFFFFEFFLL | (((*(a2 + 156) >> 8) & 1) << 8);
  *(a1 + 156) = v75;
  v76 = v75 & 0xFFFFFFFFFFFFFDFFLL | (((*(a2 + 156) >> 9) & 1) << 9);
  *(a1 + 156) = v76;
  v77 = v76 & 0xFFFFFFFFFFFFFBFFLL | (((*(a2 + 156) >> 10) & 1) << 10);
  *(a1 + 156) = v77;
  v78 = v77 & 0xFFFFFFFFFFFFF7FFLL | (((*(a2 + 156) >> 11) & 1) << 11);
  *(a1 + 156) = v78;
  v79 = v78 & 0xFFFFFFFFFFFFEFFFLL | (((*(a2 + 156) >> 12) & 1) << 12);
  *(a1 + 156) = v79;
  v80 = v79 & 0xFFFFFFFFFFFFDFFFLL | (((*(a2 + 156) >> 13) & 1) << 13);
  *(a1 + 156) = v80;
  v81 = v80 & 0xFFFFFFFFFFFFBFFFLL | (((*(a2 + 156) >> 14) & 1) << 14);
  *(a1 + 156) = v81;
  v82 = v81 & 0xFFFFFFFFFFFF7FFFLL | (((*(a2 + 156) >> 15) & 1) << 15);
  *(a1 + 156) = v82;
  v83 = v82 & 0xFFFFFFFFFFFEFFFFLL | (((*(a2 + 156) >> 16) & 1) << 16);
  *(a1 + 156) = v83;
  v84 = v83 & 0xFFFFFFFFFFFDFFFFLL | (((*(a2 + 156) >> 17) & 1) << 17);
  *(a1 + 156) = v84;
  v85 = v84 & 0xFFFFFFFFFFFBFFFFLL | (((*(a2 + 156) >> 18) & 1) << 18);
  *(a1 + 156) = v85;
  v86 = v85 & 0xFFFFFFFFFFF7FFFFLL | (((*(a2 + 156) >> 19) & 1) << 19);
  *(a1 + 156) = v86;
  v87 = v86 & 0xFFFFFFFFFFEFFFFFLL | (((*(a2 + 156) >> 20) & 1) << 20);
  *(a1 + 156) = v87;
  v88 = v87 & 0xFFFFFFFFFFDFFFFFLL | (((*(a2 + 156) >> 21) & 1) << 21);
  *(a1 + 156) = v88;
  v89 = v88 & 0xFFFFFFFFFFBFFFFFLL | (((*(a2 + 156) >> 22) & 1) << 22);
  *(a1 + 156) = v89;
  v90 = v89 & 0xFFFFFFFFFF7FFFFFLL | (((*(a2 + 156) >> 23) & 1) << 23);
  *(a1 + 156) = v90;
  v91 = v90 & 0xFFFFFFFFFEFFFFFFLL | (((*(a2 + 156) >> 24) & 1) << 24);
  *(a1 + 156) = v91;
  v92 = v91 & 0xFFFFFFFFFDFFFFFFLL | (((*(a2 + 156) >> 25) & 1) << 25);
  *(a1 + 156) = v92;
  v93 = v92 & 0xFFFFFFFFFBFFFFFFLL | (((*(a2 + 156) >> 26) & 1) << 26);
  *(a1 + 156) = v93;
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 218) = *(a2 + 218);
  v94 = v93 & 0xFFFFFFFFDFFFFFFFLL | (((*(a2 + 156) >> 29) & 1) << 29);
  *(a1 + 156) = v94;
  v95 = v94 & 0xFFFFFFFFBFFFFFFFLL | (((*(a2 + 156) >> 30) & 1) << 30);
  *(a1 + 156) = v95;
  v96 = v95 & 0xFFFFFFFF7FFFFFFFLL | (((*(a2 + 156) >> 31) & 1) << 31);
  *(a1 + 156) = v96;
  v97 = v96 & 0xFFFFFFFEFFFFFFFFLL | ((HIDWORD(*(a2 + 156)) & 1) << 32);
  *(a1 + 156) = v97;
  v98 = v97 & 0xFFFFFFFDFFFFFFFFLL | (((*(a2 + 156) >> 33) & 1) << 33);
  *(a1 + 156) = v98;
  v99 = v98 & 0xFFFFFFFBFFFFFFFFLL | (((*(a2 + 156) >> 34) & 1) << 34);
  *(a1 + 156) = v99;
  v100 = v99 & 0xFFFFFFF7FFFFFFFFLL | (((*(a2 + 156) >> 35) & 1) << 35);
  *(a1 + 156) = v100;
  v101 = v100 & 0xFFFFFFEFFFFFFFFFLL | (((*(a2 + 156) >> 36) & 1) << 36);
  *(a1 + 156) = v101;
  v102 = v101 & 0xFFFFFFDFFFFFFFFFLL | (((*(a2 + 156) >> 37) & 1) << 37);
  *(a1 + 156) = v102;
  v103 = v102 & 0xFFFFFFBFFFFFFFFFLL | (((*(a2 + 156) >> 38) & 1) << 38);
  *(a1 + 156) = v103;
  v104 = v103 & 0xFFFFFF7FFFFFFFFFLL | (((*(a2 + 156) >> 39) & 1) << 39);
  *(a1 + 156) = v104;
  v105 = v104 & 0xFFFFFEFFFFFFFFFFLL | (((*(a2 + 156) >> 40) & 1) << 40);
  *(a1 + 156) = v105;
  v106 = v105 & 0xFFFFFDFFFFFFFFFFLL | (((*(a2 + 156) >> 41) & 1) << 41);
  *(a1 + 156) = v106;
  v107 = v106 & 0xFFFFFBFFFFFFFFFFLL | (((*(a2 + 156) >> 42) & 1) << 42);
  *(a1 + 156) = v107;
  v108 = v107 & 0xFFFFF7FFFFFFFFFFLL | (((*(a2 + 156) >> 43) & 1) << 43);
  *(a1 + 156) = v108;
  v109 = v108 & 0xFFFFEFFFFFFFFFFFLL | (((*(a2 + 156) >> 44) & 1) << 44);
  *(a1 + 156) = v109;
  v110 = v109 & 0xFFFFDFFFFFFFFFFFLL | (((*(a2 + 156) >> 45) & 1) << 45);
  *(a1 + 156) = v110;
  v111 = v110 & 0xFFFFBFFFFFFFFFFFLL | (((*(a2 + 156) >> 46) & 1) << 46);
  *(a1 + 156) = v111;
  v112 = v111 & 0xFFFF7FFFFFFFFFFFLL | (((*(a2 + 156) >> 47) & 1) << 47);
  *(a1 + 156) = v112;
  v113 = v112 & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(*(a2 + 156)) & 1) << 48);
  *(a1 + 156) = v113;
  v114 = v113 & 0xFFFDFFFFFFFFFFFFLL | (((*(a2 + 156) >> 49) & 1) << 49);
  *(a1 + 156) = v114;
  v115 = v114 & 0xFFFBFFFFFFFFFFFFLL | (((*(a2 + 156) >> 50) & 1) << 50);
  *(a1 + 156) = v115;
  v116 = v115 & 0xFFF7FFFFFFFFFFFFLL | (((*(a2 + 156) >> 51) & 1) << 51);
  *(a1 + 156) = v116;
  v117 = v116 & 0xFFEFFFFFFFFFFFFFLL | (((*(a2 + 156) >> 52) & 1) << 52);
  *(a1 + 156) = v117;
  v118 = v117 & 0xFFDFFFFFFFFFFFFFLL | (((*(a2 + 156) >> 53) & 1) << 53);
  *(a1 + 156) = v118;
  v119 = v118 & 0xFFBFFFFFFFFFFFFFLL | (((*(a2 + 156) >> 54) & 1) << 54);
  *(a1 + 156) = v119;
  v120 = v119 & 0xFF7FFFFFFFFFFFFFLL | (((*(a2 + 156) >> 55) & 1) << 55);
  *(a1 + 156) = v120;
  v121 = v120 & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(*(a2 + 156)) & 1) << 56);
  *(a1 + 156) = v121;
  *(a1 + 156) = v121 & 0xFDFFFFFFFFFFFFFFLL | (((*(a2 + 156) >> 57) & 1) << 57);
  *(a1 + 222) = *(a2 + 222);
  *(a1 + 224) = *(a2 + 224);
  v122 = *(a1 + 232);
  if (v122)
  {
    MEMORY[0x25F896FE0](v122, 0x1000C8077774924);
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v123 = *(a2 + 240);
  if (v123 && *(a2 + 232))
  {
    *(a1 + 240) = v123;
    operator new[](v123);
  }

  v124 = *(a1 + 248);
  if (v124)
  {
    MEMORY[0x25F896FE0](v124, 0x1000C8077774924);
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v125 = *(a2 + 256);
  if (v125 && *(a2 + 248))
  {
    *(a1 + 256) = v125;
    operator new[](v125);
  }

  return a1;
}

void WrdDocumentProperties::clone(WrdDocumentProperties *this)
{
  (*(*this->var2 + 16))(this->var2);
  (*(*this->var3 + 16))(this->var3);
  (*(*this->var4 + 16))(this->var4);
  (*(this->var5->var0 + 2))(this->var5);
  (*(this->var6->var0 + 2))(this->var6);
  (*(this->var7->var0 + 2))(this->var7);
  operator new();
}

WrdDocumentProperties *WrdDocumentProperties::takeThemeData(WrdDocumentProperties *this, char *a2, unsigned int a3)
{
  if (a2 && a3)
  {
    v5 = this;
    this = this->var175;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }

    v5->var176 = a3;
    v5->var175 = a2;
  }

  return this;
}

WrdDocumentProperties *WrdDocumentProperties::takeColorSchemeMapXmlStream(WrdDocumentProperties *this, char *a2, unsigned int a3)
{
  if (a2 && a3)
  {
    v5 = this;
    this = this->var177;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }

    v5->var178 = a3;
    v5->var177 = a2;
  }

  return this;
}

double WrdDrawingObjectGrid::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a1 + 20) & 0xFE | *(a2 + 20) & 1;
  *(a1 + 20) = v3;
  *(a1 + 20) = v3 & 0xFD | *(a2 + 20) & 2;
  return result;
}

void WrdEmbeddedTrueTypeFont::~WrdEmbeddedTrueTypeFont(WrdEmbeddedTrueTypeFont *this)
{
  *this = &unk_286ED4620;
  OcBinaryData::~OcBinaryData((this + 8));
}

{
  *this = &unk_286ED4620;
  OcBinaryData::~OcBinaryData((this + 8));

  JUMPOUT(0x25F897000);
}

void WrdEmbeddedTrueTypeFontTable::WrdEmbeddedTrueTypeFontTable(WrdEmbeddedTrueTypeFontTable *this)
{
  *this = &unk_286ED4668;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
}

void *WrdEmbeddedTrueTypeFontTable::operator=(void *a1, uint64_t a2)
{
  WrdAnnotationDateTimeTable::clear(a1);
  v4 = *(a2 + 8);
  if (((*(a2 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      a1[4] = v6;
      v7 = a1[2];
      if (v7 >= a1[3])
      {
        v8 = std::vector<WrdEmbeddedTrueTypeFont *,ChAllocator<WrdEmbeddedTrueTypeFont *>>::__emplace_back_slow_path<WrdEmbeddedTrueTypeFont * const&>(a1 + 1, a1 + 4);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      a1[4] = 0;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < ((*(a2 + 16) - v4) >> 3));
  }

  return a1;
}

void WrdEmbeddedTrueTypeFontTable::~WrdEmbeddedTrueTypeFontTable(WrdEmbeddedTrueTypeFontTable *this)
{
  *this = &unk_286ED4668;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  WrdAnnotationDateTimeTable::clear(this);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  WrdEmbeddedTrueTypeFontTable::~WrdEmbeddedTrueTypeFontTable(this);

  JUMPOUT(0x25F897000);
}

void *WrdEmbeddedTrueTypeFontTable::append(WrdEmbeddedTrueTypeFontTable *this, WrdEmbeddedTrueTypeFont *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdEmbeddedTrueTypeFont *,ChAllocator<WrdEmbeddedTrueTypeFont *>>::__emplace_back_slow_path<WrdEmbeddedTrueTypeFont * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t std::vector<WrdEmbeddedTrueTypeFont *,ChAllocator<WrdEmbeddedTrueTypeFont *>>::__emplace_back_slow_path<WrdEmbeddedTrueTypeFont * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DDA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdEmbeddedTTFRecordTable::append(void *a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1[2];
  if (v3 >= a1[3])
  {
    result = std::vector<WrdEmbeddedTTFRecord *,ChAllocator<WrdEmbeddedTTFRecord *>>::__emplace_back_slow_path<WrdEmbeddedTTFRecord * const&>(a1 + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = (v3 + 1);
  }

  a1[2] = result;
  return result;
}

uint64_t std::vector<WrdEmbeddedTTFRecord *,ChAllocator<WrdEmbeddedTTFRecord *>>::__emplace_back_slow_path<WrdEmbeddedTTFRecord * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DDBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWrdEshGroup::~WrdEshGroup(WrdEshGroup *this)
{
  v1 = (this - 272);
  *(this - 34) = &unk_286ED4990;
  *this = &unk_286ED4A40;
  XlEshGroup::cleanup((this - 272));

  EshGroup::~EshGroup(v1);
}

{
  WrdEshGroup::~WrdEshGroup((this - 272));
}

void non-virtual thunk toWrdEshShape::~WrdEshShape(WrdEshShape *this)
{
  v1 = (this - 416);
  *(this - 52) = &unk_286ED4AD8;
  *this = &unk_286ED4BA8;
  XlEshShape::cleanup((this - 416));

  EshContentBase::~EshContentBase(v1);
}

{
  WrdEshShape::~WrdEshShape((this - 416));
}

void WrdFieldPosition::WrdFieldPosition(WrdFieldPosition *this)
{
  this->var0 = &unk_286ED4C78;
  this->var1 = 0;
  operator new();
}

uint64_t WrdFieldPositionTable::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  WrdBookmarkTable::clear(a1);
  v4 = *(a2 + 16);
  if (((*(a2 + 24) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = *(a1 + 24);
      if (v7 >= *(a1 + 32))
      {
        v8 = std::vector<WrdFieldPosition *,ChAllocator<WrdFieldPosition *>>::__emplace_back_slow_path<WrdFieldPosition *>((a1 + 16), &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a1 + 24) = v8;
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < ((*(a2 + 24) - v4) >> 3));
  }

  return a1;
}

void sub_25D5DE1AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WrdFieldPositionTable::lowerBoundOfCP(WrdFieldPositionTable *this, int a2)
{
  WrdFieldPosition::WrdFieldPosition(&v13);
  v13.var1 = a2;
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v5 != v4)
  {
    v6 = (v5 - v4) >> 3;
    v5 = *(this + 2);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 1);
      v6 += ~(v6 >> 1);
      if (*(v10 + 8) < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v11 = (v5 - v4) >> 3;
  WrdFieldPosition::~WrdFieldPosition(&v13);
  return v11;
}

uint64_t std::vector<WrdFieldPosition *,ChAllocator<WrdFieldPosition *>>::__emplace_back_slow_path<WrdFieldPosition *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DE3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdFieldPosition *,ChAllocator<WrdFieldPosition *>>::__emplace_back_slow_path<WrdFieldPosition * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DE500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdFileShapeAddressTable::operator=(uint64_t a1, uint64_t a2)
{
  WrdBookmarkTable::clear(a1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  if (((*(a2 + 24) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = *(a1 + 24);
      if (v7 >= *(a1 + 32))
      {
        v8 = std::vector<WrdFileShapeAddress *,ChAllocator<WrdFileShapeAddress *>>::__emplace_back_slow_path<WrdFileShapeAddress *>((a1 + 16), &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a1 + 24) = v8;
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < ((*(a2 + 24) - v4) >> 3));
  }

  return a1;
}

void sub_25D5DE668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdFileShapeAddress *,ChAllocator<WrdFileShapeAddress *>>::__emplace_back_slow_path<WrdFileShapeAddress *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DE810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdFileShapeAddress *,ChAllocator<WrdFileShapeAddress *>>::__emplace_back_slow_path<WrdFileShapeAddress * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DE930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdFontFamilyName::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 56) = *(a2 + 56);
    *(result + 80) = *(a2 + 80);
    *(result + 82) = *(a2 + 82);
    operator new[](10);
  }

  return result;
}

void *WrdFontFamilyNameTable::operator=(void *a1, uint64_t a2)
{
  WrdAnnotationDateTimeTable::clear(a1);
  v4 = *(a2 + 8);
  if (((*(a2 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = a1[2];
      if (v7 >= a1[3])
      {
        v8 = std::vector<WrdFontFamilyName *,ChAllocator<WrdFontFamilyName *>>::__emplace_back_slow_path<WrdFontFamilyName *>(a1 + 1, &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < ((*(a2 + 16) - v4) >> 3));
  }

  return a1;
}

void sub_25D5DEB94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdFontFamilyName *,ChAllocator<WrdFontFamilyName *>>::__emplace_back_slow_path<WrdFontFamilyName *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DED68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdFontFamilyName *,ChAllocator<WrdFontFamilyName *>>::__emplace_back_slow_path<WrdFontFamilyName * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DEE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdFormattedDiskPage::setFC(WrdFormattedDiskPage *this, unsigned int a2, uint64_t a3)
{
  v3 = *(this + 2);
  if (*(v3 + 511) < a2 || a2 >= 0x7F)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v4 = (v3 + 4 * a2);

  return CsLeWriteUInt32(a3, v4);
}

uint64_t WrdFormattedDiskPage::getSmallestGrpprlOffset(WrdFormattedDiskPage *this)
{
  v1 = *(this + 12);
  if (v1 == 0xFFFF)
  {
    if (*(*(this + 2) + 511))
    {
      v3 = 0;
      LODWORD(v1) = 0xFFFF;
      do
      {
        if (v1 >= (*(*this + 32))(this, v3))
        {
          v1 = (*(*this + 32))(this, v3);
        }

        else
        {
          v1 = *(this + 12);
        }

        *(this + 12) = v1;
        ++v3;
      }

      while (*(*(this + 2) + 511) > v3);
    }

    else
    {
      return 0xFFFFLL;
    }
  }

  return v1;
}

uint64_t WrdFormattedDiskPage::findGrpprlOffset(WrdFormattedDiskPage *this, unsigned int a2, const unsigned __int8 *a3)
{
  if (*(*(this + 2) + 511))
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if ((*(*this + 40))(this, v6) == a2)
      {
        v8 = (*(*this + 32))(this, v6);
        v9 = v8;
        v10 = *(this + 2);
        if (a2 && memcmp(a3, (v10 + v8), v7))
        {
          v9 = -1;
        }
      }

      else
      {
        v10 = *(this + 2);
        v9 = -1;
      }
    }

    while (*(v10 + 511) > ++v6 && ~v9 == 0);
  }

  else
  {
    return -1;
  }

  return v9;
}

void WrdFormFieldBinaryData::WrdFormFieldBinaryData(WrdFormFieldBinaryData *this)
{
  *this = &unk_286ED4E60;
  *(this + 1) = 0;
  OcBinaryData::OcBinaryData((this + 16));
  *(this + 32) = 0;
  *(this + 66) = 0;
  OcText::OcText((this + 72));
  CsString::CsString(this + 5);
  CsString::CsString(this + 6);
  CsString::CsString(this + 7);
  CsString::CsString(this + 8);
  OcText::OcText((this + 216));
  OcText::OcText((this + 264));
  OcBinaryData::OcBinaryData((this + 312));
}

void sub_25D5DF1A0(_Unwind_Exception *a1)
{
  OcText::~OcText((v1 + 264));
  OcText::~OcText((v1 + 216));
  CsString::~CsString((v1 + 192));
  CsString::~CsString((v1 + 168));
  CsString::~CsString((v1 + 144));
  CsString::~CsString((v1 + 120));
  OcText::~OcText((v1 + 72));
  OcBinaryData::~OcBinaryData((v1 + 16));
  _Unwind_Resume(a1);
}

void WrdFormFieldBinaryData::~WrdFormFieldBinaryData(WrdFormFieldBinaryData *this)
{
  WrdFormFieldBinaryData::~WrdFormFieldBinaryData(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4E60;
  v2 = (this + 16);
  OcBinaryData::~OcBinaryData((this + 312));
  OcText::~OcText((this + 264));
  OcText::~OcText((this + 216));
  CsString::~CsString(this + 8);
  CsString::~CsString(this + 7);
  CsString::~CsString(this + 6);
  CsString::~CsString(this + 5);
  OcText::~OcText((this + 72));
  OcBinaryData::~OcBinaryData(v2);
}

void WrdFrameProperties::~WrdFrameProperties(WrdFrameProperties *this)
{
  *this = &unk_286ED4EA0;
  OcBinaryData::~OcBinaryData((this + 8));
}

{
  *this = &unk_286ED4EA0;
  OcBinaryData::~OcBinaryData((this + 8));

  JUMPOUT(0x25F897000);
}

void WrdKeyboardShortcut::WrdKeyboardShortcut(WrdKeyboardShortcut *this)
{
  *this = &unk_286ED4EE8;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

void WrdKeyboardShortcut::~WrdKeyboardShortcut(WrdKeyboardShortcut *this)
{
  *this = &unk_286ED4EE8;
}

{
  *this = &unk_286ED4EE8;
  JUMPOUT(0x25F897000);
}

void WrdListFormat::operator=(uint64_t a1, uint64_t a2)
{
  WrdListFormat::cleanup(a1);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a1 + 50) & 0xFFFE | *(a2 + 50) & 1;
  *(a1 + 50) = *(a1 + 50) & 0xFFFE | *(a2 + 50) & 1;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 50) >> 1) & 1));
  *(a1 + 50) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 50) >> 2) & 1));
  *(a1 + 50) = v6;
  v7 = v6 & 0xFFFFFFF7 | (8 * ((*(a2 + 50) >> 3) & 1));
  *(a1 + 50) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * ((*(a2 + 50) >> 4) & 1));
  *(a1 + 50) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * ((*(a2 + 50) >> 5) & 1));
  *(a1 + 50) = v9;
  v10 = v9 & 0xFFFFFFBF | (((*(a2 + 50) >> 6) & 1) << 6);
  *(a1 + 50) = v10;
  v11 = v10 & 0xFFFFFF7F | (((*(a2 + 50) >> 7) & 1) << 7);
  *(a1 + 50) = v11;
  v12 = v11 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 50)) & 1) << 8);
  *(a1 + 50) = v12;
  v13 = v12 & 0xFFFFFDFF | (((*(a2 + 50) >> 9) & 1) << 9);
  *(a1 + 50) = v13;
  v14 = v13 & 0xFFFFFBFF | (((*(a2 + 50) >> 10) & 1) << 10);
  *(a1 + 50) = v14;
  v15 = v14 & 0xFFFFF7FF | (((*(a2 + 50) >> 11) & 1) << 11);
  *(a1 + 50) = v15;
  *(a1 + 50) = v15 & 0xEFFF | *(a2 + 50) & 0x1000;
  operator new[](18);
}

void sub_25D5DF870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListLevelFormat *,ChAllocator<WrdListLevelFormat *>>::__emplace_back_slow_path<WrdListLevelFormat *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListLevelFormat *,ChAllocator<WrdListLevelFormat *>>::__emplace_back_slow_path<WrdListLevelFormat * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DFB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdListFormatOverride::operator=(uint64_t a1, uint64_t a2)
{
  WrdListFormatOverride::cleanup(a1);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a1 + 50) & 0xFE | *(a2 + 50) & 1;
  *(a1 + 50) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 50) >> 1) & 1));
  *(a1 + 50) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 50) >> 2) & 1));
  *(a1 + 50) = v6;
  v7 = v6 & 0xFFFFFFF7 | (8 * ((*(a2 + 50) >> 3) & 1));
  *(a1 + 50) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * ((*(a2 + 50) >> 4) & 1));
  *(a1 + 50) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * ((*(a2 + 50) >> 5) & 1));
  *(a1 + 50) = v9;
  LOBYTE(v9) = v9 & 0xBF | (((*(a2 + 50) & 0x40) != 0) << 6);
  *(a1 + 50) = v9;
  *(a1 + 50) = *(a2 + 50) & 0x80 | v9 & 0x7F;
  v10 = *(a2 + 24);
  if (((*(a2 + 32) - v10) & 0x7FFFFFFF8) != 0)
  {
    v11 = 0;
    do
    {
      v12 = (*(**(v10 + 8 * v11) + 16))(*(v10 + 8 * v11));
      v16 = v12;
      v13 = *(a1 + 32);
      if (v13 >= *(a1 + 40))
      {
        v14 = std::vector<WrdListLevelFormatOverride *,ChAllocator<WrdListLevelFormatOverride *>>::__emplace_back_slow_path<WrdListLevelFormatOverride *>((a1 + 24), &v16);
      }

      else
      {
        *v13 = v12;
        v14 = (v13 + 1);
      }

      *(a1 + 32) = v14;
      ++v11;
      v10 = *(a2 + 24);
    }

    while (v11 < ((*(a2 + 32) - v10) >> 3));
  }

  return a1;
}

void sub_25D5DFD00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListLevelFormatOverride *,ChAllocator<WrdListLevelFormatOverride *>>::__emplace_back_slow_path<WrdListLevelFormatOverride *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5DFEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *WrdListFormatOverrideTable::operator=(void *a1, uint64_t a2)
{
  WrdAnnotationDateTimeTable::clear(a1);
  v4 = *(a2 + 8);
  if (((*(a2 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = a1[2];
      if (v7 >= a1[3])
      {
        v8 = std::vector<WrdListFormatOverride *,ChAllocator<WrdListFormatOverride *>>::__emplace_back_slow_path<WrdListFormatOverride *>(a1 + 1, &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < ((*(a2 + 16) - v4) >> 3));
  }

  return a1;
}

void sub_25D5DFFF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListFormatOverride *,ChAllocator<WrdListFormatOverride *>>::__emplace_back_slow_path<WrdListFormatOverride *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E0190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListFormatOverride *,ChAllocator<WrdListFormatOverride *>>::__emplace_back_slow_path<WrdListFormatOverride * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E02B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CsHeapVector<WrdListFormat>::copyElements(void *a1, void *a2)
{
  v4 = a2[1] - *a2;
  result = std::vector<WrdListFormat *,ChAllocator<WrdListFormat *>>::reserve(a1, v4 >> 3);
  if ((v4 >> 3))
  {
    v6 = 0;
    v7 = (v4 >> 3);
    do
    {
      if (v6 >= ((a2[1] - *a2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = (*(**(*a2 + 8 * v6) + 16))(*(*a2 + 8 * v6));
      CsSimpleHeapVector<WrdListFormat>::pushBack(a1, &v8);
      result = v8;
      if (v8)
      {
        result = (*(*v8 + 8))(v8);
      }

      v8 = 0;
      ++v6;
    }

    while (v7 != v6);
  }

  return result;
}

void sub_25D5E04CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WrdAnnotationTable::operator=(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<WrdListFormat *,ChAllocator<WrdListFormat *>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(result, a2);
  }

  return result;
}

void sub_25D5E0584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdListFormat *,ChAllocator<WrdListFormat *>>::__emplace_back_slow_path<WrdListFormat *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E06A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdMenuCustomizationOperation::WrdMenuCustomizationOperation(WrdMenuCustomizationOperation *this)
{
  *this = &unk_286ED50E8;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  WrdCommandDescription::WrdCommandDescription((this + 24));
}

void WrdMenuCustomizationOperation::~WrdMenuCustomizationOperation(WrdMenuCustomizationOperation *this)
{
  *this = &unk_286ED50E8;
  WrdCommandDescription::~WrdCommandDescription((this + 24));
}

{
  *this = &unk_286ED50E8;
  WrdCommandDescription::~WrdCommandDescription((this + 24));

  JUMPOUT(0x25F897000);
}

void WrdNewMenu::WrdNewMenu(WrdNewMenu *this)
{
  *this = &unk_286ED5128;
  v2 = (this + 32);
  CsString::CsString((this + 8));
  CsString::CsString(v2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

void WrdNewMenu::~WrdNewMenu(WrdNewMenu *this)
{
  *this = &unk_286ED5128;
  WrdNewMenu::clear(this);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  CsString::~CsString((this + 32));
  CsString::~CsString((this + 8));
}

{
  WrdNewMenu::~WrdNewMenu(this);

  JUMPOUT(0x25F897000);
}

void *WrdNewMenu::clear(void *this)
{
  v1 = this[7];
  if (((this[8] - v1) & 0x7FFFFFFF8) != 0)
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = *(v1 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v1 = v2[7];
      }

      *(v1 + 8 * v3++) = 0;
      v1 = v2[7];
    }

    while (v3 < ((v2[8] - v1) >> 3));
  }

  return this;
}

uint64_t WrdNoteTable::operator=(uint64_t a1, uint64_t a2)
{
  WrdBookmarkTable::clear(a1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  if (((*(a2 + 24) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = *(a1 + 24);
      if (v7 >= *(a1 + 32))
      {
        v8 = std::vector<WrdNote *,ChAllocator<WrdNote *>>::__emplace_back_slow_path<WrdNote *>((a1 + 16), &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a1 + 24) = v8;
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < ((*(a2 + 24) - v4) >> 3));
  }

  return a1;
}

void sub_25D5E0C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdNote *,ChAllocator<WrdNote *>>::__emplace_back_slow_path<WrdNote *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E0E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdNote *,ChAllocator<WrdNote *>>::__emplace_back_slow_path<WrdNote * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E0F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdOffsetPairList::translateOffsetsBy(uint64_t this, unsigned int a2)
{
  v2 = *this;
  v3 = *(this + 8) - *this;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = (v3 >> 3);
    v5 = vdup_n_s32(a2);
    do
    {
      *v2 = vadd_s32(*v2, v5);
      ++v2;
      --v4;
    }

    while (v4);
  }

  return this;
}

void WrdOutlineListData::WrdOutlineListData(WrdOutlineListData *this, WrdAutoNumberLevelDescriptor *a2)
{
  *this = &unk_286ED5298;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CsString::CsString((this + 40));
  *(this + 4) = a2;
}

void sub_25D5E1060(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D5E113C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v1, 0x10B1C407E9D48E5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t WrdOutlineListData::operator=(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 72; i += 8)
  {
    WrdAutoNumberLevelDescriptor::operator=(*(*(a1 + 8) + i), *(*(a2 + 8) + i));
  }

  *(a1 + 56) = 0;
  bzero(*(a1 + 48), 2 * *(a1 + 60));
  CsString::append((a1 + 40), (a2 + 40));
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t std::vector<WrdAutoNumberLevelDescriptor *,ChAllocator<WrdAutoNumberLevelDescriptor *>>::__emplace_back_slow_path<WrdAutoNumberLevelDescriptor *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E1308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdPAPXFKP::getGrpprlSize(WrdPAPXFKP *this)
{
  v2 = (*(*this + 32))(this);
  v3 = *(this + 2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (v2)
  {
    v4 = (v3 + v2);
    v5 = *v4;
    if (!*v4)
    {
      v5 = v4[1];
    }
  }

  else
  {
    v5 = 0;
  }

  return (2 * v5);
}

uint64_t WrdPAPXFKP::setGrpprlOffset(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 16);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(v3 + 4 * *(v3 + WrdFormattedDiskPage::s_unPageBufferSize - 1) + 13 * a2 + 4) = a3 >> 1;
  v4 = *(this + 24);
  if (v4 >= a3)
  {
    LOWORD(v4) = a3;
  }

  *(this + 24) = v4;
  return this;
}

uint64_t WrdPAPXFKP::setGrpprlSize(WrdPAPXFKP *this, unsigned __int8 a2, unsigned int a3)
{
  if (!*(this + 2))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = a3 & 1;
  result = (*(*this + 32))(this);
  v7 = (*(this + 2) + result);
  if (!v5)
  {
    *v7 = 0;
    v7 = (*(this + 2) + result + 1);
  }

  *v7 = v5 + (a3 >> 1);
  return result;
}

BOOL WrdPAPXFKP::isRoomForGrpprl(WrdPAPXFKP *this, int a2)
{
  v3 = 17 * *(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1) + 23;
  v4 = (*(*this + 56))(this);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + a2;
  return v4 >= v3 && v4 - v3 > v6;
}

void *WrdPAPXFKP::appendGrpprl(WrdPAPXFKP *this, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(this + 2))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v7 = a3;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = v10 + a3;
  v12 = (*(*this + 64))(this, a3, a2);
  v13 = *(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize;
  if (*(v13 - 1))
  {
    v14 = (*(*this + 56))(this) - v11;
    v15 = *(this + 2);
    v16 = *(v15 + WrdFormattedDiskPage::s_unPageBufferSize - 1);
    memmove((v15 + 4 * v16 + 8), (v15 + 4 * v16 + 4), 13 * v16);
    WrdFormattedDiskPage::setFC(this, ++*(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1), a5);
  }

  else
  {
    *(v13 - 1) = 1;
    WrdFormattedDiskPage::setFC(this, 0, a4);
    WrdFormattedDiskPage::setFC(this, 1u, a5);
    v14 = WrdFormattedDiskPage::s_unPageBufferSize - v11 - 2;
  }

  v17 = (*(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1) - 1);
  if (v12 == WrdFormattedDiskPage::s_unUndefinedOffset)
  {
    WrdPAPXFKP::setGrpprlOffset(this, v17, v14);
    result = WrdPAPXFKP::setGrpprlSize(this, *(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1) - 1, v7);
    if (v7)
    {
      v19 = *(this + 2) + v14;
      if (v7)
      {
        v20 = (v19 + 1);
      }

      else
      {
        v20 = (v19 + 2);
      }

      return memcpy(v20, a2, v7);
    }
  }

  else
  {

    return WrdPAPXFKP::setGrpprlOffset(this, v17, v12);
  }

  return result;
}

uint64_t WrdPAPXFKP::findGrpprlOffset(WrdPAPXFKP *this, unsigned int a2, const unsigned __int8 *a3)
{
  if (!*(*(this + 2) + WrdFormattedDiskPage::s_unPageBufferSize - 1))
  {
    return WrdFormattedDiskPage::s_unUndefinedOffset;
  }

  v5 = 0;
  v6 = a2 + 1;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = a2;
  do
  {
    v9 = (*(*this + 40))(this, v5);
    if (v9 == a2 || v6 == v9)
    {
      v11 = (*(*this + 32))(this, v5);
      v13 = v11;
      v12 = *(this + 2);
      if (a2)
      {
        if (!memcmp(a3, (v12 + v7 + v11), v8))
        {
          v13 = v13;
        }

        else
        {
          v13 = WrdFormattedDiskPage::s_unUndefinedOffset;
        }
      }
    }

    else
    {
      v12 = *(this + 2);
      v13 = WrdFormattedDiskPage::s_unUndefinedOffset;
    }
  }

  while (*(v12 + WrdFormattedDiskPage::s_unPageBufferSize - 1) > ++v5 && v13 == WrdFormattedDiskPage::s_unUndefinedOffset);
  return v13;
}

void std::vector<WrdTabDescriptor *,ChAllocator<WrdTabDescriptor *>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<WrdTabDescriptor *,ChAllocator<WrdTabDescriptor *>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

void WrdParagraphProperties::WrdParagraphProperties(WrdParagraphProperties *this, WrdShading *a2, WrdLineSpaceDescriptor *a3, WrdDropCap *a4, WrdBorder *a5, WrdBorder *a6, WrdBorder *a7, WrdBorder *a8, __int128 a9, __int128 a10, WrdNumberRevisionMarkData *a11, WrdTabDescriptor *a12)
{
  *this = &unk_286ED5358;
  *(this + 1) = &unk_286ED53A0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
  *(this + 10) = a8;
  *(this + 88) = a9;
  *(this + 104) = a10;
  *(this + 15) = a11;
  *(this + 16) = a12;
  WrdParagraphProperties::reset(this);
}

{
  WrdParagraphProperties::WrdParagraphProperties(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_25D5E19D4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 184) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWrdParagraphProperties::~WrdParagraphProperties(WrdParagraphProperties *this)
{
  WrdParagraphProperties::~WrdParagraphProperties((this - 8));
}

{
  WrdParagraphProperties::~WrdParagraphProperties((this - 8));

  JUMPOUT(0x25F897000);
}

uint64_t WrdParagraphProperties::setBorderLineStyle(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000uLL;
  *(result + 144) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setSideBySide(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x400uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFFB | (4 * (a2 & 1));
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setKinsoku(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x200000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFBFF | ((a2 & 1) << 10);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setTopLinePunctuationProcessing(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x1000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFDFFF | ((a2 & 1) << 13);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setVertical(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x10000000000uLL;
  *(this + 294) = *(this + 294) & 0xF7FFFFFF | ((a2 & 1) << 27);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setBackward(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x20000000000uLL;
  *(this + 294) = *(this + 294) & 0xEFFFFFFF | ((a2 & 1) << 28);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setRotateFont(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x40000000000uLL;
  *(this + 294) = *(this + 294) & 0xDFFFFFFF | ((a2 & 1) << 29);
  return this;
}

void std::vector<WrdTabDescriptor *,ChAllocator<WrdTabDescriptor *>>::__append(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((v4 - v5) >> 3) >= a2)
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
    v6 = v5 - *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = 2 * v7;
    if (2 * v7 <= (v6 >> 3) + a2)
    {
      v8 = (v6 >> 3) + a2;
    }

    if (v7 >= 0x7FFFFFFF)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v9);
    }

    __p = 0;
    v11 = v6 & 0x7FFFFFFF8;
    v13 = 0;
    bzero((v6 & 0x7FFFFFFF8), 8 * a2);
    v12 = (v6 & 0x7FFFFFFF8) + 8 * a2;
    std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25D5E1C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdPictureBinary::~WrdPictureBinary(WrdPictureBinary *this)
{
  *this = &unk_286ED5438;
  OcBinaryData::~OcBinaryData((this + 8));
}

{
  *this = &unk_286ED5438;
  OcBinaryData::~OcBinaryData((this + 8));

  JUMPOUT(0x25F897000);
}

void WrdPictureFilename::~WrdPictureFilename(WrdPictureFilename *this)
{
  *this = &unk_286ED5478;
  CsString::~CsString((this + 8));
}

{
  *this = &unk_286ED5478;
  CsString::~CsString((this + 8));

  JUMPOUT(0x25F897000);
}

uint64_t WrdPictureProperties::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 86) = *(a2 + 86);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 24) = *(a2 + 24);
  WrdBorder::operator=(*(a1 + 32), *(a2 + 32));
  WrdBorder::operator=(*(a1 + 40), *(a2 + 40));
  WrdBorder::operator=(*(a1 + 48), *(a2 + 48));
  WrdBorder::operator=(*(a1 + 56), *(a2 + 56));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  return a1;
}

void non-virtual thunk toWrdPictureProperties::~WrdPictureProperties(WrdPictureProperties *this)
{
  WrdPictureProperties::~WrdPictureProperties((this - 8));
}

{
  WrdPictureProperties::~WrdPictureProperties((this - 8));

  JUMPOUT(0x25F897000);
}

void WrdPictureProperties::clone(WrdPictureProperties *this)
{
  (*(**(this + 4) + 16))(*(this + 4));
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 6) + 16))(*(this + 6));
  (*(**(this + 7) + 16))(*(this + 7));
  operator new();
}

void sub_25D5E22AC()
{
  if (v0)
  {
    JUMPOUT(0x25D5E22B4);
  }

  JUMPOUT(0x25D5E2248);
}

void sub_25D5E22E4()
{
  if (!v0)
  {
    JUMPOUT(0x25D5E2274);
  }

  JUMPOUT(0x25D5E224CLL);
}

uint64_t WrdProperty::getSizeOfSPRMParameter(unsigned int a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return word_25D70EC10[a1];
  }
}

void WrdRoutingRecipient::WrdRoutingRecipient(WrdRoutingRecipient *this)
{
  *this = &unk_286ED5540;
  CsString::CsString((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 47) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 19) = 0;
}

uint64_t WrdRoutingRecipient::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 24) = 0;
    bzero(*(a1 + 16), 2 * *(a1 + 28));
    CsString::append((a1 + 8), (a2 + 8));
    std::vector<WrdRoutingRecipient::MailParameter *,ChAllocator<WrdRoutingRecipient::MailParameter *>>::__assign_with_size[abi:ne200100]<WrdRoutingRecipient::MailParameter **,WrdRoutingRecipient::MailParameter **>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  return a1;
}

void WrdRoutingRecipient::~WrdRoutingRecipient(WrdRoutingRecipient *this)
{
  *this = &unk_286ED5540;
  v4 = this + 56;
  v2 = *(this + 7);
  v3 = *(v4 + 1);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = *(this + 7);
        v3 = *(this + 8);
      }

      if (v5 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v2[v5++] = 0;
      v2 = *(this + 7);
      v3 = *(this + 8);
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  CsString::~CsString((this + 8));
}

{
  WrdRoutingRecipient::~WrdRoutingRecipient(this);

  JUMPOUT(0x25F897000);
}

BOOL WrdRoutingRecipient::MailParameterString::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 24))(a2) != 1)
  {
    return 0;
  }

  return CsString::operator==(a1 + 8, a2 + 8);
}

BOOL WrdRoutingRecipient::MailParameterBinary::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 24))(a2) != 2)
  {
    return 0;
  }

  return OcBinaryData::operator==(a1 + 8, a2 + 8);
}

void WrdRoutingRecipient::MailParameterString::~MailParameterString(WrdRoutingRecipient::MailParameterString *this)
{
  *this = &unk_286ED5568;
  CsString::~CsString((this + 8));
}

{
  *this = &unk_286ED5568;
  CsString::~CsString((this + 8));

  JUMPOUT(0x25F897000);
}

void WrdRoutingRecipient::MailParameterBinary::~MailParameterBinary(WrdRoutingRecipient::MailParameterBinary *this)
{
  *this = &unk_286ED55C8;
  OcBinaryData::~OcBinaryData((this + 8));
}

{
  *this = &unk_286ED55C8;
  OcBinaryData::~OcBinaryData((this + 8));

  JUMPOUT(0x25F897000);
}

void *std::vector<WrdRoutingRecipient::MailParameter *,ChAllocator<WrdRoutingRecipient::MailParameter *>>::__assign_with_size[abi:ne200100]<WrdRoutingRecipient::MailParameter **,WrdRoutingRecipient::MailParameter **>(void *result, char *__src, char *a3, unsigned int a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 3;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFF)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(v6, v11);
  }

  v12 = result[1];
  v13 = (v12 - v8) >> 3;
  if (v13 >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v14 = &__src[8 * v13];
    if (((v12 - v8) >> 3))
    {
      result = memmove(*result, __src, 8 * ((v12 - v8) >> 3));
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 8;
        *v16 = v17;
        v16 += 8;
        v15 += 8;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v6[1] = v18;
  return result;
}

uint64_t std::vector<WrdRoutingRecipient::MailParameter *,ChAllocator<WrdRoutingRecipient::MailParameter *>>::__emplace_back_slow_path<WrdRoutingRecipient::MailParameter *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E2C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *WrdRoutingSlip::clear(void *this)
{
  v1 = this;
  v2 = this[15];
  if (((this[16] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[15];
      }

      *(v2 + 8 * v4) = 0;
      v3 = v4 + 1;
      v2 = v1[15];
    }

    while (((v1[16] - v2) >> 3) > (v4 + 1));
  }

  v1[16] = v2;
  return this;
}

void *WrdRoutingSlip::append(WrdRoutingSlip *this, WrdRoutingRecipient *a2)
{
  v5 = a2;
  v3 = *(this + 16);
  if (v3 >= *(this + 17))
  {
    result = std::vector<WrdRoutingRecipient *,ChAllocator<WrdRoutingRecipient *>>::__emplace_back_slow_path<WrdRoutingRecipient * const&>(this + 15, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 16) = result;
  return result;
}

uint64_t std::vector<WrdRoutingRecipient *,ChAllocator<WrdRoutingRecipient *>>::__emplace_back_slow_path<WrdRoutingRecipient * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E2E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdSectionProperties::clone(WrdSectionProperties *this)
{
  (*(**(this + 3) + 16))(*(this + 3));
  (*(**(this + 4) + 16))(*(this + 4));
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 6) + 16))(*(this + 6));
  (*(**(this + 7) + 16))(*(this + 7));
  (*(**(this + 8) + 16))(*(this + 8));
  operator new();
}

void sub_25D5E3154()
{
  if (v0)
  {
    JUMPOUT(0x25D5E315CLL);
  }

  JUMPOUT(0x25D5E30E4);
}

void sub_25D5E318C()
{
  if (v0)
  {
    JUMPOUT(0x25D5E3194);
  }

  JUMPOUT(0x25D5E30E8);
}

void sub_25D5E31C4()
{
  if (v0)
  {
    JUMPOUT(0x25D5E31CCLL);
  }

  JUMPOUT(0x25D5E30ECLL);
}

void sub_25D5E31FC()
{
  if (v0)
  {
    JUMPOUT(0x25D5E3204);
  }

  JUMPOUT(0x25D5E30F0);
}

void sub_25D5E3234()
{
  if (!v0)
  {
    JUMPOUT(0x25D5E311CLL);
  }

  JUMPOUT(0x25D5E30F4);
}

uint64_t WrdSectionProperties::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  WrdBorder::operator=(*(a1 + 24), *(a2 + 24));
  WrdBorder::operator=(*(a1 + 32), *(a2 + 32));
  WrdBorder::operator=(*(a1 + 40), *(a2 + 40));
  WrdBorder::operator=(*(a1 + 48), *(a2 + 48));
  WrdDateTime::operator=(*(a1 + 56), *(a2 + 56));
  WrdOutlineListData::operator=(*(a1 + 64), *(a2 + 64));
  v4 = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  v5 = (a2 + 176);
  v6 = (a2 + 200);
  do
  {
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_17;
    }

    v8 = *v5;
    while (1)
    {
      v9 = *(v8 + 7);
      if (v9 <= v4)
      {
        break;
      }

LABEL_7:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    if (v9 < v4)
    {
      ++v8;
      goto LABEL_7;
    }

    v10 = (a2 + 176);
    do
    {
      v11 = *(v7 + 7);
      v12 = v11 >= v4;
      v13 = v11 < v4;
      if (v12)
      {
        v10 = v7;
      }

      v7 = v7[v13];
    }

    while (v7);
    if (v10 == v5 || *(v10 + 7) > v4)
    {
      goto LABEL_34;
    }

    v14 = *(v10 + 8);
    v24 = v4;
    v25 = &v24;
    *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 168, &v24) + 8) = v14;
LABEL_17:
    v15 = *v6;
    if (!*v6)
    {
      goto LABEL_32;
    }

    v16 = *v6;
    while (2)
    {
      v17 = *(v16 + 7);
      if (v17 > v4)
      {
LABEL_22:
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_32;
        }

        continue;
      }

      break;
    }

    if (v17 < v4)
    {
      ++v16;
      goto LABEL_22;
    }

    v18 = (a2 + 200);
    do
    {
      v19 = *(v15 + 7);
      v12 = v19 >= v4;
      v20 = v19 < v4;
      if (v12)
      {
        v18 = v15;
      }

      v15 = v15[v20];
    }

    while (v15);
    if (v18 == v6 || *(v18 + 7) > v4)
    {
LABEL_34:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1004;
    }

    v21 = *(v18 + 8);
    v24 = v4;
    v25 = &v24;
    *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 192, &v24) + 8) = v21;
LABEL_32:
    ++v4;
  }

  while (v4 != 89);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 238) = *(a2 + 238);
  *(a1 + 246) = *(a2 + 246);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 276) = *(a2 + 276);
  OcBinaryData::operator=((a1 + 280), a2 + 280);
  return a1;
}

void non-virtual thunk toWrdSectionProperties::~WrdSectionProperties(WrdSectionProperties *this)
{
  WrdSectionProperties::~WrdSectionProperties((this - 8));
}

{
  WrdSectionProperties::~WrdSectionProperties((this - 8));

  JUMPOUT(0x25F897000);
}

uint64_t WrdSectionTextRun::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  WrdSectionProperties::operator=(*(a1 + 24), *(a2 + 24));
  WrdSectionProperties::operator=(*(a1 + 32), *(a2 + 32));
  return a1;
}

void WrdSectionTextRun::clone(WrdSectionTextRun *this)
{
  (*(*this->var4 + 24))(this->var4);
  (*(*this->var5 + 24))(this->var5);
  operator new();
}

uint64_t WrdStoryTable::operator=(uint64_t a1, uint64_t a2)
{
  WrdBookmarkTable::clear(a1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  if (((*(a2 + 24) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = *(a1 + 24);
      if (v7 >= *(a1 + 32))
      {
        v8 = std::vector<WrdStory *,ChAllocator<WrdStory *>>::__emplace_back_slow_path<WrdStory *>((a1 + 16), &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a1 + 24) = v8;
      ++v5;
      v4 = *(a2 + 16);
    }

    while (v5 < ((*(a2 + 24) - v4) >> 3));
  }

  return a1;
}

void sub_25D5E3814(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdStory *,ChAllocator<WrdStory *>>::__emplace_back_slow_path<WrdStory *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E39BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdStory *,ChAllocator<WrdStory *>>::__emplace_back_slow_path<WrdStory * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E3ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *WrdStringTable::operator=(void *a1, uint64_t a2)
{
  WrdStringTable::cleanup(a1);
  if (((*(a2 + 16) - *(a2 + 8)) & 0x7FFFFFFF8) != 0)
  {
    operator new();
  }

  return a1;
}

uint64_t WrdStringWithDataTable::StringData::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  CsString::append((a1 + 8), (a2 + 8));
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    operator new[](v4);
  }

  return a1;
}

uint64_t WrdStringWithDataTable::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 10) = *(a2 + 10);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      WrdStringWithDataTable::StringData::operator=(*(a1 + 16) + v5, *(a2 + 16) + v5);
      ++v6;
      v5 += 48;
    }

    while (v6 < *(a1 + 8));
  }

  return a1;
}

uint64_t WrdStyle::getParaPropsReference(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 152) != 3 || (v2 = *(a1 + 88)) == 0)
  {
LABEL_7:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (a2 >= v3)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  v6 = a2;
  v7 = &v6;
  return std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 80, &v6)[5];
}

uint64_t *WrdStyle::takeParaProps(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  for (i = *(a1 + 88); i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= a2)
    {
      if (v7 >= a2)
      {
        v11 = a2;
        v12 = &v11;
        v8 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 80, &v11)[5];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v11 = a2;
        v12 = &v11;
        std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 80, &v11)[5] = 0;
        break;
      }

      ++i;
    }
  }

  v11 = a2;
  v12 = &v11;
  result = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 80, &v11);
  result[5] = a3;
  return result;
}

void std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

uint64_t WrdStyleSheet::addStyle(WrdStyleSheet *this)
{
  v2 = (*(**(this + 2) + 16))(*(this + 2));
  v6 = v2;
  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    v4 = std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::__emplace_back_slow_path<WrdStyle *>(this + 3, &v6);
  }

  else
  {
    *v3 = v2;
    v4 = (v3 + 1);
  }

  *(this + 4) = v4;
  return *(*(this + 3) + 8 * (((v4 - *(this + 3)) >> 3) - 1));
}

void sub_25D5E4564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::__append(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((v4 - v5) >> 3) >= a2)
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
    v6 = v5 - *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = 2 * v7;
    if (2 * v7 <= (v6 >> 3) + a2)
    {
      v8 = (v6 >> 3) + a2;
    }

    if (v7 >= 0x7FFFFFFF)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v9);
    }

    __p = 0;
    v11 = v6 & 0x7FFFFFFF8;
    v13 = 0;
    bzero((v6 & 0x7FFFFFFF8), 8 * a2);
    v12 = (v6 & 0x7FFFFFFF8) + 8 * a2;
    std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25D5E4694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::__emplace_back_slow_path<WrdStyle *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E47B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdTableCellDescriptor::setLeftSpacingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x40000u;
  *(result + 96) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setTopSpacingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x80000u;
  *(result + 100) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setBottomSpacingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x100000u;
  *(result + 104) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setRightSpacingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x200000u;
  *(result + 108) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setLeftSpacing(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x8000000u;
  *(this + 122) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setTopSpacing(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x10000000u;
  *(this + 124) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setBottomSpacing(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x20000000u;
  *(this + 126) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setRightSpacing(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x40000000u;
  *(this + 128) = a2;
  return this;
}

void WrdTableProperties::WrdTableProperties(WrdTableProperties *this, WrdTableAutoformatLookSpecifier *a2, WrdTableCellDescriptor *a3, WrdShading *a4, WrdBorder *a5, WrdBorder *a6, WrdBorder *a7, WrdBorder *a8, __int128 a9, __int128 a10, WrdDateTime *a11)
{
  *this = &unk_286ED5A58;
  *(this + 1) = &unk_286ED5A88;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
  *(this + 10) = a8;
  *(this + 88) = a9;
  *(this + 104) = a10;
  *(this + 15) = a11;
  WrdTableProperties::reset(this);
}

{
  WrdTableProperties::WrdTableProperties(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_25D5E4960(_Unwind_Exception *exception_object)
{
  v4 = v1[34];
  if (v4)
  {
    v1[35] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[32] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toWrdTableProperties::~WrdTableProperties(WrdTableProperties *this)
{
  WrdTableProperties::~WrdTableProperties((this - 8));
}

{
  WrdTableProperties::~WrdTableProperties((this - 8));

  JUMPOUT(0x25F897000);
}

WrdTableProperties *WrdTableProperties::setRevisionMark(WrdTableProperties *this, char a2)
{
  *(this + 2) |= 1uLL;
  *(this + 334) = *(this + 334) & 0xDF | (32 * (a2 & 1));
  return this;
}

WrdTableProperties *WrdTableProperties::setAuthorIDForRevision(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 2uLL;
  *(this + 166) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultCellTopCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x800000uLL;
  *(result + 164) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultCellLeftCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x1000000uLL;
  *(result + 168) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultCellBottomCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x2000000uLL;
  *(result + 172) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultCellRightCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000000uLL;
  *(result + 176) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterTopCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x80000000uLL;
  *(result + 196) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterLeftCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x100000000uLL;
  *(result + 200) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterBottomCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x200000000uLL;
  *(result + 204) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterRightCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x400000000uLL;
  *(result + 208) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterTopCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x800000000uLL;
  *(result + 212) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterLeftCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x1000000000uLL;
  *(result + 216) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterBottomCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x2000000000uLL;
  *(result + 220) = a2;
  return result;
}

uint64_t WrdTableProperties::setDefaultTableOuterRightCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000000000uLL;
  *(result + 224) = a2;
  return result;
}

uint64_t WrdTableProperties::setVerticalCellAlignment(uint64_t result, int a2)
{
  *(result + 16) |= 0x20000000000uLL;
  *(result + 236) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setTopDistanceFromText(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x1000000000000uLL;
  *(this + 79) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setKeepWithFollowing(WrdTableProperties *this, char a2)
{
  *(this + 2) |= 0x20000000000000uLL;
  *(this + 334) = *(this + 334) & 0xFD | (2 * (a2 & 1));
  return this;
}

WrdTableProperties *WrdTableProperties::setNeverBeenAutoFit(WrdTableProperties *this, char a2)
{
  *(this + 2) |= 0x40000000000000uLL;
  *(this + 334) = *(this + 334) & 0xFB | (4 * (a2 & 1));
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultCellTopCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 8u;
  *(this + 177) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultCellLeftCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x10u;
  *(this + 178) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultCellBottomCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x20u;
  *(this + 179) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultCellRightCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x40u;
  *(this + 180) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterTopCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x800u;
  *(this + 185) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterLeftCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x1000u;
  *(this + 186) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterBottomCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x2000u;
  *(this + 187) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterRightCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x4000u;
  *(this + 188) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterTopCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x8000u;
  *(this + 189) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterLeftCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x10000u;
  *(this + 190) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterBottomCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x20000u;
  *(this + 191) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableOuterRightCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x40000u;
  *(this + 192) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setBiDirectional(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x200000u;
  *(this + 388) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setRightToLeft(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x400000u;
  *(this + 389) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDoNotWrapText(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x1000000u;
  *(this + 391) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setNumberOfRowsInRowBand(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x2000000u;
  *(this + 392) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setNumberOfColumnsInColumnBand(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x4000000u;
  *(this + 393) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setTableRevisionSaveID(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x20000000u;
  *(this + 165) = a2;
  return this;
}

void WrdTableProperties::deleteCells(WrdTableProperties *this, unsigned int a2, int a3)
{
  v4 = (this + 248);
  v3 = *(this + 31);
  *(this + 2) |= 0x2000000000000000uLL;
  v5 = ((*(this + 32) - v3) >> 1) + ~a2;
  if (a3 <= v5)
  {
    v5 = a3;
  }

  v6 = v5;
  if (v5 >= 1)
  {
    v7 = a2;
    v9 = *(this + 172);
    v10 = v9 - a3;
    if (v9 > a2)
    {
      v11 = *(v3 + 2 * a2) - *(v3 + 2 * (v6 + a2));
      v12 = (v6 + a2);
      do
      {
        if (v7 < v12)
        {
          v13 = *(this + 34);
          v14 = *(v13 + 8 * v7);
          if (v14)
          {
            (*(*v14 + 8))(v14);
            v13 = *(this + 34);
            LOWORD(v9) = *(this + 172);
          }

          *(v13 + 8 * v7) = 0;
        }

        v15 = (v6 + v7);
        if (v15 >= v9)
        {
          ++v7;
        }

        else
        {
          v16 = *(this + 31);
          v17 = *(v16 + 2 * (v15 + 1));
          *(*(this + 34) + 8 * v7++) = *(*(this + 34) + 8 * v15);
          *(v16 + 2 * v7) = v11 + v17;
          LOWORD(v9) = *(this + 172);
        }
      }

      while (v7 < v9);
    }

    *(this + 172) = v10;
    std::vector<short,ChAllocator<short>>::resize(v4, v10 + 1);
    v18 = *(this + 172);

    std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::resize(this + 34, v18);
  }
}

void std::vector<short,ChAllocator<short>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<short,ChAllocator<short>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 2 * a2;
  }
}

void std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

uint64_t std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::__emplace_back_slow_path<WrdTableCellDescriptor *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E4FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short const&>(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8) - *a1;
  v5 = (*(a1 + 16) - *a1) >> 1;
  if (2 * v5 <= (v4 >> 1) + 1)
  {
    v6 = (v4 >> 1) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x1FFFFFFFELL);
  *v11 = *a2;
  v12 = (v4 & 0x1FFFFFFFELL) + 2;
  v13 = 0;
  std::vector<unsigned short,ChAllocator<unsigned short>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E50D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short>(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8) - *a1;
  v5 = (*(a1 + 16) - *a1) >> 1;
  if (2 * v5 <= (v4 >> 1) + 1)
  {
    v6 = (v4 >> 1) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x1FFFFFFFELL);
  *v11 = *a2;
  v12 = (v4 & 0x1FFFFFFFELL) + 2;
  v13 = 0;
  std::vector<unsigned short,ChAllocator<unsigned short>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E51EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short,ChAllocator<short>>::__append(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((v4 - v5) >> 1) >= a2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = (v4 - *a1) >> 1;
    v8 = 2 * v7;
    if (2 * v7 <= (v6 >> 1) + a2)
    {
      v8 = (v6 >> 1) + a2;
    }

    if (v7 >= 0x7FFFFFFF)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v9);
    }

    __p = 0;
    v11 = v6 & 0x1FFFFFFFELL;
    v13 = 0;
    bzero((v6 & 0x1FFFFFFFELL), 2 * a2);
    v12 = (v6 & 0x1FFFFFFFELL) + 2 * a2;
    std::vector<unsigned short,ChAllocator<unsigned short>>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25D5E533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::__append(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((v4 - v5) >> 3) >= a2)
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
    v6 = v5 - *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = 2 * v7;
    if (2 * v7 <= (v6 >> 3) + a2)
    {
      v8 = (v6 >> 3) + a2;
    }

    if (v7 >= 0x7FFFFFFF)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v9);
    }

    __p = 0;
    v11 = v6 & 0x7FFFFFFF8;
    v13 = 0;
    bzero((v6 & 0x7FFFFFFF8), 8 * a2);
    v12 = (v6 & 0x7FFFFFFF8) + 8 * a2;
    std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25D5E548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdText::~WrdText(WrdText *this)
{
  *this = &unk_286ED5AE0;
  OcText::~OcText((this + 8));
}

{
  *this = &unk_286ED5AE0;
  OcText::~OcText((this + 8));

  JUMPOUT(0x25F897000);
}

void WrdTextRun::WrdTextRun(WrdTextRun *this, const WrdTextRun *a2)
{
  this->var0 = &unk_286ED3718;
  *&this->var1 = *&a2->var1;
  this->var3 = a2->var3;
}

void WrdUserRestriction::WrdUserRestriction(WrdUserRestriction *this)
{
  *this = &unk_286ED5B58;
  *(this + 4) = -1;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void WrdUserRestrictionMap::WrdUserRestrictionMap(WrdUserRestrictionMap *this)
{
  *this = &unk_286ED5B98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void WrdUserRestrictionMap::~WrdUserRestrictionMap(WrdUserRestrictionMap *this)
{
  *this = &unk_286ED5B98;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286ED5B98;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void WrdUserRestrictionTable::WrdUserRestrictionTable(WrdUserRestrictionTable *this)
{
  *this = &unk_286ED5BD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
}

uint64_t WrdUserRestrictionTable::operator=(uint64_t a1, uint64_t a2)
{
  WrdUserRestrictionTable::clear(a1);
  v4 = *(a2 + 8);
  if (((*(a2 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = *(a1 + 16);
      if (v7 >= *(a1 + 24))
      {
        v8 = std::vector<WrdUserRestriction *,ChAllocator<WrdUserRestriction *>>::__emplace_back_slow_path<WrdUserRestriction *>((a1 + 8), &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a1 + 16) = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < ((*(a2 + 16) - v4) >> 3));
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_25D5E594C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdUserRestrictionTable::~WrdUserRestrictionTable(WrdUserRestrictionTable *this)
{
  *this = &unk_286ED5BD0;
  WrdUserRestrictionTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdUserRestrictionTable::~WrdUserRestrictionTable(this);

  JUMPOUT(0x25F897000);
}

void *WrdUserRestrictionTable::clear(void *this)
{
  v1 = this;
  v2 = this[1];
  if (((this[2] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[1];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[1];
    }

    while (v3 < ((v1[2] - v2) >> 3));
  }

  v1[2] = v2;
  *(v1 + 8) = 0;
  return this;
}

void *WrdUserRestrictionTable::append(WrdUserRestrictionTable *this, WrdUserRestriction *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdUserRestriction *,ChAllocator<WrdUserRestriction *>>::__emplace_back_slow_path<WrdUserRestriction * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t std::vector<WrdUserRestriction *,ChAllocator<WrdUserRestriction *>>::__emplace_back_slow_path<WrdUserRestriction *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E5C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdUserRestriction *,ChAllocator<WrdUserRestriction *>>::__emplace_back_slow_path<WrdUserRestriction * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E5D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdVariable::WrdVariable(WrdVariable *this)
{
  *this = &unk_286ED5C10;
  v2 = (this + 32);
  CsString::CsString((this + 8));
  CsString::CsString(v2);
  *(this + 14) = 0;
}

void WrdVariable::~WrdVariable(WrdVariable *this)
{
  *this = &unk_286ED5C10;
  *(this + 6) = 0;
  bzero(*(this + 2), 2 * *(this + 7));
  *(this + 14) = 0;
  *(this + 12) = 0;
  bzero(*(this + 5), 2 * *(this + 13));
  CsString::~CsString((this + 32));
  CsString::~CsString((this + 8));
}

{
  WrdVariable::~WrdVariable(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdVariable::operator=(uint64_t a1, uint64_t a2)
{
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  bzero(*(a1 + 40), 2 * *(a1 + 52));
  *(a1 + 24) = 0;
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  CsString::append((a1 + 8), (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = 0;
  bzero(*(a1 + 40), 2 * *(a1 + 52));
  CsString::append((a1 + 32), (a2 + 32));
  return a1;
}

void WrdVariableTable::WrdVariableTable(WrdVariableTable *this)
{
  *this = &unk_286ED5C50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void WrdVariableTable::~WrdVariableTable(WrdVariableTable *this)
{
  *this = &unk_286ED5C50;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdVariableTable::~WrdVariableTable(this);

  JUMPOUT(0x25F897000);
}

void *WrdVariableTable::append(WrdVariableTable *this, WrdVariable *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdVariable *,ChAllocator<WrdVariable *>>::__emplace_back_slow_path<WrdVariable * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t std::vector<WrdVariable *,ChAllocator<WrdVariable *>>::__emplace_back_slow_path<WrdVariable * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E6264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdVersionInfo::WrdVersionInfo(WrdVersionInfo *this)
{
  *this = &unk_286ED5C90;
  WrdDateTime::WrdDateTime((this + 8));
  *(this + 8) = 0;
  CsString::CsString((this + 40));
}

void WrdVersionInfo::~WrdVersionInfo(WrdVersionInfo *this)
{
  *this = &unk_286ED5C90;
  CsString::~CsString((this + 40));
}

{
  *this = &unk_286ED5C90;
  CsString::~CsString((this + 40));

  JUMPOUT(0x25F897000);
}

void WrdVersionInfoTable::WrdVersionInfoTable(WrdVersionInfoTable *this)
{
  *this = &unk_286ED5CC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void WrdVersionInfoTable::~WrdVersionInfoTable(WrdVersionInfoTable *this)
{
  *this = &unk_286ED5CC8;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdVersionInfoTable::~WrdVersionInfoTable(this);

  JUMPOUT(0x25F897000);
}

void *WrdVersionInfoTable::append(WrdVersionInfoTable *this, WrdVersionInfo *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdVersionInfo *,ChAllocator<WrdVersionInfo *>>::__emplace_back_slow_path<WrdVersionInfo * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t std::vector<WrdVersionInfo *,ChAllocator<WrdVersionInfo *>>::__emplace_back_slow_path<WrdVersionInfo * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E6584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdWorkBook::WrdWorkBook(WrdWorkBook *this)
{
  *(this + 5) = 0;
  *this = &unk_286ED5D00;
  *(this + 1) = 0;
  *(this + 8) = 0;
}

void WrdWorkBookTable::WrdWorkBookTable(WrdWorkBookTable *this)
{
  *this = &unk_286ED5D40;
  *(this + 2) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
}

void *WrdWorkBookTable::operator=(void *a1, uint64_t a2)
{
  WrdWorkBookTable::clear(a1);
  v4 = *(a2 + 40);
  if (((*(a2 + 48) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
      v10 = v6;
      v7 = a1[6];
      if (v7 >= a1[7])
      {
        v8 = std::vector<WrdWorkBook *,ChAllocator<WrdWorkBook *>>::__emplace_back_slow_path<WrdWorkBook *>(a1 + 5, &v10);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      a1[6] = v8;
      ++v5;
      v4 = *(a2 + 40);
    }

    while (v5 < ((*(a2 + 48) - v4) >> 3));
  }

  return a1;
}

void sub_25D5E6754(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

void *WrdWorkBookTable::clear(void *this)
{
  v1 = this;
  this[3] = this[2];
  v2 = this[5];
  if (((this[6] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[5];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[5];
    }

    while (v3 < ((v1[6] - v2) >> 3));
  }

  v1[6] = v2;
  return this;
}

void WrdWorkBookTable::~WrdWorkBookTable(WrdWorkBookTable *this)
{
  *this = &unk_286ED5D40;
  WrdWorkBookTable::clear(this);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  WrdWorkBookTable::~WrdWorkBookTable(this);

  JUMPOUT(0x25F897000);
}

void WrdWorkBookTable::setCP(WrdWorkBookTable *this, unsigned int a2, int a3)
{
  v5 = *(this + 2);
  v6 = (this + 16);
  if (((*(this + 3) - v5) >> 2) <= a2)
  {
    std::vector<int,ChAllocator<int>>::resize(this + 2, a2 + 1);
    v5 = *v6;
  }

  *(v5 + 4 * a2) = a3;
}

void *WrdWorkBookTable::append(WrdWorkBookTable *this, WrdWorkBook *a2)
{
  v5 = a2;
  v3 = *(this + 6);
  if (v3 >= *(this + 7))
  {
    result = std::vector<WrdWorkBook *,ChAllocator<WrdWorkBook *>>::__emplace_back_slow_path<WrdWorkBook * const&>(this + 5, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 6) = result;
  return result;
}

uint64_t std::vector<WrdWorkBook *,ChAllocator<WrdWorkBook *>>::__emplace_back_slow_path<WrdWorkBook *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E6AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdWorkBook *,ChAllocator<WrdWorkBook *>>::__emplace_back_slow_path<WrdWorkBook * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E6BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdXmlAttribute::WrdXmlAttribute(WrdXmlAttribute *this)
{
  *this = &unk_286ED5D80;
  *(this + 1) = 0;
  CsString::CsString((this + 16));
}

void WrdXmlAttribute::~WrdXmlAttribute(WrdXmlAttribute *this)
{
  *this = &unk_286ED5D80;
  CsString::~CsString((this + 16));
}

{
  *this = &unk_286ED5D80;
  CsString::~CsString((this + 16));

  JUMPOUT(0x25F897000);
}

void WrdXmlElement::WrdXmlElement(WrdXmlElement *this)
{
  *this = &unk_286ED5DB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x200000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void WrdXmlElement::~WrdXmlElement(WrdXmlElement *this)
{
  *this = &unk_286ED5DB8;
  WrdXmlElement::release(this);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  WrdXmlElement::~WrdXmlElement(this);

  JUMPOUT(0x25F897000);
}

void *WrdXmlElement::release(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = this[5] - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = v1[4];
      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v6 = v1[4];
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = v1[4];
  }

  v1[5] = v2;
  return this;
}

uint64_t WrdXmlElement::setDisplayType(uint64_t result, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(result + 28) = a2;
  return result;
}

uint64_t WrdXmlElement::appendAttribute(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[5];
  if (v5 >= a1[6])
  {
    result = std::vector<WrdXmlAttribute *,ChAllocator<WrdXmlAttribute *>>::__emplace_back_slow_path<WrdXmlAttribute *>(a1 + 4, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[5] = result;
  *a2 = 0;
  return result;
}

uint64_t std::vector<WrdXmlAttribute *,ChAllocator<WrdXmlAttribute *>>::__emplace_back_slow_path<WrdXmlAttribute *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E7010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdXmlElementTable::WrdXmlElementTable(WrdXmlElementTable *this)
{
  *this = &unk_286ED5DF0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void WrdXmlElementTable::~WrdXmlElementTable(WrdXmlElementTable *this)
{
  *this = &unk_286ED5DF0;
  WrdXmlElementTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdXmlElementTable::~WrdXmlElementTable(this);

  JUMPOUT(0x25F897000);
}

void *WrdXmlElementTable::clear(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = this[2] - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = v1[1];
      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v6 = v1[1];
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = v1[1];
  }

  v1[2] = v2;
  return this;
}

uint64_t WrdXmlElementTable::append(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[2];
  if (v5 >= a1[3])
  {
    result = std::vector<WrdXmlElement *,ChAllocator<WrdXmlElement *>>::__emplace_back_slow_path<WrdXmlElement *>(a1 + 1, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[2] = result;
  *a2 = 0;
  return result;
}

uint64_t std::vector<WrdXmlElement *,ChAllocator<WrdXmlElement *>>::__emplace_back_slow_path<WrdXmlElement *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E72F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdXmlSchema::WrdXmlSchema(WrdXmlSchema *this)
{
  *this = &unk_286ED5E28;
  CsString::CsString((this + 8));
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
}

void WrdXmlSchema::~WrdXmlSchema(WrdXmlSchema *this)
{
  *this = &unk_286ED5E28;
  WrdXmlSchema::release(this);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  CsString::~CsString((this + 8));
}

{
  WrdXmlSchema::~WrdXmlSchema(this);

  JUMPOUT(0x25F897000);
}

void *WrdXmlSchema::release(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = this[5] - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = v1[4];
      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v6 = v1[4];
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = v1[4];
  }

  v1[5] = v2;
  v7 = v1[7];
  v8 = v1[8] - v7;
  if ((v8 & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    v10 = (v8 >> 3);
    do
    {
      v11 = v1[7];
      this = *(v11 + 8 * v9);
      if (this)
      {
        this = (*(*this + 8))(this);
        v11 = v1[7];
      }

      *(v11 + 8 * v9++) = 0;
    }

    while (v10 != v9);
    v7 = v1[7];
  }

  v1[8] = v7;
  return this;
}

uint64_t WrdXmlSchema::appendElement(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[5];
  if (v5 >= a1[6])
  {
    result = std::vector<CsString *,ChAllocator<CsString *>>::__emplace_back_slow_path<CsString *>(a1 + 4, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[5] = result;
  *a2 = 0;
  return result;
}

uint64_t WrdXmlSchema::appendAttribute(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[8];
  if (v5 >= a1[9])
  {
    result = std::vector<CsString *,ChAllocator<CsString *>>::__emplace_back_slow_path<CsString *>(a1 + 7, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[8] = result;
  *a2 = 0;
  return result;
}

void WrdXmlSchemaTable::WrdXmlSchemaTable(WrdXmlSchemaTable *this)
{
  *this = &unk_286ED5E60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void WrdXmlSchemaTable::~WrdXmlSchemaTable(WrdXmlSchemaTable *this)
{
  *this = &unk_286ED5E60;
  WrdXmlElementTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdXmlSchemaTable::~WrdXmlSchemaTable(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdXmlSchemaTable::append(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[2];
  if (v5 >= a1[3])
  {
    result = std::vector<WrdXmlSchema *,ChAllocator<WrdXmlSchema *>>::__emplace_back_slow_path<WrdXmlSchema *>(a1 + 1, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[2] = result;
  *a2 = 0;
  return result;
}

uint64_t std::vector<WrdXmlSchema *,ChAllocator<WrdXmlSchema *>>::__emplace_back_slow_path<WrdXmlSchema *>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5E783C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdBaseParser::parseBuffer(WrdBaseParser *this, WrdBorder *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 7)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  WrdBaseParser::parseBuffer(this, &a2->var1, a3, a4);
  result = CsLeReadSInt32(a3 + 1);
  a2->var6 = result;
  a2->var2 = BYTE1(result);
  a2->var7 = BYTE2(result) & 0x1F;
  *(a2 + 24) = *(a2 + 24) & 0xFC | (result >> 21) & 3;
  return result;
}

void WrdBaseParser::parseBuffer(WrdBaseParser *this, CsColour *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  a2->var1 = *a3;
  a2->var2 = a3[1];
  a2->var3 = a3[2];
  a2->var0 = a3[3] ^ 0xFF;
}

double WrdBaseParser::parseBRC10(WrdBaseParser *this, WrdBorder *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  UInt16 = CsLeReadUInt16(a3);
  v6 = UInt16 | (UInt16 >> 3);
  if (((v6 | (UInt16 >> 6)) & 7) != 0)
  {
    v7 = (UInt16 >> 6) & 7;
    v8 = v6 & 7;
    if (v7 == 1 && !v8)
    {
      v9 = 1;
LABEL_8:
      a2->var2 = v9;
LABEL_14:
      a2->var6 = v9;
      goto LABEL_15;
    }

    if ((UInt16 & 0x3F) == 9 && v7 == 1)
    {
      v9 = 3;
LABEL_13:
      a2->var2 = v9;
      LOBYTE(v9) = 1;
      goto LABEL_14;
    }

    if (v7 == 4 && !v8)
    {
      v9 = 2;
      goto LABEL_8;
    }

    if (v7 == 2 && !v8)
    {
      v9 = 2;
      goto LABEL_13;
    }

    if (v7 == 6 && !v8)
    {
      v9 = 6;
      goto LABEL_13;
    }

    if (v7 == 7 && !v8)
    {
      v9 = 5;
      goto LABEL_13;
    }
  }

  else
  {
    a2->var2 = 0;
  }

LABEL_15:
  *&result = 255;
  a2->var1 = 255;
  a2->var3 = 0;
  a2->var7 = (UInt16 >> 9) & 0x1F;
  *(a2 + 24) = *(a2 + 24) & 0xFC | ((UInt16 & 0x4000) != 0);
  return result;
}

uint64_t WrdBaseParser::parseBRC70(WrdBaseParser *this, WrdBorder *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  SInt16 = CsLeReadSInt16(a3);
  a2->var2 = HIBYTE(SInt16);
  if (SInt16 <= 3u)
  {
    if (SInt16 <= 1u)
    {
      if (SInt16)
      {
        v7 = 12;
      }

      else
      {
        v7 = 6;
      }

      goto LABEL_21;
    }

    if (SInt16 == 2)
    {
      v7 = 17;
      goto LABEL_21;
    }

    if (SInt16 == 3)
    {
      v7 = 24;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (SInt16 > 5u)
  {
    if (SInt16 == 6)
    {
      a2->var6 = 1;
      v8 = 6;
    }

    else
    {
      if (SInt16 != 7)
      {
        goto LABEL_24;
      }

      a2->var6 = 1;
      v8 = 7;
    }

    a2->var2 = v8;
    goto LABEL_25;
  }

  if (SInt16 == 4)
  {
    v7 = 34;
    goto LABEL_21;
  }

  if (SInt16 != 5)
  {
LABEL_24:
    a2->var6 = 1;
    ChLogFunction("Unknown line width", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdBaseParser.cpp", 144);
    goto LABEL_25;
  }

  v7 = 48;
LABEL_21:
  a2->var6 = v7;
LABEL_25:
  v9 = CsLeReadSInt16(a3 + 1);
  v10 = HIBYTE(v9);
  *(a2 + 24) = *(a2 + 24) & 0xFE | ((v9 & 0x2000) != 0);
  v11 = v9;
  result = WrdProperty::convertWord97ColorEnumToColor(v9, &a2->var1);
  a2->var3 = v11;
  a2->var7 = v10 & 0x1F;
  return result;
}

uint64_t WrdBaseParser::parseBRC80(WrdBaseParser *this, WrdBorder *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  UInt16 = CsLeReadUInt16(a3);
  v7 = CsLeReadUInt16(a3 + 1);
  a2->var6 = UInt16;
  a2->var2 = UInt16 >> 8;
  a2->var3 = v7;
  result = WrdProperty::convertWord97ColorEnumToColor(v7, &a2->var1);
  a2->var7 = BYTE1(v7) & 0x1F;
  *(a2 + 24) = *(a2 + 24) & 0xFC | (v7 >> 13) & 3;
  return result;
}

uint64_t WrdBaseParser::parseBuffer(WrdBaseParser *this, WrdDateTime *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  SInt16 = CsLeReadSInt16(a3);
  a2->var2 = SInt16 & 0x3F;
  a2->var3 = (SInt16 >> 6) & 0x1F;
  a2->var4 = SInt16 >> 11;
  result = CsLeReadSInt16(a3 + 1);
  a2->var5 = result & 0xF;
  a2->var6 = (result >> 4) & 0x1FF;
  a2->var1 = result >> 13;
  return result;
}

uint64_t WrdBaseParser::parseBuffer(WrdBaseParser *this, WrdDropCap *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  result = CsLeReadUInt16(a3);
  *(a2 + 2) = result & 7;
  *(a2 + 12) = result >> 3;
  return result;
}

uint64_t WrdBaseParser::parseBuffer(WrdBaseParser *this, WrdLineSpaceDescriptor *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(a2 + 4) = CsLeReadSInt16(a3);
  result = CsLeReadUInt16(a3 + 1);
  *(a2 + 5) = result;
  return result;
}

uint64_t WrdBaseParser::parseBuffer(WrdBaseParser *this, WrdNumberRevisionMarkData *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    goto LABEL_22;
  }

  if (a3 >= a4)
  {
    goto LABEL_22;
  }

  v6 = a4 - a3;
  if ((a4 - a3) <= 3)
  {
    goto LABEL_22;
  }

  v8 = a3 + 8;
  v9 = *(a2 + 66) & 0xFE;
  if (*a3)
  {
    ++v9;
  }

  *(a2 + 66) = v9;
  SInt16 = CsLeReadSInt16(a3 + 1);
  *(a2 + 32) = SInt16;
  WrdBaseParser::parseBuffer(SInt16, *(a2 + 4), a3 + 4, a4);
  if (a4 <= v8)
  {
    goto LABEL_22;
  }

  if ((a4 - v8) < 0x12)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = (a3 + 10);
  v13 = v6 - 19;
  do
  {
    v14 = v11;
    WrdNumberRevisionMarkData::setIndexIntoNumberPlaceHolders(a2, v11++, *(v12 - 2));
    v12 = (v12 + 1);
  }

  while (v14 < 8);
  v15 = 0;
  do
  {
    v16 = v15;
    WrdNumberRevisionMarkData::setNumberFormats(a2, v15++, *(v12 - 2));
    --v13;
    v12 = (v12 + 1);
  }

  while (v16 < 8);
  if (v12 >= a4)
  {
    goto LABEL_22;
  }

  if (v13 < 0x24)
  {
    goto LABEL_22;
  }

  v17 = 0;
  do
  {
    SInt32 = CsLeReadSInt32(v12);
    v19 = v17;
    WrdNumberRevisionMarkData::setNumberValue(a2, v17, SInt32);
    ++v12;
    ++v17;
    v13 -= 4;
  }

  while (v19 < 8);
  v20 = WrdNumberRevisionMarkData::s_bMaxNumberOfCharactersForTextString;
  CsString::reserve((a2 + 8), WrdNumberRevisionMarkData::s_bMaxNumberOfCharactersForTextString);
  result = CsString::setCount((a2 + 8), WrdNumberRevisionMarkData::s_bMaxNumberOfCharactersForTextString);
  if (v12 >= a4 || v13 < 2 * WrdNumberRevisionMarkData::s_bMaxNumberOfCharactersForTextString)
  {
LABEL_22:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (WrdNumberRevisionMarkData::s_bMaxNumberOfCharactersForTextString)
  {
    v22 = *(a2 + 2);
    do
    {
      result = CsLeReadUInt16(v12);
      *v22++ = result;
      v12 = (v12 + 2);
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t WrdBaseParser::parseSHD80(WrdBaseParser *this, WrdShading *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  UInt16 = CsLeReadUInt16(a3);
  a2->var5 = 1;
  v6 = UInt16 == 0xFFFF;
  v7 = (UInt16 >> 5) & 0x1F;
  if (UInt16 == 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v8 = UInt16 >> 10;
  }

  if (UInt16 == 0xFFFF)
  {
    v9 = 31;
  }

  else
  {
    v9 = UInt16 & 0x1F;
  }

  a2->var1 = v8;
  if (v6)
  {
    v10 = 31;
  }

  else
  {
    v10 = v7;
  }

  a2->var6 = v9;
  a2->var7 = v10;
  WrdProperty::convertWord97ColorEnumToColor(v9, &a2->var3);
  var7 = a2->var7;

  return WrdProperty::convertWord97ColorEnumToColor(var7, &a2->var4);
}

uint64_t WrdBaseParser::parseANLV80(WrdBaseParser *this, WrdAutoNumberLevelDescriptor *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || (a4 - a3) <= 0xF)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(a2 + 4) = *a3;
  *(a2 + 44) = a3[1];
  *(a2 + 45) = a3[2];
  *(a2 + 5) = a3[3] & 3;
  v6 = *(a2 + 21) & 0xFFFE | (a3[3] >> 2) & 1;
  *(a2 + 21) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((a3[3] >> 3) & 1));
  *(a2 + 21) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((a3[3] >> 4) & 1));
  *(a2 + 21) = v8;
  v9 = v8 & 0xFFFFFFF7 | (8 * ((a3[3] >> 5) & 1));
  *(a2 + 21) = v9;
  v10 = v9 & 0xFFFFFFEF | (16 * ((a3[3] >> 6) & 1));
  *(a2 + 21) = v10;
  v11 = v10 & 0xFFFFFFDF | (32 * ((a3[3] >> 7) & 1));
  *(a2 + 21) = v11;
  v12 = v11 & 0xFFFFFFBF | ((a3[4] & 1) << 6);
  *(a2 + 21) = v12;
  v13 = v12 & 0xFFFFFF7F | (((a3[4] >> 1) & 1) << 7);
  *(a2 + 21) = v13;
  v14 = v13 & 0xFFFFFEFF | (((a3[4] >> 2) & 1) << 8);
  *(a2 + 21) = v14;
  v15 = v14 & 0xFFFFFDFF | (((a3[4] >> 3) & 1) << 9);
  *(a2 + 21) = v15;
  v16 = v15 & 0xFFFFFBFF | (((a3[4] >> 4) & 1) << 10);
  *(a2 + 21) = v16;
  v17 = v16 & 0xFFFFF7FF | (((a3[4] >> 5) & 1) << 11);
  *(a2 + 21) = v17;
  v18 = v17 & 0xFFFFEFFF | (((a3[4] >> 6) & 1) << 12);
  *(a2 + 21) = v18;
  v19 = v18 & 0xFFFFDFFF | (((a3[4] >> 7) & 1) << 13);
  *(a2 + 21) = v19;
  *(a2 + 21) = v19 & 0xBFFF | (((a3[5] & 7) != 0) << 14);
  *(a2 + 6) = (a3[5] >> 3) & 0x1E;
  SInt16 = CsLeReadSInt16(a3 + 3);
  if (SInt16 == -32767)
  {
    v21 = 0;
  }

  else
  {
    v21 = SInt16;
  }

  *(a2 + 18) = v21;
  *(a2 + 19) = CsLeReadUInt16(a3 + 4);
  *(a2 + 20) = CsLeReadUInt16(a3 + 5);
  *(a2 + 7) = CsLeReadUInt16(a3 + 6);
  result = CsLeReadUInt16(a3 + 7);
  *(a2 + 8) = result;
  return result;
}

uint64_t WrdBaseParser::parseOLST80(WrdBaseParser *this, WrdOutlineListData *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v5 = a3;
  if (a3 >= a4)
  {
    goto LABEL_12;
  }

  if ((a4 - a3) < 0x93)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = a4 - a3 - 4;
  do
  {
    v9 = v7;
    EmbeddedFontReference = WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(a2, v7);
    WrdBaseParser::parseANLV80(EmbeddedFontReference, EmbeddedFontReference, v5, a4);
    v5 += 16;
    ++v7;
    v8 -= 16;
  }

  while (v9 < 8);
  v12 = *v5;
  v11 = (v5 + 4);
  *(a2 + 64) = v12 != 0;
  v13 = WrdOutlineListData::s_bMaxNumberOfCharactersForTextString;
  CsString::reserve((a2 + 40), WrdOutlineListData::s_bMaxNumberOfCharactersForTextString);
  result = CsString::setCount((a2 + 40), WrdOutlineListData::s_bMaxNumberOfCharactersForTextString);
  if (v11 >= a4 || v8 < 2 * WrdOutlineListData::s_bMaxNumberOfCharactersForTextString)
  {
LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (WrdOutlineListData::s_bMaxNumberOfCharactersForTextString)
  {
    v15 = *(a2 + 6);
    do
    {
      result = CsLeReadUInt16(v11);
      *v15++ = result;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return result;
}

void non-virtual thunk toWrdBinaryReader::~WrdBinaryReader(WrdBinaryReader *this)
{
  WrdBinaryReader::~WrdBinaryReader((this - 8));
}

{
  WrdBinaryReader::~WrdBinaryReader((this - 24));
}

{
  WrdBinaryReader::~WrdBinaryReader((this - 8));

  JUMPOUT(0x25F897000);
}

{
  WrdBinaryReader::~WrdBinaryReader((this - 24));

  JUMPOUT(0x25F897000);
}

void WrdBinaryReader::start(WrdBinaryReader *this, __sFILE *a2)
{
  (*(*this + 24))(this);
  if (a2)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

uint64_t non-virtual thunk toWrdBinaryReader::read(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 24);
  v3 = *(v2 + 152);
  LODWORD(v2) = *(v2 + 160);
  *a2 = v3;
  a2[1] = v2;
  return result;
}

void *WrdBinaryReader::read(WrdBinaryReader *this, WrdEmbeddedTrueTypeFontTable *a2)
{
  if (!*(this + 26))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  WrdAnnotationDateTimeTable::clear(a2);
  result = WrdParser::parse(*(this + 4), *(this + 26));
  if (((*(*(this + 26) + 16) - *(*(this + 26) + 8)) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 19);
      *(this + 87) = v7;
      *(v7 + 56) = *WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(*(this + 26), v5);
      v8 = *(this + 87);
      *(v8 + 4) = 0;
      result = WrdEmbeddedTrueTypeFontTable::append(a2, v8);
      *(this + 87) = 0;
      v5 = ++v6;
    }

    while (((*(*(this + 26) + 16) - *(*(this + 26) + 8)) >> 3) > v6);
  }

  return result;
}

uint64_t WrdBinaryReader::read(WrdBinaryReader *this, WrdEmbeddedTrueTypeFont *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(this + 155);
  }

  else
  {
    v6 = *(this + 26);
    if (((*(v6 + 2) - *(v6 + 1)) & 0x7FFFFFFF8) != 0)
    {
      v7 = 0;
      v8 = 0;
      while (*WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(v6, v7) != *(a2 + 28))
      {
        v7 = ++v8;
        v6 = *(this + 26);
        if (((*(v6 + 2) - *(v6 + 1)) >> 3) <= v8)
        {
          goto LABEL_7;
        }
      }

      v9 = *(WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(*(this + 26), v7) + 4);
    }

    else
    {
LABEL_7:
      v9 = 0;
    }

    (*(**(*(this + 4) + 112) + 16))(*(*(this + 4) + 112), v9, 0);
    v5 = (*(**(*(this + 4) + 112) + 104))(*(*(this + 4) + 112)) - 4;
    *(this + 155) = v5;
    v4 = *(a2 + 4);
  }

  v10 = v5 - v4;
  v14 = v5 - v4;
  v11 = *(a2 + 7);
  if (v11)
  {
    if (v11 < v10)
    {
      v14 = *(a2 + 7);
LABEL_16:
      (*(**(*(this + 4) + 112) + 56))(*(*(this + 4) + 112), *(a2 + 4), &v14);
      v12 = v14;
      goto LABEL_17;
    }
  }

  else
  {
    OcBinaryData::setMinimumCapacity((a2 + 8), v10);
  }

  if (v5 != v4)
  {
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:
  result = OcBinaryData::setMinimumCapacity((a2 + 8), v12);
  *(a2 + 6) = v12;
  return result;
}

uint64_t WrdBinaryReader::read(WrdBinaryReader *this, WrdFormFieldBinaryData *a2)
{
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v16 = v4;
  v6 = this + 24 * v5;
  for (i = *(v6 + 53); i; i = *i)
  {
    v8 = *(i + 7);
    if (v4 >= v8)
    {
      if (v8 >= v4)
      {
        goto LABEL_14;
      }

      ++i;
    }
  }

  v9 = (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 11);
  v9[2] = v5;
  v9[3] = v4;
  (*(*this + 192))(this, v9);
  v10 = *(v6 + 53);
  if (!v10)
  {
LABEL_11:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  while (1)
  {
    v11 = *(v10 + 7);
    if (v4 >= v11)
    {
      break;
    }

LABEL_10:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v11 < v4)
  {
    ++v10;
    goto LABEL_10;
  }

  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

LABEL_14:
  v13 = *(this + 4);
  v17 = &v16;
  v14 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v6 + 416), &v16);
  return WrdParser::parse(v13, a2, *(v14 + 8));
}

_DWORD *WrdBinaryReader::mark(WrdBinaryReader *this, OcMark *a2)
{
  OcBinaryReader::mark(this, a2);
  v5 = *(this + 154);
  result[12] = *(this + 152);
  result[13] = v5;
  return result;
}

_DWORD *WrdBinaryReader::seek(WrdBinaryReader *this, const OcMark *a2)
{
  OcBinaryReader::seek(this, a2);
  v5 = result[13];
  *(this + 152) = result[12];
  *(this + 154) = v5;
  return result;
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdUserRestrictionTable *a2)
{
  (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 12);
  (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 12);
  operator new();
}

void sub_25D5E91D8(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

BOOL WrdBinaryReader::read(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = (*(*a1 + 88))(a1);
  *v3 = *L"Macros";
  *&v3[3] = 0x73006F0072;
  result = SsrwOOStorage::hasChild(v1, v3);
  if (result)
  {
    SsrwOOStorage::openStorage(v1, v3);
  }

  return result;
}

OcBinaryData *WrdBinaryReader::read(WrdDocumentFileRecord **this, WrdFrameProperties *a2)
{
  OcBinaryData::removeBuffer((a2 + 8));
  result = WrdDocumentFileRecord::getType(this[27]);
  if (result == 8)
  {
    v5 = this[27] + 32;

    return OcBinaryData::operator=((a2 + 8), v5);
  }

  return result;
}

uint64_t WrdBinaryReader::seek(WrdBinaryReader *this, const EshContainer *a2)
{
  v2 = *(*(*(*this + 112))(this) + 64);

  return v2();
}

uint64_t WrdBinaryReader::seek(WrdBinaryReader *this, const EshRoot *a2)
{
  v2 = *(*(*(*this + 112))(this) + 72);

  return v2();
}

uint64_t non-virtual thunk toWrdBinaryReader::seek(WrdBinaryReader *this, const EshContainer *a2)
{
  v2 = *(*(*(*(this - 1) + 112))() + 64);

  return v2();
}

uint64_t non-virtual thunk toWrdBinaryReader::seek(WrdBinaryReader *this, const EshRoot *a2)
{
  v2 = *(*(*(*(this - 1) + 112))() + 72);

  return v2();
}

void WrdEshReader::~WrdEshReader(WrdEshReader *this)
{
  EshBinaryReader::~EshBinaryReader(this);

  JUMPOUT(0x25F897000);
}

void WrdMark::WrdMark(WrdMark *this)
{
  *this = &unk_286ED3238;
  EshMark::EshMark((this + 8));
  *this = &unk_286ED6418;
  *(this + 6) = -1;
}

void WrdMark::~WrdMark(WrdMark *this)
{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));
}

{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));

  JUMPOUT(0x25F897000);
}

WrdParagraphProperties *handleCase0xC601(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4)
{
  if (*(a2 + 13) < 6u || a4 <= a3 || (a4 - a3) < 6)
  {

    return ChLogFunction("applySprm case: 0xC601 wrong variable sized buffer\n", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdPapParser.cpp", 848);
  }

  else
  {
    *v10 = 0;
    UnsignedShort = readUnsignedShort((a3 + 2), a4, &v10[1]);
    result = readUnsignedShort(UnsignedShort, a4, v10);
    v8 = *(a1 + 140);
    if (v8 > v10[1] && v8 <= v10[0])
    {
      v9 = 0;
      readUnsignedShort(result + v8 - v10[1], a4, &v9);
      return WrdParagraphProperties::setParagraphStyleIndex(a1, v9);
    }
  }

  return result;
}

CsString *WrdPapParser::parseANLD80(WrdPapParser *this, WrdAutoNumberListDescriptor *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3 || a3 >= a4 || a4 - a3 < 2 * WrdAutoNumberListDescriptor::s_bMaxNumberOfCharacters + 20)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  WrdBaseParser::parseANLV80(this, *(a2 + 1), a3, a4);
  *(a2 + 41) = a3[16];
  *(a2 + 42) = a3[17];
  v6 = *(a2 + 40) & 0xFE;
  if (a3[18])
  {
    ++v6;
  }

  *(a2 + 40) = v6;
  CsString::reserve((a2 + 16), WrdAutoNumberListDescriptor::s_bMaxNumberOfCharacters);
  v7 = *(a2 + 3);
  if (v7 && WrdAutoNumberListDescriptor::s_bMaxNumberOfCharacters)
  {
    v8 = (a3 + 20);
    v9 = WrdAutoNumberListDescriptor::s_bMaxNumberOfCharacters;
    do
    {
      *v7++ = CsLeReadUInt16(v8++);
      --v9;
    }

    while (v9);
  }

  return CsString::setCount((a2 + 16), WrdAutoNumberListDescriptor::s_bMaxNumberOfCharacters);
}

const unsigned __int8 *readShort(unsigned __int8 *a1, unsigned __int8 *a2, __int16 *a3)
{
  if (a2 <= a1 || a2 - a1 <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  *a3 = CsLeReadSInt16(a1);
  return a1 + 2;
}

const unsigned __int8 *readUnsignedShort(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 <= a1 || a2 - a1 <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  *a3 = CsLeReadUInt16(a1);
  return (a1 + 1);
}

void WrdParser::openDoc(WrdParser *this, __sFILE *a2)
{
  if (a2)
  {
    WrdParser::createFactories(this);
    *(this + 2) = a2;
    if (*(this + 37))
    {
      *(this + 37) = 0;
      *(this + 76) = 0;
    }

    SsrwOORootStorage::openInStream(this + 3, a2, 0);

    WrdParser::initStreamsAndFibBase(this);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1006;
}

uint64_t WrdParser::startFCLCB(WrdParser *this, unsigned int a2)
{
  FCLCB = WrdFileInformationBlock::getFCLCB((this + 160), a2);
  v4 = *FCLCB;
  if ((v4 & 0x80000000) != 0 || (v5 = FCLCB[1], __CFADD__(v5, v4)) || v5 + v4 > (*(**(this + 16) + 48))(*(this + 16)))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  (*(**(this + 16) + 16))(*(this + 16), v4, 0);
  return v4 | (v5 << 32);
}

void WrdParser::parseGrpprl(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WrdParagraphProperties *a9, WrdCharacterProperties *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a3)
  {
    operator new();
  }
}

uint64_t WrdParser::applyHugePapx(uint64_t a1, uint64_t a2, uint64_t a3, int a4, WrdParagraphProperties *a5, uint64_t a6, uint64_t a7)
{
  result = *(a1 + 120);
  if (result)
  {
    (*(*result + 40))(result);
    (*(**(a1 + 120) + 16))(*(a1 + 120), a3, 0);
    result = (*(**(a1 + 120) + 80))(*(a1 + 120));
    if (result >= 0x3FA3)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 2001;
    }

    v15 = result;
    v16 = *a2;
    v17 = *(a2 + 8);
    if (*a2 == v17)
    {
LABEL_16:
      v24 = *(a2 + 16);
      if (v17 >= v24)
      {
        v26 = (v17 - v16) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
        }

        v27 = v24 - v16;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(a2, v29);
        }

        v30 = (8 * v26);
        *v30 = a3 | (result << 32);
        v25 = 8 * v26 + 8;
        v31 = *(a2 + 8) - *a2;
        v32 = v30 - v31;
        memcpy(v30 - v31, *a2, v31);
        v33 = *a2;
        *a2 = v32;
        *(a2 + 8) = v25;
        *(a2 + 16) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v17 = a3 | (result << 32);
        v25 = (v17 + 1);
      }

      *(a2 + 8) = v25;
      if (v15)
      {
        WrdParser::parseGrpprl(a1, *(a1 + 120), v15, 0, a2, 0, a4, 0, a5, 0, a6, a7, 0, 0, 0);
        v25 = *(a2 + 8);
      }

      *(a2 + 8) = v25 - 8;
      v34 = *(**(a1 + 120) + 16);

      return v34();
    }

    else
    {
      v18 = *a2;
      while (1)
      {
        if (*v18 <= a3)
        {
          v19 = a3;
        }

        else
        {
          v19 = *v18;
        }

        v20 = *(v18 + 1) + *v18;
        if (v20 >= result + a3)
        {
          v20 = result + a3;
        }

        v21 = __OFSUB__(v20, v19);
        v22 = v20 - v19;
        if (v22 < 0 == v21 && v22 >= 1)
        {
          break;
        }

        if (++v18 == v17)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdEmbeddedTTFRecordTable *a2)
{
  started = WrdParser::startFCLCB(this, 0x3Du);
  result = WrdEmbeddedTTFRecordTable::clear(a2);
  if (HIDWORD(started))
  {
    (*(**(this + 16) + 72))(*(this + 16));
    v6 = (*(**(this + 16) + 80))(*(this + 16));
    (*(**(this + 16) + 96))(*(this + 16));
    result = (*(**(this + 16) + 72))(*(this + 16));
    if (v6)
    {
      operator new();
    }
  }

  return result;
}

unint64_t WrdParser::parse(WrdParser *this, WrdVariableTable *a2)
{
  result = WrdParser::startFCLCB(this, 0x3Cu);
  if (result >> 33 >= 3)
  {
    v4 = HIDWORD(result) + result;
    (*(**(this + 16) + 80))(*(this + 16));
    v5 = (*(**(this + 16) + 80))(*(this + 16));
    (*(**(this + 16) + 80))(*(this + 16));
    result = (*(**(this + 16) + 40))(*(this + 16));
    if (result + 8 * v5 <= v4 && v5 != 0)
    {
      operator new();
    }
  }

  return result;
}

unint64_t WrdParser::parse(WrdParser *this, WrdCustomization *a2)
{
  result = WrdParser::startFCLCB(this, 0x18u);
  if (HIDWORD(result))
  {
    v4 = HIDWORD(result);
    OcBinaryData::allocBuffer((a2 + 8), HIDWORD(result));
  }

  return result;
}

uint64_t WrdParser::parseKeyboardShortcuts(WrdParser *this, WrdCustomization *a2)
{
  result = (*(**(this + 16) + 104))(*(this + 16));
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t WrdParser::parseMenuCustomization(WrdParser *this, WrdCustomization *a2)
{
  (*(**(this + 16) + 16))(*(this + 16), 9, 1);
  v3 = (*(**(this + 16) + 80))(*(this + 16));
  v4 = (*(**(this + 16) + 104))(*(this + 16));
  result = (*(**(this + 16) + 16))(*(this + 16), v4, 1);
  if (v3)
  {
    if ((*(**(this + 16) + 104))(*(this + 16)))
    {
      operator new();
    }

    operator new();
  }

  return result;
}

uint64_t WrdParser::parseMacroNames(WrdParser *this, WrdCustomization *a2)
{
  (*(**(this + 16) + 80))(*(this + 16));
  v3 = (*(**(this + 16) + 80))(*(this + 16));
  result = (*(**(this + 16) + 80))(*(this + 16));
  if (v3)
  {
    operator new();
  }

  return result;
}

uint64_t WrdParser::parseUpcaseMacroNames(WrdParser *this, WrdCustomization *a2)
{
  result = (*(**(this + 16) + 80))(*(this + 16));
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t WrdParser::parseCustomizedMenu(WrdParser *this, WrdCustomizedMenu *a2, WrdOffsetPairList *a3)
{
  (*(**(this + 16) + 16))(*(this + 16), 2, 1);
  result = (*(**(this + 16) + 80))(*(this + 16));
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t WrdParser::parseNewMenu(WrdParser *this, WrdNewMenu *a2)
{
  (*(**(this + 16) + 16))(*(this + 16), 4, 1);
  v4 = (*(**(this + 16) + 80))(*(this + 16));
  WrdParser::parseString(*(this + 16), v4, (a2 + 8), v5);
  (*(**(this + 16) + 16))(*(this + 16), 20, 1);
  v6 = (*(**(this + 16) + 64))(*(this + 16));
  WrdParser::parseString(*(this + 16), v6, (a2 + 32), v7);
  v8 = 5;
  do
  {
    (*(**(this + 16) + 16))(*(this + 16), 20, 1);
    --v8;
  }

  while (v8);
  (*(**(this + 16) + 16))(*(this + 16), 8, 1);
  result = (*(**(this + 16) + 104))(*(this + 16));
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t WrdParser::parseMenuCustomizationOperation(WrdParser *this, WrdMenuCustomizationOperation *a2, WrdOffsetPairList *a3)
{
  *(a2 + 8) = (*(**(this + 16) + 64))(*(this + 16));
  *(a2 + 9) = (*(**(this + 16) + 64))(*(this + 16));
  *(a2 + 3) = (*(**(this + 16) + 104))(*(this + 16));
  *(a2 + 4) = (*(**(this + 16) + 104))(*(this + 16));
  v6 = (*(**(this + 16) + 40))(*(this + 16));
  v7 = (*(**(this + 16) + 104))(*(this + 16));
  v8 = v7;
  if (v7)
  {
    v13 = __PAIR64__(v7, v6);
    v9 = *(a3 + 1);
    if (v9 >= *(a3 + 2))
    {
      v10 = std::vector<WrdOffsetPairList::OffsetPair,ChAllocator<WrdOffsetPairList::OffsetPair>>::__emplace_back_slow_path<WrdOffsetPairList::OffsetPair>(a3, &v13);
    }

    else
    {
      *v9 = v13;
      v10 = (v9 + 1);
    }

    *(a3 + 1) = v10;
  }

  (*(**(this + 16) + 80))(*(this + 16));
  result = (*(**(this + 16) + 80))(*(this + 16));
  if (result)
  {
    *(a2 + 20) = 1;
    v12 = (*(**(this + 16) + 40))(*(this + 16));
    (*(**(this + 16) + 16))(*(this + 16), v8, 0);
    WrdParser::parseCommandDescription(this, (a2 + 24));
    (*(**(this + 16) + 40))(*(this + 16));
    return (*(**(this + 16) + 16))(*(this + 16), v12, 0);
  }

  return result;
}

uint64_t WrdParser::parseCommandDescription(WrdParser *this, WrdCommandDescription *a2)
{
  (*(**(this + 16) + 64))(*(this + 16));
  (*(**(this + 16) + 64))(*(this + 16));
  (*(**(this + 16) + 64))(*(this + 16));
  v4 = (*(**(this + 16) + 64))(*(this + 16));
  *(a2 + 8) = v4 == 10;
  v5 = (*(**(this + 16) + 80))(*(this + 16));
  *(a2 + 5) = v5;
  (*(**(this + 16) + 16))(*(this + 16), 5, 1);
  if (v5 != 1)
  {
    *(a2 + 3) = (*(**(this + 16) + 104))(*(this + 16));
  }

  result = (*(**(this + 16) + 64))(*(this + 16));
  v7 = result;
  if (v4 != 10)
  {
    if (result)
    {
      v18 = *(this + 16);
      v19 = (*(*v18 + 64))(v18);
      WrdParser::parseString(v18, v19, a2 + 1, v20);
      if ((v7 & 4) == 0)
      {
LABEL_10:
        if ((v7 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }

    else if ((result & 4) == 0)
    {
      goto LABEL_10;
    }

    (*(**(this + 16) + 64))(*(this + 16));
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_18:
    v21 = *(this + 16);
    v22 = (*(*v21 + 64))(v21);
    WrdParser::parseString(v21, v22, a2 + 3, v23);
    if ((v7 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    v24 = 6;
    do
    {
      (*(**(this + 16) + 64))(*(this + 16));
      --v24;
    }

    while (v24);
LABEL_21:
    if ((v7 & 2) != 0)
    {
      v25 = *(this + 16);
      v26 = (*(*v25 + 64))(v25);
      WrdParser::parseString(v25, v26, a2 + 4, v27);
    }

    if ((v7 & 4) != 0)
    {
      v28 = *(this + 16);
      v29 = (*(*v28 + 64))(v28);
      WrdParser::parseString(v28, v29, a2 + 5, v30);
      (*(**(this + 16) + 64))(*(this + 16));
      (*(**(this + 16) + 64))(*(this + 16));
    }

    result = (*(**(this + 16) + 64))(*(this + 16));
    v31 = result;
    if ((result & 0x10) != 0)
    {
      result = (*(**(this + 16) + 80))(*(this + 16));
      *(a2 + 72) = result;
      if ((v31 & 8) == 0)
      {
LABEL_27:
        if ((v31 & 4) == 0)
        {
          return result;
        }

LABEL_31:
        v11 = *(this + 16);
        v12 = (*(*v11 + 64))(v11);
        v14 = (a2 + 152);
LABEL_32:

        return WrdParser::parseString(v11, v12, v14, v13);
      }
    }

    else if ((result & 8) == 0)
    {
      goto LABEL_27;
    }

    result = (*(**(this + 16) + 16))(*(this + 16), 1164, 1);
    if ((v31 & 4) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v5 == 1)
  {
    if (result != 1)
    {
      return result;
    }

    v8 = *(this + 16);
    v9 = (*(*v8 + 64))(v8);
    WrdParser::parseString(v8, v9, a2 + 1, v10);
    result = (*(**(this + 16) + 104))(*(this + 16));
    if (result != 1)
    {
      return result;
    }

    v11 = *(this + 16);
    v12 = (*(*v11 + 64))(v11);
    v14 = (a2 + 48);
    goto LABEL_32;
  }

  if (result == 1)
  {
    v15 = *(this + 16);
    v16 = (*(*v15 + 64))(v15);
    WrdParser::parseString(v15, v16, a2 + 1, v17);
  }

  result = (*(**(this + 16) + 104))(*(this + 16));
  *(a2 + 4) = result;
  return result;
}

CsString *WrdParser::parseString(WrdParser *this, SsrwOOStream *a2, CsString *a3, CsString *a4)
{
  v5 = a2;
  result = CsString::setCount(a3, a2);
  if (v5)
  {
    v8 = v5;
    return (*(*this + 136))(this, &v8, a3->var1);
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdFormFieldBinaryData *a2, unsigned int a3)
{
  result = *(this + 15);
  if (result)
  {
    v5 = (*(*result + 168))(result);
    result = SsrwOOStgInfo::getSize(v5);
    if (result > a3)
    {
      v6 = 0;
      operator new();
    }
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdWorkBook *a2)
{
  *(a2 + 4) = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 5) = (*(**(this + 16) + 80))(*(this + 16));
  *(a2 + 6) = (*(**(this + 16) + 72))(*(this + 16));
  v4 = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 7) = v4 & 0xF;
  *(a2 + 8) = v4 >> 4;
  result = (*(**(this + 16) + 96))(*(this + 16));
  *(a2 + 5) = result;
  return result;
}

void *WrdParser::parse(WrdParser *this, WrdWorkBookTable *a2)
{
  started = WrdParser::startFCLCB(this, 0x36u);
  result = WrdWorkBookTable::clear(a2);
  if (started >> 34)
  {
    v6 = ((HIDWORD(started) + 1048572) >> 4);
    if (((HIDWORD(started) + 1048572) >> 4))
    {
      v7 = 0;
      do
      {
        v8 = (*(**(this + 16) + 96))(*(this + 16));
        WrdWorkBookTable::setCP(a2, v7++, v8);
      }

      while (v6 != v7);
    }

    result = (*(**(this + 16) + 96))(*(this + 16));
    *(a2 + 2) = result;
    if (((HIDWORD(started) + 1048572) >> 4))
    {
      v9 = 0;
      do
      {
        v10 = (*(**(this + 35) + 16))(*(this + 35), 65);
        WrdParser::parse(this, v10);
        result = WrdWorkBookTable::append(a2, v10);
        ++v9;
      }

      while (v9 < v6);
    }
  }

  return result;
}

void sub_25D5ECE3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotation::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdParser::applyPiece(uint64_t a1, uint64_t a2, int a3, int a4, int a5, WrdParagraphProperties *a6, WrdCharacterProperties *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *(a2 + 4);
  if (v16)
  {
    v19 = v16 >> 1;
    v20 = *(a1 + 272);
    if (v19 >= *(v20 + 10))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 2001;
    }

    (*(**(a1 + 128) + 16))(*(a1 + 128), *(*v20 + 4 * v19), 0);
    v23 = (*(**(a1 + 128) + 80))(*(a1 + 128));
    WrdParser::parseGrpprl(a1, *(a1 + 128), v23, 1, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    if (!*(a2 + 4))
    {
      return;
    }

    v17 = *(a2 + 4);
    if (v17 > 0x99)
    {
      v18 = v17 - 154 > 0x36 || ((1 << (v16 + 102)) & 0x40040401150001) == 0;
      if (v18 && v17 != 240)
      {
        return;
      }

LABEL_8:
      operator new();
    }

    if (v17 == 10 || v17 == 16)
    {
      goto LABEL_8;
    }
  }
}

unint64_t WrdParser::parse(WrdParser *this, WrdRoutingSlip *a2)
{
  WrdRoutingSlip::clear(a2);
  result = WrdParser::startFCLCB(this, 0x46u);
  if (HIDWORD(result))
  {
    *(a2 + 104) = (*(**(this + 16) + 80))(*(this + 16)) & 1;
    *(a2 + 105) = (*(**(this + 16) + 80))(*(this + 16)) & 1;
    *(a2 + 106) = (*(**(this + 16) + 80))(*(this + 16)) & 1;
    (*(**(this + 16) + 16))(*(this + 16), 2, 1);
    *(a2 + 27) = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 56) = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 107) = (*(**(this + 16) + 80))(*(this + 16)) & 1;
    v5 = (*(**(this + 16) + 80))(*(this + 16));
    v6 = (*(**(this + 16) + 80))(*(this + 16));
    v7 = v6 - 1;
    CsString::reserve((a2 + 8), v7);
    CsString::setCount((a2 + 8), v7);
    if (v6 >= 2)
    {
      v8 = *(a2 + 2);
      v9 = v8;
      do
      {
        v10 = (*(**(this + 16) + 64))(*(this + 16));
        if (v8)
        {
          *v9 = v10;
        }

        ++v9;
        --v7;
      }

      while (v7);
    }

    (*(**(this + 16) + 16))(*(this + 16), 1, 1);
    v11 = (*(**(this + 16) + 80))(*(this + 16));
    v12 = v11 - 1;
    CsString::reserve((a2 + 32), v12);
    CsString::setCount((a2 + 32), v12);
    if (v11 >= 2)
    {
      v13 = *(a2 + 5);
      v14 = v13;
      do
      {
        v15 = (*(**(this + 16) + 64))(*(this + 16));
        if (v13)
        {
          *v14 = v15;
        }

        ++v14;
        --v12;
      }

      while (v12);
    }

    (*(**(this + 16) + 16))(*(this + 16), 1, 1);
    v16 = (*(**(this + 16) + 80))(*(this + 16));
    v17 = v16 - 1;
    CsString::reserve((a2 + 56), v17);
    CsString::setCount((a2 + 56), v17);
    if (v16 >= 2)
    {
      v18 = *(a2 + 8);
      v19 = v18;
      do
      {
        v20 = (*(**(this + 16) + 64))(*(this + 16));
        if (v18)
        {
          *v19 = v20;
        }

        ++v19;
        --v17;
      }

      while (v17);
    }

    (*(**(this + 16) + 16))(*(this + 16), 1, 1);
    v21 = (*(**(this + 16) + 80))(*(this + 16));
    v22 = v21 - 1;
    CsString::reserve((a2 + 80), v22);
    CsString::setCount((a2 + 80), v22);
    if (v21 >= 2)
    {
      v23 = *(a2 + 11);
      v24 = v23;
      do
      {
        v25 = (*(**(this + 16) + 64))(*(this + 16));
        if (v23)
        {
          *v24 = v25;
        }

        ++v24;
        --v22;
      }

      while (v22);
    }

    result = (*(**(this + 16) + 16))(*(this + 16), 1, 1);
    if (v5)
    {
      v26 = (*(**(this + 35) + 16))(*(this + 35), 46);
      WrdParser::parse(this, v26);
    }
  }

  return result;
}

void sub_25D5ED708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotation::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdParser::parse(WrdParser *this, WrdRoutingRecipient *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = (this + 128);
  (*(**(this + 16) + 40))(*(this + 16));
  v7 = (*(**v4 + 80))();
  (*(**v4 + 80))();
  (*(**v4 + 104))();
  v8 = 16;
  v9 = 0uLL;
  (*(**v4 + 56))(*v4, &v9, &v8);
  *(a2 + 2) = v9;
  *(a2 + 50) = (*(**v4 + 80))() & 1;
  *(a2 + 48) = (*(**v4 + 64))() != 0;
  v5 = (*(**v4 + 64))();
  *(a2 + 49) = v5 != 0;
  if (v5)
  {
    *(a2 + 52) = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 53) = (*(**(this + 16) + 64))();
    *(a2 + 27) = (*(**(this + 16) + 80))();
    v6 = -4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 50) == 1)
  {
    (*(**(this + 16) + 104))(*(this + 16));
  }

  operator new[]((v7 + v6 - 28));
}

unint64_t WrdParser::parse(unint64_t this, WrdUserRestrictionMap *a2)
{
  if (*(this + 232) >= 0x8Du)
  {
    v11 = v2;
    v12 = v3;
    v5 = this;
    this = WrdParser::startFCLCB(this, 0x8Du);
    if (HIDWORD(this))
    {
      (*(**(v5 + 128) + 80))(*(v5 + 128));
      v6 = (*(**(v5 + 128) + 96))(*(v5 + 128));
      for (this = (*(**(v5 + 128) + 80))(*(v5 + 128)); v6; --v6)
      {
        (*(**(v5 + 128) + 80))(*(v5 + 128));
        v7 = (*(**(v5 + 128) + 80))(*(v5 + 128));
        v10 = v7;
        v8 = *(a2 + 2);
        if (v8 >= *(a2 + 3))
        {
          v9 = std::vector<unsigned short,ChAllocator<unsigned short>>::__emplace_back_slow_path<unsigned short const&>(a2 + 8, &v10);
        }

        else
        {
          *v8 = v7;
          v9 = (v8 + 1);
        }

        *(a2 + 2) = v9;
        (*(**(v5 + 128) + 80))(*(v5 + 128));
        this = (*(**(v5 + 128) + 96))(*(v5 + 128));
      }
    }
  }

  return this;
}

unint64_t WrdParser::parse(WrdParser *this, WrdXmlSchemaTable *a2)
{
  result = WrdXmlElementTable::clear(a2);
  if (*(this + 116) >= 0x89u)
  {
    result = WrdParser::startFCLCB(this, 0x88u);
    if (HIDWORD(result))
    {
      v5 = (*(**(this + 16) + 104))(*(this + 16));
      result = (*(**(this + 16) + 48))(*(this + 16));
      if (v5 - 1 < result)
      {
        do
        {
          v6 = (*(**(this + 35) + 16))(*(this + 35), 75);
          WrdParser::parse(this, v6);
          v7 = v6;
          WrdXmlSchemaTable::append(a2, &v7);
          result = v7;
          if (v7)
          {
            result = (*(*v7 + 8))(v7);
          }

          v7 = 0;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

void sub_25D5EE080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdParser::parse(SsrwOOStream **this, WrdXmlSchema *a2)
{
  SsrwOOStream::readCsString(this[16], (a2 + 8));
  (*(this[16]->var0 + 2))(this[16], 4, 1);
  v3 = (*(this[16]->var0 + 13))(this[16]);
  result = (*(this[16]->var0 + 6))(this[16]);
  if (v3 <= result)
  {
    (*(this[16]->var0 + 2))(this[16], 2, 1);
    if (v3)
    {
      operator new();
    }

    (*(this[16]->var0 + 2))(this[16], 2, 1);
    v5 = (*(this[16]->var0 + 13))(this[16]);
    result = (*(this[16]->var0 + 6))(this[16]);
    if (v5 <= result)
    {
      result = (*(this[16]->var0 + 2))(this[16], 2, 1);
      if (v5)
      {
        operator new();
      }
    }
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdXmlElementTable *a2)
{
  result = WrdXmlElementTable::clear(a2);
  if (*(this + 116) >= 0x8Cu)
  {
    result = WrdParser::parseDefinitions(this, a2);
    if (((*(a2 + 2) - *(a2 + 1)) & 0x7FFFFFFF8) != 0)
    {
      WrdParser::parseStartPositions(this, a2);

      WrdParser::parseEndPositions(this, a2);
    }
  }

  return result;
}

unint64_t WrdParser::parseDefinitions(WrdParser *this, WrdXmlElementTable *a2)
{
  result = WrdParser::startFCLCB(this, 0x89u);
  if (HIDWORD(result))
  {
    (*(**(this + 16) + 16))(*(this + 16), 2, 1);
    v5 = (*(**(this + 16) + 104))(*(this + 16));
    result = (*(**(this + 16) + 48))(*(this + 16));
    if (v5 <= result)
    {
      for (result = (*(**(this + 16) + 16))(*(this + 16), 2, 1); v5; --v5)
      {
        v6 = (*(**(this + 35) + 16))(*(this + 35), 73);
        WrdParser::parse(this, v6);
        v7 = v6;
        WrdXmlElementTable::append(a2, &v7);
        result = v7;
        if (v7)
        {
          result = (*(*v7 + 8))(v7);
        }

        v7 = 0;
      }
    }
  }

  return result;
}

void sub_25D5EE604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdParser::parseStartPositions(WrdParser *this, WrdXmlElementTable *a2)
{
  v4 = *(a2 + 2) - *(a2 + 1);
  result = WrdParser::startFCLCB(this, 0x8Au);
  if (14 * (v4 >> 3) + 4 != HIDWORD(result))
  {
    ChLogFunction("Wrong number of XML element start positions", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 4643);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  if ((v4 >> 3))
  {
    v6 = 0;
    v7 = (v4 >> 3);
    do
    {
      v8 = (*(**(this + 16) + 104))(*(this + 16));
      v13 = 0;
      v14 = v8;
      result = WrdParser::convertToRelativeCP(this, &v14, &v13, 1);
      v9 = *(a2 + 1);
      if (v6 >= ((*(a2 + 2) - v9) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v10 = *(v9 + 8 * v6);
      v11 = v14;
      *(v10 + 16) = v13;
      *(v10 + 20) = v11;
      ++v6;
    }

    while (v7 != v6);
  }

  return result;
}

void WrdParser::parseEndPositions(WrdParser *this, WrdXmlElementTable *a2)
{
  v2 = (*(a2 + 2) - *(a2 + 1)) >> 3;
  if (12 * v2 + 4 == WrdParser::startFCLCB(this, 0x8Bu) >> 32)
  {
    operator new();
  }

  ChLogFunction("Wrong number of XML element end positions", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 4682);
  exception = __cxa_allocate_exception(4uLL);
  *exception = 2001;
}

void sub_25D5EEA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ChAutoPtr<ChVector<unsigned short>>::~ChAutoPtr(va);
  _Unwind_Resume(a1);
}

WrdXmlAttribute *WrdParser::parse(WrdParser *this, WrdXmlElement *a2)
{
  (*(**(this + 16) + 16))(*(this + 16), 2, 1);
  (*(**(this + 16) + 16))(*(this + 16), 4, 1);
  *(a2 + 2) = (*(**(this + 16) + 104))(*(this + 16));
  *(a2 + 3) = (*(**(this + 16) + 104))(*(this + 16));
  v4 = (*(**(this + 16) + 104))(*(this + 16));
  WrdXmlElement::setDisplayType(a2, v4);
  v5 = (*(**(this + 16) + 104))(*(this + 16));
  for (result = (*(**(this + 16) + 16))(*(this + 16), 4, 1); v5; --v5)
  {
    v7 = (*(**(this + 35) + 16))(*(this + 35), 71);
    WrdParser::parse(this, v7);
    v8 = v7;
    WrdXmlElement::appendAttribute(a2, &v8);
    result = v8;
    if (v8)
    {
      result = (*(*v8 + 8))(v8);
    }

    v8 = 0;
  }

  return result;
}

void sub_25D5EEC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdParser::convertToRelativeCP(uint64_t a1, _DWORD *a2, int *a3, int a4)
{
  v6 = a2;
  LOWORD(a2) = 0;
  *a3 = 0;
  while (1)
  {
    result = WrdFileInformationBlock::getNumberOfCharInText(a1 + 160, a2);
    v9 = *v6 == result ? a4 : 0;
    if (*v6 <= result && v9 == 0)
    {
      break;
    }

    *v6 -= result;
    v11 = *a3;
    LODWORD(a2) = *a3 + 1;
    *a3 = a2;
    if (v11 >= 7)
    {
      ChLogFunction("Character position is not within the document text range.", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 4827);
      exception = __cxa_allocate_exception(4uLL);
      *exception = 2001;
    }
  }

  return result;
}

void *std::vector<unsigned int,ChAllocator<unsigned int>>::reserve(void *result, unsigned int a2)
{
  if (((result[2] - *result) >> 2) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(result, a2);
  }

  return result;
}

void sub_25D5EEE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CsString *WrdParser::parse(WrdParser *this, WrdXmlAttribute *a2)
{
  *(a2 + 2) = (*(**(this + 16) + 104))(*(this + 16));
  *(a2 + 3) = (*(**(this + 16) + 104))(*(this + 16));
  v4 = *(this + 16);

  return SsrwOOStream::readCsString(v4, (a2 + 16));
}

unint64_t WrdParser::parse(unint64_t this, OcMsoEnvelope *a2)
{
  if (*(this + 232) >= 0x62u && (v3 = this, this = WrdParser::startFCLCB(this, 0x61u), HIDWORD(this)))
  {
    v4 = *(v3 + 16);

    return OcParser::parse(v3, a2, v4, this, SHIDWORD(this));
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

unint64_t WrdParser::parse(unint64_t this, WrdVersionInfoTable *a2)
{
  if (*(this + 232) >= 0x5Cu)
  {
    v2 = this;
    this = WrdParser::startFCLCB(this, 0x5Cu);
    v3 = HIDWORD(this);
    if (HIDWORD(this))
    {
      v4 = this;
      (*(**(v2 + 128) + 80))(*(v2 + 128));
      if ((*(**(v2 + 128) + 104))(*(v2 + 128)))
      {
        operator new();
      }

      if ((*(**(v2 + 128) + 40))(*(v2 + 128)) > v3 + v4)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 2001;
      }

      v5 = *(**(v2 + 128) + 16);

      return v5();
    }
  }

  return this;
}

void WrdParser::parse(WrdParser *this, WrdVersionInfo *a2)
{
  (*(**(this + 16) + 80))(*(this + 16));
  (*(**(this + 16) + 40))(*(this + 16));
  (*(**(this + 16) + 104))(*(this + 16));
  (*(**(this + 16) + 80))(*(this + 16));
  (*(**(this + 16) + 104))(*(this + 16));
  *(a2 + 8) = (*(**(this + 16) + 104))(*(this + 16));
  *v4 = (*(**(this + 16) + 104))(*(this + 16));
  operator new();
}

uint64_t std::vector<WrdKeyboardShortcut *,ChAllocator<WrdKeyboardShortcut *>>::__emplace_back_slow_path<WrdKeyboardShortcut * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EF490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdCustomizedMenu *,ChAllocator<WrdCustomizedMenu *>>::__emplace_back_slow_path<WrdCustomizedMenu * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EF5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdNewMenu *,ChAllocator<WrdNewMenu *>>::__emplace_back_slow_path<WrdNewMenu * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EF6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdMenuCustomizationOperation *,ChAllocator<WrdMenuCustomizationOperation *>>::__emplace_back_slow_path<WrdMenuCustomizationOperation * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EF7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdOffsetPairList::OffsetPair,ChAllocator<WrdOffsetPairList::OffsetPair>>::__emplace_back_slow_path<WrdOffsetPairList::OffsetPair>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<ODIHRange>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EF910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdCommandDescription *,ChAllocator<WrdCommandDescription *>>::__emplace_back_slow_path<WrdCommandDescription * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EFA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CsString *,ChAllocator<CsString *>>::__emplace_back_slow_path<CsString * const&>(void *a1, void *a2)
{
  v4 = a1[1] - *a1;
  v5 = (a1[2] - *a1) >> 3;
  if (2 * v5 <= (v4 >> 3) + 1)
  {
    v6 = (v4 >> 3) + 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v7);
  }

  __p = 0;
  v11 = (v4 & 0x7FFFFFFF8);
  v13 = 0;
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25D5EFB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdPicParser::applySprm(uint64_t result, _WORD *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  if (!a4 || *a3 != 3)
  {
    return result;
  }

  v11 = result;
  result = WrdProperty::getSizeOfSPRMParameter(a3);
  *a6 = result;
  v12 = *(a3 + 8);
  if (v12 <= 0x6C03)
  {
    if (*(a3 + 8) > 0x4C04u)
    {
      if (v12 != 19461)
      {
        if (v12 == 27650)
        {
          v17 = a2;
          v18 = 1;
        }

        else
        {
          if (v12 != 27651)
          {
            return result;
          }

          v17 = a2;
          v18 = 0;
        }

LABEL_38:
        BorderReference = WrdPictureProperties::getBorderReference(v17, v18);

        return WrdBaseParser::parseBRC80(v11, BorderReference, a4, a5);
      }

      v15 = a2;
      v16 = 2;
    }

    else
    {
      switch(v12)
      {
        case 0x4C02u:
          v15 = a2;
          v16 = 1;
          break;
        case 0x4C03u:
          v15 = a2;
          v16 = 0;
          break;
        case 0x4C04u:
          v15 = a2;
          v16 = 3;
          break;
        default:
          return result;
      }
    }

    v20 = WrdPictureProperties::getBorderReference(v15, v16);

    return WrdBaseParser::parseBRC70(v11, v20, a4, a5);
  }

  if (*(a3 + 8) <= 0xCE07u)
  {
    if (v12 == 27652)
    {
      v17 = a2;
      v18 = 3;
    }

    else
    {
      if (v12 != 27653)
      {
        if (v12 == 52737 && *(a3 + 13) >= 0xCu)
        {
          a2[46] = CsLeReadSInt16(a4);
          a2[47] = CsLeReadSInt16((a4 + 2));
          a2[40] = CsLeReadSInt16((a4 + 4));
          a2[41] = CsLeReadSInt16((a4 + 6));
          a2[42] = CsLeReadSInt16((a4 + 8));
          result = CsLeReadSInt16((a4 + 10));
          a2[43] = result;
        }

        return result;
      }

      v17 = a2;
      v18 = 2;
    }

    goto LABEL_38;
  }

  if (*(a3 + 8) > 0xCE09u)
  {
    if (v12 == 52746)
    {
      v14 = a2;
      v13 = 3;
    }

    else
    {
      if (v12 != 52747)
      {
        return result;
      }

      v14 = a2;
      v13 = 2;
    }
  }

  else
  {
    v14 = a2;
    v13 = v12 == 52744;
  }

  v19 = WrdPictureProperties::getBorderReference(v14, v13);

  return WrdBaseParser::parseBuffer(v11, v19, a4, a5);
}

BOOL WrdPropertyParser::isSPRMRelatedToTrackChanges(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  result = 1;
  if (v3 <= 51809)
  {
    if (v3 <= 50750)
    {
      v5 = v3 == 10883;
      v6 = 12857;
    }

    else
    {
      v5 = v3 == 50751 || v3 == 50799;
      v6 = 51799;
    }

    goto LABEL_13;
  }

  if (v3 > 53798)
  {
    v5 = v3 == 53799 || v3 == 53827;
    v6 = 54887;
LABEL_13:
    if (!v5 && v3 != v6)
    {
      return 0;
    }

    return result;
  }

  if (v3 == 51810)
  {
    if (a2 >= a3)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 2001;
    }

    return *a2 != 0;
  }

  else if (v3 != 51849)
  {
    return 0;
  }

  return result;
}