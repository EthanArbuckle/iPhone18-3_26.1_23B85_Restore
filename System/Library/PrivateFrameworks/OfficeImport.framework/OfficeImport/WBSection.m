@interface WBSection
+ (void)mapPrinterSettings:(void *)a3 toSection:(id)a4;
+ (void)mapSection:(id)a3 toSectionProperties:(void *)a4;
+ (void)mapSectionProperties:(void *)a3 toSection:(id)a4;
+ (void)readFrom:(id)a3 textRun:(WrdSectionTextRun *)a4 document:(id)a5 index:(int)a6 section:(id)a7;
+ (void)readHeaderFrom:(id)a3 type:(int)a4 index:(int)a5 header:(id)a6;
@end

@implementation WBSection

+ (void)readFrom:(id)a3 textRun:(WrdSectionTextRun *)a4 document:(id)a5 index:(int)a6 section:(id)a7
{
  v8 = *&a6;
  v23 = a3;
  v12 = a5;
  v13 = a7;
  var4 = a4->var4;
  var5 = a4->var5;
  [v23 setReportProgress:1];
  v16 = [v13 text];
  [WBText readFrom:v23 text:v16 textRun:a4];

  [v23 setReportProgress:0];
  v17 = [v13 oddPageHeader];
  [a1 readHeaderFrom:v23 type:7 index:v8 header:v17];

  v18 = [v13 evenPageHeader];
  [a1 readHeaderFrom:v23 type:6 index:v8 header:v18];

  v19 = [v13 firstPageHeader];
  [a1 readHeaderFrom:v23 type:10 index:v8 header:v19];

  v20 = [v13 oddPageFooter];
  [a1 readHeaderFrom:v23 type:9 index:v8 header:v20];

  v21 = [v13 evenPageFooter];
  [a1 readHeaderFrom:v23 type:8 index:v8 header:v21];

  v22 = [v13 firstPageFooter];
  [a1 readHeaderFrom:v23 type:11 index:v8 header:v22];

  if (!v8)
  {
    [a1 mapPrinterSettings:var4 toSection:v13];
  }

  [v13 setResolveMode:0];
  [a1 mapSectionProperties:var4 toSection:v13];
  [v13 setResolveMode:1];
  [a1 mapSectionProperties:var5 toSection:v13];
  [v13 setResolveMode:2];
}

+ (void)readHeaderFrom:(id)a3 type:(int)a4 index:(int)a5 header:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = [v9 tableHeaders];
  if (((*(v11 + 16) - *(v11 + 8)) & 0x3FFFC) != 0)
  {
    v12[0] = &unk_286ED3718;
    WrdCPTableHeaders::getTextRun(v11, v12, a4, v7);
    [WBText readFrom:v9 text:v10 textRun:v12];
    if ([v10 blockCount] >= 2)
    {
      [v10 removeLastBlock];
    }
  }
}

+ (void)mapSectionProperties:(void *)a3 toSection:(id)a4
{
  v39 = a4;
  v5 = *(a3 + 2);
  if (v5)
  {
    v6 = *(a3 + 3);
    v7 = [v39 mutableTopBorder];
    [WBBorder readFrom:v6 to:v7];

    v5 = *(a3 + 2);
  }

  if ((v5 & 2) != 0)
  {
    *(a3 + 2) = v5;
    v8 = *(a3 + 4);
    v9 = [v39 mutableLeftBorder];
    [WBBorder readFrom:v8 to:v9];

    v5 = *(a3 + 2);
  }

  if ((v5 & 4) != 0)
  {
    *(a3 + 2) = v5;
    v10 = *(a3 + 5);
    v11 = [v39 mutableBottomBorder];
    [WBBorder readFrom:v10 to:v11];

    v5 = *(a3 + 2);
  }

  if ((v5 & 8) != 0)
  {
    *(a3 + 2) = v5;
    v12 = *(a3 + 6);
    v13 = [v39 mutableRightBorder];
    [WBBorder readFrom:v12 to:v13];

    v5 = *(a3 + 2);
  }

  if ((v5 & 0x40) != 0)
  {
    [v39 setBreakType:*(a3 + 18)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x400000) != 0)
  {
    [v39 setPageWidth:*(a3 + 34)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x800000) != 0)
  {
    [v39 setPageHeight:*(a3 + 35)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x4000) != 0)
  {
    [v39 setPageOrientation:*(a3 + 26)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x1000000) != 0)
  {
    [v39 setLeftMargin:*(a3 + 36)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x2000000) != 0)
  {
    [v39 setRightMargin:*(a3 + 37)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x80000) != 0)
  {
    [v39 setTopMargin:*(a3 + 31)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x100000) != 0)
  {
    [v39 setBottomMargin:*(a3 + 32)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x8000000) != 0)
  {
    [v39 setHeaderMargin:*(a3 + 39)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x10000000) != 0)
  {
    [v39 setFooterMargin:*(a3 + 40)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x4000000) != 0)
  {
    [v39 setGutterMargin:*(a3 + 38)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x10000000000000) != 0)
  {
    [v39 setRtlGutter:*(a3 + 248) != 0];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x800) != 0)
  {
    [v39 setBorderDepth:*(a3 + 23)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x400) != 0)
  {
    [v39 setBorderDisplay:*(a3 + 22)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x1000) != 0)
  {
    [v39 setBorderOffset:*(a3 + 24)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x10000000000) != 0)
  {
    [v39 setLineNumberStart:*(a3 + 117)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x80000000) != 0)
  {
    [v39 setLineNumberIncrement:*(a3 + 108)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x10000) != 0)
  {
    [v39 setLineNumberDistance:*(a3 + 56)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x80) != 0)
  {
    [v39 setLineNumberRestart:*(a3 + 19)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x100) != 0)
  {
    [v39 setPageNumberFormat:*(a3 + 20)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x800000000) != 0)
  {
    [v39 setPageNumberStart:*(a3 + 112)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x400000000000) != 0)
  {
    [v39 setPageNumberRestart:*(a3 + 242) != 0];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x200000000000) != 0)
  {
    [v39 setChapterNumberSeparator:*(a3 + 241)];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x2000000000000) != 0)
  {
    [v39 setColumnsEqualWidth:*(a3 + 245) != 0];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x4000000000000) != 0)
  {
    [v39 setBidi:*(a3 + 246) != 0];
    v5 = *(a3 + 2);
  }

  if ((v5 & 0x20000000000) == 0 || (v14 = *(a3 + 118) + 1, [v39 setColumnCount:v14], !v14))
  {
    v15 = [v39 resolveMode];
    [v39 setResolveMode:2];
    if ([v39 isColumnCountOverridden])
    {
      v14 = [v39 columnCount];
    }

    else
    {
      v14 = 0;
    }

    [v39 setResolveMode:v15];
  }

  v16 = v14;
  if (v14 >= 2u)
  {
    v17 = 0;
    v18 = (a3 + 200);
    v19 = (a3 + 176);
    while (1)
    {
      v20 = *(a3 + 2);
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
              v31 = (a3 + 176);
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
                [v39 appendColumnSpace:*(v31 + 8)];
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

      v27 = (a3 + 200);
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

      [v39 appendColumnWidth:*(v27 + 8)];
      if ((*(a3 + 2) & 0x20000000) != 0)
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
  v34 = *(a3 + 2);
  if ((v34 & 0x200000) != 0)
  {
    [v39 setColumnSpace:*(a3 + 33)];
    v34 = *(a3 + 2);
  }

  if ((v34 & 0x200) != 0)
  {
    [v39 setVerticalJustification:*(a3 + 21)];
    v34 = *(a3 + 2);
  }

  if ((v34 & 0x80000000000) != 0)
  {
    [v39 setTitlePage:*(a3 + 239) != 0];
    v34 = *(a3 + 2);
  }

  if ((v34 & 0x4000000000) != 0)
  {
    [v39 setFormattingChanged:*(a3 + 115) != 0];
    v34 = *(a3 + 2);
  }

  if ((v34 & 0x8000000000) != 0)
  {
    [v39 setIndexToAuthorIDOfFormattingChange:*(a3 + 116)];
    v34 = *(a3 + 2);
  }

  if ((v34 & 0x10) != 0)
  {
    v35 = [MEMORY[0x277CBEAA8] tc_dateWithWordDate:*(a3 + 7)];
    [v39 setFormattingChangeDate:v35];

    v34 = *(a3 + 2);
  }

  if ((v34 & 0x8000) != 0)
  {
    v36 = *(a3 + 27) - 1;
    if (v36 > 4)
    {
      v37 = 1;
    }

    else
    {
      v37 = dword_25D70E318[v36];
    }

    [v39 setTextDirection:v37];
  }
}

+ (void)mapSection:(id)a3 toSectionProperties:(void *)a4
{
  v5 = a3;
  if ([v5 isTopBorderOverridden])
  {
    v6 = [v5 topBorder];
    v7 = *(a4 + 3);
    *(a4 + 2) |= 1uLL;
    [WBBorder write:v6 to:v7];
  }

  if ([v5 isLeftBorderOverridden])
  {
    v8 = [v5 leftBorder];
    *(a4 + 2) |= 2uLL;
    [WBBorder write:v8 to:*(a4 + 4)];
  }

  if ([v5 isBottomBorderOverridden])
  {
    v9 = [v5 bottomBorder];
    *(a4 + 2) |= 4uLL;
    [WBBorder write:v9 to:*(a4 + 5)];
  }

  if ([v5 isRightBorderOverridden])
  {
    v10 = [v5 rightBorder];
    *(a4 + 2) |= 8uLL;
    [WBBorder write:v10 to:*(a4 + 6)];
  }

  if ([v5 isBreakTypeOverridden])
  {
    *(a4 + 18) = [v5 breakType];
    *(a4 + 2) |= 0x40uLL;
  }

  if ([v5 isPageWidthOverridden])
  {
    *(a4 + 34) = [v5 pageWidth];
    *(a4 + 2) |= 0x400000uLL;
  }

  if ([v5 isPageHeightOverridden])
  {
    *(a4 + 35) = [v5 pageHeight];
    *(a4 + 2) |= 0x800000uLL;
  }

  if ([v5 isPageOrientationOverridden])
  {
    *(a4 + 26) = [v5 pageOrientation];
    *(a4 + 2) |= 0x4000uLL;
  }

  if ([v5 isLeftMarginOverridden])
  {
    *(a4 + 36) = [v5 leftMargin];
    *(a4 + 2) |= 0x1000000uLL;
  }

  if ([v5 isRightMarginOverridden])
  {
    *(a4 + 37) = [v5 rightMargin];
    *(a4 + 2) |= 0x2000000uLL;
  }

  if ([v5 isTopMarginOverridden])
  {
    *(a4 + 31) = [v5 topMargin];
    *(a4 + 2) |= 0x80000uLL;
  }

  if ([v5 isBottomMarginOverridden])
  {
    *(a4 + 32) = [v5 bottomMargin];
    *(a4 + 2) |= 0x100000uLL;
  }

  if ([v5 isHeaderMarginOverridden])
  {
    *(a4 + 39) = [v5 headerMargin];
    *(a4 + 2) |= 0x8000000uLL;
  }

  if ([v5 isFooterMarginOverridden])
  {
    *(a4 + 40) = [v5 footerMargin];
    *(a4 + 2) |= 0x10000000uLL;
  }

  if ([v5 isGutterMarginOverridden])
  {
    *(a4 + 38) = [v5 gutterMargin];
    *(a4 + 2) |= 0x4000000uLL;
  }

  if ([v5 isRtlGutterOverridden])
  {
    *(a4 + 248) = [v5 rtlGutter];
    *(a4 + 2) |= 0x10000000000000uLL;
  }

  if ([v5 isBorderDepthOverridden])
  {
    *(a4 + 23) = [v5 borderDepth];
    *(a4 + 2) |= 0x800uLL;
  }

  if ([v5 isBorderDisplayOverridden])
  {
    *(a4 + 22) = [v5 borderDisplay];
    *(a4 + 2) |= 0x400uLL;
  }

  if ([v5 isBorderOffsetOverridden])
  {
    *(a4 + 24) = [v5 borderOffset];
    *(a4 + 2) |= 0x1000uLL;
  }

  if ([v5 isLineNumberStartOverridden])
  {
    *(a4 + 117) = [v5 lineNumberStart];
    *(a4 + 2) |= 0x10000000000uLL;
  }

  if ([v5 isLineNumberIncrementOverridden])
  {
    *(a4 + 108) = [v5 lineNumberIncrement];
    *(a4 + 2) |= 0x80000000uLL;
  }

  if ([v5 isLineNumberDistanceOverridden])
  {
    *(a4 + 28) = [v5 lineNumberDistance];
    *(a4 + 2) |= 0x10000uLL;
  }

  if ([v5 isLineNumberRestartOverridden])
  {
    *(a4 + 19) = [v5 lineNumberRestart];
    *(a4 + 2) |= 0x80uLL;
  }

  if ([v5 isPageNumberFormatOverridden])
  {
    *(a4 + 20) = +[WBListLevel numberFormatEnumFor:](WBListLevel, "numberFormatEnumFor:", [v5 pageNumberFormat]);
    *(a4 + 2) |= 0x100uLL;
  }

  if ([v5 isPageNumberStartOverridden])
  {
    *(a4 + 112) = [v5 pageNumberStart];
    *(a4 + 2) |= 0x800000000uLL;
  }

  if ([v5 isPageNumberRestartOverridden])
  {
    *(a4 + 242) = [v5 pageNumberRestart];
    *(a4 + 2) |= 0x400000000000uLL;
  }

  if ([v5 isChapterNumberSeparatorOverridden])
  {
    *(a4 + 241) = [v5 chapterNumberSeparator];
    *(a4 + 2) |= 0x200000000000uLL;
  }

  if ([v5 isColumnCountOverridden])
  {
    *(a4 + 118) = [v5 columnCount] - 1;
    *(a4 + 2) |= 0x20000000000uLL;
  }

  if ([v5 isColumnsEqualWidthOverridden])
  {
    *(a4 + 245) = [v5 columnsEqualWidth];
    *(a4 + 2) |= 0x2000000000000uLL;
  }

  if ([v5 isColumnCountOverridden])
  {
    if ([v5 isColumnsEqualWidthOverridden])
    {
      if (([v5 columnsEqualWidth] & 1) == 0)
      {
        v11 = [v5 columnCount];
        v12 = v11;
        if (v11)
        {
          v13 = 0;
          v14 = v11 - 1;
          do
          {
            v15 = [v5 columnWidthAt:v13];
            *(a4 + 2) |= 0x40000000uLL;
            v20 = v13;
            v21 = &v20;
            *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a4 + 192, &v20) + 8) = v15;
            if (v13 < v14)
            {
              v16 = [v5 columnSpaceAt:v13];
              *(a4 + 2) |= 0x20000000uLL;
              v20 = v13;
              v21 = &v20;
              *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a4 + 168, &v20) + 8) = v16;
            }

            v13 = (v13 + 1);
          }

          while (v12 != v13);
        }
      }
    }
  }

  if ([v5 isColumnSpaceOverridden])
  {
    *(a4 + 33) = [v5 columnSpace];
    *(a4 + 2) |= 0x200000uLL;
  }

  if ([v5 isVerticalJustificationOverridden])
  {
    *(a4 + 21) = [v5 verticalJustification];
    *(a4 + 2) |= 0x200uLL;
  }

  if ([v5 isTitlePageOverridden])
  {
    *(a4 + 239) = [v5 titlePage];
    *(a4 + 2) |= 0x80000000000uLL;
  }

  if ([v5 isBidiOverridden])
  {
    *(a4 + 246) = [v5 bidi];
    *(a4 + 2) |= 0x4000000000000uLL;
  }

  if ([v5 isFormattingChangedOverridden])
  {
    *(a4 + 115) = [v5 formattingChanged];
    *(a4 + 2) |= 0x4000000000uLL;
  }

  if ([v5 isIndexToAuthorIDOfFormattingChangeOverridden])
  {
    *(a4 + 116) = [v5 indexToAuthorIDOfFormattingChange];
    *(a4 + 2) |= 0x8000000000uLL;
  }

  if ([v5 isFormattingChangeDateOverridden])
  {
    v17 = [v5 formattingChangeDate];
    *(a4 + 2) |= 0x10uLL;
    [v17 tc_copyToWordDate:*(a4 + 7)];
  }

  if ([v5 isTextDirectionOverridden])
  {
    v18 = [v5 textDirection];
    if (v18 >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_25D70E32C[v18];
    }

    *(a4 + 27) = v19;
    *(a4 + 2) |= 0x8000uLL;
  }
}

+ (void)mapPrinterSettings:(void *)a3 toSection:(id)a4
{
  v9 = a4;
  v5 = *(a3 + 74);
  if (v5 < 0x7B)
  {
    if (v5 == 120)
    {
      [v9 setPageScale:*(*(a3 + 38) + 56)];
    }

    else if (v5 >= 0x3D)
    {
      v8 = *(a3 + 38);
      if ((*(v8 + 40) & 0x10) != 0)
      {
        [v9 setPageScale:*(v8 + 52)];
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 38) + 122 length:v5 - 122];
    [WXSection scaleFromPrinterSettings:v6];
    if (v7 != 1.0)
    {
      [v9 setPageScale:(v7 * 100.0)];
    }
  }
}

@end