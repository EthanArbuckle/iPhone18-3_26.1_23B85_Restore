void sub_25D365010(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

WrdParagraphProperties *WrdParagraphProperties::setPageBreakBefore(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x2000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFDF | (32 * (a2 & 1));
  return this;
}

uint64_t WrdCharacterProperties::setShadow(uint64_t result, int a2)
{
  *(result + 16) |= 0x100uLL;
  *(result + 196) = a2;
  return result;
}

void WrdEshGroup::WrdEshGroup(WrdEshGroup *this)
{
  EshGroup::EshGroup(this);
  *v1 = &unk_286ED4990;
  v1[34] = &unk_286ED4A40;
  v1[46] = 0;
  v1[47] = 0;
}

uint64_t EshTablePropVal<EshComputedRect>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 64))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshPropValParserVisitor::parseElement(uint64_t a1, EshComputedValue *a2)
{
  EshPropValParserVisitor::parseValue(a1, a2, *(a1 + 20) >> 2);
  EshPropValParserVisitor::parseValue(a1, a2 + 1, *(a1 + 20) >> 2);
  EshPropValParserVisitor::parseValue(a1, a2 + 2, *(a1 + 20) >> 2);
  v4 = *(a1 + 20) >> 2;

  return EshPropValParserVisitor::parseValue(a1, a2 + 3, v4);
}

double EshShapeProperties::setCoordBottom(EshShapeProperties *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x143u, 2, &v4).n128_u64[0];
  return result;
}

void WrdEshGroup::~WrdEshGroup(WrdEshGroup *this)
{
  *this = &unk_286ED4990;
  *(this + 34) = &unk_286ED4A40;
  XlEshGroup::cleanup(this);
  EshGroup::~EshGroup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4990;
  *(this + 34) = &unk_286ED4A40;
  XlEshGroup::cleanup(this);

  EshGroup::~EshGroup(this);
}

void sub_25D365A60(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void PptDateTimeMCAtom::PptDateTimeMCAtom(PptDateTimeMCAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED8680;
  *(v2 + 32) = &unk_286ED8728;
}

uint64_t PptDateTimeMCAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptDateTimeMCAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 13) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 5))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 3u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

WrdTableProperties *WrdTableProperties::setTableHeader(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x100000u;
  *(this + 387) = a2;
  return this;
}

uint64_t WrdCharacterProperties::setEmbossed(uint64_t result, int a2)
{
  *(result + 16) |= 0x200uLL;
  *(result + 200) = a2;
  return result;
}

uint64_t EshRawPropVal::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2, a1);
  }

  else
  {
    return 1;
  }
}

void EshDataTablePropVal<unsigned char>::resize(uint64_t a1, unsigned int a2)
{
  if (a2 != -1)
  {
    *(a1 + 16) = a2;
    operator new[](a2);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

void EshRawPropVal::~EshRawPropVal(EshRawPropVal *this)
{
  *this = &unk_286EC63D8;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC63D8;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;
}

uint64_t WrdCharacterProperties::setHyphenationRule(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000000000000uLL;
  *(result + 144) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setHyphenationChangeCharacter(WrdCharacterProperties *this, unsigned __int8 a2)
{
  *&this->var2 |= 0x8000000000000uLL;
  this->var108 = a2;
  return this;
}

uint64_t WrdTableProperties::setWidthOfInvisibleCellAfterUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x40000uLL;
  *(result + 144) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setWidthOfInvisibleCellAfter(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 0x1000000000000000uLL;
  *(this + 171) = a2;
  return this;
}

double WrdTapParser::setBorderBasedOnFlags(WrdTapParser *this, char a2, const WrdBorder *a3, WrdTableCellDescriptor *a4)
{
  if ((a2 & 8) != 0)
  {
    RightBorderReference = WrdTableCellDescriptor::getRightBorderReference(a4);
    result = WrdBorder::operator=(RightBorderReference, a3);
    if ((a2 & 4) == 0)
    {
LABEL_3:
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  BottomBorderReference = WrdTableCellDescriptor::getBottomBorderReference(a4);
  result = WrdBorder::operator=(BottomBorderReference, a3);
  if ((a2 & 2) == 0)
  {
LABEL_4:
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  LeftBorderReference = WrdTableCellDescriptor::getLeftBorderReference(a4);
  result = WrdBorder::operator=(LeftBorderReference, a3);
  if ((a2 & 1) == 0)
  {
LABEL_5:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    DiagonalDownBorderReference = WrdTableCellDescriptor::getDiagonalDownBorderReference(a4);
    result = WrdBorder::operator=(DiagonalDownBorderReference, a3);
    if ((a2 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  TopBorderReference = WrdTableCellDescriptor::getTopBorderReference(a4);
  result = WrdBorder::operator=(TopBorderReference, a3);
  if ((a2 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a2 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  DiagonalUpBorderReference = WrdTableCellDescriptor::getDiagonalUpBorderReference(a4);

  return WrdBorder::operator=(DiagonalUpBorderReference, a3);
}

uint64_t WrdCharacterProperties::setHighlightColor97(uint64_t result, int a2)
{
  *(result + 24) |= 0x80000u;
  *(result + 156) = a2;
  return result;
}

WrdCharacterProperties *WrdCharacterProperties::setHighlighted(WrdCharacterProperties *this, char a2)
{
  *(&this->var2 + 2) |= 0x100000u;
  *(this + 85) = *(this + 85) & 0xFFEFFFFF | ((a2 & 1) << 20);
  return this;
}

uint64_t WrdTableProperties::setTableAlignment(uint64_t result, int a2)
{
  *(result + 16) |= 0x40000000000uLL;
  *(result + 240) = a2;
  return result;
}

void PptExHyperlinkExtraAtom::PptExHyperlinkExtraAtom(PptExHyperlinkExtraAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED95A0;
  *(v2 + 32) = &unk_286ED9648;
  *(v2 + 48) = 0;
}

uint64_t PptExHyperlinkExtraAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExHyperlinkExtraAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void XlSheetProtection::XlSheetProtection(XlSheetProtection *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFFD8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 1;
  *(v2 + 30) = 1;
}

uint64_t XlChartPlot::takeSeriesLineFormat(XlChartPlot *this, XlChartLineStyle *a2)
{
  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 6) = a2;
  return result;
}

XlChartFillStyle *XlChartPlotAxis::takeWallFillFormat(XlChartPlotAxis *this, XlChartFillStyle *a2)
{
  result = this->var7;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var7 = a2;
  return result;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChart3D *a2)
{
  XlParserVisitor::beginRead(this);
  a2->var2 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var3 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var4 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var5 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var6 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var7 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var8 = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartBinaryReader::read(uint64_t this, XlChartLegendFrame *a2)
{
  if (*(this + 1612) >= 1)
  {
    operator new();
  }

  return this;
}

void sub_25D36703C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1081C40E1535A43);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartLegend::XlChartLegend(XlChartLegend *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA980;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartLegend *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 7) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 104))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 104))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t chdShapeTypeFromXlShapeTypeEnum(int a1)
{
  if (a1 == 512)
  {
    v1 = 5;
  }

  else
  {
    v1 = a1 == 257;
  }

  if (a1 == 513)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 256)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 256)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unsigned __int16 *extractDataFromPtgRef3DBuffer(unsigned __int16 *result, unsigned int *a2, int *a3, int *a4)
{
  *a2 = -1;
  *a3 = -1;
  *a4 = -1;
  if (result)
  {
    *a2 = *result;
    *a3 = result[1];
    *a4 = *(result + 4);
  }

  return result;
}

uint64_t SsrwOOStorage::getChildType(SsrwOOStorage *this, const unsigned __int16 *a2)
{
  LODWORD(result) = getChildType(this->var0, a2);
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t getChildType(uint64_t result, const unsigned __int16 *a2)
{
  v6 = 0;
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        if (!*a2 || (*(v3 + 32) | 2) != 2)
        {
          return 0;
        }

        TOC = rootStorageGetTOC(*v3);
        result = tocGetEntryAtIndex(TOC, *(v3 + 8));
        if (!result)
        {
          return result;
        }

        if (!tocFindChildEntry(TOC, result, a2, &v6))
        {
          result = v6;
          if (v6)
          {
            Type = directoryGetType(v6);
            if (Type == 2)
            {
              return 2;
            }

            else
            {
              return Type == 1;
            }
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

void sub_25D367E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *XlChartDataSeries::takeCachedCustomFormat(void *this, XlChartSeriesFormat *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[7];
    if (v3 >= v2[8])
    {
      this = std::vector<XlChartSeriesFormat *,ChAllocator<XlChartSeriesFormat *>>::__emplace_back_slow_path<XlChartSeriesFormat * const&>(v2 + 6, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[7] = this;
  }

  return this;
}

uint64_t *XlChartBinaryReader::setDataPointFormat(uint64_t *this, int a2, int a3)
{
  v3 = this;
  v4 = a3 | (a2 << 16);
  v8 = v4;
  for (i = this[239]; i; i = *i)
  {
    v6 = *(i + 28);
    if (v4 >= v6)
    {
      if (v6 >= v4)
      {
        v9 = &v8;
        this = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + 238), &v8);
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

void XlChartAlRuns::XlChartAlRuns(XlChartAlRuns *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA300;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlChartParserVisitor::visit(unsigned __int8 **this, XlChartAlRuns *a2)
{
  XlParserVisitor::beginRead(this);
  v4 = (*(*this[2] + 80))(this[2]);
  v5 = *(a2 + 2) + *(this + 18);
  v7 = v5 - (*(*this[2] + 40))(this[2]);
  XlParserVisitor::getDataAndContinues(this, &v7);
  XlChartAlRuns::takeRichTextRuns(a2, this[3], v7, v4);
  this[3] = 0;
  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartAlRuns::getRichTextRun(XlChartAlRuns *this, unsigned int a2)
{
  if (*(this + 12) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v5 = 1004;
    goto LABEL_6;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v5 = 1003;
LABEL_6:
    *exception = v5;
  }

  return v2 + 4 * a2;
}

void XlChartAlRuns::~XlChartAlRuns(XlChartAlRuns *this)
{
  *this = &unk_286ECA300;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECA300;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
}

uint64_t OcText::setCharacter(OcText *this, unsigned int a2, __int16 a3)
{
  result = OcText::isSingleByteEncoding(this->var1);
  if (result)
  {
    exception = __cxa_allocate_exception(4uLL);
    v9 = 8005;
LABEL_7:
    *exception = v9;
  }

  var5 = this->var5;
  if (!var5 || this->var3 <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v9 = 1004;
    goto LABEL_7;
  }

  *&var5[2 * a2] = a3;
  return result;
}

BOOL XlFormatInfo::hasCondition(XlFormatInfo *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2) - v1;
  if ((v2 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  if (*(*v1 + 11))
  {
    return 1;
  }

  v4 = (v2 >> 3);
  v5 = 1;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = *(*(v1 + 8 * v5++) + 11);
  }

  while (v7 != 1);
  return v6 < v4;
}

void XlChartAttachedLabel::XlChartAttachedLabel(XlChartAttachedLabel *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA3C0;
  *(v2 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartAttachedLabel *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartBinaryReader::read(XlChartBinaryReader *this, XlChartTextFrame *a2)
{
  v5 = *(a2 + 108) | (*(a2 + 110) << 16);
  v6 = &v5;
  v4 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1824, &v5);
  XlChartBinaryReader::readTextFrame(this, a2, *(v4 + 8));
}

void *XlChartDataSeries::takeCachedCustomLabel(void *this, XlChartCustomLabelText *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[10];
    if (v3 >= v2[11])
    {
      this = std::vector<XlChartCustomLabelText *,ChAllocator<XlChartCustomLabelText *>>::__emplace_back_slow_path<XlChartCustomLabelText * const&>(v2 + 9, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[10] = this;
  }

  return this;
}

void XlChartPiePlot::XlChartPiePlot(XlChartPiePlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartPie::XlChartPie((v2 + 144));
  *this = &unk_286ECB578;
  *(this + 18) = &unk_286ECB5A0;
}

void XlChartPie::XlChartPie(XlChartPie *this)
{
  XlRecord::XlRecord(this, 4121, 6, 0);
  *v1 = &unk_286ECAB48;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartPie *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  if (*(a2 + 2) >= 6u)
  {
    *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlChartPiePlot::~XlChartPiePlot(XlChartPiePlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

void XlChartCustomLabelText::~XlChartCustomLabelText(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlTxo::setFormula(XlTxo *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 6);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 6) = a2;
  *(this + 21) = a3;
  return result;
}

void ELexer::ELexer(ELexer *this, const char *a2)
{
  v3 = yyFlexLexer::yyFlexLexer(this, 0, 0);
  *v3 = &unk_286EC9EB8;
  *(v3 + 28) = 1;
  *(v3 + 576) = a2;
  operator new();
}

void yyFlexLexer::yy_flush_buffer(yyFlexLexer *this, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = 0;
    **(a2 + 8) = 0;
    *(*(a2 + 8) + 1) = 0;
    *(a2 + 16) = *(a2 + 8);
    *(a2 + 48) = 1;
    *(a2 + 64) = 0;
    v2 = *(this + 54);
    if (v2)
    {
      v2 = *(v2 + 8 * *(this + 52));
    }

    if (v2 == a2)
    {
      yyFlexLexer::yy_load_buffer_state(this);
    }
  }
}

void yyFlexLexer::yy_switch_to_buffer(uint64_t a1, uint64_t a2)
{
  yyFlexLexer::yyensure_buffer_stack(a1);
  v4 = *(a1 + 432);
  if (v4)
  {
    v5 = *(a1 + 416);
    v6 = *(v4 + 8 * v5);
    if (v6 != a2)
    {
      if (v6)
      {
        **(a1 + 392) = *(a1 + 376);
        v4 = *(a1 + 432);
        v5 = *(a1 + 416);
        v7 = *(a1 + 384);
        *(*(v4 + 8 * v5) + 16) = *(a1 + 392);
        *(*(v4 + 8 * v5) + 32) = v7;
      }

      *(v4 + 8 * v5) = a2;
      yyFlexLexer::yy_load_buffer_state(a1);
      *(a1 + 408) = 1;
    }
  }
}

double yyFlexLexer::yyensure_buffer_stack(yyFlexLexer *this)
{
  v2 = *(this + 54);
  if (v2)
  {
    v3 = *(this + 53);
    if (*(this + 52) >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x8E6B0D0FuLL);
      *(this + 54) = v5;
      if (!v5)
      {
        (*(*this + 112))(this, "out of dynamic memory in yyensure_buffer_stack()");
        v5 = *(this + 54);
      }

      v6 = &v5[8 * *(this + 53)];
      result = 0.0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(this + 53) = v4;
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x43DA4E99uLL);
    *(this + 54) = v8;
    if (!v8)
    {
      (*(*this + 112))(this, "out of dynamic memory in yyensure_buffer_stack()");
      v8 = *(this + 54);
    }

    *v8 = 0;
    result = 0.0;
    *(this + 26) = xmmword_25D6FCBF0;
  }

  return result;
}

uint64_t yyparse(EFormula *a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = 0;
  v231 = 0;
  v5 = 0;
  v246 = *MEMORY[0x277D85DE8];
  v6 = &v243;
  v7 = 200;
  __src = &v243;
  v8 = v244;
  v9 = v244;
  v236 = -2;
  v233 = v2;
LABEL_2:
  *v8 = v5;
  if (&v9[v7 - 1] <= v8)
  {
    if (v7 >> 5 > 0xC34)
    {
      v192 = v245;
      goto LABEL_281;
    }

    if ((2 * v7) >= 0x186A0)
    {
      v7 = 100000;
    }

    else
    {
      v7 *= 2;
    }

    v10 = malloc_type_malloc(42 * v7 + 39, 0x1000040BDFB0063uLL);
    if (!v10)
    {
      v192 = v245;
      goto LABEL_280;
    }

    v11 = v10;
    v12 = ((v8 - v9) >> 1) + 1;
    memcpy(v10, v9, 2 * v12);
    memcpy(&v11[20 * (((1717986919 * (2 * v7 + 39)) >> 32) >> 4)], __src, 40 * v12);
    if (v9 != v244)
    {
      free(v9);
    }

    v8 = &v11[v12 - 1];
    v6 = &v11[20 * (((1717986919 * (2 * v7 + 39)) >> 32) >> 4) - 20 + 20 * v12];
    if (v7 <= v12)
    {
      v199 = 0;
      v192 = v245;
      v9 = v11;
      goto LABEL_326;
    }

    __src = &v11[20 * (((1717986919 * (2 * v7 + 39)) >> 32) >> 4)];
    v9 = v11;
    v2 = v233;
  }

  v13 = yypact[v5];
  if (v13 == -189)
  {
    goto LABEL_30;
  }

  v14 = v236;
  if (v236 == -2)
  {
    v14 = (*(*v2->mYylex + 64))(v2->mYylex);
    mYylex = v2->mYylex;
    v1 = mYylex[65];
    v3 = *(mYylex + 34);
    v239 = *(mYylex + 33);
    v240 = v3;
  }

  if (v14 < 1)
  {
    v4 = 0;
    v236 = 0;
  }

  else
  {
    v236 = v14;
    v4 = v14 > 0x130 ? 2 : yytranslate[v14];
  }

  v16 = v4 + v13;
  if ((v4 + v13) > 0x14F || v4 != yycheck[v16])
  {
LABEL_30:
    v20 = yydefact[v5];
    if (!yydefact[v5])
    {
      goto LABEL_267;
    }
  }

  else
  {
    v17 = yytable[v16];
    if (v17 > 0)
    {
      if (v16 != 44)
      {
        v18 = v231 - 1;
        if (!v231)
        {
          v18 = 0;
        }

        v231 = v18;
        if (v236)
        {
          v19 = -2;
        }

        else
        {
          v19 = 0;
        }

        v236 = v19;
        *&v6[2].type = v1;
        v6 += 2;
        v3 = v240;
        *v6->data = v239;
        *&v6[1].dataSize = v3;
        goto LABEL_237;
      }

      v197 = 0;
      v198 = 0;
      v192 = v245;
      goto LABEL_327;
    }

    if (!yytable[v16])
    {
LABEL_267:
      if (v231 == 3)
      {
        v199 = v236;
        if (v236 <= 0)
        {
          v192 = v245;
          if (!v236)
          {
            v236 = 0;
            goto LABEL_326;
          }
        }

        else
        {
          v236 = -2;
          v192 = v245;
          if ((v4 - 51) <= 0x25 && ((1 << (v4 - 51)) & 0x3D2059F6CFLL) != 0)
          {

            v236 = -2;
          }
        }

        goto LABEL_294;
      }

      if (v231)
      {
        v192 = v245;
LABEL_294:
        while (v8 != v9)
        {
          v202 = yystos[v5] - 51;
          v203 = v202 > 0x25;
          v204 = (1 << v202) & 0x3D2059F6CFLL;
          if (!v203 && v204 != 0)
          {
          }

          v6 -= 2;
          v206 = *(v8 - 1);
          v8 -= 2;
          v5 = v206;
        }

        v199 = 0;
        goto LABEL_326;
      }

      v190 = yysyntax_error(0, v5, v236);
      v191 = v190;
      v192 = v245;
      if (v190 < 0x81)
      {
        v196 = 128;
      }

      else
      {
        v193 = v9;
        if (v190 < 0)
        {
          v194 = -1;
        }

        else
        {
          v194 = 2 * v190;
        }

        v195 = malloc_type_malloc(v194, 0x100004077774924uLL);
        v196 = 128;
        if (v195)
        {
          v196 = v194;
        }

        v9 = v193;
        if (v195)
        {
          v192 = v195;
        }
      }

      if (v191 - 1 < v196)
      {
        yysyntax_error(v192, v5, v236);
        v200 = [MEMORY[0x277CCACA8] stringWithUTF8String:v192];
        v233->mErrMsg = v200;
        goto LABEL_294;
      }

      v201 = [MEMORY[0x277CCACA8] stringWithUTF8String:"syntax error"];
      v233->mErrMsg = v201;
      if (!v191)
      {
        goto LABEL_294;
      }

LABEL_280:
      v2 = v233;
LABEL_281:
      v197 = 0;
      v2->mErrMsg = [MEMORY[0x277CCACA8] stringWithUTF8String:"memory exhausted"];
      v198 = 2;
      goto LABEL_327;
    }

    v20 = -v17;
  }

  v21 = yyr2[v20];
  v22 = &v6[-2 * yyr2[v20]];
  v23 = *&v22[2].type;
  *&v3 = *v22[2].data;
  v24 = *&v22[2].data[8];
  v25 = *&v22[3].type;
  v242 = *&v22[3].data[8];
  v241 = v25;
  switch(v20)
  {
    case 2u:
      v23 = *&v6->type;
      v132 = *&v6->type;
      v234 = v3;
      v229 = v4;
      v133 = v1;
      v134 = v24;
      [(EFormula *)v2 setFormula:v132];
      v24 = v134;
      v1 = v133;
      v4 = v229;
      goto LABEL_208;
    case 3u:
    case 0x2Au:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 16;
      goto LABEL_181;
    case 4u:
    case 0x14u:
    case 0x16u:
    case 0x19u:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x2Bu:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x5Fu:
    case 0x65u:
    case 0x66u:
    case 0x6Cu:
      goto LABEL_32;
    case 5u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 11;
      goto LABEL_181;
    case 6u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 14;
      goto LABEL_181;
    case 7u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 9;
      goto LABEL_181;
    case 8u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 10;
      goto LABEL_181;
    case 9u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 13;
      goto LABEL_181;
    case 0xAu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 12;
      goto LABEL_181;
    case 0xBu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 8;
      goto LABEL_181;
    case 0xCu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 3;
      goto LABEL_181;
    case 0xDu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 4;
      goto LABEL_181;
    case 0xEu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 5;
      goto LABEL_181;
    case 0xFu:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 6;
      goto LABEL_181;
    case 0x10u:
      v31 = *&v6[-6].type;
      v32 = *&v6->type;
      v33 = v2;
      v34 = 7;
      goto LABEL_181;
    case 0x11u:
      v232 = v1;
      v113 = v24;
      v234 = v3;
      v23 = *&v6[-2].type;
      if (!v23)
      {
        v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      }

      v114 = v23;
      v115 = 20;
      goto LABEL_175;
    case 0x12u:
      v232 = v1;
      v113 = v24;
      v234 = v3;
      v23 = *&v6->type;
      if (!*&v6->type)
      {
        v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      }

      v114 = v23;
      v115 = 19;
      goto LABEL_175;
    case 0x13u:
      v232 = v1;
      v113 = v24;
      v234 = v3;
      v23 = *&v6->type;
      if (!*&v6->type)
      {
        v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      }

      v114 = v23;
      v115 = 18;
LABEL_175:
      [v114 addToken:v115 extendedDataLength:0];
      v3 = v234;
      goto LABEL_176;
    case 0x15u:
      v106 = *&v6[-2].type;
      goto LABEL_186;
    case 0x17u:
      v28 = *&v6[-2].type;
      goto LABEL_204;
    case 0x18u:
      type = v6[-2].type;
      v234 = v3;
      v35 = v24;
      v36 = intTokens(v2, type);
      goto LABEL_232;
    case 0x1Au:
      v230 = v24;
      v234 = v3;
      v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      if ([*&v6[-2].type compare:@"#NULL!"])
      {
        if ([*&v6[-2].type compare:@"#DIV/0!"])
        {
          if ([*&v6[-2].type compare:@"#VALUE!"])
          {
            if ([*&v6[-2].type compare:@"#REF!"])
            {
              if ([*&v6[-2].type compare:@"#NAME?"])
              {
                if ([*&v6[-2].type compare:@"#NUM!"])
                {
                  [*&v6[-2].type compare:@"#N/A"];
                  v116 = v23;
                  v117 = 42;
                }

                else
                {
                  v116 = v23;
                  v117 = 36;
                }
              }

              else
              {
                v116 = v23;
                v117 = 29;
              }
            }

            else
            {
              v116 = v23;
              v117 = 23;
            }
          }

          else
          {
            v116 = v23;
            v117 = 15;
          }
        }

        else
        {
          v116 = v23;
          v117 = 7;
        }
      }

      else
      {
        v116 = v23;
        v117 = 0;
      }

      addErrorToken(v116, v117);
      goto LABEL_266;
    case 0x1Bu:
    case 0x5Au:
      goto LABEL_111;
    case 0x1Cu:
    case 0x4Cu:
      goto LABEL_92;
    case 0x1Du:
      v23 = v23 & 0xFFFFFFFF00000000 | 0x11;
      goto LABEL_233;
    case 0x1Eu:
      v23 = v23 & 0xFFFFFFFF00000000 | 0xF;
      goto LABEL_233;
    case 0x1Fu:
      v34 = v6[-2].type;
      v31 = *&v6[-4].type;
      v32 = *&v6->type;
      v33 = v2;
LABEL_181:
      v234 = v3;
      v35 = v24;
      goto LABEL_182;
    case 0x24u:
    case 0x73u:
      v29 = v2;
      v30 = 1;
      goto LABEL_42;
    case 0x25u:
      v234 = v3;
      v230 = v24;
      v130 = [(EFormula *)v2 formulaHelper];
      v131 = @"TRUE";
      goto LABEL_206;
    case 0x26u:
    case 0x74u:
      v29 = v2;
      v30 = 0;
LABEL_42:
      v234 = v3;
      v35 = v24;
      v36 = BOOLTokens(v29, v30);
      goto LABEL_232;
    case 0x27u:
      v234 = v3;
      v230 = v24;
      v130 = [(EFormula *)v2 formulaHelper];
      v131 = @"FALSE";
LABEL_206:
      v168 = [v130 resolveFunctionName:v131];
      v232 = v1;
      v169 = v21;
      v170 = v168;
      v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      v171 = v170;
      v21 = v169;
      v1 = v232;
      addFunction(v23, v171, 0);
      goto LABEL_207;
    case 0x29u:
      v159 = *&v6[-4].type;
      v234 = v3;
      v160 = v24;
      [v159 addToken:21 extendedDataLength:0];
      v24 = v160;
      v3 = v234;
      v23 = *&v6[-4].type;
      goto LABEL_233;
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x4Bu:
      v23 = *&v6[-2].type;
      *&v3 = *v6[-2].data;
      v24 = *&v6[-2].data[8];
      v26 = *&v6[-1].type;
      v242 = *&v6[-1].data[8];
      v241 = v26;
      goto LABEL_233;
    case 0x31u:
      v229 = v4;
      v230 = v24;
      v234 = v3;
      v227 = v21;
      v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      v80 = v2;
      v81 = *&v6[-4].type;
      v228 = [(NSMutableArray *)v81 count];
      v82 = *&v6[-8].type;
      v83 = [-[EFormula formulaHelper](v80 "formulaHelper")];
      if (v83 == 255)
      {
        v237 = -1;
        v238 = -1;
        [objc_msgSend(objc_msgSend(objc_msgSend(-[EFormula formulaHelper](v233 "formulaHelper")];
        v84 = [v23 addToken:57 extendedDataLength:6];
        *v84 = v238;
        *(v84 + 2) = v237;
        ++v228;
      }

      v85 = XlArgumentCountForFunction(v83);
      v86 = args(v81);
      v87 = v86;
      v226 = v9;
      LODWORD(v225) = v83;
      if (v86 && [v86 tokenCount] && (v88 = objc_msgSend(v87, "tokenTypeAtIndex:", 0), v85 <= 0) && v228 == 1 && v88 == 22)
      {
        v89 = -1;
      }

      else
      {
        if ((v85 & 0x80000000) == 0 && v85 != v228)
        {
          v216 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid number of parameters for function!"];
          v233->mErrMsg = v216;

          v192 = v245;
LABEL_312:
          LODWORD(v4) = v229;
          goto LABEL_325;
        }

        v186 = v1;
        v187 = [v87 tokenCount];
        if (v187)
        {
          v188 = v187;
          v189 = 0;
          do
          {
            [v23 copyTokenAtIndex:v189 fromFormula:v87];
            v189 = (v189 + 1);
          }

          while (v188 != v189);
        }

        v89 = 0;
        v1 = v186;
      }

      v21 = v227;

      if (v85 == -1)
      {
        addVariableFunction(v23, v225, &v228[v89]);
      }

      else
      {
        addFunction(v23, v225, v228);
      }

      v9 = v226;
      v4 = v229;
      v2 = v233;
      goto LABEL_266;
    case 0x32u:
      v23 = *&v6[-6].type;
      if (!v23)
      {
        goto LABEL_233;
      }

      v232 = v1;
      v53 = v21;
      v161 = *&v6->type;
      if (*&v6->type)
      {
        v162 = v23;
        v163 = *&v6->type;
        v234 = v3;
        v164 = v24;
        [v162 addObject:v163];

        v24 = v164;
        v3 = v234;
        v23 = *&v6[-6].type;
      }

      goto LABEL_240;
    case 0x33u:
      v23 = *&v6[-4].type;
      if (!v23)
      {
        goto LABEL_233;
      }

      v232 = v1;
      v53 = v21;
      v172 = *&v6->type;
      if (*&v6->type)
      {
        v173 = v23;
        v174 = *&v6->type;
        v234 = v3;
        v175 = v24;
        [v173 addObject:v174];

        v24 = v175;
        v3 = v234;
        v23 = *&v6[-4].type;
      }

      goto LABEL_240;
    case 0x34u:
    case 0x35u:
    case 0x6Au:
      v234 = v3;
      v232 = v1;
      v27 = v24;
      v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{*&v6->type, 0}];

      goto LABEL_201;
    case 0x36u:
      v234 = v3;
      v232 = v1;
      v27 = v24;
      v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      [v23 addToken:22 extendedDataLength:0];
      goto LABEL_201;
    case 0x3Cu:
      v234 = v3;
      v35 = v24;
      v36 = refTokens(v2, v6);
      goto LABEL_232;
    case 0x3Du:
      v234 = v3;
      v35 = v24;
      v31 = refTokens(v2, v6 - 6);
      v32 = *&v6->type;
      v33 = v2;
      v34 = 17;
LABEL_182:
      v36 = operatorTokens(v33, v34, v31, v32);
      goto LABEL_232;
    case 0x3Eu:
      LOWORD(v3) = 0;
      if (LOBYTE(v6[-9].dataSize))
      {
        v165 = 0x4000;
      }

      else
      {
        v165 = 0;
      }

      if (LOBYTE(v6[-1].dataSize))
      {
        v166 = 0x4000;
      }

      else
      {
        v166 = 0;
      }

      WORD1(v3) = -1;
      WORD2(v3) = v165 | *&v6[-10].data[8];
      WORD3(v3) = v166 | *&v6[-2].data[8];
      goto LABEL_220;
    case 0x3Fu:
      LOWORD(v3) = LOWORD(v6[-10].type) - 1;
      WORD1(v3) = LOWORD(v6[-2].type) - 1;
      WORD2(v3) = 0x8000;
      v128 = -32513;
      goto LABEL_219;
    case 0x40u:
      if (BYTE1(v6[-9].dataSize))
      {
        v176 = 0x8000;
      }

      else
      {
        v176 = 0;
      }

      v24 = 255;
      LOWORD(v3) = v6[-9].type;
      WORD1(v3) = v6[-1].type;
      if (BYTE1(v6[-1].dataSize))
      {
        v128 = 0x8000;
      }

      else
      {
        v128 = 255;
      }

      WORD2(v3) = v176;
LABEL_219:
      WORD3(v3) = v128;
      goto LABEL_220;
    case 0x41u:
      LOWORD(v3) = *v6[-6].data;
      WORD1(v3) = *v6->data;
      WORD2(v3) = *&v6[-6].data[2];
      WORD3(v3) = *&v6->data[2];
LABEL_220:
      v23 = 0x800000025;
      goto LABEL_233;
    case 0x42u:
      v23 = *&v6->type;
      *&v3 = *v6->data;
      v24 = *&v6->data[8];
      goto LABEL_233;
    case 0x43u:
      v232 = v1;
      v113 = v24;
      v234 = v3;
      v118 = [-[EFormula formulaHelper](v2 "formulaHelper")];
      if (v118 != -1)
      {
        v3 = v234;
        LODWORD(v3) = v118;
        v23 = 0x400000023;
LABEL_176:
        v24 = v113;
LABEL_241:
        v1 = v232;
        goto LABEL_233;
      }

      v2->mErrMsg = [MEMORY[0x277CCACA8] stringWithUTF8String:"Column followed by no TOK_COLON or TOK_LPAREN."];
      v199 = v21;
      v192 = v245;
      goto LABEL_321;
    case 0x44u:
      if (v6[-1].type < 500001 && *&v6[-2].data[8] < 500001)
      {
        if (LOBYTE(v6[-1].dataSize))
        {
          v135 = 0x4000;
        }

        else
        {
          v135 = 0;
        }

        if (BYTE1(v6[-1].dataSize))
        {
          v136 = 0x8000;
        }

        else
        {
          v136 = 0;
        }

        LOWORD(v3) = v6[-1].type;
        WORD1(v3) = v136 & 0xFF00 | *&v6[-2].data[8] | v135;
        v23 = 0x400000024;
        goto LABEL_233;
      }

      v210 = MEMORY[0x277CCACA8];
      v211 = "Reference out of bounds!";
      goto LABEL_316;
    case 0x45u:
      v70 = *&v6[-7].dataSize;
      if (v70 != -1)
      {
        goto LABEL_229;
      }

      v210 = MEMORY[0x277CCACA8];
      v211 = "label! but label is not a sheet name.";
      goto LABEL_316;
    case 0x46u:
      v232 = v1;
      v53 = v21;
      v54 = *&v6[-2].data[8];
      if (v54 != -1)
      {
        v230 = v24;
        v234 = v3;
        v55 = *&v6[-9].dataSize;
        if (v55 == -1 || v6[-9].data[4] == 1)
        {
          goto LABEL_225;
        }

        v57 = *&v6[-4].data[8];
        v56 = v2;
        goto LABEL_258;
      }

      v214 = MEMORY[0x277CCACA8];
      v215 = "sheet!label but label is not a local name.";
      goto LABEL_320;
    case 0x47u:
      if (*&v6[-7].dataSize != -1)
      {
        goto LABEL_32;
      }

      v210 = MEMORY[0x277CCACA8];
      v211 = "label!... but label is not a sheet name.";
      goto LABEL_316;
    case 0x48u:
      v232 = v1;
      v53 = v21;
      v124 = *&v6[-2].data[8];
      if (v124 != -1)
      {
        goto LABEL_239;
      }

      v214 = MEMORY[0x277CCACA8];
      v215 = "simple label but label is not a local name.";
      goto LABEL_320;
    case 0x49u:
      if (*&v6[-15].dataSize == -1 || *&v6[-7].dataSize == -1)
      {
        v210 = MEMORY[0x277CCACA8];
        v211 = "label:label!... but one of label is not a sheet name.";
      }

      else
      {
        if (v6->type)
        {
          v68 = *&v6[-16].type;
          v69 = *&v6[-8].type;
          v234 = v3;
          v35 = v24;
          LOWORD(v70) = [(EFormula *)v2 resolveFirstSheet:v68 lastSheet:v69];
          v71 = v2;
          v72 = v6;
LABEL_231:
          v36 = link3DTokens(v71, v70, v72);
LABEL_232:
          v24 = v35;
          v3 = v234;
          v23 = v36;
          goto LABEL_233;
        }

LABEL_306:
        v210 = MEMORY[0x277CCACA8];
        v211 = "3d reference not supported.";
      }

LABEL_316:
      v2->mErrMsg = [v210 stringWithUTF8String:v211];
      v199 = v21;
      v192 = v245;
      goto LABEL_326;
    case 0x4Au:
      v23 = *&v6[-2].type;
      goto LABEL_233;
    case 0x4Du:
      if (!*&v6[-2].type)
      {
LABEL_32:
        v23 = *&v6->type;
        goto LABEL_233;
      }

      v210 = MEMORY[0x277CCACA8];
      v211 = "should not have table name at all!";
      goto LABEL_316;
    case 0x4Eu:
      v227 = v21;
      if (*v6[-4].data == 278)
      {
        v137 = *&v6[-3].dataSize;
        v228 = *&v6[-4].data[8];
        v234 = v3;
        v230 = v24;
        v138 = [v137 tableRange];
        v139 = [v138 firstRow];
        v225 = [v137 headerRowCount] + v139;
        v140 = [v138 lastRow];
        v224 = v140 - [v137 totalsRowCount];
        v141 = [v138 firstColumn];
        v232 = v1;
        v142 = v4;
        v143 = v9;
        v144 = v141 | 0xC000;
        v145 = v138;
        v2 = v233;
        v146 = [v145 lastColumn] | 0xC000;
        v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
        v147 = [v23 addToken:59 extendedDataLength:10];
        v24 = v230;
        v3 = v234;
        *v147 = v228;
        v148 = v224;
        v147[1] = v225;
        v147[2] = v148;
        v147[3] = v144;
        v9 = v143;
        v4 = v142;
        v147[4] = v146;
        v1 = v232;
        v21 = v227;
        goto LABEL_233;
      }

      v212 = MEMORY[0x277CCACA8];
      v213 = "type must be TOK_TABLE_NAME";
LABEL_324:
      v2->mErrMsg = [v212 stringWithUTF8String:v213];
      v192 = v245;
      goto LABEL_325;
    case 0x4Fu:
      v230 = v24;
      v234 = v3;
      v227 = v21;
      if (!*&v6[-6].type)
      {
        v238 = -1;
        v90 = [(EFormula *)v2 resolveTable:"" sheetIndex:&v238];
        *&v6[-5].dataSize = v90;
        *&v6[-6].data[8] = v238;
        if (!v90)
        {
          goto LABEL_323;
        }
      }

      v232 = v1;
      v229 = v4;
      v226 = v9;
      v91 = [[EFTableData alloc] initWith:&v6[-6]];
      v92 = [(EFTableData *)v91 reference];
      v93 = [(EFTableData *)v91 table];
      v94 = [(EFTableData *)v91 ptgData];
      v95 = [-[EFormula formulaHelper](v2 "formulaHelper")];
      if (v95 == -1)
      {
        goto LABEL_307;
      }

      v96 = v95;
      v97 = [v92 firstRow];
      *(v94 + 2) = [v93 headerRowCount] + v97;
      v98 = [v92 lastRow];
      v99 = v98 - [v93 totalsRowCount];
      v100 = v232;
      *(v94 + 4) = v99;
      *(v94 + 6) = v96 + [v92 firstColumn];
      v101 = v92;
      v1 = v100;
      v102 = [v101 firstColumn];
      *(v94 + 7) = -64;
      *(v94 + 8) = (v96 + v102) | 0xC000;
      v103 = [(EFTableData *)v91 refTok];
      v2 = v233;
      v23 = refTokens(v233, v103);

      v9 = v226;
      goto LABEL_252;
    case 0x50u:
      v230 = v24;
      v234 = v3;
      v227 = v21;
      if (*&v6[-6].type || (v238 = -1, v107 = [(EFormula *)v2 resolveTable:"" sheetIndex:&v238], *&v6[-5].dataSize = v107, *&v6[-6].data[8] = v238, v107))
      {
        v108 = [[EFTableData alloc] initWith:&v6[-6]];
        v109 = [(EFTableData *)v108 reference];
        v110 = [(EFTableData *)v108 ptgData];
        -[EFTableData makeup:with:](v108, "makeup:with:", *&v6[-2].type, [-[EFormula formulaHelper](v233 "formulaHelper")]);
        *(v110 + 6) = [v109 firstColumn];
        v111 = v109;
        v2 = v233;
        v112 = [v111 lastColumn];
        *(v110 + 7) = -64;
        *(v110 + 8) = v112 | 0xC000;
        v23 = refTokens(v2, [(EFTableData *)v108 refTok]);

        goto LABEL_253;
      }

LABEL_323:
      v212 = MEMORY[0x277CCACA8];
      v213 = "cell is not in a table!";
      goto LABEL_324;
    case 0x51u:
      v230 = v24;
      v234 = v3;
      v227 = v21;
      v226 = v9;
      if (*&v6[-2].type || (v238 = -1, v58 = [(EFormula *)v2 resolveTable:"" sheetIndex:&v238], *&v6[-1].dataSize = v58, *&v6[-2].data[8] = v238, v58))
      {
        v59 = [[EFTableData alloc] initWith:&v6[-2]];
        v60 = [(EFTableData *)v59 reference];
        v61 = [(EFTableData *)v59 table];
        v62 = [(EFTableData *)v59 ptgData];
        v229 = v4;
        v63 = v62;
        v64 = [v60 firstRow];
        v232 = v1;
        v63[1] = [v61 headerRowCount] + v64;
        v65 = [v60 lastRow];
        v66 = v65 - [v61 totalsRowCount];
        v1 = v232;
        v63[2] = v66;
        v63[3] = [v60 firstColumn];
        v67 = v60;
        v2 = v233;
        v63[4] = [v67 lastColumn];
        v4 = v229;
        [(EFormula *)v2 setTableData:v59];

        v9 = v226;
        goto LABEL_253;
      }

      v2->mErrMsg = [MEMORY[0x277CCACA8] stringWithUTF8String:"cell is not in a table!"];
      goto LABEL_304;
    case 0x52u:
      v234 = v3;
      v232 = v1;
      v27 = v24;
      v167 = [-[EFormula tableData](v2 "tableData")];
      *(v167 + 7) = -64;
      *(v167 + 9) = -64;
      v23 = refTokens(v2, [-[EFormula tableData](v2 "tableData")]);
      [(EFormula *)v2 setTableData:0];
LABEL_201:
      v24 = v27;
      v1 = v232;
      goto LABEL_208;
    case 0x58u:
      v234 = v3;
      v230 = v24;
      v119 = [-[EFormula formulaHelper](v2 "formulaHelper")];
      v232 = v1;
      v120 = v21;
      v121 = v119;
      v122 = [(EFormula *)v2 tableData];
      v123 = v121;
      v21 = v120;
      v1 = v232;
      [v122 makeup:*&v6[-2].type with:v123];
LABEL_207:
      v24 = v230;
LABEL_208:
      v3 = v234;
      goto LABEL_233;
    case 0x59u:
      if (*&v6[-2].type)
      {
        v104 = *&v6->type;
        v223 = *&v6[-2].type;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v223, v104];
        *&v6[-2].type = v23;
        *&v3 = *v6[-2].data;
        v24 = *&v6[-2].data[8];
        v105 = *&v6[-1].data[8];
        v241 = *&v6[-1].type;
      }

      else
      {
LABEL_111:
        v23 = *&v6->type;
        *&v3 = *v6->data;
        v24 = *&v6->data[8];
        v241 = *&v6[1].type;
        v105 = *&v6[1].data[8];
      }

      v242 = v105;
      goto LABEL_233;
    case 0x5Bu:
      v150 = v1;
      v151 = v24;
      v234 = v3;
      v227 = v21;
      v229 = v4;
      v232 = v150;
      v226 = v9;
      v152 = [-[EFormula tableData](v2 "tableData")];
      v153 = [-[EFormula tableData](v2 "tableData")];
      v154 = [-[EFormula tableData](v2 "tableData")];
      v155 = v2;
      v156 = v154;
      v157 = [-[EFormula formulaHelper](v155 "formulaHelper")];
      if (v157 == -1)
      {
        goto LABEL_307;
      }

      v158 = v157;
      *(v156 + 6) = v157 + [v153 firstColumn];
      *(v156 + 8) = v158 + [v153 firstColumn];
      v9 = v226;
      v2 = v233;
      v4 = v229;
      v21 = v227;
      v3 = v234;
      v24 = v151;
      v1 = v232;
      goto LABEL_233;
    case 0x5Cu:
      v229 = v4;
      v230 = v24;
      v234 = v3;
      v227 = v21;
      v226 = v9;
      v73 = [-[EFormula tableData](v2 "tableData")];
      v228 = [-[EFormula tableData](v2 "tableData")];
      v74 = [-[EFormula tableData](v2 "tableData")];
      v75 = [-[EFormula formulaHelper](v2 "formulaHelper")];
      if (v75 == -1)
      {
        v2->mErrMsg = [MEMORY[0x277CCACA8] stringWithUTF8String:"column name in a table could not be resolved!"];
      }

      else
      {
        v76 = v75;
        v232 = v1;
        v77 = [-[EFormula formulaHelper](v2 "formulaHelper")];
        if (v77 != -1)
        {
          v78 = v77;
          v79 = v228;
          *(v74 + 6) = v76 + [v228 firstColumn];
          *(v74 + 8) = v78 + [v79 firstColumn];
          v9 = v226;
          v1 = v232;
          v2 = v233;
          goto LABEL_252;
        }

LABEL_307:
        v209 = [MEMORY[0x277CCACA8] stringWithUTF8String:"column name in a table could not be resolved!"];
        v1 = v232;
        v233->mErrMsg = v209;
      }

      v192 = v245;
      v9 = v226;
      goto LABEL_312;
    case 0x5Du:
      v70 = *&v6[-2].type;
      if (v70 == -1)
      {
        goto LABEL_306;
      }

LABEL_229:
      if (!v6->type)
      {
        goto LABEL_306;
      }

      v71 = v2;
      v72 = v6;
      v234 = v3;
      v35 = v24;
      goto LABEL_231;
    case 0x5Eu:
      v232 = v1;
      v53 = v21;
      v54 = *&v6->data[8];
      if (v54 != -1)
      {
        v230 = v24;
        v234 = v3;
        v55 = *&v6[-2].type;
        if (v55 == -1)
        {
LABEL_225:
          v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
          *[v23 addToken:35 extendedDataLength:4] = v54;
LABEL_259:
          v21 = v53;
          v1 = v232;
          goto LABEL_266;
        }

        v56 = v2;
        LOWORD(v57) = v54;
LABEL_258:
        v23 = sheetNameTokens(v56, v55, v57);
        goto LABEL_259;
      }

      v214 = MEMORY[0x277CCACA8];
      v215 = "TOK_NAME has to be a local name.";
LABEL_320:
      v2->mErrMsg = [v214 stringWithUTF8String:v215];
      v192 = v245;
      v199 = v53;
LABEL_321:
      v1 = v232;
      goto LABEL_326;
    case 0x60u:
      if (*&v6[-10].type)
      {
        goto LABEL_308;
      }

LABEL_92:
      v23 = 0;
      goto LABEL_233;
    case 0x61u:
      v23 = *&v6[-8].type;
      goto LABEL_233;
    case 0x62u:
      v23 = *&v6[1].dataSize;
      goto LABEL_233;
    case 0x63u:
      v177 = *&v6[-4].type;
      v178 = *&v6->type;
      v234 = v3;
      v35 = v24;
      v36 = [(EFormula *)v2 resolveFirstSheet:v177 lastSheet:v178];
      goto LABEL_232;
    case 0x64u:
      v232 = v1;
      v53 = v21;
      v124 = *&v6->data[8];
      if (v124 != -1)
      {
LABEL_239:
        v234 = v3;
        v230 = v24;
        v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
        v185 = [v23 addToken:35 extendedDataLength:4];
        v24 = v230;
        v3 = v234;
        *v185 = v124;
LABEL_240:
        v21 = v53;
        goto LABEL_241;
      }

      v214 = MEMORY[0x277CCACA8];
      v215 = "extbook!TOK_NAME where TOK_NAME has to be a local name.";
      goto LABEL_320;
    case 0x67u:
      if (!*&v6[-6].type)
      {
        goto LABEL_233;
      }

LABEL_308:
      v210 = MEMORY[0x277CCACA8];
      v211 = "External book reference not supported!";
      goto LABEL_316;
    case 0x68u:
      v230 = v24;
      v234 = v3;
      v227 = v21;
      v226 = v9;
      v23 = objc_alloc_init([(EFormula *)v2 formulaClass]);
      LODWORD(v238) = 0;
      v228 = [*&v6[-6].type count];
      v232 = v1;
      v229 = v4;
      if (!v228)
      {
        [v23 addArrayWithCol:0xFFFFFFFFLL andRow:0xFFFFFFFFLL];
        goto LABEL_251;
      }

      v37 = 0;
      v38 = 0;
      do
      {
        v39 = [*&v6[-6].type objectAtIndex:v37];
        v40 = [v39 tokenCount];
        if (v40 >= 1)
        {
          v41 = 0;
          do
          {
            if ([v39 tokenTypeAtIndex:v41] == 23)
            {
              [v39 extendedDataForTokenAtIndex:v41 extendedDataIndex:0 length:&v238];
            }

            v41 = (v41 + 1);
          }

          while (v40 != v41);
        }

        LODWORD(v4) = v229;
        if (v38)
        {
          v1 = v232;
          if (v38 != v40)
          {
            v207 = "Array Colums are not same!";
            goto LABEL_303;
          }
        }

        else
        {
          v38 = v40;
        }

        ++v37;
      }

      while (v37 != v228);
      [v23 addArrayWithCol:(v38 - 1) andRow:(v228 - 1)];
      v42 = 0;
      v43 = 0;
      v2 = v233;
LABEL_56:
      v44 = [*&v6[-6].type objectAtIndex:v42];
      v45 = [v44 tokenCount];
      if (v45 < 1)
      {
        goto LABEL_74;
      }

      v46 = v45;
      v47 = 0;
      while (2)
      {
        v48 = [v44 tokenTypeAtIndex:v47];
        if (v48 > 29)
        {
          if (v48 == 31)
          {
            v52 = [v44 extendedDataForTokenAtIndex:v47 extendedDataIndex:0 length:&v238];
            if (v52)
            {
              v50 = *v52;
            }

            else
            {
              v50 = 0.0;
            }
          }

          else
          {
            if (v48 != 30)
            {
              goto LABEL_65;
            }

            LOWORD(v49) = *[v44 extendedDataForTokenAtIndex:v47 extendedDataIndex:0 length:&v238];
            v50 = v49;
          }

          addNumberToArray(v23, v43 + v47, v50);
LABEL_72:
          v47 = (v47 + 1);
          if (v46 != v47)
          {
            continue;
          }

          v43 += v47;
          v2 = v233;
LABEL_74:
          if (++v42 != v228)
          {
            goto LABEL_56;
          }

LABEL_251:

          v9 = v226;
          v1 = v232;
LABEL_252:
          v4 = v229;
LABEL_253:
          v21 = v227;
LABEL_266:
          v3 = v234;
          v24 = v230;
LABEL_233:
          v181 = &v6[-2 * v21];
          v8 -= 2 * v21;
          *&v181[2].type = v23;
          v6 = v181 + 2;
          *v6->data = v3;
          *&v6->data[8] = v24;
          v182 = v241;
          *&v6[1].data[8] = v242;
          *&v6[1].type = v182;
          v183 = yyr1[v20] - 50;
          v184 = *v8 + yypgoto[v183];
          if (v184 <= 0x14F && yycheck[v184] == *v8)
          {
            v17 = yytable[v184];
          }

          else
          {
            v17 = yydefgoto[v183];
          }

LABEL_237:
          v8 += 2;
          v5 = v17;
          goto LABEL_2;
        }

        break;
      }

      if (v48 != 23)
      {
        if (v48 == 29)
        {
          addBoolToArray(v23, *[v44 extendedDataForTokenAtIndex:v47 extendedDataIndex:0 length:&v238] != 0, v43 + v47);
          goto LABEL_72;
        }

LABEL_65:
        addErrorToArrayAtIndex(v23, v43 + v47);
        goto LABEL_72;
      }

      v51 = [v44 extendedDataForTokenAtIndex:v47 extendedDataIndex:0 length:&v238];
      if (addUnicodeStringToArray(v23, v51 + 2, *v51, v43 + v47))
      {
        goto LABEL_72;
      }

      v207 = "String too long!";
      v1 = v232;
      LODWORD(v4) = v229;
LABEL_303:
      v208 = [MEMORY[0x277CCACA8] stringWithUTF8String:v207];
      v233->mErrMsg = v208;
LABEL_304:
      v192 = v245;
      v9 = v226;
LABEL_325:
      v199 = v227;
LABEL_326:
      v197 = v199;
      v198 = 1;
LABEL_327:
      if (v236 != -2 && v236 && (v4 - 51) <= 0x25 && ((1 << (v4 - 51)) & 0x3D2059F6CFLL) != 0)
      {
      }

      v217 = &v8[-2 * v197];
      if (v217 != v9)
      {
        v218 = &v6[-2 * v197];
        do
        {
          v219 = yystos[*v217] - 51;
          v203 = v219 > 0x25;
          v220 = (1 << v219) & 0x3D2059F6CFLL;
          if (!v203 && v220 != 0)
          {
          }

          v218 -= 5;
          --v217;
        }

        while (v217 != v9);
      }

      if (v9 != v244)
      {
        free(v9);
      }

      if (v192 != v245)
      {
        free(v192);
      }

      return v198;
    case 0x69u:
      v179 = *&v6[-6].type;
      v180 = *&v6->type;
      v234 = v3;
      v127 = v24;
      [v179 addObject:v180];
      goto LABEL_227;
    case 0x6Bu:
      v125 = *&v6[-6].type;
      v126 = *&v6->type;
      v234 = v3;
      v127 = v24;
      [v125 copyTokenAtIndex:0 fromFormula:v126];
LABEL_227:

      v24 = v127;
      v3 = v234;
      v23 = *&v6[-6].type;
      goto LABEL_233;
    case 0x6Du:
    case 0x6Fu:
      v28 = *&v6->type;
      goto LABEL_204;
    case 0x6Eu:
      v129 = *&v6->type;
      goto LABEL_203;
    case 0x70u:
    case 0x72u:
      v28 = *&v6->type;
      goto LABEL_204;
    case 0x71u:
      v129 = *&v6->type;
LABEL_203:
      v28 = -v129;
LABEL_204:
      v234 = v3;
      v35 = v24;
      v36 = numberTokens(v2, v28);
      goto LABEL_232;
    case 0x75u:
      v106 = *&v6->type;
LABEL_186:
      v234 = v3;
      v35 = v24;
      v36 = strTokens(v2, v106);
      goto LABEL_232;
    default:
      goto LABEL_233;
  }
}

uint64_t EFLexer::yylex(EFLexer *this)
{
  if (!*(this + 100))
  {
    *(this + 100) = 1;
    if (!*(this + 101))
    {
      *(this + 101) = 1;
    }

    v2 = (this + *(*(this + 6) - 24) + 48);
    if ((v2->__rdstate_ & 5) != 0)
    {
      v2->__rdbuf_ = *(MEMORY[0x277D82668] + *(*MEMORY[0x277D82668] - 24) + 40);
      std::ios_base::clear(v2, 0);
    }

    v3 = (this + *(*(this + 27) - 24) + 216);
    if ((v3->__rdstate_ & 5) != 0)
    {
      v3->__rdbuf_ = *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 40);
      std::ios_base::clear(v3, 0);
    }

    v4 = *(this + 54);
    if (!v4 || !*(v4 + 8 * *(this + 52)))
    {
      v5 = yyFlexLexer::yyensure_buffer_stack(this);
      *(*(this + 54) + 8 * *(this + 52)) = (*(*this + 32))(this, this + 48, 0x4000, v5);
    }

    yyFlexLexer::yy_load_buffer_state(this);
  }

  v6 = (this + 392);
  v7 = this + 448;
LABEL_13:
  v8 = *(this + 49);
  *v8 = *(this + 376);
  v9 = *(this + 101);
  v10 = v8;
  do
  {
LABEL_14:
    v11 = yy_ec[*v10];
    if (yy_accept[v9])
    {
      *(this + 110) = v9;
      *(this + 56) = v10;
    }

    v12 = v9;
    v13 = yy_base[v9] + v11;
    if (v9 != yy_chk[v13])
    {
      do
      {
        v12 = yy_def[v12];
        if (v12 >= 673)
        {
          v11 = *(&yy_meta + v11);
        }

        v13 = yy_base[v12] + v11;
      }

      while (yy_chk[v13] != v12);
    }

    v9 = yy_nxt[v13];
    ++v10;
  }

  while (v9 != 672);
  v14 = *(this + 110);
  v15 = v7;
  while (2)
  {
    v16 = *v15;
    v17 = yy_accept[v14];
    *(this + 1) = v8;
    *(this + 2) = v16 - v8;
    *(this + 376) = *v16;
    *v16 = 0;
    *(this + 49) = v16;
LABEL_23:
    switch(v17)
    {
      case 0:
        *v16 = *(this + 376);
        v14 = *(this + 110);
        v15 = (this + 448);
        continue;
      case 1:
        return 258;
      case 2:
        return 259;
      case 3:
        return 262;
      case 4:
        return 263;
      case 5:
        return 297;
      case 6:
        return 296;
      case 7:
        return 299;
      case 8:
        return 298;
      case 9:
        return 300;
      case 10:
        return 301;
      case 11:
        return 304;
      case 12:
        return 265;
      case 13:
        return 264;
      case 14:
        return 266;
      case 15:
        return 295;
      case 16:
        return 294;
      case 17:
        return 292;
      case 18:
        return 291;
      case 19:
        return 289;
      case 20:
        return 290;
      case 21:
        return 293;
      case 22:
        return 269;
      case 23:
        yyFlexLexer::yy_push_state(this, 1);
        return 260;
      case 24:
        yyFlexLexer::yy_pop_state(this);
        return 261;
      case 25:
        *(this + 65) = [MEMORY[0x277CCACA8] stringWithUTF8String:*(this + 1)];
        return 280;
      case 26:
        v32 = *(this + 1);
        goto LABEL_92;
      case 27:
        v29 = *(this + 1);
        v30 = atol(v29);
        if (v30 >> 16)
        {
          v32 = v29;
LABEL_92:
          *(this + 65) = atof(v32);
          return 284;
        }

        else
        {
          *(this + 65) = v30;
          return 282;
        }

      case 28:
        return 267;
      case 29:
        return 268;
      case 30:
        *(this + 65) = [MEMORY[0x277CCACA8] stringWithUTF8String:*(this + 1)];
        *(this + 132) = 274;
        v40 = 0;
        result = isCellName(*(this + 1), this + 134, this + 544, this + 135, this + 545, *(this + 70));
        if (result)
        {
          goto LABEL_87;
        }

        v33 = [*(this + 70) resolveName:*(this + 1)];
        v41 = v33;
        if (v33 != -1)
        {
          *(this + 67) = v33;
          *(this + 132) = 275;
          v34 = [*(this + 70) resolveSheet:*(this + 1) isCurrentSheet:&v40];
          if (v34 != -1)
          {
            *(this + 68) = v34;
            result = 279;
LABEL_87:
            *(this + 132) = result;
            return result;
          }

          *(this + 68) = -1;
          return 279;
        }

        v35 = [*(this + 70) resolveTable:*(this + 1) sheetIndex:&v41];
        if (v35)
        {
          *(this + 68) = v35;
          *(this + 67) = v41;
          result = 278;
          goto LABEL_87;
        }

        v36 = [*(this + 70) resolveSheet:*(this + 1) isCurrentSheet:&v40];
        if (v36 != -1)
        {
          *(this + 68) = v36;
          *(this + 552) = v40;
          *(this + 132) = 277;
          *(this + 67) = -1;
          return 279;
        }

        return 274;
      case 31:
        goto LABEL_45;
      case 32:
        yyFlexLexer::yy_push_state(this, 2);
        v27 = MEMORY[0x277CCACA8];
        v28 = *(this + 1) + 1;
        goto LABEL_56;
      case 33:
        yyFlexLexer::yy_pop_state(this);
LABEL_45:
        v27 = MEMORY[0x277CCACA8];
        v28 = *(this + 1);
LABEL_56:
        *(this + 65) = [v27 stringWithUTF8String:v28];
        result = 274;
        goto LABEL_87;
      case 34:
        yyFlexLexer::yy_pop_state(this);
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int EFLexer::yylex()"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v31, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Formula/EFLexer.lmm"], 363, 0, "table column name error: single quote ' as an escape symbol followed by white space \\x%x", **(this + 1));
        +[OITSUAssertionHandler logBacktraceThrottled];
        return 270;
      case 35:
        yyFlexLexer::yy_push_state(this, 3);
        return 272;
      case 36:
        *(this + 65) = atoi((*(this + 1) + 1));
        return 283;
      case 37:
        *(this + 65) = [MEMORY[0x277CCACA8] stringWithUTF8String:*(this + 1)];
        v39 = 0;
        *(this + 68) = [*(this + 70) resolveSheet:*(this + 1) isCurrentSheet:&v39];
        *(this + 552) = v39;
        result = 277;
        goto LABEL_87;
      case 38:
        yyFlexLexer::yy_pop_state(this);
        return 273;
      case 39:
        *(this + 65) = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(this + 1) + 1 length:strlen(*(this + 1)) - 2 encoding:4];
        return 281;
      case 40:
        *(this + 65) = [MEMORY[0x277CCACA8] stringWithUTF8String:*(this + 1)];
        return 285;
      case 41:
        return 270;
      case 42:
        v25 = v6;
        (*(*this + 104))(this, *(this + 1), *(this + 2));
        goto LABEL_40;
      case 43:
        v18 = *(this + 1);
        *v16 = *(this + 376);
        v19 = *(this + 54);
        v20 = *(this + 52);
        v21 = *(v19 + 8 * v20);
        if (*(v21 + 64))
        {
          v22 = *(this + 48);
        }

        else
        {
          v22 = *(v21 + 32);
          *(this + 48) = v22;
          *v21 = *(this + *(*(this + 6) - 24) + 88);
          v21 = *(v19 + 8 * v20);
          *(v21 + 64) = 1;
        }

        v38 = v6;
        if (*v6 <= (*(v21 + 8) + v22))
        {
          *(this + 49) = *(this + 1) + ~v18 + v16;
          previous_state = yyFlexLexer::yy_get_previous_state(this);
          v9 = yyFlexLexer::yy_try_NUL_trans(this, previous_state);
          v8 = *(this + 1);
          if (!v9)
          {
            v14 = *(this + 110);
            v15 = (this + 448);
            v6 = v38;
            continue;
          }

          v6 = v38;
          v10 = (*v38 + 1);
          *v38 = v10;
          v7 = this + 448;
        }

        else
        {
          v37 = v8;
          next_buffer = yyFlexLexer::yy_get_next_buffer(this);
          if (next_buffer == 1)
          {
            *(this + 102) = 0;
            if ((*(*this + 88))(this))
            {
              *(this + 49) = *(this + 1);
              v17 = (*(this + 101) - 1) / 2 + 44;
              v8 = v37;
              v6 = v38;
              goto LABEL_23;
            }

            v6 = v38;
            v7 = this + 448;
            if (!*(this + 102))
            {
              (*(*this + 56))(this, this + 48);
              v6 = v38;
            }

            goto LABEL_13;
          }

          if (next_buffer)
          {
            *(this + 49) = *(*(*(this + 54) + 8 * *(this + 52)) + 8) + *(this + 48);
            v14 = yyFlexLexer::yy_get_previous_state(this);
            v8 = *(this + 1);
            v6 = v38;
            v15 = v38;
            continue;
          }

          *(this + 49) = *(this + 1) + ~v18 + v16;
          v9 = yyFlexLexer::yy_get_previous_state(this);
          v10 = *(this + 49);
          v8 = *(this + 1);
          v6 = v38;
          v7 = this + 448;
        }

        goto LABEL_14;
      case 44:
      case 45:
      case 46:
      case 47:
        return 0;
      default:
        v25 = v6;
        (*(*this + 112))(this, "fatal flex scanner internal error--no action found");
LABEL_40:
        v6 = v25;
        v7 = this + 448;
        goto LABEL_13;
    }
  }
}

uint64_t yyFlexLexer::yy_get_next_buffer(yyFlexLexer *this)
{
  v2 = *(*(this + 54) + 8 * *(this + 52));
  v3 = *(v2 + 8);
  v4 = *(this + 1);
  if (*(this + 49) > &v3[*(this + 48) + 1])
  {
    (*(*this + 112))(this, "fatal flex scanner internal error--end of buffer missed");
    v2 = *(*(this + 54) + 8 * *(this + 52));
  }

  v5 = *(this + 49);
  v6 = *(this + 1);
  if (!*(v2 + 60))
  {
    if (v5 - v6 == 1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  v7 = ~v6;
  v8 = v7 + v5;
  if (v7 + v5 >= 1)
  {
    v9 = v7 + v5;
    do
    {
      v10 = *v4++;
      *v3++ = v10;
      --v9;
    }

    while (v9);
    v2 = *(*(this + 54) + 8 * *(this + 52));
  }

  if (*(v2 + 64) == 2)
  {
    *(this + 48) = 0;
    *(v2 + 32) = 0;
LABEL_28:
    if (v8)
    {
      v20 = 0;
      v11 = 2;
      *(v2 + 64) = 2;
    }

    else
    {
      (*(*this + 56))(this, this + 48);
      v20 = *(this + 48);
      v2 = *(*(this + 54) + 8 * *(this + 52));
      v11 = 1;
    }

    goto LABEL_31;
  }

  v12 = ~v8;
  v13 = *(v2 + 24);
  v14 = v13 + ~v8;
  if (!v14)
  {
    v15 = *(this + 49);
    while (1)
    {
      v16 = *(v2 + 8);
      if (!*(v2 + 40))
      {
        break;
      }

      v17 = 2 * v13;
      *(v2 + 24) = v17;
      v18 = malloc_type_realloc(v16, v17 + 2, 0x8E6B0D0FuLL);
      *(v2 + 8) = v18;
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_20:
      v15 = &v18[v15 - v16];
      *(this + 49) = v15;
      v2 = *(*(this + 54) + 8 * *(this + 52));
      v13 = *(v2 + 24);
      v14 = v13 + v12;
      if (v13 + v12)
      {
        goto LABEL_21;
      }
    }

    *(v2 + 8) = 0;
LABEL_19:
    (*(*this + 112))(this, "fatal error - scanner input buffer overflow");
    v18 = *(v2 + 8);
    goto LABEL_20;
  }

LABEL_21:
  if (v14 >= 0x2000)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = v14;
  }

  v20 = (*(*this + 96))(this, *(v2 + 8) + v8, v19);
  *(this + 48) = v20;
  if ((v20 & 0x80000000) != 0)
  {
    (*(*this + 112))(this, "input in flex scanner failed");
    v20 = *(this + 48);
  }

  v2 = *(*(this + 54) + 8 * *(this + 52));
  *(v2 + 32) = v20;
  if (!v20)
  {
    goto LABEL_28;
  }

  v11 = 0;
LABEL_31:
  v21 = v20 + v8;
  if (v21 > *(v2 + 24))
  {
    v22 = v21 + (v20 >> 1);
    v23 = malloc_type_realloc(*(v2 + 8), v22, 0x8E6B0D0FuLL);
    v24 = *(this + 54);
    v25 = *(this + 52);
    *(*(v24 + 8 * v25) + 8) = v23;
    v2 = *(v24 + 8 * v25);
    if (!*(v2 + 8))
    {
      (*(*this + 112))(this, "out of dynamic memory in yy_get_next_buffer()");
      v2 = *(*(this + 54) + 8 * *(this + 52));
    }

    *(v2 + 24) = v22 - 2;
    v21 = *(this + 48) + v8;
  }

  *(this + 48) = v21;
  *(*(v2 + 8) + v21) = 0;
  *(*(*(*(this + 54) + 8 * *(this + 52)) + 8) + *(this + 48) + 1) = 0;
  *(this + 1) = *(*(*(this + 54) + 8 * *(this + 52)) + 8);
  return v11;
}

uint64_t yyFlexLexer::LexerInput(yyFlexLexer *this, char *a2)
{
  v2 = (this + 48);
  if ((*(this + *(*(this + 6) - 24) + 80) & 7) != 0)
  {
    return 0;
  }

  std::istream::read();
  if (*(v2 + *(*v2 - 24) + 32))
  {
    return -1;
  }

  else
  {
    return *(this + 7);
  }
}

uint64_t yyFlexLexer::yy_get_previous_state(yyFlexLexer *this)
{
  v1 = *(this + 101);
  v2 = *(this + 1);
  v3 = *(this + 49);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (yy_accept[v1])
      {
        *(this + 110) = v1;
        *(this + 56) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 673)
          {
            v4 = *(&yy_meta + v4);
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

id intTokens(EFormula *a1, unsigned int a2)
{
  v3 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  v4 = v3;
  if (HIWORD(a2))
  {
    addNumberOperand(v3, a2);
  }

  else
  {
    addIntOperand(v3, a2);
  }

  return v4;
}

id operatorTokens(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a3)
  {
    v7 = objc_alloc_init([a1 formulaClass]);
  }

  if (a4)
  {
    v8 = [a4 tokenCount];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        [a3 copyTokenAtIndex:v10 fromFormula:a4];
        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }
  }

  [v7 addToken:a2 extendedDataLength:0];
  return v7;
}

void EFLexer::~EFLexer(EFLexer *this)
{
  ELexer::~ELexer(this);

  JUMPOUT(0x25F897000);
}

void ELexer::~ELexer(ELexer *this)
{
  *this = &unk_286EC9EB8;
  v2 = *(this + 74);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 75);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 73);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  yyFlexLexer::~yyFlexLexer(this);
}

void yyFlexLexer::yy_delete_buffer(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = *(a1 + 432);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a1 + 416));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a2)
    {
      *(v3 + 8 * *(a1 + 416)) = 0;
    }

    if (*(a2 + 10))
    {
      free(a2[1]);
    }

    free(a2);
  }
}

void yyFlexLexer::~yyFlexLexer(yyFlexLexer *this)
{
  *this = &unk_286ED35B0;
  v2 = *(this + 57);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  free(*(this + 5));
  v3 = *(this + 54);
  if (v3)
  {
    v4 = *(v3 + 8 * *(this + 52));
  }

  else
  {
    v4 = 0;
  }

  (*(*this + 40))(this, v4);
  free(*(this + 54));
  std::ostream::~ostream();
  std::istream::~istream();
}

{
  yyFlexLexer::~yyFlexLexer(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlFunctionIdForName(const unsigned __int16 *a1)
{
  ItemWithFunctionName = findItemWithFunctionName(a1);
  if (ItemWithFunctionName)
  {
    return *ItemWithFunctionName;
  }

  else
  {
    return 255;
  }
}

const unsigned __int16 *findItemWithFunctionName(const unsigned __int16 *result)
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = _ChWcslen(result);
    MEMORY[0x28223BE20](v2);
    v4 = &v10[-((v3 + 19) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v4, v3 + 4);
    v5 = ChCHAR2ToWchar(v4, v1);
    if (wcslen(v5) <= 0x13)
    {
      if ((_XlSortedByName & 1) == 0)
      {
        memcpy(&XlFunctionTableByName, &XlFunctionTableById, 0x597CuLL);
        qsort(&XlFunctionTableByName, 0xF9uLL, 0x5CuLL, _XlFunctionTableItemCompareByName);
        _XlSortedByName = 1;
      }

      v6 = _ChWcslen(v1);
      MEMORY[0x28223BE20](v6);
      v8 = &v10[-((v7 + 19) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v8, v7 + 4);
      v9 = ChCHAR2ToWchar(v8, v1);
      wcscpy(v12, v9);
      return bsearch(__key, &XlFunctionTableByName, 0xF9uLL, 0x5CuLL, _XlFunctionTableItemCompareByName);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t XlArgumentCountForFunction(__int16 a1)
{
  __key[0] = a1;
  v1 = bsearch(__key, &XlFunctionTableById, 0xF9uLL, 0x5CuLL, _XlFunctionTableItemCompareById);
  if (v1)
  {
    return v1[42];
  }

  else
  {
    return -1;
  }
}

void PptAnimColorBehaviorAtom::PptAnimColorBehaviorAtom(PptAnimColorBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED70A0;
  *(v2 + 32) = &unk_286ED7148;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
}

uint64_t PptAnimColorBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimColorBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  v5 = (*(**(this + 1) + 104))(*(this + 1));
  v6 = (*(**(this + 1) + 104))(*(this + 1));
  v7 = (*(**(this + 1) + 104))(*(this + 1));
  v8 = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 12) = v5;
  *(a2 + 13) = v6;
  *(a2 + 14) = v7;
  *(a2 + 15) = v8;
  v9 = (*(**(this + 1) + 104))(*(this + 1));
  v10 = (*(**(this + 1) + 104))(*(this + 1));
  v11 = (*(**(this + 1) + 104))(*(this + 1));
  v12 = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 16) = v9;
  *(a2 + 17) = v10;
  *(a2 + 18) = v11;
  *(a2 + 19) = v12;
  v13 = (*(**(this + 1) + 104))(*(this + 1));
  v14 = (*(**(this + 1) + 104))(*(this + 1));
  v15 = (*(**(this + 1) + 104))(*(this + 1));
  v16 = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 20) = v13;
  *(a2 + 21) = v14;
  *(a2 + 22) = v15;
  *(a2 + 23) = v16;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 52)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimMotionBehaviorAtom::PptAnimMotionBehaviorAtom(PptAnimMotionBehaviorAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7388;
  *(v2 + 32) = &unk_286ED7430;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptAnimMotionBehaviorAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimMotionBehaviorAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 15) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 16) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 16) = (*(**(this + 1) + 112))(*(this + 1));
  *(a2 + 17) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 32)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshTablePropVal<float>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 48))(a2, a1);
  }

  else
  {
    return 1;
  }
}

void EshPropValParserVisitor::parseElement(EshPropValParserVisitor *this, float *a2)
{
  if (*(this + 10) != 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  v3 = (*(**(this + 1) + 96))(*(this + 1));
  *a2 = EshFixedPointUtil::toFloat(v3);
}

uint64_t EshTablePropVal<EshHandle>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 104))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshBasicTablePropVal<EshHandle>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (-252645135 * ((*(a1 + 16) - v2) >> 2) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 68 * a2;
}

uint64_t EshPropValParserVisitor::parseValuePair(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v9 = a2 + 16 * a3;
    v10 = (*(**(a1 + 8) + 104))(*(a1 + 8));
    v11 = 1;
    v12 = 4;
    LODWORD(v13) = v10 - 256;
    v14 = 2;
    if (v10 <= 0xFF)
    {
      LODWORD(v13) = v10 - 3;
      v14 = 3;
    }

    if (v10 >= 3)
    {
      v12 = v14;
    }

    else
    {
      LODWORD(v13) = v10;
    }

    if (a5)
    {
      v13 = v13;
    }

    else
    {
      v13 = v10;
    }

    if (a5)
    {
      v11 = v12;
    }

    *(v9 + 4) = v11 | (v13 << 32);
    result = (*(**(a1 + 8) + 104))(*(a1 + 8));
    v16 = 1;
    v17 = 4;
    LODWORD(v18) = result - 256;
    v19 = 2;
    if (result <= 0xFF)
    {
      LODWORD(v18) = result - 3;
      v19 = 3;
    }

    if (result >= 3)
    {
      v17 = v19;
    }

    else
    {
      LODWORD(v18) = result;
    }

    if (a6)
    {
      v18 = v18;
    }

    else
    {
      v18 = result;
    }

    if (a6)
    {
      v16 = v17;
    }

    *(v9 + 12) = v16 | (v18 << 32);
  }

  else
  {
    (*(**(a1 + 8) + 104))(*(a1 + 8));
    v20 = *(**(a1 + 8) + 104);

    return v20();
  }

  return result;
}

uint64_t EshTablePropVal<EshFormula>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 80))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshPropValParserVisitor::parseElement(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 20) != 8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  *a2 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v4 = (a2 + 1);
  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  for (i = 0; i != 3; ++i)
  {
    result = EshPropValParserVisitor::parseFormulaArgument(a1, v4, ((v5 >> i) & 0x20) == 0);
    v4 += 8;
  }

  return result;
}

uint64_t EshPropValParserVisitor::parseFormulaArgument(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (a3)
  {
    v6 = 1;
LABEL_3:
    *a2 = v6;
    *(a2 + 4) = result;
    return result;
  }

  if ((result & 0xFF80) == 0x400)
  {
    *a2 = 3;
    v7 = result - 1024;
  }

  else
  {
    v7 = result - 327;
    if ((result - 327) > 9)
    {
      v6 = 4;
      goto LABEL_3;
    }

    *a2 = 2;
  }

  *(a2 + 4) = v7;
  return result;
}

void *EshGeometryProperties::generateImpliedPath(int a1, int a2, uint64_t a3)
{
  v4 = a1 - 2;
  v5 = (a3 + 8);
  if (a2 == 3)
  {
    std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::resize(v5, 4u);
    *EshBasicTablePropVal<EshComputedValue>::operator[](a3, 0) = 0x200000001;
    v9 = EshBasicTablePropVal<EshComputedValue>::operator[](a3, 1u);
    v10 = (v4 / 6) | 0x100000000;
LABEL_9:
    *v9 = v10;
    *EshBasicTablePropVal<EshComputedValue>::operator[](a3, 2u) = 0x300000001;
    v8 = 3;
    goto LABEL_10;
  }

  if (a2 == 2)
  {
    std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::resize(v5, 3u);
    *EshBasicTablePropVal<EshComputedValue>::operator[](a3, 0) = 0x200000001;
    v6 = EshBasicTablePropVal<EshComputedValue>::operator[](a3, 1u);
    v7 = (v4 / 6) | 0x100000000;
    goto LABEL_6;
  }

  if (a2)
  {
    std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::resize(v5, 4u);
    *EshBasicTablePropVal<EshComputedValue>::operator[](a3, 0) = 0x200000001;
    v9 = EshBasicTablePropVal<EshComputedValue>::operator[](a3, 1u);
    v10 = (v4 / 2);
    goto LABEL_9;
  }

  std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::resize(v5, 3u);
  *EshBasicTablePropVal<EshComputedValue>::operator[](a3, 0) = 0x200000001;
  v6 = EshBasicTablePropVal<EshComputedValue>::operator[](a3, 1u);
  v7 = (v4 / 2);
LABEL_6:
  *v6 = v7;
  v8 = 2;
LABEL_10:
  result = EshBasicTablePropVal<EshComputedValue>::operator[](a3, v8);
  *result = 0x400000001;
  return result;
}

void EshTablePropVal<float>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6580;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshTablePropVal<EshHandle>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC6620;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

WrdCharacterProperties *WrdCharacterProperties::setCharacterScale(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x100000000000uLL;
  this->var60 = a2;
  return this;
}

uint64_t WrdCharacterProperties::setStrikethrough(uint64_t result, int a2)
{
  *(result + 16) |= 0x80uLL;
  *(result + 180) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setOutline(uint64_t result, int a2)
{
  *(result + 16) |= 0x10uLL;
  *(result + 176) = a2;
  return result;
}

CsString *WrdBinaryReader::read(WrdBinaryReader *this, WrdPictureFilename *a2)
{
  v4 = (*(**(*(this + 4) + 120) + 64))(*(*(this + 4) + 120));
  *(a2 + 6) = 0;
  bzero(*(a2 + 2), 2 * *(a2 + 7));
  v5 = v4 + 1;
  result = CsString::reserve((a2 + 8), v4 + 1);
  if (v4)
  {
    v7 = *(*(this + 4) + 120);
    do
    {
      v8 = (*(*v7 + 64))(v7);
      result = CsString::append((a2 + 8), v8);
      --v4;
    }

    while (v4);
  }

  *(this + 153) += v5;
  *(this + 154) -= v5;
  return result;
}

void XlChartLinePlot::XlChartLinePlot(XlChartLinePlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartLine::XlChartLine((v2 + 144));
  *this = &unk_286ECB480;
  *(this + 18) = &unk_286ECB4A8;
}

void XlChartLine::XlChartLine(XlChartLine *this)
{
  XlRecord::XlRecord(this, 4120, 2, 0);
  *v1 = &unk_286ECAA00;
  *(v1 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartLine *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartLinePlot::~XlChartLinePlot(XlChartLinePlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

WrdParagraphProperties *WrdParagraphProperties::setNoLineNumbering(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x10000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFFBF | ((a2 & 1) << 6);
  return this;
}

uint64_t TSUFlushableObjectInfo::compareFlushingOrder(TSUFlushableObjectInfo *this, const TSUFlushableObjectInfo *a2)
{
  if (this == a2)
  {
    return 0;
  }

  var3 = this->var3;
  v3 = a2->var3;
  if (var3 > v3)
  {
    return -1;
  }

  if (var3 < v3)
  {
    return 1;
  }

  var1 = this->var1;
  v6 = 1.0;
  if (var1 == 1)
  {
    v7 = 1.5;
  }

  else
  {
    v7 = 1.0;
  }

  if (!var1)
  {
    v7 = 2.0;
  }

  if (!this->var2)
  {
    v7 = v7 * 1.5;
  }

  v8 = a2->var1;
  if (v8 == 1)
  {
    v6 = 1.5;
  }

  if (!v8)
  {
    v6 = 2.0;
  }

  if (!a2->var2)
  {
    v6 = v6 * 1.5;
  }

  v9 = v7 * this->var4[1];
  v10 = v6 * a2->var4[1];
  if (v9 < v10)
  {
    return -1;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v11 = v7 * this->var4[0];
  v12 = v6 * a2->var4[0];
  if (v11 < v12)
  {
    return -1;
  }

  return v11 > v12;
}

uint64_t setBoolValueForEDCell(uint64_t result, char a2)
{
  if (result)
  {
    if (*result >> 29 == 1)
    {
      if ((*result & 0x10000000) != 0)
      {
        *(result + 12) = a2;
      }

      else
      {
        *(result + 8) = a2;
      }
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void setBoolValueForEDCell(EDCellHeader *, BOOL)"}];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:193 isFatal:0 description:"Invalid Cell Type!"];

      return +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setBiDi(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x100000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFEFFFF | ((a2 & 1) << 16);
  return this;
}

uint64_t PptTextDefaultStyle10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextDefaultStyle10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  PptParserVisitor::parseCharProperty10(this, (a2 + 48));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextDefaultStyle10Atom::~PptTextDefaultStyle10Atom(PptTextDefaultStyle10Atom *this)
{
  *this = &unk_286EDF248;
  *(this + 4) = &unk_286EDF2F0;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDF248;
  *(this + 4) = &unk_286EDF2F0;
}

WrdParagraphProperties *WrdParagraphProperties::setLocked(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x80000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFFEFF | ((a2 & 1) << 8);
  return this;
}

void PptFontEmbedDataAtom::PptFontEmbedDataAtom(PptFontEmbedDataAtom *this, const EshHeader *a2)
{
  PptBinaryDataAtom::PptBinaryDataAtom(this, a2);
  *v2 = &unk_286EDA140;
  v2[4] = &unk_286EDA1F8;
}

uint64_t PptFontEmbedDataAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(uint64_t a1, EshRecord *a2)
{
  v3 = a1;
  (*(**(a1 + 8) + 16))(*(a1 + 8), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(v3 + 24));
  LODWORD(v3) = (*(**(v3 + 8) + 40))(*(v3 + 8));
  Offset = EshRecord::getOffset(a2);
  (*(*a2 + 160))(a2, (v3 - Offset - 8));
  return 1;
}

void PptFontEmbedDataAtom::~PptFontEmbedDataAtom(PptFontEmbedDataAtom *this)
{
  PptBinaryDataAtom::~PptBinaryDataAtom(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdCharacterProperties::setRightToLeft(uint64_t result, int a2)
{
  *(result + 16) |= 0x4000000000uLL;
  *(result + 228) = a2;
  return result;
}

uint64_t WrdParagraphProperties::resetStylableProperties(WrdParagraphProperties *this)
{
  v2 = *(this + 2);
  v3 = *(this + 12);
  v4 = (this + 294);
  v5 = *(this + 294);
  v6 = *(this + 61);
  v7 = *(this + 146);
  result = (*(*this + 16))(this);
  if ((v2 & 2) != 0)
  {
    *(this + 2) |= 2uLL;
    *v4 = *v4 & 0xFFFFFFFE | v5 & 1;
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 0x1000000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_3;
  }

  *(this + 2) |= 4uLL;
  *v4 = *v4 & 0xFFFFFFFD | (2 * ((v5 >> 1) & 1));
  if ((v2 & 0x1000000000000) == 0)
  {
LABEL_4:
    if ((v2 & 0x2000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(this + 2) |= 0x1000000000000uLL;
  *(this + 61) = v6;
  if ((v2 & 0x2000000000000) == 0)
  {
LABEL_5:
    if ((v2 & 0x4000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(this + 2) |= 0x2000000000000uLL;
  *v4 = *v4 & 0xFFEFFFFF | (((v5 >> 20) & 1) << 20);
  if ((v2 & 0x4000000000000) == 0)
  {
LABEL_6:
    if ((v2 & 0x8000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(this + 2) |= 0x4000000000000uLL;
  *v4 = *v4 & 0xFFDFFFFF | (((v5 >> 21) & 1) << 21);
  if ((v2 & 0x8000000000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(this + 2) |= 0x8000000000000uLL;
  *v4 = *v4 & 0xFFBFFFFF | (((v5 >> 22) & 1) << 22);
  if ((v3 & 0x200) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(this + 12) |= 0x200u;
  *v4 = *v4 & 0xFBFFFFFF | (((v5 >> 26) & 1) << 26);
  if ((v3 & 0x400) == 0)
  {
    return result;
  }

LABEL_9:
  *(this + 12) |= 0x400u;
  *(this + 146) = v7;
  return result;
}

void WrdChpParser::applyCMajoritySPRM(WrdChpParser *this, WrdCharacterProperties *a2, WrdCharacterProperties *a3, const unsigned __int8 *a4, const unsigned __int8 *a5)
{
  v5 = (*(a2->var0 + 3))(a2);
  (*(*v5 + 16))(v5);
  operator new();
}

void sub_25D36FC78()
{
  __cxa_end_catch();
  MEMORY[0x25F897000](v1, 0x1000C4099076E91);
  if (!v0)
  {
    JUMPOUT(0x25D36FC44);
  }

  JUMPOUT(0x25D36FC1CLL);
}

WrdCharacterProperties *WrdCharacterProperties::clearBold(WrdCharacterProperties *this)
{
  *&this->var2 &= ~2uLL;
  this->var23 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearItalic(WrdCharacterProperties *this)
{
  *&this->var2 &= ~4uLL;
  this->var24 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearStrikethrough(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x80uLL;
  this->var26 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearOutline(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x10uLL;
  this->var25 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearShadow(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x100uLL;
  this->var30 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearSmallCaps(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x10000000uLL;
  this->var27 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearCaps(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x20000000uLL;
  this->var28 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearFontSize(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x1000uLL;
  this->var62 = 20;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearUnderline(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x100000uLL;
  this->var16 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearColor97(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x20000uLL;
  this->var13 = 0;
  return this;
}

uint64_t WrdPropertyParser::parseSPRM(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = result;
  *(a2 + 10) = result & 0x1FF;
  *(a2 + 12) = (result & 0x200) != 0;
  *a2 = (result >> 10) & 7;
  *(a2 + 4) = result >> 13;
  *(a2 + 13) = 0;
  return result;
}

WrdTableProperties *WrdTableProperties::setDefaultTableTopCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x80u;
  *(this + 181) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableTopCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000000uLL;
  *(result + 180) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setDefaultTableLeftCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x100u;
  *(this + 182) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableBottomCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x200u;
  *(this + 183) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setDefaultTableRightCellSpacing(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 0x400u;
  *(this + 184) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableRightCellSpacingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x40000000uLL;
  *(result + 192) = a2;
  return result;
}

uint64_t WrdTableProperties::setVerticalPosition(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000000000uLL;
  *(result + 228) = a2;
  return result;
}

uint64_t WrdTableProperties::setHorizontalPosition(uint64_t result, int a2)
{
  *(result + 16) |= 0x10000000000uLL;
  *(result + 232) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setAbsoluteVerticalPosition(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x400000000000uLL;
  *(this + 77) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setLeftDistanceFromText(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x800000000000uLL;
  *(this + 78) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setRightDistanceFromText(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x2000000000000uLL;
  *(this + 80) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setPageSetupLinePitch(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x400000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFBFFFF | ((a2 & 1) << 18);
  return this;
}

void PptAnimChartBuildAtom::PptAnimChartBuildAtom(PptAnimChartBuildAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED6DB8;
  *(v2 + 32) = &unk_286ED6E60;
}

uint64_t PptAnimChartBuildAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimChartBuildAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 52) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t SsrwOOStream::readCsData(SsrwOOStream *this, CsData *a2, unsigned int a3)
{
  v8 = a3;
  result = CsData::setLength(a2, a3);
  if (a3)
  {
    result = (*(this->var0 + 7))(this, a2->var1, &v8);
    if (v8 != a2->var0)
    {
      CsData::setLength(a2, 0);
      exception = __cxa_allocate_exception(4uLL);
      *exception = 19;
    }
  }

  return result;
}

uint64_t CsData::setLength(CsData *this, unsigned int a2)
{
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x25F896FE0](var1, 0x1000C8077774924);
  }

  this->var1 = 0;
  this->var0 = a2;
  if (a2)
  {
    operator new[](a2);
  }

  result = 0;
  this->var1 = 0;
  return result;
}

uint64_t *EshOpt::takeDataProperty(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = a2;
  v11 = &v10;
  v8 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10)[5];
  if (v8)
  {
    CsData::~CsData(v8);
    MEMORY[0x25F897000]();
  }

LABEL_9:
  v10 = a2;
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10);
  result[5] = a3;
  result[6] = 0;
  return result;
}

CsData **ChAutoPtr<CsData>::~ChAutoPtr(CsData **a1)
{
  v2 = *a1;
  if (v2)
  {
    CsData::~CsData(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

void CsData::~CsData(CsData *this)
{
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x25F896FE0](var1, 0x1000C8077774924);
  }

  this->var1 = 0;
}

void XlChartPicF::XlChartPicF(XlChartPicF *this)
{
  XlRecord::XlRecord(this, 4156, 14, 0);
  *v1 = &unk_286ECAB00;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xFFFFFFFF00000000;
  *(v1 + 32) = 1;
  *(v1 + 36) = 0;
}

void XlChartDateAxis::XlChartDateAxis(XlChartDateAxis *this)
{
  XlChartCategoryAxis::XlChartCategoryAxis(this);
  *v1 = &unk_286ECB160;
  v1[22] = 0;
}

uint64_t XlChartDateAxis::takeDateSpec(XlChartDateAxis *this, XlChartAxCext *a2)
{
  result = *(this + 22);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 22) = a2;
  return result;
}

void XlChartDateAxis::~XlChartDateAxis(XlChartPlotAxis *this)
{
  XlChartDateAxis::~XlChartDateAxis(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECB160;
  var3 = this[1].var3;
  if (var3)
  {
    (*(var3->var0 + 1))(var3);
  }

  this[1].var3 = 0;

  XlChartCategoryAxis::~XlChartCategoryAxis(this);
}

void XlChartGelFrame::XlChartGelFrame(XlChartGelFrame *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA900;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
}

uint64_t XlChartParserVisitor::visit(unsigned __int8 **this, XlChartGelFrame *a2)
{
  XlParserVisitor::beginRead(this);
  v10 = *(a2 + 2);
  v4 = v10;
  this[3] = 0;
  if (v4)
  {
    if (*(a2 + 28) == 1)
    {
      v5 = 0;
      do
      {
        do
        {
          (*(*this[2] + 16))(this[2], v4, 1);
          v5 += v4;
          v6 = (*(*this[2] + 72))(this[2]);
          v4 = (*(*this[2] + 80))(this[2]);
        }

        while (v6 == 4198);
      }

      while (v6 == 60);
      (*(*this[2] + 16))(this[2], 4294967292, 1);
      v10 = v5;
      DataAndContinues = (*(*this[2] + 40))(this[2]);
    }

    else
    {
      DataAndContinues = XlParserVisitor::getDataAndContinues(this, &v10, 4198);
      v5 = v10;
    }

    *(a2 + 2) = DataAndContinues - *(this + 18);
    v8 = this[3];
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  XlChartGelFrame::setBinaryData(a2, v8, v5);
  return XlParserVisitor::endRead(this, a2);
}

void XlChartGelFrame::~XlChartGelFrame(XlChartGelFrame *this)
{
  *this = &unk_286ECA900;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECA900;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

_xmlAttr *CXFindAttribute(_xmlNode *a1, xmlChar *str2)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->properties; i; i = i->next)
  {
    name = i->name;
    if (name && xmlStrEqual(name, str2))
    {
      break;
    }
  }

  return i;
}

_xmlNode *CXFindRequiredChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v4 = pCXFindChild(a1, a2, a3);
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Could not find node: %s", a3}];
  }

  return v4;
}

void sub_25D371614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

_xmlNode *CXFirstChildNamed(_xmlNode *a1, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name))
    {
      break;
    }
  }

  return i;
}

id link3DTokens(EFormula *a1, __int16 a2, const EFRefTok *a3)
{
  v5 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  v6 = v5;
  if (a3->type == 37)
  {
    addArea3DOperandWithSheet(v5, 1, a2, *a3->data, *&a3->data[2], *&a3->data[4], *&a3->data[6]);
  }

  else if (a3->type == 36)
  {
    addRef3DOperandWithSheet(v5, 1, a2, *a3->data, *&a3->data[2], 0);
  }

  return v6;
}

_xmlNode *CXNextSiblingNamed(_xmlNode *a1, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->next; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name))
    {
      break;
    }
  }

  return i;
}

void PptTextDefaultStyle9Atom::PptTextDefaultStyle9Atom(PptTextDefaultStyle9Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v3 + 40) = -1;
  *(v3 + 44) = 0;
  *v3 = &unk_286EDF058;
  *(v3 + 32) = &unk_286EDF100;
  PptCharProperty9::PptCharProperty9((v3 + 46));
  PptParaProperty9::PptParaProperty9(this + 4);
}

uint64_t PptTextDefaultStyle9Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptParaProperty9 *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*&a2[1].var1 + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  PptParserVisitor::parseCharProperty9(this, &a2[3].var3.var1);
  PptParserVisitor::parseParaProperty9(this, a2 + 4);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextDefaultStyle9Atom::~PptTextDefaultStyle9Atom(PptTextDefaultStyle9Atom *this)
{
  *this = &unk_286EDF058;
  *(this + 4) = &unk_286EDF100;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDF058;
  *(this + 4) = &unk_286EDF100;
}

uint64_t XlFormatParser::readBracketToken(XlFormatParser *this, XlFmtPtg *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  v5 = v4 + 1;
  Character = OcText::getCharacter(*this, v4 + 1);
  v7 = Character;
  if (Character > 0x7F)
  {
    if (__maskrune(Character, 0x100uLL))
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v7 <= 60)
    {
      if (v7 == 36)
      {
        operator new();
      }

      if (v7 != 60)
      {
        goto LABEL_35;
      }

      v5 = v4 + 2;
      v23 = OcText::getCharacter(*this, v4 + 2);
      if (v23 <= 0xFF)
      {
        v24 = (*(MEMORY[0x277D85DE0] + 4 * v23 + 60) >> 10) & 1;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      v25 = 13;
      if (v23 != 45 && (v24 & 1) == 0)
      {
        if (v23 == 62)
        {
          v5 = v4 + 3;
          v25 = 9;
        }

        else
        {
          if (v23 != 61)
          {
            goto LABEL_69;
          }

          v5 = v4 + 3;
          v25 = 10;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case '=':
          v5 = v4 + 2;
          v25 = 12;
          break;
        case '>':
          v5 = v4 + 2;
          v26 = OcText::getCharacter(*this, v4 + 2);
          if (v26 <= 0xFF)
          {
            v27 = (*(MEMORY[0x277D85DE0] + 4 * v26 + 60) >> 10) & 1;
          }

          else
          {
            LOBYTE(v27) = 0;
          }

          v25 = 14;
          if (v26 != 45 && (v27 & 1) == 0)
          {
            if (v26 != 61)
            {
              goto LABEL_69;
            }

            v5 = v4 + 3;
            v25 = 11;
          }

          break;
        case ']':
LABEL_36:
          LOWORD(v5) = v5 + 1;
          v10 = 59;
          goto LABEL_98;
        default:
          do
          {
LABEL_35:
            ++v5;
          }

          while (OcText::getCharacter(*this, v5) != 93);
          goto LABEL_36;
      }
    }

    *a2 = v25;
    v28 = OcText::getCharacter(*this, v5);
    if (v28 == 93)
    {
      v29 = 0;
    }

    else
    {
      v30 = 0;
      v31 = &v36;
      do
      {
        if (v30 == -63)
        {
          goto LABEL_69;
        }

        *v31++ = v28;
        v28 = OcText::getCharacter(*this, ++v5);
        --v30;
      }

      while (v28 != 93);
      v29 = -v30;
    }

    *(&v36 + v29) = 0;
    LOWORD(v5) = v5 + 1;
    goto LABEL_68;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * Character + 60) & 0x100) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  switch(v7)
  {
    case 's':
      v13 = 0;
      *(this + 28) = 1;
      v5 = v4 + 2;
      do
      {
        ++v13;
        v14 = OcText::getCharacter(*this, v5++);
      }

      while (v14 == 115);
      *(a2 + 2) = v13;
      v10 = 30;
      goto LABEL_98;
    case 'm':
      v11 = 0;
      *(this + 28) = 1;
      v5 = v4 + 2;
      do
      {
        ++v11;
        v12 = OcText::getCharacter(*this, v5++);
      }

      while (v12 == 109);
      *(a2 + 2) = v11;
      v10 = 28;
      goto LABEL_98;
    case 'h':
      v8 = 0;
      *(this + 28) = 1;
      v5 = v4 + 2;
      do
      {
        ++v8;
        v9 = OcText::getCharacter(*this, v5++);
      }

      while (v9 == 104);
      *(a2 + 2) = v8;
      v10 = 29;
      goto LABEL_98;
  }

  v15 = OcText::getCharacter(*this, v4 + 1);
  v16 = OcText::getCharacter(*this, v4 + 2);
  v17 = OcText::getCharacter(*this, v4 + 3);
  v18 = v15 & 0xFFFFFFDF;
  v19 = v16 & 0xFFDF;
  v20 = (v15 & 0xFFFFFFDF) == 0x42 && v19 == 76;
  v21 = v20;
  v22 = v17 & 0xFFFFFFDF;
  if (v20 && v22 == 65)
  {
    v10 = 0;
    LOWORD(v5) = v4 + 7;
LABEL_98:
    *a2 = v10;
    return (v5 - *(this + 6));
  }

  if (v22 != 85)
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    LOWORD(v5) = v4 + 6;
    v10 = 4;
    goto LABEL_98;
  }

  if ((v15 | 0x20) != 0x63)
  {
    if (v18 == 71 && v19 == 82 && v22 == 69)
    {
      LOWORD(v5) = v4 + 7;
      v10 = 3;
      goto LABEL_98;
    }

    if (v18 == 77 && v19 == 65 && v22 == 71)
    {
      LOWORD(v5) = v4 + 9;
      v10 = 6;
      goto LABEL_98;
    }

    if (v18 == 82 && v19 == 69 && v22 == 68)
    {
      LOWORD(v5) = v4 + 5;
      v10 = 2;
      goto LABEL_98;
    }

    if (v18 == 87 && v19 == 72 && v22 == 73)
    {
      LOWORD(v5) = v4 + 7;
      v10 = 1;
      goto LABEL_98;
    }

    if (v18 == 89 && v19 == 69 && v22 == 76)
    {
      LOWORD(v5) = v4 + 8;
      v10 = 5;
      goto LABEL_98;
    }

LABEL_100:
    if (v7 != 93)
    {
      do
      {
        ++v5;
      }

      while (OcText::getCharacter(*this, v5) != 93);
    }

    goto LABEL_36;
  }

  if (v19 == 89 && v22 == 65)
  {
    LOWORD(v5) = v4 + 6;
    v10 = 7;
    goto LABEL_98;
  }

  if (v15 != 67 || v16 != 111 || v17 != 108)
  {
    goto LABEL_100;
  }

  v36 = OcText::getCharacter(*this, v4 + 6);
  v37 = 0;
  LOWORD(v5) = v4 + 7;
  v33 = OcText::getCharacter(*this, v4 + 7);
  v34 = 8;
  if (v33 == 93)
  {
LABEL_78:
    LOWORD(v5) = v4 + v34;
    *a2 = 8;
    goto LABEL_68;
  }

  if (v33 <= 0xFF && (*(MEMORY[0x277D85DE0] + 4 * v33 + 60) & 0x400) != 0)
  {
    v37 = v33;
    v34 = 9;
    goto LABEL_78;
  }

LABEL_68:
  *(a2 + 2) = atof(&v36);
  if (*a2 == 255)
  {
LABEL_69:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return (v5 - *(this + 6));
}

void PptExWaveAudioEmbeddedAtom::PptExWaveAudioEmbeddedAtom(PptExWaveAudioEmbeddedAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDA048;
  *(v2 + 32) = &unk_286EDA0F0;
  *(v2 + 48) = 0xE8D8000000000000;
}

uint64_t PptExWaveAudioEmbeddedAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExWaveAudioEmbeddedAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

char *XlCf::takeSecondFmla(XlCf *this, char *a2, signed __int16 a3)
{
  result = this->var8;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  this->var8 = a2;
  this->var5 = a3;
  return result;
}

XlCell *XlCell::setBoolean(XlCell *this, BOOL a2)
{
  result = XlCell::resetContent(this);
  this->var4 = 2;
  this->var9 = a2;
  return result;
}

void XlAutoFilterInfo::XlAutoFilterInfo(XlAutoFilterInfo *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD800;
  *(v2 + 16) = 0;
}

double ODIHRangeVector::minDistanceTo(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = (a2[1] - *a2) >> 3;
  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (!v2)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = (*a2 + 4);
  v6 = (*a1 + 4);
  result = 0.0;
  do
  {
    v8 = *(v6 - 1) + (*v6 * 0.5);
    if (((*(v5 - 1) - (*v5 * 0.5)) - v8) < *&result || v4 == 0)
    {
      *&result = (*(v5 - 1) - (*v5 * 0.5)) - v8;
    }

    ++v4;
    v5 += 2;
    v6 += 2;
  }

  while (v2 != v4);
  return result;
}

uint64_t *ODIHRangeVector::operator+=(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a1;
  v6 = (v4 - *a1) >> 3;
  v7 = *a2;
  v8 = a2[1];
  v9 = (v8 - *a2) >> 3;
  if (v6 >= v9)
  {
    v10 = (v8 - *a2) >> 3;
  }

  else
  {
    v10 = (v4 - *a1) >> 3;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v5 + v11) - (*(v5 + v11 + 4) * 0.5);
      v14 = *(v7 + v11) + (*(v7 + v11 + 4) * 0.5);
      if (v14 < v13)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ODIHRangeVector &ODIHRangeVector::operator+=(const ODIHRangeVector &)"];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Diagrams/Importer/ODIHierarchy.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:88 isFatal:0 description:"Incorrect range structure"];

        +[OITSUAssertionHandler logBacktraceThrottled];
        v5 = *a1;
        v4 = a1[1];
        v7 = *a2;
        v8 = a2[1];
      }

      v17 = (v5 + v11);
      *v17 = (v13 + v14) * 0.5;
      v17[1] = v14 - v13;
      ++v12;
      v6 = (v4 - v5) >> 3;
      v9 = (v8 - v7) >> 3;
      if (v6 >= v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = v6;
      }

      v11 += 8;
    }

    while (v12 < v18);
  }

  if (v6 < v9)
  {
    v19 = v6;
    v20 = 8 * v6;
    do
    {
      if (v4 >= a1[2])
      {
        v4 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__emplace_back_slow_path<ODIHRange const&>(a1, (v7 + v20));
      }

      else
      {
        *v4++ = *(v7 + v20);
      }

      a1[1] = v4;
      ++v19;
      v7 = *a2;
      v20 += 8;
    }

    while (v19 < ((a2[1] - *a2) >> 3));
  }

  return a1;
}

float ODIHRangeVector::boundingRange(float **this)
{
  v1 = **this;
  v2 = (*this)[1] * 0.5;
  v3 = v1 - v2;
  v4 = v1 + v2;
  v5 = this[1] - *this;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = (v5 >> 3);
    v7 = *this + 1;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7 * 0.5;
      if (v3 >= (v8 - v9))
      {
        v3 = v8 - v9;
      }

      v10 = v8 + v9;
      if (v4 < v10)
      {
        v4 = v10;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return (v4 + v3) * 0.5;
}

uint64_t WrdTableCellDescriptor::setTopPadding(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x1000000u;
  *(this + 116) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setTopPaddingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x8000u;
  *(result + 84) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setLeftPadding(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x800000u;
  *(this + 114) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setLeftPaddingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x4000u;
  *(result + 80) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setRightPadding(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x4000000u;
  *(this + 120) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setRightPaddingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x20000u;
  *(result + 92) = a2;
  return result;
}

uint64_t WrdTableCellDescriptor::setBottomPadding(uint64_t this, __int16 a2)
{
  *(this + 8) |= 0x2000000u;
  *(this + 118) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setBottomPaddingUnit(uint64_t result, int a2)
{
  *(result + 8) |= 0x10000u;
  *(result + 88) = a2;
  return result;
}

void XlExternName::XlExternName(XlExternName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE400;
  *(v2 + 22) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlExternName *a2)
{
  v4 = *(a2 + 2) + (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = v5 & 1;
  v6 = *&vshl_u16((*&vdup_n_s16(v5) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 17) = vuzp1_s8(v6, v6).u32[0];
  *(a2 + 11) = (v5 >> 5) & 0x3FF;
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
  v7 = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 28) = v7;
  if (v7)
  {
    operator new();
  }

  ContentType = XlExternName::getContentType(a2);
  if (ContentType == 1)
  {
    if ((*(a2 + 19) & 1) == 0 && v4 - (*(**(this + 2) + 40))(*(this + 2)) >= 3)
    {
      *(a2 + 28) = (*(**(this + 2) + 64))(*(this + 2)) + 1;
      v10 = (*(**(this + 2) + 80))(*(this + 2));
      *(a2 + 29) = v10 + 1;
      if (*(a2 + 28) * (v10 + 1))
      {
        operator new();
      }
    }
  }

  else if (!ContentType)
  {
    v9 = (*(**(this + 2) + 72))(*(this + 2));
    if (v9)
    {
      operator new[](v9);
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlExternName::getContentType(XlExternName *this)
{
  if ((*(this + 17) & 1) == 0 && (*(this + 18) & 1) == 0 && (*(this + 19) & 1) == 0 && (*(this + 20) & 1) == 0 && !*(this + 11))
  {
    return 0;
  }

  if (*(this + 16))
  {
    return 3;
  }

  if (*(this + 20) != 1)
  {
    return 1;
  }

  if (*(this + 19) == 1)
  {
    return 3;
  }

  return 2;
}

uint64_t XlExternName::setNameDefinition(XlExternName *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 6);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 6) = a2;
  *(this + 20) = a3;
  return result;
}

void *XlLink::appendExternalName(XlLink *this, XlExternName *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 8);
  if (v3 >= *(this + 9))
  {
    result = std::vector<XlExternName *,ChAllocator<XlExternName *>>::__emplace_back_slow_path<XlExternName * const&>(this + 7, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 8) = result;
  return result;
}

uint64_t XlLink::getExternalName(XlLink *this, unsigned int a2)
{
  v2 = *(this + 7);
  if (((*(this + 8) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

void XlChartLegendXn::XlChartLegendXn(XlChartLegendXn *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA9C0;
  *(v2 + 16) = 0;
}

void *XlChartDataSeries::takeCustomLegend(void *this, XlChartCustomLegend *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[23];
    if (v3 >= v2[24])
    {
      this = std::vector<XlChartCustomLegend *,ChAllocator<XlChartCustomLegend *>>::__emplace_back_slow_path<XlChartCustomLegend * const&>(v2 + 22, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[23] = this;
  }

  return this;
}

void XlChartPlot::takeDefaultText(void *a1, uint64_t a2, int a3)
{
  v5 = a1[15];
  v6 = a1[16];
  if (v5 >= v6)
  {
    v8 = a1[14];
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 4;
    v11 = (v6 - v8) >> 4;
    if (2 * v11 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 2 * v11;
    }

    if (v11 >= 0x7FFFFFFF)
    {
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<XlChartPlot::DefText>>((a1 + 14), v13);
    }

    v14 = v9 & 0xFFFFFFFF0;
    *v14 = a2;
    *(v14 + 8) = a3;
    v7 = (v9 & 0xFFFFFFFF0) + 16;
    v15 = a1[14];
    v16 = a1[15];
    v17 = (v9 & 0xFFFFFFFF0) + v15 - v16;
    if (v15 != v16)
    {
      v18 = ((v9 & 0xFFFFFFFF0) + v15 - v16);
      do
      {
        v19 = *v15;
        v15 += 16;
        *v18++ = v19;
      }

      while (v15 != v16);
      v15 = a1[14];
    }

    a1[14] = v17;
    a1[15] = v7;
    a1[16] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 8) = a3;
    v7 = v5 + 16;
  }

  a1[15] = v7;
}

void XlChartCustomLegend::~XlChartCustomLegend(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void XlExternName::~XlExternName(XlExternName *this)
{
  XlExternName::~XlExternName(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE400;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  *(this + 20) = 0;
  XlExternName::clearOperands(this);
  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }
}

void *XlExternName::clearOperands(void *this)
{
  v1 = this;
  v2 = this[8];
  v3 = this[9];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        XlOper::~XlOper(this);
        this = MEMORY[0x25F897000]();
        v2 = v1[8];
        v3 = v1[9];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[9] = v2;
  return this;
}

void XlChartTrendLine::XlChartTrendLine(XlChartTrendLine *this)
{
  XlChartDataSeries::XlChartDataSeries(this);
  XlChartSerAuxTrend::XlChartSerAuxTrend((v2 + 200));
  *this = &unk_286ECB820;
  *(this + 25) = &unk_286ECB858;
}

void XlChartSerAuxTrend::XlChartSerAuxTrend(XlChartSerAuxTrend *this)
{
  XlRecord::XlRecord(this, 4171, 28, 0);
  *v1 = &unk_286ECAD88;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
  *(v1 + 39) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartSerAuxTrend *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 10) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 44) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 2) = (*(**(this + 2) + 120))(*(this + 2));
  *(a2 + 45) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 46) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 3) = (*(**(this + 2) + 120))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 120))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartTrendLine::~XlChartTrendLine(XlChartTrendLine *this)
{
  TSURectWithOriginAndSize(this + 200);
  XlChartDataSeries::~XlChartDataSeries(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 200);

  XlChartDataSeries::~XlChartDataSeries(this);
}

WrdParagraphProperties *WrdParagraphProperties::setInnerTableCell(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x2000000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFEFFFFF | ((a2 & 1) << 20);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setInnerTableTrailerParagraph(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x4000000000000uLL;
  *(this + 294) = *(this + 294) & 0xFFDFFFFF | ((a2 & 1) << 21);
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearFontIndexForASCIIText(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x2000uLL;
  this->var43 = 0;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::clearFontIndexForOtherText(WrdCharacterProperties *this)
{
  *&this->var2 &= ~0x8000uLL;
  this->var45 = 0;
  return this;
}

uint64_t WrdCharacterProperties::resolveToAbsolute(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = 129;
  }

  else
  {
    v2 = 1;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  if (a2 != 129)
  {
    v2 = a2;
  }

  if (a2 == 128)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

void WrdCharacterProperties::clearListNumberRevisionAttributes(WrdCharacterProperties *this)
{
  *(&this->var2 + 2) &= ~0x80000000;
  *(this + 85) &= ~0x1000000u;
  *(&this->var2 + 6) &= ~2u;
  (*(this->var10->var0 + 3))(this->var10);
  *(&this->var2 + 6) &= ~1u;
  this->var70 = 0;
  this->var5.var2 = 0;
  var1 = this->var5.var1;
  v3 = 2 * this->var5.var3;

  bzero(var1, v3);
}

WrdTableProperties *WrdTableProperties::setAbsoluteHorizontalPosition(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x200000000000uLL;
  *(this + 76) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setRevisionMark(WrdParagraphProperties *this, char a2)
{
  *(this + 12) |= 0x200u;
  *(this + 294) = *(this + 294) & 0xFBFFFFFF | ((a2 & 1) << 26);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setAuthorIDForRevision(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 12) |= 0x400u;
  *(this + 146) = a2;
  return this;
}

void OAVReadIntPair(NSString *a1, int *a2, int *a3)
{
  v7 = [(NSString *)a1 componentsSeparatedByString:@", "];
  if ([v7 count])
  {
    v5 = [v7 objectAtIndex:0];
    *a2 = [v5 intValue];

    if ([v7 count] >= 2)
    {
      v6 = [v7 objectAtIndex:1];
      *a3 = [v6 intValue];
    }
  }
}

float OAVReadAngle(NSString *a1)
{
  v1 = a1;
  v10 = 0.0;
  v9 = 0;
  CXSplitValueAndUnit(v1, &v10, &v9);
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        goto LABEL_9;
      case 4:
        v3 = v10 * 180.0;
        v4 = 3.14159265;
        break;
      case 5:
        v3 = v10 * 9.0;
        v4 = 10.0;
        break;
      default:
        goto LABEL_10;
    }

    v2 = v3 / v4;
    goto LABEL_13;
  }

  if ((v9 - 1) < 2)
  {
    v2 = v10 * 0.0000152587891;
LABEL_13:
    v7 = v2;
    goto LABEL_14;
  }

  if (!v9)
  {
LABEL_9:
    v2 = v10;
    goto LABEL_13;
  }

LABEL_10:
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float OAVReadAngle(NSString *__strong)"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Vml/OAVUtils.mm"];
  [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:39 isFatal:0 description:"Unhandled case"];

  v7 = 0.0;
  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_14:

  return v7;
}

void OAVReadLengthPair(NSString *a1, float *a2, float *a3)
{
  v10 = a1;
  v5 = [(NSString *)v10 componentsSeparatedByString:@", "];
  if ([v5 count] != 2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void OAVReadLengthPair(NSString *__strong, float *, float *)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Vml/OAVUtils.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:102 isFatal:0 description:"Bad input"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [v5 objectAtIndex:0];
  *a2 = OAVReadLength(v8);

  v9 = [v5 objectAtIndex:1];
  *a3 = OAVReadLength(v9);
}

void XlFileSharing::XlFileSharing(XlFileSharing *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE540;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFileSharing *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2)) & 1;
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 10) = v4;
  if (v4)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlFileSharing::~XlFileSharing(XlFileSharing *this)
{
  *this = &unk_286ECE540;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE540;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
}

void WrdAnnotationReferenceDescriptor::WrdAnnotationReferenceDescriptor(WrdAnnotationReferenceDescriptor *this)
{
  *this = &unk_286ED3FA8;
  CsString::CsString((this + 8));
  *(this + 8) = -1;
  *(this + 18) = 0;
}

uint64_t WrdAnnotationReferenceDescriptorTable::getDescriptor(WrdAnnotationReferenceDescriptorTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (!v2 || *(this + 8) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return v2 + 40 * a2;
}

uint64_t WrdParser::parse(WrdParser *this, WrdAnnotationReferenceDescriptor *a2)
{
  v4 = (*(**(this + 16) + 80))(*(this + 16));
  *(a2 + 6) = 0;
  bzero(*(a2 + 2), 2 * *(a2 + 7));
  CsString::reserve((a2 + 8), v4 + 1);
  v5 = *(a2 + 2);
  if (!v5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  if (v4)
  {
    v6 = v4;
    do
    {
      *v5++ = (*(**(this + 16) + 80))(*(this + 16));
      --v6;
    }

    while (v6);
  }

  CsString::setCount((a2 + 8), v4);
  (*(**(this + 16) + 16))(*(this + 16), 2 * ((WrdAnnotationReferenceDescriptor::s_unNumberOfCharactersForAuthor + ~v4) & 0x7FFFu), 1);
  *(a2 + 18) = (*(**(this + 16) + 72))(*(this + 16));
  (*(**(this + 16) + 16))(*(this + 16), 4, 1);
  result = (*(**(this + 16) + 96))(*(this + 16));
  *(a2 + 8) = result;
  return result;
}

void WrdAnnotation::WrdAnnotation(WrdAnnotation *this, WrdAnnotationReferenceDescriptor *a2, WrdDateTime *a3)
{
  this->var0 = &unk_286ED3F30;
  *&this->var1 = 0;
  this->var3 = 0;
  this->var4 = a2;
  this->var5 = a3;
}

uint64_t WrdAnnotationReferenceDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = 0;
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  CsString::append((a1 + 8), (a2 + 8));
  return a1;
}

void *WrdAnnotationTable::append(void *this, WrdAnnotation *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[2];
    if (v3 >= v2[3])
    {
      this = std::vector<WrdAnnotation *,ChAllocator<WrdAnnotation *>>::__emplace_back_slow_path<WrdAnnotation * const&>(v2 + 1, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[2] = this;
  }

  return this;
}

uint64_t WrdAnnotationTable::getAnnotationAtMainTextCP(WrdAnnotationTable *this, int a2, unsigned int *a3)
{
  v3 = *(this + 1);
  v4 = (*(this + 2) - v3) >> 3;
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

void WrdAnnotation::~WrdAnnotation(WrdAnnotation *this)
{
  WrdAnnotation::~WrdAnnotation(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED3F30;
  var4 = this->var4;
  if (var4)
  {
    (*(*var4 + 8))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    (*(var5->var0 + 1))(var5);
  }

  this->var5 = 0;
}

void WrdAnnotationReferenceDescriptor::~WrdAnnotationReferenceDescriptor(WrdAnnotationReferenceDescriptor *this)
{
  *this = &unk_286ED3FA8;
  CsString::~CsString((this + 8));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3FA8;
  CsString::~CsString((this + 8));
}

void XlArray::XlArray(XlArray *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD710;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
}

XlArray *XlFormulaInfo::takeArrayBase(XlFormulaInfo *this, XlArray *a2)
{
  result = this->var7;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var7 = a2;
  return result;
}

void XlArray::~XlArray(XlArray *this)
{
  XlArray::~XlArray(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECD710;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 8) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
}

void XlChartDTLineFormat::XlChartDTLineFormat(XlChartDTLineFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA800;
  *(v2 + 16) = 0xFFFFFFFF00000000;
  *(v2 + 24) = 1065353216;
}

void XlStringExtractor::markHashTableAsCorrupted(XlStringExtractor *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 16 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x25F896FE0](v7, 0x1000C8052888210);
        }

        *(v4 + v6) = 0;
        v6 -= 16;
      }

      while (v6);
    }

    MEMORY[0x25F896FE0](v4 - 8, 0x1010C8057418832);
  }

  *(this + 3) = 0;
  v8 = *(this + 40);
  *(this + 37) = 1;
  *(this + 38) = v8;
  operator new[](32);
}

uint64_t XlParserVisitor::currentRecordLocation(XlParserVisitor *this)
{
  if (*(this + 100) != 1)
  {
    return (*(**(this + 2) + 40))(*(this + 2)) - 4;
  }

  v1 = *(this + 21);
  if (v1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

void *XlBinaryReader::findCellAHome(void *this, XlRowBlock *a2, int a3)
{
  v5 = this;
  v6 = this[52];
  v7 = this[53];
  do
  {
    if (((v7 - v6) & 0x7FFFFFFF8) == 0)
    {
      break;
    }

    v8 = 0;
    while (((*(a2 + 2) - *(a2 + 1)) & 0x7FFFFFFF8) != 0)
    {
      v9 = v6[v8];
      if (v9)
      {
        var1 = v9->var1;
        this = XlRowBlock::getMinRow(a2);
        if (var1 >= this)
        {
          v11 = v9->var1;
          this = XlRowBlock::getMaxRow(a2);
          if (v11 <= this)
          {
            this = XlRowBlock::takeCell(a2, v9);
            v12 = v5[53];
            v13 = v5[52] + 8 * v8;
            v14 = v12 - (v13 + 8);
            if (v12 != v13 + 8)
            {
              this = memmove(v13, (v13 + 8), v12 - (v13 + 8));
            }

            v5[53] = v13 + v14;
            --v8;
          }
        }
      }

      ++v8;
      v6 = v5[52];
      v15 = (v5[53] - v6) >> 3;
      if (v8 >= v15)
      {
        if (!v15)
        {
          return this;
        }

        break;
      }
    }

    if (!a3)
    {
      break;
    }

    v16 = *v6;
    if (!*v6)
    {
      break;
    }

    this = (*(*v5[166] + 16))(v5[166], 5);
    if (this)
    {
      v17 = this;
      v18 = this[1];
      *(v18 + 8) = v16->var1;
      *(v18 + 10) = 983295;
      *(v18 + 19) = 1;
      XlCellRow::takeCell(this, v16);
      v20 = v5[52];
      v19 = v5[53];
      v21 = v19 - (v20 + 8);
      if (v19 != v20 + 8)
      {
        memmove(v5[52], (v20 + 8), v19 - (v20 + 8));
      }

      v5[53] = v20 + v21;
      this = XlRowBlock::takeRow(a2, v17);
    }

    v6 = v5[52];
    v7 = v5[53];
  }

  while (((v7 - v6) & 0x7FFFFFFF8) != 0);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setRightIndentCharacterUnits(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x10000000000000uLL;
  *(this + 140) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setLeftIndentCharacterUnits(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x20000000000000uLL;
  *(this + 141) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setFirstLineIndentCharacterUnits(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x40000000000000uLL;
  *(this + 142) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setLineSpaceBefore(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x80000000000000uLL;
  *(this + 143) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setLineSpaceAfter(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 0x100000000000000uLL;
  *(this + 144) = a2;
  return this;
}

uint64_t *EshOpt::takeBlipRecordProperty(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = a2;
  v11 = &v10;
  if ((std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10)[5] & 1) == 0)
  {
    v10 = a2;
    v11 = &v10;
    v8 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10)[6];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

LABEL_10:
  v10 = a2;
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10);
  result[5] = 0;
  result[6] = a3;
  return result;
}

uint64_t XlChartCategoryAxis::takeAlignment(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 160);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 160) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setNoOverlapAllowed(WrdParagraphProperties *this, char a2)
{
  *(this + 12) |= 2u;
  *(this + 294) = *(this + 294) & 0xFDFFFFFF | ((a2 & 1) << 25);
  return this;
}

WrdTableProperties *WrdTableProperties::setDoNotAllowOverlap(WrdTableProperties *this, char a2)
{
  *(this + 6) |= 0x800000u;
  *(this + 390) = a2;
  return this;
}

uint64_t WrdCharacterProperties::setLineBreak(uint64_t result, int a2)
{
  *(result + 28) |= 0x100u;
  *(result + 160) = a2;
  return result;
}

OcBinaryData *WrdBinaryReader::read(OcBinaryData *result, uint64_t a2)
{
  v2 = *(*&result->var6 + 120);
  if (v2)
  {
    v4 = result;
    v5 = (*(v2->var0 + 4))(*(*&result->var6 + 120));
    v6 = *(&v4[12].var6 + 1);
    var7 = v4[12].var7;

    return OcBinaryData::setDataInfo((a2 + 8), v2, v5, v6, var7);
  }

  return result;
}

void XlOleSize::XlOleSize(XlOleSize *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF0C0;
  v2[2] = 0;
}

void XlOleSize::~XlOleSize(XlOleSize *this)
{
  *this = &unk_286ECF0C0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECF0C0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

WrdParagraphProperties *WrdParagraphProperties::setWordWrap(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x400000000uLL;
  *(this + 294) = *(this + 294) & 0xFFFFF7FF | ((a2 & 1) << 11);
  return this;
}

void PptPrintOptions::PptPrintOptions(PptPrintOptions *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB990;
  *(v2 + 32) = &unk_286EDBA38;
  *(v2 + 56) = 0;
  *(v2 + 58) = 0;
}

uint64_t PptPrintOptions::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptPrintOptions *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 1 || (*(a2 + 13) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 2) || (*(a2 + 56) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 3) || (*(a2 + 57) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 4))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 58) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

_DWORD *yyFlexLexer::yy_push_state(_DWORD *this, int a2)
{
  v3 = this;
  v4 = this[9];
  if (this[8] >= v4)
  {
    v5 = v4 + 25;
    this[9] = v5;
    v6 = *(this + 5);
    if (v6)
    {
      this = malloc_type_realloc(v6, 4 * v5, 0x8E6B0D0FuLL);
    }

    else
    {
      this = malloc_type_malloc(4 * v5, 0x43DA4E99uLL);
    }

    *(v3 + 40) = this;
    if (!this)
    {
      this = (*(*v3 + 112))(v3, "out of memory expanding start-condition stack");
    }
  }

  v7 = (*(v3 + 404) - 1) / 2;
  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  *(v3 + 32) = v9 + 1;
  *(v8 + 4 * v9) = v7;
  *(v3 + 404) = (2 * a2) | 1;
  return this;
}

uint64_t yysyntax_error(char *a1, int a2, unsigned int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = yypact[a2];
  if (v3 >= -188)
  {
    if (a3 > 0x130)
    {
      v5 = 2;
    }

    else
    {
      v5 = yytranslate[a3];
    }

    v7 = yytname[v5];
    v8 = yytnamerr(0, v7);
    v37 = 0u;
    v36 = 0u;
    v35 = v7;
    strcpy(v34, "syntax error, unexpected %s");
    v9 = -v3 & (v3 >> 31);
    if (336 - v3 >= 50)
    {
      v10 = 50;
    }

    else
    {
      v10 = 336 - v3;
    }

    if (v9 < v10)
    {
      v11 = 0;
      v12 = &v34[27];
      v13 = v9;
      v14 = v10;
      v15 = ", expecting %s";
      v16 = 1;
      v33 = v8;
      v17 = v8;
      while (1)
      {
        if (v13 != 1 && v13 == yycheck[v13 + v3])
        {
          if (v16 == 5)
          {
            v34[27] = 0;
            v16 = 1;
            v17 = v33;
            goto LABEL_24;
          }

          v18 = yytname[v13];
          (&v35)[v16] = v18;
          v19 = yytnamerr(0, v18);
          v20 = __CFADD__(v19, v17);
          v17 += v19;
          v21 = v20;
          --v12;
          do
          {
            v22 = *v15++;
            *++v12 = v22;
          }

          while (v22);
          ++v16;
          v11 |= v21;
          v15 = " or %s";
        }

        if (++v13 >= v14)
        {
          goto LABEL_24;
        }
      }
    }

    v11 = 0;
    v16 = 1;
    v17 = v8;
LABEL_24:
    v6 = v17 - 1;
    v23 = v34;
    do
    {
      v24 = *v23++;
      ++v6;
    }

    while (v24);
    if (v11 | (v6 < v17))
    {
      return -1;
    }

    if (!a1)
    {
      return v6;
    }

    v26 = 0;
    for (i = v34; ; i += v31)
    {
      v28 = *i;
      *a1 = v28;
      if (v28 != 37)
      {
        break;
      }

      if (i[1] != 115 || v26 >= v16)
      {
        goto LABEL_38;
      }

      v32 = v26 + 1;
      v30 = yytnamerr(a1, (&v35)[v26]);
      v31 = 2;
      v26 = v32;
LABEL_40:
      a1 += v30;
    }

    if (!v28)
    {
      return v6;
    }

LABEL_38:
    v30 = 1;
    v31 = 1;
    goto LABEL_40;
  }

  return 0;
}

uint64_t yytnamerr(char *a1, const char *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    v9 = 0;
    if (a1)
    {
      do
      {
        v10 = a2[v9];
        a1[v9++] = v10;
      }

      while (v10);
    }

    else
    {
        ;
      }
    }

    return v9 - 1;
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = *(v3 + 2);
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      a1[v2] = v5;
    }

    ++v2;
  }

  if (a1)
  {
    a1[v2] = 0;
  }

  return v2;
}

_DWORD *yyFlexLexer::yy_pop_state(_DWORD *this)
{
  v1 = this;
  v2 = this[8];
  v3 = v2 - 1;
  this[8] = v2 - 1;
  if (v2 <= 0)
  {
    this = (*(*this + 112))(this, "start-condition stack underflow");
    v3 = v1[8];
  }

  v1[101] = (2 * *(*(v1 + 5) + 4 * v3)) | 1;
  return this;
}

void PptOEShapeAtom::PptOEShapeAtom(PptOEShapeAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB4B0;
  *(v2 + 32) = &unk_286EDB558;
}

uint64_t PptOEShapeAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptOEShapeAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void XlChartSurfacePlot::XlChartSurfacePlot(XlChartSurfacePlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartSurface::XlChartSurface((v2 + 144));
  *this = &unk_286ECB798;
  *(this + 18) = &unk_286ECB7C0;
}

void XlChartSurface::XlChartSurface(XlChartSurface *this)
{
  XlRecord::XlRecord(this, 4159, 2, 0);
  *v1 = &unk_286ECAFC8;
  *(v1 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartSurface *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartSurfacePlot::~XlChartSurfacePlot(XlChartSurfacePlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

void XlImData::XlImData(XlImData *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEA40;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 36) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlImData *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 7) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 104))(*(this + 2));
  if ((*(a2 + 36) & 1) == 0)
  {
    v5 = *(a2 + 2) - 8;
    *(a2 + 2) = XlParserVisitor::getDataAndContinues(this, &v5, -1) - *(this + 18);
    XlChartGelFrame::setBinaryData(a2, *(this + 3), *(a2 + 6));
    *(this + 3) = 0;
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlImData::~XlImData(XlImData *this)
{
  *this = &unk_286ECEA40;
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
  *this = &unk_286ECEA40;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

void XlChartRadarPlot::XlChartRadarPlot(XlChartRadarPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartRadar::XlChartRadar((v2 + 144));
  *this = &unk_286ECB710;
  *(this + 18) = &unk_286ECB738;
}

void XlChartRadar::XlChartRadar(XlChartRadar *this)
{
  XlRecord::XlRecord(this, 4158, 2, 0);
  *v1 = &unk_286ECAC48;
  *(v1 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartRadar *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartRadarPlot::~XlChartRadarPlot(XlChartRadarPlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

WrdCharacterProperties *WrdCharacterProperties::setUseParagraphStylesProperties(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 1uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFFFE | a2 & 1;
  return this;
}

uint64_t WrdParagraphProperties::setBorderCode(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000uLL;
  *(result + 148) = a2;
  return result;
}

uint64_t setStyleForEDCell(EDCellHeader *a1, EDStyle *a2, EDResources *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [(EDResources *)v6 styles];
    v9 = [v8 addOrEquivalentObject:v5];

    a1->var1 = v9;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t styleIndexForEDRowInfo(EDRowInfo *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (a1->var0 == -1)
  {
    return -1;
  }

  return a1->var0;
}

void PptComment10Atom::PptComment10Atom(PptComment10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0478;
  *(v2 + 32) = &unk_286EE0520;
  *(v2 + 60) = 0;
  *(v2 + 64) = 0;
  *(v2 + 52) = 0;
  *(v2 + 55) = 0;
}

uint64_t PptComment10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptComment10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 52) = OcParser::parseSystemTimeFromStream(*(this + 1), v4);
  *(a2 + 30) = v5;
  OcParser::parsePointI4FromStream(*(this + 1), v5, &v7);
  *(a2 + 8) = v7;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptComment10Atom::~PptComment10Atom(PptComment10Atom *this)
{
  *this = &unk_286EE0478;
  *(this + 4) = &unk_286EE0520;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0478;
  *(this + 4) = &unk_286EE0520;
}

void XlHLinkToolTip::XlHLinkToolTip(XlHLinkToolTip *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE9C0;
  v2[2] = 0;
  v2[3] = 0;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlHLinkToolTip *a2)
{
  if (a2->var1.var0 > 9)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 3002;
}

void XlHLinkToolTip::~XlHLinkToolTip(XlHLinkToolTip *this)
{
  XlHLinkToolTip::~XlHLinkToolTip(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECE9C0;
  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x25F897000](var2, 0x1000C400EA6A39BLL);
  }

  this->var2 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;
}

void XlTable::XlTable(XlTable *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED09D0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

XlChartPicF *XlChartFrameType::takePictureFormat(XlChartFrameType *this, XlChartPicF *a2)
{
  result = this->var11;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var11 = a2;
  return result;
}

void XlTable::~XlTable(XlTable *this)
{
  *this = &unk_286ED09D0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED09D0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;
}

void XlSxIDStm::XlSxIDStm(XlSxIDStm *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0510;
  *(v2 + 16) = 0;
}

void XlSxVs::XlSxVs(XlSxVs *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0910;
  *(v2 + 16) = 1;
}

void XlDConRef::XlDConRef(XlDConRef *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDE00;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlGenericRecord::XlGenericRecord(XlGenericRecord *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE7C0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = *(v2 + 12);
  *(v2 + 12) = 0;
}

void *XlPivotInfoTable::append(XlPivotInfoTable *this, XlPivotInfo *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<XlPivotInfo *,ChAllocator<XlPivotInfo *>>::__emplace_back_slow_path<XlPivotInfo * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void XlPivotInfo::~XlPivotInfo(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

void XlDConRef::~XlDConRef(XlDConRef *this)
{
  XlDConRef::~XlDConRef(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECDE00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 4) = 0;
}

void XlChartCustomLabel::XlChartCustomLabel(XlChartCustomLabel *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA6C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartCustomLabel *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  XlParserVisitor::beginRead(this);
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  *(a2 + 12) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  if (v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  if (v4)
  {
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlChartCustomLabel::~XlChartCustomLabel(XlChartCustomLabel *this)
{
  *this = &unk_286ECA6C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECA6C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

uint64_t categoryForType(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 21:
    case 25:
      result = 2;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 33:
    case 34:
    case 65:
    case 66:
    case 97:
    case 98:
      result = 1;
      break;
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 35:
    case 36:
    case 37:
    case 38:
    case 42:
    case 43:
    case 44:
    case 45:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 74:
    case 75:
    case 76:
    case 77:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 96:
    case 99:
    case 100:
    case 101:
    case 102:
    case 106:
    case 107:
    case 108:
    case 109:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
      return result;
    default:
      result = 3;
      break;
  }

  return result;
}

void XlChartAreaPlot::XlChartAreaPlot(XlChartAreaPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartArea::XlChartArea((v2 + 144));
  *this = &unk_286ECB290;
  *(this + 18) = &unk_286ECB2B8;
}

void XlChartArea::XlChartArea(XlChartArea *this)
{
  XlRecord::XlRecord(this, 4122, 2, 0);
  *v1 = &unk_286ECA340;
  *(v1 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartArea *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartAreaPlot::~XlChartAreaPlot(XlChartAreaPlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

uint64_t XlParserVisitor::seekCurrentRecord(uint64_t this)
{
  if (*(this + 100) != 1)
  {
    return (*(**(this + 16) + 16))(*(this + 16), 4294967292, 1);
  }

  if ((*(this + 84) & 0x80000000) == 0)
  {
    return (*(**(this + 16) + 16))();
  }

  return this;
}

void PptTextMasterStyle10Atom::PptTextMasterStyle10Atom(PptTextMasterStyle10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDF150;
  *(v2 + 32) = &unk_286EDF1F8;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextMasterStyle10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextMasterStyle10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  if ((*(**(this + 1) + 72))(*(this + 1)) >= 1)
  {
    PptTextMasterStyle10Atom::addLevel(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextMasterStyle10Atom::~PptTextMasterStyle10Atom(PptTextMasterStyle10Atom *this)
{
  PptTextMasterStyle10Atom::~PptTextMasterStyle10Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDF150;
  *(this + 4) = &unk_286EDF1F8;
  PptTextMasterStyle10Atom::cleanup(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t PptTextMasterStyle10Atom::cleanup(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (((*(this + 56) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C404F21501ELL);
        v2 = *(v1 + 48);
      }

      *(v2 + 8 * v4) = 0;
      *(*(v1 + 48) + 8 * v4) = 0;
      v3 = v4 + 1;
      v2 = *(v1 + 48);
    }

    while (((*(v1 + 56) - v2) >> 3) > (v4 + 1));
  }

  *(v1 + 56) = v2;
  return this;
}

SsrwOOStorage *ChAutoPtr<SsrwOOStorage>::setValue(SsrwOOStorage **a1, SsrwOOStorage *a2)
{
  result = *a1;
  if (result != a2)
  {
    if (result)
    {
      SsrwOOStorage::~SsrwOOStorage(result);
      result = MEMORY[0x25F897000]();
    }

    *a1 = a2;
  }

  return result;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartPicF *a2)
{
  XlParserVisitor::beginRead(this);
  a2->var3 = (*(**(this + 2) + 80))(*(this + 2));
  a2->var4 = (*(**(this + 2) + 80))(*(this + 2));
  a2->var5 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var6 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var2 = (*(**(this + 2) + 120))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void PptExControlAtom::PptExControlAtom(PptExControlAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED92B8;
  *(v2 + 32) = &unk_286ED9360;
}

uint64_t PptExControlAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExControlAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

WrdParagraphProperties *WrdParagraphProperties::resetListProperties(WrdParagraphProperties *this)
{
  v1 = 0;
  *(this + 2) &= ~0x100uLL;
  *(this + 34) = 0;
  v2 = *(this + 25);
  v3 = *(this + 26);
  v4 = *(this + 27);
  do
  {
    *(v2 + v1) = 0;
    *(v3 + v1) = 0;
    *(v4 + v1) = 0;
    v1 += 2;
  }

  while (v1 != 128);
  v5 = *(this + 2);
  *(this + 71) = 0;
  *(this + 12) &= ~1u;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 70) = 0;
  *(this + 142) = 0;
  *(this + 2) = v5 & 0x78FFFFFFFFFFFE7;
  *(this + 300) = 9;
  return this;
}

WrdTableProperties *WrdTableProperties::setBottomDistanceFromText(WrdTableProperties *this, int a2)
{
  *(this + 2) |= 0x4000000000000uLL;
  *(this + 81) = a2;
  return this;
}

uint64_t WrdBookmark::setExtraData(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 32);
  if (v3)
  {
    if (*(this + 40) > a2)
    {
      *(v3 + a2) = a3;
    }
  }

  return this;
}

uint64_t WrdAnnotationTable::getAnnotationForBookmark(WrdAnnotationTable *this, int a2, unsigned int *a3)
{
  v3 = *(this + 1);
  v4 = (*(this + 2) - v3) >> 3;
  if (!v4)
  {
    return 0;
  }

  result = *v3;
  if (*(*(*v3 + 24) + 32) != a2)
  {
    v7 = 0;
    while (v4 > ++v7)
    {
      v6 = v7;
      result = *(v3 + 8 * v7);
      if (*(*(result + 24) + 32) == a2)
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

double NSNonNegativeSizeRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX - fabs(a3) * 0.5;
}

uint64_t *WrdStyle::takeTableProps(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  for (i = *(a1 + 136); i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= a2)
    {
      if (v7 >= a2)
      {
        v11 = a2;
        v12 = &v11;
        v8 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 128, &v11)[5];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v11 = a2;
        v12 = &v11;
        std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 128, &v11)[5] = 0;
        break;
      }

      ++i;
    }
  }

  v11 = a2;
  v12 = &v11;
  result = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 128, &v11);
  result[5] = a3;
  return result;
}

uint64_t *WrdStyle::takeCharProps(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 152) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  for (i = *(a1 + 112); i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= a2)
    {
      if (v7 >= a2)
      {
        v11 = a2;
        v12 = &v11;
        v8 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 104, &v11)[5];
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v11 = a2;
        v12 = &v11;
        std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 104, &v11)[5] = 0;
        break;
      }

      ++i;
    }
  }

  v11 = a2;
  v12 = &v11;
  result = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 104, &v11);
  result[5] = a3;
  return result;
}

uint64_t WrdStyle::getCharPropsReference(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 152) != 3 || (v2 = *(a1 + 112)) == 0)
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
  return std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 104, &v6)[5];
}

uint64_t WrdStyle::getTableProps(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 152) != 3)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 136);
  v2 = (a1 + 136);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  while (1)
  {
    v6 = *(v5 + 8);
    if (a2 >= v6)
    {
      break;
    }

LABEL_7:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_7;
  }

  v8 = v2;
  do
  {
    v9 = *(v3 + 8);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v3;
    }

    v3 = v3[v11];
  }

  while (v3);
  if (v8 == v2 || *(v8 + 8) > a2)
  {
LABEL_8:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return v8[5];
}

uint64_t **ChAutoPtr<ChStack<XlPtg *>>::~ChAutoPtr(uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = ChStack<XlPtg *>::~ChStack(v2);
    MEMORY[0x25F897000](v3, 0x1080C40E1DA5700);
  }

  *a1 = 0;
  return a1;
}

unsigned __int16 *extractDataFromPtgAreaBuffer(unsigned __int16 *result, int *a2, int *a3, int *a4, int *a5)
{
  *a2 = -1;
  *a3 = -1;
  *a4 = -1;
  *a5 = -1;
  if (result)
  {
    *a2 = *result;
    *a4 = *(result + 4);
    *a3 = result[1];
    *a5 = *(result + 6);
  }

  return result;
}

uint64_t SsrwOOMemStream::readString16(uint64_t this, unsigned int *a2, unsigned __int16 *a3)
{
  v4 = *a2;
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v6 = this;
    v7 = 0;
    while (1)
    {
      this = (*(*v6 + 128))(v6);
      a3[v7] = this;
      if (!this)
      {
        break;
      }

      if (v4 == ++v7)
      {
        a3[v4] = 0;
        goto LABEL_8;
      }
    }

    LODWORD(v4) = v7 + 1;
  }

LABEL_8:
  *a2 = v4;
  return this;
}

uint64_t SsrwOOMemStream::readChar16(SsrwOOMemStream *this)
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

void PptLinkedSlide10Atom::PptLinkedSlide10Atom(PptLinkedSlide10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0858;
  *(v2 + 32) = &unk_286EE0900;
}

uint64_t PptLinkedSlide10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptLinkedSlide10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptLinkedShape10Atom::PptLinkedShape10Atom(PptLinkedShape10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0668;
  *(v2 + 32) = &unk_286EE0710;
}

uint64_t PptLinkedShape10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptLinkedShape10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptLinkedSlide10Atom::~PptLinkedSlide10Atom(PptLinkedSlide10Atom *this)
{
  *this = &unk_286EE0858;
  *(this + 4) = &unk_286EE0900;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0858;
  *(this + 4) = &unk_286EE0900;
}

void PptLinkedShape10Atom::~PptLinkedShape10Atom(PptLinkedShape10Atom *this)
{
  *this = &unk_286EE0668;
  *(this + 4) = &unk_286EE0710;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0668;
  *(this + 4) = &unk_286EE0710;
}

unint64_t WrdParser::parse(unint64_t this, WrdAnnotationDateTimeTable *a2)
{
  if (*(this + 232) >= 0x70u)
  {
    this = WrdParser::startFCLCB(this, 0x70u);
    if (HIDWORD(this))
    {
      if ((HIDWORD(this) / 0x12))
      {
        operator new();
      }
    }

    else
    {

      return WrdAnnotationDateTimeTable::clear(a2);
    }
  }

  return this;
}

void *WrdAnnotationDateTimeTable::append(void *this, WrdDateTime *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[2];
    if (v3 >= v2[3])
    {
      this = std::vector<WrdDateTime *,ChAllocator<WrdDateTime *>>::__emplace_back_slow_path<WrdDateTime * const&>(v2 + 1, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[2] = this;
  }

  return this;
}

uint64_t WrdAnnotationDateTimeTable::getDateTime(WrdAnnotationDateTimeTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return *(v2 + 8 * a2);
}

void ChLogF(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = g_pFile;
  if (g_pFile)
  {
    v11 = malloc_type_malloc(0x1F4uLL, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      v16 = 0;
      time(&v16);
      v13 = localtime(&v16);
      snprintf(__str, 0x16uLL, "%02d/%02d/%04d-%02d:%02d:%02d; ", v13->tm_mday, v13->tm_mon, v13->tm_year + 1900, v13->tm_hour, v13->tm_min, v13->tm_sec);
      v14 = strlen(__str);
      fwrite(__str, 1uLL, v14, v9);
      vsnprintf(v12, 0x1F4uLL, a1, &a9);
      v15 = strlen(v12);
      fwrite(v12, 1uLL, v15, v9);
      fflush(v9);
      free(v12);
    }
  }
}

void XlOper::XlOper(XlOper *this)
{
  *this = 0;
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlOper *a2)
{
  v4 = (*(**(this + 2) + 64))(*(this + 2));
  *a2 = v4;
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      *(a2 + 1) = (*(**(this + 2) + 120))(*(this + 2));
    }

    else if (v4 == 2)
    {
      v5 = (*(**(this + 2) + 80))(*(this + 2));
      (*(**(this + 2) + 64))(*(this + 2));
      (*(**(this + 2) + 40))(*(this + 2));
      if (v5)
      {
        operator new();
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        *(a2 + 24) = (*(**(this + 2) + 72))(*(this + 2)) != 0;
        break;
      case 8:
        (*(**(this + 2) + 72))(*(this + 2));
        break;
      case 16:
        *(a2 + 7) = (*(**(this + 2) + 72))(*(this + 2));
        break;
      default:
        return;
    }

    (*(**(this + 2) + 104))(*(this + 2));
    v6 = *(**(this + 2) + 72);

    v6();
  }
}

void *XlExternName::appendOperand(XlExternName *this, XlOper *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 9);
  if (v3 >= *(this + 10))
  {
    result = std::vector<XlOper *,ChAllocator<XlOper *>>::__emplace_back_slow_path<XlOper * const&>(this + 8, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 9) = result;
  return result;
}

XlOper **ChAutoPtr<XlOper>::~ChAutoPtr(XlOper **a1)
{
  v2 = *a1;
  if (v2)
  {
    XlOper::~XlOper(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

uint64_t XlBaseFormulaTable::remove(XlBaseFormulaTable *this, int a2, int a3)
{
  result = XlBaseFormulaTable::locate(this, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v6 = *(this + 1);
    v7 = *(v6 + 8 * result);
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v6 = *(this + 1);
    }

    *(v6 + 8 * v5) = 0;
    v8 = *(this + 4);
    result = *(v8 + 8 * v5);
    if (result)
    {
      result = MEMORY[0x25F897000](result, 0x1000C4052888210);
      v8 = *(this + 4);
    }

    *(v8 + 8 * v5) = 0;
    if (*(this + 16) > v5)
    {
      *(this + 16) = v5;
    }
  }

  return result;
}

void XlOper::~XlOper(XlOper *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartPivotTableReference *a2)
{
  XlParserVisitor::beginRead(this);
  (*(**(this + 2) + 16))(*(this + 2), 2, 1);
  (*(**(this + 2) + 96))(*(this + 2));
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

void XlChartPivotTableReference::~XlChartPivotTableReference(XlChartPivotTableReference *this)
{
  *this = &unk_286ECD478;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECD478;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlChartRadarAreaPlot::XlChartRadarAreaPlot(XlChartRadarAreaPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartRadarArea::XlChartRadarArea((v2 + 144));
  *this = &unk_286ECB688;
  *(this + 18) = &unk_286ECB6B0;
}

void XlChartRadarArea::XlChartRadarArea(XlChartRadarArea *this)
{
  XlRecord::XlRecord(this, 4160, 2, 0);
  *v1 = &unk_286ECAC88;
  *(v1 + 16) = 0;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartRadarArea *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartRadarAreaPlot::~XlChartRadarAreaPlot(XlChartRadarAreaPlot *this)
{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

void PptTextBlockStyling11Atom::PptTextBlockStyling11Atom(PptTextBlockStyling11Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDF340;
  *(v2 + 32) = &unk_286EDF3E8;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextBlockStyling11Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockStyling11Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  if (v4 < EshRecord::getDataLength(a2) + v4)
  {
    PptTextBlockStyling11Atom::addStyle(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextBlockStyling11Atom::~PptTextBlockStyling11Atom(PptTextBlockStyling11Atom *this)
{
  PptTextBlockStyling11Atom::~PptTextBlockStyling11Atom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDF340;
  *(this + 4) = &unk_286EDF3E8;
  PptTextBlockStyling11Atom::reset(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void *PptTextBlockStyling11Atom::reset(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7] - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = v1[6];
      v7 = v1[7] - v6;
      if (v4 >= (v7 >> 3))
      {
        goto LABEL_10;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        PptSpecialInfo11::~PptSpecialInfo11(this);
        this = MEMORY[0x25F897000]();
        v6 = v1[6];
        v7 = v1[7] - v6;
      }

      if (v4 >= (v7 >> 3))
      {
LABEL_10:
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v6 + 8 * v4++) = 0;
    }

    while (v5 != v4);
    v2 = v1[6];
  }

  v1[7] = v2;
  return this;
}

uint64_t XlChartValueAxis::takeUnitTextFrame(XlChartValueAxis *this, XlChartTextFrame *a2)
{
  result = *(this + 21);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 21) = a2;
  return result;
}

void XlScenario::XlScenario(XlScenario *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFE58;
  *(v2 + 16) = 0;
  *(v2 + 19) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlScenario *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 8) = v4;
  *(a2 + 18) = (*(**(this + 2) + 64))(*(this + 2)) & 1;
  *(a2 + 19) = (*(**(this + 2) + 64))(*(this + 2)) & 1;
  *(a2 + 20) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 21) = (*(**(this + 2) + 64))(*(this + 2));
  v5 = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 22) = v5;
  if (*(a2 + 20))
  {
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  if (v5)
  {
    (*(**(this + 2) + 72))(*(this + 2));
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  if (*(a2 + 21))
  {
    (*(**(this + 2) + 72))(*(this + 2));
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  if (v4 >= 1)
  {
    v6 = 0;
    *(a2 + 7) = *(a2 + 6);
    do
    {
      v7 = (*(**(this + 2) + 72))(*(this + 2));
      v11 = v7;
      v8 = *(a2 + 7);
      if (v8 >= *(a2 + 8))
      {
        v9 = std::vector<unsigned short,ChAllocator<unsigned short>>::__emplace_back_slow_path<unsigned short>(a2 + 48, &v11);
      }

      else
      {
        *v8 = v7;
        v9 = (v8 + 1);
      }

      *(a2 + 7) = v9;
      ++v6;
    }

    while (2 * (v4 & 0x7FFF) > v6);
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void *XlScenario::appendCellValue(XlScenario *this, XlString *a2)
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
    result = std::vector<XlString *,ChAllocator<XlString *>>::__emplace_back_slow_path<XlString * const&>(this + 9, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 10) = result;
  return result;
}

void XlScenario::~XlScenario(XlScenario *this)
{
  XlScenario::~XlScenario(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECFE58;
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
  *(this + 7) = *(this + 6);
  *(this + 13) = *(this + 12);
  XlScenario::clearCells(this);
  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }
}

void *XlScenario::clearCells(void *this)
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

uint64_t setFormulaIndexForEDCell(uint64_t result, int a2)
{
  if (result)
  {
    if ((*(result + 3) & 0x10) != 0)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t styleIndexForEDCell(const EDCellHeader *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (a1->var1 == -1)
  {
    return -1;
  }

  return a1->var1;
}

_DWORD *errorValueForEDCell(_DWORD *result)
{
  if (result)
  {
    if (*result >> 29 == 5)
    {
      if ((*result & 0x10000000) != 0)
      {
        return result[3];
      }

      else
      {
        return result[2];
      }
    }

    else
    {
      v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"EDErrorValue errorValueForEDCell(const EDCellHeader *)"];
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v1 file:v2 lineNumber:282 isFatal:0 description:"Invalid Cell Type!"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      return 0;
    }
  }

  return result;
}

uint64_t handleExceptionForClientWithCallbacks(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:kCMTopExceptionDocumentIsEncrypted];

  if (v7)
  {
    v8 = 64257;
  }

  else
  {
    v9 = [v5 name];
    v10 = [v5 reason];
    NSLog(@"EXCEPTION %@: %@", v9, v10);

    v8 = 0xFFFFFFFFLL;
  }

  if (*(a3 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v5 getEntry];
      v12 = [v11 getMessageText];

      v13 = objc_alloc(MEMORY[0x277CBEAC0]);
      v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x277CCA450], 0}];
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    if (v7)
    {
      v16 = 1;
    }

    else
    {
      v16 = 912;
    }

    v17 = [v15 initWithDomain:@"OfficeImportErrorDomain" code:v16 userInfo:v14];
    (*(a3 + 32))(a2, v17);
  }

  return v8;
}

void XlBinaryData::XlBinaryData(XlBinaryData *this)
{
  OcBinaryData::OcBinaryData((this + 8));
  *(this + 7) = 0;
  *(this + 32) = 0;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlBinaryData *a2)
{
  XlHeader::XlHeader(&v22);
  v4 = *(a2 + 14);
  v21 = 0;
  if (!*(a2 + 7))
  {
LABEL_45:
    v7 = 0;
    goto LABEL_46;
  }

  (*(**(this + 164) + 16))(*(this + 164), v4, 0);
  XlParserVisitor::getHeader(*(this + 167), &v22, *(this + 1320));
  var0 = v22.var0;
  if (v22.var1 <= 0xEAu)
  {
    if (v22.var1 == 60)
    {
LABEL_13:
      v5 = (v4 + 4);
      v6 = v22.var0;
      goto LABEL_19;
    }

    if (v22.var1 != 127 && v22.var1 != 233)
    {
LABEL_48:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1009;
    }

    v5 = (v4 + 12);
    v6 = v22.var0 - 8;
  }

  else
  {
    if (v22.var1 <= 0x808u)
    {
      if (v22.var1 - 235 >= 3)
      {
        goto LABEL_48;
      }

      goto LABEL_13;
    }

    if (v22.var1 == 2057)
    {
      (*(**(this + 164) + 16))(*(this + 164), (*(a2 + 4) + v4), 0);
      v21 = *(a2 + 7);
      if ((*(**(this + 164) + 176))(*(this + 164)) < v21)
      {
        v21 = (*(**(this + 164) + 176))(*(this + 164));
      }

      (*(**(this + 164) + 56))(*(this + 164), *(a2 + 4), &v21);
      v7 = v21;
      goto LABEL_46;
    }

    if (v22.var1 != 2150)
    {
      if (v22.var1 != 4198)
      {
        goto LABEL_48;
      }

      goto LABEL_13;
    }

    v5 = (v4 + 18);
    v6 = v22.var0 - 14;
  }

  var0 = v6;
LABEL_19:
  if (*(a2 + 4))
  {
    v8 = 0;
    do
    {
      if (!v6)
      {
        (*(**(this + 164) + 16))(*(this + 164));
        XlParserVisitor::getHeader(*(this + 167), &v22, *(this + 1320));
        if (!(*(*this + 680))(this, v22.var1))
        {
          goto LABEL_45;
        }

        if (v22.var1 == 2150)
        {
          v6 = v22.var0 - 14;
        }

        else
        {
          v6 = v22.var0;
        }

        if (v22.var1 == 2150)
        {
          LODWORD(v5) = v5 + 18;
        }

        else
        {
          LODWORD(v5) = v5 + 4;
        }
      }

      v9 = v6 + v8;
      v10 = *(a2 + 4);
      v11 = v6 - (v10 - v8);
      if (v6 + v8 > v10)
      {
        v6 = (v10 - v8);
      }

      if (v9 <= v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      var0 = v12;
      v5 = v6 + v5;
      v8 += v6;
      v6 = v12;
    }

    while (v8 < v10);
  }

  (*(**(this + 164) + 16))(*(this + 164), v5, 0);
  v21 = *(a2 + 7);
  if (!v21)
  {
    goto LABEL_45;
  }

  v7 = 0;
  v13 = var0;
  while (1)
  {
    if (!v13)
    {
      XlParserVisitor::getHeader(*(this + 167), &v22, *(this + 1320));
      if (!(*(*this + 680))(this, v22.var1))
      {
        goto LABEL_46;
      }

      v13 = v22.var0;
      var0 = v22.var0;
      if (v22.var1 == 2150)
      {
        (*(**(this + 164) + 16))(*(this + 164), 14, 1);
        v13 = var0 - 14;
        var0 -= 14;
      }
    }

    v14 = *(**(this + 164) + 56);
    if (v13 > v21)
    {
      break;
    }

    v14();
    v13 = 0;
    v7 += var0;
    v16 = v21 - var0;
    v15 = v21 == var0;
    var0 = 0;
    v21 = v16;
    if (v15)
    {
      goto LABEL_46;
    }
  }

  v14();
  v18 = v21;
  v21 = 0;
  v7 += v18;
LABEL_46:
  result = OcBinaryData::setMinimumCapacity((a2 + 8), v7);
  *(a2 + 6) = v7;
  return result;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartChartLine *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 4) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartPlot::takeLeaderLineFormat(XlChartPlot *this, XlChartLineStyle *a2)
{
  result = *(this + 7);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 7) = a2;
  return result;
}

unsigned __int16 *extractDataFromPtgRefBuffer(unsigned __int16 *result, int *a2, int *a3)
{
  *a2 = -1;
  *a3 = -1;
  if (result)
  {
    *a2 = *result;
    *a3 = *(result + 2);
  }

  return result;
}

void OcMsoEnvelope::OcMsoEnvelope(OcMsoEnvelope *this)
{
  *this = 0;
  v2 = (this + 48);
  CsString::CsString(this + 1);
  FromRecord::FromRecord(v2);
  CsString::CsString((this + 128));
  CsString::CsString((this + 160));
  CsString::CsString((this + 184));
  OcContact::OcContact((this + 208));
  OcContact::OcContact((this + 232));
  OcContact::OcContact((this + 256));
  CsString::CsString((this + 280));
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 4) = vdup_n_s32(0x5AE980E0u);
  *(this + 3) = 1525252320;
  *(this + 38) = 1;
}

void sub_25D37E6D8(_Unwind_Exception *a1)
{
  OcContactCollection::~OcContactCollection((v1 + 256));
  OcContactCollection::~OcContactCollection((v1 + 232));
  OcContactCollection::~OcContactCollection((v1 + 208));
  CsString::~CsString((v1 + 184));
  CsString::~CsString((v1 + 160));
  CsString::~CsString((v1 + 128));
  CsString::~CsString((v1 + 96));
  CsString::~CsString((v1 + 72));
  CsString::~CsString((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t PptEnvelopeData9Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

void PptEnvelopeData9Atom::~PptEnvelopeData9Atom(PptEnvelopeData9Atom *this)
{
  *this = &unk_286EDF6B0;
  *(this + 4) = &unk_286EDF758;
  OcMsoEnvelope::~OcMsoEnvelope((this + 48));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDF6B0;
  *(this + 4) = &unk_286EDF758;
  OcMsoEnvelope::~OcMsoEnvelope((this + 48));
}

void OcMsoEnvelope::~OcMsoEnvelope(OcMsoEnvelope *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  CsString::~CsString((this + 280));
  OcContactCollection::~OcContactCollection((this + 256));
  OcContactCollection::~OcContactCollection((this + 232));
  OcContactCollection::~OcContactCollection((this + 208));
  CsString::~CsString((this + 184));
  CsString::~CsString((this + 160));
  CsString::~CsString((this + 128));
  CsString::~CsString(this + 4);
  CsString::~CsString(this + 3);
  CsString::~CsString(this + 1);
}

void OcContactCollection::~OcContactCollection(OcContact ***this)
{
  v2 = *this;
  v3 = this[1];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        OcContact::~OcContact(v2[v5]);
        MEMORY[0x25F897000]();
        (*this)[v5] = 0;
        v2 = *this;
        v3 = this[1];
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void PptExLinkAtom::PptExLinkAtom(PptExLinkAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED9790;
  *(v2 + 32) = &unk_286ED9838;
}

uint64_t PptExLinkAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExLinkAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1)) & 1;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 1 || (PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 3u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 4) || (*(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 4u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void __cxx_global_array_dtor()
{
  for (i = 0xC8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_0()
{
  for (i = 0x88u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_1()
{
  for (i = 0xD8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_2()
{
  for (i = 0xBE8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_3()
{
  for (i = 0xB8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_4()
{
  for (i = 0xB8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_5()
{
  for (i = 0x1B8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_6()
{
  for (i = 0x138u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_7()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_8()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_9()
{
  for (i = 0xBA8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_10()
{
  for (i = 0x3D8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_11()
{
  for (i = 0xB8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_12()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_13()
{
  for (i = 0x138u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_14()
{
  for (i = 0x288u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_15()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_16()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_17()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_18()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_20()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_21()
{
  for (i = 0xD8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_22()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_23()
{
  for (i = 0xA8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_24()
{
  for (i = 0x128u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_25()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_26()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_27()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_28()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_29()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_30()
{
  for (i = 0xC78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_31()
{
  for (i = 0x118u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_32()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_33()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_34()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_35()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_36()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_37()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_38()
{
  for (i = 0x88u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_39()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_40()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_41()
{
  for (i = 0x258u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_42()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_43()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_44()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_45()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_46()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_47()
{
  for (i = 0x108u; i != -8; i -= 16)
  {
  }
}

{
  for (i = 0xA8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_48()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_49()
{
  for (i = 0x358u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_50()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_51()
{
  for (i = 0xF8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_52()
{
  for (i = 0x238u; i != -8; i -= 16)
  {
  }
}

{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_53()
{
  for (i = 0x348u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_54()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

uint64_t TSUFlushableObjectInfo::TSUFlushableObjectInfo(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 8) = [a2 reloadCost];
  }

  *(a1 + 12) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 12) = [a2 flushCost];
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 1;
  return a1;
}

void std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(a1, *a2);
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(*a2 + 20);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2[4] + 20);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

uint64_t std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(uint64_t **a1, const TSUFlushableObjectInfo **a2)
{
  v3 = std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::find<TSUFlushableObjectInfo *>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}