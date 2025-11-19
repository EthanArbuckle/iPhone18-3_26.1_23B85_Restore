uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDsf *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2)) & 1;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlEdg *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 104))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 64))(*(this + 2));
  (*(**(this + 2) + 64))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlExternCount *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFileSharing2 *a2)
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

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFnGroupCount *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFnGroupName *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlGcw *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *v3 = (*(**(this + 2) + 80))(*(this + 2));
  operator new[](*v3);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlInterfaceHdr *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlLpr *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = (v4 & 2) != 0;
  *(a2 + 18) = (v4 & 4) != 0;
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 11) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 13) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 72))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlList *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 40))(*(this + 2));
  v5 = *(a2 + 2);
  (*(**(this + 2) + 16))(*(this + 2), 2, 1);
  (*(**(this + 2) + 16))(*(this + 2), 2, 1);
  (*(*this + 1504))(this, a2 + 16);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 11, 1);
  (*(**(this + 2) + 16))(*(this + 2), 8, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  *(a2 + 26) = (*(**(this + 2) + 104))(*(this + 2)) & 1;
  *(a2 + 27) = (*(**(this + 2) + 104))(*(this + 2)) & 1;
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 44, 1);
  XlStringParser::parse((this + 8), *(this + 2), v5 + v4, (a2 + 32));
  v6 = (*(**(this + 2) + 80))(*(this + 2));
  XlStringParser::parse((this + 8), *(this + 2), v5 + v4, (a2 + 136));
  if (v6)
  {
    XlParserVisitor::parseListColumn(this, a2);
  }

  return XlParserVisitor::endRead(this, a2);
}

void sub_25D569218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  ChAutoPtr<XlListColumn>::~ChAutoPtr(va2);
  ChAutoPtr<XlListColumn>::~ChAutoPtr(va);
  ChAutoPtr<XlListColumn>::~ChAutoPtr(va1);
  _Unwind_Resume(a1);
}

uint64_t XlParserVisitor::parse(XlParserVisitor *this, XlListDataFormat *a2, int a3)
{
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  v6 = (*(**(this + 2) + 104))(*(this + 2));
  if (XlListDataFormat::isDecimalPlaceCountValid(a2))
  {
    XlListDataFormat::setDecimalPlaceCount(a2, v6);
  }

  if (XlListDataFormat::isHasFormulaValid(a2))
  {
    XlListDataFormat::setHasFormula(a2, (v6 & 0x800000) != 0);
  }

  v7 = (*(**(this + 2) + 104))(*(this + 2));
  if (XlListDataFormat::isShowAsPercentageValid(a2))
  {
    XlListDataFormat::setShowAsPercentage(a2, v7 & 1);
  }

  v8 = (*(**(this + 2) + 104))(*(this + 2));
  if (XlListDataFormat::isIsRequiredValid(a2))
  {
    XlListDataFormat::setIsRequired(a2, (v8 & 2) != 0);
  }

  if (XlListDataFormat::isDecimalPlaceCountValid(a2))
  {
    XlListDataFormat::setHasMinimumBound(a2, (v8 & 4) != 0);
  }

  if (XlListDataFormat::isHasMaximumBoundValid(a2))
  {
    XlListDataFormat::setHasMaximumBound(a2, (v8 & 8) != 0);
  }

  if (XlListDataFormat::isHasDefaultValid(a2))
  {
    XlListDataFormat::setHasDefault(a2, (v8 & 0x10) != 0);
  }

  if (XlListDataFormat::isFormulaValid(a2))
  {
    if ((v6 & 0x200) != 0)
    {
      v9 = 13;
    }

    else
    {
      v9 = 7;
    }

    (*(**(this + 2) + 16))(*(this + 2), v9, 1);
    v10 = *(this + 2);
    FormulaReference = XlListDataFormat::getFormulaReference(a2);
    XlStringParser::parse((this + 8), v10, a3, FormulaReference);
  }

  if (XlListDataFormat::isHasDefaultValid(a2) && XlListDataFormat::getHasDefault(a2))
  {
    if (XlListDataFormat::isDefaultStringValid(a2))
    {
      v12 = *(this + 2);
      DefaultStringReference = XlListDataFormat::getDefaultStringReference(a2);
      XlStringParser::parse((this + 8), v12, a3, DefaultStringReference);
    }

    else if (XlListDataFormat::isDefaultNumberValid(a2))
    {
      v14 = (*(**(this + 2) + 120))(*(this + 2));
      XlListDataFormat::setDefaultNumber(a2, v14);
    }

    else if (XlListDataFormat::isDefaultCheckboxValid(a2))
    {
      v15 = (*(**(this + 2) + 104))(*(this + 2)) != 0;
      XlListDataFormat::setDefaultCheckbox(a2, v15);
    }
  }

  v16 = *(**(this + 2) + 16);

  return v16();
}

uint64_t XlParserVisitor::parse(XlParserVisitor *this, XlString *a2, int a3)
{
  (*(**(this + 2) + 16))(*(this + 2), 2, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  v6 = *(this + 2);

  return XlStringParser::parse((this + 8), v6, a3, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlMms *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 64))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlObjProj *a2)
{
  *v6 = *(a2 + 2);
  v4 = *v6;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (v4)
  {
    operator new[](v4);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlParamQry *a2)
{
  *v7 = *(a2 + 2) - 6;
  v4 = *v7;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 5) = v5 & 3;
  *(a2 + 24) = (v5 & 4) != 0;
  *(a2 + 25) = (v5 & 8) != 0;
  *(a2 + 13) = (*(**(this + 2) + 72))(*(this + 2));
  if (v4)
  {
    operator new[](v4);
  }

  return XlParserVisitor::endRead(this, a2);
}

void sub_25D569B48(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1000C408AA14F5FLL);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlQsi *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = (v4 & 2) != 0;
  *(a2 + 18) = (v4 & 4) != 0;
  *(a2 + 19) = (v4 & 0x80) != 0;
  *(a2 + 20) = HIBYTE(v4) & 1;
  *(a2 + 21) = (v4 & 0x400) != 0;
  *(a2 + 11) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 104))(*(this + 2));
  if ((*(**(this + 2) + 80))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRecipName *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 80))(*(this + 2));
  v8 = v4;
  v5 = (*(**(this + 2) + 104))(*(this + 2));
  v7 = v5;
  if (v4)
  {
    operator new[](v4);
  }

  if (v5)
  {
    operator new[](v5);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSound *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 80))(*(this + 2));
  v5 = (*(**(this + 2) + 104))(*(this + 2));
  if (v5)
  {
    *(a2 + 2) = XlParserVisitor::getDataAndContinues(this, &v5, -1) - *(this + 18);
    XlSound::setSoundData(a2, *(this + 3), v5);
    *(this + 3) = 0;
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxDB *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 104))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 22) = v4 & 1;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 23) = vuzp1_s8(v5, v5).u32[0];
  *(a2 + 27) = (v4 & 0x20) != 0;
  *(a2 + 14) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  v6 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = v6;
  if (v6)
  {
    operator new[](v6);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxDBEx *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 2) = (*(**(this + 2) + 120))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxDI *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 17) = v4;
  if (v4 >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxEx *a2)
{
  v14 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 11) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 13) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 14) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 30) = v4 & 1;
  *(a2 + 31) = (v4 >> 1) & 0xF;
  *(a2 + 16) = 0;
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 34) = v5 & 1;
  v6 = *&vshl_u16((*&vdup_n_s16(v5) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 35) = vuzp1_s8(v6, v6).u32[0];
  *(a2 + 39) = (v5 & 0x20) != 0;
  *(a2 + 40) = (v5 & 0x40) != 0;
  *(a2 + 41) = (v5 & 0x80) != 0;
  *(a2 + 21) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 22) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 23) = (*(**(this + 2) + 72))(*(this + 2));
  if (v14 != 24)
  {
    v7 = *(a2 + 9);
    if (v7 >= 1)
    {
      v14 = *(a2 + 9);
      operator new[](v7);
    }

    v8 = *(a2 + 10);
    if (v8 >= 1)
    {
      v14 = *(a2 + 10);
      operator new[](v8);
    }

    v9 = *(a2 + 11);
    if (v9 >= 1)
    {
      v14 = *(a2 + 11);
      operator new[](v9);
    }

    v10 = *(a2 + 21);
    if (v10 >= 1)
    {
      v14 = *(a2 + 21);
      operator new[](v10);
    }

    v11 = *(a2 + 22);
    if (v11 >= 1)
    {
      v14 = *(a2 + 22);
      operator new[](v11);
    }

    v12 = *(a2 + 23);
    if (v12 >= 1)
    {
      v14 = *(a2 + 23);
      operator new[](v12);
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxFDBType *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxFilt *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = (v4 & 2) != 0;
  *(a2 + 18) = (v4 & 4) != 0;
  *(a2 + 19) = (v4 & 8) != 0;
  *(a2 + 10) = v4 >> 6;
  *(a2 + 11) = (*(**(this + 2) + 72))(*(this + 2)) & 0x3FF;
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 24) = v5 & 1;
  v6 = vdup_n_s16(v5);
  v7 = vshl_u16(v6, 0xFFF5FFF6FFF7FFF8);
  v8 = *&vshl_u16((*&v6 & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v9 = vuzp1_s8(v8, v8);
  *(a2 + 25) = v9.i32[0];
  *(a2 + 29) = (v5 & 0x20) != 0;
  *(a2 + 30) = (v5 & 0x40) != 0;
  *(a2 + 31) = (v5 & 0x80) != 0;
  *(a2 + 8) = vuzp1_s8((*&v7 & 0xFF01FF01FF01FF01), v9).u32[0];
  *(a2 + 36) = (v5 & 0x1000) != 0;
  *(a2 + 19) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxFormat *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 80))(*(this + 2)) & 1;
  *(a2 + 10) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxFormula *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxIVd *a2)
{
  v4 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((v4 >> 1))
  {
    operator new[](v4 & 0x1FFFE);
  }

  XlSxIVd::setFieldIDTable(a2, *(this + 5), v4 >> 1);
  *(this + 5) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxLi *a2)
{
  v4 = *(a2 + 4);
  v5 = (*(**(this + 2) + 40))(*(this + 2));
  v6 = *(a2 + 8);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (!v4)
  {
    goto LABEL_6;
  }

  if ((v6 & 0x80000000) == 0)
  {
    operator new();
  }

  do
  {
    (*(**(this + 2) + 16))(*(this + 2), v4, 1);
    v7 = (*(**(this + 2) + 72))(*(this + 2));
    v4 = (*(**(this + 2) + 80))(*(this + 2));
  }

  while (v7 == 60);
  (*(**(this + 2) + 16))(*(this + 2), 4294967292, 1);
  *(a2 + 2) = (*(**(this + 2) + 40))(*(this + 2)) - v5;
  result = XlParserVisitor::endRead(this, a2);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_6:
    *(a2 + 2) = (*(**(this + 2) + 40))(*(this + 2)) - v5;

    return XlParserVisitor::endRead(this, a2);
  }

  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSXLineItem *a2, unsigned __int16 *a3)
{
  v6 = *(a2 + 13);
  if (!*a3 && (v7 = (*(**(this + 2) + 72))(*(this + 2)), *a3 = (*(**(this + 2) + 72))(*(this + 2)), v7 != 60) || (*(a2 + 4) = (*(**(this + 2) + 72))(*(this + 2)), v8 = *a3 - 2, (*a3 = v8) == 0) && (v9 = (*(**(this + 2) + 72))(*(this + 2)), *a3 = (*(**(this + 2) + 72))(*(this + 2)), v9 != 60) || (*(a2 + 3) = (*(**(this + 2) + 72))(*(this + 2)), v10 = *a3 - 2, (*a3 = v10) == 0) && (v11 = (*(**(this + 2) + 72))(*(this + 2)), *a3 = (*(**(this + 2) + 72))(*(this + 2)), v11 != 60) || (*(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2)), v12 = *a3 - 2, (*a3 = v12) == 0) && (v13 = (*(**(this + 2) + 72))(*(this + 2)), *a3 = (*(**(this + 2) + 72))(*(this + 2)), v13 != 60))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  v14 = (*(**(this + 2) + 72))(*(this + 2));
  *a3 -= 2;
  *(a2 + 18) = v14 & 1;
  *(a2 + 10) = (v14 >> 1) & 0xFB;
  v15 = *&vshl_u16(vdup_n_s16(v14), 0xFFF4FFF5FFF6FFF7) & 0xFF81FF81FF81FF81;
  *(a2 + 22) = vuzp1_s8(v15, v15).u32[0];
  *(this + 5) = 0;
  if (v6 >= 1)
  {
    operator new[](2 * v6);
  }

  result = XlSXLineItem::setViewItemIndexTable(a2, 0, v6);
  *(this + 5) = 0;
  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxName *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = ((*(**(this + 2) + 72))(*(this + 2)) & 2) != 0;
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxPair *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = v4 & 1;
  *(a2 + 21) = (v4 & 8) != 0;
  *(a2 + 22) = (v4 & 0x10) != 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxRule *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 17) = (*(**(this + 2) + 64))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 18) = v4 & 1;
  *(a2 + 19) = (v4 & 2) != 0;
  *(a2 + 20) = (v4 & 4) != 0;
  *(a2 + 21) = (v4 & 8) != 0;
  *(a2 + 22) = v4 >> 4;
  v5 = *&vshl_u16(vdup_n_s16(v4), 0xFFF4FFF5FFF6FFF7) & 0xFF81FF81FF81FF81;
  *(a2 + 23) = vuzp1_s8(v5, v5).u32[0];
  *(a2 + 27) = (v4 & 0x2000) != 0;
  *(a2 + 28) = (v4 & 0x4000) != 0;
  *(a2 + 29) = (v4 & 0x8000) != 0;
  (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxSelect *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxString *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxTbl *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 80))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 10) = v4 & 1;
  *(a2 + 22) = v4 < 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxTbPg *a2)
{
  v4 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((v4 >> 1))
  {
    operator new[](v4 & 0x1FFFE);
  }

  XlSxIVd::setFieldIDTable(a2, *(this + 6), v4 >> 1);
  *(this + 6) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxTbRgiItm *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxVd *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 22) = v4 & 1;
  *(a2 + 23) = v4 & 1;
  v5 = vdup_n_s16(v4);
  v6 = vshl_u16(v5, 0xFFF5FFF6FFF7FFF8);
  v7 = *&vshl_u16((*&v5 & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v8 = vuzp1_s8(v7, v7);
  *(a2 + 6) = v8.i32[0];
  *(a2 + 28) = (v4 & 0x20) != 0;
  *(a2 + 29) = (v4 & 0x40) != 0;
  *(a2 + 30) = (v4 & 0x80) != 0;
  *(a2 + 31) = vuzp1_s8((*&v6 & 0xFF01FF01FF01FF01), v8).u32[0];
  *(a2 + 18) = (*(**(this + 2) + 72))(*(this + 2));
  v9 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 19) = v9;
  if (v9 >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxVdEx *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 16) = v4 & 1;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 17) = vuzp1_s8(v5, v5).u32[0];
  *(a2 + 21) = (v4 & 0x80) != 0;
  v6 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v4), xmmword_25D700590)), 0x1000100010001);
  *(a2 + 22) = vuzp1_s8(v6, v6).u32[0];
  *(a2 + 26) = (v4 & 0x2000) != 0;
  if (*(a2 + 2) >= 0xBu)
  {
    (*(**(this + 2) + 64))(*(this + 2));
    *(a2 + 27) = (*(**(this + 2) + 64))(*(this + 2));
  }

  *(a2 + 14) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 15) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 16) = (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSxVi *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 20) = v4 & 1;
  *(a2 + 21) = (v4 & 2) != 0;
  *(a2 + 22) = (v4 & 4) != 0;
  *(a2 + 23) = (v4 & 8) != 0;
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 13) = v5;
  if (v5 >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlTabIdConf *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlUnCalced *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 80))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlUserBView *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 96))(*(this + 2));
  v4 = 16;
  operator new[](16);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlXct *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 9) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlLabelRanges *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  if ((*(**(this + 2) + 72))(*(this + 2)) >= 1)
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlTheme *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 12, 1);
  *(a2 + 7) = (*(**(this + 2) + 104))(*(this + 2));
  v6 = *(a2 + 2) - 16;
  DataAndContinues = XlParserVisitor::getDataAndContinues(this, &v6, -1);
  XlChartGelFrame::setBinaryData(a2, *(this + 3), v6);
  *(this + 3) = 0;
  *(a2 + 2) = DataAndContinues - *(this + 18);

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRangeProtection *a2)
{
  *v14 = *(a2 + 2);
  v4 = (*(**(this + 2) + 40))(*(this + 2));
  v5 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v6 = *v14 >= 0x27u && (*(**(this + 2) + 104))(*(this + 2)) == 2152 && !(*(**(this + 2) + 104))(*(this + 2)) && !(*(**(this + 2) + 104))(*(this + 2)) && (*(**(this + 2) + 104))(*(this + 2)) == 2 && !(*(**(this + 2) + 80))(*(this + 2)) && (*(**(this + 2) + 64))(*(this + 2)) == 0;
  v7 = (*(**(this + 2) + 64))(*(this + 2));
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = v7;
  if ((*(**(this + 2) + 104))(*(this + 2)) || (*(**(this + 2) + 80))(*(this + 2)) || (*(**(this + 2) + 64))(*(this + 2)))
  {
    goto LABEL_16;
  }

  if (v8)
  {
    operator new();
  }

  v9 = (*(**(this + 2) + 80))(*(this + 2));
  if ((*(**(this + 2) + 80))(*(this + 2)) || (*(a2 + 24) = (*(**(this + 2) + 80))(*(this + 2)), (*(**(this + 2) + 80))(*(this + 2))))
  {
LABEL_16:
    (*(**(this + 2) + 16))(*(this + 2), *(this + 18), 0);
    *(a2 + 66) = 0;
    operator new[](*v14);
  }

  v11 = v5 + v4;
  v12 = (*(**(this + 2) + 80))(*(this + 2));
  (*(**(this + 2) + 64))(*(this + 2));
  if (v12)
  {
    operator new();
  }

  v13 = v11 - (*(**(this + 2) + 40))(*(this + 2));
  if (v13 >= 1)
  {
    operator new[](v13);
  }

  XlRangeProtection::takePermissionContent(a2, 0, 0, v9);
  *(a2 + 66) = 1;
  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionLogEntry *a2)
{
  v6 = *(a2 + 2);
  v4 = v6;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (v4)
  {
    operator new[](v4);
  }

  XlChartGelFrame::setBinaryData(a2, *(this + 3), 0);
  *(this + 3) = 0;
  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlRevisionInfo *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  v4 = 16;
  operator new[](16);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionFileLock *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = *(a2 + 2);
  v6 = v4;
  if (v4)
  {
    operator new[](v4);
  }

  XlChartGelFrame::setBinaryData(a2, *(this + 3), 0);
  *(this + 3) = 0;
  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionExclusive *a2)
{
  v4 = (*(**(this + 2) + 40))(*(this + 2));
  v5 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 10) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 22) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 23) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 24) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 25) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 26) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 27) = (*(**(this + 2) + 64))(*(this + 2));
  v6 = (*(**(this + 2) + 72))(*(this + 2));
  v7 = (*(**(this + 2) + 64))(*(this + 2));
  if ((v6 - 1) <= 0x95 && v7 <= 1)
  {
    operator new();
  }

  (*(**(this + 2) + 16))(*(this + 2), (v5 + v4), 0);

  return XlParserVisitor::endRead(this, a2);
}

void sub_25D57011C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ChAutoPtr<XlDXf>::~ChAutoPtr(va);
  _Unwind_Resume(a1);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionMoveBegin *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void sub_25D5703BC(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, v1);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionMoveEnd *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionVersionNumber *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 8) = (*(**(this + 2) + 72))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionCopy *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = *(a2 + 2);
  v6 = v4;
  if (v4)
  {
    operator new[](v4);
  }

  XlChartGelFrame::setBinaryData(a2, *(this + 3), 0);
  *(this + 3) = 0;
  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionInsertDeleteBegin *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlRevisionInsertDeleteEnd *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

void XlParserVisitor::visit(XlParserVisitor *this, XlDoper *a2)
{
  v4 = (*(**(this + 2) + 64))(*(this + 2));
  *a2 = v4;
  *(a2 + 1) = (*(**(this + 2) + 64))(*(this + 2));
  v5 = **(this + 2);
  if (v4 > 5)
  {
    if (v4 == 6)
    {
      (*(v5 + 104))();
      *(a2 + 16) = (*(**(this + 2) + 64))(*(this + 2));
      (*(**(this + 2) + 72))(*(this + 2));
      v6 = *(**(this + 2) + 64);

      goto LABEL_17;
    }

    if (v4 == 8)
    {
      *(a2 + 33) = (*(v5 + 64))() != 0;
      *(a2 + 32) = (*(**(this + 2) + 64))(*(this + 2));
      (*(**(this + 2) + 104))(*(this + 2));
      v6 = *(**(this + 2) + 72);

      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 == 4)
    {
      *(a2 + 1) = (*(v5 + 120))();
      return;
    }

LABEL_10:
    (*(v5 + 104))();
    goto LABEL_12;
  }

  v7 = (*(v5 + 96))();
  *(a2 + 1) = XlRk::decode(v7);
LABEL_12:
  v6 = *(**(this + 2) + 104);

LABEL_17:
  v6();
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfUserFmt *a2)
{
  var1 = a2->var1;
  result = (*(**(this + 2) + 72))(*(this + 2));
  if (var1)
  {
    if (result >= 4)
    {
      (*(**(this + 2) + 40))(*(this + 2));
      operator new();
    }
  }

  else
  {
    a2->var2 = result;
  }

  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfAlign *a2)
{
  v4 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var4 = (v4 & 8) != 0;
  a2->var0 = v4 & 7;
  a2->var1 = (v4 >> 4) & 7;
  a2->var3 = (*(**(this + 2) + 64))(*(this + 2));
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var2 = v5 & 0xF;
  a2->var5 = (v5 & 0x10) != 0;
  result = (*(**(this + 2) + 96))(*(this + 2));
  a2->var6 = result;
  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlDXfProtect *a2)
{
  result = (*(**(this + 2) + 72))(*(this + 2));
  a2->var0 = result & 1;
  a2->var1 = (result & 2) != 0;
  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSec *a2)
{
  *a2 = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 1) = (*(**(this + 2) + 64))(*(this + 2));
  *(a2 + 1) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 1) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 2) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 3) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 7) = (*(**(this + 2) + 96))(*(this + 2));
  result = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 8) = result;
  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlVertex *a2)
{
  *a2 = (*(**(this + 2) + 80))(*(this + 2));
  result = (*(**(this + 2) + 80))(*(this + 2));
  *(a2 + 1) = result;
  return result;
}

uint64_t CsSimpleHeapVector<XlListColumn>::pushBack(void *a1, uint64_t *a2)
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
    result = std::vector<XlListColumn *,ChAllocator<XlListColumn *>>::__emplace_back_slow_path<XlListColumn *>(a1, &v8);
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

uint64_t std::vector<XlListColumn *,ChAllocator<XlListColumn *>>::__emplace_back_slow_path<XlListColumn *>(void *a1, void *a2)
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

void sub_25D5723C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ChAutoPtr<XlListColumn>::~ChAutoPtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    XlString::~XlString((v2 + 504));
    XlString::~XlString((v2 + 400));
    XlString::~XlString((v2 + 272));
    XlAutoFilterData::~XlAutoFilterData((v2 + 224));
    XlString::~XlString((v2 + 112));
    XlString::~XlString((v2 + 8));
    MEMORY[0x25F897000](v2, 0x10B0C405854E9BBLL);
  }

  *a1 = 0;
  return a1;
}

uint64_t std::vector<unsigned char *,ChAllocator<unsigned char *>>::__emplace_back_slow_path<unsigned char * const&>(void *a1, void *a2)
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
    std::__allocate_at_least[abi:ne200100]<ChAllocator<short *>>(a1, v7);
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

void sub_25D572560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

XlDoper **ChAutoPtr<XlDoper>::~ChAutoPtr(XlDoper **a1)
{
  v2 = *a1;
  if (v2)
  {
    XlDoper::~XlDoper(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

uint64_t std::vector<unsigned short,ChAllocator<unsigned short>>::__emplace_back_slow_path<unsigned short>(uint64_t a1, _WORD *a2)
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

void sub_25D5726C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlPtg::XlPtg(XlPtg *this)
{
  this->var0 = 0;
  *&this->var1 = 0;
  this->var3 = 0;
}

uint64_t XlPtg::XlPtg(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

void XlPtg::XlPtg(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  v4 = (a3 + 2);
  *(a1 + 8) = a2;
  *(a1 + 12) = v4;
  operator new[](v4);
}

uint64_t XlPtg::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if (*a1)
    {
      MEMORY[0x25F896FE0]();
      *a1 = 0;
      *(a1 + 12) = 0;
      *(a1 + 16) = 0;
    }

    *(a1 + 8) = *(a2 + 8);
    if (*a2)
    {
      v4 = *(a2 + 12);
      *(a1 + 12) = v4;
      *(a1 + 16) = *(a2 + 16);
      operator new[](v4);
    }
  }

  return a1;
}

char *XlPtg::clear(XlPtg *this)
{
  result = this->var0;
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
    this->var0 = 0;
    this->var2 = 0;
    this->var3 = 0;
  }

  return result;
}

uint64_t XlPtg::addDataItem(XlPtg *this, unsigned int a2)
{
  if (a2)
  {
    if (this->var0)
    {
      operator new[](LOWORD(this->var2) + a2 + 2);
    }

    operator new[](a2 + 2);
  }

  return 0;
}

XlPtg *XlPtg::setExtendedData(XlPtg *this, char *a2, unsigned __int16 a3)
{
  this->var0 = a2;
  this->var3 = a3;
  this->var2 = 0;
  return this;
}

uint64_t XlPtg::getLastExtendedDataLength(XlPtg *this)
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

  for (result = *var0; --var3; result = v5)
  {
    v4 = &var0[result];
    v5 = *(v4 + 1);
    var0 = v4 + 2;
  }

  return result;
}

BOOL isRef3D(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    v2 = v1 == 122;
    if (v1 == 90)
    {
      v2 = 1;
    }

    return v1 == 58 || v2;
  }

  return result;
}

BOOL isRef(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    result = 1;
    if ((v1 - 36) > 0x36 || ((1 << (v1 - 36)) & 0x40000100400001) == 0)
    {
      return v1 == 100 || v1 == 122;
    }
  }

  return result;
}

BOOL isArea3D(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    v2 = v1 == 123;
    if (v1 == 91)
    {
      v2 = 1;
    }

    return v1 == 59 || v2;
  }

  return result;
}

BOOL isArea(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    result = 1;
    if ((v1 - 37) > 0x36 || ((1 << (v1 - 37)) & 0x40000100400001) == 0)
    {
      return v1 == 101 || v1 == 123;
    }
  }

  return result;
}

_WORD *adjustRowAndColumn(_WORD *result, unsigned __int16 *a2, __int16 a3, char a4)
{
  v4 = *a2;
  if ((v4 & 0x80000000) == 0)
  {
    if ((v4 & 0x4000) == 0)
    {
      return result;
    }

LABEL_5:
    *a2 = (*a2 - a4) | v4 & 0xC000;
    return result;
  }

  *result -= a3;
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t extractOcTextFromPtgStr(XlPtg *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  LastExtendedData = XlPtg::getLastExtendedData(a1);

  return extractOcTextFromPtgStrBuffer(LastExtendedData);
}

uint64_t extractOcTextFromPtgStrBuffer(unsigned __int8 *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

XlPtg *clearXlPtgs(XlPtg *result)
{
  var0 = result->var0;
  if (result->var0)
  {
    v2 = result;
    v3 = *var0;
    v4 = *(var0 + 1) - *var0;
    if ((v4 & 0x7FFFFFFF8) != 0)
    {
      v5 = 0;
      v6 = (v4 >> 3);
      do
      {
        v7 = *v2->var0;
        v8 = *(v2->var0 + 1) - v7;
        if (v5 >= (v8 >> 3))
        {
          goto LABEL_16;
        }

        result = *(v7 + 8 * v5);
        if (result)
        {
          XlPtg::~XlPtg(result);
          result = MEMORY[0x25F897000]();
          v7 = *v2->var0;
          v8 = *(v2->var0 + 1) - v7;
        }

        if (v5 >= (v8 >> 3))
        {
LABEL_16:
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        *(v7 + 8 * v5++) = 0;
      }

      while (v6 != v5);
      var0 = v2->var0;
      v3 = *v2->var0;
    }

    *(var0 + 1) = v3;
    v9 = v2->var0;
    if (v2->var0)
    {
      v10 = *v9;
      if (*v9)
      {
        v9[1] = v10;
        operator delete(v10);
      }

      result = MEMORY[0x25F897000](v9, 0x80C40D6874129);
    }

    v2->var0 = 0;
  }

  return result;
}

void XlStringParser::parseSize(XlStringParser *this, SsrwOOStream *a2)
{
  if (*this == 1)
  {
    *this = 0;
  }

  if (*(this + 2) == 1)
  {
    *(this + 2) = 0;
  }

  if (*(this + 1) == 1)
  {
    *(this + 1) = 0;
  }

  operator new();
}

uint64_t std::vector<XlBaseFormulaTable::XlBaseCoord *,ChAllocator<XlBaseFormulaTable::XlBaseCoord *>>::__emplace_back_slow_path<XlBaseFormulaTable::XlBaseCoord * const&>(void *a1, void *a2)
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

void sub_25D572F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlDateTimeFormat::~XlDateTimeFormat(XlDateTimeFormat *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1000C40BDFB0063);
  }

  *(this + 6) = 0;
  v3 = *(this + 27);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 27) = 0;
  XlDateTimeFormat::clearSymbols(this);
  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    *(this + 9) = v9;
    operator delete(v9);
  }
}

void *XlDateTimeFormat::clearSymbols(void *this)
{
  v1 = this;
  v2 = this[8];
  if (((this[9] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[8];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[8];
    }

    while (v3 < ((v1[9] - v2) >> 3));
  }

  v1[9] = v2;
  v4 = v1[11];
  if (((v1[12] - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      this = *(v4 + 8 * v5);
      if (this)
      {
        this = (*(*this + 8))(this);
        v4 = v1[11];
      }

      *(v4 + 8 * v5++) = 0;
      v4 = v1[11];
    }

    while (v5 < ((v1[12] - v4) >> 3));
  }

  v1[12] = v4;
  v6 = v1[14];
  if (((v1[15] - v6) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    do
    {
      this = *(v6 + 8 * v7);
      if (this)
      {
        this = (*(*this + 8))(this);
        v6 = v1[14];
      }

      *(v6 + 8 * v7++) = 0;
      v6 = v1[14];
    }

    while (v7 < ((v1[15] - v6) >> 3));
  }

  v1[15] = v6;
  v8 = v1[17];
  if (((v1[18] - v8) & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    do
    {
      this = *(v8 + 8 * v9);
      if (this)
      {
        this = (*(*this + 8))(this);
        v8 = v1[17];
      }

      *(v8 + 8 * v9++) = 0;
      v8 = v1[17];
    }

    while (v9 < ((v1[18] - v8) >> 3));
  }

  v1[18] = v8;
  v10 = v1[20];
  if (((v1[21] - v10) & 0x7FFFFFFF8) != 0)
  {
    v11 = 0;
    do
    {
      this = *(v10 + 8 * v11);
      if (this)
      {
        this = (*(*this + 8))(this);
        v10 = v1[20];
      }

      *(v10 + 8 * v11++) = 0;
      v10 = v1[20];
    }

    while (v11 < ((v1[21] - v10) >> 3));
  }

  v1[21] = v10;
  v12 = v1[23];
  if (((v1[24] - v12) & 0x7FFFFFFF8) != 0)
  {
    v13 = 0;
    do
    {
      this = *(v12 + 8 * v13);
      if (this)
      {
        this = (*(*this + 8))(this);
        v12 = v1[23];
      }

      *(v12 + 8 * v13++) = 0;
      v12 = v1[23];
    }

    while (v13 < ((v1[24] - v12) >> 3));
  }

  v1[24] = v12;
  return this;
}

uint64_t std::vector<XlFormatSection *,ChAllocator<XlFormatSection *>>::__emplace_back_slow_path<XlFormatSection * const&>(void *a1, void *a2)
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

void sub_25D5733C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlFormulaProcessor::push(uint64_t this)
{
  v2 = *(this + 72);
  v1 = *(this + 76);
  v3 = v1 + 1;
  *(this + 76) = v1 + 1;
  if (v1 + 1 == v2)
  {
    v4 = v1 + 17;
    *(this + 72) = v4;
    if (v3 < v4)
    {
      operator new();
    }
  }

  return this;
}

uint64_t XlFormulaProcessor::toString(uint64_t a1, uint64_t *a2, __int16 a3, __int16 a4)
{
  *(a1 + 168) = a3;
  *(a1 + 170) = a4;
  v5 = *a2;
  if (((a2[1] - *a2) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 8 * v7);
      if (!v8)
      {
        break;
      }

      v9 = categoryForType(v8->var1);
      if (v9 == 2)
      {
        v10 = XlFormulaProcessor::processControl(a1, v8);
      }

      else if (v9 == 1)
      {
        v10 = XlFormulaProcessor::processOperator(a1, v8);
      }

      else
      {
        if (v9)
        {
          goto LABEL_13;
        }

        v10 = XlFormulaProcessor::processOperand(a1, v8);
      }

      *(a1 + 164) = v10;
      if (*(a1 + 164) == 3006)
      {
        break;
      }

      ++v7;
      v5 = *a2;
    }

    while (v7 < ((a2[1] - *a2) >> 3));
  }

  if (*(a1 + 164) == 3006)
  {
LABEL_13:
    *(a1 + 76) = 0;
  }

  else
  {
    v11 = *(a1 + 76);
    if (v11)
    {
      v12 = *(*(*(a1 + 24) + 8 * (v11 - 1)) + 16);
      if (*(a1 + 144))
      {
        ChLogFunction("tempdata already initialized.", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Processor/XlFormulaProcessor.cpp", 828);
        v13 = *(a1 + 144);
        if (v13)
        {
          MEMORY[0x25F896FE0](v13, 0x1000C80BDFB0063);
        }
      }

      operator new[](2 * (v12 + 2));
    }
  }

  return 0;
}

uint64_t XlFormulaProcessor::processOperand(XlFormulaProcessor *this, XlPtg *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(*(this + 3) + 8 * *(this + 19));
  *(v4 + 16) = 0;
  bzero(*(v4 + 8), 2 * *(v4 + 20));
  var1 = a2->var1;
  result = 3001;
  v7 = 0;
  switch(var1)
  {
    case 22:
      break;
    case 23:
      v29 = *(*(this + 3) + 8 * *(this + 19));
      v30 = _ChWcslenA(&unk_25D700610);
      MEMORY[0x28223BE20](v30);
      v32 = &v46 - ((v31 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v32, v31 + 2);
      v33 = WcharToChCHAR2(v32, &unk_25D700610);
      CsString::append(v29, v33);
      OcTextFromPtgStr = extractOcTextFromPtgStr(a2);
      CsString::append(*(*(this + 3) + 8 * *(this + 19)), *(OcTextFromPtgStr + 24), *(OcTextFromPtgStr + 16));
      v35 = *(*(this + 3) + 8 * *(this + 19));
      v36 = _ChWcslenA(&unk_25D700610);
      MEMORY[0x28223BE20](v36);
      v38 = &v46 - ((v37 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v38, v37 + 2);
      v39 = WcharToChCHAR2(v38, &unk_25D700610);
      CsString::append(v35, v39);
      (*(*OcTextFromPtgStr + 8))(OcTextFromPtgStr);
      goto LABEL_32;
    case 24:
      if (*(this + 160))
      {
        v21 = 940;
        goto LABEL_27;
      }

      LODWORD(v47.var0) = 0;
      if (XlPtg::getNumberOfExtendedDataEntries(a2) >= 3)
      {
        ChLogFunction("too many extended data entries", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Processor/XlFormulaProcessor.cpp", 934);
      }

      ExtendedData = XlPtg::getExtendedData(a2, 0, &v47);
      XlFormulaProcessor::eptgToString(ExtendedData, v44, v45, *(*(this + 3) + 8 * *(this + 19)));
      v7 = 3006;
      break;
    case 25:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 62:
    case 63:
    case 65:
    case 66:
    case 72:
    case 73:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 97:
    case 98:
    case 104:
    case 105:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
      return result;
    case 26:
      goto LABEL_11;
    case 27:
    case 38:
    case 39:
    case 45:
    case 70:
    case 71:
    case 77:
    case 102:
    case 103:
    case 109:
      return 0;
    case 28:
      result = XlPtg::getLastExtendedData(a2);
      v14 = *result;
      v13 = *(*(this + 3) + 8 * *(this + 19));
      goto LABEL_7;
    case 29:
      LastExtendedData = XlPtg::getLastExtendedData(a2);
      XlFormulaProcessor::BOOLToString(LastExtendedData, *LastExtendedData != 0, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
    case 30:
      v28 = XlPtg::getLastExtendedData(a2);
      XlFormulaProcessor::intToString(this, *v28, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
    case 31:
      v41 = XlPtg::getLastExtendedData(a2);
      Float64FromPackedLocation = CsGetFloat64FromPackedLocation(v41);
      XlFormulaProcessor::doubleToString(this, Float64FromPackedLocation, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
    case 35:
    case 67:
    case 99:
      if (*(this + 160))
      {
        v21 = 983;
LABEL_27:
        ChLogFunction("Lasso syntax", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Processor/XlFormulaProcessor.cpp", v21);
LABEL_32:
        v7 = 0;
      }

      else
      {
        v25 = *(this + 6);
        if (((*(v25 + 2) - *(v25 + 1)) & 0x7FFFFFFF8) != 0)
        {
          v26 = XlPtg::getLastExtendedData(a2);
          XlNameTable::getName(v25, *v26, &v47);
          operator new();
        }

        v18 = *(*(this + 3) + 8 * *(this + 19));
        v19 = 29;
LABEL_12:
        XlFormulaProcessor::errorToString(result, v19, v18);
        v7 = 3005;
      }

      break;
    case 36:
    case 44:
    case 68:
    case 76:
    case 100:
    case 108:
      v9 = *XlPtg::getLastExtendedData(a2);
      v10 = *(XlPtg::getLastExtendedData(a2) + 1);
      v11 = *(XlPtg::getLastExtendedData(a2) + 1);
      goto LABEL_5;
    case 37:
    case 69:
    case 101:
      v24 = XlPtg::getLastExtendedData(a2);
      XlFormulaProcessor::areaReferenceToString(this, v24, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
    case 42:
    case 43:
    case 74:
    case 75:
    case 106:
    case 107:
      v13 = *(*(this + 3) + 8 * *(this + 19));
      v14 = 23;
LABEL_7:
      XlFormulaProcessor::errorToString(result, v14, v13);
      goto LABEL_32;
    case 57:
    case 89:
    case 121:
      v15 = XlPtg::getLastExtendedData(a2);
      v16 = *(v15 + 1);
      MergeRegion = XlMerge::getMergeRegion((*(this + 8) + 8), *v15);
      result = XlLinkTable::getLink(*(this + 8), *MergeRegion);
      if (((*(result + 64) - *(result + 56)) >> 3) > v16)
      {
        result = XlLink::getExternalName(result, v16);
        if (*(result + 32))
        {
          operator new();
        }
      }

LABEL_11:
      v18 = *(*(this + 3) + 8 * *(this + 19));
      v19 = 23;
      goto LABEL_12;
    case 58:
    case 90:
    case 122:
      v20 = XlPtg::getLastExtendedData(a2);
      v7 = XlFormulaProcessor::externSheetToString(this, *v20, *(*(this + 3) + 8 * *(this + 19)));
      if (v7)
      {
        break;
      }

      v9 = *(XlPtg::getLastExtendedData(a2) + 1);
      v10 = *(XlPtg::getLastExtendedData(a2) + 2);
      v11 = *(XlPtg::getLastExtendedData(a2) + 2);
LABEL_5:
      v12 = *(*(this + 3) + 8 * *(this + 19));
      XlFormulaProcessor::columnReferenceToString(this, v10, v11 & 0xC000, v12);
      XlFormulaProcessor::rowReferenceToString(this, v9, v11 & 0xC000, v12);
      goto LABEL_32;
    case 59:
    case 91:
    case 123:
      v22 = XlPtg::getLastExtendedData(a2);
      v7 = XlFormulaProcessor::externSheetToString(this, *v22, *(*(this + 3) + 8 * *(this + 19)));
      v23 = XlPtg::getLastExtendedData(a2);
      XlFormulaProcessor::areaReferenceToString(this, v23 + 1, *(*(this + 3) + 8 * *(this + 19)));
      break;
    case 60:
    case 61:
    case 92:
    case 93:
    case 124:
    case 125:
      v8 = XlPtg::getLastExtendedData(a2);
      v7 = XlFormulaProcessor::externSheetToString(this, *v8, *(*(this + 3) + 8 * *(this + 19)));
      XlFormulaProcessor::errorToString(v7, 23, *(*(this + 3) + 8 * *(this + 19)));
      break;
    case 64:
    case 96:
      XlFormulaProcessor::arrayTokenToString(this, a2, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
    default:
      if (var1 != 255)
      {
        return result;
      }

      v27 = XlPtg::getLastExtendedData(a2);
      XlFormulaProcessor::charsToString(v27, v27, *(*(this + 3) + 8 * *(this + 19)));
      goto LABEL_32;
  }

  XlFormulaProcessor::push(this);
  return v7;
}

void sub_25D573E20(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  OcText::~OcText((v2 - 120));
  _Unwind_Resume(a1);
}

uint64_t XlFormulaProcessor::processOperator(XlFormulaProcessor *this, XlPtg *a2)
{
  v4 = 0;
  v188[1] = *MEMORY[0x277D85DE8];
  var1 = a2->var1;
  result = 3001;
  switch(var1)
  {
    case 3:
      v7 = *(this + 19);
      v8 = v7 - 1;
      if (v7 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v8;
      v9 = (this + 76);
      v10 = *(v9 - 13);
      v11 = *(v10 + 8 * v8);
      v12 = *(v10 + 8 * (v7 - 2));
      v13 = _ChWcslenA(&unk_25D700618);
      MEMORY[0x28223BE20](v13);
      v15 = v188 - ((v14 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v14 + 2);
      v16 = WcharToChCHAR2(v15, &unk_25D700618);
      CsString::append(v12, v16);
      CsString::append(*(*(v9 - 13) + 8 * (*v9 - 1)), v11);
      return 0;
    case 4:
      v72 = *(this + 19);
      v73 = v72 - 1;
      if (v72 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v73;
      v74 = (this + 76);
      v75 = *(v74 - 13);
      v76 = *(v75 + 8 * v73);
      v77 = *(v75 + 8 * (v72 - 2));
      v78 = _ChWcslenA(&unk_25D700620);
      MEMORY[0x28223BE20](v78);
      v80 = v188 - ((v79 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v80, v79 + 2);
      v81 = WcharToChCHAR2(v80, &unk_25D700620);
      CsString::append(v77, v81);
      CsString::append(*(*(v74 - 13) + 8 * (*v74 - 1)), v76);
      return 0;
    case 5:
      v52 = *(this + 19);
      v53 = v52 - 1;
      if (v52 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v53;
      v54 = (this + 76);
      v55 = *(v54 - 13);
      v56 = *(v55 + 8 * v53);
      v57 = *(v55 + 8 * (v52 - 2));
      v58 = _ChWcslenA(&unk_25D700628);
      MEMORY[0x28223BE20](v58);
      v60 = v188 - ((v59 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v60, v59 + 2);
      v61 = WcharToChCHAR2(v60, &unk_25D700628);
      CsString::append(v57, v61);
      CsString::append(*(*(v54 - 13) + 8 * (*v54 - 1)), v56);
      return 0;
    case 6:
      v92 = *(this + 19);
      v93 = v92 - 1;
      if (v92 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v93;
      v94 = (this + 76);
      v95 = *(v94 - 13);
      v96 = *(v95 + 8 * v93);
      v97 = *(v95 + 8 * (v92 - 2));
      v98 = _ChWcslenA(&unk_25D700630);
      MEMORY[0x28223BE20](v98);
      v100 = v188 - ((v99 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v100, v99 + 2);
      v101 = WcharToChCHAR2(v100, &unk_25D700630);
      CsString::append(v97, v101);
      CsString::append(*(*(v94 - 13) + 8 * (*v94 - 1)), v96);
      return 0;
    case 7:
      v157 = *(this + 19);
      v158 = v157 - 1;
      if (v157 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v158;
      v159 = (this + 76);
      v160 = *(v159 - 13);
      v161 = *(v160 + 8 * v158);
      v162 = *(v160 + 8 * (v157 - 2));
      v163 = _ChWcslenA(&unk_25D700638);
      MEMORY[0x28223BE20](v163);
      v165 = v188 - ((v164 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v165, v164 + 2);
      v166 = WcharToChCHAR2(v165, &unk_25D700638);
      CsString::append(v162, v166);
      CsString::append(*(*(v159 - 13) + 8 * (*v159 - 1)), v161);
      return 0;
    case 8:
      v137 = *(this + 19);
      v138 = v137 - 1;
      if (v137 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v138;
      v139 = (this + 76);
      v140 = *(v139 - 13);
      v141 = *(v140 + 8 * v138);
      v142 = *(v140 + 8 * (v137 - 2));
      v143 = _ChWcslenA(&unk_25D700640);
      MEMORY[0x28223BE20](v143);
      v145 = v188 - ((v144 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v145, v144 + 2);
      v146 = WcharToChCHAR2(v145, &unk_25D700640);
      CsString::append(v142, v146);
      CsString::append(*(*(v139 - 13) + 8 * (*v139 - 1)), v141);
      return 0;
    case 9:
      v127 = *(this + 19);
      v128 = v127 - 1;
      if (v127 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v128;
      v129 = (this + 76);
      v130 = *(v129 - 13);
      v131 = *(v130 + 8 * v128);
      v132 = *(v130 + 8 * (v127 - 2));
      v133 = _ChWcslenA(&unk_25D700648);
      MEMORY[0x28223BE20](v133);
      v135 = v188 - ((v134 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v135, v134 + 2);
      v136 = WcharToChCHAR2(v135, &unk_25D700648);
      CsString::append(v132, v136);
      CsString::append(*(*(v129 - 13) + 8 * (*v129 - 1)), v131);
      return 0;
    case 10:
      v102 = *(this + 19);
      v103 = v102 - 1;
      if (v102 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v103;
      v104 = (this + 76);
      v105 = *(v104 - 13);
      v106 = *(v105 + 8 * v103);
      v107 = *(v105 + 8 * (v102 - 2));
      v108 = _ChWcslenA(dword_25D700650);
      MEMORY[0x28223BE20](v108);
      v110 = v188 - ((v109 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v110, v109 + 2);
      v111 = WcharToChCHAR2(v110, dword_25D700650);
      CsString::append(v107, v111);
      CsString::append(*(*(v104 - 13) + 8 * (*v104 - 1)), v106);
      return 0;
    case 11:
      v177 = *(this + 19);
      v178 = v177 - 1;
      if (v177 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v178;
      v179 = (this + 76);
      v180 = *(v179 - 13);
      v181 = *(v180 + 8 * v178);
      v182 = *(v180 + 8 * (v177 - 2));
      v183 = _ChWcslenA(&unk_25D70065C);
      MEMORY[0x28223BE20](v183);
      v185 = v188 - ((v184 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v185, v184 + 2);
      v186 = WcharToChCHAR2(v185, &unk_25D70065C);
      CsString::append(v182, v186);
      CsString::append(*(*(v179 - 13) + 8 * (*v179 - 1)), v181);
      return 0;
    case 12:
      v42 = *(this + 19);
      v43 = v42 - 1;
      if (v42 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v43;
      v44 = (this + 76);
      v45 = *(v44 - 13);
      v46 = *(v45 + 8 * v43);
      v47 = *(v45 + 8 * (v42 - 2));
      v48 = _ChWcslenA(dword_25D700664);
      MEMORY[0x28223BE20](v48);
      v50 = v188 - ((v49 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v50, v49 + 2);
      v51 = WcharToChCHAR2(v50, dword_25D700664);
      CsString::append(v47, v51);
      CsString::append(*(*(v44 - 13) + 8 * (*v44 - 1)), v46);
      return 0;
    case 13:
      v62 = *(this + 19);
      v63 = v62 - 1;
      if (v62 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v63;
      v64 = (this + 76);
      v65 = *(v64 - 13);
      v66 = *(v65 + 8 * v63);
      v67 = *(v65 + 8 * (v62 - 2));
      v68 = _ChWcslenA(&unk_25D700670);
      MEMORY[0x28223BE20](v68);
      v70 = v188 - ((v69 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v70, v69 + 2);
      v71 = WcharToChCHAR2(v70, &unk_25D700670);
      CsString::append(v67, v71);
      CsString::append(*(*(v64 - 13) + 8 * (*v64 - 1)), v66);
      return 0;
    case 14:
      v82 = *(this + 19);
      v83 = v82 - 1;
      if (v82 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v83;
      v84 = (this + 76);
      v85 = *(v84 - 13);
      v86 = *(v85 + 8 * v83);
      v87 = *(v85 + 8 * (v82 - 2));
      v88 = _ChWcslenA(dword_25D700678);
      MEMORY[0x28223BE20](v88);
      v90 = v188 - ((v89 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v90, v89 + 2);
      v91 = WcharToChCHAR2(v90, dword_25D700678);
      CsString::append(v87, v91);
      CsString::append(*(*(v84 - 13) + 8 * (*v84 - 1)), v86);
      return 0;
    case 15:
      v32 = *(this + 19);
      v33 = v32 - 1;
      if (v32 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v33;
      v34 = (this + 76);
      v35 = *(v34 - 13);
      v36 = *(v35 + 8 * v33);
      v37 = *(v35 + 8 * (v32 - 2));
      v38 = _ChWcslenA(&unk_25D700684);
      MEMORY[0x28223BE20](v38);
      v40 = v188 - ((v39 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v40, v39 + 2);
      v41 = WcharToChCHAR2(v40, &unk_25D700684);
      CsString::append(v37, v41);
      CsString::append(*(*(v34 - 13) + 8 * (*v34 - 1)), v36);
      return 0;
    case 16:
      v167 = *(this + 19);
      v168 = v167 - 1;
      if (v167 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v168;
      v169 = (this + 76);
      v170 = *(v169 - 13);
      v171 = *(v170 + 8 * v168);
      v172 = *(v170 + 8 * (v167 - 2));
      v173 = _ChWcslenA(&unk_25D70068C);
      MEMORY[0x28223BE20](v173);
      v175 = v188 - ((v174 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v175, v174 + 2);
      v176 = WcharToChCHAR2(v175, &unk_25D70068C);
      CsString::append(v172, v176);
      CsString::append(*(*(v169 - 13) + 8 * (*v169 - 1)), v171);
      return 0;
    case 17:
      v147 = *(this + 19);
      v148 = v147 - 1;
      if (v147 <= 1)
      {
        goto LABEL_48;
      }

      *(this + 19) = v148;
      v149 = (this + 76);
      v150 = *(v149 - 13);
      v151 = *(v150 + 8 * v148);
      v152 = *(v150 + 8 * (v147 - 2));
      v153 = _ChWcslenA(&unk_25D700694);
      MEMORY[0x28223BE20](v153);
      v155 = v188 - ((v154 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v155, v154 + 2);
      v156 = WcharToChCHAR2(v155, &unk_25D700694);
      CsString::append(v152, v156);
      CsString::append(*(*(v149 - 13) + 8 * (*v149 - 1)), v151);
      return 0;
    case 18:
      return v4;
    case 19:
      v112 = *(this + 19);
      if (!v112)
      {
        goto LABEL_48;
      }

      v114 = (this + 24);
      v113 = *(this + 3);
      v115 = *(v113 + 8 * (v112 - 1));
      v116 = *(v113 + 8 * v112);
      *(v116 + 16) = 0;
      bzero(*(v116 + 8), 2 * *(v116 + 20));
      v118 = *(this + 19);
      v117 = (this + 76);
      CsString::append(*(*v114 + 8 * v118), v115);
      v119 = *v117;
      v120 = *(*v114 + 8 * v119);
      v121 = *(*v114 + 8 * (v119 - 1));
      *(v121 + 16) = 0;
      bzero(*(v121 + 8), 2 * *(v121 + 20));
      v122 = *(*v114 + 8 * (*v117 - 1));
      v123 = _ChWcslenA(&unk_25D700620);
      MEMORY[0x28223BE20](v123);
      v125 = v188 - ((v124 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v125, v124 + 2);
      v126 = WcharToChCHAR2(v125, &unk_25D700620);
      CsString::append(v122, v126);
      CsString::append(*(*v114 + 8 * (*v117 - 1)), v120);
      return 0;
    case 20:
      v26 = *(this + 19);
      if (!v26)
      {
LABEL_48:
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1005;
      }

      v27 = *(*(this + 3) + 8 * (v26 - 1));
      v28 = _ChWcslenA(&unk_25D70069C);
      MEMORY[0x28223BE20](v28);
      v30 = v188 - ((v29 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v30, v29 + 2);
      v31 = WcharToChCHAR2(v30, &unk_25D70069C);
      CsString::append(v27, v31, 1u);
      return 0;
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      return result;
    case 33:
      goto LABEL_12;
    case 34:
      goto LABEL_9;
    default:
      v17 = var1 - 65;
      if (v17 > 0x37)
      {
        return result;
      }

      if (((1 << v17) & 0x100000001) != 0)
      {
LABEL_12:
        LastExtendedData = XlPtg::getLastExtendedData(a2);
        v4 = XlFormulaProcessor::functionToString(this, *LastExtendedData, -1);
        XlFormulaProcessor::push(this);
      }

      else if (((1 << v17) & 0x200000002) != 0)
      {
LABEL_9:
        v18 = *(XlPtg::getLastExtendedData(a2) + 2);
        v19 = XlPtg::getLastExtendedData(a2);
        v4 = XlFormulaProcessor::functionToString(this, v18, *v19);
        if (*(XlPtg::getLastExtendedData(a2) + 1) == 1)
        {
          v20 = *(*(this + 3) + 8 * *(this + 19));
          v21 = _ChWcslenA(&unk_25D7006A4);
          MEMORY[0x28223BE20](v21);
          v23 = v188 - ((v22 + 17) & 0xFFFFFFFFFFFFFFF0);
          bzero(v23, v22 + 2);
          v24 = WcharToChCHAR2(v23, &unk_25D7006A4);
          CsString::append(v20, v24);
        }

        XlFormulaProcessor::push(this);
      }

      else if (((1 << v17) & 0x80000000800000) == 0)
      {
        return result;
      }

      return v4;
  }
}

uint64_t XlFormulaProcessor::processControl(XlFormulaProcessor *this, XlPtg *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  var1 = a2->var1;
  if (var1 <= 0x2F)
  {
    if (((1 << var1) & 0xC30000000006) != 0)
    {
      return 0;
    }

    if (var1 == 21)
    {
      v9 = *(this + 19);
      v10 = *(this + 3);
      v11 = *(v10 + 8 * (v9 - 1));
      v12 = *(v10 + 8 * v9);
      *(v12 + 16) = 0;
      bzero(*(v12 + 8), 2 * *(v12 + 20));
      CsString::append(*(*(this + 3) + 8 * *(this + 19)), v11);
      v13 = *(this + 19);
      v14 = *(this + 3);
      v15 = *(v14 + 8 * v13);
      v16 = *(v14 + 8 * (v13 - 1));
      *(v16 + 16) = 0;
      bzero(*(v16 + 8), 2 * *(v16 + 20));
      v17 = *(*(this + 3) + 8 * (*(this + 19) - 1));
      v18 = _ChWcslenA(&unk_25D7006AC);
      MEMORY[0x28223BE20](v18);
      v20 = v27 - ((v19 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v20, v19 + 2);
      v21 = WcharToChCHAR2(v20, &unk_25D7006AC);
      CsString::append(v17, v21);
      CsString::append(*(*(this + 3) + 8 * (*(this + 19) - 1)), v15);
      v22 = *(*(this + 3) + 8 * (*(this + 19) - 1));
      v23 = _ChWcslenA(&unk_25D7006B4);
      MEMORY[0x28223BE20](v23);
      v25 = v27 - ((v24 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v25, v24 + 2);
      v26 = WcharToChCHAR2(v25, &unk_25D7006B4);
      CsString::append(v22, v26);
      return 0;
    }

    if (var1 == 25)
    {
      if ((*XlPtg::getLastExtendedData(a2) & 0x10) != 0)
      {
        XlFormulaProcessor::functionToString(this, 4, 1);
        XlFormulaProcessor::push(this);
      }

      return 0;
    }
  }

  v4 = var1 - 72;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC3000000C3;
  if (v5 || v6 == 0)
  {
    return 3001;
  }

  return 0;
}

uint64_t XlFormulaProcessor::eptgToString(XlFormulaProcessor *this, unsigned __int8 *a2, unsigned __int8 *a3, CsString *a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = _ChWcslenA(dword_25D700730);
  MEMORY[0x28223BE20](v5);
  v7 = v10 - ((v6 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6 + 2);
  v8 = WcharToChCHAR2(v7, dword_25D700730);
  CsString::append(a4, v8);
  return 3006;
}

uint64_t XlFormulaProcessor::errorToString(XlFormulaProcessor *this, int a2, CsString *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = 3001;
  if (a2 <= 22)
  {
    if (a2)
    {
      if (a2 == 7)
      {
        v5 = &unk_25D7006D8;
      }

      else
      {
        if (a2 != 15)
        {
          return result;
        }

        v5 = &unk_25D7006F8;
      }
    }

    else
    {
      v5 = &unk_25D7006BC;
    }
  }

  else if (a2 > 35)
  {
    if (a2 == 36)
    {
      v5 = &unk_25D70074C;
    }

    else
    {
      if (a2 != 42)
      {
        return result;
      }

      v5 = &unk_25D700764;
    }
  }

  else if (a2 == 23)
  {
    v5 = &unk_25D700718;
  }

  else
  {
    if (a2 != 29)
    {
      return result;
    }

    v5 = dword_25D700730;
  }

  v6 = _ChWcslenA(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7 + 2);
  v9 = WcharToChCHAR2(v8, v5);
  CsString::append(a3, v9);
  return 0;
}

CsString *XlFormulaProcessor::BOOLToString(XlFormulaProcessor *this, int a2, CsString *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = &unk_25D700778;
  }

  else
  {
    v4 = &unk_25D70078C;
  }

  v5 = _ChWcslenA(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v10 - ((v6 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6 + 2);
  v8 = WcharToChCHAR2(v7, v4);
  return CsString::append(a3, v8);
}

CsString *XlFormulaProcessor::intToString(XlFormulaProcessor *this, int a2, CsString *a3)
{
  v5 = snprintf(this + 80, 0x40uLL, "%d", a2);

  return XlFormulaProcessor::charsToString(v5, this + 80, a3);
}

CsString *XlFormulaProcessor::doubleToString(XlFormulaProcessor *this, double a2, CsString *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = fabs(a2);
  if (v6 < 1.0 && v6 >= COERCE_DOUBLE(0xFFFFFFFFFFFFDLL) || vabdd_f64(a2, a2) >= 2.22044605e-16)
  {
    v8 = this + 80;
    snprintf(this + 80, 0x40uLL, "%.15G", a2);
    v9 = strlen(this + 80);
    v7 = memchr(this + 80, 69, v9);
    if (v7)
    {
      v10 = v7;
      v7 = atoi((v7 + 1));
      if ((v7 + 19) <= 0x27)
      {
        v11 = v7;
        *v10 = 0;
        v12 = strlen(this + 80);
        v7 = memchr(this + 80, 46, v12);
        v13 = v7;
        if ((v11 & 0x80000000) != 0)
        {
          strcpy(__dst, this + 80);
          if (__dst[0] == 45)
          {
            *v8 = __dst[0];
            v15 = 1;
          }

          else
          {
            v15 = 0;
          }

          v17 = v15;
          *&v8[v15] = 11824;
          if (v11 == -1)
          {
            v19 = v15 | 2;
          }

          else
          {
            v18 = ~v11;
            memset(this + v15 + 82, 48, v18);
            v19 = v17 + v18 + 2;
          }

          v20 = v19 + 1;
          v8[v19] = __dst[v17];
          if (v13)
          {
            v21 = v12 - v17 - 2;
            memcpy(&v8[v20], &__dst[v17 + 2], v21);
            v20 += v21;
          }

          v8[v20] = 0;
          v22 = strlen(this + 80);
          v23 = memchr(this + 80, 46, v22);
          v7 = strlen(v23);
          if (v7 >= 0x15)
          {
            v7 = snprintf(this + 80, 0x40uLL, "%.15G");
          }
        }

        else
        {
          if (v7)
          {
            v14 = v7 - v8;
          }

          else
          {
            v14 = 0;
          }

          if (v7 && (v14 + v11) < v12)
          {
            v7 = memmove(v7, (v7 + 1), v11);
            *(v13 + v11 - 1) = 46;
          }

          else
          {
            if (v7)
            {
              v16 = ~(v7 - v8) + v12;
              v7 = memmove(v7, (v7 + 1), v16);
              v12 = v13 - v8;
            }

            else
            {
              v16 = 0;
            }

            if (v16 < v11)
            {
              v7 = memset(this + v12 + v16 + 80, 48, v11 + ~v16 + 1);
            }

            v8[v12 + v11] = 0;
          }
        }
      }
    }
  }

  else
  {
    v7 = snprintf(this + 80, 0x40uLL, "%d");
  }

  return XlFormulaProcessor::charsToString(v7, this + 80, a3);
}

CsString *XlFormulaProcessor::areaReferenceToString(XlFormulaProcessor *this, unsigned __int16 *a2, CsString *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2[2];
  v6 = a2[3];
  v7 = v6;
  v8 = v6 != 255 || a2[2] != 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = v10 == 0xFFFF && v11;
  if (!v8 || (XlFormulaProcessor::columnReferenceToString(this, a2[2], v5 & 0xC000, a3), !v12))
  {
    XlFormulaProcessor::rowReferenceToString(this, v9, v5 & 0xC000, a3);
  }

  v13 = v6 & 0xC000;
  v14 = *(*(this + 3) + 8 * *(this + 19));
  v15 = _ChWcslenA(&unk_25D700694);
  MEMORY[0x28223BE20](v15);
  v17 = v20 - ((v16 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v17, v16 + 2);
  v18 = WcharToChCHAR2(v17, &unk_25D700694);
  CsString::append(v14, v18);
  if (!v8)
  {
    return XlFormulaProcessor::rowReferenceToString(this, v10, v13, a3);
  }

  result = XlFormulaProcessor::columnReferenceToString(this, v7, v13, a3);
  if (!v12)
  {
    return XlFormulaProcessor::rowReferenceToString(this, v10, v13, a3);
  }

  return result;
}

uint64_t XlFormulaProcessor::externSheetToString(XlFormulaProcessor *this, unsigned int a2, CsString *a3)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 8);
  if (((*(v5 + 7) - *(v5 + 6)) & 0x7FFFFFFF8) == 0 || XlLinkTable::getRefType(v5, a2) != 2)
  {
    v38 = _ChWcslenA(dword_25D700718);
    MEMORY[0x28223BE20](v38);
    v40 = v42 - ((v39 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v40, v39 + 2);
    v34 = WcharToChCHAR2(v40, dword_25D700718);
    goto LABEL_26;
  }

  WorkbookFirstSheetTab = XlLinkTable::getWorkbookFirstSheetTab(*(this + 8), a2);
  WorkbookLastSheetTab = XlLinkTable::getWorkbookLastSheetTab(*(this + 8), a2);
  if ((WorkbookFirstSheetTab & 0x80000000) != 0 || (v9 = WorkbookLastSheetTab, (WorkbookLastSheetTab & 0x80000000) != 0))
  {
    v15 = _ChWcslenA(dword_25D7007A4);
    MEMORY[0x28223BE20](v15);
    v17 = v42 - ((v16 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16 + 2);
    v18 = WcharToChCHAR2(v17, dword_25D7007A4);
  }

  else
  {
    if ((*(this + 160) & 1) == 0)
    {
      v10 = _ChWcslenA(&unk_25D7007B8);
      MEMORY[0x28223BE20](v10);
      v12 = v42 - ((v11 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v11 + 2);
      v13 = WcharToChCHAR2(v12, &unk_25D7007B8);
      CsString::append(a3, v13);
    }

    v14 = **(this + 7);
    if (-1431655765 * ((*(*(this + 7) + 8) - v14) >> 4) <= WorkbookFirstSheetTab)
    {
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v14 + 48 * WorkbookFirstSheetTab + 24))
    {
      operator new();
    }

    v19 = _ChWcslenA(dword_25D7007A4);
    MEMORY[0x28223BE20](v19);
    v21 = v42 - ((v20 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v21, v20 + 2);
    v22 = WcharToChCHAR2(v21, dword_25D7007A4);
    CsString::append(a3, v22);
    if (WorkbookFirstSheetTab != v9)
    {
      if (*(this + 160) == 1)
      {
        ChLogFunction("wrong syntax", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Processor/XlFormulaProcessor.cpp", 1615);
      }

      v23 = _ChWcslenA(&unk_25D700694);
      MEMORY[0x28223BE20](v23);
      v25 = v42 - ((v24 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v25, v24 + 2);
      v26 = WcharToChCHAR2(v25, &unk_25D700694);
      CsString::append(a3, v26);
      v27 = **(this + 7);
      if (-1431655765 * ((*(*(this + 7) + 8) - v27) >> 4) <= v9)
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v27 + 48 * v9 + 24))
      {
        operator new();
      }
    }

    if (*(this + 160))
    {
      goto LABEL_20;
    }

    v28 = _ChWcslenA(&unk_25D7007B8);
    MEMORY[0x28223BE20](v28);
    v30 = v42 - ((v29 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v30, v29 + 2);
    v18 = WcharToChCHAR2(v30, &unk_25D7007B8);
  }

  CsString::append(a3, v18);
LABEL_20:
  if (*(this + 160) == 1)
  {
    v31 = _ChWcslenA(dword_25D7007C0);
    MEMORY[0x28223BE20](v31);
    v33 = v42 - ((v32 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v33, v32 + 2);
    v34 = WcharToChCHAR2(v33, dword_25D7007C0);
  }

  else
  {
    v35 = _ChWcslenA(&unk_25D7007D4);
    MEMORY[0x28223BE20](v35);
    v37 = v42 - ((v36 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v37, v36 + 2);
    v34 = WcharToChCHAR2(v37, &unk_25D7007D4);
  }

LABEL_26:
  CsString::append(a3, v34);
  return 3005;
}

CsString *XlFormulaProcessor::arrayTokenToString(CsString *this, XlPtg *a2, CsString *a3)
{
  v36 = this;
  v39 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    this = XlPtg::getNumberOfExtendedDataEntries(a2);
    if (this >= 2)
    {
      v38 = 0;
      v37 = a2;
      v5 = *XlPtg::getExtendedData(a2, 0, &v38);
      v34 = *XlPtg::getExtendedData(a2, 1u, &v38);
      v6 = _ChWcslenA(&unk_25D7007DC);
      MEMORY[0x28223BE20](v6);
      v8 = &v33 - ((v7 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v8, v7 + 2);
      v9 = WcharToChCHAR2(v8, &unk_25D7007DC);
      CsString::append(a3, v9);
      if ((v34 & 0x80000000) == 0)
      {
        v35 = 0;
        v10 = 2;
        do
        {
          if ((v5 & 0x80000000) == 0)
          {
            v11 = 0;
            do
            {
              ExtendedData = XlPtg::getExtendedData(v37, v10, &v38);
              v13 = *ExtendedData;
              if (v13 > 3)
              {
                if (v13 == 4)
                {
                  XlFormulaProcessor::BOOLToString(ExtendedData, ExtendedData[1] != 0, a3);
                }

                else
                {
                  if (v13 != 16)
                  {
                    goto LABEL_24;
                  }

                  XlFormulaProcessor::errorToString(ExtendedData, ExtendedData[1], a3);
                }
              }

              else
              {
                if (v13 != 1)
                {
                  if (v13 == 2)
                  {
                    v14 = _ChWcslenA(&unk_25D700610);
                    MEMORY[0x28223BE20](v14);
                    v16 = &v33 - ((v15 + 17) & 0xFFFFFFFFFFFFFFF0);
                    bzero(v16, v15 + 2);
                    v17 = WcharToChCHAR2(v16, &unk_25D700610);
                    CsString::append(a3, v17);
                    operator new();
                  }

LABEL_24:
                  exception = __cxa_allocate_exception(4uLL);
                  *exception = 1004;
                }

                Float64FromPackedLocation = CsGetFloat64FromPackedLocation((ExtendedData + 2));
                XlFormulaProcessor::doubleToString(v36, Float64FromPackedLocation, a3);
              }

              if (v11 < v5)
              {
                v19 = _ChWcslenA(&unk_25D70068C);
                MEMORY[0x28223BE20](v19);
                v21 = &v33 - ((v20 + 17) & 0xFFFFFFFFFFFFFFF0);
                bzero(v21, v20 + 2);
                v22 = WcharToChCHAR2(v21, &unk_25D70068C);
                CsString::append(a3, v22);
              }

              ++v10;
              ++v11;
            }

            while (v5 + 1 != v11);
          }

          if (v35 < v34)
          {
            v23 = _ChWcslenA(&unk_25D7007E4);
            MEMORY[0x28223BE20](v23);
            v25 = &v33 - ((v24 + 17) & 0xFFFFFFFFFFFFFFF0);
            bzero(v25, v24 + 2);
            v26 = WcharToChCHAR2(v25, &unk_25D7007E4);
            CsString::append(a3, v26);
          }

          v27 = v35++;
        }

        while (v27 != v34);
      }

      v28 = _ChWcslenA(&unk_25D7007EC);
      MEMORY[0x28223BE20](v28);
      v30 = &v33 - ((v29 + 17) & 0xFFFFFFFFFFFFFFF0);
      bzero(v30, v29 + 2);
      v31 = WcharToChCHAR2(v30, &unk_25D7007EC);
      return CsString::append(a3, v31);
    }
  }

  return this;
}

CsString *XlFormulaProcessor::charsToString(XlFormulaProcessor *this, char *__s, CsString *a3)
{
  v4 = __s;
  v5 = strlen(__s);
  var2 = a3->var2;
  CsString::reserve(a3, var2 + v5);
  if (v5)
  {
    var1 = a3->var1;
    v8 = v5;
    v9 = var2;
    do
    {
      v10 = *v4++;
      var1[v9++] = v10;
      --v8;
    }

    while (v8);
  }

  return CsString::setCount(a3, var2 + v5);
}

uint64_t XlFormulaProcessor::functionToString(XlFormulaProcessor *this, int a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v31 = -1;
  v6 = XlFunctionNameForId(a2, &v31);
  if (v6)
  {
    if (a3 < 0)
    {
      LOWORD(a3) = v31;
      if (v31 < 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v31 = a3;
      if (a2 == 255)
      {
        LOWORD(a3) = a3 - 1;
        v31 = a3;
        if ((a3 & 0x8000) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = *(this + 19);
    if (v8 >= a3)
    {
      v9 = *(*(this + 3) + 8 * v8);
      v9->var2 = 0;
      bzero(v9->var1, 2 * v9->var3);
      v10 = v31;
      if (v31 >= 1)
      {
        v11 = v31 + 1;
        v12 = -v31;
        do
        {
          CsString::append(v9, *(*(this + 3) + 8 * (v12 + *(this + 19))));
          if (__CFADD__(v12++, 1))
          {
            break;
          }

          v14 = _ChWcslenA(&unk_25D70068C);
          MEMORY[0x28223BE20](v14);
          v16 = &v30[-((v15 + 17) & 0xFFFFFFFFFFFFFFF0)];
          bzero(v16, v15 + 2);
          v17 = WcharToChCHAR2(v16, &unk_25D70068C);
          CsString::append(v9, v17);
          --v11;
        }

        while (v11 > 1);
        v10 = v31;
      }

      v18 = *(this + 19) - v10;
      *(this + 19) = v18;
      if (a2 == 255)
      {
        v19 = v18 - 1;
        *(this + 19) = v19;
        v20 = *(*(this + 3) + 8 * v19);
      }

      else
      {
        v20 = *(*(this + 3) + 8 * v18);
        v20->var2 = 0;
        bzero(v20->var1, 2 * v20->var3);
        CsString::append(v20, v6);
      }

      v21 = _ChWcslenA(&unk_25D7006AC);
      MEMORY[0x28223BE20](v21);
      v23 = &v30[-((v22 + 17) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v23, v22 + 2);
      v24 = WcharToChCHAR2(v23, &unk_25D7006AC);
      CsString::append(v20, v24);
      if (v31 >= 1)
      {
        CsString::append(v20, v9);
      }

      v25 = _ChWcslenA(&unk_25D7006B4);
      MEMORY[0x28223BE20](v25);
      v27 = &v30[-((v26 + 17) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v27, v26 + 2);
      v28 = WcharToChCHAR2(v27, &unk_25D7006B4);
      CsString::append(v20, v28);
      v7 = 0;
      goto LABEL_21;
    }

LABEL_9:
    v7 = 3002;
LABEL_21:
    (*(v6->var0 + 1))(v6);
    return v7;
  }

  return 3001;
}

CsString *XlFormulaProcessor::rowReferenceToString(XlFormulaProcessor *this, int a2, __int16 a3, CsString *a4)
{
  if (a3 < 0)
  {
    v6 = 0;
    v5 = *(this + 84);
  }

  else
  {
    v5 = 0;
    *(this + 80) = 36;
    v6 = 1;
  }

  v7 = this + 80;
  v8 = snprintf(this + v6 + 80, 64 - v6, "%d", a2 + v5 + 1);

  return XlFormulaProcessor::charsToString(v8, v7, a4);
}

CsString *XlFormulaProcessor::columnReferenceToString(XlFormulaProcessor *this, unsigned __int8 a2, __int16 a3, CsString *a4)
{
  v5 = a2;
  if ((a3 & 0x4000) != 0)
  {
    v5 = (*(this + 85) + a2);
    if (v5 > 675)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1005;
    }

    v7 = 0;
    v6 = ((20165 * v5) >> 19) + ((20165 * v5) >> 31);
  }

  else
  {
    LOBYTE(v6) = a2 / 0x1Au;
    *(this + 80) = 36;
    v7 = 1;
  }

  if (v5 >= 26)
  {
    v8 = this + v7++;
    v8[80] = v6 + 64;
  }

  *(this + v7 + 80) = (v5 - 26 * (((20165 * v5) >> 19) + (20165 * v5 < 0)) + 65);

  return XlFormulaProcessor::charsToString(this, this + 80, a4);
}

void sub_25D57674C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1091C403BDA009ALL);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t std::vector<CsString *,ChAllocator<CsString *>>::__emplace_back_slow_path<CsString *>(void *a1, void *a2)
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

void sub_25D576894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlFunctionNameForId(__int16 a1, __int16 *a2)
{
  *a2 = -1;
  __key[0] = a1;
  v3 = bsearch(__key, &XlFunctionTableById, 0xF9uLL, 0x5CuLL, _XlFunctionTableItemCompareById);
  if (v3)
  {
    *a2 = v3[42];
    operator new();
  }

  return 0;
}

void XlBinaryReader::~XlBinaryReader(XlBinaryReader *this)
{
  OcReader::~OcReader((v1 + 1352));
}

{
  OcReader::~OcReader((v1 + 1352));

  JUMPOUT(0x25F897000);
}

void non-virtual thunk toXlBinaryReader::~XlBinaryReader(OcReader *this)
{

  OcReader::~OcReader(this + 84);
}

void non-virtual thunk toXlBinaryReader::~XlBinaryReader(XlBinaryReader *this)
{

  OcReader::~OcReader((this + 1336));
}

{
  XlBinaryReader::~XlBinaryReader((this - 8));
}

{
  XlBinaryReader::~XlBinaryReader((this - 16));
}

void virtual thunk toXlBinaryReader::~XlBinaryReader(XlBinaryReader *this)
{
  v2 = (v1 + 1352);

  OcReader::~OcReader(v2);
}

{
  XlBinaryReader::~XlBinaryReader((this + *(*this - 24)));
}

void XlBinaryReader::finish(XlBinaryReader *this)
{
  EshBinaryReader::finish((this + 40));
  v2 = *(this + 164);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 164) = 0;
  if (v3)
  {
    SsrwOORootStorage::~SsrwOORootStorage(v3);
    MEMORY[0x25F897000]();
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v4 = *(this + 167);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 167) = 0;
  v5 = *(this + 163);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 163) = 0;
  v6 = *(this + 19);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 19) = 0;
  v7 = *(this + 20);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 20) = 0;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(this + 126) = -1;
  *(this + 54) = -1;
  *(this + 110) = -1;
  *(this + 168) = v8;
  *(this + 184) = v8;
  *(this + 196) = v8;
  *(this + 1344) = 0;
  XlDocumentProperties::setDefault((this + 1016));
}

void *XlBinaryReader::clearWaitingCells(void *this)
{
  v1 = this;
  v2 = this[52];
  v3 = this[53];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[52];
        v3 = v1[53];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[53] = v2;
  return this;
}

void XlBinaryReader::start(XlBinaryReader *this, __sFILE *a2)
{
  if (!*(this + 4))
  {
    XlDocumentProperties::setDefault((this + 1016));
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 8007;
}

uint64_t XlBinaryReader::isCell(XlBinaryReader *this, XlHeader *a2)
{
  var1 = a2->var1;
  result = 1;
  if (var1 <= 0x200)
  {
    if (a2->var1 <= 0xBCu)
    {
      if (var1 != 4 && var1 != 6)
      {
        return 0;
      }
    }

    else if (var1 - 189 >= 2 && var1 != 214 && var1 != 253)
    {
      return 0;
    }
  }

  else
  {
    v4 = var1 - 513 > 5 || var1 == 514;
    if (v4 && var1 != 638 && var1 != 1030)
    {
      return 0;
    }
  }

  return result;
}

XlCell *XlBinaryReader::read(XlBinaryReader *this, XlCell *a2)
{
  XlHeader::XlHeader(&v10);
  result = XlCell::reset(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 98) & 0x80000000) == 0)
  {
    if (*(this + 48))
    {
      return XlBinaryReader::processCompressed(this, a2);
    }

    else
    {
      (*(**(this + 164) + 16))(*(this + 164));
      *(this + 98) = -1;
      Header = XlParserVisitor::getHeader(*(this + 167), &v10, *(this + 1320));
      while (v10.var1 == 215 || v10.var1 == 520)
      {
        Header = XlParserVisitor::skipAhead(*(this + 167), &v10, *(this + 1320));
      }

      result = XlBinaryReader::isCell(Header, &v10);
      if (result)
      {
        v6 = *(this + 164);
        RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
        (*(*v6 + 16))(v6, -RecordDataOffset, 1);
        XlBinaryReader::readCell(this, a2);
        v8 = XlParserVisitor::getHeader(*(this + 167), &v10, *(this + 1320));
        while (v10.var1 == 520 || v10.var1 == 215)
        {
          v8 = XlParserVisitor::skipAhead(*(this + 167), &v10, *(this + 1320));
        }

        result = XlBinaryReader::isCell(v8, &v10);
        if (result)
        {
          v9 = (*(**(this + 164) + 40))(*(this + 164));
          result = XlParserVisitor::getRecordDataOffset(*(this + 167));
          *(this + 98) = v9 - result;
        }
      }
    }
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlLinkOperandTable *a2)
{
  XlHeader::XlHeader(&v8);
  v4 = *(a2 + 32);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 44) & 0x80000000) == 0)
  {
    if (v4)
    {
      v6 = *(a2 + 9) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      (*(**(this + 164) + 16))(*(this + 164));
      result = XlParserVisitor::getHeader(*(this + 167), &v8, *(this + 1320));
      *(this + 44) = -1;
      if (v8.var1 - 89 <= 1)
      {
        XlRecordFactory::createRecord(&v8, v7);
      }
    }
  }

  return result;
}

void sub_25D5772C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlLinkLookupTable *a2)
{
  XlHeader::XlHeader(&v9);
  result = XlLinkLookupTable::reset(a2);
  if ((*(this + 43) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    for (result = XlParserVisitor::getHeader(*(this + 167), &v9, *(this + 1320)); ; result = XlParserVisitor::skipAhead(*(this + 167), &v9, *(this + 1320)))
    {
      v5 = v9.var1 - 35;
      v6 = v5 > 0x37;
      v7 = (1 << v5) & 0xC0000000000001;
      v8 = v6 || v7 == 0;
      if (v8 && v9.var1 != 430)
      {
        break;
      }
    }

    if (v9.var1 == 23)
    {
      operator new();
    }
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlCustomViewInfoTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 54) & 0x80000000) == 0)
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
    if (v4.var1 == 425)
    {
      operator new();
    }

    *(this + 54) = -1;
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlInterfaceTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 52) & 0x80000000) == 0)
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
    if (v5.var1 == 225)
    {
      XlRecordFactory::createRecord(&v5, v4);
    }

    *(this + 52) = -1;
  }

  return result;
}

void sub_25D577A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlPhoneticTable *a2)
{
  result = XlPhoneticTable::setDefault(a2);
  if ((*(this + 67) & 0x80000000) == 0)
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
    if (v4.var1 == 239)
    {
      operator new();
    }

    *(this + 67) = -1;
  }

  return result;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlRangeProtectionTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 62) & 0x80000000) == 0)
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
    if (v5.var1 == 2152)
    {
      XlRecordFactory::createRecord(&v5, v4);
    }

    *(this + 62) = -1;
  }

  return result;
}

void sub_25D577E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

void *XlBinaryReader::read(uint64_t a1, uint64_t a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear((a2 + 8));
  if ((*(a1 + 440) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(a1, 0);
  }

  if ((*(a1 + 284) & 0x80000000) == 0)
  {
    (*(**(a1 + 1312) + 16))(*(a1 + 1312));
    XlHeader::XlHeader(&v5);
    XlParserVisitor::getHeader(*(a1 + 1336), &v5, *(a1 + 1320));
    if (v5.var1 == 2162)
    {
      XlRecordFactory::createRecord(&v5, v4);
    }

    return (*(**(a1 + 1312) + 16))(*(a1 + 1312), 4294967292, 1);
  }

  return result;
}

void sub_25D577FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlDataConsolidationInfo *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 61) & 0x80000000) == 0)
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
    if (v5.var1 == 80)
    {
      XlRecordFactory::createRecord(&v5, v4);
    }

    *(this + 61) = -1;
  }

  return result;
}

void sub_25D578200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlCalculationProperties *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  v4 = *(*a2 + 16);

  return v4(a2, this + 632);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlCellTableInfo *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  v4 = *(*a2 + 16);

  return v4(a2, this + 1272);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlAutoFilterTable *a2)
{
  result = XlObjBiff8::clearSubRecords(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 68) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v7);
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    result = *(this + 163);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 163) = 0;
    if (v7.var1 != 155)
    {
      if (v7.var1 != 157)
      {
        *(this + 68) = -1;
        return result;
      }

LABEL_10:
      operator new();
    }

    *(a2 + 10) = 1;
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    if (v7.var1 == 157)
    {
      goto LABEL_10;
    }

    if (v7.var1 == 158)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlPivotTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 58) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlHeader::XlHeader(&v6);
    XlParserVisitor::getHeader(*(this + 167), &v6, *(this + 1320));
    v5 = *(this + 163);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 163) = 0;
    if (v6.var1 == 176)
    {
      XlRecordFactory::createRecord(&v6, v4);
    }

    result = 0xFFFFFFFFLL;
    *(this + 58) = -1;
  }

  return result;
}

void sub_25D57895C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL XlBinaryReader::read(SsrwOOStorage **this, XlChangeHistory *a2)
{
  XlChangeHistory::clear(a2);
  result = SsrwOOStorage::hasChild(this[4], "R");
  if (result)
  {
    SsrwOOStorage::openStream(this[4], "R");
  }

  return result;
}

void sub_25D578B2C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = *__cxa_begin_catch(exception_object);
    (*(*v2 + 8))(v2);
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  _Unwind_Resume(exception_object);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlRouting *a2)
{
  XlHeader::XlHeader(&v5);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 48) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    result = XlParserVisitor::getHeader(*(this + 167), &v5, *(this + 1320));
    if (v5.var1 == 184)
    {
      operator new();
    }
  }

  return result;
}

void sub_25D578EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::mark(XlBinaryReader *this, OcMark *a2)
{
  OcBinaryReader::mark(this, a2);
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = v4;
  result = (*(**(this + 164) + 40))(*(this + 164));
  v5[12] = result;
  return result;
}

uint64_t OcBinaryReader::mark(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v2 = *(*(*(*a1 + 112))(a1) + 48);

  return v2();
}

uint64_t XlBinaryReader::seek(XlBinaryReader *this, const OcMark *a2)
{
  OcBinaryReader::seek(this, a2);
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = v4[12];
  v6 = *(**(this + 164) + 16);
  v7 = *(this + 164);

  return v6(v7, v5, 0);
}

uint64_t OcBinaryReader::seek(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v2 = *(*(*(*a1 + 112))(a1) + 56);

  return v2();
}

void XlBinaryReader::read(XlBinaryReader *this, EshRoot *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

void virtual thunk toXlBinaryReader::read(XlBinaryReader *this, EshRoot *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

void XlBinaryReader::seek(XlBinaryReader *this, const EshContainer *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

void virtual thunk toXlBinaryReader::seek(XlBinaryReader *this, const EshContainer *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

void XlBinaryReader::seek(XlBinaryReader *this, const EshRoot *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

void virtual thunk toXlBinaryReader::seek(XlBinaryReader *this, const EshRoot *a2)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1009;
}

XlBinaryReader *XlBinaryReader::read(XlBinaryReader *this, XlCellRow *a2)
{
  XlHeader::XlHeader(&v17);
  result = XlCellRow::reset(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 101) & 0x80000000) == 0)
  {
    result = (*(*this + 424))(this, *(a2 + 1));
    v5 = *(*(a2 + 1) + 19);
    *(this + 101) = -1;
    if (v5 == 1)
    {
LABEL_5:
      for (i = XlParserVisitor::getHeader(*(this + 167), &v17, *(this + 1320)); ; i = XlParserVisitor::skipAhead(*(this + 167), &v17, *(this + 1320)))
      {
        if (v17.var1 != 215 && v17.var1 != 520)
        {
          result = XlBinaryReader::isCell(i, &v17);
          if (!result)
          {
            break;
          }
        }

        v7 = (*(**(this + 164) + 80))(*(this + 164));
        result = (*(**(this + 164) + 16))(*(this + 164), 4294967294, 1);
        if (v17.var1 != 215)
        {
          if (v17.var1 == 520)
          {
            if ((*(this + 101) & 0x80000000) != 0)
            {
              v8 = (*(**(this + 164) + 40))(*(this + 164));
              *(this + 101) = v8 - XlParserVisitor::getRecordDataOffset(*(this + 167));
            }
          }

          else
          {
            v9 = *(*(a2 + 1) + 8);
            if (v7 > v9)
            {
              if ((*(this + 101) & 0x80000000) != 0)
              {
                while (1)
                {
                  var1 = v17.var1;
                  if (v17.var1 != 215)
                  {
                    result = XlBinaryReader::isCell(result, &v17);
                    if (!result)
                    {
                      break;
                    }
                  }

                  result = XlParserVisitor::skipAhead(*(this + 167), &v17, *(this + 1320));
                }

                if (var1 == 520)
                {
                  v15 = (*(**(this + 164) + 40))(*(this + 164));
                  result = XlParserVisitor::getRecordDataOffset(*(this + 167));
                  *(this + 101) = v15 - result;
                }
              }

              return result;
            }

            if (v7 >= v9)
            {
              v10 = (*(**(this + 166) + 16))(*(this + 166), 3);
              if (!v10)
              {
                exception = __cxa_allocate_exception(4uLL);
                *exception = 1001;
              }

              v11 = *(this + 164);
              RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
              (*(*v11 + 16))(v11, -RecordDataOffset, 1);
              XlBinaryReader::readCell(this, v10);
              XlCellRow::takeCell(a2, v10);
              while (*(this + 48))
              {
                v13 = (*(**(this + 166) + 16))(*(this + 166), 3);
                if (v13)
                {
                  XlBinaryReader::processCompressed(this, v13);
                  XlCellRow::takeCell(a2, v13);
                }
              }

              goto LABEL_5;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_25D579868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::read(uint64_t this, XlRowProperties *a2)
{
  if ((*(this + 404) & 0x80000000) == 0)
  {
    v3 = this;
    (*(**(this + 1312) + 16))(*(this + 1312));
    this = XlBinaryReader::readRowInfo(v3, a2);
    if ((*(a2 + 19) & 1) == 0)
    {
      *(v3 + 101) = -1;
    }
  }

  return this;
}

BOOL XlBinaryReader::read(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = (*(*a1 + 88))(a1);
  v3[0] = XlBinaryReader::VBA_STORAGE;
  v3[1] = unk_25D7061A6;
  v4 = 0;
  result = SsrwOOStorage::hasChild(v1, v3);
  if (result)
  {
    SsrwOOStorage::openStorage(v1, v3);
  }

  return result;
}

uint64_t OcBinaryReader::seek(OcBinaryReader *this, const EshContainer *a2, uint64_t a3)
{
  v5 = (*(this->var0 + 14))(this);
  v6 = *(*v5 + 64);

  return v6(v5, a2, a3);
}

uint64_t OcBinaryReader::seek(OcBinaryReader *this, const EshRoot *a2, uint64_t a3)
{
  v5 = (*(this->var0 + 14))(this);
  v6 = *(*v5 + 72);

  return v6(v5, a2, a3);
}

uint64_t OcBinaryReader::read(OcBinaryReader *this, EshRoot *a2)
{
  v3 = (*(this->var0 + 14))(this);
  v4 = *(*v3 + 32);

  return v4(v3, a2);
}

uint64_t OcBinaryReader::read(OcBinaryReader *this, EshObject *a2)
{
  v3 = (*(this->var0 + 14))(this);
  v4 = *(*v3 + 40);

  return v4(v3, a2);
}

uint64_t CsSimpleHeapVector<XlList>::pushBack(void *a1, uint64_t *a2)
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
    result = std::vector<XlList *,ChAllocator<XlList *>>::__emplace_back_slow_path<XlList *>(a1, &v8);
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

uint64_t std::vector<XlList *,ChAllocator<XlList *>>::__emplace_back_slow_path<XlList *>(void *a1, void *a2)
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

void sub_25D579D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlMark::~XlMark(XlMark *this)
{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));
}

{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));

  JUMPOUT(0x25F897000);
}

void OcMark::~OcMark(OcMark *this)
{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));
}

{
  *this = &unk_286ED3238;
  EshMark::~EshMark((this + 8));

  JUMPOUT(0x25F897000);
}

uint64_t std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell *>(void *a1, void *a2)
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

void sub_25D579FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlReadStgStream::readUInt64(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 8;
  v4 = v2 - 8;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 88);

    return v5();
  }

  else
  {
    v7 = 8;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadUInt64(*(this + 3));
  }
}

float XlReadStgStream::readFloat32(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 112);

    v5();
  }

  else
  {
    v7 = 4;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadFloat32(*(this + 3));
  }

  return result;
}

double XlReadStgStream::readFloat64(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 8;
  v4 = v2 - 8;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 120);

    v5();
  }

  else
  {
    v7 = 8;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadFloat64(*(this + 3));
  }

  return result;
}

uint64_t XlReadStgStream::readChar16(XlReadStgStream *this)
{
  v2 = *(this + 6);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    *(this + 6) = v4;
    v5 = *(**(this + 5) + 128);

    return v5();
  }

  else
  {
    v7 = 2;
    (*(*this + 56))(this, *(this + 3), &v7);
    return CsLeReadUInt16(*(this + 3));
  }
}

uint64_t XlReadStgStream::readString8(XlReadStgStream *this, int *a2, char *a3)
{
  v5 = *(this + 6);
  if (v5 >= *a2)
  {
    result = (*(**(this + 5) + 144))(*(this + 5));
    v9 = *a2;
  }

  else
  {
    v6 = *a2;
    do
    {
      v11 = v5;
      if (v5)
      {
        (*(**(this + 5) + 144))(*(this + 5), &v11, a3);
        v7 = v11;
        LOWORD(v5) = *(this + 6) - v11;
        *(this + 6) = v5;
      }

      else
      {
        XlReadStgStream::readNextHostRecordHeader(this);
        v7 = v11;
        LOWORD(v5) = *(this + 6);
      }

      v6 -= v7;
      v12 = v6;
      a3 += v7;
    }

    while (v6 > v5);
    result = (*(**(this + 5) + 144))(*(this + 5), &v12, a3);
    v9 = v12;
  }

  *(this + 6) -= v9;
  return result;
}

uint64_t std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int>(uint64_t a1, _DWORD *a2)
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

void sub_25D57A770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SsrwOOStream **XlStringExtractor::setStringLocation(SsrwOOStream **this, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      var0 = this[3][2 * a2 + 1].var0;
      if (*(var0 + v4 + 4) == -1)
      {
        v6 = *(var0 + v4);
        if (XlStringExtractor::tableChunkBoundary(this, *(var0 + v4)) == -1)
        {
          v6 = (v6 + 4);
          XlStringExtractor::tableChunkBoundary(v3, v6);
        }

        (*(v3[2]->var0 + 2))(v3[2], v6, 0);
        XlStringParser::parseSize((v3 + 1), v3[2]);
      }

      v4 += 4;
    }

    while (4 * (a3 + 1) - 4 != v4);
  }

  return this;
}

BOOL XlFormatSection::isConditionMet(XlFormatSection *this, double a2)
{
  if (*(this + 11) != 1)
  {
    return 0;
  }

  v2 = *(this + 11);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (*(this + 2) < a2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 6)
      {
        return v2 == 5 && *(this + 2) != a2;
      }

      if (*(this + 2) <= a2)
      {
        return 1;
      }
    }
  }

  else if (v2 == 1)
  {
    if (*(this + 2) > a2)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      return v2 == 3 && *(this + 2) >= a2;
    }

    if (*(this + 2) == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::vector<XlFmtPtg *,ChAllocator<XlFmtPtg *>>::__emplace_back_slow_path<XlFmtPtg * const&>(void *a1, void *a2)
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

void sub_25D57AA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XlStreamer::XlStreamer(XlStreamer *this, XlBinaryReader *a2, OCCCryptoKey *a3, const char *a4)
{
  OCCBinaryStreamer::OCCBinaryStreamer(this, a3, a4);
  *v5 = &unk_286ED34A0;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;
  if (!(*(*a2 + 616))(a2))
  {
    ChLogFunction("storage is NULL", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Streamer/XlStreamer.cpp", 30);
  }
}

uint64_t XlStreamer::replaceGarbledRecordData(OCCBinaryStreamer *this, const XlHeader *a2, SsrwOOStream *a3)
{
  v6 = (*(*this[1].var0 + 78))(this[1].var0);
  var1 = a2->var1;
  if (XlStreamer::isWorkbookRecordDataGarbled(v6, var1))
  {
    if (var1 == 133)
    {
      OCCBinaryStreamer::replaceGarbledBytes(this, v6, a3);
    }

    OCCBinaryStreamer::replaceGarbledBytes(this, v6, a3);
  }

  return 1;
}

uint64_t XlStreamer::isWorkbookRecordDataGarbled(XlStreamer *this, int a2)
{
  result = 1;
  if (a2 <= 311)
  {
    if (a2 == 47 || a2 == 133 || a2 == 225)
    {
      return result;
    }

    return 0;
  }

  if ((a2 - 404) >= 3 && a2 != 312 && a2 != 2057)
  {
    return 0;
  }

  return result;
}

uint64_t XlStreamer::peekHeader(XlStreamer *this, XlHeader *a2)
{
  v4 = (*(**(this + 3) + 624))(*(this + 3));
  (*(*v4 + 16))(v4, *(this + 8), 0);
  v5 = (*(*v4 + 72))(v4);
  v6 = (*(*v4 + 80))(v4);
  result = (*(*v4 + 40))(v4);
  *(this + 8) = result + v6;
  if (v5)
  {
    a2->var0 = v6;
    a2->var1 = v5;
    a2->var2 = 0;
    v8 = *(*v4 + 16);

    return v8(v4, 4294967292, 1);
  }

  else
  {
    a2->var1 = 0;
    a2->var0 = 0;
  }

  return result;
}

uint64_t XlStreamer::getNextRecordHeader(XlStreamer *this, int a2, XlHeader *a3)
{
  v6 = (*(**(this + 3) + 624))(*(this + 3));
  v7 = a2 + a3->var0 + 4;
  result = (*(*v6 + 48))(v6);
  if (v7 < result && (*(this + 8) & 0x80000000) == 0)
  {

    return XlStreamer::peekHeader(this, a3);
  }

  return result;
}

uint64_t XlStreamer::replaceGarbledBytesInStream(OCCBinaryStreamer *this, SsrwOOStream *a2)
{
  v4 = (*(*this[1].var0 + 78))(this[1].var0);
  (*(*v4 + 16))(v4, 0, 0);
  (*(a2->var0 + 2))(a2, 0, 0);
  LODWORD(this[1].var1) = 0;
  XlHeader::XlHeader(&v9);
  XlStreamer::peekHeader(this, &v9);
  v5 = (*(*v4 + 48))(v4);
  if ((*(*v4 + 40))(v4) + 4 <= v5)
  {
    v6 = (*(*v4 + 40))(v4);
    v7 = (*(*this[1].var0 + 78))();
    OCCBinaryStreamer::replaceGarbledBytes(this, v7, a2, v6);
  }

  return 1;
}

uint64_t XlStreamer::decryptWorkbookStream(OCCBinaryStreamer *this, SsrwOOStream *a2)
{
  v4 = (*(*this[1].var0 + 78))(this[1].var0);
  v5 = (*(v4->var0 + 5))(v4);
  v6 = (*(a2->var0 + 5))(a2);
  OCCSegmenter::OCCSegmenter(v12, 1024);
  v12[0] = &unk_286EC8628;
  var1 = this->var1;
  v8 = (*(v4->var0 + 6))(v4);
  v9 = OCCSegmenter::decryptSegmentsIntoStream(v12, v4, 0, var1, v8, a2);
  v10 = 0;
  if (v9)
  {
    v10 = XlStreamer::replaceGarbledBytesInStream(this, a2);
  }

  SsrwOOStream::seekFromStart(v4, v5);
  SsrwOOStream::seekFromStart(a2, v6);
  return v10;
}

uint64_t XlStreamer::encryptWorkbookStream(OCCBinaryStreamer *this, SsrwOOStream *a2)
{
  v4 = (*(*this[1].var0 + 78))(this[1].var0);
  v5 = (*(v4->var0 + 5))(v4);
  v6 = (*(a2->var0 + 5))(a2);
  OCCSegmenter::OCCSegmenter(v12, 1024);
  v12[0] = &unk_286EC8628;
  var1 = this->var1;
  v8 = (*(v4->var0 + 6))(v4);
  v9 = OCCSegmenter::encryptSegmentsIntoStream(v12, v4, 0, var1, v8, a2);
  v10 = 0;
  if (v9)
  {
    v10 = XlStreamer::replaceGarbledBytesInStream(this, a2);
  }

  SsrwOOStream::seekFromStart(v4, v5);
  SsrwOOStream::seekFromStart(a2, v6);
  return v10;
}

void XlStreamer::~XlStreamer(OCCBinaryStreamer *this)
{
  OCCBinaryStreamer::~OCCBinaryStreamer(this);

  JUMPOUT(0x25F897000);
}

void XlChartTextPropsStream::XlChartTextPropsStream(XlChartTextPropsStream *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED3530;
  v2[2] = 0;
  v2[3] = 0;
}

void XlChartTextPropsStream::~XlChartTextPropsStream(XlChartTextPropsStream *this)
{
  *this = &unk_286ED3530;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ED3530;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

void XlContinueFrt12::XlContinueFrt12(XlContinueFrt12 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED3570;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlContinueFrt12::~XlContinueFrt12(XlContinueFrt12 *this)
{
  *this = &unk_286ED3570;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *this = &unk_286ED3570;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;

  JUMPOUT(0x25F897000);
}

uint64_t isCellName(const char *a1, unsigned int *a2, BOOL *a3, unsigned int *a4, BOOL *a5, EFormula *a6)
{
  v11 = 0;
  *a3 = 1;
  *a5 = 1;
  v12 = *a1;
  if (v12 == 36)
  {
    v13 = a1 + 1;
  }

  else
  {
    v13 = a1;
  }

  v14 = MEMORY[0x277D85DE0];
  do
  {
    v15 = v13[v11];
    if ((v15 & 0x80000000) != 0)
    {
      v16 = __maskrune(v15, 0x8000uLL);
    }

    else
    {
      v16 = *(v14 + 4 * v15 + 60) & 0x8000;
    }

    ++v11;
  }

  while (v16);
  v17 = v11 - 1;
  if (v11 - 1 > 3)
  {
    return 0;
  }

  v32 = a4;
  v18 = strlen(&v13[v17]);
  v19 = v18;
  if (v17 >= 1)
  {
    *a3 = v12 != 36;
    v20 = *v13 - 64;
    *a2 = v20;
    if (v11 != 2)
    {
      v21 = &a1[(v12 == 36) + 1];
      v22 = v17 - 1;
      do
      {
        v23 = *v21++;
        v20 = v23 + 26 * v20 - 64;
        *a2 = v20;
        --v22;
      }

      while (v22);
    }

    v24 = v20 - 1;
    *a2 = v24;
    if (v24 >> 14)
    {
      return 0;
    }
  }

  if (v18)
  {
    if (v18 < 1)
    {
      v26 = 0;
    }

    else
    {
      v25 = v13[v17];
      v26 = v25 == 36;
      if (v25 == 36)
      {
        v27 = v13 + 1;
      }

      else
      {
        v27 = v13;
      }

      v28 = atoi(&v27[v11 - 1]);
      *v32 = v28;
      if ((v28 - 0x100000) < 0xFFF00001)
      {
        return 0;
      }

      *v32 = v28 - 1;
    }

    if (v11 == 1)
    {
      if (v12 == 36 && v26)
      {
        return 0;
      }

      v31 = !v26;
      if (v12 == 36)
      {
        v31 = 0;
      }

      *a5 = v31;
      return 287;
    }

    else
    {
      result = 0;
      if (v17 >= 1 && v19 >= 1)
      {
        *a5 = !v26;
        return 286;
      }
    }
  }

  else
  {
    v34 = 0;
    if ([(EFormula *)a6 resolveSheet:v13 isCurrentSheet:&v34]== -1)
    {
      return 288;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void yyFlexLexer::yy_load_buffer_state(yyFlexLexer *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  v3 = *(this + 54);
  v4 = *(this + 52);
  v5 = *(v3 + 8 * v4);
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *(this + 48) = v6;
  *(this + 49) = v7;
  *(this + 1) = v7;
  v8 = (this + *(v1 - 24) + 48);
  v8->__rdbuf_ = **(v3 + 8 * v4);
  std::ios_base::clear(v8, 0);
  v2[328] = **(v2 + 43);
}

uint64_t yyFlexLexer::yy_try_NUL_trans(yyFlexLexer *this, int a2)
{
  v2 = a2;
  if (yy_accept[a2])
  {
    v3 = *(this + 49);
    *(this + 110) = a2;
    *(this + 56) = v3;
  }

  v4 = yy_base[a2] + 1;
  if (yy_chk[v4] != a2)
  {
    do
    {
      v5 = yy_def[v2];
      v2 = v5;
      v4 = yy_base[v5] + 1;
    }

    while (v5 != yy_chk[v4]);
  }

  v6 = yy_nxt[v4];
  if (v6 == 672)
  {
    LOWORD(v6) = 0;
  }

  return v6;
}

uint64_t yyFlexLexer::yyFlexLexer(uint64_t a1, void *a2, void *a3)
{
  *a1 = &unk_286ED35B0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x277D82668];
  }

  v6 = *(v5 + *(*v5 - 24) + 40);
  *(a1 + 112) = 0;
  *(a1 + 48) = MEMORY[0x277D82848] + 24;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 64), v6);
  *(a1 + 200) = 0;
  *(a1 + 208) = -1;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = MEMORY[0x277D82678];
  }

  v8 = *(v7 + *(*v7 - 24) + 40);
  *(a1 + 272) = 0;
  *(a1 + 216) = MEMORY[0x277D82850] + 24;
  *(a1 + 224) = MEMORY[0x277D82850] + 64;
  std::ios_base::init((a1 + 224), v8);
  *(a1 + 360) = 0;
  *(a1 + 368) = -1;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 24) = 1;
  *(a1 + 408) = 0;
  *(a1 + 456) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  return a1;
}

void yyFlexLexer::switch_streams(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[54];
  if (v6)
  {
    v7 = *(v6 + 8 * a1[52]);
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 40))(a1, v7);
  v8 = (*(*a1 + 32))(a1, a2, 0x4000);
  (*(*a1 + 16))(a1, v8);
  v9 = (a1 + *(a1[27] - 24) + 216);
  v9->__rdbuf_ = *(a3 + *(*a3 - 24) + 40);

  std::ios_base::clear(v9, 0);
}

void yyFlexLexer::yyrestart(yyFlexLexer *this, void *a2)
{
  v4 = *(this + 54);
  if (v4 && (v5 = *(this + 52), *(v4 + 8 * v5)) || (v6 = yyFlexLexer::yyensure_buffer_stack(this), v7 = (*(*this + 32))(this, this + 48, 0x4000, v6), v5 = *(this + 52), *(*(this + 54) + 8 * v5) = v7, (v4 = *(this + 54)) != 0))
  {
    v8 = *(v4 + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  yyFlexLexer::yy_init_buffer(this, v8, a2);

  yyFlexLexer::yy_load_buffer_state(this);
}

int *yyFlexLexer::yy_init_buffer(yyFlexLexer *a1, uint64_t a2, void *a3)
{
  v6 = *__error();
  yyFlexLexer::yy_flush_buffer(a1, a2);
  *a2 = *(a3 + *(*a3 - 24) + 40);
  *(a2 + 60) = 1;
  v7 = *(a1 + 54);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a1 + 52));
  }

  if (v7 != a2)
  {
    *(a2 + 52) = 1;
  }

  *(a2 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

_DWORD *yyFlexLexer::yy_create_buffer(yyFlexLexer *a1, void *a2, int a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0x43DA4E99uLL);
  if (!v6)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[6] = a3;
  v7 = malloc_type_malloc(a3 + 2, 0x43DA4E99uLL);
  *(v6 + 1) = v7;
  if (!v7)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[10] = 1;
  yyFlexLexer::yy_init_buffer(a1, v6, a2);
  return v6;
}

void yyFlexLexer::LexerError(yyFlexLexer *this, char *a2)
{
  v2 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], a2);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v2);
  exit(2);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F896F20](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F896F30](v13);
  return a1;
}

void sub_25D57C440(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F896F30](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25D57C420);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25D57C674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id args(NSMutableArray *a1)
{
  v2 = [(NSMutableArray *)a1 objectAtIndex:0];
  v3 = [(NSMutableArray *)a1 count];
  if (v3 >= 2)
  {
    v4 = v3;
    for (i = 1; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)a1 objectAtIndex:i];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 tokenCount];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          do
          {
            [v2 copyTokenAtIndex:v10 fromFormula:v7];
            v10 = (v10 + 1);
          }

          while (v9 != v10);
        }
      }
    }
  }

  return v2;
}

id strTokens(EFormula *a1, NSString *a2)
{
  v3 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  addStringOperand(v3, a2);
  return v3;
}

id numberTokens(EFormula *a1, double a2)
{
  v3 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  addNumberOperand(v3, a2);
  return v3;
}

id BOOLTokens(EFormula *a1, char a2)
{
  v3 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  addBoolOperand(v3, a2);
  return v3;
}

id refTokens(EFormula *a1, const EFRefTok *a2)
{
  v3 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  memcpy([v3 addToken:a2->type extendedDataLength:a2->dataSize], a2->data, a2->dataSize);
  return v3;
}

id sheetNameTokens(EFormula *a1, __int16 a2, __int16 a3)
{
  v5 = objc_alloc_init([(EFormula *)a1 formulaClass]);
  v6 = [v5 addToken:35 extendedDataLength:6];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = 0;
  return v5;
}

void sub_25D57CC78(void *a1, WrdCharacterTextRun *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  v13 = a2;

  WrdCharacterTextRun::~WrdCharacterTextRun(&a10);
  if (v13 == 3)
  {
    v15 = __cxa_begin_catch(a1);
    WBConvertCsException(v15);
    __cxa_end_catch();
  }

  else
  {
    v16 = __cxa_begin_catch(a1);
    if (v13 == 2)
    {
      [v16 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D57CC54);
}

void sub_25D57CD44(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D57CC54);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D57DF00(void *a1, int a2)
{
  if (a2 == 3)
  {
    v5 = __cxa_begin_catch(a1);
    WBConvertCsException(v5);
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v6 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D57DEC8);
}

void sub_25D57DF80(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D57DEC8);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t WBConvertCsException(unsigned int *a1)
{
  v2 = *a1;
  v3 = &TCInvalidFileFormatMessage;
  if (*a1 != 2001 && v2 != 2007)
  {
    if (v2 != 8003)
    {
      OCConvertCsException(a1);
    }

    v3 = &WBUnsupportedVersion;
  }

  v4 = *v3;

  return [TCMessageException raise:v4];
}

void sub_25D57E850(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  MEMORY[0x25F897000](a11, 0x1000C4000313F17);
  if (a2 == 3)
  {
    v16 = __cxa_begin_catch(a1);
    WBConvertCsException(v16);
    __cxa_end_catch();
  }

  else
  {
    v17 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v17 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D57E80CLL);
}

void sub_25D57EA64(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D57E80CLL);
  }

  JUMPOUT(0x25D57E8D8);
}

void sub_25D57F5D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WrdDOPTypography::~WrdDOPTypography(va);

  _Unwind_Resume(a1);
}

void *std::__list_imp<WrdSectionTextRun *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_25D57FBB4(_Unwind_Exception *a1, WrdCharacterTextRun *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  WrdCharacterTextRun::~WrdCharacterTextRun(&a10);

  _Unwind_Resume(a1);
}

void sub_25D57FF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WrdFontFamilyNameTable::~WrdFontFamilyNameTable(&a9);

  _Unwind_Resume(a1);
}

void sub_25D580148(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(a1);
    WBConvertCsException(v3);
    __cxa_end_catch();
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v4 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D580118);
}

void sub_25D5801B8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D580118);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D580788(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(a1);
    WBConvertCsException(v3);
    __cxa_end_catch();
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v4 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D580748);
}

void sub_25D58082C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D580748);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D581304(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(a1);
    WBConvertCsException(v3);
    __cxa_end_catch();
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v4 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D5812D0);
}

void sub_25D581378(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D5812D0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D58158C(void *a1, WrdCharacterTextRun *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v12 = a2;

  WrdCharacterTextRun::~WrdCharacterTextRun(&a10);
  if (v12 == 3)
  {
    v14 = __cxa_begin_catch(a1);
    WBConvertCsException(v14);
    __cxa_end_catch();
  }

  else
  {
    v15 = __cxa_begin_catch(a1);
    if (v12 == 2)
    {
      [v15 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D581564);
}

void sub_25D581648(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D581564);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D5819BC(void *a1, int a2)
{
  if (a2 == 3)
  {
    v10 = __cxa_begin_catch(a1);
    WBConvertCsException(v10);
    __cxa_end_catch();
  }

  else
  {
    v11 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v11 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D581984);
}

void sub_25D581AA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D581984);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D582C04(void *a1, int a2)
{
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    WBConvertCsException(v6);
    __cxa_end_catch();
  }

  else
  {
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v7 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D582BD0);
}

void sub_25D582C80(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D582BD0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D582EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = v5;

  WBParagraphReadState::~WBParagraphReadState(va);
  _Unwind_Resume(a1);
}

void sub_25D583188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WrdCharacterTextRun::~WrdCharacterTextRun(&a9);

  _Unwind_Resume(a1);
}

void sub_25D583C74(_Unwind_Exception *a1, WrdCharacterProperties *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  WrdCharacterProperties::~WrdCharacterProperties(&a10);
  WrdCharacterTextRun::~WrdCharacterTextRun((v13 - 88));

  _Unwind_Resume(a1);
}

void WBParagraphReadState::~WBParagraphReadState(WBParagraphReadState *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void sub_25D585360(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  WrdPictureProperties::~WrdPictureProperties(&a24);
  if (a2 == 3)
  {
    v28 = __cxa_begin_catch(a1);
    WBConvertCsException(v28);
    __cxa_end_catch();
  }

  else
  {
    v29 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v29 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D585320);
}

void sub_25D585548(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D585320);
  }

  JUMPOUT(0x25D5855BCLL);
}

void sub_25D585CE8(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x25F897000](v4, 0x10B1C40117D6C26);

  _Unwind_Resume(a1);
}

void sub_25D585F14(_Unwind_Exception *a1)
{
  OcText::~OcText((v3 + 8));

  _Unwind_Resume(a1);
}

uint64_t std::vector<WBTextBoxReaderInfo>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<WBTextBoxReaderInfo>::__emplace_back_slow_path<WBTextBoxReaderInfo>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

void std::vector<WBTextBoxReaderInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<WBTextBoxReaderInfo>::__emplace_back_slow_path<WBTextBoxReaderInfo>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<WBTextBoxReaderInfo>>(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = 16 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 4);
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WBTextBoxReaderInfo>,WBTextBoxReaderInfo*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<WBTextBoxReaderInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_25D586760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<WBTextBoxReaderInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<WBTextBoxReaderInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WBTextBoxReaderInfo>,WBTextBoxReaderInfo*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 4);
      v6 += 2;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t std::__split_buffer<WBTextBoxReaderInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_25D586A18(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(a1);
    WBConvertCsException(v3);
    __cxa_end_catch();
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v4 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D5869E4);
}

void sub_25D586A9C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D5869E4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D586D4C(void *a1, int a2)
{
  if (a2 == 3)
  {
    v5 = __cxa_begin_catch(a1);
    WBConvertCsException(v5);
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v6 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D586D10);
}

void sub_25D586DDC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D586D10);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D587E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void transparentWhite(void)
{
  if ((atomic_load_explicit(&qword_27FC68DD8, memory_order_acquire) & 1) == 0)
  {
    transparentWhite();
  }
}

void transparentBlack(void)
{
  if ((atomic_load_explicit(&qword_27FC68DE8, memory_order_acquire) & 1) == 0)
  {
    transparentBlack();
  }
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(CsColour::~CsColour, a2, a3);
}

void sub_25D5885C4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    WBConvertCsException(v6);
    __cxa_end_catch();
  }

  else
  {
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v7 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D58858CLL);
}

void sub_25D588648(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D58858CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D588C7C(void *a1, int a2)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    WBConvertCsException(v6);
    __cxa_end_catch();
  }

  else
  {
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v7 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D588C4CLL);
}

void sub_25D588D3C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25D588C4CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D5893A4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(a1);
    WBConvertCsException(v3);
    __cxa_end_catch();
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v4 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D58936CLL);
}

void sub_25D589428(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D58936CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D589B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_25D589E14(void *a1, int a2)
{
  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    WBConvertCsException(v6);
    __cxa_end_catch();
  }

  else
  {
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v7 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D589DDCLL);
}

void sub_25D589EA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D589DDCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D58B834(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, WrdCharacterTextRun *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  WrdCharacterTextRun::~WrdCharacterTextRun(&a14);
  if (a2 == 3)
  {
    v16 = __cxa_begin_catch(a1);
    WBConvertCsException(v16);
    __cxa_end_catch();
  }

  else
  {
    v17 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v17 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D58B7FCLL);
}

void sub_25D58B914(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13)
{
  if (a2 == 2)
  {
    [objc_begin_catch(exc_buf) raise];
    objc_end_catch();
    JUMPOUT(0x25D58B8E8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_25D58C9EC(void *a1, int a2)
{
  WrdParagraphTextRun::~WrdParagraphTextRun(&v6);
  if (a2 != 2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x25D58C980);
  }

  v5 = objc_begin_catch(a1);
  objc_exception_rethrow();
}

void sub_25D58E38C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id WXMathJustificationEnumMap(void)
{
  v0 = WXMathJustificationEnumMap(void)::enumMap;
  if (!WXMathJustificationEnumMap(void)::enumMap)
  {
    {
      WXMathJustificationEnumMap();
    }

    v1 = [[TCEnumerationMap alloc] initWithStructs:&WXMathJustificationEnumMap(void)::enumStructs count:4 caseSensitive:1];
    v2 = WXMathJustificationEnumMap(void)::enumMap;
    WXMathJustificationEnumMap(void)::enumMap = v1;

    v0 = WXMathJustificationEnumMap(void)::enumMap;
  }

  return v0;
}

void sub_25D58EAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_25D591D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, int a15, int a16, id a17)
{
  if (v19)
  {

    if (v17)
    {
LABEL_3:

      if ((v18 & 1) == 0)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:

      goto LABEL_8;
    }
  }

  else if (v17)
  {
    goto LABEL_3;
  }

  if (!v18)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_25D59B974(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D59D428(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D5A0650(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25D5AF82C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t WDTableCellPropertiesValues::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  objc_storeStrong((a1 + 48), *(a2 + 48));
  objc_storeStrong((a1 + 56), *(a2 + 56));
  objc_storeStrong((a1 + 64), *(a2 + 64));
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  objc_storeStrong((a1 + 136), *(a2 + 136));
  objc_storeStrong((a1 + 144), *(a2 + 144));
  objc_storeStrong((a1 + 152), *(a2 + 152));
  v7 = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 160) = v7;
  return a1;
}

void sub_25D5B6568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t readEnumProperty<WDBorderStyle>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDLigatures>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDHighlightColor>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDCharacterVerticalAlign>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDCharacterEmphasisMark>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDTwoLineBrackets>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

void sub_25D5BA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_101_0()
{
  for (i = 0x108u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_113_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_125_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_140_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_155_0()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_167_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_104_0()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_137_0()
{
  for (i = 0x98u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_146_0()
{
  for (i = 0x98u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_161_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_170_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_350_0()
{
  for (i = 0x3A8u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_539_0()
{
  for (i = 0x3E8u; i != -8; i -= 16)
  {
  }
}

void sub_25D5BC1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25D5BC2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t readEnumProperty<WDNumberFormat>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDNoteRestart>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDNotePosition>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

void __cxx_global_array_dtor_14_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

uint64_t readEnumProperty<WDFontFamily>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDCharacterSet>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDFontPitch>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

void __cxx_global_array_dtor_83_1()
{
  for (i = 0x158u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_137_1()
{
  for (i = 0x118u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_149_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

uint64_t readEnumProperty<WDListType>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDListLevelSuffix>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDJustification>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

void sub_25D5C06D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x25D5C063CLL);
}

void sub_25D5C07BC()
{
  if (v0)
  {
    JUMPOUT(0x25D5C07C4);
  }

  JUMPOUT(0x25D5C07C8);
}

void sub_25D5C101C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, char a17)
{
  do
  {
    v19 = *(v18 - 1);
    v18 -= 8;
  }

  while (v18 != &a17);

  _Unwind_Resume(a1);
}

uint64_t readEnumProperty<WDATextWrappingModeType>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

void __cxx_global_array_dtor_38_0()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_53_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void sub_25D5C3CFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t readEnumProperty<WDHeightRule>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDHorizontalAnchor>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDVerticalAnchor>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<char>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _BYTE *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDLineSpacingRule>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDDropCapStyle>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<unsigned char>(const xmlNode *a1, const xmlChar *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

void __cxx_global_array_dtor_14_1()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_20_1()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_26_1()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_35_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_59_0()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_68_1()
{
  for (i = 0x68u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_92_0()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_101_1()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void sub_25D5C8B44(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t readEnumProperty<WDTextDirection>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDSectionBreakType>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDPageOrientation>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDPageBorderDepth>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDPageBorderDisplay>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDPageBorderOffset>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDLineNumberRestart>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDVerticalJustification>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDChapterNumberSeparator>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

void __cxx_global_array_dtor_20_2()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_29_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_41_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_50_0()
{
  for (i = 0x18u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_59_1()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_74_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_92_1()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void sub_25D5CB5E0(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t readEnumProperty<WDShadingStyle>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDStyleType>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDTableStylePart>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

void __cxx_global_array_dtor_47_1()
{
  for (i = 0xB8u; i != -8; i -= 16)
  {
  }
}

uint64_t std::vector<long,ChAllocator<long>>::__emplace_back_slow_path<long const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - *a1;
  v5 = (*(a1 + 16) - *a1) >> 3;
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
  *v11 = *a2;
  v12 = (v4 & 0x7FFFFFFF8) + 8;
  v13 = 0;
  std::vector<long,ChAllocator<long>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
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

void sub_25D5CDA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<long,ChAllocator<long>>::__swap_out_circular_buffer(uint64_t **result, void *a2)
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

uint64_t WXOptionalTableWidthAttribute(xmlNode *a1, void *a2, xmlChar *a3, _WORD *a4, unsigned int *a5)
{
  v9 = a2;
  v23 = 0.0;
  v22 = 0;
  v21 = 0;
  CXOptionalStringAttribute(a1, v9, a3, &v21);
  v10 = v21;
  v11 = v10;
  if (v10)
  {
    CXSplitValueAndUnit(v10, &v23, &v22);
    v12 = +[WXCommon tableWidthTypeEnumMap];
    v24 = 0;
    NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, "type", &v24);
    v14 = v24;
    v15 = -130883970;
    if (NSStringAnyNsProp)
    {
      v15 = [v12 valueForString:v14];
    }

    *a5 = v15;
    v16 = *a5;
    if (*a5 == -130883970)
    {
      v16 = 3;
    }

    *a5 = v16;
    if (v16 >= 3)
    {
      if (v16 != 3)
      {
LABEL_14:
        v19 = 0;
        goto LABEL_17;
      }

      v17 = v22;
    }

    else
    {
      v17 = v22;
      if (v22 == 13)
      {
        goto LABEL_15;
      }

      if (!v22)
      {
        v18 = v23 / 50.0;
LABEL_16:
        *a4 = v18;
        v19 = 1;
        goto LABEL_17;
      }
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_15:
    v18 = v23;
    goto LABEL_16;
  }

  v19 = 0;
  *a4 = 0;
  *a5 = 3;
LABEL_17:

  return v19;
}

uint64_t readEnumProperty<WDVerticalAlignment>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDTableWidthType>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

uint64_t readEnumProperty<WDVerticalAnchor>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDHorizontalAnchor>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDVerticalPosition>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

uint64_t readEnumProperty<WDHorizontalPosition>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

void __cxx_global_array_dtor_8_0()
{
  for (i = 0x28u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_26_2()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_35_1()
{
  for (i = 0x48u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_56_1()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

uint64_t readEnumProperty<WDHeightType>(_xmlNode *a1, const char *a2, const xmlChar *a3, void *a4, _DWORD *a5, void *a6)
{
  v11 = a4;
  v12 = [a6 WXMainNamespace];
  v13 = OCXFindChild(a1, v12, a2);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v11;
  v21 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v13, a3, &v21);
  v16 = v21;
  v17 = v16;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v18 = [v14 valueForString:v16];

  if (v18 == -130883970)
  {
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  *a5 = v18;
  v19 = 1;
LABEL_7:

  return v19;
}

BOOL wmxmlGetBoolOnlyProperty(_xmlNode *a1, const char *a2, const xmlChar *a3, BOOL *a4, WXReadState *a5)
{
  v9 = [(WXReadState *)a5 WXMainNamespace];
  v10 = OCXFindChild(a1, v9, a2);

  if (v10)
  {
    *a4 = 1;
    sfaxmlGetBoolAnyNsProp(v10, a3, a4);
  }

  return v10 != 0;
}

uint64_t wmxmlGetBoolProperty(_xmlNode *a1, const char *a2, const xmlChar *a3, BOOL *a4, WXReadState *a5)
{
  v9 = [(WXReadState *)a5 WXMainNamespace];
  v10 = OCXFindChild(a1, v9, a2);

  if (!v10)
  {
    return 0;
  }

  *a4 = 1;

  return sfaxmlGetBoolAnyNsProp(v10, a3, a4);
}

id wmxmlGetAuthorProperty(_xmlNode *a1)
{
  v4 = 0;
  sfaxmlGetNSStringAnyNsProp(a1, "author", &v4);
  v1 = v4;
  if (!v1)
  {
    v2 = TCBundle();
    v1 = [v2 localizedStringForKey:@"Unknown" value:&stru_286EE1130 table:@"TCCompatibility"];
  }

  return v1;
}

id wmxmlGetDateProperty(_xmlNode *a1)
{
  v5 = 0;
  sfaxmlGetNSStringAnyNsProp(a1, "date", &v5);
  v1 = v5;
  v2 = v1;
  if (!v1 || (CXDateForISO8601WithString(v1), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [TCMessageContext reportWarning:WXFoundMissingCTDate];
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  return v3;
}

uint64_t readEnumProperty<WDATextWrappingMode>(const xmlNode *a1, const xmlChar *a2, void *a3, _DWORD *a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v16 = 0;
  NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(a1, a2, &v16);
  v11 = v16;
  v12 = v11;
  if (!NSStringAnyNsProp)
  {

    goto LABEL_6;
  }

  v13 = [v9 valueForString:v11];

  if (v13 == -130883970)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  *a4 = v13;
  v14 = 1;
LABEL_7:

  return v14;
}

void __cxx_global_array_dtor_96_0()
{
  for (i = 0x38u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_106_0()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_131_0()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_138_0()
{
  for (i = 0x58u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_148_0()
{
  for (i = 0x78u; i != -8; i -= 16)
  {
  }
}

void __cxx_global_array_dtor_196_0()
{
  for (i = 0x2E8u; i != -8; i -= 16)
  {
  }
}

void sub_25D5D7B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WXReadState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t WrdAnnotation::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  WrdAnnotationReferenceDescriptor::operator=(*(a1 + 24), *(a2 + 24));
  WrdDateTime::operator=(*(a1 + 32), *(a2 + 32));
  return a1;
}

void WrdAnnotation::clone(WrdAnnotation *this)
{
  (*(*this->var4 + 16))(this->var4);
  (*(this->var5->var0 + 2))(this->var5);
  operator new();
}

uint64_t std::vector<WrdDateTime *,ChAllocator<WrdDateTime *>>::__emplace_back_slow_path<WrdDateTime * const&>(void *a1, void *a2)
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

void sub_25D5D9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdAnnotationReferenceDescriptor::WrdAnnotationReferenceDescriptor(WrdAnnotationReferenceDescriptor *this, const WrdAnnotationReferenceDescriptor *a2)
{
  *this = &unk_286ED3FA8;
  CsString::CsString((this + 8));
  *(this + 8) = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 6) = 0;
  bzero(*(this + 2), 2 * *(this + 7));
  CsString::append((this + 8), (a2 + 8));
}

void *WrdAnnotationTable::operator=(void *a1, uint64_t a2)
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
        v8 = std::vector<WrdAnnotation *,ChAllocator<WrdAnnotation *>>::__emplace_back_slow_path<WrdAnnotation *>(a1 + 1, &v10);
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

void sub_25D5D9CD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotationTable::operator=(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdAnnotation *,ChAllocator<WrdAnnotation *>>::__emplace_back_slow_path<WrdAnnotation *>(void *a1, void *a2)
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

void sub_25D5D9E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<WrdAnnotation *,ChAllocator<WrdAnnotation *>>::__emplace_back_slow_path<WrdAnnotation * const&>(void *a1, void *a2)
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

void sub_25D5D9F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdAssociatedStrings::WrdAssociatedStrings(WrdAssociatedStrings *this)
{
  *this = &unk_286ED4060;
  CsString::CsString((this + 8));
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
}

uint64_t WrdAssociatedStrings::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(a1 + 32, *(a1 + 40));
  v5 = 0;
  *v4 = 0;
  v4[1] = 0;
  v6 = (a2 + 40);
  *(v4 - 1) = v4;
  v10 = 0;
  do
  {
    for (i = *v6; i; i = *i)
    {
      v8 = *(i + 8);
      if (v5 >= v8)
      {
        if (v8 >= v5)
        {
          operator new();
        }

        ++i;
      }
    }

    v10 = ++v5;
  }

  while (v5 < 0x12);
  return a1;
}

void WrdAssociatedStrings::~WrdAssociatedStrings(WrdAssociatedStrings *this)
{
  v2 = 0;
  *this = &unk_286ED4060;
  v3 = (this + 40);
  do
  {
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v5 = *(v4 + 8);
      if (v5 <= v2)
      {
        break;
      }

LABEL_6:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    if (v5 < v2)
    {
      ++v4;
      goto LABEL_6;
    }

    v7 = v2;
    v8 = &v7;
    v6 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 32, &v7)[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2;
    v8 = &v7;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 32, &v7)[5] = 0;
LABEL_11:
    ++v2;
  }

  while (v2 != 18);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 32, *(this + 5));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 32, 0);
  CsString::~CsString((this + 8));
}

{
  WrdAssociatedStrings::~WrdAssociatedStrings(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdAssociatedStrings::getStringReference(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
LABEL_6:
    operator new();
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  v5 = a2;
  v6 = &v5;
  return std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v5)[5];
}

double WrdAutoSummaryInfo::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a1 + 22) & 0xFE | *(a2 + 22) & 1;
  *(a1 + 22) = v3;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a2 + 22) >> 1) & 1));
  *(a1 + 22) = v4;
  *(a1 + 22) = v4 & 0xFB | *(a2 + 22) & 4;
  return result;
}

void WrdBinTable::~WrdBinTable(WrdBinTable *this)
{
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

void std::vector<unsigned int,ChAllocator<unsigned int>>::resize(void *a1, unsigned int a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned int,ChAllocator<unsigned int>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 4 * a2;
  }
}

void std::vector<unsigned int,ChAllocator<unsigned int>>::__append(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = (v4 - *a1) >> 2;
    v8 = 2 * v7;
    if (2 * v7 <= (v6 >> 2) + a2)
    {
      v8 = (v6 >> 2) + a2;
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
      std::__allocate_at_least[abi:ne200100]<ChAllocator<float>>(a1, v9);
    }

    __p = 0;
    v11 = v6 & 0x3FFFFFFFCLL;
    v13 = 0;
    bzero((v6 & 0x3FFFFFFFCLL), 4 * a2);
    v12 = (v6 & 0x3FFFFFFFCLL) + 4 * a2;
    std::vector<int,ChAllocator<int>>::__swap_out_circular_buffer(a1, &__p);
    if (v12 != v11)
    {
      v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}