BOOL addAreaOperandFromAreaExtendedData(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = a1;
  *v20 = 0;
  *v21 = 0;
  *v19 = 0;
  *v18 = 0;
  *v17 = 0;
  *v16 = 0;
  extractDataFromPtgAreaBuffer(a3, &v21[1], &v17[1], v21, &v16[1], &v20[1], v17, v20, v16);
  v7 = v20[0];
  v6 = v20[1];
  v8 = v21[0];
  LODWORD(a3) = v21[1];
  extractDataFromPtgAreaBuffer(a2, &v21[1], &v19[1], v21, &v18[1], &v20[1], v19, v20, v18);
  v24.origin.x = v6;
  v24.origin.y = a3;
  v24.size.width = (v7 - v6);
  v24.size.height = (v8 - a3);
  v22.origin.x = v20[1];
  v22.origin.y = v21[1];
  v22.size.width = (v20[0] - v20[1]);
  v22.size.height = (v21[0] - v21[1]);
  v23 = CGRectUnion(v22, v24);
  x = v23.origin.x;
  v10 = (v23.size.width + v23.origin.x);
  v20[0] = v10;
  v20[1] = v23.origin.x;
  y = v23.origin.y;
  v12 = (v23.size.height + v23.origin.y);
  v21[0] = v12;
  v21[1] = v23.origin.y;
  if (v19[1])
  {
    x |= 0x8000u;
    v20[1] = x;
  }

  if (v19[0])
  {
    x |= 0x4000u;
    v20[1] = x;
  }

  if (v16[1])
  {
    v10 |= 0x8000u;
    v20[0] = v10;
  }

  if (v16[0])
  {
    v10 |= 0x4000u;
    v20[0] = v10;
  }

  v13 = [v5 addToken:69 extendedDataLength:8];
  if (v13)
  {
    *v13 = y;
    v13[1] = v12;
    v13[2] = x;
    v13[3] = v10;
  }

  v14 = v13 != 0;

  return v14;
}

BOOL addArea3DOperandFromRef3DExtendedData(void *a1, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v7 = a1;
  *v22 = 0;
  *v23 = 0;
  *v21 = 0;
  *v20 = 0;
  v18 = 0;
  v19 = 0;
  extractDataFromPtgRef3DBuffer(a4, &v18, v23, &v20[1], v22, v20);
  extractDataFromPtgRef3DBuffer(a3, &v19, &v23[1], &v21[1], &v22[1], v21);
  if (v19 != v18)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL addArea3DOperandFromRef3DExtendedData(__strong id<EDFormulaBuilding>, XL_ARGUMENT_REFERENCE_TYPE, ChUINT2 *, ChUINT2 *)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDFormulaBuilding.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:417 isFatal:0 description:"sheets are different only the first one will be used"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v10 = v23[0];
  v11 = v23[1];
  if (v23[1] <= v23[0])
  {
    v12 = v23[0];
    LOWORD(v10) = v23[1];
  }

  else
  {
    v23[0] = v23[1];
    v23[1] = v10;
    v12 = v11;
  }

  v13 = v22[0];
  v14 = v22[1];
  if (v22[1] <= v22[0])
  {
    v15 = v22[0];
    v13 = v22[1];
  }

  else
  {
    v22[0] = v22[1];
    v22[1] = v13;
    v15 = v14;
  }

  if (v21[1])
  {
    v13 |= 0x8000u;
    v22[1] = v13;
  }

  if (v21[0])
  {
    v13 |= 0x4000u;
    v22[1] = v13;
  }

  if (v20[1])
  {
    v15 |= 0x8000u;
    v22[0] = v15;
  }

  if (v20[0])
  {
    v15 |= 0x4000u;
    v22[0] = v15;
  }

  v16 = addArea3DOperandWithSheet(v7, a2, v19, v10, v12, v13, v15);

  return v16;
}

BOOL addArea3DOperandFromArea3DExtendedData(void *a1, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v23 = a1;
  *v24 = 0;
  *v29 = 0;
  *v30 = 0;
  *v28 = 0;
  *v27 = 0;
  *v26 = 0;
  *v25 = 0;
  extractDataFromPtgArea3DBuffer(a4, v24, &v30[1], &v26[1], v30, &v25[1], &v29[1], v26, v29, v25);
  v8 = v29[0];
  v7 = v29[1];
  v9 = v30[1];
  v21 = a2;
  v22 = v30[0];
  extractDataFromPtgArea3DBuffer(a3, &v24[1], &v30[1], &v28[1], v30, &v27[1], &v29[1], v28, v29, v27);
  v11 = v29[0];
  v10 = v29[1];
  v12 = v30[0];
  v13 = v30[1];
  if (v24[1] != v24[0])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL addArea3DOperandFromArea3DExtendedData(__strong id<EDFormulaBuilding>, XL_ARGUMENT_REFERENCE_TYPE, ChUINT2 *, ChUINT2 *)"}];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDFormulaBuilding.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:455 isFatal:0 description:"sheets are different only the first one will be used"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = (v8 - v7);
  v33.size.height = (v22 - v9);
  v31.origin.x = v10;
  v31.origin.y = v13;
  v31.size.width = (v11 - v10);
  v31.size.height = (v12 - v13);
  v32 = CGRectUnion(v31, v33);
  x = v32.origin.x;
  v17 = (v32.size.width + v32.origin.x);
  v29[0] = v17;
  v29[1] = v32.origin.x;
  v18 = (v32.size.height + v32.origin.y);
  v30[0] = v18;
  v30[1] = v32.origin.y;
  if (v28[1])
  {
    x |= 0x8000u;
    v29[1] = x;
  }

  if (v28[0])
  {
    x |= 0x4000u;
    v29[1] = x;
  }

  if (v25[1])
  {
    v17 |= 0x8000u;
    v29[0] = v17;
  }

  if (v25[0])
  {
    v17 |= 0x4000u;
    v29[0] = v17;
  }

  v19 = addArea3DOperandWithSheet(v23, v21, v24[1], v32.origin.y, v18, x, v17);

  return v19;
}

void *std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

void sub_25D54F850(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25D54FBB0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D54FC7C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x10B1C4028190DF1);

  _Unwind_Resume(a1);
}

void non-virtual thunk toXlChartScatterPlot::~XlChartScatterPlot(XlChartScatterPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartScatterPlot::~XlChartScatterPlot((this - 144));
}

void sub_25D54FDDC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void EDBuildablePtg::EDBuildablePtg(EDBuildablePtg *this, const EDBuildablePtg *a2)
{
  XlPtg::XlPtg(&this->var1);
  this->var0 = &unk_286ECA1C0;
  *&this->var5 = 0u;
  *&this->var7 = 0u;
  this->var9 = 0;
  *&this->var10 = 0;
  if (a2)
  {
    XlPtg::operator=(&this->var1, &a2->var1);
    v4 = *&a2->var5;
    v5 = *&a2->var7;
    *(&this->var8 + 4) = *(&a2->var8 + 4);
    *&this->var5 = v4;
    *&this->var7 = v5;
    this->var9 = a2->var9;
    this->var10 = a2->var10;
    *&this->var11 = *&a2->var11;
  }
}

uint64_t EDBuildablePtg::EDBuildablePtg(uint64_t a1, int a2)
{
  XlPtg::XlPtg(a1 + 8, a2);
  *a1 = &unk_286ECA1C0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  return a1;
}

void EDBuildablePtg::~EDBuildablePtg(EDBuildablePtg *this)
{
  this->var0 = &unk_286ECA1C0;
  if (*&this->var6 != 0)
  {
    var6 = this;
    if (this->var7)
    {
      goto LABEL_4;
    }

    while (var6->var6)
    {
      do
      {
        do
        {
LABEL_4:
          v3 = var6;
          var6 = var6->var7;
        }

        while (var6);
        if (v3->var6)
        {
          var6 = v3->var6;
        }

        else
        {
          var6 = v3;
        }
      }

      while (var6->var7);
    }

    var8 = var6->var8;
    LOBYTE(v5) = var8 == 0;
    var5 = var6->var5;
    LOBYTE(v7) = var5 == 0;
    if (var8 != 0 || var5 != 0)
    {
      do
      {
        EDBuildablePtg::setSibling(var6, 0);
        var6->var6 = 0;
        (*(var6->var0 + 1))(var6);
        if (v5)
        {
          var8 = var5;
          if (v7)
          {
            break;
          }
        }

        else if (var8->var6)
        {
          var8 = var8->var6;
          while (var8->var7 || var8->var6)
          {
            do
            {
              v8 = var8;
              var8 = var8->var7;
            }

            while (var8);
            if (v8->var6)
            {
              var8 = v8->var6;
            }

            else
            {
              var8 = v8;
            }
          }
        }

        var6 = var8;
        var8 = var8->var8;
        v5 = var8 == 0;
        var5 = var6->var5;
        v7 = var5 == 0;
      }

      while (!v5 || !v7);
    }
  }

  v9 = this->var8;
  if (v9 && v9->var7 == this)
  {
    v9->var7 = 0;
  }

  XlPtg::~XlPtg(&this->var1);
}

{
  EDBuildablePtg::~EDBuildablePtg(this);

  JUMPOUT(0x25F897000);
}

EDBuildablePtg *EDBuildablePtg::setSibling(EDBuildablePtg *this, EDBuildablePtg *a2)
{
  v3 = this;
  var7 = this->var7;
  if (var7)
  {
    if (var7->var8 != this)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void EDBuildablePtg::setSibling(EDBuildablePtg *)"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDBuildablePtg.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:141 isFatal:0 description:"EDBuildablePtg back pointer corrupt; this will likely crash soon."];

      this = +[OITSUAssertionHandler logBacktraceThrottled];
      var7 = v3->var7;
    }

    var7->var8 = 0;
  }

  v3->var7 = a2;
  if (a2)
  {
    if (a2->var8)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void EDBuildablePtg::setSibling(EDBuildablePtg *)"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/DOM/EDBuildablePtg.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:146 isFatal:0 description:"EDBuildablePtg already has sibling; this will likely crash soon."];

      this = +[OITSUAssertionHandler logBacktraceThrottled];
      a2 = v3->var7;
    }

    a2->var8 = v3;
  }

  return this;
}

EDBuildablePtg *EDBuildablePtg::setChild(EDBuildablePtg *this, EDBuildablePtg *a2)
{
  if (a2)
  {
    a2->var5 = this;
  }

  this->var6 = a2;
  return this;
}

void EDBuildablePtg::addToEDFormula(EDBuildablePtg *this, EDFormula *a2)
{
  v6 = a2;
  if (this)
  {
    while (this->var7 || this->var6)
    {
      do
      {
        v3 = this;
        this = this->var7;
      }

      while (this);
      if (v3->var6)
      {
        this = v3->var6;
      }

      else
      {
        this = v3;
      }
    }

    do
    {
      while (1)
      {
        (*(this->var0 + 2))(this, v6);
        var8 = this->var8;
        if (!var8)
        {
          break;
        }

        this = this->var8;
        if (var8->var6)
        {
          this = var8->var6;
          while (this->var7 || this->var6)
          {
            do
            {
              v5 = this;
              this = this->var7;
            }

            while (this);
            if (v5->var6)
            {
              this = v5->var6;
            }

            else
            {
              this = v5;
            }
          }
        }
      }

      this = this->var5;
    }

    while (this);
  }
}

uint64_t EDBuildablePtg::setIsSpanningRef(uint64_t result, int a2, __int16 a3, __int16 a4)
{
  *(result + 68) = a2;
  *(result + 72) = a3;
  *(result + 74) = a4;
  return result;
}

EDBuildablePtg *EDBuildablePtg::unionize(EDBuildablePtg *this, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 3)
  {
    v3 = *a2;
    while (1)
    {
      v4 = this;
      if (--v3 < 3)
      {
        break;
      }

      this = this->var7;
      if (!this)
      {
        goto LABEL_7;
      }
    }

    v3 = 2;
LABEL_7:
    *a2 = v3;
    if (v3 < v2)
    {
      if (v4)
      {
        EDBuildablePtg::setSibling(v4, 0);
        operator new();
      }
    }
  }

  return this;
}

EDBuildablePtg *EDBuildablePtg::intersect(EDBuildablePtg *this, unint64_t *a2)
{
  v3 = this;
  v4 = *a2 - 1;
  *a2 = v4;
  if (v4 >= 3)
  {
    var7 = this->var7;
    if (!var7)
    {
      goto LABEL_5;
    }

    this = EDBuildablePtg::intersect(var7, a2);
    v4 = *a2;
  }

  if (v4 >= 2)
  {
LABEL_5:
    EDBuildablePtg::setSibling(v3, 0);
    operator new();
  }

  *a2 = v4 + 1;
  return this;
}

void EDBuildableArrayPtg::EDBuildableArrayPtg(EDBuildableArrayPtg *this, int a2)
{
  XlPtg::XlPtg(this + 8, 64);
  *(this + 64) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 68) = 0;
  *this = &unk_286ECA1E8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 11) = 0;
}

void EDBuildableArrayPtg::~EDBuildableArrayPtg(EDBuildablePtg *this)
{
  this->var0 = &unk_286ECA1E8;
  var1 = this[1].var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  EDBuildablePtg::~EDBuildablePtg(this);
}

{
  EDBuildableArrayPtg::~EDBuildableArrayPtg(this);

  JUMPOUT(0x25F897000);
}

uint64_t EDBuildableArrayPtg::setColRow(uint64_t this, int a2, int a3)
{
  *(this + 76) = a2;
  *(this + 80) = a3;
  return this;
}

void EDBuildableArrayPtg::addPtgToArray(EDBuildableArrayPtg *this, EDFormula *a2, EDBuildablePtg *a3)
{
  v3 = a3;
  v13 = this;
  LastExtendedData = XlPtg::getLastExtendedData(&a2->mPackedData);
  LastExtendedDataLength = XlPtg::getLastExtendedDataLength(&a2->mPackedData);
  if (LODWORD(a2[1].super.isa) == 30)
  {
    addNumberToArray(v13, v3, *LastExtendedData);
    v7 = v13;
  }

  else
  {
    v8 = LastExtendedDataLength;
    v9 = [(EDBuildableArrayPtg *)v13 setExtendedDataForLastTokenAtIndex:(v3 + 2) length:LastExtendedDataLength + 2];
    isa = a2[1].super.isa;
    if (isa == 31)
    {
      v11 = 1;
    }

    else
    {
      v11 = 16;
    }

    if (isa == 29)
    {
      v11 = 4;
    }

    if (isa == 23)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    *v9 = v12;
    memcpy(v9 + 2, LastExtendedData, v8);
    v7 = v13;
  }
}

void EDBuildableArrayPtg::addTokenToEDFormula(EDBuildableArrayPtg *this, EDFormula *a2)
{
  v9 = a2;
  [(EDFormula *)v9 addToken:*(this + 4) extendedDataLength:8 extendedDataCount:(*(this + 21) + 2)];
  v3 = [(EDFormula *)v9 setExtendedDataForLastTokenAtIndex:0 length:4];
  v4 = [(EDFormula *)v9 setExtendedDataForLastTokenAtIndex:1 length:4];
  *v3 = *(this + 19);
  *v4 = *(this + 20);
  if (*(this + 21))
  {
    isa = *(this + 11);
    if (isa)
    {
      v6 = 1;
      do
      {
        EDBuildableArrayPtg::addPtgToArray(v9, isa, (v6 - 1));
        isa = isa[3].super.isa;
      }

      while (v6++ < *(this + 21) && isa != 0);
    }
  }
}

XlChart3D *XlChart3D::setClusterFlag(XlChart3D *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  this->var8 = this->var8 & 0xFFFD | v2;
  return this;
}

XlChart3D *XlChart3D::set3DScalingFlag(XlChart3D *this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  this->var8 = this->var8 & 0xFFFB | v2;
  return this;
}

uint64_t XlChartAlRuns::takeRichTextRuns(uint64_t this, unsigned __int8 *a2, int a3, unsigned int a4)
{
  if (a3 != 4 * a4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  *(this + 16) = a2;
  *(this + 24) = a4;
  return this;
}

void XlChartAxCext::XlChartAxCext(XlChartAxCext *this)
{
  XlRecord::XlRecord(this, 4194, 18, 0);
  *v1 = &unk_286ECA400;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 239;
}

uint64_t XlChartAxCext::setAutoMaxFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 32) = *(this + 32) & 0xFFFD | v2;
  return this;
}

void XlChartBopPop::XlChartBopPop(XlChartBopPop *this)
{
  XlRecord::XlRecord(this, 4193, 18, 0);
  *v1 = &unk_286ECA540;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 31) = 0;
}

void XlChartCatSerRange::XlChartCatSerRange(XlChartCatSerRange *this)
{
  XlRecord::XlRecord(this, 4128, 8, 0);
  *v1 = &unk_286ECA580;
  v1[2] = 0x1000100010000;
}

uint64_t XlChartCatSerRange::setMaxCrossFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 22) = *(this + 22) & 0xFFFD | v2;
  return this;
}

uint64_t XlChartCatSerRange::setReverseFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 22) = *(this + 22) & 0xFFFB | v2;
  return this;
}

void XlChartColSel::XlChartColSel(XlChartColSel *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA680;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlChartColSel::~XlChartColSel(XlChartColSel *this)
{
  *this = &unk_286ECA680;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECA680;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

_WORD *XlChartColSel::getSelectedColumnIndices(uint64_t a1, void *a2)
{
  result = *a2;
  a2[1] = *a2;
  v4 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      v8 = &v7[2 * v6];
      if (v6)
      {
        v9 = *v8;
        if (v9 <= *(v8 - 1))
        {
          exception = __cxa_allocate_exception(4uLL);
          *exception = 1005;
        }
      }

      else
      {
        v9 = *v7;
      }

      v11 = v9;
      if (v9 < v8[1])
      {
        do
        {
          if (result >= a2[2])
          {
            result = std::vector<unsigned short,ChAllocator<unsigned short>>::__emplace_back_slow_path<unsigned short const&>(a2, &v11);
            v7 = *(a1 + 16);
          }

          else
          {
            *result++ = v9;
          }

          a2[1] = result;
          LOWORD(v9) = v11 + 1;
          v11 = v9;
        }

        while (v7[2 * v6 + 1] > v9);
        v4 = *(a1 + 24);
      }

      ++v6;
    }

    while (v6 < v4);
  }

  return result;
}

uint64_t std::vector<unsigned short,ChAllocator<unsigned short>>::__emplace_back_slow_path<unsigned short const&>(uint64_t a1, _WORD *a2)
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

void sub_25D55135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int16 **std::vector<unsigned short,ChAllocator<unsigned short>>::__swap_out_circular_buffer(__int16 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void XlChartDat::XlChartDat(XlChartDat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA700;
  *(v2 + 16) = 0;
}

void XlChartDataProp::XlChartDataProp(XlChartDataProp *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECA780;
  *(v2 + 16) = 0;
}

double XlChartPicF::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return result;
}

void XlChartRowSel::XlChartRowSel(XlChartRowSel *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECACC8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlChartRowSel::~XlChartRowSel(XlChartRowSel *this)
{
  *this = &unk_286ECACC8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECACC8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

void XlChartScatter::XlChartScatter(XlChartScatter *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECAD08;
  v2[2] = 0x100000064;
}

uint64_t XlChartScatter::setShowNegativeBubblesFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 18) = *(this + 18) & 0xFFFD | v2;
  return this;
}

void XlChartSeriesList::setCountOfSeriesNumbers(XlChartSeriesList *this, unsigned int a2)
{
  *(this + 12) = a2;
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80BDFB0063);
    a2 = *(this + 12);
  }

  *(this + 2) = 0;
  operator new[](2 * a2);
}

uint64_t XlChartSeriesList::setSeriesNumber(uint64_t this, unsigned int a2, __int16 a3)
{
  if (*(this + 24) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(*(this + 16) + 2 * a2) = a3;
  return this;
}

void XlChartValueRange::XlChartValueRange(XlChartValueRange *this)
{
  XlRecord::XlRecord(this, 4127, 42, 0);
  *v1 = &unk_286ECB088;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 56) = 31;
}

uint64_t XlChartValueRange::setAutoMaxFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFFD | v2;
  return this;
}

uint64_t XlChartValueRange::setAutoMajorFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFFB | v2;
  return this;
}

uint64_t XlChartValueRange::setAutoMinorFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFF7 | v2;
  return this;
}

uint64_t XlChartValueRange::setAutoCrossFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFEF | v2;
  return this;
}

uint64_t XlChartValueRange::setLogScaleFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFDF | v2;
  return this;
}

uint64_t XlChartValueRange::setReverseFlag(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFFBF | v2;
  return this;
}

uint64_t std::vector<XlChartSeriesFormat *,ChAllocator<XlChartSeriesFormat *>>::__emplace_back_slow_path<XlChartSeriesFormat * const&>(void *a1, void *a2)
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

void sub_25D55248C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlChartCustomLegend *,ChAllocator<XlChartCustomLegend *>>::__emplace_back_slow_path<XlChartCustomLegend * const&>(void *a1, void *a2)
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

void sub_25D5525AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlChartCustomLabelText *,ChAllocator<XlChartCustomLabelText *>>::__emplace_back_slow_path<XlChartCustomLabelText * const&>(void *a1, void *a2)
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

void sub_25D5526CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlChartDropBarFormat::XlChartDropBarFormat(XlChartDropBarFormat *this)
{
  *this = &unk_286ECB1B0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 48) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void XlChartDropBarFormat::~XlChartDropBarFormat(XlChartDropBarFormat *this)
{
  *this = &unk_286ECB1B0;
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
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 4) = 0;
}

{
  XlChartDropBarFormat::~XlChartDropBarFormat(this);

  JUMPOUT(0x25F897000);
}

uint64_t *std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void non-virtual thunk toXlChartAreaPlot::~XlChartAreaPlot(XlChartAreaPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartAreaPlot::~XlChartAreaPlot((this - 144));
}

void non-virtual thunk toXlChartBarPlot::~XlChartBarPlot(XlChartBarPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartBarPlot::~XlChartBarPlot((this - 144));
}

void non-virtual thunk toXlChartLinePlot::~XlChartLinePlot(XlChartLinePlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartLinePlot::~XlChartLinePlot((this - 144));
}

void non-virtual thunk toXlChartPiePlot::~XlChartPiePlot(XlChartPiePlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartPiePlot::~XlChartPiePlot((this - 144));
}

void XlChartPieSubPlot::XlChartPieSubPlot(XlChartPieSubPlot *this)
{
  XlChartPlot::XlChartPlot(this);
  XlChartBopPop::XlChartBopPop((v2 + 144));
  *this = &unk_286ECB600;
  *(this + 18) = &unk_286ECB628;
}

void XlChartPieSubPlot::~XlChartPieSubPlot(XlChartPieSubPlot *this)
{
  TSURectWithOriginAndSize(this + 144);

  XlChartPlot::~XlChartPlot(this);
}

{
  TSURectWithOriginAndSize(this + 144);
  XlChartPlot::~XlChartPlot(this);

  JUMPOUT(0x25F897000);
}

void non-virtual thunk toXlChartPieSubPlot::~XlChartPieSubPlot(XlChartPieSubPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartPieSubPlot::~XlChartPieSubPlot((this - 144));
}

void non-virtual thunk toXlChartRadarAreaPlot::~XlChartRadarAreaPlot(XlChartRadarAreaPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartRadarAreaPlot::~XlChartRadarAreaPlot((this - 144));
}

void non-virtual thunk toXlChartRadarPlot::~XlChartRadarPlot(XlChartRadarPlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartRadarPlot::~XlChartRadarPlot((this - 144));
}

void non-virtual thunk toXlChartSurfacePlot::~XlChartSurfacePlot(XlChartSurfacePlot *this)
{
  v1 = (this - 144);
  TSURectWithOriginAndSize(this);

  XlChartPlot::~XlChartPlot(v1);
}

{
  XlChartSurfacePlot::~XlChartSurfacePlot((this - 144));
}

void non-virtual thunk toXlChartTrendLine::~XlChartTrendLine(XlChartTrendLine *this)
{
  v1 = (this - 200);
  TSURectWithOriginAndSize(this);

  XlChartDataSeries::~XlChartDataSeries(v1);
}

{
  XlChartTrendLine::~XlChartTrendLine((this - 200));
}

void XlChartDataTable::~XlChartDataTable(XlChartTextFrame *this)
{
  XlChartTextFrame::~XlChartTextFrame(this);

  JUMPOUT(0x25F897000);
}

void non-virtual thunk toXlChartParent::~XlChartParent(XlChartParent *this)
{
  XlChartParent::~XlChartParent((this - 88));
}

{
  XlChartParent::~XlChartParent((this - 88));

  JUMPOUT(0x25F897000);
}

uint64_t std::vector<XlChartFBI *,ChAllocator<XlChartFBI *>>::__emplace_back_slow_path<XlChartFBI * const&>(void *a1, void *a2)
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

void sub_25D55309C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<XlChartPlot::DefText>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

XlChartPicF *XlChartPlotAxis::takePictureFormat(XlChartPlotAxis *this, XlChartPicF *a2)
{
  result = this->var8;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var8 = a2;
  return result;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartBopPop *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 5) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 38) = (*(**(this + 2) + 64))(*(this + 2)) == 1;
  *(a2 + 4) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlChartParserVisitor::visit(uint64_t a1, uint64_t a2)
{
  XlParserVisitor::beginRead(a1);
  v4 = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 24) = v4;
  v5 = v4 >> 3;
  if ((v4 & 7) != 0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  if (!*(a1 + 24))
  {
    operator new[](v6);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 3002;
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartDat *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartTextPropsStream *a2)
{
  XlParserVisitor::beginRead(this);
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  *(a2 + 7) = (*(**(this + 2) + 104))(*(this + 2));
  v4 = (*(**(this + 2) + 104))(*(this + 2));
  if (v4)
  {
    if (v4 == *(a2 + 2) - 20)
    {
      operator new[](v4);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartShapePropsStream *a2)
{
  XlParserVisitor::beginRead(this);
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 2, 1);
  *(a2 + 7) = (*(**(this + 2) + 104))(*(this + 2));
  v4 = (*(**(this + 2) + 104))(*(this + 2));
  if (v4)
  {
    if (v4 == *(a2 + 2) - 24)
    {
      operator new[](v4);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartRichTextPropsStream *a2)
{
  XlParserVisitor::beginRead(this);
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  *(a2 + 7) = (*(**(this + 2) + 104))(*(this + 2));
  v4 = (*(**(this + 2) + 104))(*(this + 2));
  if (v4)
  {
    if (v4 == *(a2 + 2) - 20)
    {
      operator new[](v4);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartSeriesList *a2)
{
  XlParserVisitor::beginRead(this);
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  XlChartSeriesList::setCountOfSeriesNumbers(a2, v4);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartColSel *a2)
{
  XlParserVisitor::beginRead(this);
  v4 = *(a2 + 2);
  if ((v4 >> 2))
  {
    *(a2 + 12) = v4 >> 2;
    if (!*(this + 3))
    {
      operator new[](v4);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartRowSel *a2)
{
  XlParserVisitor::beginRead(this);
  v4 = *(a2 + 2);
  if ((v4 >> 2))
  {
    *(a2 + 12) = v4 >> 2;
    if (!*(this + 3))
    {
      operator new[](v4);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlChartParserVisitor::visit(XlChartParserVisitor *this, XlChartDataProp *a2)
{
  XlParserVisitor::beginRead(this);
  *(a2 + 8) = (*(**(this + 2) + 64))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void non-virtual thunk toXlChartBinaryReader::~XlChartBinaryReader(XlChartBinaryReader *this)
{

  OcReader::~OcReader((this + 1992));
}

{
  XlChartBinaryReader::~XlChartBinaryReader((this - 8));
}

{
  XlChartBinaryReader::~XlChartBinaryReader((this - 16));
}

void non-virtual thunk toXlChartBinaryReader::~XlChartBinaryReader(OcReader *this)
{

  OcReader::~OcReader(this + 124);
}

void virtual thunk toXlChartBinaryReader::~XlChartBinaryReader(XlChartBinaryReader *this)
{
  v2 = v1 + 125;

  OcReader::~OcReader(v2);
}

{
  XlChartBinaryReader::~XlChartBinaryReader((this + *(*this - 24)));
}

uint64_t XlChartBinaryReader::read(uint64_t this, XlChartDataTable *a2)
{
  if (*(this + 1604) >= 1)
  {
    operator new();
  }

  return this;
}

void sub_25D5544E4(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1081C4037A7DB44);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

void XlChartBinaryReader::read(XlChartBinaryReader *this, XlChartSeriesFormat *a2)
{
  var9_low = LOWORD(a2->var9);
  p_var9_low = &var9_low;
  v3 = *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1880, &var9_low) + 8);
  v4 = (*(*this + 624))(this);
  (*(*v4 + 16))(v4, v3, 0);
  operator new();
}

void sub_25D554744(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1081C40C0FF9E3ELL);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t XlChartBinaryReader::mapMSGraphIndex(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] - *a3;
  if ((v4 & 0x1FFFFFFFELL) != 0)
  {
    v5 = (v4 >> 1) - 1;
    v6 = v5 >> 1;
    v7 = *(v3 + 2 * v6);
    if (v7 != a2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v6 == v8)
        {
          v10 = v5 == v9;
          v9 = v5;
          if (v10)
          {
            goto LABEL_13;
          }
        }

        else if (v7 < a2)
        {
          v9 = v6;
        }

        else
        {
          v5 = v6;
        }

        v8 = v9;
        v6 = (v9 + v5) >> 1;
        v7 = *(v3 + 2 * v6);
      }

      while (v7 != a2);
    }
  }

  else
  {
LABEL_13:
    LOWORD(v6) = -1;
  }

  return v6;
}

uint64_t OcBinaryReader::seekToEnd(OcBinaryReader *this, const EshRoot *a2)
{
  v3 = (*(this->var0 + 14))(this);
  v4 = *(*v3 + 80);

  return v4(v3, a2);
}

uint64_t std::vector<XlChartTextFrame::TextRun,ChAllocator<XlChartTextFrame::TextRun>>::__emplace_back_slow_path<XlChartTextFrame::TextRun const&>(uint64_t a1, _DWORD *a2)
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

void sub_25D554B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlChartEnteredText::getNumber(XlChartEnteredText *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 3001;
}

void XlChartEnteredNumber::getText(XlChartEnteredNumber *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 3001;
}

void XlChartEnteredNumber::getTextReference(XlChartEnteredNumber *this)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 3001;
}

uint64_t std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int const&>(uint64_t a1, _DWORD *a2)
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
  *v11 = *a2;
  v12 = (v4 & 0x3FFFFFFFCLL) + 4;
  v13 = 0;
  std::vector<int,ChAllocator<int>>::__swap_out_circular_buffer(a1, &__p);
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

void sub_25D554D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(uint64_t a1, _DWORD *a2)
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
  *v11 = *a2;
  v12 = (v4 & 0x3FFFFFFFCLL) + 4;
  v13 = 0;
  std::vector<int,ChAllocator<int>>::__swap_out_circular_buffer(a1, &__p);
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

void sub_25D554F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlChartBinaryReader::PlotDescriptor,ChAllocator<XlChartBinaryReader::PlotDescriptor>>::__emplace_back_slow_path<XlChartBinaryReader::PlotDescriptor const&>(void *a1, void *a2)
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

void sub_25D55507C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<ChAllocator<XlChartBinaryReader::SeriesDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *ChAutoPtr<ChVector<unsigned short>>::~ChAutoPtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x25F897000](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void XlAddMenu::XlAddMenu(XlAddMenu *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD6D0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
}

void XlAddMenu::~XlAddMenu(XlAddMenu *this)
{
  *this = &unk_286ECD6D0;
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
}

{
  XlAddMenu::~XlAddMenu(this);

  JUMPOUT(0x25F897000);
}

void XlAutoFilter::XlAutoFilter(XlAutoFilter *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  XlAutoFilterData::XlAutoFilterData((v3 + 16));
  *this = &unk_286ECD750;
  *(this + 2) = &unk_286ECD778;
}

void XlAutoFilter::~XlAutoFilter(XlAutoFilter *this)
{
  XlAutoFilterData::~XlAutoFilterData((this + 16));
}

{
  XlAutoFilterData::~XlAutoFilterData((this + 16));

  JUMPOUT(0x25F897000);
}

void non-virtual thunk toXlAutoFilter::~XlAutoFilter(XlAutoFilter *this)
{
  XlAutoFilterData::~XlAutoFilterData(this);

  JUMPOUT(0x25F897000);
}

void XlAutoFilterData::XlAutoFilterData(XlAutoFilterData *this)
{
  *this = &unk_286ECD7D0;
  *(this + 10) = 0;
  *(this + 7) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void XlAutoFilterData::~XlAutoFilterData(XlAutoFilterData *this)
{
  *this = &unk_286ECD7D0;
  XlAutoFilterData::setFirstCondDoper(this, 0);
  XlAutoFilterData::setSecondCondDoper(this, 0);
}

{
  *this = &unk_286ECD7D0;
  XlAutoFilterData::setFirstCondDoper(this, 0);
  XlAutoFilterData::setSecondCondDoper(this, 0);
}

{
  *this = &unk_286ECD7D0;
  XlAutoFilterData::setFirstCondDoper(this, 0);
  XlAutoFilterData::setSecondCondDoper(this, 0);

  JUMPOUT(0x25F897000);
}

XlDoper *XlAutoFilterData::setFirstCondDoper(XlAutoFilterData *this, XlDoper *a2)
{
  result = *(this + 3);
  if (result)
  {
    XlDoper::~XlDoper(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 3) = a2;
  return result;
}

XlDoper *XlAutoFilterData::setSecondCondDoper(XlAutoFilterData *this, XlDoper *a2)
{
  result = *(this + 4);
  if (result)
  {
    XlDoper::~XlDoper(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 4) = a2;
  return result;
}

void XlBackup::XlBackup(XlBackup *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD840;
  *(v2 + 16) = 0;
}

uint64_t std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(void *a1, void *a2)
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

void sub_25D555C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlContinue::XlContinue(XlContinue *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDC00;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 26) = 1;
}

void XlContinue::~XlContinue(XlContinue *this)
{
  *this = &unk_286ECDC00;
  if (*(this + 26) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
    }
  }

  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
}

{
  XlContinue::~XlContinue(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlContinue::takeContent(uint64_t this, unsigned __int8 *a2, __int16 a3)
{
  v5 = this;
  if (*(this + 26) == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }
  }

  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 26) = 1;
  return this;
}

void XlCoordList::XlCoordList(XlCoordList *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDC40;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
}

void XlCoordList::~XlCoordList(XlCoordList *this)
{
  *this = &unk_286ECDC40;
  XlCoordList::clearVertices(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  XlCoordList::~XlCoordList(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlCoordList::clearVertices(uint64_t this)
{
  v1 = this;
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
        this = MEMORY[0x25F897000](this, 0x1000C4052888210);
        v2 = *(v1 + 16);
        v3 = *(v1 + 24);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 24) = v2;
  return this;
}

void *XlCoordList::appendVertex(XlCoordList *this, XlVertex *a2)
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
    result = std::vector<XlVertex *,ChAllocator<XlVertex *>>::__emplace_back_slow_path<XlVertex * const&>(this + 2, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

uint64_t std::vector<XlVertex *,ChAllocator<XlVertex *>>::__emplace_back_slow_path<XlVertex * const&>(void *a1, void *a2)
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

void sub_25D556130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlCrn::XlCrn(XlCrn *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDCC0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
}

void XlCrn::~XlCrn(XlCrn *this)
{
  *this = &unk_286ECDCC0;
  XlCrn::clearOperands(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  XlCrn::~XlCrn(this);

  JUMPOUT(0x25F897000);
}

void *XlCrn::clearOperands(void *this)
{
  v1 = this;
  v2 = this[3];
  v3 = this[4];
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
        v2 = v1[3];
        v3 = v1[4];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[4] = v2;
  return this;
}

void *XlCrn::appendOperand(XlCrn *this, XlOper *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    result = std::vector<XlOper *,ChAllocator<XlOper *>>::__emplace_back_slow_path<XlOper * const&>(this + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 4) = result;
  return result;
}

uint64_t std::vector<XlOper *,ChAllocator<XlOper *>>::__emplace_back_slow_path<XlOper * const&>(void *a1, void *a2)
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

void sub_25D556494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlDbCell::XlDbCell(XlDbCell *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDD00;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
}

uint64_t XlDbCell::takeCellOffsets(XlDbCell *this, unsigned __int16 *a2, __int16 a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 2) = a2;
  *(this + 14) = a3;
  return result;
}

void XlDbCell::~XlDbCell(XlDbCell *this)
{
  *this = &unk_286ECDD00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 2) = 0;
  *(this + 14) = 0;
}

{
  *this = &unk_286ECDD00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 2) = 0;
  *(this + 14) = 0;

  JUMPOUT(0x25F897000);
}

void XlDCon::XlDCon(XlDCon *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDD40;
  *(v2 + 16) = 0;
  *(v2 + 19) = 0;
}

void XlDConBin::XlDConBin(XlDConBin *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDD80;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

void XlDConBin::~XlDConBin(XlDConBin *this)
{
  *this = &unk_286ECDD80;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
}

{
  XlDConBin::~XlDConBin(this);

  JUMPOUT(0x25F897000);
}

void XlDConName::XlDConName(XlDConName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDDC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

void XlDConName::~XlDConName(XlDConName *this)
{
  *this = &unk_286ECDDC0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
}

{
  XlDConName::~XlDConName(this);

  JUMPOUT(0x25F897000);
}

void XlDelMenu::XlDelMenu(XlDelMenu *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDEC0;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

void XlDelMenu::~XlDelMenu(XlDelMenu *this)
{
  *this = &unk_286ECDEC0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
}

{
  *this = &unk_286ECDEC0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;

  JUMPOUT(0x25F897000);
}

void XlDocRoute::XlDocRoute(XlDocRoute *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDF80;
  *(v2 + 16) = 0;
  *(v2 + 21) = 0;
  *(v2 + 30) = 0;
  *(v2 + 38) = 0;
  *(v2 + 44) = 0u;
  *(v2 + 60) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 88) = 0u;
}

void XlDocRoute::~XlDocRoute(XlDocRoute *this)
{
  *this = &unk_286ECDF80;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 7) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 8) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 9) = 0;
  v6 = *(this + 10);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 10) = 0;
  v7 = *(this + 11);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 11) = 0;
  v8 = *(this + 12);
  if (v8)
  {
    MEMORY[0x25F897000](v8, 0x1000C4077774924);
  }

  *(this + 12) = 0;
  *(this + 11) = 0;
}

{
  XlDocRoute::~XlDocRoute(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlDocRoute::setCustomMessage(XlDocRoute *this, XlString *a2)
{
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 9) = a2;
  return result;
}

uint64_t XlDocRoute::setBookTitle(XlDocRoute *this, XlString *a2)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 10) = a2;
  return result;
}

uint64_t XlDocRoute::setOriginatorName(XlDocRoute *this, XlString *a2)
{
  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 11) = a2;
  return result;
}

uint64_t XlDocRoute::setOriginatorAddress(XlDocRoute *this, unsigned __int8 *a2, int a3)
{
  result = *(this + 12);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4077774924);
  }

  *(this + 12) = a2;
  *(this + 11) = a3;
  return result;
}

void XlDoper::XlDoper(XlDoper *this)
{
  *this = 0x200000000;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
}

void XlDoper::~XlDoper(XlDoper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
}

void XlDsf::XlDsf(XlDsf *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDFC0;
  *(v2 + 16) = 0;
}

XlDXfUserFmt *XlDXf::setFmtChanges(XlDXf *this, XlDXfUserFmt *a2)
{
  result = this->var6;
  if (result)
  {
    result = (*(result->var0 + 1))(result);
  }

  this->var3 |= 2u;
  this->var6 = a2;
  return result;
}

XlDXfAlign *XlDXf::setAlignChanges(XlDXf *this, XlDXfAlign *a2)
{
  result = this->var8;
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C40C36A4E17);
  }

  this->var3 |= 8u;
  this->var8 = a2;
  return result;
}

XlDXfProtect *XlDXf::setProtectChanges(XlDXf *this, XlDXfProtect *a2)
{
  result = this->var11;
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C40BDFB0063);
  }

  this->var3 |= 0x40u;
  this->var11 = a2;
  return result;
}

void XlDXfAlign::XlDXfAlign(XlDXfAlign *this)
{
  *&this->var0 = 0x200000000;
  this->var6 = 0;
  *&this->var2 = 0;
  *&this->var4 = 0;
}

void XlDXfUserFmt::XlDXfUserFmt(XlDXfUserFmt *this, BOOL a2)
{
  this->var0 = &unk_286ECE0B8;
  this->var1 = a2;
  this->var2 = -1;
  this->var3 = 0;
}

void XlDXfUserFmt::~XlDXfUserFmt(XlDXfUserFmt *this)
{
  this->var0 = &unk_286ECE0B8;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;
}

{
  this->var0 = &unk_286ECE0B8;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;

  JUMPOUT(0x25F897000);
}

void XlEdg::XlEdg(XlEdg *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE0F0;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

uint64_t XlEshClientTextBox::accept(int a1, void *lpsrc)
{
  ClientVisitor = EshDataModelVisitor::getClientVisitor(v2);

  return v4();
}

void XlExternCount::XlExternCount(XlExternCount *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE3C0;
  *(v2 + 16) = 0;
}

void XlExternName::XlExternName(XlExternName *this)
{
  XlRecord::XlRecord(this, 547, 7, 9);
  *v1 = &unk_286ECE400;
  *(v1 + 22) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
}

uint64_t XlExternName::setContentType(uint64_t result, int a2)
{
  switch(a2)
  {
    case 2:
      *(result + 16) = 0;
      *(result + 19) = 256;
      break;
    case 1:
      *(result + 16) = 0;
      *(result + 20) = 0;
      break;
    case 0:
      *(result + 17) = 0;
      break;
  }

  return result;
}

uint64_t std::vector<XlXti *,ChAllocator<XlXti *>>::__emplace_back_slow_path<XlXti * const&>(void *a1, void *a2)
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

void sub_25D557928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlFilePass::~XlFilePass(XlFilePass *this)
{
  *this = &unk_286ECE4C0;
  v1 = *(this + 3);
  if (v1)
  {
    MEMORY[0x25F896FE0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_286ECE4C0;
  v1 = *(this + 3);
  if (v1)
  {
    MEMORY[0x25F896FE0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x25F897000);
}

void XlFilePass::XlFilePass(XlFilePass *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE4C0;
  *(v2 + 16) = -1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlFileSharing2::XlFileSharing2(XlFileSharing2 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE500;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 24) = 0;
}

void XlFileSharing2::~XlFileSharing2(XlFileSharing2 *this)
{
  *this = &unk_286ECE500;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
}

{
  *this = &unk_286ECE500;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;

  JUMPOUT(0x25F897000);
}

void XlFnGroupCount::XlFnGroupCount(XlFnGroupCount *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE600;
  *(v2 + 16) = 14;
}

void XlFnGroupName::XlFnGroupName(XlFnGroupName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE640;
  v2[2] = 0;
}

void XlFnGroupName::~XlFnGroupName(XlFnGroupName *this)
{
  *this = &unk_286ECE640;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECE640;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

void XlFont::XlFont(XlFont *this)
{
  XlRecord::XlRecord(this, 49, 16, 9);
  *v1 = &unk_286ECE680;
  *(v1 + 16) = 0;
  *(v1 + 24) = 2147418112;
  *(v1 + 28) = 400;
  *(v1 + 44) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

void XlGcw::XlGcw(XlGcw *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE780;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlGcw::setTable(XlGcw *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4077774924);
  }

  *(this + 3) = a2;
  *(this + 8) = a3;
  return result;
}

void XlGcw::~XlGcw(XlGcw *this)
{
  *this = &unk_286ECE780;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_286ECE780;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C4077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

void XlHdrFooterDrawing::XlHdrFooterDrawing(XlHdrFooterDrawing *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE900;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0;
}

void XlHdrFooterDrawing::~XlHdrFooterDrawing(XlHdrFooterDrawing *this)
{
  *this = &unk_286ECE900;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_286ECE900;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t std::vector<XlBrk *,ChAllocator<XlBrk *>>::__emplace_back_slow_path<XlBrk * const&>(void *a1, void *a2)
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

void sub_25D558908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlInterfaceHdr::XlInterfaceHdr(XlInterfaceHdr *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEB00;
  *(v2 + 16) = 1200;
}

void XlLabelRanges::XlLabelRanges(XlLabelRanges *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEBC0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 257;
}

void XlLabelRanges::~XlLabelRanges(XlLabelRanges *this)
{
  *this = &unk_286ECEBC0;
  XlLabelRanges::clearRowLabelRanges(this);
  XlLabelRanges::clearColLabelRanges(this);
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
  XlLabelRanges::~XlLabelRanges(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlLabelRanges::clearRowLabelRanges(uint64_t this)
{
  v1 = this;
  if (*(this + 64))
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

uint64_t XlLabelRanges::clearColLabelRanges(uint64_t this)
{
  v1 = this;
  if (*(this + 65))
  {
    v2 = *(this + 40);
    v3 = *(this + 48);
    if (((v3 - v2) & 0x7FFFFFFF8) != 0)
    {
      v4 = 0;
      do
      {
        this = *(v2 + 8 * v4);
        if (this)
        {
          this = MEMORY[0x25F897000](this, 0x1000C400EA6A39BLL);
          v2 = *(v1 + 40);
          v3 = *(v1 + 48);
        }

        ++v4;
      }

      while (v4 < ((v3 - v2) >> 3));
    }
  }

  else
  {
    v2 = *(this + 40);
  }

  *(v1 + 48) = v2;
  return this;
}

void *XlLabelRanges::appendColLabelRange(XlLabelRanges *this, XlRef *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 6);
  if (v3 >= *(this + 7))
  {
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 5, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 6) = result;
  return result;
}

void XlList::XlList(XlList *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v3 = &unk_286ECEC80;
  XlRef::XlRef((v3 + 16), 0);
  *(this + 27) = 0;
  XlString::XlString((this + 32));
  XlString::XlString((this + 136));
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
}

void XlList::~XlList(XlList *this)
{
  *this = &unk_286ECEC80;
  v2 = (this + 32);
  CsSimpleHeapVector<XlListColumn>::~CsSimpleHeapVector(this + 30);
  XlString::~XlString((this + 136));
  XlString::~XlString(v2);
}

{
  XlList::~XlList(this);

  JUMPOUT(0x25F897000);
}

void **CsSimpleHeapVector<XlListColumn>::~CsSimpleHeapVector(void **a1)
{
  CsSimpleHeapVector<XlListColumn>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void *CsSimpleHeapVector<XlListColumn>::clear(void *result)
{
  v1 = result[1];
  v2 = (v1 - *result) >> 3;
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = *(v1 - 8);
      if (v4)
      {
        XlString::~XlString((v4 + 504));
        XlString::~XlString((v4 + 400));
        XlString::~XlString((v4 + 272));
        XlAutoFilterData::~XlAutoFilterData((v4 + 224));
        XlString::~XlString((v4 + 112));
        XlString::~XlString((v4 + 8));
        result = MEMORY[0x25F897000](v4, 0x10B0C405854E9BBLL);
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

void XlListColumn::XlListColumn(XlListColumn *this)
{
  *this = 0;
  v2 = (this + 112);
  XlString::XlString((this + 8));
  XlString::XlString(v2);
  *(this + 216) = 0;
  XlAutoFilterData::XlAutoFilterData((this + 224));
  *(this + 264) = 0;
  XlListXmlMap::XlListXmlMap((this + 272));
  XlListDataFormat::XlListDataFormat((this + 376));
}

void sub_25D5591FC(_Unwind_Exception *a1)
{
  XlString::~XlString((v1 + 272));
  XlAutoFilterData::~XlAutoFilterData((v1 + 224));
  XlString::~XlString(v2);
  XlString::~XlString((v1 + 8));
  _Unwind_Resume(a1);
}

unsigned int *XlListColumn::setTotalsCalculation(unsigned int *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *result = a2;
  return result;
}

uint64_t XlListColumn::getFilterReference(XlListColumn *this)
{
  if ((*(this + 216) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return this + 224;
}

uint64_t XlListColumn::getXmlMapReference(XlListColumn *this)
{
  if ((*(this + 264) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return this + 272;
}

void XlListDataFormat::XlListDataFormat(XlListDataFormat *this)
{
  *this = 0;
  v1 = (this + 128);
  XlString::XlString((this + 24));
  XlString::XlString(v1);
}

uint64_t XlListDataFormat::isDefaultStringValid(XlListDataFormat *this)
{
  if (*this > 0xBu || ((1 << *this) & 0x95E) == 0)
  {
    LOBYTE(v3) = 0;
  }

  else if (XlListDataFormat::getHasDefault(this))
  {
    v3 = 0x902u >> *this;
    if (*this > 0xBu)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t XlListDataFormat::isDefaultCheckboxValid(XlListDataFormat *this)
{
  if (*this > 0xBu || ((1 << *this) & 0x95E) == 0)
  {
    return 0;
  }

  result = XlListDataFormat::getHasDefault(this);
  if (result)
  {
    return *this == 3;
  }

  return result;
}

unsigned int *XlListDataFormat::setType(unsigned int *result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *result = a2;
  return result;
}

_DWORD *XlListDataFormat::setDecimalPlaceCount(_DWORD *this, unsigned int a2)
{
  if ((*this & 0xFFFFFFFB) != 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v3 = 1010;
    goto LABEL_6;
  }

  if (a2 >= 0x1F)
  {
    exception = __cxa_allocate_exception(4uLL);
    v3 = 1004;
LABEL_6:
    *exception = v3;
  }

  this[1] = a2;
  return this;
}

uint64_t XlListDataFormat::setShowAsPercentage(uint64_t this, char a2)
{
  if (*this != 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 16) = a2;
  return this;
}

uint64_t XlListDataFormat::setIsRequired(uint64_t this, char a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 17) = a2;
  return this;
}

uint64_t XlListDataFormat::setHasMinimumBound(uint64_t this, char a2)
{
  if ((*this & 0xFFFFFFFB) != 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 18) = a2;
  return this;
}

uint64_t XlListDataFormat::setHasMaximumBound(uint64_t this, char a2)
{
  if (*this == 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 19) = a2;
  return this;
}

uint64_t XlListDataFormat::getHasDefault(XlListDataFormat *this)
{
  if (*this > 0xBu || ((1 << *this) & 0x95E) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return *(this + 20);
}

uint64_t XlListDataFormat::setHasDefault(uint64_t this, char a2)
{
  if (*this > 0xBu || ((1 << *this) & 0x95E) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 20) = a2;
  return this;
}

uint64_t XlListDataFormat::getHasFormula(XlListDataFormat *this)
{
  if ((*this - 1) >= 4 && *this != 6)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return *(this + 21);
}

uint64_t XlListDataFormat::setHasFormula(uint64_t this, char a2)
{
  if ((*this - 1) >= 4 && *this != 6)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 21) = a2;
  return this;
}

uint64_t XlListDataFormat::getFormulaReference(XlListDataFormat *this)
{
  v1 = (*this - 1) < 4 || *this == 6;
  if (!v1 || (XlListDataFormat::getHasFormula(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return this + 24;
}

uint64_t XlListDataFormat::isFormulaValid(XlListDataFormat *this)
{
  if ((*this - 1) < 4 || *this == 6)
  {
    return XlListDataFormat::getHasFormula(this);
  }

  else
  {
    return 0;
  }
}

uint64_t XlListDataFormat::getDefaultStringReference(XlListDataFormat *this)
{
  v1 = *this > 0xBu || ((1 << *this) & 0x95E) == 0;
  if (v1 || !XlListDataFormat::getHasDefault(this) || (*this <= 0xBu ? (v3 = ((1 << *this) & 0x902) == 0) : (v3 = 1), v3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  return this + 128;
}

uint64_t XlListDataFormat::isDefaultNumberValid(XlListDataFormat *this)
{
  if (*this > 0xBu || ((1 << *this) & 0x95E) == 0)
  {
    LOBYTE(v3) = 0;
  }

  else if (XlListDataFormat::getHasDefault(this))
  {
    v3 = 0x54u >> *this;
    if (*this > 6u)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t XlListDataFormat::setDefaultNumber(XlListDataFormat *this, double a2)
{
  v2 = *this > 0xBu || ((1 << *this) & 0x95E) == 0;
  if (v2 || (result = XlListDataFormat::getHasDefault(this), !result) || (*this <= 6u ? (v6 = ((1 << *this) & 0x54) == 0) : (v6 = 1), v6))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 1) = a2;
  return result;
}

uint64_t XlListDataFormat::setDefaultCheckbox(XlListDataFormat *this, char a2)
{
  v2 = *this > 0xBu || ((1 << *this) & 0x95E) == 0;
  if (v2 || (result = XlListDataFormat::getHasDefault(this), !result) || *this != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1010;
  }

  *(this + 232) = a2;
  return result;
}

void XlLpr::XlLpr(XlLpr *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECECC0;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 32) = 0;
  *(v2 + 20) = 0;
  *(v2 + 28) = 0;
}

void XlLpr::~XlLpr(XlLpr *this)
{
  *this = &unk_286ECECC0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
}

{
  *this = &unk_286ECECC0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

void XlMms::XlMms(XlMms *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECED40;
  *(v2 + 16) = 0;
}

void XlMsoDrawing::XlMsoDrawing(XlMsoDrawing *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEDC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
}

void XlMsoDrawing::~XlMsoDrawing(XlMsoDrawing *this)
{
  *this = &unk_286ECEDC0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECEDC0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlMsoDrawingGroup::XlMsoDrawingGroup(XlMsoDrawingGroup *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEE00;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
}

void XlMsoDrawingGroup::~XlMsoDrawingGroup(XlMsoDrawingGroup *this)
{
  *this = &unk_286ECEE00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECEE00;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlName::XlName(XlName *this)
{
  XlRecord::XlRecord(this, 24, 14, 9);
  *v1 = &unk_286ECEF00;
  *(v1 + 84) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
}

uint64_t std::vector<XlGenericRecord *,ChAllocator<XlGenericRecord *>>::__emplace_back_slow_path<XlGenericRecord * const&>(void *a1, void *a2)
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

void sub_25D55A2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlChartRichTextPropsStream::XlChartRichTextPropsStream(XlChartRichTextPropsStream *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF000;
  v2[2] = 0;
  v2[3] = 0;
}

void XlChartRichTextPropsStream::~XlChartRichTextPropsStream(XlChartRichTextPropsStream *this)
{
  *this = &unk_286ECF000;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECF000;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t XlChartRichTextPropsStream::giveXmlStream(XlChartRichTextPropsStream *this)
{
  v1 = *(this + 2);
  *(this + 2) = 0;
  return v1;
}

void XlObjProj::XlObjProj(XlObjProj *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF040;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlObjProj::~XlObjProj(XlObjProj *this)
{
  *this = &unk_286ECF040;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_286ECF040;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t XlOper::getDataSize(XlOper *this)
{
  v1 = *this;
  if (*this > 0x10u)
  {
    return 0;
  }

  if (((1 << v1) & 0x10112) != 0)
  {
    return 9;
  }

  if (v1 != 2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    return XlString::getSizeInStream(v3) + 1;
  }

  else
  {
    return 4;
  }
}

void XlPane::XlPane(XlPane *this)
{
  XlRecord::XlRecord(this, 65, 10, 9);
  *v1 = &unk_286ECF180;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

void XlParamQry::XlParamQry(XlParamQry *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF1C0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 20) = 0;
  *(v2 + 28) = 0;
}

uint64_t XlParamQry::setRgb(XlParamQry *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 4) = a2;
  *(this + 14) = a3;
  return result;
}

void XlParamQry::~XlParamQry(XlParamQry *this)
{
  *this = &unk_286ECF1C0;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *(this + 14) = 0;
}

{
  *this = &unk_286ECF1C0;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *(this + 14) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t XlPhoneticInfo::getSizeInStream(XlPhoneticInfo *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = 2 * v1 + 14;
  }

  else
  {
    v2 = 16;
  }

  return (v2 + 6 * ((*(this + 20) - *(this + 18)) >> 3));
}

uint64_t XlPhoneticInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    OcText::clearBuffer((a1 + 24));
    XlPhoneticInfo::clearRuns(a1);
    *(a1 + 8) = -1;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = *(a2 + 8);
    OcText::operator=(a1 + 24, a2 + 24);
    *(a1 + 12) = *(a2 + 12);
    if (((*(a2 + 80) - *(a2 + 72)) & 0x7FFFFFFF8) != 0)
    {
      operator new();
    }
  }

  return a1;
}

uint64_t std::vector<XlPhoneticRun *,ChAllocator<XlPhoneticRun *>>::__emplace_back_slow_path<XlPhoneticRun * const&>(void *a1, void *a2)
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

void sub_25D55AD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlPub::XlPub(XlPub *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF4B0;
  *(v2 + 16) = 0;
  *(v2 + 48) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

void XlPub::~XlPub(XlPub *this)
{
  *this = &unk_286ECF4B0;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x25F897000](v4, 0x1000C408AA14F5FLL);
  }

  *(this + 4) = 0;
}

{
  XlPub::~XlPub(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlPub::setAlias(XlPub *this, unsigned __int8 *a2)
{
  result = *(this + 6);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 6) = a2;
  return result;
}

uint64_t XlPub::setSection(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C408AA14F5FLL);
  }

  *(a1 + 32) = a2;
  return result;
}

void XlQsi::XlQsi(XlQsi *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF4F0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlQsi::~XlQsi(XlQsi *this)
{
  *this = &unk_286ECF4F0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
}

{
  *this = &unk_286ECF4F0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

void XlRangeProtection::XlRangeProtection(XlRangeProtection *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF530;
  *(v2 + 50) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
}

void XlRangeProtection::~XlRangeProtection(XlRangeProtection *this)
{
  *this = &unk_286ECF530;
  XlRangeProtection::clearRanges(this);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 7) = 0;
  *(this + 32) = 0;
  *(this + 25) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 2) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  XlRangeProtection::~XlRangeProtection(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRangeProtection::takePermissionContent(XlRangeProtection *this, unsigned __int8 *a2, __int16 a3, __int16 a4)
{
  result = *(this + 7);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 7) = a2;
  *(this + 32) = a3;
  *(this + 25) = a4;
  return result;
}

void *XlRangeProtection::appendRange(XlRangeProtection *this, XlRef *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    result = std::vector<XlRef *,ChAllocator<XlRef *>>::__emplace_back_slow_path<XlRef * const&>(this + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 4) = result;
  return result;
}

void XlRecipName::XlRecipName(XlRecipName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF5B0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlRecipName::~XlRecipName(XlRecipName *this)
{
  *this = &unk_286ECF5B0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C4077774924);
  }

  *(this + 4) = 0;
  *(this + 4) = 0;
}

{
  XlRecipName::~XlRecipName(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRecipName::setRecipientAddress(XlRecipName *this, unsigned __int8 *a2, int a3)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4077774924);
  }

  *(this + 4) = a2;
  *(this + 4) = a3;
  return result;
}

void XlRevisionAutoFmt::XlRevisionAutoFmt(XlRevisionAutoFmt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF698;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlRevisionAutoFmt::~XlRevisionAutoFmt(XlRevisionAutoFmt *this)
{
  *this = &unk_286ECF698;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
}

{
  XlRevisionAutoFmt::~XlRevisionAutoFmt(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionAutoFmt::takeDataHeader(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C40451B5BE8);
  }

  *(a1 + 16) = a2;
  return result;
}

void XlRevisionChangeCell::XlRevisionChangeCell(XlRevisionChangeCell *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF6D8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
}

void XlRevisionChangeCell::~XlRevisionChangeCell(XlRevisionChangeCell *this)
{
  *this = &unk_286ECF6D8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 5) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 7) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 9) = 0;
  v6 = *(this + 10);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 10) = 0;
  v7 = *(this + 11);
  if (v7)
  {
    XlDXf::~XlDXf(v7);
    MEMORY[0x25F897000]();
  }

  *(this + 11) = 0;
  v8 = *(this + 12);
  if (v8)
  {
    XlDXf::~XlDXf(v8);
    MEMORY[0x25F897000]();
  }

  *(this + 12) = 0;
}

{
  XlRevisionChangeCell::~XlRevisionChangeCell(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionChangeCell::takeNewFormulaDefinition(XlRevisionChangeCell *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 5);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 5) = a2;
  *(this + 24) = a3;
  return result;
}

XlDXf *XlRevisionChangeCell::takeNewFormat(XlRevisionChangeCell *this, XlDXf *a2)
{
  result = *(this + 11);
  if (result)
  {
    XlDXf::~XlDXf(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 11) = a2;
  return result;
}

XlDXf *XlRevisionChangeCell::takeOldFormat(XlRevisionChangeCell *this, XlDXf *a2)
{
  result = *(this + 12);
  if (result)
  {
    XlDXf::~XlDXf(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 12) = a2;
  return result;
}

void XlRevisionConflict::XlRevisionConflict(XlRevisionConflict *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF718;
  v2[2] = 0;
}

void XlRevisionConflict::~XlRevisionConflict(XlRevisionConflict *this)
{
  *this = &unk_286ECF718;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECF718;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

void XlRevisionCopy::XlRevisionCopy(XlRevisionCopy *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF758;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlRevisionCopy::~XlRevisionCopy(XlRevisionCopy *this)
{
  *this = &unk_286ECF758;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECF758;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlRevisionDefineName::XlRevisionDefineName(XlRevisionDefineName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF798;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0u;
  *(v2 + 52) = 0u;
  *(v2 + 68) = 0u;
  *(v2 + 84) = 0u;
  *(v2 + 100) = 0u;
  *(v2 + 113) = 0u;
  *(v2 + 132) = 15;
}

void XlRevisionDefineName::~XlRevisionDefineName(XlRevisionDefineName *this)
{
  *this = &unk_286ECF798;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 10) = 0;
  v5 = *(this + 15);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(this + 15) = 0;
  v6 = *(this + 6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 6) = 0;
  v7 = *(this + 11);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 11) = 0;
  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 7) = 0;
  v9 = *(this + 12);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 12) = 0;
  v10 = *(this + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 8) = 0;
  v11 = *(this + 13);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 13) = 0;
  v12 = *(this + 9);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 9) = 0;
  v13 = *(this + 14);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 14) = 0;
}

{
  XlRevisionDefineName::~XlRevisionDefineName(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionDefineName::takeNewNameDefinition(XlRevisionDefineName *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 10);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 10) = a2;
  *(this + 12) = a3;
  return result;
}

uint64_t XlRevisionDefineName::takeOldNameDefinition(XlRevisionDefineName *this, unsigned __int8 *a2, __int16 a3)
{
  result = *(this + 15);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 15) = a2;
  *(this + 16) = a3;
  return result;
}

uint64_t XlRevisionDefineName::takeOldDescriptionText(XlRevisionDefineName *this, XlString *a2)
{
  result = *(this + 12);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 12) = a2;
  return result;
}

uint64_t XlRevisionDefineName::takeOldHelpTopicText(XlRevisionDefineName *this, XlString *a2)
{
  result = *(this + 13);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 13) = a2;
  return result;
}

uint64_t XlRevisionDefineName::takeOldStatusText(XlRevisionDefineName *this, XlString *a2)
{
  result = *(this + 14);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 14) = a2;
  return result;
}

void XlRevisionDeleteShape::XlRevisionDeleteShape(XlRevisionDeleteShape *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF7D8;
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  *(v2 + 32) = 0;
}

void XlRevisionDeleteShape::~XlRevisionDeleteShape(XlRevisionDeleteShape *this)
{
  *this = &unk_286ECF7D8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 4) = 0;
}

{
  XlRevisionDeleteShape::~XlRevisionDeleteShape(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionExclusive::XlRevisionExclusive(XlRevisionExclusive *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF818;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlRevisionExclusive::~XlRevisionExclusive(XlRevisionExclusive *this)
{
  *this = &unk_286ECF818;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
}

{
  *this = &unk_286ECF818;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

void XlRevisionFileLock::XlRevisionFileLock(XlRevisionFileLock *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF858;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlRevisionFileLock::~XlRevisionFileLock(XlRevisionFileLock *this)
{
  *this = &unk_286ECF858;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECF858;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlRevisionFormat::XlRevisionFormat(XlRevisionFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF898;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

void XlRevisionFormat::~XlRevisionFormat(XlRevisionFormat *this)
{
  *this = &unk_286ECF898;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 3) = 0;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      MEMORY[0x25F896FE0](v3 - 16, 0x1000C800EA6A39BLL);
    }

    *(this + 5) = 0;
    *(this + 17) = 0;
    *(this + 16) = 1;
  }

  XlRevisionFormat::takeDifferentialFormat(this, 0);
}

{
  XlRevisionFormat::~XlRevisionFormat(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionFormat::takeDataHeader(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C40451B5BE8);
  }

  *(a1 + 24) = a2;
  return result;
}

uint64_t XlRevisionFormat::takeRefTable(uint64_t this, XlRef *a2, __int16 a3)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = MEMORY[0x25F896FE0](v6 - 16, 0x1000C800EA6A39BLL);
  }

  *(v5 + 40) = a2;
  *(v5 + 34) = a3;
  *(v5 + 16) = 1;
  return this;
}

XlDXf *XlRevisionFormat::takeDifferentialFormat(XlRevisionFormat *this, XlDXf *a2)
{
  result = *(this + 6);
  if (result)
  {
    XlDXf::~XlDXf(result);
    result = MEMORY[0x25F897000]();
  }

  *(this + 6) = a2;
  return result;
}

void XlRevisionHeader::XlRevisionHeader(XlRevisionHeader *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF8D8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

void XlRevisionHeader::~XlRevisionHeader(XlRevisionHeader *this)
{
  *this = &unk_286ECF8D8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 5) = 0;
}

{
  XlRevisionHeader::~XlRevisionHeader(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionHeader::takeGuid(XlRevisionHeader *this, unsigned __int8 *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 3) = a2;
  return result;
}

void XlRevisionInfo::XlRevisionInfo(XlRevisionInfo *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF918;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = 0;
}

void XlRevisionInfo::~XlRevisionInfo(XlRevisionInfo *this)
{
  *this = &unk_286ECF918;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 4) = 0;
}

{
  XlRevisionInfo::~XlRevisionInfo(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionInfo::takeGuidRoot(XlRevisionInfo *this, unsigned __int8 *a2)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 4) = a2;
  return result;
}

void XlRevisionInsertDelete::XlRevisionInsertDelete(XlRevisionInsertDelete *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF958;
  *(v2 + 36) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlRevisionInsertDelete::~XlRevisionInsertDelete(XlRevisionInsertDelete *this)
{
  *this = &unk_286ECF958;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
}

{
  XlRevisionInsertDelete::~XlRevisionInsertDelete(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionInsertShape::XlRevisionInsertShape(XlRevisionInsertShape *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFA18;
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  *(v2 + 32) = 0;
}

void XlRevisionInsertShape::~XlRevisionInsertShape(XlRevisionInsertShape *this)
{
  *this = &unk_286ECFA18;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 4) = 0;
}

{
  XlRevisionInsertShape::~XlRevisionInsertShape(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionLogEntry::XlRevisionLogEntry(XlRevisionLogEntry *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFA58;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlRevisionLogEntry::~XlRevisionLogEntry(XlRevisionLogEntry *this)
{
  *this = &unk_286ECFA58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ECFA58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlRevisionMove::XlRevisionMove(XlRevisionMove *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFA98;
  *(v2 + 44) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
}

void XlRevisionMove::~XlRevisionMove(XlRevisionMove *this)
{
  *this = &unk_286ECFA98;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 3) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x25F897000](v4, 0x1000C400EA6A39BLL);
  }

  *(this + 4) = 0;
}

{
  XlRevisionMove::~XlRevisionMove(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionNote::XlRevisionNote(XlRevisionNote *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFB58;
  v2[6] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
}

void XlRevisionNote::~XlRevisionNote(XlRevisionNote *this)
{
  *this = &unk_286ECFB58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 6) = 0;
}

{
  XlRevisionNote::~XlRevisionNote(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionRenameSheet::XlRevisionRenameSheet(XlRevisionRenameSheet *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFB98;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
}

void XlRevisionRenameSheet::~XlRevisionRenameSheet(XlRevisionRenameSheet *this)
{
  *this = &unk_286ECFB98;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 3) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 4) = 0;
}

{
  XlRevisionRenameSheet::~XlRevisionRenameSheet(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionSort::XlRevisionSort(XlRevisionSort *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFBD8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

void XlRevisionSort::~XlRevisionSort(XlRevisionSort *this)
{
  *this = &unk_286ECFBD8;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 4) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x25F897000](v4, 0x1000C4052888210);
  }

  *(this + 6) = 0;
}

{
  XlRevisionSort::~XlRevisionSort(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRevisionSort::takeMap(XlRevisionSort *this, int *a2, int a3)
{
  result = *(this + 6);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C4052888210);
  }

  *(this + 6) = a2;
  *(this + 10) = a3;
  return result;
}

void XlRevisionTabId::XlRevisionTabId(XlRevisionTabId *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFC18;
  *(v2 + 16) = 1;
  *(v2 + 18) = 0;
  *(v2 + 24) = 0;
}

void XlRevisionTabId::~XlRevisionTabId(XlRevisionTabId *this)
{
  *this = &unk_286ECFC18;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
    }

    *(this + 3) = 0;
    *(this + 9) = 0;
    *(this + 16) = 1;
  }
}

{
  XlRevisionTabId::~XlRevisionTabId(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionUserView::XlRevisionUserView(XlRevisionUserView *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFC58;
  v2[2] = 0;
  v2[3] = 0;
}

void XlRevisionUserView::~XlRevisionUserView(XlRevisionUserView *this)
{
  *this = &unk_286ECFC58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40451B5BE8);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 3) = 0;
}

{
  XlRevisionUserView::~XlRevisionUserView(this);

  JUMPOUT(0x25F897000);
}

void XlRevisionVersionNumber::XlRevisionVersionNumber(XlRevisionVersionNumber *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFC98;
  *(v2 + 16) = 0;
}

void XlRString::XlRString(XlRString *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFD98;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[2] = 0;
  *(v2 + 22) = 0;
}

void XlRString::~XlRString(XlRString *this)
{
  *this = &unk_286ECFD98;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  XlRString::clearRuns(this);
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

{
  XlRString::~XlRString(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRString::clearRuns(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (((*(this + 40) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
        v2 = *(v1 + 32);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(v1 + 32);
    }

    while (v3 < ((*(v1 + 40) - v2) >> 3));
  }

  *(v1 + 40) = v2;
  return this;
}

void XlRubi::XlRubi(XlRubi *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFDD8;
  *(v2 + 16) = 0;
  *(v2 + 18) = 3;
  *(v2 + 20) = 1;
  *(v2 + 24) = 257;
  *(v2 + 26) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 1;
}

void XlRubi::~XlRubi(XlRubi *this)
{
  *this = &unk_286ECFDD8;
  XlRubi::clearAreas(this);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  XlRubi::~XlRubi(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlRubi::clearAreas(uint64_t this)
{
  v1 = this;
  if (*(this + 56))
  {
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
  }

  else
  {
    v2 = *(this + 32);
  }

  *(v1 + 40) = v2;
  return this;
}

uint64_t std::vector<XlString *,ChAllocator<XlString *>>::__emplace_back_slow_path<XlString * const&>(void *a1, void *a2)
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

void sub_25D55E70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlSec::XlSec(XlSec *this)
{
  *this = 1;
  *(this + 9) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0xFFFFFFFFLL;
  *(this + 8) = 0;
}

void XlSound::XlSound(XlSound *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED00D8;
  *(v2 + 16) = 0x100004257;
  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlSound::setSoundData(XlSound *this, unsigned __int8 *a2, int a3)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 4) = a2;
  *(this + 6) = a3;
  return result;
}

void XlSound::~XlSound(XlSound *this)
{
  *this = &unk_286ED00D8;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ED00D8;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlString::XlString(XlString *this, const OcText *a2)
{
  *this = &unk_286ED0198;
  OcText::OcText((this + 8));
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = -1;
  *(this + 12) = 0;
  OcText::operator=(v4, a2);
}

void sub_25D55ECD0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
  }

  OcText::~OcText(v1);
  _Unwind_Resume(a1);
}

unint64_t XlString::getSizeInStream(XlString *this)
{
  isSingleByteEncoding = OcText::isSingleByteEncoding(*(this + 4));
  v3 = *(this + 6);
  v5 = *(this + 7);
  v4 = *(this + 8);
  v6 = *(this + 10);
  if (v6)
  {
    LODWORD(v6) = XlPhoneticInfo::getSizeInStream(v6);
  }

  return (v3 << (isSingleByteEncoding ^ 1)) + (((v4 - v5) >> 1) & 0xFFFFFFFC) + v6 + 3;
}

void XlSub::XlSub(XlSub *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0210;
  *(v2 + 48) = 0;
  *(v2 + 46) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 37) = 0;
}

void XlSub::~XlSub(XlSub *this)
{
  *this = &unk_286ED0210;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x25F897000](v3, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x25F897000](v4, 0x1000C408AA14F5FLL);
  }

  *(this + 3) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(this + 4) = 0;
}

{
  XlSub::~XlSub(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlSub::setSection(XlSub *this, XlSec *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F897000](result, 0x1000C408AA14F5FLL);
  }

  *(this + 3) = a2;
  return result;
}

void XlSxDB::XlSxDB(XlSxDB *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0290;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 23) = 0;
  *(v2 + 36) = 1;
}

void XlSxDB::~XlSxDB(XlSxDB *this)
{
  *this = &unk_286ED0290;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
}

{
  *this = &unk_286ED0290;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxDBEx::XlSxDBEx(XlSxDBEx *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED02D0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlSxDI::XlSxDI(XlSxDI *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0310;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 28) = 0;
  *(v2 + 20) = 0;
}

void XlSxDI::~XlSxDI(XlSxDI *this)
{
  *this = &unk_286ED0310;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;
}

{
  *this = &unk_286ED0310;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxEx::XlSxEx(XlSxEx *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0350;
  *(v2 + 16) = -65536;
  *(v2 + 24) = 0;
  *(v2 + 31) = 0;
  *(v2 + 42) = -1;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 44) = -1;
  *(v2 + 80) = 0u;
}

void XlSxEx::~XlSxEx(XlSxEx *this)
{
  *this = &unk_286ED0350;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 7) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 8) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 9) = 0;
  v6 = *(this + 10);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 10) = 0;
  v7 = *(this + 11);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 11) = 0;
}

{
  XlSxEx::~XlSxEx(this);

  JUMPOUT(0x25F897000);
}

void XlSxExt::XlSxExt(XlSxExt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0390;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
}

void XlSxExt::~XlSxExt(XlSxExt *this)
{
  *this = &unk_286ED0390;
  XlSxExt::clearParams(this);
  XlSxExt::clearQueries(this);
  XlSxExt::clearWebPosts(this);
  XlSxExt::clearSQLs(this);
  XlSxExt::clearODBCs(this);
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }
}

{
  XlSxExt::~XlSxExt(this);

  JUMPOUT(0x25F897000);
}

void *XlSxExt::clearParams(void *this)
{
  v1 = this;
  v2 = this[13];
  v3 = this[14];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[13];
        v3 = v1[14];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[14] = v2;
  return this;
}

void *XlSxExt::clearQueries(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = this[5];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[4];
        v3 = v1[5];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[5] = v2;
  return this;
}

void *XlSxExt::clearWebPosts(void *this)
{
  v1 = this;
  v2 = this[10];
  v3 = this[11];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[10];
        v3 = v1[11];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[11] = v2;
  return this;
}

void *XlSxExt::clearSQLs(void *this)
{
  v1 = this;
  v2 = this[16];
  v3 = this[17];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[16];
        v3 = v1[17];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[17] = v2;
  return this;
}

void *XlSxExt::clearODBCs(void *this)
{
  v1 = this;
  v2 = this[7];
  v3 = this[8];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[7];
        v3 = v1[8];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[8] = v2;
  return this;
}

void *XlSxExt::appendParam(XlSxExt *this, XlParamQry *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 14);
  if (v3 >= *(this + 15))
  {
    result = std::vector<XlParamQry *,ChAllocator<XlParamQry *>>::__emplace_back_slow_path<XlParamQry * const&>(this + 13, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 14) = result;
  return result;
}

void *XlSxExt::appendQuery(XlSxExt *this, XlSxString *a2)
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
    result = std::vector<XlSxString *,ChAllocator<XlSxString *>>::__emplace_back_slow_path<XlSxString * const&>(this + 4, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 5) = result;
  return result;
}

void *XlSxExt::appendWebPost(XlSxExt *this, XlSxString *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 11);
  if (v3 >= *(this + 12))
  {
    result = std::vector<XlSxString *,ChAllocator<XlSxString *>>::__emplace_back_slow_path<XlSxString * const&>(this + 10, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 11) = result;
  return result;
}

void *XlSxExt::appendSQL(XlSxExt *this, XlSxString *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 17);
  if (v3 >= *(this + 18))
  {
    result = std::vector<XlSxString *,ChAllocator<XlSxString *>>::__emplace_back_slow_path<XlSxString * const&>(this + 16, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 17) = result;
  return result;
}

void *XlSxExt::appendODBC(XlSxExt *this, XlSxString *a2)
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
    result = std::vector<XlSxString *,ChAllocator<XlSxString *>>::__emplace_back_slow_path<XlSxString * const&>(this + 7, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 8) = result;
  return result;
}

uint64_t std::vector<XlParamQry *,ChAllocator<XlParamQry *>>::__emplace_back_slow_path<XlParamQry * const&>(void *a1, void *a2)
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

void sub_25D55FD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlSxString *,ChAllocator<XlSxString *>>::__emplace_back_slow_path<XlSxString * const&>(void *a1, void *a2)
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

void sub_25D55FE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlSxFDBType::XlSxFDBType(XlSxFDBType *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED03D0;
  *(v2 + 16) = 0;
}

void XlSxFilt::XlSxFilt(XlSxFilt *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0410;
  *(v2 + 38) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 29) = 0;
}

void XlSxFmla::XlSxFmla(XlSxFmla *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0450;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlSxFormat::XlSxFormat(XlSxFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0490;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
}

void XlSxFormula::XlSxFormula(XlSxFormula *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED04D0;
  *(v2 + 16) = 0;
}

void XlSxIVd::XlSxIVd(XlSxIVd *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0550;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
}

uint64_t XlSxIVd::setFieldIDTable(XlSxIVd *this, __int16 *a2, __int16 a3)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 3) = a2;
  *(this + 8) = a3;
  return result;
}

void XlSxIVd::~XlSxIVd(XlSxIVd *this)
{
  *this = &unk_286ED0550;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_286ED0550;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxLi::XlSxLi(XlSxLi *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0590;
  *(v2 + 16) = -1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
}

void XlSxLi::~XlSxLi(XlSxLi *this)
{
  *this = &unk_286ED0590;
  XlSxLi::clearTable(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  XlSxLi::~XlSxLi(this);

  JUMPOUT(0x25F897000);
}

void *XlSxLi::clearTable(void *this)
{
  v1 = this;
  v2 = this[3];
  v3 = this[4];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[3];
        v3 = v1[4];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[4] = v2;
  return this;
}

void *XlSxLi::addLineItem(XlSxLi *this, XlSXLineItem *a2)
{
  v6 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    result = std::vector<XlSXLineItem *,ChAllocator<XlSXLineItem *>>::__emplace_back_slow_path<XlSXLineItem * const&>(this + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 4) = result;
  return result;
}

uint64_t std::vector<XlSXLineItem *,ChAllocator<XlSXLineItem *>>::__emplace_back_slow_path<XlSXLineItem * const&>(void *a1, void *a2)
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

void sub_25D56060C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlSXLineItem::XlSXLineItem(XlSXLineItem *this, __int16 a2)
{
  *this = &unk_286ED05D0;
  *(this + 18) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 8) = 0;
}

uint64_t XlSXLineItem::setViewItemIndexTable(XlSXLineItem *this, __int16 *a2, __int16 a3)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 4) = a2;
  *(this + 13) = a3;
  return result;
}

void XlSXLineItem::~XlSXLineItem(XlSXLineItem *this)
{
  *this = &unk_286ED05D0;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 4) = 0;
  *(this + 13) = -1;
}

{
  *this = &unk_286ED05D0;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 4) = 0;
  *(this + 13) = -1;

  JUMPOUT(0x25F897000);
}

void XlSxName::XlSxName(XlSxName *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0610;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 20) = 1;
  *(v2 + 24) = 0;
}

void XlSxPair::XlSxPair(XlSxPair *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0650;
  *(v2 + 16) = 0;
  *(v2 + 19) = 0;
}

void XlSxRule::XlSxRule(XlSxRule *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0690;
  v2[2] = 0;
  v2[3] = 0;
}

void XlSxSelect::XlSxSelect(XlSxSelect *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED06D0;
  *(v2 + 16) = 0;
}

void XlSxString::XlSxString(XlSxString *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0710;
  v2[2] = 0;
}

void XlSxString::~XlSxString(XlSxString *this)
{
  *this = &unk_286ED0710;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ED0710;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxTbl::XlSxTbl(XlSxTbl *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0750;
  *(v2 + 16) = 0;
  *(v2 + 19) = 0;
}

void XlSxTbPg::XlSxTbPg(XlSxTbPg *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0790;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlSxTbPg::~XlSxTbPg(XlSxTbPg *this)
{
  *this = &unk_286ED0790;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
}

{
  *this = &unk_286ED0790;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxTbRgiItm::XlSxTbRgiItm(XlSxTbRgiItm *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED07D0;
  *(v2 + 16) = 0;
}

void XlSxVd::XlSxVd(XlSxVd *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0810;
  *(v2 + 36) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 31) = 0;
}

void XlSxVd::~XlSxVd(XlSxVd *this)
{
  *this = &unk_286ED0810;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;
}

{
  *this = &unk_286ED0810;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxVdEx::XlSxVdEx(XlSxVdEx *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0850;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

void XlSxVi::XlSxVi(XlSxVi *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0890;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlSxVi::~XlSxVi(XlSxVi *this)
{
  *this = &unk_286ED0890;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
}

{
  *this = &unk_286ED0890;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

void XlSxView::XlSxView(XlSxView *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED08D0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 43) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
}

void XlSxView::~XlSxView(XlSxView *this)
{
  *this = &unk_286ED08D0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C400EA6A39BLL);
  }

  *(this + 2) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 9) = 0;
  v4 = *(this + 10);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 10) = 0;
}

{
  XlSxView::~XlSxView(this);

  JUMPOUT(0x25F897000);
}

void XlTabIdConf::XlTabIdConf(XlTabIdConf *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0990;
  *(v2 + 16) = 0;
}

void XlUserBView::XlUserBView(XlUserBView *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0B10;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 57) = 16842753;
  *(v2 + 61) = 0;
}

void XlUserBView::~XlUserBView(XlUserBView *this)
{
  *this = &unk_286ED0B10;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 9) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 3) = 0;
}

{
  XlUserBView::~XlUserBView(this);

  JUMPOUT(0x25F897000);
}

void XlWindow1::XlWindow1(XlWindow1 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0C90;
  *(v2 + 16) = 0x3E58002D00000000;
  *(v2 + 24) = 14310;
  *(v2 + 26) = 16842752;
  *(v2 + 30) = 1;
  *(v2 + 32) = 0x10000;
  *(v2 + 36) = 600;
}

void XlWindow2::XlWindow2(XlWindow2 *this)
{
  XlRecord::XlRecord(this, 574, 18, 9);
  *v1 = &unk_286ED0CD0;
  v1[2] = 64;
  v1[3] = 0x100010100010100;
  v1[4] = 65792;
}

void XlXct::XlXct(XlXct *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0E10;
  *(v2 + 16) = 0;
}

void XlXf::XlXf(XlXf *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0E50;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0x200000000;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0u;
  *(v2 + 52) = 0u;
  *(v2 + 67) = 0;
  *(v2 + 75) = 1;
  *(v2 + 77) = 1;
  *(v2 + 78) = 0;
  *(v2 + 86) = 0;
}

void XlChartShapePropsStream::XlChartShapePropsStream(XlChartShapePropsStream *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0E90;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = -1;
}

void XlChartShapePropsStream::~XlChartShapePropsStream(XlChartShapePropsStream *this)
{
  *this = &unk_286ED0E90;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ED0E90;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlAutoFilterTable::XlAutoFilterTable(XlAutoFilterTable *this)
{
  *this = &unk_286ED0ED0;
  *(this + 4) = 0;
  *(this + 10) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void XlAutoFilterTable::~XlAutoFilterTable(XlAutoFilterTable *this)
{
  *this = &unk_286ED0ED0;
  XlObjBiff8::clearSubRecords(this);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  XlAutoFilterTable::~XlAutoFilterTable(this);

  JUMPOUT(0x25F897000);
}

void *XlAutoFilterTable::appendAutoFilter(XlAutoFilterTable *this, XlAutoFilter *a2)
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
    result = std::vector<XlAutoFilter *,ChAllocator<XlAutoFilter *>>::__emplace_back_slow_path<XlAutoFilter * const&>(this + 2, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

uint64_t std::vector<XlAutoFilter *,ChAllocator<XlAutoFilter *>>::__emplace_back_slow_path<XlAutoFilter * const&>(void *a1, void *a2)
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

void sub_25D561F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double XlCalculationProperties::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t std::vector<XlXf *,ChAllocator<XlXf *>>::__emplace_back_slow_path<XlXf *>(void *a1, void *a2)
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

void sub_25D5620E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<XlCell *,ChAllocator<XlCell *>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = &__src[-*a1];
    v11 = &v6[-*a1] >> 3;
    v12 = (v7 - *a1) >> 3;
    if (2 * v12 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v12;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v22 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v14);
    }

    __p = 0;
    v19 = v10 & 0x7FFFFFFF8;
    v20 = v10 & 0x7FFFFFFF8;
    v21 = 0;
    std::__split_buffer<EshHeader *,ChAllocator<EshHeader *> &>::emplace_back<EshHeader * const&>(&__p, a3);
    v4 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v20 != v19)
    {
      v20 += (v19 - v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v15 = v9 <= a3 || v4 > a3;
    v16 = 8;
    if (v15)
    {
      v16 = 0;
    }

    *v4 = *&a3[v16];
  }

  return v4;
}

void sub_25D562294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell * const&>(void *a1, void *a2)
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

void sub_25D5623B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlChangeHistory::XlChangeHistory(XlChangeHistory *this)
{
  *this = &unk_286ED0FF8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void XlChangeHistory::~XlChangeHistory(XlChangeHistory *this)
{
  *this = &unk_286ED0FF8;
  XlChangeHistory::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlChangeHistory::~XlChangeHistory(this);

  JUMPOUT(0x25F897000);
}

void *XlChangeHistory::clear(void *this)
{
  v1 = this;
  v2 = this[1];
  v3 = this[2];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[1];
        v3 = v1[2];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[2] = v2;
  return this;
}

void *XlChangeHistory::appendChangeLogEntry(XlChangeHistory *this, XlRecord *a2)
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
    result = std::vector<XlRecord *,ChAllocator<XlRecord *>>::__emplace_back_slow_path<XlRecord * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t std::vector<XlRecord *,ChAllocator<XlRecord *>>::__emplace_back_slow_path<XlRecord * const&>(void *a1, void *a2)
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

void sub_25D562694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlConditionalFormat *,ChAllocator<XlConditionalFormat *>>::__emplace_back_slow_path<XlConditionalFormat * const&>(void *a1, void *a2)
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

void sub_25D562828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *XlContentFormatTable::getBuiltInFmtString(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x31)
  {
    return 0;
  }

  else
  {
    return off_2799CD458[a2];
  }
}

uint64_t std::vector<XlCustomView *,ChAllocator<XlCustomView *>>::__emplace_back_slow_path<XlCustomView * const&>(void *a1, void *a2)
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

void sub_25D5629A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlDataConsolidationInfo::~XlDataConsolidationInfo(XlDataConsolidationInfo *this)
{
  *this = &unk_286ED1110;
  v2 = (this + 8);
  CsSimpleHeapVector<XlRecord>::clear(this + 1);
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(v2);
}

{
  XlDataConsolidationInfo::~XlDataConsolidationInfo(this);

  JUMPOUT(0x25F897000);
}

double XlDocumentInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    result = *(a2 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

double XlDocumentPresentation::setDefault(XlDocumentPresentation *this)
{
  *(this + 2) = 0x10000;
  *(this + 12) = 1;
  *(this + 14) = 0x2D000002580000;
  *(this + 22) = 937836120;
  *&result = 16842752;
  *(this + 26) = 16842752;
  return result;
}

double XlDocumentPresentation::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    result = *(a2 + 14);
    *(a1 + 14) = result;
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 26) = *(a2 + 26);
  }

  return result;
}

uint64_t std::vector<XlDocumentPresentation *,ChAllocator<XlDocumentPresentation *>>::__emplace_back_slow_path<XlDocumentPresentation * const&>(void *a1, void *a2)
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

void sub_25D562D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlDocumentProperties::takeThemeData(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a2 && a3)
  {
    v5 = this;
    this = *(this + 104);
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }

    *(v5 + 112) = a3;
    *(v5 + 104) = a2;
  }

  return this;
}

uint64_t XlDocumentProtection::operator=(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    *(result + 12) = *(a2 + 12);
    *(result + 8) = *(a2 + 8);
    *(result + 10) = *(a2 + 10);
  }

  return result;
}

void XlEshGhost::XlEshGhost(XlEshGhost *this, char a2)
{
  EshObject::EshObject(this, 0xF33Fu);
  *v3 = &unk_286ED12A0;
  *(v3 + 12) = 0;
  *(v3 + 16) = 0;
  *(v3 + 20) = a2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
}

void XlEshGhost::~XlEshGhost(XlEshGhost *this)
{
  *this = &unk_286ED12A0;
  v4 = this + 24;
  v2 = *(this + 3);
  v3 = *(v4 + 1);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x25F897000](v2[v5], 0x1000C408B6DE1C6);
        v2 = *(this + 3);
        v3 = *(this + 4);
      }

      if (v5 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v2[v5++] = 0;
      v2 = *(this + 3);
      v3 = *(this + 4);
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  *(this + 4) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  XlEshGhost::~XlEshGhost(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlEshGhost::getChildType(XlEshGhost *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(v2 + 8 * a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(v3 + 10);
}

uint64_t XlEshGhost::getChildVersion(XlEshGhost *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(v2 + 8 * a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(v3 + 12);
}

void XlEshGhost::setNumChildren(XlEshGhost *this, unsigned int a2)
{
  v3 = (this + 24);
  v4 = (*(this + 4) - *(this + 3)) >> 3;
  if (v4 < a2)
  {
    operator new();
  }

  v5 = v4 - a2;
  if (v4 > a2)
  {
    v6 = 8 * a2;
    do
    {
      v7 = *v3;
      v8 = *(*v3 + v6);
      if (v8)
      {
        MEMORY[0x25F897000](v8, 0x1000C408B6DE1C6);
        v7 = *v3;
      }

      *(v7 + v6) = 0;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  std::vector<EshHeader *,ChAllocator<EshHeader *>>::resize(v3, a2);
}

uint64_t XlEshGhost::getChildHeader(XlEshGhost *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

void non-virtual thunk toXlEshGroup::~XlEshGroup(XlEshGroup *this)
{
  v1 = (this - 272);
  *(this - 34) = &unk_286ED1340;
  *this = &unk_286ED13F0;
  XlEshGroup::cleanup((this - 272));

  EshGroup::~EshGroup(v1);
}

{
  XlEshGroup::~XlEshGroup((this - 272));
}

void non-virtual thunk toXlEshShape::~XlEshShape(XlEshShape *this)
{
  v1 = (this - 416);
  *(this - 52) = &unk_286ED1510;
  *this = &unk_286ED15E0;
  XlEshShape::cleanup((this - 416));

  EshContentBase::~EshContentBase(v1);
}

{
  XlEshShape::~XlEshShape((this - 416));
}

uint64_t XlFileProtection::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 8) = *(a2 + 8);
    OcText::operator=(a1 + 16, a2 + 16);
    OcText::operator=(a1 + 64, a2 + 64);
    *(a1 + 112) = *(a2 + 112);
    v4 = *(a2 + 128);
    *(a1 + 128) = v4;
    if (*(a2 + 120))
    {
      operator new[](v4);
    }

    *(a1 + 120) = 0;
  }

  return a1;
}

uint64_t XlFileProtection::setEncryptionInfo(XlFileProtection *this, const unsigned __int8 *a2, unsigned int a3)
{
  result = *(this + 15);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 15) = 0;
  *(this + 32) = 0;
  if (a2)
  {
    if (a3)
    {
      *(this + 32) = a3;
      operator new[](a3);
    }
  }

  return result;
}

void sub_25D5637B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<XlFont *,ChAllocator<XlFont *>>::__emplace_back_slow_path<XlFont *>(void *a1, void *a2)
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

void sub_25D5639A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlGraphicsInfo::XlObjData *,ChAllocator<XlGraphicsInfo::XlObjData *>>::__emplace_back_slow_path<XlGraphicsInfo::XlObjData * const&>(void *a1, void *a2)
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

void sub_25D563B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlTheme::XlTheme(XlTheme *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED16E0;
  v2[2] = 0;
  v2[3] = 0xFFFFFFFF00000000;
}

void XlTheme::~XlTheme(XlTheme *this)
{
  *this = &unk_286ED16E0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ED16E0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t std::vector<XlExternName *,ChAllocator<XlExternName *>>::__emplace_back_slow_path<XlExternName * const&>(void *a1, void *a2)
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

void sub_25D563DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlLinkOperandTable::~XlLinkOperandTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

uint64_t std::vector<XlLink *,ChAllocator<XlLink *>>::__emplace_back_slow_path<XlLink * const&>(void *a1, void *a2)
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

void sub_25D564040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *XlNameTable::getBuiltIn(XlNameTable *this, unsigned int a2)
{
  if (a2 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_2799CD5E8[a2];
  }
}

void XlCustomViewInfoTable::~XlCustomViewInfoTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlInterfaceTable::~XlInterfaceTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlPivotTable::~XlPivotTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlRangeProtectionTable::~XlRangeProtectionTable(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlRouting::~XlRouting(void **this)
{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);

  JUMPOUT(0x25F897000);
}

void XlPhoneticTable::XlPhoneticTable(XlPhoneticTable *this)
{
  *this = &unk_286ED1A40;
  *(this + 4) = 0;
  *(this + 10) = 3;
  *(this + 3) = 1;
  *(this + 8) = 257;
  *(this + 18) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
}

void XlPhoneticTable::~XlPhoneticTable(XlPhoneticTable *this)
{
  *this = &unk_286ED1A40;
  XlRangeProtection::clearRanges(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  XlPhoneticTable::~XlPhoneticTable(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlPhoneticTable::setDefault(uint64_t this)
{
  *(this + 16) = 257;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 10) = 3;
  *(this + 12) = 1;
  return XlRangeProtection::clearRanges(this);
}

uint64_t std::vector<XlPivotInfo *,ChAllocator<XlPivotInfo *>>::__emplace_back_slow_path<XlPivotInfo * const&>(void *a1, void *a2)
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

void sub_25D5647F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlCellRow *,ChAllocator<XlCellRow *>>::__emplace_back_slow_path<XlCellRow * const&>(void *a1, void *a2)
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

void sub_25D56494C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<XlCellRow *,ChAllocator<XlCellRow *>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = &__src[-*a1];
    v11 = &v6[-*a1] >> 3;
    v12 = (v7 - *a1) >> 3;
    if (2 * v12 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v12;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v22 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<ChAllocator<EshHeader *>>(a1, v14);
    }

    __p = 0;
    v19 = v10 & 0x7FFFFFFF8;
    v20 = v10 & 0x7FFFFFFF8;
    v21 = 0;
    std::__split_buffer<EshHeader *,ChAllocator<EshHeader *> &>::emplace_back<EshHeader * const&>(&__p, a3);
    v4 = std::vector<ODIHRange,ChAllocator<ODIHRange>>::__swap_out_circular_buffer(a1, &__p, v4);
    if (v20 != v19)
    {
      v20 += (v19 - v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v15 = v9 <= a3 || v4 > a3;
    v16 = 8;
    if (v15)
    {
      v16 = 0;
    }

    *v4 = *&a3[v16];
  }

  return v4;
}

void sub_25D564AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<XlSheetPresentation *,ChAllocator<XlSheetPresentation *>>::__emplace_back_slow_path<XlSheetPresentation * const&>(void *a1, void *a2)
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

void sub_25D564E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlEshParserVisitor::visit(XlEshParserVisitor *this, XlEshClientTextBox *a2)
{
  if (EshRecord::getDataLength(a2) >= 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  return 1;
}

uint64_t XlFormatParser::readDigitToken(XlFormatParser *this, XlFmtPtg *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  *a2 = 77;
  Character = OcText::getCharacter(*this, v4);
  if (Character <= 0xFF)
  {
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    v9 = Character;
    while (1)
    {
      v10 = v7;
      if ((*(v8 + 4 * v9 + 60) & 0x400) == 0 || v7 > 0x3E)
      {
        break;
      }

      v15[v7] = v9;
      v11 = v4 + v7 + 1;
      v12 = *this;
      if (!*this || v12->var3 > v11)
      {
        v13 = OcText::getCharacter(v12, v11);
        v9 = v13;
        v7 = v10 + 1;
        if (v13 <= 0xFF)
        {
          continue;
        }
      }

      LODWORD(v10) = v10 + 1;
      LOWORD(v4) = v10 + v4;
      goto LABEL_11;
    }

    LOWORD(v4) = v4 + v7;
LABEL_11:
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v15[v6] = 0;
  *(a2 + 2) = atof(v15);
  return (v4 - *(this + 6));
}

uint64_t XlFormulaParser::normalizeCellRefs(uint64_t this, unsigned __int16 *a2, int a3, int a4)
{
  if (*(this + 72) <= 8u)
  {
    v4 = a2[a3];
    if (v4 < 0)
    {
      a2[a4] |= 0x8000u;
      LOWORD(v4) = a2[a3];
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v4 & 0x4000) == 0)
    {
LABEL_5:
      a2[a3] = v4;
      return this;
    }

    a2[a4] |= 0x4000u;
    LOWORD(v4) = a2[a3];
    goto LABEL_5;
  }

  return this;
}

uint64_t XlParserVisitor::setStream(XlParserVisitor *this, SsrwOOStream *a2)
{
  result = *(this + 2);
  *(this + 2) = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDbCell *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 104))(*(this + 2));
  v4 = *(a2 + 2) + 131068;
  if (*(this + 6))
  {
    ChLogFunction("data isn't NULL", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Parser/XlParserVisitor.cpp", 446);
  }

  if ((v4 >> 1))
  {
    operator new[](v4 & 0x1FFFE);
  }

  XlDbCell::takeCellOffsets(a2, *(this + 6), 0);
  *(this + 6) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRString *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 13) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  v5 = v4;
  if (v4 >= 1)
  {
    operator new[]((v4 + 1));
  }

  XlRString::clearRuns(a2);
  v6 = (*(**(this + 2) + 64))(*(this + 2));
  v7 = *(a2 + 2) - v5 - 9;
  if (v7 >= 2 * v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7 >> 1;
  }

  if (v8)
  {
    operator new[](2);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlContinue *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = *(a2 + 2);
  v6 = v4;
  if (v4)
  {
    operator new[](v4);
  }

  XlContinue::takeContent(a2, *(this + 3), 0);
  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlContinueFrt12 *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  v4 = (*(a2 + 2) - 12);
  v6 = v4;
  if (v4 < 0x2016)
  {
    operator new[](v4);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 3002;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlEof *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlExcel9 *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRubi *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 18) = v4 & 3;
  *(a2 + 5) = (v4 >> 2) & 3;
  *(a2 + 24) = (v4 & 0x10) != 0;
  *(a2 + 25) = (v4 & 0x20) != 0;
  *(a2 + 26) = (v4 & 0x40) != 0;
  if ((*(**(this + 2) + 72))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlAddIn *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFilterMode *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlInterfaceEnd *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlTemplate *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlWriteProt *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlModify *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlFilePass *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = *(a2 + 2) - 2;
  operator new[]();
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMsoDrawing *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v10 = *(a2 + 2);
  v4 = v10;
  *(this + 3) = 0;
  if (v4)
  {
    if (*(a2 + 28) == 1)
    {
      v5 = 0;
      do
      {
        (*(**(this + 2) + 16))(*(this + 2), v4, 1);
        v5 += v4;
        v6 = (*(**(this + 2) + 72))(*(this + 2));
        v4 = (*(**(this + 2) + 80))(*(this + 2));
      }

      while (v6 == 60);
      (*(**(this + 2) + 16))(*(this + 2), 4294967292, 1);
      DataAndContinues = (*(**(this + 2) + 40))(*(this + 2));
    }

    else
    {
      DataAndContinues = XlParserVisitor::getDataAndContinues(this, &v10, 236);
      v5 = v10;
    }

    *(a2 + 2) = DataAndContinues - *(this + 18);
    v8 = *(this + 3);
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  XlChartGelFrame::setBinaryData(a2, v8, v5);

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlHdrFooterDrawing *a2)
{
  v4 = *(a2 + 2);
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(this + 3) = 0;
  if (v4 <= 0xD || (*(**(this + 2) + 104))(*(this + 2)) != 2150)
  {
LABEL_11:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  (*(**(this + 2) + 96))(*(this + 2));
  (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 4294967282, 1);
  LODWORD(v5) = 0;
  v6 = v4;
  do
  {
    if (v6 <= 0xD)
    {
      goto LABEL_11;
    }

    (*(**(this + 2) + 16))(*(this + 2), v6, 1);
    if (v5 > 13 - v6)
    {
      goto LABEL_11;
    }

    v5 = (v6 + v5 - 14);
    v7 = (*(**(this + 2) + 72))(*(this + 2));
    v6 = (*(**(this + 2) + 80))(*(this + 2));
  }

  while (v7 == 2150);
  v8 = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(a2 + 36) & 1) == 0 && v5)
  {
    operator new[](v5);
  }

  (*(**(this + 2) + 16))(*(this + 2), 4294967292, 1);
  *(a2 + 2) = v8 - *(this + 18) - 4;
  XlGenericRecord::takeContents(a2, *(this + 3), v5);
  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMsoDrawingGroup *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v10 = *(a2 + 2);
  v4 = v10;
  *(this + 3) = 0;
  if (v4)
  {
    if (*(a2 + 28) == 1)
    {
      v5 = 0;
      do
      {
        do
        {
          (*(**(this + 2) + 16))(*(this + 2), v4, 1);
          v5 += v4;
          v6 = (*(**(this + 2) + 72))(*(this + 2));
          v4 = (*(**(this + 2) + 80))(*(this + 2));
        }

        while (v6 == 235);
      }

      while (v6 == 60);
      DataAndContinues = (*(**(this + 2) + 40))(*(this + 2));
    }

    else
    {
      DataAndContinues = XlParserVisitor::getDataAndContinues(this, &v10, 235);
      v5 = v10;
    }

    *(a2 + 2) = DataAndContinues - *(this + 18);
    v8 = *(this + 3);
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  XlChartGelFrame::setBinaryData(a2, v8, v5);

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlAddMenu *a2)
{
  v4 = *(a2 + 2);
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 21) = (*(**(this + 2) + 64))(*(this + 2)) & 1;
  if (v4 != 6)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(this + 2) + 80))(*(this + 2));
      (*(**(this + 2) + 64))(*(this + 2));
      if (v6)
      {
        operator new();
      }
    }

    while (v5++ < 4);
    *(this + 3) = 0;
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlAutoFilter *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  XlParserVisitor::parse(this, (a2 + 16));
}

void sub_25D566C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, XlDoper *a9, XlDoper *a10)
{
  MEMORY[0x25F897000](v10, 0x10B1C40B84AEDEBLL);
  ChAutoPtr<XlDoper>::~ChAutoPtr(&a9);
  ChAutoPtr<XlDoper>::~ChAutoPtr(&a10);
  _Unwind_Resume(a1);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlBackup *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2)) & 1;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlCoordList *a2)
{
  v4 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((v4 & 0x3FFFC) != 0)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlCrn *a2)
{
  v4 = *(a2 + 2) - 4;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  if (v4)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDCon *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 72))(*(this + 2)) & 1;
  *(a2 + 21) = (*(**(this + 2) + 72))(*(this + 2)) & 1;
  *(a2 + 22) = (*(**(this + 2) + 72))(*(this + 2)) & 1;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDConBin *a2)
{
  v4 = *(a2 + 2) + (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 64))(*(this + 2));
  v5 = **(this + 2);
  if (*(a2 + 14) < 9u)
  {
    v6 = (*(v5 + 64))();
  }

  else
  {
    v6 = (*(v5 + 80))();
  }

  v7 = v6;
  *(a2 + 10) = v6;
  if (v6)
  {
    if (*(a2 + 14) < 9u)
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(**(this + 2) + 64))(*(this + 2));
    }

    v9 = XlStringParser::estimateSize((this + 8), *(this + 2), v7, v8);
    if ((*(**(this + 2) + 40))(*(this + 2)) + v9 <= v4 || *(a2 + 2) == 8228)
    {
      operator new();
    }

    v15 = 2911;
LABEL_28:
    ChLogFunction("Failure to parse XlDConBin", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Parser/XlParserVisitor.cpp", v15);
    goto LABEL_29;
  }

  (*(**(this + 2) + 64))(*(this + 2));
  v11 = **(this + 2);
  if (*(a2 + 14) < 9u)
  {
    v12 = (*(v11 + 64))();
  }

  else
  {
    v12 = (*(v11 + 80))();
  }

  v13 = v12;
  *(a2 + 16) = v12;
  if (v12)
  {
    if (*(a2 + 14) < 9u)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(**(this + 2) + 64))(*(this + 2));
    }

    v16 = XlStringParser::estimateSize((this + 8), *(this + 2), v13, v14);
    if ((*(**(this + 2) + 40))(*(this + 2)) + v16 <= v4 || *(a2 + 2) == 8228)
    {
      operator new();
    }

    v15 = 2945;
    goto LABEL_28;
  }

LABEL_29:

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDConName *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = **(this + 2);
  if (*(a2 + 14) < 9u)
  {
    v5 = (*(v4 + 64))();
  }

  else
  {
    v5 = (*(v4 + 80))();
  }

  *(a2 + 8) = v5;
  if (v5)
  {
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  v6 = **(this + 2);
  if (*(a2 + 14) < 9u)
  {
    v7 = (*(v6 + 64))();
  }

  else
  {
    v7 = (*(v6 + 80))();
  }

  *(a2 + 16) = v7;
  if (v7)
  {
    if (*(a2 + 14) >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDelMenu *a2)
{
  v4 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 8) = v5;
  *(a2 + 18) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 19) = (*(**(this + 2) + 64))(*(this + 2)) & 1;
  *(a2 + 20) = (*(**(this + 2) + 64))(*(this + 2)) & 1;
  if (v4 != 5 && v5 == -1)
  {
    v6 = (*(**(this + 2) + 64))(*(this + 2));
    if (v6)
    {
      operator new[]((v6 + 1));
    }

    *(this + 3) = 0;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDocRoute *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 24) = v4 & 1;
  *(a2 + 25) = (v4 & 2) != 0;
  *(a2 + 26) = (v4 & 4) != 0;
  *(a2 + 27) = (v4 & 8) != 0;
  *(a2 + 28) = v4 < 0;
  *(a2 + 15) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 18) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 19) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 20) = (*(**(this + 2) + 80))(*(this + 2));
  v5 = (*(**(this + 2) + 104))(*(this + 2));
  v6 = *(a2 + 15);
  v13 = v6;
  if (v6)
  {
    operator new[](v6);
  }

  v7 = *(a2 + 16);
  v13 = v7;
  if (v7)
  {
    operator new[](v7);
  }

  v8 = *(a2 + 17);
  v13 = v8;
  if (v8)
  {
    operator new[](v8);
  }

  v9 = *(a2 + 18);
  v13 = v9;
  if (v9)
  {
    operator new[](v9);
  }

  v10 = *(a2 + 19);
  v13 = v10;
  if (v10)
  {
    operator new[](v10);
  }

  v11 = *(a2 + 20);
  v13 = v11;
  if (v11)
  {
    operator new[](v11);
  }

  v13 = v5;
  if (v5)
  {
    operator new[](v5);
  }

  return XlParserVisitor::endRead(this, a2);
}