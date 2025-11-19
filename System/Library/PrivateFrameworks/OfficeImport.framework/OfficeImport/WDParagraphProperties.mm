@interface WDParagraphProperties
- ($06D0163FE0D7AFE752A9F21F38483579)dropCap;
- ($373952EDE9DECE7FE473A72CF4B2C093)tabStopAddedAt:(unint64_t)a3;
- (BOOL)anchorLock;
- (BOOL)biDi;
- (BOOL)contextualSpacing;
- (BOOL)hasTabStopAddedAtPosition:(signed __int16)a3;
- (BOOL)hasTabStopDeletedAtPosition:(signed __int16)a3;
- (BOOL)isAnchorLockOverridden;
- (BOOL)isAnythingOverridden;
- (BOOL)isAnythingOverriddenIn:(id)a3;
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
- (WDParagraphProperties)initWithDocument:(id)a3;
- (char)wrapCode;
- (id)barBorder;
- (id)baseStyle;
- (id)betweenBorder;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)a3;
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
- (signed)tabStopDeletedPositionAt:(unint64_t)a3;
- (unint64_t)listIndex;
- (unint64_t)tabStopAddedCount;
- (unint64_t)tabStopDeletedPositionCount;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (unsigned)listLevel;
- (unsigned)outlineLevel;
- (unsigned)spaceAfter;
- (unsigned)spaceBefore;
- (void)addTabStopAdded:(id *)a3;
- (void)addTabStopDeletedPosition:(signed __int16)a3;
- (void)clearBaseStyle;
- (void)clearChararacterProperties;
- (void)clearFirstLineIndent;
- (void)clearFollowingIndent;
- (void)clearLeadingIndent;
- (void)clearLeftIndent;
- (void)clearRightIndent;
- (void)copyPropertiesInto:(id)a3;
- (void)negateFormattingChangesWithDefaults:(id)a3;
- (void)removeTabStopAddedWithPosition:(signed __int16)a3;
- (void)removeTabStopDeletedPosition:(signed __int16)a3;
- (void)setAnchorLock:(BOOL)a3;
- (void)setBaseStyle:(id)a3;
- (void)setBiDi:(BOOL)a3;
- (void)setContextualSpacing:(BOOL)a3;
- (void)setDropCap:(id)a3;
- (void)setFirstLineIndent:(signed __int16)a3;
- (void)setFirstLineIndentChars:(signed __int16)a3;
- (void)setFollowingIndent:(signed __int16)a3;
- (void)setFormattingChanged:(int)a3;
- (void)setHeight:(int64_t)a3;
- (void)setHeightRule:(int)a3;
- (void)setHorizontalAnchor:(int)a3;
- (void)setHorizontalPosition:(int64_t)a3;
- (void)setHorizontalSpace:(int64_t)a3;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3;
- (void)setJustification:(int)a3;
- (void)setKeepLinesTogether:(BOOL)a3;
- (void)setKeepNextParagraphTogether:(BOOL)a3;
- (void)setKinsokuOff:(BOOL)a3;
- (void)setLeadingIndent:(signed __int16)a3;
- (void)setLeftIndent:(signed __int16)a3;
- (void)setLeftIndentChars:(signed __int16)a3;
- (void)setLineSpacing:(signed __int16)a3;
- (void)setLineSpacingRule:(int)a3;
- (void)setListIndex:(unint64_t)a3;
- (void)setListLevel:(unsigned __int8)a3;
- (void)setOutlineLevel:(unsigned __int16)a3;
- (void)setPageBreakBefore:(BOOL)a3;
- (void)setPhysicalJustification:(int)a3;
- (void)setResolveMode:(int)a3;
- (void)setRightIndent:(signed __int16)a3;
- (void)setRightIndentChars:(signed __int16)a3;
- (void)setSpaceAfter:(unsigned __int16)a3;
- (void)setSpaceAfterAuto:(BOOL)a3;
- (void)setSpaceBefore:(unsigned __int16)a3;
- (void)setSpaceBeforeAuto:(BOOL)a3;
- (void)setSuppressAutoHyphens:(BOOL)a3;
- (void)setSuppressLineNumbers:(BOOL)a3;
- (void)setTabStopAddedCount:(unint64_t)a3;
- (void)setTabStopDeletedPositionCount:(unint64_t)a3;
- (void)setVerticalAnchor:(int)a3;
- (void)setVerticalPosition:(int64_t)a3;
- (void)setVerticalSpace:(int64_t)a3;
- (void)setWidowControl:(BOOL)a3;
- (void)setWidth:(int64_t)a3;
- (void)setWrap:(BOOL)a3;
- (void)setWrapCode:(char)a3;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties topBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setTopBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 topBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties topBorderOverridden];
  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setTopBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setTopBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties leftBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setLeftBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 leftBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties leftBorderOverridden];
  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setLeftBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setLeftBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties bottomBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setBottomBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 bottomBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties bottomBorderOverridden];
  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBottomBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBottomBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties rightBorder];

    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setRightBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 rightBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties rightBorder];

  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setRightBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setRightBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties betweenBorder];

    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setBetweenBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 betweenBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties betweenBorder];

  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBetweenBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBetweenBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties barBorderOverridden];
    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setBarBorderOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 barBorder];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties barBorderOverridden];
  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setBarBorderOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDBorder);
  [(WDParagraphPropertiesValues *)v10 setBarBorder:v17];
LABEL_16:

  return v17;
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

    v16 = [(WDParagraphPropertiesValues *)mTrackedProperties shading];

    v9 = self->mTrackedProperties;
    if (!v16)
    {
      [(WDParagraphPropertiesValues *)v9 setShadingOverridden:1];
      v10 = self->mTrackedProperties;
      goto LABEL_15;
    }

LABEL_12:
    v17 = [(WDParagraphPropertiesValues *)v9 shading];
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
    v17 = 0;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopAddedTable:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(WDParagraphPropertiesValues *)self->mOriginalProperties setTabStopDeletedTable:v7];

  mOriginalProperties = self->mOriginalProperties;
LABEL_6:
  v8 = [(WDParagraphPropertiesValues *)mOriginalProperties shading];

  v9 = self->mOriginalProperties;
  if (v8)
  {
    goto LABEL_12;
  }

  [(WDParagraphPropertiesValues *)v9 setShadingOverridden:1];
  v10 = self->mOriginalProperties;
LABEL_15:
  v17 = objc_alloc_init(WDShading);
  [(WDParagraphPropertiesValues *)v10 setShading:v17];
LABEL_16:

  return v17;
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
        v6 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties baseStyle];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([v6 baseStyleOverridden])
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
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
          v8 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties bottomBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      v8 = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([v8 bottomBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
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
        v6 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties shading];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([v6 shadingOverridden])
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
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

- (WDParagraphProperties)initWithDocument:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WDParagraphProperties;
  v5 = [(WDParagraphProperties *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
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

- (void)setResolveMode:(int)a3
{
  v3 = (2 * (a3 == 1)) | (4 * (a3 == 2));
  if (!a3)
  {
    ++v3;
  }

  *(self + 17) = v3 | *(self + 17) & 0xF8;
  [(WDCharacterProperties *)self->mCharacterProperties setResolveMode:?];
}

- (void)negateFormattingChangesWithDefaults:(id)a3
{
  v166 = a3;
  v4 = [(WDParagraphProperties *)self resolveMode];
  [(WDParagraphProperties *)self setResolveMode:2];
  if ([(WDParagraphProperties *)self isFormattingChangedOverridden]&& [(WDParagraphProperties *)self formattingChanged])
  {
    [(WDParagraphProperties *)self setResolveMode:1];
    [v166 setResolveMode:2];
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      if ([(WDParagraphPropertiesValues *)mOriginalProperties pageBreakBeforeOverridden])
      {
        mTrackedProperties = self->mTrackedProperties;
        if (!mTrackedProperties || ![(WDParagraphPropertiesValues *)mTrackedProperties pageBreakBeforeOverridden])
        {
          if ([v166 isPageBreakBeforeOverridden])
          {
            v7 = [v166 isPageBreakBefore];
          }

          else
          {
            v7 = 0;
          }

          [(WDParagraphProperties *)self setPageBreakBefore:v7];
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
            if ([v166 isListLevelOverridden])
            {
              v10 = [v166 listLevel];
            }

            else
            {
              v10 = 0;
            }

            [(WDParagraphProperties *)self setListLevel:v10];
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
              if ([v166 isListIndexOverridden])
              {
                v13 = [v166 listIndex];
              }

              else
              {
                v13 = -1;
              }

              [(WDParagraphProperties *)self setListIndex:v13];
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
                if ([v166 isWidthOverridden])
                {
                  v16 = [v166 width];
                }

                else
                {
                  v16 = 0;
                }

                [(WDParagraphProperties *)self setWidth:v16];
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
                  if ([v166 isHeightOverridden])
                  {
                    v19 = [v166 height];
                  }

                  else
                  {
                    v19 = 0;
                  }

                  [(WDParagraphProperties *)self setHeight:v19];
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
                    if ([v166 isHeightRuleOverridden])
                    {
                      v22 = [v166 heightRule];
                    }

                    else
                    {
                      v22 = 1;
                    }

                    [(WDParagraphProperties *)self setHeightRule:v22];
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
                      if ([v166 isVerticalSpaceOverridden])
                      {
                        v25 = [v166 verticalSpace];
                      }

                      else
                      {
                        v25 = 0;
                      }

                      [(WDParagraphProperties *)self setVerticalSpace:v25];
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
                        if ([v166 isHorizontalSpaceOverridden])
                        {
                          v28 = [v166 horizontalSpace];
                        }

                        else
                        {
                          v28 = 0;
                        }

                        [(WDParagraphProperties *)self setHorizontalSpace:v28];
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
                          if ([v166 isWrapOverridden])
                          {
                            v31 = [v166 wrap];
                          }

                          else
                          {
                            v31 = 0;
                          }

                          [(WDParagraphProperties *)self setWrap:v31];
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
                            if ([v166 isHorizontalAnchorOverridden])
                            {
                              v34 = [v166 horizontalAnchor];
                            }

                            else
                            {
                              v34 = 2;
                            }

                            [(WDParagraphProperties *)self setHorizontalAnchor:v34];
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
                              if ([v166 isVerticalAnchorOverridden])
                              {
                                v37 = [v166 verticalAnchor];
                              }

                              else
                              {
                                v37 = 1;
                              }

                              [(WDParagraphProperties *)self setVerticalAnchor:v37];
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
                                if ([v166 isHorizontalPositionOverridden])
                                {
                                  v40 = [v166 horizontalPosition];
                                }

                                else
                                {
                                  v40 = 0;
                                }

                                [(WDParagraphProperties *)self setHorizontalPosition:v40];
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
                                  if ([v166 isVerticalPositionOverridden])
                                  {
                                    v43 = [v166 verticalPosition];
                                  }

                                  else
                                  {
                                    v43 = 0;
                                  }

                                  [(WDParagraphProperties *)self setVerticalPosition:v43];
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
                                    if ([v166 isWrapCodeOverridden])
                                    {
                                      v46 = [v166 wrapCode];
                                    }

                                    else
                                    {
                                      v46 = 0;
                                    }

                                    [(WDParagraphProperties *)self setWrapCode:v46];
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
                                      if ([v166 isAnchorLockOverridden])
                                      {
                                        v49 = [v166 anchorLock];
                                      }

                                      else
                                      {
                                        v49 = 0;
                                      }

                                      [(WDParagraphProperties *)self setAnchorLock:v49];
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
                                        if ([v166 isSpaceBeforeOverridden])
                                        {
                                          v52 = [v166 spaceBefore];
                                        }

                                        else
                                        {
                                          v52 = 0;
                                        }

                                        [(WDParagraphProperties *)self setSpaceBefore:v52];
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
                                          if ([v166 isSpaceBeforeAutoOverridden])
                                          {
                                            v55 = [v166 spaceBeforeAuto];
                                          }

                                          else
                                          {
                                            v55 = 0;
                                          }

                                          [(WDParagraphProperties *)self setSpaceBeforeAuto:v55];
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
                                            if ([v166 isSpaceAfterOverridden])
                                            {
                                              v58 = [v166 spaceAfter];
                                            }

                                            else
                                            {
                                              v58 = 0;
                                            }

                                            [(WDParagraphProperties *)self setSpaceAfter:v58];
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
                                              if ([v166 isSpaceAfterAutoOverridden])
                                              {
                                                v61 = [v166 spaceAfterAuto];
                                              }

                                              else
                                              {
                                                v61 = 0;
                                              }

                                              [(WDParagraphProperties *)self setSpaceAfterAuto:v61];
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
                                                if ([v166 isLineSpacingOverridden])
                                                {
                                                  v64 = [v166 lineSpacing];
                                                }

                                                else
                                                {
                                                  v64 = 0;
                                                }

                                                [(WDParagraphProperties *)self setLineSpacing:v64];
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
                                                  if ([v166 isLineSpacingRuleOverridden])
                                                  {
                                                    v67 = [v166 lineSpacingRule];
                                                  }

                                                  else
                                                  {
                                                    v67 = 0;
                                                  }

                                                  [(WDParagraphProperties *)self setLineSpacingRule:v67];
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
                                                    if ([v166 isLeftIndentOverridden])
                                                    {
                                                      v70 = [v166 leftIndent];
                                                    }

                                                    else
                                                    {
                                                      v70 = 0;
                                                    }

                                                    [(WDParagraphProperties *)self setLeftIndent:v70];
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
                                                      if ([v166 isLeadingIndentOverridden])
                                                      {
                                                        v73 = [v166 leadingIndent];
                                                      }

                                                      else
                                                      {
                                                        v73 = 0;
                                                      }

                                                      [(WDParagraphProperties *)self setLeadingIndent:v73];
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
                                                        if ([v166 isFollowingIndentOverridden])
                                                        {
                                                          v76 = [v166 followingIndent];
                                                        }

                                                        else
                                                        {
                                                          v76 = 0;
                                                        }

                                                        [(WDParagraphProperties *)self setFollowingIndent:v76];
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
                                                          if ([v166 isRightIndentOverridden])
                                                          {
                                                            v79 = [v166 rightIndent];
                                                          }

                                                          else
                                                          {
                                                            v79 = 0;
                                                          }

                                                          [(WDParagraphProperties *)self setRightIndent:v79];
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
                                                            if ([v166 isFirstLineIndentOverridden])
                                                            {
                                                              v82 = [v166 firstLineIndent];
                                                            }

                                                            else
                                                            {
                                                              v82 = 0;
                                                            }

                                                            [(WDParagraphProperties *)self setFirstLineIndent:v82];
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
                                                              if ([v166 isJustificationOverridden])
                                                              {
                                                                v85 = [v166 justification];
                                                              }

                                                              else
                                                              {
                                                                v85 = 0;
                                                              }

                                                              [(WDParagraphProperties *)self setJustification:v85];
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
                                                                if ([v166 isPhysicalJustificationOverridden])
                                                                {
                                                                  v88 = [v166 physicalJustification];
                                                                }

                                                                else
                                                                {
                                                                  v88 = 0;
                                                                }

                                                                [(WDParagraphProperties *)self setPhysicalJustification:v88];
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
                                                                  if ([v166 isOutlineLevelOverridden])
                                                                  {
                                                                    -[WDParagraphProperties setOutlineLevel:](self, "setOutlineLevel:", [v166 outlineLevel]);
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
                                                                    if ([v166 isKeepNextParagraphTogetherOverridden])
                                                                    {
                                                                      v93 = [v166 keepNextParagraphTogether];
                                                                    }

                                                                    else
                                                                    {
                                                                      v93 = 0;
                                                                    }

                                                                    [(WDParagraphProperties *)self setKeepNextParagraphTogether:v93];
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
                                                                      if ([v166 isKeepLinesTogetherOverridden])
                                                                      {
                                                                        v96 = [v166 keepLinesTogether];
                                                                      }

                                                                      else
                                                                      {
                                                                        v96 = 0;
                                                                      }

                                                                      [(WDParagraphProperties *)self setKeepLinesTogether:v96];
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
                                                                        if ([v166 isSuppressAutoHyphensOverridden])
                                                                        {
                                                                          v99 = [v166 suppressAutoHyphens];
                                                                        }

                                                                        else
                                                                        {
                                                                          v99 = 0;
                                                                        }

                                                                        [(WDParagraphProperties *)self setSuppressAutoHyphens:v99];
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
                                                                          if ([v166 isSuppressLineNumbersOverridden])
                                                                          {
                                                                            v102 = [v166 suppressLineNumbers];
                                                                          }

                                                                          else
                                                                          {
                                                                            v102 = 0;
                                                                          }

                                                                          [(WDParagraphProperties *)self setSuppressLineNumbers:v102];
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
                                                                            if ([v166 isWidowControlOverridden])
                                                                            {
                                                                              v105 = [v166 widowControl];
                                                                            }

                                                                            else
                                                                            {
                                                                              v105 = 0;
                                                                            }

                                                                            [(WDParagraphProperties *)self setWidowControl:v105];
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
                                                                              if ([v166 isBiDiOverridden])
                                                                              {
                                                                                v108 = [v166 biDi];
                                                                              }

                                                                              else
                                                                              {
                                                                                v108 = 0;
                                                                              }

                                                                              [(WDParagraphProperties *)self setBiDi:v108];
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
                                                                                if ([v166 isKinsokuOffOverridden])
                                                                                {
                                                                                  v111 = [v166 kinsokuOff];
                                                                                }

                                                                                else
                                                                                {
                                                                                  v111 = 0;
                                                                                }

                                                                                [(WDParagraphProperties *)self setKinsokuOff:v111];
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
                                                                                  v114 = [(WDParagraphProperties *)self mutableTopBorder];
                                                                                  v115 = [(WDParagraphPropertiesValues *)self->mOriginalProperties topBorder];
                                                                                  v116 = [v115 style];

                                                                                  if (v116)
                                                                                  {
                                                                                    [v114 setNullBorder];
                                                                                  }

                                                                                  else if ([v166 isTopBorderOverridden])
                                                                                  {
                                                                                    v117 = [v166 topBorder];
                                                                                    [v114 setBorder:v117];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    [v114 setSingleBlackBorder];
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
                                                                                    v120 = [(WDParagraphProperties *)self mutableLeftBorder];
                                                                                    v121 = [(WDParagraphPropertiesValues *)self->mOriginalProperties leftBorder];
                                                                                    v122 = [v121 style];

                                                                                    if (v122)
                                                                                    {
                                                                                      [v120 setNullBorder];
                                                                                    }

                                                                                    else if ([v166 isLeftBorderOverridden])
                                                                                    {
                                                                                      v123 = [v166 leftBorder];
                                                                                      [v120 setBorder:v123];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      [v120 setSingleBlackBorder];
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
                                                                                      v126 = [(WDParagraphProperties *)self mutableBottomBorder];
                                                                                      v127 = [(WDParagraphPropertiesValues *)self->mOriginalProperties bottomBorder];
                                                                                      v128 = [v127 style];

                                                                                      if (v128)
                                                                                      {
                                                                                        [v126 setNullBorder];
                                                                                      }

                                                                                      else if ([v166 isBottomBorderOverridden])
                                                                                      {
                                                                                        v129 = [v166 bottomBorder];
                                                                                        [v126 setBorder:v129];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        [v126 setSingleBlackBorder];
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
                                                                                        v132 = [(WDParagraphProperties *)self mutableRightBorder];
                                                                                        v133 = [(WDParagraphPropertiesValues *)self->mOriginalProperties rightBorder];
                                                                                        v134 = [v133 style];

                                                                                        if (v134)
                                                                                        {
                                                                                          [v132 setNullBorder];
                                                                                        }

                                                                                        else if ([v166 isRightBorderOverridden])
                                                                                        {
                                                                                          v135 = [v166 rightBorder];
                                                                                          [v132 setBorder:v135];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          [v132 setSingleBlackBorder];
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
                                                                                          v138 = [(WDParagraphProperties *)self mutableBetweenBorder];
                                                                                          v139 = [(WDParagraphPropertiesValues *)self->mOriginalProperties betweenBorder];
                                                                                          v140 = [v139 style];

                                                                                          if (v140)
                                                                                          {
                                                                                            [v138 setNullBorder];
                                                                                          }

                                                                                          else if ([v166 isBetweenBorderOverridden])
                                                                                          {
                                                                                            v141 = [v166 betweenBorder];
                                                                                            [v138 setBorder:v141];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            [v138 setSingleBlackBorder];
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
                                                                                            v144 = [(WDParagraphProperties *)self mutableBarBorder];
                                                                                            v145 = [(WDParagraphPropertiesValues *)self->mOriginalProperties barBorder];
                                                                                            v146 = [v145 style];

                                                                                            if (v146)
                                                                                            {
                                                                                              [v144 setNullBorder];
                                                                                            }

                                                                                            else if ([v166 isBarBorderOverridden])
                                                                                            {
                                                                                              v147 = [v166 barBorder];
                                                                                              [v144 setBorder:v147];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              [v144 setSingleBlackBorder];
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
                                                                                              v150 = [(WDParagraphProperties *)self mutableShading];
                                                                                              v151 = [(WDParagraphPropertiesValues *)self->mOriginalProperties shading];
                                                                                              v152 = [v151 style];

                                                                                              if (v152)
                                                                                              {
                                                                                                [v150 setStyle:0];
                                                                                                v153 = +[WDShading autoForegroundColor];
                                                                                                [v150 setForeground:v153];

                                                                                                v154 = +[WDShading autoBackgroundColor];
                                                                                                [v150 setBackground:v154];
                                                                                              }

                                                                                              else if ([v166 isShadingOverridden])
                                                                                              {
                                                                                                v154 = [v166 shading];
                                                                                                [v150 setShading:v154];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                [v150 setStyle:1];
                                                                                                v155 = +[OITSUColor blackColor];
                                                                                                [v150 setForeground:v155];

                                                                                                v154 = +[OITSUColor whiteColor];
                                                                                                [v150 setBackground:v154];
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
                                                                                                if ([v166 isDropCapOverridden])
                                                                                                {
                                                                                                  -[WDParagraphProperties setDropCap:](self, "setDropCap:", [v166 dropCap]);
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
                                                                                                  v160 = [v166 tabStopAddedCount];
                                                                                                  if (v160)
                                                                                                  {
                                                                                                    [(WDParagraphProperties *)self setTabStopAddedCount:v160];
                                                                                                    for (i = 0; i != v160; ++i)
                                                                                                    {
                                                                                                      -[WDParagraphProperties addTabStopAdded:](self, "addTabStopAdded:", [v166 tabStopAddedAt:i]);
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
                                                                                                    v164 = [v166 tabStopDeletedPositionCount];
                                                                                                    if (v164)
                                                                                                    {
                                                                                                      [(WDParagraphProperties *)self setTabStopDeletedPositionCount:v164];
                                                                                                      for (j = 0; j != v164; ++j)
                                                                                                      {
                                                                                                        -[WDParagraphProperties addTabStopDeletedPosition:](self, "addTabStopDeletedPosition:", [v166 tabStopDeletedPositionAt:j]);
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

    [(WDParagraphProperties *)self setResolveMode:v4];
  }
}

- (void)setBaseStyle:(id)a3
{
  v16 = a3;
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

  [v4 setBaseStyle:v16];
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

- (void)setPageBreakBefore:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setPageBreakBefore:v3];
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

- (void)setListLevel:(unsigned __int8)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setListLevel:v3];
  v12 = *p_mOriginalProperties;

  [v12 setListLevelOverridden:1];
}

- (void)setListIndex:(unint64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setListIndex:a3];
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

- (void)setDropCap:(id)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setDropCap:*&a3];
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

- (void)setWidth:(int64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setWidth:a3];
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

- (void)setHeight:(int64_t)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setHeight:v3];
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

- (void)setHeightRule:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setHeightRule:v3];
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

- (void)setVerticalSpace:(int64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalSpace:a3];
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

- (void)setHorizontalSpace:(int64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalSpace:a3];
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

- (void)setWrap:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setWrap:v3];
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

- (void)setHorizontalAnchor:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalAnchor:v3];
  v12 = *p_mOriginalProperties;

  [v12 setHorizontalAnchorOverridden:1];
}

- (void)setVerticalAnchor:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalAnchor:v3];
  v12 = *p_mOriginalProperties;

  [v12 setVerticalAnchorOverridden:1];
}

- (void)setHorizontalPosition:(int64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setHorizontalPosition:a3];
  v12 = *p_mOriginalProperties;

  [v12 setHorizontalPositionOverridden:1];
}

- (void)setVerticalPosition:(int64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setVerticalPosition:a3];
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

- (void)setWrapCode:(char)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setWrapCode:v3];
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

- (void)setAnchorLock:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setAnchorLock:v3];
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
          v8 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties topBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      v8 = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([v8 topBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
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
          v8 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties leftBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      v8 = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([v8 leftBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
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
          v8 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties rightBorder];
          goto LABEL_16;
        }

        v5 = *(self + 17);
      }
    }

    if (v5 & 4) != 0 || (v5)
    {
      mOriginalProperties = self->mOriginalProperties;
      p_mOriginalProperties = &self->mOriginalProperties;
      v8 = mOriginalProperties;
      if (!mOriginalProperties)
      {
        goto LABEL_16;
      }

      p_mTrackedProperties = p_mOriginalProperties;
      if ([v8 rightBorderOverridden])
      {
        goto LABEL_14;
      }
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
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
        v6 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties betweenBorder];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([v6 betweenBorderOverridden])
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
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
        v6 = [(WDParagraphPropertiesValues *)*p_mTrackedProperties barBorder];
        goto LABEL_11;
      }

      v3 = *(self + 17);
    }
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    v6 = mOriginalProperties;
    if (!mOriginalProperties)
    {
      goto LABEL_11;
    }

    p_mTrackedProperties = p_mOriginalProperties;
    if ([v6 barBorderOverridden])
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
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

- (void)setSpaceBefore:(unsigned __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceBefore:v3];
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

- (void)setSpaceBeforeAuto:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceBeforeAuto:v3];
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

- (void)setSpaceAfter:(unsigned __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceAfter:v3];
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

- (void)setSpaceAfterAuto:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSpaceAfterAuto:v3];
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

- (void)setLineSpacing:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setLineSpacing:v3];
  v12 = *p_mOriginalProperties;

  [v12 setLineSpacingOverridden:1];
}

- (void)setLineSpacingRule:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setLineSpacingRule:v3];
  v12 = *p_mOriginalProperties;

  [v12 setLineSpacingRuleOverridden:1];
}

- (void)setLeftIndent:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeftIndent:v3];
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

- (void)setLeadingIndent:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeadingIndent:v3];
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

- (void)setFollowingIndent:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setFollowingIndent:v3];
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

- (void)setRightIndent:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setRightIndent:v3];
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

- (void)setFirstLineIndent:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setFirstLineIndent:v3];
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

- (void)setLeftIndentChars:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setLeftIndentChars:v3];
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

- (void)setRightIndentChars:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setRightIndentChars:v3];
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

- (void)setFirstLineIndentChars:(signed __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setFirstLineIndentChars:v3];
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

- (void)setJustification:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setJustification:v3];
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

- (void)setPhysicalJustification:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setPhysicalJustification:v3];
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

- (void)setOutlineLevel:(unsigned __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setOutlineLevel:v3];
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

- (void)setKeepNextParagraphTogether:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setKeepNextParagraphTogether:v3];
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

- (void)setKeepLinesTogether:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setKeepLinesTogether:v3];
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

- (void)setSuppressAutoHyphens:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSuppressAutoHyphens:v3];
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

- (void)setSuppressLineNumbers:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setSuppressLineNumbers:v3];
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

- (void)setWidowControl:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setWidowControl:v3];
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

- (void)setBiDi:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setBiDi:v3];
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

- (void)setKinsokuOff:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setKinsokuOff:v3];
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
        v5 = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopAddedTable];
        v6 = [v5 length];
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

  v5 = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopAddedTable];
  v6 = [v5 length];
LABEL_11:
  v8 = v6 >> 2;

  return v8;
}

- (void)setTabStopAddedCount:(unint64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopAddedCount:a3];
  v12 = *p_mOriginalProperties;

  [v12 setTabStopAddedCountOverridden:1];
}

- (BOOL)hasTabStopAddedAtPosition:(signed __int16)a3
{
  v5 = [(WDParagraphProperties *)self tabStopAddedCount];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  v7 = a3;
  if (*[(WDParagraphProperties *)self tabStopAddedAt:0]== a3)
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

  while (v11->var0 != v7);
  return v10 < v6;
}

- (BOOL)hasTabStopDeletedAtPosition:(signed __int16)a3
{
  v3 = a3;
  v5 = [(WDParagraphProperties *)self tabStopDeletedPositionCount];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  if ([(WDParagraphProperties *)self tabStopDeletedPositionAt:0]== v3)
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

  while (v10 != v3);
  return v9 < v6;
}

- ($373952EDE9DECE7FE473A72CF4B2C093)tabStopAddedAt:(unint64_t)a3
{
  v4 = 4 * a3;
  v5 = *(self + 17);
  if ((v5 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedCountOverridden])
      {
        v7 = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopAddedTable];
        v8 = [v7 subdataWithRange:{v4, 4}];
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

  v7 = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopAddedTable];
  v8 = [v7 subdataWithRange:{v4, 4}];
LABEL_11:
  v10 = v8;

LABEL_13:
  v11 = [v10 bytes];

  return v11;
}

- (void)addTabStopAdded:(id *)a3
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

  v14 = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedTable];
  [v14 appendBytes:a3 length:4];

  [*p_mTrackedProperties setTabStopAddedCount:{objc_msgSend(*p_mTrackedProperties, "tabStopAddedCount") + 1}];
  v15 = *p_mTrackedProperties;

  [v15 setTabStopAddedCountOverridden:1];
}

- (void)removeTabStopAddedWithPosition:(signed __int16)a3
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
LABEL_4:
      v13 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      v13 = 0;
      goto LABEL_19;
    }

    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_4;
    }
  }

  v13 = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopAddedTable];
LABEL_7:
  v6 = [(WDParagraphProperties *)self tabStopAddedCount];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = 0;
  v8 = a3;
  while (1)
  {
    v9 = [v13 subdataWithRange:{v7, 4}];
    v10 = [v9 bytes];

    if (v10)
    {
      if (*v10 == v8)
      {
        break;
      }
    }

    v7 += 4;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  [v13 replaceBytesInRange:v7 withBytes:4 length:{0, 0}];
  if ((*(self + 17) & 2) != 0)
  {
    mOriginalProperties = self->mTrackedProperties;
    v12 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCount];
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      goto LABEL_19;
    }

    mOriginalProperties = self->mOriginalProperties;
    v12 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopAddedCount];
  }

  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopAddedCount:v12 - 1];
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
        v5 = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopDeletedTable];
        v6 = [v5 length];
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

  v5 = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopDeletedTable];
  v6 = [v5 length];
LABEL_11:
  v8 = v6 >> 1;

  return v8;
}

- (void)setTabStopDeletedPositionCount:(unint64_t)a3
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopDeletedCount:a3];
  v12 = *p_mOriginalProperties;

  [v12 setTabStopDeletedCountOverridden:1];
}

- (signed)tabStopDeletedPositionAt:(unint64_t)a3
{
  v10 = 0;
  v4 = 2 * a3;
  v5 = *(self + 17);
  if ((v5 & 6) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      if ([(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedCountOverridden])
      {
        v7 = [(WDParagraphPropertiesValues *)self->mTrackedProperties tabStopDeletedTable];
        [v7 getBytes:&v10 range:{v4, 2}];
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
        v7 = [(WDParagraphPropertiesValues *)self->mOriginalProperties tabStopDeletedTable];
        [v7 getBytes:&v10 range:{v4, 2}];
        goto LABEL_11;
      }
    }
  }

  return v10;
}

- (void)addTabStopDeletedPosition:(signed __int16)a3
{
  v14 = a3;
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

  v13 = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedTable];
  [v13 appendBytes:&v14 length:2];

  [*p_mTrackedProperties setTabStopDeletedCount:{objc_msgSend(*p_mTrackedProperties, "tabStopDeletedCount") + 1}];
  [*p_mTrackedProperties setTabStopDeletedCountOverridden:1];
}

- (void)removeTabStopDeletedPosition:(signed __int16)a3
{
  if ((*(self + 17) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    if (!mTrackedProperties)
    {
LABEL_4:
      v13 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      v13 = 0;
      goto LABEL_19;
    }

    mTrackedProperties = self->mOriginalProperties;
    if (!mTrackedProperties)
    {
      goto LABEL_4;
    }
  }

  v13 = [(WDParagraphPropertiesValues *)mTrackedProperties tabStopDeletedTable];
LABEL_7:
  v6 = [(WDParagraphProperties *)self tabStopDeletedPositionCount];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = 0;
  v8 = a3;
  while (1)
  {
    v9 = [v13 subdataWithRange:{v7, 2}];
    v10 = [v9 bytes];

    if (v10)
    {
      if (*v10 == v8)
      {
        break;
      }
    }

    v7 += 2;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  [v13 replaceBytesInRange:v7 withBytes:2 length:{0, 0}];
  if ((*(self + 17) & 2) != 0)
  {
    mOriginalProperties = self->mTrackedProperties;
    v12 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCount];
  }

  else
  {
    if ((*(self + 17) & 1) == 0)
    {
      goto LABEL_19;
    }

    mOriginalProperties = self->mOriginalProperties;
    v12 = [(WDParagraphPropertiesValues *)mOriginalProperties tabStopDeletedCount];
  }

  [(WDParagraphPropertiesValues *)mOriginalProperties setTabStopDeletedCount:v12 - 1];
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

- (void)setFormattingChanged:(int)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setFormattingChanged:v3];
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

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setIndexToAuthorIDOfFormattingChange:v3];
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

- (void)setContextualSpacing:(BOOL)a3
{
  v3 = a3;
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
  [(WDParagraphPropertiesValues *)mOriginalProperties setContextualSpacing:v3];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)copyPropertiesInto:(id)a3
{
  v15 = a3;
  if (v15)
  {
    v4 = *(v15 + 3);
    if (v4)
    {
      *(v15 + 3) = 0;
    }

    v5 = *(v15 + 4);
    if (v5)
    {
      *(v15 + 4) = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak(v15 + 5, WeakRetained);

    v7 = [(WDCharacterProperties *)self->mCharacterProperties copy];
    v8 = *(v15 + 1);
    *(v15 + 1) = v7;

    *(v15 + 16) = self->mCharacterPropertiesOverridden;
    mOriginalProperties = self->mOriginalProperties;
    if (mOriginalProperties)
    {
      v10 = [(WDParagraphPropertiesValues *)mOriginalProperties copy];
      v11 = *(v15 + 3);
      *(v15 + 3) = v10;
    }

    mTrackedProperties = self->mTrackedProperties;
    if (mTrackedProperties)
    {
      v13 = [(WDParagraphPropertiesValues *)mTrackedProperties copy];
      v14 = *(v15 + 4);
      *(v15 + 4) = v13;
    }
  }
}

- (BOOL)isAnythingOverriddenIn:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 baseStyleOverridden] & 1) != 0 || (objc_msgSend(v4, "pageBreakBeforeOverridden") & 1) != 0 || (objc_msgSend(v4, "listLevelOverridden") & 1) != 0 || (objc_msgSend(v4, "listIndexOverridden") & 1) != 0 || (objc_msgSend(v4, "topBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "leftBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "bottomBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "rightBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "betweenBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "barBorderOverridden") & 1) != 0 || (objc_msgSend(v4, "shadingOverridden") & 1) != 0 || (objc_msgSend(v4, "dropCapOverridden") & 1) != 0 || (objc_msgSend(v4, "widthOverridden") & 1) != 0 || (objc_msgSend(v4, "heightOverridden") & 1) != 0 || (objc_msgSend(v4, "heightRuleOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalSpaceOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalSpaceOverridden") & 1) != 0 || (objc_msgSend(v4, "wrapOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalAnchorOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalAnchorOverridden") & 1) != 0 || (objc_msgSend(v4, "horizontalPositionOverridden") & 1) != 0 || (objc_msgSend(v4, "verticalPositionOverridden") & 1) != 0 || (objc_msgSend(v4, "wrapCodeOverridden") & 1) != 0 || (objc_msgSend(v4, "anchorLockOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceBeforeOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceBeforeAutoOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceAfterOverridden") & 1) != 0 || (objc_msgSend(v4, "spaceAfterAutoOverridden") & 1) != 0 || (objc_msgSend(v4, "lineSpacingOverridden") & 1) != 0 || (objc_msgSend(v4, "lineSpacingRuleOverridden") & 1) != 0 || (objc_msgSend(v4, "leftIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "leadingIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "followingIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "rightIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "firstLineIndentOverridden") & 1) != 0 || (objc_msgSend(v4, "justificationOverridden") & 1) != 0 || (objc_msgSend(v4, "physicalJustificationOverridden") & 1) != 0 || (objc_msgSend(v4, "outlineLevelOverridden") & 1) != 0 || (objc_msgSend(v4, "keepNextParagraphTogetherOverridden") & 1) != 0 || (objc_msgSend(v4, "keepLinesTogetherOverridden") & 1) != 0 || (objc_msgSend(v4, "suppressAutoHyphensOverridden") & 1) != 0 || (objc_msgSend(v4, "suppressLineNumbersOverridden") & 1) != 0 || (objc_msgSend(v4, "widowControlOverridden") & 1) != 0 || (objc_msgSend(v4, "biDiOverridden") & 1) != 0 || (objc_msgSend(v4, "kinsokuOffOverridden") & 1) != 0 || (objc_msgSend(v4, "tabStopAddedCountOverridden") & 1) != 0 || (objc_msgSend(v4, "tabStopDeletedCountOverridden") & 1) != 0 || (objc_msgSend(v4, "formattingChangedOverridden"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 indexToAuthorIDOfFormattingChangeOverridden];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDParagraphProperties;
  v2 = [(WDParagraphProperties *)&v4 description];

  return v2;
}

@end