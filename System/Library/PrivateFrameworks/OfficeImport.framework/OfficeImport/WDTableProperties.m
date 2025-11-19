@interface WDTableProperties
- (BOOL)biDirectional;
- (BOOL)isAlignmentOverridden;
- (BOOL)isBaseStyleOverridden;
- (BOOL)isBiDirectionalOverridden;
- (BOOL)isBottomBorderOverridden;
- (BOOL)isBottomDistanceFromTextOverridden;
- (BOOL)isCellSpacingOverridden;
- (BOOL)isCellSpacingTypeOverridden;
- (BOOL)isDeletedOverridden;
- (BOOL)isDeletionDateOverridden;
- (BOOL)isEditDateOverridden;
- (BOOL)isEditedOverridden;
- (BOOL)isFormattingChangeDateOverridden;
- (BOOL)isFormattingChangedOverridden;
- (BOOL)isHorizontalAnchorOverridden;
- (BOOL)isHorizontalPositionOverridden;
- (BOOL)isIndentOverridden;
- (BOOL)isIndentTypeOverridden;
- (BOOL)isIndexToAuthorIDOfDeletionOverridden;
- (BOOL)isIndexToAuthorIDOfEditOverridden;
- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden;
- (BOOL)isInsideHorizontalBorderOverridden;
- (BOOL)isInsideVerticalBorderOverridden;
- (BOOL)isJustificationOverridden;
- (BOOL)isLeftBorderOverridden;
- (BOOL)isLeftDistanceFromTextOverridden;
- (BOOL)isLookOverridden;
- (BOOL)isRightBorderOverridden;
- (BOOL)isRightDistanceFromTextOverridden;
- (BOOL)isShadingOverridden;
- (BOOL)isTableFloating;
- (BOOL)isTopBorderOverridden;
- (BOOL)isTopDistanceFromTextOverridden;
- (BOOL)isVerticalAnchorOverridden;
- (BOOL)isVerticalPositionOverridden;
- (BOOL)isWidthOverridden;
- (BOOL)isWidthTypeOverridden;
- (WDDocument)document;
- (WDTableProperties)initWithDocument:(id)a3;
- (id)baseStyle;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deletionDate;
- (id)description;
- (id)editDate;
- (id)formattingChangeDate;
- (id)insideHorizontalBorder;
- (id)insideVerticalBorder;
- (id)leftBorder;
- (id)mutableBottomBorder;
- (id)mutableInsideHorizontalBorder;
- (id)mutableInsideVerticalBorder;
- (id)mutableLeftBorder;
- (id)mutableRightBorder;
- (id)mutableShading;
- (id)mutableTopBorder;
- (id)rightBorder;
- (id)shading;
- (id)topBorder;
- (int)alignment;
- (int)cellSpacingType;
- (int)deleted;
- (int)edited;
- (int)formattingChanged;
- (int)horizontalAnchor;
- (int)indentType;
- (int)justification;
- (int)resolveMode;
- (int)verticalAnchor;
- (int)widthType;
- (int64_t)bottomDistanceFromText;
- (int64_t)horizontalPosition;
- (int64_t)leftDistanceFromText;
- (int64_t)rightDistanceFromText;
- (int64_t)topDistanceFromText;
- (int64_t)verticalPosition;
- (int64_t)width;
- (signed)cellSpacing;
- (signed)indent;
- (unsigned)indexToAuthorIDOfDeletion;
- (unsigned)indexToAuthorIDOfEdit;
- (unsigned)indexToAuthorIDOfFormattingChange;
- (unsigned)look;
- (void)clearBottomBorder;
- (void)clearInsideHorizontalBorder;
- (void)clearInsideVerticalBorder;
- (void)clearLeftBorder;
- (void)clearRightBorder;
- (void)clearShading;
- (void)clearTopBorder;
- (void)moveOrignalToTracked;
- (void)setAlignment:(int)a3;
- (void)setBaseStyle:(id)a3;
- (void)setBiDirectional:(BOOL)a3;
- (void)setBottomDistanceFromText:(int64_t)a3;
- (void)setCellSpacing:(signed __int16)a3;
- (void)setCellSpacingType:(int)a3;
- (void)setDeleted:(int)a3;
- (void)setDeletionDate:(id)a3;
- (void)setEditDate:(id)a3;
- (void)setEdited:(int)a3;
- (void)setFormattingChangeDate:(id)a3;
- (void)setFormattingChanged:(int)a3;
- (void)setHorizontalAnchor:(int)a3;
- (void)setHorizontalPosition:(int64_t)a3;
- (void)setIndent:(signed __int16)a3;
- (void)setIndentType:(int)a3;
- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)a3;
- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)a3;
- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3;
- (void)setJustification:(int)a3;
- (void)setLeftDistanceFromText:(int64_t)a3;
- (void)setLook:(unsigned __int16)a3;
- (void)setResolveMode:(int)a3;
- (void)setRightDistanceFromText:(int64_t)a3;
- (void)setTopDistanceFromText:(int64_t)a3;
- (void)setVerticalAnchor:(int)a3;
- (void)setVerticalPosition:(int64_t)a3;
- (void)setWidth:(int64_t)a3;
- (void)setWidthType:(int)a3;
@end

@implementation WDTableProperties

- (id)mutableTopBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties topBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setTopBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties topBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties topBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setTopBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setTopBorder:v7];
LABEL_10:

  return v7;
}

- (id)mutableLeftBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties leftBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setLeftBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties leftBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties leftBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setLeftBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setLeftBorder:v7];
LABEL_10:

  return v7;
}

- (id)mutableBottomBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties bottomBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setBottomBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties bottomBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties bottomBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setBottomBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setBottomBorder:v7];
LABEL_10:

  return v7;
}

- (id)mutableRightBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties rightBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setRightBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties rightBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties rightBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setRightBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setRightBorder:v7];
LABEL_10:

  return v7;
}

- (id)mutableInsideHorizontalBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties insideHorizontalBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setInsideHorizontalBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties insideHorizontalBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties insideHorizontalBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setInsideHorizontalBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setInsideHorizontalBorder:v7];
LABEL_10:

  return v7;
}

- (id)mutableInsideVerticalBorder
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties insideVerticalBorder];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setInsideVerticalBorderOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties insideVerticalBorder];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties insideVerticalBorder];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setInsideVerticalBorderOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDBorder);
  [(WDTablePropertiesValues *)mOriginalProperties setInsideVerticalBorder:v7];
LABEL_10:

  return v7;
}

- (void)clearShading
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties shadingOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties shadingOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setShadingOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setShading:0];
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (BOOL)isBaseStyleOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties baseStyleOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties baseStyleOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 baseStyleOverridden];
}

- (BOOL)isTableFloating
{
  if ([(WDTableProperties *)self isHorizontalAnchorOverridden]&& [(WDTableProperties *)self horizontalAnchor]|| [(WDTableProperties *)self isVerticalAnchorOverridden]&& [(WDTableProperties *)self verticalAnchor]!= 2 || [(WDTableProperties *)self isHorizontalPositionOverridden]&& [(WDTableProperties *)self horizontalPosition])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(WDTableProperties *)self isVerticalPositionOverridden];
    if (v3)
    {
      LOBYTE(v3) = [(WDTableProperties *)self verticalPosition]!= 0;
    }
  }

  return v3;
}

- (BOOL)isHorizontalAnchorOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties horizontalAnchorOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties horizontalAnchorOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 horizontalAnchorOverridden];
}

- (BOOL)isVerticalAnchorOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties verticalAnchorOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties verticalAnchorOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 verticalAnchorOverridden];
}

- (BOOL)isHorizontalPositionOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties horizontalPositionOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties horizontalPositionOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 horizontalPositionOverridden];
}

- (BOOL)isVerticalPositionOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties verticalPositionOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties verticalPositionOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 verticalPositionOverridden];
}

- (BOOL)isTopBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties topBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties topBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 topBorderOverridden];
}

- (id)topBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties topBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties topBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties topBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isLeftBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties leftBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties leftBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 leftBorderOverridden];
}

- (id)leftBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties leftBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties leftBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties leftBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isBottomBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties bottomBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties bottomBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 bottomBorderOverridden];
}

- (id)bottomBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties bottomBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties bottomBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties bottomBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isRightBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties rightBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties rightBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 rightBorderOverridden];
}

- (id)rightBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties rightBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties rightBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties rightBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isInsideHorizontalBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideHorizontalBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties insideHorizontalBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 insideHorizontalBorderOverridden];
}

- (id)insideHorizontalBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideHorizontalBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties insideHorizontalBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties insideHorizontalBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isInsideVerticalBorderOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideVerticalBorderOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties insideVerticalBorderOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 insideVerticalBorderOverridden];
}

- (id)insideVerticalBorder
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideVerticalBorderOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties insideVerticalBorder];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties insideVerticalBorderOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (int64_t)horizontalPosition
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties horizontalPositionOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties horizontalPositionOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 horizontalPosition];
}

- (int64_t)leftDistanceFromText
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties leftDistanceFromTextOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties leftDistanceFromTextOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 leftDistanceFromText];
}

- (id)baseStyle
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties baseStyleOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties baseStyle];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties baseStyleOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (int)horizontalAnchor
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties horizontalAnchorOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 2;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties horizontalAnchorOverridden])
  {
    return 2;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 horizontalAnchor];
}

- (int64_t)verticalPosition
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties verticalPositionOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties verticalPositionOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 verticalPosition];
}

- (int)verticalAnchor
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties verticalAnchorOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 1;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties verticalAnchorOverridden])
  {
    return 1;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 verticalAnchor];
}

- (id)mutableShading
{
  if ((*(self + 8) & 2) != 0)
  {
    v6 = [(WDTablePropertiesValues *)self->mTrackedProperties shading];

    mTrackedProperties = self->mTrackedProperties;
    if (!v6)
    {
      [(WDTablePropertiesValues *)mTrackedProperties setShadingOverridden:1];
      mOriginalProperties = self->mTrackedProperties;
      goto LABEL_9;
    }

LABEL_6:
    v7 = [(WDTablePropertiesValues *)mTrackedProperties shading];
    goto LABEL_10;
  }

  if ((*(self + 8) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties shading];

  mTrackedProperties = self->mOriginalProperties;
  if (v3)
  {
    goto LABEL_6;
  }

  [(WDTablePropertiesValues *)mTrackedProperties setShadingOverridden:1];
  mOriginalProperties = self->mOriginalProperties;
LABEL_9:
  v7 = objc_alloc_init(WDShading);
  [(WDTablePropertiesValues *)mOriginalProperties setShading:v7];
LABEL_10:

  return v7;
}

- (WDTableProperties)initWithDocument:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WDTableProperties;
  v5 = [(WDTableProperties *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    *(v6 + 8) = *(v6 + 8) & 0xF8 | 1;
    v7 = objc_alloc_init(WDTablePropertiesValues);
    mOriginalProperties = v6->mOriginalProperties;
    v6->mOriginalProperties = v7;

    v9 = objc_alloc_init(WDTablePropertiesValues);
    mTrackedProperties = v6->mTrackedProperties;
    v6->mTrackedProperties = v9;
  }

  return v6;
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

- (void)setResolveMode:(int)a3
{
  v3 = (2 * (a3 == 1)) | (4 * (a3 == 2));
  if (!a3)
  {
    ++v3;
  }

  *(self + 8) = v3 | *(self + 8) & 0xF8;
}

- (void)setBaseStyle:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*(self + 8) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    [(WDTablePropertiesValues *)mTrackedProperties setBaseStyle:v4];
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      goto LABEL_6;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    [(WDTablePropertiesValues *)mOriginalProperties setBaseStyle:v4];
  }

  [(WDTablePropertiesValues *)*p_mTrackedProperties setBaseStyleOverridden:1];
LABEL_6:
}

- (unsigned)look
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties lookOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties lookOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 look];
}

- (void)setLook:(unsigned __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setLook:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setLookOverridden:1];
}

- (BOOL)isLookOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties lookOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties lookOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 lookOverridden];
}

- (id)shading
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties shadingOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties shading];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties shadingOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)isShadingOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties shadingOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties shadingOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 shadingOverridden];
}

- (void)clearTopBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties topBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties topBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setTopBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setTopBorder:0];
}

- (void)clearLeftBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties leftBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties leftBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setLeftBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setLeftBorder:0];
}

- (void)clearBottomBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties bottomBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties bottomBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setBottomBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setBottomBorder:0];
}

- (void)clearRightBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties rightBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties rightBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setRightBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setRightBorder:0];
}

- (void)clearInsideHorizontalBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideHorizontalBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties insideHorizontalBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setInsideHorizontalBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setInsideHorizontalBorder:0];
}

- (void)clearInsideVerticalBorder
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties insideVerticalBorderOverridden])
    {
      goto LABEL_7;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0)
  {
    return;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties insideVerticalBorderOverridden])
  {
    return;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_7:
  [(WDTablePropertiesValues *)*p_mTrackedProperties setInsideVerticalBorderOverridden:0];
  v7 = *p_mTrackedProperties;

  [(WDTablePropertiesValues *)v7 setInsideVerticalBorder:0];
}

- (int)justification
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties justificationOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties justificationOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 justification];
}

- (void)setJustification:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setJustification:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setJustificationOverridden:1];
}

- (BOOL)isJustificationOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties justificationOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties justificationOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 justificationOverridden];
}

- (int)alignment
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties alignmentOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties alignmentOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 alignment];
}

- (void)setAlignment:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setAlignment:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setAlignmentOverridden:1];
}

- (BOOL)isAlignmentOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties alignmentOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties alignmentOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 alignmentOverridden];
}

- (int64_t)width
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties widthOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties widthOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 width];
}

- (void)setWidth:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setWidth:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setWidthOverridden:1];
}

- (BOOL)isWidthOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties widthOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties widthOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 widthOverridden];
}

- (int)widthType
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties widthTypeOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 1;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties widthTypeOverridden])
  {
    return 1;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 widthType];
}

- (void)setWidthType:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setWidthType:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setWidthTypeOverridden:1];
}

- (BOOL)isWidthTypeOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties widthTypeOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties widthTypeOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 widthTypeOverridden];
}

- (signed)indent
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indentOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties indentOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 indent];
}

- (void)setIndent:(signed __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setIndent:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setIndentOverridden:1];
}

- (BOOL)isIndentOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indentOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties indentOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 indentOverridden];
}

- (int)indentType
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indentTypeOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 1;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties indentTypeOverridden])
  {
    return 1;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 indentType];
}

- (void)setIndentType:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setIndentType:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setIndentTypeOverridden:1];
}

- (BOOL)isIndentTypeOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indentTypeOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties indentTypeOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 indentTypeOverridden];
}

- (signed)cellSpacing
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties cellSpacingOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties cellSpacingOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 cellSpacing];
}

- (void)setCellSpacing:(signed __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setCellSpacing:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setCellSpacingOverridden:1];
}

- (BOOL)isCellSpacingOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties cellSpacingOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties cellSpacingOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 cellSpacingOverridden];
}

- (int)cellSpacingType
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties cellSpacingTypeOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 1;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties cellSpacingTypeOverridden])
  {
    return 1;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 cellSpacingType];
}

- (void)setCellSpacingType:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setCellSpacingType:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setCellSpacingTypeOverridden:1];
}

- (BOOL)isCellSpacingTypeOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties cellSpacingTypeOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties cellSpacingTypeOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 cellSpacingTypeOverridden];
}

- (void)setVerticalAnchor:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setVerticalAnchor:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setVerticalAnchorOverridden:1];
}

- (void)setHorizontalAnchor:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setHorizontalAnchor:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setHorizontalAnchorOverridden:1];
}

- (void)setVerticalPosition:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setVerticalPosition:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setVerticalPositionOverridden:1];
}

- (void)setHorizontalPosition:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setHorizontalPosition:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setHorizontalPositionOverridden:1];
}

- (void)setLeftDistanceFromText:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setLeftDistanceFromText:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setLeftDistanceFromTextOverridden:1];
}

- (BOOL)isLeftDistanceFromTextOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties leftDistanceFromTextOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties leftDistanceFromTextOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 leftDistanceFromTextOverridden];
}

- (int64_t)topDistanceFromText
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties topDistanceFromTextOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties topDistanceFromTextOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 topDistanceFromText];
}

- (void)setTopDistanceFromText:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setTopDistanceFromText:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setTopDistanceFromTextOverridden:1];
}

- (BOOL)isTopDistanceFromTextOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties topDistanceFromTextOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties topDistanceFromTextOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 topDistanceFromTextOverridden];
}

- (int64_t)rightDistanceFromText
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties rightDistanceFromTextOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties rightDistanceFromTextOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 rightDistanceFromText];
}

- (void)setRightDistanceFromText:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setRightDistanceFromText:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setRightDistanceFromTextOverridden:1];
}

- (BOOL)isRightDistanceFromTextOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties rightDistanceFromTextOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties rightDistanceFromTextOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 rightDistanceFromTextOverridden];
}

- (int64_t)bottomDistanceFromText
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties bottomDistanceFromTextOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties bottomDistanceFromTextOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 bottomDistanceFromText];
}

- (void)setBottomDistanceFromText:(int64_t)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setBottomDistanceFromText:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setBottomDistanceFromTextOverridden:1];
}

- (BOOL)isBottomDistanceFromTextOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties bottomDistanceFromTextOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties bottomDistanceFromTextOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 bottomDistanceFromTextOverridden];
}

- (int)deleted
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties deletedOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties deletedOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 deleted];
}

- (void)setDeleted:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setDeleted:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setDeletedOverridden:1];
}

- (BOOL)isDeletedOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties deletedOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties deletedOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 deletedOverridden];
}

- (int)edited
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties editedOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties editedOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 edited];
}

- (void)setEdited:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setEdited:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setEditedOverridden:1];
}

- (BOOL)isEditedOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties editedOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties editedOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 editedOverridden];
}

- (int)formattingChanged
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties formattingChangedOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties formattingChangedOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 formattingChanged];
}

- (void)setFormattingChanged:(int)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setFormattingChanged:*&a3];
  v5 = *(&self->super.isa + v4);

  [v5 setFormattingChangedOverridden:1];
}

- (BOOL)isFormattingChangedOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties formattingChangedOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties formattingChangedOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 formattingChangedOverridden];
}

- (BOOL)biDirectional
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties biDirectionalOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties biDirectionalOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 biDirectional];
}

- (void)setBiDirectional:(BOOL)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setBiDirectional:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setBiDirectionalOverridden:1];
}

- (BOOL)isBiDirectionalOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties biDirectionalOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties biDirectionalOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 biDirectionalOverridden];
}

- (unsigned)indexToAuthorIDOfDeletion
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfDeletionOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties indexToAuthorIDOfDeletionOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 indexToAuthorIDOfDeletion];
}

- (void)setIndexToAuthorIDOfDeletion:(unsigned __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setIndexToAuthorIDOfDeletion:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setIndexToAuthorIDOfDeletionOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfDeletionOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfDeletionOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties indexToAuthorIDOfDeletionOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 indexToAuthorIDOfDeletionOverridden];
}

- (unsigned)indexToAuthorIDOfEdit
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfEditOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties indexToAuthorIDOfEditOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 indexToAuthorIDOfEdit];
}

- (void)setIndexToAuthorIDOfEdit:(unsigned __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setIndexToAuthorIDOfEdit:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setIndexToAuthorIDOfEditOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfEditOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfEditOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties indexToAuthorIDOfEditOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 indexToAuthorIDOfEditOverridden];
}

- (unsigned)indexToAuthorIDOfFormattingChange
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden])
    {
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 4) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  mOriginalProperties = self->mOriginalProperties;
  p_mOriginalProperties = &self->mOriginalProperties;
  if (![(WDTablePropertiesValues *)mOriginalProperties indexToAuthorIDOfFormattingChangeOverridden])
  {
    return 0;
  }

  p_mTrackedProperties = p_mOriginalProperties;
LABEL_8:
  v7 = *p_mTrackedProperties;

  return [(WDTablePropertiesValues *)v7 indexToAuthorIDOfFormattingChange];
}

- (void)setIndexToAuthorIDOfFormattingChange:(unsigned __int16)a3
{
  if ((*(self + 8) & 2) != 0)
  {
    v4 = 24;
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      return;
    }

    v4 = 16;
  }

  [*(&self->super.isa + v4) setIndexToAuthorIDOfFormattingChange:a3];
  v5 = *(&self->super.isa + v4);

  [v5 setIndexToAuthorIDOfFormattingChangeOverridden:1];
}

- (BOOL)isIndexToAuthorIDOfFormattingChangeOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties indexToAuthorIDOfFormattingChangeOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties indexToAuthorIDOfFormattingChangeOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 indexToAuthorIDOfFormattingChangeOverridden];
}

- (id)deletionDate
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties deletionDateOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties deletionDate];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties deletionDateOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)setDeletionDate:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*(self + 8) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    [(WDTablePropertiesValues *)mTrackedProperties setDeletionDate:v4];
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      goto LABEL_6;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    [(WDTablePropertiesValues *)mOriginalProperties setDeletionDate:v4];
  }

  [(WDTablePropertiesValues *)*p_mTrackedProperties setDeletionDateOverridden:1];
LABEL_6:
}

- (BOOL)isDeletionDateOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties deletionDateOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties deletionDateOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 deletionDateOverridden];
}

- (id)editDate
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties editDateOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties editDate];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties editDateOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)setEditDate:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*(self + 8) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    [(WDTablePropertiesValues *)mTrackedProperties setEditDate:v4];
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      goto LABEL_6;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    [(WDTablePropertiesValues *)mOriginalProperties setEditDate:v4];
  }

  [(WDTablePropertiesValues *)*p_mTrackedProperties setEditDateOverridden:1];
LABEL_6:
}

- (BOOL)isEditDateOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties editDateOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties editDateOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 editDateOverridden];
}

- (id)formattingChangeDate
{
  v3 = *(self + 8);
  if ((v3 & 6) != 0)
  {
    p_mTrackedProperties = &self->mTrackedProperties;
    if ([(WDTablePropertiesValues *)self->mTrackedProperties formattingChangeDateOverridden])
    {
LABEL_8:
      v7 = [(WDTablePropertiesValues *)*p_mTrackedProperties formattingChangeDate];
      goto LABEL_10;
    }

    v3 = *(self + 8);
  }

  if (v3 & 4) != 0 || (v3)
  {
    mOriginalProperties = self->mOriginalProperties;
    p_mOriginalProperties = &self->mOriginalProperties;
    if ([(WDTablePropertiesValues *)mOriginalProperties formattingChangeDateOverridden])
    {
      p_mTrackedProperties = p_mOriginalProperties;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)setFormattingChangeDate:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*(self + 8) & 2) != 0)
  {
    mTrackedProperties = self->mTrackedProperties;
    p_mTrackedProperties = &self->mTrackedProperties;
    [(WDTablePropertiesValues *)mTrackedProperties setFormattingChangeDate:v4];
  }

  else
  {
    if ((*(self + 8) & 1) == 0)
    {
      goto LABEL_6;
    }

    mOriginalProperties = self->mOriginalProperties;
    p_mTrackedProperties = &self->mOriginalProperties;
    [(WDTablePropertiesValues *)mOriginalProperties setFormattingChangeDate:v4];
  }

  [(WDTablePropertiesValues *)*p_mTrackedProperties setFormattingChangeDateOverridden:1];
LABEL_6:
}

- (BOOL)isFormattingChangeDateOverridden
{
  v3 = *(self + 8);
  if ((v3 & 2) != 0)
  {
    goto LABEL_4;
  }

  if ((*(self + 8) & 4) != 0)
  {
    if ([(WDTablePropertiesValues *)self->mTrackedProperties formattingChangeDateOverridden])
    {
LABEL_4:
      v4 = 24;
      goto LABEL_8;
    }

    v3 = *(self + 8);
  }

  if ((v3 & 1) == 0 && ((v3 & 4) == 0 || ![(WDTablePropertiesValues *)self->mOriginalProperties formattingChangeDateOverridden]))
  {
    return 0;
  }

  v4 = 16;
LABEL_8:
  v5 = *(&self->super.isa + v4);

  return [v5 formattingChangeDateOverridden];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WDTableProperties allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v6 = [(WDTableProperties *)v4 initWithDocument:WeakRetained];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDocument);
    objc_storeWeak((v6 + 32), v7);

    v8 = *(v6 + 8) & 0xFE | *(self + 8) & 1;
    *(v6 + 8) = v8;
    v9 = v8 & 0xFFFFFFFD | (2 * ((*(self + 8) >> 1) & 1));
    *(v6 + 8) = v9;
    *(v6 + 8) = v9 & 0xFB | *(self + 8) & 4;
    objc_storeStrong((v6 + 16), self->mOriginalProperties);
    objc_storeStrong((v6 + 24), self->mTrackedProperties);
    v10 = v6;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTableProperties;
  v2 = [(WDTableProperties *)&v4 description];

  return v2;
}

- (void)moveOrignalToTracked
{
  v3 = [(WDTablePropertiesValues *)self->mOriginalProperties copy];
  mTrackedProperties = self->mTrackedProperties;
  self->mTrackedProperties = v3;

  v5 = objc_alloc_init(WDTablePropertiesValues);
  mOriginalProperties = self->mOriginalProperties;
  self->mOriginalProperties = v5;
}

@end