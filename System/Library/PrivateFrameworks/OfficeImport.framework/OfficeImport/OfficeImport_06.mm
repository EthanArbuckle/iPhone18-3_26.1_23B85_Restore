id parseRegion(unsigned int a1, const unsigned __int8 *a2)
{
  if (a1 < 0x10)
  {
    if (!a1)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      goto LABEL_14;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_14;
  }

  v3 = *a2;
  v4 = a2[11];
  v5 = *(a2 + 4) | (a2[10] << 16) | (v4 << 24);
  v6 = v3 + (16 * v5);
  if (HIDWORD(v6))
  {
    goto LABEL_12;
  }

  if (v4 > 0xF || v6 > a1)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  if (v5)
  {
    v9 = &a2[v3];
    do
    {
      v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{*v9, v9[1], (v9[2] - *v9), (v9[3] - v9[1])}];
      [v8 addObject:v10];

      v9 += 4;
      LODWORD(v5) = v5 - 1;
    }

    while (v5);
  }

LABEL_14:

  return v8;
}

void PptRecolorInfoAtom::~PptRecolorInfoAtom(PptRecolorInfoAtom *this)
{
  PptRecolorInfoAtom::~PptRecolorInfoAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDBA88;
  *(this + 4) = &unk_286EDBB38;
  PptRecolorInfoAtom::clearColors(this);
  PptRecolorInfoAtom::clearFills(this);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

void PptSlideFlags10Atom::~PptSlideFlags10Atom(PptSlideFlags10Atom *this)
{
  *this = &unk_286EE0950;
  *(this + 4) = &unk_286EE09F8;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0950;
  *(this + 4) = &unk_286EE09F8;
}

void PptTextBlockStyling9Atom::~PptTextBlockStyling9Atom(PptTextBlockStyling9Atom *this)
{
  PptTextBlockStyling9Atom::~PptTextBlockStyling9Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD228;
  *(this + 4) = &unk_286EDD2D0;
  PptTextBlockStyling9Atom::reset(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t PptTextBlockStyling9Atom::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = *(this + 56) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = *(v1 + 48);
      v7 = *(v1 + 56) - v6;
      if (v4 >= (v7 >> 3))
      {
        goto LABEL_10;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C4064F814F1);
        v6 = *(v1 + 48);
        v7 = *(v1 + 56) - v6;
      }

      if (v4 >= (v7 >> 3))
      {
LABEL_10:
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = *(v1 + 48);
  }

  *(v1 + 56) = v2;
  return this;
}

void EshDibBlip::~EshDibBlip(EshBlip *this)
{
  this->var0 = &unk_286EC60E0;
  v2 = &this[1];
  EshDibBlipInfo::~EshDibBlipInfo(&this[5].var3.var0[4]);
  EshDibBlipInfo::~EshDibBlipInfo(v2);
  EshBlip::~EshBlip(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC60E0;
  v2 = &this[1];
  EshDibBlipInfo::~EshDibBlipInfo(&this[5].var3.var0[4]);
  EshDibBlipInfo::~EshDibBlipInfo(v2);

  EshBlip::~EshBlip(this);
}

void EshDibBlipInfo::~EshDibBlipInfo(EshDibBlipInfo *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4052888210);
  }

  *(this + 26) = 0;
  OcBinaryData::~OcBinaryData((this + 24));
}

void WrdTextBoxStory::WrdTextBoxStory(WrdTextBoxStory *this)
{
  *this = -1;
  *(this + 1) = -1;
  *(this + 16) = 1;
}

uint64_t WrdParser::parse(WrdParser *this, WrdTextBoxStory *a2)
{
  v4 = (*(**(this + 16) + 96))(*(this + 16));
  v5 = (*(**(this + 16) + 96))(*(this + 16));
  WrdTextBoxStory::setNumberOfReusableTextBoxStories(a2, v5);
  *(a2 + 16) = (*(**(this + 16) + 72))(*(this + 16)) == 1;
  (*(**(this + 16) + 16))(*(this + 16), 4, 1);
  v6 = (*(**(this + 16) + 96))(*(this + 16));
  (*(**(this + 16) + 16))(*(this + 16), 4, 1);
  if (*(a2 + 16) == 1)
  {

    return WrdTextBoxStory::setNextTextBoxIndex(a2, v4);
  }

  else
  {
    WrdTextBoxStory::setNumberOfTextBoxesInStoryChain(a2, v4);

    return WrdTextBoxStory::setOfficeArtShapeIDForFirstShapeInStoryChain(a2, v6);
  }
}

uint64_t WrdTextBoxStory::setNumberOfReusableTextBoxStories(uint64_t this, int a2)
{
  *(this + 16) = 1;
  *(this + 12) = a2;
  return this;
}

uint64_t WrdTextBoxStory::setNumberOfTextBoxesInStoryChain(uint64_t this, int a2)
{
  *(this + 16) = 0;
  *this = a2;
  return this;
}

uint64_t WrdTextBoxStory::setOfficeArtShapeIDForFirstShapeInStoryChain(uint64_t this, int a2)
{
  *(this + 16) = 0;
  *(this + 4) = a2;
  return this;
}

void WrdStory::WrdStory(WrdStory *this)
{
  *this = &unk_286ED5768;
  *(this + 8) = xmmword_25D70ED50;
  *(this + 3) = -1;
  *(this + 32) = 0;
}

void *WrdStoryTable::append(void *this, WrdStory *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[3];
    if (v3 >= v2[4])
    {
      this = std::vector<WrdStory *,ChAllocator<WrdStory *>>::__emplace_back_slow_path<WrdStory * const&>(v2 + 2, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[3] = this;
  }

  return this;
}

void WrdFileShapeAddress::WrdFileShapeAddress(WrdFileShapeAddress *this)
{
  this->var0 = &unk_286ED4CF8;
  this->var1 = 0;
  *&this->var2 = -1;
  *&this->var4 = -1;
  this->var6 = -1;
  this->var14 = 0;
  *&this->var7 = 0;
  *&this->var9 = 0;
  *(&this->var10 + 3) = 0;
}

uint64_t WrdParser::parse(WrdParser *this, WrdFileShapeAddress *a2)
{
  a2->var2 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var3 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var4 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var5 = (*(**(this + 16) + 96))(*(this + 16));
  a2->var6 = (*(**(this + 16) + 96))(*(this + 16));
  v4 = (*(**(this + 16) + 80))(*(this + 16));
  *&a2->var7 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_25D70F050), xmmword_25D70F060);
  a2->var11 = (v4 & 0x2000) != 0;
  a2->var12 = (v4 & 0x4000) != 0;
  a2->var13 = v4 >> 15;
  result = (*(**(this + 16) + 96))(*(this + 16));
  a2->var14 = result;
  return result;
}

void *WrdFileShapeAddressTable::append(WrdFileShapeAddressTable *this, WrdFileShapeAddress *a2)
{
  v5 = a2;
  v3 = *(this + 3);
  if (v3 >= *(this + 4))
  {
    result = std::vector<WrdFileShapeAddress *,ChAllocator<WrdFileShapeAddress *>>::__emplace_back_slow_path<WrdFileShapeAddress * const&>(this + 2, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

CsString *CsString::append(CsString *this, const unsigned __int16 *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = _ChWcslen(a2);

    return CsString::append(v3, a2, v4);
  }

  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setNoAutoHyphenate(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x4000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFF7F | ((a2 & 1) << 7);
  return this;
}

uint64_t WrdEshClientData::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

uint64_t WrdEshClientTextBox::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

void WrdEshBackground::WrdEshBackground(WrdEshBackground *this)
{
  EshBackground::EshBackground(this);
  *v1 = &unk_286ED46E0;
  v1[41] = 0;
}

WrdParagraphProperties *WrdParagraphProperties::setRightIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x2000000000000000uLL;
  *(this + 66) = a2;
  return this;
}

uint64_t WrdFileShapeAddressTable::getFileShapeAddressByCp(WrdFileShapeAddressTable *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v4 = 0;
  v5 = (v3 >> 3);
  while (*(*(v2 + 8 * v4) + 8) != a2)
  {
    if (v5 == ++v4)
    {
      goto LABEL_5;
    }
  }

  return *(v2 + 8 * v4);
}

double WrdFileShapeAddress::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 52) = *(a2 + 52);
  return result;
}

WrdTableProperties *WrdTableProperties::setRowHeight(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x100000000000uLL;
  *(this + 75) = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setSpaceAfterEachChar(WrdCharacterProperties *this, int a2)
{
  *&this->var2 |= 0x80000000000uLL;
  this->var49 = a2;
  return this;
}

void WrdEshBackground::~WrdEshBackground(WrdEshBackground *this)
{
  WrdEshBackground::~WrdEshBackground(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED46E0;
  v2 = *(this + 41);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 41) = 0;

  EshContentBase::~EshContentBase(this);
}

void PptBinaryTagBlipAtom::PptBinaryTagBlipAtom(PptBinaryTagBlipAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7B58;
  *(v2 + 32) = &unk_286ED7C08;
  *(v2 + 45) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptBinaryTagBlipAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptBinaryTagBlipAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 1)
  {
LABEL_6:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 46) = (*(**(this + 1) + 64))(*(this + 1));
  v5 = *(a2 + 4) + *(a2 + 3) + 8;
  v6 = (*(**(this + 1) + 40))(*(this + 1));
  if (v5 > v6)
  {
    if (v5 - v6 > 7)
    {
      operator new();
    }

    goto LABEL_6;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextMasterStyle9Atom::PptTextMasterStyle9Atom(PptTextMasterStyle9Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB0D0;
  *(v2 + 32) = &unk_286EDB178;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextMasterStyle9Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextMasterStyle9Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  if ((*(**(this + 1) + 72))(*(this + 1)) >= 1)
  {
    PptTextMasterStyle9Atom::addLevel(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshTablePropVal<int>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 40))(a2, a1);
  }

  else
  {
    return 1;
  }
}

void EshPropValParserVisitor::visit()
{
  EshPropValParserVisitor::parseTable<EshTablePropVal<int>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<EshComputedPoint>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<EshGradientStop>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<EshComputedRect>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<float>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<EshHandle>>();
}

{
  EshPropValParserVisitor::parseTable<EshTablePropVal<EshFormula>>();
}

uint64_t EshBasicTablePropVal<int>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (((*(a1 + 16) - v2) >> 2) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 4 * a2;
}

uint64_t EshPropValParserVisitor::parseElement(EshPropValParserVisitor *this, int *a2)
{
  if (*(this + 10) != 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  result = (*(**(this + 1) + 96))(*(this + 1));
  *a2 = result;
  return result;
}

void PptTextBlockStyling10Atom::PptTextBlockStyling10Atom(PptTextBlockStyling10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC968;
  *(v2 + 32) = &unk_286EDCA10;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextBlockStyling10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockStyling10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  if (v4 < EshRecord::getDataLength(a2) + v4)
  {
    PptTextBlockStyling10Atom::addStyle(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptCharProperty10::PptCharProperty10(PptCharProperty10 *this)
{
  *this &= 0xF8u;
  *(this + 2) = 0;
  *(this + 2) = 0;
}

void PptEntranceAnimationInfoAtom::PptEntranceAnimationInfoAtom(PptEntranceAnimationInfoAtom *this, const EshHeader *a2)
{
  PptAnimationInfoAtom::PptAnimationInfoAtom(this, a2);
  *v2 = &unk_286ED6A68;
  v2[4] = &unk_286ED6B10;
}

uint64_t PptAnimationInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimationInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  RecordType = EshRecord::getRecordType(a2);
  v5 = (*(**(this + 1) + 40))(*(this + 1));
  v6 = (*(**(this + 1) + 104))(*(this + 1));
  PptColor::setColor(a2 + 4, v6);
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 4)
  {
    goto LABEL_49;
  }

  v7 = (*(**(this + 1) + 104))(*(this + 1));
  v8 = bswap32(v7);
  if (RecordType != 6023)
  {
    v8 = v7;
  }

  *(a2 + 60) = v8 & 1;
  *(a2 + 61) = (v8 & 4) != 0;
  v9 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v8), xmmword_25D7104A0)), 0x1000100010001);
  *(a2 + 62) = vuzp1_s8(v9, v9).u32[0];
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 8)
  {
    goto LABEL_49;
  }

  v10 = (*(**(this + 1) + 104))(*(this + 1));
  v11 = bswap32(v10);
  if (RecordType != 6023)
  {
    v11 = v10;
  }

  *(a2 + 17) = v11;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 12)
  {
    goto LABEL_49;
  }

  v12 = (*(**(this + 1) + 104))(*(this + 1));
  v13 = bswap32(v12);
  if (RecordType != 6023)
  {
    v13 = v12;
  }

  *(a2 + 18) = v13;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 16)
  {
    goto LABEL_49;
  }

  v14 = (*(**(this + 1) + 80))(*(this + 1));
  v15 = __rev16(v14);
  if (RecordType != 6023)
  {
    v15 = v14;
  }

  *(a2 + 38) = v15;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 18)
  {
    goto LABEL_49;
  }

  v16 = (*(**(this + 1) + 80))(*(this + 1));
  v17 = __rev16(v16);
  if (RecordType != 6023)
  {
    v17 = v16;
  }

  *(a2 + 39) = v17;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 20)
  {
    goto LABEL_49;
  }

  *(a2 + 20) = (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 21)
  {
    goto LABEL_49;
  }

  v18 = (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 22)
  {
    goto LABEL_49;
  }

  v19 = (*(**(this + 1) + 64))(*(this + 1));
  if (v18 <= 8)
  {
    switch(v18)
    {
      case 2:
        LOBYTE(v19) = v19 + 30;
        break;
      case 3:
        LOBYTE(v19) = v19 + 40;
        break;
      case 8:
        LOBYTE(v19) = v19 + 50;
        break;
    }
  }

  else if (v18 > 10)
  {
    if (v18 == 11)
    {
      LOBYTE(v19) = v19 + 70;
    }

    else if (v18 == 12)
    {
      if ((v19 & 0xFC) == 8)
      {
        v18 = 42;
      }

      else if ((v19 & 0xFC) == 0xC)
      {
        v18 = 32;
      }

      else if ((v19 - 16) >= 6)
      {
        if ((v19 - 22) >= 5)
        {
          if (v19 == 27)
          {
            v18 = 82;
          }

          else if (v19 == 28)
          {
            v18 = 52;
          }

          else
          {
            v18 = 12;
          }
        }

        else
        {
          v18 = 62;
        }
      }

      else
      {
        v18 = 72;
      }
    }
  }

  else
  {
    LOBYTE(v19) = v19 + 60;
  }

  *(a2 + 21) = v18;
  *(a2 + 22) = v19;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v5 + 23 || (*(a2 + 23) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v5 + 24) || (*(a2 + 24) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v5 + 25) || (*(a2 + 100) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v5 + 26))
  {
LABEL_49:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 2u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimSequenceDataAtom::PptAnimSequenceDataAtom(PptAnimSequenceDataAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDFEA8;
  *(v2 + 32) = &unk_286EDFF50;
  *(v2 + 48) = 0;
  *(v2 + 53) = 0;
}

uint64_t PptAnimSequenceDataAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimSequenceDataAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 96))(*(this + 1));
  (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 60) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 80))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimConditionAtom::PptAnimConditionAtom(PptAnimConditionAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDFAC8;
  *(v2 + 32) = &unk_286EDFB70;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptAnimConditionAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimConditionAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 15) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimVisualPageAtom::PptAnimVisualPageAtom(PptAnimVisualPageAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7860;
  *(v2 + 32) = &unk_286ED7908;
  *(v2 + 48) = 1;
}

uint64_t PptAnimVisualPageAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimVisualPageAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimSetBehaviorAtom::PptAnimSetBehaviorAtom(PptAnimSetBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7670;
  *(v2 + 32) = &unk_286ED7718;
  *(v2 + 48) = 1;
}

uint64_t PptAnimSetBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimSetBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

CsString *PptAnimVariantAtom::setWString(PptAnimVariantAtom *this, const CsString *a2)
{
  *(this + 12) = 3;
  *(this + 20) = 0;
  bzero(*(this + 9), 2 * *(this + 21));

  return CsString::append((this + 64), a2);
}

void PptAnimBehaviorAtom::PptAnimBehaviorAtom(PptAnimBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0190;
  *(v2 + 32) = &unk_286EE0238;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptAnimBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimVisualElementAtom::PptAnimVisualElementAtom(PptAnimVisualElementAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7768;
  *(v2 + 32) = &unk_286ED7810;
}

uint64_t PptAnimVisualElementAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimVisualElementAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 8 || (*(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 16) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimBuildAtom::PptAnimBuildAtom(PptAnimBuildAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED6CC0;
  *(v2 + 32) = &unk_286ED6D68;
  *(v2 + 48) = 0;
  *(v2 + 54) = 0;
}

uint64_t PptAnimBuildAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimBuildAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 8 || (*(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 60) = (*(**(this + 1) + 64))(*(this + 1)) != 0, *(a2 + 61) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimParagraphBuildAtom::PptAnimParagraphBuildAtom(PptAnimParagraphBuildAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7480;
  *(v2 + 32) = &unk_286ED7528;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptAnimParagraphBuildAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimParagraphBuildAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1)), *(a2 + 56) = (*(**(this + 1) + 64))(*(this + 1)) != 0, *(a2 + 57) = (*(**(this + 1) + 64))(*(this + 1)) != 0, *(a2 + 58) = (*(**(this + 1) + 64))(*(this + 1)) != 0, *(a2 + 59) = (*(**(this + 1) + 64))(*(this + 1)) != 0, *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimAnimateBehaviorAtom::PptAnimAnimateBehaviorAtom(PptAnimAnimateBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDF7E0;
  *(v2 + 32) = &unk_286EDF888;
  *(v2 + 48) = -1;
  *(v2 + 56) = 0;
}

uint64_t PptAnimAnimateBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimAnimateBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  v5 = (*(**(this + 1) + 104))(*(this + 1));
  PptAnimAnimateBehaviorAtom::setCalcMode(a2, v5);
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 56) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v6 = (*(**(this + 1) + 104))(*(this + 1));
  PptAnimAnimateBehaviorAtom::setValueType(a2, v6);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptAnimAnimateBehaviorAtom::setCalcMode(uint64_t result, int a2)
{
  if (a2 == -1 || a2 >= 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t PptAnimAnimateBehaviorAtom::setValueType(uint64_t result, int a2)
{
  if (a2 == -1 || a2 >= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(result + 52) = a2;
  return result;
}

void PptAnimAnimationValueAtom::PptAnimAnimationValueAtom(PptAnimAnimationValueAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDF9D0;
  *(v2 + 32) = &unk_286EDFA78;
  *(v2 + 48) = 0;
}

uint64_t PptAnimAnimationValueAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimAnimationValueAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 96))(*(this + 1));
  PptAnimAnimationValueAtom::setTime(a2, v4);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void sub_25D33F798(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1020C405730B0C9);

  _Unwind_Resume(a1);
}

void OABTable2DArray<EshShape *>::OABTable2DArray(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  if ((a3 * a2) >> 29)
  {
    [MEMORY[0x277CBEAD8] raise:@"Dimensions out of bounds" format:&stru_286EE1130];
  }

  operator new[]();
}

uint64_t OABTable2DArray<EshShape *>::element(uint64_t a1, int a2, int a3)
{
  if (a2 < 0 || *a1 <= a2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"E &OABTable2DArray<EshShape *>::element(int, int) [E = EshShape *]"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABTable.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:160 isFatal:0 description:"Index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a3 < 0 || (v8 = *(a1 + 4), v8 <= a3))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"E &OABTable2DArray<EshShape *>::element(int, int) [E = EshShape *]"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABTable.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:161 isFatal:0 description:"Index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = *(a1 + 4);
  }

  return *(a1 + 8) + 8 * (a3 + v8 * a2);
}

void OABTable2DArray<OABTableCell>::OABTable2DArray(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = a3 * a2;
  if ((a3 * a2) >= 0xAAAAAAB)
  {
    [MEMORY[0x277CBEAD8] raise:@"Dimensions out of bounds" format:&stru_286EE1130];
    v4 = a1[1] * *a1;
  }

  is_mul_ok(v4, 0x18uLL);
  operator new[]();
}

uint64_t OABTable2DArray<OABTableCell>::element(uint64_t a1, int a2, int a3)
{
  if (a2 < 0 || *a1 <= a2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"E &OABTable2DArray<OABTableCell>::element(int, int) [E = OABTableCell]"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABTable.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:160 isFatal:0 description:"Index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a3 < 0 || (v8 = *(a1 + 4), v8 <= a3))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"E &OABTable2DArray<OABTableCell>::element(int, int) [E = OABTableCell]"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/Mapper/OABTable.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:161 isFatal:0 description:"Index out of range"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = *(a1 + 4);
  }

  return *(a1 + 8) + 24 * (a3 + v8 * a2);
}

PptParaProperty9 *PptParaProperty9::copyOverridesFromParent(PptParaProperty9 *this, const PptParaProperty9 *a2)
{
  var0 = this->var0;
  if (*&this->var0)
  {
    if ((*&this->var0 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    var0 = var0 & 0xFE | *&a2->var0 & 1;
    *&this->var0 = var0;
    *(&this->var0 + 1) = *(&a2->var0 + 1);
    if ((var0 & 2) != 0)
    {
LABEL_3:
      if ((var0 & 4) != 0)
      {
        return this;
      }

LABEL_7:
      *&this->var0 = *&a2->var0 & 4 | var0;
      this->var3 = a2->var3;
      return this;
    }
  }

  var0 |= *&a2->var0 & 2;
  *&this->var0 = var0;
  LOBYTE(this->var1) = a2->var1;
  if ((var0 & 4) == 0)
  {
    goto LABEL_7;
  }

  return this;
}

void EshTablePropVal<int>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6760;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void PptTextBlockStyling10Atom::~PptTextBlockStyling10Atom(PptTextBlockStyling10Atom *this)
{
  PptTextBlockStyling10Atom::~PptTextBlockStyling10Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDC968;
  *(this + 4) = &unk_286EDCA10;
  PptTextBlockStyling10Atom::reset(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t PptTextBlockStyling10Atom::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = *(this + 56) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = *(v1 + 48);
      v7 = *(v1 + 56) - v6;
      if (v4 >= (v7 >> 3))
      {
        goto LABEL_10;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C404F21501ELL);
        v6 = *(v1 + 48);
        v7 = *(v1 + 56) - v6;
      }

      if (v4 >= (v7 >> 3))
      {
LABEL_10:
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = *(v1 + 48);
  }

  *(v1 + 56) = v2;
  return this;
}

void PptTextMasterStyle9Atom::~PptTextMasterStyle9Atom(PptTextMasterStyle9Atom *this)
{
  PptTextMasterStyle9Atom::~PptTextMasterStyle9Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDB0D0;
  *(this + 4) = &unk_286EDB178;
  PptTextMasterStyle9Atom::cleanup(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

PptTextMasterStyle9Atom *PptTextMasterStyle9Atom::cleanup(PptTextMasterStyle9Atom *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (((*(this + 7) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C4074B9B04ELL);
        v2 = *(v1 + 6);
      }

      *(v2 + 8 * v4) = 0;
      *(*(v1 + 6) + 8 * v4) = 0;
      v3 = v4 + 1;
      v2 = *(v1 + 6);
    }

    while (((*(v1 + 7) - v2) >> 3) > (v4 + 1));
  }

  *(v1 + 7) = v2;
  return this;
}

void PptBinaryTagBlipAtom::~PptBinaryTagBlipAtom(PptBinaryTagBlipAtom *this)
{
  PptBinaryTagBlipAtom::~PptBinaryTagBlipAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED7B58;
  *(this + 4) = &unk_286ED7C08;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
}

uint64_t EshTablePropVal<EshComputedPoint>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 96))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshBasicTablePropVal<EshComputedPoint>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (((*(a1 + 16) - v2) >> 4) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 16 * a2;
}

void EshArcRule::EshArcRule(EshArcRule *this)
{
  EshAtom::EshAtom(this, 0xF014u, 0);
  *v1 = &unk_286EC55D8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
}

uint64_t EshArcRule::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshTablePropVal<EshGradientStop>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 88))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshBasicTablePropVal<EshGradientStop>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (-1431655765 * ((*(a1 + 16) - v2) >> 2) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 12 * a2;
}

void EshPropValParserVisitor::parseElement(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  v4 = (*(**(a1 + 8) + 104))(*(a1 + 8));
  *(a2 + 2) = v4;
  *(a2 + 4) = BYTE1(v4);
  *(a2 + 6) = BYTE2(v4);
  *a2 = 255;
  v5 = (*(**(a1 + 8) + 96))(*(a1 + 8));
  *(a2 + 8) = EshFixedPointUtil::toFloat(v5);
}

_DWORD *EshFormula::operator=(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  for (i = 1; i != 7; i += 2)
  {
    v3 = &result[i];
    v4 = a2[i];
    *(v3 + 2) = a2[i + 1];
    *v3 = v4;
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshFormula>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (-1227133513 * ((*(a1 + 16) - v2) >> 2) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 28 * a2;
}

double EshShapeProperties::setCoordLeft(EshShapeProperties *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x140u, 2, &v4).n128_u64[0];
  return result;
}

double EshShapeProperties::setCoordTop(EshShapeProperties *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x141u, 2, &v4).n128_u64[0];
  return result;
}

double EshShapeProperties::setCoordRight(EshShapeProperties *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x142u, 2, &v4).n128_u64[0];
  return result;
}

double EshShapeProperties::setAdj(EshShapeProperties *this, int a2, unsigned int a3)
{
  var2 = this->var2;
  v5 = a3;
  *&result = EshOpt::setProperty(var2, a2 + 327, 2, &v5).n128_u64[0];
  return result;
}

void EshTablePropVal<EshGradientStop>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC66C0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshTablePropVal<EshComputedPoint>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4EA8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

uint64_t PptAnimVariantAtom::setBoolean(uint64_t this, char a2)
{
  *(this + 48) = 0;
  *(this + 52) = a2;
  return this;
}

uint64_t WrdDocumentFileRecord::appendListToStyleIndex(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  if (v3 >= *(a1 + 24))
  {
    result = std::vector<WrdDocumentFileRecord::WrdListToStyleIndex,ChAllocator<WrdDocumentFileRecord::WrdListToStyleIndex>>::__emplace_back_slow_path<WrdDocumentFileRecord::WrdListToStyleIndex const&>(a1 + 8, a2);
  }

  else
  {
    *v3 = *a2;
    result = (v3 + 1);
  }

  *(a1 + 16) = result;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setWidowed(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x100000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFDFF | ((a2 & 1) << 9);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setAutoSpaceEastAsianAndAlphabeticCharacters(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x2000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFBFFF | ((a2 & 1) << 14);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setAutoSpaceEastAsianAndNumericCharacters(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x4000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFF7FFF | ((a2 & 1) << 15);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setAdjustRightMargin(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x800000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFF7FFFF | ((a2 & 1) << 19);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setOverflowPunctuation(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x800000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFEFFF | ((a2 & 1) << 12);
  return this;
}

uint64_t WrdParagraphProperties::setFontAlignment(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000000000uLL;
  *(result + 164) = a2;
  return result;
}

void WrdTapParser::applySprm(WrdBaseParser *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int8 *a5, _WORD *a6)
{
  if (*(a3 + 8) == 54890)
  {
    if (*(a2 + 152) == 3)
    {
      *a6 = WrdProperty::getSizeOfSPRMParameter(a3);
      if (a4 + 1 >= a5)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1004;
      }

      UInt16 = CsLeReadUInt16(a4);
      for (i = 0; i != 12; ++i)
      {
        if ((UInt16 >> i))
        {
          operator new();
        }
      }
    }
  }

  else
  {
    v9 = *(a2 + 64);

    WrdTapParser::applySprm(a1, v9, a3, a4, a5, a6);
  }
}

void sub_25D341D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    (*(*a11 + 8))(a11);
  }

  MEMORY[0x25F897000](v12, 0x1000C4099076E91);
  _Unwind_Resume(a1);
}

WrdTableProperties *WrdTableProperties::setTableStyleIndex(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x10000000u;
  *(this + 164) = a2;
  return this;
}

uint64_t WrdTableProperties::setWidthOfInvisibleCellBeforeUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x20000uLL;
  *(result + 140) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setWidthOfInvisibleCellBefore(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 0x800000000000000uLL;
  *(this + 170) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableTopCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 0x8000000000000000;
  *(this + 173) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableTopCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x80000uLL;
  *(result + 148) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setDefaultTableBottomCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 2u;
  *(this + 175) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableBottomCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x200000uLL;
  *(result + 156) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setKeepOnOnePage(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x800uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFF7 | (8 * (a2 & 1));
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setTrailingIndent(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x800000000000000uLL;
  *(this + 62) = a2;
  return this;
}

uint64_t WrdStyle::isTablePartDefinedForParagraphProperties(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
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
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  return 1;
}

uint64_t WrdStyle::isTablePartDefinedForCharacterProperties(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0;
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
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  return 1;
}

uint64_t WrdStyle::isTablePartDefinedForTableProperties(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v2 = *(a1 + 136);
  if (!v2)
  {
    return 0;
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
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  return 1;
}

WrdSectionProperties *WrdSectionProperties::applyVersion10Defaults(WrdSectionProperties *this)
{
  v1 = *(this + 2);
  if ((v1 & 0x40000000000000) != 0)
  {
    if ((v1 & 0x400000000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(this + 63) = 1;
    v1 |= 0x40000000000000uLL;
    *(this + 2) = v1;
    if ((v1 & 0x400000000000000) != 0)
    {
LABEL_3:
      if ((v1 & 0x800000000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  *(this + 67) = 0;
  v1 |= 0x400000000000000uLL;
  *(this + 2) = v1;
  if ((v1 & 0x800000000000000) != 0)
  {
LABEL_4:
    if ((v1 & 0x1000000000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(this + 68) = 0;
  v1 |= 0x800000000000000uLL;
  *(this + 2) = v1;
  if ((v1 & 0x1000000000000000) != 0)
  {
LABEL_5:
    if ((v1 & 0x2000000000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(this + 138) = 1;
  v1 |= 0x1000000000000000uLL;
  *(this + 2) = v1;
  if ((v1 & 0x2000000000000000) != 0)
  {
LABEL_6:
    if ((v1 & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(this + 139) = 1;
  v1 |= 0x2000000000000000uLL;
  *(this + 2) = v1;
  if ((v1 & 0x100000000000000) != 0)
  {
LABEL_7:
    if ((v1 & 0x200000000000000) != 0)
    {
      return this;
    }

LABEL_15:
    *(this + 66) = 2;
    *(this + 2) = v1 | 0x200000000000000;
    return this;
  }

LABEL_14:
  *(this + 65) = 0;
  v1 |= 0x100000000000000uLL;
  *(this + 2) = v1;
  if ((v1 & 0x200000000000000) == 0)
  {
    goto LABEL_15;
  }

  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setHiddenInWebView(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x10000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFEFF | ((a2 & 1) << 8);
  return this;
}

void PptExMediaAtom::PptExMediaAtom(PptExMediaAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED9888;
  *(v2 + 32) = &unk_286ED9930;
  *(v2 + 52) = 0;
  *(v2 + 54) = 0;
}

uint64_t PptExMediaAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExMediaAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v5 = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 52) = v5 & 1;
  *(a2 + 53) = (v5 & 2) != 0;
  *(a2 + 54) = (v5 & 4) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSoundCollAtom::PptSoundCollAtom(PptSoundCollAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC388;
  *(v2 + 32) = &unk_286EDC430;
}

uint64_t PptSoundCollAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSoundCollAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSoundDataAtom::PptSoundDataAtom(PptSoundDataAtom *this, const EshHeader *a2)
{
  PptBinaryDataAtom::PptBinaryDataAtom(this, a2);
  *v2 = &unk_286EDC480;
  v2[4] = &unk_286EDC538;
}

void PptBinaryDataAtom::PptBinaryDataAtom(PptBinaryDataAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7A50;
  *(v2 + 32) = &unk_286ED7B08;
  *(v2 + 48) = 0;
}

uint64_t PptSoundDataAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSoundDataAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  Offset = EshRecord::getOffset(a2);
  (*(*a2 + 160))(a2, (v4 - Offset - 8));
  v6 = *(a2 + 4) + *(a2 + 3);
  v7 = v6 - (*(**(this + 1) + 40))(*(this + 1));
  BinaryDataReference = PptBinaryDataAtom::getBinaryDataReference(a2);
  PptParserVisitor::delayReadData(this, BinaryDataReference, v7 + 8);
  return 1;
}

uint64_t PptBinaryDataAtom::startAt(PptBinaryDataAtom *this, int a2)
{
  result = PptBinaryDataAtom::getBinaryDataReference(this);
  *(result + 8) = a2;
  return result;
}

uint64_t PptBinaryDataAtom::getBinaryDataReference(PptBinaryDataAtom *this)
{
  if (!*(this + 6))
  {
    operator new();
  }

  return *(this + 6);
}

uint64_t PptParserVisitor::delayReadData(PptParserVisitor *this, OcBinaryData *a2, unsigned int a3)
{
  v6 = *(this + 1);
  v7 = (*(v6->var0 + 4))(v6);
  v8 = (*(**(this + 1) + 40))(*(this + 1));
  OcBinaryData::setDataInfo(a2, v6, v7, v8, a3);
  v9 = *(**(this + 1) + 16);

  return v9();
}

void PptSoundDataAtom::~PptSoundDataAtom(PptSoundDataAtom *this)
{
  *this = &unk_286EDC480;
  *(this + 4) = &unk_286EDC538;
  PptBinaryDataAtom::~PptBinaryDataAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDC480;
  *(this + 4) = &unk_286EDC538;
  PptBinaryDataAtom::~PptBinaryDataAtom(this);
}

void PptBinaryDataAtom::~PptBinaryDataAtom(PptBinaryDataAtom *this)
{
  *this = &unk_286ED7A50;
  *(this + 4) = &unk_286ED7B08;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
}

{
  PptBinaryDataAtom::~PptBinaryDataAtom(this);

  JUMPOUT(0x25F897000);
}

void OcBinaryData::~OcBinaryData(OcBinaryData *this)
{
  OcBinaryData::~OcBinaryData(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC8710;
  if (this->var6)
  {
    var5 = this->var5;
    if (var5)
    {
      MEMORY[0x25F896FE0](var5, 0x1000C8077774924);
    }
  }

  *&this->var3 = 0;
  this->var5 = 0;
}

uint64_t WrdNoteReferencePositionTable::setCP(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 32) > a2)
  {
    v3 = *(this + 16);
    if (v3)
    {
      *(v3 + 4 * a2) = a3;
    }
  }

  return this;
}

uint64_t WrdNoteReferencePositionTable::setAuto(uint64_t this, unsigned int a2, __int16 a3)
{
  if (*(this + 32) > a2)
  {
    v3 = *(this + 24);
    if (v3)
    {
      *(v3 + 2 * a2) = a3;
    }
  }

  return this;
}

void WrdNote::WrdNote(WrdNote *this)
{
  *this = &unk_286ED5168;
  *(this + 1) = 0;
  *(this + 14) = 0;
}

uint64_t WrdNoteReferencePositionTable::getAuto(WrdNoteReferencePositionTable *this, unsigned int a2)
{
  if (*(this + 16) <= a2)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    v2 = *(this + 3);
    if (v2)
    {
      LOWORD(v2) = *(v2 + 2 * a2);
    }
  }

  return v2;
}

void *WrdNoteTable::append(WrdNoteTable *this, WrdNote *a2)
{
  v5 = a2;
  v3 = *(this + 3);
  if (v3 >= *(this + 4))
  {
    result = std::vector<WrdNote *,ChAllocator<WrdNote *>>::__emplace_back_slow_path<WrdNote * const&>(this + 2, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

uint64_t WrdNoteTable::getNoteAtMainTextCP(WrdNoteTable *this, int a2, unsigned int *a3)
{
  v3 = *(this + 2);
  v4 = (*(this + 3) - v3) >> 3;
  if (!v4)
  {
    return 0;
  }

  result = *v3;
  if (*(*v3 + 8) != a2)
  {
    v7 = 0;
    while (v4 > ++v7)
    {
      v6 = v7;
      result = *(v3 + 8 * v7);
      if (*(result + 8) == a2)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  v6 = 0;
LABEL_7:
  *a3 = v6;
  return result;
}

void XlNumberFP::XlNumberFP(XlNumberFP *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEF80;
  v2[2] = 0;
  *(v2 + 22) = 0;
}

void PptSSDocInfoAtom::PptSSDocInfoAtom(PptSSDocInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v3 + 40) = -1;
  *(v3 + 44) = 0;
  *v3 = &unk_286EDC680;
  *(v3 + 32) = &unk_286EDC728;
  *(v3 + 48) = 255;
  *(v3 + 56) = 255;
  CsString::CsString((v3 + 64));
  *(this + 44) = 0;
  *(this + 92) = 0;
  *(this + 99) = 0;
}

uint64_t PptSSDocInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSSDocInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  v5 = (*(**(this + 1) + 104))(*(this + 1));
  PptColor::setColor(a2 + 4, v5);
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 4u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (*(a2 + 30) = (*(**(this + 1) + 80))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 10) || (*(a2 + 31) = (*(**(this + 1) + 80))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (v9 = 32, CsString::reserve((a2 + 64), 32), *(a2 + 20) = 0, bzero(*(a2 + 9), 2 * *(a2 + 21)), (*(**(this + 1) + 136))(*(this + 1), &v9, *(a2 + 9)), CsString::setCount((a2 + 64), v9 - 1), PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 64 - 2 * v9), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 76) || (v6 = (*(**(this + 1) + 80))(*(this + 1)), *(a2 + 88) = v6 & 1, *(a2 + 89) = (v6 & 2) != 0, *(a2 + 92) = vand_s8(vdup_n_s32(v6), 0x300000000CLL), *(a2 + 100) = (v6 & 0x40) != 0, *(a2 + 101) = (v6 & 0x80) != 0, *(a2 + 102) = BYTE1(v6) & 1, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 78))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipUnknownBytes(*(this + 3), a2, 2u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptNamedShowSlidesAtom::PptNamedShowSlidesAtom(PptNamedShowSlidesAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB1C8;
  *(v2 + 32) = &unk_286EDB270;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptNamedShowSlidesAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptNamedShowSlidesAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  if ((EshRecord::getDataLength(a2) & 3) != 0)
  {
    goto LABEL_12;
  }

  DataLength = EshRecord::getDataLength(a2);
  v6 = DataLength + 3;
  if (DataLength >= 0)
  {
    v7 = DataLength;
  }

  else
  {
    v7 = DataLength + 3;
  }

  v8 = v7 >> 2;
  PptNamedShowSlidesAtom::setSlideIDCount(a2, v7 >> 2);
  if (v6 >= 7)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = v4 - 4;
    while (1)
    {
      v10 += 4;
      if (v10 != (*(**(this + 1) + 40))(*(this + 1)))
      {
        break;
      }

      v11 = (*(**(this + 1) + 104))(*(this + 1));
      PptNamedShowSlidesAtom::setSlideIDAt(a2, v9++, v11);
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

LABEL_11:
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSSDocInfoAtom::~PptSSDocInfoAtom(PptSSDocInfoAtom *this)
{
  *this = &unk_286EDC680;
  *(this + 4) = &unk_286EDC728;
  CsString::~CsString((this + 64));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDC680;
  *(this + 4) = &unk_286EDC728;
  CsString::~CsString((this + 64));
}

void PptNamedShowSlidesAtom::~PptNamedShowSlidesAtom(PptNamedShowSlidesAtom *this)
{
  *this = &unk_286EDB1C8;
  *(this + 4) = &unk_286EDB270;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDB1C8;
  *(this + 4) = &unk_286EDB270;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void OcBinaryReader::loadBlip(OcBinaryReader *this, EshBSE *a2, SsrwOOStream *a3)
{
  if (a2->var6)
  {
    var7 = a2->var7;
    if (var7 != -1)
    {
      (*(a3->var0 + 2))(a3, var7, 0);
      operator new();
    }
  }
}

void sub_25D343D10(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t WrdTextBoxStory::setNextTextBoxIndex(uint64_t this, int a2)
{
  *(this + 16) = 1;
  *(this + 8) = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setRevisionProperties(WrdCharacterProperties *this, char a2)
{
  *(&this->var2 + 2) |= 0x800000u;
  *(this + 85) = *(this + 85) & 0xFF7FFFFF | ((a2 & 1) << 23);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToAuthorIDOfRevisionProperties(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x1000000u;
  this->var69 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setEngraved(uint64_t result, int a2)
{
  *(result + 16) |= 0x400uLL;
  *(result + 204) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setVerticalSpacingBeforeAutomatic(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x200000000000000uLL;
  *(this + 294) = *(this + 294) & 0xFF7FFFFF | ((a2 & 1) << 23);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setVerticalSpacingAfterAutomatic(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x400000000000000uLL;
  *(this + 294) = *(this + 294) & 0xFEFFFFFF | ((a2 & 1) << 24);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setCharacterPosition(WrdCharacterProperties *this, signed __int16 a2)
{
  *&this->var2 |= 0x200000uLL;
  this->var105 = a2;
  return this;
}

void WrdListLevelFormat::clone(WrdListLevelFormat *this)
{
  (*(*this->var1 + 24))(this->var1);
  (*(this->var2->var0 + 3))(this->var2);
  operator new();
}

uint64_t WrdListLevelFormat::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a1 + 80) & 0xFE | *(a2 + 80) & 1;
  *(a1 + 80) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 80) >> 1) & 1));
  *(a1 + 80) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 80) >> 2) & 1));
  *(a1 + 80) = v6;
  LOBYTE(v6) = v6 & 0xF7 | (8 * ((*(a2 + 80) & 8) != 0));
  *(a1 + 80) = v6;
  *(a1 + 80) = v6 & 0xEF | *(a2 + 80) & 0x10;
  *(a1 + 81) = *(a2 + 81);
  v7 = *(a1 + 82) & 0xFE | *(a2 + 82) & 1;
  *(a1 + 82) = v7;
  v8 = v7 & 0xFFFFFFFD | (2 * ((*(a2 + 82) >> 1) & 1));
  *(a1 + 82) = v8;
  v9 = v8 & 0xFFFFFFFB | (4 * ((*(a2 + 82) >> 2) & 1));
  *(a1 + 82) = v9;
  v10 = v9 & 0xFFFFFFF7 | (8 * ((*(a2 + 82) >> 3) & 1));
  *(a1 + 82) = v10;
  v11 = v10 & 0xFFFFFFEF | (16 * ((*(a2 + 82) >> 4) & 1));
  *(a1 + 82) = v11;
  v12 = v11 & 0xFFFFFFDF | (32 * ((*(a2 + 82) >> 5) & 1));
  *(a1 + 82) = v12;
  v13 = v12 & 0xFFFFFFBF | (((*(a2 + 82) >> 6) & 1) << 6);
  *(a1 + 82) = v13;
  *(a1 + 82) = *(a2 + 82) & 0x80 | v13 & 0x7F;
  WrdParagraphProperties::operator=(*(a1 + 8), *(a2 + 8));
  WrdCharacterProperties::operator=(*(a1 + 16), *(a2 + 16));
  v14 = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 44) = v14;
  WrdListLevelFormat::setNumberTextLength(a1, *(a2 + 64));
  if (*(a1 + 64))
  {
    memcpy(*(a1 + 72), *(a2 + 72), 2 * *(a1 + 64));
  }

  return a1;
}

uint64_t WrdListLevelFormatOverride::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 21) & 0xFFFE | *(a2 + 21) & 1;
  *(a1 + 21) = *(a1 + 21) & 0xFFFE | *(a2 + 21) & 1;
  v6 = v5 & 0xFFFFFFFD | (2 * ((*(a2 + 21) >> 1) & 1));
  *(a1 + 21) = v6;
  *(a1 + 20) = *(a2 + 20);
  v7 = v6 & 0xFFFFFFFB | (4 * ((*(a2 + 21) >> 2) & 1));
  *(a1 + 21) = v7;
  v8 = v7 & 0xFFFFFFF7 | (8 * ((*(a2 + 21) >> 3) & 1));
  *(a1 + 21) = v8;
  v9 = v8 & 0xFFFFFFEF | (16 * ((*(a2 + 21) >> 4) & 1));
  *(a1 + 21) = v9;
  v10 = v9 & 0xFFFFFFDF | (32 * ((*(a2 + 21) >> 5) & 1));
  *(a1 + 21) = v10;
  v11 = v10 & 0xFFFFFFBF | (((*(a2 + 21) >> 6) & 1) << 6);
  *(a1 + 21) = v11;
  v12 = v11 & 0xFFFFFF7F | (((*(a2 + 21) >> 7) & 1) << 7);
  *(a1 + 21) = v12;
  v13 = v12 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 21)) & 1) << 8);
  *(a1 + 21) = v13;
  *(a1 + 21) = v13 & 0xFDFF | *(a2 + 21) & 0x200;
  v14 = *(a2 + 8);
  if (v14)
  {
    *(a1 + 8) = (*(*v14 + 16))(v14);
  }

  return a1;
}

void *WrdParser::parse(WrdParser *this, WrdListLevelFormatOverride *a2)
{
  for (i = (*(**(this + 16) + 104))(*(this + 16)); i == -1; i = (*(**(this + 16) + 104))(*(this + 16)))
  {
    ChLogFunction("Skipping unexpected 0xFFFFFFFF at start of LFOLVL", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 1224);
  }

  v5 = i;
  v6 = (*(**(this + 16) + 104))(*(this + 16));
  v7 = v6;
  v8 = v6 >> 4;
  v9 = (v6 >> 5) & 1;
  a2->var3 = v6 & 0xF;
  *(a2 + 21) = *(a2 + 21) & 0xFFFE | (v6 >> 4) & 1;
  result = WrdListLevelFormatOverride::setFormatting(a2, v9);
  if ((v8 & 1) != 0 && (v9 & 1) == 0)
  {
    if (v5 >> 15)
    {
      result = ChLogFunction("LFOLVL start at value out of range", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdParser.cpp", 1242);
    }

    else
    {
      a2->var2 = v5;
    }
  }

  if (*(this + 38) >= 9)
  {
    *(a2 + 21) = (v7 >> 4) & 0x1FC | *(a2 + 21) & 0xFC03;
  }

  return result;
}

WrdListLevelFormatOverride *WrdListLevelFormatOverride::setFormatting(WrdListLevelFormatOverride *this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2)
  {
    this = WrdListLevelFormat::reset(this->var1);
  }

  *(v3 + 21) = *(v3 + 21) & 0xFFFD | (2 * (v2 & 1));
  return this;
}

uint64_t WrdNumberRevisionMarkData::setIndexIntoNumberPlaceHolders(uint64_t this, unsigned int a2, char a3)
{
  if (a2 <= 8)
  {
    v3 = *(this + 56);
    if (v3)
    {
      *(v3 + a2) = a3;
    }
  }

  return this;
}

uint64_t WrdNumberRevisionMarkData::setNumberFormats(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 8)
  {
    v3 = *(result + 40);
    if (v3)
    {
      *(v3 + 4 * a2) = a3;
    }
  }

  return result;
}

uint64_t WrdNumberRevisionMarkData::setNumberValue(uint64_t this, unsigned int a2, int a3)
{
  if (a2 <= 8)
  {
    v3 = *(this + 48);
    if (v3)
    {
      *(v3 + 4 * a2) = a3;
    }
  }

  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setParagraphNumberInserted(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x200000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFDFFFF | ((a2 & 1) << 17);
  return this;
}

uint64_t WrdTableProperties::setJustification(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000uLL;
  *(result + 128) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setWidth(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x400000uLL;
  *(this + 58) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setAbsoluteHeight(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x8000000uLL;
  *(this + 145) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setHorizontalDistanceFromText(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x40000000uLL;
  *(this + 60) = a2;
  return this;
}

uint64_t WrdCharacterProperties::setSmallCaps(uint64_t result, int a2)
{
  *(result + 16) |= 0x10000000uLL;
  *(result + 184) = a2;
  return result;
}

void SsrwOOMemStream::readFloat64(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 7)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  CsLeReadFloat64(**(this + 1) + v1);
  *(this + 5) += 8;
}

double *CsCopyFloat64ToPackedLocation(double *result, double a2)
{
  if (result)
  {
    *result = a2;
  }

  return result;
}

uint64_t WrdBaseParser::parseBuffer(uint64_t this, WrdShading *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (a4 > a3 && a4 - a3 >= 10)
  {
    a2->var2 = 1;
    WrdBaseParser::parseBuffer(this, &a2->var3, a3, a4);
    WrdBaseParser::parseBuffer(v7, &a2->var4, a3 + 4, a4);
    this = CsLeReadUInt16(a3 + 4);
    if ((this - 64) <= 0xFFBE)
    {
      ChLogF("Unexpected shading pattern %d", v8, v9, v10, v11, v12, v13, v14, this);
      this = 0xFFFFLL;
    }

    a2->var1 = this;
  }

  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setVerticalDistanceFromText(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x20000000uLL;
  *(this + 59) = a2;
  return this;
}

uint64_t WrdCharacterProperties::setCodePageForPreUnicodeFiles(uint64_t result, int a2)
{
  *(result + 24) |= 0x20000u;
  *(result + 244) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setCharPositionOfPictureBulletInBookmark(WrdCharacterProperties *this, int a2)
{
  *(&this->var2 + 2) |= 0x800u;
  this->var58 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setListCharacterPictureBullet(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x40000u;
  this->var75 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setHidden(uint64_t result, int a2)
{
  *(result + 16) |= 0x20uLL;
  *(result + 192) = a2;
  return result;
}

void XlPalette::XlPalette(XlPalette *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF100;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 1;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlPalette *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  if (v4)
  {
    operator new[](4 * v4);
  }

  XlPalette::takeColors(a2, *(this + 8), 0);
  *(this + 8) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlPalette::takeColors(uint64_t this, int *a2, __int16 a3)
{
  v5 = this;
  if (*(this + 26) == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8052888210);
    }
  }

  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 26) = 1;
  return this;
}

uint64_t XlColorTable::setColors(XlColorTable *this, int *a2, __int16 a3)
{
  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8052888210);
  }

  *(this + 1) = a2;
  *(this + 12) = a3;
  *(this + 40) = 0;
  if (!a2)
  {

    XlColorTable::setDefault(this);
  }

  return result;
}

void XlPalette::~XlPalette(XlPalette *this)
{
  XlPalette::~XlPalette(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECF100;
  if (*(this + 26) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
    }
  }

  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 26) = 1;
}

void XlPaletteX::XlPaletteX(XlPaletteX *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF140;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 1;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlPaletteX *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  if (v4)
  {
    operator new[](4 * v4);
  }

  XlPalette::takeColors(a2, *(this + 8), 0);
  *(this + 8) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlColorTable::setXColors(XlColorTable *this, int *a2, __int16 a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8052888210);
  }

  *(this + 2) = a2;
  *(this + 13) = a3;
  return result;
}

void XlPaletteX::~XlPaletteX(XlPaletteX *this)
{
  XlPaletteX::~XlPaletteX(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECF140;
  if (*(this + 26) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
    }
  }

  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 26) = 1;
}

void XlPhoneticInfo::XlPhoneticInfo(XlPhoneticInfo *this)
{
  *this = &unk_286ECF240;
  OcText::OcText((this + 24));
  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 4) = -1;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

uint64_t XlString::takeExtendedText(XlString *this, XlPhoneticInfo *a2)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 10) = a2;
  return result;
}

void XlPhoneticInfo::~XlPhoneticInfo(XlPhoneticInfo *this)
{
  XlPhoneticInfo::~XlPhoneticInfo(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECF240;
  v2 = (this + 24);
  OcText::clearBuffer((this + 24));
  XlPhoneticInfo::clearRuns(this);
  *(this + 4) = -1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  OcText::~OcText(v2);
}

void *XlPhoneticInfo::clearRuns(void *this)
{
  v1 = this;
  v2 = this[9];
  v3 = this[10];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[9];
        v3 = v1[10];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[10] = v2;
  return this;
}

void PptAnimEffectBehaviorAtom::PptAnimEffectBehaviorAtom(PptAnimEffectBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7198;
  *(v2 + 32) = &unk_286ED7240;
  *(v2 + 48) = 0;
}

uint64_t PptAnimEffectBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimEffectBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimCmdBehaviorAtom::PptAnimCmdBehaviorAtom(PptAnimCmdBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED6EB0;
  *(v2 + 32) = &unk_286ED6F58;
  *(v2 + 48) = 0;
}

uint64_t PptAnimCmdBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimCmdBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

float SsrwOOStgStream::readFloat32(SsrwOOStgStream *this)
{
  v5 = 0.0;
  v1 = readFloat32(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t readFloat32(uint64_t a1, float *a2)
{
  v6 = 4;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, v5, &v6);
    *a2 = CsLeReadFloat32(v5);
  }

  return v2;
}

uint64_t PptAnimVariantAtom::setReal(uint64_t this, float a2)
{
  *(this + 48) = 2;
  *(this + 60) = a2;
  return this;
}

void PptAnimModifierAtom::PptAnimModifierAtom(PptAnimModifierAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDFBC0;
  *(v2 + 32) = &unk_286EDFC68;
  *(v2 + 48) = 0;
}

uint64_t PptAnimModifierAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimModifierAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 112))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void XlStandardWidth::XlStandardWidth(XlStandardWidth *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0158;
  *(v2 + 16) = 0;
}

void XlSort::XlSort(XlSort *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0098;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSort *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = v4 & 1;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 17) = vuzp1_s8(v5, v5).u32[0];
  *(a2 + 21) = (v4 >> 5) & 0x1F;
  *(a2 + 22) = (v4 & 0x400) != 0;
  *(a2 + 23) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 24) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 25) = (*(**(this + 2) + 64))(*(this + 2));
  if (*(a2 + 23))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  if (*(a2 + 24))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  if (*(a2 + 25))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlAddMenu::setMenuItemBefore(XlAddMenu *this, XlString *a2)
{
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 4) = a2;
  return result;
}

void XlSort::~XlSort(XlSort *this)
{
  *this = &unk_286ED0098;
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
}

{
  XlSort::~XlSort(this);

  JUMPOUT(0x25F897000);
}

void XlChartBinaryReader::scanChartsheet(XlParserVisitor **this)
{
  v2 = XlChartBinaryReader::reset(this);
  v3 = (*(*this + 78))(this, v2);
  *(this + 393) = (*(*v3 + 40))(v3);
  XlBinaryReader::scanWorksheet(this);
  LocationToBeginSearchForMainChart = XlChartBinaryReader::getLocationToBeginSearchForMainChart(this);
  v5 = (*(*this + 78))(this);
  (*(*v5 + 16))(v5, LocationToBeginSearchForMainChart, 0);
  XlHeader::XlHeader(&v17);
  while (v17.var1 != 10)
  {
    if (v17.var1 == 4098)
    {
      XlChartChart::XlChartChart(v12, &v17);
      XlParserVisitor::skipHeader(this[167]);
      (*(*this[167] + 1936))(this[167], v12);
      v6 = EshFixedPointUtil::toFloat(v15);
      v7 = EshFixedPointUtil::toFloat(v16);
      v8 = EshFixedPointUtil::toFloat(v15);
      v9 = CsMath::convertFixedToFloat(v13);
      v10 = EshFixedPointUtil::toFloat(v16);
      v11 = CsMath::convertFixedToFloat(v14);
      *(this + 389) = v6;
      *(this + 390) = v7;
      *(this + 391) = v8 + v9;
      *(this + 392) = v10 + v11;
      XlChartChart::~XlChartChart(v12);
      return;
    }

    XlParserVisitor::getNextUniqueHeader(this[167], &v17);
  }
}

void sub_25D34627C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XlChartChart::~XlChartChart(va);
  _Unwind_Resume(a1);
}

void XlPrintSize::XlPrintSize(XlPrintSize *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF3B0;
  *(v2 + 16) = 0;
}

uint64_t XlChartBinaryReader::getLocationToBeginSearchForMainChart(XlChartBinaryReader *this)
{
  if (((*(this + 170) - *(this + 169)) & 0x3FFFFFFFCLL) == 0)
  {
    return *(this + 393);
  }

  v2 = (*(*this + 624))(this);
  (*(*v2 + 16))(v2, *(*(this + 170) - 4), 0);
  XlHeader::XlHeader(&v5);
  while (v5.var1 != 10)
  {
    XlParserVisitor::getNextUniqueHeader(*(this + 167), &v5);
  }

  v3 = (*(*this + 624))(this);
  return (*(*v3 + 40))(v3) + 4;
}

void XlChartChart::XlChartChart(XlChartChart *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA5C0;
  v2[2] = 0;
  v2[3] = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartChart *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 7) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 104))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 104))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::beginRead(XlParserVisitor *this)
{
  result = (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = result;
  return result;
}

void XlChartBinaryReader::setChart(XlChartBinaryReader *this, unsigned int a2)
{
  if (a2 == -1)
  {
    LocationToBeginSearchForMainChart = XlChartBinaryReader::getLocationToBeginSearchForMainChart(this);
  }

  else
  {
    v3 = *(this + 169);
    v4 = (*(this + 170) - v3) >> 2;
    if (v4 <= a2)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1004;
    }

    if (v4 <= a2)
    {
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
    }

    LocationToBeginSearchForMainChart = *(v3 + 4 * a2);
  }

  v6 = XlChartBinaryReader::reset(this);
  v7 = (*(*this + 624))(this, v6);
  (*(*v7 + 16))(v7, LocationToBeginSearchForMainChart, 0);
  XlChartBinaryReader::scanChartProperties(this);
  v8 = (*(**(this + 166) + 16))(*(this + 166), 55);
  if (v8)
  {
    v9 = v8;
    XlSubstreamProperties::operator=(v8, this + 1136);
    XlSubstreamProperties::operator=(this + 1136, this + 1376);
    XlSubstreamProperties::operator=(this + 1376, v9);
    (*(*v9 + 8))(v9);
  }

  v10 = (*(*this + 624))(this);
  (*(*v10 + 16))(v10, LocationToBeginSearchForMainChart, 0);

  XlChartBinaryReader::scanChartObjects(this);
}

uint64_t XlChartBinaryReader::scanChartProperties(XlChartBinaryReader *this)
{
  XlHeader::XlHeader(&v3);
  XlSubstreamProperties::setDefault((this + 1376));
  result = XlParserVisitor::getHeader(*(this + 167), &v3, *(this + 1320));
  if (v3.var1 == 2057)
  {
    operator new();
  }

  return result;
}

uint64_t XlSubstreamProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    XlSheetInfo::operator=(a1 + 8, a2 + 8);
    XlPageProperties::operator=(a1 + 24, a2 + 24);
    XlCellTableInfo::operator=(a1 + 136, a2 + 136);
    *(a1 + 160) = *(a2 + 160);
  }

  return a1;
}

double XlCellTableInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 16) = *(a2 + 16);
  }

  return result;
}

void XlSubstreamProperties::~XlSubstreamProperties(XlSubstreamProperties *this)
{
  *this = &unk_286ECD440;
  v1 = (this + 24);
  XlCellTableInfo::~XlCellTableInfo((this + 136));
  XlPageProperties::~XlPageProperties(v1);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECD440;
  v1 = (this + 24);
  XlCellTableInfo::~XlCellTableInfo((this + 136));
  XlPageProperties::~XlPageProperties(v1);
}

void XlChartBinaryReader::scanChartObjects(XlChartBinaryReader *this)
{
  *(this + 223) = *(this + 222);
  *(this + 226) = *(this + 225);
  operator new();
}

uint64_t XlChartBinaryReader::nextSibling(XlChartBinaryReader *this, XlHeader *a2)
{
  while (1)
  {
    XlParserVisitor::getHeader(*(this + 167), a2, *(this + 444));
    var1 = a2->var1;
    if (var1 != 4147)
    {
      break;
    }

    if (XlChartBinaryReader::nextSibling(this, a2))
    {
      do
      {
        XlParserVisitor::seekNextRecord(*(this + 167));
      }

      while ((XlChartBinaryReader::nextSibling(this, a2) & 1) != 0);
    }
  }

  if (var1 == 4148)
  {
    XlParserVisitor::seekNextRecord(*(this + 167));
    return 0;
  }

  else
  {
    v6 = (*(*this + 624))(this);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    v5 = 1;
    (*(*v6 + 16))(v6, -RecordDataOffset, 1);
  }

  return v5;
}

uint64_t XlParserVisitor::seekNextRecord(uint64_t this)
{
  if ((*(this + 80) & 0x80000000) == 0)
  {
    return (*(**(this + 16) + 16))();
  }

  return this;
}

void XlChartPlotGrowth::XlChartPlotGrowth(XlChartPlotGrowth *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECABC8;
  v2[2] = 0;
}

uint64_t XlChartParserVisitor::visit(XlParserVisitor *a1, uint64_t a2)
{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 96))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 72))(*(a1 + 2));
  *(a2 + 22) = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 24) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 28) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 18) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (*(a2 + 8) >= 0xCu)
  {
    *(a2 + 32) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    *(a2 + 20) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  }

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 48) = (*(**(a1 + 2) + 64))(*(a1 + 2));
  *(a2 + 52) = (*(**(a1 + 2) + 64))(*(a1 + 2));
  *(a2 + 44) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 28) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 32) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 40) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (*(a2 + 8) >= 0x20u)
  {
    *(a2 + 36) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    *(a2 + 42) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    *(a2 + 38) = (*(**(a1 + 2) + 72))(*(a1 + 2));
  }

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 32) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 34) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 96))(*(a1 + 2));
  *(a2 + 28) = (*(**(a1 + 2) + 96))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  (*(**(a1 + 2) + 16))(*(a1 + 2), 16, 1);

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 28) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (*(a2 + 8) >= 0xCu)
  {
    *(a2 + 30) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  }

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 30) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (*(a2 + 8) >= 0x10u)
  {
    *(a2 + 26) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    *(a2 + 28) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  }

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 32) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 40) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 48) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 56) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  (*(**(a1 + 2) + 16))(*(a1 + 2), 16, 1);
  *(a2 + 18) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  v4 = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (v4 >= 0xFF)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  *(a2 + 16) = v4;

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 28) = (*(**(a1 + 2) + 64))(*(a1 + 2));
  *(a2 + 32) = (*(**(a1 + 2) + 64))(*(a1 + 2));
  *(a2 + 36) = (*(**(a1 + 2) + 64))(*(a1 + 2));
  (*(**(a1 + 2) + 16))(*(a1 + 2), 1, 1);
  *(a2 + 16) = (*(**(a1 + 2) + 120))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 24) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 28) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  if (*(a2 + 8) < 0x14u)
  {
    v4 = 180;
  }

  else
  {
    *(a2 + 30) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    *(a2 + 32) = (*(**(a1 + 2) + 80))(*(a1 + 2));
    v4 = (*(**(a1 + 2) + 104))(*(a1 + 2));
  }

  *(a2 + 36) = v4;

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 18) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 24) = vcvts_n_f32_u32((*(**(a1 + 2) + 104))(*(a1 + 2)), 0x10uLL);
  *(a2 + 20) = (*(**(a1 + 2) + 104))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  (*(**(a1 + 2) + 104))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  (*(**(a1 + 2) + 16))(*(a1 + 2), 2, 1);
  (*(**(a1 + 2) + 72))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 72))(*(a1 + 2)) & 1;
  (*(**(a1 + 2) + 72))(*(a1 + 2));
  (*(**(a1 + 2) + 72))(*(a1 + 2));
  (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  (*(**(a1 + 2) + 104))(*(a1 + 2));
  *(a2 + 20) = ((*(**(a1 + 2) + 80))(*(a1 + 2)) & 2) != 0;

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  *(a2 + 16) = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);

  return XlParserVisitor::endRead(a1, a2);
}

void XlChartSerToCrt::XlChartSerToCrt(XlChartSerToCrt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAEC8;
  *(v2 + 16) = 0;
}

void XlChartDefaultText::XlChartDefaultText(XlChartDefaultText *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA7C0;
  *(v2 + 16) = 0;
}

void XlChartAxisParent::XlChartAxisParent(XlChartAxisParent *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA4C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlChartParserVisitor::visit(XlParserVisitor *a1, _DWORD *a2)
{
  XlParserVisitor::beginRead(a1);
  a2[4] = (*(**(a1 + 2) + 80))(*(a1 + 2));
  a2[5] = (*(**(a1 + 2) + 96))(*(a1 + 2));
  a2[6] = (*(**(a1 + 2) + 96))(*(a1 + 2));
  a2[7] = (*(**(a1 + 2) + 96))(*(a1 + 2));
  a2[8] = (*(**(a1 + 2) + 96))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

void sub_25D348E28(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartObjectLink::XlChartObjectLink(XlChartObjectLink *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAAC0;
  v2[2] = 0;
}

void XlChartSiIndex::XlChartSiIndex(XlChartSiIndex *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAF88;
  *(v2 + 16) = 0;
}

void XlChartParent::XlChartParent(XlChartParent *this)
{
  XlChartFrameType::XlChartFrameType(this);
  XlChartShtProps::XlChartShtProps((v2 + 88));
  *this = &unk_286ECB928;
  *(this + 11) = &unk_286ECB948;
  XlString::XlString((this + 120));
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 28) = _D0;
  *(this + 58) = 65537;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
}

void sub_25D349188(_Unwind_Exception *a1)
{
  TSURectWithOriginAndSize(v2);
  XlChartFrameType::~XlChartFrameType(v1);
  _Unwind_Resume(a1);
}

void XlChartFrameType::XlChartFrameType(XlChartFrameType *this)
{
  this->var0 = &unk_286ECB1E8;
  *&this->var1 = 0u;
  *&this->var5 = 0u;
  *&this->var9 = 0u;
  *(&this->var10 + 1) = 0u;
  *&this->var13 = 257;
  this->var15 = 0;
  this->var16 = 0;
}

void XlChartShtProps::XlChartShtProps(XlChartShtProps *this)
{
  XlRecord::XlRecord(this, 4164, 4, 0);
  *v1 = &unk_286ECAF48;
  *(v1 + 16) = 1;
  *(v1 + 20) = 0;
  *(v1 + 24) = 0;
}

void sub_25D34975C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v5, 0x1081C400D242BDDLL);
  MEMORY[0x25F897000](v4, v1);
  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartFBI::XlChartFBI(XlChartFBI *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA840;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlChartParserVisitor::visit(XlParserVisitor *a1, _WORD *a2)
{
  XlParserVisitor::beginRead(a1);
  a2[8] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[9] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[10] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[11] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[12] = (*(**(a1 + 2) + 72))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  a2[8] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[9] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[10] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[11] = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  a2[8] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[9] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[10] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[11] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[12] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[13] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[14] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[15] = (*(**(a1 + 2) + 72))(*(a1 + 2));
  a2[16] = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

{
  XlParserVisitor::beginRead(a1);
  a2[8] = (*(**(a1 + 2) + 80))(*(a1 + 2));
  a2[9] = (*(**(a1 + 2) + 80))(*(a1 + 2));
  a2[10] = (*(**(a1 + 2) + 80))(*(a1 + 2));
  a2[11] = (*(**(a1 + 2) + 80))(*(a1 + 2));

  return XlParserVisitor::endRead(a1, a2);
}

void *XlChartParent::addFontBasis(void *this, XlChartFBI **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = this;
    v5 = this;
    v7 = this[30];
    this = this[31];
    v6 = v5 + 30;
    v8 = (this - v7) >> 3;
    if (v8)
    {
      v9 = 0;
      while (*(*(v7 + 8 * v9) + 24) != *(v2 + 24))
      {
        if (v8 <= ++v9)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (this >= v4[32])
      {
        this = std::vector<XlChartFBI *,ChAllocator<XlChartFBI *>>::__emplace_back_slow_path<XlChartFBI * const&>(v6, a2);
      }

      else
      {
        *this++ = v2;
      }

      v4[31] = this;
      *a2 = 0;
    }
  }

  return this;
}

void XlChartShtProps::XlChartShtProps(XlChartShtProps *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAF48;
  *(v2 + 16) = 1;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartShtProps *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = **(this + 2);
  if (*(a2 + 2) == 3)
  {
    v5 = (*(v4 + 64))();
  }

  else
  {
    v5 = (*(v4 + 80))();
  }

  *(a2 + 5) = v5;

  return XlParserVisitor::endRead(this, a2);
}

void sub_25D34A37C(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartDataSeries::XlChartDataSeries(XlChartDataSeries *this)
{
  *this = &unk_286ECB118;
  *(this + 1) = 0;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
}

void XlChartBinaryReader::readSeries(XlChartBinaryReader *this, XlChartDataSeries *a2, uint64_t a3)
{
  v5 = (*(*this + 624))(this);
  (*(*v5 + 16))(v5, a3, 0);
  *(this + 936) = 0;
  operator new();
}

void sub_25D34AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  (*(*a9 + 8))(a9);
  (*(*v11 + 8))(v11);
  MEMORY[0x25F897000](v10, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartSeries::XlChartSeries(XlChartSeries *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAE08;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void sub_25D34B5E0(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartAI::XlChartAI(XlChartAI *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA2C0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 30) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartAI *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 4) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 17) = v4;
  if (v4 < 1 || *(a2 + 14) == 1)
  {
    return XlParserVisitor::endRead(this, a2);
  }

  v6 = *(a2 + 2) + *(this + 18);
  v7 = (*(**(this + 2) + 40))(*(this + 2));
  v8 = (v6 - v7);
  if (v8 < *(a2 + 17))
  {
    exception = __cxa_allocate_exception(4uLL);
    v11 = 3002;
    goto LABEL_12;
  }

  if (*(this + 3))
  {
    exception = __cxa_allocate_exception(4uLL);
    v11 = 1011;
LABEL_12:
    *exception = v11;
  }

  if (v6 != v7)
  {
    operator new[](v8);
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlChartLinkedData::XlChartLinkedData(XlChartLinkedData *this)
{
  *this = &unk_286ECB218;
  *(this + 2) = 0;
  *(this + 6) = -65536;
  *(this + 28) = 1;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
}

void XlChartAI::~XlChartAI(XlChartAI *this)
{
  *this = &unk_286ECA2C0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECA2C0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
}

void XlChartLinkedData::~XlChartLinkedData(XlChartLinkedData *this)
{
  XlChartLinkedData::~XlChartLinkedData(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECB218;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 4);
  *(this + 2) = 0;
  if (v3 != (this + 40))
  {
    do
    {
      v4 = *(v3 + 5);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 40));
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 32, *(this + 5));
}

uint64_t XlChartDataSeries::takeTitleLink(XlChartDataSeries *this, XlChartLinkedData *a2)
{
  result = *(this + 18);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 18) = a2;
  return result;
}

uint64_t XlChartAI::giveParsedFormula(XlChartAI *this)
{
  v1 = *(this + 3);
  *(this + 3) = 0;
  return v1;
}

uint64_t XlChartLinkedData::takeFormula(uint64_t this, unsigned __int8 *a2, __int16 a3)
{
  *(this + 16) = a2;
  *(this + 24) = a3;
  return this;
}

uint64_t XlChartBinaryReader::mineEnteredData(XlChartBinaryReader *this, XlChartLinkedData *a2, unsigned int a3)
{
  if (*(this + 498) < 1)
  {
    if (*(this + a3 + 410) >= 1)
    {
      operator new();
    }
  }

  else if (a3 != 3 || *(this + 1996) == 1)
  {
    operator new();
  }

  return 0;
}

void sub_25D34CC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  (*(*v7 + 8))(v7);
  MEMORY[0x25F897000](v6, 0x1000C4087442A64);
  ChAutoPtr<ChVector<unsigned short>>::~ChAutoPtr(va1);
  ChAutoPtr<ChVector<unsigned short>>::~ChAutoPtr(va);
  _Unwind_Resume(a1);
}

uint64_t *XlChartLinkedData::takeEnteredData(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a2)
    {
      break;
    }

LABEL_5:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_5;
  }

  v10 = &v9;
  v7 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v9)[5];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v10 = &v9;
  std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v9)[5] = 0;
LABEL_10:
  v10 = &v9;
  result = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v9);
  result[5] = a3;
  return result;
}

uint64_t XlChartDataSeries::takeValueLink(XlChartDataSeries *this, XlChartLinkedData *a2)
{
  result = *(this + 19);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 19) = a2;
  return result;
}

void XlLabel::XlLabel(XlLabel *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEB80;
  v2[2] = 0;
  *(v2 + 22) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlLabel *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 13) = (*(**(this + 2) + 72))(*(this + 2));
  if (*(a2 + 6) == 4)
  {
    (*(**(this + 2) + 64))(*(this + 2));
  }

  *(a2 + 14) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = **(this + 2);
  if (*(a2 + 6) == 4)
  {
    v5 = (*(v4 + 64))();
  }

  else
  {
    v5 = (*(v4 + 72))();
    if (v5 < 0)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 3002;
    }
  }

  if (v5)
  {
    v6 = *(a2 + 14);
    if (v6 > 8 || v6 == 1)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlLabel::~XlLabel(XlLabel *this)
{
  *this = &unk_286ECEB80;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECEB80;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t XlChartDataSeries::takeCategoryLink(XlChartDataSeries *this, XlChartLinkedData *a2)
{
  result = *(this + 20);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 20) = a2;
  return result;
}

uint64_t XlChartDataSeries::takeSizeLink(XlChartDataSeries *this, XlChartLinkedData *a2)
{
  result = *(this + 21);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 21) = a2;
  return result;
}

void XlChartDataFormat::XlChartDataFormat(XlChartDataFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA740;
  v2[2] = 0;
}

void XlChartSeriesFormat::XlChartSeriesFormat(XlChartSeriesFormat *this)
{
  this->var0 = &unk_286ECBA30;
  *&this->var1 = 0u;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  *&this->var7 = 0;
  *&this->var9 = 0xFFFFFFFFLL;
  this->var12 = 0;
  *&this->var13 = 0;
  *&this->var16 = 0;
}

void sub_25D34DC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XlChartShapePropsStream::~XlChartShapePropsStream(va);
  MEMORY[0x25F897000](v3, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartShape::XlChartShape(XlChartShape *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAF08;
  *(v2 + 16) = 0;
}

void *XlChartDataSeries::takeDefaultFormat(void *this, XlChartSeriesFormat *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[4];
    if (v3 >= v2[5])
    {
      this = std::vector<XlChartSeriesFormat *,ChAllocator<XlChartSeriesFormat *>>::__emplace_back_slow_path<XlChartSeriesFormat * const&>(v2 + 3, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[4] = this;
  }

  return this;
}

void XlChartTextFrame::XlChartTextFrame(XlChartTextFrame *this)
{
  XlChartFrameType::XlChartFrameType(this);
  *v1 = &unk_286EC9A18;
  *(v1 + 88) = 0;
  *(v1 + 96) = 255;
  *(v1 + 106) = 0;
  *(v1 + 98) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = xmmword_25D6FE420;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 184) = 5111807;
  *(v1 + 188) = 0;
  *(v1 + 194) = 0;
  *(v1 + 202) = 1;
  *(v1 + 208) = 0;
}

XlChartBinaryReader *XlChartBinaryReader::read(XlChartBinaryReader *this, XlChartTextFrame *a2)
{
  v2 = *(this + *(a2 + 108) + 395);
  if ((v2 & 0x80000000) == 0)
  {
    XlChartBinaryReader::readTextFrame(this, a2, v2);
  }

  return this;
}

void XlChartTextFrame::~XlChartTextFrame(XlChartTextFrame *this)
{
  *this = &unk_286EC9A18;
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 13) = 0;
  v3 = *(this + 26);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 26) = 0;
  v4 = *(this + 11);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 11) = 0;
  v5 = *(this + 14);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(this + 14) = 0;
  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  XlChartFrameType::~XlChartFrameType(this);
}

{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void XlChartFrameType::~XlChartFrameType(XlChartFrameType *this)
{
  this->var0 = &unk_286ECB1E8;
  var9 = this->var9;
  if (var9)
  {
    (*(var9->var0 + 1))(var9);
  }

  this->var9 = 0;
  var10 = this->var10;
  if (var10)
  {
    (*(var10->var0 + 1))(var10);
  }

  this->var10 = 0;
  var11 = this->var11;
  if (var11)
  {
    (*(var11->var0 + 1))(var11);
  }

  this->var11 = 0;
  var15 = this->var15;
  if (var15)
  {
    MEMORY[0x25F896FE0](var15, 0x1000C8077774924);
  }

  this->var15 = 0;
}

{
  XlChartFrameType::~XlChartFrameType(this);

  JUMPOUT(0x25F897000);
}

void XlChartBinaryReader::readTextFrame(XlChartBinaryReader *this, XlChartTextFrame *a2, uint64_t a3)
{
  v4 = (*(*this + 624))(this);
  (*(*v4 + 16))(v4, a3, 0);
  operator new();
}

void sub_25D34EB04(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1091C4095979E0DLL);
  (*(*v4 + 8))(v4);
  (*(*v2 + 8))(v2);
  MEMORY[0x25F897000](v1, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartText::XlChartText(XlChartText *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECB008;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
}

void XlChartPos::XlChartPos(XlChartPos *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAC08;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlChartFontX::XlChartFontX(XlChartFontX *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA880;
  *(v2 + 16) = 0;
}

void XlChartBinaryReader::read(XlChartBinaryReader *this, XlChartPlotFrame *a2)
{
  v3 = (*(*this + 624))(this);
  (*(*v3 + 16))(v3, *(this + 399), 0);
  operator new();
}

void sub_25D34F628(_Unwind_Exception *a1)
{
  (*(*v4 + 8))(v4);
  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartBinaryReader::scanAxisParent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a2 = -1;
  *(a2 + 8) = -1;
  *(a2 + 24) = v2;
  *(a2 + 40) = -1;
  *(a2 + 48) = -1;
  *(a1 + 1660) = -1;
  operator new();
}

void XlChartAxis::XlChartAxis(XlChartAxis *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA440;
  *(v2 + 16) = 0;
}

void XlChartBinaryReader::readFrameFormatting(XlChartBinaryReader *this, XlChartFrameType *a2, uint64_t a3)
{
  v4 = (*(*this + 624))(this);
  (*(*v4 + 16))(v4, a3, 0);
  operator new();
}

void sub_25D34FF30(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C40093F2493);
  MEMORY[0x25F897000](v1, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartFrame::XlChartFrame(XlChartFrame *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA8C0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

void sub_25D35045C(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartLineFormat::XlChartLineFormat(XlChartLineFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAA40;
  v2[2] = 0;
  v2[3] = 0;
}

XlChartLineStyle *XlChartFrameType::takeBorderStyle(XlChartFrameType *this, XlChartLineStyle *a2)
{
  result = this->var9;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var9 = a2;
  return result;
}

void sub_25D3508FC(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartAreaFormat::XlChartAreaFormat(XlChartAreaFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA380;
  v2[2] = 0;
  v2[3] = 0;
}

XlChartFillStyle *XlChartFrameType::takeAreaFillStyle(XlChartFrameType *this, XlChartFillStyle *a2)
{
  result = this->var10;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var10 = a2;
  return result;
}

BOOL XlChartBinaryReader::hasAxis(uint64_t a1, int a2, int a3)
{
  v3 = 1720;
  if (!a2)
  {
    v3 = 1664;
  }

  v4 = (a1 + v3);
  switch(a3)
  {
    case 2:
      v5 = v4[2];
      return v5 > 0;
    case 1:
      v5 = v4[1];
      return v5 > 0;
    case 0:
      v5 = *v4;
      return v5 > 0;
  }

  return 0;
}

uint64_t XlChartBinaryReader::read(uint64_t result, int a2, int a3, void *a4)
{
  v4 = 1664;
  if (a2)
  {
    v4 = 1720;
  }

  v5 = (result + v4);
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      if (a3 != 2)
      {
        *a4 = 0;
        return result;
      }

      v6 = v5 + 2;
    }
  }

  else
  {
    v6 = v5;
  }

  v7 = *v6;
  *a4 = 0;
  if (v7 >= 1)
  {
    v8 = (*(*result + 624))(result);
    (*(*v8 + 16))(v8, v7, 0);
    operator new();
  }

  return result;
}

void sub_25D351D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*a13 + 8))(a13);
  MEMORY[0x25F897000](v13, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartAxCext::XlChartAxCext(XlChartAxCext *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA400;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 239;
}

void XlChartCategoryAxis::XlChartCategoryAxis(XlChartCategoryAxis *this)
{
  XlChartPlotAxis::XlChartPlotAxis(this);
  *v1 = &unk_286ECB0C8;
  v1[20] = 0;
  v1[21] = 0;
  v1[19] = 0;
}

void XlChartPlotAxis::XlChartPlotAxis(XlChartPlotAxis *this)
{
  this->var0 = &unk_286ECB9E0;
  this->var1 = 0;
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  *&this->var6 = 0u;
  *&this->var8 = 0u;
  *&this->var10 = 0u;
  *&this->var12 = 0u;
  *&this->var14 = 0u;
  *&this->var18 = 0u;
  *&this->var22 = 0;
}

void XlChartCatSerRange::XlChartCatSerRange(XlChartCatSerRange *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA580;
  v2[2] = 0x1000100010000;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartCatSerRange *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 11) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartCategoryAxis::takeRange(XlChartCategoryAxis *this, XlChartCatSerRange *a2)
{
  result = *(this + 19);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 19) = a2;
  return result;
}

uint64_t XlChartCategoryAxis::takeCategorySpec(XlChartCategoryAxis *this, XlChartAxCext *a2)
{
  result = *(this + 21);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 21) = a2;
  return result;
}

void XlChartTick::XlChartTick(XlChartTick *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECB048;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartTick *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 7) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 104))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  *(a2 + 11) = (*(**(this + 2) + 80))(*(this + 2));
  if (*(a2 + 2) >= 0x1Eu)
  {
    *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));
    *(a2 + 12) = (*(**(this + 2) + 80))(*(this + 2));
  }

  return XlParserVisitor::endRead(this, a2);
}

XlChartTick *XlChartPlotAxis::takeTicks(XlChartPlotAxis *this, XlChartTick *a2)
{
  result = this->var9;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var9 = a2;
  return result;
}

void XlChartCategoryAxis::~XlChartCategoryAxis(XlChartPlotAxis *this)
{
  XlChartCategoryAxis::~XlChartCategoryAxis(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECB0C8;
  var0 = this[1].var0;
  if (var0)
  {
    (*(*var0 + 1))(var0);
  }

  this[1].var0 = 0;
  v3 = *&this[1].var1;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *&this[1].var1 = 0;
  var2 = this[1].var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this[1].var2 = 0;

  XlChartPlotAxis::~XlChartPlotAxis(this);
}

void XlChartPlotAxis::~XlChartPlotAxis(XlChartPlotAxis *this)
{
  this->var0 = &unk_286ECB9E0;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(var3->var0 + 1))(var3);
  }

  this->var3 = 0;
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
  var6 = this->var6;
  if (var6)
  {
    (*(var6->var0 + 1))(var6);
  }

  this->var6 = 0;
  var7 = this->var7;
  if (var7)
  {
    (*(var7->var0 + 1))(var7);
  }

  this->var7 = 0;
  var9 = this->var9;
  if (var9)
  {
    (*(*var9 + 8))(var9);
  }

  this->var9 = 0;
  var10 = this->var10;
  if (var10)
  {
    MEMORY[0x25F896FE0](var10, 0x1000C8077774924);
  }

  this->var10 = 0;
  var11 = this->var11;
  if (var11)
  {
    MEMORY[0x25F896FE0](var11, 0x1000C8077774924);
  }

  this->var11 = 0;
  var12 = this->var12;
  if (var12)
  {
    MEMORY[0x25F896FE0](var12, 0x1000C8077774924);
  }

  this->var12 = 0;
  var13 = this->var13;
  if (var13)
  {
    MEMORY[0x25F896FE0](var13, 0x1000C8077774924);
  }

  this->var13 = 0;
  var14 = this->var14;
  if (var14)
  {
    MEMORY[0x25F896FE0](var14, 0x1000C8077774924);
  }

  this->var14 = 0;
  var8 = this->var8;
  if (var8)
  {
    (*(var8->var0 + 1))(var8);
  }

  this->var8 = 0;
}

void XlChartValueAxis::XlChartValueAxis(XlChartValueAxis *this)
{
  XlChartPlotAxis::XlChartPlotAxis(this);
  *v1 = &unk_286ECBA68;
  v1[20] = 0;
  v1[21] = 0;
  v1[19] = 0;
}

void XlChartValueRange::XlChartValueRange(XlChartValueRange *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECB088;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = 31;
}

void XlChartAxisLineFormat::XlChartAxisLineFormat(XlChartAxisLineFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA480;
  *(v2 + 16) = 0;
}

uint64_t XlChartPlot::takeDropLineFormat(XlChartPlot *this, XlChartLineStyle *a2)
{
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 4) = a2;
  return result;
}

void XlChartSeriesText::XlChartSeriesText(XlChartSeriesText *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAE48;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartSeriesText *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));
  if ((*(**(this + 2) + 64))(*(this + 2)))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    if (!*(this + 4))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartSeriesText::takeText(uint64_t this, XlString *a2)
{
  *(this + 16) = a2;
  if (a2)
  {
    v2 = *(a2 + 6);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(this + 26) = v2;
  return this;
}

void XlChartSeriesText::~XlChartSeriesText(XlChartSeriesText *this)
{
  *this = &unk_286ECAE48;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECAE48;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

XlChartTextFrame *XlChartPlotAxis::takeTitle(XlChartPlotAxis *this, XlChartTextFrame *a2)
{
  result = this->var2;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var2 = a2;
  return result;
}

void XlChartValueAxis::~XlChartValueAxis(XlChartPlotAxis *this)
{
  XlChartValueAxis::~XlChartValueAxis(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECBA68;
  var0 = this[1].var0;
  if (var0)
  {
    (*(*var0 + 1))(var0);
  }

  this[1].var0 = 0;
  v3 = *&this[1].var1;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *&this[1].var1 = 0;
  var2 = this[1].var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this[1].var2 = 0;

  XlChartPlotAxis::~XlChartPlotAxis(this);
}

uint64_t XlChartBinaryReader::getPlotCount(uint64_t a1, int a2)
{
  v2 = 1736;
  v3 = 1744;
  if (!a2)
  {
    v3 = 1688;
  }

  v4 = *(a1 + v3);
  if (!a2)
  {
    v2 = 1680;
  }

  return ((v4 - *(a1 + v2)) >> 2);
}

uint64_t XlChartBinaryReader::read(uint64_t result, int a2, unsigned int a3, void *a4)
{
  *a4 = 0;
  *(result + 1624) = *(result + 1616);
  *(result + 1612) = -1;
  v4 = 1736;
  if (!a2)
  {
    v4 = 1680;
  }

  v5 = *(*(result + v4) + 4 * a3);
  if (v5 != -1)
  {
    v6 = (*(*result + 624))(result);
    (*(*v6 + 16))(v6, v5, 0);
    operator new();
  }

  return result;
}

void sub_25D3540D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*a10 + 8))(a10);
  (*(*v11 + 8))(v11);
  MEMORY[0x25F897000](v10, 0x1000C4087442A64);
  _Unwind_Resume(a1);
}

void XlChartChartLine::XlChartChartLine(XlChartChartLine *this)
{
  XlRecord::XlRecord(this);
  *v1 = &unk_286ECA640;
  *(v1 + 16) = 0;
}

void XlRecord::XlRecord(XlRecord *this)
{
  *this = &unk_286ECF5F0;
  XlHeader::XlHeader(this + 1);
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 14) = 0;
}

void XlChartChartFormat::XlChartChartFormat(XlChartChartFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA600;
  *(v2 + 16) = 0;
}

void XlChart3D::XlChart3D(XlChart3D *this)
{
  XlRecord::XlRecord(this, 4154, 14, 0);
  *v1 = &unk_286ECA268;
  *(v1 + 16) = 0x64001E001E0014;
  *(v1 + 24) = 6553700;
  *(v1 + 28) = 23;
}

void XlChartBarPlot::XlChartBarPlot(XlChartBarPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartBar::XlChartBar((v2 + 144));
  *this = &unk_286ECB318;
  *(this + 18) = &unk_286ECB340;
}

void XlChartPlot::XlChartPlot(XlChartPlot *this)
{
  *this = &unk_286ECB9A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
}

void XlChartBar::XlChartBar(XlChartBar *this)
{
  XlRecord::XlRecord(this, 4119, 6, 0);
  *v1 = &unk_286ECA500;
  *(v1 + 16) = 3276800;
  *(v1 + 20) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartBar *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t EDValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if (*a1 == 3)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      free(v4);
    }
  }

  v5 = *a2;
  *a1 = *a2;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *(a1 + 8) = *(a2 + 8);
      }

      else if (v5 == 2)
      {
        *(a1 + 8) = *(a2 + 8);
      }

      return a1;
    }

LABEL_16:
    *(a1 + 8) = 0;
    return a1;
  }

  switch(v5)
  {
    case 3:
      v6 = *(a2 + 8);
      if (v6)
      {
        *(a1 + 8) = strdup(v6);
        return a1;
      }

      goto LABEL_16;
    case 5:
      *(a1 + 8) = *(a2 + 8);
      break;
    case 6:
      *(a1 + 8) = *(a2 + 8);
      break;
  }

  return a1;
}

void EDValue::~EDValue(EDValue *this)
{
  if (this->type == 3)
  {
    string = this->var0.string;
    if (string)
    {
      free(string);
    }
  }
}

uint64_t *XlChartBinaryReader::setDefaultFormat(uint64_t *this, int a2, int a3)
{
  v3 = this;
  v4 = a3 | (a2 << 16);
  v8 = v4;
  for (i = this[232]; i; i = *i)
  {
    v6 = *(i + 28);
    if (v4 >= v6)
    {
      if (v6 >= v4)
      {
        v9 = &v8;
        this = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + 231), &v8);
        v7 = *(this + 8);
        goto LABEL_8;
      }

      i += 8;
    }
  }

  v7 = -1;
LABEL_8:
  *(v3 + 485) = v7;
  return this;
}

void sub_25D354C38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void XlChartBarPlot::~XlChartBarPlot(XlChartBarPlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

void XlChartPlot::~XlChartPlot(XlChartPlot *this)
{
  *this = &unk_286ECB9A8;
  v3 = *(this + 14);
  v2 = *(this + 15);
  if (((v2 - v3) & 0xFFFF0) != 0)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + v4);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v3 = *(this + 14);
        v2 = *(this + 15);
      }

      ++v5;
      v4 += 16;
    }

    while (v5 < ((v2 - v3) >> 4));
  }

  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 1) = 0;
  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 2) = 0;
  v9 = *(this + 3);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 3) = 0;
  v10 = *(this + 4);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 4) = 0;
  v11 = *(this + 5);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 5) = 0;
  v12 = *(this + 6);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 6) = 0;
  v13 = *(this + 7);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 7) = 0;
  v14 = *(this + 8);
  if (v14)
  {
    MEMORY[0x25F896FE0](v14, 0x1000C8077774924);
  }

  *(this + 8) = 0;
  v15 = *(this + 9);
  if (v15)
  {
    MEMORY[0x25F896FE0](v15, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  v16 = *(this + 10);
  if (v16)
  {
    MEMORY[0x25F896FE0](v16, 0x1000C8077774924);
  }

  *(this + 10) = 0;
  v17 = *(this + 11);
  if (v17)
  {
    MEMORY[0x25F896FE0](v17, 0x1000C8077774924);
  }

  *(this + 11) = 0;
  v18 = *(this + 14);
  if (v18)
  {
    *(this + 15) = v18;
    operator delete(v18);
  }
}

unsigned int *XlChartBinaryReader::read(unsigned int *this, XlChartTextFrame *a2)
{
  v2 = this[402];
  if (v2 >= 1)
  {
    XlChartBinaryReader::readTextFrame(this, a2, v2);
  }

  return this;
}

void XlChartParent::~XlChartParent(XlChartParent *this)
{
  *this = &unk_286ECB928;
  v2 = this + 88;
  *(this + 11) = &unk_286ECB948;
  v4 = this + 240;
  v3 = *(this + 30);
  if (((*(v4 + 1) - v3) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = v5;
      v7 = v3[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v3 = *(this + 30);
      }

      v3[v6] = 0;
      v5 = v6 + 1;
      v3 = *(this + 30);
    }

    while (((*(this + 31) - v3) >> 3) > (v6 + 1));
  }

  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  XlString::~XlString((this + 120));
  TSURectWithOriginAndSize(v2);

  XlChartFrameType::~XlChartFrameType(this);
}

{
  XlChartParent::~XlChartParent(this);

  JUMPOUT(0x25F897000);
}

void sub_25D355364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHBState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void XlChartDataSeries::~XlChartDataSeries(XlChartDataSeries *this)
{
  XlChartDataSeries::~XlChartDataSeries(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECB118;
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 18) = 0;
  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 19) = 0;
  v4 = *(this + 20);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 20) = 0;
  v5 = *(this + 21);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 21) = 0;
  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 1) = 0;
  *(this + 13) = *(this + 12);
  *(this + 16) = *(this + 15);
  v7 = *(this + 22);
  if (((*(this + 46) - v7) & 0x7FFF8) != 0)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v7 = *(this + 22);
      }

      *(v7 + 8 * v8++) = 0;
      v7 = *(this + 22);
    }

    while (v8 < ((*(this + 46) - v7) >> 3));
  }

  *(this + 23) = v7;
  v10 = *(this + 3);
  if (((*(this + 8) - v10) & 0x7FFF8) != 0)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v10 = *(this + 3);
      }

      *(v10 + 8 * v11++) = 0;
      v10 = *(this + 3);
    }

    while (v11 < ((*(this + 8) - v10) >> 3));
  }

  *(this + 4) = v10;
  v13 = *(this + 6);
  if (((*(this + 14) - v13) & 0x7FFF8) != 0)
  {
    v14 = 0;
    do
    {
      v15 = *(v13 + 8 * v14);
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v13 = *(this + 6);
      }

      *(v13 + 8 * v14++) = 0;
      v13 = *(this + 6);
    }

    while (v14 < ((*(this + 14) - v13) >> 3));
  }

  *(this + 7) = v13;
  v16 = *(this + 9);
  if (((*(this + 20) - v16) & 0x7FFF8) != 0)
  {
    v17 = 0;
    do
    {
      v18 = *(v16 + 8 * v17);
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v16 = *(this + 9);
      }

      *(v16 + 8 * v17++) = 0;
      v16 = *(this + 9);
    }

    while (v17 < ((*(this + 20) - v16) >> 3));
  }

  *(this + 10) = v16;
  v19 = *(this + 22);
  if (v19)
  {
    *(this + 23) = v19;
    operator delete(v19);
  }

  v20 = *(this + 15);
  if (v20)
  {
    *(this + 16) = v20;
    operator delete(v20);
  }

  v21 = *(this + 12);
  if (v21)
  {
    *(this + 13) = v21;
    operator delete(v21);
  }

  v22 = *(this + 9);
  if (v22)
  {
    *(this + 10) = v22;
    operator delete(v22);
  }

  v23 = *(this + 6);
  if (v23)
  {
    *(this + 7) = v23;
    operator delete(v23);
  }

  v24 = *(this + 3);
  if (v24)
  {
    *(this + 4) = v24;
    operator delete(v24);
  }
}

void XlChartEnteredText::~XlChartEnteredText(XlChartEnteredText *this)
{
  *this = &unk_286ECD538;
  OcText::~OcText((this + 16));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECD538;
  OcText::~OcText((this + 16));
}

void XlChartSeriesFormat::~XlChartSeriesFormat(XlChartSeriesFormat *this)
{
  XlChartSeriesFormat::~XlChartSeriesFormat(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECBA30;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;
  var2 = this->var2;
  if (var2)
  {
    (*(var2->var0 + 1))(var2);
  }

  this->var2 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(var3->var0 + 1))(var3);
  }

  this->var3 = 0;
  var4 = this->var4;
  if (var4)
  {
    (*(var4->var0 + 1))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    MEMORY[0x25F896FE0](var5, 0x1000C8077774924);
  }

  this->var5 = 0;
  var6 = this->var6;
  if (var6)
  {
    MEMORY[0x25F896FE0](var6, 0x1000C8077774924);
  }

  this->var6 = 0;
}

void sub_25D355960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHDDataValuesCollection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double XlChartBinaryReader::closeChart(XlChartBinaryReader *this)
{
  XlSubstreamProperties::operator=(this + 1136, this + 1376);

  return XlSubstreamProperties::setDefault((this + 1376));
}

uint64_t xlSectionForNumberWithFormatting(double a1, EDString *a2, EDWorkbook *a3)
{
  v5 = a2;
  v6 = a3;
  XlFormatProcessor::XlFormatProcessor(v9);
  if (v6)
  {
    v9[8] = [(EDWorkbook *)v6 legacyDateBase]!= 0;
  }

  v7 = xlSectionForNumberWithFormattingUsingProcessor(a1, v5, v9);
  XlFormatProcessor::~XlFormatProcessor(v9);

  return v7;
}

void XlFormatProcessor::XlFormatProcessor(XlFormatProcessor *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t xlSectionForNumberWithFormattingUsingProcessor(double a1, EDString *a2, XlFormatProcessor *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [(EDString *)v4 string];

    if (a3)
    {
      if (v6)
      {
        OcText::OcText(&v9);
        v7 = [(EDString *)v5 string];
        [v7 copyToOcText:&v9];

        XlFormatProcessor::getFormatInfo(a3, &v9);
      }
    }
  }

  return 0;
}

void sub_25D356178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OcText::~OcText(&a9);

  _Unwind_Resume(a1);
}

void XlFormatInfo::XlFormatInfo(XlFormatInfo *this)
{
  *this = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

void XlFormatParser::XlFormatParser(XlFormatParser *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 21) = 0;
  *(this + 2) = 0;
}

XlFmtPtg *XlFormatParser::setFormat(XlFormatParser *this, OcText *a2)
{
  *this = a2;
  result = XlFormatParser::reset(this);
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return result;
}

XlFmtPtg *XlFormatParser::reset(XlFormatParser *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  result = *(this + 2);
  if (result)
  {
    XlFmtPtg::~XlFmtPtg(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 2) = 0;
  *(this + 28) = 0;
  *(this + 6) = 0;
  return result;
}

void XlFormatSection::XlFormatSection(XlFormatSection *this)
{
  *this = 0;
  *(this + 4) = 256;
  *(this + 10) = 0;
  *(this + 2) = 0;
  *(this + 22) = 0;
  *(this + 15) = -1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 66) = -1;
  *(this + 35) = -1;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
}

uint64_t XlFormatParser::nextToken(XlFormatParser *this)
{
  if (*this && *(*this + 16) > *(this + 6))
  {
    operator new();
  }

  return 0;
}

void XlFmtPtg::XlFmtPtg(XlFmtPtg *this)
{
  *this = 255;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t XlFormatParser::readAlphaToken(XlFormatParser *this, XlFmtPtg *a2)
{
  v4 = *(this + 6);
  *a2 = 255;
  Character = OcText::getCharacter(*this, v4);
  if (Character != 121)
  {
    v6 = Character;
    if (Character == 100)
    {
      LOWORD(v7) = 0;
      *(this + 28) = 1;
      v8 = v4 + 1;
      do
      {
        v9 = v7;
        v10 = v8;
        v7 = (v7 + 1);
        v11 = *this;
        if (*this && v11->var3 <= v8)
        {
          break;
        }

        v12 = OcText::getCharacter(v11, v8);
        v8 = v10 + 1;
      }

      while (v12 == 100);
      switch(v9)
      {
        case 2:
          v13 = 17;
          goto LABEL_70;
        case 1:
          v13 = 16;
          goto LABEL_70;
        case 0:
          v13 = 15;
LABEL_70:
          *a2 = v13;
          return (v10 - *(this + 12));
      }

      if (v7 >= 4)
      {
        v13 = 18;
        goto LABEL_70;
      }

      goto LABEL_122;
    }

    if ((Character & 0xFFFFFFDF) != 0x4D)
    {
      if ((Character & 0xFFFFFFDF) == 0x48)
      {
        LOWORD(v18) = 0;
        *(this + 28) = 1;
        v19 = v4 + 1;
        do
        {
          v20 = v18;
          v10 = v19;
          v18 = (v18 + 1);
          v21 = *this;
          if (*this && v21->var3 <= v19)
          {
            break;
          }

          v22 = OcText::getCharacter(v21, v19);
          v19 = v10 + 1;
        }

        while ((v22 & 0xFFFFFFDF) == 0x48);
        if (!v20)
        {
          v13 = 21;
          goto LABEL_70;
        }

        if (v18 >= 2)
        {
          v13 = 22;
          goto LABEL_70;
        }

        goto LABEL_122;
      }

      if (Character == 115)
      {
        LOWORD(v28) = 0;
        *(this + 28) = 1;
        v29 = v4 + 1;
        do
        {
          v30 = v28;
          v10 = v29;
          v28 = (v28 + 1);
          v31 = *this;
          if (*this && v31->var3 <= v29)
          {
            break;
          }

          v32 = OcText::getCharacter(v31, v29);
          v29 = v10 + 1;
        }

        while (v32 == 115);
        if (!v30)
        {
          v13 = 31;
          goto LABEL_70;
        }

        if (v28 >= 2)
        {
          v13 = 32;
          goto LABEL_70;
        }

        goto LABEL_122;
      }

      if ((Character & 0xFFDF) == 0x41)
      {
        v33 = *this;
        if (!*this || v33->var3 > v4 + 2)
        {
          if (OcText::getCharacter(v33, v4) == 65 && OcText::getCharacter(*this, v4 + 1) == 47 && OcText::getCharacter(*this, v4 + 2) == 80)
          {
            *(this + 28) = 1;
            LOWORD(v10) = v4 + 3;
            v13 = 39;
            goto LABEL_70;
          }

          if (OcText::getCharacter(*this, v4) == 97 && OcText::getCharacter(*this, v4 + 1) == 47 && OcText::getCharacter(*this, v4 + 2) == 112)
          {
            *(this + 28) = 1;
            LOWORD(v10) = v4 + 3;
            v13 = 38;
            goto LABEL_70;
          }

          v35 = *this;
          if (!*this || v35->var3 > v4 + 4)
          {
            if (OcText::getCharacter(v35, v4) == 65 && OcText::getCharacter(*this, v4 + 1) == 77 && OcText::getCharacter(*this, v4 + 2) == 47 && OcText::getCharacter(*this, v4 + 3) == 80 && OcText::getCharacter(*this, v4 + 4) == 77)
            {
              *(this + 28) = 1;
              LOWORD(v10) = v4 + 5;
              v13 = 36;
              goto LABEL_70;
            }

            if (OcText::getCharacter(*this, v4) == 97 && OcText::getCharacter(*this, v4 + 1) == 109 && OcText::getCharacter(*this, v4 + 2) == 47 && OcText::getCharacter(*this, v4 + 3) == 112)
            {
              LOWORD(v10) = v4;
              if (OcText::getCharacter(*this, v4 + 4) == 109)
              {
                *(this + 28) = 1;
                LOWORD(v10) = v4 + 5;
                v13 = 37;
                goto LABEL_70;
              }

              goto LABEL_122;
            }
          }
        }

LABEL_121:
        LOWORD(v10) = v4;
        goto LABEL_122;
      }

      if (Character > 100)
      {
        switch(Character)
        {
          case 'e':
            v10 = v4 + 1;
            v42 = *this;
            if (!*this || v42->var3 > v10)
            {
              if (OcText::getCharacter(v42, v4 + 1) == 45)
              {
                LOWORD(v10) = v4 + 2;
                v13 = 47;
                goto LABEL_70;
              }

              if (OcText::getCharacter(*this, v4 + 1) == 43)
              {
                LOWORD(v10) = v4 + 2;
                v13 = 48;
                goto LABEL_70;
              }

              if (OcText::getCharacter(*this, v4 + 1) == 101)
              {
                v51 = v4 + 2;
                v52 = 1;
                do
                {
                  v53 = v52;
                  v10 = v51;
                  v54 = *this;
                  if (*this && v54->var3 <= v51)
                  {
                    break;
                  }

                  v55 = OcText::getCharacter(v54, v51);
                  v51 = v10 + 1;
                  v52 = v53 + 1;
                }

                while (v55 == 101);
                if (v53)
                {
                  v13 = 69;
                  goto LABEL_70;
                }
              }
            }

            v13 = 68;
            goto LABEL_70;
          case 'g':
            v46 = 0;
            v47 = v4 + 1;
            do
            {
              v48 = v46;
              v10 = v47;
              v49 = *this;
              if (*this && v49->var3 <= v47)
              {
                break;
              }

              v50 = OcText::getCharacter(v49, v47);
              v47 = v10 + 1;
              v46 = v48 + 1;
            }

            while (v50 == 103);
            if (v48 == 1)
            {
              v13 = 71;
            }

            else
            {
              v13 = 72;
            }

            goto LABEL_70;
          case 'r':
            v36 = 0;
            v37 = v4 + 1;
            do
            {
              v38 = v36;
              v10 = v37;
              v39 = *this;
              if (*this && v39->var3 <= v37)
              {
                break;
              }

              v40 = OcText::getCharacter(v39, v37);
              v37 = v10 + 1;
              v36 = v38 + 1;
            }

            while (v40 == 114);
            if (v38)
            {
              v13 = 74;
            }

            else
            {
              v13 = 73;
            }

            goto LABEL_70;
        }
      }

      else
      {
        switch(Character)
        {
          case 'E':
            v10 = v4 + 1;
            v41 = *this;
            if (!*this || v41->var3 > v10)
            {
              if (OcText::getCharacter(v41, v4 + 1) == 45)
              {
                LOWORD(v10) = v4 + 2;
                v13 = 46;
                goto LABEL_70;
              }

              if (OcText::getCharacter(*this, v4 + 1) == 43)
              {
                LOWORD(v10) = v4 + 2;
                v13 = 49;
                goto LABEL_70;
              }
            }

            goto LABEL_122;
          case 'G':
            v44 = *this;
            if ((!*this || v44->var3 > v4 + 6) && OcText::getCharacter(v44, v4) == 71 && OcText::getCharacter(*this, v4 + 1) == 101 && OcText::getCharacter(*this, v4 + 2) == 110 && OcText::getCharacter(*this, v4 + 3) == 101 && OcText::getCharacter(*this, v4 + 4) == 114 && OcText::getCharacter(*this, v4 + 5) == 97)
            {
              LOWORD(v10) = v4;
              if (OcText::getCharacter(*this, v4 + 6) == 108)
              {
                LOWORD(v10) = v4 + 7;
                v13 = 63;
                goto LABEL_70;
              }

              goto LABEL_122;
            }

            goto LABEL_121;
          case 'O':
            *(a2 + 2) = 0x4048000000000000;
            v34 = 40;
            goto LABEL_131;
        }
      }

      if ((Character & 0xFFDF) == 0x42)
      {
        v10 = v4 + 1;
        v43 = *this;
        if (!*this || v43->var3 > v10)
        {
          if (OcText::getCharacter(v43, v4 + 1) == 49)
          {
            LOWORD(v10) = v4 + 2;
            v13 = 76;
          }

          else if (OcText::getCharacter(*this, v4 + 1) == 50)
          {
            LOWORD(v10) = v4 + 2;
            v13 = 75;
          }

          else
          {
            *(a2 + 2) = v6;
            v13 = 62;
          }

          goto LABEL_70;
        }

        goto LABEL_122;
      }

      *(a2 + 2) = Character;
      v34 = 62;
LABEL_131:
      *a2 = v34;
      LOWORD(v10) = v4 + 1;
      return (v10 - *(this + 12));
    }

    LOWORD(v23) = 0;
    *(this + 28) = 1;
    v24 = v4 + 1;
    do
    {
      v25 = v23;
      v10 = v24;
      v23 = (v23 + 1);
      v26 = *this;
      if (*this && v26->var3 <= v24)
      {
        break;
      }

      v27 = OcText::getCharacter(v26, v24);
      v24 = v10 + 1;
    }

    while ((v27 & 0xFFFFFFDF) == 0x4D);
    if (v25 <= 1u)
    {
      if (!v25)
      {
        v13 = 23;
        goto LABEL_70;
      }

      if (v25 == 1)
      {
        v13 = 24;
        goto LABEL_70;
      }
    }

    else
    {
      switch(v25)
      {
        case 2u:
          v13 = 25;
          goto LABEL_70;
        case 3u:
          goto LABEL_69;
        case 4u:
          v13 = 27;
          goto LABEL_70;
      }
    }

    if (v23 < 6)
    {
      goto LABEL_122;
    }

LABEL_69:
    v13 = 26;
    goto LABEL_70;
  }

  LOWORD(v14) = 0;
  *(this + 28) = 1;
  v15 = v4 + 1;
  do
  {
    v10 = v15;
    v14 = (v14 + 1);
    v16 = *this;
    if (*this && v16->var3 <= v15)
    {
      break;
    }

    v17 = OcText::getCharacter(v16, v15);
    v15 = v10 + 1;
  }

  while (v17 == 121);
  if (v14 == 2)
  {
    v13 = 19;
    goto LABEL_70;
  }

  if (v14 >= 4)
  {
    v13 = 20;
    goto LABEL_70;
  }

LABEL_122:
  if (*a2 == 255)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return (v10 - *(this + 12));
}

void *XlFormatSection::takeToken(void *this, XlFmtPtg *a2)
{
  v19 = a2;
  if (!a2)
  {
    return this;
  }

  v2 = this;
  v3 = *a2;
  if (*a2 <= 8u)
  {
    *(this + 10) = 1;
    if (v3 == 8)
    {
      v3 = *(a2 + 2);
    }

    *(this + 21) = v3;
    goto LABEL_41;
  }

  if ((v3 - 9) <= 5)
  {
    *(this + 11) = 1;
    this[2] = *(a2 + 2);
    *(this + 11) = 0;
    if (v3 <= 10)
    {
      if (v3 == 9)
      {
        v4 = 5;
        goto LABEL_40;
      }

      if (v3 == 10)
      {
        v4 = 3;
        goto LABEL_40;
      }
    }

    else
    {
      switch(v3)
      {
        case 11:
          v4 = 6;
          goto LABEL_40;
        case 12:
          v4 = 2;
          goto LABEL_40;
        case 14:
          v4 = 4;
LABEL_40:
          *(this + 11) = v4;
          goto LABEL_41;
      }
    }

    v4 = 1;
    goto LABEL_40;
  }

  if ((v3 - 15) > 0x18)
  {
    if ((v3 - 40) <= 9)
    {
      *(this + 12) = 1;
      if (v3 == 45)
      {
        *(this + 13) = 1;
        v12 = *(this + 34);
        if ((v12 & 0x8000) == 0)
        {
          v13 = (this[10] - this[9]) >> 3;
          if (v13 == v12 + 1 || *(this + 35) + 1 == v13)
          {
            *(this + 35) = v13;
            goto LABEL_41;
          }
        }
      }

      else
      {
        if (v3 == 44)
        {
          *(this + 5) = 1;
          goto LABEL_41;
        }

        if (v3 == 43)
        {
          ++*(this + 13);
        }

        else
        {
          v14 = v3 & 0x3E;
          if (v14 == 48 || v14 == 46)
          {
            *(this + 3) = 1;
            goto LABEL_41;
          }

          if (v3 != 42 && v14 != 40)
          {
            goto LABEL_41;
          }

          *(this + 7) = 1;
          if (*(this + 3) == 1)
          {
            ++*(this + 19);
          }

          else if (*(this + 13) || *(this + 4) == 1)
          {
            ++*(this + 16);
            if (v3 == 40)
            {
              ++*(this + 17);
            }
          }

          else
          {
            ++*(this + 18);
          }
        }

        *(this + 34) = (*(this + 20) - *(this + 18)) >> 3;
      }

      *(this + 35) = -1;
      goto LABEL_41;
    }

    if ((v3 - 50) > 0xD)
    {
      if (v3 == 67)
      {
        v7 = *(this + 35);
        if (v7 >= 1)
        {
          v8 = v7 - *(this + 34);
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = this[9];
            v11 = *(this + 20);
            do
            {
              **(v10 + 8 * v7) = 64;
              ++v11;
              ++v9;
              --v7;
            }

            while (v8 > v9);
            *(this + 20) = v11;
          }
        }

        *(this + 64) = 0;
        *(this + 66) = -1;
        *(this + 35) = -1;
        XlFmtPtg::~XlFmtPtg(a2);

        JUMPOUT(0x25F897000);
      }

      goto LABEL_41;
    }

    if (v3 <= 56)
    {
      if (v3 == 50)
      {
        *(this + 1) = 1;
        goto LABEL_41;
      }

      if (v3 == 54)
      {
        *(this + 4) = 1;
        *(this + 15) = (*(this + 20) - *(this + 18)) >> 3;
        goto LABEL_41;
      }
    }

    else
    {
      switch(v3)
      {
        case '9':
          *(this + 8) = 1;
          *(this + 12) = *(a2 + 2);
          goto LABEL_41;
        case ':':
          goto LABEL_35;
        case '?':
          *this = 1;
          goto LABEL_35;
      }
    }

    if (v3 == 51 || (*a2 & 0x3D) == 0x3C)
    {
      operator new();
    }

    goto LABEL_41;
  }

  *(this + 2) = 1;
  if (v3 >= 0x24)
  {
    *(this + 6) = 1;
    goto LABEL_41;
  }

  if (v3 < 0x15 || (v3 - 25) <= 3)
  {
LABEL_35:
    *(this + 33) = -1;
    goto LABEL_41;
  }

  if (v3 >= 0x21)
  {
    v5 = v3 - 32;
    if (*(this + 14) < v5)
    {
      *(this + 14) = v5;
    }

    goto LABEL_35;
  }

  if (v3 <= 0x1D && ((1 << v3) & 0x20600000) != 0)
  {
    *(this + 33) = -1;
    *(this + 64) = 1;
    goto LABEL_41;
  }

  if ((v3 - 23) <= 1)
  {
    *(this + 33) = -1;
    if (*(this + 64) == 1)
    {
      if (v3 == 23)
      {
        v15 = 65;
      }

      else
      {
        v15 = 66;
      }

      *a2 = v15;
      *(this + 64) = 0;
    }

    else
    {
      *(this + 33) = (*(this + 20) - *(this + 18)) >> 3;
    }

    goto LABEL_41;
  }

  if ((v3 - 31) <= 1)
  {
    *(this + 64) = 1;
    v16 = *(this + 33);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(this[9] + 8 * v16);
      v18 = 2.0;
      if (*v17 == 23)
      {
        v18 = 1.0;
      }

      *(v17 + 16) = v18;
      *v17 = 28;
      goto LABEL_35;
    }
  }

LABEL_41:
  v6 = this[10];
  if (v6 >= v2[11])
  {
    this = std::vector<XlFmtPtg *,ChAllocator<XlFmtPtg *>>::__emplace_back_slow_path<XlFmtPtg * const&>(v2 + 9, &v19);
  }

  else
  {
    *v6 = a2;
    this = v6 + 1;
  }

  v2[10] = this;
  return this;
}

uint64_t XlFmtPtg::XlFmtPtg(uint64_t result, int a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void XlFmtPtg::~XlFmtPtg(XlFmtPtg *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

uint64_t XlFormatProcessor::getNumericalSection(XlFormatProcessor *this, double a2, XlFormatInfo *a3)
{
  if (!a3)
  {
    return -1;
  }

  v5 = *(a3 + 1);
  v6 = *(a3 + 2) - v5;
  v7 = (v6 >> 3);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      hasCondition = XlFormatInfo::hasCondition(a3);
      v11 = *(a3 + 1);
      v12 = (*(a3 + 2) - v11) >> 3;
      if (!hasCondition)
      {
        if (v12 <= 2)
        {
          goto LABEL_58;
        }

        if (*(*(v11 + 16) + 1) == 1)
        {
          if (a2 >= 0.0)
          {
            return 0;
          }
        }

        else
        {
          if (a2 > 0.0)
          {
            return 0;
          }

          if (a2 >= 0.0)
          {
            return 2;
          }
        }

LABEL_54:
        *(*(v11 + 8) + 9) = 0;
        return 1;
      }

      if (!v12)
      {
        goto LABEL_58;
      }

      if (*(*v11 + 11) == 1)
      {
        if (XlFormatSection::isConditionMet(*v11, a2))
        {
          return 0;
        }

        v13 = *(a3 + 1);
        v14 = (*(a3 + 2) - v13) >> 3;
        if (v14 <= 1)
        {
LABEL_58:
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = *(v13 + 8);
        if (*(v15 + 11) != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_58;
          }

          if ((*(*(v13 + 16) + 1) & 1) == 0)
          {
            if (a2 >= 0.0)
            {
              return 2;
            }

            *(v15 + 9) = 0;
          }

          return 1;
        }
      }

      else
      {
        if (a2 > 0.0)
        {
          return 0;
        }

        if (v12 == 1)
        {
          goto LABEL_58;
        }

        v15 = *(v11 + 8);
      }

      if (!XlFormatSection::isConditionMet(v15, a2))
      {
        v22 = *(a3 + 1);
        if (((*(a3 + 2) - v22) >> 3) <= 2)
        {
          goto LABEL_58;
        }

        if (*(*(v22 + 16) + 1))
        {
          return -1;
        }

        else
        {
          return 2;
        }
      }

      return 1;
    }

    v18 = XlFormatInfo::hasCondition(a3);
    v19 = *(a3 + 1);
    v20 = *(a3 + 2) - v19;
    if (v18)
    {
      if ((v20 & 0x7FFFFFFF8) != 0)
      {
        return !XlFormatSection::isConditionMet(*v19, a2);
      }

      goto LABEL_58;
    }

    if ((v20 & 0x7FFFFFFF0) == 0)
    {
      goto LABEL_58;
    }

    v9 = 0;
    if (a2 >= 0.0)
    {
      return v9;
    }

    v21 = *(v19 + 8);
    if (*(v21 + 1))
    {
      return v9;
    }

    *(v21 + 9) = 0;
    return 1;
  }

  if (!(v6 >> 3))
  {
    return -1;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x7FFFFFFF8) != 0)
    {
      v8 = *v5;
      if (*(*v5 + 1) == 1)
      {
        v9 = 0;
        *v8 = 1;
        return v9;
      }

      return 0;
    }

    goto LABEL_58;
  }

LABEL_21:
  if (!XlFormatInfo::hasCondition(a3))
  {
    if (a2 > 0.0)
    {
      return 0;
    }

    if (a2 < 0.0)
    {
      v11 = *(a3 + 1);
      if (((*(a3 + 2) - v11) & 0x7FFFFFFF0) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    return 2;
  }

  v16 = *(a3 + 1);
  if (((*(a3 + 2) - v16) & 0x7FFFFFFF8) == 0)
  {
    goto LABEL_58;
  }

  if (XlFormatSection::isConditionMet(*v16, a2))
  {
    return 0;
  }

  v17 = *(a3 + 1);
  if (((*(a3 + 2) - v17) & 0x7FFFFFFF0) == 0)
  {
    goto LABEL_58;
  }

  if (XlFormatSection::isConditionMet(*(v17 + 8), a2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t XlFormatInfo::removeSection(XlFormatInfo *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    return 0;
  }

  result = *(v2 + 8 * a2);
  *(v2 + 8 * a2) = 0;
  return result;
}

void XlFormatInfo::~XlFormatInfo(XlFormatInfo *this)
{
  XlFormatInfo::reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void *XlFormatInfo::reset(void *this)
{
  v1 = this;
  *this = -1;
  v2 = this[1];
  if (((this[2] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        XlFormatSection::~XlFormatSection(this);
        this = MEMORY[0x25F897000]();
        v2 = v1[1];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[1];
    }

    while (v3 < ((v1[2] - v2) >> 3));
  }

  v1[2] = v2;
  return this;
}

void XlFormatProcessor::~XlFormatProcessor(XlFormatParser **this)
{
  v2 = *this;
  if (v2)
  {
    XlFormatParser::~XlFormatParser(v2);
    MEMORY[0x25F897000]();
  }

  *this = 0;
  v3 = this[3];
  if (v3)
  {
    XlFormatInfo::~XlFormatInfo(v3);
    MEMORY[0x25F897000]();
  }

  this[3] = 0;
  v4 = this[2];
  if (v4)
  {
    XlDateTimeFormat::~XlDateTimeFormat(v4);
    MEMORY[0x25F897000]();
  }

  this[2] = 0;
}

void XlFormatSection::~XlFormatSection(XlFormatSection *this)
{
  v2 = *(this + 9);
  if (((*(this + 10) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        XlFmtPtg::~XlFmtPtg(v4);
        MEMORY[0x25F897000]();
        v2 = *(this + 9);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(this + 9);
    }

    while (v3 < ((*(this + 10) - v2) >> 3));
  }

  *(this + 10) = v2;
  v5 = *(this + 6);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(this + 6) = 0;
  }

  v6 = *(this + 7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
    *(this + 7) = 0;
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }
}

void sub_25D3581AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EDReferenceIterator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void EDValue::EDValue(EDValue *this, const EDValue *a2)
{
  type = a2->type;
  this->type = a2->type;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        this->var0.BOOLean = a2->var0.BOOLean;
      }

      else if (type == 2)
      {
        this->var0.stringIndex = a2->var0.stringIndex;
      }

      return;
    }

LABEL_12:
    this->var0.stringIndex = 0;
    return;
  }

  switch(type)
  {
    case 3:
      string = a2->var0.string;
      if (string)
      {
        this->var0.stringIndex = strdup(string);
        return;
      }

      goto LABEL_12;
    case 5:
      this->var0.error = a2->var0.error;
      break;
    case 6:
      this->var0.stringIndex = a2->var0.stringIndex;
      break;
  }
}

void XlChartSerParent::XlChartSerParent(XlChartSerParent *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAE88;
  *(v2 + 16) = 0;
}

void XlChartSerAuxErrBar::XlChartSerAuxErrBar(XlChartSerAuxErrBar *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAD48;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
  *(v2 + 36) = 0;
}

void XlChartErrorBar::XlChartErrorBar(XlChartErrorBar *this)
{
  XlChartDataSeries::XlChartDataSeries(this);
  *v2 = &unk_286ECB3D8;
  XlChartSerAuxErrBar::XlChartSerAuxErrBar((v2 + 25));
  *(this + 60) = 1;
}

void XlChartSerAuxErrBar::XlChartSerAuxErrBar(XlChartSerAuxErrBar *this)
{
  XlRecord::XlRecord(this, 4187, 14, 0);
  *v1 = &unk_286ECAD48;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 0;
  *(v1 + 36) = 0;
}

XlChartLineStyle *XlChartSeriesFormat::takeLineStyle(XlChartSeriesFormat *this, XlChartLineStyle *a2)
{
  result = this->var1;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var1 = a2;
  return result;
}

XlChartFillStyle *XlChartSeriesFormat::takeFillStyle(XlChartSeriesFormat *this, XlChartFillStyle *a2)
{
  result = this->var2;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var2 = a2;
  return result;
}

void XlChartPieFormat::XlChartPieFormat(XlChartPieFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAB88;
  *(v2 + 16) = 0;
}

void sub_25D358B10(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  (*(*v3 + 8))(v3);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartMarkerFormat::XlChartMarkerFormat(XlChartMarkerFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAA80;
  *(v2 + 36) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

XlChartMarkerStyle *XlChartSeriesFormat::takeMarkerStyle(XlChartSeriesFormat *this, XlChartMarkerStyle *a2)
{
  result = this->var3;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var3 = a2;
  return result;
}

void XlChartScatterPlot::XlChartScatterPlot(XlChartScatterPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartScatter::XlChartScatter((v2 + 144));
  *this = &unk_286ECA138;
  *(this + 18) = &unk_286ECA160;
}

void XlChartScatter::XlChartScatter(XlChartScatter *this)
{
  XlRecord::XlRecord(this, 4123, 6, 0);
  *v1 = &unk_286ECAD08;
  v1[2] = 0x100000064;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartScatter *a2)
{
  XlParserVisitor::beginRead(this);
  if (*(a2 + 2) >= 6u)
  {
    *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
    *(a2 + 5) = (*(**(this + 2) + 80))(*(this + 2));
    *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartPlot::takeChartSeriesFormat(XlChartPlot *this, XlChartSeriesFormat *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = a2;
  return result;
}

void XlChartScatterPlot::~XlChartScatterPlot(XlChartScatterPlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

void XlChartErrorBar::~XlChartErrorBar(XlChartErrorBar *this)
{
  *this = &unk_286ECB3D8;
  XlChartSerAuxErrBar::~XlChartSerAuxErrBar((this + 200));
  XlChartDataSeries::~XlChartDataSeries(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECB3D8;
  XlChartSerAuxErrBar::~XlChartSerAuxErrBar((this + 200));

  XlChartDataSeries::~XlChartDataSeries(this);
}

XlChartLineStyle *XlChartPlotAxis::takeAxisFormat(XlChartPlotAxis *this, XlChartLineStyle *a2)
{
  result = this->var3;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var3 = a2;
  return result;
}

uint64_t XlChartBinaryReader::handleChartSubstream(XlChartBinaryReader *this, int a2)
{
  v6 = a2;
  v3 = *(this + 170);
  if (v3 >= *(this + 171))
  {
    v4 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int const&>(this + 1352, &v6);
  }

  else
  {
    *v3 = a2;
    v4 = (v3 + 1);
  }

  *(this + 170) = v4;
  return 0;
}

XlChartPlotAxis *XlChartPlotAxis::setFontIndex(XlChartPlotAxis *this, unsigned __int16 a2)
{
  this->var22 = 1;
  this->var15 = a2;
  return this;
}

void EshCalloutRule::EshCalloutRule(EshCalloutRule *this)
{
  EshAtom::EshAtom(this, 0xF017u, 0);
  *v1 = &unk_286EC59C8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
}

uint64_t EshCalloutRule::accept(int a1, void *lpsrc)
{

  return v2();
}

void PptAnimRotationBehaviorAtom::PptAnimRotationBehaviorAtom(PptAnimRotationBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7578;
  *(v2 + 32) = &unk_286ED7620;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptAnimRotationBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimRotationBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 12) = (*(**(this + 1) + 112))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (*(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 14) = (*(**(this + 1) + 112))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t XlSupBook::setEncodedName(uint64_t this, XlString *a2)
{
  v3 = this;
  if (*(this + 55) == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v3 + 16) = a2;
  return this;
}

void *XlLink::appendTabName(XlLink *this, XlString *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 5);
  if (v3 >= *(this + 6))
  {
    result = std::vector<XlString *,ChAllocator<XlString *>>::__emplace_back_slow_path<XlString * const&>(this + 4, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 5) = result;
  return result;
}

uint64_t XlLink::getTotalOperandCount(XlLink *this)
{
  v1 = *(this + 6);
  v2 = (*(this + 12) - *(this + 11)) >> 3;
  if (v1 <= v2)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

XlString *XlString::setString(XlString *this, const char *__s)
{
  if (__s)
  {
    v3 = this;
    v4 = strlen(__s);
    this = OcText::copyBuffer((v3 + 8), __s, v4 + 1);
    *(v3 + 6) = v4;
    *(v3 + 4) = 2;
  }

  return this;
}

uint64_t XlGraphicsInfo::takeOLEName(XlGraphicsInfo *this, XlString *a2)
{
  result = *(this + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 16) = a2;
  return result;
}

uint64_t XlAddMenu::setMacro(XlAddMenu *this, XlString *a2)
{
  result = *(this + 5);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 5) = a2;
  return result;
}

void PptExitAnimationInfoAtom::PptExitAnimationInfoAtom(PptExitAnimationInfoAtom *this, const EshHeader *a2)
{
  PptAnimationInfoAtom::PptAnimationInfoAtom(this, a2);
  *v2 = &unk_286ED6B48;
  v2[4] = &unk_286ED6BF0;
}

uint64_t SsrwOOMemStream::readSInt32(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  result = CsLeReadSInt32((**(this + 1) + v1));
  *(this + 5) += 4;
  return result;
}

void XlPhoneticRun::XlPhoneticRun(XlPhoneticRun *this)
{
  *this = &unk_286ECF278;
  *(this + 2) = -1;
  *(this + 6) = -1;
}

void *XlPhoneticInfo::appendRun(XlPhoneticInfo *this, XlPhoneticRun *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 10);
  if (v3 >= *(this + 11))
  {
    result = std::vector<XlPhoneticRun *,ChAllocator<XlPhoneticRun *>>::__emplace_back_slow_path<XlPhoneticRun * const&>(this + 9, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 10) = result;
  return result;
}

uint64_t XlEshGroup::takeClientAnchor(uint64_t this, XlEshClientAnchor *a2)
{
  if (*(this + 368))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 368) = a2;
  return this;
}

uint64_t XlEshGroup::takeClientData(uint64_t this, XlEshClientData *a2)
{
  if (*(this + 376))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 376) = a2;
  return this;
}

void EshConnectorRule::EshConnectorRule(EshConnectorRule *this)
{
  EshAtom::EshAtom(this, 0xF012u, 1u);
  *v1 = &unk_286EC5BF0;
  *(v1 + 28) = 0;
  *(v1 + 44) = 0;
  *(v1 + 36) = 0;
}

uint64_t EshConnectorRule::accept(int a1, void *lpsrc)
{

  return v2();
}

void XlMsoDrawingSelection::XlMsoDrawingSelection(XlMsoDrawingSelection *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEE40;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMsoDrawingSelection *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v6 = *(a2 + 2);
  if (v6)
  {
    *(a2 + 2) = XlParserVisitor::getDataAndContinues(this, &v6, -1) - *(this + 18);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  XlChartGelFrame::setBinaryData(a2, *(this + 3), v4);

  return XlParserVisitor::endRead(this, a2);
}

void XlMsoDrawingSelection::~XlMsoDrawingSelection(XlMsoDrawingSelection *this)
{
  *this = &unk_286ECEE40;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEE40;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

void XlNote::XlNote(XlNote *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEF40;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 31) = 0;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlNote *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 72))(*(this + 2));
  if (*(a2 + 14) >= 9u)
  {
    (*(**(this + 2) + 40))(*(this + 2));
    *(a2 + 38) = ((*(**(this + 2) + 72))(*(this + 2)) & 2) != 0;
    *(a2 + 18) = (*(**(this + 2) + 72))(*(this + 2));
    operator new();
  }

  *(a2 + 38) = 1;
  *(a2 + 18) = 0;
  XlBoundSheet::setName(a2, 0);
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  if (v4)
  {
    operator new[]((v4 + 1));
  }

  operator new();
}

uint64_t XlAddMenu::setMenuItem(XlAddMenu *this, XlString *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = a2;
  return result;
}

void XlNote::~XlNote(XlNote *this)
{
  XlNote::~XlNote(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEF40;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 3) = 0;
}

void XlDVal::XlDVal(XlDVal *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE040;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 28) = 0;
  *(v2 + 20) = 0;
}

void XlDV::XlDV(XlDV *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE000;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 22) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlDV *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 4) = v4 & 0xF;
  *(a2 + 5) = (v4 >> 4) & 7;
  *(a2 + 24) = (v4 & 0x80) != 0;
  *(a2 + 25) = BYTE1(v4) & 1;
  *(a2 + 26) = (v4 & 0x200) != 0;
  *(a2 + 27) = v4 >> 10;
  *(a2 + 28) = (v4 & 0x40000) != 0;
  *(a2 + 29) = (v4 & 0x80000) != 0;
  *(a2 + 8) = ((v4 >> 20) & 0xF) + 1;
  operator new();
}

uint64_t XlAddMenu::setStatus(XlAddMenu *this, XlString *a2)
{
  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 6) = a2;
  return result;
}

uint64_t XlDocRoute::setRoutingID(XlDocRoute *this, XlString *a2)
{
  result = *(this + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 8) = a2;
  return result;
}

void XlSxFmla::XlSxFmla(XlSxFmla *this, __int16 a2, int a3, char a4)
{
  XlRecord::XlRecord(this, a2, a3, a4);
  *v4 = &unk_286ED0450;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxFmla *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  *v6 = v4;
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  if (v4)
  {
    operator new[](v4);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlObjProj::setVbProj(XlObjProj *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 3) = a2;
  *(this + 8) = a3;
  return result;
}

uint64_t XlDV::setMaxFmla(XlDV *this, XlSxFmla *a2)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 10) = a2;
  return result;
}

void *XlDV::appendRef(XlDV *this, XlRef *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 12);
  if (v3 >= *(this + 13))
  {
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 11, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 12) = result;
  return result;
}

void XlDV::~XlDV(XlDV *this)
{
  XlDV::~XlDV(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE000;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 6) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 7) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 8) = 0;
  v6 = *(this + 9);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 9) = 0;
  v7 = *(this + 10);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 10) = 0;
  XlDV::clearRefs(this);
  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }
}

void XlSxFmla::~XlSxFmla(XlSxFmla *this)
{
  *this = &unk_286ED0450;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0450;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

uint64_t XlDV::clearRefs(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  v3 = *(this + 96);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
        v2 = *(v1 + 88);
        v3 = *(v1 + 96);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 96) = v2;
  return this;
}

void XlSheetTab::XlSheetTab(XlSheetTab *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0018;
  *(v2 + 16) = 20;
  *(v2 + 20) = 0;
}

void *XlWorksheetProperties::appendVertPageBreak(XlWorksheetProperties *this, XlBrk *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 10);
  if (v3 >= *(this + 11))
  {
    result = std::vector<XlBrk *,ChAllocator<XlBrk *>>::__emplace_back_slow_path<XlBrk * const&>(this + 9, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 10) = result;
  return result;
}

FILE *OCCXmlStreamer::createUsingInputFile(OCCStreamer *a1, _DWORD *a2, uint64_t a3, SsrwOORootStorage **a4)
{
  v8 = 0;
  v9 = 0;
  *a2 = 8001;
  if (OCCStreamer::openInputFile(a1, &v8, &v9, a4))
  {
    OCCXmlStreamer::createUsingRootStorage(v9, a2, v5, v6);
  }

  if (v9)
  {
    SsrwOORootStorage::~SsrwOORootStorage(v9);
    MEMORY[0x25F897000]();
  }

  result = v8;
  if (v8)
  {
    fclose(v8);
    return 0;
  }

  return result;
}

FILE *OCCStreamer::openInputFile(OCCStreamer *this, char *a2, __sFILE **a3, SsrwOORootStorage **a4)
{
  result = fopen(this, "rb");
  *a2 = result;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_25D35BF3C(void *a1)
{
  MEMORY[0x25F897000](v3, 0x1020C400B9F2F10);
  __cxa_begin_catch(a1);
  if (*v2)
  {
    SsrwOORootStorage::~SsrwOORootStorage(*v2);
    MEMORY[0x25F897000]();
  }

  *v2 = 0;
  fclose(*v1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x25D35BF2CLL);
}

void sub_25D35C0B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x25D35C064);
  }

  _Unwind_Resume(a1);
}

_xmlNode *CXFirstChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v5 = CXFirstChild(a1);
  pTCXmlCheckName(v5, a2, a3);
  return v5;
}

BOOL CXNodeHasName(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1 || !xmlStrEqual(a1->name, str2))
  {
    return 0;
  }

  return [(CXNamespace *)a2 containsNode:a1];
}

_xmlAttr *CXRequiredUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXUnsignedLongValue(result);
  }

  return result;
}

unint64_t CXUnsignedLongValue(_xmlAttr *a1)
{
  children = a1->children;
  if (!children || children->next || children->type - 3 > 1)
  {
    v2 = 1;
    String = xmlNodeListGetString(a1->doc, children, 1);
  }

  else
  {
    v2 = 0;
    String = children->content;
  }

  v5 = 0;
  if (String)
  {
    sfaxmlXmlCharToUnsignedLong(String, &v5);
  }

  if (v2)
  {
    free(String);
  }

  return v5;
}

uint64_t sfaxmlXmlCharToUnsignedLong(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 10);
  if (*__endptr || !*a1)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

_xmlNode *CXNextSibling(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v5 = CXNextSibling(a1);
  pTCXmlCheckName(v5, a2, a3);
  return v5;
}

uint64_t xmlStringHash(const xmlChar *a1)
{
  v1 = a1;
  v2 = xmlStrlen(a1);
  if (v2 >= 0x11)
  {
    v6 = 0;
    v4 = v2;
    do
    {
      v4 = 257 * v4 + v1[v6++];
    }

    while (v6 != 8);
    v7 = -8;
    do
    {
      v4 = 257 * v4 + v1[v2 + v7++];
    }

    while (v7);
  }

  else if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v5 = *v1++;
      v4 = 257 * v4 + v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return ((v4 << v2) + v4);
}

BOOL CXOptionalStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString **a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (v5)
  {
    *a4 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v5];
  }

  return v5 != 0;
}

BOOL sfaxmlGetNSStringAnyNsProp(const xmlNode *a1, const xmlChar *a2, void *a3)
{
  Prop = xmlGetProp(a1, a2);
  if (!Prop)
  {
    return 0;
  }

  v5 = Prop;
  v10 = 0;
  v6 = sfaxmlXmlCharToNSString(Prop, &v10);
  v7 = v10;
  free(v5);
  if (v6)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

BOOL sfaxmlXmlCharToNSString(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  *a2 = v3;
  return v3 != 0;
}

uint64_t sfaxmlGetBoolAnyNsProp(const xmlNode *a1, const xmlChar *a2, _BYTE *a3)
{
  Prop = xmlGetProp(a1, a2);
  if (!Prop)
  {
    return 0;
  }

  v5 = Prop;
  v8 = 0;
  v6 = sfaxmlXmlCharToBool(Prop, &v8);
  free(v5);
  if (v6)
  {
    *a3 = v8;
  }

  return v6;
}

uint64_t SFUXmlReaderIORead(void *a1, uint64_t a2, int a3)
{
  v3 = [a1 readToBuffer:a2 size:a3];
  if (v3 >= 0x80000000)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int SFUXmlReaderIORead(void *, char *, int)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 486, 0, "Overflow in SFUXmlReaderIORead");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return v3;
}

BOOL sfaxmlNsEqual(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return xmlStrEqual(*(a1 + 16), *(a2 + 16)) != 0;
    }
  }

  return result;
}

_xmlAttr *CXRequiredBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXBoolValue(result);
  }

  return result;
}

uint64_t SFUXmlReaderIOClose(void *a1)
{
  [a1 close];

  return 0;
}

id OAVReadComposite(NSString *a1)
{
  v1 = [(NSString *)a1 componentsSeparatedByString:@""];;
  v2 = [v1 count];
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = [v1 objectAtIndex:i];
      v5 = [v4 componentsSeparatedByString:@":"];

      if ([v5 count] == 2)
      {
        v6 = [v5 objectAtIndex:0];
        v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v8 = [v6 stringByTrimmingCharactersInSet:v7];

        v9 = [v5 objectAtIndex:1];
        v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v11 = [v9 stringByTrimmingCharactersInSet:v10];

        if ([v11 hasPrefix:@""] && objc_msgSend(v11, "hasSuffix:", @"") && objc_msgSend(v11, "length") >= 2)
        {
          v12 = [v11 substringWithRange:{1, objc_msgSend(v11, "length") - 2}];

          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        [v15 setObject:v13 forKey:v8];
      }
    }
  }

  return v15;
}

float OAVReadLength(NSString *a1)
{
  v1 = a1;
  v12 = 0.0;
  v11 = 0;
  CXSplitValueAndUnit(v1, &v12, &v11);
  if (v11 <= 7)
  {
    if (v11)
    {
      if (v11 == 6)
      {
        v6 = v12;
        goto LABEL_19;
      }

      if (v11 != 7)
      {
        goto LABEL_14;
      }

      v3 = v12;
      v4 = 72.0;
LABEL_13:
      v6 = v3 * v4;
LABEL_19:
      v9 = v6;
      goto LABEL_20;
    }

LABEL_12:
    v3 = v12;
    v4 = 0.75;
    goto LABEL_13;
  }

  if (v11 <= 9)
  {
    if (v11 == 8)
    {
      v2 = 360000.0;
    }

    else
    {
      v2 = 36000.0;
    }

    v5 = v12 * v2;
    goto LABEL_17;
  }

  if (v11 == 10)
  {
    goto LABEL_12;
  }

  if (v11 == 12)
  {
    v5 = v12;
LABEL_17:
    v6 = v5 / 12700.0;
    goto LABEL_19;
  }

LABEL_14:
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float OAVReadLength(NSString *__strong)"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Vml/OAVUtils.mm"];
  [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:65 isFatal:0 description:"Unhandled case"];

  v9 = 0.0;
  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_20:

  return v9;
}

float OAVReadFraction(NSString *a1)
{
  v1 = a1;
  v8 = 0.0;
  v7 = 0;
  CXSplitValueAndUnit(v1, &v8, &v7);
  if (v7)
  {
    if (v7 == 1)
    {
      v2 = v8 * 0.0000152587891;
    }

    else
    {
      if (v7 != 13)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float OAVReadFraction(NSString *__strong)"];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Vml/OAVUtils.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:84 isFatal:0 description:"Unhandled case"];

        v3 = 0.0;
        +[OITSUAssertionHandler logBacktraceThrottled];
        goto LABEL_9;
      }

      v2 = v8 / 100.0;
    }
  }

  else
  {
    v2 = v8;
  }

  v3 = v2;
LABEL_9:

  return v3;
}

void sub_25D35EC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = OCPPackagePart;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D35EE7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x25D35EE24);
  }

  _Unwind_Resume(a1);
}

BOOL CXOptionalUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, unint64_t *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXUnsignedLongValue(v5);
  }

  return v6 != 0;
}

BOOL CXOptionalDoubleAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXDoubleValue(v5);
  }

  return v6 != 0;
}

double CXDoubleValue(_xmlAttr *a1)
{
  v5 = 0.0;
  children = a1->children;
  if (!children || children->next || children->type - 3 > 1)
  {
    v2 = 1;
    String = xmlNodeListGetString(a1->doc, children, 1);
    if (!String)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  String = children->content;
  if (String)
  {
LABEL_7:
    sfaxmlXmlCharToDouble(String, &v5);
  }

LABEL_8:
  if (v2)
  {
    free(String);
  }

  return v5;
}

uint64_t sfaxmlXmlCharToDouble(uint64_t a1, double *a2)
{
  v3 = (a1 - 1);
  v4 = MEMORY[0x277D85DE0];
  do
  {
    v5 = v3[1];
    if ((v5 & 0x80000000) != 0)
    {
      v6 = __maskrune(v3[1], 0x4000uLL);
    }

    else
    {
      v6 = *(v4 + 4 * v5 + 60) & 0x4000;
    }

    ++v3;
  }

  while (v6);
  v7 = v5 == 43;
  if (v5 == 43)
  {
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

  v9 = strlen(v8);
  if (v9 >= 3)
  {
    v10 = v9;
    if (!strncasecmp(v8, "NAN", 3uLL))
    {
      v13 = 0x7FF8000000000000;
    }

    else if (!strncasecmp(v8, "INF", 3uLL))
    {
      v13 = 0x7FF0000000000000;
    }

    else
    {
      if (v10 == 3 || strncasecmp(v8, "-INF", 4uLL))
      {
        goto LABEL_14;
      }

      v13 = 0xFFF0000000000000;
    }

    v11 = *&v13;
    goto LABEL_22;
  }

LABEL_14:
  v14 = 0;
  v11 = strtod(v8, &v14);
  if (*v14 || !v3[v7])
  {
    return 0;
  }

LABEL_22:
  *a2 = v11;
  return 1;
}

uint64_t CXCountChildren(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  children = a1->children;
  if (!children)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    if (children->type == XML_ELEMENT_NODE && xmlStrEqual(str1, children->name))
    {
      v6 = v6 + [(CXNamespace *)a2 containsNode:children];
    }

    children = children->next;
  }

  while (children);
  return v6;
}

void sub_25D35FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44)
{
  v47 = *(v45 - 232);
  v46 = *(v45 - 224);
  v48 = *(v45 - 160);
  v49 = *(v45 - 96);

  _Unwind_Resume(a1);
}

void sub_25D35FFA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x25D35FF54);
  }

  _Unwind_Resume(a1);
}

unint64_t CXDefaultUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXUnsignedLongValue(v5);
}

uint64_t SFUOpen(void *a1, int a2, uint64_t a3)
{
  v4 = open([a1 fileSystemRepresentation], a2, a3);
  if (v4 == -1)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUOpenError" format:{@"Could not open %@", a1}];
  }

  return v4;
}

uint64_t SFUDup(uint64_t a1)
{
  v2 = dup(a1);
  if (v2 == -1)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUDupError" format:{@"Could not dup %d", a1}];
  }

  return v2;
}

WrdCharacterProperties *WrdCharacterProperties::setDoubleStrikethrough(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x800uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFBF | ((a2 & 1) << 6);
  return this;
}

unsigned __int16 *WrdListLevelFormat::reset(WrdListLevelFormat *this)
{
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
  (*(*this->var1 + 16))(this->var1);
  (*(this->var2->var0 + 2))(this->var2);
  result = this->var12;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  this->var12 = 0;
  return result;
}

WrdTableProperties *WrdTableProperties::setCantSplit(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x80000u;
  *(this + 386) = a2;
  return this;
}

void XlHLink::XlHLink(XlHLink *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE980;
  *(v2 + 16) = 0;
  *(v2 + 24) = 3;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 58) = 0u;
}

uint64_t XlDConRef::setConsolidationArea(XlDConRef *this, XlRef *a2)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = a2;
  return result;
}

XlString *XlHLink::resetExtendedContent(XlHLink *this)
{
  var9 = this->var9;
  if (var9)
  {
    (*(*var9 + 8))(var9);
  }

  this->var9 = 0;
  result = this->var10;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var10 = 0;
  this->var11 = 0;
  return result;
}

void XlHLink::~XlHLink(XlHLink *this)
{
  XlHLink::~XlHLink(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECE980;
  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x25F897000](var2, 0x1000C400EA6A39BLL);
  }

  this->var2 = 0;
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
  var8 = this->var8;
  if (var8)
  {
    (*(*var8 + 8))(var8);
  }

  this->var8 = 0;
  XlHLink::resetExtendedContent(this);
}

void XlChartSerFmt::XlChartSerFmt(XlChartSerFmt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECADC8;
  *(v2 + 16) = 0;
}

void XlChartiFmt::XlChartiFmt(XlChartiFmt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA940;
  *(v2 + 16) = 0;
}

XlChartPlotAxis *XlChartPlotAxis::setNumberFormatIndex(XlChartPlotAxis *this, unsigned __int16 a2)
{
  this->var23 = 1;
  this->var16 = a2;
  return this;
}

uint64_t XlFormatParser::readPeriodToken(XlFormatParser *this, XlFmtPtg *a2)
{
  v4 = *(this + 6);
  v5 = v4 + 1;
  v6 = *this;
  if (v6 && *(this + 28) == 1 && v6->var3 > v5 && OcText::getCharacter(v6, v4 + 1) == 48)
  {
    v5 = v4 + 2;
    v7 = *this;
    if (*this && v7->var3 <= v5 || OcText::getCharacter(v7, v4 + 2) != 48)
    {
      v10 = 33;
    }

    else
    {
      v5 = v4 + 3;
      v8 = *this;
      if (*this && v8->var3 <= v5)
      {
        v10 = 34;
      }

      else
      {
        Character = OcText::getCharacter(v8, v4 + 3);
        if (Character == 48)
        {
          v10 = 35;
        }

        else
        {
          v10 = 34;
        }

        if (Character == 48)
        {
          LOWORD(v5) = v4 + 4;
        }
      }
    }
  }

  else
  {
    v10 = 43;
  }

  *a2 = v10;
  return (v5 - *(this + 12));
}

void XlScenProtect::XlScenProtect(XlScenProtect *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFED8;
  *(v2 + 16) = 0;
}

void XlObjProtect::XlObjProtect(XlObjProtect *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF080;
  *(v2 + 16) = 0;
}

void PptAnimScaleBehaviorAtom::PptAnimScaleBehaviorAtom(PptAnimScaleBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDFDB0;
  *(v2 + 32) = &unk_286EDFE58;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 1;
}

uint64_t PptAnimScaleBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimScaleBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 73) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 112))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 12 || (*(a2 + 16) = (*(**(this + 1) + 112))(*(this + 1)), *(a2 + 17) = (*(**(this + 1) + 112))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 20) || (*(a2 + 14) = (*(**(this + 1) + 112))(*(this + 1)), *(a2 + 15) = (*(**(this + 1) + 112))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 28) || (*(a2 + 72) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 32))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextBlockStylingMac11Atom::PptTextBlockStylingMac11Atom(PptTextBlockStylingMac11Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7E48;
  *(v2 + 32) = &unk_286ED7EF0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextBlockStylingMac11Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockStylingMac11Atom *a2, uint64_t a3)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  if (a3)
  {
    (*(**(this + 1) + 16))(*(this + 1), a3, 1);
  }

  if (EshRecord::getDataLength(a2) >= 8)
  {
    PptTextBlockStylingMac11Atom::addNewStyle(a2);
  }

  return 1;
}

void PptCharStyleMac11::PptCharStyleMac11(PptCharStyleMac11 *this)
{
  *this = &unk_286EDF7A8;
  *(this + 8) = 0;
  *(this + 3) = 0;
}

uint64_t PptParserVisitor::parseMac11(PptParserVisitor *this, PptCharStyleMac11 *a2)
{
  v4 = (*(**(this + 1) + 104))(*(this + 1));
  v5 = v4;
  if ((v4 & 0x10000000) != 0)
  {
    *(a2 + 3) = (*(**(this + 1) + 104))(*(this + 1));
    *(a2 + 8) = 1;
    v6 = 8;
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 4;
  if ((v4 & 0x8000000) != 0)
  {
LABEL_5:
    v6 += (*(**(this + 1) + 104))(*(this + 1)) + 4;
  }

LABEL_6:
  if ((v5 & 0xE7FFFFFF) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL PptTextBlockStylingMac11Atom::removeStyle(PptTextBlockStylingMac11Atom *this, const PptCharStyleMac11 *a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v5 = *v2;
  if (*v2 != a2)
  {
    v6 = 0;
    v7 = (v3 >> 3);
    v8 = v2 + 1;
    while (v7 - 1 != v6)
    {
      v5 = v8[v6++];
      if (v5 == a2)
      {
        v9 = v6 < v7;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v6 = 0;
  v9 = 1;
LABEL_9:
  (*(*v5 + 8))(v5);
  v10 = *(this + 6);
  if (v6 >= ((*(this + 7) - v10) >> 3))
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v10 + 8 * v6) = 0;
  v11 = *(this + 7);
  v12 = *(this + 6) + 8 * v6;
  v13 = v11 - (v12 + 8);
  if (v11 != v12 + 8)
  {
    memmove(v12, (v12 + 8), v11 - (v12 + 8));
  }

  *(this + 7) = v12 + v13;
  return v9;
}

void PptTextMasterStyleMac11Atom::PptTextMasterStyleMac11Atom(PptTextMasterStyleMac11Atom *this, const EshHeader *a2)
{
  PptTextBlockStylingMac11Atom::PptTextBlockStylingMac11Atom(this, a2);
  *v2 = &unk_286ED8038;
  v2[4] = &unk_286ED80E0;
}

uint64_t PptTextMasterStyleMac11Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(void **a1, uint64_t a2)
{
  *(a2 + 72) = (*(*a1[1] + 80))(a1[1]);
  v4 = (*a1)[119];

  return v4(a1, a2, 2);
}

uint64_t PptTextDefaultStyleMac11Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextDefaultStyleMac11Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getDataLength(a2);
  if (!PptParserVisitor::parseMac11(this, (a2 + 48)))
  {
    PptParserVisitor::endRead(this, a2);
  }

  return 1;
}

void PptTextBlockStylingMac11Atom::~PptTextBlockStylingMac11Atom(PptTextBlockStylingMac11Atom *this)
{
  PptTextBlockStylingMac11Atom::~PptTextBlockStylingMac11Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED7E48;
  *(this + 4) = &unk_286ED7EF0;
  v4 = this + 48;
  v2 = *(this + 6);
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
        v2 = *(this + 6);
        v3 = *(this + 7);
      }

      if (v5 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v2[v5++] = 0;
      v2 = *(this + 6);
      v3 = *(this + 7);
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void PptTextMasterStyleMac11Atom::~PptTextMasterStyleMac11Atom(PptTextMasterStyleMac11Atom *this)
{
  PptTextBlockStylingMac11Atom::~PptTextBlockStylingMac11Atom(this);

  JUMPOUT(0x25F897000);
}

void PptTextDefaultStyleMac11Atom::~PptTextDefaultStyleMac11Atom(PptTextDefaultStyleMac11Atom *this)
{
  *this = &unk_286ED7F40;
  *(this + 4) = &unk_286ED7FE8;
  PptCharStyleMac11::~PptCharStyleMac11((this + 48));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED7F40;
  *(this + 4) = &unk_286ED7FE8;
  PptCharStyleMac11::~PptCharStyleMac11((this + 48));
}

WrdCharacterProperties *WrdCharacterProperties::setFontIndexForSymbol(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x10u;
  this->var47 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setSymbolCharacter(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x20u;
  this->var50 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setRevisionMark(uint64_t result, int a2)
{
  *(result + 16) |= 0x40uLL;
  *(result + 224) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToAuthorIDOfRevisionEdit(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x80000000000000uLL;
  this->var61 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToStringsForReasons(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x8000u;
  this->var73 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setRevisionMarkDelete(uint64_t result, int a2)
{
  *(result + 16) |= 8uLL;
  *(result + 220) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToAuthorIDOfRevisionDelete(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x4000u;
  this->var71 = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setIndexToStringsForReasonsOfDeletion(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *(&this->var2 + 2) |= 0x10000u;
  this->var74 = a2;
  return this;
}

void XlScenMan::XlScenMan(XlScenMan *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFE98;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlScenMan *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 11) = v4;
  if (v4)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlScenMan::~XlScenMan(XlScenMan *this)
{
  XlScenMan::~XlScenMan(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECFE98;
  XlRangeProtection::clearRanges(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t XlRangeProtection::clearRanges(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  v3 = *(this + 32);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
        v2 = *(v1 + 24);
        v3 = *(v1 + 32);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 32) = v2;
  return this;
}

void PptTextBookmarkAtom::PptTextBookmarkAtom(PptTextBookmarkAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDCB58;
  *(v2 + 32) = &unk_286EDCC00;
}

uint64_t PptTextBookmarkAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBookmarkAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 14) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

CGColorRef TSUCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = TSUCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImageRef, const CGAffineTransform *)"}];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUColorUtils.m"], 244, 0, "can't create an image pattern without an image");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  CGImageRetain(image);
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v9 = a2[1];
    v14 = *a2;
    v15 = v9;
    v10 = a2[2];
  }

  else
  {
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v14 = *MEMORY[0x277CBF2C0];
    v15 = v11;
    v10 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v16 = v10;
  v17.size.height = Height;
  v17.size.width = Width;
  *&v13.a = v14;
  *&v13.c = v15;
  *&v13.tx = v10;
  v17.origin.x = v5;
  v17.origin.y = v6;
  return CGPatternCreate(image, v17, &v13, Width, v17.size.height, kCGPatternTilingConstantSpacing, 1, &TSUCGPatternCreateWithImageAndTransform_sCallbacks);
}

void TSUDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

void PptAnimIterateDataAtom::PptAnimIterateDataAtom(PptAnimIterateDataAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0288;
  *(v2 + 32) = &unk_286EE0330;
}

uint64_t PptAnimIterateDataAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimIterateDataAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimIterateDataAtom::~PptAnimIterateDataAtom(PptAnimIterateDataAtom *this)
{
  *this = &unk_286EE0288;
  *(this + 4) = &unk_286EE0330;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0288;
  *(this + 4) = &unk_286EE0330;
}

float convertRgbToHsl(float result, float a2, float a3, float *a4, float *a5, float *a6)
{
  if (result >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  if (result >= a2)
  {
    v7 = result;
  }

  else
  {
    v7 = a2;
  }

  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  if (v7 < a3)
  {
    v7 = a3;
  }

  v9 = v7 - v8;
  *a6 = (v7 + v8) * 0.5;
  if ((v7 - v8) == 0.0)
  {
    *a4 = 0.0;
    *a5 = 0.0;
  }

  else
  {
    *a5 = 0.0;
    v10 = *a6;
    if (*a6 > 0.0 && v10 < 1.0)
    {
      if (v10 >= 0.5)
      {
        v12 = (v10 * -2.0) + 2.0;
      }

      else
      {
        v12 = v10 + v10;
      }

      *a5 = v9 / v12;
    }

    *a4 = 0.0;
    if (v9 > 0.0)
    {
      v13 = 0.0;
      if (v7 == result && v7 != a2)
      {
        v13 = ((a2 - a3) / v9) + 0.0;
      }

      if (v7 == a2 && v7 != a3)
      {
        v13 = (((a3 - result) / v9) + 2.0) + v13;
      }

      if (v7 == a3 && v7 != result)
      {
        v13 = (((result - a2) / v9) + 4.0) + v13;
      }

      result = v13 * 60.0;
      *a4 = v13 * 60.0;
    }
  }

  return result;
}

float *convertHslToRgb(float a1, float a2, float a3, float *result, float *a5, float *a6)
{
  if (a3 == 0.0)
  {
    *a6 = 0.0;
    *a5 = 0.0;
    *result = 0.0;
    return result;
  }

  if (a2 == 0.0)
  {
    *a6 = a3;
    *a5 = a3;
    *result = a3;
    return result;
  }

  v6 = a1 / 360.0;
  v7 = (a2 + a3) - (a3 * a2);
  v8 = (a2 + 1.0) * a3;
  if (a3 <= 0.5)
  {
    v7 = v8;
  }

  v9 = -(v7 - a3 * 2.0);
  v10 = v6;
  v11 = v6 + 0.333333333;
  if (v11 < 0.0)
  {
    v11 = v11 + 1.0;
  }

  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + -1.0;
  }

  v13 = v12;
  if (v12 * 6.0 < 1.0)
  {
    v14 = v9 + (v12 * (v7 - v9)) * 6.0;
LABEL_14:
    v15 = v14;
    goto LABEL_18;
  }

  v15 = v7;
  if (v13 + v13 >= 1.0)
  {
    v15 = v9;
    if (v13 * 3.0 < 2.0)
    {
      v14 = v9 + (0.666666667 - v13) * (v7 - v9) * 6.0;
      goto LABEL_14;
    }
  }

LABEL_18:
  *result = v15;
  if (v6 < 0.0)
  {
    v6 = v6 + 1.0;
  }

  if (v6 <= 1.0)
  {
    v16 = v6;
  }

  else
  {
    v16 = v6 + -1.0;
  }

  v17 = v16;
  if (v16 * 6.0 < 1.0)
  {
    v18 = v9 + (v16 * (v7 - v9)) * 6.0;
LABEL_25:
    v19 = v18;
    goto LABEL_29;
  }

  v19 = v7;
  if (v17 + v17 >= 1.0)
  {
    v19 = v9;
    if (v17 * 3.0 < 2.0)
    {
      v18 = v9 + (0.666666667 - v17) * (v7 - v9) * 6.0;
      goto LABEL_25;
    }
  }

LABEL_29:
  *a5 = v19;
  v20 = v10 + -0.333333333;
  if (v20 < 0.0)
  {
    v20 = v20 + 1.0;
  }

  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + -1.0;
  }

  v22 = v21;
  if (v21 * 6.0 < 1.0)
  {
    v23 = v9 + (v21 * (v7 - v9)) * 6.0;
LABEL_36:
    v7 = v23;
LABEL_38:
    *a6 = v7;
    return result;
  }

  if (v22 + v22 < 1.0)
  {
    goto LABEL_38;
  }

  if (v22 * 3.0 < 2.0)
  {
    v23 = v9 + (0.666666667 - v22) * (v7 - v9) * 6.0;
    goto LABEL_36;
  }

  *a6 = v9;
  return result;
}