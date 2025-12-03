@interface WDTableCellProperties
- (BOOL)firstInSetOfVerticallyMergedCells;
- (BOOL)isBottomBorderOverridden;
- (BOOL)isBottomMarginOverridden;
- (BOOL)isBottomMarginTypeOverridden;
- (BOOL)isDeletedOverridden;
- (BOOL)isDeletionDateOverridden;
- (BOOL)isDiagonalDownBorderOverridden;
- (BOOL)isDiagonalUpBorderOverridden;
- (BOOL)isEditDateOverridden;
- (BOOL)isEditedOverridden;
- (BOOL)isFirstInSetOfVerticallyMergedCellsOverridden;
- (BOOL)isFormattingChangeDateOverridden;
- (BOOL)isFormattingChangedOverridden;
- (BOOL)isIndexToAuthorIDOfDeletionOverridden;
- (BOOL)isIndexToAuthorIDOfEditOverridden;
- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden;
- (BOOL)isInsideHorizontalBorderOverridden;
- (BOOL)isInsideVerticalBorderOverridden;
- (BOOL)isLeftBorderOverridden;
- (BOOL)isLeftMarginOverridden;
- (BOOL)isLeftMarginTypeOverridden;
- (BOOL)isNoWrapOverridden;
- (BOOL)isRightBorderOverridden;
- (BOOL)isRightMarginOverridden;
- (BOOL)isRightMarginTypeOverridden;
- (BOOL)isShadingOverridden;
- (BOOL)isTextDirectionOverridden;
- (BOOL)isTopBorderOverridden;
- (BOOL)isTopMarginOverridden;
- (BOOL)isTopMarginTypeOverridden;
- (BOOL)isVerticalAlignmentOverridden;
- (BOOL)isVerticallyMergedCellOverridden;
- (BOOL)isWidthTypeOverridden;
- (BOOL)noWrap;
- (BOOL)verticallyMergedCell;
- (WDDocument)document;
- (WDTableCellProperties)init;
- (WDTableCellProperties)initWithDocument:(id)document;
- (id).cxx_construct;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deletionDate;
- (id)description;
- (id)diagonalDownBorder;
- (id)diagonalUpBorder;
- (id)editDate;
- (id)formattingChangeDate;
- (id)insideHorizontalBorder;
- (id)insideVerticalBorder;
- (id)leftBorder;
- (id)mutableBottomBorder;
- (id)mutableDiagonalDownBorder;
- (id)mutableDiagonalUpBorder;
- (id)mutableInsideHorizontalBorder;
- (id)mutableInsideVerticalBorder;
- (id)mutableLeftBorder;
- (id)mutableRightBorder;
- (id)mutableShading;
- (id)mutableTopBorder;
- (id)rightBorder;
- (id)shading;
- (id)topBorder;
- (int)bottomMarginType;
- (int)deleted;
- (int)edited;
- (int)formattingChanged;
- (int)leftMarginType;
- (int)resolveMode;
- (int)rightMarginType;
- (int)textDirection;
- (int)topMarginType;
- (int)verticalAlignment;
- (int)widthType;
- (signed)bottomMargin;
- (signed)leftMargin;
- (signed)rightMargin;
- (signed)topMargin;
- (unsigned)indexToAuthorIDOfDeletion;
- (unsigned)indexToAuthorIDOfEdit;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (void)addProperties:(id)properties;
- (void)addPropertiesValues:(id *)values to:(id *)to;
- (void)clearShading;
- (void)setBottomMargin:(signed __int16)margin;
- (void)setBottomMarginType:(int)type;
- (void)setDeleted:(int)deleted;
- (void)setDeletionDate:(id)date;
- (void)setEditDate:(id)date;
- (void)setEdited:(int)edited;
- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)cells;
- (void)setFormattingChangeDate:(id)date;
- (void)setFormattingChanged:(int)changed;
- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)deletion;
- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)edit;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change;
- (void)setLeftMargin:(signed __int16)margin;
- (void)setLeftMarginType:(int)type;
- (void)setNoWrap:(BOOL)wrap;
- (void)setResolveMode:(int)mode;
- (void)setRightMargin:(signed __int16)margin;
- (void)setRightMarginType:(int)type;
- (void)setTextDirection:(int)direction;
- (void)setTopMargin:(signed __int16)margin;
- (void)setTopMarginType:(int)type;
- (void)setVerticalAlignment:(int)alignment;
- (void)setVerticallyMergedCell:(BOOL)cell;
- (void)setWidthType:(int)type;
@end

@implementation WDTableCellProperties

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 19) = 0;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 31) = 0;
  *(self + 41) = 0;
  *(self + 42) = 0;
  *(self + 40) = 0;
  return self;
}

- (id)mutableTopBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_topBorder = &self->mTrackedProperties.topBorder;
    topBorder = self->mTrackedProperties.topBorder;
    if (!topBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = topBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_topBorder = &self->mOriginalProperties.topBorder;
    topBorder = self->mOriginalProperties.topBorder;
    if (!topBorder)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 2u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_topBorder;
      *p_topBorder = v5;

      topBorder = *p_topBorder;
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
  if ((*(self + 12) & 2) != 0)
  {
    p_leftBorder = &self->mTrackedProperties.leftBorder;
    leftBorder = self->mTrackedProperties.leftBorder;
    if (!leftBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = leftBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_leftBorder = &self->mOriginalProperties.leftBorder;
    leftBorder = self->mOriginalProperties.leftBorder;
    if (!leftBorder)
    {
      v4 = 176;
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
  if ((*(self + 12) & 2) != 0)
  {
    p_bottomBorder = &self->mTrackedProperties.bottomBorder;
    bottomBorder = self->mTrackedProperties.bottomBorder;
    if (!bottomBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = bottomBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_bottomBorder = &self->mOriginalProperties.bottomBorder;
    bottomBorder = self->mOriginalProperties.bottomBorder;
    if (!bottomBorder)
    {
      v4 = 176;
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

- (id)mutableRightBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_rightBorder = &self->mTrackedProperties.rightBorder;
    rightBorder = self->mTrackedProperties.rightBorder;
    if (!rightBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = rightBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_rightBorder = &self->mOriginalProperties.rightBorder;
    rightBorder = self->mOriginalProperties.rightBorder;
    if (!rightBorder)
    {
      v4 = 176;
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

- (BOOL)isWidthTypeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 1) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)widthType
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 2) != 0)
  {
    v3 = 256;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 161) & 2) == 0)
    {
      return 1;
    }

    v3 = 88;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isTopBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)topBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 2) != 0)
  {
    v5 = 192;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 2) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 24;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isLeftBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)leftBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 4) != 0)
  {
    v5 = 200;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 4) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 32;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isBottomBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)bottomBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 8) != 0)
  {
    v5 = 208;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 8) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 40;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isRightBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)rightBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 0x10) != 0)
  {
    v5 = 216;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 0x10) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 48;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isVerticalAlignmentOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 2) >> 2) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 162) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 2) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)verticalAlignment
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 162) & 4) != 0)
  {
    v3 = 292;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 162) & 4) == 0)
    {
      return 0;
    }

    v3 = 124;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isLeftMarginOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 6) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)isRightMarginOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return *(&self->super.isa + v3 + 2) & 1;
  }

  if ((*(self + 12) & 4) == 0)
  {
    if ((*(self + 12) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((*(&self->mTrackedProperties + 162) & 1) == 0)
  {
    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v3 = 176;
    return *(&self->super.isa + v3 + 2) & 1;
  }

  return 1;
}

- (BOOL)isShadingOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
LABEL_11:
    v2 = *(&self->super.isa + v3);
    return v2 & 1;
  }

  if ((*(self + 12) & 4) == 0)
  {
    if ((*(self + 12) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(&self->mTrackedProperties + 40))
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  if (*(self + 12) & 1) != 0 || (*(&self->mOriginalProperties + 40))
  {
LABEL_10:
    v3 = 176;
    goto LABEL_11;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2 & 1;
}

- (WDTableCellProperties)init
{
  v3.receiver = self;
  v3.super_class = WDTableCellProperties;
  result = [(WDTableCellProperties *)&v3 init];
  if (result)
  {
    *(result + 12) = *(result + 12) & 0xF8 | 1;
  }

  return result;
}

- (id)mutableShading
{
  if ((*(self + 12) & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    shading = self->mTrackedProperties.shading;
    if (!shading)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = shading;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_mTrackedProperties = &self->mOriginalProperties;
    shading = self->mOriginalProperties.shading;
    if (!shading)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 1u;
      v5 = objc_alloc_init(WDShading);
      v6 = p_mTrackedProperties->shading;
      p_mTrackedProperties->shading = v5;

      shading = p_mTrackedProperties->shading;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)shading
{
  if (*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 40))
  {
    v3 = 184;
    goto LABEL_8;
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 40))
  {
    v3 = 16;
LABEL_8:
    v4 = *(&self->super.isa + v3);

    return v4;
  }

  v4 = 0;

  return v4;
}

- (id)mutableInsideHorizontalBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_insideHorizontalBorder = &self->mTrackedProperties.insideHorizontalBorder;
    insideHorizontalBorder = self->mTrackedProperties.insideHorizontalBorder;
    if (!insideHorizontalBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = insideHorizontalBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_insideHorizontalBorder = &self->mOriginalProperties.insideHorizontalBorder;
    insideHorizontalBorder = self->mOriginalProperties.insideHorizontalBorder;
    if (!insideHorizontalBorder)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 0x80u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_insideHorizontalBorder;
      *p_insideHorizontalBorder = v5;

      insideHorizontalBorder = *p_insideHorizontalBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)mutableInsideVerticalBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_insideVerticalBorder = &self->mTrackedProperties.insideVerticalBorder;
    insideVerticalBorder = self->mTrackedProperties.insideVerticalBorder;
    if (!insideVerticalBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = insideVerticalBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_insideVerticalBorder = &self->mOriginalProperties.insideVerticalBorder;
    insideVerticalBorder = self->mOriginalProperties.insideVerticalBorder;
    if (!insideVerticalBorder)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 0x100u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_insideVerticalBorder;
      *p_insideVerticalBorder = v5;

      insideVerticalBorder = *p_insideVerticalBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (signed)leftMargin
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 0x40) != 0)
  {
    v3 = 276;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 161) & 0x40) != 0)
  {
    v3 = 108;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (signed)rightMargin
{
  if (*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 162))
  {
    v3 = 284;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 162))
  {
    v3 = 116;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (id)mutableDiagonalUpBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_diagonalUpBorder = &self->mTrackedProperties.diagonalUpBorder;
    diagonalUpBorder = self->mTrackedProperties.diagonalUpBorder;
    if (!diagonalUpBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = diagonalUpBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_diagonalUpBorder = &self->mOriginalProperties.diagonalUpBorder;
    diagonalUpBorder = self->mOriginalProperties.diagonalUpBorder;
    if (!diagonalUpBorder)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 0x20u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_diagonalUpBorder;
      *p_diagonalUpBorder = v5;

      diagonalUpBorder = *p_diagonalUpBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)mutableDiagonalDownBorder
{
  if ((*(self + 12) & 2) != 0)
  {
    p_diagonalDownBorder = &self->mTrackedProperties.diagonalDownBorder;
    diagonalDownBorder = self->mTrackedProperties.diagonalDownBorder;
    if (!diagonalDownBorder)
    {
      v4 = 344;
      goto LABEL_7;
    }

LABEL_8:
    v7 = diagonalDownBorder;
    goto LABEL_10;
  }

  if (*(self + 12))
  {
    p_diagonalDownBorder = &self->mOriginalProperties.diagonalDownBorder;
    diagonalDownBorder = self->mOriginalProperties.diagonalDownBorder;
    if (!diagonalDownBorder)
    {
      v4 = 176;
LABEL_7:
      *(&self->super.isa + v4) |= 0x40u;
      v5 = objc_alloc_init(WDBorder);
      v6 = *p_diagonalDownBorder;
      *p_diagonalDownBorder = v5;

      diagonalDownBorder = *p_diagonalDownBorder;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (WDTableCellProperties)initWithDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = WDTableCellProperties;
  v5 = [(WDTableCellProperties *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 12) = *(v5 + 12) & 0xF8 | 1;
    objc_storeWeak(&v5->mDocument, documentCopy);
  }

  return v6;
}

- (int)resolveMode
{
  v2 = *(self + 12);
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

- (void)setResolveMode:(int)mode
{
  v3 = (2 * (mode == 1)) | (4 * (mode == 2));
  if (!mode)
  {
    ++v3;
  }

  *(self + 12) = v3 | *(self + 12) & 0xF8;
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  [(WDTableCellProperties *)self addPropertiesValues:propertiesCopy + 16 to:&self->mOriginalProperties];
  [(WDTableCellProperties *)self addPropertiesValues:propertiesCopy + 184 to:&self->mTrackedProperties];
}

- (void)clearShading
{
  if ((*(self + 12) & 2) != 0)
  {
    v2 = *(&self->mTrackedProperties + 40);
    if (v2)
    {
      v3 = &self->mTrackedProperties + 160;
      v4 = 184;
LABEL_7:
      *v3 = v2 & 0xFFFFFFFE;
      v5 = *(&self->super.isa + v4);
      *(&self->super.isa + v4) = 0;

      return;
    }
  }

  if (*(self + 12))
  {
    v3 = &self->mOriginalProperties + 160;
    v2 = *(&self->mOriginalProperties + 40);
    if (v2)
    {
      v4 = 16;
      goto LABEL_7;
    }
  }
}

- (id)diagonalUpBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 0x20) != 0)
  {
    v5 = 224;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 0x20) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 56;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isDiagonalUpBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)diagonalDownBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 0x40) != 0)
  {
    v5 = 232;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 0x40) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 64;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isDiagonalDownBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3) >> 6) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)insideHorizontalBorder
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 160) & 0x80) != 0)
  {
    v5 = 240;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 160) & 0x80) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 72;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isInsideHorizontalBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return *(&self->super.isa + v3) >> 7;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 160) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 160) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return *(&self->super.isa + v3) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)insideVerticalBorder
{
  if (*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161))
  {
    v5 = 248;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 161) & 1) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 80;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (BOOL)isInsideVerticalBorderOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return *(&self->super.isa + v3 + 1) & 1;
  }

  if ((*(self + 12) & 4) == 0)
  {
    if ((*(self + 12) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((*(&self->mTrackedProperties + 161) & 1) == 0)
  {
    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v3 = 176;
    return *(&self->super.isa + v3 + 1) & 1;
  }

  return 1;
}

- (void)setWidthType:(int)type
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 256;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 88;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x200u;
}

- (signed)topMargin
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 4) != 0)
  {
    v3 = 260;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 161) & 4) != 0)
  {
    v3 = 92;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)setTopMargin:(signed __int16)margin
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 260;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 92;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x400u;
}

- (BOOL)isTopMarginOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 2) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)topMarginType
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 8) != 0)
  {
    v3 = 264;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 161) & 8) == 0)
    {
      return 1;
    }

    v3 = 96;
  }

  return *(&self->super.isa + v3);
}

- (void)setTopMarginType:(int)type
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 264;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 96;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x800u;
}

- (BOOL)isTopMarginTypeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 3) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (signed)bottomMargin
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 0x10) != 0)
  {
    v3 = 268;
    return *(&self->super.isa + v3);
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 161) & 0x10) != 0)
  {
    v3 = 100;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (void)setBottomMargin:(signed __int16)margin
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 268;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 100;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x1000u;
}

- (BOOL)isBottomMarginOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 4) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)bottomMarginType
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 0x20) != 0)
  {
    v3 = 272;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 161) & 0x20) == 0)
    {
      return 1;
    }

    v3 = 104;
  }

  return *(&self->super.isa + v3);
}

- (void)setBottomMarginType:(int)type
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 272;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 104;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x2000u;
}

- (BOOL)isBottomMarginTypeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 1) >> 5) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 1) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setLeftMargin:(signed __int16)margin
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 276;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 108;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x4000u;
}

- (int)leftMarginType
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 161) & 0x80) != 0)
  {
    v3 = 280;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 161) & 0x80) == 0)
    {
      return 1;
    }

    v3 = 112;
  }

  return *(&self->super.isa + v3);
}

- (void)setLeftMarginType:(int)type
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 280;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 112;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x8000u;
}

- (BOOL)isLeftMarginTypeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return *(&self->super.isa + v3 + 1) >> 7;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 161) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 161) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return *(&self->super.isa + v3 + 1) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setRightMargin:(signed __int16)margin
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 284;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 116;
  }

  *(&self->super.isa + v4) = margin;
  *(&self->super.isa + v3) |= 0x10000u;
}

- (int)rightMarginType
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 162) & 2) != 0)
  {
    v3 = 288;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 162) & 2) == 0)
    {
      return 1;
    }

    v3 = 120;
  }

  return *(&self->super.isa + v3);
}

- (void)setRightMarginType:(int)type
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 288;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 120;
  }

  *(&self->super.isa + v4) = type;
  *(&self->super.isa + v3) |= 0x20000u;
}

- (BOOL)isRightMarginTypeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 2) >> 1) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 162) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 2) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (void)setVerticalAlignment:(int)alignment
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 292;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 124;
  }

  *(&self->super.isa + v4) = alignment;
  *(&self->super.isa + v3) |= 0x40000u;
}

- (int)textDirection
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 162) & 8) != 0)
  {
    v3 = 296;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 162) & 8) == 0)
    {
      return 1;
    }

    v3 = 128;
  }

  return *(&self->super.isa + v3);
}

- (void)setTextDirection:(int)direction
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 296;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 128;
  }

  *(&self->super.isa + v4) = direction;
  *(&self->super.isa + v3) |= 0x80000u;
}

- (BOOL)isTextDirectionOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 2) >> 3) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 162) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 2) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)verticallyMergedCell
{
  if ((*(self + 12) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 40), (v2 & 0x200000) != 0))
  {
    return (v2 >> 20) & 1;
  }

  else if (*(self + 12) & 4) != 0 || (*(self + 12))
  {
    v4 = *(&self->mOriginalProperties + 40);
    LOBYTE(v3) = (v4 & 0x200000) != 0 && (v4 & 0x100000) != 0;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setVerticallyMergedCell:(BOOL)cell
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
  }

  if (cell)
  {
    v4 = 3145728;
  }

  else
  {
    v4 = 0x200000;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xFFCFFFFF;
}

- (BOOL)isVerticallyMergedCellOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 2) >> 5) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 162) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 2) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)firstInSetOfVerticallyMergedCells
{
  if ((*(self + 12) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 40), (v2 & 0x800000) != 0))
  {
    return (v2 >> 22) & 1;
  }

  else if (*(self + 12) & 4) != 0 || (*(self + 12))
  {
    v4 = *(&self->mOriginalProperties + 40);
    LOBYTE(v3) = (v4 & 0x800000) != 0 && (v4 & 0x400000) != 0;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setFirstInSetOfVerticallyMergedCells:(BOOL)cells
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
  }

  if (cells)
  {
    v4 = 12582912;
  }

  else
  {
    v4 = 0x800000;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xFF3FFFFF;
}

- (BOOL)isFirstInSetOfVerticallyMergedCellsOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return *(&self->super.isa + v3 + 2) >> 7;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 162) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 162) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return *(&self->super.isa + v3 + 2) >> 7;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)noWrap
{
  if ((*(self + 12) & 6) != 0 && (v2 = *(&self->mTrackedProperties + 40), (v2 & 0x2000000) != 0))
  {
    return HIBYTE(v2) & 1;
  }

  else if (*(self + 12) & 4) != 0 || (*(self + 12))
  {
    v4 = *(&self->mOriginalProperties + 40);
    if ((v4 & 0x2000000) != 0)
    {
      LOBYTE(v3) = HIBYTE(v4) & 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setNoWrap:(BOOL)wrap
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
  }

  if (wrap)
  {
    v4 = 50331648;
  }

  else
  {
    v4 = 0x2000000;
  }

  *(&self->super.isa + v3) = v4 | *(&self->super.isa + v3) & 0xFCFFFFFF;
}

- (BOOL)isNoWrapOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 1) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)deleted
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 163) & 4) != 0)
  {
    v3 = 300;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 163) & 4) == 0)
    {
      return 0;
    }

    v3 = 132;
  }

  return *(&self->super.isa + v3);
}

- (void)setDeleted:(int)deleted
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 300;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 132;
  }

  *(&self->super.isa + v4) = deleted;
  *(&self->super.isa + v3) |= 0x4000000u;
}

- (BOOL)isDeletedOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 2) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)edited
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 163) & 8) != 0)
  {
    v3 = 304;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 163) & 8) == 0)
    {
      return 0;
    }

    v3 = 136;
  }

  return *(&self->super.isa + v3);
}

- (void)setEdited:(int)edited
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 304;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 136;
  }

  *(&self->super.isa + v4) = edited;
  *(&self->super.isa + v3) |= 0x8000000u;
}

- (BOOL)isEditedOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 3) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 8) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 3) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (int)formattingChanged
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 163) & 0x10) != 0)
  {
    v3 = 308;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 163) & 0x10) == 0)
    {
      return 0;
    }

    v3 = 140;
  }

  return *(&self->super.isa + v3);
}

- (void)setFormattingChanged:(int)changed
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 308;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 140;
  }

  *(&self->super.isa + v4) = changed;
  *(&self->super.isa + v3) |= 0x10000000u;
}

- (BOOL)isFormattingChangedOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 4) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 0x10) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 4) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)indexToAuthorIDOfDeletion
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 163) & 0x20) != 0)
  {
    v3 = 312;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 163) & 0x20) == 0)
    {
      return 0;
    }

    v3 = 144;
  }

  return *(&self->super.isa + v3);
}

- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)deletion
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 312;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 144;
  }

  *(&self->super.isa + v4) = deletion;
  *(&self->super.isa + v3) |= 0x20000000u;
}

- (BOOL)isIndexToAuthorIDOfDeletionOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 5) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 0x20) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 5) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)indexToAuthorIDOfEdit
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 163) & 0x40) != 0)
  {
    v3 = 314;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 163) & 0x40) == 0)
    {
      return 0;
    }

    v3 = 146;
  }

  return *(&self->super.isa + v3);
}

- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)edit
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 314;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 146;
  }

  *(&self->super.isa + v4) = edit;
  *(&self->super.isa + v3) |= 0x40000000u;
}

- (BOOL)isIndexToAuthorIDOfEditOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    return (*(&self->super.isa + v3 + 3) >> 6) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 163) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 163) & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 176;
    return (*(&self->super.isa + v3 + 3) >> 6) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (unsigned)indexToAuthorIDOfFormattingChange
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 40) & 0x80000000) != 0)
  {
    v3 = 316;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 40) & 0x80000000) == 0)
    {
      return 0;
    }

    v3 = 148;
  }

  return *(&self->super.isa + v3);
}

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)change
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 344;
    v4 = 316;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      return;
    }

    v3 = 176;
    v4 = 148;
  }

  *(&self->super.isa + v4) = change;
  *(&self->super.isa + v3) |= 0x80000000;
}

- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v2 = 344;
    return *(&self->super.isa + v2) >> 31;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 40) & 0x80000000) != 0)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    if ((*(self + 12) & 1) != 0 || (*(&self->mOriginalProperties + 40) & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  else if (*(self + 12))
  {
LABEL_10:
    v2 = 176;
    return *(&self->super.isa + v2) >> 31;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (id)deletionDate
{
  if (*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 164))
  {
    v3 = 320;
    goto LABEL_8;
  }

  if ((*(self + 12) & 4) != 0 || (*(self + 12)) && (*(&self->mOriginalProperties + 164))
  {
    v3 = 152;
LABEL_8:
    v4 = *(&self->super.isa + v3);

    return v4;
  }

  v4 = 0;

  return v4;
}

- (void)setDeletionDate:(id)date
{
  dateCopy = date;
  if ((*(self + 12) & 2) != 0)
  {
    v8 = dateCopy;
    v6 = 348;
    v7 = 320;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = dateCopy;
    v6 = 180;
    v7 = 152;
  }

  objc_storeStrong((&self->super.isa + v7), date);
  *(&self->super.isa + v6) |= 1u;
  dateCopy = v8;
LABEL_6:
}

- (BOOL)isDeletionDateOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 348;
LABEL_11:
    v2 = *(&self->super.isa + v3);
    return v2 & 1;
  }

  if ((*(self + 12) & 4) == 0)
  {
    if ((*(self + 12) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(&self->mTrackedProperties + 164))
  {
    v2 = 1;
    return v2 & 1;
  }

  if (*(self + 12) & 1) != 0 || (*(&self->mOriginalProperties + 164))
  {
LABEL_10:
    v3 = 180;
    goto LABEL_11;
  }

LABEL_4:
  v2 = 0;
  return v2 & 1;
}

- (id)editDate
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 164) & 2) != 0)
  {
    v5 = 328;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 164) & 2) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 160;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (void)setEditDate:(id)date
{
  dateCopy = date;
  if ((*(self + 12) & 2) != 0)
  {
    v8 = dateCopy;
    v6 = 348;
    v7 = 328;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = dateCopy;
    v6 = 180;
    v7 = 160;
  }

  objc_storeStrong((&self->super.isa + v7), date);
  *(&self->super.isa + v6) |= 2u;
  dateCopy = v8;
LABEL_6:
}

- (BOOL)isEditDateOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 348;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 164) & 2) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 164) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 180;
    return (*(&self->super.isa + v3) >> 1) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)formattingChangeDate
{
  if ((*(self + 12) & 6) != 0 && (*(&self->mTrackedProperties + 164) & 4) != 0)
  {
    v5 = 336;
  }

  else
  {
    if ((*(self + 12) & 4) == 0 && (*(self + 12) & 1) == 0 || (*(&self->mOriginalProperties + 164) & 4) == 0)
    {
      v3 = 0;

      return v3;
    }

    v5 = 168;
  }

  v3 = *(&self->super.isa + v5);

  return v3;
}

- (void)setFormattingChangeDate:(id)date
{
  dateCopy = date;
  if ((*(self + 12) & 2) != 0)
  {
    v8 = dateCopy;
    v6 = 348;
    v7 = 336;
  }

  else
  {
    if ((*(self + 12) & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = dateCopy;
    v6 = 180;
    v7 = 168;
  }

  objc_storeStrong((&self->super.isa + v7), date);
  *(&self->super.isa + v6) |= 4u;
  dateCopy = v8;
LABEL_6:
}

- (BOOL)isFormattingChangeDateOverridden
{
  if ((*(self + 12) & 2) != 0)
  {
    v3 = 348;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

  if ((*(self + 12) & 4) != 0)
  {
    if ((*(&self->mTrackedProperties + 164) & 4) != 0)
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if ((*(self + 12) & 1) == 0 && (*(&self->mOriginalProperties + 164) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(self + 12))
  {
LABEL_9:
    v3 = 180;
    return (*(&self->super.isa + v3) >> 2) & 1;
  }

LABEL_4:
  LOBYTE(v2) = 0;
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDTableCellProperties allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->mWidth = self->mWidth;
    v4->mPosition = self->mPosition;
    v6 = *(v4 + 12) & 0xFE | *(self + 12) & 1;
    *(v4 + 12) = v6;
    v7 = v6 & 0xFFFFFFFD | (2 * ((*(self + 12) >> 1) & 1));
    *(v4 + 12) = v7;
    *(v4 + 12) = v7 & 0xFB | *(self + 12) & 4;
    WDTableCellPropertiesValues::operator=(&v4->mOriginalProperties, &self->mOriginalProperties);
    WDTableCellPropertiesValues::operator=(&v5->mTrackedProperties, &self->mTrackedProperties);
    v8 = v5;
  }

  return v5;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (void)addPropertiesValues:(id *)values to:(id *)to
{
  v6 = *(to + 40);
  if (v6 & 1) == 0 && (*(values + 40))
  {
    *(to + 40) = v6 | 1;
    v7 = [values->var0 copy];
    var0 = to->var0;
    to->var0 = v7;

    v6 = *(to + 40);
  }

  if ((v6 & 2) == 0 && (*(values + 160) & 2) != 0)
  {
    *(to + 40) = v6 | 2;
    objc_storeStrong(&to->var1, values->var1);
    v6 = *(to + 40);
  }

  if ((v6 & 4) == 0 && (*(values + 160) & 4) != 0)
  {
    *(to + 40) = v6 | 4;
    objc_storeStrong(&to->var2, values->var2);
    v6 = *(to + 40);
  }

  if ((v6 & 8) == 0 && (*(values + 160) & 8) != 0)
  {
    *(to + 40) = v6 | 8;
    objc_storeStrong(&to->var3, values->var3);
    v6 = *(to + 40);
  }

  if ((v6 & 0x10) == 0 && (*(values + 160) & 0x10) != 0)
  {
    *(to + 40) = v6 | 0x10;
    objc_storeStrong(&to->var4, values->var4);
    v6 = *(to + 40);
  }

  if ((v6 & 0x20) == 0 && (*(values + 160) & 0x20) != 0)
  {
    *(to + 40) = v6 | 0x20;
    objc_storeStrong(&to->var5, values->var5);
    v6 = *(to + 40);
  }

  if ((v6 & 0x40) == 0 && (*(values + 160) & 0x40) != 0)
  {
    *(to + 40) = v6 | 0x40;
    objc_storeStrong(&to->var6, values->var6);
    v6 = *(to + 40);
  }

  if ((v6 & 0x80) == 0 && (*(values + 160) & 0x80) != 0)
  {
    *(to + 40) = v6 | 0x80;
    objc_storeStrong(&to->var7, values->var7);
    v6 = *(to + 40);
  }

  if (v6 & 0x100) == 0 && (*(values + 161))
  {
    *(to + 40) = v6 | 0x100;
    objc_storeStrong(&to->var8, values->var8);
    v6 = *(to + 40);
  }

  if ((v6 & 0x200) == 0 && (*(values + 161) & 2) != 0)
  {
    v6 |= 0x200u;
    *(to + 40) = v6;
    to->var9 = values->var9;
  }

  if ((v6 & 0x400) == 0 && (*(values + 161) & 4) != 0)
  {
    v6 |= 0x400u;
    *(to + 40) = v6;
    to->var10 = values->var10;
  }

  if ((v6 & 0x800) == 0 && (*(values + 161) & 8) != 0)
  {
    v6 |= 0x800u;
    *(to + 40) = v6;
    to->var11 = values->var11;
  }

  if ((v6 & 0x1000) == 0 && (*(values + 161) & 0x10) != 0)
  {
    v6 |= 0x1000u;
    *(to + 40) = v6;
    to->var12 = values->var12;
  }

  if ((v6 & 0x2000) == 0 && (*(values + 161) & 0x20) != 0)
  {
    v6 |= 0x2000u;
    *(to + 40) = v6;
    to->var13 = values->var13;
  }

  if ((v6 & 0x4000) == 0 && (*(values + 161) & 0x40) != 0)
  {
    v6 |= 0x4000u;
    *(to + 40) = v6;
    to->var14 = values->var14;
  }

  if ((v6 & 0x8000) == 0 && (*(values + 161) & 0x80) != 0)
  {
    v6 |= 0x8000u;
    *(to + 40) = v6;
    to->var15 = values->var15;
  }

  if (v6 & 0x10000) == 0 && (*(values + 162))
  {
    v6 |= 0x10000u;
    *(to + 40) = v6;
    to->var16 = values->var16;
  }

  if ((v6 & 0x20000) == 0 && (*(values + 162) & 2) != 0)
  {
    v6 |= 0x20000u;
    *(to + 40) = v6;
    to->var17 = values->var17;
  }

  if ((v6 & 0x40000) == 0 && (*(values + 162) & 4) != 0)
  {
    v6 |= 0x40000u;
    *(to + 40) = v6;
    to->var18 = values->var18;
  }

  if ((v6 & 0x80000) == 0 && (*(values + 162) & 8) != 0)
  {
    v6 |= 0x80000u;
    *(to + 40) = v6;
    to->var19 = values->var19;
  }

  if ((v6 & 0x200000) == 0 && (*(values + 162) & 0x20) != 0)
  {
    v9 = v6 | 0x200000;
    *(to + 40) = v9;
    v6 = v9 & 0xFFEFFFFF | (((*(values + 40) >> 20) & 1) << 20);
    *(to + 40) = v6;
  }

  if ((v6 & 0x800000) == 0 && (*(values + 162) & 0x80) != 0)
  {
    v10 = v6 | 0x800000;
    *(to + 40) = v10;
    v6 = v10 & 0xFFBFFFFF | (((*(values + 40) >> 22) & 1) << 22);
    *(to + 40) = v6;
  }

  if ((v6 & 0x2000000) == 0 && (*(values + 163) & 2) != 0)
  {
    v11 = v6 | 0x2000000;
    *(to + 40) = v11;
    v6 = v11 & 0xFEFFFFFF | ((HIBYTE(*(values + 40)) & 1) << 24);
    *(to + 40) = v6;
  }

  if ((v6 & 0x20000000) == 0 && (*(values + 163) & 0x20) != 0)
  {
    v6 |= 0x20000000u;
    *(to + 40) = v6;
    to->var23 = values->var23;
  }

  if ((v6 & 0x40000000) == 0 && (*(values + 163) & 0x40) != 0)
  {
    v6 |= 0x40000000u;
    *(to + 40) = v6;
    to->var24 = values->var24;
  }

  if ((v6 & 0x80000000) == 0 && (*(values + 40) & 0x80000000) != 0)
  {
    *(to + 40) = v6 | 0x80000000;
    to->var25 = values->var25;
  }

  v12 = *(to + 164);
  if (v12 & 1) == 0 && (*(values + 164))
  {
    *(to + 164) = v12 | 1;
    objc_storeStrong(&to->var26, values->var26);
    v12 = *(to + 164);
  }

  if ((v12 & 2) == 0 && (*(values + 164) & 2) != 0)
  {
    *(to + 164) = v12 | 2;
    objc_storeStrong(&to->var27, values->var27);
    v12 = *(to + 164);
  }

  if ((v12 & 4) == 0 && (*(values + 164) & 4) != 0)
  {
    *(to + 164) = v12 | 4;
    var28 = values->var28;

    objc_storeStrong(&to->var28, var28);
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTableCellProperties;
  v2 = [(WDTableCellProperties *)&v4 description];

  return v2;
}

@end