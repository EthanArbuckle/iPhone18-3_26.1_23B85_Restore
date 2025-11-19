WrdCharacterProperties *WrdCharacterProperties::applyImplictProperties(WrdCharacterProperties *this, const WrdCharacterProperties *a2)
{
  var2 = this->var2;
  if ((var2 & 2) != 0)
  {
    var23 = this->var23;
    if ((var23 & 0xFFFFFFFE) == 0x80)
    {
      v4 = a2->var23;
      if (var23 != 128)
      {
        if (v4)
        {
          if (v4 == 129)
          {
            v4 = 128;
          }

          else
          {
            if (v4 != 1)
            {
              goto LABEL_5;
            }

            v4 = 0;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      this->var23 = v4;
    }
  }

LABEL_5:
  if ((var2 & 4) != 0)
  {
    var24 = this->var24;
    if ((var24 & 0xFFFFFFFE) == 0x80)
    {
      v6 = a2->var24;
      if (var24 != 128)
      {
        if (v6)
        {
          if (v6 == 129)
          {
            v6 = 128;
          }

          else
          {
            if (v6 != 1)
            {
              goto LABEL_9;
            }

            v6 = 0;
          }
        }

        else
        {
          v6 = 1;
        }
      }

      this->var24 = v6;
    }
  }

LABEL_9:
  if ((var2 & 0x10) != 0)
  {
    var25 = this->var25;
    if ((var25 & 0xFFFFFFFE) == 0x80)
    {
      v8 = a2->var25;
      if (var25 != 128)
      {
        if (v8)
        {
          if (v8 == 129)
          {
            v8 = 128;
          }

          else
          {
            if (v8 != 1)
            {
              goto LABEL_13;
            }

            v8 = 0;
          }
        }

        else
        {
          v8 = 1;
        }
      }

      this->var25 = v8;
    }
  }

LABEL_13:
  if ((var2 & 0x200) != 0)
  {
    var31 = this->var31;
    if ((var31 & 0xFFFFFFFE) == 0x80)
    {
      v10 = a2->var31;
      if (var31 != 128)
      {
        if (v10)
        {
          if (v10 == 129)
          {
            v10 = 128;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_17;
            }

            v10 = 0;
          }
        }

        else
        {
          v10 = 1;
        }
      }

      this->var31 = v10;
    }
  }

LABEL_17:
  if ((var2 & 0x400) != 0)
  {
    var32 = this->var32;
    if ((var32 & 0xFFFFFFFE) == 0x80)
    {
      v12 = a2->var32;
      if (var32 != 128)
      {
        if (v12)
        {
          if (v12 == 129)
          {
            v12 = 128;
          }

          else
          {
            if (v12 != 1)
            {
              goto LABEL_21;
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 1;
        }
      }

      this->var32 = v12;
    }
  }

LABEL_21:
  if ((var2 & 0x80) != 0)
  {
    var26 = this->var26;
    if ((var26 & 0xFFFFFFFE) == 0x80)
    {
      v14 = a2->var26;
      if (var26 != 128)
      {
        if (v14)
        {
          if (v14 == 129)
          {
            v14 = 128;
          }

          else
          {
            if (v14 != 1)
            {
              goto LABEL_25;
            }

            v14 = 0;
          }
        }

        else
        {
          v14 = 1;
        }
      }

      this->var26 = v14;
    }
  }

LABEL_25:
  if ((var2 & 0x10000000) != 0)
  {
    var27 = this->var27;
    if ((var27 & 0xFFFFFFFE) == 0x80)
    {
      v16 = a2->var27;
      if (var27 != 128)
      {
        if (v16)
        {
          if (v16 == 129)
          {
            v16 = 128;
          }

          else
          {
            if (v16 != 1)
            {
              goto LABEL_29;
            }

            v16 = 0;
          }
        }

        else
        {
          v16 = 1;
        }
      }

      this->var27 = v16;
    }
  }

LABEL_29:
  if ((var2 & 0x20000000) != 0)
  {
    var28 = this->var28;
    if ((var28 & 0xFFFFFFFE) == 0x80)
    {
      v18 = a2->var28;
      if (var28 != 128)
      {
        if (v18)
        {
          if (v18 == 129)
          {
            v18 = 128;
          }

          else
          {
            if (v18 != 1)
            {
              goto LABEL_33;
            }

            v18 = 0;
          }
        }

        else
        {
          v18 = 1;
        }
      }

      this->var28 = v18;
    }
  }

LABEL_33:
  if ((var2 & 0x20) != 0)
  {
    var29 = this->var29;
    if ((var29 & 0xFFFFFFFE) == 0x80)
    {
      v20 = a2->var29;
      if (var29 != 128)
      {
        if (v20)
        {
          if (v20 == 129)
          {
            v20 = 128;
          }

          else
          {
            if (v20 != 1)
            {
              goto LABEL_37;
            }

            v20 = 0;
          }
        }

        else
        {
          v20 = 1;
        }
      }

      this->var29 = v20;
    }
  }

LABEL_37:
  if ((var2 & 0x100) != 0)
  {
    var30 = this->var30;
    if ((var30 & 0xFFFFFFFE) == 0x80)
    {
      v22 = a2->var30;
      if (var30 != 128)
      {
        if (v22)
        {
          if (v22 == 129)
          {
            v22 = 128;
          }

          else
          {
            if (v22 != 1)
            {
              goto LABEL_41;
            }

            v22 = 0;
          }
        }

        else
        {
          v22 = 1;
        }
      }

      this->var30 = v22;
    }
  }

LABEL_41:
  if ((var2 & 0x800000000) != 0)
  {
    var33 = this->var33;
    if ((var33 & 0xFFFFFFFE) == 0x80)
    {
      v24 = a2->var33;
      if (var33 != 128)
      {
        if (v24)
        {
          if (v24 == 129)
          {
            v24 = 128;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_45;
            }

            v24 = 0;
          }
        }

        else
        {
          v24 = 1;
        }
      }

      this->var33 = v24;
    }
  }

LABEL_45:
  if ((var2 & 0x1000000000) != 0)
  {
    var34 = this->var34;
    if ((var34 & 0xFFFFFFFE) == 0x80)
    {
      v26 = a2->var34;
      if (var34 != 128)
      {
        if (v26)
        {
          if (v26 == 129)
          {
            v26 = 128;
          }

          else
          {
            if (v26 != 1)
            {
              goto LABEL_49;
            }

            v26 = 0;
          }
        }

        else
        {
          v26 = 1;
        }
      }

      this->var34 = v26;
    }
  }

LABEL_49:
  if ((var2 & 0x2000000000) != 0)
  {
    var35 = this->var35;
    if ((var35 & 0xFFFFFFFE) == 0x80)
    {
      v28 = a2->var35;
      if (var35 != 128)
      {
        if (v28)
        {
          if (v28 == 129)
          {
            v28 = 128;
          }

          else
          {
            if (v28 != 1)
            {
              goto LABEL_53;
            }

            v28 = 0;
          }
        }

        else
        {
          v28 = 1;
        }
      }

      this->var35 = v28;
    }
  }

LABEL_53:
  if ((var2 & 8) != 0)
  {
    var36 = this->var36;
    if ((var36 & 0xFFFFFFFE) == 0x80)
    {
      v30 = a2->var36;
      if (var36 != 128)
      {
        if (v30)
        {
          if (v30 == 129)
          {
            v30 = 128;
          }

          else
          {
            if (v30 != 1)
            {
              goto LABEL_57;
            }

            v30 = 0;
          }
        }

        else
        {
          v30 = 1;
        }
      }

      this->var36 = v30;
    }
  }

LABEL_57:
  if ((var2 & 0x40) != 0)
  {
    var37 = this->var37;
    if ((var37 & 0xFFFFFFFE) == 0x80)
    {
      v32 = a2->var37;
      if (var37 == 128)
      {
LABEL_60:
        this->var37 = v32;
        return this;
      }

      switch(v32)
      {
        case 0:
          v32 = 1;
          goto LABEL_60;
        case 129:
          v32 = 128;
          goto LABEL_60;
        case 1:
          v32 = 0;
          goto LABEL_60;
      }
    }
  }

  return this;
}

void *WrdParagraphTextRun::WrdParagraphTextRun(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = WrdTextRun::WrdTextRun(a1, a2, a3);
  *result = &unk_286ED53F8;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a7;
  return result;
}

void WrdStyleSheet::resolve(WrdStyleSheet *this, WrdCharacterProperties *a2, unsigned int a3)
{
  if ((*(&a2->var2 + 3) & 8) != 0)
  {
    var72 = a2->var72;
    do
    {
      v7 = *(this + 3);
      if (((*(this + 4) - v7) >> 3) <= var72 || (v8 = *(v7 + 8 * var72)) == 0)
      {
        v8 = *(this + 2);
      }

      ResolvedCharProps = WrdStyle::getResolvedCharProps(v8);
      v10 = ResolvedCharProps;
      v11 = *(a2 + 85);
      if (v11)
      {
        v12 = (v11 >> 1) & 1;
        WrdCharacterProperties::operator=(a2, ResolvedCharProps);
        WrdCharacterProperties::setSpecialCharacter(a2, v12);
      }

      else if (WrdCharacterProperties::WrdCharacterPropertiesOverridden::isAnythingOverridden((ResolvedCharProps + 16)))
      {
        WrdCharacterProperties::applyBaseProperties(a2, v10);
      }

      var72 = v8[79];
    }

    while (var72 != 4095);
  }

  do
  {
    v13 = *(this + 3);
    if (((*(this + 4) - v13) >> 3) <= a3 || (v14 = *(v13 + 8 * a3)) == 0)
    {
      v14 = *(this + 2);
    }

    v15 = *(v14 + 48);
    if (WrdCharacterProperties::WrdCharacterPropertiesOverridden::isAnythingOverridden(&v15->var2))
    {
      WrdCharacterProperties::applyBaseProperties(a2, v15);
    }

    a3 = *(v14 + 158);
  }

  while (a3 != 4095);
  v16 = *(this + 3);
  if (((*(this + 4) - v16) & 0x7FFFFFFF8) == 0 || (v17 = *v16) == 0)
  {
    v17 = *(this + 2);
  }

  WrdCharacterProperties::applyBaseProperties(a2, *(v17 + 48));
  v18 = *(*(this + 2) + 48);

  WrdCharacterProperties::applyBaseProperties(a2, v18);
}

uint64_t WrdCharacterProperties::WrdCharacterPropertiesOverridden::isAnythingOverridden(WrdCharacterProperties::WrdCharacterPropertiesOverridden *this)
{
  v1 = *this;
  if ((*this & 0xFFFFFFFFF0FFFFFFLL) != 0)
  {
    return 1;
  }

  v2 = *(this + 2);
  v3 = (v1 & 0x7000000) == 0 && (*(this + 2) & 0x7FFF) == 0;
  if (!v3)
  {
    return 1;
  }

  v5 = *(this + 6);
  result = 1;
  if ((v5 & 0x79F) == 0)
  {
    v3 = (v5 & 0x60) == 0;
    v6 = v2 & 0xBFFF8000;
    v7 = (v5 >> 11) & 1;
    if (!v3)
    {
      v7 = 1;
    }

    if (v1 == 0x8000000)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v6)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t WrdCPTableHeaders::getTextRun(uint64_t a1, _DWORD *a2, unsigned int a3, int a4)
{
  a2[2] = 2;
  a2[3] = WrdCPTableHeaders::getStartCP(a1, a3, a4);
  result = WrdCPTableHeaders::getNumberOfCharacters(a1, a3, a4);
  a2[4] = result;
  return result;
}

uint64_t WrdCPTableHeaders::getStartCP(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 5)
  {
    a2 += 6 * a3;
    v3 = *(a1 + 8);
    if (a2 < ((*(a1 + 16) - v3) >> 2))
    {
      return *(v3 + 4 * a2);
    }

LABEL_5:
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(a1 + 8);
  if (((*(a1 + 16) - v3) >> 2) <= a2)
  {
    goto LABEL_5;
  }

  return *(v3 + 4 * a2);
}

uint64_t WrdCPTableHeaders::getNumberOfCharacters(uint64_t a1, int a2, int a3)
{
  if (a2 > 5)
  {
    a2 += 6 * a3;
    v3 = a2 + 1;
    v4 = *(a1 + 8);
    if (a2 + 1 >= ((*(a1 + 16) - v4) >> 2))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = a2 + 1;
    v4 = *(a1 + 8);
    v5 = (*(a1 + 16) - v4) >> 2;
    if (a2 + 1 >= v5 || v5 <= a2)
    {
LABEL_4:
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
    }
  }

  return (*(v4 + 4 * v3) - *(v4 + 4 * a2));
}

uint64_t WrdCharacterProperties::setTextAnimation(uint64_t result, int a2)
{
  *(result + 16) |= 0x800000uLL;
  *(result + 152) = a2;
  return result;
}

uint64_t WrdParagraphProperties::setHorizontalPosition(uint64_t result, int a2)
{
  *(result + 16) |= 0x1000000uLL;
  *(result + 156) = a2;
  return result;
}

WrdParagraphProperties *WrdParagraphProperties::setWrapCode(WrdParagraphProperties *this, char a2)
{
  *(this + 2) |= 0x2000000uLL;
  *(this + 298) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setHorizontalPlacement(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x100000uLL;
  *(this + 56) = a2;
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setVerticalPlacement(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x200000uLL;
  *(this + 57) = a2;
  return this;
}

WrdCharacterProperties *WrdCharacterProperties::setNoProof(WrdCharacterProperties *this, char a2)
{
  *&this->var2 |= 0x8000000000uLL;
  *(this + 85) = *(this + 85) & 0xFFFFFF7F | ((a2 & 1) << 7);
  return this;
}

WrdParagraphProperties *WrdParagraphProperties::setTableNestingLevel(WrdParagraphProperties *this, int a2)
{
  *(this + 2) |= 0x1000000000000uLL;
  *(this + 61) = a2;
  return this;
}

uint64_t WrdTableCellDescriptor::setFitText(uint64_t this, char a2)
{
  *(this + 12) |= 0x40u;
  *(this + 130) = *(this + 130) & 0xFF7F | ((a2 & 1) << 7);
  return this;
}

uint64_t WrdTableCellDescriptor::setNoWrap(uint64_t this, char a2)
{
  *(this + 12) |= 0x80u;
  *(this + 130) = *(this + 130) & 0xFEFF | ((a2 & 1) << 8);
  return this;
}

uint64_t WrdTableProperties::setPreferredTableWidthUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x8000uLL;
  *(result + 132) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setPreferredTableWidth(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 0x200000000000000uLL;
  *(this + 168) = a2;
  return this;
}

WrdTableProperties *WrdTableProperties::setAutoFit(WrdTableProperties *this, char a2)
{
  *(this + 2) |= 0x10000000000000uLL;
  *(this + 334) = *(this + 334) & 0xFE | a2 & 1;
  return this;
}

uint64_t WrdTapParser::parseSpacingAndPadding(WrdTapParser *this, int a2, WrdTableProperties *a3, const unsigned __int8 *a4, unsigned __int16 *a5)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = *a5;
  *a5 += 2;
  v11 = &a4[(v10 + 2)];
  v12 = *v11;
  *a5 = v10 + 3;
  v13 = v11[1];
  *a5 = v10 + 4;
  result = CsLeReadSInt16(v11 + 1);
  v15 = result;
  *a5 += 2;
  if (a2 <= 54838)
  {
    if (a2 != 54835)
    {
      if (a2 == 54836)
      {
        if (v12)
        {
          WrdTableProperties::setDefaultTableTopCellPadding(a3, result);
          result = WrdTableProperties::setDefaultTableTopCellPaddingUnit(a3, v13);
          if ((v12 & 2) == 0)
          {
LABEL_6:
            if ((v12 & 4) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_51;
          }
        }

        else if ((v12 & 2) == 0)
        {
          goto LABEL_6;
        }

        WrdTableProperties::setDefaultTableLeftCellPadding(a3, v15);
        result = WrdTableProperties::setDefaultTableLeftCellPaddingUnit(a3, v13);
        if ((v12 & 4) == 0)
        {
LABEL_7:
          if ((v12 & 8) == 0)
          {
            return result;
          }

LABEL_52:
          WrdTableProperties::setDefaultTableRightCellPadding(a3, v15);

          return WrdTableProperties::setDefaultTableRightCellPaddingUnit(a3, v13);
        }

LABEL_51:
        WrdTableProperties::setDefaultTableBottomCellPadding(a3, v15);
        result = WrdTableProperties::setDefaultTableBottomCellPaddingUnit(a3, v13);
        if ((v12 & 8) == 0)
        {
          return result;
        }

        goto LABEL_52;
      }

      goto LABEL_16;
    }

    if (v12)
    {
      WrdTableProperties::setDefaultTableTopCellSpacing(a3, result);
      result = WrdTableProperties::setDefaultTableTopCellSpacingUnit(a3, v13);
      if ((v12 & 2) == 0)
      {
LABEL_41:
        if ((v12 & 4) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_63;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_41;
    }

    WrdTableProperties::setDefaultTableLeftCellSpacing(a3, v15);
    result = WrdCharacterProperties::setSmallCaps(a3, v13);
    if ((v12 & 4) == 0)
    {
LABEL_42:
      if ((v12 & 8) == 0)
      {
        return result;
      }

LABEL_64:
      WrdTableProperties::setDefaultTableRightCellSpacing(a3, v15);

      return WrdTableProperties::setDefaultTableRightCellSpacingUnit(a3, v13);
    }

LABEL_63:
    WrdTableProperties::setDefaultTableBottomCellSpacing(a3, v15);
    result = WrdCharacterProperties::setCaps(a3, v13);
    if ((v12 & 8) == 0)
    {
      return result;
    }

    goto LABEL_64;
  }

  if (a2 != 54839)
  {
    if (a2 != 54840)
    {
LABEL_16:
      if (v8 >= v9)
      {
        return result;
      }

      while (1)
      {
        result = WrdTableProperties::getTableCellDescriptorReference(a3, v8);
        v16 = result;
        if (a2 == 54833)
        {
          if (v12)
          {
            WrdTableCellDescriptor::setTopSpacing(result, v15);
            result = WrdTableCellDescriptor::setTopSpacingUnit(v16, v13);
            if ((v12 & 2) == 0)
            {
              goto LABEL_26;
            }
          }

          else if ((v12 & 2) == 0)
          {
LABEL_26:
            if ((v12 & 4) == 0)
            {
              goto LABEL_27;
            }

LABEL_35:
            WrdTableCellDescriptor::setBottomSpacing(v16, v15);
            result = WrdTableCellDescriptor::setBottomSpacingUnit(v16, v13);
            if ((v12 & 8) != 0)
            {
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          WrdTableCellDescriptor::setLeftSpacing(v16, v15);
          result = WrdTableCellDescriptor::setLeftSpacingUnit(v16, v13);
          if ((v12 & 4) == 0)
          {
LABEL_27:
            if ((v12 & 8) == 0)
            {
              goto LABEL_37;
            }

LABEL_36:
            WrdTableCellDescriptor::setRightSpacing(v16, v15);
            result = WrdTableCellDescriptor::setRightSpacingUnit(v16, v13);
            goto LABEL_37;
          }

          goto LABEL_35;
        }

        if (a2 != 54834)
        {
          goto LABEL_37;
        }

        if (v12)
        {
          WrdTableCellDescriptor::setTopPadding(result, v15);
          result = WrdTableCellDescriptor::setTopPaddingUnit(v16, v13);
          if ((v12 & 2) != 0)
          {
LABEL_30:
            WrdTableCellDescriptor::setLeftPadding(v16, v15);
            result = WrdTableCellDescriptor::setLeftPaddingUnit(v16, v13);
            if ((v12 & 4) == 0)
            {
LABEL_22:
              if ((v12 & 8) == 0)
              {
                goto LABEL_37;
              }

LABEL_32:
              WrdTableCellDescriptor::setRightPadding(v16, v15);
              result = WrdTableCellDescriptor::setRightPaddingUnit(v16, v13);
              goto LABEL_37;
            }

            goto LABEL_31;
          }
        }

        else if ((v12 & 2) != 0)
        {
          goto LABEL_30;
        }

        if ((v12 & 4) == 0)
        {
          goto LABEL_22;
        }

LABEL_31:
        WrdTableCellDescriptor::setBottomPadding(v16, v15);
        result = WrdTableCellDescriptor::setBottomPaddingUnit(v16, v13);
        if ((v12 & 8) != 0)
        {
          goto LABEL_32;
        }

LABEL_37:
        LOBYTE(v8) = v8 + 1;
        if (v9 <= v8)
        {
          return result;
        }
      }
    }

    if (v12)
    {
      WrdTableProperties::setDefaultTableOuterTopCellPadding(a3, result);
      result = WrdTableProperties::setDefaultTableOuterTopCellPaddingUnit(a3, v13);
      if ((v12 & 2) == 0)
      {
LABEL_13:
        if ((v12 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_57;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_13;
    }

    WrdTableProperties::setDefaultTableOuterLeftCellPadding(a3, v15);
    result = WrdTableProperties::setDefaultTableOuterLeftCellPaddingUnit(a3, v13);
    if ((v12 & 4) == 0)
    {
LABEL_14:
      if ((v12 & 8) == 0)
      {
        return result;
      }

LABEL_58:
      WrdTableProperties::setDefaultTableOuterRightCellPadding(a3, v15);

      return WrdTableProperties::setDefaultTableOuterRightCellPaddingUnit(a3, v13);
    }

LABEL_57:
    WrdTableProperties::setDefaultTableOuterBottomCellPadding(a3, v15);
    result = WrdTableProperties::setDefaultTableOuterBottomCellPaddingUnit(a3, v13);
    if ((v12 & 8) == 0)
    {
      return result;
    }

    goto LABEL_58;
  }

  if (v12)
  {
    WrdTableProperties::setDefaultTableOuterTopCellSpacing(a3, result);
    result = WrdTableProperties::setDefaultTableOuterTopCellSpacingUnit(a3, v13);
    if ((v12 & 2) == 0)
    {
LABEL_46:
      if ((v12 & 4) == 0)
      {
        goto LABEL_47;
      }

LABEL_69:
      WrdTableProperties::setDefaultTableOuterBottomCellSpacing(a3, v15);
      result = WrdTableProperties::setDefaultTableOuterBottomCellSpacingUnit(a3, v13);
      if ((v12 & 8) == 0)
      {
        return result;
      }

      goto LABEL_71;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_46;
  }

  WrdTableProperties::setDefaultTableOuterLeftCellSpacing(a3, v15);
  result = WrdTableProperties::setDefaultTableOuterLeftCellSpacingUnit(a3, v13);
  if ((v12 & 4) != 0)
  {
    goto LABEL_69;
  }

LABEL_47:
  if ((v12 & 8) == 0)
  {
    return result;
  }

LABEL_71:
  WrdTableProperties::setDefaultTableOuterRightCellSpacing(a3, v15);

  return WrdTableProperties::setDefaultTableOuterRightCellSpacingUnit(a3, v13);
}

WrdTableProperties *WrdTableProperties::setDefaultTableLeftCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 1u;
  *(this + 174) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableLeftCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x100000uLL;
  *(result + 152) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setDefaultTableRightCellPadding(WrdTableProperties *this, __int16 a2)
{
  *(this + 6) |= 4u;
  *(this + 176) = a2;
  return this;
}

uint64_t WrdTableProperties::setDefaultTableRightCellPaddingUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x400000uLL;
  *(result + 160) = a2;
  return result;
}

uint64_t WrdTableProperties::setWidthIndentUnit(uint64_t result, int a2)
{
  *(result + 16) |= 0x10000uLL;
  *(result + 136) = a2;
  return result;
}

WrdTableProperties *WrdTableProperties::setWidthIndent(WrdTableProperties *this, __int16 a2)
{
  *(this + 2) |= 0x400000000000000uLL;
  *(this + 169) = a2;
  return this;
}

void PptExObjListAtom::PptExObjListAtom(PptExObjListAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED9A78;
  *(v2 + 32) = &unk_286ED9B20;
}

uint64_t PptExObjListAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExObjListAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptExHyperlinkAtom::PptExHyperlinkAtom(PptExHyperlinkAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED94A8;
  *(v2 + 32) = &unk_286ED9550;
  *(v2 + 48) = 0;
}

uint64_t PptExHyperlinkAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExHyperlinkAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptExEmbedAtom::PptExEmbedAtom(PptExEmbedAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED93B0;
  *(v2 + 32) = &unk_286ED9458;
  *(v2 + 52) = 0;
  *(v2 + 54) = 0;
}

uint64_t PptExEmbedAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExEmbedAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 52) = (*(**(this + 1) + 64))(*(this + 1)) & 1, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 5) || (*(a2 + 53) = (*(**(this + 1) + 64))(*(this + 1)) & 1, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 6) || (*(a2 + 54) = (*(**(this + 1) + 64))(*(this + 1)) & 1, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 7))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 1u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptExOleObjAtom::PptExOleObjAtom(PptExOleObjAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED9D60;
  *(v2 + 32) = &unk_286ED9E08;
}

uint64_t PptExOleObjAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExOleObjAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (*(a2 + 14) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 15) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 13) || (PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 3u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16) || (*(a2 + 16) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 20))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 4u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshColor::rgb(uint64_t result, char a2, char a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 4) = result;
  *(a4 + 5) = a2;
  *(a4 + 6) = a3;
  return result;
}

uint64_t *EshOpt::takeComplexProperty(uint64_t a1, unsigned int a2, uint64_t a3)
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
    (*(*v8 + 8))(v8);
  }

LABEL_9:
  v10 = a2;
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10);
  result[5] = a3;
  result[6] = 0;
  return result;
}

uint64_t *EshOpt::takeGenericProperty(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = &v5;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v5);
  result[5] = a3;
  result[6] = 0;
  return result;
}

uint64_t *ChAutoPtr<EshOpt::GenericValue>::~ChAutoPtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *(v2 + 8) = &unk_286EC63D8;
    v3 = *(v2 + 16);
    if (v3)
    {
      MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
    }

    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    MEMORY[0x25F897000](v2, 0x1090C40DF1FC404);
  }

  *a1 = 0;
  return a1;
}

void EshColorMRU::EshColorMRU(EshColorMRU *this)
{
  EshAtom::EshAtom(this, 0xF11Au, 0);
  *v1 = &unk_286EC5B48;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
}

uint64_t EshColorMRU::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshColorMRU *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  Instance = EshRecord::getInstance(a2);
  if (EshRecord::getDataLength(a2) != 4 * Instance)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  if (Instance)
  {
    v7 = 0;
    do
    {
      v8 = (*(**(this + 3) + 104))(*(this + 3));
      v9 = EshParserVisitor::decodeColor(this, v8);
      std::vector<EshColor,ChAllocator<EshColor>>::push_back[abi:ne200100](a2 + 32, v9);
      ++v7;
    }

    while (v7 < Instance);
  }

  EshParserVisitor::endRead(this, a2);
  return 1;
}

void PptVBAInfoAtom::PptVBAInfoAtom(PptVBAInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD8F8;
  *(v2 + 32) = &unk_286EDD9A0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptVBAInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptVBAInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptCommentIndex10Atom::PptCommentIndex10Atom(PptCommentIndex10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0570;
  *(v2 + 32) = &unk_286EE0618;
  *(v2 + 48) = 0;
}

uint64_t PptCommentIndex10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptCommentIndex10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptReviewAtom::PptReviewAtom(PptReviewAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDBBC8;
  *(v2 + 32) = &unk_286EDBC70;
}

uint64_t PptReviewAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptReviewAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 64))(*(this + 1));
  if (v4 >= 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 45) = v4 == 1;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptExObjRefAtom::PptExObjRefAtom(PptExObjRefAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED9B70;
  *(v2 + 32) = &unk_286ED9C18;
}

uint64_t PptExObjRefAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExObjRefAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptNotesAtom::PptNotesAtom(PptNotesAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB2C0;
  *(v2 + 32) = &unk_286EDB368;
  *(v2 + 48) = 0;
  *(v2 + 51) = 0;
}

uint64_t PptNotesAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptNotesAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  v4 = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 52) = v4 & 1;
  *(a2 + 53) = (v4 & 2) != 0;
  *(a2 + 54) = (v4 & 4) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptHeaderMCAtom::PptHeaderMCAtom(PptHeaderMCAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDACF0;
  *(v2 + 32) = &unk_286EDAD98;
}

uint64_t PptHeaderMCAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptHeaderMCAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptTextGenericRulerAtom::setFirstLine(uint64_t this, int a2, __int16 a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(this + 2 * a2 + 66) = a3;
  return this;
}

void PptEshGroup::PptEshGroup(PptEshGroup *this)
{
  EshGroup::EshGroup(this);
  PptEshClientContainer::PptEshClientContainer((v2 + 368));
  *this = &unk_286ED8F30;
  *(this + 34) = &unk_286ED8FE0;
  *(this + 46) = &unk_286ED9020;
}

void EshGroup::EshGroup(EshGroup *this)
{
  EshContentBase::EshContentBase(this, 6u);
  *v2 = &unk_286EC7010;
  *(v2 + 272) = &unk_286EC70C0;
  *(v2 + 280) = 0;
  EshObject::EshObject((v2 + 288), 0x1Au);
  *(this + 38) = this + 16;
  *(this + 39) = 0;
  *(this + 36) = &unk_286EC7138;
  EshObject::EshObject(this + 20, 0x1Bu);
  *(this + 42) = this + 16;
  *(this + 40) = &unk_286EC71E0;
  EshObject::EshObject((this + 344), 0x1Cu);
  *(this + 45) = this + 16;
  *(this + 43) = &unk_286EC7288;
}

void PptInteractiveInfoAtom::PptInteractiveInfoAtom(PptInteractiveInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDAFD8;
  *(v2 + 32) = &unk_286EDB080;
  *(v2 + 68) = 0;
}

uint64_t PptInteractiveInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptInteractiveInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (*(a2 + 14) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 9) || (*(a2 + 60) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 10) || (*(a2 + 16) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 11) || (v5 = (*(**(this + 1) + 64))(*(this + 1)), *(a2 + 68) = v5 & 1, *(a2 + 69) = (v5 & 2) != 0, *(a2 + 70) = (v5 & 4) != 0, *(a2 + 71) = (v5 & 8) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 18) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 13))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownToEnd(*(this + 3), a2);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

_BYTE *PptSkipVisitor::skipKnownToEnd(PptSkipVisitor *this, const EshRecord *a2)
{
  v4 = *(a2 + 4) + *(a2 + 3) + 8;
  if (v4 < (*(**this + 40))(*this))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = *(a2 + 4) + *(a2 + 3);
  v6 = v5 - (*(**this + 40))() + 8;

  return PptSkipVisitor::skipKnownBytes(this, a2, v6);
}

uint64_t PptTab::PptTab(uint64_t result, int a2, __int16 a3)
{
  *result = a2;
  *(result + 4) = a3;
  return result;
}

uint64_t PptExOleObjStg::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptExOleObjStg *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = *(a2 + 3);
  if (*(a2 + 10) == 1)
  {
    v5 = (*(**(this + 1) + 104))(*(this + 1));
    if (v4 <= 2080898 && v5 > 1032 * (v4 - 4))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 4003;
    }

    v4 = (v4 - 4);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 12) = v5;
  v7 = *(this + 1);
  v8 = (*(v7->var0 + 4))(v7);
  v9 = (*(**(this + 1) + 40))(*(this + 1));
  OcBinaryData::setDataInfo((a2 + 56), v7, v8, v9, v4);
  (*(**(this + 1) + 16))(*(this + 1), v4, 1);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t non-virtual thunk toPptAtom::setId(uint64_t this, int a2)
{
  *(this + 8) = a2;
  *(this + 12) = 1;
  return this;
}

uint64_t CsLeReadChars16(uint64_t result, int a2, _WORD *a3)
{
  v3 = a2 & ~(a2 >> 31);
  v4 = result + 1;
  do
  {
    if (!v3)
    {
      break;
    }

    v5 = *(v4 - 1);
    *a3++ = v5;
    --v3;
    v4 += 2;
  }

  while (v5);
  return result;
}

uint64_t EshShapeLib::isStrokeOK(EshShapeLib *this, uint64_t a2)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    return (*ShapeType >> 5) & 1;
  }

  return a2;
}

uint64_t TSUDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

uint64_t EshShapeLib::isFillOK(EshShapeLib *this, uint64_t a2)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    return (*ShapeType >> 4) & 1;
  }

  return a2;
}

EshColor *EshColor::white(EshColor *this, EshColor *a2)
{
  this->var0.var1.var1 = -1;
  this->var0.var1.var0.var2 = -1;
  this->var0.var0 = 0;
  return this;
}

uint64_t OADTextCachedSpacingWithSpacing(OADTextSpacing *a1)
{
  v2 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(OADTextSpacing *)v2 percent];
    v1 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LODWORD(v1) = vcvts_n_s32_f32([(OADTextSpacing *)v2], 3uLL);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t TSUHash(char *a1, uint64_t a2)
{
  for (result = 0xCBF29CE484222325; a2; --a2)
  {
    v4 = *a1++;
    result = 0x100000001B3 * (result ^ v4);
  }

  return result;
}

CGColorRef CMShapeRendererCreateGenericRGBA(float a1, float a2, float a3, float a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v5;
}

void sub_25D301014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  EshGeometryProperties::~EshGeometryProperties(va);
  _Unwind_Resume(a1);
}

void EshGeometryProperties::EshGeometryProperties(EshGeometryProperties *this)
{
  *(this + 4) = 5;
  *this = &unk_286EC6170;
  *(this + 12) = 0;
  *(this + 20) = vdup_n_s32(0x5460u);
  *(this + 16) = 0x8000000080000000;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 34) = 1;
  *(this + 35) = 65793;
  *(this + 72) = 256;
  *(this + 146) = 0;
}

double EshGeometryProperties::init(EshGeometryProperties *this)
{
  *(this + 12) = xmmword_25D6FBF60;
  *(this + 16) = 0x8000000080000000;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 34) = 1;
  *&result = 65793;
  *(this + 35) = 65793;
  *(this + 72) = 256;
  *(this + 146) = 0;
  return result;
}

uint64_t EshShapeLib::cloneShapeProperties(EshShapeLib *this, unsigned __int16 a2, EshGeometryProperties *a3)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    EshShapeLib::cloneVertices(ShapeType[3], *(ShapeType + 8));
  }

  return 0;
}

void *EshBasicTablePropVal<EshComputedValue>::init(void *a1, unsigned int a2, void *a3)
{
  LODWORD(v4) = a2;
  result = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::reserve(a1 + 1, a2);
  if (v4)
  {
    v4 = v4;
    result = a1[2];
    do
    {
      if (result >= a1[3])
      {
        result = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(a1 + 1, a3);
      }

      else
      {
        *result++ = *a3;
      }

      a1[2] = result;
      ++a3;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *EshBasicTablePropVal<EshPathCommand>::init(void *a1, unsigned int a2, void *a3)
{
  LODWORD(v4) = a2;
  result = std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::reserve(a1 + 1, a2);
  if (v4)
  {
    v4 = v4;
    result = a1[2];
    do
    {
      if (result >= a1[3])
      {
        result = std::vector<EshPathCommand,ChAllocator<EshPathCommand>>::__emplace_back_slow_path<EshPathCommand const&>(a1 + 1, a3);
      }

      else
      {
        *result++ = *a3;
      }

      a1[2] = result;
      ++a3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshFormula>::init(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  LODWORD(v4) = a2;
  result = std::vector<EshFormula,ChAllocator<EshFormula>>::reserve((a1 + 8), a2);
  if (v4)
  {
    v4 = v4;
    do
    {
      result = std::vector<EshFormula,ChAllocator<EshFormula>>::push_back[abi:ne200100](a1 + 8, a3);
      a3 += 7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EshBasicTablePropVal<EshComputedRect>::init(uint64_t a1, unsigned int a2, uint64_t a3)
{
  LODWORD(v4) = a2;
  result = std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::reserve((a1 + 8), a2);
  if (v4)
  {
    v4 = v4;
    do
    {
      result = std::vector<EshComputedRect,ChAllocator<EshComputedRect>>::push_back[abi:ne200100]((a1 + 8), a3);
      a3 += 32;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EshGeometryProperties::addImpliedSegments(uint64_t this)
{
  if (!*(this + 40) && *(this + 32))
  {
    if (*(this + 136) != 4)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 7007;
  }

  return this;
}

uint64_t EshBasicTablePropVal<EshComputedValue>::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (((*(a1 + 16) - v2) >> 3) < a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return v2 + 8 * a2;
}

void EshGeometryProperties::~EshGeometryProperties(EshGeometryProperties *this)
{
  *this = &unk_286EC6170;
  EshGeometryProperties::cleanup(this);
}

{
  *this = &unk_286EC6170;
  EshGeometryProperties::cleanup(this);

  JUMPOUT(0x25F897000);
}

uint64_t EshGeometryProperties::cleanup(EshGeometryProperties *this)
{
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
  v4 = *(this + 11);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 11) = 0;
  v5 = *(this + 12);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 12) = 0;
  v6 = *(this + 13);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 13) = 0;
  v7 = *(this + 14);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 14) = 0;
  result = *(this + 15);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 15) = 0;
  return result;
}

void EshPathParamTable::~EshPathParamTable(EshPathParamTable *this)
{
  *this = &unk_286EC4E08;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC4E08;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void EshTablePropVal<EshPathCommand>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4F48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshTablePropVal<EshFormula>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC4FE8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void EshTablePropVal<EshComputedRect>::~EshTablePropVal(void *a1)
{
  *a1 = &unk_286EC5088;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

void sub_25D3021FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CMDrawingAction;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25D3027C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double TSUCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t EshFill::getOpacity(EshFill *this)
{
  v1 = *EshOpt::getProperty(this->var2, 0x182u);
  if (v1 >= 0x10000)
  {
    return 0x10000;
  }

  else
  {
    return v1;
  }
}

double NSTransposedRectWithSameCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  Height = CGRectGetHeight(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetWidth(v13);
  return MidX - Height * 0.5;
}

void PptExOleObjStg::~PptExOleObjStg(PptExOleObjStg *this)
{
  *this = &unk_286ED9E58;
  *(this + 4) = &unk_286ED9F00;
  OcBinaryData::~OcBinaryData((this + 56));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED9E58;
  *(this + 4) = &unk_286ED9F00;
  OcBinaryData::~OcBinaryData((this + 56));
}

void PptEshGroup::~PptEshGroup(PptEshGroup *this)
{
  PptEshClientContainer::~PptEshClientContainer((this + 368));
  EshGroup::~EshGroup(this);

  JUMPOUT(0x25F897000);
}

{
  PptEshClientContainer::~PptEshClientContainer((this + 368));

  EshGroup::~EshGroup(this);
}

void EshGroup::~EshGroup(EshGroup *this)
{
  *this = &unk_286EC7010;
  *(this + 34) = &unk_286EC70C0;
  v2 = *(this + 35);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 35) = 0;

  EshContentBase::~EshContentBase(this);
}

{
  EshGroup::~EshGroup(this);

  JUMPOUT(0x25F897000);
}

void EshColorMRU::~EshColorMRU(EshColorMRU *this)
{
  *this = &unk_286EC5B48;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC5B48;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void PptVBAInfoAtom::~PptVBAInfoAtom(PptVBAInfoAtom *this)
{
  *this = &unk_286EDD8F8;
  *(this + 4) = &unk_286EDD9A0;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD8F8;
  *(this + 4) = &unk_286EDD9A0;
}

void PptCommentIndex10Atom::~PptCommentIndex10Atom(PptCommentIndex10Atom *this)
{
  *this = &unk_286EE0570;
  *(this + 4) = &unk_286EE0618;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0570;
  *(this + 4) = &unk_286EE0618;
}

void XlChartBinaryReader::XlChartBinaryReader(XlChartBinaryReader *this, XlObjectFactory *a2)
{
  OcReader::OcReader(this + 125);
  XlBinaryReader::XlBinaryReader(this, &off_286ECCAA8, a2);
  *this = &unk_286ECC448;
  *(this + 1) = &unk_286ECC768;
  *(this + 2) = &unk_286ECC798;
  *(this + 250) = &unk_286ECCA08;
  *(this + 169) = 0;
  *(this + 171) = 0;
  *(this + 170) = 0;
  XlSubstreamProperties::XlSubstreamProperties((this + 1376));
  *(this + 204) = 0;
  *(this + 101) = 0u;
  *(this + 210) = 0;
  *(this + 1688) = 0u;
  *(this + 217) = 0;
  *(this + 109) = 0u;
  *(this + 1832) = 0u;
  *(this + 1556) = 0u;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  *(this + 113) = 0u;
  *(this + 228) = this + 1832;
  *(this + 116) = 0u;
  *(this + 231) = this + 1856;
  *(this + 118) = 0u;
  *(this + 235) = this + 1888;
  *(this + 1912) = 0u;
  *(this + 238) = this + 1912;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 241) = _D1;
  *(this + 1944) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  XlChartBinaryReader::reset(this);
}

void sub_25D3035D8(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 170) = v6;
    operator delete(v6);
  }

  XlBinaryReader::~XlBinaryReader(v1, &off_286ECCAA8);
  OcReader::~OcReader(v2);
  _Unwind_Resume(a1);
}

void XlBinaryReader::XlBinaryReader(XlBinaryReader *this, XlObjectFactory *a2, XlObjectFactory *a3)
{
  *this = &unk_286ED3138;
  *(this + 1) = &unk_286ED31C0;
  var1 = a2->var1;
  *(this + 2) = var1;
  *(this + *&var1[-2].var1 + 16) = a2[1].var0;
  var0 = a2->var0;
  *this = a2->var0;
  *(this + 1) = &unk_286ED2A40;
  *(this + 2) = a2[1].var1;
  *(*(var0 - 3) + this) = a2[2].var0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  XlEshBinaryReader::XlEshBinaryReader((this + 40));
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(this + 168) = v7;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 184) = v7;
  *(this + 200) = v7;
  *(this + 216) = v7;
  *(this + 232) = v7;
  *(this + 248) = v7;
  *(this + 264) = v7;
  *(this + 70) = -1;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 49) = -1;
  *(this + 200) = -1;
  *(this + 404) = 0xFFFFFFFFLL;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 110) = -1;
  *(this + 444) = 9;
  *(this + 112) = 0;
  XlWorksheetProperties::XlWorksheetProperties((this + 456));
  XlWorksheetProtection::XlWorksheetProtection((this + 600));
  XlCalculationProperties::XlCalculationProperties((this + 632));
  XlSortInfo::XlSortInfo((this + 664));
  XlDocumentInfo::XlDocumentInfo((this + 824));
  XlDocumentProtection::XlDocumentProtection((this + 848));
  XlFileProtection::XlFileProtection((this + 864));
  *(this + 126) = -1;
  XlDocumentProperties::XlDocumentProperties((this + 1016));
  XlSubstreamProperties::XlSubstreamProperties((this + 1136));
  *(this + 1304) = 0u;
  *(this + 1320) = 9;
  *(this + 166) = a3;
  *(this + 167) = 0;
  *(this + 1344) = 0;
  *(this + 289) = 0;
  v8 = *(*this - 24);
  EshObjectFactory = XlObjectFactory::getEshObjectFactory(a3);
  (*(*(this + v8) + 144))(this + v8, EshObjectFactory);
  v10 = XlObjectFactory::getEshObjectFactory(*(this + 166));
  EshGroupProperties::init(this + 40, v10);
}

void sub_25D303918(_Unwind_Exception *a1)
{
  XlDocumentProperties::~XlDocumentProperties((v1 + 127));
  XlFileProtection::~XlFileProtection((v1 + 108));
  XlSortInfo::~XlSortInfo((v1 + 83));
  XlCalculationProperties::~XlCalculationProperties((v1 + 79));
  XlWorksheetProperties::~XlWorksheetProperties((v2 + 36));
  v4 = v2[31];
  if (v4)
  {
    v1[53] = v4;
    operator delete(v4);
  }

  v5 = v1[43];
  if (v5)
  {
    v1[44] = v5;
    operator delete(v5);
  }

  v6 = v1[40];
  if (v6)
  {
    v1[41] = v6;
    operator delete(v6);
  }

  v7 = v2[16];
  if (v7)
  {
    v1[38] = v7;
    operator delete(v7);
  }

  XlEshBinaryReader::~XlEshBinaryReader((v1 + 5));
  _Unwind_Resume(a1);
}

void XlEshBinaryReader::XlEshBinaryReader(XlEshBinaryReader *this)
{
  EshBinaryReader::EshBinaryReader(this);
  *v1 = &unk_286ED3258;
  *(v1 + 93) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
}

void XlWorksheetProperties::XlWorksheetProperties(XlWorksheetProperties *this)
{
  *this = &unk_286ED1CA8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  OcText::OcText(this + 2);
  XlWorksheetProperties::setDefault(this);
}

void sub_25D303A84(_Unwind_Exception *a1)
{
  OcText::~OcText((v1 + 96));
  v4 = *(v1 + 72);
  if (v4)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void XlWorksheetProperties::setDefault(XlWorksheetProperties *this)
{
  *(this + 4) = 8;
  *(this + 3) = -1;
  *(this + 18) = 1;
  *(this + 20) = 0;
  *(this + 8) = 255;
  *(this + 7) = 0;
  *(this + 8) = 1;
  *(this + 36) = 16843009;
  *(this + 22) = -1;
  XlWorksheetProperties::clearVertPageBreaks(this);
  XlWorksheetProperties::clearHorizPageBreaks(this);
  OcText::clearBuffer(this + 2);
  *(this + 28) = 0;
}

void *XlWorksheetProperties::clearVertPageBreaks(void *this)
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
        this = (*(*this + 16))(this);
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

void *XlWorksheetProperties::clearHorizPageBreaks(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 16))(this);
        v2 = v1[6];
        v3 = v1[7];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[7] = v2;
  return this;
}

void OcText::clearBuffer(OcText *this)
{
  var5 = this->var5;
  if (var5)
  {
    bzero(var5, this->var4);
  }
}

void XlWorksheetProtection::XlWorksheetProtection(XlWorksheetProtection *this)
{
  *(this + 13) = 0;
  *this = &unk_286ED1CE8;
  *(this + 1) = 0;
  *(this + 13) = 0;
  *(this + 21) = 1;
  *(this + 25) = 1;
}

void XlCalculationProperties::XlCalculationProperties(XlCalculationProperties *this)
{
  *this = &unk_286ED0F08;
  *(this + 1) = 0x3F50624DD2F1A9FCLL;
  *(this + 4) = 0;
  *(this + 10) = 100;
  *(this + 22) = 0;
  *(this + 6) = 0;
  *(this + 28) = 1;
}

void XlSortInfo::XlSortInfo(XlSortInfo *this)
{
  *this = &unk_286ED1C38;
  v2 = (this + 64);
  OcText::OcText((this + 16));
  OcText::OcText(v2);
  OcText::OcText((this + 112));
  XlSortInfo::setDefault(this);
}

void sub_25D303D3C(_Unwind_Exception *a1)
{
  OcText::~OcText((v1 + 112));
  OcText::~OcText(v2);
  OcText::~OcText((v1 + 16));
  _Unwind_Resume(a1);
}

void XlSortInfo::setDefault(XlSortInfo *this)
{
  *(this + 11) = 0;
  *(this + 2) = 0;
  OcText::clearBuffer((this + 16));
  *(this + 8) = 0;
  OcText::clearBuffer((this + 64));
  *(this + 20) = 0;
  OcText::clearBuffer((this + 112));
  *(this + 32) = 0;
}

void XlDocumentInfo::XlDocumentInfo(XlDocumentInfo *this)
{
  *this = &unk_286ED1180;
  *(this + 1) = 0x607CC10D3;
  *(this + 2) = 0;
}

void XlDocumentProtection::XlDocumentProtection(XlDocumentProtection *this)
{
  *this = &unk_286ED1268;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
}

void XlFileProtection::XlFileProtection(XlFileProtection *this)
{
  *this = &unk_286ED1638;
  v2 = (this + 64);
  OcText::OcText((this + 16));
  OcText::OcText(v2);
  *(this + 2) = 0;
  *(this + 17) = 0;
  OcText::clearBuffer((this + 16));
  *(this + 8) = 0;
  OcText::clearBuffer(v2);
  *(this + 20) = 0;
  *(this + 56) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
}

void XlDocumentProperties::XlDocumentProperties(XlDocumentProperties *this)
{
  *this = &unk_286ED1230;
  v2 = (this + 92);
  OcText::OcText((this + 40));
  XlRef::XlRef(v2);
  *(this + 1) = 0x104B0076CLL;
  *(this + 2) = 0x10000;
  *(this + 22) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0;
  *(this + 6) = -1;
  OcText::clearBuffer((this + 40));
  *(this + 14) = 0;
  *(this + 102) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
}

void XlSubstreamProperties::XlSubstreamProperties(XlSubstreamProperties *this)
{
  *this = &unk_286ECD440;
  v2 = (this + 136);
  XlSheetInfo::XlSheetInfo((this + 8));
  XlPageProperties::XlPageProperties((this + 24));
  XlCellTableInfo::XlCellTableInfo(v2);
  XlSubstreamProperties::setDefault(this);
}

void sub_25D304000(_Unwind_Exception *a1)
{
  XlCellTableInfo::~XlCellTableInfo(v2);
  XlPageProperties::~XlPageProperties((v1 + 24));
  _Unwind_Resume(a1);
}

void XlPageProperties::XlPageProperties(XlPageProperties *this)
{
  *this = &unk_286ED1A00;
  *(this + 5) = 0;
  *(this + 6) = 0;
  XlPageProperties::setDefault(this);
}

__n128 XlPageProperties::setDefault(XlPageProperties *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    OcText::clearBuffer(v2);
    *(*(this + 5) + 16) = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {
    OcText::clearBuffer(v3);
    *(*(this + 6) + 16) = 0;
  }

  *(this + 28) = 0;
  *(this + 58) = 0x1000100640000;
  *(this + 33) = 1;
  *(this + 68) = 0;
  *(this + 18) = 0;
  *(this + 76) = 1;
  *(this + 77) = 0;
  *(this + 85) = 0;
  *(this + 43) = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 88) = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  __asm { FMOV            V0.2D, #0.75 }

  *(this + 24) = result;
  *(this + 52) = 0;
  return result;
}

void XlCellTableInfo::XlCellTableInfo(XlCellTableInfo *this)
{
  *this = &unk_286ED0FB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

double XlSubstreamProperties::setDefault(XlSubstreamProperties *this)
{
  XlSheetInfo::setDefault((this + 8));
  *(this + 4) = 32;
  XlPageProperties::setDefault((this + 24));
  XlCellTableInfo::setDefault(this + 136);
  result = NAN;
  *(this + 20) = -1;
  return result;
}

double XlSheetInfo::setDefault(XlSheetInfo *this)
{
  result = NAN;
  *(this + 1) = 0xFFFFFFFF00000010;
  return result;
}

uint64_t XlCellTableInfo::setDefault(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

XlEshObjectFactory *XlObjectFactory::getEshObjectFactory(XlObjectFactory *this)
{
  if (!this->var1)
  {
    operator new();
  }

  return this->var1;
}

double XlChartBinaryReader::reset(XlChartBinaryReader *this)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 193) = -1;
  *(this + 388) = -1;
  *(this + 1572) = -1;
  *(this + 1580) = -1;
  *(this + 1588) = -1;
  *(this + 1556) = 0u;
  *(this + 1596) = -1;
  *(this + 1604) = -1;
  *(this + 403) = -1;
  *(this + 209) = -1;
  *(this + 1640) = v2;
  *(this + 1656) = v2;
  *(this + 211) = *(this + 210);
  *(this + 213) = -1;
  *(this + 428) = -1;
  *(this + 216) = -1;
  *(this + 215) = -1;
  *(this + 218) = *(this + 217);
  *(this + 220) = -1;
  *(this + 442) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 241) = _D0;
  *(this + 242) = -4294901759;
  *(this + 498) = -1;
  *(this + 998) = 0;
  v8 = (this + 1832);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1824, *(this + 229));
  *(this + 228) = v8;
  *v8 = 0u;
  *(this + 244) = *(this + 243);
  *(this + 247) = *(this + 246);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1848, *(this + 232));
  *(this + 231) = this + 1856;
  *(this + 116) = 0u;
  *(this + 936) = 0;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 1904, *(this + 239));
  *(this + 238) = this + 1912;
  result = 0.0;
  *(this + 1912) = 0u;
  return result;
}

void sub_25D3044FC(void *a1, int a2)
{
  v3 = v2;

  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    EBConvertCsException(v6);
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

  JUMPOUT(0x25D30439CLL);
}

void sub_25D304584(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 2)
  {
    v3 = objc_begin_catch(exception_object);
    [v2 setStartErrorMessageFromException:v3];
    [v2 setIsFileStructuredStorage:{+[TCMessageContext isFileStructuredStorage](TCMessageContext, "isFileStructuredStorage")}];

    objc_end_catch();
    JUMPOUT(0x25D30439CLL);
  }

  _Unwind_Resume(exception_object);
}

void XlBinaryReader::start(XlBinaryReader *this, const void **a2)
{
  if (!*(this + 4))
  {
    XlDocumentProperties::setDefault((this + 1016));
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 8007;
}

void XlDocumentProperties::setDefault(XlDocumentProperties *this)
{
  *(this + 1) = 0x104B0076CLL;
  *(this + 2) = 0x10000;
  *(this + 22) = 0;
  *(this + 14) = 1;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 4) = 0;
  operator new[](2);
}

uint64_t XlDocumentInfo::setDefault(uint64_t this)
{
  *(this + 8) = 0x607CC10D3;
  *(this + 16) = 0;
  return this;
}

uint64_t XlDocumentProtection::setDefault(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

void XlFileProtection::setDefault(XlFileProtection *this)
{
  *(this + 32) = 0;
  *(this + 2) = 0;
  OcText::clearBuffer((this + 16));
  *(this + 8) = 0;
  OcText::clearBuffer((this + 64));
  *(this + 20) = 0;
}

double XlWorksheetProtection::setDefault(XlWorksheetProtection *this)
{
  *(this + 13) = 0;
  *(this + 1) = 0;
  *(this + 13) = 0;
  *&result = 0x100000001;
  *(this + 21) = 1;
  *(this + 25) = 1;
  return result;
}

uint64_t XlCalculationProperties::setDefault(uint64_t this)
{
  *(this + 8) = 0x3F50624DD2F1A9FCLL;
  *(this + 16) = 0;
  *(this + 20) = 100;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 28) = 1;
  return this;
}

uint64_t XlBinaryReader::start(SsrwOOStorage **this)
{
  hasChild = SsrwOOStorage::hasChild(this[4], L"Workbook");
  v3 = this[4];
  if (hasChild)
  {
    v4 = L"Workbook";
    goto LABEL_5;
  }

  v5 = SsrwOOStorage::hasChild(v3, "W");
  v3 = this[4];
  if (v5)
  {
    v4 = "W";
LABEL_5:
    SsrwOOStorage::openStream(v3, v4);
  }

  if (SsrwOOStorage::hasChild(v3, L"Book"))
  {
    exception = __cxa_allocate_exception(4uLL);
    v8 = 8003;
LABEL_11:
    *exception = v8;
  }

  if (!this[164])
  {
    exception = __cxa_allocate_exception(4uLL);
    v8 = 8004;
    goto LABEL_11;
  }

  result = (*&(*this)[7].var1[32])(this);
  this[167] = result;
  *(result + 76) = 0;
  return result;
}

void XlParserVisitor::XlParserVisitor(XlParserVisitor *this, SsrwOOStream *a2)
{
  *this = &unk_286ED1D70;
  XlStringParser::XlStringParser((this + 8));
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 76) = 1;
  *(this + 10) = -1;
  *(this + 11) = 0;
  *(this + 93) = 0;
  if (!a2)
  {
    ChLogFunction("NULL stream", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Parser/XlParserVisitor.cpp", 61);
  }
}

BOOL XlBinaryReader::readEncryptionInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v7 = *(a1 + 1312);
  v8 = 20;
  SsrwOOStream::seekFromStart(v7, 20);
  v9 = (*(v7->var0 + 10))(v7);
  if (v9 == 134)
  {
    v8 = 24;
    SsrwOOStream::seekFromStart(v7, 24);
    v9 = (*(v7->var0 + 10))(v7);
  }

  v10 = v9;
  if (v9 == 47)
  {
    SsrwOOStream::seekFromStart(v7, v8);
    XlHeader::XlHeader(&v13);
    XlParserVisitor::getHeader(*(a1 + 1336), &v13, 0);
    XlFilePass::XlFilePass(v12, &v13);
    (*(**(a1 + 1336) + 72))(*(a1 + 1336), v12);
    *a3 = v12[2] - 2;
    operator new[]();
  }

  *a4 = 8011;
  SsrwOOStream::seekFromStart(v7, 0);
  return v10 == 47;
}

uint64_t SsrwOOStream::seekFromStart(SsrwOOStream *this, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    (*(this->var0 + 2))(this, 0x7FFFFFFFLL, 0);
    v2 = (v2 - 0x7FFFFFFF);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this->var0 + 2);

  return v5(this, v2, v4);
}

void sub_25D304EC8(void *a1, int a2)
{
  if (a2 == 3)
  {
    v5 = __cxa_begin_catch(a1);
    EBConvertCsException(v5);
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

  JUMPOUT(0x25D304E74);
}

void sub_25D304F60(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    [v9 pauseReading];

    objc_end_catch();
    JUMPOUT(0x25D304E74);
  }

  JUMPOUT(0x25D304EECLL);
}

void XlBinaryReader::startGlobals(XlParserVisitor **this)
{
  if (this[4] && this[164] && this[167])
  {
    XlHeader::XlHeader(&v4);
    XlParserVisitor::getHeader(this[167], &v4, 0);
    if (v4.var1 == 2057)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(4uLL);
    v3 = 8004;
  }

  else
  {
    exception = __cxa_allocate_exception(4uLL);
    v3 = 1003;
  }

  *exception = v3;
}

void sub_25D305200(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D305134);
}

void XlHeader::XlHeader(XlHeader *this)
{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
}

uint64_t XlParserVisitor::getHeader(XlParserVisitor *this, XlHeader *a2, unsigned __int8 a3)
{
  *(this + 21) = (*(**(this + 2) + 40))(*(this + 2));
  v6 = (*(**(this + 2) + 72))(*(this + 2));
  v7 = (*(**(this + 2) + 80))(*(this + 2));
  *(this + 22) = 4;
  result = (*(**(this + 2) + 40))(*(this + 2));
  *(this + 20) = result + v7;
  *(this + 100) = v6 == 2129;
  if (v6 == 2132)
  {
    (*(**(this + 2) + 96))(*(this + 2));
    *(this + 23) = (*(**(this + 2) + 96))(*(this + 2));
    *(this + 24) = (*(**(this + 2) + 96))(*(this + 2));
    result = (*(**(this + 2) + 16))(*(this + 2), (*(this + 22) + *(this + 21)), 0);
LABEL_6:
    a2->var0 = v7;
    a2->var1 = v6;
    a2->var2 = a3;
    return result;
  }

  if (v6 == 2129)
  {
    (*(**(this + 2) + 16))(*(this + 2), 4, 1);
    LOWORD(v6) = (*(**(this + 2) + 72))(*(this + 2));
    result = (*(**(this + 2) + 80))(*(this + 2));
    v7 = result;
    *(this + 22) += 8;
    goto LABEL_6;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  a2->var1 = 0;
  a2->var0 = 0;
  return result;
}

void XlBof::XlBof(XlBof *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD8C0;
  *(v2 + 16) = 6;
  *(v2 + 24) = 1536;
  *(v2 + 28) = 0x7CC0DBB00000005;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlBof *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  XlBof::verifyExcelVersion(a2);
  *(a2 + 12) = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 7) = (*(**(this + 2) + 80))(*(this + 2));
  if (!*(a2 + 14))
  {
    v4 = 0;
    *(a2 + 8) = 0;
    goto LABEL_7;
  }

  *(a2 + 16) = (*(**(this + 2) + 72))(*(this + 2));
  if (*(a2 + 14) <= 4u)
  {
    v4 = 0;
    *(a2 + 17) = 0;
LABEL_7:
    *(a2 + 5) = 0;
    goto LABEL_8;
  }

  *(a2 + 17) = (*(**(this + 2) + 72))(*(this + 2));
  if (*(a2 + 14) == 8)
  {
    v4 = 0;
    goto LABEL_7;
  }

  *(a2 + 5) = (*(**(this + 2) + 96))(*(this + 2));
  v4 = (*(**(this + 2) + 96))(*(this + 2));
LABEL_8:
  *(a2 + 4) = v4;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlBof::verifyExcelVersion(XlBof *this)
{
  *(this + 14) = 0;
  v1 = (((*(this + 6) - 9) >> 9) | ((*(this + 6) - 9) << 7));
  if (v1 == 4)
  {
    v2 = *(this + 2);
    if (v2 == 8)
    {
      goto LABEL_11;
    }

    if (v2 == 16)
    {
      v2 = 9;
      goto LABEL_11;
    }

    return 0;
  }

  if (v1 == 2)
  {
    if (*(this + 2) != 6)
    {
      v2 = 4;
      goto LABEL_11;
    }

    return 0;
  }

  if (v1 != 1 || *(this + 2) != 6)
  {
    return 0;
  }

  v2 = 2;
LABEL_11:
  *(this + 14) = v2;
  return v2;
}

uint64_t XlParserVisitor::endRead(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  if (*(result + 100) == 1)
  {
    v3 = *(result + 80);
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = (*(a2 + 8) + *(result + 72));
  }

  result = (*(**(result + 16) + 16))(*(result + 16), v3, 0);
LABEL_6:
  *(v2 + 72) = 0;
  return result;
}

void sub_25D305860(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 72) = 0;
  __cxa_rethrow();
}

uint64_t XlChartBinaryReader::scanGlobals(XlChartBinaryReader *this)
{
  XlBinaryReader::scanGlobals(this);
  XlHeader::XlHeader(&v4);
  v4.var1 = 10;
  v4.var2 = *(this + 1320);
  result = XlParserVisitor::getNextUniqueHeader(*(this + 167), &v4);
  while (v4.var1 <= 0x808u)
  {
    switch(v4.var1)
    {
      case 0x8C:
        XlCountry::XlCountry(v3, &v4);
        XlParserVisitor::skipHeader(*(this + 167));
        (*(**(this + 167) + 224))(*(this + 167), v3);
        *(this + 257) = v3[4];
        break;
      case 0x92:
        *(this + 252) = (*(**(this + 164) + 40))(*(this + 164));
        break;
      case 0xA:
        return result;
    }

LABEL_15:
    result = XlParserVisitor::getNextUniqueHeader(*(this + 167), &v4);
  }

  if (v4.var1 == 2057)
  {
    operator new();
  }

  if (v4.var1 == 4188)
  {
    if ((*(this + 1344) & 1) == 0)
    {
      *(this + 253) = (*(**(this + 164) + 40))(*(this + 164));
    }

    goto LABEL_15;
  }

  if (v4.var1 != 4098)
  {
    goto LABEL_15;
  }

  return result;
}

void XlBinaryReader::scanGlobals(XlBinaryReader *this)
{
  XlHeader::XlHeader(&v19);
  v19.var1 = 2057;
  v19.var2 = *(this + 1320);
  XlParserVisitor::getNextUniqueHeader(*(this + 167), &v19);
  while (1)
  {
    while (1)
    {
      var1 = v19.var1;
      if (v19.var1 <= 0xDDu)
      {
        break;
      }

      if (v19.var1 <= 0x1B9u)
      {
        if (v19.var1 <= 0x13Cu)
        {
          if (v19.var1 > 0xE0u)
          {
            switch(v19.var1)
            {
              case 0xE1:
                *(this + 52) = (*(**(this + 164) + 40))(*(this + 164));
                break;
              case 0xEB:
                if ((*(this + 50) & 0x80000000) != 0)
                {
                  *(this + 50) = (*(**(this + 164) + 40))(*(this + 164));
                }

                break;
              case 0xFC:
                if (*(this + 19))
                {
                  ChLogFunction("string table not NULL", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Reader/XlBinaryReader.cpp", 3780);
                }

                operator new();
              default:
                goto LABEL_121;
            }

            goto LABEL_120;
          }

          if (v19.var1 == 222)
          {
            XlOleSize::XlOleSize(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 840))(*(this + 167), &v15);
            XlDocumentProperties::setOleSize(this + 1016, &v15);
            XlOleSize::~XlOleSize(&v15);
LABEL_99:
            if ((*(this + 49) & 0x80000000) != 0)
            {
              *(this + 49) = (*(**(this + 164) + 40))(*(this + 164));
            }

            goto LABEL_120;
          }

          if (v19.var1 == 224)
          {
            goto LABEL_76;
          }
        }

        else if (v19.var1 > 0x1ADu)
        {
          switch(v19.var1)
          {
            case 0x1AE:
              if ((*(this + 43) & 0x80000000) != 0)
              {
                v7 = (*(**(this + 164) + 40))(*(this + 164));
                *(this + 43) = v7;
                *(this + 45) = v7;
              }

              goto LABEL_120;
            case 0x1AF:
              XlProt4Rev::XlProt4Rev(&v15, &v19);
              XlParserVisitor::skipHeader(*(this + 167));
              (*(**(this + 167) + 904))(*(this + 167), &v15);
              *(this + 858) = v17[0];
              goto LABEL_120;
            case 0x1B7:
              XlRefreshAll::XlRefreshAll(&v15, &v19);
              XlParserVisitor::skipHeader(*(this + 167));
              (*(**(this + 167) + 960))(*(this + 167), &v15);
              *(this + 1035) = v17[0];
              goto LABEL_120;
          }
        }

        else
        {
          switch(v19.var1)
          {
            case 0x13D:
              operator new();
            case 0x160:
              XlUsesElfs::XlUsesElfs(&v15, &v19);
              XlParserVisitor::skipHeader(*(this + 167));
              (*(**(this + 167) + 1344))(*(this + 167), &v15);
              *(this + 1033) = v17[0];
              goto LABEL_120;
            case 0x1A9:
              *(this + 54) = (*(**(this + 164) + 40))(*(this + 164));
              goto LABEL_120;
          }
        }
      }

      else if (v19.var1 > 0x41Du)
      {
        if (v19.var1 <= 0x865u)
        {
          switch(v19.var1)
          {
            case 0x41E:
LABEL_82:
              *(this + 42) = (*(**(this + 164) + 40))(*(this + 164));
              break;
            case 0x443:
LABEL_76:
              v3 = (*(**(this + 164) + 40))(*(this + 164));
              LODWORD(v15) = v3;
              v4 = *(this + 41);
              if (v4 >= *(this + 42))
              {
                v5 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(this + 320, &v15);
              }

              else
              {
                *v4 = v3;
                v5 = (v4 + 1);
              }

              *(this + 41) = v5;
              break;
            case 0x809:
              operator new();
            default:
              goto LABEL_121;
          }

LABEL_120:
          var1 = v19.var1;
          goto LABEL_121;
        }

        switch(v19.var1)
        {
          case 0x866:
            if ((*(this + 51) & 0x80000000) != 0)
            {
              *(this + 51) = (*(**(this + 164) + 40))(*(this + 164));
            }

            goto LABEL_120;
          case 0x896:
            XlTheme::XlTheme(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1600))(*(this + 167), &v15);
            v8 = v18;
            if (v18)
            {
              v9 = XlChartRichTextPropsStream::giveXmlStream(&v15);
              XlDocumentProperties::takeThemeData(this + 1016, v9, v8);
            }

            XlTheme::~XlTheme(&v15);
            goto LABEL_120;
          case 0x105C:
            *(this + 253) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_120;
        }
      }

      else if (v19.var1 > 0x1C0u)
      {
        switch(v19.var1)
        {
          case 0x1C1:
            XlRecalcID::XlRecalcID(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1432))(*(this + 167), &v15);
            *(this + 260) = *v17;
            goto LABEL_120;
          case 0x218:
LABEL_81:
            *(this + 46) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_120;
          case 0x293:
            *(this + 47) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_120;
        }
      }

      else
      {
        switch(v19.var1)
        {
          case 0x1BA:
            operator new();
          case 0x1BC:
            XlProt4RevPass::XlProt4RevPass(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 912))(*(this + 167), &v15);
            *(this + 431) = v17[0];
            goto LABEL_120;
          case 0x1C0:
            *(this + 1032) = 1;
            goto LABEL_120;
        }
      }

LABEL_121:
      if (var1 != 10)
      {
        goto LABEL_122;
      }
    }

    if (v19.var1 <= 0x5Au)
    {
      break;
    }

    if (v19.var1 > 0x8Cu)
    {
      if (v19.var1 > 0xD2u)
      {
        switch(v19.var1)
        {
          case 0xD3:
            *(this + 1039) = 1;
            goto LABEL_120;
          case 0xD5:
            goto LABEL_99;
          case 0xDA:
            XlBookBool::XlBookBool(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 480))(*(this + 167), &v15);
            *(this + 1036) = v17[0];
            *(this + 1037) = *(v17 + 1);
            goto LABEL_120;
        }
      }

      else
      {
        switch(v19.var1)
        {
          case 0x8D:
            XlHideObj::XlHideObj(&v15, &v19);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 736))(*(this + 167), &v15);
            *(this + 276) = *v17;
            goto LABEL_120;
          case 0x92:
            *(this + 252) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_120;
          case 0xB8:
            *(this + 48) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_120;
        }
      }

      goto LABEL_121;
    }

    if (v19.var1 <= 0x84u)
    {
      if (v19.var1 == 91)
      {
        operator new();
      }

      if (v19.var1 == 92)
      {
        operator new();
      }

      goto LABEL_121;
    }

    if (v19.var1 != 133)
    {
      if (v19.var1 == 134)
      {
        *(this + 872) = 1;
        goto LABEL_120;
      }

      if (v19.var1 == 140)
      {
        XlCountry::XlCountry(&v15, &v19);
        XlParserVisitor::skipHeader(*(this + 167));
        (*(**(this + 167) + 224))(*(this + 167), &v15);
        *(this + 257) = *v17;
        goto LABEL_120;
      }

      goto LABEL_121;
    }

    if (!*(this + 20))
    {
      operator new();
    }

    XlParserVisitor::skipHeader(*(this + 167));
    if (v19.var1 == 133)
    {
      operator new();
    }

    v13 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    (*(*v13 + 16))(v13, -RecordDataOffset, 1);
    v19.var1 = 133;
LABEL_122:
    XlParserVisitor::getNextUniqueHeader(*(this + 167), &v19);
  }

  if (v19.var1 > 0x1Du)
  {
    if (v19.var1 > 0x30u)
    {
      switch(v19.var1)
      {
        case '1':
          v10 = (*(**(this + 164) + 40))(*(this + 164));
          LODWORD(v15) = v10;
          v11 = *(this + 44);
          if (v11 >= *(this + 45))
          {
            v12 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(this + 344, &v15);
          }

          else
          {
            *v11 = v10;
            v12 = (v11 + 1);
          }

          *(this + 44) = v12;
          goto LABEL_120;
        case '=':
          if ((*(this + 53) & 0x80000000) != 0)
          {
            *(this + 53) = (*(**(this + 164) + 40))(*(this + 164));
          }

          goto LABEL_120;
        case 'B':
          XlCodePage::XlCodePage(&v15, &v19);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 32))(*(this + 167), &v15);
          XlDocumentProperties::setCodePage(this + 1016, v17[0]);
          goto LABEL_120;
      }
    }

    else
    {
      switch(v19.var1)
      {
        case 0x1E:
          goto LABEL_82;
        case 0x22:
          Xl1904::Xl1904(&v15, &v19);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 16))(*(this + 167), &v15);
          if (LOBYTE(v17[0]))
          {
            v6 = 1904;
          }

          else
          {
            v6 = 1900;
          }

          XlDocumentProperties::setDateBase(this + 1016, v6);
          goto LABEL_120;
        case 0x2F:
          XlFilePass::XlFilePass(&v15, &v19);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 72))(*(this + 167), &v15);
          *(this + 488) = v17[0];
          XlFileProtection::setEncryptionInfo((this + 864), v18, v16 - 2);
          XlFilePass::~XlFilePass(&v15);
          goto LABEL_120;
      }
    }

    goto LABEL_121;
  }

  if (v19.var1 > 0x12u)
  {
    switch(v19.var1)
    {
      case 0x13:
        XlPassword::XlPassword(&v15, &v19);
        XlParserVisitor::skipHeader(*(this + 167));
        (*(**(this + 167) + 856))(*(this + 167), &v15);
        *(this + 430) = v17[0];
        goto LABEL_120;
      case 0x18:
        goto LABEL_81;
      case 0x19:
        XlWindowProtect::XlWindowProtect(&v15, &v19);
        XlParserVisitor::skipHeader(*(this + 167));
        (*(**(this + 167) + 1368))(*(this + 167), &v15);
        *(this + 857) = v17[0];
        goto LABEL_120;
    }

    goto LABEL_121;
  }

  if (v19.var1 == 14)
  {
    XlPrecision::XlPrecision(&v15, &v19);
    XlParserVisitor::skipHeader(*(this + 167));
    (*(**(this + 167) + 872))(*(this + 167), &v15);
    *(this + 1034) = v17[0];
    goto LABEL_120;
  }

  if (v19.var1 == 18)
  {
    XlProtect::XlProtect(&v15, &v19);
    XlParserVisitor::skipHeader(*(this + 167));
    (*(**(this + 167) + 920))(*(this + 167), &v15);
    *(this + 856) = v17[0];
    goto LABEL_120;
  }

  if (v19.var1 != 10)
  {
    goto LABEL_121;
  }
}

uint64_t XlParserVisitor::getNextUniqueHeader(XlParserVisitor *this, XlHeader *a2)
{
  var1 = a2->var1;
  do
  {
    XlParserVisitor::getHeader(this, a2, a2->var2);
    if (*(this + 100) == 1)
    {
      if ((*(this + 20) & 0x80000000) != 0)
      {
        continue;
      }

      v5 = *(**(this + 2) + 16);
    }

    else
    {
      v5 = *(**(this + 2) + 16);
    }

    v5();
  }

  while (a2->var1 == var1);
  if (*(this + 100) == 1)
  {

    return XlParserVisitor::seekCurrentRecord(this);
  }

  else
  {
    v7 = *(**(this + 2) + 16);

    return v7();
  }
}

void XlWriteAccess::XlWriteAccess(XlWriteAccess *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0D50;
  v2[2] = 0;
}

uint64_t XlParserVisitor::skipHeader(XlParserVisitor *this)
{
  v2 = *(this + 100);
  v3 = *(this + 2);
  if (v2 == 1)
  {
    v4 = *(this + 22);
  }

  else
  {
    v4 = 4;
  }

  return (*(*v3 + 16))(v3, v4, 1);
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlWriteAccess *a2)
{
  v4 = *(a2 + 2) + (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (*(**(this + 2) + 80))(*(this + 2));
  if (v5)
  {
    v6 = v5;
    if (*(a2 + 14) < 9u)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(**(this + 2) + 64))(*(this + 2));
    }

    v8 = XlStringParser::estimateSize((this + 8), *(this + 2), v6, v7);
    if ((*(**(this + 2) + 40))(*(this + 2)) + v8 <= v4 || *(a2 + 2) == 8228)
    {
      operator new();
    }

    ChLogFunction("Failure to parse XlWriteAccess", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Parser/XlParserVisitor.cpp", 7054);
  }

  else
  {
    (*(**(this + 2) + 16))(*(this + 2), v4, 0);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlStringParser::estimateSize(XlStringParser *this, SsrwOOStream *a2, int a3, char a4)
{
  v7 = (*(a2->var0 + 5))(a2);
  if ((a4 & 8) == 0)
  {
    v8 = 0;
    if ((a4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = (4 * (*(a2->var0 + 10))(a2)) | 2;
  if ((a4 & 4) != 0)
  {
LABEL_5:
    v8 += (*(a2->var0 + 13))(a2) + 4;
  }

LABEL_6:
  (*(a2->var0 + 2))(a2, v7, 0);
  return (v8 + (a3 << (a4 & 1)));
}

void XlString::XlString(XlString *this)
{
  *this = &unk_286ED0198;
  OcText::OcText((this + 8));
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 22) = -1;
  *(this + 12) = 0;
}

uint64_t XlStringParser::parse(XlStringParser *this, SsrwOOStream *a2, unsigned int a3, char a4, int a5, XlString *a6)
{
  XlString::reset(a6);
  v10 = a5 - (*(a2->var0 + 5))(a2);
  if ((a4 & 8) != 0)
  {
    v11 = (*(a2->var0 + 10))(a2);
    v10 = (v10 - 2);
    v12 = (4 * v11) | 2u;
    if ((a4 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if ((a4 & 4) != 0)
    {
LABEL_3:
      v13 = (*(a2->var0 + 13))(a2);
      v10 = (v10 - 4);
      v12 = v12 + v13 + 4;
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_6:
  v52 = 0;
  v44 = v13;
  if (*this == 1)
  {
    if ((a4 & 1) == 0)
    {
      *(a6 + 4) = 2;
      operator new[](a3 + 1);
    }

    *(a6 + 4) = 1;
    operator new[](2 * a3 + 2);
  }

  v45 = v11;
  v14 = a3;
  if (a3)
  {
    v15 = 0;
    v16 = a3;
    v46 = a3;
    v47 = a4;
    while (1)
    {
      if (a4)
      {
        if (v10 >= 2 * v16)
        {
          v20 = 2 * v16;
          if (*this)
          {
            v21 = v12;
            LODWORD(v51) = v16;
            (*(a2->var0 + 17))(a2, &v51, 2 * v15);
            v22 = v16 - v51;
            if (v16 > v51)
            {
              (*(a2->var0 + 2))(a2, (2 * v22), 1);
              LODWORD(v10) = v10 - 2 * v22;
              v46 -= v22;
            }

            LODWORD(v12) = v21;
            v14 = a3;
          }

          else
          {
            (*(a2->var0 + 2))(a2, 2 * v16, 1);
          }

          v12 = (v12 + v20);
          v10 = (v10 - v20);
          v15 += v16;
          v16 = 0;
        }

        else
        {
          if (*this)
          {
            LODWORD(v51) = v10 / 2;
            (*(a2->var0 + 17))(a2, &v51, 2 * v15);
          }

          else
          {
            (*(a2->var0 + 2))(a2, v10, 1);
          }

          v23 = (*(a2->var0 + 9))(a2);
          v24 = (*(a2->var0 + 10))(a2);
          if (v23 != 60)
          {
            goto LABEL_67;
          }

          v25 = v24;
          v15 += v10 >> 1;
          v16 -= v10 >> 1;
          a4 = (*(a2->var0 + 8))(a2);
          v26 = v12 + v10;
          v10 = (v25 - 1);
          v12 = (v26 + 5);
        }
      }

      else
      {
        v49 = v16;
        v17 = v12;
        v18 = v10 >= v16;
        v19 = v10 - v16;
        if (v18)
        {
          if (*this)
          {
            if (v47)
            {
              if (v49)
              {
                v36 = v49;
                v37 = v15;
                do
                {
                  *(2 * v37++) = (*(a2->var0 + 8))(a2);
                  --v36;
                }

                while (v36);
              }
            }

            else
            {
              v52 = v49;
              (*(a2->var0 + 7))(a2, v15, &v52);
            }
          }

          else
          {
            (*(a2->var0 + 2))(a2, v49, 1);
          }

          v12 = v17 + v49;
          v15 += v49;
          v10 = v19;
          v16 = 0;
        }

        else
        {
          if (*this)
          {
            if (v47)
            {
              if (v10)
              {
                v27 = v10;
                v28 = v15;
                do
                {
                  *(2 * v28++) = (*(a2->var0 + 8))(a2);
                  --v27;
                }

                while (v27);
              }
            }

            else
            {
              v52 = v10;
              (*(a2->var0 + 7))(a2, v15, &v52);
            }
          }

          else
          {
            (*(a2->var0 + 2))(a2, v10, 1);
          }

          v29 = (*(a2->var0 + 9))(a2);
          v30 = (*(a2->var0 + 10))(a2);
          if (v29 != 60)
          {
            goto LABEL_67;
          }

          v31 = v30;
          v15 += v10;
          v32 = (*(a2->var0 + 8))(a2);
          a4 = v32;
          if (*this == 1 && (v32 & 1) != 0 && (v47 & 1) == 0)
          {
            operator new[](2 * a3 + 2);
          }

          v34 = v49 - v10;
          v35 = v17 + v10;
          v10 = (v31 - 1);
          v16 = v34;
          v12 = (v35 + 5);
        }

        v14 = a3;
      }

      if (v15 >= v14)
      {
        goto LABEL_55;
      }
    }
  }

  v46 = 0;
LABEL_55:
  v38 = v45;
  *(a6 + 6) = v46;
  if (v45)
  {
    XlString::clearRichText(a6);
    v51 = 0;
    while (1)
    {
      if (v10 >= 4 * v38)
      {
        operator new[](4);
      }

      if ((v10 >> 2))
      {
        operator new[](4);
      }

      v39 = (*(a2->var0 + 9))(a2);
      v40 = (*(a2->var0 + 9))(a2);
      if (v39 != 60)
      {
        break;
      }

      v41 = (v10 >> 2);
      v12 = (v12 + 4);
      LODWORD(v10) = v40;
      v38 -= v41;
      if (!v38)
      {
        goto LABEL_64;
      }
    }

LABEL_67:
    XlString::reset(a6);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3003;
  }

LABEL_64:
  if (v44 >= 0xE)
  {
    operator new();
  }

  return v12;
}

uint64_t XlString::reset(XlString *this)
{
  OcText::clearBuffer((this + 8));
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 10) = 0;
  XlString::clearRichText(this);
  *(this + 22) = -1;
  result = *(this + 12);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 12) = 0;
  return result;
}

XlString *XlString::clearRichText(XlString *this)
{
  v1 = this;
  v2 = *(this + 7);
  if (((*(this + 8) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = MEMORY[0x25F896FE0](this, 0x1000C80BDFB0063);
        v2 = *(v1 + 7);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(v1 + 7);
    }

    while (v3 < ((*(v1 + 8) - v2) >> 3));
  }

  *(v1 + 8) = v2;
  return this;
}

OcText *OcText::takeBuffer(OcText *this, char *a2, unsigned int a3)
{
  result = OcText::setBuffer(this, a2, a3);
  this->var7 = 1;
  return result;
}

OcText *OcText::setBuffer(OcText *this, char *a2, unsigned int a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = this;
  if (this->var7)
  {
    this = this->var5;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }
  }

  v5->var5 = a2;
  v5->var7 = 0;
  v5->var4 = a3;
  return this;
}

uint64_t XlBoundSheet::setName(XlBoundSheet *this, XlString *a2)
{
  result = *(this + 2);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = a2;
  return result;
}

uint64_t OcText::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a2 + 16);
    *(a1 + 16) = v4;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    v6 = v4 + 1;
    isSingleByteEncoding = OcText::isSingleByteEncoding(v5);
    OcText::allocBuffer(a1, v6 << (isSingleByteEncoding ^ 1), 1);
    v8 = *(a2 + 16);
    v9 = *(a2 + 20);
    v10 = v8 << (OcText::isSingleByteEncoding(*(a2 + 8)) ^ 1);
    if (v9 < v10)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1004;
    }

    if (v8)
    {
      OcText::copyBuffer(a1, *(a2 + 24), v10);
    }
  }

  return a1;
}

void XlWriteAccess::~XlWriteAccess(XlWriteAccess *this)
{
  *this = &unk_286ED0D50;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0D50;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlString::~XlString(XlString *this)
{
  XlString::~XlString(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0198;
  XlString::reset(this);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  OcText::~OcText((this + 8));
}

void XlCodePage::XlCodePage(XlCodePage *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDB40;
  *(v2 + 16) = 1200;
}

uint64_t XlParserVisitor::visit(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 64))(*(a1 + 16)) == 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 96))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 18) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 26) = v4 & 1;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFBFFFCFFFDFFFFLL) & 0xFF01FF01FF01FF01;
  *(a2 + 27) = vuzp1_s8(v5, v5).u32[0];
  if (*(a2 + 8) == 18)
  {
    *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));
    *(a2 + 32) = (*(**(a1 + 16) + 72))(*(a1 + 16));
    *(a2 + 34) = (*(**(a1 + 16) + 72))(*(a1 + 16));
    v6 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  }

  else
  {
    v6 = 0;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
  }

  *(a2 + 36) = v6;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  if (*(a2 + 14))
  {
    v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
    *(a2 + 16) = v4 & 1;
    *(a2 + 17) = (v4 & 2) != 0;
    *(a2 + 18) = (v4 & 4) != 0;
    *(a2 + 19) = (v4 & 8) != 0;
  }

  *(a2 + 20) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 18) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 26) = v4 & 1;
  *(a2 + 28) = (v4 >> 1) & 1;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFBFFFCFFFDFFFELL) & 0xFF01FF01FF01FF01;
  *(a2 + 32) = vuzp1_s8(v5, v5).u32[0];
  *(a2 + 36) = (v4 & 0x40) != 0;
  *(a2 + 37) = (v4 & 0x80) != 0;
  *(a2 + 38) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 40) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 48) = (*(**(a1 + 16) + 120))(*(a1 + 16));
  *(a2 + 56) = (*(**(a1 + 16) + 120))(*(a1 + 16));
  *(a2 + 42) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = **(a1 + 16);
  if (*(a2 + 14) < 9u)
  {
    v5 = (*(v4 + 80))();
    v6 = (*(**(a1 + 16) + 80))(*(a1 + 16));
  }

  else
  {
    v5 = (*(v4 + 96))();
    v6 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  }

  if (v6 <= v5)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v6;
  }

  *(a2 + 16) = v5;
  *(a2 + 20) = v7;
  v8 = (*(**(a1 + 16) + 80))(*(a1 + 16));
  v9 = (*(**(a1 + 16) + 80))(*(a1 + 16));
  if (v9 <= v8)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  *(a2 + 24) = v8;
  *(a2 + 26) = v10;
  (*(**(a1 + 16) + 16))(*(a1 + 16), 2, 1);

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 18) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 24) = v4 & 1;
  *(a2 + 25) = (v4 & 2) != 0;
  *(a2 + 26) = (v4 & 4) != 0;
  *(a2 + 27) = (v4 & 0x1000) != 0;
  *(a2 + 28) = HIBYTE(v4) & 7;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 18) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 22) = v4 & 0x7FFF;
  *(a2 + 29) = v4 < 0;
  *(a2 + 24) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 16))(*(a1 + 16), 2, 1);
  v5 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 28) = v5 & 7;
  *(a2 + 30) = (v5 & 0x10) != 0;
  *(a2 + 31) = (v5 & 0x20) != 0;
  *(a2 + 32) = (v5 & 0x40) != 0;
  *(a2 + 33) = (v5 & 0x80) != 0;
  *(a2 + 37) = HIBYTE(v5) & 1;
  v6 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 26) = v6 & 0xFFF;
  *(a2 + 34) = (v6 & 0x1000) != 0;
  *(a2 + 35) = (v6 & 0x2000) != 0;
  *(a2 + 36) = (v6 & 0x4000) != 0;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 96))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 96))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 18) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 22) = (*(**(a1 + 16) + 64))(*(a1 + 16));
  *(a2 + 23) = (*(**(a1 + 16) + 64))(*(a1 + 16)) == 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 80))(*(a1 + 16));
  *(a2 + 26) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  if (*(a2 + 12) == 3)
  {
    (*(**(a1 + 16) + 64))(*(a1 + 16));
  }

  *(a2 + 28) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 120))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = (v4 & 2) != 0;
  *(a2 + 18) = (v4 & 4) != 0;
  *(a2 + 20) = (*(**(a1 + 16) + 96))(*(a1 + 16));
  *(a2 + 24) = (*(**(a1 + 16) + 96))(*(a1 + 16));
  *(a2 + 28) = (*(**(a1 + 16) + 96))(*(a1 + 16));
  *(a2 + 32) = (*(**(a1 + 16) + 104))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 20) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16)) & 1;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 64))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 16) = v4 & 1;
  v5 = vdup_n_s16(v4);
  v6 = vshl_u16(v5, 0xFFF5FFF6FFF7FFF8);
  v7 = *&vshl_u16((*&v5 & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v8 = vuzp1_s8(v7, v7);
  *(a2 + 17) = v8.i32[0];
  *(a2 + 21) = (v4 & 0x20) != 0;
  *(a2 + 22) = (v4 & 0x40) != 0;
  *(a2 + 23) = (v4 & 0x80) != 0;
  *(a2 + 24) = vuzp1_s8((*&v6 & 0xFF01FF01FF01FF01), v8).u32[0];
  *(a2 + 28) = (v4 & 0x1000) != 0;
  *(a2 + 29) = (v4 & 0x2000) != 0;
  *(a2 + 30) = (v4 & 0x4000) != 0;
  (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  *(a2 + 16) = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *a2 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  *(a2 + 4) = (*(**(a1 + 16) + 96))(*(a1 + 16));
  *(a2 + 8) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 12) = (*(**(a1 + 16) + 72))(*(a1 + 16));
  result = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a2 + 14) = result;
  return result;
}

void XlTabId::XlTabId(XlTabId *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0950;
  *(v2 + 16) = 1;
  *(v2 + 18) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlTabId *a2)
{
  v4 = *(a2 + 2);
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((v4 >> 1) >= 1)
  {
    operator new[](((v4 >> 1) << 48) >> 47);
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlTabId::setTabIdTable(XlTabId *this, __int16 *a2, __int16 a3)
{
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 3) = a2;
  *(this + 9) = a3;
  *(this + 16) = 1;
  return result;
}

uint64_t XlDocumentProperties::takeTabIdTable(uint64_t this, __int16 *a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a2 || a3 <= 0)
  {
    this = *(this + 32);
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C80BDFB0063);
    }

    *(v5 + 28) = v3;
    *(v5 + 32) = a2;
  }

  return this;
}

void XlTabId::~XlTabId(XlTabId *this)
{
  XlTabId::~XlTabId(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0950;
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

void XlWindowProtect::XlWindowProtect(XlWindowProtect *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0D10;
  *(v2 + 16) = 0;
}

void XlProtect::XlProtect(XlProtect *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF470;
  *(v2 + 16) = 0;
}

void XlPassword::XlPassword(XlPassword *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF200;
  *(v2 + 16) = 0;
}

void XlProt4Rev::XlProt4Rev(XlProt4Rev *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF3F0;
  *(v2 + 16) = 0;
}

void XlProt4RevPass::XlProt4RevPass(XlProt4RevPass *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF430;
  *(v2 + 16) = 0;
}

void XlHideObj::XlHideObj(XlHideObj *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE940;
  *(v2 + 16) = 0;
}

void Xl1904::Xl1904(Xl1904 *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD650;
  *(v2 + 16) = 0;
}

uint64_t XlDocumentProperties::setDateBase(uint64_t this, int a2)
{
  if (a2 != 1900 && a2 != 1904)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(this + 8) = a2;
  return this;
}

void XlPrecision::XlPrecision(XlPrecision *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF2F0;
  *(v2 + 16) = 1;
}

void XlRefreshAll::XlRefreshAll(XlRefreshAll *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF658;
  *(v2 + 16) = 0;
}

void XlBookBool::XlBookBool(XlBookBool *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD900;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
}

uint64_t XlParserVisitor::visit(uint64_t a1, _BYTE *a2)
{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  a2[16] = v4 & 1;
  a2[17] = (v4 & 4) != 0;
  a2[18] = (v4 & 8) != 0;

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  a2[16] = v4 & 1;
  a2[17] = (v4 & 0x10) != 0;
  a2[18] = (v4 & 0x20) != 0;
  a2[19] = (v4 & 0x40) != 0;
  a2[20] = (v4 & 0x80) != 0;
  a2[21] = HIBYTE(v4) & 1;
  a2[22] = (v4 & 0x400) != 0;
  a2[23] = (v4 & 0x4000) != 0;
  a2[24] = v4 < 0;

  return XlParserVisitor::endRead(a1, a2);
}

void XlUsesElfs::XlUsesElfs(XlUsesElfs *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0BD0;
  *(v2 + 16) = 0;
}

void XlBoundSheet::XlBoundSheet(XlBoundSheet *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECD9C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlBoundSheet *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 14) < 5u)
  {
    v4 = 0;
    *(a2 + 6) = 0;
    *(a2 + 8) = 0;
    v5 = 1;
  }

  else
  {
    *(a2 + 6) = (*(**(this + 2) + 96))(*(this + 2));
    *(a2 + 8) = (*(**(this + 2) + 64))(*(this + 2)) & 3;
    v4 = (*(**(this + 2) + 64))(*(this + 2));
    v5 = 7;
  }

  *(a2 + 7) = v4;
  if (!(*(**(this + 2) + 64))(*(this + 2)))
  {
    operator new();
  }

  v6 = *(a2 + 14);
  if (v6 < 9)
  {
    if (v6 != 8)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 8003;
    }

    v9 = *(a2 + 2);
    if (v9 != v5)
    {
      operator new[]((v9 - v5 + 1));
    }
  }

  else
  {
    v7 = (*(**(this + 2) + 64))(*(this + 2));
    v8 = *(a2 + 2);
    if (v8 > v5 + 1)
    {
      if ((v7 & 1) == 0)
      {
        operator new[]((v8 - v5));
      }

      operator new[]((v8 - (v5 + 1) + 2));
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

OcText *XlString::takeString(uint64_t a1, char *a2, unsigned int a3, int a4, int a5)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  result = OcText::takeBuffer((a1 + 8), a2, a3);
  *(a1 + 24) = a4;
  *(a1 + 16) = a5;
  return result;
}

uint64_t CsSimpleHeapVector<XlRecord>::pushBack(void *a1, uint64_t *a2)
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
    result = std::vector<XlRecord *,ChAllocator<XlRecord *>>::__emplace_back_slow_path<XlRecord *>(a1, &v8);
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

void XlCountry::XlCountry(XlCountry *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDC80;
  v2[2] = 0x100000001;
}

void XlRecalcID::XlRecalcID(XlRecalcID *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF570;
  *(v2 + 16) = -1;
}

void XlStringExtractor::XlStringExtractor(XlStringExtractor *this)
{
  *this = &unk_286ED3470;
  XlStringParser::XlStringParser((this + 8));
  *(this + 2) = 0;
  *(this + 3) = 0;
  XlString::XlString((this + 32));
  *(this + 17) = 0;
  *(this + 156) = 0;
  *(this + 148) = 0;
}

void XlSst::XlSst(XlSst *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0118;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 42) = 0u;
  *(v2 + 58) = 1;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlSst *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  *(a2 + 4) = (*(**(this + 2) + 96))(*(this + 2));
  *(a2 + 5) = (*(**(this + 2) + 96))(*(this + 2));
  v4 = (*(a2 + 2) - 8);
  do
  {
    v5 = (*(**(this + 2) + 40))(*(this + 2));
    XlSst::registerTablePart(a2, v5, v4);
    (*(**(this + 2) + 16))(*(this + 2), v4, 1);
    v6 = (*(**(this + 2) + 72))(*(this + 2));
    v4 = (*(**(this + 2) + 72))(*(this + 2));
  }

  while (v6 == 60);
  (*(**(this + 2) + 16))(*(this + 2), 4294967292, 1);
  *(a2 + 2) = (*(**(this + 2) + 40))(*(this + 2)) - *(this + 18);

  return XlParserVisitor::endRead(this, a2);
}

_DWORD *XlSst::registerTablePart(XlSst *this, int a2, int a3)
{
  v10 = a2;
  v5 = *(this + 4);
  v6 = *(this + 5);
  if (v5 >= v6)
  {
    v7 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int const&>(this + 24, &v10);
    a2 = v10;
    v6 = *(this + 5);
  }

  else
  {
    *v5 = a2;
    v7 = v5 + 1;
  }

  *(this + 4) = v7;
  v9 = a2 + a3;
  if (v7 >= v6)
  {
    result = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(this + 24, &v9);
  }

  else
  {
    *v7 = a2 + a3;
    result = v7 + 1;
  }

  *(this + 4) = result;
  return result;
}

void XlExtSst::XlExtSst(XlExtSst *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE480;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlExtSst *a2)
{
  v4 = *(a2 + 2) + 524286;
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v5 = (v4 >> 3);
  XlExtSst::setBucketCount(a2, v5);
  *(a2 + 13) = (*(**(this + 2) + 80))(*(this + 2));
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      Bucket = XlExtSst::getBucket(a2, i);
      *Bucket = (*(**(this + 2) + 104))(*(this + 2));
      *(Bucket + 4) = (*(**(this + 2) + 80))(*(this + 2));
      (*(**(this + 2) + 72))(*(this + 2));
    }
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlExtSst::setBucketCount(XlExtSst *this, unsigned int a2)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80789AEA99);
  }

  *(this + 2) = 0;
  *(this + 12) = a2;
  if (a2)
  {
    operator new[](8 * a2);
  }

  return result;
}

uint64_t XlExtSst::getBucket(XlExtSst *this, unsigned int a2)
{
  if (*(this + 12) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(this + 2) + 8 * a2;
}

void XlStringExtractor::setStringExtractor(XlStringExtractor *this, SsrwOOStream *a2, XlSst *a3, XlExtSst *a4)
{
  *(this + 2) = a2;
  if (a2)
  {
    *(this + 156) = *(a3 + 2);
    v6 = *(this + 17);
    if (v6)
    {
      MEMORY[0x25F896FE0](v6, 0x1000C8052888210);
    }

    *(this + 17) = 0;
    v7 = *(a3 + 4) - *(a3 + 3);
    v8 = v7 >> 2;
    *(this + 36) = v7 >> 2;
    if ((v7 >> 2) && (*(this + 40) & 0x80000000) == 0)
    {
      v9 = ((v7 << 30) >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      if ((v8 & 0x80000000) != 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      operator new[](v10);
    }

    *(this + 40) = 0;
    exception = __cxa_allocate_exception(4uLL);
    v12 = 3002;
  }

  else
  {
    exception = __cxa_allocate_exception(4uLL);
    v12 = 1004;
  }

  *exception = v12;
}

void XlExtSst::~XlExtSst(XlExtSst *this)
{
  *this = &unk_286ECE480;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80789AEA99);
  }

  *(this + 2) = 0;
  *(this + 12) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE480;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80789AEA99);
  }

  *(this + 2) = 0;
  *(this + 12) = 0;
}

void XlSst::~XlSst(XlSst *this)
{
  XlSst::~XlSst(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED0118;
  v2 = *(this + 3);
  *(this + 4) = v2;
  if (*(this + 58) == 1 && *(this + 6))
  {
    MEMORY[0x25F896FE0](*(this + 6), 0x1000C8077774924);
    v2 = *(this + 3);
  }

  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t XlDocumentProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      MEMORY[0x25F896FE0](v4, 0x1000C80BDFB0063);
    }

    *(a1 + 32) = 0;
    v5 = *(a2 + 28);
    if (v5 >= 1)
    {
      operator new[](2 * *(a2 + 28));
    }

    *(a1 + 28) = v5;
    OcText::clearBuffer((a1 + 40));
    OcText::operator=(a1 + 40, a2 + 40);
    v6 = XlRef::operator=(a1 + 92, a2 + 92);
    *(a1 + 102) = *(a2 + 102);
    v7 = *(a1 + 104);
    if (v7)
    {
      MEMORY[0x25F896FE0](v7, 0x1000C8077774924, v6);
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v8 = *(a2 + 112);
    if (v8 && *(a2 + 104))
    {
      *(a1 + 112) = v8;
      operator new[](v8);
    }
  }

  return a1;
}

double XlRef::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  return result;
}

void XlDocumentProperties::~XlDocumentProperties(XlDocumentProperties *this)
{
  *this = &unk_286ED1230;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 4) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 13) = 0;
  OcText::~OcText((this + 40));
}

{
  XlDocumentProperties::~XlDocumentProperties(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlDocumentPresentationTable *a2)
{
  XlHeader::XlHeader(&v7);
  if ((*(this + 53) & 0x80000000) != 0)
  {
LABEL_8:
    XlDocumentPresentationTable::setDefault(a2);
  }

  XlDocumentPresentationTable::clear(a2);
  (*(**(this + 164) + 16))(*(this + 164), *(this + 53), 0);
  XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
  if (v7.var1 != 61)
  {
    *(this + 53) = -1;
    goto LABEL_8;
  }

  do
  {
    if ((*(**(this + 166) + 16))(*(this + 166), 20))
    {
      operator new();
    }

    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
  }

  while (v7.var1 == 61);
  v4 = *(this + 164);
  RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
  return (*(*v4 + 16))(v4, -RecordDataOffset, 1);
}

void *XlDocumentPresentationTable::clear(void *this)
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

uint64_t XlChartObjectFactory::createObject(uint64_t a1, int a2)
{
  switch(a2)
  {
    case ':':
      operator new();
    case ';':
      operator new();
    case '<':
      operator new();
    case '=':
      operator new();
    case '>':
      operator new();
    case '?':
      operator new();
    case '@':
      operator new();
    case 'A':
      operator new();
    case 'B':
      operator new();
    case 'C':
      operator new();
    case 'D':
      operator new();
    case 'E':
      operator new();
    case 'F':
      operator new();
    case 'G':
      operator new();
    case 'H':
      operator new();
    case 'I':
      operator new();
    case 'J':
      operator new();
    case 'K':
      operator new();
    case 'L':
      operator new();
    case 'M':
      operator new();
    case 'N':
      operator new();
    case 'O':
      operator new();
    case 'P':
      operator new();
    case 'Q':
      operator new();
    case 'R':
      operator new();
    case 'S':
      operator new();
    case 'T':
      operator new();
    case 'U':
      operator new();
    case 'V':
      operator new();
    case 'W':
      operator new();
    default:

      return XlObjectFactory::createObject(a1, a2);
  }
}

void sub_25D30C134(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x25F897000](v1, v3);
  _Unwind_Resume(a1);
}

uint64_t XlObjectFactory::createObject(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      operator new();
    case 15:
      operator new();
    case 16:
      operator new();
    case 17:
      operator new();
    case 18:
      operator new();
    case 19:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
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
      operator new();
    case 33:
      operator new();
    case 34:
      operator new();
    case 35:
      operator new();
    case 36:
      operator new();
    case 37:
      operator new();
    case 38:
      operator new();
    case 39:
      operator new();
    case 40:
      operator new();
    case 41:
      operator new();
    case 42:
      operator new();
    case 43:
      operator new();
    case 44:
      operator new();
    case 45:
      operator new();
    case 46:
      operator new();
    case 47:
      operator new();
    case 48:
      operator new();
    case 49:
      operator new();
    case 50:
      operator new();
    case 52:
      operator new();
    case 53:
      operator new();
    case 54:
      operator new();
    case 55:
      operator new();
    case 56:
      operator new();
    case 57:
      operator new();
    default:
      ChLogFunction("Unknown object type passed to XlObjectFactory\n", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/ObjectModel/XlObjectFactory.cpp", 149);
      ChLogFunction("invalid object type", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/ObjectModel/XlObjectFactory.cpp", 153);
      return 0;
  }
}

void XlDocumentPresentation::XlDocumentPresentation(XlDocumentPresentation *this)
{
  *this = &unk_286ED11B8;
  *(this + 2) = 0x10000;
  *(this + 12) = 1;
  *(this + 14) = 0x2D000002580000;
  *(this + 22) = 937836120;
  *(this + 26) = 16842752;
}

uint64_t XlDocumentPresentation::setTabSelectInfo(uint64_t this, __int16 a2, __int16 a3)
{
  if (*(this + 8) < 0 || *(this + 10) <= 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(this + 8) = a2;
  *(this + 10) = a3;
  return this;
}

void *XlDocumentPresentationTable::appendDocumentPresentation(XlDocumentPresentationTable *this, XlDocumentPresentation *a2)
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
    result = std::vector<XlDocumentPresentation *,ChAllocator<XlDocumentPresentation *>>::__emplace_back_slow_path<XlDocumentPresentation * const&>(this + 1, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

uint64_t XlConditionalFormatTable::at(XlConditionalFormatTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

void XlDocumentPresentationTable::~XlDocumentPresentationTable(XlDocumentPresentationTable *this)
{
  *this = &unk_286ED11F8;
  XlDocumentPresentationTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlDocumentPresentationTable::~XlDocumentPresentationTable(this);

  JUMPOUT(0x25F897000);
}

void XlFontTable::XlFontTable(XlFontTable *this)
{
  *this = &unk_286EC9C88;
  OcText::OcText((this + 8));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 28) = 320;
  OcText::setBuffer(v2, "V", 8, 1);
  *(this + 6) = 7;
}

void sub_25D30D430(_Unwind_Exception *a1)
{
  CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(v2);
  OcText::~OcText(v1);
  _Unwind_Resume(a1);
}

OcText *OcText::setBuffer(OcText *a1, char *a2, int a3, int a4)
{
  result = OcText::setBuffer(a1, a2, 2 * a3);
  a1->var1 = a4;
  return result;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlFontTable *a2)
{
  XlHeader::XlHeader(&v11);
  CsSimpleHeapVector<XlRecord>::clear(a2 + 8);
  v5 = *(this + 43);
  v4 = *(this + 44);
  if (((v4 - v5) & 0x3FFFFFFFCLL) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      if (v7 != -1)
      {
        (*(**(this + 164) + 16))(*(this + 164), v7, 0);
        XlParserVisitor::getHeader(*(this + 167), &v11, *(this + 1320));
        if ((v11.var1 | 0x200) == 0x231)
        {
          operator new();
        }

        v8 = *(this + 164);
        RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
        (*(*v8 + 16))(v8, -RecordDataOffset, 1);
        v5 = *(this + 43);
        v4 = *(this + 44);
      }

      ++v6;
    }

    while (v6 < ((v4 - v5) >> 2));
  }

  result = XlFontTable::size(a2);
  if (!result)
  {
    XlFontTable::setDefault(a2);
  }

  return result;
}

void sub_25D30D640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

void *CsSimpleHeapVector<XlRecord>::clear(void *result)
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

void XlFont::XlFont(XlFont *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE680;
  *(v2 + 16) = 0;
  *(v2 + 24) = 2147418112;
  *(v2 + 28) = 400;
  *(v2 + 44) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFont *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  a2->var3 = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var7 = v4 & 1;
  a2->var12 = (v4 & 0x20) != 0;
  v5 = *&vshl_u16((*&vdup_n_s16(v4) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *&a2->var8 = vuzp1_s8(v5, v5).u32[0];
  if (!a2->var1.var2)
  {
    a2->var4 = -1;
    goto LABEL_8;
  }

  a2->var4 = (*(**(this + 2) + 72))(*(this + 2));
  if (a2->var1.var2 < 5u)
  {
LABEL_8:
    a2->var5 = 400;
    a2->var6 = 0;
    a2->var13 = 0;
    *&a2->var14 = 0;
    goto LABEL_9;
  }

  v6 = (*(**(this + 2) + 72))(*(this + 2));
  v7 = (*(**(this + 2) + 72))(*(this + 2));
  v8 = (*(**(this + 2) + 64))(*(this + 2));
  if (v8 == 35)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  a2->var5 = v6;
  a2->var6 = v7;
  a2->var13 = v9;
  a2->var14 = (*(**(this + 2) + 64))(*(this + 2));
  a2->var15 = (*(**(this + 2) + 64))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 1, 1);
LABEL_9:
  if ((*(**(this + 2) + 64))(*(this + 2)))
  {
    if (a2->var1.var2 >= 9u)
    {
      (*(**(this + 2) + 64))(*(this + 2));
    }

    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

uint64_t CsSimpleHeapVector<XlFont>::pushBack(void *a1, uint64_t *a2)
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
    result = std::vector<XlFont *,ChAllocator<XlFont *>>::__emplace_back_slow_path<XlFont *>(a1, &v8);
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

uint64_t XlFontTable::size(XlFontTable *this)
{
  v1 = (*(this + 9) - *(this + 8)) >> 3;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t XlFontTable::at(XlFontTable *this, unsigned int a2)
{
  if (a2 > 3)
  {
    --a2;
    v2 = *(this + 8);
    if (a2 < ((*(this + 9) - v2) >> 3))
    {
      return *(v2 + 8 * a2);
    }

LABEL_5:
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v2 = *(this + 8);
  if (((*(this + 9) - v2) >> 3) <= a2)
  {
    goto LABEL_5;
  }

  return *(v2 + 8 * a2);
}

void XlFontTable::~XlFontTable(void **this)
{
  *this = &unk_286EC9C88;
  v1 = (this + 1);
  CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(this + 8);
  OcText::~OcText(v1);
}

{
  *this = &unk_286EC9C88;
  v1 = (this + 1);
  CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(this + 8);
  OcText::~OcText(v1);

  JUMPOUT(0x25F897000);
}

void **CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(void **a1)
{
  CsSimpleHeapVector<XlRecord>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void XlFont::~XlFont(XlFont *this)
{
  this->var0 = &unk_286ECE680;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECE680;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
}

void XlContentFormatTable::XlContentFormatTable(XlContentFormatTable *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286EC9C38;
  v3 = (this + 32);
  do
  {
    OcText::OcText((this + v2 + 32));
    v2 += 48;
  }

  while (v2 != 1728);
  for (i = 0; i != 36; ++i)
  {
    if (i >= 0x17)
    {
      v6 = i + 14;
    }

    else
    {
      v6 = i;
    }

    BuiltInFmtString = XlContentFormatTable::getBuiltInFmtString(v4, v6);
    v8 = strlen(BuiltInFmtString);
    v4 = OcText::setBuffer(v3, BuiltInFmtString, v8 + 1);
    v3->var3 = v8;
    v3->var1 = 1252;
    ++v3;
  }
}

void sub_25D30DDB8(_Unwind_Exception *a1)
{
  v4 = (v1 + 214);
  v5 = -1728;
  do
  {
    OcText::~OcText(v4);
    v4 = (v6 - 48);
    v5 += 48;
  }

  while (v5);
  *v1 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(v2);
  _Unwind_Resume(a1);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlContentFormatTable *a2)
{
  XlHeader::XlHeader(&v7);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 42) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    if ((v7.var1 | 0x400) == 0x41E)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

void sub_25D30E01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

void XlFormat::XlFormat(XlFormat *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE700;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlParserVisitor::visit(XlParserVisitor *this, XlFormat *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (a2->var1.var2 < 3u)
  {
    v4 = -1;
  }

  else
  {
    a2->var3 = (*(**(this + 2) + 72))(*(this + 2));
    if (a2->var1.var2 >= 9u)
    {
      operator new();
    }

    v4 = -3;
  }

  (*(**(this + 2) + 64))(*(this + 2));
  v5 = a2->var1.var0 + v4;
  if (v5)
  {
    operator new[](v5 + 1);
  }

  operator new();
}

uint64_t XlStringParser::parse(XlStringParser *this, SsrwOOStream *a2, int a3, XlString *a4)
{
  XlString::reset(a4);
  v8 = (*(a2->var0 + 10))(a2);
  v9 = (*(a2->var0 + 8))(a2);
  return XlStringParser::parse(this, a2, v8, v9, a3, a4) + 3;
}

uint64_t OcText::OcText(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_286EC8C60;
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
  *(a1 + 8) = a3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  if (!a3 || (v6 = *(a2 + 8), v6 == a3))
  {
    v7 = *(a2 + 24);
    isSingleByteEncoding = OcText::isSingleByteEncoding(a3);
    OcText::copyBuffer(a1, v7, v5 << (isSingleByteEncoding ^ 1));
  }

  else if (v5)
  {
    OcText::convert((a1 + 24), *(a2 + 24), a3, v6, v5);
  }

  return a1;
}

uint64_t OcText::convert(void *a1, char *__s, int a3, int a4, uint64_t a5)
{
  v5 = 0xFFFFFFFFLL;
  if (a1 && __s)
  {
    if (a4 == a3)
    {
      *a1 = __s;
      return a5;
    }

    else
    {
      if (a3 == 1)
      {
        v6 = 2 * ChMapTextByCharacterEncoding2(a4, __s, a5, 0, 0, 1);
        if (v6)
        {
          operator new[]((v6 + 2));
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t ChMapTextByCharacterEncoding2(int a1, char *__s, unsigned int a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (__s)
  {
    v6 = a4;
    v7 = a3;
    if (!a4)
    {
      return v7;
    }

    v9 = __s;
    if (a3 == -1)
    {
      v7 = strlen(__s);
    }

    if (v7)
    {
      v11 = v7;
      v12 = v6;
      do
      {
        v13 = *v9++;
        *v12++ = v13;
        --v11;
      }

      while (v11);
    }

    if (a1 == 1252 || a1 == 3)
    {
      ChConvertANSICharactersToUnicode(v6, v7);
    }

    if (a6)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    if (v7 && (a6 & 1) == 0)
    {
      v15 = v7;
      do
      {
        v16 = *v6;
        if (v16 < 0x20 || v16 == 127)
        {
          v17 = v16 > 0xD;
          v18 = (1 << v16) & 0x2E00;
          if (v17 || v18 == 0)
          {
            *v6 = -3;
          }
        }

        ++v6;
        --v15;
      }

      while (v15);
      return v7;
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

void XlContentFormatTable::~XlContentFormatTable(void **this)
{
  *this = &unk_286EC9C38;
  for (i = 214; i != -2; i -= 6)
  {
    OcText::~OcText(&this[i]);
  }

  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  XlContentFormatTable::~XlContentFormatTable(this);

  JUMPOUT(0x25F897000);
}

void **CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(void **a1)
{
  CsSimpleHeapVector<XlRecord>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void XlFormat::~XlFormat(XlFormat *this)
{
  this->var0 = &unk_286ECE700;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ECE700;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlCellFormatTable *a2)
{
  XlHeader::XlHeader(&v9);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  v5 = *(this + 40);
  if (((*(this + 41) - v5) & 0x3FFFFFFFCLL) != 0)
  {
    v6 = 0;
    do
    {
      (*(**(this + 164) + 16))(*(this + 164), *(v5 + 4 * v6), 0);
      XlParserVisitor::getHeader(*(this + 167), &v9, *(this + 1320));
      if (v9.var1 == 1091 || v9.var1 == 224)
      {
        operator new();
      }

      v7 = *(this + 164);
      RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
      result = (*(*v7 + 16))(v7, -RecordDataOffset, 1);
      ++v6;
      v5 = *(this + 40);
    }

    while (v6 < ((*(this + 41) - v5) >> 2));
  }

  return result;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlXf *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (a2->var1.var2 <= 7u)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8003;
  }

  a2->var2 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var3 = (*(**(this + 2) + 72))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var24 = v4 & 1;
  a2->var25 = (v4 & 2) != 0;
  a2->var26 = (v4 & 4) != 0;
  a2->var27 = (v4 & 8) != 0;
  a2->var4 = v4 >> 4;
  v5 = (*(**(this + 2) + 72))(*(this + 2));
  a2->var28 = (v5 & 8) != 0;
  a2->var5 = v5 & 7;
  a2->var6 = (v5 >> 4) & 7;
  a2->var29 = (v5 & 0x80) != 0;
  var2 = a2->var1.var2;
  if (var2 < 9)
  {
    if (var2 >= 5)
    {
      v10 = (v5 >> 8) & 3;
      if (v10 == 1)
      {
        v10 = 255;
      }

      if (v10 == 2)
      {
        v10 = 90;
      }

      if (v10 == 3)
      {
        LOBYTE(v10) = -76;
      }

      a2->var7 = v10;
      a2->var8 = 0;
      *&a2->var30 = 0;
      a2->var9 = 0;
    }
  }

  else
  {
    a2->var7 = BYTE1(v5);
    v7 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var8 = v7 & 0xF;
    a2->var30 = (v7 & 0x10) != 0;
    a2->var31 = (v7 & 0x20) != 0;
    a2->var9 = v7 >> 6;
    if (a2->var26)
    {
      v8 = vand_s8(vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(v7), xmmword_25D700580))), 0x1000100010001);
      *&a2->var32 = vuzp1_s8(v8, v8).u32[0];
      a2->var36 = (v7 & 0x4000) == 0;
      v9 = (v7 >> 15) ^ 1;
    }

    else
    {
      v11 = *&vshl_u16(vdup_n_s16(v7), 0xFFF3FFF4FFF5FFF6) & 0xFFC1FFC1FFC1FFC1;
      *&a2->var32 = vuzp1_s8(v11, v11).u32[0];
      a2->var36 = (v7 & 0x4000) != 0;
      v9 = v7 >> 15;
    }

    a2->var37 = v9;
  }

  v12 = (*(**(this + 2) + 72))(*(this + 2));
  v13 = a2->var1.var2;
  if (v13 < 9)
  {
    if (v13 < 5)
    {
      goto LABEL_20;
    }

    a2->var22 = v12 & 0x7F;
    a2->var23 = (v12 >> 7) & 0x7F;
    a2->var38 = (v12 & 0x4000) != 0;
    v20 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var11 = v20 & 0x3F;
    a2->var14 = (v20 >> 6) & 7;
    a2->var19 = v20 >> 9;
    v21 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var15 = v21 & 7;
    *&a2->var12 = vand_s8(vshl_u32(vdup_n_s32(v21), 0xFFFFFFFAFFFFFFFDLL), 0x700000007);
    a2->var20 = v21 >> 9;
    v22 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var17 = v22 & 0x7F;
    v17 = v22 >> 7;
    v18 = 127;
    v19 = 69;
  }

  else
  {
    a2->var12 = v12 & 0xF;
    a2->var13 = v12 >> 4;
    a2->var14 = v12 >> 12;
    a2->var15 = (v12 >> 8) & 0xF;
    v14 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var17 = v14 & 0x7F;
    a2->var18 = (v14 >> 7) & 0x7F;
    a2->var10 = v14 >> 14;
    v15 = (*(**(this + 2) + 96))(*(this + 2));
    a2->var20 = v15 & 0x7F;
    a2->var19 = (v15 >> 7) & 0x7F;
    a2->var21 = (v15 >> 14) & 0x7F;
    a2->var16 = (v15 >> 21) & 0xF;
    a2->var11 = v15 >> 26;
    v16 = (*(**(this + 2) + 72))(*(this + 2));
    a2->var22 = v16 & 0x7F;
    a2->var23 = (v16 >> 7) & 0x7F;
    v17 = v16 >> 14;
    v18 = 1;
    v19 = 89;
  }

  *(&a2->var0 + v19) = v17 & v18;
LABEL_20:

  return XlParserVisitor::endRead(this, a2);
}

uint64_t CsSimpleHeapVector<XlXf>::pushBack(void *a1, uint64_t *a2)
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
    result = std::vector<XlXf *,ChAllocator<XlXf *>>::__emplace_back_slow_path<XlXf *>(a1, &v8);
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

void XlStyleTable::XlStyleTable(XlStyleTable *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286EC9B78;
  do
  {
    OcText::OcText((this + v2 + 32));
    v2 += 48;
  }

  while (v2 != 480);
  OcText::setBuffer((this + 32), "Normal", 7u);
  *(this + 12) = 6;
  *(this + 10) = 1252;
  OcText::setBuffer((this + 80), "RowLevel_n", 0xBu);
  *(this + 24) = 10;
  *(this + 22) = 1252;
  OcText::setBuffer((this + 128), "ColLevel_n", 0xBu);
  *(this + 36) = 10;
  *(this + 34) = 1252;
  OcText::setBuffer((this + 176), "Comma", 6u);
  *(this + 48) = 5;
  *(this + 46) = 1252;
  OcText::setBuffer((this + 224), "Currency", 9u);
  *(this + 60) = 8;
  *(this + 58) = 1252;
  OcText::setBuffer((this + 272), "Percent", 8u);
  *(this + 72) = 7;
  *(this + 70) = 1252;
  OcText::setBuffer((this + 320), "Comma[0]", 9u);
  *(this + 84) = 8;
  *(this + 82) = 1252;
  OcText::setBuffer((this + 368), "Currency[0]", 0xCu);
  *(this + 96) = 11;
  *(this + 94) = 1252;
  OcText::setBuffer((this + 416), "Hyperlink", 0xAu);
  *(this + 108) = 9;
  *(this + 106) = 1252;
  OcText::setBuffer((this + 464), "Followed Hyperlink", 0x13u);
  *(this + 120) = 18;
  *(this + 118) = 1252;
}

void sub_25D30F0BC(_Unwind_Exception *a1)
{
  v4 = (v1 + 58);
  v5 = -480;
  do
  {
    OcText::~OcText(v4);
    v4 = (v6 - 48);
    v5 += 48;
  }

  while (v5);
  *v1 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(v2);
  _Unwind_Resume(a1);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlStyleTable *a2)
{
  XlHeader::XlHeader(&v7);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 47) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    if (v7.var1 == 659)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

void XlStyle::XlStyle(XlStyle *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED01D0;
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  *(v2 + 28) = 0;
  *(v2 + 32) = 256;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlStyle *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  v4 = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 33) = (v4 & 0x8000) != 0;
  *(a2 + 12) = v4 & 0xFFF;
  if ((v4 & 0x80000000) == 0)
  {
    operator new();
  }

  v5 = (*(**(this + 2) + 64))(*(this + 2));
  v6 = v5;
  if (!XlStyleTable::isValidBuiltInStyleID(v5))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3002;
  }

  *(a2 + 7) = v6;
  *(a2 + 32) = (*(**(this + 2) + 64))(*(this + 2));

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlCellFormatTable::isStyle(XlCellFormatTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 77);
}

uint64_t XlStyleTable::getName(XlStyleTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(v2 + 8 * a2);
  if (*(v3 + 33) == 1)
  {
    return this + 48 * *(v3 + 28) + 32;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return v5 + 8;
}

uint64_t XlCellFormatTable::getParentCellFormat(XlCellFormatTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 20);
}

uint64_t XlRecord::XlRecord(uint64_t a1, const XlHeader *a2)
{
  *a1 = &unk_286ECF5F0;
  XlHeader::XlHeader((a1 + 8), a2 + 1);
  return a1;
}

void XlStyleTable::~XlStyleTable(void **this)
{
  *this = &unk_286EC9B78;
  for (i = 58; i != -2; i -= 6)
  {
    OcText::~OcText(&this[i]);
  }

  *this = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(this + 1);
}

{
  XlStyleTable::~XlStyleTable(this);

  JUMPOUT(0x25F897000);
}

void XlStyle::~XlStyle(XlStyle *this)
{
  *this = &unk_286ED01D0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED01D0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void **CsSimpleHeapVector<XlXf>::~CsSimpleHeapVector(void **a1)
{
  CsSimpleHeapVector<XlRecord>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlPivotInfoTable *a2)
{
  result = XlConditionalFormatTable::clear(a2);
  if ((*(this + 49) & 0x80000000) == 0)
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
    if (v5.var1 == 213)
    {
      (*(**(this + 166) + 16))(*(this + 166), 39);
      XlRecordFactory::createRecord(&v5, v4);
    }

    *(this + 49) = -1;
  }

  return result;
}

void sub_25D30FB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *XlConditionalFormatTable::clear(void *this)
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

void XlColorTable::XlColorTable(XlColorTable *this)
{
  *(this + 40) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286ED1030;
  *(this + 6) = 0;
}

void XlBinaryReader::read(XlBinaryReader *this, XlColorTable *a2)
{
  if (*(this + 252) >= 1)
  {
    XlHeader::XlHeader(&v3);
    (*(**(this + 164) + 16))(*(this + 164), *(this + 252), 0);
    XlParserVisitor::getHeader(*(this + 167), &v3, *(this + 1320));
    operator new();
  }

  XlColorTable::setDefault(a2);
}

void XlColorTable::setDefault(XlColorTable *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  *(this + 12) = 56;
  operator new[](224);
}

void XlColorTable::~XlColorTable(XlColorTable *this)
{
  *this = &unk_286ED1030;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8052888210);
  }

  *(this + 4) = 0;
}

{
  XlColorTable::~XlColorTable(this);

  JUMPOUT(0x25F897000);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlSheetInfoTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  v4 = *(this + 20);
  if (v4)
  {
    if (((*(v4 + 16) - *(v4 + 8)) & 0x7FFFFFFF8) != 0)
    {
      operator new();
    }
  }

  return result;
}

void sub_25D3104DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void XlBoundSheet::XlBoundSheet(XlBoundSheet *this)
{
  XlRecord::XlRecord(this, 133, 7, 9);
  *v1 = &unk_286ECD9C0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
}

void XlRecord::XlRecord(XlRecord *this, __int16 a2, int a3, char a4)
{
  *this = &unk_286ECF5F0;
  XlHeader::XlHeader(this + 1);
  *(this + 6) = a2;
  *(this + 2) = a3;
  *(this + 14) = a4;
}

XlString *XlString::operator=(XlString *this, uint64_t a2)
{
  if (a2 != this)
  {
    XlString::reset(this);
    OcText::operator=(this + 8, a2 + 8);
    *(this + 22) = *(a2 + 88);
    XlString::clearRichText(this);
    if (((*(a2 + 64) - *(a2 + 56)) & 0x7FFFFFFF8) != 0)
    {
      operator new[](4);
    }

    if (*(a2 + 80))
    {
      operator new();
    }
  }

  return this;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlLinkTable *a2)
{
  XlHeader::XlHeader(&v8);
  result = XlLinkTable::clear(a2);
  v5 = *(this + 43);
  if ((v5 & 0x80000000) == 0)
  {
    *(this + 45) = v5;
    if (v5)
    {
      do
      {
        v6 = (*(**(this + 166) + 16))(*(this + 166), 29);
        if (v6)
        {
          v7 = v6;
          *(v6 + 28) = 0;
          (*(*this + 208))(this, v6);
          XlLinkTable::appendLink(a2, v7);
        }
      }

      while (*(this + 45) > 0);
    }

    result = XlParserVisitor::getHeader(*(this + 167), &v8, *(this + 1320));
    if (v8.var1 == 23)
    {
      operator new();
    }
  }

  return result;
}

void *XlLinkTable::clear(XlLinkTable *this)
{
  XlLinkLookupTable::clearLookupTable(this + 8);

  return XlLinkTable::clearLinkTable(this);
}

uint64_t XlLinkLookupTable::clearLookupTable(uint64_t this)
{
  v1 = this;
  if (*(this + 8))
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
          this = MEMORY[0x25F897000](this, 0x1000C40274DC3F3);
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

void *XlLinkTable::clearLinkTable(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[6];
        v3 = v1[7];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[7] = v2;
  return this;
}

void XlNameTable::XlNameTable(XlNameTable *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_286EC9E48;
  do
  {
    OcText::OcText((this + v2 + 32));
    v2 += 48;
  }

  while (v2 != 672);
}

void sub_25D310BAC(_Unwind_Exception *a1)
{
  v5 = v3;
  if (v5)
  {
    v7 = (v4 - 16);
    v8 = -v5;
    do
    {
      OcText::~OcText(v7);
      v7 = (v9 - 48);
      v8 += 48;
    }

    while (v8);
  }

  *v1 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(v2);
  _Unwind_Resume(a1);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlNameTable *a2)
{
  XlHeader::XlHeader(&v7);
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 46) & 0x80000000) == 0)
  {
    (*(**(this + 164) + 16))(*(this + 164));
    XlParserVisitor::getHeader(*(this + 167), &v7, *(this + 1320));
    if ((v7.var1 | 0x200) == 0x218)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

void sub_25D310DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    XlFontTable::setDefault();
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlBinaryReader::getSheetNames(uint64_t a1, void *a2)
{
  v3 = *(a1 + 160);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8008;
  }

  return XlSheetInfoTable::getSheetNames(v3, a2);
}

uint64_t XlSheetInfoTable::getSheetNames(uint64_t result, void *a2)
{
  v3 = result;
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 48;
    v7 = (v4 - 48);
    v8 = (v4 - 48);
    do
    {
      v9 = *v8;
      v8 -= 6;
      result = (*v9)(v7);
      v6 -= 48;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  if (((*(v3 + 16) - *(v3 + 8)) & 0x7FFFFFFF8) != 0)
  {
    operator new();
  }

  return result;
}

void sub_25D311010(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v3;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XlSheetInfoTable::getSheetName(XlSheetInfoTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(*(v2 + 8 * a2) + 16);
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return v3 + 8;
}

double XlFormulaProcessor::XlFormulaProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286ED2738;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *&result = 16;
  *(a1 + 72) = 16;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return result;
}

void XlFormulaParser::XlFormulaParser(XlFormulaParser *this, char a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 10;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 60) = -1;
  *(this + 17) = 0;
  *(this + 72) = a2;
  *(this + 73) = 0;
  *(this + 19) = 0;
  *(this + 80) = 0;
  *(this + 82) = 0;
}

void XlStringTable::XlStringTable(XlStringTable *this)
{
  *this = &unk_286ED1C70;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
}

void *XlBinaryReader::read(XlBinaryReader *this, XlStringTable *a2)
{
  v4 = *(a2 + 12);
  result = XlStringTable::clear(a2);
  v6 = *(this + 19);
  if (v6)
  {
    if (v4)
    {
      if (!*(a2 + 4))
      {
        return result;
      }

      v7 = *(a2 + 5);
      v8 = *(v6 + 160);
      if (v7 > v8)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      v8 = *(v6 + 160);
    }

    if (v7 < v8)
    {
      operator new();
    }
  }

  return result;
}

void sub_25D311500(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void *XlStringTable::clear(void *this)
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

XlStringExtractor *XlBinaryReader::read(XlBinaryReader *this, XlString *a2)
{
  v2 = *(a2 + 22);
  if (v2 < 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  XlString::reset(a2);
  result = *(this + 19);
  if (result)
  {

    return XlStringExtractor::getString(result, v2, a2);
  }

  return result;
}

uint64_t XlStringExtractor::getString(XlStringExtractor *this, int a2, XlString *a3)
{
  v4 = *(this + 2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    v21 = 1003;
    goto LABEL_20;
  }

  if (a2 < 0 || *(this + 40) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v21 = 1005;
    goto LABEL_20;
  }

  v7 = (*(*v4 + 40))(v4);
  v8 = *(this + 38);
  v9 = a2 / v8;
  v10 = a2 / v8;
  v11 = *(*(this + 3) + 16 * v10 + 8);
  if (!v11)
  {
    if (!(v8 >> 30))
    {
      operator new[](4 * v8);
    }

    exception = __cxa_allocate_exception(4uLL);
    v21 = 1001;
LABEL_20:
    *exception = v21;
  }

  v12 = a2 % v8;
  v13 = *(v11 + 4 * v12);
  if (v13 == -1)
  {
    XlStringExtractor::setStringLocation(this, v9, v12);
    v13 = *(*(*(this + 3) + 16 * v9 + 8) + 4 * v12);
  }

  v14 = XlStringExtractor::tableChunkBoundary(this, v13);
  if (v14 < 0)
  {
    v13 = (v13 + 4);
    v14 = XlStringExtractor::tableChunkBoundary(this, v13);
  }

  v15 = v14;
  (*(**(this + 2) + 16))(*(this + 2), v13, 0);
  v16 = XlStringParser::parse((this + 8), *(this + 2), v15, a3);
  result = (*(**(this + 2) + 16))(*(this + 2), v7, 0);
  if (v12 < *(this + 38) - 1)
  {
    v18 = *(*(this + 3) + 16 * v10 + 8) + 4 * v12;
    if (*(v18 + 4) == -1)
    {
      v19 = v16 + v13;
      if (v16 + v13 == v15)
      {
        v19 = v16 + v13 + 4;
      }

      *(v18 + 4) = v19;
    }
  }

  return result;
}

uint64_t XlStringExtractor::tableChunkBoundary(XlStringExtractor *this, int a2)
{
  v2 = *(this + 17);
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v8 = 1003;
LABEL_16:
    *exception = v8;
  }

  if (*v2 > a2)
  {
    goto LABEL_14;
  }

  v3 = *(this + 36);
  if (v2[v3 - 1] < a2)
  {
    goto LABEL_14;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (v2 + 1);
    while (*(v5 - 1) <= a2)
    {
      result = *v5;
      if (result > a2)
      {
        return result;
      }

      v5 += 2;
      v4 += 2;
      if (v3 <= v4)
      {
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = 0;
LABEL_11:
  if (v4 == v3)
  {
LABEL_14:
    exception = __cxa_allocate_exception(4uLL);
    v8 = 1005;
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

void *XlSupBook::appendTabName(XlSupBook *this, XlString *a2)
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
    result = std::vector<XlString *,ChAllocator<XlString *>>::__emplace_back_slow_path<XlString * const&>(this + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 4) = result;
  return result;
}

uint64_t XlStringTable::getDocumentStringCount(XlStringTable *this)
{
  if (*(this + 12) == 1)
  {
    return *(this + 2);
  }

  else
  {
    return (*(this + 4) - *(this + 3)) >> 3;
  }
}

uint64_t XlExternSheet::getExternRef(XlExternSheet *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 3) <= a2 || (result = *(v2 + 8 * a2)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return result;
}

void XlStringTable::~XlStringTable(XlStringTable *this)
{
  *this = &unk_286ED1C70;
  XlStringTable::clear(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  XlStringTable::~XlStringTable(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlBinaryReader::getSheetCount(XlBinaryReader *this)
{
  v1 = *(this + 20);
  if (!v1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8008;
  }

  return (*(v1 + 16) - *(v1 + 8)) >> 3;
}

uint64_t XlSheetInfoTable::getSheetType(XlSheetInfoTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 28);
}

uint64_t XlSheetInfoTable::getSheetHiddenState(XlSheetInfoTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 32);
}

void XlPivotInfoTable::~XlPivotInfoTable(XlPivotInfoTable *this)
{
  *this = &unk_286ED1A78;
  XlConditionalFormatTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XlPivotInfoTable::~XlPivotInfoTable(this);

  JUMPOUT(0x25F897000);
}

_DWORD *XlBinaryReader::setSheet(_DWORD *this, unsigned int a2)
{
  if (this[110] != a2)
  {
    v3 = this;
    (*(*this + 664))(this);
    v4 = *(v3 + 164);
    SheetLocation = XlSheetInfoTable::getSheetLocation(*(v3 + 20), a2);
    (*(*v4 + 16))(v4, SheetLocation, 0);
    XlHeader::XlHeader(&v6);
    XlParserVisitor::getHeader(*(v3 + 167), &v6, *(v3 + 1320));
    operator new();
  }

  return this;
}

void XlChartBinaryReader::resetWorksheet(XlChartBinaryReader *this)
{
  *(this + 170) = *(this + 169);
  XlSubstreamProperties::setDefault((this + 1376));

  XlBinaryReader::resetWorksheet(this);
}

void XlBinaryReader::resetWorksheet(XlBinaryReader *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 46) = 0;
  v3 = *(this + 47);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 47) = 0;
  v4 = *(this + 48);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 48) = 0;
  XlWorksheetProperties::setDefault((this + 456));
  XlWorksheetProtection::setDefault((this + 600));
  XlSortInfo::setDefault((this + 664));
  XlCalculationProperties::setDefault(this + 632);
  XlSubstreamProperties::setDefault((this + 1136));
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(this + 220) = v5;
  *(this + 110) = -1;
  *(this + 53) = -1;
  *(this + 49) = -1;
  *(this + 101) = -1;
  *(this + 200) = -1;
  *(this + 236) = v5;
  *(this + 252) = v5;
  *(this + 268) = v5;
  *(this + 71) = -1;
  *(this + 144) = 0;
  *(this + 290) = 0;
  if (((*(this + 53) - *(this + 52)) & 0x7FFFFFFF8) != 0)
  {
    XlBinaryReader::clearWaitingCells(this);
  }

  v6 = *(this + 37);
  if (((*(this + 38) - v6) & 0x3FFFFFFFCLL) != 0)
  {
    *(this + 38) = v6;
  }
}

uint64_t XlSheetInfoTable::getSheetLocation(XlSheetInfoTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 24);
}

XlBinaryReader *XlBinaryReader::scanWorksheet(XlBinaryReader *this)
{
  v2 = this + 476;
  XlHeader::XlHeader(&v23);
  v23.var2 = *(this + 444);
  v23.var1 = 2057;
  result = XlParserVisitor::getNextUniqueHeader(*(this + 167), &v23);
  while (v23.var1 > 0x83u)
  {
    if (v23.var1 > 0x1B1u)
    {
      if (v23.var1 > 0x808u)
      {
        if (v23.var1 > 0x867u)
        {
          if (v23.var1 > 0x8C0u)
          {
            if (v23.var1 == 2241 || v23.var1 == 2242)
            {
              *(this + 288) = 1;
              goto LABEL_162;
            }

            goto LABEL_157;
          }

          if (v23.var1 == 2152)
          {
            if ((*(this + 62) & 0x80000000) != 0)
            {
              *(this + 62) = (*(**(this + 164) + 40))(*(this + 164));
            }
          }

          else
          {
            if (v23.var1 != 2162)
            {
              goto LABEL_157;
            }

            if ((*(this + 71) & 0x80000000) != 0)
            {
              *(this + 71) = (*(**(this + 164) + 40))(*(this + 164));
            }
          }
        }

        else
        {
          if (v23.var1 <= 0x865u)
          {
            if (v23.var1 == 2057)
            {
              (*(**(this + 164) + 40))(*(this + 164));
              XlParserVisitor::skipHeader(*(this + 167));
              operator new();
            }

            if (v23.var1 == 2146)
            {
              XlSheetTab::XlSheetTab(v15, &v23);
              XlParserVisitor::skipHeader(*(this + 167));
              (*(**(this + 167) + 1440))(*(this + 167), v15);
              *(this + 250) = WORD2(v16);
              goto LABEL_162;
            }

            goto LABEL_157;
          }

          if (v23.var1 == 2150)
          {
            if ((*(this + 70) & 0x80000000) != 0)
            {
              *(this + 70) = (*(**(this + 164) + 40))(*(this + 164));
            }
          }

          else
          {
            XlSheetProtection::XlSheetProtection(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1448))(*(this + 167), v15);
            *(v2 + 135) = v16;
            *(v2 + 143) = v17;
            *(this + 623) = v18;
            *(this + 312) = v19;
          }
        }
      }

      else if (v23.var1 > 0x207u)
      {
        if (v23.var1 > 0x224u)
        {
          if (v23.var1 == 549)
          {
LABEL_99:
            XlDefaultRowHeight::XlDefaultRowHeight(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 56))(*(this + 167), v15);
            *(this + 236) = WORD2(v16);
            *(this + 121) = v16;
            goto LABEL_162;
          }

          if (v23.var1 != 574)
          {
            goto LABEL_157;
          }

LABEL_90:
          if ((*(this + 56) & 0x80000000) != 0)
          {
            *(this + 56) = (*(**(this + 164) + 40))(*(this + 164));
          }
        }

        else
        {
          if (v23.var1 != 520)
          {
            if (v23.var1 == 523)
            {
              operator new();
            }

            goto LABEL_157;
          }

          if ((*(this + 101) & 0x80000000) != 0)
          {
            *(this + 101) = (*(**(this + 164) + 40))(*(this + 164));
          }
        }
      }

      else
      {
        if (v23.var1 > 0x1B9u)
        {
          if (v23.var1 == 442)
          {
            operator new();
          }

          if (v23.var1 == 512)
          {
            operator new();
          }

          goto LABEL_157;
        }

        if (v23.var1 == 434)
        {
          if ((*(this + 60) & 0x80000000) != 0)
          {
            *(this + 60) = (*(**(this + 164) + 40))(*(this + 164));
          }
        }

        else
        {
          if (v23.var1 != 440)
          {
            goto LABEL_157;
          }

          if ((*(this + 64) & 0x80000000) != 0)
          {
            *(this + 64) = (*(**(this + 164) + 40))(*(this + 164));
          }
        }
      }

      goto LABEL_162;
    }

    if (v23.var1 > 0xDCu)
    {
      if (v23.var1 <= 0xECu)
      {
        if (v23.var1 <= 0xE8u)
        {
          if (v23.var1 == 221)
          {
            XlScenProtect::XlScenProtect(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1000))(*(this + 167), v15);
            *(this + 609) = v16;
            goto LABEL_162;
          }

          if (v23.var1 == 229)
          {
            v4 = (*(**(this + 164) + 40))(*(this + 164));
            v15[0] = v4;
            v5 = *(this + 38);
            if (v5 >= *(this + 39))
            {
              v6 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(this + 296, v15);
            }

            else
            {
              *v5 = v4;
              v6 = (v5 + 1);
            }

            *(this + 38) = v6;
            goto LABEL_162;
          }

          goto LABEL_157;
        }

        if (v23.var1 == 233)
        {
          *(this + 59) = (*(**(this + 164) + 40))(*(this + 164));
          goto LABEL_162;
        }

        if (v23.var1 != 236)
        {
          goto LABEL_157;
        }

        if ((*(this + 324) & 0x80000000) != 0)
        {
          *(this + 324) = (*(**(this + 164) + 40))(*(this + 164));
        }

        goto LABEL_162;
      }

      if (v23.var1 <= 0x1A9u)
      {
        if (v23.var1 != 237)
        {
          if (v23.var1 == 239)
          {
            *(this + 67) = (*(**(this + 164) + 40))(*(this + 164));
            goto LABEL_162;
          }

          goto LABEL_157;
        }

        if ((*(this + 69) & 0x80000000) != 0)
        {
          *(this + 69) = (*(**(this + 164) + 40))(*(this + 164));
        }

        goto LABEL_162;
      }

      if (v23.var1 != 426)
      {
        if (v23.var1 != 432)
        {
          goto LABEL_157;
        }

        if ((*(this + 65) & 0x80000000) != 0)
        {
          *(this + 65) = (*(**(this + 164) + 40))(*(this + 164));
        }

        goto LABEL_162;
      }

      result = (*(**(this + 164) + 40))(*(this + 164));
      *(this + 66) = result;
      if (v23.var1 == 426)
      {
        var1 = 426;
        do
        {
          do
          {
            result = XlParserVisitor::getNextUniqueHeader(*(this + 167), &v23);
            v12 = var1 == 427;
            var1 = v23.var1;
          }

          while (!v12);
          var1 = 426;
        }

        while (v23.var1 == 426);
      }
    }

    else
    {
      if (v23.var1 <= 0x9Cu)
      {
        if (v23.var1 <= 0x98u)
        {
          if (v23.var1 == 132)
          {
            XlVCenter::XlVCenter(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1352))(*(this + 167), v15);
            *(this + 1217) = v16;
            goto LABEL_162;
          }

          if (v23.var1 == 144)
          {
            XlSort::XlSort(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 1024))(*(this + 167), v15);
            *(this + 168) = v16;
            *(this + 676) = BYTE4(v16);
            *(this + 678) = BYTE5(v16);
            *(this + 677) = BYTE6(v16);
            if (v20)
            {
              OcText::operator=(this + 680, v20 + 8);
            }

            if (v21)
            {
              OcText::operator=(this + 728, v21 + 8);
            }

            if (v22)
            {
              OcText::operator=(this + 776, v22 + 8);
            }

            XlSort::~XlSort(v15);
            goto LABEL_162;
          }

          goto LABEL_157;
        }

        if (v23.var1 == 153)
        {
          XlStandardWidth::XlStandardWidth(v15, &v23);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 160))(*(this + 167), v15);
          *(this + 117) = v16;
          goto LABEL_162;
        }

        if (v23.var1 != 155)
        {
          goto LABEL_157;
        }

LABEL_73:
        if ((*(this + 68) & 0x80000000) != 0)
        {
          *(this + 68) = (*(**(this + 164) + 40))(*(this + 164));
        }

        goto LABEL_162;
      }

      if (v23.var1 <= 0xADu)
      {
        if (v23.var1 != 157)
        {
          if (v23.var1 == 161)
          {
            operator new();
          }

LABEL_157:
          if (XlBinaryReader::isCell(result, &v23) && (*(this + 98) & 0x80000000) != 0)
          {
            *(this + 98) = (*(**(this + 164) + 40))(*(this + 164));
          }

          goto LABEL_162;
        }

        goto LABEL_73;
      }

      if (v23.var1 == 174)
      {
        if ((*(this + 63) & 0x80000000) != 0)
        {
          *(this + 63) = (*(**(this + 164) + 40))(*(this + 164));
        }
      }

      else
      {
        if (v23.var1 != 176)
        {
          goto LABEL_157;
        }

        if ((*(this + 58) & 0x80000000) != 0)
        {
          *(this + 58) = (*(**(this + 164) + 40))(*(this + 164));
        }
      }

LABEL_162:
      result = XlParserVisitor::getNextUniqueHeader(*(this + 167), &v23);
    }
  }

  if (v23.var1 > 0x4Fu)
  {
    if (v23.var1 > 0x7Cu)
    {
      if (v23.var1 <= 0x80u)
      {
        if (v23.var1 == 125)
        {
          *(this + 55) = (*(**(this + 164) + 40))(*(this + 164));
          goto LABEL_162;
        }

        if (v23.var1 == 128)
        {
          operator new();
        }
      }

      else
      {
        switch(v23.var1)
        {
          case 0x81:
            operator new();
          case 0x82:
            XlGridSet::XlGridSet(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 704))(*(this + 167), v15);
            *(this + 474) = v16;
            goto LABEL_162;
          case 0x83:
            XlHCenter::XlHCenter(v15, &v23);
            XlParserVisitor::skipHeader(*(this + 167));
            (*(**(this + 167) + 720))(*(this + 167), v15);
            *(this + 1216) = v16;
            goto LABEL_162;
        }
      }

      goto LABEL_157;
    }

    if (v23.var1 > 0x5Eu)
    {
      switch(v23.var1)
      {
        case '_':
          XlSaveRecalc::XlSaveRecalc(v15, &v23);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 976))(*(this + 167), v15);
          *(this + 660) = v16;
          goto LABEL_162;
        case 'a':
          *(this + 489) = 1;
          goto LABEL_162;
        case 'c':
          XlObjProtect::XlObjProtect(v15, &v23);
          XlParserVisitor::skipHeader(*(this + 167));
          (*(**(this + 167) + 832))(*(this + 167), v15);
          *(this + 610) = v16;
          goto LABEL_162;
      }

      goto LABEL_157;
    }

    if (v23.var1 != 80)
    {
      if (v23.var1 == 85)
      {
        XlDefColWidth::XlDefColWidth(v15, &v23);
        XlParserVisitor::skipHeader(*(this + 167));
        (*(**(this + 167) + 240))(*(this + 167), v15);
        *(this + 232) = v16;
        goto LABEL_162;
      }

      goto LABEL_157;
    }

    if ((*(this + 61) & 0x80000000) != 0)
    {
      *(this + 61) = (*(**(this + 164) + 40))(*(this + 164));
    }

    goto LABEL_162;
  }

  switch(v23.var1)
  {
    case 0xA:
      v13 = *(this + 98);
      if (v13 < 1)
      {
        return result;
      }

      v14 = *(this + 101);
      if ((v14 & 0x80000000) != 0)
      {
        *(this + 101) = v13 + 1;
        *(this + 290) = 1;
      }

      else if (v13 >= v14)
      {
        return result;
      }

      *(this + 289) = 1;
      return result;
    case 0xC:
      XlCalcCount::XlCalcCount(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 496))(*(this + 167), v15);
      *(this + 326) = v16;
      goto LABEL_162;
    case 0xD:
      XlCalcMode::XlCalcMode(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 504))(*(this + 167), v15);
      *(this + 162) = v16;
      goto LABEL_162;
    case 0xF:
      XlRefMode::XlRefMode(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 952))(*(this + 167), v15);
      *(this + 164) = v16;
      goto LABEL_162;
    case 0x10:
      XlDelta::XlDelta(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 584))(*(this + 167), v15);
      *(this + 80) = v16;
      goto LABEL_162;
    case 0x11:
      XlIteration::XlIteration(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 776))(*(this + 167), v15);
      *(this + 654) = v16;
      goto LABEL_162;
    case 0x12:
      XlProtect::XlProtect(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 920))(*(this + 167), v15);
      *(this + 608) = v16;
      goto LABEL_162;
    case 0x13:
      XlPassword::XlPassword(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 856))(*(this + 167), v15);
      *(this + 313) = v16;
      goto LABEL_162;
    case 0x14:
      XlHdr::XlHdr(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 728))(*(this + 167), v15);
      if (v16)
      {
        XlPageProperties::setHeaderString((this + 1160), (v16 + 8));
      }

      XlHdr::~XlHdr(v15);
      goto LABEL_162;
    case 0x15:
      operator new();
    case 0x1A:
      XlVerticalPageBreaks::XlVerticalPageBreaks(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 1360))(*(this + 167), v15);
      if ((v20 - v17) << 13 >= 0x10000)
      {
        v9 = 0;
        do
        {
          ExternRef = XlExternSheet::getExternRef(v15, v9);
          XlWorksheetProperties::appendVertPageBreak((this + 456), ExternRef);
          ++v9;
        }

        while (((v20 - v17) >> 3) > v9);
      }

      LOBYTE(v16) = 0;
      XlVerticalPageBreaks::~XlVerticalPageBreaks(v15);
      goto LABEL_162;
    case 0x1B:
      XlHorizPageBreaks::XlHorizPageBreaks(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 752))(*(this + 167), v15);
      if (((v20 - v17) & 0x7FFF8) != 0)
      {
        v7 = 0;
        do
        {
          v8 = XlExternSheet::getExternRef(v15, v7);
          XlWorksheetProperties::appendHorizPageBreak((this + 456), v8);
          ++v7;
        }

        while (v7 < ((v20 - v17) >> 3));
      }

      LOBYTE(v16) = 0;
      XlHorizPageBreaks::~XlHorizPageBreaks(v15);
      goto LABEL_162;
    case 0x1C:
      *(this + 57) = (*(**(this + 164) + 40))(*(this + 164));
      goto LABEL_162;
    case 0x25:
      goto LABEL_99;
    case 0x26:
      XlLeftMargin::XlLeftMargin(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 784))(*(this + 167), v15);
      *(this + 148) = v16;
      goto LABEL_162;
    case 0x27:
      XlRightMargin::XlRightMargin(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 968))(*(this + 167), v15);
      *(this + 149) = v16;
      goto LABEL_162;
    case 0x28:
      XlTopMargin::XlTopMargin(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 1304))(*(this + 167), v15);
      *(this + 147) = v16;
      goto LABEL_162;
    case 0x29:
      XlBottomMargin::XlBottomMargin(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 488))(*(this + 167), v15);
      *(this + 146) = v16;
      goto LABEL_162;
    case 0x2A:
      XlPrintHeaders::XlPrintHeaders(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 888))(*(this + 167), v15);
      *(this + 498) = v16;
      goto LABEL_162;
    case 0x2B:
      XlPrintGridlines::XlPrintGridlines(v15, &v23);
      XlParserVisitor::skipHeader(*(this + 167));
      (*(**(this + 167) + 880))(*(this + 167), v15);
      *(this + 499) = v16;
      goto LABEL_162;
    case 0x33:
      operator new();
    case 0x3E:
      goto LABEL_90;
    default:
      goto LABEL_157;
  }
}

void XlIndex::XlIndex(XlIndex *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEA80;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlIndex *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  v4 = **(this + 2);
  if (*(a2 + 14) < 9u)
  {
    *(a2 + 6) = (*(v4 + 80))();
    v5 = (*(**(this + 2) + 80))(*(this + 2));
    v6 = -12;
  }

  else
  {
    *(a2 + 6) = (*(v4 + 96))();
    v5 = (*(**(this + 2) + 96))(*(this + 2));
    v6 = -16;
  }

  v7 = *(a2 + 2) + v6;
  *(a2 + 7) = v5;
  (*(**(this + 2) + 16))(*(this + 2), 4, 1);
  if (*(this + 7))
  {
    ChLogFunction("data isn't NULL", 2, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Binary/Parser/XlParserVisitor.cpp", 847);
  }

  if (v7 > 3)
  {
    operator new[](v7 & 0xFFFFFFFC);
  }

  XlIndex::setDbCellOffsets(a2, *(this + 7), v7 >> 2);
  *(this + 7) = 0;

  return XlParserVisitor::endRead(this, a2);
}

uint64_t XlIndex::setDbCellOffsets(XlIndex *this, unsigned int *a2, int a3)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8052888210);
  }

  *(this + 2) = a2;
  *(this + 8) = a3;
  return result;
}

void XlCalcMode::XlCalcMode(XlCalcMode *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDA80;
  *(v2 + 16) = 0;
}

void XlCalcCount::XlCalcCount(XlCalcCount *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDA40;
  *(v2 + 16) = 100;
}

void XlRefMode::XlRefMode(XlRefMode *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF618;
  *(v2 + 16) = 0;
}

void XlIteration::XlIteration(XlIteration *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEB40;
  *(v2 + 16) = 0;
}

void XlDelta::XlDelta(XlDelta *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDF00;
  v2[2] = 0x3F50624DD2F1A9FCLL;
}

double SsrwOOStgStream::readFloat64(SsrwOOStgStream *this)
{
  v5 = 0.0;
  v1 = readFloat64(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t readFloat64(uint64_t a1, double *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 8;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, v6, &v5);
    *a2 = CsLeReadFloat64(v6);
  }

  return v2;
}

void XlSaveRecalc::XlSaveRecalc(XlSaveRecalc *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFE18;
  *(v2 + 16) = 1;
}

void XlPrintHeaders::XlPrintHeaders(XlPrintHeaders *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF370;
  *(v2 + 16) = 0;
}

void XlPrintGridlines::XlPrintGridlines(XlPrintGridlines *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECF330;
  *(v2 + 16) = 0;
}

void XlGridSet::XlGridSet(XlGridSet *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE800;
  *(v2 + 16) = 0;
}

void XlGuts::XlGuts(XlGuts *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE840;
  v2[2] = 0;
}

uint64_t XlParserVisitor::visit(uint64_t a1, _WORD *a2)
{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  a2[8] = (*(**(a1 + 16) + 80))(*(a1 + 16));
  a2[9] = (*(**(a1 + 16) + 80))(*(a1 + 16));
  a2[10] = (*(**(a1 + 16) + 80))(*(a1 + 16));
  a2[11] = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  a2[8] = (*(**(a1 + 16) + 80))(*(a1 + 16));
  a2[9] = (*(**(a1 + 16) + 72))(*(a1 + 16));
  a2[10] = (*(**(a1 + 16) + 72))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

{
  *(a1 + 72) = (*(**(a1 + 16) + 40))(*(a1 + 16));
  a2[8] = (*(**(a1 + 16) + 72))(*(a1 + 16));
  a2[9] = (*(**(a1 + 16) + 80))(*(a1 + 16));
  a2[10] = (*(**(a1 + 16) + 80))(*(a1 + 16));

  return XlParserVisitor::endRead(a1, a2);
}

void XlDefaultRowHeight::XlDefaultRowHeight(XlDefaultRowHeight *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDE40;
  *(v2 + 16) = 0;
  *(v2 + 20) = 255;
}

void XlWsBool::XlWsBool(XlWsBool *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0DD0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

void XlHorizPageBreaks::XlHorizPageBreaks(XlHorizPageBreaks *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECEA00;
  *(v2 + 16) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlHorizPageBreaks *a2)
{
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if ((*(**(this + 2) + 80))(*(this + 2)))
  {
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlBrk::XlBrk(XlBrk *this)
{
  *this = &unk_286ECDA00;
  *(this + 2) = -1;
  *(this + 6) = -1;
  *(this + 14) = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlBrk *a2)
{
  result = (*(**(this + 2) + 72))(*(this + 2));
  *(a2 + 4) = result;
  if ((*(a2 + 14) & 1) == 0)
  {
    *(a2 + 5) = (*(**(this + 2) + 72))(*(this + 2));
    result = (*(**(this + 2) + 72))(*(this + 2));
    *(a2 + 6) = result;
  }

  return result;
}

void *XlHorizPageBreaks::appendPageBreak(XlHorizPageBreaks *this, XlBrk *a2)
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
    result = std::vector<XlBrk *,ChAllocator<XlBrk *>>::__emplace_back_slow_path<XlBrk * const&>(this + 3, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 4) = result;
  return result;
}

void *XlWorksheetProperties::appendHorizPageBreak(XlWorksheetProperties *this, XlBrk *a2)
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
    result = std::vector<XlBrk *,ChAllocator<XlBrk *>>::__emplace_back_slow_path<XlBrk * const&>(this + 6, &v6);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 7) = result;
  return result;
}

void XlHorizPageBreaks::~XlHorizPageBreaks(XlHorizPageBreaks *this)
{
  *this = &unk_286ECEA00;
  XlHorizPageBreaks::clearPageBreaks(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  XlHorizPageBreaks::~XlHorizPageBreaks(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlHorizPageBreaks::clearPageBreaks(uint64_t this)
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
          this = (*(*this + 16))(this);
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

void XlHdr::XlHdr(XlHdr *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE8C0;
  v2[2] = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlHdr *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 2) && (*(**(this + 2) + 72))(*(this + 2)))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlHdr::~XlHdr(XlHdr *this)
{
  *this = &unk_286ECE8C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

{
  *this = &unk_286ECE8C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

void XlFooter::XlFooter(XlFooter *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE6C0;
  v2[2] = 0;
}

uint64_t XlParserVisitor::visit(XlParserVisitor *this, XlFooter *a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  *(this + 18) = (*(**(this + 2) + 40))(*(this + 2));
  if (*(a2 + 2) && (*(**(this + 2) + 72))(*(this + 2)))
  {
    (*(**(this + 2) + 64))(*(this + 2));
    operator new();
  }

  return XlParserVisitor::endRead(this, a2);
}

void XlFooter::~XlFooter(XlFooter *this)
{
  *this = &unk_286ECE6C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ECE6C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void XlHCenter::XlHCenter(XlHCenter *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECE880;
  *(v2 + 16) = 0;
}

void XlVCenter::XlVCenter(XlVCenter *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ED0C10;
  *(v2 + 16) = 0;
}

void XlSetup::XlSetup(XlSetup *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECFF98;
  *(v2 + 16) = 0x10001013B0000;
  *(v2 + 24) = 1;
  *(v2 + 26) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 1;
  *(v2 + 33) = 0;
  *(v2 + 40) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v2 + 48) = _Q0;
}

void XlDefColWidth::XlDefColWidth(XlDefColWidth *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDE80;
  *(v2 + 16) = 8;
}

void XlDimensions::XlDimensions(XlDimensions *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDF40;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t XlCellTableInfo::setDimensions(uint64_t this, int a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a3 < a2 || a5 < a4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  *(this + 18) = a5;
  return this;
}

XlBaseFormulaTable *XlFormulaProcessor::clearBaseFormulas(XlFormulaProcessor *this)
{
  result = *(this + 2);
  if (result)
  {
    return XlBaseFormulaTable::clear(result);
  }

  return result;
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlWorksheetProperties *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  v4 = *(*a2 + 16);

  return v4(a2, this + 456);
}

XlWorksheetProperties *XlWorksheetProperties::operator=(XlWorksheetProperties *this, uint64_t a2)
{
  if (a2 != this)
  {
    *(this + 4) = *(a2 + 8);
    *(this + 3) = *(a2 + 12);
    *(this + 18) = *(a2 + 18);
    *(this + 20) = *(a2 + 20);
    *(this + 8) = *(a2 + 16);
    *(this + 28) = *(a2 + 28);
    *(this + 9) = *(a2 + 36);
    *(this + 10) = *(a2 + 40);
    *(this + 22) = *(a2 + 44);
    XlWorksheetProperties::clearVertPageBreaks(this);
    XlWorksheetProperties::clearHorizPageBreaks(this);
    if (((*(a2 + 80) - *(a2 + 72)) & 0x7FFFFFFF8) != 0)
    {
      operator new();
    }

    if (((*(a2 + 56) - *(a2 + 48)) & 0x7FFFFFFF8) != 0)
    {
      operator new();
    }

    OcText::clearBuffer(this + 2);
    OcText::operator=(this + 96, a2 + 96);
  }

  return this;
}

uint64_t XlBrk::operator=(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 12) = *(a2 + 12);
    *(result + 14) = *(a2 + 14);
  }

  return result;
}

void XlWorksheetProperties::~XlWorksheetProperties(OcText *this)
{
  this->var0 = &unk_286ED1CA8;
  XlWorksheetProperties::clearVertPageBreaks(this);
  XlWorksheetProperties::clearHorizPageBreaks(this);
  OcText::~OcText(this + 2);
  var5 = this[1].var5;
  if (var5)
  {
    this[1].var6 = var5;
    operator delete(var5);
  }

  var0 = this[1].var0;
  if (var0)
  {
    *&this[1].var1 = var0;
    operator delete(var0);
  }
}

{
  XlWorksheetProperties::~XlWorksheetProperties(this);

  JUMPOUT(0x25F897000);
}

uint64_t XlBinaryReader::read(XlBinaryReader *this, XlPageProperties *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  v4 = *(*a2 + 16);

  return v4(a2, this + 1160);
}

uint64_t XlPageProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 40);
    if (v5)
    {
      OcText::operator=(v4, v5);
    }

    v6 = *(a1 + 48);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 48);
    if (v7)
    {
      OcText::operator=(v6, v7);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 58) = *(a2 + 58);
    *(a1 + 66) = *(a2 + 66);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 76) = *(a2 + 76);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 82) = *(a2 + 82);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 104) = *(a2 + 104);
  }

  return a1;
}

uint64_t XlPageProperties::getHeaderString(XlPageProperties *this)
{
  if (!*(this + 5))
  {
    operator new();
  }

  return *(this + 5);
}

uint64_t XlPageProperties::getFooterString(XlPageProperties *this)
{
  if (!*(this + 6))
  {
    operator new();
  }

  return *(this + 6);
}

void XlPageProperties::~XlPageProperties(XlPageProperties *this)
{
  *this = &unk_286ED1A00;
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
}

{
  XlPageProperties::~XlPageProperties(this);

  JUMPOUT(0x25F897000);
}

void *XlBinaryReader::read(XlBinaryReader *this, XlColumnTable *a2)
{
  result = CsSimpleHeapVector<XlRecord>::clear(a2 + 1);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  if ((*(this + 55) & 0x80000000) == 0)
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
    if (v7.var1 == 125)
    {
      operator new();
    }

    v5 = *(this + 164);
    RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
    return (*(*v5 + 16))(v5, -RecordDataOffset, 1);
  }

  return result;
}

void XlColInfo::XlColInfo(XlColInfo *this, XlHeader *a2)
{
  XlRecord::XlRecord(this, a2);
  *v2 = &unk_286ECDB80;
  v2[2] = 0;
  *(v2 + 21) = 0;
}

uint64_t XlColumnTable::getColumnFirst(XlColumnTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(*(v2 + 8 * a2) + 16);
  if (v3 >= 255)
  {
    return 255;
  }

  else
  {
    return v3;
  }
}

uint64_t XlColumnTable::getColumnLast(XlColumnTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(*(v2 + 8 * a2) + 18);
  if (v3 >= 255)
  {
    return 255;
  }

  else
  {
    return v3;
  }
}

uint64_t XlColumnTable::getWidth(XlColumnTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 20);
}

uint64_t XlColumnTable::isHidden(XlColumnTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 24);
}

uint64_t XlColumnTable::getCellFormat(XlColumnTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 22);
}

double XlBinaryReader::read(XlBinaryReader *this, XlSheetInfo *a2)
{
  if ((*(this + 110) & 0x80000000) != 0)
  {
    XlBinaryReader::setSheet(this, 0);
  }

  return XlSheetInfo::operator=(a2, this + 1144);
}

double XlSheetInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
  }

  return result;
}

void XlRowBlock::XlRowBlock(XlRowBlock *this)
{
  *this = &unk_286ED1AB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 30) = 0;
}

XlBinaryReader *XlBinaryReader::read(XlBinaryReader *this, XlRowBlock *a2)
{
  XlHeader::XlHeader(&v51);
  result = XlRowBlock::reset(a2);
  if ((*(this + 110) & 0x80000000) != 0)
  {
    result = XlBinaryReader::setSheet(this, 0);
  }

  v5 = *(this + 101);
  if ((v5 & 0x80000000) == 0)
  {
    ++*(this + 102);
    if (*(this + 98) < v5 && *(this + 289) == 1)
    {
      (*(**(this + 164) + 16))(*(this + 164), *(this + 98), 0);
    }

    else
    {
      *(this + 98) = v5;
      (*(**(this + 164) + 16))(*(this + 164));
      *(this + 101) = -1;
    }

    result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
    if (*(this + 289) == 1)
    {
      v6 = -1;
      while (v51.var1 != 10)
      {
        result = XlBinaryReader::isCell(result, &v51);
        if (result)
        {
          v7 = (*(**(this + 166) + 16))(*(this + 166), 3);
          v8 = *(this + 164);
          RecordDataOffset = XlParserVisitor::getRecordDataOffset(*(this + 167));
          (*(*v8 + 16))(v8, -RecordDataOffset, 1);
          XlBinaryReader::readCell(this, v7);
          v50 = v7;
          v10 = *(this + 53);
          if (v10 < *(this + 54))
          {
LABEL_13:
            *v10 = v7;
            v11 = (v10 + 1);
            goto LABEL_14;
          }

          while (1)
          {
            v11 = std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell *>(this + 52, &v50);
LABEL_14:
            *(this + 53) = v11;
            if (!*(this + 48))
            {
              break;
            }

            v7 = (*(**(this + 166) + 16))(*(this + 166), 3);
            XlBinaryReader::processCompressed(this, v7);
            v50 = v7;
            v10 = *(this + 53);
            if (v10 < *(this + 54))
            {
              goto LABEL_13;
            }
          }

          result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
        }

        else
        {
          if (*(this + 290) != 1)
          {
            goto LABEL_25;
          }

          if (v6 == -1)
          {
            v6 = XlParserVisitor::currentRecordLocation(*(this + 167));
          }

          result = XlParserVisitor::skipAhead(*(this + 167), &v51, *(this + 1320));
        }
      }

      if (*(this + 290))
      {
        *(this + 290) = 0;
        *(this + 101) = v6;
      }
    }

LABEL_25:
    if (*(this + 289) == 1)
    {
      if (((*(this + 53) - *(this + 52)) & 0x7FFFFFFF8) != 0)
      {
        XlBinaryReader::findCellAHome(this, a2, 1);
      }

      *(this + 289) = 0;
      v12 = *(this + 101);
      if (v12 != -1)
      {
        (*(**(this + 164) + 16))(*(this + 164), v12, 0);
        *(this + 101) = -1;
      }

      result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
    }

    v13 = 0;
    v14 = 0;
    v15 = 1;
    while (v51.var1 == 520)
    {
      v16 = (*(**(this + 164) + 80))(*(this + 164));
      (*(**(this + 164) + 16))(*(this + 164), 4294967294, 1);
      v17 = v16;
      if ((v15 & 1) == 0)
      {
        if (v16 <= v14 || (v16 - v13) >= 32)
        {
          v21 = (*(**(this + 164) + 40))(*(this + 164));
          result = XlParserVisitor::getRecordDataOffset(*(this + 167));
          *(this + 101) = v21 - result;
          break;
        }

        v17 = v13;
      }

      v18 = (*(**(this + 166) + 16))(*(this + 166), 5);
      v19 = *(this + 164);
      v20 = XlParserVisitor::getRecordDataOffset(*(this + 167));
      (*(*v19 + 16))(v19, -v20, 1);
      XlBinaryReader::readRowInfo(this, v18[1]);
      XlRowBlock::takeRow(a2, v18);
      result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
      v15 = 0;
      v13 = v17;
      v14 = v16;
    }

    if (((*(a2 + 2) - *(a2 + 1)) & 0x7FFFFFFF8) != 0)
    {
      goto LABEL_42;
    }

    if (((*(this + 53) - *(this + 52)) & 0x7FFFFFFF8) != 0)
    {
      result = XlBinaryReader::findCellAHome(this, a2, *(this + 101) >> 31);
      while (1)
      {
        while (1)
        {
LABEL_42:
          var1 = v51.var1;
          if (v51.var1 != 215 && v51.var1 != 520)
          {
            result = XlBinaryReader::isCell(result, &v51);
            if (var1 != 229 && result == 0)
            {
LABEL_82:
              if (((*(this + 53) - *(this + 52)) & 0x7FFFFFFF8) != 0)
              {
                result = XlBinaryReader::findCellAHome(this, a2, *(this + 101) >> 31);
              }

              if (!*(this + 289))
              {
                *(this + 289) = *(this + 102);
              }

              return result;
            }
          }

          v24 = (*(**(this + 164) + 80))(*(this + 164));
          result = (*(**(this + 164) + 16))(*(this + 164), 4294967294, 1);
          v25 = v51.var1;
          if (v51.var1 == 229)
          {
            v31 = (*(**(this + 164) + 40))(*(this + 164));
            LODWORD(v50) = v31;
            v32 = *(this + 38);
            if (v32 >= *(this + 39))
            {
              v33 = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int>(this + 296, &v50);
            }

            else
            {
              *v32 = v31;
              v33 = (v32 + 1);
            }

            *(this + 38) = v33;
            goto LABEL_66;
          }

          if (v51.var1 == 520)
          {
            break;
          }

          if (v51.var1 == 215)
          {
            if ((*(this + 101) & 0x80000000) != 0)
            {
              for (i = 215; i != 10 && i != 236; i = v51.var1)
              {
                if (XlBinaryReader::isCell(result, &v51))
                {
                  v38 = (*(**(this + 166) + 16))(*(this + 166), 3);
                  v39 = *(this + 164);
                  v40 = XlParserVisitor::getRecordDataOffset(*(this + 167));
                  (*(*v39 + 16))(v39, -v40, 1);
                  XlBinaryReader::readCell(this, v38);
                  v50 = v38;
                  v41 = *(this + 53);
                  if (v41 >= *(this + 54))
                  {
                    v42 = std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell *>(this + 52, &v50);
                  }

                  else
                  {
                    *v41 = v38;
                    v42 = (v41 + 1);
                  }

                  *(this + 53) = v42;
                  result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
                }

                else
                {
                  if (i == 520)
                  {
LABEL_100:
                    v48 = (*(**(this + 164) + 40))(*(this + 164));
                    result = XlParserVisitor::getRecordDataOffset(*(this + 167));
                    *(this + 101) = v48 - result;
                    goto LABEL_82;
                  }

                  result = XlParserVisitor::skipAhead(*(this + 167), &v51, *(this + 1320));
                }
              }
            }

            goto LABEL_82;
          }

          if (v24 > v14)
          {
            if ((*(this + 101) & 0x80000000) != 0)
            {
              while (v25 != 10 && v25 != 236)
              {
                if (XlBinaryReader::isCell(result, &v51))
                {
                  v43 = (*(**(this + 166) + 16))(*(this + 166), 3);
                  if (v43)
                  {
                    v44 = *(this + 164);
                    v45 = XlParserVisitor::getRecordDataOffset(*(this + 167));
                    (*(*v44 + 16))(v44, -v45, 1);
                    XlBinaryReader::readCell(this, v43);
                    v50 = v43;
                    v46 = *(this + 53);
                    if (v46 >= *(this + 54))
                    {
                      v47 = std::vector<XlCell *,ChAllocator<XlCell *>>::__emplace_back_slow_path<XlCell *>(this + 52, &v50);
                    }

                    else
                    {
                      *v46 = v43;
                      v47 = (v46 + 1);
                    }

                    *(this + 53) = v47;
                  }

                  result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
                }

                else
                {
                  if (v25 == 520)
                  {
                    goto LABEL_100;
                  }

                  result = XlParserVisitor::skipAhead(*(this + 167), &v51, *(this + 1320));
                }

                v25 = v51.var1;
              }
            }

            goto LABEL_82;
          }

          if (v24 < v13)
          {
LABEL_66:
            result = XlParserVisitor::skipAhead(*(this + 167), &v51, *(this + 1320));
          }

          else
          {
            v26 = (*(**(this + 166) + 16))(*(this + 166), 3);
            if (v26)
            {
              v27 = *(this + 164);
              v28 = XlParserVisitor::getRecordDataOffset(*(this + 167));
              (*(*v27 + 16))(v27, -v28, 1);
              XlBinaryReader::readCell(this, v26);
              XlRowBlock::takeCell(a2, v26);
            }

            while (*(this + 48))
            {
              v29 = (*(**(this + 166) + 16))(*(this + 166), 3);
              if (!v29)
              {
                exception = __cxa_allocate_exception(4uLL);
                *exception = 1001;
              }

              XlBinaryReader::processCompressed(this, v29);
              XlRowBlock::takeCell(a2, v29);
            }

            result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
          }
        }

        if (v13 + 32 <= v24 || v24 <= v14)
        {
          if ((*(this + 101) & 0x80000000) != 0)
          {
            v30 = (*(**(this + 164) + 40))(*(this + 164));
            *(this + 101) = v30 - XlParserVisitor::getRecordDataOffset(*(this + 167));
          }

          goto LABEL_66;
        }

        v34 = (*(**(this + 166) + 16))(*(this + 166), 5);
        v35 = *(this + 164);
        v36 = XlParserVisitor::getRecordDataOffset(*(this + 167));
        (*(*v35 + 16))(v35, -v36, 1);
        XlBinaryReader::readRowInfo(this, v34[1]);
        XlRowBlock::takeRow(a2, v34);
        result = XlParserVisitor::getHeader(*(this + 167), &v51, *(this + 1320));
        v14 = v24;
      }
    }
  }

  return result;
}

void sub_25D317BC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *XlRowBlock::reset(void *this)
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

      if (v4 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v2 + 8 * v4++) = 0;
      v2 = v1[1];
      v3 = v1[2];
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[2] = v2;
  *(v1 + 8) = 0;
  *(v1 + 18) = 0;
  return this;
}

void XlCellRow::XlCellRow(XlCellRow *this)
{
  *this = &unk_286ED0F80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
}