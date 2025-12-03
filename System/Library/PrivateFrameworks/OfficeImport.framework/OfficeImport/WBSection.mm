@interface WBSection
+ (void)mapPrinterSettings:(void *)settings toSection:(id)section;
+ (void)mapSection:(id)section toSectionProperties:(void *)properties;
+ (void)mapSectionProperties:(void *)properties toSection:(id)section;
+ (void)readFrom:(id)from textRun:(WrdSectionTextRun *)run document:(id)document index:(int)index section:(id)section;
+ (void)readHeaderFrom:(id)from type:(int)type index:(int)index header:(id)header;
@end

@implementation WBSection

+ (void)readFrom:(id)from textRun:(WrdSectionTextRun *)run document:(id)document index:(int)index section:(id)section
{
  v8 = *&index;
  fromCopy = from;
  documentCopy = document;
  sectionCopy = section;
  var4 = run->var4;
  var5 = run->var5;
  [fromCopy setReportProgress:1];
  text = [sectionCopy text];
  [WBText readFrom:fromCopy text:text textRun:run];

  [fromCopy setReportProgress:0];
  oddPageHeader = [sectionCopy oddPageHeader];
  [self readHeaderFrom:fromCopy type:7 index:v8 header:oddPageHeader];

  evenPageHeader = [sectionCopy evenPageHeader];
  [self readHeaderFrom:fromCopy type:6 index:v8 header:evenPageHeader];

  firstPageHeader = [sectionCopy firstPageHeader];
  [self readHeaderFrom:fromCopy type:10 index:v8 header:firstPageHeader];

  oddPageFooter = [sectionCopy oddPageFooter];
  [self readHeaderFrom:fromCopy type:9 index:v8 header:oddPageFooter];

  evenPageFooter = [sectionCopy evenPageFooter];
  [self readHeaderFrom:fromCopy type:8 index:v8 header:evenPageFooter];

  firstPageFooter = [sectionCopy firstPageFooter];
  [self readHeaderFrom:fromCopy type:11 index:v8 header:firstPageFooter];

  if (!v8)
  {
    [self mapPrinterSettings:var4 toSection:sectionCopy];
  }

  [sectionCopy setResolveMode:0];
  [self mapSectionProperties:var4 toSection:sectionCopy];
  [sectionCopy setResolveMode:1];
  [self mapSectionProperties:var5 toSection:sectionCopy];
  [sectionCopy setResolveMode:2];
}

+ (void)readHeaderFrom:(id)from type:(int)type index:(int)index header:(id)header
{
  indexCopy = index;
  fromCopy = from;
  headerCopy = header;
  tableHeaders = [fromCopy tableHeaders];
  if (((*(tableHeaders + 16) - *(tableHeaders + 8)) & 0x3FFFC) != 0)
  {
    v12[0] = &unk_286ED3718;
    WrdCPTableHeaders::getTextRun(tableHeaders, v12, type, indexCopy);
    [WBText readFrom:fromCopy text:headerCopy textRun:v12];
    if ([headerCopy blockCount] >= 2)
    {
      [headerCopy removeLastBlock];
    }
  }
}

+ (void)mapSectionProperties:(void *)properties toSection:(id)section
{
  sectionCopy = section;
  v5 = *(properties + 2);
  if (v5)
  {
    v6 = *(properties + 3);
    mutableTopBorder = [sectionCopy mutableTopBorder];
    [WBBorder readFrom:v6 to:mutableTopBorder];

    v5 = *(properties + 2);
  }

  if ((v5 & 2) != 0)
  {
    *(properties + 2) = v5;
    v8 = *(properties + 4);
    mutableLeftBorder = [sectionCopy mutableLeftBorder];
    [WBBorder readFrom:v8 to:mutableLeftBorder];

    v5 = *(properties + 2);
  }

  if ((v5 & 4) != 0)
  {
    *(properties + 2) = v5;
    v10 = *(properties + 5);
    mutableBottomBorder = [sectionCopy mutableBottomBorder];
    [WBBorder readFrom:v10 to:mutableBottomBorder];

    v5 = *(properties + 2);
  }

  if ((v5 & 8) != 0)
  {
    *(properties + 2) = v5;
    v12 = *(properties + 6);
    mutableRightBorder = [sectionCopy mutableRightBorder];
    [WBBorder readFrom:v12 to:mutableRightBorder];

    v5 = *(properties + 2);
  }

  if ((v5 & 0x40) != 0)
  {
    [sectionCopy setBreakType:*(properties + 18)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x400000) != 0)
  {
    [sectionCopy setPageWidth:*(properties + 34)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x800000) != 0)
  {
    [sectionCopy setPageHeight:*(properties + 35)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x4000) != 0)
  {
    [sectionCopy setPageOrientation:*(properties + 26)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x1000000) != 0)
  {
    [sectionCopy setLeftMargin:*(properties + 36)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x2000000) != 0)
  {
    [sectionCopy setRightMargin:*(properties + 37)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x80000) != 0)
  {
    [sectionCopy setTopMargin:*(properties + 31)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x100000) != 0)
  {
    [sectionCopy setBottomMargin:*(properties + 32)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x8000000) != 0)
  {
    [sectionCopy setHeaderMargin:*(properties + 39)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x10000000) != 0)
  {
    [sectionCopy setFooterMargin:*(properties + 40)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x4000000) != 0)
  {
    [sectionCopy setGutterMargin:*(properties + 38)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x10000000000000) != 0)
  {
    [sectionCopy setRtlGutter:*(properties + 248) != 0];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x800) != 0)
  {
    [sectionCopy setBorderDepth:*(properties + 23)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x400) != 0)
  {
    [sectionCopy setBorderDisplay:*(properties + 22)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x1000) != 0)
  {
    [sectionCopy setBorderOffset:*(properties + 24)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x10000000000) != 0)
  {
    [sectionCopy setLineNumberStart:*(properties + 117)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x80000000) != 0)
  {
    [sectionCopy setLineNumberIncrement:*(properties + 108)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x10000) != 0)
  {
    [sectionCopy setLineNumberDistance:*(properties + 56)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x80) != 0)
  {
    [sectionCopy setLineNumberRestart:*(properties + 19)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x100) != 0)
  {
    [sectionCopy setPageNumberFormat:*(properties + 20)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x800000000) != 0)
  {
    [sectionCopy setPageNumberStart:*(properties + 112)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x400000000000) != 0)
  {
    [sectionCopy setPageNumberRestart:*(properties + 242) != 0];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x200000000000) != 0)
  {
    [sectionCopy setChapterNumberSeparator:*(properties + 241)];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x2000000000000) != 0)
  {
    [sectionCopy setColumnsEqualWidth:*(properties + 245) != 0];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x4000000000000) != 0)
  {
    [sectionCopy setBidi:*(properties + 246) != 0];
    v5 = *(properties + 2);
  }

  if ((v5 & 0x20000000000) == 0 || (columnCount = *(properties + 118) + 1, [sectionCopy setColumnCount:columnCount], !columnCount))
  {
    resolveMode = [sectionCopy resolveMode];
    [sectionCopy setResolveMode:2];
    if ([sectionCopy isColumnCountOverridden])
    {
      columnCount = [sectionCopy columnCount];
    }

    else
    {
      columnCount = 0;
    }

    [sectionCopy setResolveMode:resolveMode];
  }

  v16 = columnCount;
  if (columnCount >= 2u)
  {
    v17 = 0;
    v18 = (properties + 200);
    v19 = (properties + 176);
    while (1)
    {
      v20 = *(properties + 2);
      if ((v20 & 0x40000000) == 0 || (v21 = *v18) == 0)
      {
LABEL_74:
        if ((v20 & 0x20000000) == 0)
        {
          goto LABEL_99;
        }

LABEL_75:
        v24 = *v19;
        if (!*v19)
        {
          goto LABEL_99;
        }

        v25 = *v19;
        while (1)
        {
          v26 = *(v25 + 7);
          if (v26 <= v17)
          {
            if (v26 >= v17)
            {
              v31 = (properties + 176);
              do
              {
                v32 = *(v24 + 7);
                v29 = v32 >= v17;
                v33 = v32 < v17;
                if (v29)
                {
                  v31 = v24;
                }

                v24 = *&v24[8 * v33];
              }

              while (v24);
              if (v31 != v19 && v17 >= *(v31 + 7))
              {
                [sectionCopy appendColumnSpace:*(v31 + 8)];
                goto LABEL_99;
              }

LABEL_120:
              exception = __cxa_allocate_exception(4uLL);
              *exception = 1004;
            }

            v25 += 8;
          }

          v25 = *v25;
          if (!v25)
          {
            goto LABEL_99;
          }
        }
      }

      v22 = *v18;
      while (1)
      {
        v23 = *(v22 + 7);
        if (v23 <= v17)
        {
          break;
        }

LABEL_73:
        v22 = *v22;
        if (!v22)
        {
          goto LABEL_74;
        }
      }

      if (v23 < v17)
      {
        break;
      }

      v27 = (properties + 200);
      do
      {
        v28 = *(v21 + 7);
        v29 = v28 >= v17;
        v30 = v28 < v17;
        if (v29)
        {
          v27 = v21;
        }

        v21 = *&v21[8 * v30];
      }

      while (v21);
      if (v27 == v18 || v17 < *(v27 + 7))
      {
        goto LABEL_120;
      }

      [sectionCopy appendColumnWidth:*(v27 + 8)];
      if ((*(properties + 2) & 0x20000000) != 0)
      {
        goto LABEL_75;
      }

LABEL_99:
      if (++v17 == v16)
      {
        goto LABEL_100;
      }
    }

    v22 += 8;
    goto LABEL_73;
  }

LABEL_100:
  v34 = *(properties + 2);
  if ((v34 & 0x200000) != 0)
  {
    [sectionCopy setColumnSpace:*(properties + 33)];
    v34 = *(properties + 2);
  }

  if ((v34 & 0x200) != 0)
  {
    [sectionCopy setVerticalJustification:*(properties + 21)];
    v34 = *(properties + 2);
  }

  if ((v34 & 0x80000000000) != 0)
  {
    [sectionCopy setTitlePage:*(properties + 239) != 0];
    v34 = *(properties + 2);
  }

  if ((v34 & 0x4000000000) != 0)
  {
    [sectionCopy setFormattingChanged:*(properties + 115) != 0];
    v34 = *(properties + 2);
  }

  if ((v34 & 0x8000000000) != 0)
  {
    [sectionCopy setIndexToAuthorIDOfFormattingChange:*(properties + 116)];
    v34 = *(properties + 2);
  }

  if ((v34 & 0x10) != 0)
  {
    v35 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:*(properties + 7)];
    [sectionCopy setFormattingChangeDate:v35];

    v34 = *(properties + 2);
  }

  if ((v34 & 0x8000) != 0)
  {
    v36 = *(properties + 27) - 1;
    if (v36 > 4)
    {
      v37 = 1;
    }

    else
    {
      v37 = dword_25D70E318[v36];
    }

    [sectionCopy setTextDirection:v37];
  }
}

+ (void)mapSection:(id)section toSectionProperties:(void *)properties
{
  sectionCopy = section;
  if ([sectionCopy isTopBorderOverridden])
  {
    topBorder = [sectionCopy topBorder];
    v7 = *(properties + 3);
    *(properties + 2) |= 1uLL;
    [WBBorder write:topBorder to:v7];
  }

  if ([sectionCopy isLeftBorderOverridden])
  {
    leftBorder = [sectionCopy leftBorder];
    *(properties + 2) |= 2uLL;
    [WBBorder write:leftBorder to:*(properties + 4)];
  }

  if ([sectionCopy isBottomBorderOverridden])
  {
    bottomBorder = [sectionCopy bottomBorder];
    *(properties + 2) |= 4uLL;
    [WBBorder write:bottomBorder to:*(properties + 5)];
  }

  if ([sectionCopy isRightBorderOverridden])
  {
    rightBorder = [sectionCopy rightBorder];
    *(properties + 2) |= 8uLL;
    [WBBorder write:rightBorder to:*(properties + 6)];
  }

  if ([sectionCopy isBreakTypeOverridden])
  {
    *(properties + 18) = [sectionCopy breakType];
    *(properties + 2) |= 0x40uLL;
  }

  if ([sectionCopy isPageWidthOverridden])
  {
    *(properties + 34) = [sectionCopy pageWidth];
    *(properties + 2) |= 0x400000uLL;
  }

  if ([sectionCopy isPageHeightOverridden])
  {
    *(properties + 35) = [sectionCopy pageHeight];
    *(properties + 2) |= 0x800000uLL;
  }

  if ([sectionCopy isPageOrientationOverridden])
  {
    *(properties + 26) = [sectionCopy pageOrientation];
    *(properties + 2) |= 0x4000uLL;
  }

  if ([sectionCopy isLeftMarginOverridden])
  {
    *(properties + 36) = [sectionCopy leftMargin];
    *(properties + 2) |= 0x1000000uLL;
  }

  if ([sectionCopy isRightMarginOverridden])
  {
    *(properties + 37) = [sectionCopy rightMargin];
    *(properties + 2) |= 0x2000000uLL;
  }

  if ([sectionCopy isTopMarginOverridden])
  {
    *(properties + 31) = [sectionCopy topMargin];
    *(properties + 2) |= 0x80000uLL;
  }

  if ([sectionCopy isBottomMarginOverridden])
  {
    *(properties + 32) = [sectionCopy bottomMargin];
    *(properties + 2) |= 0x100000uLL;
  }

  if ([sectionCopy isHeaderMarginOverridden])
  {
    *(properties + 39) = [sectionCopy headerMargin];
    *(properties + 2) |= 0x8000000uLL;
  }

  if ([sectionCopy isFooterMarginOverridden])
  {
    *(properties + 40) = [sectionCopy footerMargin];
    *(properties + 2) |= 0x10000000uLL;
  }

  if ([sectionCopy isGutterMarginOverridden])
  {
    *(properties + 38) = [sectionCopy gutterMargin];
    *(properties + 2) |= 0x4000000uLL;
  }

  if ([sectionCopy isRtlGutterOverridden])
  {
    *(properties + 248) = [sectionCopy rtlGutter];
    *(properties + 2) |= 0x10000000000000uLL;
  }

  if ([sectionCopy isBorderDepthOverridden])
  {
    *(properties + 23) = [sectionCopy borderDepth];
    *(properties + 2) |= 0x800uLL;
  }

  if ([sectionCopy isBorderDisplayOverridden])
  {
    *(properties + 22) = [sectionCopy borderDisplay];
    *(properties + 2) |= 0x400uLL;
  }

  if ([sectionCopy isBorderOffsetOverridden])
  {
    *(properties + 24) = [sectionCopy borderOffset];
    *(properties + 2) |= 0x1000uLL;
  }

  if ([sectionCopy isLineNumberStartOverridden])
  {
    *(properties + 117) = [sectionCopy lineNumberStart];
    *(properties + 2) |= 0x10000000000uLL;
  }

  if ([sectionCopy isLineNumberIncrementOverridden])
  {
    *(properties + 108) = [sectionCopy lineNumberIncrement];
    *(properties + 2) |= 0x80000000uLL;
  }

  if ([sectionCopy isLineNumberDistanceOverridden])
  {
    *(properties + 28) = [sectionCopy lineNumberDistance];
    *(properties + 2) |= 0x10000uLL;
  }

  if ([sectionCopy isLineNumberRestartOverridden])
  {
    *(properties + 19) = [sectionCopy lineNumberRestart];
    *(properties + 2) |= 0x80uLL;
  }

  if ([sectionCopy isPageNumberFormatOverridden])
  {
    *(properties + 20) = +[WBListLevel numberFormatEnumFor:](WBListLevel, "numberFormatEnumFor:", [sectionCopy pageNumberFormat]);
    *(properties + 2) |= 0x100uLL;
  }

  if ([sectionCopy isPageNumberStartOverridden])
  {
    *(properties + 112) = [sectionCopy pageNumberStart];
    *(properties + 2) |= 0x800000000uLL;
  }

  if ([sectionCopy isPageNumberRestartOverridden])
  {
    *(properties + 242) = [sectionCopy pageNumberRestart];
    *(properties + 2) |= 0x400000000000uLL;
  }

  if ([sectionCopy isChapterNumberSeparatorOverridden])
  {
    *(properties + 241) = [sectionCopy chapterNumberSeparator];
    *(properties + 2) |= 0x200000000000uLL;
  }

  if ([sectionCopy isColumnCountOverridden])
  {
    *(properties + 118) = [sectionCopy columnCount] - 1;
    *(properties + 2) |= 0x20000000000uLL;
  }

  if ([sectionCopy isColumnsEqualWidthOverridden])
  {
    *(properties + 245) = [sectionCopy columnsEqualWidth];
    *(properties + 2) |= 0x2000000000000uLL;
  }

  if ([sectionCopy isColumnCountOverridden])
  {
    if ([sectionCopy isColumnsEqualWidthOverridden])
    {
      if (([sectionCopy columnsEqualWidth] & 1) == 0)
      {
        columnCount = [sectionCopy columnCount];
        v12 = columnCount;
        if (columnCount)
        {
          v13 = 0;
          v14 = columnCount - 1;
          do
          {
            v15 = [sectionCopy columnWidthAt:v13];
            *(properties + 2) |= 0x40000000uLL;
            v20 = v13;
            v21 = &v20;
            *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(properties + 192, &v20) + 8) = v15;
            if (v13 < v14)
            {
              v16 = [sectionCopy columnSpaceAt:v13];
              *(properties + 2) |= 0x20000000uLL;
              v20 = v13;
              v21 = &v20;
              *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(properties + 168, &v20) + 8) = v16;
            }

            v13 = (v13 + 1);
          }

          while (v12 != v13);
        }
      }
    }
  }

  if ([sectionCopy isColumnSpaceOverridden])
  {
    *(properties + 33) = [sectionCopy columnSpace];
    *(properties + 2) |= 0x200000uLL;
  }

  if ([sectionCopy isVerticalJustificationOverridden])
  {
    *(properties + 21) = [sectionCopy verticalJustification];
    *(properties + 2) |= 0x200uLL;
  }

  if ([sectionCopy isTitlePageOverridden])
  {
    *(properties + 239) = [sectionCopy titlePage];
    *(properties + 2) |= 0x80000000000uLL;
  }

  if ([sectionCopy isBidiOverridden])
  {
    *(properties + 246) = [sectionCopy bidi];
    *(properties + 2) |= 0x4000000000000uLL;
  }

  if ([sectionCopy isFormattingChangedOverridden])
  {
    *(properties + 115) = [sectionCopy formattingChanged];
    *(properties + 2) |= 0x4000000000uLL;
  }

  if ([sectionCopy isIndexToAuthorIDOfFormattingChangeOverridden])
  {
    *(properties + 116) = [sectionCopy indexToAuthorIDOfFormattingChange];
    *(properties + 2) |= 0x8000000000uLL;
  }

  if ([sectionCopy isFormattingChangeDateOverridden])
  {
    formattingChangeDate = [sectionCopy formattingChangeDate];
    *(properties + 2) |= 0x10uLL;
    [formattingChangeDate tc_copyToWordDate:*(properties + 7)];
  }

  if ([sectionCopy isTextDirectionOverridden])
  {
    textDirection = [sectionCopy textDirection];
    if (textDirection >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_25D70E32C[textDirection];
    }

    *(properties + 27) = v19;
    *(properties + 2) |= 0x8000uLL;
  }
}

+ (void)mapPrinterSettings:(void *)settings toSection:(id)section
{
  sectionCopy = section;
  v5 = *(settings + 74);
  if (v5 < 0x7B)
  {
    if (v5 == 120)
    {
      [sectionCopy setPageScale:*(*(settings + 38) + 56)];
    }

    else if (v5 >= 0x3D)
    {
      v8 = *(settings + 38);
      if ((*(v8 + 40) & 0x10) != 0)
      {
        [sectionCopy setPageScale:*(v8 + 52)];
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(settings + 38) + 122 length:v5 - 122];
    [WXSection scaleFromPrinterSettings:v6];
    if (v7 != 1.0)
    {
      [sectionCopy setPageScale:(v7 * 100.0)];
    }
  }
}

@end