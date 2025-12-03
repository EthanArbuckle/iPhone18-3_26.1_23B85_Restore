@interface WDParagraphProperties
- ($06D0163FE0D7AFE752A9F21F38483579)dropCap;
- ($373952EDE9DECE7FE473A72CF4B2C093)tabStopAddedAt:(unint64_t)at;
- (BOOL)anchorLock;
- (BOOL)biDi;
- (BOOL)contextualSpacing;
- (BOOL)hasTabStopAddedAtPosition:(signed __int16)position;
- (BOOL)hasTabStopDeletedAtPosition:(signed __int16)position;
- (BOOL)isAnchorLockOverridden;
- (BOOL)isAnythingOverridden;
- (BOOL)isAnythingOverriddenIn:(id)in;
- (BOOL)isBarBorderOverridden;
- (BOOL)isBaseStyleOverridden;
- (BOOL)isBetweenBorderOverridden;
- (BOOL)isBiDiOverridden;
- (BOOL)isBottomBorderOverridden;
- (BOOL)isContextualSpacingOverridden;
- (BOOL)isDropCapOverridden;
- (BOOL)isFirstLineIndentCharsOverridden;
- (BOOL)isFirstLineIndentOverridden;
- (BOOL)isFollowingIndentOverridden;
- (BOOL)isFormattingChangedOverridden;
- (BOOL)isHeightOverridden;
- (BOOL)isHeightRuleOverridden;
- (BOOL)isHorizontalAnchorOverridden;
- (BOOL)isHorizontalPositionOverridden;
- (BOOL)isHorizontalSpaceOverridden;
- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden;
- (BOOL)isJustificationOverridden;
- (BOOL)isKeepLinesTogetherOverridden;
- (BOOL)isKeepNextParagraphTogetherOverridden;
- (BOOL)isKinsokuOffOverridden;
- (BOOL)isLeadingIndentOverridden;
- (BOOL)isLeftBorderOverridden;
- (BOOL)isLeftIndentCharsOverridden;
- (BOOL)isLeftIndentOverridden;
- (BOOL)isLineSpacingOverridden;
- (BOOL)isLineSpacingRuleOverridden;
- (BOOL)isListIndexOverridden;
- (BOOL)isListLevelOverridden;
- (BOOL)isOutlineLevelOverridden;
- (BOOL)isPageBreakBefore;
- (BOOL)isPageBreakBeforeOverridden;
- (BOOL)isPhysicalJustificationOverridden;
- (BOOL)isRightBorderOverridden;
- (BOOL)isRightIndentCharsOverridden;
- (BOOL)isRightIndentOverridden;
- (BOOL)isShadingOverridden;
- (BOOL)isSpaceAfterAutoOverridden;
- (BOOL)isSpaceAfterOverridden;
- (BOOL)isSpaceBeforeAutoOverridden;
- (BOOL)isSpaceBeforeOverridden;
- (BOOL)isSuppressAutoHyphensOverridden;
- (BOOL)isSuppressLineNumbersOverridden;
- (BOOL)isTopBorderOverridden;
- (BOOL)isVerticalAnchorOverridden;
- (BOOL)isVerticalPositionOverridden;
- (BOOL)isVerticalSpaceOverridden;
- (BOOL)isWidowControlOverridden;
- (BOOL)isWidthOverridden;
- (BOOL)isWrapCodeOverridden;
- (BOOL)isWrapOverridden;
- (BOOL)keepLinesTogether;
- (BOOL)keepNextParagraphTogether;
- (BOOL)kinsokuOff;
- (BOOL)spaceAfterAuto;
- (BOOL)spaceBeforeAuto;
- (BOOL)suppressAutoHyphens;
- (BOOL)suppressLineNumbers;
- (BOOL)widowControl;
- (BOOL)wrap;
- (WDDocument)document;
- (WDParagraphProperties)initWithDocument:(id)document;
- (char)wrapCode;
- (id)barBorder;
- (id)baseStyle;
- (id)betweenBorder;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)leftBorder;
- (id)mutableBarBorder;
- (id)mutableBetweenBorder;
- (id)mutableBottomBorder;
- (id)mutableCharacterProperties;
- (id)mutableLeftBorder;
- (id)mutableRightBorder;
- (id)mutableShading;
- (id)mutableTopBorder;
- (id)rightBorder;
- (id)shading;
- (id)topBorder;
- (int)formattingChanged;
- (int)heightRule;
- (int)horizontalAnchor;
- (int)justification;
- (int)lineSpacingRule;
- (int)physicalJustification;
- (int)resolveMode;
- (int)verticalAnchor;
- (int64_t)height;
- (int64_t)horizontalPosition;
- (int64_t)horizontalSpace;
- (int64_t)verticalPosition;
- (int64_t)verticalSpace;
- (int64_t)width;
- (signed)firstLineIndent;
- (signed)firstLineIndentChars;
- (signed)followingIndent;
- (signed)leadingIndent;
- (signed)leftIndent;
- (signed)leftIndentChars;
- (signed)lineSpacing;
- (signed)rightIndent;
- (signed)rightIndentChars;
- (signed)tabStopDeletedPositionAt:(unint64_t)at;
- (unint64_t)listIndex;
- (unint64_t)tabStopAddedCount;
- (unint64_t)tabStopDeletedPositionCount;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (unsigned)listLevel;
- (unsigned)outlineLevel;
- (unsigned)spaceAfter;
- (unsigned)spaceBefore;
- (void)addTabStopAdded:(id *)added;
- (void)addTabStopDeletedPosition:(signed __int16)position;
- (void)clearBaseStyle;
- (void)clearChararacterProperties;
- (void)clearFirstLineIndent;
- (void)clearFollowingIndent;
- (void)clearLeadingIndent;
- (void)clearLeftIndent;
- (void)clearRightIndent;
- (void)copyPropertiesInto:(id)into;
- (void)negateFormattingChangesWithDefaults:(id)defaults;
- (void)removeTabStopAddedWithPosition:(signed __int16)position;
- (void)removeTabStopDeletedPosition:(signed __int16)position;
- (void)setAnchorLock:(BOOL)lock;
- (void)setBaseStyle:(id)style;
- (void)setBiDi:(BOOL)di;
- (void)setContextualSpacing:(BOOL)spacing;
- (void)setDropCap:(id)cap;
- (void)setFirstLineIndent:(signed __int16)indent;
- (void)setFirstLineIndentChars:(signed __int16)chars;
- (void)setFollowingIndent:(signed __int16)indent;
- (void)setFormattingChanged:(int)changed;
- (void)setHeight:(int64_t)height;
- (void)setHeightRule:(int)rule;
- (void)setHorizontalAnchor:(int)anchor;
- (void)setHorizontalPosition:(int64_t)position;
- (void)setHorizontalSpace:(int64_t)space;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change;
- (void)setJustification:(int)justification;
- (void)setKeepLinesTogether:(BOOL)together;
- (void)setKeepNextParagraphTogether:(BOOL)together;
- (void)setKinsokuOff:(BOOL)off;
- (void)setLeadingIndent:(signed __int16)indent;
- (void)setLeftIndent:(signed __int16)indent;
- (void)setLeftIndentChars:(signed __int16)chars;
- (void)setLineSpacing:(signed __int16)spacing;
- (void)setLineSpacingRule:(int)rule;
- (void)setListIndex:(unint64_t)index;
- (void)setListLevel:(unsigned __int8)level;
- (void)setOutlineLevel:(unsigned __int16)level;
- (void)setPageBreakBefore:(BOOL)before;
- (void)setPhysicalJustification:(int)justification;
- (void)setResolveMode:(int)mode;
- (void)setRightIndent:(signed __int16)indent;
- (void)setRightIndentChars:(signed __int16)chars;
- (void)setSpaceAfter:(unsigned __int16)after;
- (void)setSpaceAfterAuto:(BOOL)auto;
- (void)setSpaceBefore:(unsigned __int16)before;
- (void)setSpaceBeforeAuto:(BOOL)auto;
- (void)setSuppressAutoHyphens:(BOOL)hyphens;
- (void)setSuppressLineNumbers:(BOOL)numbers;
- (void)setTabStopAddedCount:(unint64_t)count;
- (void)setTabStopDeletedPositionCount:(unint64_t)count;
- (void)setVerticalAnchor:(int)anchor;
- (void)setVerticalPosition:(int64_t)position;
- (void)setVerticalSpace:(int64_t)space;
- (void)setWidowControl:(BOOL)control;
- (void)setWidth:(int64_t)width;
- (void)setWrap:(BOOL)wrap;
- (void)setWrapCode:(char)code;
@end

@implementation WDParagraphProperties

- (id)mutableTopBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    topBorderOverridden = [(WDParagraphPropertiesValues *)mTrackedProperties topBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!topBorderOverridden)
    {
      [(WDParagraphPropertiesValues *)v9 setTopBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    topBorder = [(WDParagraphPropertiesValues *)v9 topBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    topBorder = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  topBorderOverridden2 = [(WDParagraphPropertiesValues *)mOriginalProperties topBorderOverridden];
  v9 = self->mOriginalProperties;
  if (topBorderOverridden2)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setTopBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  topBorder = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setTopBorder:topBorder];
LABEL_16:

  return topBorder;
}

- (id)mutableLeftBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    leftBorderOverridden = [(WDParagraphPropertiesValues *)mTrackedProperties leftBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!leftBorderOverridden)
    {
      [(WDParagraphPropertiesValues *)v9 setLeftBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    leftBorder = [(WDParagraphPropertiesValues *)v9 leftBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    leftBorder = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  leftBorderOverridden2 = [(WDParagraphPropertiesValues *)mOriginalProperties leftBorderOverridden];
  v9 = self->mOriginalProperties;
  if (leftBorderOverridden2)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setLeftBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  leftBorder = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setLeftBorder:leftBorder];
LABEL_16:

  return leftBorder;
}

- (id)mutableBottomBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    bottomBorderOverridden = [(WDParagraphPropertiesValues *)mTrackedProperties bottomBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!bottomBorderOverridden)
    {
      [(WDParagraphPropertiesValues *)v9 setBottomBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    bottomBorder = [(WDParagraphPropertiesValues *)v9 bottomBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    bottomBorder = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  bottomBorderOverridden2 = [(WDParagraphPropertiesValues *)mOriginalProperties bottomBorderOverridden];
  v9 = self->mOriginalProperties;
  if (bottomBorderOverridden2)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBottomBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  bottomBorder = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBottomBorder:bottomBorder];
LABEL_16:

  return bottomBorder;
}

- (id)mutableRightBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    rightBorder = [(WDParagraphPropertiesValues *)mTrackedProperties rightBorder];

    v9 = self->mTrackedProperties;
    if (!rightBorder)
    {
      [(WDParagraphPropertiesValues *)v9 setRightBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    rightBorder2 = [(WDParagraphPropertiesValues *)v9 rightBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    rightBorder2 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  rightBorder3 = [(WDParagraphPropertiesValues *)mOriginalProperties rightBorder];

  v9 = self->mOriginalProperties;
  if (rightBorder3)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setRightBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  rightBorder2 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setRightBorder:rightBorder2];
LABEL_16:

  return rightBorder2;
}

- (id)mutableBetweenBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    betweenBorder = [(WDParagraphPropertiesValues *)mTrackedProperties betweenBorder];

    v9 = self->mTrackedProperties;
    if (!betweenBorder)
    {
      [(WDParagraphPropertiesValues *)v9 setBetweenBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    betweenBorder2 = [(WDParagraphPropertiesValues *)v9 betweenBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    betweenBorder2 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  betweenBorder3 = [(WDParagraphPropertiesValues *)mOriginalProperties betweenBorder];

  v9 = self->mOriginalProperties;
  if (betweenBorder3)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBetweenBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  betweenBorder2 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBetweenBorder:betweenBorder2];
LABEL_16:

  return betweenBorder2;
}

- (id)mutableBarBorder
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    barBorderOverridden = [(WDParagraphPropertiesValues *)mTrackedProperties barBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!barBorderOverridden)
    {
      [(WDParagraphPropertiesValues *)v9 setBarBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    barBorder = [(WDParagraphPropertiesValues *)v9 barBorder];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    barBorder = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  barBorderOverridden2 = [(WDParagraphPropertiesValues *)mOriginalProperties barBorderOverridden];
  v9 = self->mOriginalProperties;
  if (barBorderOverridden2)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBarBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  barBorder = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBarBorder:barBorder];
LABEL_16:

  return barBorder;
}

- (id)mutableShading
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = self->mTrackedProperties;
      self->mTrackedProperties = v12;

      if (!self->mTrackedProperties)
      {
        goto LABEL_13;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [(WDParagraphPropertiesValues *)self->mTrackedProperties setTabStopDeletedTable:v15];

      mTrackedProperties = self->mTrackedProperties;
    }

    shading = [(WDParagraphPropertiesValues *)mTrackedProperties shading];

    v9 = self->mTrackedProperties;
    if (!shading)
    {
      [(WDParagraphPropertiesValues *)v9 setShadingOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    shading2 = [(WDParagraphPropertiesValues *)v9 shading];
    goto LABEL_16;
  }

  if ((*(self + 17) & 1) == 0)
  {
    goto LABEL_13;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (mOriginalProperties)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(WDParagraphPropertiesValues);
  v5 = self->mOriginalProperties;
  self->mOriginalProperties = v4;

  if (!self->mOriginalProperties)
  {
LABEL_13:
    shading2 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  shading3 = [(WDParagraphPropertiesValues *)mOriginalProperties shading];

  v9 = self->mOriginalProperties;
  if (shading3)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setShadingOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  shading2 = objc_alloc_init(WDShading);
  [(WDParagraphPropertiesValues *)v10 setShading:shading2];
LABEL_16:

  return shading2;
}

- (void)clearBaseStyle
{
  v3 = *(self + 17);
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

  if ((*(self + 17) & 4) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties baseStyleOverridden])
      {
LABEL_5:
        v5 = 32;
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 4) == 0)
    {
      return;
    }

    mOriginalProperties = self->mOriginalProperties;
    if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties baseStyleOverridden])
    {
      return;
    }
  }

  v5 = 24;
LABEL_9:
  [*(&self->super.isa + v5) setBaseStyleOverridden:0];
  v6 = *(&self->super.isa + v5);

  [v6 setBaseStyle:0];
}

- (BOOL)isHorizontalAnchorOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalAnchorOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties horizontalAnchorOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 horizontalAnchorOverridden];
}

- (BOOL)isVerticalAnchorOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalAnchorOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties verticalAnchorOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 verticalAnchorOverridden];
}

- (BOOL)isHorizontalPositionOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalPositionOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties horizontalPositionOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 horizontalPositionOverridden];
}

- (BOOL)isVerticalPositionOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalPositionOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties verticalPositionOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 verticalPositionOverridden];
}

- (BOOL)isBaseStyleOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties baseStyleOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties baseStyleOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 baseStyleOverridden];
}

- (id)baseStyle
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties baseStyleOverridden])
      {
LABEL_9:
        baseStyle = [(WDParagraphPropertiesValues *)*p_mTrackedProperties baseStyle];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    baseStyle = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([baseStyle baseStyleOverridden])
    {
      goto LABEL_9;
    }
  }

  baseStyle = 0;
LABEL_11:

  return baseStyle;
}

- (BOOL)isSpaceAfterOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceAfterOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties spaceAfterOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 spaceAfterOverridden];
}

- (BOOL)isSpaceBeforeOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceBeforeOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties spaceBeforeOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 spaceBeforeOverridden];
}

- (BOOL)isLineSpacingOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) != 0)
  {
LABEL_5:
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties && [(WDParagraphPropertiesValues *)mTrackedProperties lineSpacingOverridden]&& [(WDParagraphPropertiesValues *)self->mTrackedProperties lineSpacing])
    {
      LOBYTE(v6) = 1;
      return v6;
    }

LABEL_18:
    LOBYTE(v6) = 0;
    return v6;
  }

  if ((*(self + 17) & 4) != 0)
  {
    v4 = self->mTrackedProperties;
    if (v4)
    {
      if ([(WDParagraphPropertiesValues *)v4 lineSpacingOverridden])
      {
        goto LABEL_5;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_18;
    }

    mOriginalProperties = self->mOriginalProperties;
    if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties lineSpacingOverridden])
    {
      goto LABEL_18;
    }
  }

  v6 = self->mOriginalProperties;
  if (v6)
  {

    LOBYTE(v6) = [(WDParagraphPropertiesValues *)v6 lineSpacingOverridden];
  }

  return v6;
}

- (BOOL)isJustificationOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties justificationOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties justificationOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 justificationOverridden];
}

- (BOOL)isLeftIndentOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties leftIndentOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties leftIndentOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 leftIndentOverridden];
}

- (BOOL)isRightIndentOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties rightIndentOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties rightIndentOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 rightIndentOverridden];
}

- (BOOL)isFirstLineIndentOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties firstLineIndentOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties firstLineIndentOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 firstLineIndentOverridden];
}

- (BOOL)isListIndexOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties listIndexOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties listIndexOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 listIndexOverridden];
}

- (BOOL)isListLevelOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties listLevelOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties listLevelOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 listLevelOverridden];
}

- (BOOL)isBottomBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties bottomBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties bottomBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 bottomBorderOverridden];
}

- (BOOL)isShadingOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties shadingOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties shadingOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 shadingOverridden];
}

- (int)justification
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties justificationOverridden])
      {
        goto LABEL_10;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    LODWORD(v6) = 0;
    return v6;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v6) = [(WDParagraphPropertiesValues *)v6 justificationOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v6)
    {
LABEL_10:
      LODWORD(v6) = [(WDParagraphPropertiesValues *)*p_mTrackedProperties justification];
    }
  }

  return v6;
}

- (signed)leftIndent
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties leftIndentOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 leftIndentOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 leftIndent];
}

- (signed)firstLineIndent
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties firstLineIndentOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 firstLineIndentOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 firstLineIndent];
}

- (unint64_t)listIndex
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties listIndexOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 listIndexOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 listIndex];
}

- (unsigned)listLevel
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties listLevelOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 listLevelOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 listLevel];
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (unsigned)spaceBefore
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceBeforeOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 spaceBeforeOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 spaceBefore];
}

- (signed)lineSpacing
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties lineSpacingOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 lineSpacingOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 lineSpacing];
}

- (unsigned)spaceAfter
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceAfterOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 spaceAfterOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 spaceAfter];
}

- (int)horizontalAnchor
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalAnchorOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties horizontalAnchor];
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (mOriginalProperties)
    {
      p_mTrackedProperties = p_mOriginalProperties;
      if ([(WDParagraphPropertiesValues *)v6 horizontalAnchorOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties horizontalAnchor];
      }
    }
  }

  return 2;
}

- (BOOL)isWidthOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties widthOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties widthOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 widthOverridden];
}

- (id)bottomBorder
{
  if ((*(self + 17) & 4) == 0 || (v3 = self->mTrackedProperties) == 0 || [(WDParagraphPropertiesValues *)v3 bottomBorderOverridden]|| (v4 = self->mOriginalProperties) == 0 || ![(WDParagraphPropertiesValues *)v4 bottomBorderOverridden])
  {
    v5 = *(self + 17);
    if ((v5 & 6) != 0)
    {
      p_mTrackedProperties = &self->mTrackedProperties;
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties bottomBorderOverridden])
        {
LABEL_14:
          bottomBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties bottomBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      bottomBorder = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([bottomBorder bottomBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  bottomBorder = 0;
LABEL_16:

  return bottomBorder;
}

- (id)shading
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties shadingOverridden])
      {
LABEL_9:
        shading = [(WDParagraphPropertiesValues *)*p_mTrackedProperties shading];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    shading = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([shading shadingOverridden])
    {
      goto LABEL_9;
    }
  }

  shading = 0;
LABEL_11:

  return shading;
}

- (signed)rightIndent
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties rightIndentOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 rightIndentOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 rightIndent];
}

- (BOOL)isLineSpacingRuleOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties lineSpacingRuleOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties lineSpacingRuleOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 lineSpacingRuleOverridden];
}

- (int)lineSpacingRule
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties lineSpacingRuleOverridden])
      {
        goto LABEL_10;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    LODWORD(v6) = 0;
    return v6;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v6) = [(WDParagraphPropertiesValues *)v6 lineSpacingRuleOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v6)
    {
LABEL_10:
      LODWORD(v6) = [(WDParagraphPropertiesValues *)*p_mTrackedProperties lineSpacingRule];
    }
  }

  return v6;
}

- (int)resolveMode
{
  v2 = *(self + 17);
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

- (id)mutableCharacterProperties
{
  mCharacterProperties = self->mCharacterProperties;
  if (!mCharacterProperties)
  {
    v4 = [WDCharacterProperties alloc];
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    v6 = [(WDCharacterProperties *)v4 initWithDocument:WeakRetained];
    v7 = self->mCharacterProperties;
    self->mCharacterProperties = v6;

    self->mCharacterPropertiesOverridden = 1;
    mCharacterProperties = self->mCharacterProperties;
  }

  return mCharacterProperties;
}

- (int)verticalAnchor
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalAnchorOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties verticalAnchor];
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (mOriginalProperties)
    {
      p_mTrackedProperties = p_mOriginalProperties;
      if ([(WDParagraphPropertiesValues *)v6 verticalAnchorOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties verticalAnchor];
      }
    }
  }

  return 1;
}

- (int64_t)horizontalPosition
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalPositionOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 horizontalPositionOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 horizontalPosition];
}

- (int64_t)width
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties widthOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 widthOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 width];
}

- (int64_t)verticalPosition
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalPositionOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 verticalPositionOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 verticalPosition];
}

- (WDParagraphProperties)initWithDocument:(id)document
{
  documentCopy = document;
  v11.receiver = self;
  v11.super_class = WDParagraphProperties;
  v5 = [(WDParagraphProperties *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    *(v6 + 17) = *(v6 + 17) & 0xF8 | 1;
    mCharacterProperties = v6->mCharacterProperties;
    v6->mCharacterProperties = 0;

    mOriginalProperties = v6->mOriginalProperties;
    v6->mOriginalProperties = 0;

    mTrackedProperties = v6->mTrackedProperties;
    v6->mTrackedProperties = 0;
  }

  return v6;
}

- (void)clearChararacterProperties
{
  mCharacterProperties = self->mCharacterProperties;
  self->mCharacterProperties = 0;

  self->mCharacterPropertiesOverridden = 0;
}

- (BOOL)isAnythingOverridden
{
  v3 = *(self + 17);
  if (v3 & 4) != 0 || (*(self + 17))
  {
    if ([(WDParagraphProperties *)self isAnythingOverriddenIn:self->mOriginalProperties]|| [(WDCharacterProperties *)self->mCharacterProperties isAnythingOverridden])
    {
      return 1;
    }

    v3 = *(self + 17);
  }

  return (v3 & 6) != 0 && ([(WDParagraphProperties *)self isAnythingOverriddenIn:self->mTrackedProperties]|| [(WDCharacterProperties *)self->mCharacterProperties isAnythingOverridden]);
}

- (void)setResolveMode:(int)mode
{
  v3 = (2 * (mode == 1)) | (4 * (mode == 2));
  if (!mode)
  {
    ++v3;
  }

  *(self + 17) = v3 | *(self + 17) & 0xF8;
  [(WDCharacterProperties *)self->mCharacterProperties setResolveMode:?];
}

- (void)negateFormattingChangesWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  resolveMode = [(WDParagraphProperties *)self resolveMode];
  [(WDParagraphProperties *)self setResolveMode:2];
  if ([(WDParagraphProperties *)self isFormattingChangedOverridden]&& [(WDParagraphProperties *)self formattingChanged])
  {
    [(WDParagraphProperties *)self setResolveMode:1];
    [defaultsCopy setResolveMode:2];
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      if ([(WDParagraphPropertiesValues *)mOriginalProperties pageBreakBeforeOverridden])
      {
        mTrackedProperties = self->mTrackedProperties;
        if (!mTrackedProperties || ![(WDParagraphPropertiesValues *)mTrackedProperties pageBreakBeforeOverridden])
        {
          if ([defaultsCopy isPageBreakBeforeOverridden])
          {
            isPageBreakBefore = [defaultsCopy isPageBreakBefore];
          }

          else
          {
            isPageBreakBefore = 0;
          }

          [(WDParagraphProperties *)self setPageBreakBefore:isPageBreakBefore];
        }
      }

      v8 = self->mOriginalProperties;
      if (v8)
      {
        if ([(WDParagraphPropertiesValues *)v8 listLevelOverridden])
        {
          v9 = self->mTrackedProperties;
          if (!v9 || ![(WDParagraphPropertiesValues *)v9 listLevelOverridden])
          {
            if ([defaultsCopy isListLevelOverridden])
            {
              listLevel = [defaultsCopy listLevel];
            }

            else
            {
              listLevel = 0;
            }

            [(WDParagraphProperties *)self setListLevel:listLevel];
          }
        }

        v11 = self->mOriginalProperties;
        if (v11)
        {
          if ([(WDParagraphPropertiesValues *)v11 listIndexOverridden])
          {
            v12 = self->mTrackedProperties;
            if (!v12 || ![(WDParagraphPropertiesValues *)v12 listIndexOverridden])
            {
              if ([defaultsCopy isListIndexOverridden])
              {
                listIndex = [defaultsCopy listIndex];
              }

              else
              {
                listIndex = -1;
              }

              [(WDParagraphProperties *)self setListIndex:listIndex];
            }
          }

          v14 = self->mOriginalProperties;
          if (v14)
          {
            if ([(WDParagraphPropertiesValues *)v14 widthOverridden])
            {
              v15 = self->mTrackedProperties;
              if (!v15 || ![(WDParagraphPropertiesValues *)v15 widthOverridden])
              {
                if ([defaultsCopy isWidthOverridden])
                {
                  width = [defaultsCopy width];
                }

                else
                {
                  width = 0;
                }

                [(WDParagraphProperties *)self setWidth:width];
              }
            }

            v17 = self->mOriginalProperties;
            if (v17)
            {
              if ([(WDParagraphPropertiesValues *)v17 heightOverridden])
              {
                v18 = self->mTrackedProperties;
                if (!v18 || ![(WDParagraphPropertiesValues *)v18 heightOverridden])
                {
                  if ([defaultsCopy isHeightOverridden])
                  {
                    height = [defaultsCopy height];
                  }

                  else
                  {
                    height = 0;
                  }

                  [(WDParagraphProperties *)self setHeight:height];
                }
              }

              v20 = self->mOriginalProperties;
              if (v20)
              {
                if ([(WDParagraphPropertiesValues *)v20 heightRuleOverridden])
                {
                  v21 = self->mTrackedProperties;
                  if (!v21 || ![(WDParagraphPropertiesValues *)v21 heightRuleOverridden])
                  {
                    if ([defaultsCopy isHeightRuleOverridden])
                    {
                      heightRule = [defaultsCopy heightRule];
                    }

                    else
                    {
                      heightRule = 1;
                    }

                    [(WDParagraphProperties *)self setHeightRule:heightRule];
                  }
                }

                v23 = self->mOriginalProperties;
                if (v23)
                {
                  if ([(WDParagraphPropertiesValues *)v23 verticalSpaceOverridden])
                  {
                    v24 = self->mTrackedProperties;
                    if (!v24 || ![(WDParagraphPropertiesValues *)v24 verticalSpaceOverridden])
                    {
                      if ([defaultsCopy isVerticalSpaceOverridden])
                      {
                        verticalSpace = [defaultsCopy verticalSpace];
                      }

                      else
                      {
                        verticalSpace = 0;
                      }

                      [(WDParagraphProperties *)self setVerticalSpace:verticalSpace];
                    }
                  }

                  v26 = self->mOriginalProperties;
                  if (v26)
                  {
                    if ([(WDParagraphPropertiesValues *)v26 horizontalSpaceOverridden])
                    {
                      v27 = self->mTrackedProperties;
                      if (!v27 || ![(WDParagraphPropertiesValues *)v27 horizontalSpaceOverridden])
                      {
                        if ([defaultsCopy isHorizontalSpaceOverridden])
                        {
                          horizontalSpace = [defaultsCopy horizontalSpace];
                        }

                        else
                        {
                          horizontalSpace = 0;
                        }

                        [(WDParagraphProperties *)self setHorizontalSpace:horizontalSpace];
                      }
                    }

                    v29 = self->mOriginalProperties;
                    if (v29)
                    {
                      if ([(WDParagraphPropertiesValues *)v29 wrapOverridden])
                      {
                        v30 = self->mTrackedProperties;
                        if (!v30 || ![(WDParagraphPropertiesValues *)v30 wrapOverridden])
                        {
                          if ([defaultsCopy isWrapOverridden])
                          {
                            wrap = [defaultsCopy wrap];
                          }

                          else
                          {
                            wrap = 0;
                          }

                          [(WDParagraphProperties *)self setWrap:wrap];
                        }
                      }

                      v32 = self->mOriginalProperties;
                      if (v32)
                      {
                        if ([(WDParagraphPropertiesValues *)v32 horizontalAnchorOverridden])
                        {
                          v33 = self->mTrackedProperties;
                          if (!v33 || ![(WDParagraphPropertiesValues *)v33 horizontalAnchorOverridden])
                          {
                            if ([defaultsCopy isHorizontalAnchorOverridden])
                            {
                              horizontalAnchor = [defaultsCopy horizontalAnchor];
                            }

                            else
                            {
                              horizontalAnchor = 2;
                            }

                            [(WDParagraphProperties *)self setHorizontalAnchor:horizontalAnchor];
                          }
                        }

                        v35 = self->mOriginalProperties;
                        if (v35)
                        {
                          if ([(WDParagraphPropertiesValues *)v35 verticalAnchorOverridden])
                          {
                            v36 = self->mTrackedProperties;
                            if (!v36 || ![(WDParagraphPropertiesValues *)v36 verticalAnchorOverridden])
                            {
                              if ([defaultsCopy isVerticalAnchorOverridden])
                              {
                                verticalAnchor = [defaultsCopy verticalAnchor];
                              }

                              else
                              {
                                verticalAnchor = 1;
                              }

                              [(WDParagraphProperties *)self setVerticalAnchor:verticalAnchor];
                            }
                          }

                          v38 = self->mOriginalProperties;
                          if (v38)
                          {
                            if ([(WDParagraphPropertiesValues *)v38 horizontalPositionOverridden])
                            {
                              v39 = self->mTrackedProperties;
                              if (!v39 || ![(WDParagraphPropertiesValues *)v39 horizontalPositionOverridden])
                              {
                                if ([defaultsCopy isHorizontalPositionOverridden])
                                {
                                  horizontalPosition = [defaultsCopy horizontalPosition];
                                }

                                else
                                {
                                  horizontalPosition = 0;
                                }

                                [(WDParagraphProperties *)self setHorizontalPosition:horizontalPosition];
                              }
                            }

                            v41 = self->mOriginalProperties;
                            if (v41)
                            {
                              if ([(WDParagraphPropertiesValues *)v41 verticalPositionOverridden])
                              {
                                v42 = self->mTrackedProperties;
                                if (!v42 || ![(WDParagraphPropertiesValues *)v42 verticalPositionOverridden])
                                {
                                  if ([defaultsCopy isVerticalPositionOverridden])
                                  {
                                    verticalPosition = [defaultsCopy verticalPosition];
                                  }

                                  else
                                  {
                                    verticalPosition = 0;
                                  }

                                  [(WDParagraphProperties *)self setVerticalPosition:verticalPosition];
                                }
                              }

                              v44 = self->mOriginalProperties;
                              if (v44)
                              {
                                if ([(WDParagraphPropertiesValues *)v44 wrapCodeOverridden])
                                {
                                  v45 = self->mTrackedProperties;
                                  if (!v45 || ![(WDParagraphPropertiesValues *)v45 wrapCodeOverridden])
                                  {
                                    if ([defaultsCopy isWrapCodeOverridden])
                                    {
                                      wrapCode = [defaultsCopy wrapCode];
                                    }

                                    else
                                    {
                                      wrapCode = 0;
                                    }

                                    [(WDParagraphProperties *)self setWrapCode:wrapCode];
                                  }
                                }

                                v47 = self->mOriginalProperties;
                                if (v47)
                                {
                                  if ([(WDParagraphPropertiesValues *)v47 anchorLockOverridden])
                                  {
                                    v48 = self->mTrackedProperties;
                                    if (!v48 || ![(WDParagraphPropertiesValues *)v48 anchorLockOverridden])
                                    {
                                      if ([defaultsCopy isAnchorLockOverridden])
                                      {
                                        anchorLock = [defaultsCopy anchorLock];
                                      }

                                      else
                                      {
                                        anchorLock = 0;
                                      }

                                      [(WDParagraphProperties *)self setAnchorLock:anchorLock];
                                    }
                                  }

                                  v50 = self->mOriginalProperties;
                                  if (v50)
                                  {
                                    if ([(WDParagraphPropertiesValues *)v50 spaceBeforeOverridden])
                                    {
                                      v51 = self->mTrackedProperties;
                                      if (!v51 || ![(WDParagraphPropertiesValues *)v51 spaceBeforeOverridden])
                                      {
                                        if ([defaultsCopy isSpaceBeforeOverridden])
                                        {
                                          spaceBefore = [defaultsCopy spaceBefore];
                                        }

                                        else
                                        {
                                          spaceBefore = 0;
                                        }

                                        [(WDParagraphProperties *)self setSpaceBefore:spaceBefore];
                                      }
                                    }

                                    v53 = self->mOriginalProperties;
                                    if (v53)
                                    {
                                      if ([(WDParagraphPropertiesValues *)v53 spaceBeforeAutoOverridden])
                                      {
                                        v54 = self->mTrackedProperties;
                                        if (!v54 || ![(WDParagraphPropertiesValues *)v54 spaceBeforeAutoOverridden])
                                        {
                                          if ([defaultsCopy isSpaceBeforeAutoOverridden])
                                          {
                                            spaceBeforeAuto = [defaultsCopy spaceBeforeAuto];
                                          }

                                          else
                                          {
                                            spaceBeforeAuto = 0;
                                          }

                                          [(WDParagraphProperties *)self setSpaceBeforeAuto:spaceBeforeAuto];
                                        }
                                      }

                                      v56 = self->mOriginalProperties;
                                      if (v56)
                                      {
                                        if ([(WDParagraphPropertiesValues *)v56 spaceAfterOverridden])
                                        {
                                          v57 = self->mTrackedProperties;
                                          if (!v57 || ![(WDParagraphPropertiesValues *)v57 spaceAfterOverridden])
                                          {
                                            if ([defaultsCopy isSpaceAfterOverridden])
                                            {
                                              spaceAfter = [defaultsCopy spaceAfter];
                                            }

                                            else
                                            {
                                              spaceAfter = 0;
                                            }

                                            [(WDParagraphProperties *)self setSpaceAfter:spaceAfter];
                                          }
                                        }

                                        v59 = self->mOriginalProperties;
                                        if (v59)
                                        {
                                          if ([(WDParagraphPropertiesValues *)v59 spaceAfterAutoOverridden])
                                          {
                                            v60 = self->mTrackedProperties;
                                            if (!v60 || ![(WDParagraphPropertiesValues *)v60 spaceAfterAutoOverridden])
                                            {
                                              if ([defaultsCopy isSpaceAfterAutoOverridden])
                                              {
                                                spaceAfterAuto = [defaultsCopy spaceAfterAuto];
                                              }

                                              else
                                              {
                                                spaceAfterAuto = 0;
                                              }

                                              [(WDParagraphProperties *)self setSpaceAfterAuto:spaceAfterAuto];
                                            }
                                          }

                                          v62 = self->mOriginalProperties;
                                          if (v62)
                                          {
                                            if ([(WDParagraphPropertiesValues *)v62 lineSpacingOverridden])
                                            {
                                              v63 = self->mTrackedProperties;
                                              if (!v63 || ![(WDParagraphPropertiesValues *)v63 lineSpacingOverridden])
                                              {
                                                if ([defaultsCopy isLineSpacingOverridden])
                                                {
                                                  lineSpacing = [defaultsCopy lineSpacing];
                                                }

                                                else
                                                {
                                                  lineSpacing = 0;
                                                }

                                                [(WDParagraphProperties *)self setLineSpacing:lineSpacing];
                                              }
                                            }

                                            v65 = self->mOriginalProperties;
                                            if (v65)
                                            {
                                              if ([(WDParagraphPropertiesValues *)v65 lineSpacingRuleOverridden])
                                              {
                                                v66 = self->mTrackedProperties;
                                                if (!v66 || ![(WDParagraphPropertiesValues *)v66 lineSpacingRuleOverridden])
                                                {
                                                  if ([defaultsCopy isLineSpacingRuleOverridden])
                                                  {
                                                    lineSpacingRule = [defaultsCopy lineSpacingRule];
                                                  }

                                                  else
                                                  {
                                                    lineSpacingRule = 0;
                                                  }

                                                  [(WDParagraphProperties *)self setLineSpacingRule:lineSpacingRule];
                                                }
                                              }

                                              v68 = self->mOriginalProperties;
                                              if (v68)
                                              {
                                                if ([(WDParagraphPropertiesValues *)v68 leftIndentOverridden])
                                                {
                                                  v69 = self->mTrackedProperties;
                                                  if (!v69 || ![(WDParagraphPropertiesValues *)v69 leftIndentOverridden])
                                                  {
                                                    if ([defaultsCopy isLeftIndentOverridden])
                                                    {
                                                      leftIndent = [defaultsCopy leftIndent];
                                                    }

                                                    else
                                                    {
                                                      leftIndent = 0;
                                                    }

                                                    [(WDParagraphProperties *)self setLeftIndent:leftIndent];
                                                  }
                                                }

                                                v71 = self->mOriginalProperties;
                                                if (v71)
                                                {
                                                  if ([(WDParagraphPropertiesValues *)v71 leadingIndentOverridden])
                                                  {
                                                    v72 = self->mTrackedProperties;
                                                    if (!v72 || ![(WDParagraphPropertiesValues *)v72 leadingIndentOverridden])
                                                    {
                                                      if ([defaultsCopy isLeadingIndentOverridden])
                                                      {
                                                        leadingIndent = [defaultsCopy leadingIndent];
                                                      }

                                                      else
                                                      {
                                                        leadingIndent = 0;
                                                      }

                                                      [(WDParagraphProperties *)self setLeadingIndent:leadingIndent];
                                                    }
                                                  }

                                                  v74 = self->mOriginalProperties;
                                                  if (v74)
                                                  {
                                                    if ([(WDParagraphPropertiesValues *)v74 followingIndentOverridden])
                                                    {
                                                      v75 = self->mTrackedProperties;
                                                      if (!v75 || ![(WDParagraphPropertiesValues *)v75 followingIndentOverridden])
                                                      {
                                                        if ([defaultsCopy isFollowingIndentOverridden])
                                                        {
                                                          followingIndent = [defaultsCopy followingIndent];
                                                        }

                                                        else
                                                        {
                                                          followingIndent = 0;
                                                        }

                                                        [(WDParagraphProperties *)self setFollowingIndent:followingIndent];
                                                      }
                                                    }

                                                    v77 = self->mOriginalProperties;
                                                    if (v77)
                                                    {
                                                      if ([(WDParagraphPropertiesValues *)v77 rightIndentOverridden])
                                                      {
                                                        v78 = self->mTrackedProperties;
                                                        if (!v78 || ![(WDParagraphPropertiesValues *)v78 rightIndentOverridden])
                                                        {
                                                          if ([defaultsCopy isRightIndentOverridden])
                                                          {
                                                            rightIndent = [defaultsCopy rightIndent];
                                                          }

                                                          else
                                                          {
                                                            rightIndent = 0;
                                                          }

                                                          [(WDParagraphProperties *)self setRightIndent:rightIndent];
                                                        }
                                                      }

                                                      v80 = self->mOriginalProperties;
                                                      if (v80)
                                                      {
                                                        if ([(WDParagraphPropertiesValues *)v80 firstLineIndentOverridden])
                                                        {
                                                          v81 = self->mTrackedProperties;
                                                          if (!v81 || ![(WDParagraphPropertiesValues *)v81 firstLineIndentOverridden])
                                                          {
                                                            if ([defaultsCopy isFirstLineIndentOverridden])
                                                            {
                                                              firstLineIndent = [defaultsCopy firstLineIndent];
                                                            }

                                                            else
                                                            {
                                                              firstLineIndent = 0;
                                                            }

                                                            [(WDParagraphProperties *)self setFirstLineIndent:firstLineIndent];
                                                          }
                                                        }

                                                        v83 = self->mOriginalProperties;
                                                        if (v83)
                                                        {
                                                          if ([(WDParagraphPropertiesValues *)v83 justificationOverridden])
                                                          {
                                                            v84 = self->mTrackedProperties;
                                                            if (!v84 || ![(WDParagraphPropertiesValues *)v84 justificationOverridden])
                                                            {
                                                              if ([defaultsCopy isJustificationOverridden])
                                                              {
                                                                justification = [defaultsCopy justification];
                                                              }

                                                              else
                                                              {
                                                                justification = 0;
                                                              }

                                                              [(WDParagraphProperties *)self setJustification:justification];
                                                            }
                                                          }

                                                          v86 = self->mOriginalProperties;
                                                          if (v86)
                                                          {
                                                            if ([(WDParagraphPropertiesValues *)v86 physicalJustificationOverridden])
                                                            {
                                                              v87 = self->mTrackedProperties;
                                                              if (!v87 || ![(WDParagraphPropertiesValues *)v87 physicalJustificationOverridden])
                                                              {
                                                                if ([defaultsCopy isPhysicalJustificationOverridden])
                                                                {
                                                                  physicalJustification = [defaultsCopy physicalJustification];
                                                                }

                                                                else
                                                                {
                                                                  physicalJustification = 0;
                                                                }

                                                                [(WDParagraphProperties *)self setPhysicalJustification:physicalJustification];
                                                              }
                                                            }

                                                            v89 = self->mOriginalProperties;
                                                            if (v89)
                                                            {
                                                              if ([(WDParagraphPropertiesValues *)v89 outlineLevelOverridden])
                                                              {
                                                                v90 = self->mTrackedProperties;
                                                                if (!v90 || ![(WDParagraphPropertiesValues *)v90 outlineLevelOverridden])
                                                                {
                                                                  if ([defaultsCopy isOutlineLevelOverridden])
                                                                  {
                                                                    -[WDParagraphProperties setOutlineLevel:](self, "setOutlineLevel:", [defaultsCopy outlineLevel]);
                                                                  }
                                                                }
                                                              }

                                                              v91 = self->mOriginalProperties;
                                                              if (v91)
                                                              {
                                                                if ([(WDParagraphPropertiesValues *)v91 keepNextParagraphTogetherOverridden])
                                                                {
                                                                  v92 = self->mTrackedProperties;
                                                                  if (!v92 || ![(WDParagraphPropertiesValues *)v92 keepNextParagraphTogetherOverridden])
                                                                  {
                                                                    if ([defaultsCopy isKeepNextParagraphTogetherOverridden])
                                                                    {
                                                                      keepNextParagraphTogether = [defaultsCopy keepNextParagraphTogether];
                                                                    }

                                                                    else
                                                                    {
                                                                      keepNextParagraphTogether = 0;
                                                                    }

                                                                    [(WDParagraphProperties *)self setKeepNextParagraphTogether:keepNextParagraphTogether];
                                                                  }
                                                                }

                                                                v94 = self->mOriginalProperties;
                                                                if (v94)
                                                                {
                                                                  if ([(WDParagraphPropertiesValues *)v94 keepLinesTogetherOverridden])
                                                                  {
                                                                    v95 = self->mTrackedProperties;
                                                                    if (!v95 || ![(WDParagraphPropertiesValues *)v95 keepLinesTogetherOverridden])
                                                                    {
                                                                      if ([defaultsCopy isKeepLinesTogetherOverridden])
                                                                      {
                                                                        keepLinesTogether = [defaultsCopy keepLinesTogether];
                                                                      }

                                                                      else
                                                                      {
                                                                        keepLinesTogether = 0;
                                                                      }

                                                                      [(WDParagraphProperties *)self setKeepLinesTogether:keepLinesTogether];
                                                                    }
                                                                  }

                                                                  v97 = self->mOriginalProperties;
                                                                  if (v97)
                                                                  {
                                                                    if ([(WDParagraphPropertiesValues *)v97 suppressAutoHyphensOverridden])
                                                                    {
                                                                      v98 = self->mTrackedProperties;
                                                                      if (!v98 || ![(WDParagraphPropertiesValues *)v98 suppressAutoHyphensOverridden])
                                                                      {
                                                                        if ([defaultsCopy isSuppressAutoHyphensOverridden])
                                                                        {
                                                                          suppressAutoHyphens = [defaultsCopy suppressAutoHyphens];
                                                                        }

                                                                        else
                                                                        {
                                                                          suppressAutoHyphens = 0;
                                                                        }

                                                                        [(WDParagraphProperties *)self setSuppressAutoHyphens:suppressAutoHyphens];
                                                                      }
                                                                    }

                                                                    v100 = self->mOriginalProperties;
                                                                    if (v100)
                                                                    {
                                                                      if ([(WDParagraphPropertiesValues *)v100 suppressLineNumbersOverridden])
                                                                      {
                                                                        v101 = self->mTrackedProperties;
                                                                        if (!v101 || ![(WDParagraphPropertiesValues *)v101 suppressLineNumbersOverridden])
                                                                        {
                                                                          if ([defaultsCopy isSuppressLineNumbersOverridden])
                                                                          {
                                                                            suppressLineNumbers = [defaultsCopy suppressLineNumbers];
                                                                          }

                                                                          else
                                                                          {
                                                                            suppressLineNumbers = 0;
                                                                          }

                                                                          [(WDParagraphProperties *)self setSuppressLineNumbers:suppressLineNumbers];
                                                                        }
                                                                      }

                                                                      v103 = self->mOriginalProperties;
                                                                      if (v103)
                                                                      {
                                                                        if ([(WDParagraphPropertiesValues *)v103 widowControlOverridden])
                                                                        {
                                                                          v104 = self->mTrackedProperties;
                                                                          if (!v104 || ![(WDParagraphPropertiesValues *)v104 widowControlOverridden])
                                                                          {
                                                                            if ([defaultsCopy isWidowControlOverridden])
                                                                            {
                                                                              widowControl = [defaultsCopy widowControl];
                                                                            }

                                                                            else
                                                                            {
                                                                              widowControl = 0;
                                                                            }

                                                                            [(WDParagraphProperties *)self setWidowControl:widowControl];
                                                                          }
                                                                        }

                                                                        v106 = self->mOriginalProperties;
                                                                        if (v106)
                                                                        {
                                                                          if ([(WDParagraphPropertiesValues *)v106 biDiOverridden])
                                                                          {
                                                                            v107 = self->mTrackedProperties;
                                                                            if (!v107 || ![(WDParagraphPropertiesValues *)v107 biDiOverridden])
                                                                            {
                                                                              if ([defaultsCopy isBiDiOverridden])
                                                                              {
                                                                                biDi = [defaultsCopy biDi];
                                                                              }

                                                                              else
                                                                              {
                                                                                biDi = 0;
                                                                              }

                                                                              [(WDParagraphProperties *)self setBiDi:biDi];
                                                                            }
                                                                          }

                                                                          v109 = self->mOriginalProperties;
                                                                          if (v109)
                                                                          {
                                                                            if ([(WDParagraphPropertiesValues *)v109 kinsokuOffOverridden])
                                                                            {
                                                                              v110 = self->mTrackedProperties;
                                                                              if (!v110 || ![(WDParagraphPropertiesValues *)v110 kinsokuOffOverridden])
                                                                              {
                                                                                if ([defaultsCopy isKinsokuOffOverridden])
                                                                                {
                                                                                  kinsokuOff = [defaultsCopy kinsokuOff];
                                                                                }

                                                                                else
                                                                                {
                                                                                  kinsokuOff = 0;
                                                                                }

                                                                                [(WDParagraphProperties *)self setKinsokuOff:kinsokuOff];
                                                                              }
                                                                            }

                                                                            v112 = self->mOriginalProperties;
                                                                            if (v112)
                                                                            {
                                                                              if ([(WDParagraphPropertiesValues *)v112 topBorderOverridden])
                                                                              {
                                                                                v113 = self->mTrackedProperties;
                                                                                if (!v113 || ![(WDParagraphPropertiesValues *)v113 topBorderOverridden])
                                                                                {
                                                                                  mutableTopBorder = [(WDParagraphProperties *)self mutableTopBorder];
                                                                                  topBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties topBorder];
                                                                                  style = [topBorder style];

                                                                                  if (style)
                                                                                  {
                                                                                    [mutableTopBorder setNullBorder];
                                                                                  }

                                                                                  else if ([defaultsCopy isTopBorderOverridden])
                                                                                  {
                                                                                    topBorder2 = [defaultsCopy topBorder];
                                                                                    [mutableTopBorder setBorder:topBorder2];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    [mutableTopBorder setSingleBlackBorder];
                                                                                  }
                                                                                }
                                                                              }

                                                                              v118 = self->mOriginalProperties;
                                                                              if (v118)
                                                                              {
                                                                                if ([(WDParagraphPropertiesValues *)v118 leftBorderOverridden])
                                                                                {
                                                                                  v119 = self->mTrackedProperties;
                                                                                  if (!v119 || ![(WDParagraphPropertiesValues *)v119 leftBorderOverridden])
                                                                                  {
                                                                                    mutableLeftBorder = [(WDParagraphProperties *)self mutableLeftBorder];
                                                                                    leftBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties leftBorder];
                                                                                    style2 = [leftBorder style];

                                                                                    if (style2)
                                                                                    {
                                                                                      [mutableLeftBorder setNullBorder];
                                                                                    }

                                                                                    else if ([defaultsCopy isLeftBorderOverridden])
                                                                                    {
                                                                                      leftBorder2 = [defaultsCopy leftBorder];
                                                                                      [mutableLeftBorder setBorder:leftBorder2];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      [mutableLeftBorder setSingleBlackBorder];
                                                                                    }
                                                                                  }
                                                                                }

                                                                                v124 = self->mOriginalProperties;
                                                                                if (v124)
                                                                                {
                                                                                  if ([(WDParagraphPropertiesValues *)v124 bottomBorderOverridden])
                                                                                  {
                                                                                    v125 = self->mTrackedProperties;
                                                                                    if (!v125 || ![(WDParagraphPropertiesValues *)v125 bottomBorderOverridden])
                                                                                    {
                                                                                      mutableBottomBorder = [(WDParagraphProperties *)self mutableBottomBorder];
                                                                                      bottomBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties bottomBorder];
                                                                                      style3 = [bottomBorder style];

                                                                                      if (style3)
                                                                                      {
                                                                                        [mutableBottomBorder setNullBorder];
                                                                                      }

                                                                                      else if ([defaultsCopy isBottomBorderOverridden])
                                                                                      {
                                                                                        bottomBorder2 = [defaultsCopy bottomBorder];
                                                                                        [mutableBottomBorder setBorder:bottomBorder2];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        [mutableBottomBorder setSingleBlackBorder];
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  v130 = self->mOriginalProperties;
                                                                                  if (v130)
                                                                                  {
                                                                                    if ([(WDParagraphPropertiesValues *)v130 rightBorderOverridden])
                                                                                    {
                                                                                      v131 = self->mTrackedProperties;
                                                                                      if (!v131 || ![(WDParagraphPropertiesValues *)v131 rightBorderOverridden])
                                                                                      {
                                                                                        mutableRightBorder = [(WDParagraphProperties *)self mutableRightBorder];
                                                                                        rightBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties rightBorder];
                                                                                        style4 = [rightBorder style];

                                                                                        if (style4)
                                                                                        {
                                                                                          [mutableRightBorder setNullBorder];
                                                                                        }

                                                                                        else if ([defaultsCopy isRightBorderOverridden])
                                                                                        {
                                                                                          rightBorder2 = [defaultsCopy rightBorder];
                                                                                          [mutableRightBorder setBorder:rightBorder2];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          [mutableRightBorder setSingleBlackBorder];
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    v136 = self->mOriginalProperties;
                                                                                    if (v136)
                                                                                    {
                                                                                      if ([(WDParagraphPropertiesValues *)v136 betweenBorderOverridden])
                                                                                      {
                                                                                        v137 = self->mTrackedProperties;
                                                                                        if (!v137 || ![(WDParagraphPropertiesValues *)v137 betweenBorderOverridden])
                                                                                        {
                                                                                          mutableBetweenBorder = [(WDParagraphProperties *)self mutableBetweenBorder];
                                                                                          betweenBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties betweenBorder];
                                                                                          style5 = [betweenBorder style];

                                                                                          if (style5)
                                                                                          {
                                                                                            [mutableBetweenBorder setNullBorder];
                                                                                          }

                                                                                          else if ([defaultsCopy isBetweenBorderOverridden])
                                                                                          {
                                                                                            betweenBorder2 = [defaultsCopy betweenBorder];
                                                                                            [mutableBetweenBorder setBorder:betweenBorder2];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            [mutableBetweenBorder setSingleBlackBorder];
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      v142 = self->mOriginalProperties;
                                                                                      if (v142)
                                                                                      {
                                                                                        if ([(WDParagraphPropertiesValues *)v142 barBorderOverridden])
                                                                                        {
                                                                                          v143 = self->mTrackedProperties;
                                                                                          if (!v143 || ![(WDParagraphPropertiesValues *)v143 barBorderOverridden])
                                                                                          {
                                                                                            mutableBarBorder = [(WDParagraphProperties *)self mutableBarBorder];
                                                                                            barBorder = [(WDParagraphPropertiesValues *)self->mOriginalProperties barBorder];
                                                                                            style6 = [barBorder style];

                                                                                            if (style6)
                                                                                            {
                                                                                              [mutableBarBorder setNullBorder];
                                                                                            }

                                                                                            else if ([defaultsCopy isBarBorderOverridden])
                                                                                            {
                                                                                              barBorder2 = [defaultsCopy barBorder];
                                                                                              [mutableBarBorder setBorder:barBorder2];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              [mutableBarBorder setSingleBlackBorder];
                                                                                            }
                                                                                          }
                                                                                        }

                                                                                        v148 = self->mOriginalProperties;
                                                                                        if (v148)
                                                                                        {
                                                                                          if ([(WDParagraphPropertiesValues *)v148 shadingOverridden])
                                                                                          {
                                                                                            v149 = self->mTrackedProperties;
                                                                                            if (!v149 || ![(WDParagraphPropertiesValues *)v149 shadingOverridden])
                                                                                            {
                                                                                              mutableShading = [(WDParagraphProperties *)self mutableShading];
                                                                                              shading = [(WDParagraphPropertiesValues *)self->mOriginalProperties shading];
                                                                                              style7 = [shading style];

                                                                                              if (style7)
                                                                                              {
                                                                                                [mutableShading setStyle:0];
                                                                                                v153 = +[WDShading autoForegroundColor];
                                                                                                [mutableShading setForeground:v153];

                                                                                                shading2 = +[WDShading autoBackgroundColor];
                                                                                                [mutableShading setBackground:shading2];
                                                                                              }

                                                                                              else if ([defaultsCopy isShadingOverridden])
                                                                                              {
                                                                                                shading2 = [defaultsCopy shading];
                                                                                                [mutableShading setShading:shading2];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                [mutableShading setStyle:1];
                                                                                                v155 = +[OITSUColor blackColor];
                                                                                                [mutableShading setForeground:v155];

                                                                                                shading2 = +[OITSUColor whiteColor];
                                                                                                [mutableShading setBackground:shading2];
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          v156 = self->mOriginalProperties;
                                                                                          if (v156)
                                                                                          {
                                                                                            if ([(WDParagraphPropertiesValues *)v156 dropCapOverridden])
                                                                                            {
                                                                                              v157 = self->mTrackedProperties;
                                                                                              if (!v157 || ![(WDParagraphPropertiesValues *)v157 dropCapOverridden])
                                                                                              {
                                                                                                if ([defaultsCopy isDropCapOverridden])
                                                                                                {
                                                                                                  -[WDParagraphProperties setDropCap:](self, "setDropCap:", [defaultsCopy dropCap]);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  [(WDParagraphProperties *)self setDropCap:256];
                                                                                                }
                                                                                              }
                                                                                            }

                                                                                            v158 = self->mOriginalProperties;
                                                                                            if (v158)
                                                                                            {
                                                                                              if ([(WDParagraphPropertiesValues *)v158 tabStopAddedCountOverridden])
                                                                                              {
                                                                                                v159 = self->mTrackedProperties;
                                                                                                if (!v159 || ![(WDParagraphPropertiesValues *)v159 tabStopAddedCountOverridden])
                                                                                                {
                                                                                                  tabStopAddedCount = [defaultsCopy tabStopAddedCount];
                                                                                                  if (tabStopAddedCount)
                                                                                                  {
                                                                                                    [(WDParagraphProperties *)self setTabStopAddedCount:tabStopAddedCount];
                                                                                                    for (i = 0; i != tabStopAddedCount; ++i)
                                                                                                    {
                                                                                                      -[WDParagraphProperties addTabStopAdded:](self, "addTabStopAdded:", [defaultsCopy tabStopAddedAt:i]);
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    [(WDParagraphProperties *)self setTabStopAddedCount:0];
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              v162 = self->mOriginalProperties;
                                                                                              if (v162)
                                                                                              {
                                                                                                if ([(WDParagraphPropertiesValues *)v162 tabStopDeletedCountOverridden])
                                                                                                {
                                                                                                  v163 = self->mTrackedProperties;
                                                                                                  if (!v163 || ![(WDParagraphPropertiesValues *)v163 tabStopDeletedCountOverridden])
                                                                                                  {
                                                                                                    tabStopDeletedPositionCount = [defaultsCopy tabStopDeletedPositionCount];
                                                                                                    if (tabStopDeletedPositionCount)
                                                                                                    {
                                                                                                      [(WDParagraphProperties *)self setTabStopDeletedPositionCount:tabStopDeletedPositionCount];
                                                                                                      for (j = 0; j != tabStopDeletedPositionCount; ++j)
                                                                                                      {
                                                                                                        -[WDParagraphProperties addTabStopDeletedPosition:](self, "addTabStopDeletedPosition:", [defaultsCopy tabStopDeletedPositionAt:j]);
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      [(WDParagraphProperties *)self setTabStopDeletedPositionCount:0];
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    [(WDParagraphProperties *)self setResolveMode:resolveMode];
  }
}

- (void)setBaseStyle:(id)style
{
  styleCopy = style;
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    v4 = mTrackedProperties;
    if (!mTrackedProperties)
    {
      v12 = objc_alloc_init(WDParagraphPropertiesValues);
      v13 = *p_mTrackedProperties;
      *p_mTrackedProperties = v12;

      if (!*p_mTrackedProperties)
      {
        goto LABEL_11;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v15];

      v4 = *p_mTrackedProperties;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      goto LABEL_11;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    v4 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      v7 = objc_alloc_init(WDParagraphPropertiesValues);
      v8 = *p_mTrackedProperties;
      *p_mTrackedProperties = v7;

      if (!*p_mTrackedProperties)
      {
        goto LABEL_11;
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v9];

      v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v10];

      v4 = *p_mTrackedProperties;
    }
  }

  [v4 setBaseStyle:styleCopy];
  [*p_mTrackedProperties setBaseStyleOverridden:1];
LABEL_11:
}

- (BOOL)isPageBreakBefore
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties pageBreakBeforeOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 pageBreakBeforeOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 pageBreakBefore];
}

- (void)setPageBreakBefore:(BOOL)before
{
  beforeCopy = before;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setPageBreakBefore:beforeCopy];
  v12 = *p_mOriginalProperties;

  [v12 setPageBreakBeforeOverridden:1];
}

- (BOOL)isPageBreakBeforeOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties pageBreakBeforeOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties pageBreakBeforeOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 pageBreakBeforeOverridden];
}

- (void)setListLevel:(unsigned __int8)level
{
  levelCopy = level;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setListLevel:levelCopy];
  v12 = *p_mOriginalProperties;

  [v12 setListLevelOverridden:1];
}

- (void)setListIndex:(unint64_t)index
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setListIndex:index];
  v12 = *p_mOriginalProperties;

  [v12 setListIndexOverridden:1];
}

- ($06D0163FE0D7AFE752A9F21F38483579)dropCap
{
  if ((*(self + 17) & 4) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if (![(WDParagraphPropertiesValues *)mTrackedProperties dropCapOverridden])
      {
        mOriginalProperties = self->mOriginalProperties;
        if (mOriginalProperties)
        {
          if ([(WDParagraphPropertiesValues *)mOriginalProperties dropCapOverridden])
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  v5 = *(self + 17);
  if ((v5 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    v6 = self->mTrackedProperties;
    if (v6)
    {
      if ([(WDParagraphPropertiesValues *)v6 dropCapOverridden])
      {
        goto LABEL_15;
      }

      v5 = *(self + 17);
    }
  }

  if ((v5 & 4) == 0 && (v5 & 1) == 0)
  {
LABEL_12:
    LOBYTE(v8) = 0;
LABEL_16:
    v11 = 0;
    return (v8 | (v11 << 8));
  }

  v10 = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v8 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  LODWORD(v8) = [(WDParagraphPropertiesValues *)v8 dropCapOverridden];
  p_mTrackedProperties = p_mOriginalProperties;
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_15:
  LOWORD(v8) = [(WDParagraphPropertiesValues *)*p_mTrackedProperties dropCap];
  v11 = BYTE1(v8);
  return (v8 | (v11 << 8));
}

- (void)setDropCap:(id)cap
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setDropCap:*&cap];
  v12 = *p_mOriginalProperties;

  [v12 setDropCapOverridden:1];
}

- (BOOL)isDropCapOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties dropCapOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties dropCapOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 dropCapOverridden];
}

- (void)setWidth:(int64_t)width
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setWidth:width];
  v12 = *p_mOriginalProperties;

  [v12 setWidthOverridden:1];
}

- (int64_t)height
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties heightOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties height];
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    result = mOriginalProperties;
    if (!mOriginalProperties)
    {
      return result;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([result heightOverridden])
    {
      return [(WDParagraphPropertiesValues *)*p_mTrackedProperties height];
    }
  }

  return 0;
}

- (void)setHeight:(int64_t)height
{
  heightCopy = height;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setHeight:heightCopy];
  v12 = *p_mOriginalProperties;

  [v12 setHeightOverridden:1];
}

- (BOOL)isHeightOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties heightOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties heightOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 heightOverridden];
}

- (int)heightRule
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties heightRuleOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties heightRule];
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (mOriginalProperties)
    {
      p_mTrackedProperties = p_mOriginalProperties;
      if ([(WDParagraphPropertiesValues *)v6 heightRuleOverridden])
      {
        return [(WDParagraphPropertiesValues *)*p_mTrackedProperties heightRule];
      }
    }
  }

  return 1;
}

- (void)setHeightRule:(int)rule
{
  ruleCopy = rule;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setHeightRule:ruleCopy];
  v12 = *p_mOriginalProperties;

  [v12 setHeightRuleOverridden:1];
}

- (BOOL)isHeightRuleOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties heightRuleOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties heightRuleOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 heightRuleOverridden];
}

- (int64_t)verticalSpace
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalSpaceOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 verticalSpaceOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 verticalSpace];
}

- (void)setVerticalSpace:(int64_t)space
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalSpace:space];
  v12 = *p_mOriginalProperties;

  [v12 setVerticalSpaceOverridden:1];
}

- (BOOL)isVerticalSpaceOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties verticalSpaceOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties verticalSpaceOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 verticalSpaceOverridden];
}

- (int64_t)horizontalSpace
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalSpaceOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 horizontalSpaceOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 horizontalSpace];
}

- (void)setHorizontalSpace:(int64_t)space
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalSpace:space];
  v12 = *p_mOriginalProperties;

  [v12 setHorizontalSpaceOverridden:1];
}

- (BOOL)isHorizontalSpaceOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties horizontalSpaceOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties horizontalSpaceOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 horizontalSpaceOverridden];
}

- (BOOL)wrap
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties wrapOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 wrapOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 wrap];
}

- (void)setWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setWrap:wrapCopy];
  v12 = *p_mOriginalProperties;

  [v12 setWrapOverridden:1];
}

- (BOOL)isWrapOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties wrapOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties wrapOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 wrapOverridden];
}

- (void)setHorizontalAnchor:(int)anchor
{
  anchorCopy = anchor;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalAnchor:anchorCopy];
  v12 = *p_mOriginalProperties;

  [v12 setHorizontalAnchorOverridden:1];
}

- (void)setVerticalAnchor:(int)anchor
{
  anchorCopy = anchor;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalAnchor:anchorCopy];
  v12 = *p_mOriginalProperties;

  [v12 setVerticalAnchorOverridden:1];
}

- (void)setHorizontalPosition:(int64_t)position
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalPosition:position];
  v12 = *p_mOriginalProperties;

  [v12 setHorizontalPositionOverridden:1];
}

- (void)setVerticalPosition:(int64_t)position
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalPosition:position];
  v12 = *p_mOriginalProperties;

  [v12 setVerticalPositionOverridden:1];
}

- (char)wrapCode
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties wrapCodeOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 wrapCodeOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 wrapCode];
}

- (void)setWrapCode:(char)code
{
  codeCopy = code;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setWrapCode:codeCopy];
  v12 = *p_mOriginalProperties;

  [v12 setWrapCodeOverridden:1];
}

- (BOOL)isWrapCodeOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties wrapCodeOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties wrapCodeOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 wrapCodeOverridden];
}

- (BOOL)anchorLock
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties anchorLockOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 anchorLockOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 anchorLock];
}

- (void)setAnchorLock:(BOOL)lock
{
  lockCopy = lock;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setAnchorLock:lockCopy];
  v12 = *p_mOriginalProperties;

  [v12 setAnchorLockOverridden:1];
}

- (BOOL)isAnchorLockOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties anchorLockOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties anchorLockOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 anchorLockOverridden];
}

- (id)topBorder
{
  if ((*(self + 17) & 4) == 0 || (v3 = self->mTrackedProperties) == 0 || [(WDParagraphPropertiesValues *)v3 topBorderOverridden]|| (v4 = self->mOriginalProperties) == 0 || ![(WDParagraphPropertiesValues *)v4 topBorderOverridden])
  {
    v5 = *(self + 17);
    if ((v5 & 6) != 0)
    {
      p_mTrackedProperties = &self->mTrackedProperties;
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties topBorderOverridden])
        {
LABEL_14:
          topBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties topBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      topBorder = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([topBorder topBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  topBorder = 0;
LABEL_16:

  return topBorder;
}

- (BOOL)isTopBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties topBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties topBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 topBorderOverridden];
}

- (id)leftBorder
{
  if ((*(self + 17) & 4) == 0 || (v3 = self->mTrackedProperties) == 0 || [(WDParagraphPropertiesValues *)v3 leftBorderOverridden]|| (v4 = self->mOriginalProperties) == 0 || ![(WDParagraphPropertiesValues *)v4 leftBorderOverridden])
  {
    v5 = *(self + 17);
    if ((v5 & 6) != 0)
    {
      p_mTrackedProperties = &self->mTrackedProperties;
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties leftBorderOverridden])
        {
LABEL_14:
          leftBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties leftBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      leftBorder = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([leftBorder leftBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  leftBorder = 0;
LABEL_16:

  return leftBorder;
}

- (BOOL)isLeftBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties leftBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties leftBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 leftBorderOverridden];
}

- (id)rightBorder
{
  if ((*(self + 17) & 4) == 0 || (v3 = self->mTrackedProperties) == 0 || [(WDParagraphPropertiesValues *)v3 rightBorderOverridden]|| (v4 = self->mOriginalProperties) == 0 || ![(WDParagraphPropertiesValues *)v4 rightBorderOverridden])
  {
    v5 = *(self + 17);
    if ((v5 & 6) != 0)
    {
      p_mTrackedProperties = &self->mTrackedProperties;
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties rightBorderOverridden])
        {
LABEL_14:
          rightBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties rightBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      rightBorder = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([rightBorder rightBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  rightBorder = 0;
LABEL_16:

  return rightBorder;
}

- (BOOL)isRightBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties rightBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties rightBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 rightBorderOverridden];
}

- (id)betweenBorder
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties betweenBorderOverridden])
      {
LABEL_9:
        betweenBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties betweenBorder];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    betweenBorder = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([betweenBorder betweenBorderOverridden])
    {
      goto LABEL_9;
    }
  }

  betweenBorder = 0;
LABEL_11:

  return betweenBorder;
}

- (BOOL)isBetweenBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties betweenBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties betweenBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 betweenBorderOverridden];
}

- (id)barBorder
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties barBorderOverridden])
      {
LABEL_9:
        barBorder = [(WDParagraphPropertiesValues *)*p_mTrackedProperties barBorder];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    barBorder = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([barBorder barBorderOverridden])
    {
      goto LABEL_9;
    }
  }

  barBorder = 0;
LABEL_11:

  return barBorder;
}

- (BOOL)isBarBorderOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties barBorderOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties barBorderOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 barBorderOverridden];
}

- (void)setSpaceBefore:(unsigned __int16)before
{
  beforeCopy = before;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceBefore:beforeCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSpaceBeforeOverridden:1];
}

- (BOOL)spaceBeforeAuto
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceBeforeAutoOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 spaceBeforeAutoOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 spaceBeforeAuto];
}

- (void)setSpaceBeforeAuto:(BOOL)auto
{
  autoCopy = auto;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceBeforeAuto:autoCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSpaceBeforeAutoOverridden:1];
}

- (BOOL)isSpaceBeforeAutoOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceBeforeAutoOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties spaceBeforeAutoOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 spaceBeforeAutoOverridden];
}

- (void)setSpaceAfter:(unsigned __int16)after
{
  afterCopy = after;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceAfter:afterCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSpaceAfterOverridden:1];
}

- (BOOL)spaceAfterAuto
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceAfterAutoOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 spaceAfterAutoOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 spaceAfterAuto];
}

- (void)setSpaceAfterAuto:(BOOL)auto
{
  autoCopy = auto;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceAfterAuto:autoCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSpaceAfterAutoOverridden:1];
}

- (BOOL)isSpaceAfterAutoOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties spaceAfterAutoOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties spaceAfterAutoOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 spaceAfterAutoOverridden];
}

- (void)setLineSpacing:(signed __int16)spacing
{
  spacingCopy = spacing;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setLineSpacing:spacingCopy];
  v12 = *p_mOriginalProperties;

  [v12 setLineSpacingOverridden:1];
}

- (void)setLineSpacingRule:(int)rule
{
  ruleCopy = rule;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setLineSpacingRule:ruleCopy];
  v12 = *p_mOriginalProperties;

  [v12 setLineSpacingRuleOverridden:1];
}

- (void)setLeftIndent:(signed __int16)indent
{
  indentCopy = indent;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeftIndent:indentCopy];
  v12 = *p_mOriginalProperties;

  [v12 setLeftIndentOverridden:1];
}

- (void)clearLeftIndent
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  [(WDParagraphPropertiesValues *)mTrackedProperties setLeftIndent:0];
  v4 = *p_mTrackedProperties;

  [(WDParagraphPropertiesValues *)v4 setLeftIndentOverridden:0];
}

- (signed)leadingIndent
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties leadingIndentOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 leadingIndentOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 leadingIndent];
}

- (void)setLeadingIndent:(signed __int16)indent
{
  indentCopy = indent;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeadingIndent:indentCopy];
  v12 = *p_mOriginalProperties;

  [v12 setLeadingIndentOverridden:1];
}

- (BOOL)isLeadingIndentOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties leadingIndentOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties leadingIndentOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 leadingIndentOverridden];
}

- (void)clearLeadingIndent
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  [(WDParagraphPropertiesValues *)mTrackedProperties setLeadingIndent:0];
  v4 = *p_mTrackedProperties;

  [(WDParagraphPropertiesValues *)v4 setLeadingIndentOverridden:0];
}

- (signed)followingIndent
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties followingIndentOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 followingIndentOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 followingIndent];
}

- (void)setFollowingIndent:(signed __int16)indent
{
  indentCopy = indent;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setFollowingIndent:indentCopy];
  v12 = *p_mOriginalProperties;

  [v12 setFollowingIndentOverridden:1];
}

- (BOOL)isFollowingIndentOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties followingIndentOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties followingIndentOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 followingIndentOverridden];
}

- (void)clearFollowingIndent
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  [(WDParagraphPropertiesValues *)mTrackedProperties setFollowingIndent:0];
  v4 = *p_mTrackedProperties;

  [(WDParagraphPropertiesValues *)v4 setFollowingIndentOverridden:0];
}

- (void)setRightIndent:(signed __int16)indent
{
  indentCopy = indent;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setRightIndent:indentCopy];
  v12 = *p_mOriginalProperties;

  [v12 setRightIndentOverridden:1];
}

- (void)clearRightIndent
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  [(WDParagraphPropertiesValues *)mTrackedProperties setRightIndent:0];
  v4 = *p_mTrackedProperties;

  [(WDParagraphPropertiesValues *)v4 setRightIndentOverridden:0];
}

- (void)setFirstLineIndent:(signed __int16)indent
{
  indentCopy = indent;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setFirstLineIndent:indentCopy];
  v12 = *p_mOriginalProperties;

  [v12 setFirstLineIndentOverridden:1];
}

- (void)clearFirstLineIndent
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      return;
    }
  }

  [(WDParagraphPropertiesValues *)mTrackedProperties setFirstLineIndent:0];
  v4 = *p_mTrackedProperties;

  [(WDParagraphPropertiesValues *)v4 setFirstLineIndentOverridden:0];
}

- (signed)leftIndentChars
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties leftIndentCharsOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 leftIndentCharsOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 leftIndentChars];
}

- (void)setLeftIndentChars:(signed __int16)chars
{
  charsCopy = chars;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeftIndentChars:charsCopy];
  v12 = *p_mOriginalProperties;

  [v12 setLeftIndentCharsOverridden:1];
}

- (BOOL)isLeftIndentCharsOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties leftIndentCharsOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties leftIndentCharsOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 leftIndentCharsOverridden];
}

- (signed)rightIndentChars
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties rightIndentCharsOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 rightIndentCharsOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 rightIndentChars];
}

- (void)setRightIndentChars:(signed __int16)chars
{
  charsCopy = chars;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setRightIndentChars:charsCopy];
  v12 = *p_mOriginalProperties;

  [v12 setRightIndentCharsOverridden:1];
}

- (BOOL)isRightIndentCharsOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties rightIndentCharsOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties rightIndentCharsOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 rightIndentCharsOverridden];
}

- (signed)firstLineIndentChars
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties firstLineIndentCharsOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 firstLineIndentCharsOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 firstLineIndentChars];
}

- (void)setFirstLineIndentChars:(signed __int16)chars
{
  charsCopy = chars;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setFirstLineIndentChars:charsCopy];
  v12 = *p_mOriginalProperties;

  [v12 setFirstLineIndentCharsOverridden:1];
}

- (BOOL)isFirstLineIndentCharsOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties firstLineIndentCharsOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties firstLineIndentCharsOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 firstLineIndentCharsOverridden];
}

- (void)setJustification:(int)justification
{
  justificationCopy = justification;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setJustification:justificationCopy];
  v12 = *p_mOriginalProperties;

  [v12 setJustificationOverridden:1];
}

- (int)physicalJustification
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties physicalJustificationOverridden])
      {
        goto LABEL_10;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    LODWORD(v6) = 0;
    return v6;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v6) = [(WDParagraphPropertiesValues *)v6 physicalJustificationOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v6)
    {
LABEL_10:
      LODWORD(v6) = [(WDParagraphPropertiesValues *)*p_mTrackedProperties physicalJustification];
    }
  }

  return v6;
}

- (void)setPhysicalJustification:(int)justification
{
  justificationCopy = justification;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setPhysicalJustification:justificationCopy];
  v12 = *p_mOriginalProperties;

  [v12 setPhysicalJustificationOverridden:1];
}

- (BOOL)isPhysicalJustificationOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties physicalJustificationOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties physicalJustificationOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 physicalJustificationOverridden];
}

- (unsigned)outlineLevel
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties outlineLevelOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 outlineLevelOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 outlineLevel];
}

- (void)setOutlineLevel:(unsigned __int16)level
{
  levelCopy = level;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setOutlineLevel:levelCopy];
  v12 = *p_mOriginalProperties;

  [v12 setOutlineLevelOverridden:1];
}

- (BOOL)isOutlineLevelOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties outlineLevelOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties outlineLevelOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 outlineLevelOverridden];
}

- (BOOL)keepNextParagraphTogether
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties keepNextParagraphTogetherOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 keepNextParagraphTogetherOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 keepNextParagraphTogether];
}

- (void)setKeepNextParagraphTogether:(BOOL)together
{
  togetherCopy = together;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setKeepNextParagraphTogether:togetherCopy];
  v12 = *p_mOriginalProperties;

  [v12 setKeepNextParagraphTogetherOverridden:1];
}

- (BOOL)isKeepNextParagraphTogetherOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties keepNextParagraphTogetherOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties keepNextParagraphTogetherOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 keepNextParagraphTogetherOverridden];
}

- (BOOL)keepLinesTogether
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties keepLinesTogetherOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 keepLinesTogetherOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 keepLinesTogether];
}

- (void)setKeepLinesTogether:(BOOL)together
{
  togetherCopy = together;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setKeepLinesTogether:togetherCopy];
  v12 = *p_mOriginalProperties;

  [v12 setKeepLinesTogetherOverridden:1];
}

- (BOOL)isKeepLinesTogetherOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties keepLinesTogetherOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties keepLinesTogetherOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 keepLinesTogetherOverridden];
}

- (BOOL)suppressAutoHyphens
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties suppressAutoHyphensOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 suppressAutoHyphensOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 suppressAutoHyphens];
}

- (void)setSuppressAutoHyphens:(BOOL)hyphens
{
  hyphensCopy = hyphens;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSuppressAutoHyphens:hyphensCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSuppressAutoHyphensOverridden:1];
}

- (BOOL)isSuppressAutoHyphensOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties suppressAutoHyphensOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties suppressAutoHyphensOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 suppressAutoHyphensOverridden];
}

- (BOOL)suppressLineNumbers
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties suppressLineNumbersOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 suppressLineNumbersOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 suppressLineNumbers];
}

- (void)setSuppressLineNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setSuppressLineNumbers:numbersCopy];
  v12 = *p_mOriginalProperties;

  [v12 setSuppressLineNumbersOverridden:1];
}

- (BOOL)isSuppressLineNumbersOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties suppressLineNumbersOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties suppressLineNumbersOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 suppressLineNumbersOverridden];
}

- (BOOL)widowControl
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties widowControlOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 widowControlOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 widowControl];
}

- (void)setWidowControl:(BOOL)control
{
  controlCopy = control;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setWidowControl:controlCopy];
  v12 = *p_mOriginalProperties;

  [v12 setWidowControlOverridden:1];
}

- (BOOL)isWidowControlOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties widowControlOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties widowControlOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 widowControlOverridden];
}

- (BOOL)biDi
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties biDiOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 biDiOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 biDi];
}

- (void)setBiDi:(BOOL)di
{
  diCopy = di;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setBiDi:diCopy];
  v12 = *p_mOriginalProperties;

  [v12 setBiDiOverridden:1];
}

- (BOOL)isBiDiOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties biDiOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties biDiOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 biDiOverridden];
}

- (BOOL)kinsokuOff
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties kinsokuOffOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 kinsokuOffOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 kinsokuOff];
}

- (void)setKinsokuOff:(BOOL)off
{
  offCopy = off;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setKinsokuOff:offCopy];
  v12 = *p_mOriginalProperties;

  [v12 setKinsokuOffOverridden:1];
}

- (BOOL)isKinsokuOffOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties kinsokuOffOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties kinsokuOffOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 kinsokuOffOverridden];
}

- (unint64_t)tabStopAddedCount
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedCountOverridden])
      {
        tabStopAddedTable = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopAddedTable];
        v6 = [tabStopAddedTable length];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCountOverridden])
  {
    return 0;
  }

  tabStopAddedTable = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopAddedTable];
  v6 = [tabStopAddedTable length];
LABEL_11:
  v8 = v6 >> 2;

  return v8;
}

- (void)setTabStopAddedCount:(unint64_t)count
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopAddedCount:count];
  v12 = *p_mOriginalProperties;

  [v12 setTabStopAddedCountOverridden:1];
}

- (BOOL)hasTabStopAddedAtPosition:(signed __int16)position
{
  tabStopAddedCount = [(WDParagraphProperties *)self tabStopAddedCount];
  if (tabStopAddedCount < 1)
  {
    return 0;
  }

  v6 = tabStopAddedCount;
  positionCopy = position;
  if (*[(WDParagraphProperties *)self tabStopAddedAt:0]== position)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v6 == v9)
    {
      break;
    }

    v11 = [(WDParagraphProperties *)self tabStopAddedAt:v9];
    v9 = v10 + 1;
  }

  while (v11->var0 != positionCopy);
  return v10 < v6;
}

- (BOOL)hasTabStopDeletedAtPosition:(signed __int16)position
{
  positionCopy = position;
  tabStopDeletedPositionCount = [(WDParagraphProperties *)self tabStopDeletedPositionCount];
  if (tabStopDeletedPositionCount < 1)
  {
    return 0;
  }

  v6 = tabStopDeletedPositionCount;
  if ([(WDParagraphProperties *)self tabStopDeletedPositionAt:0]== positionCopy)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (v6 == v8)
    {
      break;
    }

    v10 = [(WDParagraphProperties *)self tabStopDeletedPositionAt:v8];
    v8 = v9 + 1;
  }

  while (v10 != positionCopy);
  return v9 < v6;
}

- ($373952EDE9DECE7FE473A72CF4B2C093)tabStopAddedAt:(unint64_t)at
{
  v4 = 4 * at;
  v5 = *(self + 17);
  if ((v5 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedCountOverridden])
      {
        tabStopAddedTable = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopAddedTable];
        v8 = [tabStopAddedTable subdataWithRange:{v4, 4}];
        goto LABEL_11;
      }

      v5 = *(self + 17);
    }
  }

  if ((v5 & 4) == 0 && (v5 & 1) == 0 || (mOriginalProperties = self->mOriginalProperties) == 0 || ![(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCountOverridden])
  {
    v10 = 0;
    goto LABEL_13;
  }

  tabStopAddedTable = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopAddedTable];
  v8 = [tabStopAddedTable subdataWithRange:{v4, 4}];
LABEL_11:
  v10 = v8;

LABEL_13:
  bytes = [v10 bytes];

  return bytes;
}

- (void)addTabStopAdded:(id *)added
{
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v10 = objc_alloc_init(WDParagraphPropertiesValues);
      v11 = *p_mTrackedProperties;
      *p_mTrackedProperties = v10;

      if (!*p_mTrackedProperties)
      {
        return;
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v12];

      v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v13];

      mTrackedProperties = *p_mTrackedProperties;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      v6 = objc_alloc_init(WDParagraphPropertiesValues);
      v7 = *p_mTrackedProperties;
      *p_mTrackedProperties = v6;

      if (!*p_mTrackedProperties)
      {
        return;
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v8];

      v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v9];

      mTrackedProperties = *p_mTrackedProperties;
    }
  }

  tabStopAddedTable = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedTable];
  [tabStopAddedTable appendBytes:added length:4];

  [*p_mTrackedProperties setTabStopAddedCount:{objc_msgSend(*p_mTrackedProperties, "tabStopAddedCount") + 1}];
  v15 = *p_mTrackedProperties;

  [v15 setTabStopAddedCountOverridden:1];
}

- (void)removeTabStopAddedWithPosition:(signed __int16)position
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
LABEL_4:
      tabStopAddedTable = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      tabStopAddedTable = 0;
      goto LABEL_19;
    }

    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_4;
    }
  }

  tabStopAddedTable = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedTable];
LABEL_7:
  tabStopAddedCount = [(WDParagraphProperties *)self tabStopAddedCount];
  if (!tabStopAddedCount)
  {
    goto LABEL_19;
  }

  v7 = 0;
  positionCopy = position;
  while (1)
  {
    v9 = [tabStopAddedTable subdataWithRange:{v7, 4}];
    bytes = [v9 bytes];

    if (bytes)
    {
      if (*bytes == positionCopy)
      {
        break;
      }
    }

    v7 += 4;
    if (!--tabStopAddedCount)
    {
      goto LABEL_19;
    }
  }

  [tabStopAddedTable replaceBytesInRange:v7 withBytes:4 length:{0, 0}];
  if ((*(self + 17) & 2) != 0)
  {
    mOriginalProperties = self->mTrackedProperties;
    tabStopAddedCount2 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCount];
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      goto LABEL_19;
    }

    mOriginalProperties = self->mOriginalProperties;
    tabStopAddedCount2 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCount];
  }

  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopAddedCount:tabStopAddedCount2 - 1];
LABEL_19:
}

- (unint64_t)tabStopDeletedPositionCount
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedCountOverridden])
      {
        tabStopDeletedTable = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopDeletedTable];
        v6 = [tabStopDeletedTable length];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCountOverridden])
  {
    return 0;
  }

  tabStopDeletedTable = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopDeletedTable];
  v6 = [tabStopDeletedTable length];
LABEL_11:
  v8 = v6 >> 1;

  return v8;
}

- (void)setTabStopDeletedPositionCount:(unint64_t)count
{
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopDeletedCount:count];
  v12 = *p_mOriginalProperties;

  [v12 setTabStopDeletedCountOverridden:1];
}

- (signed)tabStopDeletedPositionAt:(unint64_t)at
{
  v10 = 0;
  v4 = 2 * at;
  v5 = *(self + 17);
  if ((v5 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedCountOverridden])
      {
        tabStopDeletedTable = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopDeletedTable];
        [tabStopDeletedTable getBytes:&v10 range:{v4, 2}];
LABEL_11:

        return v10;
      }

      v5 = *(self + 17);
    }
  }

  if (v5 & 4) != 0 || (v5)
  {
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      if ([(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCountOverridden])
      {
        tabStopDeletedTable = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopDeletedTable];
        [tabStopDeletedTable getBytes:&v10 range:{v4, 2}];
        goto LABEL_11;
      }
    }
  }

  return v10;
}

- (void)addTabStopDeletedPosition:(signed __int16)position
{
  positionCopy = position;
  if ((*(self + 17) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
      v9 = objc_alloc_init(WDParagraphPropertiesValues);
      v10 = *p_mTrackedProperties;
      *p_mTrackedProperties = v9;

      if (!*p_mTrackedProperties)
      {
        return;
      }

      v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v11];

      v12 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v12];

      mTrackedProperties = *p_mTrackedProperties;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mTrackedProperties = &self->mOriginalProperties;
    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      v5 = objc_alloc_init(WDParagraphPropertiesValues);
      v6 = *p_mTrackedProperties;
      *p_mTrackedProperties = v5;

      if (!*p_mTrackedProperties)
      {
        return;
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopAddedTable:v7];

      v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*p_mTrackedProperties setTabStopDeletedTable:v8];

      mTrackedProperties = *p_mTrackedProperties;
    }
  }

  tabStopDeletedTable = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedTable];
  [tabStopDeletedTable appendBytes:&positionCopy length:2];

  [*p_mTrackedProperties setTabStopDeletedCount:{objc_msgSend(*p_mTrackedProperties, "tabStopDeletedCount") + 1}];
  [*p_mTrackedProperties setTabStopDeletedCountOverridden:1];
}

- (void)removeTabStopDeletedPosition:(signed __int16)position
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
LABEL_4:
      tabStopDeletedTable = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      tabStopDeletedTable = 0;
      goto LABEL_19;
    }

    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_4;
    }
  }

  tabStopDeletedTable = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedTable];
LABEL_7:
  tabStopDeletedPositionCount = [(WDParagraphProperties *)self tabStopDeletedPositionCount];
  if (!tabStopDeletedPositionCount)
  {
    goto LABEL_19;
  }

  v7 = 0;
  positionCopy = position;
  while (1)
  {
    v9 = [tabStopDeletedTable subdataWithRange:{v7, 2}];
    bytes = [v9 bytes];

    if (bytes)
    {
      if (*bytes == positionCopy)
      {
        break;
      }
    }

    v7 += 2;
    if (!--tabStopDeletedPositionCount)
    {
      goto LABEL_19;
    }
  }

  [tabStopDeletedTable replaceBytesInRange:v7 withBytes:2 length:{0, 0}];
  if ((*(self + 17) & 2) != 0)
  {
    mOriginalProperties = self->mTrackedProperties;
    tabStopDeletedCount = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCount];
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      goto LABEL_19;
    }

    mOriginalProperties = self->mOriginalProperties;
    tabStopDeletedCount = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCount];
  }

  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopDeletedCount:tabStopDeletedCount - 1];
LABEL_19:
}

- (int)formattingChanged
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties formattingChangedOverridden])
      {
        goto LABEL_10;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    LODWORD(v6) = 0;
    return v6;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (mOriginalProperties)
  {
    LODWORD(v6) = [(WDParagraphPropertiesValues *)v6 formattingChangedOverridden];
    p_mTrackedProperties = p_mOriginalProperties;
    if (v6)
    {
LABEL_10:
      LODWORD(v6) = [(WDParagraphPropertiesValues *)*p_mTrackedProperties formattingChanged];
    }
  }

  return v6;
}

- (void)setFormattingChanged:(int)changed
{
  changedCopy = changed;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setFormattingChanged:changedCopy];
  v12 = *p_mOriginalProperties;

  [v12 setFormattingChangedOverridden:1];
}

- (BOOL)isFormattingChangedOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties formattingChangedOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties formattingChangedOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 formattingChangedOverridden];
}

- (unsigned)indexToAuthorIDOfFormattingChange
{
  v3 = *(self + 17);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden])
      {
        goto LABEL_9;
      }

      v3 = *(self + 17);
    }
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  v6 = mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
  if (![(WDParagraphPropertiesValues *)v6 indexToAuthorIDOfFormattingChangeOverridden])
  {
    return 0;
  }

LABEL_9:
  v9 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v9 indexToAuthorIDOfFormattingChange];
}

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change
{
  changeCopy = change;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setIndexToAuthorIDOfFormattingChange:changeCopy];
  v12 = *p_mOriginalProperties;

  [v12 setIndexToAuthorIDOfFormattingChangeOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden
{
  v3 = *(self + 17);
  if ((v3 & 2) == 0)
  {
    if ((*(self + 17) & 4) != 0)
    {
      mTrackedProperties = self->mTrackedProperties;
      if (mTrackedProperties)
      {
        if ([(WDParagraphPropertiesValues *)mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden])
        {
          goto LABEL_5;
        }

        v3 = *(self + 17);
      }
    }

    if ((v3 & 1) == 0)
    {
      if ((v3 & 4) == 0)
      {
        return 0;
      }

      mOriginalProperties = self->mOriginalProperties;
      if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)mOriginalProperties indexToAuthorIDOfFormattingChangeOverridden])
      {
        return 0;
      }
    }

    v5 = self->mOriginalProperties;
    if (!v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = self->mTrackedProperties;
  if (!v5)
  {
    return 0;
  }

LABEL_10:

  return [(WDParagraphPropertiesValues *)v5 indexToAuthorIDOfFormattingChangeOverridden];
}

- (BOOL)contextualSpacing
{
  LOBYTE(v3) = *(self + 17);
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

  if ((*(self + 17) & 4) == 0)
  {
    goto LABEL_10;
  }

  mTrackedProperties = self->mTrackedProperties;
  if (mTrackedProperties)
  {
    if ([(WDParagraphPropertiesValues *)mTrackedProperties contextualSpacingOverridden])
    {
LABEL_5:
      p_mTrackedProperties = &self->mTrackedProperties;
      goto LABEL_6;
    }

    v3 = *(self + 17);
    if (((v3 >> 2) & 1) == 0)
    {
LABEL_10:
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mTrackedProperties = &self->mOriginalProperties;
  v8 = mOriginalProperties;
  if (!mOriginalProperties || ![(WDParagraphPropertiesValues *)v8 contextualSpacingOverridden])
  {
    return 0;
  }

LABEL_6:
  v6 = *p_mTrackedProperties;

  return [(WDParagraphPropertiesValues *)v6 contextualSpacing];
}

- (void)setContextualSpacing:(BOOL)spacing
{
  spacingCopy = spacing;
  if ((*(self + 17) & 2) == 0)
  {
    if ((*(self + 17) & 1) == 0)
    {
      return;
    }

    p_mOriginalProperties = &self->mOriginalProperties;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc_init(WDParagraphPropertiesValues);
    v7 = *p_mOriginalProperties;
    *p_mOriginalProperties = v6;

    if (!*p_mOriginalProperties)
    {
      return;
    }

    goto LABEL_8;
  }

  p_mOriginalProperties = &self->mTrackedProperties;
  mOriginalProperties = self->mTrackedProperties;
  if (!mOriginalProperties)
  {
    v8 = objc_alloc_init(WDParagraphPropertiesValues);
    v9 = *p_mOriginalProperties;
    *p_mOriginalProperties = v8;

    if (!*p_mOriginalProperties)
    {
      return;
    }

LABEL_8:
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopAddedTable:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*p_mOriginalProperties setTabStopDeletedTable:v11];

    mOriginalProperties = *p_mOriginalProperties;
  }

LABEL_9:
  [(WDParagraphPropertiesValues *)mOriginalProperties setContextualSpacing:spacingCopy];
  v12 = *p_mOriginalProperties;

  [v12 setContextualSpacingOverridden:1];
}

- (BOOL)isContextualSpacingOverridden
{
  LOBYTE(v3) = *(self + 17);
  if ((v3 & 2) != 0)
  {
LABEL_5:
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if ((*(self + 17) & 4) == 0)
  {
    goto LABEL_10;
  }

  v4 = self->mTrackedProperties;
  if (v4)
  {
    if ([(WDParagraphPropertiesValues *)v4 contextualSpacingOverridden])
    {
      goto LABEL_5;
    }

    v3 = *(self + 17);
    if (((v3 >> 2) & 1) == 0)
    {
LABEL_10:
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  mOriginalProperties = self->mOriginalProperties;
  if (!mOriginalProperties)
  {
    return 0;
  }

  if (![(WDParagraphPropertiesValues *)mOriginalProperties contextualSpacingOverridden])
  {
    return 0;
  }

  mTrackedProperties = self->mOriginalProperties;
  if (!mTrackedProperties)
  {
    return 0;
  }

LABEL_6:

  return [(WDParagraphPropertiesValues *)mTrackedProperties contextualSpacingOverridden];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDParagraphProperties allocWithZone:?]];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak(&v4->mDocument, WeakRetained);

    v6 = [(WDCharacterProperties *)self->mCharacterProperties copy];
    mCharacterProperties = v4->mCharacterProperties;
    v4->mCharacterProperties = v6;

    v4->mCharacterPropertiesOverridden = self->mCharacterPropertiesOverridden;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      v9 = [(WDParagraphPropertiesValues *)mOriginalProperties copy];
      v10 = v4->mOriginalProperties;
      v4->mOriginalProperties = v9;
    }

    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      v12 = [(WDParagraphPropertiesValues *)mTrackedProperties copy];
      v13 = v4->mTrackedProperties;
      v4->mTrackedProperties = v12;
    }

    v14 = v4;
  }

  return v4;
}

- (void)copyPropertiesInto:(id)into
{
  intoCopy = into;
  if (intoCopy)
  {
    v4 = *(intoCopy + 3);
    if (v4)
    {
      *(intoCopy + 3) = 0;
    }

    v5 = *(intoCopy + 4);
    if (v5)
    {
      *(intoCopy + 4) = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak(intoCopy + 5, WeakRetained);

    v7 = [(WDCharacterProperties *)self->mCharacterProperties copy];
    v8 = *(intoCopy + 1);
    *(intoCopy + 1) = v7;

    *(intoCopy + 16) = self->mCharacterPropertiesOverridden;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      v10 = [(WDParagraphPropertiesValues *)mOriginalProperties copy];
      v11 = *(intoCopy + 3);
      *(intoCopy + 3) = v10;
    }

    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      v13 = [(WDParagraphPropertiesValues *)mTrackedProperties copy];
      v14 = *(intoCopy + 4);
      *(intoCopy + 4) = v13;
    }
  }
}

- (BOOL)isAnythingOverriddenIn:(id)in
{
  inCopy = in;
  v4 = inCopy;
  if (inCopy)
  {
    if ([inCopy baseStyleOverridden] & 1) != 0 || (objc_msgSend(v4, "pageBreakBeforeOverridden") & 1) != 0 || (objc_msgSend(v4, "listLevelOverridden") & 1) != 0 || (objc_msgSend(v4, "listIndexOverridden") & 1) != 0 || (objc_msgSend(v4, "topBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "leftBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "bottomBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "rightBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "betweenBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "barBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "shadingOverridden") & 1) != 0 || (objc_msgSend(v4, "dropCapOverridden") & 1) != 0 || (objc_msgSend(v4, "widthOverridden") & 1) != 0 || (objc_msgSend(v4, "heightOverridden") & 1) != 0 || (objc_msgSend(v4, "heightRuleOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalSpaceOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalSpaceOverridden") & 1) != 0 || (objc_msgSend(v4, "wrapOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalAnchorOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalAnchorOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalPositionOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalPositionOverridden") & 1) != 0 || (objc_msgSend(v4, "wrapCodeOverridden") & 1) != 0 || (objc_msgSend(v4, "anchorLockOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceBeforeOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceBeforeAutoOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceAfterOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceAfterAutoOverridden") & 1) != 0 || (objc_msgSend(v4, "lineSpacingOverridden") & 1) != 0 || (objc_msgSend(v4, "lineSpacingRuleOverridden") & 1) != 0 || (objc_msgSend(v4, "leftIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "leadingIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "followingIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "rightIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "firstLineIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "justificationOverridden") & 1) != 0 || (objc_msgSend(v4, "physicalJustificationOverridden") & 1) != 0 || (objc_msgSend(v4, "outlineLevelOverridden") & 1) != 0 || (objc_msgSend(v4, "keepNextParagraphTogetherOverridden") & 1) != 0 || (objc_msgSend(v4, "keepLinesTogetherOverridden") & 1) != 0 || (objc_msgSend(v4, "suppressAutoHyphensOverridden") & 1) != 0 || (objc_msgSend(v4, "suppressLineNumbersOverridden") & 1) != 0 || (objc_msgSend(v4, "widowControlOverridden") & 1) != 0 || (objc_msgSend(v4, "biDiOverridden") & 1) != 0 || (objc_msgSend(v4, "kinsokuOffOverridden") & 1) != 0 || (objc_msgSend(v4, "tabStopAddedCountOverridden") & 1) != 0 || (objc_msgSend(v4, "tabStopDeletedCountOverridden") & 1) != 0 || (objc_msgSend(v4, "formattingChangedOverridden"))
    {
      indexToAuthorIDOfFormattingChangeOverridden = 1;
    }

    else
    {
      indexToAuthorIDOfFormattingChangeOverridden = [v4 indexToAuthorIDOfFormattingChangeOverridden];
    }
  }

  else
  {
    indexToAuthorIDOfFormattingChangeOverridden = 0;
  }

  return indexToAuthorIDOfFormattingChangeOverridden;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDParagraphProperties;
  v2 = [(WDParagraphProperties *)&v4 description];

  return v2;
}

@end