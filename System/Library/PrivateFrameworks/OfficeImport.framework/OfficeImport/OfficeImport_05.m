void XlCellRow::init(XlCellRow *this)
{
  if (!*(this + 1))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1003;
}

void XlRowProperties::XlRowProperties(XlRowProperties *this)
{
  *this = &unk_286EC9E80;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 1;
  *(this + 21) = 0;
}

uint64_t XlBinaryReader::readRowInfo(XlBinaryReader *this, XlRowProperties *a2)
{
  XlHeader::XlHeader(&v5);
  *(a2 + 19) = 0;
  result = XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
  if (v5.var1 == 520)
  {
    operator new();
  }

  return result;
}

void XlRow::XlRow(XlRow *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFD58;
  *(v2 + 16) = 0;
  *(v2 + 21) = 0;
  *(v2 + 29) = 1;
  *(v2 + 30) = 0;
}

char *XlRowBlock::takeRow(XlRowBlock *this, XlCellRow *a2)
{
  v17 = a2;
  if (!a2)
  {
LABEL_20:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v6 = *(this + 1);
  result = *(this + 2);
  v7 = (this + 8);
  if ((&result[-v6] & 0x7FFFFFFF8) != 0 && (v8 = *(*(a2 + 1) + 8), MaxRow = XlRowBlock::getMaxRow(this), result = *(this + 2), v8 <= MaxRow))
  {
    if ((&result[-*v7] & 0x7FFFFFFF8) != 0)
    {
      v10 = 0;
      for (i = *v7; ; i += 8)
      {
        v12 = *(*v7 + v10);
        if (!v12)
        {
          goto LABEL_20;
        }

        v13 = *(*(a2 + 1) + 8);
        v14 = *(*(v12 + 8) + 8);
        if (v13 < v14)
        {
          return std::vector<XlCellRow *,ChAllocator<XlCellRow *>>::insert(v7, i, &v17);
        }

        if (v13 == v14)
        {
          break;
        }

        v10 += 8;
        if ((&result[-*v7] & 0x7FFFFFFF8) == v10)
        {
          return result;
        }
      }

      v15 = *(*a2 + 8);

      return v15(a2);
    }
  }

  else
  {
    if (result >= *(this + 3))
    {
      result = std::vector<XlCellRow *,ChAllocator<XlCellRow *>>::__emplace_back_slow_path<XlCellRow * const&>(v7, &v17);
    }

    else
    {
      *result = a2;
      result += 8;
    }

    *(this + 2) = result;
  }

  return result;
}

uint64_t XlRowBlock::getMaxRow(XlRowBlock *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2) - v1;
  if ((v2 & 0x7FFFFFFF8) == 0 || (v3 = *(v1 + 8 * ((v2 >> 3) - 1))) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return *(*(v3 + 8) + 8);
}

void XlCell::XlCell(XlCell *this)
{
  this->var0 = &unk_286ED0F48;
  *&this->var1 = -65281;
  this->var3 = -1;
  this->var4 = 0;
  this->var5 = 0.0;
  this->var6 = 0;
  this->var7 = 255;
  this->var8 = 0;
  *(&this->var8 + 7) = 0;
}

XlCell *XlBinaryReader::readCell(XlBinaryReader *this, XlCell *a2)
{
  XlHeader::XlHeader(&v12);
  XlParserVisitor::getHeader(*(this + 167), &v12, *(this + 1320));
  if (v12.var1 <= 0x200u)
  {
    if (v12.var1 > 0xBDu)
    {
      switch(v12.var1)
      {
        case 0xBE:
          v6 = *(this + 48);
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          *(this + 48) = 0;
          operator new();
        case 0xD6:
          operator new();
        case 0xFD:
          XlLabelSst::XlLabelSst(v7, &v12);
          XlLabelSst::accept(v7, *(this + 167));
          operator new();
      }

      return (*(**(this + 164) + 16))(*(this + 164), v12.var0, 1);
    }

    if (v12.var1 != 4)
    {
      if (v12.var1 != 6)
      {
        if (v12.var1 == 189)
        {
          v4 = *(this + 48);
          if (v4)
          {
            (*(*v4 + 8))(v4);
          }

          *(this + 48) = 0;
          operator new();
        }

        return (*(**(this + 164) + 16))(*(this + 164), v12.var0, 1);
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v12.var1 <= 0x204u)
  {
    if (v12.var1 == 513)
    {
      XlBlank::XlBlank(v7, &v12);
      XlBlank::accept(v7, *(this + 167));
      result = XlCell::setBlank(a2);
      goto LABEL_36;
    }

    if (v12.var1 == 515)
    {
      operator new();
    }

    if (v12.var1 != 516)
    {
      return (*(**(this + 164) + 16))(*(this + 164), v12.var0, 1);
    }

LABEL_17:
    operator new();
  }

  if (v12.var1 > 0x27Du)
  {
    if (v12.var1 == 638)
    {
      operator new();
    }

    if (v12.var1 != 1030)
    {
      return (*(**(this + 164) + 16))(*(this + 164), v12.var0, 1);
    }

    goto LABEL_24;
  }

  if (v12.var1 != 517)
  {
    if (v12.var1 != 518)
    {
      return (*(**(this + 164) + 16))(*(this + 164), v12.var0, 1);
    }

LABEL_24:
    XlBinaryReader::processFormula(this, a2, &v12);
  }

  XlBoolErr::XlBoolErr(v7, &v12);
  XlBoolErr::accept(v7, *(this + 167));
  if (v11 == 1)
  {
    result = XlCell::setError(a2, v10);
  }

  else
  {
    result = XlCell::setBoolean(a2, v10 != 0);
  }

LABEL_36:
  a2->var3 = v9;
  *&a2->var1 = v8;
  return result;
}

void XlLabelSst::XlLabelSst(XlLabelSst *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEC00;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

XlCell *XlCell::takeString(XlCell *this, XlString *a2)
{
  result = XlCell::resetContent(this);
  this->var6 = a2;
  this->var10 = 1;
  this->var4 = 16;
  return result;
}

XlCell *XlCell::resetContent(XlCell *this)
{
  v1 = this;
  this->var9 = 0;
  this->var7 = 255;
  this->var5 = 0.0;
  if (this->var10)
  {
    this = this->var6;
    if (this)
    {
      this = (*(this->var0 + 1))(this);
    }
  }

  v1->var6 = 0;
  v1->var10 = 0;
  v1->var4 = 0;
  return this;
}

char *XlRowBlock::takeCell(char *this, XlCell *a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = this;
  if (((*(this + 2) - *(this + 1)) & 0x7FFFFFFF8) == 0)
  {
    return this;
  }

  var1 = a2->var1;
  this = XlRowBlock::getMinRow(this);
  if (var1 < this)
  {
    return this;
  }

  v5 = a2->var1;
  this = XlRowBlock::getMaxRow(v2);
  if (v5 > this)
  {
    return this;
  }

  v6 = a2->var1;
  v7 = *(v2 + 18);
  if (v6 == v7)
  {
    v8 = *(v2 + 1);
    if (((*(v2 + 2) - v8) >> 3) > *(v2 + 17))
    {
      v9 = *(v8 + 8 * *(v2 + 17));
LABEL_9:

      return XlCellRow::takeCell(v9, a2);
    }

LABEL_31:
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *(v2 + 1);
  v11 = *(v2 + 2);
  if (v6 > v7)
  {
    v12 = *(v2 + 17);
    v13 = (v11 - v10) >> 3;
    if (v13 - 1 > v12)
    {
      if (v12 + 1 >= v13)
      {
        goto LABEL_31;
      }

      v9 = *(v10 + 8 * (v12 + 1));
      *(v2 + 17) = v12 + 1;
      v14 = *(*(v9 + 1) + 8);
      *(v2 + 18) = v14;
      if (v6 == v14)
      {
        goto LABEL_9;
      }
    }

    *(v2 + 34) = 0;
    goto LABEL_19;
  }

  v15 = v11 - v10;
  *(v2 + 34) = 0;
  if ((v15 & 0x7FFFFFFF8) != 0)
  {
    v13 = v15 >> 3;
LABEL_19:
    v16 = 0;
    while (1)
    {
      v17 = *(v10 + 8 * v16);
      if (!v17)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1003;
      }

      if (v6 == *(*(v17 + 8) + 8))
      {
        break;
      }

      if (v13 == ++v16)
      {
        goto LABEL_27;
      }
    }

    this = XlCellRow::takeCell(*(v10 + 8 * v16), a2);
    *(v2 + 17) = v16;
    *(v2 + 18) = *(*(v17 + 8) + 8);
    v18 = (*(v2 + 2) - *(v2 + 1)) >> 3;
    goto LABEL_26;
  }

  LODWORD(v18) = 0;
  LODWORD(v16) = 0;
LABEL_26:
  if (v16 == v18)
  {
LABEL_27:
    v19 = *(a2->var0 + 1);

    return v19(a2);
  }

  return this;
}

uint64_t XlRowBlock::getMinRow(XlRowBlock *this)
{
  v1 = *(this + 1);
  if (((*(this + 2) - v1) & 0x7FFFFFFF8) == 0 || (v2 = *v1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return *(*(v2 + 8) + 8);
}

char *XlCellRow::takeCell(XlCellRow *this, XlCell *a2)
{
  v23 = a2;
  v2 = *(this + 1);
  if ((*(v2 + 19) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    v22 = 1003;
LABEL_31:
    *exception = v22;
  }

  if (!a2 || a2->var1 != *(v2 + 8) || (var2 = a2->var2, var2 >= 256))
  {
    exception = __cxa_allocate_exception(4uLL);
    v22 = 1004;
    goto LABEL_31;
  }

  MaxColumn = XlCellRow::getMaxColumn(this);
  v9 = *(this + 2);
  v8 = *(this + 3);
  result = this + 16;
  v10 = (v8 - v9) & 0x7FFFFFFF8;
  if (var2 > MaxColumn)
  {
    v11 = a2->var2;
    v12 = *(this + 1);
    if (!v10)
    {
      *(v12 + 14) = v11;
    }

    if (v11 >= *(v12 + 16))
    {
      v13 = (v11 + 1);
      if (v13 >= 255)
      {
        LOWORD(v13) = 255;
      }

      *(v12 + 16) = v13;
    }

    if (v8 >= *(this + 4))
    {
      result = std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell * const&>(result, &v23);
      v14 = result;
    }

    else
    {
      *v8 = a2;
      v14 = (v8 + 1);
    }

    *(this + 3) = v14;
    return result;
  }

  if (!v10)
  {
    return result;
  }

  v15 = 0;
  for (i = *(this + 2); ; i += 8)
  {
    v17 = *(v9 + v15);
    if (!v17)
    {
      exception = __cxa_allocate_exception(4uLL);
      v22 = 1005;
      goto LABEL_31;
    }

    v18 = *(v17 + 10);
    v19 = a2->var2;
    if (v18 > v19)
    {
      return std::vector<XlCell *,ChAllocator<XlCell *>>::insert(result, i, &v23);
    }

    if (v18 == v19)
    {
      break;
    }

    v15 += 8;
    if (v10 == v15)
    {
      return result;
    }
  }

  v20 = *(a2->var0 + 1);

  return v20(a2);
}

uint64_t XlCellRow::getMaxColumn(XlCellRow *this)
{
  if ((*(*(this + 1) + 19) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    v7 = 1003;
    goto LABEL_9;
  }

  v1 = *(this + 2);
  v2 = *(this + 3) - v1;
  if ((v2 & 0x7FFFFFFF8) == 0)
  {
    return -1;
  }

  v3 = *(v1 + 8 * ((v2 >> 3) - 1));
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    v7 = 1005;
LABEL_9:
    *exception = v7;
  }

  return *(v3 + 10);
}

void XlBlank::XlBlank(XlBlank *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD880;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

XlCell *XlCell::setBlank(XlCell *this)
{
  result = XlCell::resetContent(this);
  this->var4 = 1;
  return result;
}

void XlMulBlank::XlMulBlank(XlMulBlank *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEE80;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMulBlank *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = *(a2 + 2) - 6;
  if (v4 > 1)
  {
    operator new[](v4 & 0xFFFFFFFE);
  }

  XlMulBlank::setCellFormats(a2, *(this + 5), v4 >> 1);
  *(this + 5) = 0;
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlMulBlank::setCellFormats(XlMulBlank *this, __int16 *a2, int a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 2) = a2;
  *(this + 6) = a3;
  return result;
}

XlCell *XlBinaryReader::processCompressed(XlBinaryReader *this, XlCell *a2)
{
  v4 = *(this + 48);
  v5 = v4[6];
  if (v5 == 189)
  {
    v13 = *(v12 + 2);
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v12;
    v15 = v12[19];
    v16 = *(this + 200);
    if (v15 < 1)
    {
      if (v15 + 0x7FFF < v16)
      {
        goto LABEL_22;
      }
    }

    else if (v16 < v15)
    {
      goto LABEL_22;
    }

    v17 = v16 - v15;
    if (*(v12 + 8) > v17)
    {
      v18 = XlRk::decode(*(v13 + 4 * v17));
      result = XlCell::setNumber(a2, v18);
      v19 = *(this + 200);
      v10 = *(this + 200);
      a2->var3 = *(*(v14 + 3) + 2 * (v19 - v15));
      a2->var1 = v14[18];
      a2->var2 = v19;
      v11 = v14[20];
      goto LABEL_16;
    }

LABEL_22:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8001;
  }

  if (v5 == 190)
  {
    v7 = v6[15];
    result = XlCell::setBlank(a2);
    v9 = *(this + 200) - v7;
    if (v9 >= 0 && v9 < *(v6 + 6))
    {
      v10 = *(this + 200);
      a2->var3 = *(*(v6 + 2) + 2 * v9);
      a2->var1 = v6[14];
      a2->var2 = v10;
      v11 = v6[16];
LABEL_16:
      if (v10 == v11)
      {
        result = *(this + 48);
        if (result)
        {
          result = (*(result->var0 + 1))(result);
        }

        *(this + 48) = 0;
        v20 = -1;
      }

      else
      {
        v20 = v10 + 1;
      }

      *(this + 200) = v20;
      return result;
    }

    goto LABEL_22;
  }

  return ChLogFunction("wrong compress type", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Reader/XlBinaryReader.cpp", 4043);
}

void XlMulBlank::~XlMulBlank(XlMulBlank *this)
{
  *this = &unk_286ECEE80;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEE80;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

void XlRk::XlRk(XlRk *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFD18;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

double XlRk::decode(XlRk *this)
{
  *&result = (this & 0xFFFFFFFC) << 32;
  if ((this & 2) != 0)
  {
    result = (this >> 2);
  }

  if (this)
  {
    return result / 100.0;
  }

  return result;
}

XlCell *XlCell::setNumber(XlCell *this, double a2)
{
  result = XlCell::resetContent(this);
  this->var4 = 8;
  this->var5 = a2;
  return result;
}

uint64_t XlParserVisitor::skipAhead(XlParserVisitor *this, XlHeader *a2, unsigned __int8 a3)
{
  if ((*(this + 20) & 0x80000000) == 0)
  {
    (*(**(this + 2) + 16))(*(this + 2));
  }

  return XlParserVisitor::getHeader(this, a2, a3);
}

uint64_t initEDRowInfo(uint64_t result, int a2)
{
  *result = -1;
  *(result + 4) = a2;
  *(result + 16) = 0;
  *(result + 8) = 0;
  *(result + 22) = 0;
  *(result + 20) = -1;
  *(result + 23) &= 0xFCu;
  return result;
}

uint64_t sizeofEDCellType(int a1, int a2)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        goto LABEL_11;
      }

      if (a1 != 5)
      {
LABEL_10:
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"unsigned int sizeofEDCellType(EDCellType, BOOL)"}];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:353 isFatal:0 description:"Invalid cell type!"];

        +[OITSUAssertionHandler logBacktraceThrottled];
        goto LABEL_11;
      }
    }

    v3 = a2 == 0;
    v4 = 12;
    v5 = 16;
    goto LABEL_13;
  }

  if (!a1)
  {
LABEL_11:
    v3 = a2 == 0;
    v4 = 8;
    v5 = 12;
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v3 = a2 == 0;
      v4 = 16;
      v5 = 20;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v3 = a2 == 0;
  v4 = 10;
  v5 = 14;
LABEL_13:
  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

unsigned int *updateRowInfoOffsetsInPackedDataForNewCell(unsigned int *result, unsigned int *a2, int a3, int a4, int a5)
{
  v8 = result;
  v9 = *result;
  v10 = a3 + 1;
  if (*result > a3 + 1 && &result[6 * *result + 6] > a2)
  {
    result = [TCMessageException raise:TCUnknownProblemMessage];
  }

  if (v9 > v10)
  {
    v12 = &v8[6 * v10 + 10];
    v13 = ~a3 + v9;
    do
    {
      v14 = *v12 + a5;
      *(v12 - 1) += a4;
      *v12 = v14;
      v12 += 6;
      --v13;
    }

    while (v13);
  }

  return result;
}

void initEDCell(int *a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v8 = sizeofEDCellType(a3, a4);
    bzero(a1, v8);
    if (a4)
    {
      v9 = 0x10000000;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | (a3 << 29) | a2;
    *a1 = v10;
    a1[1] = -1;
    if (a4 && (v10 & 0x10000000) != 0)
    {
      a1[2] = -1;
    }

    if (a3 == 3)
    {

      setStringIndexValueForEDCell(a1, -1);
    }
  }
}

_DWORD *setStringIndexValueForEDCell(_DWORD *result, int a2)
{
  if (result)
  {
    if (*result >> 29 == 3)
    {
      if ((*result & 0x10000000) != 0)
      {
        result[3] = a2;
      }

      else
      {
        result[2] = a2;
      }
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void setStringIndexValueForEDCell(EDCellHeader *, NSUInteger)"}];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:246 isFatal:0 description:"Invalid Cell Type!"];

      return +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  return result;
}

uint64_t setStyleIndexForEDCell(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 4) = a2;
  }

  return result;
}

uint64_t columnNumberForEDCell(const EDCellHeader *a1)
{
  if (a1)
  {
    return LOWORD(a1->var0);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t setNumberValueForEDCell(uint64_t result, double a2)
{
  if (result)
  {
    if (*result >> 29 == 2)
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
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void setNumberValueForEDCell(EDCellHeader *, double)", a2}];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:218 isFatal:0 description:"Invalid Cell Type!"];

      return +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  return result;
}

void XlRowBlock::~XlRowBlock(XlRowBlock *this)
{
  *this = &unk_286ED1AB0;
  XlRowBlock::reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlRowBlock::~XlRowBlock(this);

  JUMPOUT(0x25F897000);
}

void XlCellRow::~XlCellRow(XlCellRow *this)
{
  XlCellRow::~XlCellRow(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0F80;
  XlCellRow::reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void *XlCellRow::reset(void *this)
{
  v1 = this;
  v2 = this[2];
  *(this[1] + 19) = 0;
  v3 = this[3];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[2];
        v3 = v1[3];
      }

      if (v4 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v2 + 8 * v4++) = 0;
      v2 = v1[2];
      v3 = v1[3];
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[3] = v2;
  *(v1 + 10) = 0;
  return this;
}

void XlCell::~XlCell(XlCell *this)
{
  XlCell::~XlCell(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED0F48;
  XlCell::reset(this);
}

void *XlCell::reset(XlCell *this)
{
  result = XlCell::resetContent(this);
  if (this->var11)
  {
    result = this->var8;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  this->var8 = 0;
  return result;
}

void XlMulRk::XlMulRk(XlMulRk *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEEC0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMulRk *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 19) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = *(a2 + 2) - 6;
  if (v4 > 5)
  {
    operator new[](2 * (v4 / 6));
  }

  XlMulRk::setNumbers(a2, *(this + 8), *(this + 5), v4 / 6);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(a2 + 20) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlMulRk::setNumbers(XlMulRk *this, int *a2, __int16 *a3, int a4)
{
  v8 = *(this + 3);
  if (v8)
  {
    MEMORY[0x25F896FE0](v8, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8052888210);
  }

  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = a4;
  return result;
}

void XlMulRk::~XlMulRk(XlMulRk *this)
{
  *this = &unk_286ECEEC0;
  XlMulRk::setNumbers(this, 0, 0, 0);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEEC0;
  XlMulRk::setNumbers(this, 0, 0, 0);
}

_DWORD *setStyleIndexForEDRowInfo(_DWORD *result, int a2)
{
  if (result)
  {
    *result = a2;
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlNoteTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 57) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v7);
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    v4 = *(this + 163);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(this + 163) = 0;
    if (v7.var1 == 28)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

void XlSheetPresentationTable::XlSheetPresentationTable(XlSheetPresentationTable *this)
{
  *this = &unk_286ED1C00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlSheetPresentationTable *a2)
{
  XlHeader::XlHeader(&v5);
  if ((*(this + 56) & 0x80000000) != 0)
  {
    XlSheetPresentationTable::setDefault(a2);
  }

  XlSheetPresentationTable::reset(a2);
  if (*(this + 69) >= 1)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    if (v5.var1 == 237)
    {
      operator new();
    }

    *(this + 69) = -1;
  }

  (*(**(this + 164) + 16))(*(this + 164), *(this + 56), 0);
  result = XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
  while ((v5.var1 | 0x200) == 0x23E)
  {
    result = (*(**(this + 166) + 16))(*(this + 166), 49);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

uint64_t XlSheetPresentationTable::reset(XlSheetPresentationTable *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 8))(result);
    v2 = *(this + 1);
  }

  *(this + 4) = 0;
  *(this + 2) = v2;
  return result;
}

void XlSheetPresentation::XlSheetPresentation(XlSheetPresentation *this)
{
  this->var0 = &unk_286ED1BC8;
  *&this->var1 = 0u;
  *&this->var3 = 0u;
  *&this->var4[1] = 0u;
  this->var4[3] = 0;
}

void XlWindow2::XlWindow2(XlWindow2 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0CD0;
  v2[2] = 64;
  v2[3] = 0x100010100010100;
  v2[4] = 65792;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlWindow2 *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  XlWindow2::verifyVersion(a2);
  if (a2->var1.var2)
  {
    v4 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var5 = v4 & 1;
    v5 = vdup_n_s16(v4);
    v6 = vshl_u16(v5, 0xFFF5FFF6FFF7FFF8);
    v7 = *&vshl_u16((*&v5 & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    v8 = vuzp1_s8(v7, v7);
    *&a2->var6 = v8.i32[0];
    a2->var10 = (v4 & 0x20) != 0;
    a2->var11 = (v4 & 0x40) != 0;
    a2->var12 = (v4 & 0x80) != 0;
    *&a2->var13 = vuzp1_s8((*&v6 & 0xFF01FF01FF01FF01), v8).u32[0];
    a2->var17 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var18 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var2 = (*(**(this + 2) + 96))(*(this + 2));
    if (a2->var1.var0 == 18)
    {
      a2->var3 = (*(**(this + 2) + 72))(*(this + 2));
      a2->var4 = (*(**(this + 2) + 72))(*(this + 2));
      (*(**(this + 2) + 16))(*(this + 2), 4, 1);
    }

    else
    {
      *&a2->var3 = 6553700;
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

XlWindow2 *XlWindow2::verifyVersion(XlWindow2 *this)
{
  var2 = this->var1.var2;
  if (var2 <= 3)
  {
    if (!this->var1.var2)
    {
      if (this->var1.var0 == 14)
      {
        return this;
      }

      goto LABEL_16;
    }

    if (var2 != 2)
    {
      return this;
    }

LABEL_13:
    if (this->var1.var0 == 10)
    {
      return this;
    }

    goto LABEL_16;
  }

  if (var2 == 4 || var2 == 8)
  {
    goto LABEL_13;
  }

  if (var2 != 9)
  {
    return this;
  }

  var0 = this->var1.var0;
  if (var0 == 10)
  {
    v4 = 8;
    goto LABEL_18;
  }

  if (var0 == 18)
  {
    return this;
  }

  if (var0 != 14)
  {
LABEL_16:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8003;
  }

  v4 = 0;
LABEL_18:
  this->var1.var2 = v4;
  return this;
}

uint64_t XlChartPlot::take3D(XlChartPlot *this, XlChart3D *a2)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1) = a2;
  return result;
}

void XlSelection::XlSelection(XlSelection *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFF58;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 38) = 0;
  *(v2 + 48) = 3;
  *(v2 + 52) = 1;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSelection *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 21) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 22) = (*(**(this + 2) + 72))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRef *a2)
{
  a2->var0 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var1 = (*(**(this + 2) + 72))(*(this + 2));
  v4 = **(this + 2);
  if (a2->var4)
  {
    a2->var2 = (*(v4 + 64))();
    result = (*(**(this + 2) + 64))(*(this + 2));
  }

  else
  {
    a2->var2 = (*(v4 + 72))();
    result = (*(**(this + 2) + 72))(*(this + 2));
  }

  a2->var3 = result;
  return result;
}

void *XlLabelRanges::appendRowLabelRange(XlLabelRanges *this, XlRef *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 3);
  if (v3 >= *(this + 4))
  {
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 2, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

XlSheetPresentation *XlSheetPresentation::takeSelection(XlSheetPresentation *this, XlSelection *a2)
{
  if (a2)
  {
    v3 = *(a2 + 12);
    v4 = 8 * v3 + 32;
    if (v3 >= 3)
    {
      v4 = 56;
    }

    v5 = *(&this->var0 + v4);
    if (v5)
    {
      if (((*(a2 + 6) - *(a2 + 4)) >> 3) >= 1)
      {
        v6 = 0;
        do
        {
          MergeRegion = XlMerge::getMergeRegion(a2, v6);
          XlLabelRanges::appendRowLabelRange(v5, MergeRegion);
          ++v6;
        }

        while (v6 < ((*(a2 + 6) - *(a2 + 4)) >> 3));
      }

      *(a2 + 52) = 0;
      v8 = *(*a2 + 8);

      return v8(a2);
    }

    else if (v3 == 2)
    {
      this->var4[2] = a2;
    }

    else if (v3 == 1)
    {
      this->var4[1] = a2;
    }

    else if (v3)
    {
      this->var4[3] = a2;
    }

    else
    {
      this->var4[0] = a2;
    }
  }

  return this;
}

void *XlSheetPresentationTable::appendSheetPresentationr(XlSheetPresentationTable *this, XlSheetPresentation *a2)
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
    result = std::vector<XlSheetPresentation *,ChAllocator<XlSheetPresentation *>>::__emplace_back_slow_path<XlSheetPresentation * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void XlSheetPresentationTable::~XlSheetPresentationTable(XlSheetPresentationTable *this)
{
  *this = &unk_286ED1C00;
  XlSheetPresentationTable::reset(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlSheetPresentationTable::~XlSheetPresentationTable(this);

  JUMPOUT(0x25F897000);
}

void XlSheetPresentation::~XlSheetPresentation(XlSheetPresentation *this)
{
  this->var0 = &unk_286ED1BC8;
  XlSheetPresentation::reset(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED1BC8;
  XlSheetPresentation::reset(this);
}

XlSelection *XlSheetPresentation::reset(XlSheetPresentation *this)
{
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  v5 = 0;
  this->var2 = 0;
  var4 = this->var4;
  do
  {
    result = var4[v5];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    var4[v5++] = 0;
  }

  while (v5 != 4);
  return result;
}

void XlSelection::~XlSelection(XlSelection *this)
{
  XlSelection::~XlSelection(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECFF58;
  if (*(this + 52) != 1)
  {
    v2 = *(this + 2);
    *(this + 3) = v2;
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  XlSelection::clearSelectionAreas(this);
  v2 = *(this + 2);
  if (v2)
  {
LABEL_5:
    *(this + 3) = v2;
    operator delete(v2);
  }
}

XlSelection *XlSelection::clearSelectionAreas(XlSelection *this)
{
  v1 = this;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
        v2 = *(v1 + 2);
        v3 = *(v1 + 3);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 3) = v2;
  return this;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlMergeTable *a2)
{
  result = XlMergeTable::setDefault(a2);
  v4 = *(this + 37);
  if (((*(this + 38) - v4) & 0x3FFFFFFFCLL) != 0)
  {
    (*(**(this + 164) + 16))(*(this + 164), *v4, 0);
    XlHeader::XlHeader(&v5);
    XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v5.var1 == 229)
    {
      operator new();
    }
  }

  return result;
}

uint64_t XlMergeTable::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
        v2 = *(v1 + 8);
        v3 = *(v1 + 16);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 16) = v2;
  return this;
}

void XlMergeTable::~XlMergeTable(XlMergeTable *this)
{
  *this = &unk_286ED1800;
  XlMergeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlMergeTable::~XlMergeTable(this);

  JUMPOUT(0x25F897000);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlConditionalFormatTable *a2)
{
  result = XlConditionalFormatTable::clear(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 65) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v4);
    XlParserVisitor::getHeader(*(this + 167), &v4, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v4.var1 == 432)
    {
      operator new();
    }

    *(this + 65) = -1;
  }

  return result;
}

void XlConditionalFormatTable::~XlConditionalFormatTable(XlConditionalFormatTable *this)
{
  *this = &unk_286ED10A0;
  XlConditionalFormatTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlConditionalFormatTable::~XlConditionalFormatTable(this);

  JUMPOUT(0x25F897000);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlHyperlinkTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 64) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v4);
    XlParserVisitor::getHeader(*(this + 167), &v4, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v4.var1 == 440)
    {
      operator new();
    }

    *(this + 64) = -1;
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlCustomViewTable *a2)
{
  result = XlConditionalFormatTable::clear(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 66) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v5);
    XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v5.var1 == 426)
    {
      (*(**(this + 166) + 16))(*(this + 166), 15);
      XlRecordFactory::createRecord(&v5, v4);
    }

    *(this + 66) = -1;
  }

  return result;
}

void sub_25D31CAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void XlScenarioTable::XlScenarioTable(XlScenarioTable *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286ED1AE8;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlScenarioTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v4);
    XlParserVisitor::getHeader(*(this + 167), &v4, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v4.var1 == 174)
    {
      operator new();
    }

    *(this + 63) = -1;
  }

  return result;
}

void sub_25D31CEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

void XlDataValidityTable::XlDataValidityTable(XlDataValidityTable *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_286ED1148;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlDataValidityTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 60) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v4);
    XlParserVisitor::getHeader(*(this + 167), &v4, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v4.var1 == 434)
    {
      operator new();
    }

    *(this + 60) = -1;
  }

  return result;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlSortInfo *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  return XlSortInfo::operator=(a2, this + 664);
}

uint64_t XlSortInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 14) = *(a2 + 14);
    OcText::operator=(a1 + 16, a2 + 16);
    OcText::operator=(a1 + 64, a2 + 64);
    OcText::operator=(a1 + 112, a2 + 112);
  }

  return a1;
}

void XlSortInfo::~XlSortInfo(XlSortInfo *this)
{
  *this = &unk_286ED1C38;
  v2 = (this + 16);
  OcText::~OcText((this + 112));
  OcText::~OcText((this + 64));
  OcText::~OcText(v2);
}

{
  XlSortInfo::~XlSortInfo(this);

  JUMPOUT(0x25F897000);
}

void XlDataValidityTable::~XlDataValidityTable(void **this)
{
  *this = &unk_286ED1148;
  XlConditionalFormat::reset(this);
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  XlDataValidityTable::~XlDataValidityTable(this);

  JUMPOUT(0x25F897000);
}

void *XlConditionalFormat::reset(XlConditionalFormat *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;

  return CsSimpleHeapVector<XlRecord>::clear(this + 1);
}

void XlScenarioTable::~XlScenarioTable(XlScenarioTable *this)
{
  *this = &unk_286ED1AE8;
  v2 = (this + 8);
  CsSimpleHeapVector<XlRecord>::clear(this + 1);
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(v2);
}

{
  XlScenarioTable::~XlScenarioTable(this);

  JUMPOUT(0x25F897000);
}

void XlCustomViewTable::~XlCustomViewTable(XlCustomViewTable *this)
{
  *this = &unk_286ED10D8;
  XlConditionalFormatTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlCustomViewTable::~XlCustomViewTable(this);

  JUMPOUT(0x25F897000);
}

void XlBinaryReader::read(XlBinaryReader *this, XlSheetBackgroundInfo *a2)
{
  v3.n128_f64[0] = XlSheetBackgroundInfo::clear(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 59) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164), v3);
    XlHeader::XlHeader(&v5);
    XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    v4 = *(this + 163);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(this + 163) = 0;
    if (v5.var1 == 233)
    {
      operator new();
    }

    *(this + 59) = -1;
  }
}

double XlSheetBackgroundInfo::clear(XlSheetBackgroundInfo *this)
{
  result = 0.0;
  *(this + 8) = xmmword_25D700320;
  return result;
}

double XlBinaryReader::read(XlBinaryReader *this, XlWorksheetProtection *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  *&result = XlWorksheetProtection::operator=(a2, this + 600).n128_u64[0];
  return result;
}

__n128 XlWorksheetProtection::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 26) = *(a2 + 26);
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
  }

  return result;
}

void XlSheetInfoTable::~XlSheetInfoTable(XlSheetInfoTable *this)
{
  XlSheetInfoTable::~XlSheetInfoTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED1B90;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

void XlBoundSheet::~XlBoundSheet(XlBoundSheet *this)
{
  *this = &unk_286ECD9C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECD9C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlLinkTable::~XlLinkTable(XlLinkTable *this)
{
  XlLinkTable::~XlLinkTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED17C8;
  v2 = (this + 8);
  XlLinkLookupTable::clearLookupTable(this + 8);
  XlLinkTable::clearLinkTable(this);
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  XlLinkLookupTable::~XlLinkLookupTable(v2);
}

void XlLinkLookupTable::~XlLinkLookupTable(XlLinkLookupTable *this)
{
  *this = &unk_286ED1758;
  XlLinkLookupTable::clearLookupTable(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  XlLinkLookupTable::~XlLinkLookupTable(this);

  JUMPOUT(0x25F897000);
}

void XlNameTable::~XlNameTable(void **this)
{
  XlNameTable::~XlNameTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC9E48;
  for (i = 82; i != -2; i -= 6)
  {
    OcText::~OcText(&this[i]);
  }

  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

void XlFormulaProcessor::~XlFormulaProcessor(XlFormulaProcessor *this)
{
  XlFormulaProcessor::~XlFormulaProcessor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED2738;
  v2 = *(this + 1);
  if (v2)
  {
    XlFormulaParser::~XlFormulaParser(v2);
    MEMORY[0x25F897000]();
  }

  *(this + 1) = 0;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80BDFB0063);
  }

  *(this + 18) = 0;
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 2) = 0;
  v5 = *(this + 19);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(this + 19) = 0;
  v6 = *(this + 18);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(this + 3);
      v9 = *(v8 + 8 * i);
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v8 = *(this + 3);
        v6 = *(this + 18);
      }

      *(v8 + 8 * i) = 0;
    }
  }

  v10 = *(this + 3);
  *(this + 4) = v10;
  if (v10)
  {
    operator delete(v10);
  }
}

void XlFormulaParser::~XlFormulaParser(XlPtg **this)
{
  v2 = *this;
  if (v2)
  {
    (*(v2->var0 + 19))(v2, 0);
    if (*this)
    {
      (*((*this)->var0 + 1))(*this);
    }

    *this = 0;
  }

  v3 = this[5];
  if (v3)
  {
    XlPtg::~XlPtg(v3);
    MEMORY[0x25F897000]();
  }

  this[5] = 0;
  ChStack<XlPtg *>::~ChStack(this + 1);
}

uint64_t *ChStack<XlPtg *>::~ChStack(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x20C8093837F09);
  }

  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x20C8093837F09);
  }

  *a1 = 0;
  a1[1] = 0;
  *(a1 + 6) = 0;
  a1[2] = 0;
  return a1;
}

_DWORD *typeForEDCell(_DWORD *result)
{
  if (result)
  {
    return (*result >> 29);
  }

  return result;
}

id stringValueForEDCell(const EDCellHeader *a1, EDResources *a2)
{
  v3 = a2;
  v4 = stringIndexValueForEDCell(a1);
  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(EDResources *)v3 strings];
    v6 = [v5 objectAtIndex:v4];
  }

  return v6;
}

uint64_t stringIndexValueForEDCell(const EDCellHeader *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (a1->var0 >> 29 != 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSUInteger stringIndexValueForEDCell(const EDCellHeader *)"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:233 isFatal:0 description:"Invalid Cell Type!"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    return -1;
  }

  v1 = 12;
  if ((a1->var0 & 0x10000000) == 0)
  {
    v1 = 8;
  }

  v2 = *(&a1->var0 + v1);
  if (v2 == -1)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

void sub_25D31E684(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

const EDCellHeader *styleForEDCell(EDCellHeader *a1, EDResources *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [(EDResources *)v3 styles];
    v6 = v5;
    if (a1->var1 == -1)
    {
      var1 = -1;
    }

    else
    {
      var1 = a1->var1;
    }

    a1 = [v5 objectAtIndex:var1];
  }

  return a1;
}

double numberValueForEDCell(const EDCellHeader *a1)
{
  v1 = 0.0;
  if (a1)
  {
    if (a1->var0 >> 29 == 2)
    {
      if ((a1->var0 & 0x10000000) != 0)
      {
        return *&a1[1].var1;
      }

      else
      {
        return *&a1[1];
      }
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double numberValueForEDCell(const EDCellHeader *)"];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:205 isFatal:0 description:"Invalid Cell Type!"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  return v1;
}

void sub_25D31F32C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_25D31F780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EDWorkbook;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D31F994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EDRowBlocks;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D31FA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EDRowBlock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D31FC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EDSheet;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void XlChartObjectFactory::~XlChartObjectFactory(XlObjectFactory *this)
{
  XlObjectFactory::~XlObjectFactory(this);

  JUMPOUT(0x25F897000);
}

void XlObjectFactory::~XlObjectFactory(XlObjectFactory *this)
{
  this->var0 = &unk_286ED1838;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;
}

{
  this->var0 = &unk_286ED1838;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;
}

{
  this->var0 = &unk_286ED1838;
  var1 = this->var1;
  if (var1)
  {
    (*(var1->var0 + 1))(var1);
  }

  this->var1 = 0;

  JUMPOUT(0x25F897000);
}

void XlChartBinaryReader::~XlChartBinaryReader(XlChartBinaryReader *this)
{
  OcReader::~OcReader(v1 + 125);

  JUMPOUT(0x25F897000);
}

{
  OcReader::~OcReader(v1 + 125);
}

void XlChartBinaryReader::~XlChartBinaryReader(XlChartBinaryReader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + 1) = &unk_286ECC768;
  *(this + 2) = a2[6];
  *(this + *(v4 - 24)) = a2[7];
  v5 = *(this + 246);
  if (v5)
  {
    *(this + 247) = v5;
    operator delete(v5);
  }

  v6 = *(this + 243);
  if (v6)
  {
    *(this + 244) = v6;
    operator delete(v6);
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1904, *(this + 239));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1880, *(this + 236));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1848, *(this + 232));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1824, *(this + 229));
  v7 = *(this + 225);
  if (v7)
  {
    *(this + 226) = v7;
    operator delete(v7);
  }

  v8 = *(this + 222);
  if (v8)
  {
    *(this + 223) = v8;
    operator delete(v8);
  }

  v9 = *(this + 217);
  if (v9)
  {
    *(this + 218) = v9;
    operator delete(v9);
  }

  v10 = *(this + 210);
  if (v10)
  {
    *(this + 211) = v10;
    operator delete(v10);
  }

  v11 = *(this + 202);
  if (v11)
  {
    *(this + 203) = v11;
    operator delete(v11);
  }

  *(this + 172) = &unk_286ECD440;
  XlCellTableInfo::~XlCellTableInfo((this + 1512));
  XlPageProperties::~XlPageProperties((this + 1400));
  v12 = *(this + 169);
  if (v12)
  {
    *(this + 170) = v12;
    operator delete(v12);
  }

  XlBinaryReader::~XlBinaryReader(this, a2 + 1);
}

void XlBinaryReader::~XlBinaryReader(XlBinaryReader *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = &unk_286ED2A40;
  *(this + 2) = a2[3];
  *(this + *(v3 - 24)) = a2[4];
  v4 = *(this + 164);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 164) = 0;
  if (v5)
  {
    SsrwOORootStorage::~SsrwOORootStorage(v5);
    MEMORY[0x25F897000]();
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v6 = *(this + 167);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 167) = 0;
  v7 = *(this + 163);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 163) = 0;
  v8 = *(this + 19);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 19) = 0;
  v9 = *(this + 20);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 20) = 0;
  v10 = *(this + 46);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 46) = 0;
  v11 = *(this + 47);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 47) = 0;
  v12 = *(this + 48);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 48) = 0;
  v13 = *(this + 52);
  v14 = *(this + 53);
  if (((v14 - v13) & 0x7FFFFFFF8) != 0)
  {
    v15 = 0;
    do
    {
      v16 = *(v13 + 8 * v15);
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v13 = *(this + 52);
        v14 = *(this + 53);
      }

      ++v15;
    }

    while (v15 < ((v14 - v13) >> 3));
  }

  *(this + 53) = v13;
  *(this + 38) = *(this + 37);
  *(this + 41) = *(this + 40);
  *(this + 44) = *(this + 43);
  *(this + 142) = &unk_286ECD440;
  XlCellTableInfo::~XlCellTableInfo((this + 1272));
  XlPageProperties::~XlPageProperties((this + 1160));
  XlDocumentProperties::~XlDocumentProperties((this + 1016));
  XlFileProtection::~XlFileProtection((this + 864));
  XlSortInfo::~XlSortInfo((this + 664));
  XlCalculationProperties::~XlCalculationProperties((this + 632));
  XlWorksheetProperties::~XlWorksheetProperties((this + 456));
  v17 = *(this + 52);
  if (v17)
  {
    *(this + 53) = v17;
    operator delete(v17);
  }

  v18 = *(this + 43);
  if (v18)
  {
    *(this + 44) = v18;
    operator delete(v18);
  }

  v19 = *(this + 40);
  if (v19)
  {
    *(this + 41) = v19;
    operator delete(v19);
  }

  v20 = *(this + 37);
  if (v20)
  {
    *(this + 38) = v20;
    operator delete(v20);
  }

  XlEshBinaryReader::~XlEshBinaryReader((this + 40));
}

void XlChartParserVisitor::~XlChartParserVisitor(XlChartParserVisitor *this)
{
  XlParserVisitor::~XlParserVisitor(this);

  JUMPOUT(0x25F897000);
}

void XlParserVisitor::~XlParserVisitor(XlParserVisitor *this)
{
  *this = &unk_286ED1D70;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80BDFB0063);
  }

  *(this + 5) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C80BDFB0063);
  }

  *(this + 6) = 0;
  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8052888210);
  }

  *(this + 7) = 0;
  v6 = *(this + 8);
  if (v6)
  {
    MEMORY[0x25F896FE0](v6, 0x1000C8052888210);
  }

  *(this + 8) = 0;
  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 4) = 0;
  TSURectWithOriginAndSize(this + 8);
}

{
  XlParserVisitor::~XlParserVisitor(this);

  JUMPOUT(0x25F897000);
}

void XlStringExtractor::~XlStringExtractor(XlStringExtractor *this)
{
  XlStringExtractor::~XlStringExtractor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3470;
  XlStringExtractor::reset(this);
  XlString::~XlString((this + 32));
  TSURectWithOriginAndSize(this + 8);
}

uint64_t XlStringExtractor::reset(XlStringExtractor *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 17) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    v6 = *(v3 - 8);
    v5 = v3 - 8;
    v4 = v6;
    if (v6)
    {
      v7 = 16 * v4;
      do
      {
        v8 = *(v5 + v7);
        if (v8)
        {
          MEMORY[0x25F896FE0](v8, 0x1000C8052888210);
        }

        *(v5 + v7) = 0;
        v7 -= 16;
      }

      while (v7);
    }

    MEMORY[0x25F896FE0](v5 - 8, 0x1010C8057418832);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 156) = 0;
  *(this + 148) = 0;

  return XlString::reset((this + 32));
}

void XlIndex::~XlIndex(XlIndex *this)
{
  *this = &unk_286ECEA80;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEA80;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  *(this + 8) = 0;
}

void XlFileProtection::~XlFileProtection(XlFileProtection *this)
{
  *this = &unk_286ED1638;
  v2 = *(this + 15);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
    *(this + 15) = 0;
  }

  v3 = *(this + 17);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 17) = 0;
  OcText::~OcText((this + 64));
  OcText::~OcText((this + 16));
}

{
  XlFileProtection::~XlFileProtection(this);

  JUMPOUT(0x25F897000);
}

void XlEshBinaryReader::~XlEshBinaryReader(XlEshBinaryReader *this)
{
  v2 = &unk_286ED3258;
  *this = &unk_286ED3258;
  v3 = *(this + 13);
  if (v3)
  {
    XlReadStgStream::finish(v3);
    v2 = *this;
  }

  *(this + 24) = 0;
  v2[3](this);
  v4 = *(this + 13);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 13) = 0;

  EshBinaryReader::~EshBinaryReader(this);
}

{
  XlEshBinaryReader::~XlEshBinaryReader(this);

  JUMPOUT(0x25F897000);
}

void sub_25D3208C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMNumberFormatter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void XlCodeName::XlCodeName(XlCodeName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDB00;
  v2[2] = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlCodeName *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlCodeName::~XlCodeName(XlCodeName *this)
{
  *this = &unk_286ECDB00;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECDB00;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlLink::XlLink(XlLink *this)
{
  *this = &unk_286ED1720;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  XlLinkOperandTable::XlLinkOperandTable((this + 80));
}

void sub_25D320BA4(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void XlLinkOperandTable::XlLinkOperandTable(XlLinkOperandTable *this)
{
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *this = &unk_286ED1790;
  *(this + 32) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlLink *a2)
{
  XlHeader::XlHeader(&v5);
  result = XlLink::clear(a2);
  if ((*(this + 45) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    *(this + 22) = -1;
    if (v5.var1 == 430)
    {
      operator new();
    }

    result = (*(**(this + 164) + 16))(*(this + 164), 4294967292, 1);
    if (v5.var1 == 430)
    {
      result = (*(**(this + 164) + 40))(*(this + 164));
      *(this + 45) = result;
    }
  }

  return result;
}

void *XlLink::clear(XlLink *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  XlLink::clearTabNames(this);
  XlLink::clearExternNames(this);
  result = CsSimpleHeapVector<XlRecord>::clear(this + 11);
  *(this + 6) = 0;
  return result;
}

void *XlLink::clearTabNames(void *this)
{
  v1 = this;
  v2 = this[4];
  if (((this[5] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[4];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[4];
    }

    while (v3 < ((v1[5] - v2) >> 3));
  }

  v1[5] = v2;
  return this;
}

void *XlLink::clearExternNames(void *this)
{
  v1 = this;
  v2 = this[7];
  if (((this[8] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[7];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[7];
    }

    while (v3 < ((v1[8] - v2) >> 3));
  }

  v1[8] = v2;
  return this;
}

void XlSupBook::XlSupBook(XlSupBook *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0250;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 46) = 0;
  *(v2 + 54) = 257;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSupBook *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 14) <= 8u)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8003;
  }

  *(a2 + 26) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = *(a2 + 2);
  if (v4 == 4)
  {
    if ((*(**(this + 2) + 80))(*(this + 2)) == 1025)
    {
      v5 = 2;
    }

    else
    {
      v5 = 4;
    }

    *(a2 + 12) = v5;
  }

  else if ((v4 - 2) >= 4)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

XlString *XlDXfFont::setName(XlDXfFont *this, XlString *a2)
{
  result = this->var1;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var1 = a2;
  return result;
}

void XlSupBook::~XlSupBook(XlSupBook *this)
{
  XlSupBook::~XlSupBook(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0250;
  XlSupBook::clearTabNames(this);
  if (*(this + 55) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t XlSupBook::clearTabNames(uint64_t this)
{
  v1 = this;
  if (*(this + 54))
  {
    v2 = *(this + 24);
    if (((*(this + 32) - v2) & 0x7FFFFFFF8) != 0)
    {
      v3 = 0;
      do
      {
        this = *(v2 + 8 * v3);
        if (this)
        {
          this = (*(*this + 8))(this);
          v2 = *(v1 + 24);
        }

        *(v2 + 8 * v3++) = 0;
        v2 = *(v1 + 24);
      }

      while (v3 < ((*(v1 + 32) - v2) >> 3));
    }
  }

  else
  {
    v2 = *(this + 24);
  }

  *(v1 + 32) = v2;
  return this;
}

void *XlLinkTable::appendLink(XlLinkTable *this, XlLink *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 7);
  if (v3 >= *(this + 8))
  {
    result = std::vector<XlLink *,ChAllocator<XlLink *>>::__emplace_back_slow_path<XlLink * const&>(this + 6, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 7) = result;
  return result;
}

void XlExternSheet::XlExternSheet(XlExternSheet *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE440;
  *(v2 + 16) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlExternSheet *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 14) <= 8u)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8003;
  }

  if ((*(**(this + 2) + 80))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlExternSheet::appendExternRef(void *a1, uint64_t a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = std::vector<XlXti *,ChAllocator<XlXti *>>::__emplace_back_slow_path<XlXti * const&>(a1 + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = (v3 + 1);
  }

  a1[4] = result;
  return result;
}

uint64_t XlLinkLookupTable::appendExternRef(void *a1, uint64_t a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = a1[3];
  if (v3 >= a1[4])
  {
    result = std::vector<XlXti *,ChAllocator<XlXti *>>::__emplace_back_slow_path<XlXti * const&>(a1 + 2, &v6);
  }

  else
  {
    *v3 = a2;
    result = (v3 + 1);
  }

  a1[3] = result;
  return result;
}

void XlExternSheet::~XlExternSheet(XlExternSheet *this)
{
  XlExternSheet::~XlExternSheet(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE440;
  XlExternSheet::clearExternRefTable(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t XlExternSheet::clearExternRefTable(uint64_t this)
{
  v1 = this;
  if (*(this + 16))
  {
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
          this = MEMORY[0x25F897000](this, 0x1000C40274DC3F3);
          v2 = *(v1 + 24);
          v3 = *(v1 + 32);
        }

        ++v4;
      }

      while (v4 < ((v3 - v2) >> 3));
    }
  }

  else
  {
    v2 = *(this + 24);
  }

  *(v1 + 32) = v2;
  return this;
}

void XlName::XlName(XlName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEF00;
  *(v2 + 84) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlName *a2)
{
  v4 = a2->var1.var0 + (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var14 = v5 & 1;
  v6 = *&vshl_u16((*&vdup_n_s16(v5) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *&a2->var15 = vuzp1_s8(v6, v6).u32[0];
  a2->var20 = (v5 & 0x1000) != 0;
  a2->var19 = (v5 & 0x20) != 0;
  a2->var13 = (v5 >> 6) & 0x3F;
  a2->var12 = (*(**(this + 2) + 64))(*(this + 2));
  v7 = (*(**(this + 2) + 64))(*(this + 2));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  a2->var9 = (*(**(this + 2) + 72))(*(this + 2));
  if (a2->var1.var2 >= 5u)
  {
    a2->var10 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var11 = (*(**(this + 2) + 72))(*(this + 2));
    v8 = (*(**(this + 2) + 64))(*(this + 2));
    v9 = (*(**(this + 2) + 64))(*(this + 2));
    v10 = (*(**(this + 2) + 64))(*(this + 2));
    v11 = (*(**(this + 2) + 64))(*(this + 2));
  }

  if (a2->var19)
  {
    if (a2->var1.var2 >= 9u)
    {
      (*(**(this + 2) + 16))(*(this + 2), 1, 1);
    }

    a2->var21 = (*(**(this + 2) + 64))(*(this + 2));
    (*(**(this + 2) + 16))(*(this + 2), (v7 - 1), 1);
  }

  else if (v7)
  {
    if (a2->var1.var2 >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
      operator new();
    }

    operator new[]((v7 + 1));
  }

  if (a2->var1.var2 >= 5u)
  {
    var9 = a2->var9;
    if (a2->var9)
    {
      if (!v8 && !v9 && !v10 && !v11)
      {
        var9 = v4 - (*(**(this + 2) + 40))(*(this + 2));
      }

      operator new[](var9);
    }

    if (v8)
    {
      if (a2->var1.var2 >= 9u)
      {
        (*(**(this + 2) + 64))(*(this + 2));
        operator new();
      }

      operator new[]((v8 + 1));
    }

    if (v9)
    {
      if (a2->var1.var2 >= 9u)
      {
        (*(**(this + 2) + 64))(*(this + 2));
        operator new();
      }

      operator new[]((v9 + 1));
    }

    if (v10)
    {
      if (a2->var1.var2 >= 9u)
      {
        (*(**(this + 2) + 64))(*(this + 2));
        operator new();
      }

      operator new[]((v10 + 1));
    }

    if (v11)
    {
      if (a2->var1.var2 >= 9u)
      {
        (*(**(this + 2) + 64))(*(this + 2));
        operator new();
      }

      operator new[]((v11 + 1));
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

char *XlName::setFormula(XlName *this, char *a2, signed __int16 a3)
{
  result = this->var7;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  this->var7 = a2;
  this->var8 = a3;
  return result;
}

uint64_t XlMerge::getMergeRegion(XlMerge *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (((*(this + 3) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

uint64_t XlLinkTable::getLink(XlLinkTable *this, unsigned int a2)
{
  v2 = *(this + 6);
  if (((*(this + 7) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

void XlNameTable::getName(XlNameTable *this@<X0>, unsigned int a2@<W1>, OcText *a3@<X8>)
{
  v4 = *(this + 1);
  if (((*(this + 2) - v4) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(v4 + 8 * a2);
  if (*(v5 + 79) == 1)
  {
    v6 = *(v5 + 84);
    if (v6 >= 0xE)
    {
      ChLogFunction("built in name index does not exist", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/ObjectModel/XlNameTable.cpp", 20);
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1003;
    }

    v7 = this + 48 * *(v5 + 84);
    if (!*(v7 + 10))
    {
      BuiltIn = XlNameTable::getBuiltIn(this, v6);
      v9 = strlen(BuiltIn);
      OcText::setBuffer((v7 + 32), BuiltIn, v9 + 1);
      *(v7 + 12) = v9;
      *(v7 + 10) = 1252;
    }

    v10 = (v7 + 32);
    goto LABEL_9;
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    v10 = (v11 + 8);
LABEL_9:

    OcText::OcText(a3, v10);
    return;
  }

  OcText::OcText(a3);
}

void OcText::OcText(OcText *this, const OcText *a2)
{
  this->var0 = &unk_286EC8C60;
  v3 = *&a2->var1;
  *&this->var1 = v3;
  var3 = a2->var3;
  this->var3 = var3;
  HIDWORD(this->var6) = 0;
  *&this->var4 = 0;
  *(&this->var5 + 4) = 0;
  this->var7 = 1;
  if (var3)
  {
    var5 = a2->var5;
    isSingleByteEncoding = OcText::isSingleByteEncoding(v3);
    OcText::copyBuffer(this, var5, var3 << (isSingleByteEncoding ^ 1));
  }
}

void XlFormulaParser::setFormula(SsrwOOStream *this, void **a2, int a3, void **a4)
{
  var0 = this->var0;
  if (var0)
  {
    (*(*var0 + 19))(var0, 0);
    if (this->var0)
    {
      (*(*this->var0 + 1))(this->var0);
    }

    this->var0 = 0;
  }

  this[6].var0 = a2;
  LOBYTE(this[10].var0) = 0;
  if (a2)
  {
    LODWORD(this[7].var0) = a4;
    HIDWORD(this[7].var0) = a3;
    SsrwOOStream::openMemStreamForReading(this + 6, a4);
  }

  this[7].var0 = 0xFFFFFFFF00000000;
  XlFormulaParser::reset(this);
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

uint64_t XlFormulaParser::reset(XlFormulaParser *this)
{
  if (*(this + 6))
  {
    do
    {
      v2 = *ChStack<XlPtg *>::top(this + 8);
      if (v2)
      {
        XlPtg::~XlPtg(v2);
        MEMORY[0x25F897000]();
      }

      *ChStack<XlPtg *>::top(this + 8) = 0;
      v3 = *(this + 6) - 1;
      *(this + 6) = v3;
    }

    while (v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    XlPtg::~XlPtg(v4);
    MEMORY[0x25F897000]();
  }

  *(this + 5) = 0;
  *(this + 16) = *(this + 15);
  result = (*(**this + 16))(*this, 0, 0);
  *(this + 19) = 0;
  *(this + 82) = 0;
  return result;
}

uint64_t XlFormulaProcessor::startTokenEnum(XlFormulaParser **this)
{
  result = XlFormulaParser::reset(this[1]);
  *(this[1] + 81) = 0;
  return result;
}

XlPtg *XlFormulaParser::nextToken(XlFormulaParser *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    if (XlFormulaParser::processNextPtg(this))
    {
      return 0;
    }

    v2 = *(this + 6);
  }

  v6 = 0;
  if (v2 >= 2)
  {
    operator new();
  }

  v3 = ChStack<XlPtg *>::top(this + 8);
  ChAutoPtr<XlPtg>::setValue(&v6, *v3);
  --*(this + 6);
  v4 = v6;
  v6 = 0;
  ChAutoPtr<XlPtg>::~ChAutoPtr(&v6);
  return v4;
}

void sub_25D322CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, XlPtg *a10)
{
  ChAutoPtr<ChStack<XlPtg *>>::~ChAutoPtr(&a9);
  ChAutoPtr<XlPtg>::~ChAutoPtr(&a10);
  _Unwind_Resume(a1);
}

uint64_t XlFormulaParser::processNextPtg(XlFormulaParser *this)
{
  v3 = 0;
  while (2)
  {
    *(this + 5) = 0;
    v4 = (this + 40);
    *(this + 19) = (*(**this + 40))();
    if (!*this || !(*(**this + 176))(*this) || (v5 = *(this + 19), v5 >= *(this + 15)) || v5 > *(this + 16))
    {
LABEL_16:
      v9 = 1;
      goto LABEL_61;
    }

    v6 = *this;
LABEL_7:
    if (!(*(*v6 + 176))(v6))
    {
LABEL_58:
      if (*v4)
      {
        ChStack<XlPtg *>::push(this + 8, v4);
        v9 = 0;
        *v4 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_61;
    }

    v7 = (*(**this + 64))();
    v8 = 6;
    switch(v7)
    {
      case 0:
        goto LABEL_16;
      case 1:
      case 2:
        operator new();
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
        operator new();
      case 21:
        operator new();
      case 22:
        operator new();
      case 23:
        operator new();
      case 24:
        v10 = (*(**this + 64))(*this, 6);
        v9 = 3001;
        if (v10 <= 10)
        {
          if ((v10 - 1) >= 3 && (v10 - 6) >= 2 && v10 != 10)
          {
            goto LABEL_61;
          }

LABEL_57:
          operator new();
        }

        if (v10 > 15)
        {
          if (v10 != 16 && v10 != 29)
          {
            goto LABEL_61;
          }

          goto LABEL_57;
        }

        if ((v10 - 12) < 4 || v10 == 11)
        {
          goto LABEL_57;
        }

LABEL_61:
        if (v3)
        {
          return v1;
        }

        return v9;
      case 25:
        operator new();
      case 26:
        operator new();
      case 27:
        operator new();
      case 28:
        operator new();
      case 29:
        operator new();
      case 30:
        operator new();
      case 31:
        operator new();
      case 32:
      case 64:
      case 96:
        operator new();
      case 33:
      case 65:
      case 97:
        operator new();
      case 34:
      case 66:
      case 98:
        operator new();
      case 35:
      case 67:
      case 99:
        operator new();
      case 36:
      case 68:
      case 100:
        operator new();
      case 37:
      case 69:
      case 101:
        XlFormulaParser::readPtgArea();
      case 38:
      case 70:
      case 102:
        if ((*(this + 82) & 1) == 0)
        {
          operator new();
        }

        goto LABEL_58;
      case 39:
      case 71:
      case 103:
        (*(**this + 16))(*this, 6, 1);
        if ((v3 & 1) == 0)
        {
          v1 = 0;
        }

        v3 = 1;
        continue;
      case 40:
      case 72:
      case 104:
        goto LABEL_10;
      case 41:
      case 46:
      case 47:
      case 73:
      case 78:
      case 79:
      case 105:
      case 110:
      case 111:
        v8 = 2;
LABEL_10:
        (*(**this + 16))(*this, v8, 1);
        v6 = *this;
        goto LABEL_7;
      case 42:
      case 74:
      case 106:
        operator new();
      case 43:
      case 75:
      case 107:
        operator new();
      case 44:
      case 76:
      case 108:
        operator new();
      case 45:
      case 77:
      case 109:
        if ((*(this + 81) & 1) != 0 || *(this + 80) == 1)
        {
          XlFormulaParser::readPtgArea();
        }

        XlFormulaParser::readPtgArea();
      case 57:
      case 89:
      case 121:
        operator new();
      case 58:
      case 60:
      case 90:
      case 92:
      case 122:
      case 124:
        operator new();
      case 59:
      case 61:
      case 91:
      case 93:
      case 123:
      case 125:
        operator new();
      case 88:
      case 120:
        goto LABEL_58;
      default:
        v9 = 3001;
        goto LABEL_61;
    }
  }
}

char *XlPtg::getLastExtendedData(XlPtg *this)
{
  var0 = this->var0;
  if (!this->var0)
  {
    return 0;
  }

  var3 = this->var3;
  if (!this->var3)
  {
    return 0;
  }

  while (--var3)
  {
    var0 += *var0 + 2;
  }

  return var0 + 2;
}

char *XlPtg::getExtendedData(XlPtg *this, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  var0 = this->var0;
  if (!this->var0 || this->var3 <= a2)
  {
    return 0;
  }

  for (i = *var0; a2; --a2)
  {
    v5 = &var0[i];
    v6 = *(v5 + 1);
    var0 = v5 + 2;
    i = v6;
  }

  result = var0 + 2;
  *a3 = i;
  return result;
}

uint64_t ChStack<XlPtg *>::push(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  if (v2 + 1 > v3)
  {
    v4 = *(result + 24) + v3;
    *(result + 20) = v4;
    operator new[](8 * v4);
  }

  *(*result + 8 * v2) = *a2;
  *(result + 16) = v2 + 1;
  return result;
}

uint64_t ChStack<XlPtg *>::top(uint64_t a1)
{
  if (!*a1 || (v1 = *(a1 + 16)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  return *a1 + 8 * (v1 - 1);
}

XlPtg *ChAutoPtr<XlPtg>::setValue(XlPtg **a1, XlPtg *a2)
{
  result = *a1;
  if (result != a2)
  {
    if (result)
    {
      XlPtg::~XlPtg(result);
      result = MEMORY[0x25F897000]();
    }

    *a1 = a2;
  }

  return result;
}

XlPtg **ChAutoPtr<XlPtg>::~ChAutoPtr(XlPtg **a1)
{
  v2 = *a1;
  if (v2)
  {
    XlPtg::~XlPtg(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

uint64_t XlPtg::getTotalSizeOfExtendedData(XlPtg *this)
{
  var0 = this->var0;
  if (!this->var0)
  {
    return 0;
  }

  var3 = this->var3;
  if (!this->var3)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *var0;
    var0 += v4 + 2;
    result = (result + v4);
    --var3;
  }

  while (var3);
  return result;
}

void XlPtg::~XlPtg(XlPtg *this)
{
  var0 = this->var0;
  if (var0)
  {
    MEMORY[0x25F896FE0](var0, 0x1000C8077774924);
    this->var0 = 0;
    this->var2 = 0;
    this->var3 = 0;
  }
}

uint64_t XlFormulaParser::releaseFormula(XlFormulaParser *this)
{
  result = *this;
  if (result)
  {
    (*(*result + 152))(result, 0);
    result = *this;
    if (*this)
    {
      result = (*(*result + 8))(result);
    }

    *this = 0;
  }

  *(this + 6) = 0;
  return result;
}

EshObjectFactory *XlEshObjectFactory::createObject(XlEshObjectFactory *this, EshObject *a2, int a3)
{
  if (a2 > 61452)
  {
    if (a2 > 61456)
    {
      if (a2 == 61457)
      {
        operator new();
      }

      if (a2 == 62271)
      {
        operator new();
      }
    }

    else
    {
      if (a2 == 61453)
      {
        goto LABEL_12;
      }

      if (a2 == 61456)
      {
        operator new();
      }
    }
  }

  else
  {
    if (a2 <= 6)
    {
      if (a2 == 1)
      {
        operator new();
      }

      if (a2 == 6)
      {
        operator new();
      }

      goto LABEL_19;
    }

    if (a2 == 7)
    {
      operator new();
    }

    if (a2 == 12)
    {
LABEL_12:
      operator new();
    }
  }

LABEL_19:
  Object = EshObjectFactory::createObject(this, a2, a3);
  EshObjectFactory::verifyTypeAndVersionOfObject(Object, a2, a3);
  return Object;
}

uint64_t XlChartBinaryReader::read(uint64_t this, XlEshRoot *a2)
{
  v3 = this;
  *(a2 + 11) = 0;
  if (*(a2 + 10) == 6)
  {
    if ((*(this + 1940) & 0x80000000) == 0)
    {
      (*(**(this + 1312) + 16))(*(this + 1312));
      XlHeader::XlHeader(&v9);
      XlParserVisitor::getHeader(*(v3 + 1336), &v9, *(v3 + 1320));
      v4 = *(v3 + 1304);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      *(v3 + 1304) = 0;
      XlChartGelFrame::XlChartGelFrame(v7, &v9);
      (*(**(v3 + 1336) + 2024))();
      v5 = *(v3 + 1940);
      *(a2 + 11) = v8;
      *(a2 + 12) = v5;
      (*(**(v3 + 1312) + 16))(*(v3 + 1312));
      v6 = (*(*v3 + 112))(v3);
      (*(*v6 + 16))(v6, *(v3 + 1312));
      operator new();
    }
  }

  else
  {

    return XlBinaryReader::read(this, a2);
  }

  return this;
}

void sub_25D325464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x25F897000](v2, v3);
  XlChartGelFrame::~XlChartGelFrame(va);
  _Unwind_Resume(a1);
}

uint64_t XlBinaryReader::read(uint64_t this, XlEshRoot *a2)
{
  v2 = this;
  *(a2 + 11) = 0;
  v3 = *(a2 + 10);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      if ((*(this + 200) & 0x80000000) != 0)
      {
        return this;
      }
    }

    else if (v3 != 2 || (*(this + 204) & 0x80000000) != 0)
    {
      return this;
    }

LABEL_9:
    (*(**(this + 1312) + 16))(*(this + 1312));
    XlEshBinaryReader::start((v2 + 40), *(v2 + 1312));
  }

  if (v3 == 3)
  {
    if ((*(this + 1300) & 0x80000000) != 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  if (v3 == 4 && (*(this + 280) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  return this;
}

void XlEshBinaryReader::start(XlEshBinaryReader *this, SsrwOOStream *a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    operator new();
  }

  XlReadStgStream::start(v3, a2);
  v4 = *(this + 13);
  *(this + 24) = *(v4 + 20);
  EshBinaryReader::start(this, v4);
}

void XlReadStgStream::XlReadStgStream(XlReadStgStream *this)
{
  *this = &unk_286ED3340;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
}

uint64_t XlReadStgStream::start(XlReadStgStream *this, SsrwOOStream *a2)
{
  *(this + 2) = 0;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 7) = *(this + 6);
  *(this + 10) = *(this + 9);
  if (!a2)
  {
    goto LABEL_5;
  }

  *(this + 5) = a2;
  if (!*(this + 3))
  {
    operator new[](10);
  }

  v3 = (*(a2->var0 + 5))(a2);
  result = XlReadStgStream::mapStreamChunk(this, v3);
  if ((result & 1) == 0)
  {
LABEL_5:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return result;
}

uint64_t XlReadStgStream::mapStreamChunk(XlReadStgStream *this, uint64_t a2)
{
  result = *(this + 5);
  if (!result)
  {
    return result;
  }

  v4 = a2;
  (*(*result + 16))(result, a2, 0);
  v5 = (*(**(this + 5) + 72))(*(this + 5));
  v6 = (*(**(this + 5) + 80))(*(this + 5));
  if (v6 > 0x2020)
  {
    return 0;
  }

  v7 = v6;
  result = 0;
  v8 = v5;
  if (v5 <= 0xECu)
  {
    if (v5 != 60)
    {
      if (v5 == 235)
      {
LABEL_13:
        v9 = 4;
        goto LABEL_14;
      }

      if (v5 != 236)
      {
        return result;
      }
    }

    v8 = 236;
    goto LABEL_13;
  }

  if (v5 == 237)
  {
    goto LABEL_13;
  }

  if (v5 != 2150)
  {
    if (v5 != 4198)
    {
      return result;
    }

    v8 = 4198;
    goto LABEL_13;
  }

  v9 = 18;
LABEL_14:
  v10 = v9 + v4;
  v11 = *(this + 6);
  v12 = (*(this + 7) - v11) >> 2;
  if (v12)
  {
    if (*(v11 + 4 * (v12 - 1)) >= v4)
    {
      v13 = 0;
      do
      {
        v14 = *(v11 + 4 * v13);
        result = v14 == v4;
        if (v14 == v4)
        {
          break;
        }

        ++v13;
      }

      while (v12 > v13);
      return result;
    }
  }

  else
  {
    *(this + 2) = v8;
    *(this + 4) = v10;
    *(this + 5) = v10;
  }

  if (!v7)
  {
    return 0;
  }

  v15 = *(this + 2);
  if (v15 != 235 && v15 != 2150 && v15 != 4198)
  {
    v15 = -1;
  }

  v16 = 0;
  v17 = *(this + 5);
  LOWORD(v18) = v7;
  do
  {
    v19 = (*(**(this + 5) + 40))(*(this + 5)) - 4;
    v35 = v19;
    v20 = *(this + 7);
    if (v20 >= *(this + 8))
    {
      v21 = std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int>(this + 48, &v35);
    }

    else
    {
      *v20 = v19;
      v21 = (v20 + 1);
    }

    *(this + 7) = v21;
    v35 = v16 + v17;
    v22 = *(this + 10);
    if (v22 >= *(this + 11))
    {
      v23 = std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int>(this + 72, &v35);
    }

    else
    {
      *v22 = v16 + v17;
      v23 = (v22 + 1);
    }

    *(this + 10) = v23;
    (*(**(this + 5) + 16))(*(this + 5), v18, 1);
    if (*(this + 2) == 2150)
    {
      v24 = v18 - 14;
    }

    else
    {
      v24 = v18;
    }

    v16 += v24;
    v25 = (*(**(this + 5) + 72))(*(this + 5));
    v18 = (*(**(this + 5) + 80))(*(this + 5));
  }

  while (v25 == 60 || v15 == v25);
  if (v25 == 93)
  {
    (*(**(this + 5) + 16))(*(this + 5), v18, 1);
    v27 = (*(**(this + 5) + 72))(*(this + 5));
    v28 = (*(**(this + 5) + 80))(*(this + 5));
    if (v27 == 236 || v27 == 60)
    {
      v29 = (*(**(this + 5) + 40))(*(this + 5)) - 4;
      v35 = v29;
      (*(**(this + 5) + 16))(*(this + 5), v28, 1);
      if ((*(**(this + 5) + 72))(*(this + 5)) == 438)
      {
        v30 = *(this + 7);
        if (v30 >= *(this + 8))
        {
          v31 = std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int const&>(this + 48, &v35);
        }

        else
        {
          *v30 = v29;
          v31 = (v30 + 1);
        }

        *(this + 7) = v31;
        v34 = v16 + v17;
        v32 = *(this + 10);
        if (v32 >= *(this + 11))
        {
          v33 = std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int>(this + 72, &v34);
        }

        else
        {
          *v32 = v16 + v17;
          v33 = (v32 + 1);
        }

        *(this + 10) = v33;
        v16 += v28;
        *(this + 32) = 1;
      }
    }
  }

  *(this + 5) = v16 + v17;
  (*(**(this + 5) + 16))(*(this + 5), v10, 0);
  *(this + 6) = v7;
  if (*(this + 2) == 2150)
  {
    *(this + 6) = v7 - 14;
  }

  return 1;
}

uint64_t XlReadStgStream::getPos(XlReadStgStream *this)
{
  v2 = (*(**(this + 5) + 40))(*(this + 5));

  return XlReadStgStream::translateStreamFileLocation(this, v2);
}

uint64_t XlReadStgStream::translateStreamFileLocation(XlReadStgStream *this, unsigned int a2)
{
  if (((*(this + 7) - *(this + 6)) & 0x3FFFFFFFCLL) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  result = *(this + 4);
  if (result < a2)
  {
    if (XlReadStgStream::getStreamMaxFileOffset(this) <= a2)
    {
      return *(this + 5);
    }

    v5 = *(this + 2);
    if (v5 == 2150)
    {
      v6 = 18;
    }

    else
    {
      v6 = 4;
    }

    v7 = *(this + 6);
    v8 = *(this + 7) - v7;
    if ((v8 & 0x3FFFFFFFCLL) == 0)
    {
      return 0;
    }

    v9 = 0;
    if (v5 == 2150)
    {
      v10 = -18;
    }

    else
    {
      v10 = -4;
    }

    v11 = *(this + 9);
    v12 = (v8 >> 2) - 1;
    v13 = v10 + a2;
    v14 = (v8 >> 2);
    do
    {
      result = *(v11 + 4 * v9);
      v15 = *(v7 + 4 * v9);
      if (v9 >= v12)
      {
        result = v13 + result - v15;
      }

      else if (v15 <= a2 && *(v7 + 4 * v9 + 4) >= a2)
      {
        v16 = *(v11 + 4 * v9 + 4);
        v17 = v15 + v6;
        v18 = v17 + (v16 - result);
        if (v17 < a2)
        {
          v19 = result + a2 - v17;
        }

        else
        {
          v19 = result;
        }

        if (v18 >= a2)
        {
          return v19;
        }

        else
        {
          return v16;
        }
      }

      ++v9;
    }

    while (v14 != v9);
  }

  return result;
}

uint64_t XlReadStgStream::seek(XlReadStgStream *this, unsigned int a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = (*(*this + 40))(this) + a2;
    }

    else
    {
      v3 = *(this + 5) - a2;
    }
  }

  XlReadStgStream::translateStreamLocation(this, v3, this + 6);
  v5 = *(**(this + 5) + 16);

  return v5();
}

uint64_t XlReadStgStream::translateStreamLocation(XlReadStgStream *this, unsigned int a2, unsigned __int16 *a3)
{
  v4 = *(this + 6);
  v3 = *(this + 7);
  if (((v3 - v4) & 0x3FFFFFFFCLL) == 0 || *(this + 4) > a2 || *(this + 5) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  v8 = 0;
  v9 = (v3 - v4) >> 2;
  while (1)
  {
    v10 = *(this + 2) == 2150 ? 18 : 4;
    v11 = (v10 + *(v4 + 4 * v8));
    v12 = (v9 - 1);
    v13 = *(this + 9);
    v14 = *(v13 + 4 * v8);
    if (v8 < v12)
    {
      break;
    }

    v11 = a2 - v14 + v11;
    *a3 = XlReadStgStream::getStreamMaxFileOffset(this) - v11;
    v4 = *(this + 6);
    v3 = *(this + 7);
LABEL_14:
    ++v8;
    v9 = (v3 - v4) >> 2;
    if (v8 >= v9)
    {
      return v11;
    }
  }

  if (a2 < v14)
  {
    goto LABEL_14;
  }

  v15 = *(v13 + 4 * v8 + 4);
  v16 = v15 >= a2;
  v17 = v15 - a2;
  if (!v16)
  {
    goto LABEL_14;
  }

  v11 = v11 + a2 - v14;
  *a3 = v17;
  return v11;
}

uint64_t XlReadStgStream::readUInt16(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 80);

    return v5();
  }

  else
  {
    v7 = 2;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadUInt16(*(this + 3));
  }
}

uint64_t XlReadStgStream::readSInt32(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 96);

    return v5();
  }

  else
  {
    v7 = 4;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadSInt32(*(this + 3));
  }
}

void XlEshBinaryReader::read(uint64_t a1, _DWORD *a2)
{
  if (a2[10] && (v3 = *(a1 + 104)) != 0)
  {
    (*(*v3 + 16))(v3, v3[4], 0);
    EshBinaryReader::checkStarted(a1);
    if (*(a1 + 72) == *(a1 + 32))
    {
      (*(*a2 + 104))(a2, 0);
      operator new();
    }

    exception = __cxa_allocate_exception(4uLL);
    v6 = 7010;
  }

  else
  {
    exception = __cxa_allocate_exception(4uLL);
    v6 = 7012;
  }

  *exception = v6;
}

uint64_t XlEshBinaryReader::getObjectHeader(EshParserVisitor **this, uint64_t a2, EshHeader *a3)
{
  result = EshParserVisitor::visit(this[2], a3, a2);
  if (*(this + 92))
  {
    return result;
  }

  if (!*(this + 14))
  {
    var3 = a3->var3;
LABEL_13:
    v12 = 2;
    goto LABEL_14;
  }

  result = ChStack<EshHeader>::top((this + 5));
  v6 = *(result + 4) + *result + 8;
  v7 = a3->var1 + a3->var0 + 8;
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
    goto LABEL_32;
  }

  if (v9 && v9 <= 7)
  {
    goto LABEL_32;
  }

  var3 = a3->var3;
  if (!*(this + 14))
  {
    goto LABEL_13;
  }

  result = ChStack<EshHeader>::top((this + 5));
  v12 = *(result + 10);
LABEL_14:
  if (var3 == 61444)
  {
    if (v12 == 2)
    {
      goto LABEL_26;
    }

    if (v12 != 61443)
    {
      if (v12 == 61442)
      {
        operator new();
      }

LABEL_32:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 7013;
    }

    var1 = a3->var1;
    result = ChStack<EshHeader>::top((this + 5));
    if (var1 != *(result + 4) + 8)
    {
LABEL_26:
      v13 = 7;
    }

    else if (*(this + 14) > 2u || *(this + 93) == 1 && *(this[13] + 2) == 236)
    {
      v13 = 6;
    }

    else
    {
      v13 = 5;
    }
  }

  else
  {
    if (var3 != 61451)
    {
      return result;
    }

    if (a3->var1 + a3->var0 + 8 < *(this + 24))
    {
      operator new();
    }

    v13 = 4;
  }

  a3->var3 = v13;
  a3->var4 = 0;
  a3->var2 = 0;
  return result;
}

void sub_25D326708(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C401B6A0F4FLL);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t XlReadStgStream::getStreamSize(XlReadStgStream *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 5) - 8;
  }

  else
  {
    v1 = *(this + 5);
  }

  return (v1 - *(this + 4));
}

uint64_t XlReadStgStream::getStreamLocation(XlReadStgStream *this)
{
  v1 = *(this + 6);
  if (((*(this + 7) - v1) & 0x3FFFFFFFCLL) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return *v1;
}

uint64_t EshRoot::getChildInstance(EshRoot *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (((*(this + 3) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 8);
}

void XlEshBinaryReader::read(XlEshBinaryReader *this, EshObject *a2)
{
  EshBinaryReader::checkStarted(this);
  (*(a2->var0 + 2))(a2);
  operator new();
}

void XlEshBinaryReader::readObject(XlEshBinaryReader *this, EshContainer *a2)
{
  v3 = this + 40;
  v4 = (*(*this + 96))(this);
  EshRecord::setHeader(a2, v4);
  EshContainer::removeChildren(a2);
  ChStack<EshHeader>::push(v3, a2 + 12);
  operator new();
}

uint64_t XlReadStgStream::getStreamMaxFileOffset(XlReadStgStream *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7) - v1;
  if ((v2 & 0x3FFFFFFFCLL) == 0 || (v3 = *(this + 5), v4 = *(*(this + 9) + 4 * (((*(this + 10) - *(this + 9)) >> 2) - 1)), v5 = v3 >= v4, v6 = v3 - v4, !v5))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  v7 = v2 >> 2;
  if (*(this + 2) == 2150)
  {
    v8 = 18;
  }

  else
  {
    v8 = 4;
  }

  return v6 + *(v1 + 4 * (v7 - 1)) + v8;
}

uint64_t EshContainer::getChildInstance(EshContainer *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (((*(this + 5) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(*(v2 + 8 * a2) + 8);
}

uint64_t XlEshBinaryReader::readRecordData(EshParserVisitor **this, EshRecord *a2, const EshHeader *a3)
{
  if (EshRecord::getRecordType(a2) != a3->var3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  EshRecord::setHeader(a2, a3);
  EshParserVisitor::beginRead(this[2], a2);
  if (a3->var3 == -4092)
  {
    EshContainer::removeChildren(v6);
    operator new();
  }

  (*(*a2 + 112))(a2, this[2]);
  v7 = this[2];

  return EshParserVisitor::endRead(v7, a2);
}

uint64_t XlReadStgStream::readUInt32(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 104);

    return v5();
  }

  else
  {
    v7 = 4;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadSInt32(*(this + 3));
  }
}

uint64_t XlReadStgStream::readByte(XlReadStgStream *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    XlReadStgStream::readNextHostRecordHeader(this);
    v2 = *(this + 6);
  }

  *(this + 6) = v2 - 1;
  v3 = *(**(this + 5) + 64);

  return v3();
}

uint64_t XlReadStgStream::readBytes(XlReadStgStream *this, char *a2, unsigned int *a3)
{
  v6 = *a3;
  if (*a3 > *(this + 6))
  {
    v7 = 0;
    while (1)
    {
      do
      {
        v8 = *(this + 6);
        v12 = v8;
        if (!v8)
        {
          break;
        }

        if (v7 + v8 > *a3)
        {
          v12 = *a3 - v7;
        }

        result = (*(**(this + 5) + 56))(*(this + 5), &a2[v7], &v12);
        v10 = v12;
        v11 = *(this + 6);
        *(this + 6) = v11 - v12;
        v6 -= v10;
        if (!v6)
        {
          return result;
        }

        v7 += v10;
      }

      while (v11 != v10);
      XlReadStgStream::readNextHostRecordHeader(this);
    }
  }

  result = (*(**(this + 5) + 56))(*(this + 5), a2, a3);
  *(this + 6) -= *a3;
  return result;
}

void XlEshRoot::~XlEshRoot(XlEshRoot *this)
{
  EshRoot::~EshRoot(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlPageProperties::setFooterString(XlPageProperties *this, OcText *a2)
{
  v2 = *(this + 6);
  if (!v2)
  {
    operator new();
  }

  return OcText::operator=(v2, a2);
}

void XlGraphicsInfo::XlGraphicsInfo(XlGraphicsInfo *this)
{
  *this = &unk_286ED16A8;
  *(this + 1) = 48;
  *(this + 78) = 0;
  *(this + 41) = 0;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 108) = xmmword_25D700320;
  *(this + 124) = 0;
  *(this + 16) = 0;
}

_DWORD *XlBinaryReader::read(XlBinaryReader *this, XlGraphicsInfo *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  XlHeader::XlHeader(&v7);
  v4 = *(this + 324);
  XlGraphicsInfo::clear(a2);
  result = *(this + 163);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 163) = 0;
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((v4 & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164), v4, 0);
    result = XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    if (v7.var1 == 60 || v7.var1 == 236)
    {
      v6 = (*(**(this + 164) + 40))(*(this + 164));
      *(this + 325) = v6 - XlParserVisitor::getRecordDataOffset(*(this + 167));
      (*(**(this + 164) + 16))(*(this + 164), v7.var0, 1);
      result = XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
      while (v7.var1 == 60 || v7.var1 == 236)
      {
        result = XlParserVisitor::skipAhead(*(this + 167), &v7, *(this + 1320));
      }

      if (v7.var1 == 93)
      {
        operator new();
      }
    }

    *(this + 324) = -1;
  }

  return result;
}

void sub_25D327CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *(v13 + 16) = 0;
    *(v13 + 48) = 0;
    if (*(v12 + 1304))
    {
      XlFontTable::setDefault();
    }

    *(v12 + 1304) = 0;
    *(v12 + 1296) = -1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlGraphicsInfo::clear(XlGraphicsInfo *this)
{
  *(this + 1) = 48;
  *(this + 48) = 0;
  *(this + 13) = 0;
  *(this + 40) = 0;
  *(this + 104) = 0;
  *(this + 8) = 0;
  *(this + 8) = 0;
  *(this + 69) = 0;
  *(this + 108) = xmmword_25D700320;
  *(this + 12) = 0;
  *(this + 124) = 0;
  XlGraphicsInfo::clearStateElements(this);
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 7) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 16) = 0;
  result = *(this + 11);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 11) = 0;
  *(this + 41) = 0;
  return result;
}

uint64_t XlGraphicsInfo::clearStateElements(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  v3 = *(this + 32);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          MEMORY[0x25F896FE0](v6, 0x1000C8077774924);
        }

        *(v5 + 8) = 0;
        this = MEMORY[0x25F897000](v5, 0x1010C40466105CCLL);
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

void XlEshParserVisitor::~XlEshParserVisitor(XlEshParserVisitor *this)
{
  EshClientDataModelVisitor::EshClientDataModelVisitor(this);

  JUMPOUT(0x25F897000);
}

void XlGraphicsInfo::~XlGraphicsInfo(XlGraphicsInfo *this)
{
  *this = &unk_286ED16A8;
  XlGraphicsInfo::clearStateElements(this);
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 7) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 16) = 0;
  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 11) = 0;
  *(this + 41) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

{
  XlGraphicsInfo::~XlGraphicsInfo(this);

  JUMPOUT(0x25F897000);
}

void XlMerge::XlMerge(XlMerge *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECED00;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 1;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMerge *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void *XlMergeTable::appendMergeRegion(XlMergeTable *this, XlRef *a2)
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
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void XlMerge::~XlMerge(XlMerge *this)
{
  XlMerge::~XlMerge(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECED00;
  XlMerge::clearMergedRegions(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t XlMerge::clearMergedRegions(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    v2 = *(this + 16);
    v3 = *(this + 24);
    if (((v3 - v2) & 0x7FFFFFFF8) != 0)
    {
      v4 = 0;
      do
      {
        this = *(v2 + 8 * v4);
        if (this)
        {
          this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
          v2 = *(v1 + 16);
          v3 = *(v1 + 24);
        }

        ++v4;
      }

      while (v4 < ((v3 - v2) >> 3));
    }
  }

  else
  {
    v2 = *(this + 16);
  }

  *(v1 + 24) = v2;
  return this;
}

void sub_25D328594(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t TSUDeviceRGBColorSpace()
{
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return TSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

uint64_t TSUDeviceCMYKColorSpace()
{
  if (TSUDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    TSUDeviceCMYKColorSpace_cold_1();
  }

  return TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

void sub_25D329044(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t XlPageProperties::setHeaderString(XlPageProperties *this, OcText *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    operator new();
  }

  return OcText::operator=(v2, a2);
}

void XlTopMargin::XlTopMargin(XlTopMargin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0A50;
  v2[2] = 0;
}

void XlObjBiff8::XlObjBiff8(XlObjBiff8 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEFC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 48;
  *(v2 + 52) = -1;
  *(v2 + 56) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlObjBiff8 *a2)
{
  v4 = *(a2 + 2);
  v5 = *(this + 76);
  v6 = (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = v6;
  v7 = *(this + 10);
  v14 = *(this + 22);
  *(this + 76) = 0;
  v8 = (*(**(this + 2) + 72))(*(this + 2));
  v9 = (*(**(this + 2) + 72))(*(this + 2));
  if (v8)
  {
    v10 = v9;
    v11 = (v4 - 4);
    if (v9 >= v11)
    {
      v12 = (v4 - 4);
    }

    else
    {
      v12 = v9;
    }

    *(this + 21) = (*(**(this + 2) + 40))(*(this + 2)) - 4;
    *(this + 22) = 4;
    *(this + 20) = (*(**(this + 2) + 40))(*(this + 2)) + v12;
    if (v11 >= v10)
    {
      if (v8 == 21)
      {
        *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
        *(a2 + 22) = (*(**(this + 2) + 72))(*(this + 2));
        *(a2 + 23) = (*(**(this + 2) + 72))(*(this + 2));
        *(a2 + 12) = (*(**(this + 2) + 96))(*(this + 2));
        (*(**(this + 2) + 16))(*(this + 2), 4294967286, 1);
      }

      operator new();
    }

    if (v11 >= 1)
    {
      operator new();
    }

    operator new();
  }

  *(this + 18) = v6;
  *(this + 10) = v7;
  *(this + 22) = v14;
  *(this + 76) = v5;

  return XlParserVisitor::endRead(this, a2);
}

void XlGenericRecord::XlGenericRecord(XlGenericRecord *this, __int16 a2, int a3, char a4)
{
  XlRecord::XlRecord(this, a2, a3, a4);
  *v4 = &unk_286ECE7C0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = *(v4 + 12);
  *(v4 + 12) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlGenericRecord *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(this + 76) & 1) == 0)
  {
    operator new[](*(a2 + 2));
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlGenericRecord::takeContents(XlGenericRecord *this, unsigned __int8 *a2, int a3)
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

void *XlObjBiff8::appendSubRecord(XlObjBiff8 *this, XlGenericRecord *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 3);
  if (v3 >= *(this + 4))
  {
    result = std::vector<XlGenericRecord *,ChAllocator<XlGenericRecord *>>::__emplace_back_slow_path<XlGenericRecord * const&>(this + 2, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

void *ChAutoPtr<XlGraphicsInfo::XlObjData>::setValue(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result != a2)
  {
    v4 = result;
    if (v2)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
      }

      *(v2 + 8) = 0;
      result = MEMORY[0x25F897000](v2, 0x1010C40466105CCLL);
    }

    *v4 = a2;
  }

  return result;
}

uint64_t XlGraphicsInfo::appendStateElement(void *a1, uint64_t a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = std::vector<XlGraphicsInfo::XlObjData *,ChAllocator<XlGraphicsInfo::XlObjData *>>::__emplace_back_slow_path<XlGraphicsInfo::XlObjData * const&>(a1 + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = (v3 + 1);
  }

  a1[4] = result;
  return result;
}

void XlObjBiff8::~XlObjBiff8(XlObjBiff8 *this)
{
  XlObjBiff8::~XlObjBiff8(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECEFC0;
  XlObjBiff8::clearSubRecords(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void *XlObjBiff8::clearSubRecords(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = this[3];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[2];
        v3 = v1[3];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[3] = v2;
  return this;
}

void XlGenericRecord::~XlGenericRecord(XlGenericRecord *this)
{
  *this = &unk_286ECE7C0;
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
  *this = &unk_286ECE7C0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

uint64_t *ChAutoPtr<XlGraphicsInfo::XlObjData>::~ChAutoPtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
    }

    *(v2 + 8) = 0;
    MEMORY[0x25F897000](v2, 0x1010C40466105CCLL);
  }

  *a1 = 0;
  return a1;
}

void XlEshGroup::XlEshGroup(XlEshGroup *this)
{
  EshGroup::EshGroup(this);
  *v1 = &unk_286ED1340;
  v1[34] = &unk_286ED13F0;
  v1[46] = 0;
  v1[47] = 0;
}

void XlEshShape::XlEshShape(XlEshShape *this)
{
  EshShape::EshShape(this);
  *v1 = &unk_286ED1510;
  v1[52] = &unk_286ED15E0;
  v1[72] = 0;
  v1[74] = 0;
  v1[73] = 0;
}

uint64_t XlReadStgStream::readString16(XlReadStgStream *this, int *a2, unsigned __int16 *a3)
{
  v5 = *(this + 6);
  v6 = *a2;
  if (v5 >= 2 * v6)
  {
    result = (*(**(this + 5) + 136))(*(this + 5));
    v11 = *a2;
  }

  else
  {
    do
    {
      v13 = v5 >> 1;
      if (v5 >= 2u)
      {
        (*(**(this + 5) + 136))(*(this + 5), &v13, a3);
        LOWORD(v5) = *(this + 6) - 2 * v13;
        *(this + 6) = v5;
      }

      if (v5)
      {
        v7 = (*(*this + 128))(this);
        v8 = v13;
        a3[v13] = v7;
        v9 = v8 + 1;
        v13 = v9;
      }

      else
      {
        XlReadStgStream::readNextHostRecordHeader(this);
        v9 = v13;
      }

      LODWORD(v6) = v6 - v9;
      v14 = v6;
      a3 += v9;
      v5 = *(this + 6);
    }

    while (v5 < 2 * v6);
    result = (*(**(this + 5) + 136))(*(this + 5), &v14, a3);
    v11 = v14;
  }

  *(this + 6) -= 2 * v11;
  return result;
}

uint64_t XlEshClientAnchor::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

uint64_t XlEshParserVisitor::visit(uint64_t a1, EshRecord *this)
{
  if (EshRecord::getDataLength(this) == 8)
  {
    v4 = (*(**(a1 + 8) + 72))(*(a1 + 8));
    v5 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v6 = (*(**(a1 + 8) + 72))(*(a1 + 8));
    v7 = (*(**(a1 + 8) + 80))(*(a1 + 8));
  }

  else
  {
    if (EshRecord::getDataLength(this) != 18)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 3002;
    }

    *(this + 14) = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v4 = (*(**(a1 + 8) + 72))(*(a1 + 8));
    v8 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v5 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v9 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v6 = (*(**(a1 + 8) + 72))(*(a1 + 8));
    v10 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v7 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    v11 = (*(**(a1 + 8) + 80))(*(a1 + 8));
    *(this + 12) = v8;
    *(this + 13) = v9;
    *(this + 14) = v10;
    *(this + 15) = v11;
  }

  *(this + 8) = v4;
  *(this + 9) = v5;
  *(this + 10) = v6;
  *(this + 11) = v7;
  return 1;
}

uint64_t XlReadStgStream::readSInt16(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 72);

    return v5();
  }

  else
  {
    v7 = 2;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadSInt16(*(this + 3));
  }
}

uint64_t XlEshShape::takeClientAnchor(uint64_t result, uint64_t a2)
{
  if (*(result + 576))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(result + 576) = a2;
  return result;
}

uint64_t XlEshClientData::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

uint64_t XlEshParserVisitor::visit(int a1, EshRecord *this)
{
  if (EshRecord::getDataLength(this) >= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return 1;
}

uint64_t XlEshShape::takeClientData(uint64_t result, uint64_t a2)
{
  if (*(result + 584))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(result + 584) = a2;
  return result;
}

void XlScl::XlScl(XlScl *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFF18;
  *(v2 + 16) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlScl *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartPlot::takeChartFormat(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = a2;
  return result;
}

void XlRecordFactory::createRecord(XlRecordFactory *this, XlHeader *a2)
{
  v2 = *(this + 2);
  if (v2 <= 0x1A4)
  {
    switch(*(this + 2))
    {
      case 3:
        goto LABEL_25;
      case 4:
        goto LABEL_63;
      case 6:
        goto LABEL_66;
      case 7:
        goto LABEL_39;
      case 9:
        goto LABEL_58;
      case 0xA:
        operator new();
      case 0xC:
        operator new();
      case 0xD:
        operator new();
      case 0xE:
        operator new();
      case 0xF:
        operator new();
      case 0x10:
        operator new();
      case 0x11:
        operator new();
      case 0x12:
        operator new();
      case 0x13:
        operator new();
      case 0x14:
        operator new();
      case 0x15:
        operator new();
      case 0x16:
        operator new();
      case 0x17:
        operator new();
      case 0x18:
        operator new();
      case 0x19:
        operator new();
      case 0x1A:
        operator new();
      case 0x1B:
        operator new();
      case 0x1C:
        operator new();
      case 0x1D:
        operator new();
      case 0x22:
        operator new();
      case 0x23:
        goto LABEL_64;
      case 0x25:
        goto LABEL_43;
      case 0x26:
        operator new();
      case 0x27:
        operator new();
      case 0x28:
        operator new();
      case 0x29:
        operator new();
      case 0x2A:
        operator new();
      case 0x2B:
        operator new();
      case 0x2F:
        operator new();
      case 0x31:
        goto LABEL_62;
      case 0x33:
        operator new();
      case 0x3C:
        operator new();
      case 0x3D:
        operator new();
      case 0x3E:
        goto LABEL_51;
      case 0x40:
        operator new();
      case 0x41:
        operator new();
      case 0x42:
        operator new();
      case 0x4D:
        operator new();
      case 0x50:
        operator new();
      case 0x51:
        operator new();
      case 0x52:
        operator new();
      case 0x55:
        operator new();
      case 0x59:
        operator new();
      case 0x5A:
        operator new();
      case 0x5B:
        operator new();
      case 0x5C:
        operator new();
      case 0x5D:
        operator new();
      case 0x5E:
        operator new();
      case 0x5F:
        operator new();
      case 0x60:
        operator new();
      case 0x63:
        operator new();
      case 0x7D:
        operator new();
      case 0x7F:
      case 0xE9:
        operator new();
      case 0x80:
        operator new();
      case 0x81:
        operator new();
      case 0x82:
        operator new();
      case 0x83:
        operator new();
      case 0x84:
        operator new();
      case 0x85:
        operator new();
      case 0x86:
        operator new();
      case 0x87:
        operator new();
      case 0x88:
        operator new();
      case 0x89:
        operator new();
      case 0x8C:
        operator new();
      case 0x8D:
        operator new();
      case 0x90:
        operator new();
      case 0x91:
        operator new();
      case 0x92:
        operator new();
      case 0x96:
        operator new();
      case 0x98:
        operator new();
      case 0x99:
        operator new();
      case 0x9A:
        operator new();
      case 0x9B:
        operator new();
      case 0x9C:
        operator new();
      case 0x9D:
        operator new();
      case 0x9E:
        operator new();
      case 0xA0:
        operator new();
      case 0xA1:
        operator new();
      case 0xA9:
        operator new();
      case 0xAB:
        operator new();
      case 0xAE:
        operator new();
      case 0xAF:
        operator new();
      case 0xB0:
        operator new();
      case 0xB1:
        operator new();
      case 0xB2:
        operator new();
      case 0xB4:
        operator new();
      case 0xB5:
        operator new();
      case 0xB8:
        operator new();
      case 0xB9:
        operator new();
      case 0xBD:
        operator new();
      case 0xBE:
        operator new();
      case 0xC1:
        operator new();
      case 0xC2:
        operator new();
      case 0xC3:
        operator new();
      case 0xC5:
        operator new();
      case 0xC6:
        operator new();
      case 0xCD:
        operator new();
      case 0xD0:
        operator new();
      case 0xD1:
        operator new();
      case 0xD2:
        operator new();
      case 0xD3:
        operator new();
      case 0xD5:
        operator new();
      case 0xD6:
        operator new();
      case 0xD7:
        operator new();
      case 0xDA:
        operator new();
      case 0xDB:
        operator new();
      case 0xDC:
        operator new();
      case 0xDD:
        operator new();
      case 0xDE:
        operator new();
      case 0xE0:
        goto LABEL_65;
      case 0xE1:
        operator new();
      case 0xE2:
        operator new();
      case 0xE3:
        operator new();
      case 0xE5:
        operator new();
      case 0xEA:
        operator new();
      case 0xEB:
        operator new();
      case 0xEC:
        operator new();
      case 0xED:
        operator new();
      case 0xEF:
        operator new();
      case 0xF0:
        operator new();
      case 0xF1:
        operator new();
      case 0xF2:
        operator new();
      case 0xF6:
        operator new();
      case 0xF7:
        operator new();
      case 0xF8:
        operator new();
      case 0xF9:
        operator new();
      case 0xFB:
        operator new();
      case 0xFC:
        operator new();
      case 0xFD:
        operator new();
      case 0xFF:
        operator new();
      case 0x100:
        operator new();
      case 0x103:
        operator new();
      case 0x122:
        operator new();
      case 0x13D:
        operator new();
      case 0x15F:
        operator new();
      case 0x160:
        operator new();
      case 0x161:
        operator new();
      case 0x162:
        operator new();
      default:
        goto LABEL_231;
    }
  }

  if (*(this + 2) <= 0x207u)
  {
    if (*(this + 2) > 0x1FFu)
    {
      if (*(this + 2) > 0x203u)
      {
        switch(v2)
        {
          case 0x204u:
LABEL_63:
            operator new();
          case 0x205u:
            operator new();
          case 0x207u:
LABEL_39:
            operator new();
        }
      }

      else
      {
        switch(v2)
        {
          case 0x200u:
            operator new();
          case 0x201u:
            operator new();
          case 0x203u:
LABEL_25:
            operator new();
        }
      }
    }

    else
    {
      switch(*(this + 2))
      {
        case 0x1A5:
          operator new();
        case 0x1A9:
          operator new();
        case 0x1AA:
          operator new();
        case 0x1AB:
          operator new();
        case 0x1AD:
          operator new();
        case 0x1AE:
          operator new();
        case 0x1AF:
          operator new();
        case 0x1B0:
          operator new();
        case 0x1B1:
          operator new();
        case 0x1B2:
          operator new();
        case 0x1B5:
          operator new();
        case 0x1B6:
          operator new();
        case 0x1B7:
          operator new();
        case 0x1B8:
          operator new();
        case 0x1BA:
          operator new();
        case 0x1BB:
          operator new();
        case 0x1BC:
          operator new();
        case 0x1BE:
          operator new();
        case 0x1C0:
          operator new();
        case 0x1C1:
          operator new();
        default:
          goto LABEL_231;
      }
    }

    goto LABEL_231;
  }

  if (*(this + 2) > 0x41Du)
  {
    if (*(this + 2) <= 0x865u)
    {
      if (*(this + 2) > 0x7FFu)
      {
        switch(v2)
        {
          case 0x800u:
            operator new();
          case 0x809u:
            goto LABEL_58;
          case 0x862u:
            operator new();
        }
      }

      else
      {
        switch(v2)
        {
          case 0x41Eu:
            operator new();
          case 0x443u:
LABEL_65:
            operator new();
          case 0x4BCu:
            operator new();
        }
      }
    }

    else if (*(this + 2) <= 0x871u)
    {
      switch(v2)
      {
        case 0x866u:
          operator new();
        case 0x867u:
          operator new();
        case 0x868u:
          operator new();
      }
    }

    else if (*(this + 2) > 0x895u)
    {
      if (v2 == 2198)
      {
        operator new();
      }

      if (v2 == 4188)
      {
        operator new();
      }
    }

    else
    {
      if (v2 == 2162)
      {
        operator new();
      }

      if (v2 == 2175)
      {
        operator new();
      }
    }
  }

  else if (*(this + 2) <= 0x230u)
  {
    if (*(this + 2) > 0x220u)
    {
      switch(v2)
      {
        case 0x221u:
          operator new();
        case 0x223u:
LABEL_64:
          operator new();
        case 0x225u:
LABEL_43:
          operator new();
      }
    }

    else
    {
      switch(v2)
      {
        case 0x208u:
          operator new();
        case 0x209u:
          goto LABEL_58;
        case 0x20Bu:
          operator new();
      }
    }
  }

  else if (*(this + 2) <= 0x27Du)
  {
    switch(v2)
    {
      case 0x231u:
LABEL_62:
        operator new();
      case 0x236u:
        operator new();
      case 0x23Eu:
LABEL_51:
        operator new();
    }
  }

  else
  {
    if (*(this + 2) <= 0x405u)
    {
      if (v2 == 638)
      {
        operator new();
      }

      if (v2 == 659)
      {
        operator new();
      }

      goto LABEL_231;
    }

    if (v2 == 1030)
    {
LABEL_66:
      operator new();
    }

    if (v2 == 1033)
    {
LABEL_58:
      operator new();
    }
  }

LABEL_231:
  operator new();
}

{
  if (a2 == 2)
  {
    v2 = *(this + 2);
    if (v2 > 0x193)
    {
      if (*(this + 2) > 0x195u)
      {
        if (v2 == 428)
        {
          operator new();
        }

        if (v2 == 406)
        {
          operator new();
        }
      }

      else
      {
        if (v2 == 404)
        {
          operator new();
        }

        if (v2 == 405)
        {
          operator new();
        }
      }
    }

    else
    {
      switch(*(this + 2))
      {
        case 0x136:
          operator new();
        case 0x137:
          operator new();
        case 0x138:
          operator new();
        case 0x139:
        case 0x13A:
        case 0x13C:
        case 0x142:
        case 0x143:
        case 0x144:
        case 0x145:
        case 0x146:
        case 0x147:
        case 0x148:
        case 0x149:
          break;
        case 0x13B:
          operator new();
        case 0x13D:
          operator new();
        case 0x13E:
          operator new();
        case 0x13F:
          operator new();
        case 0x140:
          operator new();
        case 0x141:
          operator new();
        case 0x14A:
          operator new();
        case 0x14B:
          operator new();
        case 0x14C:
          operator new();
        case 0x14D:
          operator new();
        case 0x14E:
          operator new();
        case 0x14F:
          operator new();
        case 0x150:
          operator new();
        case 0x151:
          operator new();
        case 0x152:
          operator new();
        case 0x153:
          operator new();
        default:
          if (v2 == 28)
          {
            operator new();
          }

          return;
      }
    }

    operator new();
  }

  XlRecordFactory::createRecord(this, a2);
}

void XlUsersViewBegin::XlUsersViewBegin(XlUsersViewBegin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0B50;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 46) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 88) = 0;
}

uint64_t XlUsersViewBegin::setGuid(XlUsersViewBegin *this, unsigned __int8 *a2)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 2) = a2;
  return result;
}

uint64_t XlUsersViewBegin::setTopLeftPaneArea(XlUsersViewBegin *this, XlRef *a2)
{
  result = *(this + 8);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C400EA6A39BLL);
  }

  *(this + 8) = a2;
  return result;
}

void XlPls::XlPls(XlPls *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF2B0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlPls *a2)
{
  *v6 = *(a2 + 2) - 2;
  v4 = *v6;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 80))(*(this + 2)) & 1;
  if (v4)
  {
    operator new[](v4);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlPls::setRgb(XlPls *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 3) = a2;
  *(this + 10) = a3;
  return result;
}

void XlUsersViewEnd::XlUsersViewEnd(XlUsersViewEnd *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0B90;
  *(v2 + 16) = 0;
}

void *XlCustomViewTable::append(XlCustomViewTable *this, XlCustomView *a2)
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
    result = std::vector<XlCustomView *,ChAllocator<XlCustomView *>>::__emplace_back_slow_path<XlCustomView * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void XlCustomView::~XlCustomView(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

void XlPls::~XlPls(XlPls *this)
{
  *this = &unk_286ECF2B0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 10) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECF2B0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 10) = 0;
}

void XlUsersViewBegin::~XlUsersViewBegin(XlUsersViewBegin *this)
{
  XlUsersViewBegin::~XlUsersViewBegin(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0B50;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 8) = 0;
}

void XlEshGroup::~XlEshGroup(XlEshGroup *this)
{
  *this = &unk_286ED1340;
  *(this + 34) = &unk_286ED13F0;
  XlEshGroup::cleanup(this);
  EshGroup::~EshGroup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED1340;
  *(this + 34) = &unk_286ED13F0;
  XlEshGroup::cleanup(this);

  EshGroup::~EshGroup(this);
}

uint64_t XlEshGroup::cleanup(XlEshGroup *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 46) = 0;
  result = *(this + 47);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 47) = 0;
  return result;
}

void XlEshShape::~XlEshShape(XlEshShape *this)
{
  *this = &unk_286ED1510;
  *(this + 52) = &unk_286ED15E0;
  XlEshShape::cleanup(this);
  EshContentBase::~EshContentBase(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED1510;
  *(this + 52) = &unk_286ED15E0;
  XlEshShape::cleanup(this);

  EshContentBase::~EshContentBase(this);
}

uint64_t XlReadStgStream::seek(SsrwOOStream **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (XlReadStgStream::getStreamLocation(a1) != a2)
  {
    (*(a1[5]->var0 + 2))(a1[5], a2, 0);
    XlReadStgStream::start(a1, a1[5]);
  }

  var0 = (*a1)[2].var0;

  return (var0)(a1, a3, a4);
}

uint64_t XlReadStgStream::readNextHostRecordHeader(XlReadStgStream *this)
{
  v2 = (*(**(this + 5) + 40))(*(this + 5));
  v3 = v2;
  v4 = *(this + 6);
  v5 = *(this + 7) - v4;
  if ((v5 & 0x3FFFFFFFCLL) != 0)
  {
    v6 = (v5 >> 2);
    while (1)
    {
      v8 = *v4++;
      v7 = v8;
      if (v2 <= v8)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v3 = v7;
  }

LABEL_7:
  (*(**(this + 5) + 16))(*(this + 5), v3, 0);
  v9 = (*(**(this + 5) + 72))(*(this + 5));
  result = (*(**(this + 5) + 80))(*(this + 5));
  v11 = result;
  if (v9 == 2150)
  {
    result = (*(**(this + 5) + 16))(*(this + 5), 14, 1);
    v11 -= 14;
  }

  *(this + 6) = v11;
  return result;
}

void XlBottomMargin::XlBottomMargin(XlBottomMargin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD980;
  v2[2] = 0;
}

CGColorRef TSUCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

uint64_t XlReadStgStream::processNextStreamChunk(XlReadStgStream *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = *(this + 7) - v3;
  if ((v4 & 0x3FFFFFFFCLL) == 0 || !*(this + 2))
  {
    return 0;
  }

  (*(*v2 + 16))(v2, *(v3 + 4 * ((v4 >> 2) - 1)), 0);
  v5 = (*(**(this + 5) + 72))(*(this + 5));
  v6 = (*(**(this + 5) + 80))(*(this + 5));
  (*(**(this + 5) + 16))(*(this + 5), v6, 1);
  v7 = (*(**(this + 5) + 72))(*(this + 5));
  v8 = (*(**(this + 5) + 80))(*(this + 5));
  if (v7 != 60)
  {
    v9 = v8;
    if (v7 != 236 || v5 != 236)
    {
      if (v7 == 93)
      {
        (*(**(this + 5) + 16))(*(this + 5), 4, 1);
        v16 = (*(**(this + 5) + 72))(*(this + 5));
        (*(**(this + 5) + 16))(*(this + 5), (v9 - 6), 1);
        v13 = (*(**(this + 5) + 72))(*(this + 5));
        v17 = (*(**(this + 5) + 80))(*(this + 5));
        v18 = v17;
        if (v16 == 5)
        {
          if (v13 != 2057)
          {
            do
            {
              (*(**(this + 5) + 16))(*(this + 5), v18, 1);
              v19 = (*(**(this + 5) + 72))(*(this + 5));
              v18 = (*(**(this + 5) + 80))(*(this + 5));
            }

            while (v19 != 2057);
          }

          for (i = *(**(this + 5) + 16); ; i = *(**(this + 5) + 16))
          {
            i();
            v21 = (*(**(this + 5) + 72))(*(this + 5));
            v15 = (*(**(this + 5) + 80))(*(this + 5));
            if (v21 == 10)
            {
              break;
            }
          }

          goto LABEL_18;
        }

        if (v16 == 8 && v13 == 127)
        {
          v22 = (v17 - 8);
          (*(**(this + 5) + 16))(*(this + 5), 4, 1);
          v23 = (*(**(this + 5) + 104))(*(this + 5));
          v24 = v22;
          do
          {
            (*(**(this + 5) + 16))(*(this + 5), v22, 1);
            v13 = (*(**(this + 5) + 72))(*(this + 5));
            v25 = (*(**(this + 5) + 80))(*(this + 5));
            v22 = v25;
            if (v13 != 127 && v13 != 60)
            {
              break;
            }

            v24 += v25;
          }

          while (v24 <= v23);
        }
      }

      else
      {
        if (v7 != 438)
        {
          return 0;
        }

        (*(**(this + 5) + 16))(*(this + 5), 10, 1);
        v12 = (*(**(this + 5) + 72))(*(this + 5));
        (*(**(this + 5) + 16))(*(this + 5), (v9 - 12), 1);
        v13 = (*(**(this + 5) + 72))(*(this + 5));
        v14 = (*(**(this + 5) + 80))(*(this + 5));
        if (v12 >= 1)
        {
          LODWORD(v15) = v14;
          do
          {
            if ((*(**(this + 5) + 64))(*(this + 5)))
            {
              v12 -= (v15 - 1) / 2;
            }

            else
            {
              v12 = v12 - v15 + 1;
            }

            (*(**(this + 5) + 16))(*(this + 5));
            (*(**(this + 5) + 72))(*(this + 5));
            v15 = (*(**(this + 5) + 80))(*(this + 5));
          }

          while (v12 > 0);
LABEL_18:
          (*(**(this + 5) + 16))(*(this + 5), v15, 1);
          v13 = (*(**(this + 5) + 72))(*(this + 5));
          (*(**(this + 5) + 80))(*(this + 5));
        }
      }

      if (v13 == 236 || v13 == 60)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

LABEL_7:
  v10 = (*(**(this + 5) + 40))(*(this + 5)) - 4;

  return XlReadStgStream::mapStreamChunk(this, v10);
}

double EshTextBox::setInsetLeft(EshTextBox *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x81u, 2, &v4).n128_u64[0];
  return result;
}

double EshTextBox::setInsetRight(EshTextBox *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x83u, 2, &v4).n128_u64[0];
  return result;
}

double EshTextBox::setInsetTop(EshTextBox *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x82u, 2, &v4).n128_u64[0];
  return result;
}

double EshTextBox::setInsetBottom(EshTextBox *this, unsigned int a2)
{
  var2 = this->var2;
  v4 = a2;
  *&result = EshOpt::setProperty(var2, 0x84u, 2, &v4).n128_u64[0];
  return result;
}

void XlLeftMargin::XlLeftMargin(XlLeftMargin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEC40;
  v2[2] = 0;
}

void XlRightMargin::XlRightMargin(XlRightMargin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFCD8;
  v2[2] = 0;
}

void sub_25D330370(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x10A1C40DA0A10D5);
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void XlFormula::XlFormula(XlFormula *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE740;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xFFFF000000000000;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

void XlFormulaInfo::XlFormulaInfo(XlFormulaInfo *this)
{
  this->var0 = &unk_286ED1670;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 0;
  this->var4 = 0;
  this->var5 = -1;
  this->var7 = 0;
  this->var8 = 0;
  this->var6 = 0;
  *(&this->var8 + 7) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFormula *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 19) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 96))(*(this + 2));
  v5 = (*(**(this + 2) + 96))(*(this + 2));
  XlFormula::setEncodedResult(a2, v4 | (v5 << 32));
  v6 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 42) = v6 & 1;
  *(a2 + 43) = (v6 & 2) != 0;
  *(a2 + 44) = (v6 & 8) != 0;
  *(a2 + 45) = (v6 & 0x20) != 0;
  if (*(a2 + 14) < 5u)
  {
    v7 = 18;
  }

  else
  {
    (*(**(this + 2) + 16))(*(this + 2), 4, 1);
    v7 = 22;
  }

  *(a2 + 23) = (*(**(this + 2) + 72))(*(this + 2));
  v8 = *(a2 + 2);
  v9 = v8 >= v7;
  v10 = v8 - v7;
  if (v9)
  {
    v15 = v10;
    DataAndContinues = XlParserVisitor::getDataAndContinues(this, &v15, -1);
    v12 = *(this + 18);
    v9 = DataAndContinues >= v12;
    v13 = DataAndContinues - v12;
    if (v9)
    {
      *(a2 + 2) = v13;
    }

    XlArray::setFormula(a2, *(this + 3), v15);
  }

  return XlParserVisitor::endRead(this, a2);
}

const char *XlFormula::setEncodedResult(const char *this, unint64_t a2)
{
  v2 = this;
  *(this + 3) = a2;
  if (a2 < 0xFFFF000000000000)
  {
    v3 = 1;
  }

  else if ((a2 & 0xFC) != 0)
  {
    v3 = 4;
    this = ChLogFunction("npt a BOOLean", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/DataModel/XlFormula.cpp", 108);
  }

  else
  {
    v3 = dword_25D6FF760[a2 & 3];
  }

  *(v2 + 12) = v3;
  return this;
}

uint64_t XlParserVisitor::getDataAndContinues(XlParserVisitor *this, unsigned int *a2, int a3)
{
  v6 = (*(**(this + 2) + 40))(*(this + 2));
  LODWORD(v7) = 0;
  v8 = *a2;
  do
  {
    while (1)
    {
      do
      {
        (*(**(this + 2) + 16))(*(this + 2), v8, 1);
        v7 = (v8 + v7);
        v9 = (*(**(this + 2) + 72))(*(this + 2));
        v10 = (*(**(this + 2) + 80))(*(this + 2));
        v8 = v10;
      }

      while (v9 == 60);
      if (v9 != 2175)
      {
        break;
      }

      v8 = (v10 - 12);
      (*(**(this + 2) + 16))(*(this + 2), 12, 1);
    }
  }

  while (v9 == a3);
  (*(**(this + 2) + 16))(*(this + 2), v6, 0);
  if (v7)
  {
    operator new[](v7);
  }

  return v6;
}

uint64_t XlArray::setFormula(XlArray *this, unsigned __int8 *a2, int a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 2) = a2;
  *(this + 8) = a3;
  return result;
}

uint64_t XlParserVisitor::peekAhead(XlParserVisitor *this, XlHeader *a2, unsigned __int8 a3)
{
  XlParserVisitor::getHeader(this, a2, a3);
  v4 = *(**(this + 2) + 16);

  return v4();
}

char *XlFormulaInfo::takeFormula(XlFormulaInfo *this, char *a2, unsigned int a3, signed __int16 a4)
{
  result = this->var3;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  this->var3 = a2;
  this->var4 = a3;
  this->var5 = a4;
  return result;
}

uint64_t XlFormula::giveUpFormula(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 46) = -1;
  return this;
}

XlCell *XlCell::takeFormulaInfo(XlCell *this, XlFormulaInfo *a2)
{
  v3 = this;
  if (this->var11)
  {
    this = this->var8;
    if (this)
    {
      this = (*(this->var0 + 1))(this);
    }
  }

  v3->var8 = a2;
  v3->var11 = 1;
  return this;
}

void XlFmlaString::XlFmlaString(XlFmlaString *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE5C0;
  v2[2] = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFmlaString *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 14) <= 8u)
  {
    v4 = *(a2 + 2);
    v5 = **(this + 2);
    if (*(a2 + 14))
    {
      (*(v5 + 72))();
      v6 = -2;
    }

    else
    {
      (*(v5 + 64))();
      v6 = -1;
    }

    v7 = v4 + v6;
    if (v7)
    {
      operator new[]((v7 + 1));
    }

    operator new();
  }

  (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlFmlaString::~XlFmlaString(XlFmlaString *this)
{
  *this = &unk_286ECE5C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE5C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlFormula::~XlFormula(XlFormula *this)
{
  *this = &unk_286ECE740;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE740;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 8) = 0;
}

void XlShrFmla::XlShrFmla(XlShrFmla *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0058;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlRevisionMove::takeDestRef(XlRevisionMove *this, XlRef *a2)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C400EA6A39BLL);
  }

  *(this + 4) = a2;
  return result;
}

uint64_t XlChartGelFrame::setBinaryData(XlChartGelFrame *this, unsigned __int8 *a2, int a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 2) = a2;
  *(this + 6) = a3;
  return result;
}

XlShrFmla *XlFormulaInfo::takeShareBase(XlFormulaInfo *this, XlShrFmla *a2)
{
  result = this->var6;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var6 = a2;
  return result;
}

uint64_t XlFormula::getErrorResult(XlFormula *this)
{
  if (*(this + 12) == 16)
  {
    return *(this + 26);
  }

  else
  {
    return 255;
  }
}

XlCell *XlCell::setError(XlCell *a1, unsigned int a2)
{
  result = XlCell::resetContent(a1);
  a1->var4 = 4;
  a1->var7 = a2;
  if (a2 > 0x2A || ((1 << a2) & 0x41020808081) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return result;
}

unsigned __int8 *XlFormulaParser::addPtgString(unsigned __int8 *this, XlPtg *a2, int a3)
{
  if (a2)
  {
    v5 = this;
    v6 = **this;
    if (a3)
    {
      v7 = (*(v6 + 72))();
      if (v7 < 0)
      {
        goto LABEL_27;
      }

      v8 = v7;
      v9 = 2;
    }

    else
    {
      v8 = (*(v6 + 64))();
      v9 = 0;
    }

    if (v5[72] < 9u)
    {
      this = XlPtg::addDataItem(a2, v9 + v8 + 5);
      if (this)
      {
        v11 = this;
        if (a3)
        {
          *this = 2;
          v11 = &this[v9];
        }

        *v11 = v8;
        *(v11 + 1) = v5[72];
        if (!(v9 + v8))
        {
          goto LABEL_25;
        }

        v12 = *(**v5 + 56);
        goto LABEL_18;
      }
    }

    else
    {
      v10 = (*(**v5 + 64))();
      if (v10)
      {
        v13 = v9 + 2 * v8;
        this = XlPtg::addDataItem(a2, v13 + 6);
        if (this)
        {
          v11 = this;
          if (a3)
          {
            *this = 2;
            v11 = &this[v9];
          }

          *v11 = v8;
          v11[2] = v5[72];
          v11[3] = v10;
          if (v13)
          {
            v15 = v8;
            this = (*(**v5 + 136))(*v5, &v15, v11 + 4);
          }

          v11[2 * v8 + 5] = 0;
          v8 *= 2;
          goto LABEL_25;
        }
      }

      else
      {
        this = XlPtg::addDataItem(a2, v9 + v8 + 5);
        if (this)
        {
          v11 = this;
          if (a3)
          {
            *this = 2;
            v11 = &this[v9];
          }

          *v11 = v8;
          v11[2] = v5[72];
          v11[3] = v10;
          if (!(v9 + v8))
          {
            goto LABEL_25;
          }

          v12 = *(**v5 + 56);
LABEL_18:
          this = v12();
LABEL_25:
          v11[v8 + 4] = 0;
          return this;
        }
      }
    }

LABEL_27:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return this;
}

uint64_t SsrwOOMemStream::readSInt16(SsrwOOMemStream *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x80000000) != 0 || *(this + 4) - v1 <= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 15;
  }

  result = CsLeReadSInt16((**(this + 1) + v1));
  *(this + 5) += 2;
  return result;
}

void setFormulaForEDCell(EDCellHeader *a1, EDFormula *a2, EDRowBlocks *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [(EDRowBlocks *)v5 formulas];
    v8 = [v7 addObject:v9];
    if ((a1->var0 & 0x10000000) != 0)
    {
      a1[1].var0 = v8;
    }
  }
}

uint64_t XlFormulaProcessor::getShareBase(XlFormulaProcessor *this, XlFormulaInfo *a2, unsigned __int16 *a3, __int16 *a4)
{
  *a3 = -1;
  *a4 = -1;
  if (a2->var1 != 1 || a2->var4 < 5)
  {
    return 0;
  }

  var3 = a2->var3;
  if (!var3 || *var3 != 1)
  {
    return 0;
  }

  *a3 = CsLeReadUInt16((var3 + 1));
  *a4 = CsLeReadSInt16((var3 + 3));
  return 1;
}

void XlFormulaProcessor::convertToRegularFormula(XlFormulaProcessor *this, XlFormulaInfo *a2)
{
  XlHeader::XlHeader(&v17);
  if (a2->var1 == 1 && a2->var4 >= 5)
  {
    var3 = a2->var3;
    if (var3)
    {
      v5 = *var3;
      if (v5 == 2)
      {
        a2->var1 = 2;
      }

      else
      {
        if (v5 == 1)
        {
          UInt16 = CsLeReadUInt16((var3 + 1));
          SInt16 = CsLeReadSInt16((var3 + 3));
          var6 = a2->var6;
          if (*&a2->var6 != 0)
          {
            v9 = *(this + 2);
            if (!v9)
            {
              operator new();
            }

            if (var6)
            {
              XlBaseFormulaTable::add(v9, var6);
            }

            XlBaseFormulaTable::add(v9, a2->var7);
          }

          v10 = *(this + 2);
          if (v10)
          {
            v11 = XlBaseFormulaTable::base(v10, UInt16, SInt16);
            if (!v11)
            {
              XlFormulaParser::setFormula(*(this + 1), a2->var3, a2->var5, a2->var4);
            }

            v12 = v11[6];
            if (v12 == 1212)
            {
              operator new[](v14[6]);
            }

            if (v12 == 545)
            {
              operator new[](v13[8]);
            }

            exception = __cxa_allocate_exception(4uLL);
            v16 = 1004;
          }

          else
          {
            exception = __cxa_allocate_exception(4uLL);
            v16 = 1003;
          }

          *exception = v16;
        }

        a2->var1 = 0;
      }
    }
  }
}

void XlBaseFormulaTable::XlBaseFormulaTable(XlBaseFormulaTable *this)
{
  *this = &unk_286ED2708;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
}

void XlBaseFormulaTable::add(XlBaseFormulaTable *this, XlRecord *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = *(a2 + 6);
    if (v2 == 545 || v2 == 566 || v2 == 1212)
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 8000;
}

uint64_t XlBaseFormulaTable::base(XlBaseFormulaTable *this, int a2, int a3)
{
  v4 = XlBaseFormulaTable::locate(this, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 8 * v4);
  }
}

uint64_t XlBaseFormulaTable::locate(XlBaseFormulaTable *this, int a2, int a3)
{
  v3 = *(this + 4);
  v4 = *(this + 5) - v3;
  if ((v4 & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = (v4 >> 3);
  while (1)
  {
    v7 = *(v3 + 8 * result);
    if (v7)
    {
      if (v7[1] == a2 && a3 == *v7)
      {
        break;
      }
    }

    if (v6 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t formulaIndexForEDCell(const EDCellHeader *a1)
{
  if (!a1 || (a1->var0 & 0x10000000) == 0)
  {
    return -1;
  }

  if (a1[1].var0 == -1)
  {
    return -1;
  }

  return a1[1].var0;
}

_DWORD *setErrorValueForEDCell(_DWORD *result, int a2)
{
  if (result)
  {
    if (*result >> 29 == 5)
    {
      if ((*result & 0x10000000) != 0)
      {
        result[3] = a2;
      }

      else
      {
        result[2] = a2;
      }
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void setErrorValueForEDCell(EDCellHeader *, EDErrorValue)"}];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDCell.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:294 isFatal:0 description:"Invalid Cell Type!"];

      return +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  return result;
}

void XlFormulaInfo::~XlFormulaInfo(XlFormulaInfo *this)
{
  this->var0 = &unk_286ED1670;
  XlFormulaInfo::reset(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED1670;
  XlFormulaInfo::reset(this);
}

XlArray *XlFormulaInfo::reset(XlFormulaInfo *this)
{
  var2 = this->var2;
  if (var2)
  {
    (*(var2->var0 + 1))(var2);
  }

  this->var2 = 0;
  var3 = this->var3;
  if (var3)
  {
    MEMORY[0x25F896FE0](var3, 0x1000C8077774924);
  }

  this->var3 = 0;
  var8 = this->var8;
  if (var8)
  {
    (*(*var8 + 8))(var8);
  }

  this->var8 = 0;
  var6 = this->var6;
  if (var6)
  {
    (*(*var6 + 8))(var6);
  }

  this->var6 = 0;
  result = this->var7;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var7 = 0;
  this->var1 = 0;
  this->var4 = 0;
  this->var5 = -1;
  *&this->var9 = 0;
  this->var11 = 0;
  return result;
}

unsigned __int16 *extractDataFromPtgRefBuffer(unsigned __int16 *result, int *a2, BOOL *a3, int *a4, BOOL *a5)
{
  *a2 = -1;
  *a4 = -1;
  *a3 = 0;
  *a5 = 0;
  if (result)
  {
    *a2 = *result;
    v5 = result[1];
    *a3 = v5 >> 15;
    *a5 = (v5 & 0x4000) != 0;
    *a4 = v5;
  }

  return result;
}

unsigned __int16 *extractDataFromPtgAreaBuffer(unsigned __int16 *result, int *a2, BOOL *a3, int *a4, BOOL *a5, int *a6, BOOL *a7, int *a8, BOOL *a9)
{
  *a2 = -1;
  *a4 = -1;
  *a6 = -1;
  *a8 = -1;
  *a3 = 0;
  *a5 = 0;
  *a7 = 0;
  *a9 = 0;
  if (result)
  {
    *a2 = *result;
    v9 = result[2];
    *a3 = v9 >> 15;
    *a7 = (v9 & 0x4000) != 0;
    *a6 = v9;
    *a4 = result[1];
    v10 = result[3];
    *a5 = v10 >> 15;
    *a9 = (v10 & 0x4000) != 0;
    *a8 = v10;
  }

  return result;
}

void sub_25D3328C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EDFormula;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t XlBaseFormulaTable::clear(XlBaseFormulaTable *this)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 1);
      }

      *(v2 + 8 * v3) = 0;
      v5 = *(this + 4);
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        MEMORY[0x25F897000](v6, 0x1000C4052888210);
        v5 = *(this + 4);
      }

      *(v5 + 8 * v3++) = 0;
      v2 = *(this + 1);
    }

    while (v3 < ((*(this + 2) - v2) >> 3));
  }

  *(this + 2) = v2;
  *(this + 5) = *(this + 4);
  result = *(this + 7);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4052888210);
  }

  *(this + 7) = 0;
  *(this + 16) = 0;
  return result;
}

void XlShrFmla::~XlShrFmla(XlShrFmla *this)
{
  XlShrFmla::~XlShrFmla(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0058;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 4) = 0;
}

void XlTxo::XlTxo(XlTxo *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0A90;
  *(v2 + 38) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 29) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlTxo *a2)
{
  v4 = *(a2 + 4);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  v6 = (v5 >> 1) & 7;
  if (v6 == 4)
  {
    v6 = 5;
  }

  *(a2 + 7) = ((v5 >> 4) & 7) - 1;
  *(a2 + 8) = v6;
  *(a2 + 36) = (v5 & 0x200) != 0;
  *(a2 + 6) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 19) = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  v7 = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 72))(*(this + 2));
  result = (*(**(this + 2) + 80))(*(this + 2));
  v9 = (v4 - 18);
  if (v9 >= 1)
  {
    if (v9 == result)
    {
      operator new[](result);
    }

    goto LABEL_10;
  }

  if (v7 >= 1)
  {
    v10 = (*(**(this + 2) + 72))(*(this + 2));
    (*(**(this + 2) + 72))(*(this + 2));
    if (v10 == 60)
    {
      (*(**(this + 2) + 64))(*(this + 2));
      operator new();
    }

LABEL_10:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  *(this + 18) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  return result;
}

uint64_t XlAddMenu::setHelp(XlAddMenu *this, XlString *a2)
{
  result = *(this + 7);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 7) = a2;
  return result;
}

uint64_t XlGraphicsInfo::takeTextFormula(XlGraphicsInfo *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 11);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 11) = a2;
  *(this + 41) = a3;
  return result;
}

void XlTxo::~XlTxo(XlTxo *this)
{
  XlTxo::~XlTxo(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0A90;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  *(this + 21) = 0;
}

uint64_t XlEshShape::takeClientTextBox(uint64_t result, uint64_t a2)
{
  if (*(result + 592))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(result + 592) = a2;
  return result;
}

void XlPane::XlPane(XlPane *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF180;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlPane *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 11) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

XlPane *XlSheetPresentation::takePaneInfo(XlSheetPresentation *this, XlPane *a2)
{
  result = this->var3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  this->var3 = a2;
  return result;
}

void XlCondFmt::XlCondFmt(XlCondFmt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDBC0;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlCondFmt *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 72))(*(this + 2)) & 1;
  operator new();
}

uint64_t XlArray::setCellRange(XlArray *this, XlRef *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = a2;
  return result;
}

void *XlCondFmt::appendCellRange(XlCondFmt *this, XlRef *a2)
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
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 4, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 5) = result;
  return result;
}

void XlConditionalFormat::XlConditionalFormat(XlConditionalFormat *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_286ED1068;
}

XlChartPicF *XlChartSeriesFormat::takePictureFormat(XlChartSeriesFormat *this, XlChartPicF *a2)
{
  result = this->var4;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var4 = a2;
  return result;
}

void XlCf::XlCf(XlCf *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDAC0;
  *(v2 + 16) = 0x100000001;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
}

void XlDXf::XlDXf(XlDXf *this)
{
  *&this->var0 = 63;
  *&this->var4 = 2;
  *&this->var6 = 0u;
  *&this->var8 = 0u;
  *&this->var10 = 0u;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXf *a2)
{
  a2->var0 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var1 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var2 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var3 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var4 = (*(**(this + 2) + 64))(*(this + 2));
  result = (*(**(this + 2) + 64))(*(this + 2));
  a2->var5 = result;
  if ((a2->var3 & 2) != 0)
  {
    operator new();
  }

  if ((a2->var3 & 4) != 0)
  {
    operator new();
  }

  if ((a2->var3 & 8) != 0)
  {
    operator new();
  }

  if ((a2->var3 & 0x10) != 0)
  {
    operator new();
  }

  if ((a2->var3 & 0x20) != 0)
  {
    operator new();
  }

  if ((a2->var3 & 0x40) != 0)
  {
    operator new();
  }

  return result;
}

void OcContact::OcContact(OcContact *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfBorders *a2)
{
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  result = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 8) = v5 & 0x7F;
  *a2 = v4 & 0xF;
  *(a2 + 1) = v4 >> 4;
  *(a2 + 9) = (v5 >> 7) & 0x7F;
  *(a2 + 11) = result & 0x7F;
  *(a2 + 2) = (v4 >> 8) & 0xF;
  *(a2 + 3) = v4 >> 12;
  *(a2 + 10) = (result >> 7) & 0x7F;
  return result;
}

XlDXfBorders *XlDXf::setBordersChanges(XlDXf *this, XlDXfBorders *a2)
{
  result = this->var9;
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C40504FFAC1);
  }

  this->var3 |= 0x10u;
  this->var9 = a2;
  return result;
}

XlDXf *XlCf::setDifferentialFormat(XlCf *this, XlDXf *a2)
{
  result = this->var6;
  if (result)
  {
    XlDXf::~XlDXf(result);
    result = MEMORY[0x25F897000]();
  }

  this->var6 = a2;
  return result;
}

char *XlCf::takeFirstFmla(XlCf *this, char *a2, signed __int16 a3)
{
  result = this->var7;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  this->var7 = a2;
  this->var4 = a3;
  return result;
}

XlDXf **ChAutoPtr<XlDXf>::~ChAutoPtr(XlDXf **a1)
{
  v2 = *a1;
  if (v2)
  {
    XlDXf::~XlDXf(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

void *XlConditionalFormatTable::append(XlConditionalFormatTable *this, XlConditionalFormat *a2)
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
    result = std::vector<XlConditionalFormat *,ChAllocator<XlConditionalFormat *>>::__emplace_back_slow_path<XlConditionalFormat * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void XlDXfFont::XlDXfFont(XlDXfFont *this)
{
  this->var0 = &unk_286ECE080;
  this->var1 = 0;
  *&this->var2 = 0xFFFFFFFFLL;
  this->var4 = 0;
  *&this->var5 = 0;
  *&this->var7 = 0;
  *&this->var9 = 0u;
  *&this->var13 = 0u;
  *(&this->var16 + 2) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfFont *a2)
{
  v4 = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 64))(*(this + 2));
  v6 = (*(**(this + 2) + 64))(*(this + 2));
  if ((v5 - 1) <= 0x3F && v6 <= 1)
  {
    operator new();
  }

  (*(**(this + 2) + 16))(*(this + 2), (v4 + 64), 0);
  a2->var2 = (*(**(this + 2) + 96))(*(this + 2));
  v8 = (*(**(this + 2) + 96))(*(this + 2));
  if ((v8 & 2) != 0)
  {
    a2->var3 |= 2u;
    if ((v8 & 0x80) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  a2->var3 |= 0x80u;
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  a2->var3 |= 0x10u;
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  a2->var3 |= 0x20u;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  a2->var3 |= 1u;
  if ((v8 & 4) != 0)
  {
LABEL_12:
    a2->var3 |= 4u;
  }

LABEL_13:
  a2->var4 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var5 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var6 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var7 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var8 = (*(**(this + 2) + 64))(*(this + 2));
  (*(**(this + 2) + 64))(*(this + 2));
  a2->var9 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var10 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var11 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var12 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var13 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var14 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var15 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var16 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var17 = (*(**(this + 2) + 96))(*(this + 2));
  a2->var18 = (*(**(this + 2) + 64))(*(this + 2));
  v9 = *(**(this + 2) + 64);

  return v9();
}

XlDXfFont *XlDXf::setFontChanges(XlDXf *this, XlDXfFont *a2)
{
  result = this->var7;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var3 |= 4u;
  this->var7 = a2;
  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfPattern *a2)
{
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  result = (*(**(this + 2) + 72))(*(this + 2));
  *a2 = v4 >> 10;
  *(a2 + 2) = result & 0x7F;
  *(a2 + 3) = (result >> 7) & 0x7F;
  return result;
}

XlDXfPattern *XlDXf::setPatternChanges(XlDXf *this, XlDXfPattern *a2)
{
  result = this->var10;
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4000313F17);
  }

  this->var3 |= 0x20u;
  this->var10 = a2;
  return result;
}

uint64_t XlCondFmt::getCellRange(XlCondFmt *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (((*(this + 5) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

void XlConditionalFormat::~XlConditionalFormat(void **this)
{
  XlConditionalFormat::~XlConditionalFormat(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED1068;
  XlConditionalFormat::reset(this);
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

void XlCondFmt::~XlCondFmt(XlCondFmt *this)
{
  XlCondFmt::~XlCondFmt(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECDBC0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
  XlCondFmt::clearCellRanges(this);
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

uint64_t XlCondFmt::clearCellRanges(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
        v2 = *(v1 + 32);
        v3 = *(v1 + 40);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 40) = v2;
  return this;
}

void XlCf::~XlCf(XlCf *this)
{
  XlCf::~XlCf(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECDAC0;
  XlCf::setDifferentialFormat(this, 0);
  var7 = this->var7;
  if (var7)
  {
    MEMORY[0x25F896FE0](var7, 0x1000C8077774924);
  }

  this->var7 = 0;
  this->var4 = 0;
  var8 = this->var8;
  if (var8)
  {
    MEMORY[0x25F896FE0](var8, 0x1000C8077774924);
  }

  this->var8 = 0;
  this->var5 = 0;
}

void XlDXf::~XlDXf(XlDXf *this)
{
  var6 = this->var6;
  if (var6)
  {
    (*(var6->var0 + 1))(var6);
    this->var6 = 0;
  }

  var7 = this->var7;
  if (var7)
  {
    (*(var7->var0 + 1))(var7);
    this->var7 = 0;
  }

  var8 = this->var8;
  if (var8)
  {
    MEMORY[0x25F897000](var8, 0x1000C40C36A4E17);
    this->var8 = 0;
  }

  var9 = this->var9;
  if (var9)
  {
    MEMORY[0x25F897000](var9, 0x1000C40504FFAC1);
    this->var9 = 0;
  }

  var10 = this->var10;
  if (var10)
  {
    MEMORY[0x25F897000](var10, 0x1000C4000313F17);
    this->var10 = 0;
  }

  var11 = this->var11;
  if (var11)
  {
    MEMORY[0x25F897000](var11, 0x1000C40BDFB0063);
    this->var11 = 0;
  }
}

void XlDXfFont::~XlDXfFont(XlDXfFont *this)
{
  this->var0 = &unk_286ECE080;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  this->var1 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECE080;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  this->var1 = 0;
}

void XlVerticalPageBreaks::XlVerticalPageBreaks(XlVerticalPageBreaks *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0C50;
  *(v2 + 16) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlVerticalPageBreaks *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 80))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlVerticalPageBreaks::~XlVerticalPageBreaks(XlVerticalPageBreaks *this)
{
  XlVerticalPageBreaks::~XlVerticalPageBreaks(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0C50;
  XlHorizPageBreaks::clearPageBreaks(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

unsigned __int16 *extractDataFromPtgArea3DBuffer(unsigned __int16 *result, unsigned int *a2, int *a3, BOOL *a4, int *a5, BOOL *a6, int *a7, BOOL *a8, int *a9, BOOL *a10)
{
  *a2 = -1;
  *a3 = -1;
  *a5 = -1;
  *a7 = -1;
  *a9 = -1;
  *a4 = 0;
  *a6 = 0;
  *a8 = 0;
  *a10 = 0;
  if (result)
  {
    *a2 = *result;
    *a3 = result[1];
    v10 = result[3];
    *a4 = v10 >> 15;
    *a8 = (v10 & 0x4000) != 0;
    *a7 = v10;
    *a5 = result[2];
    v11 = result[4];
    *a6 = v11 >> 15;
    *a10 = (v11 & 0x4000) != 0;
    *a9 = v11;
  }

  return result;
}

unsigned __int16 *extractDataFromPtgRef3DBuffer(unsigned __int16 *result, unsigned int *a2, int *a3, BOOL *a4, int *a5, BOOL *a6)
{
  *a2 = -1;
  *a3 = -1;
  *a5 = -1;
  *a4 = 0;
  *a6 = 0;
  if (result)
  {
    *a2 = *result;
    *a3 = result[1];
    v6 = result[2];
    *a4 = v6 >> 15;
    *a6 = (v6 & 0x4000) != 0;
    *a5 = v6;
  }

  return result;
}

void XlBoolErr::XlBoolErr(XlBoolErr *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD940;
  v2[2] = 0;
}

void XlLink::~XlLink(void **this)
{
  XlLink::~XlLink(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED1720;
  XlLink::clear(this);
  this[10] = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 11);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  v3 = this[4];
  if (v3)
  {
    this[5] = v3;
    operator delete(v3);
  }
}

void XlName::~XlName(XlName *this)
{
  XlName::~XlName(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECEF00;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
  var7 = this->var7;
  if (var7)
  {
    MEMORY[0x25F896FE0](var7, 0x1000C8077774924);
  }

  this->var7 = 0;
  this->var8 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;
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
}

void XlBaseFormulaTable::~XlBaseFormulaTable(XlBaseFormulaTable *this)
{
  XlBaseFormulaTable::~XlBaseFormulaTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED2708;
  XlBaseFormulaTable::clear(this);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void sub_25D335A84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t XlReadStgStream::finish(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 56) = *(this + 48);
  *(this + 80) = *(this + 72);
  return this;
}

void XlReadStgStream::~XlReadStgStream(XlReadStgStream *this)
{
  XlReadStgStream::~XlReadStgStream(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3340;
  *(this + 2) = 0;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 7) = *(this + 6);
  v2 = *(this + 9);
  *(this + 10) = v2;
  if (*(this + 3))
  {
    MEMORY[0x25F896FE0](*(this + 3), 0x1000C8077774924);
    v2 = *(this + 9);
  }

  *(this + 3) = 0;
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

uint64_t OcBinaryData::setMinimumCapacity(OcBinaryData *this, unsigned int a2)
{
  result = this->var4;
  if (result < a2)
  {
    OcBinaryData::allocBuffer(this, a2);
  }

  return result;
}

void OcBinaryData::allocBuffer(OcBinaryData *this, unsigned int a2)
{
  if (this->var5)
  {
    if (this->var6)
    {
      MEMORY[0x25F896FE0]();
    }

    *&this->var3 = 0;
    this->var5 = 0;
  }

  this->var6 = 1;
  operator new[](a2);
}

uint64_t headerGetXFatStartSector(uint64_t result)
{
  if (result)
  {
    return *(result + 68);
  }

  return result;
}

uint64_t EshBlipT<EshDibBlipInfo>::EshBlipT(uint64_t a1, unsigned __int16 a2)
{
  EshBlip::EshBlip(a1, a2);
  *v3 = &unk_286EC60E0;
  *(v3 + 48) = v3 + 20;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  OcBinaryData::OcBinaryData((v3 + 72));
  *(a1 + 250) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a1 + 264;
  OcBinaryData::OcBinaryData((a1 + 296));
  *(a1 + 472) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 460) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0u;
  return a1;
}

void sub_25D335E24(_Unwind_Exception *a1)
{
  EshDibBlipInfo::~EshDibBlipInfo(v2);
  EshBlip::~EshBlip(v1);
  _Unwind_Resume(a1);
}

uint64_t EshDibBlip::accept(int a1, void *lpsrc)
{

  return v2();
}

void *EshContainer::removeChild(EshContainer *this, unsigned int a2)
{
  v2 = *(this + 4);
  v3 = (*(this + 5) - v2) >> 3;
  if (v3 <= a2)
  {
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C408B6DE1C6);
    v2 = *(this + 4);
    v3 = (*(this + 5) - v2) >> 3;
  }

  if (v3 <= a2)
  {
LABEL_8:
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v2 + 8 * a2) = 0;
  v7 = *(this + 5);
  v8 = *(this + 4) + 8 * a2;
  v9 = v7 - (v8 + 8);
  if (v7 != v8 + 8)
  {
    result = memmove(v8, (v8 + 8), v7 - (v8 + 8));
  }

  *(this + 5) = v8 + v9;
  return result;
}

void PptTextOutlineBlockKeyAtom::PptTextOutlineBlockKeyAtom(PptTextOutlineBlockKeyAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB5A8;
  *(v2 + 32) = &unk_286EDB650;
  *(v2 + 48) = 0;
}

uint64_t PptTextOutlineBlockKeyAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextOutlineBlockKeyAtom *a2)
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

void PptTextBlockStyling9Atom::PptTextBlockStyling9Atom(PptTextBlockStyling9Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD228;
  *(v2 + 32) = &unk_286EDD2D0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextBlockStyling9Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockStyling9Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  if (v4 < EshRecord::getDataLength(a2) + v4)
  {
    PptTextBlockStyling9Atom::addStyle(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptParaProperty9::PptParaProperty9(PptParaProperty9 *this)
{
  v1 = *&this->var3 & 0xC0;
  *&this->var0 &= 0xF8u;
  *(&this->var0 + 1) = -1;
  LOBYTE(this->var1) = 0;
  *&this->var3 = v1;
  this->var3.var1 = 0;
}

void PptSpecialInfo9::PptSpecialInfo9(PptSpecialInfo9 *this)
{
  v1 = *(this + 2) & 0xE0;
  *this &= 0xFCu;
  *(this + 1) &= ~1u;
  *(this + 2) = v1;
}

void PptSSSlideInfoAtom::PptSSSlideInfoAtom(PptSSSlideInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC870;
  *(v2 + 32) = &unk_286EDC918;
  *(v2 + 48) = 0;
  *(v2 + 60) = 0;
  *(v2 + 56) = 2;
  *(v2 + 64) = 0;
  *(v2 + 68) = 1;
}

uint64_t PptSSSlideInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSSSlideInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  a2->var6 = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (a2->var7 = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (a2->var8 = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 9) || (a2->var9 = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 10) || (a2->var10 = (*(**(this + 1) + 80))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (v5 = (*(**(this + 1) + 64))(*(this + 1)), PptSSSlideInfoAtom::setSpeed(a2, v5), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 13))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipUnknownBytes(*(this + 3), a2, 3u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptSSSlideInfoAtom::setSpeed(uint64_t result, unsigned int a2)
{
  v2 = 2;
  if (a2 < 3)
  {
    v2 = a2;
  }

  *(result + 68) = v2;
  return result;
}

EshColor *EshColor::paletteIndex(EshColor *this, uint64_t a2, EshColor *a3)
{
  *a2 = 1;
  *(a2 + 4) = this;
  return this;
}

void PptRecolorInfoAtom::PptRecolorInfoAtom(PptRecolorInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDBA88;
  *(v2 + 32) = &unk_286EDBB38;
  *(v2 + 46) = -1;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
}

uint64_t PptRecolorInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptRecolorInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 23) = (*(**(this + 1) + 72))(*(this + 1));
  (*(**(this + 1) + 80))(*(this + 1));
  (*(**(this + 1) + 80))(*(this + 1));
  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 6u);
  DataLength = EshRecord::getDataLength(a2);
  if ((((DataLength - 12) % 44) & 0xFFFFFFFB) != 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4008;
  }

  v5 = DataLength;
  PptRecolorInfoAtom::clearColors(a2);
  PptRecolorInfoAtom::clearFills(a2);
  if (v5 >= 56)
  {
    operator new();
  }

  PptSkipVisitor::skipKnownToEnd(*(this + 3), a2);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void *PptRecolorInfoAtom::clearColors(void *this)
{
  v1 = this;
  v2 = this[6];
  if (((this[7] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[6];
      }

      *(v2 + 8 * v4) = 0;
      v3 = v4 + 1;
      v2 = v1[6];
    }

    while (((v1[7] - v2) >> 3) > (v4 + 1));
  }

  v1[7] = v2;
  return this;
}

void *PptRecolorInfoAtom::clearFills(void *this)
{
  v1 = this;
  v2 = this[9];
  if (((this[10] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[9];
      }

      *(v2 + 8 * v4) = 0;
      v3 = v4 + 1;
      v2 = v1[9];
    }

    while (((v1[10] - v2) >> 3) > (v4 + 1));
  }

  v1[10] = v2;
  return this;
}

void PptRecolorSpec::PptRecolorSpec(PptRecolorSpec *this, BOOL a2)
{
  this->var0 = &unk_286EDBB88;
  this->var1.var0.var0 = 255;
  this->var2.var0.var0 = 255;
  this->var3 = 0;
  this->var4 = a2;
}

void PptParserVisitor::visit(PptParserVisitor *this, PptRecolorSpec *a2, uint64_t a3)
{
  (*(**(this + 1) + 16))(*(this + 1), a3, 0);
  a2->var3 = (*(**(this + 1) + 80))(*(this + 1)) != 0;
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  (*(**(this + 1) + 64))(*(this + 1));
  operator new();
}

void PptSlideFlags10Atom::PptSlideFlags10Atom(PptSlideFlags10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0950;
  *(v2 + 32) = &unk_286EE09F8;
}

uint64_t PptSlideFlags10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlideFlags10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void EshPropValFactory::createPropVal(EshPropValFactory *this)
{
  if (this <= 341)
  {
    if (this <= 336)
    {
      switch(this)
      {
        case 0xC1:
          operator new();
        case 0x145:
          operator new();
        case 0x146:
          operator new();
      }

      goto LABEL_26;
    }

    if (this != 337)
    {
      if (this == 338)
      {
        operator new();
      }

      if (this == 341)
      {
        operator new();
      }

      goto LABEL_26;
    }

LABEL_20:
    operator new();
  }

  if (this <= 462)
  {
    switch(this)
    {
      case 0x156:
        operator new();
      case 0x157:
        operator new();
      case 0x197:
        operator new();
    }

LABEL_26:
    operator new();
  }

  if (this != 463)
  {
    if (this == 899)
    {
      goto LABEL_20;
    }

    if (this != 928)
    {
      goto LABEL_26;
    }
  }

  operator new();
}

uint64_t EshPathParamTable::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 56))(a2, a1);
  }

  else
  {
    return 1;
  }
}

_WORD *EshPropValParserVisitor::decodeHeader(EshPropValParserVisitor *this, EshPathParamTable *a2, EshTablePropValHeader *a3)
{
  v4 = *(a3 + 2);
  if (v4 != 4 && v4 != 8)
  {
    if (v4 != 65520)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 7005;
    }

    *(a3 + 2) = 4;
  }

  return EshTablePropValHeader::mulDivElementSizeInStream(a3, 1u, 2u);
}

_WORD *EshTablePropValHeader::mulDivElementSizeInStream(_WORD *this, unsigned int a2, unsigned int a3)
{
  *this = (*this * a3) / a2;
  this[1] = (this[1] * a3) / a2;
  this[2] = (this[2] * a2) / a3;
  return this;
}

uint64_t EshPropValParserVisitor::parseValue(uint64_t this, EshComputedValue *a2, int a3)
{
  if (a3 == 4)
  {
    this = (*(**(this + 8) + 104))(*(this + 8));
    if (this > -2147483521)
    {
      a2->var0 = 0;
    }

    else
    {
      a2->var0 = 1;
      this &= 0x7Fu;
    }
  }

  else
  {
    if (a3 != 2)
    {
      return this;
    }

    a2->var0 = 0;
    this = (*(**(this + 8) + 80))(*(this + 8));
  }

  a2->var1 = this;
  return this;
}

uint64_t EshTablePropVal<EshPathCommand>::accept(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 72))(a2, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t EshPropValParserVisitor::parseElement(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 2)
  {
    goto LABEL_13;
  }

  v4 = (*(**(a1 + 8) + 80))(*(a1 + 8));
  v5 = v4 >> 13;
  if (v4 >> 13 <= 4)
  {
    *(a2 + 4) = v5;
    if (!*(a1 + 22))
    {
      v6 = v4 & 0x1FFF;
      goto LABEL_8;
    }

LABEL_13:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  if (v5 != 5)
  {
    goto LABEL_13;
  }

  v7 = (v4 >> 8) & 0x1F;
  v5 = v7 + 5;
  *(a2 + 4) = v7 + 5;
  v6 = *(a1 + 22) + v4;
  if (!v7)
  {
    result = 0;
    *(a1 + 22) = v6;
    goto LABEL_12;
  }

  *(a1 + 22) = 0;
LABEL_8:
  if (v5 == 5)
  {
    result = 0;
  }

  else
  {
    result = EshPathCommand::decodeCount(v5, v6);
  }

LABEL_12:
  *a2 = result;
  return result;
}

{
  v4 = (*(**(a1 + 8) + 104))(*(a1 + 8));
  v5 = v4;
  *a2 = v4 & 1;
  *(a2 + 1) = (v4 & 2) != 0;
  *(a2 + 2) = (v4 & 4) != 0;
  *(a2 + 3) = (v4 & 8) != 0;
  EshPropValParserVisitor::parseValuePair(a1, a2, 0, 1, 1, 1);
  if (*(a2 + 3) == 1)
  {
    EshPropValParserVisitor::parseValuePair(a1, a2, 1u, 1, (v5 >> 11) & 1, (v5 >> 12) & 1);
    EshPropValParserVisitor::parseValuePair(a1, a2, 2u, (v5 >> 13) & 1, (v5 >> 7) & 1, (v5 >> 8) & 1);
    (*(**(a1 + 8) + 104))(*(a1 + 8));
    v6 = *(**(a1 + 8) + 104);

    return v6();
  }

  else
  {
    EshPropValParserVisitor::parseValuePair(a1, a2, 1u, (v5 >> 4) & 1, (v5 >> 11) & 1, (v5 >> 12) & 1);
    EshPropValParserVisitor::parseValuePair(a1, a2, 2u, (v5 >> 5) & 1, (v5 >> 7) & 1, (v5 >> 8) & 1);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(a2 + 36), xmmword_25D6FD680)))) & 1) == 0)
    {
      *(a2 + 36) = 0;
      *(a2 + 44) = 0;
    }

    result = EshPropValParserVisitor::parseValuePair(a1, a2, 3u, (v5 >> 5) & 1, (v5 >> 9) & 1, (v5 >> 10) & 1);
    v9 = *(a2 + 52);
    v8 = (a2 + 52);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_25D6FD680)))) & 1) == 0)
    {
      *v8 = 0;
      v8[1] = 0;
    }
  }

  return result;
}

uint64_t EshPathCommand::decodeCount(int a1, unsigned int a2)
{
  if (a1 >= 36)
  {
    goto LABEL_13;
  }

  if (a1 >= 28)
  {
    goto LABEL_13;
  }

  v3 = &EshPathCommand::m_commandPropsArray[6 * a1];
  v4 = v3[2];
  if (v4 <= 0)
  {
    goto LABEL_13;
  }

  v5 = v3[3];
  v6 = a2 / v3[2];
  if ((v5 & 0x80000000) == 0)
  {
    if (0xFFFF - v5 >= v6)
    {
      goto LABEL_6;
    }

LABEL_13:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7007;
  }

  if (v6 < -v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  v7 = v5 + v6;
  if (a2 != v6 * v4)
  {
    ChLogFunction("A path command with a fractional count.", 8, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/DataModel/EshPathCommand.cpp", 251);
  }

  if (!v7)
  {
    v8 = "A path command with a count of 0.";
    v9 = 255;
    goto LABEL_15;
  }

  if (v7 != 1 && (EshPathCommand::m_commandPropsArray[6 * a1 + 5] & 1) == 0)
  {
    v8 = "An unrepeatable path command with a count > 1.";
    v9 = 259;
LABEL_15:
    ChLogFunction(v8, 8, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Binary/DataModel/EshPathCommand.cpp", v9);
  }

  return v7;
}

void PptTxInteracInfoAtom::PptTxInteracInfoAtom(PptTxInteracInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD420;
  *(v2 + 32) = &unk_286EDD4C8;
  *(v2 + 48) = 0;
}

uint64_t PptTxInteracInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTxInteracInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  a2->var6 = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  a2->var7 = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshShapeLib::isShadowOK(EshShapeLib *this, uint64_t a2)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    return (*ShapeType >> 6) & 1;
  }

  return a2;
}

uint64_t EshFill::getOpacity2(EshFill *this)
{
  v1 = *EshOpt::getProperty(this->var2, 0x184u);
  if (v1 >= 0x10000)
  {
    return 0x10000;
  }

  else
  {
    return v1;
  }
}

uint64_t parsePoint32(uint64_t result, int a2, int *a3, int *a4)
{
  v4 = 8 * a2;
  v5 = result + v4;
  *a3 = *(result + v4) | (*(v5 + 1) << 8) | (*(v5 + 2) << 16) | (*(v5 + 3) << 24);
  *a4 = *(v5 + 4);
  return result;
}

uint64_t EshBasicTablePropVal<EshComputedRect>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (((*(a1 + 16) - v2) >> 5) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 32 * a2;
}

CGFloat calculatePreviousPointOnLine(CGPoint a1, CGPoint a2, CGPoint *a3)
{
  v3 = vabdd_f64(a2.x, a1.x);
  v4 = vabdd_f64(a2.y, a1.y);
  v5 = a1.x <= a2.x;
  v6 = 1.0;
  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = -1.0;
  }

  if (a1.y > a2.y)
  {
    v6 = -1.0;
  }

  *a3 = a1;
  if (v3 >= v4)
  {
    if ((v3 & 0x80000000) == 0)
    {
      a1.x = a1.x + v7;
      a3->x = a1.x;
      if (v3 < 2 * v4)
      {
LABEL_12:
        a1.x = a1.y + v6;
        a3->y = a1.y + v6;
      }
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    if (v4 < 2 * v3)
    {
      a3->x = a1.x + v7;
    }

    goto LABEL_12;
  }

  return a1.x;
}