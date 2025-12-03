@interface WDSection
- (BOOL)bidi;
- (BOOL)columnsEqualWidth;
- (BOOL)formattingChanged;
- (BOOL)isBidiOverridden;
- (BOOL)isBorderDepthOverridden;
- (BOOL)isBorderDisplayOverridden;
- (BOOL)isBorderOffsetOverridden;
- (BOOL)isBottomBorderOverridden;
- (BOOL)isBottomMarginOverridden;
- (BOOL)isBreakTypeOverridden;
- (BOOL)isChapterNumberSeparatorOverridden;
- (BOOL)isColumnCountOverridden;
- (BOOL)isColumnSpaceOverridden;
- (BOOL)isColumnWidthDefinedAt:(unsigned int)at;
- (BOOL)isColumnsEqualWidthOverridden;
- (BOOL)isFooterMarginOverridden;
- (BOOL)isFormattingChangeDateOverridden;
- (BOOL)isFormattingChangedOverridden;
- (BOOL)isGutterMarginOverridden;
- (BOOL)isHeaderMarginOverridden;
- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden;
- (BOOL)isLastColumnWidthDefined;
- (BOOL)isLeftBorderOverridden;
- (BOOL)isLeftMarginOverridden;
- (BOOL)isLineNumberDistanceOverridden;
- (BOOL)isLineNumberIncrementOverridden;
- (BOOL)isLineNumberRestartOverridden;
- (BOOL)isLineNumberStartOverridden;
- (BOOL)isPageHeightOverridden;
- (BOOL)isPageNumberFormatOverridden;
- (BOOL)isPageNumberRestartOverridden;
- (BOOL)isPageNumberStartOverridden;
- (BOOL)isPageOrientationOverridden;
- (BOOL)isPageScaleOverridden;
- (BOOL)isPageWidthOverridden;
- (BOOL)isRightBorderOverridden;
- (BOOL)isRightMarginOverridden;
- (BOOL)isRtlGutterOverridden;
- (BOOL)isTextDirectionOverridden;
- (BOOL)isTitlePageOverridden;
- (BOOL)isTopBorderOverridden;
- (BOOL)isTopMarginOverridden;
- (BOOL)isVerticalJustificationOverridden;
- (BOOL)pageNumberRestart;
- (BOOL)rtlGutter;
- (BOOL)titlePage;
- (WDDocument)document;
- (WDSection)initWithDocument:(id)document;
- (id).cxx_construct;
- (id)bottomBorder;
- (id)description;
- (id)formattingChangeDate;
- (id)leftBorder;
- (id)mutableBottomBorder;
- (id)mutableLeftBorder;
- (id)mutableRightBorder;
- (id)mutableTopBorder;
- (id)rightBorder;
- (id)topBorder;
- (int)borderDepth;
- (int)borderDisplay;
- (int)borderOffset;
- (int)breakType;
- (int)chapterNumberSeparator;
- (int)lineNumberRestart;
- (int)pageNumberFormat;
- (int)pageOrientation;
- (int)resolveMode;
- (int)textDirection;
- (int)verticalJustification;
- (int64_t)bottomMargin;
- (int64_t)columnSpace;
- (int64_t)columnSpaceAt:(unsigned int)at;
- (int64_t)columnWidthAt:(unsigned int)at;
- (int64_t)footerMargin;
- (int64_t)gutterMargin;
- (int64_t)headerMargin;
- (int64_t)leftMargin;
- (int64_t)pageHeight;
- (int64_t)pageWidth;
- (int64_t)rightMargin;
- (int64_t)topMargin;
- (signed)lineNumberDistance;
- (signed)lineNumberStart;
- (unsigned)columnCount;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (unsigned)lineNumberIncrement;
- (unsigned)pageNumberStart;
- (unsigned)pageScale;
- (void)appendColumnSpace:(int64_t)space;
- (void)appendColumnWidth:(int64_t)width;
- (void)setBidi:(BOOL)bidi;
- (void)setBorderDepth:(int)depth;
- (void)setBorderDisplay:(int)display;
- (void)setBorderOffset:(int)offset;
- (void)setBottomMargin:(int64_t)margin;
- (void)setBreakType:(int)type;
- (void)setChapterNumberSeparator:(int)separator;
- (void)setColumnCount:(unsigned __int16)count;
- (void)setColumnSpace:(int64_t)space;
- (void)setColumnsEqualWidth:(BOOL)width;
- (void)setFooterMargin:(int64_t)margin;
- (void)setFormattingChangeDate:(id)date;
- (void)setFormattingChanged:(BOOL)changed;
- (void)setGutterMargin:(int64_t)margin;
- (void)setHeaderMargin:(int64_t)margin;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change;
- (void)setLeftMargin:(int64_t)margin;
- (void)setLineNumberDistance:(signed __int16)distance;
- (void)setLineNumberIncrement:(unsigned __int16)increment;
- (void)setLineNumberRestart:(int)restart;
- (void)setLineNumberStart:(signed __int16)start;
- (void)setPageHeight:(int64_t)height;
- (void)setPageNumberFormat:(int)format;
- (void)setPageNumberRestart:(BOOL)restart;
- (void)setPageNumberStart:(unsigned __int16)start;
- (void)setPageOrientation:(int)orientation;
- (void)setPageScale:(unsigned int)scale;
- (void)setPageWidth:(int64_t)width;
- (void)setResolveMode:(int)mode;
- (void)setRightMargin:(int64_t)margin;
- (void)setRtlGutter:(BOOL)gutter;
- (void)setTextDirection:(int)direction;
- (void)setTitlePage:(BOOL)page;
- (void)setTopMargin:(int64_t)margin;
- (void)setVerticalJustification:(int)justification;
@end

@implementation WDSection

- (id).cxx_construct
{
  *(self + 35) = 0;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 63) = 0;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 58) = 0;
  *(self + 59) = 0;
  return self;
}

- (int)resolveMode
{
  v2 = *(self + 8);
  if ((v2 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = (v2 >> 1) & 2;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isColumnCountOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v2 = 512;
    return *(&self->super.isa + v2) >> 31;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 54) & 0x80000000) != 0)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    if ((*(self + 8) & 1) != 0 || (*(&self->mOriginalProperties + 54) & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(self + 8))
  {
LABEL_10:
    v2 = 288;
    return *(&self->super.isa + v2) >> 31;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)isPageWidthOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 6) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int64_t)pageWidth
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 0x40) != 0)
  {
    v3 = 336;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 0x40) == 0)
    {
      return 0;
    }

    v3 = 112;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isPageHeightOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3) >> 7;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int64_t)pageHeight
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 0x80) != 0)
  {
    v3 = 344;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 0x80) == 0)
    {
      return 0;
    }

    v3 = 120;
  }

  return *(&self->super.isa + v3);
}

- (int64_t)leftMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 8) != 0)
  {
    v3 = 368;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 8) == 0)
    {
      return 1800;
    }

    v3 = 144;
  }

  return *(&self->super.isa + v3);
}

- (int64_t)rightMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 0x10) != 0)
  {
    v3 = 376;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 0x10) == 0)
    {
      return 1800;
    }

    v3 = 152;
  }

  return *(&self->super.isa + v3);
}

- (int64_t)topMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 0x20) != 0)
  {
    v3 = 384;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 0x20) == 0)
    {
      return 1440;
    }

    v3 = 160;
  }

  return *(&self->super.isa + v3);
}

- (int64_t)bottomMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 0x40) != 0)
  {
    v3 = 392;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 0x40) == 0)
    {
      return 1440;
    }

    v3 = 168;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isLeftMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 3) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isRightMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 4) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isTopMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 5) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isBottomMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 6) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isBreakTypeOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isTitlePageOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int64_t)headerMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 0x80) != 0)
  {
    v3 = 400;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 0x80) == 0)
    {
      return 720;
    }

    v3 = 176;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)titlePage
{
  if ((*(self + 8) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 110), (v2 & 0x20) != 0))
  {
    return (v2 >> 4) & 1;
  }

  else if (*(self + 8) & 4) != 0 || (*(self + 8))
  {
    v4 = *(&self->mOriginalProperties + 110);
    LOBYTE(v3) = (v4 & 0x20) != 0 && (v4 & 0x10) != 0;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unsigned)columnCount
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 54) & 0x80000000) != 0)
  {
    v3 = 480;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 54) & 0x80000000) == 0)
    {
      return 0;
    }

    v3 = 256;
  }

  return *(&self->super.isa + v3);
}

- (int)breakType
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 0x20) != 0)
  {
    v3 = 328;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 0x20) == 0)
    {
      return 2;
    }

    v3 = 104;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isColumnsEqualWidthOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)mutableRightBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    rightBorder = self->mTrackedProperties.rightBorder;
    if (!rightBorder)
    {
      p_rightBorder = &self->mTrackedProperties.rightBorder;
      v4 = 512;
      goto LABEL_7;
    }

LABEL_8:
    v7 = rightBorder;
    goto LABEL_10;
  }

  if (*(self + 8))
  {
    p_rightBorder = &self->mOriginalProperties.rightBorder;
    rightBorder = self->mOriginalProperties.rightBorder;
    if (!rightBorder)
    {
      v4 = 288;
LABEL_7:
      *(&self->super.isa + v4) |= 0x10u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_rightBorder;
      *p_rightBorder = v5;

      rightBorder = *p_rightBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)mutableTopBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    topBorder = self->mTrackedProperties.topBorder;
    if (!topBorder)
    {
      p_mTrackedProperties = &self->mTrackedProperties;
      v4 = 512;
      goto LABEL_7;
    }

LABEL_8:
    v7 = topBorder;
    goto LABEL_10;
  }

  if (*(self + 8))
  {
    p_mTrackedProperties = &self->mOriginalProperties;
    topBorder = self->mOriginalProperties.topBorder;
    if (!topBorder)
    {
      v4 = 288;
LABEL_7:
      *(&self->super.isa + v4) |= 2u;
      v5 = objc_alloc_init(WDBorder);
      v6 = p_mTrackedProperties->topBorder;
      p_mTrackedProperties->topBorder = v5;

      topBorder = p_mTrackedProperties->topBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)mutableLeftBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    leftBorder = self->mTrackedProperties.leftBorder;
    if (!leftBorder)
    {
      p_leftBorder = &self->mTrackedProperties.leftBorder;
      v4 = 512;
      goto LABEL_7;
    }

LABEL_8:
    v7 = leftBorder;
    goto LABEL_10;
  }

  if (*(self + 8))
  {
    p_leftBorder = &self->mOriginalProperties.leftBorder;
    leftBorder = self->mOriginalProperties.leftBorder;
    if (!leftBorder)
    {
      v4 = 288;
LABEL_7:
      *(&self->super.isa + v4) |= 4u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_leftBorder;
      *p_leftBorder = v5;

      leftBorder = *p_leftBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)mutableBottomBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    bottomBorder = self->mTrackedProperties.bottomBorder;
    if (!bottomBorder)
    {
      p_bottomBorder = &self->mTrackedProperties.bottomBorder;
      v4 = 512;
      goto LABEL_7;
    }

LABEL_8:
    v7 = bottomBorder;
    goto LABEL_10;
  }

  if (*(self + 8))
  {
    p_bottomBorder = &self->mOriginalProperties.bottomBorder;
    bottomBorder = self->mOriginalProperties.bottomBorder;
    if (!bottomBorder)
    {
      v4 = 288;
LABEL_7:
      *(&self->super.isa + v4) |= 8u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_bottomBorder;
      *p_bottomBorder = v5;

      bottomBorder = *p_bottomBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (WDSection)initWithDocument:(id)document
{
  documentCopy = document;
  v22.receiver = self;
  v22.super_class = WDSection;
  v5 = [(WDSection *)&v22 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(v5 + 8) & 0xF8 | 1;
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = [[WDText alloc] initWithDocument:documentCopy textType:0];
    mText = v6->mText;
    v6->mText = v7;

    v9 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mEvenPageHeader = v6->mEvenPageHeader;
    v6->mEvenPageHeader = v9;

    v11 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mOddPageHeader = v6->mOddPageHeader;
    v6->mOddPageHeader = v11;

    v13 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mFirstPageHeader = v6->mFirstPageHeader;
    v6->mFirstPageHeader = v13;

    v15 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mEvenPageFooter = v6->mEvenPageFooter;
    v6->mEvenPageFooter = v15;

    v17 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mOddPageFooter = v6->mOddPageFooter;
    v6->mOddPageFooter = v17;

    v19 = [[WDText alloc] initWithDocument:documentCopy textType:2];
    mFirstPageFooter = v6->mFirstPageFooter;
    v6->mFirstPageFooter = v19;
  }

  return v6;
}

- (void)setResolveMode:(int)mode
{
  v3 = (2 * (mode == 1)) | (4 * (mode == 2));
  if (!mode)
  {
    ++v3;
  }

  *(self + 8) = v3 | *(self + 8) & 0xF8;
}

- (void)setBreakType:(int)type
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 328;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 104;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x20u;
}

- (void)setPageWidth:(int64_t)width
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 336;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 112;
  }

  *(&self->super.isa + v4) = width;
  *(&self->super.isa + v3) |= 0x40u;
}

- (void)setPageHeight:(int64_t)height
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 344;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 120;
  }

  *(&self->super.isa + v4) = height;
  *(&self->super.isa + v3) |= 0x80u;
}

- (unsigned)pageScale
{
  if (*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217))
  {
    v3 = 352;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 1) == 0)
    {
      return 1;
    }

    v3 = 128;
  }

  return *(&self->super.isa + v3);
}

- (void)setPageScale:(unsigned int)scale
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 352;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 128;
  }

  *(&self->super.isa + v4) = scale;
  *(&self->super.isa + v3) |= 0x100u;
}

- (BOOL)isPageScaleOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3 + 1) & 1;
  }

  if ((*(self + 8) & 4) == 0)
  {
    if ((*(self + 8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((*(&self->mTrackedProperties + 217) & 1) == 0)
  {
    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3 + 1) & 1;
  }

  return 1;
}

- (int)textDirection
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 4) != 0)
  {
    v3 = 360;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 4) == 0)
    {
      return 1;
    }

    v3 = 136;
  }

  return *(&self->super.isa + v3);
}

- (void)setTextDirection:(int)direction
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 360;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 136;
  }

  *(&self->super.isa + v4) = direction;
  *(&self->super.isa + v3) |= 0x400u;
}

- (BOOL)isTextDirectionOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 2) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)pageOrientation
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 217) & 2) != 0)
  {
    v3 = 356;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 217) & 2) == 0)
    {
      return 1;
    }

    v3 = 132;
  }

  return *(&self->super.isa + v3);
}

- (void)setPageOrientation:(int)orientation
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 356;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 132;
  }

  *(&self->super.isa + v4) = orientation;
  *(&self->super.isa + v3) |= 0x200u;
}

- (BOOL)isPageOrientationOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 1) >> 1) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 1) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setLeftMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 368;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 144;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x800u;
}

- (void)setRightMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 376;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 152;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x1000u;
}

- (void)setTopMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 384;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 160;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x2000u;
}

- (void)setBottomMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 392;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 168;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x4000u;
}

- (void)setHeaderMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 400;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 176;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x8000u;
}

- (BOOL)isHeaderMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3 + 1) >> 7;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 217) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 217) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3 + 1) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int64_t)footerMargin
{
  if (*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218))
  {
    v3 = 408;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 1) == 0)
    {
      return 720;
    }

    v3 = 184;
  }

  return *(&self->super.isa + v3);
}

- (void)setFooterMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 408;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 184;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x10000u;
}

- (BOOL)isFooterMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3 + 2) & 1;
  }

  if ((*(self + 8) & 4) == 0)
  {
    if ((*(self + 8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((*(&self->mTrackedProperties + 218) & 1) == 0)
  {
    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3 + 2) & 1;
  }

  return 1;
}

- (int64_t)gutterMargin
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 2) != 0)
  {
    v3 = 416;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 2) == 0)
    {
      return 0;
    }

    v3 = 192;
  }

  return *(&self->super.isa + v3);
}

- (void)setGutterMargin:(int64_t)margin
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 416;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 192;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x20000u;
}

- (BOOL)isGutterMarginOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 1) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)rtlGutter
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 4) != 0)
  {
    v3 = 424;
LABEL_9:
    v2 = *(&self->super.isa + v3);
    return v2 & 1;
  }

  if ((*(self + 8) & 4) != 0 || (*(self + 8)) && (*(&self->mOriginalProperties + 218) & 4) != 0)
  {
    v3 = 200;
    goto LABEL_9;
  }

  v2 = 0;
  return v2 & 1;
}

- (void)setRtlGutter:(BOOL)gutter
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 424;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 200;
  }

  *(&self->super.isa + v4) = gutter;
  *(&self->super.isa + v3) |= 0x40000u;
}

- (BOOL)isRtlGutterOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 2) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)topBorder
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 2) != 0)
  {
    v5 = 296;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 2) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 72;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isTopBorderOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)leftBorder
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 4) != 0)
  {
    v5 = 304;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 4) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 80;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isLeftBorderOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)bottomBorder
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 8) != 0)
  {
    v5 = 312;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 8) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 88;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isBottomBorderOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)rightBorder
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 216) & 0x10) != 0)
  {
    v5 = 320;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 216) & 0x10) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 96;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isRightBorderOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 216) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 216) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)borderDepth
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 8) != 0)
  {
    v3 = 428;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 8) == 0)
    {
      return 0;
    }

    v3 = 204;
  }

  return *(&self->super.isa + v3);
}

- (void)setBorderDepth:(int)depth
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 428;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 204;
  }

  *(&self->super.isa + v4) = depth;
  *(&self->super.isa + v3) |= 0x80000u;
}

- (BOOL)isBorderDepthOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 3) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)borderDisplay
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 0x10) != 0)
  {
    v3 = 432;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 0x10) == 0)
    {
      return 0;
    }

    v3 = 208;
  }

  return *(&self->super.isa + v3);
}

- (void)setBorderDisplay:(int)display
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 432;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 208;
  }

  *(&self->super.isa + v4) = display;
  *(&self->super.isa + v3) |= 0x100000u;
}

- (BOOL)isBorderDisplayOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 4) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)borderOffset
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 0x20) != 0)
  {
    v3 = 436;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 0x20) == 0)
    {
      return 0;
    }

    v3 = 212;
  }

  return *(&self->super.isa + v3);
}

- (void)setBorderOffset:(int)offset
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 436;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 212;
  }

  *(&self->super.isa + v4) = offset;
  *(&self->super.isa + v3) |= 0x200000u;
}

- (BOOL)isBorderOffsetOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 5) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (signed)lineNumberStart
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 0x40) != 0)
  {
    v3 = 440;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 8) & 4) != 0 || (*(self + 8)) && (*(&self->mOriginalProperties + 218) & 0x40) != 0)
  {
    v3 = 216;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)setLineNumberStart:(signed __int16)start
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 440;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 216;
  }

  *(&self->super.isa + v4) = start;
  *(&self->super.isa + v3) |= 0x400000u;
}

- (BOOL)isLineNumberStartOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 2) >> 6) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 2) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)lineNumberIncrement
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 218) & 0x80) != 0)
  {
    v3 = 442;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 218) & 0x80) == 0)
    {
      return 0;
    }

    v3 = 218;
  }

  return *(&self->super.isa + v3);
}

- (void)setLineNumberIncrement:(unsigned __int16)increment
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 442;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 218;
  }

  *(&self->super.isa + v4) = increment;
  *(&self->super.isa + v3) |= 0x800000u;
}

- (BOOL)isLineNumberIncrementOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3 + 2) >> 7;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 218) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 218) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3 + 2) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (signed)lineNumberDistance
{
  if (*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 219))
  {
    v3 = 444;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 8) & 4) != 0 || (*(self + 8)) && (*(&self->mOriginalProperties + 219))
  {
    v3 = 220;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)setLineNumberDistance:(signed __int16)distance
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 444;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 220;
  }

  *(&self->super.isa + v4) = distance;
  *(&self->super.isa + v3) |= 0x1000000u;
}

- (BOOL)isLineNumberDistanceOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return *(&self->super.isa + v3 + 3) & 1;
  }

  if ((*(self + 8) & 4) == 0)
  {
    if ((*(self + 8) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((*(&self->mTrackedProperties + 219) & 1) == 0)
  {
    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v3 = 288;
    return *(&self->super.isa + v3 + 3) & 1;
  }

  return 1;
}

- (int)lineNumberRestart
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 219) & 2) != 0)
  {
    v3 = 448;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 219) & 2) == 0)
    {
      return 0;
    }

    v3 = 224;
  }

  return *(&self->super.isa + v3);
}

- (void)setLineNumberRestart:(int)restart
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 448;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 224;
  }

  *(&self->super.isa + v4) = restart;
  *(&self->super.isa + v3) |= 0x2000000u;
}

- (BOOL)isLineNumberRestartOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 3) >> 1) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 219) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)pageNumberFormat
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 219) & 4) != 0)
  {
    v3 = 452;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 219) & 4) == 0)
    {
      return 0;
    }

    v3 = 228;
  }

  return *(&self->super.isa + v3);
}

- (void)setPageNumberFormat:(int)format
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 452;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 228;
  }

  *(&self->super.isa + v4) = format;
  *(&self->super.isa + v3) |= 0x4000000u;
}

- (BOOL)isPageNumberFormatOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 3) >> 2) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 219) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)pageNumberStart
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 219) & 8) != 0)
  {
    v3 = 456;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 219) & 8) == 0)
    {
      return 0;
    }

    v3 = 232;
  }

  return *(&self->super.isa + v3);
}

- (void)setPageNumberStart:(unsigned __int16)start
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 456;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 232;
  }

  *(&self->super.isa + v4) = start;
  *(&self->super.isa + v3) |= 0x8000000u;
}

- (BOOL)isPageNumberStartOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 3) >> 3) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 219) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)pageNumberRestart
{
  if ((*(self + 8) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 54), (v2 & 0x20000000) != 0))
  {
    return (v2 >> 28) & 1;
  }

  else if (*(self + 8) & 4) != 0 || (*(self + 8))
  {
    v4 = *(&self->mOriginalProperties + 54);
    LOBYTE(v3) = (v4 & 0x20000000) != 0 && (v4 & 0x10000000) != 0;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setPageNumberRestart:(BOOL)restart
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
  }

  if (restart)
  {
    v4 = 805306368;
  }

  else
  {
    v4 = 0x20000000;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xCFFFFFFF;
}

- (BOOL)isPageNumberRestartOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 3) >> 5) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 219) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)chapterNumberSeparator
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 219) & 0x40) != 0)
  {
    v3 = 460;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 219) & 0x40) == 0)
    {
      return 0;
    }

    v3 = 236;
  }

  return *(&self->super.isa + v3);
}

- (void)setChapterNumberSeparator:(int)separator
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    v4 = 460;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 288;
    v4 = 236;
  }

  *(&self->super.isa + v4) = separator;
  *(&self->super.isa + v3) |= 0x40000000u;
}

- (BOOL)isChapterNumberSeparatorOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 512;
    return (*(&self->super.isa + v3 + 3) >> 6) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 219) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 219) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 288;
    return (*(&self->super.isa + v3 + 3) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setColumnCount:(unsigned __int16)count
{
  if ((*(self + 8) & 2) != 0)
  {
    columnWidths = self->mTrackedProperties.columnWidths;
    self->mTrackedProperties.columnWidths = 0;

    columnSpaces = self->mTrackedProperties.columnSpaces;
    self->mTrackedProperties.columnSpaces = 0;

    self->mTrackedProperties.columnCount = count;
    *(&self->mTrackedProperties + 54) |= 0x80000000;
  }

  else if (*(self + 8))
  {
    v5 = self->mOriginalProperties.columnWidths;
    self->mOriginalProperties.columnWidths = 0;

    v6 = self->mOriginalProperties.columnSpaces;
    self->mOriginalProperties.columnSpaces = 0;

    self->mOriginalProperties.columnCount = count;
    *(&self->mOriginalProperties + 54) |= 0x80000000;
    if ((*(&self->mTrackedProperties + 54) & 0x80000000) == 0)
    {
      v7 = self->mTrackedProperties.columnWidths;
      self->mTrackedProperties.columnWidths = 0;

      v8 = self->mTrackedProperties.columnSpaces;
      self->mTrackedProperties.columnSpaces = 0;
    }
  }
}

- (int64_t)columnWidthAt:(unsigned int)at
{
  v5 = *(self + 8);
  if ((v5 & 6) != 0)
  {
    if ([(NSMutableArray *)self->mTrackedProperties.columnWidths count]> at)
    {
      v6 = [(NSMutableArray *)self->mTrackedProperties.columnWidths objectAtIndex:at];
      intValue = [v6 intValue];
      goto LABEL_9;
    }

    v5 = *(self + 8);
  }

  if ((v5 & 4) == 0 && (v5 & 1) == 0 || [(NSMutableArray *)self->mOriginalProperties.columnWidths count]<= at)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->mOriginalProperties.columnWidths objectAtIndex:at];
  intValue = [v6 intValue];
LABEL_9:
  v8 = intValue;

  return v8;
}

- (void)appendColumnWidth:(int64_t)width
{
  if ((*(self + 8) & 2) != 0)
  {
    columnWidths = self->mTrackedProperties.columnWidths;
    if (!columnWidths)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->mTrackedProperties.columnWidths;
      self->mTrackedProperties.columnWidths = v8;

      columnWidths = self->mTrackedProperties.columnWidths;
    }
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    columnWidths = self->mOriginalProperties.columnWidths;
    if (!columnWidths)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->mOriginalProperties.columnWidths;
      self->mOriginalProperties.columnWidths = v6;

      columnWidths = self->mOriginalProperties.columnWidths;
    }
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  [(NSMutableArray *)columnWidths addObject:?];
}

- (BOOL)isLastColumnWidthDefined
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0 && (*(&self->mTrackedProperties + 54) & 0x80000000) != 0)
  {
    columnCount = self->mTrackedProperties.columnCount;
    if ([(NSMutableArray *)self->mTrackedProperties.columnWidths count]>= columnCount)
    {
      return 1;
    }

    v3 = *(self + 8);
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((*(self + 8) & 4) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(&self->mOriginalProperties + 54) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = self->mOriginalProperties.columnCount;
  return [(NSMutableArray *)self->mOriginalProperties.columnWidths count]>= v4;
}

- (BOOL)isColumnWidthDefinedAt:(unsigned int)at
{
  v5 = *(self + 8);
  if ((v5 & 6) != 0 && (*(&self->mTrackedProperties + 54) & 0x80000000) != 0)
  {
    if ([(NSMutableArray *)self->mTrackedProperties.columnWidths count]> at)
    {
      return 1;
    }

    v5 = *(self + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((*(self + 8) & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return (*(&self->mOriginalProperties + 54) & 0x80000000) != 0 && [(NSMutableArray *)self->mOriginalProperties.columnWidths count]> at;
}

- (int64_t)columnSpaceAt:(unsigned int)at
{
  v5 = *(self + 8);
  if ((v5 & 6) != 0)
  {
    if ([(NSMutableArray *)self->mTrackedProperties.columnSpaces count]> at)
    {
      v6 = [(NSMutableArray *)self->mTrackedProperties.columnSpaces objectAtIndex:at];
      intValue = [v6 intValue];
      goto LABEL_9;
    }

    v5 = *(self + 8);
  }

  if ((v5 & 4) == 0 && (v5 & 1) == 0 || [(NSMutableArray *)self->mOriginalProperties.columnSpaces count]<= at)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->mOriginalProperties.columnSpaces objectAtIndex:at];
  intValue = [v6 longValue];
LABEL_9:

  return intValue;
}

- (void)appendColumnSpace:(int64_t)space
{
  if ((*(self + 8) & 2) != 0)
  {
    columnSpaces = self->mTrackedProperties.columnSpaces;
    if (!columnSpaces)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->mTrackedProperties.columnSpaces;
      self->mTrackedProperties.columnSpaces = v8;

      columnSpaces = self->mTrackedProperties.columnSpaces;
    }
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    columnSpaces = self->mOriginalProperties.columnSpaces;
    if (!columnSpaces)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->mOriginalProperties.columnSpaces;
      self->mOriginalProperties.columnSpaces = v6;

      columnSpaces = self->mOriginalProperties.columnSpaces;
    }
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:space];
  [(NSMutableArray *)columnSpaces addObject:?];
}

- (BOOL)columnsEqualWidth
{
  if ((*(self + 8) & 6) == 0 || (LOWORD(v2) = *(&self->mTrackedProperties + 110), (v2 & 2) == 0))
  {
    if (*(self + 8) & 4) != 0 || (*(self + 8))
    {
      v2 = *(&self->mOriginalProperties + 110) & ((*(&self->mOriginalProperties + 110) & 2u) >> 1);
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

- (void)setColumnsEqualWidth:(BOOL)width
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
  }

  *(&self->super.isa + v3) = *(&self->super.isa + v3) & 0xFFFC | width | 2;
}

- (int64_t)columnSpace
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 110) & 4) != 0)
  {
    v3 = 488;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 110) & 4) == 0)
    {
      return 720;
    }

    v3 = 264;
  }

  return *(&self->super.isa + v3);
}

- (void)setColumnSpace:(int64_t)space
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    v4 = 488;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
    v4 = 264;
  }

  *(&self->super.isa + v4) = space;
  *(&self->super.isa + v3) |= 4u;
}

- (BOOL)isColumnSpaceOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)verticalJustification
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 110) & 8) != 0)
  {
    v3 = 496;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 110) & 8) == 0)
    {
      return 0;
    }

    v3 = 272;
  }

  return *(&self->super.isa + v3);
}

- (void)setVerticalJustification:(int)justification
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    v4 = 496;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
    v4 = 272;
  }

  *(&self->super.isa + v4) = justification;
  *(&self->super.isa + v3) |= 8u;
}

- (BOOL)isVerticalJustificationOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setTitlePage:(BOOL)page
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
  }

  if (page)
  {
    v4 = 48;
  }

  else
  {
    v4 = 32;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xFFCF;
}

- (BOOL)bidi
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 110) & 0x400) != 0)
  {
    v3 = 512;
LABEL_9:
    v2 = *(&self->super.isa + v3);
    return v2 & 1;
  }

  if ((*(self + 8) & 4) != 0 || (*(self + 8)) && (*(&self->mOriginalProperties + 110) & 0x400) != 0)
  {
    v3 = 288;
    goto LABEL_9;
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

- (void)setBidi:(BOOL)bidi
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    v4 = 512;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
    v4 = 288;
  }

  *(&self->super.isa + v4) = *(&self->super.isa + v4) & 0xFFFFFFFE | bidi;
  *(&self->super.isa + v3) |= 0x400u;
}

- (BOOL)isBidiOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 10) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 0x400) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 10) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)formattingChanged
{
  if ((*(self + 8) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 110), (v2 & 0x80) != 0))
  {
    return (v2 >> 6) & 1;
  }

  else if (*(self + 8) & 4) != 0 || (*(self + 8))
  {
    v4 = *(&self->mOriginalProperties + 110);
    LOBYTE(v3) = (v4 & 0x80) != 0 && (v4 & 0x40) != 0;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setFormattingChanged:(BOOL)changed
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
  }

  if (changed)
  {
    v4 = 192;
  }

  else
  {
    v4 = 128;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xFF3F;
}

- (BOOL)isFormattingChangedOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 7) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 7) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)indexToAuthorIDOfFormattingChange
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 110) & 0x100) != 0)
  {
    v3 = 500;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 110) & 0x100) == 0)
    {
      return 0;
    }

    v3 = 276;
  }

  return *(&self->super.isa + v3);
}

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    v4 = 500;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v3 = 292;
    v4 = 276;
  }

  *(&self->super.isa + v4) = change;
  *(&self->super.isa + v3) |= 0x100u;
}

- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return HIBYTE(*(&self->super.isa + v3)) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 0x100) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return HIBYTE(*(&self->super.isa + v3)) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)formattingChangeDate
{
  if ((*(self + 8) & 6) != 0 && (*(&self->mTrackedProperties + 110) & 0x200) != 0)
  {
    v5 = 504;
  }

  else
  {
    if ((*(self + 8) & 4) == 0 && (*(self + 8) & 1) == 0 || (*(&self->mOriginalProperties + 110) & 0x200) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 280;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (void)setFormattingChangeDate:(id)date
{
  dateCopy = date;
  if ((*(self + 8) & 2) != 0)
  {
    v8 = dateCopy;
    v6 = 516;
    v7 = 504;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = dateCopy;
    v6 = 292;
    v7 = 280;
  }

  objc_storeStrong((&self->super.isa + v7), date);
  *(&self->super.isa + v6) |= 0x200u;
  dateCopy = v8;
LABEL_6:
}

- (BOOL)isFormattingChangeDateOverridden
{
  if ((*(self + 8) & 2) != 0)
  {
    v3 = 516;
    return (*(&self->super.isa + v3) >> 9) & 1;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 110) & 0x200) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 8) & 1) == 0 && (*(&self->mOriginalProperties + 110) & 0x200) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 8))
  {
LABEL_9:
    v3 = 292;
    return (*(&self->super.isa + v3) >> 9) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDSection;
  v2 = [(WDSection *)&v4 description];

  return v2;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

@end