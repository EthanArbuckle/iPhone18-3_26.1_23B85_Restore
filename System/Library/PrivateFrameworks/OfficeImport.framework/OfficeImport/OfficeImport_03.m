WrdParagraphProperties *WrdParagraphProperties::setKeepFollowingParagraph(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x1000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFEF | (16 * (a2 & 1));
  return this;
}

uint64_t WrdParagraphProperties::clearAllRevisionAttributes(WrdParagraphProperties *this)
{
  v2 = *(this + 12);
  *(this + 294) &= ~0x4000000u;
  *(this + 146) = 0;
  *(this + 12) = v2 & 0xF1FF;
  (*(**(this + 14) + 24))(*(this + 14));
  *(this + 12) &= ~0x1000u;
  v3 = *(this + 15);

  return WrdNumberRevisionMarkData::reset(v3);
}

WrdParagraphProperties *WrdParagraphProperties::setListLevel(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 8uLL;
  *(this + 300) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setIndexToList(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x10uLL;
  *(this + 71) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setSpaceBefore(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x40000uLL;
  *(this + 68) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setSpaceAfter(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x80000uLL;
  *(this + 69) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setOutlineLevel(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x80000000000uLL;
  *(this + 299) = a2;
  return this;
}

uint64_t WrdCharacterProperties::setBold(uint64_t result, int a2)
{
  *(result + 16) |= 2uLL;
  *(result + 168) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setCaps(uint64_t result, int a2)
{
  *(result + 16) |= 0x20000000uLL;
  *(result + 188) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setKerning(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x10000000000000uLL;
  this->var63 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setBoldBi(uint64_t result, int a2)
{
  *(result + 16) |= 0x800000000uLL;
  *(result + 208) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setFontIndexForBiText(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x40000000000uLL;
  this->var46 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setFontSizeForBiText(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x4000000uLL;
  this->var66 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setItalic(uint64_t result, int a2)
{
  *(result + 16) |= 4uLL;
  *(result + 172) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setItalicBi(uint64_t result, int a2)
{
  *(result + 16) |= 0x1000000000uLL;
  *(result + 212) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setSuperSubscript(uint64_t result, int a2)
{
  *(result + 16) |= 0x80000uLL;
  *(result + 136) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setUnderline(uint64_t result, int a2)
{
  *(result + 16) |= 0x100000uLL;
  *(result + 140) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setColor97(uint64_t result, int a2)
{
  *(result + 16) |= 0x20000uLL;
  *(result + 128) = a2;
  return result;
}

uint64_t WrdParagraphProperties::setJustificationV8(uint64_t result, int a2)
{
  *(result + 16) |= 0x40uLL;
  *(result + 172) = a2;
  return result;
}

uint64_t WrdParagraphProperties::setJustification(uint64_t result, int a2)
{
  *(result + 16) |= 0x20uLL;
  *(result + 168) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setUsePageSetupLinePitch(WrdCharacterProperties *this, char a2)
{
  *(&this->var2 + 6) |= 0x400u;
  *(this + 85) = *(this + 85) & 0xEFFFFFFF | ((a2 & 1) << 28);
  return this;
}

void WrdPapParser::applyTabSPRM(int a1, WrdParagraphProperties *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, _WORD *a6)
{
  if (a4)
  {
    v7 = *(a3 + 8);
    v8 = v7 == 50709 || v7 == 50701;
    if (v8 && a4 < a5 && &a5[-a4] >= 1)
    {
      v10 = *a4;
      v11 = WrdParagraphProperties::s_bMaximumNumberOfTabStops;
      if (v10 <= WrdParagraphProperties::s_bMaximumNumberOfTabStops)
      {
        v12 = a6;
        Short = (a4 + 1);
        v23 = a3;
        if (*a4)
        {
          v15 = 0;
          v16 = 0;
          *v24 = 0;
          InsertionIndexForTabsToBeDeleted = -1;
          v18 = &Short[2 * v10];
          do
          {
            Short = readShort(Short, a5, &v24[1]);
            if (*(v23 + 8) == 50709)
            {
              v18 = readShort(v18, a5, v24);
              v15 = v24[0];
            }

            v19 = v24[1];
            if (!WrdParagraphProperties::deleteTabStopFromTabsToBeAdded(a2, v24[1], v15))
            {
              if (v16)
              {
                ++InsertionIndexForTabsToBeDeleted;
              }

              else
              {
                InsertionIndexForTabsToBeDeleted = WrdParagraphProperties::findInsertionIndexForTabsToBeDeleted(a2, v19);
              }

              WrdParagraphProperties::insertTabStopInTabsToBeDeleted(a2, InsertionIndexForTabsToBeDeleted, v19, v15);
            }

            ++v16;
          }

          while (v10 > v16);
          v12 = a6;
          a3 = v23;
          v11 = WrdParagraphProperties::s_bMaximumNumberOfTabStops;
        }

        else
        {
          v18 = (a4 + 1);
        }

        LOWORD(v20) = 0;
        if (a5 > v18 && a5 - v18 >= 1)
        {
          v20 = *v18;
          if (v20 > v11)
          {
            return;
          }

          if (*v18)
          {
            operator new();
          }
        }

        if (*(a3 + 8) == 50709)
        {
          v21 = (4 * v10) | 2;
        }

        else
        {
          v21 = 2 * v10 + 2;
        }

        *v12 = v21 + 3 * v20;
      }
    }
  }
}

uint64_t WrdParagraphProperties::findInsertionIndexForTabsToBeAdded(WrdParagraphProperties *this, int a2)
{
  v2 = *(this + 68);
  if (v2 <= 63)
  {
    if (v2 < 1)
    {
      LOWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (*(*(this + 25) + 2 * v3) <= a2)
      {
        if (++v3 >= *(this + 68))
        {
          LOWORD(v3) = *(this + 68);
          return v3;
        }
      }
    }
  }

  else
  {
    LOWORD(v3) = -1;
  }

  return v3;
}

void WrdParagraphProperties::insertTabStopInTabsToBeAdded(WrdParagraphProperties *this, int a2, __int16 a3, const WrdTabDescriptor *a4)
{
  if (a2 != -1)
  {
    v6 = *(this + 68);
    if (v6 >= a2 && v6 <= 63)
    {
      if (v6 > a2)
      {
        LOWORD(v9) = v6 - 1;
        do
        {
          v10 = v9 + 1;
          *(*(this + 25) + 2 * v10) = *(*(this + 25) + 2 * v9);
          WrdTabDescriptor::operator=(*(*(this + 22) + 8 * v10), *(*(this + 22) + 8 * v9));
          v9 = (v9 - 1);
        }

        while (v9 >= a2 && v9 < 63);
      }

      *(*(this + 25) + 2 * a2) = a3;
      WrdTabDescriptor::operator=(*(*(this + 22) + 8 * a2), a4);
      ++*(this + 68);
      *(this + 2) |= 0x100uLL;
    }
  }
}

WrdParagraphProperties *WrdParagraphProperties::setLeftIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x4000000000000000uLL;
  *(this + 67) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setFirstLineLeftIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 12) |= 1u;
  *(this + 65) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setLeadingIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x1000000000000000uLL;
  *(this + 63) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setFirstLineLeadingIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x8000000000000000;
  *(this + 64) = a2;
  return this;
}

void WrdStyleSheet::~WrdStyleSheet(WrdStyleSheet *this)
{
  WrdStyleSheet::~WrdStyleSheet(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5958;
  v2 = *(this + 4) - *(this + 3);
  if ((v2 & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    v4 = (v2 >> 3);
    do
    {
      v5 = *(this + 3);
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v5 = *(this + 3);
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v4 != v3);
  }

  v7 = *(this + 2);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 2) = 0;
  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }
}

void WrdStyle::~WrdStyle(WrdStyle *this)
{
  WrdStyle::~WrdStyle(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5918;
  WrdStyle::reset(this);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 128, *(this + 17));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 104, *(this + 14));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 80, *(this + 11));
  CsString::~CsString((this + 8));
}

void WrdBinaryReader::read(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 188) = *a2;
  if ((v2 & 0xFFFFFFFE) != 4)
  {
    *a2 = 0;
    FCLCB = WrdFileInformationBlock::getFCLCB(*(a1 + 32) + 160, 50);
    if (FCLCB[1])
    {
      v6 = FCLCB;
      v7 = *(*(a1 + 32) + 128);
      if (*(a1 + 624) != 24)
      {
        (*(v7->var0 + 2))(*(*(a1 + 32) + 128), *FCLCB, 0);
        v12 = 1;
LABEL_14:
        *a2 = v12;
        goto LABEL_15;
      }

      v8 = *(a1 + 48);
      if (!v8)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1004;
      }

      v9 = *v6;
      if (v9 == (*(*v8 + 40))(v8))
      {
LABEL_15:
        WrdEshReader::start((a1 + 40), v7);
      }

      v10 = (*(v7->var0 + 8))(v7);
      v11 = v6[1] + *v6;
      if (v11 > (*(v7->var0 + 5))(v7))
      {
        if (v10 == 1)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        if (!v10)
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      EshBinaryReader::finish((a1 + 40));
      *(a1 + 624) = 0;
    }

    *a2 = 0;
  }
}

void WrdListFormatTable::WrdListFormatTable(WrdListFormatTable *this)
{
  *this = &unk_286ED5028;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

WrdDocumentFileRecord *WrdBinaryReader::read(WrdParser **this, WrdListFormatTable *a2)
{
  WrdParser::parse(this[4], a2);
  result = this[27];
  if (((*(result + 2) - *(result + 1)) & 0x3FFFFFFFCLL) != 0)
  {
    v5 = 0;
    do
    {
      ListToStyleIndex = WrdDocumentFileRecord::getListToStyleIndex(result, v5);
      v7 = *(a2 + 1);
      if (((*(a2 + 2) - v7) >> 3) <= *ListToStyleIndex)
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(*(v7 + 8 * *ListToStyleIndex) + 48) = ListToStyleIndex[1];
      ++v5;
      result = this[27];
    }

    while (v5 < ((*(result + 2) - *(result + 1)) >> 2));
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdListFormatTable *a2)
{
  started = WrdParser::startFCLCB(this, 0x49u);
  result = CsSimpleHeapVector<WrdListFormat>::clear(a2 + 1);
  if (HIDWORD(started))
  {
    result = (*(**(this + 16) + 72))(*(this + 16));
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      do
      {
        v8 = (*(**(this + 35) + 16))(*(this + 35), 31);
        WrdParser::parse(this, v8);
        if (*(v8 + 50))
        {
          v9 = 1;
        }

        else
        {
          v9 = WrdListFormat::s_bMaxNumberOfLevels;
        }

        *(v8 + 52) = v9;
        result = WrdListFormatTable::append(a2, v8);
        ++v7;
      }

      while (v7 < v6);
      v10 = *(a2 + 4) - *(a2 + 2);
      v11 = (v10 >> 3);
      if ((v10 >> 3))
      {
        v12 = 0;
        while (1)
        {
          v13 = *(a2 + 1);
          if (v12 >= ((*(a2 + 2) - v13) >> 3))
          {
            std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
          }

          v14 = *(v13 + 8 * v12);
          if (*(v14 + 52))
          {
            break;
          }

LABEL_18:
          v19 = v12 + 1;
          v12 = (v12 + 1);
          if (v11 <= v19)
          {
            return result;
          }
        }

        v15 = 0;
        while (1)
        {
          result = WrdParser::checkForValidListLevels(this);
          if (!result)
          {
            break;
          }

          v16 = result;
          v17 = (*(**(this + 35) + 16))(*(this + 35), 35);
          WrdParser::parse(this, v17);
          result = WrdListFormat::append(v14, v17);
          if (++v15 < *(v14 + 52))
          {
            v18 = v16;
          }

          else
          {
            v18 = 0;
          }

          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (v11 > v12)
        {
          v20 = *(a2 + 2);
          do
          {
            result = *(v20 - 8);
            if (result)
            {
              result = (*(*result + 8))(result);
              v20 = *(a2 + 2);
            }

            *(v20 - 8) = 0;
            v20 = *(a2 + 2) - 8;
            *(a2 + 2) = v20;
            ++v12;
          }

          while (v11 > v12);
        }
      }
    }
  }

  return result;
}

void sub_25D2E4904(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *CsSimpleHeapVector<WrdListFormat>::clear(void *result)
{
  v1 = result[1];
  v2 = (v1 - *result) >> 3;
  if (v2)
  {
    v3 = result;
    do
    {
      result = *(v1 - 8);
      if (result)
      {
        result = (*(*result + 8))(result);
        v1 = v3[1];
      }

      *(v1 - 8) = 0;
      v1 = v3[1] - 8;
      v3[1] = v1;
      LODWORD(v2) = v2 - 1;
    }

    while (v2);
  }

  return result;
}

void WrdListFormat::WrdListFormat(WrdListFormat *this)
{
  *this = &unk_286ED4F68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 24) = 12;
  *(this + 25) &= 0xE000u;
  *(this + 52) = 0;
}

uint64_t WrdListFormat::init(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new[](18);
  }

  return this;
}

int8x8_t WrdParser::parse(WrdParser *this, WrdListFormat *a2)
{
  *(a2 + 10) = (*(**(this + 16) + 96))(*(this + 16));
  *(a2 + 11) = (*(**(this + 16) + 96))(*(this + 16));
  if (WrdListFormat::s_bMaxNumberOfLevels)
  {
    v4 = 0;
    do
    {
      *(*(a2 + 4) + 2 * v4++) = (*(**(this + 16) + 72))(*(this + 16));
    }

    while (WrdListFormat::s_bMaxNumberOfLevels > v4);
  }

  v5 = (*(**(this + 16) + 64))(*(this + 16));
  v6 = vand_s8(vdup_n_s16(v5), 0x8000400020001);
  *(a2 + 25) = v6.i16[0] | v6.i16[2] | ((v6.i32[0] | v6.i32[1]) >> 16) | v5 & 0x10 | *(a2 + 25) & 0xFFE0;
  v7 = *(this + 38);
  v8 = (*(**(this + 16) + 64))(*(this + 16));
  if (v7 >= 9)
  {
    result = vand_s8(vshl_n_s16(vdup_n_s16(v8), 5uLL), 0x400020001000800);
    *(a2 + 25) = result.i16[0] | result.i16[2] | ((result.i32[0] | result.i32[1]) >> 16) | *(a2 + 25) & 0xE01F | (32 * v8) & 0x60 | (32 * v8) & 0x80 | (32 * v8) & 0x1000;
  }

  return result;
}

WrdListFormat *WrdListFormatTable::append(WrdListFormatTable *this, WrdListFormat *a2)
{
  v3 = a2;
  CsSimpleHeapVector<WrdListFormat>::pushBack(this + 1, &v3);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_25D2E4C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WrdAnnotationTable::operator=(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CsSimpleHeapVector<WrdListFormat>::pushBack(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v8 = *a2;
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    result = std::vector<WrdListFormat *,ChAllocator<WrdListFormat *>>::__emplace_back_slow_path<WrdListFormat *>(a1, &v8);
  }

  else
  {
    *v5 = v2;
    result = (v5 + 1);
  }

  a1[1] = result;
  *a2 = 0;
  return result;
}

BOOL WrdParser::checkForValidListLevels(WrdParser *this)
{
  *&__n_6[10] = *MEMORY[0x277D85DE8];
  __n = 10;
  (*(**(this + 16) + 56))(*(this + 16), __n_6, &__n);
  v2 = __n;
  v3 = memcmp(__n_6, "          ", __n);
  if (v3)
  {
    (*(**(this + 16) + 16))(*(this + 16), -v2, 1);
  }

  else
  {
    ChLogFunction("Spaces appearing where the list level should!", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 1461);
  }

  return v3 != 0;
}

void WrdListLevelFormat::WrdListLevelFormat(WrdListLevelFormat *this, WrdParagraphProperties *a2, WrdCharacterProperties *a3)
{
  this->var12 = 0;
  this->var3 = 0;
  this->var4 = 0;
  *&this->var5 = 0;
  this->var7 = 0;
  *&this->var9 = 0;
  this->var11 = 0;
  *(this + 80) &= 0xE0u;
  *&this->var18 = 0;
  *this->var8 = 0;
  this->var8[8] = 0;
  this->var0 = &unk_286ED5068;
  this->var1 = a2;
  this->var2 = a3;
}

unsigned __int16 *WrdParser::parse(WrdParser *this, WrdListLevelFormat *a2)
{
  (*(**(this + 16) + 40))(*(this + 16));
  a2->var3 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var5 = (*(**(this + 16) + 64))(*(this + 16));
  v4 = (*(**(this + 16) + 64))(*(this + 16));
  a2->var6 = v4 & 3;
  *(a2 + 80) = *(a2 + 80) & 0xE0 | (v4 >> 2) & 0x1F;
  for (i = 44; i != 53; ++i)
  {
    *(&a2->var0 + i) = (*(**(this + 16) + 64))(*(this + 16));
  }

  a2->var7 = (*(**(this + 16) + 64))(*(this + 16));
  a2->var9 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var10 = (*(**(this + 16) + 96))(*(this + 16));
  v6 = (*(**(this + 16) + 64))(*(this + 16));
  v7 = (*(**(this + 16) + 64))(*(this + 16));
  v8 = **(this + 16);
  if (*(this + 38) < 9)
  {
    (*(v8 + 16))();
  }

  else
  {
    a2->var18 = (*(v8 + 64))();
    *(a2 + 82) = (*(**(this + 16) + 64))(*(this + 16));
  }

  WrdParser::parseGrpprl(this, *(this + 16), v7, 0, 0, 0, a2->var1, 0, 0, 0, 0, 0, 0, 0, 0);
  WrdParser::parseGrpprl(this, *(this + 16), v6, 0, 0, 0, 0, a2->var2, 0, 0, 0, 0, 0, 0, 0);
  v9 = (*(**(this + 16) + 128))(*(this + 16));
  result = WrdListLevelFormat::setNumberTextLength(a2, v9);
  if (a2->var11)
  {
    v11 = 0;
    do
    {
      result = (*(**(this + 16) + 128))(*(this + 16));
      a2->var12[v11++] = result;
    }

    while (v11 < a2->var11);
  }

  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setFontIndexForASCIIText(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x2000uLL;
  this->var43 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setFontIndexForOtherText(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x8000uLL;
  this->var45 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setCharacterTypeIDHint(WrdCharacterProperties *this, unsigned __int8 a2)
{
  *&this->var2 |= 0x2000000000000uLL;
  this->var107 = a2;
  return this;
}

unsigned __int16 *WrdListLevelFormat::setNumberTextLength(WrdListLevelFormat *this, unsigned int a2)
{
  result = this->var12;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  this->var12 = 0;
  if (a2)
  {
    operator new[](2 * a2);
  }

  this->var11 = 0;
  return result;
}

void *WrdListFormat::append(WrdListFormat *this, WrdListLevelFormat *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdListLevelFormat *,ChAllocator<WrdListLevelFormat *>>::__emplace_back_slow_path<WrdListLevelFormat * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void WrdListFormatTable::~WrdListFormatTable(void **this)
{
  *this = &unk_286ED5028;
  CsSimpleHeapVector<WrdListFormat>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5028;
  CsSimpleHeapVector<WrdListFormat>::~CsSimpleHeapVector(this + 1);
}

void **CsSimpleHeapVector<WrdListFormat>::~CsSimpleHeapVector(void **a1)
{
  CsSimpleHeapVector<WrdListFormat>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void WrdListFormat::~WrdListFormat(WrdListFormat *this)
{
  WrdListFormat::~WrdListFormat(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4F68;
  WrdListFormat::cleanup(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t WrdListFormat::cleanup(WrdListFormat *this)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 4) = 0;
  v3 = *(this + 1);
  if (((*(this + 2) - v3) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      result = *(v3 + 8 * v4);
      if (result)
      {
        result = (*(*result + 8))(result);
        v3 = *(this + 1);
      }

      *(v3 + 8 * v4++) = 0;
      v3 = *(this + 1);
    }

    while (v4 < ((*(this + 2) - v3) >> 3));
  }

  *(this + 2) = v3;
  return result;
}

void WrdListLevelFormat::~WrdListLevelFormat(WrdListLevelFormat *this)
{
  WrdListLevelFormat::~WrdListLevelFormat(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED5068;
  var12 = this->var12;
  if (var12)
  {
    MEMORY[0x25F896FE0](var12, 0x1000C80BDFB0063);
  }

  this->var12 = 0;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  this->var1 = 0;
  var2 = this->var2;
  if (var2)
  {
    (*(var2->var0 + 1))(var2);
  }

  this->var2 = 0;
}

void WrdListFormatOverrideTable::WrdListFormatOverrideTable(WrdListFormatOverrideTable *this)
{
  *this = &unk_286ED4FE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

const char *WrdParser::parse(WrdParser *this, WrdListFormatOverrideTable *a2)
{
  started = WrdParser::startFCLCB(this, 0x4Au);
  v5 = started;
  v6 = HIDWORD(started);
  result = WrdAnnotationDateTimeTable::clear(a2);
  if (v6)
  {
    v8 = (*(**(this + 16) + 96))(*(this + 16));
    if (v8 >= 1)
    {
      v9 = v8;
      if ((*(**(this + 16) + 48))(*(this + 16)) < 16 * v8)
      {
        goto LABEL_23;
      }

      WrdParser::parseListFormatOverrides(this, a2, v9);
      if ((*(**(this + 16) + 40))(*(this + 16)) > v6 + v5)
      {
        goto LABEL_23;
      }
    }

    v10 = v6 + v5;
    if (((*(a2 + 2) - *(a2 + 1)) >> 3) >= 1)
    {
      v11 = 0;
      while (1)
      {
        EmbeddedFontReference = WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(a2, v11);
        if ((*(**(this + 16) + 40))(*(this + 16)) > v10)
        {
          goto LABEL_23;
        }

        (*(**(this + 16) + 104))(*(this + 16));
        if (((*(EmbeddedFontReference + 8) - *(EmbeddedFontReference + 6)) & 0x7F8) != 0)
        {
          break;
        }

LABEL_16:
        if (++v11 >= ((*(a2 + 2) - *(a2 + 1)) >> 3))
        {
          goto LABEL_17;
        }
      }

      v13 = 0;
      while (1)
      {
        DefaultFormat = XlChartDataSeries::getDefaultFormat(EmbeddedFontReference, v13);
        if ((*(**(this + 16) + 40))(*(this + 16)) > v10)
        {
          break;
        }

        WrdParser::parse(this, DefaultFormat);
        if (WrdListLevelFormatOverride::needsListLevel(DefaultFormat))
        {
          if ((*(**(this + 16) + 40))(*(this + 16)) > v10)
          {
            break;
          }

          ClientVisitor = EshDataModelVisitor::getClientVisitor(DefaultFormat);
          WrdParser::parse(this, ClientVisitor);
        }

        if ((*(**(this + 16) + 40))(*(this + 16)) > v10)
        {
          break;
        }

        if (++v13 >= ((*(EmbeddedFontReference + 8) - *(EmbeddedFontReference + 6)) >> 3))
        {
          goto LABEL_16;
        }
      }

LABEL_23:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 2001;
    }

LABEL_17:
    if ((*(**(this + 16) + 40))(*(this + 16)) > v10)
    {
      goto LABEL_23;
    }

    result = (*(**(this + 16) + 40))(*(this + 16));
    if (result != v10)
    {

      return ChLogFunction("Wrong number of bytes reading WrdListFormatOverrideTable\n", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 1532);
    }
  }

  return result;
}

WrdParser *WrdParser::parseListFormatOverrides(WrdParser *this, WrdListFormatOverrideTable *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = this;
    do
    {
      v6 = (*(**(v5 + 35) + 16))(*(v5 + 35), 32);
      WrdParser::parse(v5, v6);
      this = WrdListFormatOverrideTable::append(a2, v6);
      --v3;
    }

    while (v3);
  }

  return this;
}

void sub_25D2E5B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotation::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdListLevelFormatOverride::WrdListLevelFormatOverride(WrdListLevelFormatOverride *this, WrdListLevelFormat *a2)
{
  this->var2 = 0;
  this->var3 = 0;
  *(this + 21) &= 0xFC00u;
  this->var0 = &unk_286ED50A8;
  this->var1 = a2;
}

void WrdListFormatOverride::WrdListFormatOverride(WrdListFormatOverride *this, WrdListLevelFormatOverride *a2)
{
  *(this + 4) = -1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 47) = 0;
  *this = &unk_286ED4FA8;
  *(this + 1) = a2;
}

uint64_t WrdParser::parse(WrdParser *this, WrdListFormatOverride *a2)
{
  *(a2 + 4) = (*(**(this + 16) + 96))(*(this + 16));
  (*(**(this + 16) + 16))(*(this + 16), 8, 1);
  v4 = (*(**(this + 16) + 64))(*(this + 16));
  WrdListFormatOverride::setNumberOfLevelsOverridden(a2, v4);
  v5 = **(this + 16);
  if (*(this + 38) < 9)
  {
    (*(v5 + 16))();
  }

  else
  {
    *(a2 + 48) = (*(v5 + 64))();
    *(a2 + 50) = (*(**(this + 16) + 64))(*(this + 16));
  }

  v6 = *(**(this + 16) + 64);

  return v6();
}

void *WrdListFormatOverride::setNumberOfLevelsOverridden(WrdListFormatOverride *this, unsigned int a2)
{
  result = WrdListFormatOverride::cleanup(this);
  *(this + 49) = a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(this + 1) + 16))(*(this + 1));
      v8 = v6;
      v7 = *(this + 4);
      if (v7 >= *(this + 5))
      {
        result = std::vector<WrdListLevelFormatOverride *,ChAllocator<WrdListLevelFormatOverride *>>::__emplace_back_slow_path<WrdListLevelFormatOverride *>(this + 3, &v8);
      }

      else
      {
        *v7 = v6;
        result = v7 + 1;
      }

      *(this + 4) = result;
      ++v5;
    }

    while (v5 < a2);
  }

  return result;
}

void sub_25D2E5DF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

void *WrdListFormatOverride::cleanup(void *this)
{
  v1 = this;
  v2 = this[3];
  if (((this[4] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[3];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[3];
    }

    while (v3 < ((v1[4] - v2) >> 3));
  }

  v1[4] = v2;
  return this;
}

void *WrdListFormatOverrideTable::append(WrdListFormatOverrideTable *this, WrdListFormatOverride *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdListFormatOverride *,ChAllocator<WrdListFormatOverride *>>::__emplace_back_slow_path<WrdListFormatOverride * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void WrdListFormatOverrideTable::~WrdListFormatOverrideTable(WrdListFormatOverrideTable *this)
{
  WrdListFormatOverrideTable::~WrdListFormatOverrideTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4FE8;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void WrdListFormatOverride::~WrdListFormatOverride(WrdListFormatOverride *this)
{
  WrdListFormatOverride::~WrdListFormatOverride(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4FA8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  WrdListFormatOverride::cleanup(this);
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void WrdListLevelFormatOverride::~WrdListLevelFormatOverride(WrdListLevelFormatOverride *this)
{
  this->var0 = &unk_286ED50A8;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED50A8;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;
}

uint64_t WrdStringWithDataTypedTable::WrdStringWithDataTypedTable(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_286ED58D8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t WrdBinaryReader::read(WrdBinaryReader *this, WrdStringWithDataTypedTable *a2)
{
  v3 = *(a2 + 2);
  if (v3 <= 90)
  {
    if (v3 == 51)
    {
      result = *(this + 4);
      v5 = *(a2 + 2);
      v6 = 51;

      return WrdParser::parse(result, v5, v6);
    }

    if (v3 == 72)
    {
      result = *(this + 4);
      v5 = *(a2 + 2);
      v6 = 72;

      return WrdParser::parse(result, v5, v6);
    }

LABEL_20:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (v3 == 91)
  {
    result = *(this + 4);
    v5 = *(a2 + 2);
    v6 = 91;

    return WrdParser::parse(result, v5, v6);
  }

  if (v3 != 123)
  {
    goto LABEL_20;
  }

  result = *(this + 4);
  if (*(result + 232) >= 0x90u)
  {
    v5 = *(a2 + 2);
    v6 = 144;

    return WrdParser::parse(result, v5, v6);
  }

  return result;
}

void WrdStringWithDataTypedTable::~WrdStringWithDataTypedTable(WrdStringWithDataTypedTable *this)
{
  *this = &unk_286ED58D8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED58D8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void *WrdOutlineListData::init(void *this)
{
  v1 = this + 1;
  if (((this[2] - this[1]) & 0x7FFFFFFF8) == 0)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = (*(**(v2 + 32) + 16))(*(v2 + 32));
      v7 = v4;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24))
      {
        this = std::vector<WrdAutoNumberLevelDescriptor *,ChAllocator<WrdAutoNumberLevelDescriptor *>>::__emplace_back_slow_path<WrdAutoNumberLevelDescriptor *>(v1, &v7);
      }

      else
      {
        *v5 = v4;
        this = v5 + 1;
      }

      *(v2 + 16) = this;
    }

    while (v3++ < 8);
  }

  return this;
}

uint64_t WrdSectionProperties::WrdSectionProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_286ED5660;
  *(a1 + 176) = 0;
  *(a1 + 8) = &unk_286ED5690;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  OcBinaryData::OcBinaryData((a1 + 280));
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_25D2E6420(_Unwind_Exception *a1)
{
  OcBinaryData::~OcBinaryData((v2 + 280));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(v3, *v4);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(v1, *v5);
  _Unwind_Resume(a1);
}

uint64_t WrdSectionProperties::reset(WrdSectionProperties *this)
{
  v1 = this;
  *(this + 2) = 0;
  *(this + 5) = 0u;
  *(this + 9) = 2;
  *(this + 108) = 0;
  *(this + 242) = 0;
  *(this + 226) = 47186640;
  *(this + 243) = 0;
  *(this + 218) = 0;
  *(this + 100) = 0x100000000;
  *(this + 234) = 0;
  *(this + 108) = 0u;
  *(this + 24) = 0;
  *(this + 136) = xmmword_25D70ECF0;
  *(this + 124) = vdup_n_s32(0x5A0u);
  *(this + 19) = 0x2D000000000;
  *(this + 40) = 720;
  *(this + 245) = 1;
  *(this + 33) = 720;
  *(this + 246) = 0;
  *(this + 252) = xmmword_25D70ED00;
  *(this + 268) = 0;
  *(this + 69) = 65537;
  v2 = (this + 200);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 192, *(this + 25));
  *(v1 + 24) = v2;
  *v2 = 0;
  v3 = *(v1 + 22);
  v1 = (v1 + 176);
  *(v1 + 4) = 0;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
  (*(**(v1 - 19) + 24))(*(v1 - 19));
  (*(**(v1 - 18) + 24))(*(v1 - 18));
  (*(**(v1 - 17) + 24))(*(v1 - 17));
  (*(**(v1 - 16) + 24))(*(v1 - 16));
  (*(**(v1 - 15) + 24))(*(v1 - 15));
  v4 = *(**(v1 - 14) + 24);

  return v4();
}

uint64_t WrdOutlineListData::reset(WrdOutlineListData *this)
{
  *(this + 64) = 0;
  *(this + 14) = 0;
  bzero(*(this + 6), 2 * *(this + 15));
  for (i = 0; i != 72; i += 8)
  {
    result = (*(**(*(this + 1) + i) + 24))(*(*(this + 1) + i));
  }

  return result;
}

void *WrdSectionTextRun::WrdSectionTextRun(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = WrdTextRun::WrdTextRun(a1, a2, a3);
  *result = &unk_286ED56E8;
  result[3] = a4;
  result[4] = a5;
  return result;
}

uint64_t WrdTextRun::WrdTextRun(uint64_t result, int a2, int a3)
{
  *result = &unk_286ED3718;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  return result;
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdSectionTextRun *a2)
{
  v17 = 0;
  var4 = a2->var4;
  var5 = a2->var5;
  (*(*var4 + 16))(var4);
  (*(*var5 + 16))(var5);
  a2->var3 = 0;
  if (a2->var1)
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = 1004;
    goto LABEL_19;
  }

  v6 = *(*(this + 17) + 40);
  if (!v6)
  {
    return;
  }

  var2 = a2->var2;
  if (v6 <= var2)
  {
    return;
  }

  v8 = *(this + 24);
  if (!v8)
  {
    exception = __cxa_allocate_exception(4uLL);
    v16 = 1003;
    goto LABEL_19;
  }

  WrdParser::applyExceptionsForCP(*(this + 4), v8, a2->var2, var4, var5, &v17);
  v9 = v17;
  if (!v17)
  {
LABEL_11:
    v10 = *(this + 4);
    goto LABEL_12;
  }

  a2->var3 = v17;
  v10 = *(this + 4);
  if ((*(v10 + 186) & 4) != 0)
  {
    v11 = var2 + v9 - 1;
    if ((v11 & 0x80000000) == 0)
    {
      PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), v11);
      v13 = *(this + 17);
      if (*(v13 + 72) - 1 > PcdIdxFromCP)
      {
        v14 = *(v13 + 88);
        if (v14)
        {
          WrdParser::applyPiece(*(this + 4), v14 + 8 * PcdIdxFromCP, 0, 0, 0, 0, 0, 0, 0, var4, var5, 0);
          goto LABEL_11;
        }
      }

      exception = __cxa_allocate_exception(4uLL);
      v16 = 1005;
LABEL_19:
      *exception = v16;
    }
  }

LABEL_12:
  if (!*(v10 + 164) && *(v10 + 152) == 10)
  {
    WrdSectionProperties::applyVersion10Defaults(a2->var4);
  }
}

void WrdParser::applyExceptionsForCP(WrdParser *this, const WrdSectionDescriptorTable *a2, int a3, WrdSectionProperties *a4, WrdSectionProperties *a5, unsigned int *a6)
{
  *a6 = 0;
  IndexForCP = WrdSectionDescriptorTable::getIndexForCP(a2, a3);
  if ((IndexForCP & 0x80000000) == 0)
  {
    v13 = IndexForCP == *(a2 + 4) - 1 ? (a2 + 12) : (*(a2 + 2) + 4 * (IndexForCP + 1));
    v14 = *v13 - a3;
    if (v14)
    {
      SectionDescriptorReference = WrdSectionDescriptorTable::getSectionDescriptorReference(a2, IndexForCP);
      if ((*SectionDescriptorReference + 1) >= 2)
      {
        v16 = SectionDescriptorReference;
        (*(**(this + 14) + 16))(*(this + 14));
        v17 = (*(**(this + 14) + 80))(*(this + 14));
        WrdParser::parseGrpprl(this, *(this + 14), v17, 0, 0, 0, 0, 0, 0, 0, 0, 0, a4, a5, 0);
        v18 = v16[1];
        if (v18 + 1 >= 2)
        {
          v19 = (*(**(this + 14) + 176))(*(this + 14));
          if (v18 < (*(**(this + 14) + 40))(*(this + 14)) + v19)
          {
            (*(**(this + 14) + 16))(*(this + 14), v16[1], 0);
            v20 = (*(**(this + 14) + 80))(*(this + 14));
            v22 = v20 - 2;
            *(a4 + 72) = 0;
            OcBinaryData::setMinimumCapacity((a4 + 280), v20 - 2);
            (*(**(this + 14) + 56))(*(this + 14), *(a4 + 38), &v22);
            v21 = v22;
            *(a4 + 72) = v22;
            OcBinaryData::setMinimumCapacity((a4 + 280), v21);
            *(a4 + 74) = v21;
          }
        }
      }

      *a6 = v14;
    }
  }
}

uint64_t WrdSectionDescriptorTable::getIndexForCP(WrdSectionDescriptorTable *this, int a2)
{
  if (a2 < 0 && *(this + 3) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 4) - 1;
  while ((v2 & 0x8000) == 0)
  {
    v3 = v2;
    v4 = *(*(this + 2) + 4 * (v2-- & 0x7FFF));
    if (v4 <= a2)
    {
      return v3;
    }
  }

  return -1;
}

void WrdSectionTextRun::~WrdSectionTextRun(WrdSectionTextRun *this)
{
  WrdSectionTextRun::~WrdSectionTextRun(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED56E8;
  var4 = this->var4;
  if (var4)
  {
    (*(*var4 + 8))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    (*(*var5 + 8))(var5);
  }

  this->var5 = 0;
}

void WrdSectionProperties::~WrdSectionProperties(WrdSectionProperties *this)
{
  WrdSectionProperties::~WrdSectionProperties(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5660;
  *(this + 1) = &unk_286ED5690;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 4) = 0;
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 5) = 0;
  v5 = *(this + 6);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 6) = 0;
  v6 = *(this + 7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 7) = 0;
  v7 = *(this + 8);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 8) = 0;
  OcBinaryData::~OcBinaryData((this + 280));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 192, *(this + 25));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 168, *(this + 22));
}

void WrdOutlineListData::~WrdOutlineListData(WrdOutlineListData *this)
{
  WrdOutlineListData::~WrdOutlineListData(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5298;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  WrdAnnotationDateTimeTable::clear(this);
  CsString::~CsString((this + 40));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void WrdParagraphProperties::WrdParagraphProperties(WrdParagraphProperties *this)
{
  *this = &unk_286ED5358;
  *(this + 1) = &unk_286ED53A0;
  *(this + 16) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  std::vector<WrdTabDescriptor *,ChAllocator<WrdTabDescriptor *>>::resize(this + 22, 0x40u);
  operator new();
}

void sub_25D2E74EC(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1081C40FC6463CFLL);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 184) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void WrdAutoNumberListDescriptor::WrdAutoNumberListDescriptor(WrdAutoNumberListDescriptor *this)
{
  *this = &unk_286ED40E8;
  CsString::CsString((this + 16));
  operator new();
}

void sub_25D2E7670(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C4089A1F896);
  CsString::~CsString(v1);
  _Unwind_Resume(a1);
}

void WrdNumberRevisionMarkData::WrdNumberRevisionMarkData(WrdNumberRevisionMarkData *this)
{
  *this = &unk_286ED5220;
  CsString::CsString((this + 8));
  *(this + 32) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 66) &= ~1u;
}

void WrdTableProperties::WrdTableProperties(WrdTableProperties *this)
{
  *this = &unk_286ED5A58;
  *(this + 1) = &unk_286ED5A88;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  operator new();
}

void sub_25D2E7954(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x25F897000](v4, 0x1081C403767BB22);
  v6 = v1[34];
  if (v6)
  {
    v1[35] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[32] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdParagraphTextRun *a2)
{
  a2->var3 = 0;
  var4 = a2->var4;
  (*(*var4 + 16))(var4);
  var5 = a2->var5;
  (*(*var5 + 16))(var5);
  var6 = a2->var6;
  (*(*var6 + 16))(var6);
  var7 = a2->var7;
  (*(*var7 + 16))(var7);
  v8 = *(this + 17);
  var2 = a2->var2;
  v10 = v8 + 4 * a2->var1;
  v11 = *(v10 + 40);
  if (v11 > var2)
  {
    v23 = 0;
    v12 = *(v10 + 8);
    v13 = v12 + var2;
    v14 = v11 + v12 - 1;
    NextParagraphEndCP = WrdBinaryReader::findNextParagraphEndCP(this, v12 + var2, v14);
    a2->var3 = NextParagraphEndCP - v13 + 1;
    NumberOfCharInText = WrdFileInformationBlock::getNumberOfCharInText(*(this + 4) + 160);
    if (NextParagraphEndCP == v14 && a2->var1 == 0)
    {
      v18 = NumberOfCharInText;
      if (WrdFileInformationBlock::getNumberOfCharInText(*(this + 4) + 160, 0) >= NumberOfCharInText)
      {
        NextParagraphEndCP = v14;
      }

      else
      {
        NextParagraphEndCP = v18;
      }
    }

    FCfromCP = WrdPieceTable::getFCfromCP((v8 + 72), NextParagraphEndCP, &v23);
    if (WrdBinaryReader::loadFKPPAPX(this, FCfromCP) != -1)
    {
      WrdParser::applyExceptionsForFC(*(this + 4), *(this + 19), FCfromCP, var4, var5, var6, var7);
    }

    if ((*(*(this + 4) + 186) & 4) != 0)
    {
      PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), NextParagraphEndCP);
      v21 = *(this + 17);
      if (*(v21 + 72) - 1 > PcdIdxFromCP)
      {
        v22 = *(v21 + 88);
        if (v22)
        {
          WrdParser::applyPiece(*(this + 4), v22 + 8 * PcdIdxFromCP, 0, var4, 0, var5, 0, var6, var7, 0, 0, 0);
        }
      }
    }
  }
}

uint64_t WrdBinaryReader::findNextParagraphEndCP(WrdBinaryReader *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), a2);
  v7 = PcdIdxFromCP;
  v8 = *(this + 17);
  v9 = (*(v8 + 88) + 8 * PcdIdxFromCP);
  v10 = *v9;
  if (*(v8 + 72) <= PcdIdxFromCP)
  {
    v11 = -1;
  }

  else
  {
    v11 = *(*(v8 + 80) + 4 * PcdIdxFromCP);
  }

  v12 = v4 - v11 + (v4 - v11) * (*(v9 + 6) & 1);
  v37 = 0;
  v13 = *(*(this + 4) + 112);
  (*(*v13 + 16))(v13, (v12 + v10), 0);
  while (2)
  {
    v14 = v7 + 1;
    while (1)
    {
      v15 = *(this + 17);
      v16 = *(v15 + 72) <= v14 ? -1 : *(*(v15 + 80) + 4 * v14);
      if (v4 > a3 || v4 >= v16)
      {
        break;
      }

      v17 = *v13;
      if (*(v9 + 6))
      {
        v18 = (*(v17 + 80))(v13);
      }

      else
      {
        v18 = (*(v17 + 64))(v13);
      }

      if ((*(v9 + 6) & 2) == 0 && v18 <= 0xD && ((1 << v18) & 0x3080) != 0)
      {
        v20 = *v13;
        if (*(v9 + 6))
        {
          v21 = (*(v20 + 80))(v13);
        }

        else
        {
          v21 = (*(v20 + 64))(v13);
        }

        if (v21 == 10)
        {
          v4 = (v4 + 1);
          v22 = *v13;
          if (*(v9 + 6))
          {
            v21 = (*(v22 + 80))(v13);
          }

          else
          {
            v21 = (*(v22 + 64))(v13);
          }
        }

        if (v4 < a3)
        {
          do
          {
            v23 = (v4 + 1);
            if (v23 >= a3)
            {
              v24 = 0;
            }

            else
            {
              v24 = 1;
              while (v21 > 0xD || ((1 << v21) & 0x3080) == 0)
              {
                v23 = (v23 + 1);
                FCfromCP = WrdPieceTable::getFCfromCP((*(this + 17) + 72), v23, &v37);
                (*(*v13 + 16))(v13, FCfromCP, 0);
                v7 = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), v23);
                v26 = *v13;
                if (*(*(*(this + 17) + 88) + 8 * v7 + 6))
                {
                  v21 = (*(v26 + 80))(v13);
                }

                else
                {
                  v21 = (*(v26 + 64))(v13);
                }

                v24 = v23 < a3;
                if (a3 == v23)
                {
                  v23 = a3;
                  break;
                }
              }
            }

            v27 = WrdPieceTable::getFCfromCP((*(this + 17) + 72), v4, &v37);
            v28 = WrdPieceTable::getFCfromCP((*(this + 17) + 72), v23, &v37);
            BTEForFC = WrdBinTable::getBTEForFC(*(this + 18), v27);
            v30 = WrdBinTable::getBTEForFC(*(this + 18), v28);
            if (BTEForFC != -1 && (BTEForFC != v30 || WrdBinaryReader::loadFKPPAPX(this, v27) == -1 || (v24 & WrdParser::areFCsInSameRun(*(this + 4), *(this + 19), v27, v28)) != 1))
            {
              break;
            }

            v31 = WrdPieceTable::getFCfromCP((*(this + 17) + 72), v23 + 1, &v37);
            (*(*v13 + 16))(v13, v31, 0);
            v7 = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), v23);
            v32 = *v13;
            v21 = (*(*(*(this + 17) + 88) + 8 * v7 + 6) & 1) != 0 ? (*(v32 + 80))(v13) : (*(v32 + 64))(v13);
            v4 = v23;
          }

          while (v23 < a3);
        }

        break;
      }

      v4 = (v4 + 1);
    }

    v33 = *(this + 17);
    v34 = *(v33 + 72);
    if (v7 < v34 - 2)
    {
      v35 = v34 <= ++v7 ? -1 : *(*(v33 + 80) + 4 * v7);
      if (v35 == v4)
      {
        if (v34 - 1 <= v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = (*(v33 + 88) + 8 * v7);
        }

        if (v34 <= v7)
        {
          v4 = 0xFFFFFFFFLL;
        }

        else
        {
          v4 = *(*(v33 + 80) + 4 * v7);
        }

        (*(**(*(this + 4) + 112) + 16))(*(*(this + 4) + 112), *v9, 0);
        continue;
      }
    }

    break;
  }

  return v4;
}

uint64_t WrdPieceTable::getPcdIdxFromCP(WrdPieceTable *this, unsigned int a2)
{
  v2 = *this;
  if (v2 < 2)
  {
    LODWORD(v3) = 1;
  }

  else
  {
    v3 = 1;
    while (*(*(this + 1) + 4 * v3) <= a2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_5;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return (v3 - 1);
}

uint64_t WrdPieceTable::getFCfromCP(WrdPieceTable *this, unsigned int a2, BOOL *a3)
{
  v3 = *this;
  if (v3 < 2)
  {
    LODWORD(v4) = 1;
  }

  else
  {
    v4 = 1;
    while (*(*(this + 1) + 4 * v4) < a2)
    {
      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v3 == v4)
  {
    goto LABEL_5;
  }

  v6 = *(this + 1);
  if (*(v6 + 4 * v4) == a2)
  {
    if (v4 < v3 - 1)
    {
      v7 = (*(this + 2) + 8 * v4);
      *a3 = v7[6] & 1;
      return *v7;
    }

LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  v9 = v4 - 1;
  v10 = *(this + 2) + 8 * v9;
  *a3 = *(v10 + 6) & 1;
  return a2 - *(v6 + 4 * v9) + (a2 - *(v6 + 4 * v9)) * (*(v10 + 6) & 1) + *v10;
}

uint64_t WrdBinTable::getBTEForFC(WrdBinTable *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 2);
    if (*v3 <= a2)
    {
      v5 = 0;
      v6 = 4 * v2;
      v7 = v3 + 1;
      while (v6 != v5)
      {
        v8 = v7[v5 / 4];
        v5 += 4;
        if (v8 > a2)
        {
          return *(*(this + 5) + v5 - 4);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t WrdBinaryReader::loadFKPPAPX(WrdBinTable **this, unsigned int a2)
{
  BTEForFC = WrdBinTable::getBTEForFC(this[18], a2);
  v4 = BTEForFC;
  if (BTEForFC != -1 && BTEForFC - *this[18] != *(this + 40))
  {
    (*(**(this[4] + 14) + 16))(*(this[4] + 14), (BTEForFC << 9), 0);
    WrdParser::parse(this[4], this[19]);
    *(this + 40) = v4 - *this[18];
  }

  return v4;
}

uint64_t WrdParser::parse(WrdParser *this, WrdFormattedDiskPage *a2)
{
  v8 = WrdFormattedDiskPage::s_unPageBufferSize;
  *(a2 + 12) = WrdFormattedDiskPage::s_unUndefinedOffset;
  v4 = *(a2 + 2);
  *(a2 + 2) = (*(**(this + 14) + 40))(*(this + 14));
  (*(**(this + 14) + 56))(*(this + 14), v4, &v8);
  if (v8 != WrdFormattedDiskPage::s_unPageBufferSize)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  StreamInterface = WrdFormattedDiskPage::getStreamInterface(a2);
  return (*(*StreamInterface + 2))(StreamInterface, 0, 0);
}

void **WrdFormattedDiskPage::getStreamInterface(SsrwOOStream *this)
{
  result = this[4].var0;
  if (!result)
  {
    SsrwOOStream::openMemStreamForReading(this + 2, 0x200);
  }

  return result;
}

void SsrwOOMemStream::SsrwOOMemStream(SsrwOOMemStream *this, void **a2, int a3)
{
  *this = &unk_286EC8E70;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
}

uint64_t SsrwOOMemStream::seek(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = *(result + 16);
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v3 = *(result + 20);
LABEL_6:
      a2 += v3;
      goto LABEL_8;
    }

    a2 = *(result + 20);
  }

LABEL_8:
  v4 = *(result + 16);
  if (a2 < v4)
  {
    v4 = a2;
  }

  *(result + 20) = v4;
  return result;
}

BOOL WrdParser::areFCsInSameRun(WrdParser *this, SsrwOOStream *a2, unsigned int a3, unsigned int a4)
{
  if (a3 > a4)
  {
    return 0;
  }

  StreamInterface = WrdFormattedDiskPage::getStreamInterface(a2);
  (*(*StreamInterface + 2))(StreamInterface, 0, 0);
  v9 = 0;
  v10 = 0;
  do
  {
    FC = WrdFormattedDiskPage::getFC(a2, v9);
    v12 = FC;
    result = v10 <= a3 && FC > a4;
    if (result)
    {
      break;
    }

    ++v9;
    v10 = v12;
  }

  while (*(a2[2].var0 + WrdFormattedDiskPage::s_unPageBufferSize - 1) >= v9);
  return result;
}

uint64_t WrdFormattedDiskPage::getFC(WrdFormattedDiskPage *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (*(v2 + 511) < a2 || a2 >= 0x7F)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return CsLeReadSInt32((v2 + 4 * a2));
}

uint64_t WrdFileInformationBlock::getNumberOfCharInText(uint64_t this)
{
  v1 = this;
  LODWORD(this) = 0;
  v2 = *(v1 + 64);
  for (i = 3; i != 11; ++i)
  {
    if (v2 && i < *(v1 + 56))
    {
      v4 = *(v2 + 4 * i);
    }

    else
    {
      v4 = 0;
    }

    this = (v4 + this);
  }

  return this;
}

void WrdParser::applyExceptionsForFC(WrdParser *this, SsrwOOStream *a2, unsigned int a3, WrdParagraphProperties *a4, WrdParagraphProperties *a5, WrdTableProperties *a6, WrdTableProperties *a7)
{
  if (WrdParser::seekToExceptionForFC(this, a2, a3, &v17))
  {
    StreamInterface = WrdFormattedDiskPage::getStreamInterface(a2);
    v14 = (*(*StreamInterface + 8))(StreamInterface);
    v15 = v14 ? 2 * v14 - 1 : 2 * (*(*StreamInterface + 8))(StreamInterface);
    v16 = (*(*StreamInterface + 10))(StreamInterface);
    WrdParagraphProperties::setParagraphStyleIndex(a4, v16);
    if (v15 >= 3)
    {
      WrdParser::parseGrpprl(this, StreamInterface, v15 - 2, 0, 0, 0, a4, 0, a5, 0, a6, a7, 0, 0, 0);
    }
  }

  if (*(this + 38) <= 9)
  {
    if (WrdTableProperties::WrdTablePropertiesOverridden::isAnythingOverridden((a6 + 16)))
    {
      WrdFileInformationBlockHeader::isBiDiLanguage((this + 160));
      WrdTableProperties::upgradeToVersion10(a6);
    }

    if (*(this + 38) <= 9 && WrdTableProperties::WrdTablePropertiesOverridden::isAnythingOverridden((a7 + 16)))
    {
      WrdFileInformationBlockHeader::isBiDiLanguage((this + 160));

      WrdTableProperties::upgradeToVersion10(a7);
    }
  }
}

uint64_t WrdParser::seekToExceptionForFC(WrdParser *this, SsrwOOStream *a2, unsigned int a3, unsigned int *a4)
{
  StreamInterface = WrdFormattedDiskPage::getStreamInterface(a2);
  (*(*StreamInterface + 2))(StreamInterface, 0, 0);
  v8 = 0;
  while (1)
  {
    FC = WrdFormattedDiskPage::getFC(a2, v8);
    if (v8)
    {
      if (FC > a3)
      {
        break;
      }
    }

    if (*(a2[2].var0 + WrdFormattedDiskPage::s_unPageBufferSize - 1) < ++v8)
    {
      result = 0;
      *a4 = 0;
      return result;
    }
  }

  *a4 = FC - a3;
  result = (*(a2->var0 + 4))(a2, (v8 - 1));
  if (result)
  {
    (*(*StreamInterface + 2))(StreamInterface, result, 0);
    return 1;
  }

  return result;
}

uint64_t WrdPAPXFKP::getGrpprlOffset(WrdPAPXFKP *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(v2 + WrdFormattedDiskPage::s_unPageBufferSize - 1), v3 <= a2) || (v4 = 13 * a2 + 4 * v3 + 4, v4 >= WrdFormattedDiskPage::s_unPageBufferSize))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return 2 * *(v2 + v4);
}

uint64_t SsrwOOMemStream::readByte(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) <= v1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  v2 = *(**(this + 1) + v1);
  *(this + 5) = v1 + 1;
  return v2;
}

uint64_t SsrwOOMemStream::readUInt16(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  result = CsLeReadUInt16((**(this + 1) + v1));
  *(this + 5) += 2;
  return result;
}

uint64_t WrdTableProperties::WrdTablePropertiesOverridden::isAnythingOverridden(WrdTableProperties::WrdTablePropertiesOverridden *this)
{
  if ((*this & 0xFFFFFFFFF87FFFFFLL) != 0)
  {
    return 1;
  }

  v2 = *(this + 2);
  v3 = (v2 & 0x2FFFFF87) == 0;
  v4 = (v2 >> 28) & 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t WrdNoteTable::getCPOfNextNote(WrdNoteTable *this, int a2)
{
  v2 = *(this + 2);
  v3 = (*(this + 3) - v2) >> 3;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    result = *(*(v2 + 8 * v4) + 8);
    if (result > a2)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t WrdAnnotationTable::getCPOfNextAnnotation(WrdAnnotationTable *this, int a2)
{
  v2 = *(this + 1);
  v3 = (*(this + 2) - v2) >> 3;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    result = *(*(v2 + 8 * v4) + 8);
    if (result > a2)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void WrdCharacterProperties::WrdCharacterProperties(WrdCharacterProperties *this)
{
  this->var0 = &unk_286ED4270;
  this->var1 = &unk_286ED42A0;
  *&v1 = 255;
  *(&v1 + 1) = 255;
  *(&this->var2 + 14) = v1;
  CsString::CsString(&this->var5);
  operator new();
}

void sub_25D2E9150(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x25F897000](v3, 0x1081C403767BB22);
  CsString::~CsString(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t *WrdBinaryReader::read(uint64_t *this, WrdCharacterTextRun *a2)
{
  a2->var3 = 0;
  if (*(this[17] + 4 * a2->var1 + 40) > a2->var2)
  {
    v3 = this;
    WrdBinaryReader::readTextRunCHP(this, a2);
    if (WrdCharacterTextRun::isPicture(a2) || WrdCharacterTextRun::isFormFieldData(a2) || (this = WrdCharacterTextRun::isOle1Object(a2), this))
    {
      *(v3 + 163) = a2->var2;
      *(v3 + 172) = a2->var1;
      *(v3 + 164) = 1;
      OcText::setMinimumCapacity((v3 + 80), 2u);
      WrdRdrText::getText(v3[17], (v3 + 79));
      this = OcText::getCharacter((v3 + 80), 0);
      if (this == 1)
      {
        var1 = a2->var1;
        var2 = a2->var2;
        if (!WrdCharacterTextRun::isPicture(a2) || (this = WrdCharacterTextRun::isFormFieldData(a2), (this & 1) == 0))
        {
          p_var4 = &a2->var4;
          if (!WrdCharacterProperties::isPicture(a2->var4) && !WrdCharacterProperties::isFormFieldData(*p_var4) && !WrdCharacterProperties::isOle1Object(a2->var4))
          {
            p_var4 = &a2->var5;
          }

          v6 = *p_var4;
          if (WrdCharacterTextRun::isPicture(a2))
          {
            v7 = (*(**(v3[4] + 280) + 16))(*(v3[4] + 280), 45);
            if (v7)
            {
              v8 = (v7 - 8);
            }

            else
            {
              v8 = 0;
            }

            WrdParser::parse(v3[4], v8, v6->var51);
            if (!*(v8 + 12))
            {
              WrdCharacterProperties::setData(v6, 1);
            }

            (*(*v8 + 8))(v8);
          }

          if (WrdCharacterTextRun::isPicture(a2))
          {
            var51 = v6->var51;
          }

          else
          {
            if (!WrdCharacterTextRun::isOle1Object(a2))
            {
              var51 = v6->var51;
              p_var2 = &var2;
              v10 = &v3[3 * var1 + 52];
              goto LABEL_25;
            }

            var51 = v6->var56;
          }

          p_var2 = &var2;
          v10 = &v3[3 * var1 + 28];
LABEL_25:
          this = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v10, &var2);
          *(this + 8) = var51;
        }
      }
    }
  }

  return this;
}

void sub_25D2E93F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WrdListLevelFormat::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdBinaryReader::readTextRunCHP(WrdBinaryReader *this, WrdCharacterTextRun *a2)
{
  v21 = 0;
  v20 = 0;
  v4 = *(*(this + 17) + 4 * a2->var1 + 8) + a2->var2;
  var4 = a2->var4;
  var5 = a2->var5;
  (*(var4->var0 + 2))(var4);
  (*(var5->var0 + 2))(var5);
  FCfromCP = WrdPieceTable::getFCfromCP((*(this + 17) + 72), v4, &v21);
  BTEForFC = WrdBinTable::getBTEForFC(*(this + 21), FCfromCP);
  if (BTEForFC == -1)
  {
    return;
  }

  v9 = BTEForFC;
  if (BTEForFC - **(this + 21) != *(this + 46))
  {
    (*(**(*(this + 4) + 112) + 16))(*(*(this + 4) + 112), (BTEForFC << 9), 0);
    WrdParser::parse(*(this + 4), *(this + 22));
    *(this + 46) = v9 - **(this + 21);
  }

  WrdParser::applyExceptionsForFC(*(this + 4), *(this + 22), FCfromCP, var4, var5, &v20);
  if (v21)
  {
    v20 >>= 1;
  }

  PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), v4);
  v11 = *(this + 4);
  if ((*(v11 + 186) & 4) != 0)
  {
    v12 = *(this + 17);
    if (*(v12 + 72) - 1 > PcdIdxFromCP)
    {
      v13 = *(v12 + 88);
      if (v13)
      {
        v14 = v13 + 8 * PcdIdxFromCP;
        if (*(v14 + 4))
        {
          v15 = (*(var5->var0 + 3))(var5);
          WrdCharacterProperties::applyBaseProperties(v15, var4);
          (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 41);
          (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 41);
          (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 61);
          (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 61);
          operator new();
        }

        WrdParser::applyPiece(v11, v14, 0, 0, var4, 0, var5, 0, 0, 0, 0, 0);
      }
    }
  }

  v16 = v20;
  v17 = *(this + 17);
  if (*(v17 + 72) > PcdIdxFromCP + 1)
  {
    v18 = *(*(v17 + 80) + 4 * (PcdIdxFromCP + 1));
    if (v20 < v18 - v4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v20 >= ~v4)
  {
    v18 = -1;
LABEL_17:
    v16 = v18 - v4;
  }

LABEL_18:
  v20 = v16;
  v19 = *(v17 + 4 * (a2->var1 + 1) + 8) - v4;
  if (v16 < v19)
  {
    v19 = v16;
  }

  a2->var3 = v19;
}

void sub_25D2E98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x25F897000](v20, 0x10A1C407169F6FFLL);
  if (v21)
  {
    (*(*v19 + 8))(v19);
  }

  if (a15)
  {
    (*(*a14 + 8))(a14);
  }

  if (a18)
  {
    (*(*a16 + 8))(a16);
  }

  if (a19)
  {
    (*(*a17 + 8))(a17);
  }

  if (*(v22 - 96))
  {
    (*(**(v22 - 96) + 8))(*(v22 - 96));
  }

  _Unwind_Resume(a1);
}

void WrdParser::applyExceptionsForFC(WrdParser *this, SsrwOOStream *a2, unsigned int a3, WrdCharacterProperties *a4, WrdCharacterProperties *a5, unsigned int *a6)
{
  v7 = a4;
  v9 = this;
  if (WrdParser::seekToExceptionForFC(this, a2, a3, a6))
  {
    StreamInterface = WrdFormattedDiskPage::getStreamInterface(a2);
    v11 = StreamInterface;
    v12 = (*(*StreamInterface + 8))(StreamInterface);
    if (v12)
    {
      WrdParser::parseGrpprl(v9, v11, v12, 0, 0, 0, 0, v7, 0, a5, 0, 0, 0, 0, 0);
    }
  }
}

uint64_t WrdCHPXFKP::getGrpprlOffset(WrdCHPXFKP *this, unsigned int a2)
{
  v2 = *(this + 2);
  v3 = *(v2 + WrdFormattedDiskPage::s_unPageBufferSize - 1);
  if (v3 <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v4 = a2 + 4 + 4 * v3;
  if (v4 >= WrdFormattedDiskPage::s_unPageBufferSize)
  {
    return 0;
  }

  else
  {
    return 2 * *(v2 + v4);
  }
}

uint64_t WrdCharacterProperties::doRevisionsExist(WrdCharacterProperties *this)
{
  var2 = this->var2;
  if ((var2 & 8) != 0 || (*(&this->var2 + 6) & 0x20) != 0)
  {
    return 1;
  }

  v2 = *(&this->var2 + 2);
  if (v2 >= 0)
  {
    v3 = (v2 >> 23) & 1;
  }

  else
  {
    v3 = 1;
  }

  if ((var2 & 0x40) != 0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void *SsrwOOMemStream::readBytes(SsrwOOMemStream *this, void *__dst, unsigned int *a3)
{
  if ((*a3 & 0x80000000) != 0 || (v4 = *(this + 5), (v4 & 0x80000000) != 0))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  if (*a3 >= *(this + 4) - v4)
  {
    v6 = *(this + 4) - v4;
  }

  else
  {
    v6 = *a3;
  }

  result = memcpy(__dst, (**(this + 1) + v4), v6);
  *(this + 5) += v6;
  *a3 = v6;
  return result;
}

BOOL WrdCharacterTextRun::isPicture(WrdCharacterTextRun *this)
{
  if (!this->var3)
  {
    return 0;
  }

  var4 = this->var4;
  var51 = var4->var51;
  if ((var51 & 0x80000000) == 0)
  {
    v4 = this->var5->var51;
    if ((v4 & 0x80000000) == 0 && var51 != v4)
    {
      return 0;
    }
  }

  v5 = *(var4 + 170);
  if ((v5 & 2) != 0)
  {
    if ((v5 & 0x10) != 0)
    {
      return 0;
    }

    var5 = this->var5;
    v8 = *(var5 + 85);
  }

  else
  {
    result = 0;
    if ((v5 & 0x10) != 0)
    {
      return result;
    }

    var5 = this->var5;
    v8 = *(var5 + 85);
    if ((v8 & 2) == 0)
    {
      return result;
    }
  }

  if (v5 & 0x24 | v8 & 0x14)
  {
    return 0;
  }

  result = (v8 & 0x20) == 0;
  if (var51 < 0 && (v8 & 0x20) == 0)
  {
    return var5->var51 >= 0;
  }

  return result;
}

BOOL WrdCharacterTextRun::isFormFieldData(WrdCharacterTextRun *this)
{
  if (!this->var3)
  {
    return 0;
  }

  var4 = this->var4;
  var51 = var4->var51;
  if ((var51 & 0x80000000) == 0)
  {
    v3 = this->var5->var51;
    if ((v3 & 0x80000000) == 0 && var51 != v3)
    {
      return 0;
    }
  }

  v4 = *(var4 + 170);
  if ((v4 & 2) == 0 && (*(this->var5 + 340) & 2) == 0)
  {
    return 0;
  }

  if ((v4 & 0x10) == 0 && (*(this->var5 + 340) & 0x10) == 0)
  {
    return 0;
  }

  if (var4->var52 < 0)
  {
    return this->var5->var52 >= 0;
  }

  return 1;
}

BOOL WrdCharacterTextRun::isOle1Object(WrdCharacterTextRun *this)
{
  if (!this->var3)
  {
    return 0;
  }

  var4 = this->var4;
  var56 = var4->var56;
  if ((var56 & 0x80000000) == 0)
  {
    v5 = this->var5->var56;
    if ((v5 & 0x80000000) == 0)
    {
      v1 = __OFSUB__(var56, v5);
      if (var56 != v5)
      {
        return 0;
      }
    }
  }

  var53 = var4->var53;
  if ((var53 & 0x80000000) == 0)
  {
    v7 = this->var5->var53;
    if ((v7 & 0x80000000) == 0)
    {
      v1 = __OFSUB__(var53, v7);
      if (var53 != v7)
      {
        return 0;
      }
    }
  }

  v8 = *(var4 + 170);
  if ((v8 & 2) != 0)
  {
    if ((v8 & 0x10) != 0)
    {
      return 0;
    }

    var5 = this->var5;
    v11 = *(var5 + 85);
    if ((v11 & 0x10) != 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v8 & 0x10) != 0)
    {
      return result;
    }

    var5 = this->var5;
    v11 = *(var5 + 85);
    if ((v11 & 2) == 0)
    {
      return result;
    }

    if ((v11 & 0x10) != 0)
    {
      return 0;
    }
  }

  result = 0;
  if ((v8 & 0x20) == 0)
  {
    if (v8 & 4 | v11 & 4)
    {
      result = (v11 & 0x20) == 0;
      if (var56 < 0 && (v11 & 0x20) == 0)
      {
        return (var5->var56 & var53) < 0 == v1 || var5->var53 >= 0;
      }
    }
  }

  return result;
}

uint64_t WrdCharacterTextRun::isSpecialCharacter(WrdCharacterTextRun *this)
{
  if (!this->var3)
  {
    return 0;
  }

  if (WrdCharacterProperties::isSpecialCharacter(this->var4))
  {
    return 1;
  }

  var5 = this->var5;

  return WrdCharacterProperties::isSpecialCharacter(var5);
}

uint64_t WrdText::WrdText(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = &unk_286ED5AE0;
  OcText::OcText((a1 + 8));
  *(a1 + 56) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  return a1;
}

WrdRdrText *WrdBinaryReader::read(WrdBinaryReader *this, WrdText *a2)
{
  result = *(this + 17);
  v3 = *(result + *(a2 + 14) + 10);
  v4 = *(a2 + 5);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v6 != 0 && v5)
  {
    if (*(a2 + 6) > v6)
    {
      *(a2 + 6) = v6;
    }

    return WrdRdrText::getText(result, a2);
  }

  else
  {
    *(a2 + 5) = v3;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t WrdRdrText::getText(WrdRdrText *this, WrdText *a2)
{
  v2 = *(a2 + 14);
  if (v2 >= 8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v4 = this + 40;
  if (!*(this + v2 + 10))
  {
    return 0;
  }

  v41 = 0;
  v6 = *(a2 + 5) + *(this + v2 + 2);
  PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((this + 72), v6);
  v8 = *(this + 18);
  if (v8 - 1 <= PcdIdxFromCP)
  {
    return 0;
  }

  v9 = *(this + 11);
  if (!v9)
  {
    return 0;
  }

  v10 = v9 + 8 * PcdIdxFromCP;
  v40 = v4;
  if (v8 <= PcdIdxFromCP + 1)
  {
    v11 = -1;
  }

  else
  {
    v11 = *(*(this + 10) + 4 * (PcdIdxFromCP + 1));
  }

  v13 = PcdIdxFromCP;
  v14 = *(v10 + 6) & 1;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 1252;
  }

  *(a2 + 4) = v15;
  v16 = *(a2 + 6);
  if (*(a2 + 7))
  {
    if (!v16)
    {
LABEL_14:
      v16 = *(a2 + 7);
      *(a2 + 6) = v16 >> (*(v10 + 6) & 1);
      goto LABEL_24;
    }
  }

  else if (!v16)
  {
    v17 = (v11 - v6) << v14;
    OcText::setMinimumCapacity((a2 + 8), 0x200u);
    v16 = v17 >> (*(v10 + 6) & 1);
    *(a2 + 6) = v16;
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  if ((*(v10 + 6) & 1) == 0)
  {
    v18 = *(a2 + 7);
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_23:
    OcText::setMinimumCapacity((a2 + 8), v16);
    goto LABEL_24;
  }

  v16 *= 2;
  v18 = *(a2 + 7);
  if (v18 <= 1)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v18 < v16)
  {
    v16 = v18;
  }

LABEL_24:
  v19 = 0;
  do
  {
    v20 = *(v10 + 6);
    v21 = *(a2 + 4);
    if (v20)
    {
      if (v21 == 1252)
      {
        break;
      }
    }

    else if (v21 == 1)
    {
      break;
    }

    v22 = v13 + 1;
    v23 = *(this + 18);
    if (v13 + 1 >= v23)
    {
      v24 = -1;
    }

    else
    {
      v24 = *(*(this + 10) + 4 * v22);
    }

    v25 = v20 & 1;
    v26 = (v20 & 1) + 1;
    v27 = (v24 - v6) * v26;
    if (v27 >= v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = v27;
    }

    v41 = v28 >> v25;
    if (v13 >= v23)
    {
      v29 = -1;
    }

    else
    {
      v29 = *(*(this + 10) + 4 * v13);
    }

    (*(**(this + 12) + 16))(*(this + 12), *v10 + (v6 - v29) * v26, 0);
    if (*(v10 + 6))
    {
      if (v41)
      {
        v30 = 0;
        v31 = *(a2 + 4) + v19;
        do
        {
          *(v31 + 2 * v30++) = (*(**(this + 12) + 80))(*(this + 12));
        }

        while (v30 < v41);
      }
    }

    else
    {
      (*(**(this + 12) + 56))(*(this + 12), *(a2 + 4) + v19, &v41);
    }

    v19 += v28;
    v32 = (*(this + 18) - 1);
    if (v13 < v32 || v22 >= v32)
    {
      break;
    }

    v6 += v41;
    v10 = *(this + 11) + 8 * v22;
    ++v13;
    v16 -= v28;
  }

  while (v16);
  v34 = v19 >> (OcText::isSingleByteEncoding(*(a2 + 4)) ^ 1);
  v35 = *(a2 + 5);
  v36 = v34 + v35;
  v37 = *&v40[4 * *(a2 + 14)];
  v38 = v37 - v35;
  if (v36 <= v37)
  {
    result = v34;
  }

  else
  {
    result = v38;
  }

  *(a2 + 6) = result;
  return result;
}

void OcText::setMinimumCapacity(OcText *this, unsigned int a2)
{
  if (this->var4 < a2)
  {
    OcText::allocBuffer(this, a2, 1);
  }
}

void WrdCharacterTextRun::~WrdCharacterTextRun(WrdCharacterTextRun *this)
{
  this->var0 = &unk_286ED4308;
  var4 = this->var4;
  if (var4)
  {
    (*(var4->var0 + 1))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    (*(var5->var0 + 1))(var5);
  }

  this->var5 = 0;
}

{
  WrdCharacterTextRun::~WrdCharacterTextRun(this);

  JUMPOUT(0x25F897000);
}

WrdCharacterProperties *WrdCharacterProperties::setOffsetToPictureData(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 2) |= 0x40u;
  this->var51 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setOffsetToFormFieldData(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 2) |= 0x80u;
  this->var52 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setObjectIDForOLE2(WrdCharacterProperties *this, unsigned int a2)
{
  *(&this->var2 + 2) |= 0x200u;
  this->var59 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setOffsetToOLEObjectData(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 6) |= 8u;
  this->var56 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setSpecialCharacter(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x40000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFFD | (2 * (a2 & 1));
  return this;
}

uint64_t OcText::getCharacter(OcText *this, unsigned int a2)
{
  var5 = this->var5;
  if (!var5 || this->var3 <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (OcText::isSingleByteEncoding(this->var1))
  {
    return var5[a2];
  }

  else
  {
    return *&var5[2 * a2];
  }
}

void WrdPictureProperties::WrdPictureProperties(WrdPictureProperties *this, WrdBorder *a2, WrdBorder *a3, WrdBorder *a4, WrdBorder *a5)
{
  *this = &unk_286ED54B8;
  *(this + 1) = &unk_286ED54E8;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 3) = 1;
  *(this + 4) = a2;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 26) = 0;
}

double WrdPictureProperties::reset(WrdPictureProperties *this)
{
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 3) = 1;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 26) = 0;
  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdPictureProperties *a2, uint64_t a3)
{
  result = *(this + 15);
  if (result)
  {
    (*(*result + 16))(result, a3, 0);
    v6 = (*(**(this + 15) + 96))(*(this + 15));
    v7 = (*(**(this + 15) + 72))(*(this + 15));
    if ((v6 & 0x80000000) != 0 || (v8 = v7, v7 < 0) || v6 < v7 || v6 > (*(**(this + 15) + 48))(*(this + 15)))
    {
      v8 = 0;
      v6 = 0;
    }

    *(a2 + 19) = v6;
    *(a2 + 45) = v8;
    *(a2 + 6) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 34) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 35) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 44) = (*(**(this + 15) + 72))(*(this + 15));
    (*(**(this + 15) + 16))(*(this + 15), 14, 1);
    *(a2 + 36) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 37) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 46) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 47) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 40) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 41) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 42) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 43) = (*(**(this + 15) + 72))(*(this + 15));
    v9 = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 104) = (v9 & 0x10) != 0;
    *(a2 + 105) = (v9 & 0x20) != 0;
    *(a2 + 106) = (v9 & 0x40) != 0;
    *(a2 + 107) = (v9 & 0x80) != 0;
    *(a2 + 7) = HIBYTE(v9);
    BorderReference = WrdPictureProperties::getBorderReference(a2, 1);
    WrdBaseParser::parseBRC80(this, BorderReference, *(this + 15));
    v11 = WrdPictureProperties::getBorderReference(a2, 0);
    WrdBaseParser::parseBRC80(this, v11, *(this + 15));
    v12 = WrdPictureProperties::getBorderReference(a2, 3);
    WrdBaseParser::parseBRC80(this, v12, *(this + 15));
    v13 = WrdPictureProperties::getBorderReference(a2, 2);
    WrdBaseParser::parseBRC80(this, v13, *(this + 15));
    *(a2 + 32) = (*(**(this + 15) + 72))(*(this + 15));
    *(a2 + 33) = (*(**(this + 15) + 72))(*(this + 15));
    v14 = *(**(this + 15) + 16);

    return v14();
  }

  return result;
}

uint64_t WrdBaseParser::parseBRC80(WrdBaseParser *this, WrdBorder *a2, SsrwOOStream *a3)
{
  v3 = a3;
  v5 = (*(a3->var0 + 10))(a3);
  LODWORD(v3) = (*(v3->var0 + 10))(v3);
  a2->var6 = v5;
  a2->var2 = v5 >> 8;
  result = WrdProperty::convertWord97ColorEnumToColor(v3, &a2->var1);
  a2->var3 = v3;
  a2->var7 = BYTE1(v3) & 0x1F;
  *(a2 + 24) = *(a2 + 24) & 0xFC | (v3 >> 13) & 3;
  return result;
}

void WrdPictureProperties::~WrdPictureProperties(WrdPictureProperties *this)
{
  WrdPictureProperties::~WrdPictureProperties(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED54B8;
  *(this + 1) = &unk_286ED54E8;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 6) = 0;
  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 7) = 0;
}

void WrdCharacterProperties::WrdCharacterProperties(WrdCharacterProperties *this, const WrdCharacterProperties *a2)
{
  this->var0 = &unk_286ED4270;
  this->var1 = &unk_286ED42A0;
  *&v4 = 255;
  *(&v4 + 1) = 255;
  *(&this->var2 + 14) = v4;
  CsString::CsString(&this->var5);
  this->var6 = (*(a2->var6->var0 + 2))(a2->var6);
  this->var7 = (*(a2->var7->var0 + 2))(a2->var7);
  this->var8 = (*(a2->var12->var0 + 2))(a2->var12);
  this->var9 = (*(a2->var9->var0 + 2))(a2->var9);
  this->var10 = (*(a2->var10->var0 + 2))(a2->var10);
  this->var11 = (*(a2->var11->var0 + 2))(a2->var11);
  this->var12 = (*(a2->var12->var0 + 2))(a2->var12);
  WrdCharacterProperties::operator=(this, a2);
}

void WrdPictureProperties::WrdPictureProperties(WrdPictureProperties *this)
{
  *this = &unk_286ED54B8;
  *(this + 1) = &unk_286ED54E8;
  *(this + 8) = 0;
  *(this + 18) = 0;
  operator new();
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdPictureProperties *a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    v19 = 1004;
    goto LABEL_22;
  }

  v5 = *(a2 + 5);
  v20 = *(a2 + 4);
  v6 = this + 24 * v5;
  for (i = *(v6 + 29); i; i = *i)
  {
    v8 = *(i + 7);
    if (v2 >= v8)
    {
      if (v8 >= v2)
      {
        goto LABEL_15;
      }

      ++i;
    }
  }

  v9 = (*(**(*(this + 4) + 280) + 16))(*(*(this + 4) + 280), 11);
  v9[2] = v5;
  v9[3] = v2;
  (*(*this + 192))(this, v9);
  v10 = *(v6 + 29);
  if (!v10)
  {
LABEL_12:
    v12 = __cxa_allocate_exception(4uLL);
    *v12 = 1004;
  }

  while (1)
  {
    v11 = *(v10 + 7);
    if (v2 >= v11)
    {
      break;
    }

LABEL_11:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v11 < v2)
  {
    ++v10;
    goto LABEL_11;
  }

  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

LABEL_15:
  v21 = &v20;
  v13 = *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v6 + 224), &v20) + 8);
  *(this + 152) = v13;
  WrdParser::parse(*(this + 4), a2, v13);
  v14 = *(a2 + 45);
  *(this + 153) = *(this + 152) + v14;
  *(this + 154) = *(a2 + 19) - v14;
  if ((*(*(this + 4) + 186) & 4) != 0)
  {
    PcdIdxFromCP = WrdPieceTable::getPcdIdxFromCP((*(this + 17) + 72), *(a2 + 4));
    v16 = *(this + 17);
    if (*(v16 + 72) - 1 > PcdIdxFromCP)
    {
      v17 = *(v16 + 88);
      if (v17)
      {
        WrdParser::applyPiece(*(this + 4), v17 + 8 * PcdIdxFromCP, 0, 0, 0, 0, 0, 0, 0, 0, 0, a2);
        goto LABEL_19;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    v19 = 1005;
LABEL_22:
    *exception = v19;
  }

LABEL_19:
  EshBinaryReader::finish((this + 40));
}

EshObjectFactory *WrdEshObjectFactory::createObject(WrdEshObjectFactory *this, EshObject *a2, int a3)
{
  if (a2 > 61452)
  {
    switch(a2)
    {
      case 0xF00D:
        operator new();
      case 0xF010:
        operator new();
      case 0xF011:
        operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        operator new();
      case 7:
        operator new();
      case 0xC:
        operator new();
    }
  }

  Object = EshObjectFactory::createObject(this, a2, a3);
  if (!Object)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1001;
  }

  EshObjectFactory::verifyTypeAndVersionOfObject(Object, a2, a3);
  return Object;
}

uint64_t WrdBinaryReader::read(WrdBinaryReader *this, EshRoot *a2)
{
  if ((*(this + 47) & 0xFFFFFFFE) != 4)
  {
    EshBinaryReader::read((this + 40), a2);
  }

  return WrdBinaryReader::readPicture(this, a2);
}

uint64_t WrdBinaryReader::readPicture(WrdBinaryReader *this, EshRoot *a2)
{
  result = (*(*a2 + 104))(a2, 0);
  v4 = *(this + 154);
  if (v4)
  {
    *(this + 156) = 4;
    v5 = *(*(this + 4) + 120);
    v6 = *(this + 153);
    if (*(this + 47) == 4)
    {
      (*(v5->var0 + 2))(*(*(this + 4) + 120), v6, 0);
      goto LABEL_5;
    }

    v7 = v6 + v4;
    result = (*(v5->var0 + 5))(*(*(this + 4) + 120));
    if (v7 > result)
    {
LABEL_5:
      WrdEshReader::start((this + 40), v5);
    }
  }

  return result;
}

uint64_t EshDataModelVisitor::takeClientVisitor(EshDataModelVisitor *this, EshClientDataModelVisitor *a2)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1) = a2;
  return result;
}

void WrdEshShape::WrdEshShape(WrdEshShape *this)
{
  EshShape::EshShape(this);
  *v1 = &unk_286ED4AD8;
  v1[52] = &unk_286ED4BA8;
  v1[72] = 0;
  v1[74] = 0;
  v1[73] = 0;
}

uint64_t EshColor::systemIndex(uint64_t result, uint64_t a2, char a3, char a4, int a5, int a6, int a7)
{
  *a2 = 34;
  *(a2 + 4) = result;
  v7 = *(a2 + 6) & 0x80;
  *(a2 + 5) = a4;
  if (a5)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if (a6)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  if (a7)
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 6) = v8 & 0xF0 | a3 & 0xF | v9 | v10 | v7;
  return result;
}

uint64_t WrdEshClientAnchor::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

uint64_t WrdEshParserVisitor::visit(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = (*(**(a1 + 8) + 96))(*(a1 + 8));
  return 1;
}

{
  *(a2 + 28) = (*(**(a1 + 8) + 96))(*(a1 + 8));
  return 1;
}

{
  *(a2 + 28) = (*(**(a1 + 8) + 80))(*(a1 + 8));
  *(a2 + 30) = (*(**(a1 + 8) + 80))(*(a1 + 8));
  return 1;
}

void WrdEshParserVisitor::~WrdEshParserVisitor(WrdEshParserVisitor *this)
{
  EshClientDataModelVisitor::EshClientDataModelVisitor(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdCharacterProperties::setFieldVanish(uint64_t result, int a2)
{
  *(result + 16) |= 0x2000000000uLL;
  *(result + 216) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setData(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x200000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFEF | (16 * (a2 & 1));
  return this;
}

BOOL WrdCharacterProperties::isOle1Object(WrdCharacterProperties *this)
{
  if ((*(this + 85) & 0x36) != 6)
  {
    return 0;
  }

  if (this->var56 < 0)
  {
    return this->var53 >= 0;
  }

  return 1;
}

WrdCharacterProperties *WrdCharacterProperties::setStyleIndex(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x8000000uLL;
  this->var72 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setOle2(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x400000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFDF | (32 * (a2 & 1));
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setEmbeddedObject(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x80000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFFB | (4 * (a2 & 1));
  return this;
}

uint64_t EshBlipT<EshMetafileBlipInfo>::EshBlipT(uint64_t a1, unsigned __int16 a2)
{
  EshBlip::EshBlip(a1, a2);
  *v3 = &unk_286EC62A0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = v3 + 20;
  OcBinaryData::OcBinaryData((v3 + 72));
  *(a1 + 160) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = -258;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 160;
  OcBinaryData::OcBinaryData((a1 + 192));
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = -258;
  return a1;
}

void sub_25D2EBEF8(_Unwind_Exception *a1)
{
  OcBinaryData::~OcBinaryData((v1 + 72));
  EshBlip::~EshBlip(v1);
  _Unwind_Resume(a1);
}

uint64_t EshMetafileBlip::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshMetafileBlip *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  EshParserVisitor::parseBlipUid(this, (a2 + 28));
  if (**(a2 + 6))
  {
    EshParserVisitor::parseBlipUid(this, (a2 + 56));
  }

  EshParserVisitor::parseMetafileInfo(this, a2 + 48);
  v6 = (*(**(this + 3) + 40))(*(this + 3));
  v7 = *(a2 + 4) + *(a2 + 3) + 8;
  if (v6 < v7)
  {
    v8 = (*(**(this + 3) + 80))(*(this + 3));
    **(a2 + 21) = v8;
    if (v8)
    {
      EshParserVisitor::parseBlipUid(this, a2 + 11);
    }

    EshParserVisitor::parseMetafileInfo(this, a2 + 168);
    if ((*(**(this + 3) + 40))(*(this + 3)) != v7)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 7005;
    }
  }

  EshParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshParserVisitor::parseMetafileInfo(EshParserVisitor *a1, uint64_t a2)
{
  *(a2 + 72) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  v4 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  v5 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  v6 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  v7 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  *(a2 + 76) = v4;
  *(a2 + 80) = v5;
  *(a2 + 84) = v6;
  *(a2 + 88) = v7;
  v8 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  v9 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  *(a2 + 92) = v8;
  *(a2 + 96) = v9;
  *(a2 + 100) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(a2 + 104) = (*(**(a1 + 3) + 64))(*(a1 + 3));
  *(a2 + 105) = (*(**(a1 + 3) + 64))(*(a1 + 3));
  v10 = *(a2 + 100);

  return EshParserVisitor::delayReadData(a1, (a2 + 24), v10);
}

uint64_t SsrwOORootStorage::createInBuf(SsrwOORootStorage *this, void **a2, unsigned int a3, void *(*a4)(void *, unint64_t), int8x8_t a5)
{
  LODWORD(result) = createStructuredStorageInBuf(a2, a3, a4, 1, this + 10, a5);
  if (result || (result = getStorageFromRoot(*(this + 10), this), result))
  {
    v7 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v7;
  }

  return result;
}

uint64_t createStructuredStorageInBufEx(void *a1, unsigned int a2, uint64_t a3, int a4, uint64_t *a5, unsigned int a6, int8x8_t a7)
{
  if (!a1)
  {
    return 6;
  }

  StructuredStorageInternal = 6;
  if (a5)
  {
    if (a3)
    {
      if (*a1)
      {
        a7.i32[0] = a6;
        v10 = vcnt_s8(a7);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.i32[0] <= 1u)
        {
          if ((a4 - 1) > 1)
          {
            return 2;
          }

          else
          {
            v12 = SsrwOpenMemForReadWrite(a1, a2, a3);
            if (v12)
            {
              v13 = v12;
              StructuredStorageInternal = createStructuredStorageInternal(v12, a4, a5, 1, a6);
              if (StructuredStorageInternal)
              {
                SsrwFclose(v13);
              }
            }

            else
            {
              return 4;
            }
          }
        }
      }
    }
  }

  return StructuredStorageInternal;
}

_DWORD *SsrwOpenMemForReadWrite(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = malloc_type_malloc(0x60uLL, 0x10A2040658F7E63uLL);
  if (result)
  {
    result[11] = 0;
    *(result + 41) = 0;
    *(result + 6) = SsrwMemFread;
    *(result + 7) = SsrwMemFwrite;
    *(result + 8) = SsrwMemFclose;
    *(result + 9) = SsrwMemFseek;
    *(result + 10) = SsrwMemFtell;
    *(result + 11) = SsrwMemFtruncate;
    *result = a1;
    *(result + 1) = 0;
    *(result + 2) = a2;
    *(result + 3) = 0;
    *(result + 4) = a3;
    *(result + 40) = 3;
  }

  return result;
}

uint64_t createStructuredStorageInternal(uint64_t a1, int a2, uint64_t *a3, char a4, unsigned int a5)
{
  if ((a5 & (a5 - 1)) != 0)
  {
    return 6;
  }

  if ((a2 - 1) > 1)
  {
    return 2;
  }

  v10 = malloc_type_malloc(0x70uLL, 0x10300407518E08AuLL);
  if (!v10)
  {
    return 5;
  }

  v11 = v10;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = 512;
  }

  *v10 = 0uLL;
  rootStorageInit(v10, 1, v12);
  v13 = 1 << headerGetSectorShift(*(v11 + 16));
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  *(v11 + 80) = v14;
  if (!v14)
  {
    closeStg(v11);
    return 5;
  }

  bzero(v14, v13);
  SectorShift = headerGetSectorShift(*(v11 + 16));
  v16 = fatConstruct(v11, (v11 + 24), 1 << SectorShift);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    *v11 = a1;
    *(v11 + 56) = a2;
    SmallSectorShift = headerGetSmallSectorShift(*(v11 + 16));
    v19 = fatConstruct(v11, (v11 + 32), 1 << SmallSectorShift);
    if (v19)
    {
      v17 = v19;
    }

    else
    {
      storageCreateAtRoot(v11, (v11 + 48));
      v17 = rootStorageInitWrite(v11);
      if (!v17)
      {
        *(v11 + 8) = a4;
        *a3 = v11;
        return v17;
      }
    }

    *v11 = 0;
  }

  closeStg(v11);
  return v17;
}

uint64_t storageCreateAtRoot(uint64_t a1, uint64_t *a2)
{
  *v10 = 0;
  inited = 6;
  if (a1)
  {
    if (a2)
    {
      inited = storageConstruct(a2);
      if (!inited)
      {
        v5 = *a2;
        *v5 = a1;
        *(v5 + 16) = 0;
        TOC = rootStorageGetTOC(a1);
        v7 = tocAddEntry(TOC, v10);
        if (v7)
        {
          inited = v7;
        }

        else
        {
          inited = directoryInitEntry(*v10, "R", 5, a1);
          Index = directoryGetIndex(*v10);
          if (!inited)
          {
            *(v5 + 8) = Index;
            *(v5 + 32) = headerGetSmallStreamCutoff(a1);
            return inited;
          }

          tocInvalidateEntry(TOC, Index);
        }

        storageDestroy(a2);
      }
    }
  }

  return inited;
}

uint64_t tocAddEntry(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8))
  {
    v5 = 1;
    do
    {
      v6 = v5 - 1;
      v7 = directoryGetAtIndex(*a1, v5 - 1);
      if (directoryGetType(v7))
      {
        v6 = -1;
      }
    }

    while (v6 == -1 && v5++ < *(a1 + 8));
    if (v6 != -1)
    {
      goto LABEL_21;
    }

    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
  }

  v9 = v4 >> 7;
  if (v6 % v9)
  {
LABEL_20:
    *(a1 + 8) = v6 + 1;
LABEL_21:
    v17 = directoryGetAtIndex(*a1, v6);
    *a2 = v17;
    directoryConstructEntry(v6, v17);
    return 0;
  }

  if (*a1)
  {
    v10 = *a1;
    v11 = (v10 - sizeOfDirectoryEntry());
    v12 = v9 + *(a1 + 8);
    v13 = sizeOfDirectoryEntry();
    v14 = malloc_type_realloc(v11, (v13 + v13 * v12), 0xFA832EBEuLL);
    if (!v14)
    {
      return 5;
    }

    goto LABEL_19;
  }

  v15 = sizeOfDirectoryEntry();
  v16 = smalloc_typed(v9 + 1, v15, 0x50964541uLL);
  if (v16)
  {
    v14 = v16;
    directoryConstructNilEntry(v16);
LABEL_19:
    *a1 = &v14[sizeOfDirectoryEntry()];
    v6 = *(a1 + 8);
    goto LABEL_20;
  }

  return 5;
}

uint64_t directoryConstructNilEntry(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 80) = 0;
  *(a1 + 8) = -1;
  *(a1 + 84) = 0;
  *(a1 + 92) = xmmword_25D6FDF20;
  *(a1 + 116) = 0;
  *(a1 + 108) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = -1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 88) = 1;
  return 0;
}

uint64_t directoryInitEntry(uint64_t a1, unsigned __int16 *a2, int a3, uint64_t a4)
{
  v8 = _ChWcslen(a2) + 1;
  if (v8 > 0x20)
  {
    return 6;
  }

  *(a1 + 80) = 2 * v8;
  _ChWcscpy((a1 + 16), a2);
  result = 0;
  *(a1 + 84) = a3;
  *a1 = a4;
  return result;
}

uint64_t headerWrite(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x4CuLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 5;
  }

  v5 = v4;
  *v4 = 0xE11AB1A1E011CFD0;
  *(v4 + 8) = *(a2 + 8);
  CsLeWriteUInt16(*(a2 + 24), v4 + 12);
  CsLeWriteUInt16(*(a2 + 26), (v5 + 26));
  CsLeWriteUInt16(*(a2 + 28), (v5 + 28));
  CsLeWriteUInt16(*(a2 + 30), (v5 + 30));
  CsLeWriteUInt16(*(a2 + 32), (v5 + 32));
  v6 = *(a2 + 34);
  *(v5 + 38) = *(a2 + 38);
  *(v5 + 34) = v6;
  CsLeWriteUInt32(*(a2 + 40), (v5 + 40));
  CsLeWriteUInt32(*(a2 + 44), (v5 + 44));
  CsLeWriteUInt32(*(a2 + 48), (v5 + 48));
  CsLeWriteUInt32(*(a2 + 52), (v5 + 52));
  CsLeWriteUInt32(*(a2 + 56), (v5 + 56));
  CsLeWriteUInt32(*(a2 + 60), (v5 + 60));
  CsLeWriteUInt32(*(a2 + 64), (v5 + 64));
  CsLeWriteUInt32(*(a2 + 68), (v5 + 68));
  CsLeWriteUInt32(*(a2 + 72), (v5 + 72));
  if (SsrwFseek(a1))
  {
    free(v5);
    return 4;
  }

  else
  {
    v8 = SsrwFwrite(v5, 76, 1, a1) != 1;
    free(v5);
    return (4 * v8);
  }
}

uint64_t SsrwFwrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && a1 && (v4 = *(a4 + 56)) != 0)
  {
    return v4();
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwMemFwrite(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (__src && a4)
  {
    if ((*(a4 + 40) & 2) != 0)
    {
      v7 = a3;
      v9 = a3 * a2;
      v10 = *(a4 + 16);
      v11 = *(a4 + 8) + a3 * a2;
      if (v10 >= v11)
      {
        v12 = *(a4 + 16);
      }

      else
      {
        v12 = *(a4 + 16);
        do
        {
          LODWORD(v12) = 2 * v12;
          if (v12 <= 1024)
          {
            LODWORD(v12) = 1024;
          }
        }

        while (v12 < v11);
      }

      if (v10 != v12)
      {
        v10 = v12;
        v13 = (*(a4 + 32))(**a4, v12);
        if (v13)
        {
          **a4 = v13;
          *(a4 + 16) = v10;
        }

        else
        {
          v10 = *(a4 + 16);
        }
      }

      v14 = *(a4 + 24);
      v15 = v10 - v14;
      v16 = v9;
      if (v9 > v15)
      {
        v7 = (v15 / a2);
        v9 = v7 * a2;
        v16 = v7 * a2;
      }

      memcpy((**a4 + v14), __src, v9);
      v17 = *(a4 + 24) + v16;
      *(a4 + 24) = v17;
      if (v17 > *(a4 + 8))
      {
        *(a4 + 8) = v17;
      }

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SsrwOOStorage::getInfo(SsrwOOStorage *this)
{
  v4 = 0;
  StorageInfo = getStorageInfo(this->var0, &v4);
  if (!StorageInfo)
  {
    operator new();
  }

  v2 = StorageInfo;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v2;
}

void sub_25D2ED098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10;
  MEMORY[0x25F897000](v12, 0x1020C40285AA8CALL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    freeInfo(a10, 1u);
    free(a10);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5;
  }

  _Unwind_Resume(a1);
}

uint64_t getStorageInfo(uint64_t a1, uint64_t **a2)
{
  if (!a1)
  {
    return 6;
  }

  result = 6;
  if (a2 && *a1)
  {
    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
    if (EntryAtIndex)
    {
      v7 = EntryAtIndex;
      v8 = malloc_type_malloc(0x40uLL, 0x1010040657E6F79uLL);
      *a2 = v8;
      if (v8)
      {
        *(v8 + 2) = 0u;
        *(v8 + 3) = 0u;
        *v8 = 0u;
        *(v8 + 1) = 0u;
        v9 = *a2;

        return directoryFillStgInfo(v7, v9);
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t SsrwOOStorage::setClass(SsrwOOStorage *this, _SsrwOO_GUID *a2)
{
  result = this->var0;
  if (result)
  {
    result = storageSetClass(result, a2);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v3;
    }
  }

  return result;
}

uint64_t storageSetClass(uint64_t a1, _OWORD *a2)
{
  if (!a1 || (*(a1 + 32) - 1) > 1)
  {
    return 6;
  }

  result = rootStorageSetDirty(*a1);
  if (!result)
  {
    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));

    return directorySetClass(EntryAtIndex, a2);
  }

  return result;
}

uint64_t rootStorageSetDirty(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  if ((*(a1 + 56) - 1) > 1)
  {
    return 2;
  }

  if (*(a1 + 104))
  {
    return 0;
  }

  XFatSize = headerGetXFatSize(*(a1 + 16));
  result = fatAddFreeSectors(*(a1 + 24), (a1 + 96), &XFatSize);
  if (!result)
  {
    result = fatAddFatToFreeSectors(*(a1 + 24), *(a1 + 24));
    if (!result)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        fatAddFatToFreeSectors(*(a1 + 24), v3);
      }

      result = fatAddFreeSectors(*(a1 + 24), (a1 + 64), (a1 + 72));
      if (!result)
      {
        *(a1 + 104) = 1;
      }
    }
  }

  return result;
}

void SsrwOOStorage::createStream(SsrwOOStorage *this, unsigned __int16 *a2)
{
  v5 = 0;
  Stream = createStream(this->var0, a2, &v5);
  if (!Stream)
  {
    operator new();
  }

  v3 = Stream;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v3;
}

void sub_25D2ED3E8(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v3;
  MEMORY[0x25F897000](v5, 0x10A1C4083891BCBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    closeStream(va);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5;
  }

  _Unwind_Resume(a1);
}

uint64_t createStream(uint64_t a1, unsigned __int16 *a2, uint64_t *a3)
{
  *v16 = 0;
  v3 = 6;
  if (a1 && a2 && a3 && *a2 && (*(a1 + 32) - 1) <= 1)
  {
    *a3 = 0;
    v7 = rootStorageSetDirty(*a1);
    if (v7)
    {
      return v7;
    }

    TOC = rootStorageGetTOC(*a1);
    v9 = tocAddEntry(TOC, v16);
    if (v9)
    {
      v3 = v9;
    }

    else
    {
      inited = directoryInitEntry(*v16, a2, 2, *a1);
      if (inited || (EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8)), inited = tocInsertChild(TOC, EntryAtIndex, *v16), inited))
      {
        v3 = inited;
        Index = directoryGetIndex(*v16);
        tocInvalidateEntry(TOC, Index);
        return v3;
      }

      v7 = streamConstruct(*a1, a1, *v16, *(a1 + 32), a3);
      if (v7)
      {
        return v7;
      }

      if (*(a1 + 32) == 2 && (v14 = streamUpgradeMiniToRegular(*a3), v14))
      {
        v3 = v14;
      }

      else
      {
        v3 = openListAppend(*(a1 + 24), 2, *a3);
        if (!v3)
        {
          return v3;
        }
      }

      v15 = directoryGetIndex(*v16);
      tocInvalidateEntry(TOC, v15);
    }

    streamDestroy(a3);
  }

  return v3;
}

uint64_t directoryInsertChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 100);
  if (v4 == -1)
  {
    *(a1 + 100) = *(a2 + 12);
    v8 = 1;
LABEL_9:
    result = 0;
    *(a2 + 88) = v8;
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v6 = a3 + 168 * v4;
        v7 = compareNames((v6 + 16), (a2 + 16));
        if (v7 <= 0)
        {
          break;
        }

        v4 = *(v6 + 92);
        if (v4 == -1)
        {
          v8 = 0;
          *(a2 + 8) = *(v6 + 12);
          *(v6 + 92) = *(a2 + 12);
          goto LABEL_9;
        }
      }

      if ((v7 & 0x80000000) == 0)
      {
        return 2;
      }

      v4 = *(v6 + 96);
      if (v4 == -1)
      {
        v8 = 0;
        *(a2 + 8) = *(v6 + 12);
        *(v6 + 96) = *(a2 + 12);
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t SsrwOOStgStream::writeBytes(SsrwOOStgStream *this, uint64_t a2, unsigned int *a3)
{
  result = streamWrite(*(this + 24), a2, a3);
  if (result)
  {
    v4 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v4;
  }

  return result;
}

uint64_t streamWrite(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = 6;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if ((*(a1 + 48) - 1) > 1)
  {
    return result;
  }

  v7 = *(a1 + 56);
  if (*(a1 + 24) < *v7)
  {
    if (v7[3])
    {
      return result;
    }
  }

  result = rootStorageSetDirty(*a1);
  if (result)
  {
    return result;
  }

  v8 = *(a1 + 24);
  if (v8 > **(a1 + 56))
  {
    result = streamResize(a1, v8);
    if (result)
    {
      return result;
    }
  }

  Header = rootStorageGetHeader(*a1);
  SectorShift = headerGetSectorShift(Header);
  v11 = (1 << SectorShift);
  v12 = *(a1 + 24);
  v13 = (v11 - 1) & v12;
  *(a1 + 40) = v13;
  v14 = v11 - v13;
  v15 = 0;
  if (v11 - v13 >= *a3)
  {
    v16 = *a3;
  }

  else
  {
    v16 = v11 - v13;
  }

  if (!v16)
  {
LABEL_29:
    result = 0;
    *a3 = v15;
    return result;
  }

  v17 = SectorShift;
  while (1)
  {
    v18 = v12 >> v17;
    if (*(a1 + 44) != (v12 >> v17))
    {
      v19 = *(a1 + 56);
      if (*(v19 + 16) > v18)
      {
        break;
      }
    }

LABEL_19:
    *(a1 + 44) = v18;
    memcpy((*(a1 + 32) + *(a1 + 40)), (a2 + v15), v16);
    v21 = *(a1 + 40) + v16;
    *(a1 + 40) = v21;
    if (v21 == v11)
    {
      result = streamFlushToDisk(a1);
      v14 = v11;
      if (result)
      {
        *a3 = v15;
        v24 = *(a1 + 56);
        v25 = *v24;
        if (*v24 <= *(a1 + 24))
        {
          v25 = *(a1 + 24);
        }

        *v24 = v25;
        return result;
      }
    }

    else
    {
      v14 -= v16;
    }

    v15 += v16;
    v12 = *(a1 + 24) + v16;
    *(a1 + 24) = v12;
    v22 = *(a1 + 56);
    v23 = *v22;
    if (*v22 <= v12)
    {
      v23 = v12;
    }

    *v22 = v23;
    if (v14 >= *a3 - v15)
    {
      v16 = *a3 - v15;
    }

    else
    {
      v16 = v14;
    }

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  Sector = rootStorageReadSector(*a1, *(*(v19 + 8) + 4 * v18));
  if (Sector)
  {
    memcpy(*(a1 + 32), Sector, v11);
    *(a1 + 40) = *(a1 + 24) & (v11 - 1);
    goto LABEL_19;
  }

  v26 = *a1;

  return rootStorageGetStatus(v26);
}

uint64_t SsrwOOStgStream::setClass(SsrwOOStgStream *this, _SsrwOO_GUID *a2)
{
  result = *(this + 24);
  if (result)
  {
    result = streamSetClass(result, a2);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v3;
    }
  }

  return result;
}

uint64_t streamSetClass(uint64_t a1, _OWORD *a2)
{
  if (!a1 || (*(a1 + 48) - 1) > 1)
  {
    return 6;
  }

  result = rootStorageSetDirty(*a1);
  if (!result)
  {
    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));

    return directorySetClass(EntryAtIndex, a2);
  }

  return result;
}

uint64_t streamFlushToDisk(uint64_t a1)
{
  v19 = 0;
  if (!a1)
  {
    return 6;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  Header = rootStorageGetHeader(*a1);
  v3 = *(a1 + 24) >> headerGetSectorShift(Header);
  v4 = *(a1 + 56);
  if (*(v4 + 16) <= v3)
  {
    result = rootStorageWriteSector(*a1, *(a1 + 32), &v19, 0);
    if (result)
    {
      return result;
    }

    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
    Fat = rootStorageGetFat(*a1);
    v9 = Fat;
    v10 = *(a1 + 56);
    v11 = *(v10 + 16);
    if (v11)
    {
      result = fatUpdate(Fat, *(*(v10 + 8) + 4 * (v11 - 1)), v19);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = directorySetStartSector(EntryAtIndex, v19);
      if (result)
      {
        return result;
      }

      result = fatTerminateChain(v9, v19);
      if (result)
      {
        return result;
      }
    }

    v12 = v19;
    v13 = *(a1 + 56);
    v14 = *(v13 + 20);
    if (v14 <= v3)
    {
      v15 = 0xFFFFFFFFLL;
      if (v14 >= 0)
      {
        v15 = (8 * v14);
      }

      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = 512;
      }

      v17 = *(v13 + 8);
      if (v17)
      {
        v18 = malloc_type_realloc(v17, v16, 0x100004052888210uLL);
      }

      else
      {
        v18 = malloc_type_malloc(v16, 0x100004052888210uLL);
      }

      v13 = *(a1 + 56);
      if (!v18)
      {
        free(*(v13 + 8));
        *(*(a1 + 56) + 8) = 0;
        return 5;
      }

      *(v13 + 8) = v18;
      *(v13 + 20) = v16 >> 2;
    }

    if (*(v13 + 16) <= v3)
    {
      *(v13 + 16) = v3 + 1;
    }

    *(*(v13 + 8) + 4 * v3) = v12;
    goto LABEL_5;
  }

  result = rootStorageRewriteSector(*a1, *(a1 + 32), *(*(v4 + 8) + 4 * v3));
  if (!result)
  {
LABEL_5:
    result = 0;
    *(a1 + 40) = 0xFFFFFFFF00000000;
  }

  return result;
}

uint64_t rootStorageWriteSector(uint64_t a1, const void *a2, _DWORD *a3, int a4)
{
  v12 = 0;
  SectorShift = headerGetSectorShift(*(a1 + 16));
  result = fatNextFreeSector(*(a1 + 24), &v12, a4);
  if (!result)
  {
    v10 = v12;
    if (v12 == *(a1 + 76))
    {
      memcpy(*(a1 + 80), a2, 1 << SectorShift);
      v10 = v12;
    }

    v11 = (v10 + 1) << SectorShift;
    if (SsrwFseek(*a1) || SsrwFwrite(a2, 1 << SectorShift, 1, *a1) != 1)
    {
      return 4;
    }

    else
    {
      *a3 = v12;
      if (v11 < 0x7FFF0001)
      {
        return 0;
      }

      else
      {
        return headerEnsureV4(*(a1 + 16));
      }
    }
  }

  return result;
}

uint64_t fatNextFreeSector(uint64_t a1, unsigned int *a2, int a3)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (v3 == -2)
    {
      *a2 = -1;
      v3 = *(a1 + 16);
    }

    else
    {
      *(a1 + 40) = *(*(a1 + 8) + 4 * v3);
    }

    result = 0;
    *a2 = v3;
    if (!a3 && v3 > 0xFF000000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a2 = -1;
    if (!a3)
    {
LABEL_10:
      *a2 = -1;
      return 2;
    }

    return 6;
  }

  return result;
}

uint64_t fatSetEntry(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 6;
  }

  v4 = *(a1 + 32);
  if (!v4 || !rootStorageGetHeader(v4))
  {
    return 6;
  }

  result = fatEnsureMinSize(a1, a2 + 1);
  if (!result)
  {
    v8 = *(a1 + 8);
    *(v8 + 4 * a2) = a3;
    v9 = *(a1 + 16);
    if (v9 <= a2)
    {
      if (v9 < a2)
      {
        memset((v8 + 4 * v9), 255, 4 * (~v9 + a2) + 4);
      }

      result = 0;
      *(a1 + 16) = a2 + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fatEnsureMinSize(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20) >= a2)
  {
    return 0;
  }

  Header = rootStorageGetHeader(*(a1 + 32));
  SectorShift = headerGetSectorShift(Header);
  v6 = (~(-1 << SectorShift) + 4 * a2) & (-1 << SectorShift);
  v7 = malloc_type_realloc(*(a1 + 8), v6, 0x100004052888210uLL);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  result = 0;
  *(a1 + 8) = v8;
  *(a1 + 20) = v6 >> 2;
  *(a1 + 48) = v6;
  return result;
}

uint64_t streamResize(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 6;
  }

  v4 = streamFlushToDisk(a1);
  if (v4)
  {
    return v4;
  }

  if (**(a1 + 56) == a2)
  {
    return 0;
  }

  v4 = rootStorageSetDirty(*a1);
  if (v4)
  {
    return v4;
  }

  Header = rootStorageGetHeader(*a1);
  TOC = rootStorageGetTOC(*a1);
  EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
  Fat = rootStorageGetFat(*a1);
  SectorShift = headerGetSectorShift(Header);
  v11 = (1 << SectorShift);
  v12 = calcReqdSectors(a2, v11);
  v13 = v12;
  v21 = *(a1 + 24);
  v14 = *(a1 + 56);
  if (*v14 < a2)
  {
    bzero(*(a1 + 32), v11);
    v15 = *(*(a1 + 56) + 16);
    if (v15 < v13)
    {
      v16 = *(*(a1 + 56) + 16);
      while (1)
      {
        *(a1 + 40) = v11;
        *(a1 + 24) = v16 << SectorShift;
        v17 = streamFlushToDisk(a1);
        if (v17)
        {
          break;
        }

        if (v13 == ++v16)
        {
          goto LABEL_23;
        }
      }

      v5 = v17;
      if (v15)
      {
        fatTerminateChain(Fat, *(*(*(a1 + 56) + 8) + 4 * (v15 - 1)));
      }

      fatFreeChain(Fat, *(*(*(a1 + 56) + 8) + 4 * v15));
      *(*(a1 + 56) + 16) = v15;
      *(a1 + 40) = 0;
      goto LABEL_24;
    }

LABEL_23:
    v5 = 0;
    v19 = *(a1 + 56);
    *(v19 + 16) = v13;
    *v19 = a2;
LABEL_24:
    *(a1 + 24) = v21;
    return v5;
  }

  if (v12 >= *(v14 + 16))
  {
    goto LABEL_23;
  }

  if (v12)
  {
    started = fatTerminateChain(Fat, *(*(v14 + 8) + 4 * (v12 - 1)));
  }

  else
  {
    started = directorySetStartSector(EntryAtIndex, -1);
  }

  v5 = started;
  if (!started)
  {
    v4 = fatFreeChain(Fat, *(*(*(a1 + 56) + 8) + 4 * v13));
    if (!v4)
    {
      goto LABEL_23;
    }

    return v4;
  }

  return v5;
}

time_t SsrwTime(time_t *a1)
{
  result = time(0);
  if (a1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t rootStorageWriteMiniSector(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  SectorShift = headerGetSectorShift(*(a1 + 16));
  SmallSectorShift = headerGetSmallSectorShift(*(a1 + 16));
  EntryAtIndex = tocGetEntryAtIndex(*(a1 + 40), 0);
  StreamLength = directoryGetStreamLength(EntryAtIndex);
  result = fatNextFreeSector(*(a1 + 32), &v27, 0);
  if (!result)
  {
    v11 = (1 << SmallSectorShift);
    v23 = 1 << (SectorShift - SmallSectorShift);
    v12 = v27;
    v13 = v27 >> (SectorShift - SmallSectorShift);
    v24 = SectorShift;
    if (v27 * v11 >= ((StreamLength + ~(-1 << SectorShift)) & (-1 << SectorShift)))
    {
      result = fatNextFreeSector(*(a1 + 24), &v27 + 1, 0);
      if (result)
      {
        return result;
      }

      v18 = *(a1 + 92);
      if (v18 == -1)
      {
        result = directorySetStartSector(EntryAtIndex, SHIDWORD(v27));
        if (result)
        {
          return result;
        }

        result = fatTerminateChain(*(a1 + 24), HIDWORD(v27));
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = fatUpdate(*(a1 + 24), v18, HIDWORD(v27));
        if (result)
        {
          return result;
        }
      }

      *(a1 + 92) = HIDWORD(v27);
      v19 = v13 << SectorShift;
      v16 = SectorShift;
      result = directorySetSize(EntryAtIndex, v19 + v11);
      if (result)
      {
        return result;
      }

      v14 = HIDWORD(v27);
      v17 = v23;
    }

    else if (v12 == fatGetLength(*(a1 + 32)))
    {
      v14 = *(a1 + 92);
      HIDWORD(v27) = v14;
      v15 = v13 << v24;
      v16 = v24;
      v17 = v23;
      result = directorySetSize(EntryAtIndex, (((v27 & (v23 - 1)) + 1) << SmallSectorShift) + v15);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v25 = -1;
      v20 = *(a1 + 24);
      StartSector = directoryGetStartSector(EntryAtIndex);
      result = fatGetChain(v20, StartSector, &v25, &v26);
      if (result)
      {
        return result;
      }

      v14 = *(v26 + v13);
      HIDWORD(v27) = v14;
      free(v26);
      v17 = v23;
      v16 = v24;
    }

    v22 = ((v14 + 1) << v16) + ((v27 & (v17 - 1)) << SmallSectorShift);
    if (SsrwFseek(*a1) || SsrwFwrite(a2, v11, 1, *a1) != 1)
    {
      return 4;
    }

    else
    {
      *a3 = v27;
      if (v22 < 0x7FFF0001)
      {
        return 0;
      }

      else
      {
        return headerEnsureV4(*(a1 + 16));
      }
    }
  }

  return result;
}

uint64_t fatGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t fatUpdate(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = fatSetEntry(a1, a2, a3);
  if (!result)
  {
    if (a3 > 0xFFFFFFFB)
    {
      return 0;
    }

    result = fatSetEntry(a1, a3, -2);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fatFreeChain(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xFFFFFFFD)
  {
    fatOrderedMergeChain(a1, *(a1 + 40), a2, (a1 + 40));
  }

  return 0;
}

uint64_t fatOrderedMergeChain(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v4 = a2;
  if (a3 == -2)
  {
    LODWORD(v5) = a2;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = 4294967294;
    v8 = a2;
    v9 = a3;
    do
    {
      v10 = v7;
      v7 = v9;
      if (v9 >= v10)
      {
        v11 = v4;
      }

      else
      {
        v11 = v8;
      }

      if (v9 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 4294967294;
      }

      if (v10 != 4294967294)
      {
        v4 = v11;
      }

      while (v7 > v4)
      {
        v12 = v4;
        v4 = *(v6 + 4 * v4);
      }

      v5 = v7;
      if (v12 != 4294967294)
      {
        *(v6 + 4 * v12) = v7;
        v5 = v8;
      }

      v9 = *(v6 + 4 * v7);
      *(v6 + 4 * v7) = v4;
      v8 = v5;
    }

    while (v9 != -2);
  }

  *a4 = v5;
  return 0;
}

void SsrwOOStorage::createStorage(SsrwOOStorage *this, unsigned __int16 *a2)
{
  v5 = 0;
  v2 = createStorage(this->var0, a2, &v5);
  if (!v2)
  {
    operator new();
  }

  v3 = v2;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v3;
}

uint64_t createStorage(uint64_t a1, unsigned __int16 *a2, uint64_t *a3)
{
  *v17 = 0;
  inited = 6;
  if (a1 && a2 && a3 && *a2 && (*(a1 + 32) - 1) <= 1)
  {
    v7 = rootStorageSetDirty(*a1);
    if (v7)
    {
      return v7;
    }

    v7 = storageConstruct(a3);
    if (v7)
    {
      return v7;
    }

    v9 = *a3;
    v10 = *a1;
    *v9 = *a1;
    *(v9 + 16) = a1;
    TOC = rootStorageGetTOC(v10);
    inited = tocAddEntry(TOC, v17);
    if (inited)
    {
LABEL_17:
      storageDestroy(a3);
      return inited;
    }

    inited = directoryInitEntry(*v17, a2, 1, *a1);
    v12 = *v17;
    if (!inited)
    {
      v13 = directorySetCurrentCreationTime(*v17);
      if (v13)
      {
        inited = v13;
      }

      else
      {
        EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
        inited = tocInsertChild(TOC, EntryAtIndex, *v17);
        Index = directoryGetIndex(*v17);
        v14 = Index;
        if (inited)
        {
          goto LABEL_16;
        }

        *(v9 + 8) = Index;
        *(v9 + 32) = *(a1 + 32);
        inited = openListAppend(*(a1 + 24), 1, *a3);
        if (!inited)
        {
          return inited;
        }
      }

      v12 = *v17;
    }

    v14 = directoryGetIndex(v12);
LABEL_16:
    tocInvalidateEntry(TOC, v14);
    goto LABEL_17;
  }

  return inited;
}

SsrwOOStorage *SsrwOOStorage::close(SsrwOOStorage *this, char a2)
{
  if (this->var0)
  {
    v3 = this;
    this = closeStorage(this);
    if ((a2 & 1) == 0)
    {
      if (this)
      {
        v4 = this;
        exception = __cxa_allocate_exception(4uLL);
        *exception = v4;
      }
    }

    v3->var0 = 0;
  }

  return this;
}

uint64_t closeStorage(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    return closeStorageInternal(a1);
  }

  else
  {
    return 6;
  }
}

uint64_t **SsrwOORootStorage::close(SsrwOORootStorage *this, char a2)
{
  v4 = *(this + 10);
  result = (this + 80);
  if (v4)
  {
    result = closeStructuredStorage(result);
    if ((a2 & 1) == 0)
    {
      if (result)
      {
        v6 = result;
        exception = __cxa_allocate_exception(4uLL);
        *exception = v6;
      }
    }

    *this = 0;
  }

  return result;
}

uint64_t tocWrite(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  Fat = rootStorageGetFat(a2);
  Header = rootStorageGetHeader(a2);
  SectorShift = headerGetSectorShift(Header);
  v7 = 0;
  v8 = (1 << SectorShift);
  v9 = v8 >> 7;
  if (SectorShift != 9)
  {
    v7 = (v9 + *(a1 + 8) - 1) / v9;
  }

  v10 = headerSetNumDirSectors(Header, v7);
  if (v10)
  {
    return v10;
  }

  v11 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v11)
  {
    return 5;
  }

  v12 = v11;
  bzero(v11, v8);
  if (!*(a1 + 8))
  {
LABEL_20:
    v10 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = v9 - 1;
  while (1)
  {
    v17 = directoryGetAtIndex(*a1, v15);
    directoryEntryWrite(v17, v12, &v22 + 1);
    if (++v15 == *(a1 + 8) && (v15 & v16) != 0)
    {
      do
      {
        v19 = directoryGetAtIndex(*a1, v15);
        directoryConstructEntry(v15, v19);
        directoryEntryWrite(v19, v12, &v22 + 1);
        ++v15;
      }

      while ((v15 & v16) != 0);
    }

    if ((v15 & v16) != 0)
    {
      goto LABEL_19;
    }

    v20 = rootStorageWriteSector(a2, v12, &v22, 1);
    if (v20)
    {
      break;
    }

    if (v13)
    {
      v20 = fatUpdate(Fat, v14, v22);
      if (v20)
      {
        break;
      }

      goto LABEL_18;
    }

    headerSetDirectoryStartSector(Header, v22);
    v20 = fatTerminateChain(Fat, v22);
    if (v20)
    {
      break;
    }

LABEL_18:
    v14 = v22;
    HIDWORD(v22) = 0;
    v13 = 1;
LABEL_19:
    if (v15 >= *(a1 + 8))
    {
      goto LABEL_20;
    }
  }

  v10 = v20;
LABEL_23:
  free(v12);
  return v10;
}

uint64_t directoryEntryWrite(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = 0;
  v6 = a2 + *a3;
  v7 = a1 + 16;
  v8 = v6;
  do
  {
    CsLeWriteUInt16(*(v7 + 2 * v5++), v8++);
  }

  while (v5 != 32);
  CsLeWriteUInt16(*(a1 + 80), (v6 + 64));
  *(v6 + 66) = *(a1 + 84);
  *(v6 + 67) = *(a1 + 88);
  CsLeWriteUInt32(*(a1 + 92), (v6 + 68));
  CsLeWriteUInt32(*(a1 + 96), (v6 + 72));
  CsLeWriteUInt32(*(a1 + 100), (v6 + 76));
  CsLeWriteUInt32(*(a1 + 108), (v6 + 80));
  CsLeWriteUInt16(*(a1 + 112), (v6 + 84));
  CsLeWriteUInt16(*(a1 + 114), (v6 + 86));
  *(v6 + 88) = *(a1 + 116);
  CsLeWriteUInt32(*(a1 + 104), (v6 + 96));
  leWriteTime(*(a1 + 128), (v6 + 100));
  leWriteTime(*(a1 + 136), (v6 + 108));
  CsLeWriteUInt32(*(a1 + 144), (v6 + 116));
  leWriteUInt64(*(a1 + 152), (v6 + 120));
  *a3 += 128;
  return 0;
}

uint64_t leWriteTime(int a1, _DWORD *a2)
{
  v5 = 0;
  result = WinFileTimeFromTime_t(a1, &v5);
  v4 = HIDWORD(v5);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t WinFileTimeFromTime_t(int a1, unsigned int *a2)
{
  v2 = 10000 * HIWORD(a1) + ((10000 * a1) >> 16);
  v3 = HIWORD(v2);
  v4 = 1000 * v2 + ((1000 * (10000 * a1)) >> 16);
  v5 = (-27008 * a1) + 0x8000;
  v6 = HIWORD(v5) + v4 + 54590;
  *a2 = v5 & 0xFF80 | (v6 << 16);
  a2[1] = 1000 * v3 + HIWORD(v4) + HIWORD(v6) + 27111902;
  return 0;
}

uint64_t headerSetDirectoryStartSector(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t fatTrimFreeSectorsAtEnd(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 40);
  if (v2 == -2)
  {
    v3 = (a1 + 16);
    v4 = *(a1 + 16);
    if (v4 == -1)
    {
      v5 = -3;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = v2 - 1;
    v6 = -2;
    do
    {
      v7 = v2;
      v2 = *(*(a1 + 8) + 4 * v2);
      if (v2 != -2 && v2 > v7 + 1)
      {
        v6 = v7;
        v5 = v2 - 1;
      }
    }

    while (v2 != -2);
    v3 = (a1 + 16);
    v4 = *(a1 + 16);
    if (v7 == v4 - 1 && v5 < v4 - 1)
    {
      if (v6 != -2)
      {
        *(*(a1 + 8) + 4 * v6) = -2;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 40) = -2;
LABEL_15:
      v4 = v5 + 1;
      *v3 = v5 + 1;
    }
  }

  *a2 = v4;
  return 0;
}

uint64_t fatMarkFreeChain(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v1 = *(a1 + 40);
  if (v1 != -2)
  {
    do
    {
      if (v1 >= *(a1 + 16))
      {
        break;
      }

      v2 = *(a1 + 8);
      v3 = *(v2 + 4 * v1);
      *(v2 + 4 * v1) = -1;
      v1 = v3;
    }

    while (v3 != -2);
  }

  v4 = 0;
  *(a1 + 40) = -2;
  return v4;
}

uint64_t fatWriteMiniFat(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 6;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 6;
  }

  v4 = *(a1 + 40);
  if (v4 != -2)
  {
    do
    {
      if (v4 >= *(a1 + 16))
      {
        break;
      }

      v5 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = -1;
      v4 = v5;
    }

    while (v5 != -2);
  }

  *(a1 + 40) = -2;
  v6 = *(rootStorageGetFat(v2) + 16);
  Header = rootStorageGetHeader(*(a1 + 32));
  SectorShift = headerGetSectorShift(Header);
  v9 = *(a1 + 16);
  result = fatWriteFat(a1, v6);
  if (result)
  {
    return result;
  }

  v11 = (~(-1 << SectorShift) + 4 * v9) >> SectorShift;
  if (v11 < 2)
  {
LABEL_13:
    Fat = rootStorageGetFat(*(a1 + 32));
    result = fatSetEntry(Fat, v6 + v11 - 1, -2);
    if (result)
    {
      return result;
    }

    headerSetSmallFatStartSector(Header, v6);
    headerSetSmallFatSize(Header, v11);
    return 0;
  }

  v12 = v11 - 1;
  v13 = v6;
  while (1)
  {
    v14 = rootStorageGetFat(*(a1 + 32));
    result = fatUpdate(v14, v13, v13 + 1);
    if (result)
    {
      return result;
    }

    ++v13;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }
}

uint64_t fatWriteFat(uint64_t a1, int a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  Header = rootStorageGetHeader(*(a1 + 32));
  SectorShift = headerGetSectorShift(Header);
  v6 = (1 << SectorShift);
  v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  bzero(v7, v6);
  if (*(a1 + 16))
  {
    v9 = 0;
    v10 = v6 >> 2;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    while (1)
    {
      if (SectorShift >= 2)
      {
        v12 = 0;
        v13 = v9;
        v9 += v11;
        v14 = v8;
        while (v13 < *(a1 + 16))
        {
          CsLeWriteUInt32(*(*(a1 + 8) + 4 * v13), v14);
          ++v12;
          ++v13;
          ++v14;
          if (v11 == v12)
          {
            goto LABEL_17;
          }
        }

        v9 = v13;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      if (v12 < v10)
      {
        v15 = &v8[4 * v12];
        v16 = v10 - v12;
        do
        {
          CsLeWriteUInt32(0xFFFFFFFFLL, v15++);
          --v16;
        }

        while (v16);
      }

LABEL_17:
      v17 = rootStorageRewriteSector(*(a1 + 32), v8, a2);
      if (v17)
      {
        break;
      }

      ++a2;
      if (v9 >= *(a1 + 16))
      {
        goto LABEL_19;
      }
    }

    v18 = v17;
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

  free(v8);
  return v18;
}

uint64_t rootStorageRewriteSector(uint64_t a1, _BYTE *a2, int a3)
{
  if (*(a1 + 76) == a3)
  {
    **(a1 + 80) = *a2;
  }

  SectorShift = headerGetSectorShift(*(a1 + 16));
  v7 = (a3 + 1) << SectorShift;
  SsrwFseek(*a1);
  if (SsrwFtell(*a1) != v7 || SsrwFwrite(a2, 1 << SectorShift, 1, *a1) != 1)
  {
    return 4;
  }

  *(a1 + 76) = -1;
  if (v7 < 0x7FFF0001)
  {
    return 0;
  }

  v8 = *(a1 + 16);

  return headerEnsureV4(v8);
}

uint64_t headerSetSmallFatStartSector(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 60) = a2;
  }

  return result;
}

uint64_t fatWriteFatAndXFat(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 6;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 6;
  }

  Header = rootStorageGetHeader(v2);
  SectorShift = headerGetSectorShift(Header);
  v5 = (1 << SectorShift);
  v6 = *(a1 + 16);
  v7 = (v5 - 1);
  v8 = (v7 + 4 * v6) >> SectorShift;
  v9 = (v5 - 4);
  v10 = (v5 - 5);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 > v10;
  }

  if (v11)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = v10 / v9;
    do
    {
      v13 += v8;
      v12 += v14;
      LODWORD(v6) = v14 + v8 + v6;
      LODWORD(v8) = ((v7 + 4 * v6) >> SectorShift) - v13;
      if (v13 <= 0x6D)
      {
        v15 = 109;
      }

      else
      {
        v15 = v13;
      }

      v14 = (v10 + 4 * (v15 - 109)) / v9 - v12;
    }

    while (v8 | v14);
    *(a1 + 16) = v6;
  }

  v18 = smalloc_typed(v13, 4uLL, 0x100004052888210uLL);
  *a1 = v18;
  if (!v18)
  {
    return 5;
  }

  v34 = Header;
  bzero(v18, 4 * v13);
  if (v12)
  {
    v19 = v6 - 1;
    v20 = v12;
    do
    {
      v21 = fatSetEntry(a1, v19, -4);
      if (v21)
      {
        return v21;
      }

      --v19;
    }

    while (--v20);
  }

  if (v13)
  {
    v22 = 0;
    v23 = v6 - (v12 + v13);
    do
    {
      *(*a1 + v22) = v23;
      v21 = fatSetEntry(a1, v23, -3);
      if (v21)
      {
        return v21;
      }

      v22 += 4;
      ++v23;
    }

    while (4 * v13 != v22);
  }

  *(a1 + 24) = v13;
  v24 = v6 - v12;
  v21 = fatWriteFat(a1, v6 - v12 - v13);
  if (v21)
  {
    return v21;
  }

  v25 = malloc_type_malloc(v5, 0x100004052888210uLL);
  if (!v25)
  {
    return 5;
  }

  v26 = v25;
  bzero(v25, v5);
  if (v13 < 0x6E)
  {
LABEL_38:
    free(v26);
    headerSetFatSize(v34, v13);
    headerSetXFatSize(v34, v12);
    if (v12)
    {
      v32 = v24;
    }

    else
    {
      v32 = -1;
    }

    headerSetXFatStartSector(v34, v32);
    return 0;
  }

  v27 = 0;
  v28 = (v5 >> 2) - 1;
  LODWORD(v5) = 109;
  v33 = v24;
  while (1)
  {
    if (v28)
    {
      v5 = v5;
      v29 = 1;
      v30 = v26;
      do
      {
        CsLeWriteUInt32(*(*a1 + 4 * v5++), v30);
        if (v29 >= v28)
        {
          break;
        }

        ++v30;
        ++v29;
      }

      while (v5 < v13);
    }

    v24 = v33;
    CsLeWriteUInt32((v27 + v33 + 1), &v26[4 * v28]);
    v31 = rootStorageRewriteSector(*(a1 + 32), v26, v27 + v33);
    if (v31)
    {
      break;
    }

    ++v27;
    if (v5 >= v13)
    {
      goto LABEL_38;
    }
  }

  v16 = v31;
  free(v26);
  return v16;
}

uint64_t headerSetFatSize(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 44) = a2;
  }

  return result;
}

uint64_t headerSetXFatSize(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

uint64_t headerSetXFatStartSector(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) = a2;
  }

  return result;
}

uint64_t fatGetFatSectors(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *a1;
  }

  if (a3)
  {
    *a3 = *(a1 + 24);
  }

  return 0;
}

uint64_t headerWriteFatSectors(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 0x6D)
  {
    v3 = 109;
  }

  else
  {
    v3 = a3;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = smalloc_typed(v3, 4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return 5;
  }

  v7 = v6;
  v8 = 4 * v3;
  bzero(v6, 4 * v3);
  v9 = v7;
  do
  {
    v10 = *a2++;
    CsLeWriteUInt32(v10, v9++);
    LODWORD(v3) = v3 - 1;
  }

  while (v3);
  if (SsrwFseek(a1))
  {
    free(v7);
    return 4;
  }

  else
  {
    v12 = SsrwFwrite(v7, v8, 1, a1) != 1;
    free(v7);
    return (4 * v12);
  }
}

uint64_t headerWriteSectorFiller(uint64_t a1, uint64_t a2)
{
  v10 = -1;
  v11 = 0;
  v3 = *(a1 + 44);
  v4 = 4 * v3 + 76;
  v5 = *(a1 + 30);
  if ((1 << v5) >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = 1 << v5;
  }

  if (v3 > 0x6D || v4 >= v6)
  {
LABEL_10:
    if (v5 < 0xA)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v8 = 4;
        if (SsrwFwrite(&v11, 4, 1, a2) != 1)
        {
          break;
        }

        v6 += 4;
        if (v6 >= 1 << v5)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v8 = 4;
      if (SsrwFwrite(&v10, 4, 1, a2) != 1)
      {
        break;
      }

      v4 += 4;
      if (v4 >= v6)
      {
        goto LABEL_10;
      }
    }
  }

  return v8;
}

uint64_t SsrwFtruncate(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t rootStorageGetStatus(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

void OCConvertCsException(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 > 1003)
  {
    if (v1 - 1004 < 2)
    {
      goto LABEL_9;
    }

    if (v1 == 1011)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = *a1;
    }

    if (v1 == 8004)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v1 <= 0x11)
    {
      if (((1 << v1) & 0x1EF40) != 0)
      {
LABEL_9:
        v2 = &TCInvalidFileFormatMessage;
        goto LABEL_10;
      }

      if (((1 << v1) & 0x20008) != 0)
      {
        [TCMessageContext setIsFileStructuredStorage:0];
        goto LABEL_9;
      }

      if (v1 == 5)
      {
        goto LABEL_14;
      }
    }

    if (v1 == 1001)
    {
LABEL_14:
      v2 = &TCOutOfMemoryMessage;
      goto LABEL_10;
    }
  }

  v2 = &TCUnknownProblemMessage;
LABEL_10:
  v3 = [TCMessageException exceptionWithMessage:*v2];
  objc_exception_throw(v3);
}

BOOL WrdParagraphProperties::deleteTabStopFromTabsToBeAdded(WrdParagraphProperties *this, int a2, int a3)
{
  v3 = *(this + 68);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = *(this + 25);
  v6 = a3 + a2;
  v7 = *v5;
  v8 = 0;
  if (a2 - a3 > v7 || v6 < v7)
  {
    while (v3 - 1 != v8)
    {
      v10 = v5[++v8];
      if (a2 - a3 <= v10 && v6 >= v10)
      {
        v12 = v8 < v3;
        goto LABEL_14;
      }
    }

    return 0;
  }

  v12 = 1;
LABEL_14:
  v13 = v3 - 1;
  *(this + 68) = v13;
  if (v13 > v8)
  {
    do
    {
      v14 = (*(this + 25) + 2 * v8);
      v15 = (*(this + 22) + 8 * v8++);
      *v14 = v14[1];
      WrdTabDescriptor::operator=(*v15, v15[1]);
    }

    while (v8 < *(this + 68));
    v5 = *(this + 25);
  }

  v5[v8] = 0;
  *(this + 2) |= 0x100uLL;
  return v12;
}

uint64_t WrdParagraphProperties::findInsertionIndexForTabsToBeDeleted(WrdParagraphProperties *this, int a2)
{
  v2 = *(this + 69);
  if (v2 <= 63)
  {
    if (v2 < 1)
    {
      LOWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (*(*(this + 26) + 2 * v3) <= a2)
      {
        if (++v3 >= *(this + 69))
        {
          LOWORD(v3) = *(this + 69);
          return v3;
        }
      }
    }
  }

  else
  {
    LOWORD(v3) = -1;
  }

  return v3;
}

WrdParagraphProperties *WrdParagraphProperties::insertTabStopInTabsToBeDeleted(WrdParagraphProperties *this, int a2, __int16 a3, __int16 a4)
{
  v4 = *(this + 69);
  if (v4 < a2 || v4 >= 64)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  if (v4 > a2)
  {
    LOWORD(v4) = v4 - 1;
    v5 = *(this + 26);
    v6 = *(this + 27);
    do
    {
      v7 = 2 * v4 + 2;
      *(v5 + v7) = *(v5 + 2 * v4);
      *(v6 + v7) = *(v6 + 2 * v4);
      v4 = (v4 - 1);
    }

    while (v4 >= a2);
  }

  v8 = *(this + 27);
  *(*(this + 26) + 2 * a2) = a3;
  *(v8 + 2 * a2) = a4;
  ++*(this + 69);
  *(this + 2) |= 0x100uLL;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setParagraphInTable(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 2uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFFE | a2 & 1;
  return this;
}

void WrdParagraphTextRun::clone(WrdParagraphTextRun *this)
{
  (*(*this->var4 + 24))(this->var4);
  (*(*this->var5 + 24))(this->var5);
  (*(*this->var6 + 24))(this->var6);
  (*(*this->var7 + 24))(this->var7);
  operator new();
}

void sub_25D2EFAB0()
{
  if (v0)
  {
    JUMPOUT(0x25D2EFAB8);
  }

  JUMPOUT(0x25D2EFA48);
}

void sub_25D2EFAE8()
{
  if (v0)
  {
    JUMPOUT(0x25D2EFAF0);
  }

  JUMPOUT(0x25D2EFA4CLL);
}

void sub_25D2EFB20()
{
  if (!v0)
  {
    JUMPOUT(0x25D2EFA78);
  }

  JUMPOUT(0x25D2EFA50);
}

uint64_t WrdParagraphTextRun::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  WrdParagraphProperties::operator=(*(a1 + 24), *(a2 + 24));
  WrdParagraphProperties::operator=(*(a1 + 32), *(a2 + 32));
  WrdTableProperties::operator=(*(a1 + 40), *(a2 + 40));
  WrdTableProperties::operator=(*(a1 + 48), *(a2 + 48));
  return a1;
}

WrdParagraphProperties *WrdParagraphProperties::setTableTrailerParagraph(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 4uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFFD | (2 * (a2 & 1));
  return this;
}

void WrdTapParser::applySprm(WrdBaseParser *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, _WORD *a6)
{
  if (*a3 != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    v206 = 2002;
    goto LABEL_533;
  }

  v7 = a4;
  if (a4 >= a5 || (SizeOfSPRMParameter = WrdProperty::getSizeOfSPRMParameter(a3), *a6 = SizeOfSPRMParameter, SizeOfSPRMParameter) && SizeOfSPRMParameter != 0xFFFF && (!v7 || a5 - v7 < SizeOfSPRMParameter))
  {
LABEL_532:
    exception = __cxa_allocate_exception(4uLL);
    v206 = 1004;
LABEL_533:
    *exception = v206;
  }

  v209 = 0;
  v13 = *(a3 + 8);
  if (v13 <= 0xD604)
  {
    if (*(a3 + 8) <= 0x5663u)
    {
      if (*(a3 + 8) <= 0x3614u)
      {
        if (*(a3 + 8) <= 0x347Bu)
        {
          if (*(a3 + 8) > 0x3464u)
          {
            if (v13 == 13413)
            {
              if (v7)
              {
                v161 = *v7;

                WrdTableProperties::setDoNotAllowOverlap(a2, v161);
                return;
              }

              v207 = "applySprm with bad TFNoAllowOverlap data size\n";
              v208 = 740;
              goto LABEL_531;
            }

            if (v13 != 13414)
            {
              return;
            }
          }

          else if (v13 != 13315)
          {
            if (v13 != 13316)
            {
              return;
            }

            if (v7)
            {
              v29 = *v7;

              WrdTableProperties::setTableHeader(a2, v29);
              return;
            }

            v207 = "applySprm with bad TTableHeader data size\n";
            v208 = 623;
            goto LABEL_531;
          }

          if (v7)
          {
            v39 = *v7;

            WrdTableProperties::setCantSplit(a2, v39);
            return;
          }

          v207 = "applySprm with bad TFCantSplit data size\n";
          v208 = 365;
          goto LABEL_531;
        }

        if (*(a3 + 8) <= 0x3487u)
        {
          if (v13 == 13436)
          {
            if (v7)
            {
              v176 = *v7;

              WrdTableProperties::setVerticalCellAlignment(a2, v176);
              return;
            }

            v207 = "applySprm with bad 0x347C data size\n";
            v208 = 966;
          }

          else
          {
            if (v13 != 13437)
            {
              return;
            }

            if (v7)
            {
              v45 = *v7;

              WrdTableProperties::setDoNotWrapText(a2, v45);
              return;
            }

            v207 = "applySprm with bad 0x347D data size\n";
            v208 = 1032;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x3488u:
              if (v7)
              {
                v164 = *v7;

                WrdTableProperties::setNumberOfRowsInRowBand(a2, v164);
                return;
              }

              v207 = "applySprm with bad 0x3488 data size\n";
              v208 = 1072;
              break;
            case 0x3489u:
              if (v7)
              {
                v180 = *v7;

                WrdTableProperties::setNumberOfColumnsInColumnBand(a2, v180);
                return;
              }

              v207 = "applySprm with bad 0x3489 data size\n";
              v208 = 1080;
              break;
            case 0x360Du:
              if (v7)
              {
                v16 = *v7;
                if ((v16 & 0x30) != 0x30)
                {
                  WrdTableProperties::setVerticalPosition(a2, (v16 & 0x30) >> 4);
                }

                if ((~v16 & 0xC0) != 0)
                {

                  WrdTableProperties::setHorizontalPosition(a2, v16 >> 6);
                }

                return;
              }

              v207 = "applySprm with bad TPc data size\n";
              v208 = 748;
              break;
            default:
              return;
          }
        }
      }

      else if (*(a3 + 8) > 0x560Au)
      {
        if (*(a3 + 8) <= 0x5623u)
        {
          if (v13 == 22027)
          {
            if (v7 && (a5 - v7) > 1)
            {
              v184 = CsLeReadUInt16(v7) != 0;

              WrdTableProperties::setBiDirectional(a2, v184);
              return;
            }

            v207 = "applySprm with bad TFBiDi80 data size\n";
            v208 = 355;
          }

          else
          {
            if (v13 != 22050)
            {
              return;
            }

            if (v7 && (a5 - v7) > 1)
            {
              v61 = *v7;
              v62 = v7[1] - v61;

              WrdTableProperties::deleteCells(a2, v61, v62);
              return;
            }

            v207 = "applySprm with bad TDelete data size\n";
            v208 = 245;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x5624u:
              if (v7 && (a5 - v7) > 1)
              {
                v167 = *v7;
                v168 = v7[1];
                TableCellDescriptorReference = WrdTableProperties::getTableCellDescriptorReference(a2, v167);
                WrdTableCellDescriptor::setIsFirstInRangeOfMergedCells(TableCellDescriptorReference, 1);
                while (1)
                {
                  LOBYTE(v167) = v167 + 1;
                  if (v168 <= v167)
                  {
                    break;
                  }

                  v170 = WrdTableProperties::getTableCellDescriptorReference(a2, v167);
                  WrdTableCellDescriptor::setIsMergedWithPrecedingCell(v170, 1);
                }

                return;
              }

              v207 = "applySprm with bad TMerge data size\n";
              v208 = 405;
              break;
            case 0x5625u:
              if (v7 && (a5 - v7) > 1)
              {
                v188 = *v7;
                v189 = v7[1];
                if (v188 < v189)
                {
                  do
                  {
                    v190 = WrdTableProperties::getTableCellDescriptorReference(a2, v188);
                    WrdTableCellDescriptor::setIsFirstInRangeOfMergedCells(v190, 0);
                    v191 = WrdTableProperties::getTableCellDescriptorReference(a2, v188);
                    WrdTableCellDescriptor::setIsMergedWithPrecedingCell(v191, 0);
                    ++v188;
                  }

                  while (v189 > v188);
                }

                return;
              }

              v207 = "applySprm with bad TSplit data size\n";
              v208 = 567;
              break;
            case 0x563Au:
              if (v7 && (a5 - v7) > 1)
              {
                UInt16 = CsLeReadUInt16(v7);

                WrdTableProperties::setTableStyleIndex(a2, UInt16);
                return;
              }

              v207 = "applySprm with bad 0x563A data size\n";
              v208 = 958;
              break;
            default:
              return;
          }
        }
      }

      else if (*(a3 + 8) <= 0x3662u)
      {
        if (v13 == 13845)
        {
          if (v7)
          {
            v182 = *v7;

            WrdTableProperties::setAutoFit(a2, v182);
            return;
          }

          v207 = "applySprm with bad TFAutoFit data size\n";
          v208 = 901;
        }

        else
        {
          if (v13 != 13849)
          {
            return;
          }

          if (v7)
          {
            v59 = *v7;

            WrdTableProperties::setKeepWithFollowing(a2, v59);
            return;
          }

          v207 = "applySprm with bad TFKeepFollow data size\n";
          v208 = 724;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x3663u:
            if (v7)
            {
              v165 = *v7;

              WrdTableProperties::setNeverBeenAutoFit(a2, v165);
              return;
            }

            v207 = "applySprm with bad TFNeverBeenAutofit data size\n";
            v208 = 732;
            break;
          case 0x5400u:
            if (v7 && (a5 - v7) > 1)
            {
              v186 = CsLeReadUInt16(v7);

              WrdTableProperties::setJustification(a2, v186);
              return;
            }

            v207 = "applySprm with bad TJc data size\n";
            v208 = 396;
            break;
          case 0x548Au:
            if (v7 && (a5 - v7) > 1)
            {
              v14 = CsLeReadUInt16(v7);

              WrdTableProperties::setTableAlignment(a2, v14);
              return;
            }

            v207 = "applySprm with bad 0x548A data size\n";
            v208 = 978;
            break;
          default:
            return;
        }
      }

      goto LABEL_531;
    }

    if (*(a3 + 8) <= 0x9406u)
    {
      if (*(a3 + 8) <= 0x7620u)
      {
        if (*(a3 + 8) > 0x740Bu)
        {
          if (v13 == 29708)
          {
            v93 = "Unimplemented sprm code 0x740C\n";
            v94 = 375;
LABEL_462:

            ChLogFunction(v93, 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdTapParser.cpp", v94);
            return;
          }

          if (v13 != 29817)
          {
            return;
          }

          if (v7)
          {
            v40 = *v7;

            WrdTableProperties::setTableRevisionSaveID(a2, v40);
            return;
          }

          v207 = "applySprm with bad 0x7479 data size\n";
          v208 = 1114;
        }

        else if (v13 == 22116)
        {
          if (v7 && (a5 - v7) > 1)
          {
            v160 = CsLeReadUInt16(v7) != 0;

            WrdTableProperties::setRightToLeft(a2, v160);
            return;
          }

          v207 = "applySprm with bad TFBiDi data size\n";
          v208 = 346;
        }

        else
        {
          if (v13 != 29706)
          {
            return;
          }

          if (v7 && (a5 - v7) > 3)
          {
            TableAutoformatLookSpecifierReference = WrdTableProperties::getTableAutoformatLookSpecifierReference(a2);

            WrdTapParser::parseTableAutoformatLookSpecifier(TableAutoformatLookSpecifierReference, TableAutoformatLookSpecifierReference, v7);
            return;
          }

          v207 = "applySprm with bad TTlp data size\n";
          v208 = 650;
        }
      }

      else if (*(a3 + 8) <= 0x7626u)
      {
        if (v13 == 30241)
        {
          if (v7 && (a5 - v7) > 3)
          {
            v177 = *v7;
            v178 = v7[1];
            SInt16 = CsLeReadSInt16(v7 + 1);

            WrdTableProperties::insertCells(a2, v177, v178, SInt16);
            return;
          }

          v207 = "applySprm with bad TInsert data size\n";
          v208 = 381;
        }

        else
        {
          if (v13 != 30243)
          {
            return;
          }

          if (v7 && (a5 - v7) > 3)
          {
            v46 = *v7;
            v47 = v7[1];
            if (*(a2 + 344) < v47)
            {
              WrdTableProperties::setNumberOfCellsForRow(a2, v7[1]);
            }

            v48 = CsLeReadSInt16(v7 + 1);
            PositionOfCell = WrdTableProperties::getPositionOfCell(a2, v47);
            v50 = WrdTableProperties::getPositionOfCell(a2, v46);
            if (v46 < v47)
            {
              v51 = v46;
              do
              {
                v52 = WrdTableProperties::getPositionOfCell(a2, v51);
                v53 = (v51 + 1);
                WrdTableProperties::setPositionOfCell(a2, v53, v52 + v48);
                v54 = WrdTableProperties::getTableCellDescriptorReference(a2, v51);
                WrdTableCellDescriptor::setWidth(v54, v48);
                v55 = WrdTableProperties::getTableCellDescriptorReference(a2, v51);
                WrdTableCellDescriptor::setWidthUnit(v55, 3);
                ++v51;
              }

              while (v53 < v47);
            }

            v56 = v47 + 1;
            if (*(a2 + 344) >= (v47 + 1))
            {
              v57 = v48 * (v47 - v46) - PositionOfCell + v50;
              do
              {
                v58 = WrdTableProperties::getPositionOfCell(a2, v56);
                WrdTableProperties::setPositionOfCell(a2, v56++, v57 + v58);
              }

              while (*(a2 + 344) >= v56);
            }

            return;
          }

          v207 = "applySprm with bad TDxaCol data size\n";
          v208 = 271;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x7627u:
            if (v7 && (a5 - v7) > 1)
            {
              operator new();
            }

            v207 = "applySprm with bad TSetShd80 data size\n";
            v208 = 485;
            break;
          case 0x7628u:
            if (v7 && (a5 - v7) > 1)
            {
              operator new();
            }

            v207 = "applySprm with bad TSetShdOdd80 data size\n";
            v208 = 501;
            break;
          case 0x7629u:
            if (v7 && (a5 - v7) > 3)
            {
              v17 = *v7;
              v18 = v7[1];
              v19 = CsLeReadUInt16(v7 + 1);
              if (v17 < v18)
              {
                v20 = v19;
                v21 = (v19 >> 4) & 1;
                v22 = (v19 >> 8) & 1;
                do
                {
                  v23 = WrdTableProperties::getTableCellDescriptorReference(a2, v17);
                  WrdTableCellDescriptor::setVerticalTextFlow(v23, v20 & 1);
                  v24 = WrdTableProperties::getTableCellDescriptorReference(a2, v17);
                  WrdTableCellDescriptor::setBottomToTopTextFlow(v24, v21);
                  v25 = WrdTableProperties::getTableCellDescriptorReference(a2, v17);
                  WrdTableCellDescriptor::setRotateFont(v25, v22);
                  ++v17;
                }

                while (v18 > v17);
              }

              return;
            }

            v207 = "applySprm with bad TTextFlow data size\n";
            v208 = 631;
            break;
          default:
            return;
        }
      }

      goto LABEL_531;
    }

    if (*(a3 + 8) <= 0x941Du)
    {
      if (*(a3 + 8) <= 0x940Eu)
      {
        if (v13 == 37895)
        {
          if (v7 && (a5 - v7) > 1)
          {
            v183 = CsLeReadSInt16(v7);

            WrdTableProperties::setRowHeight(a2, v183);
            return;
          }

          v207 = "applySprm with bad TDyaRowHeight data size\n";
          v208 = 338;
        }

        else
        {
          if (v13 != 37902)
          {
            return;
          }

          if (v7 && (a5 - v7) > 1)
          {
            v60 = CsLeReadSInt16(v7);

            WrdTableProperties::setAbsoluteHorizontalPosition(a2, v60);
            return;
          }

          v207 = "applySprm with bad TDxaAbs data size\n";
          v208 = 853;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x940Fu:
            if (v7 && (a5 - v7) > 1)
            {
              v166 = CsLeReadSInt16(v7);

              WrdTableProperties::setAbsoluteVerticalPosition(a2, v166);
              return;
            }

            v207 = "applySprm with bad TDyaAbs data size\n";
            v208 = 877;
            break;
          case 0x9410u:
            if (v7 && (a5 - v7) > 1)
            {
              v187 = CsLeReadUInt16(v7);

              WrdTableProperties::setLeftDistanceFromText(a2, v187);
              return;
            }

            v207 = "applySprm with bad TDxaFromText data size\n";
            v208 = 861;
            break;
          case 0x9411u:
            if (v7 && (a5 - v7) > 1)
            {
              v15 = CsLeReadUInt16(v7);

              WrdTableProperties::setTopDistanceFromText(a2, v15);
              return;
            }

            v207 = "applySprm with bad TDyaFromText data size\n";
            v208 = 885;
            break;
          default:
            return;
        }
      }

      goto LABEL_531;
    }

    if (*(a3 + 8) <= 0x9600u)
    {
      if (v13 == 37918)
      {
        if (v7 && (a5 - v7) > 1)
        {
          v185 = CsLeReadUInt16(v7);

          WrdTableProperties::setRightDistanceFromText(a2, v185);
          return;
        }

        v207 = "applySprm with bad TDxaFromTextRight data size\n";
        v208 = 869;
      }

      else
      {
        if (v13 != 37919)
        {
          return;
        }

        if (v7 && (a5 - v7) > 1)
        {
          v63 = CsLeReadUInt16(v7);

          WrdTableProperties::setBottomDistanceFromText(a2, v63);
          return;
        }

        v207 = "applySprm with bad TDyaFromTextBottom data size\n";
        v208 = 893;
      }

      goto LABEL_531;
    }

    if (v13 == 38401)
    {
      if (v7 && (a5 - v7) > 1)
      {
        v171 = CsLeReadUInt16(v7);
        v172 = WrdTableProperties::getPositionOfCell(a2, 0);
        if (*(a2 + 344) >= 1)
        {
          v173 = 0;
          v174 = v171 - v172 - *(a2 + 296);
          do
          {
            v175 = WrdTableProperties::getPositionOfCell(a2, v173);
            WrdTableProperties::setPositionOfCell(a2, v173++, v174 + v175);
          }

          while (*(a2 + 344) > v173);
        }

        return;
      }

      v207 = "applySprm with bad TDxaLeft data size\n";
      v208 = 321;
      goto LABEL_531;
    }

    if (v13 == 38402)
    {
      if (v7 && (a5 - v7) > 1)
      {
        v192 = CsLeReadUInt16(v7);
        v193 = WrdTableProperties::getPositionOfCell(a2, 0);
        WrdTableProperties::setPositionOfCell(a2, 0, v193 - v192 + *(a2 + 296));

        WrdTableProperties::setHalfOfGapBetweenTextInAdjColOfTableRow(a2, v192);
        return;
      }

      v207 = "applySprm with bad TDxaGapHalf data size\n";
      v208 = 301;
      goto LABEL_531;
    }

    if (v13 != 54399)
    {
      return;
    }

    TopBorderReference = WrdTableProperties::getTopBorderReference(a2);
    goto LABEL_452;
  }

  if (*(a3 + 8) > 0xD65Fu)
  {
    if (*(a3 + 8) <= 0xD682u)
    {
      if (*(a3 + 8) <= 0xD670u)
      {
        if (*(a3 + 8) > 0xD666u)
        {
          if (v13 != 54887)
          {
            if (v13 == 54896 && *(a2 + 344) >= 1)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                if (v41 >= *(a3 + 13))
                {
                  break;
                }

                v43 = WrdTableProperties::getTableCellDescriptorReference(a2, v42);
                ShadingReference = WrdTableCellDescriptor::getShadingReference(v43);
                WrdBaseParser::parseBuffer(a1, ShadingReference, v7, a5);
                if (v42 > 0x14)
                {
                  break;
                }

                v7 += 10;
                ++v42;
                v41 += 10;
              }

              while (*(a2 + 344) > v42);
            }

            return;
          }

          if (v7 && (a5 - v7) > 2)
          {
            WrdTableProperties::setRevisionMark(a2, *v7 == 1);
            v162 = CsLeReadUInt16((v7 + 1));
            WrdTableProperties::setAuthorIDForRevision(a2, v162);
            DttmRevisionMarkReference = WrdTableProperties::getDttmRevisionMarkReference(a2);

            WrdBaseParser::parseBuffer(a1, DttmRevisionMarkReference, v7 + 3, a5);
            return;
          }

          v207 = "applySprm with bad 0xD667 data size\n";
          v208 = 1088;
          goto LABEL_531;
        }

        if (v13 != 54880)
        {
          if (v13 != 54882)
          {
            return;
          }

          v31 = *(a2 + 344);
          if (v31 >= *(a3 + 13) >> 2)
          {
            v31 = *(a3 + 13) >> 2;
          }

          if (!v31)
          {
            return;
          }

          if (v7 && a5 - v7 >= (4 * v31))
          {
            v32 = v31;
            if (v31 >= 1)
            {
              v33 = 0;
              do
              {
                v34 = WrdTableProperties::getTableCellDescriptorReference(a2, v33);
                *(v34 + 8) |= 0x800u;
                v35 = WrdTableProperties::getTableCellDescriptorReference(a2, v33);
                *(WrdTableCellDescriptor::getTopBorderReference(v35) + 16) = *v7;
                v36 = WrdTableProperties::getTableCellDescriptorReference(a2, v33);
                *(WrdTableCellDescriptor::getLeftBorderReference(v36) + 16) = v7[1];
                v37 = WrdTableProperties::getTableCellDescriptorReference(a2, v33);
                *(WrdTableCellDescriptor::getBottomBorderReference(v37) + 16) = v7[2];
                v38 = WrdTableProperties::getTableCellDescriptorReference(a2, v33);
                *(WrdTableCellDescriptor::getRightBorderReference(v38) + 16) = v7[3];
                v7 += 4;
                ++v33;
              }

              while (v32 != v33);
            }

            return;
          }

          v207 = "applySprm with bad TCellBrcType data size\n";
          v208 = 804;
          goto LABEL_531;
        }

LABEL_203:
        v69 = WrdTableProperties::getShadingReference(a2);

        WrdBaseParser::parseBuffer(a1, v69, v7, a5);
        return;
      }

      if (*(a3 + 8) <= 0xD67Fu)
      {
        if (v13 == 54897)
        {
          if (*(a2 + 344) >= 23)
          {
            v194 = 0;
            v195 = 22;
            do
            {
              if (v194 >= *(a3 + 13))
              {
                break;
              }

              v196 = WrdTableProperties::getTableCellDescriptorReference(a2, v195);
              v197 = WrdTableCellDescriptor::getShadingReference(v196);
              WrdBaseParser::parseBuffer(a1, v197, v7, a5);
              if (v195 > 0x2A)
              {
                break;
              }

              v7 += 10;
              ++v195;
              v194 += 10;
            }

            while (*(a2 + 344) > v195);
          }
        }

        else if (v13 == 54898 && *(a2 + 344) >= 45)
        {
          v64 = 44;
          v65 = 44;
          do
          {
            if (10 * v64 - 440 >= *(a3 + 13))
            {
              break;
            }

            v66 = WrdTableProperties::getTableCellDescriptorReference(a2, v65);
            v67 = WrdTableCellDescriptor::getShadingReference(v66);
            WrdBaseParser::parseBuffer(a1, v67, v7, a5);
            v7 += 10;
            v64 = ++v65;
          }

          while (v65 < *(a2 + 344));
        }

        return;
      }

      if (v13 == 54912)
      {
        TopBorderReference = WrdTableProperties::getBottomBorderReference(a2);
      }

      else if (v13 == 54913)
      {
        TopBorderReference = WrdTableProperties::getLeftBorderReference(a2);
      }

      else
      {
        TopBorderReference = WrdTableProperties::getRightBorderReference(a2);
      }
    }

    else
    {
      if (*(a3 + 8) > 0xF613u)
      {
        if (*(a3 + 8) <= 0xF617u)
        {
          if (v13 == 62996)
          {
            if (v7 && (a5 - v7) > 2)
            {
              WrdTableProperties::setPreferredTableWidthUnit(a2, *v7);
              v198 = CsLeReadSInt16((v7 + 1));

              WrdTableProperties::setPreferredTableWidth(a2, v198);
              return;
            }

            v207 = "applySprm with bad TTableWidth data size\n";
            v208 = 909;
          }

          else
          {
            if (v13 != 62999)
            {
              return;
            }

            if (v7 && (a5 - v7) > 2)
            {
              WrdTableProperties::setWidthOfInvisibleCellBeforeUnit(a2, *v7);
              v68 = CsLeReadSInt16((v7 + 1));

              WrdTableProperties::setWidthOfInvisibleCellBefore(a2, v68);
              return;
            }

            v207 = "applySprm with bad TWidthBefore data size\n";
            v208 = 933;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xF618u:
              if (v7 && (a5 - v7) > 2)
              {
                WrdTableProperties::setWidthOfInvisibleCellAfterUnit(a2, *v7);
                v181 = CsLeReadSInt16((v7 + 1));

                WrdTableProperties::setWidthOfInvisibleCellAfter(a2, v181);
                return;
              }

              v207 = "applySprm with bad TWidthAfter data size\n";
              v208 = 921;
              break;
            case 0xF636u:
              if (v7 && (a5 - v7) > 2)
              {
                v199 = *v7;
                v200 = v7[1];
                if (v199 < v200)
                {
                  do
                  {
                    v201 = WrdTableProperties::getTableCellDescriptorReference(a2, v199);
                    WrdTableCellDescriptor::setFitText(v201, v7[2]);
                    ++v199;
                  }

                  while (v200 > v199);
                }

                return;
              }

              v207 = "applySprm with bad TFitText data size\n";
              v208 = 711;
              break;
            case 0xF661u:
              if (v7 && (a5 - v7) > 2)
              {
                WrdTableProperties::setWidthIndentUnit(a2, *v7);
                v28 = CsLeReadSInt16((v7 + 1));

                WrdTableProperties::setWidthIndent(a2, v28);
                return;
              }

              v207 = "applySprm with bad TWidthIndent data size\n";
              v208 = 945;
              break;
            default:
              return;
          }
        }

        goto LABEL_531;
      }

      if (*(a3 + 8) <= 0xD684u)
      {
        if (v13 == 54915)
        {
          TopBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(a2);
        }

        else
        {
          TopBorderReference = WrdTableProperties::getInnerVerticalBorderReference(a2);
        }
      }

      else
      {
        switch(v13)
        {
          case 0xD685u:
            TopBorderReference = WrdTableProperties::getDiagonalDownBorderReference(a2);
            break;
          case 0xD686u:
            TopBorderReference = WrdTableProperties::getDiagonalUpBorderReference(a2);
            break;
          case 0xD687u:
            goto LABEL_203;
          default:
            return;
        }
      }
    }

LABEL_452:
    DiagonalUpBorderReference = TopBorderReference;
    v159 = a1;
    v134 = v7;
LABEL_453:

    WrdBaseParser::parseBuffer(v159, DiagonalUpBorderReference, v134, a5);
    return;
  }

  switch(*(a3 + 8))
  {
    case 0xD605:
      *(a2 + 24) |= 0x8000000u;
      v104 = WrdTableProperties::getTopBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, v104, v7, a5);
      LeftBorderReference = WrdTableProperties::getLeftBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, LeftBorderReference, v7 + 2, a5);
      BottomBorderReference = WrdTableProperties::getBottomBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, BottomBorderReference, v7 + 4, a5);
      RightBorderReference = WrdTableProperties::getRightBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, RightBorderReference, v7 + 6, a5);
      InnerHorizontalBorderReference = WrdTableProperties::getInnerHorizontalBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, InnerHorizontalBorderReference, v7 + 8, a5);
      InnerVerticalBorderReference = WrdTableProperties::getInnerVerticalBorderReference(a2);
      v110 = (v7 + 20);
      goto LABEL_291;
    case 0xD606:
      v93 = "Unimplemented sprm code 0xD606\n";
      v94 = 157;
      goto LABEL_462;
    case 0xD608:
      *a6 = *(a3 + 13) | (*v7 << 8);
      if (v7 + 1 >= a5)
      {
        v93 = "applySprm with bad data size-- skipping\n";
        v94 = 123;
        goto LABEL_462;
      }

      WrdTableProperties::setNumberOfCellsForRow(a2, v7[1]);
      v116 = (v7 + 2);
      v117 = *(a2 + 344);
      if ((v117 & 0x80000000) == 0 && v7 + 4 <= a5)
      {
        v118 = 0;
        v119 = v7 + 6;
        do
        {
          v120 = CsLeReadUInt16(v119 - 2);
          WrdTableProperties::setPositionOfCell(a2, v118++, v120);
          v121 = v119 + 2;
          v122 = *(a2 + 344) < v118 || v119 > a5;
          v119 += 2;
        }

        while (!v122);
        v117 = *(a2 + 344);
        v116 = (v121 - 4);
      }

      v123 = *a6;
      v124 = v123 - 2 * v117 - 4;
      if ((v123 - 2 * v117 - 4) >= 0x14u)
      {
        v125 = 0;
        do
        {
          if (*(a2 + 344) <= v125)
          {
            break;
          }

          v126 = WrdTableProperties::getTableCellDescriptorReference(a2, v125);
          WrdTapParser::parsePartOfTableCellDescriptor(a1, v126, v116, a5);
          v116 += 10;
          v124 -= 20;
          ++v125;
        }

        while (v124 > 0x13u);
      }

      return;
    case 0xD609:
      if (*(a2 + 344) >= 1)
      {
        v111 = 0;
        v112 = 0;
        do
        {
          v113 = v112;
          if (v112 >= *(a3 + 13))
          {
            break;
          }

          if ((*(WrdTableProperties::getTableCellDescriptor(a2, v111) + 8) & 1) == 0)
          {
            v114 = WrdTableProperties::getTableCellDescriptorReference(a2, v111);
            v115 = WrdTableCellDescriptor::getShadingReference(v114);
            WrdBaseParser::parseSHD80(a1, v115, v7, a5);
          }

          v7 += 2;
          v112 = v113 + 2;
          ++v111;
        }

        while (*(a2 + 344) > v111);
      }

      return;
    case 0xD60C:
      v135 = *(a2 + 344);
      if (v135 >= 45)
      {
        v136 = 44;
        do
        {
          if (10 * v136 - 440 >= *(a3 + 13))
          {
            break;
          }

          v137 = v135;
          if (v135 < 45)
          {
            v136 = 45;
          }

          else
          {
            v138 = 44;
            do
            {
              v139 = v138;
              v140 = WrdTableProperties::getTableCellDescriptorReference(a2, v138);
              v141 = WrdTableCellDescriptor::getShadingReference(v140);
              WrdBaseParser::parseBuffer(a1, v141, v7, a5);
              v7 += 10;
              v138 = v139 + 1;
              v137 = *(a2 + 344);
            }

            while (v137 > (v139 + 1));
            LOWORD(v135) = *(a2 + 344);
            v136 = (v139 + 2);
          }
        }

        while (v136 < v137);
      }

      return;
    case 0xD612:
      if (*(a2 + 344) >= 1)
      {
        v89 = 0;
        v90 = 0;
        do
        {
          if (v89 >= *(a3 + 13))
          {
            break;
          }

          v91 = WrdTableProperties::getTableCellDescriptorReference(a2, v90);
          v92 = WrdTableCellDescriptor::getShadingReference(v91);
          WrdBaseParser::parseBuffer(a1, v92, v7, a5);
          if (v90 > 0x14)
          {
            break;
          }

          v7 += 10;
          ++v90;
          v89 += 10;
        }

        while (*(a2 + 344) > v90);
      }

      return;
    case 0xD613:
      *(a2 + 24) |= 0x8000000u;
      v128 = WrdTableProperties::getTopBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v128, v7, a5);
      v129 = WrdTableProperties::getLeftBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v129, v7 + 8, a5);
      v130 = WrdTableProperties::getBottomBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v130, v7 + 16, a5);
      v131 = WrdTableProperties::getRightBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v131, v7 + 24, a5);
      v132 = WrdTableProperties::getInnerHorizontalBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v132, v7 + 32, a5);
      DiagonalUpBorderReference = WrdTableProperties::getInnerVerticalBorderReference(a2);
      v134 = v7 + 40;
      goto LABEL_333;
    case 0xD616:
      if (*(a2 + 344) >= 23)
      {
        v95 = 0;
        v96 = 22;
        do
        {
          if (v95 >= *(a3 + 13))
          {
            break;
          }

          v97 = WrdTableProperties::getTableCellDescriptorReference(a2, v96);
          v98 = WrdTableCellDescriptor::getShadingReference(v97);
          WrdBaseParser::parseBuffer(a1, v98, v7, a5);
          if (v96 > 0x2A)
          {
            break;
          }

          v7 += 10;
          ++v96;
          v95 += 10;
        }

        while (*(a2 + 344) > v96);
      }

      return;
    case 0xD61A:
      if (*(a2 + 344) >= *(a3 + 13) >> 2)
      {
        v76 = *(a3 + 13) >> 2;
      }

      else
      {
        v76 = *(a2 + 344);
      }

      if (v76 >= 1)
      {
        for (i = 0; i != v76; ++i)
        {
          v78 = WrdTableProperties::getTableCellDescriptorReference(a2, i);
          *(v78 + 8) |= 0x80u;
          v79 = WrdTableProperties::getTableCellDescriptorReference(a2, i);
          v80 = WrdTableCellDescriptor::getTopBorderReference(v79);
          WrdBaseParser::parseBuffer(a1, v80 + 1, v7, a5);
          v7 += 4;
        }
      }

      return;
    case 0xD61B:
      if (*(a2 + 344) >= *(a3 + 13) >> 2)
      {
        v99 = *(a3 + 13) >> 2;
      }

      else
      {
        v99 = *(a2 + 344);
      }

      if (v99 >= 1)
      {
        for (j = 0; j != v99; ++j)
        {
          v101 = WrdTableProperties::getTableCellDescriptorReference(a2, j);
          *(v101 + 8) |= 0x100u;
          v102 = WrdTableProperties::getTableCellDescriptorReference(a2, j);
          v103 = WrdTableCellDescriptor::getLeftBorderReference(v102);
          WrdBaseParser::parseBuffer(a1, v103 + 1, v7, a5);
          v7 += 4;
        }
      }

      return;
    case 0xD61C:
      if (*(a2 + 344) >= *(a3 + 13) >> 2)
      {
        v146 = *(a3 + 13) >> 2;
      }

      else
      {
        v146 = *(a2 + 344);
      }

      if (v146 >= 1)
      {
        for (k = 0; k != v146; ++k)
        {
          v148 = WrdTableProperties::getTableCellDescriptorReference(a2, k);
          *(v148 + 8) |= 0x200u;
          v149 = WrdTableProperties::getTableCellDescriptorReference(a2, k);
          v150 = WrdTableCellDescriptor::getBottomBorderReference(v149);
          WrdBaseParser::parseBuffer(a1, v150 + 1, v7, a5);
          v7 += 4;
        }
      }

      return;
    case 0xD61D:
      if (*(a2 + 344) >= *(a3 + 13) >> 2)
      {
        v84 = *(a3 + 13) >> 2;
      }

      else
      {
        v84 = *(a2 + 344);
      }

      if (v84 >= 1)
      {
        for (m = 0; m != v84; ++m)
        {
          v86 = WrdTableProperties::getTableCellDescriptorReference(a2, m);
          *(v86 + 8) |= 0x400u;
          v87 = WrdTableProperties::getTableCellDescriptorReference(a2, m);
          v88 = WrdTableCellDescriptor::getRightBorderReference(v87);
          WrdBaseParser::parseBuffer(a1, v88 + 1, v7, a5);
          v7 += 4;
        }
      }

      return;
    case 0xD620:
      if (v7 && (a5 - v7) > 2)
      {
        operator new();
      }

      v207 = "applySprm with bad TSetBrc80 data size\n";
      v208 = 420;
      break;
    case 0xD626:
      if (v7 && (a5 - v7) > 2)
      {
        operator new();
      }

      v207 = "applySprm with bad TSetBrc10 data size\n";
      v208 = 442;
      break;
    case 0xD62A:
      DiagonalDownBorderReference = WrdTableProperties::getDiagonalDownBorderReference(a2);
      WrdBaseParser::parseBRC80(a1, DiagonalDownBorderReference, v7, a5);
      InnerVerticalBorderReference = WrdTableProperties::getDiagonalUpBorderReference(a2);
      v110 = (v7 + 4);
LABEL_291:

      WrdBaseParser::parseBRC80(a1, InnerVerticalBorderReference, v110, a5);
      return;
    case 0xD62B:
      if (!v7 || (a5 - v7) <= 1)
      {
        v207 = "applySprm with bad TVertMerge data size\n";
        v208 = 675;
        break;
      }

      v151 = *v7;
      v152 = v7[1];
      if (v152 == 3)
      {
        v204 = WrdTableProperties::getTableCellDescriptorReference(a2, *v7);
        WrdTableCellDescriptor::setIsVerticallyMergedCell(v204, 1);
        v202 = WrdTableProperties::getTableCellDescriptorReference(a2, v151);
        v203 = 1;
      }

      else
      {
        if (v152 == 1)
        {
          v153 = WrdTableProperties::getTableCellDescriptorReference(a2, *v7);
          v154 = 1;
        }

        else
        {
          if (v7[1])
          {
            return;
          }

          v153 = WrdTableProperties::getTableCellDescriptorReference(a2, *v7);
          v154 = 0;
        }

        WrdTableCellDescriptor::setIsVerticallyMergedCell(v153, v154);
        v202 = WrdTableProperties::getTableCellDescriptorReference(a2, v151);
        v203 = 0;
      }

      WrdTableCellDescriptor::setIsFirstInSetOfVerticallyMergedCells(v202, v203);
      return;
    case 0xD62C:
      if (v7 && (a5 - v7) > 2)
      {
        v142 = *v7;
        v143 = v7[1];
        if (v142 < v143)
        {
          v144 = v7[2];
          do
          {
            v145 = WrdTableProperties::getTableCellDescriptorReference(a2, v142);
            WrdTableCellDescriptor::setVerticalCellAlignment(v145, v144);
            ++v142;
          }

          while (v143 > v142);
        }

        return;
      }

      v207 = "applySprm with bad TVertAlign data size\n";
      v208 = 659;
      break;
    case 0xD62D:
      if (v7 && (a5 - v7) > 1)
      {
        operator new();
      }

      v207 = "applySprm with bad TSetShd data size\n";
      v208 = 526;
      break;
    case 0xD62E:
      if (v7 && (a5 - v7) > 1)
      {
        operator new();
      }

      v207 = "applySprm with bad TSetShdOdd data size\n";
      v208 = 543;
      break;
    case 0xD62F:
      if (v7 && (a5 - v7) > 2)
      {
        operator new();
      }

      v207 = "applySprm with bad TSetBrc data size\n";
      v208 = 464;
      break;
    case 0xD630:
      v158 = WrdTableProperties::getDiagonalDownBorderReference(a2);
      WrdBaseParser::parseBuffer(a1, v158, v7, a5);
      DiagonalUpBorderReference = WrdTableProperties::getDiagonalUpBorderReference(a2);
      v134 = v7 + 8;
LABEL_333:
      v159 = a1;
      goto LABEL_453;
    case 0xD631:
    case 0xD632:
    case 0xD633:
    case 0xD634:
    case 0xD637:
    case 0xD638:
      if (a5 - v7 > 5)
      {
        WrdTapParser::parseSpacingAndPadding(SizeOfSPRMParameter, v13, a2, v7, &v209);
        return;
      }

      ChLogFunction("applySprm with bad TCellPadding or TCellSpacing data size\n", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdTapParser.cpp", 824);
      exception = __cxa_allocate_exception(4uLL);
      v206 = 1005;
      goto LABEL_533;
    case 0xD635:
      if (v7 && (a5 - v7) > 4)
      {
        v70 = *v7;
        v71 = v7[1];
        v72 = v7[2];
        v73 = CsLeReadSInt16((v7 + 3));
        if (v70 < v71)
        {
          v74 = v73;
          do
          {
            v75 = WrdTableProperties::getTableCellDescriptorReference(a2, v70);
            WrdTableCellDescriptor::setWidthUnit(v75, v72);
            WrdTableCellDescriptor::setWidth(v75, v74);
            ++v70;
          }

          while (v71 > v70);
        }

        return;
      }

      v207 = "applySprm with bad TCellWidth data size\n";
      v208 = 833;
      break;
    case 0xD639:
      if (v7 && (a5 - v7) > 2)
      {
        v155 = *v7;
        v156 = v7[1];
        if (v155 < v156)
        {
          do
          {
            v157 = WrdTableProperties::getTableCellDescriptorReference(a2, v155);
            WrdTableCellDescriptor::setNoWrap(v157, v7[2]);
            ++v155;
          }

          while (v156 > v155);
        }

        return;
      }

      v207 = "applySprm with bad TFCellNoWrap data size\n";
      v208 = 698;
      break;
    case 0xD63E:
      if (v7 && (a5 - v7) > 5)
      {
        if (a5 <= v7 + 2 || (a5 - (v7 + 2)) <= 3)
        {
          goto LABEL_532;
        }

        v81 = v7[2];
        v82 = v7[3];
        v83 = CsLeReadSInt16(v7 + 2);
        if (v81)
        {
          WrdTableProperties::setDefaultCellTopCellPaddingUnit(a2, v82);
          WrdTableProperties::setDefaultCellTopCellPadding(a2, v83);
          if ((v81 & 2) == 0)
          {
LABEL_231:
            if ((v81 & 4) == 0)
            {
              goto LABEL_232;
            }

            goto LABEL_467;
          }
        }

        else if ((v81 & 2) == 0)
        {
          goto LABEL_231;
        }

        WrdTableProperties::setDefaultCellLeftCellPaddingUnit(a2, v82);
        WrdTableProperties::setDefaultCellLeftCellPadding(a2, v83);
        if ((v81 & 4) == 0)
        {
LABEL_232:
          if ((v81 & 8) == 0)
          {
            return;
          }

LABEL_468:
          WrdTableProperties::setDefaultCellRightCellPaddingUnit(a2, v82);

          WrdTableProperties::setDefaultCellRightCellPadding(a2, v83);
          return;
        }

LABEL_467:
        WrdTableProperties::setDefaultCellBottomCellPaddingUnit(a2, v82);
        WrdTableProperties::setDefaultCellBottomCellPadding(a2, v83);
        if ((v81 & 8) == 0)
        {
          return;
        }

        goto LABEL_468;
      }

      v207 = "applySprm with bad 0xD63E data size\n";
      v208 = 989;
      break;
    default:
      return;
  }

LABEL_531:
  ChLogFunction(v207, 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdTapParser.cpp", v208);
  goto LABEL_532;
}

uint64_t WrdTableProperties::getPositionOfCell(WrdTableProperties *this, unsigned int a2)
{
  v2 = *(this + 31);
  if (((*(this + 32) - v2) >> 1) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 2 * a2);
  }
}

WrdTableProperties *WrdTableProperties::setPositionOfCell(WrdTableProperties *this, unsigned int a2, __int16 a3)
{
  v3 = *(this + 31);
  if (((*(this + 32) - v3) & 0x1FFFFFFFELL) != 0)
  {
    *(this + 2) |= 0x4000000000000000uLL;
    *(v3 + 2 * a2) = a3;
  }

  return this;
}

WrdTableProperties *WrdTableProperties::setHalfOfGapBetweenTextInAdjColOfTableRow(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x80000000000uLL;
  *(this + 74) = a2;
  return this;
}

_WORD *WrdTableProperties::setNumberOfCellsForRow(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x2000000000000000uLL;
  *(this + 172) = a2;
  v4 = this + 248;
  *(this + 32) = *(this + 31);
  result = WrdTableProperties::resetTableCellDescriptors(this);
  if (a2 >= 1)
  {
    if (*(this + 172) <= 0)
    {
      v11 = *(this + 32);
    }

    else
    {
      LOWORD(v6) = 0;
      do
      {
        v7 = (*(**(this + 5) + 16))(*(this + 5));
        v14 = v7;
        v8 = *(this + 35);
        if (v8 >= *(this + 36))
        {
          v9 = std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::__emplace_back_slow_path<WrdTableCellDescriptor *>(this + 34, &v14);
        }

        else
        {
          *v8 = v7;
          v9 = (v8 + 1);
        }

        *(this + 35) = v9;
        v13 = 0;
        v10 = *(this + 32);
        if (v10 >= *(this + 33))
        {
          v11 = std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short>(v4, &v13);
        }

        else
        {
          *v10 = 0;
          v11 = v10 + 1;
        }

        *(this + 32) = v11;
        v6 = (v6 + 1);
      }

      while (v6 < *(this + 172));
    }

    v12 = 0;
    if (v11 >= *(this + 33))
    {
      result = std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short>(v4, &v12);
    }

    else
    {
      *v11 = 0;
      result = v11 + 1;
    }

    *(this + 32) = result;
  }

  return result;
}

uint64_t WrdTableProperties::getTableCellDescriptorReference(WrdTableProperties *this, int a2)
{
  v4 = *(this + 172);
  if (v4 <= a2)
  {
    WrdTableProperties::insertCells(this, v4, (a2 - *(this + 172) + 1), 0);
  }

  *(this + 2) |= 0x2000uLL;
  return *(*(this + 34) + 8 * a2);
}

uint64_t WrdTableCellDescriptor::setIsFirstInRangeOfMergedCells(uint64_t this, char a2)
{
  *(this + 8) |= 0x80000000;
  *(this + 130) = *(this + 130) & 0xFFFE | a2 & 1;
  return this;
}

uint64_t WrdTableCellDescriptor::setIsMergedWithPrecedingCell(uint64_t this, char a2)
{
  *(this + 12) |= 1u;
  *(this + 130) = *(this + 130) & 0xFFFD | (2 * (a2 & 1));
  return this;
}

uint64_t WrdTableCellDescriptor::setVerticalTextFlow(uint64_t this, char a2)
{
  *(this + 12) |= 2u;
  *(this + 130) = *(this + 130) & 0xFFFB | (4 * (a2 & 1));
  return this;
}

uint64_t WrdTableCellDescriptor::setBottomToTopTextFlow(uint64_t this, char a2)
{
  *(this + 12) |= 4u;
  *(this + 130) = *(this + 130) & 0xFFF7 | (8 * (a2 & 1));
  return this;
}

uint64_t WrdTableCellDescriptor::setRotateFont(uint64_t this, char a2)
{
  *(this + 12) |= 8u;
  *(this + 130) = *(this + 130) & 0xFFEF | (16 * (a2 & 1));
  return this;
}

uint64_t WrdTableCellDescriptor::setIsVerticallyMergedCell(uint64_t this, char a2)
{
  *(this + 12) |= 0x10u;
  *(this + 130) = *(this + 130) & 0xFFDF | (32 * (a2 & 1));
  return this;
}

uint64_t WrdTableCellDescriptor::setIsFirstInSetOfVerticallyMergedCells(uint64_t this, char a2)
{
  *(this + 12) |= 0x20u;
  *(this + 130) = *(this + 130) & 0xFFBF | ((a2 & 1) << 6);
  return this;
}

uint64_t WrdTableCellDescriptor::setVerticalCellAlignment(uint64_t result, int a2)
{
  *(result + 8) |= 0x1000u;
  *(result + 72) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setWidth(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x400000u;
  *(this + 112) = a2;
  return this;
}

uint64_t WrdFileInformationBlockHeader::isBiDiLanguage(WrdFileInformationBlockHeader *this)
{
  v1 = *this;
  result = 1;
  if (v1 > 7168)
  {
    if (v1 > 12288)
    {
      if (v1 <= 14336)
      {
        v3 = v1 == 12289;
        v4 = 13313;
      }

      else
      {
        v3 = v1 == 14337 || v1 == 15361;
        v4 = 16385;
      }
    }

    else if (v1 <= 9216)
    {
      v3 = v1 == 7169;
      v4 = 8193;
    }

    else
    {
      v3 = v1 == 9217 || v1 == 10241;
      v4 = 11265;
    }

    goto LABEL_34;
  }

  if (v1 <= 2048)
  {
    if (v1 <= 1024)
    {
      if (v1 != 1 && v1 != 13)
      {
        return 0;
      }

      return result;
    }

    if (v1 == 1025 || v1 == 1037)
    {
      return result;
    }

    return 0;
  }

  if (v1 <= 4096)
  {
    if (v1 == 2049 || v1 == 3073)
    {
      return result;
    }

    return 0;
  }

  v3 = v1 == 4097 || v1 == 5121;
  v4 = 6145;
LABEL_34:
  if (!v3 && v1 != v4)
  {
    return 0;
  }

  return result;
}

WrdTableProperties *WrdTableProperties::upgradeToVersion10(WrdTableProperties *this)
{
  v1 = *(this + 6);
  if ((v1 & 1) == 0)
  {
    v2 = *(this + 74);
    v1 |= 1u;
    *(this + 6) = v1;
    *(this + 174) = v2;
  }

  v3 = *(this + 2);
  if ((v3 & 0x100000) != 0)
  {
    if ((v1 & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 |= 0x100000uLL;
    *(this + 2) = v3;
    *(this + 38) = 3;
    if ((v1 & 4) != 0)
    {
LABEL_5:
      if ((v3 & 0x400000) != 0)
      {
        return this;
      }

LABEL_9:
      *(this + 2) = v3 | 0x400000;
      *(this + 40) = 3;
      return this;
    }
  }

  v4 = *(this + 74);
  *(this + 6) = v1 | 4;
  *(this + 176) = v4;
  if ((v3 & 0x400000) == 0)
  {
    goto LABEL_9;
  }

  return this;
}

void WrdTableProperties::insertCells(WrdTableProperties *this, int a2, int a3, int a4)
{
  if ((a3 | a2 | a4) < 0 || (v6 = *(this + 172), v6 < a2))
  {

    ChLogFunction("WrdTableProperties::insertCells with bad arguments-- skipping\n", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Model/WrdTableProperties.cpp", 1256);
  }

  else
  {
    v7 = a4;
    v8 = a3;
    *(this + 2) |= 0x2000000000000000uLL;
    v9 = (v6 + a3);
    std::vector<short,ChAllocator<short>>::resize(this + 31, v9 + 1);
    v10 = (*(this + 35) - *(this + 34)) >> 3;
    std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::resize(this + 34, v9);
    if (v9 > v10)
    {
      v11 = v10;
      do
      {
        *(*(this + 34) + 8 * v11++) = 0;
      }

      while (v9 != v11);
    }

    v12 = (v8 + a2);
    for (i = (v9 - 1); i >= v12; i = (i - 1))
    {
      v14 = (i - v8);
      *(*(this + 31) + 2 * (i + 1)) = *(*(this + 31) + 2 * (v14 + 1)) + v7 * v8;
      *(*(this + 34) + 8 * i) = *(*(this + 34) + 8 * v14);
    }

    if (v12 > a2)
    {
      v15 = a2;
      v16 = a2 - 1;
      do
      {
        v17 = *(this + 31);
        if (v15 < 1)
        {
          *v17 = 0;
          v17[1] = v7;
          **(this + 34) = (*(**(this + 5) + 16))(*(this + 5));
          v19 = v15;
        }

        else
        {
          v17[v15 + 1] = v17[v15] + v7;
          v18 = *(*(this + 34) + 8 * v16);
          if (!v18)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = 1004;
          }

          v19 = v15;
          *(*(this + 34) + 8 * v15) = (*(*v18 + 16))(v18);
        }

        WrdTableCellDescriptor::setWidth(*(*(this + 34) + 8 * v19), v7);
        WrdTableCellDescriptor::setWidthUnit(*(*(this + 34) + 8 * v19), 3);
        ++v15;
        ++v16;
      }

      while (v12 != v15);
    }

    *(this + 172) = v9;
  }
}

uint64_t WrdTableCellDescriptor::setWidthUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x2000u;
  *(result + 76) = a2;
  return result;
}

void WrdParagraphTextRun::~WrdParagraphTextRun(WrdParagraphTextRun *this)
{
  this->var0 = &unk_286ED53F8;
  var4 = this->var4;
  if (var4)
  {
    (*(*var4 + 8))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    (*(*var5 + 8))(var5);
  }

  this->var5 = 0;
  var6 = this->var6;
  if (var6)
  {
    (*(*var6 + 8))(var6);
  }

  this->var6 = 0;
  var7 = this->var7;
  if (var7)
  {
    (*(*var7 + 8))(var7);
  }

  this->var7 = 0;
}

{
  WrdParagraphTextRun::~WrdParagraphTextRun(this);

  JUMPOUT(0x25F897000);
}

void purgeTextRuns(NSMutableArray *a1)
{
  v5 = a1;
  v1 = [(NSMutableArray *)v5 count];
  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v3 = [(NSMutableArray *)v5 objectAtIndex:i];
      v4 = [v3 pointerValue];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  [(NSMutableArray *)v5 removeAllObjects];
}

void EshMetafileBlip::~EshMetafileBlip(OcBinaryData *this)
{
  this->var0 = &unk_286EC62A0;
  v2 = (this + 72);
  OcBinaryData::~OcBinaryData(this + 4);
  OcBinaryData::~OcBinaryData(v2);
  EshBlip::~EshBlip(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC62A0;
  v2 = (this + 72);
  OcBinaryData::~OcBinaryData(this + 4);
  OcBinaryData::~OcBinaryData(v2);

  EshBlip::~EshBlip(this);
}

void WrdEshShape::~WrdEshShape(WrdEshShape *this)
{
  *this = &unk_286ED4AD8;
  *(this + 52) = &unk_286ED4BA8;
  XlEshShape::cleanup(this);
  EshContentBase::~EshContentBase(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4AD8;
  *(this + 52) = &unk_286ED4BA8;
  XlEshShape::cleanup(this);

  EshContentBase::~EshContentBase(this);
}

uint64_t XlEshShape::cleanup(XlEshShape *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 72) = 0;
  v3 = *(this + 73);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 73) = 0;
  result = *(this + 74);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 74) = 0;
  return result;
}

void sub_25D2F4338(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2F4B4C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D2F5E74(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_25D2F7E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x25D2F7E7CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D2F8DE0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2F9008(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2F9200(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2F9910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WMState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D2F9CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = WBReader;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

uint64_t **WrdParser::closeDoc(WrdParser *this)
{
  result = SsrwOORootStorage::isOpen((this + 24));
  if (result)
  {
    v3 = *(this + 18);
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = v3 + 184 * v5 - 184;
        v7 = -184 * v5;
        do
        {
          v6 = TSURectWithOriginAndSize(v6) - 184;
          v7 += 184;
        }

        while (v7);
      }

      MEMORY[0x25F896FE0](v4, 0x1020C80285AA8CALL);
    }

    *(this + 18) = 0;
    *(this + 2) = 0;
    v8 = *(this + 34);
    if (v8)
    {
      if (*v8)
      {
        MEMORY[0x25F896FE0](*v8, 0x1000C8052888210);
      }

      *v8 = 0;
      MEMORY[0x25F897000](v8, 0x1010C40A1D9428BLL);
    }

    *(this + 34) = 0;
    v9 = *(this + 16);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(this + 16) = 0;
    v10 = *(this + 14);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(this + 14) = 0;
    v11 = *(this + 15);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(this + 15) = 0;
    v12 = *(this + 17);
    if (v12)
    {
      SsrwOOStorage::~SsrwOOStorage(v12);
      MEMORY[0x25F897000]();
    }

    *(this + 17) = 0;
    result = SsrwOORootStorage::close((this + 24), 0);
  }

  *(this + 2) = 0;
  return result;
}

void WrdParser::~WrdParser(WrdParser *this)
{
  WrdParser::~WrdParser(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED6438;
  WrdParser::closeDoc(this);
  v2 = *(this + 35);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 35) = 0;
  v3 = *(this + 36);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 36) = 0;
  WrdFileInformationBlock::~WrdFileInformationBlock((this + 160));
  SsrwOORootStorage::~SsrwOORootStorage((this + 24));

  OcParser::OcParser(this);
}

void WrdObjectFactory::~WrdObjectFactory(WrdObjectFactory *this)
{
  *this = &unk_286ED5260;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5260;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

void WrdFileInformationBlock::~WrdFileInformationBlock(WrdFileInformationBlock *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 6) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8052888210);
  }

  *(this + 8) = 0;
  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8000313F17);
  }

  *(this + 10) = 0;

  TSURectWithOriginAndSize(this);
}

void WrdRdrText::~WrdRdrText(WrdRdrText *this)
{
  *this = &unk_286ED64A0;
  WrdPieceTable::~WrdPieceTable((this + 72));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED64A0;
  WrdPieceTable::~WrdPieceTable((this + 72));
}

void WrdPieceTable::~WrdPieceTable(WrdPieceTable *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80C899CFE7);
  }

  *(this + 2) = 0;
}

void WrdCHPXFKP::~WrdCHPXFKP(WrdCHPXFKP *this)
{
  WrdFormattedDiskPage::~WrdFormattedDiskPage(this);

  JUMPOUT(0x25F897000);
}

void WrdFormattedDiskPage::~WrdFormattedDiskPage(WrdFormattedDiskPage *this)
{
  *this = &unk_286ED4DF8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 152))(v3, 0);
    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(this + 4) = 0;
  }
}

void SsrwOOMemStream::~SsrwOOMemStream(SsrwOOMemStream *this)
{
  *this = &unk_286EC8E70;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC8E70;
}

void WrdPAPXFKP::~WrdPAPXFKP(WrdPAPXFKP *this)
{
  WrdFormattedDiskPage::~WrdFormattedDiskPage(this);

  JUMPOUT(0x25F897000);
}

void WrdSectionDescriptorTable::~WrdSectionDescriptorTable(WrdSectionDescriptorTable *this)
{
  *this = &unk_286ED5628;
  WrdSectionDescriptorTable::cleanup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5628;
  WrdSectionDescriptorTable::cleanup(this);
}

void WrdEmbeddedTTFRecordTable::~WrdEmbeddedTTFRecordTable(WrdEmbeddedTTFRecordTable *this)
{
  WrdEmbeddedTTFRecordTable::~WrdEmbeddedTTFRecordTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED46A8;
  WrdEmbeddedTTFRecordTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t WrdEmbeddedTTFRecordTable::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (((*(this + 16) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C40CE7E837CLL);
        v2 = *(v1 + 8);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(v1 + 8);
    }

    while (v3 < ((*(v1 + 16) - v2) >> 3));
  }

  *(v1 + 16) = v2;
  return this;
}

void WrdDocumentFileRecord::~WrdDocumentFileRecord(WrdDocumentFileRecord *this)
{
  WrdDocumentFileRecord::~WrdDocumentFileRecord(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4528;
  *(this + 2) = *(this + 1);
  OcBinaryData::removeBuffer((this + 32));
  OcBinaryData::~OcBinaryData((this + 32));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void WrdNoteTable::~WrdNoteTable(WrdNoteTable *this)
{
  WrdNoteTable::~WrdNoteTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED51E0;
  WrdBookmarkTable::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void WrdAnnotationTable::~WrdAnnotationTable(WrdAnnotationTable *this)
{
  WrdAnnotationTable::~WrdAnnotationTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4020;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void WrdCPTableHeaders::~WrdCPTableHeaders(WrdCPTableHeaders *this)
{
  WrdCPTable::~WrdCPTable(this);

  JUMPOUT(0x25F897000);
}

void WrdBookmarkTable::~WrdBookmarkTable(WrdBookmarkTable *this)
{
  WrdBookmarkTable::~WrdBookmarkTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED41E8;
  WrdBookmarkTable::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void WrdBookmark::~WrdBookmark(WrdBookmark *this)
{
  WrdBookmark::~WrdBookmark(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4170;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  CsString::~CsString((this + 8));
}

void WrdStoryTable::~WrdStoryTable(WrdStoryTable *this)
{
  WrdStoryTable::~WrdStoryTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED57A8;
  WrdBookmarkTable::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void WrdFileShapeAddressTable::~WrdFileShapeAddressTable(WrdFileShapeAddressTable *this)
{
  WrdFileShapeAddressTable::~WrdFileShapeAddressTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4D38;
  WrdBookmarkTable::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void WrdFieldPositionTable::~WrdFieldPositionTable(WrdFieldPositionTable *this)
{
  WrdFieldPositionTable::~WrdFieldPositionTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4CB8;
  WrdBookmarkTable::clear(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void WrdFieldPosition::~WrdFieldPosition(WrdFieldPosition *this)
{
  this->var0 = &unk_286ED4C78;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED4C78;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
}

void WrdBinaryReader::~WrdBinaryReader(WrdBinaryReader *this)
{
  WrdBinaryReader::~WrdBinaryReader(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5E98;
  v2 = (this + 8);
  *(this + 1) = &unk_286ED6080;
  *(this + 3) = &unk_286ED6240;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 4) = 0;
  }

  for (i = 0; i != 192; i += 24)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + i + 224, *(this + i + 232));
    *(this + i + 232) = 0;
    *(this + i + 240) = 0;
    *(this + i + 224) = this + i + 232;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + i + 416, *(this + i + 424));
    *(this + i + 424) = 0;
    *(this + i + 432) = 0;
    *(this + i + 416) = this + i + 424;
  }

  v5 = *(this + 17);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 17) = 0;
  v6 = *(this + 18);
  if (v6)
  {
    WrdBinTable::~WrdBinTable(v6);
    MEMORY[0x25F897000]();
  }

  *(this + 18) = 0;
  v7 = *(this + 21);
  if (v7)
  {
    WrdBinTable::~WrdBinTable(v7);
    MEMORY[0x25F897000]();
  }

  *(this + 21) = 0;
  v8 = *(this + 22);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 22) = 0;
  v9 = *(this + 19);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 19) = 0;
  v10 = *(this + 24);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 24) = 0;
  v11 = *(this + 25);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 25) = 0;
  v12 = *(this + 26);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 26) = 0;
  v13 = *(this + 27);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 27) = 0;
  v14 = *(this + 87);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(this + 87) = 0;
  *(this + 79) = &unk_286ED5AE0;
  OcText::~OcText((this + 640));
  for (j = 0; j != -192; j -= 24)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + j + 584, *(this + j + 592));
  }

  for (k = 0; k != -192; k -= 24)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + k + 392, *(this + k + 400));
  }

  EshBinaryReader::~EshBinaryReader((this + 40));
  OcReader::~OcReader(v2);
}

WrdStyleSheet *WrdStyleSheet::operator=(WrdStyleSheet *this, uint64_t a2)
{
  *(this + 1) = *(a2 + 8);
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = (v5 >> 3);
    do
    {
      v8 = *(this + 3);
      v9 = *(v8 + 8 * v6);
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v8 = *(this + 3);
      }

      *(v8 + 8 * v6++) = 0;
    }

    while (v7 != v6);
    v4 = *(this + 3);
  }

  *(this + 4) = v4;
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = v10 - v11;
  WrdStyleSheet::setNumberOfStyles(this, ((v10 - v11) >> 3));
  if ((v12 & 0x7FFFFFFF8) != 0)
  {
    v13 = 0;
    v14 = (v12 >> 3);
    do
    {
      WrdStyle::operator=(*(*(this + 3) + 8 * v13), *(*(a2 + 24) + 8 * v13));
      ++v13;
    }

    while (v14 != v13);
  }

  *(this + 180) = *(a2 + 360);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setFontIndexForFarEastAsianText(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x4000uLL;
  this->var44 = a2;
  return this;
}

void WrdCharacterProperties::applyBaseProperties(WrdCharacterProperties *this, const WrdCharacterProperties *a2)
{
  WrdCharacterProperties::applyImplictProperties(this, a2);
  var2 = this->var2;
  if ((var2 & 2) == 0 && (*&a2->var2 & 2) != 0)
  {
    var2 |= 2uLL;
    *&this->var2 = var2;
    this->var23 = a2->var23;
  }

  if ((var2 & 4) == 0 && (*&a2->var2 & 4) != 0)
  {
    var2 |= 4uLL;
    *&this->var2 = var2;
    this->var24 = a2->var24;
  }

  if ((var2 & 0x10) == 0 && (*&a2->var2 & 0x10) != 0)
  {
    var2 |= 0x10uLL;
    *&this->var2 = var2;
    this->var25 = a2->var25;
  }

  if ((var2 & 0x10000000) == 0 && (*(&a2->var2 + 3) & 0x10) != 0)
  {
    var2 |= 0x10000000uLL;
    *&this->var2 = var2;
    this->var27 = a2->var27;
  }

  if ((var2 & 0x20000000) == 0 && (*(&a2->var2 + 3) & 0x20) != 0)
  {
    var2 |= 0x20000000uLL;
    *&this->var2 = var2;
    this->var28 = a2->var28;
  }

  if ((var2 & 0x20) == 0 && (*&a2->var2 & 0x20) != 0)
  {
    var2 |= 0x20uLL;
    *&this->var2 = var2;
    this->var29 = a2->var29;
  }

  if ((var2 & 0x40000000) == 0 && (*(&a2->var2 + 3) & 0x40) != 0)
  {
    var2 |= 0x40000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFFD | (2 * ((*(a2 + 85) >> 1) & 1));
  }

  if ((var2 & 0x80) == 0 && (*&a2->var2 & 0x80) != 0)
  {
    var2 |= 0x80uLL;
    *&this->var2 = var2;
    this->var26 = a2->var26;
  }

  if ((var2 & 0x80000000) == 0 && (*(&a2->var2 + 3) & 0x80) != 0)
  {
    var2 |= 0x80000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFFB | (4 * ((*(a2 + 85) >> 2) & 1));
  }

  if (var2 & 0x100) == 0 && (*(&a2->var2 + 1))
  {
    var2 |= 0x100uLL;
    *&this->var2 = var2;
    this->var30 = a2->var30;
  }

  if (var2 & 0x100000000) == 0 && (*(&a2->var2 + 4))
  {
    var2 |= 0x100000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFF7 | (8 * ((*(a2 + 85) >> 3) & 1));
  }

  if ((var2 & 0x200000000) == 0 && (*(&a2->var2 + 4) & 2) != 0)
  {
    var2 |= 0x200000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFEF | (16 * ((*(a2 + 85) >> 4) & 1));
  }

  if ((var2 & 0x400000000) == 0 && (*(&a2->var2 + 4) & 4) != 0)
  {
    var2 |= 0x400000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFDF | (32 * ((*(a2 + 85) >> 5) & 1));
  }

  if ((var2 & 0x200) == 0 && (*(&a2->var2 + 1) & 2) != 0)
  {
    var2 |= 0x200uLL;
    *&this->var2 = var2;
    this->var31 = a2->var31;
  }

  if ((var2 & 0x400) == 0 && (*(&a2->var2 + 1) & 4) != 0)
  {
    var2 |= 0x400uLL;
    *&this->var2 = var2;
    this->var32 = a2->var32;
  }

  if (var2 & 1) == 0 && (*&a2->var2)
  {
    var2 |= 1uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFFE | *(a2 + 85) & 1;
  }

  if ((var2 & 0x800) == 0 && (*(&a2->var2 + 1) & 8) != 0)
  {
    var2 |= 0x800uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFFBF | (((*(a2 + 85) >> 6) & 1) << 6);
  }

  if ((var2 & 0x800000000) == 0 && (*(&a2->var2 + 4) & 8) != 0)
  {
    var2 |= 0x800000000uLL;
    *&this->var2 = var2;
    this->var33 = a2->var33;
  }

  if ((var2 & 0x1000000000) == 0 && (*(&a2->var2 + 4) & 0x10) != 0)
  {
    var2 |= 0x1000000000uLL;
    *&this->var2 = var2;
    this->var34 = a2->var34;
  }

  if ((var2 & 0x2000000000) == 0 && (*(&a2->var2 + 4) & 0x20) != 0)
  {
    var2 |= 0x2000000000uLL;
    *&this->var2 = var2;
    this->var35 = a2->var35;
  }

  if ((var2 & 0x4000000000) == 0 && (*(&a2->var2 + 4) & 0x40) != 0)
  {
    var2 |= 0x4000000000uLL;
    *&this->var2 = var2;
    this->var38 = a2->var38;
  }

  if ((var2 & 0x8000000000) == 0 && (*(&a2->var2 + 4) & 0x80) != 0)
  {
    var2 |= 0x8000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFF7F | (((*(a2 + 85) >> 7) & 1) << 7);
  }

  if (var2 & 0x10000000000) == 0 && (*(&a2->var2 + 5))
  {
    var2 |= 0x10000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFEFF | (((*(a2 + 85) >> 8) & 1) << 8);
  }

  if ((var2 & 0x20000000000) == 0 && (*(&a2->var2 + 5) & 2) != 0)
  {
    var2 |= 0x20000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFDFF | (((*(a2 + 85) >> 9) & 1) << 9);
  }

  if ((var2 & 0x1000) == 0 && (*(&a2->var2 + 1) & 0x10) != 0)
  {
    var2 |= 0x1000uLL;
    *&this->var2 = var2;
    this->var62 = a2->var62;
  }

  if ((var2 & 0x2000) == 0 && (*(&a2->var2 + 1) & 0x20) != 0)
  {
    var2 |= 0x2000uLL;
    *&this->var2 = var2;
    this->var43 = a2->var43;
  }

  if ((var2 & 0x4000) == 0 && (*(&a2->var2 + 1) & 0x40) != 0)
  {
    var2 |= 0x4000uLL;
    *&this->var2 = var2;
    this->var44 = a2->var44;
  }

  if ((var2 & 0x8000) == 0 && (*(&a2->var2 + 1) & 0x80) != 0)
  {
    var2 |= 0x8000uLL;
    *&this->var2 = var2;
    this->var45 = a2->var45;
  }

  if ((var2 & 0x40000000000) == 0 && (*(&a2->var2 + 5) & 4) != 0)
  {
    var2 |= 0x40000000000uLL;
    *&this->var2 = var2;
    this->var46 = a2->var46;
  }

  if ((var2 & 0x80000000000) == 0 && (*(&a2->var2 + 5) & 8) != 0)
  {
    var2 |= 0x80000000000uLL;
    *&this->var2 = var2;
    this->var49 = a2->var49;
  }

  if (var2 & 0x10000) == 0 && (*(&a2->var2 + 2))
  {
    var2 |= 0x10000uLL;
    *&this->var2 = var2;
    *(&this->var2 + 14) = *(&a2->var2 + 14);
  }

  if ((var2 & 0x20000) == 0 && (*(&a2->var2 + 2) & 2) != 0)
  {
    var2 |= 0x20000uLL;
    *&this->var2 = var2;
    this->var13 = a2->var13;
  }

  if ((var2 & 0x100000000000) == 0 && (*(&a2->var2 + 5) & 0x10) != 0)
  {
    var2 |= 0x100000000000uLL;
    *&this->var2 = var2;
    this->var60 = a2->var60;
  }

  if ((var2 & 0x200000000000) == 0 && (*(&a2->var2 + 5) & 0x20) != 0)
  {
    var2 |= 0x200000000000uLL;
    *&this->var2 = var2;
    this->var39 = a2->var39;
  }

  if ((var2 & 0x400000000000) == 0 && (*(&a2->var2 + 5) & 0x40) != 0)
  {
    var2 |= 0x400000000000uLL;
    *&this->var2 = var2;
    this->var40 = a2->var40;
  }

  if ((var2 & 0x800000000000) == 0 && (*(&a2->var2 + 5) & 0x80) != 0)
  {
    var2 |= 0x800000000000uLL;
    *&this->var2 = var2;
    this->var41 = a2->var41;
  }

  if ((var2 & 0x40000) == 0 && (*(&a2->var2 + 2) & 4) != 0)
  {
    var2 |= 0x40000uLL;
    *&this->var2 = var2;
    this->var14 = a2->var14;
  }

  if (var2 & 0x1000000000000) == 0 && (*(&a2->var2 + 6))
  {
    var2 |= 0x1000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xF7FFFFFF | (((*(a2 + 85) >> 27) & 1) << 27);
  }

  if ((var2 & 0x80000) == 0 && (*(&a2->var2 + 2) & 8) != 0)
  {
    var2 |= 0x80000uLL;
    *&this->var2 = var2;
    this->var15 = a2->var15;
  }

  if ((var2 & 0x2000000000000) == 0 && (*(&a2->var2 + 6) & 2) != 0)
  {
    var2 |= 0x2000000000000uLL;
    *&this->var2 = var2;
    this->var107 = a2->var107;
  }

  if ((var2 & 0x100000) == 0 && (*(&a2->var2 + 2) & 0x10) != 0)
  {
    var2 |= 0x100000uLL;
    *&this->var2 = var2;
    this->var16 = a2->var16;
  }

  if ((var2 & 0x4000000000000) == 0 && (*(&a2->var2 + 6) & 4) != 0)
  {
    var2 |= 0x4000000000000uLL;
    *&this->var2 = var2;
    this->var17 = a2->var17;
  }

  if ((var2 & 0x8000000000000) == 0 && (*(&a2->var2 + 6) & 8) != 0)
  {
    var2 |= 0x8000000000000uLL;
    *&this->var2 = var2;
    this->var108 = a2->var108;
  }

  if ((var2 & 0x10000000000000) == 0 && (*(&a2->var2 + 6) & 0x10) != 0)
  {
    var2 |= 0x10000000000000uLL;
    *&this->var2 = var2;
    this->var63 = a2->var63;
  }

  if ((var2 & 0x200000) == 0 && (*(&a2->var2 + 2) & 0x20) != 0)
  {
    var2 |= 0x200000uLL;
    *&this->var2 = var2;
    this->var105 = a2->var105;
  }

  if ((var2 & 0x20000000000000) == 0 && (*(&a2->var2 + 6) & 0x20) != 0)
  {
    var2 |= 0x20000000000000uLL;
    *&this->var2 = var2;
    *&this->var3.var3 = *&a2->var3.var3;
  }

  if ((var2 & 0x400000) == 0 && (*(&a2->var2 + 2) & 0x40) != 0)
  {
    *&this->var2 = var2 | 0x400000;
    WrdShading::operator=(this->var6, a2->var6);
    var2 = this->var2;
  }

  if ((var2 & 0x40000000000000) == 0 && (*(&a2->var2 + 6) & 0x40) != 0)
  {
    *&this->var2 = var2 | 0x40000000000000;
    WrdBorder::operator=(this->var7, a2->var7);
    var2 = this->var2;
  }

  if ((var2 & 0x80000000000000) == 0 && (*(&a2->var2 + 6) & 0x80) != 0)
  {
    var2 |= 0x80000000000000uLL;
    *&this->var2 = var2;
    this->var61 = a2->var61;
  }

  if ((var2 & 0x800000) == 0 && (*(&a2->var2 + 2) & 0x80) != 0)
  {
    var2 |= 0x800000uLL;
    *&this->var2 = var2;
    this->var19 = a2->var19;
  }

  if (var2 & 0x100000000000000) == 0 && (*(&a2->var2 + 7))
  {
    var2 |= 0x100000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFFBFF | (((*(a2 + 85) >> 10) & 1) << 10);
  }

  if ((var2 & 0x200000000000000) == 0 && (*(&a2->var2 + 7) & 2) != 0)
  {
    var2 |= 0x200000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFF7FF | (((*(a2 + 85) >> 11) & 1) << 11);
  }

  if ((var2 & 0x400000000000000) == 0 && (*(&a2->var2 + 7) & 4) != 0)
  {
    var2 |= 0x400000000000000uLL;
    *&this->var2 = var2;
    this->var109 = a2->var109;
  }

  if ((var2 & 0x800000000000000) == 0 && (*(&a2->var2 + 7) & 8) != 0)
  {
    var2 |= 0x800000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFEFFF | (((*(a2 + 85) >> 12) & 1) << 12);
  }

  if ((var2 & 0x1000000000000000) == 0 && (*(&a2->var2 + 7) & 0x10) != 0)
  {
    var2 |= 0x1000000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFDFFF | (((*(a2 + 85) >> 13) & 1) << 13);
  }

  if ((var2 & 0x2000000000000000) == 0 && (*(&a2->var2 + 7) & 0x20) != 0)
  {
    var2 |= 0x2000000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFFBFFF | (((*(a2 + 85) >> 14) & 1) << 14);
  }

  if ((var2 & 0x4000000000000000) == 0 && (*(&a2->var2 + 7) & 0x40) != 0)
  {
    var2 |= 0x4000000000000000uLL;
    *&this->var2 = var2;
    *(this + 85) = *(this + 85) & 0xFFFF7FFF | (((*(a2 + 85) >> 15) & 1) << 15);
  }

  if ((var2 & 0x8000000000000000) == 0 && (*&a2->var2 & 0x8000000000000000) != 0)
  {
    var2 |= 0x8000000000000000;
    *&this->var2 = var2;
    this->var18 = a2->var18;
  }

  v5 = *(&this->var2 + 2);
  if (v5 & 1) == 0 && (*(&a2->var2 + 8))
  {
    v5 |= 1u;
    *(&this->var2 + 2) = v5;
    *(this + 85) = *(this + 85) & 0xFFFEFFFF | ((HIWORD(*(a2 + 85)) & 1) << 16);
  }

  if ((v5 & 2) == 0 && (*(&a2->var2 + 8) & 2) != 0)
  {
    v5 |= 2u;
    *(&this->var2 + 2) = v5;
    *(this + 85) = *(this + 85) & 0xFFFDFFFF | (((*(a2 + 85) >> 17) & 1) << 17);
  }

  if ((v5 & 4) == 0 && (*(&a2->var2 + 8) & 4) != 0)
  {
    v5 |= 4u;
    *(&this->var2 + 2) = v5;
    *(this + 85) = *(this + 85) & 0xFFFBFFFF | (((*(a2 + 85) >> 18) & 1) << 18);
  }

  if ((v5 & 8) == 0 && (*(&a2->var2 + 8) & 8) != 0)
  {
    v5 |= 8u;
    *(&this->var2 + 2) = v5;
    *(this + 85) = *(this + 85) & 0xFFF7FFFF | (((*(a2 + 85) >> 19) & 1) << 19);
  }

  if (var2 & 0x1000000) == 0 && (*(&a2->var2 + 3))
  {
    var2 |= 0x1000000uLL;
    *&this->var2 = var2;
    this->var64 = a2->var64;
  }

  if ((var2 & 0x2000000) == 0 && (*(&a2->var2 + 3) & 2) != 0)
  {
    var2 |= 0x2000000uLL;
    *&this->var2 = var2;
    this->var65 = a2->var65;
  }

  if ((var2 & 0x4000000) == 0 && (*(&a2->var2 + 3) & 4) != 0)
  {
    *&this->var2 = var2 | 0x4000000;
    this->var66 = a2->var66;
  }

  if ((v5 & 0x10) == 0 && (*(&a2->var2 + 8) & 0x10) != 0)
  {
    v5 |= 0x10u;
    *(&this->var2 + 2) = v5;
    this->var47 = a2->var47;
  }

  if ((v5 & 0x20) == 0 && (*(&a2->var2 + 8) & 0x20) != 0)
  {
    v5 |= 0x20u;
    *(&this->var2 + 2) = v5;
    this->var50 = a2->var50;
  }

  if ((v5 & 0x40) == 0 && (*(&a2->var2 + 8) & 0x40) != 0)
  {
    v5 |= 0x40u;
    *(&this->var2 + 2) = v5;
    this->var51 = a2->var51;
  }

  if ((v5 & 0x80) == 0 && (*(&a2->var2 + 8) & 0x80) != 0)
  {
    v5 |= 0x80u;
    *(&this->var2 + 2) = v5;
    this->var52 = a2->var52;
  }

  if (v5 & 0x100) == 0 && (*(&a2->var2 + 9))
  {
    v5 |= 0x100u;
    *(&this->var2 + 2) = v5;
    this->var53 = a2->var53;
  }

  if ((v5 & 0x200) == 0 && (*(&a2->var2 + 9) & 2) != 0)
  {
    v5 |= 0x200u;
    *(&this->var2 + 2) = v5;
    this->var59 = a2->var59;
  }

  if ((v5 & 0x400) == 0 && (*(&a2->var2 + 9) & 4) != 0)
  {
    v5 |= 0x400u;
    *(&this->var2 + 2) = v5;
    this->var57 = a2->var57;
  }

  if ((v5 & 0x800) == 0 && (*(&a2->var2 + 9) & 8) != 0)
  {
    v5 |= 0x800u;
    *(&this->var2 + 2) = v5;
    this->var58 = a2->var58;
  }

  if ((v5 & 0x1000) == 0 && (*(&a2->var2 + 9) & 0x10) != 0)
  {
    v5 |= 0x1000u;
    *(&this->var2 + 2) = v5;
    this->var22 = a2->var22;
  }

  if ((v5 & 0x2000) == 0 && (*(&a2->var2 + 9) & 0x20) != 0)
  {
    v5 |= 0x2000u;
    *(&this->var2 + 2) = v5;
    this->var106 = a2->var106;
  }

  if ((v5 & 0x4000) == 0 && (*(&a2->var2 + 9) & 0x40) != 0)
  {
    *(&this->var2 + 2) = v5 | 0x4000;
    this->var71 = a2->var71;
  }

  v6 = *(&this->var2 + 6);
  if ((v6 & 0x20) == 0 && (*(&a2->var2 + 6) & 0x20) != 0)
  {
    *(&this->var2 + 6) = v6 | 0x20;
    WrdDateTime::operator=(this->var11, a2->var11);
    v6 = *(&this->var2 + 6);
  }

  if ((v6 & 0x40) == 0 && (*(&a2->var2 + 6) & 0x40) != 0)
  {
    *(&this->var2 + 6) = v6 | 0x40;
    WrdDateTime::operator=(this->var12, a2->var12);
  }

  v7 = this->var2;
  if ((v7 & 0x8000000) == 0 && (*(&a2->var2 + 3) & 8) != 0)
  {
    *&this->var2 = v7 | 0x8000000;
    this->var72 = a2->var72;
  }

  v8 = *(&this->var2 + 2);
  if ((v8 & 0x8000) == 0 && (*(&a2->var2 + 9) & 0x80) != 0)
  {
    v8 |= 0x8000u;
    *(&this->var2 + 2) = v8;
    this->var73 = a2->var73;
  }

  if (v8 & 0x10000) == 0 && (*(&a2->var2 + 10))
  {
    v8 |= 0x10000u;
    *(&this->var2 + 2) = v8;
    this->var74 = a2->var74;
  }

  if ((v8 & 0x20000) == 0 && (*(&a2->var2 + 10) & 2) != 0)
  {
    v8 |= 0x20000u;
    *(&this->var2 + 2) = v8;
    this->var42 = a2->var42;
  }

  if ((v8 & 0x40000) == 0 && (*(&a2->var2 + 10) & 4) != 0)
  {
    v8 |= 0x40000u;
    *(&this->var2 + 2) = v8;
    this->var75 = a2->var75;
  }

  if ((v8 & 0x80000) == 0 && (*(&a2->var2 + 10) & 8) != 0)
  {
    v8 |= 0x80000u;
    *(&this->var2 + 2) = v8;
    this->var20 = a2->var20;
  }

  if ((v8 & 0x100000) == 0 && (*(&a2->var2 + 10) & 0x10) != 0)
  {
    v8 |= 0x100000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFFEFFFFF | (((*(a2 + 85) >> 20) & 1) << 20);
  }

  if ((v8 & 0x200000) == 0 && (*(&a2->var2 + 10) & 0x20) != 0)
  {
    v8 |= 0x200000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFFDFFFFF | (((*(a2 + 85) >> 21) & 1) << 21);
  }

  if ((v8 & 0x400000) == 0 && (*(&a2->var2 + 10) & 0x40) != 0)
  {
    v8 |= 0x400000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFFBFFFFF | (((*(a2 + 85) >> 22) & 1) << 22);
  }

  if ((v8 & 0x800000) == 0 && (*(&a2->var2 + 10) & 0x80) != 0)
  {
    v8 |= 0x800000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFF7FFFFF | (((*(a2 + 85) >> 23) & 1) << 23);
  }

  if (v8 & 0x1000000) == 0 && (*(&a2->var2 + 11))
  {
    v8 |= 0x1000000u;
    *(&this->var2 + 2) = v8;
    this->var69 = a2->var69;
  }

  if ((v8 & 0x2000000) == 0 && (*(&a2->var2 + 11) & 2) != 0)
  {
    *(&this->var2 + 2) = v8 | 0x2000000;
    WrdDateTime::operator=(this->var8, a2->var8);
    v8 = *(&this->var2 + 2);
  }

  if ((v8 & 0x4000000) == 0 && (*(&a2->var2 + 11) & 4) != 0)
  {
    v8 |= 0x4000000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFDFFFFFF | (((*(a2 + 85) >> 25) & 1) << 25);
  }

  if ((v8 & 0x8000000) == 0 && (*(&a2->var2 + 11) & 8) != 0)
  {
    v8 |= 0x8000000u;
    *(&this->var2 + 2) = v8;
    *(this + 85) = *(this + 85) & 0xFBFFFFFF | (((*(a2 + 85) >> 26) & 1) << 26);
  }

  if ((v8 & 0x10000000) == 0 && (*(&a2->var2 + 11) & 0x10) != 0)
  {
    v8 |= 0x10000000u;
    *(&this->var2 + 2) = v8;
    this->var67 = a2->var67;
  }

  if ((v8 & 0x20000000) == 0 && (*(&a2->var2 + 11) & 0x20) != 0)
  {
    v8 |= 0x20000000u;
    *(&this->var2 + 2) = v8;
    this->var68 = a2->var68;
  }

  if ((v8 & 0x10000000) == 0 && (*(&a2->var2 + 11) & 0x10) != 0)
  {
    *(&this->var2 + 2) = v8 | 0x10000000;
    WrdDateTime::operator=(this->var9, a2->var9);
    v8 = *(&this->var2 + 2);
  }

  if ((v8 & 0x80000000) == 0 && (*(&a2->var2 + 2) & 0x80000000) != 0)
  {
    *(&this->var2 + 2) = v8 | 0x80000000;
    *(this + 85) = *(this + 85) & 0xFEFFFFFF | ((HIBYTE(*(a2 + 85)) & 1) << 24);
  }

  v9 = *(&this->var2 + 6);
  if (v9 & 1) == 0 && (*(&a2->var2 + 6))
  {
    v9 |= 1u;
    *(&this->var2 + 6) = v9;
    this->var70 = a2->var70;
  }

  if ((v9 & 2) == 0 && (*(&a2->var2 + 6) & 2) != 0)
  {
    *(&this->var2 + 6) = v9 | 2;
    WrdDateTime::operator=(this->var10, a2->var10);
    v9 = *(&this->var2 + 6);
  }

  if ((v9 & 8) == 0 && (*(&a2->var2 + 6) & 8) != 0)
  {
    v9 |= 8u;
    *(&this->var2 + 6) = v9;
    this->var56 = a2->var56;
  }

  if ((v9 & 0x10) == 0 && (*(&a2->var2 + 6) & 0x10) != 0)
  {
    v9 |= 0x10u;
    *(&this->var2 + 6) = v9;
    this->var48 = a2->var48;
  }

  if ((v9 & 0x80) == 0 && (*(&a2->var2 + 6) & 0x80) != 0)
  {
    v9 |= 0x80u;
    *(&this->var2 + 6) = v9;
    this->var54 = a2->var54;
  }

  if ((v9 & 0x100) == 0 && (*(&a2->var2 + 6) & 0x100) != 0)
  {
    v9 |= 0x100u;
    *(&this->var2 + 6) = v9;
    this->var21 = a2->var21;
  }

  if ((v9 & 0x200) == 0 && (*(&a2->var2 + 6) & 0x200) != 0)
  {
    v9 |= 0x200u;
    *(&this->var2 + 6) = v9;
    this->var55 = a2->var55;
  }

  if ((v9 & 0x800) == 0 && (*(&a2->var2 + 6) & 0x800) != 0)
  {
    *(&this->var2 + 6) = v9 | 0x800;
    this->var110 = a2->var110;
  }
}