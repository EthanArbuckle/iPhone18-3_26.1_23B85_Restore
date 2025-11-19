@interface WDTablePropertiesValues
- (WDStyle)baseStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlignmentOverridden:(BOOL)a3;
- (void)setBiDirectionalOverridden:(BOOL)a3;
- (void)setBottomBorderOverridden:(BOOL)a3;
- (void)setCellSpacingOverridden:(BOOL)a3;
- (void)setDeletedOverridden:(BOOL)a3;
- (void)setEditDateOverridden:(BOOL)a3;
- (void)setEditedOverridden:(BOOL)a3;
- (void)setFormattingChangeDateOverridden:(BOOL)a3;
- (void)setFormattingChangedOverridden:(BOOL)a3;
- (void)setHorizontalAnchorOverridden:(BOOL)a3;
- (void)setHorizontalPositionOverridden:(BOOL)a3;
- (void)setIndentOverridden:(BOOL)a3;
- (void)setIndentTypeOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3;
- (void)setInsideHorizontalBorderOverridden:(BOOL)a3;
- (void)setJustificationOverridden:(BOOL)a3;
- (void)setLeftBorderOverridden:(BOOL)a3;
- (void)setLeftDistanceFromTextOverridden:(BOOL)a3;
- (void)setLookOverridden:(BOOL)a3;
- (void)setRightBorderOverridden:(BOOL)a3;
- (void)setRightDistanceFromTextOverridden:(BOOL)a3;
- (void)setShadingOverridden:(BOOL)a3;
- (void)setTopBorderOverridden:(BOOL)a3;
- (void)setTopDistanceFromTextOverridden:(BOOL)a3;
- (void)setVerticalAnchorOverridden:(BOOL)a3;
- (void)setVerticalPositionOverridden:(BOOL)a3;
- (void)setWidthOverridden:(BOOL)a3;
- (void)setWidthTypeOverridden:(BOOL)a3;
@end

@implementation WDTablePropertiesValues

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDTablePropertiesValues allocWithZone:?]];
  if (v4)
  {
    v5 = [(WDTablePropertiesValues *)self baseStyle];
    [(WDTablePropertiesValues *)v4 setBaseStyle:v5];

    [(WDTablePropertiesValues *)v4 setLook:[(WDTablePropertiesValues *)self look]];
    v6 = [(WDTablePropertiesValues *)self shading];
    [(WDTablePropertiesValues *)v4 setShading:v6];

    v7 = [(WDTablePropertiesValues *)self topBorder];
    [(WDTablePropertiesValues *)v4 setTopBorder:v7];

    v8 = [(WDTablePropertiesValues *)self leftBorder];
    [(WDTablePropertiesValues *)v4 setLeftBorder:v8];

    v9 = [(WDTablePropertiesValues *)self bottomBorder];
    [(WDTablePropertiesValues *)v4 setBottomBorder:v9];

    v10 = [(WDTablePropertiesValues *)self rightBorder];
    [(WDTablePropertiesValues *)v4 setRightBorder:v10];

    v11 = [(WDTablePropertiesValues *)self insideHorizontalBorder];
    [(WDTablePropertiesValues *)v4 setInsideHorizontalBorder:v11];

    v12 = [(WDTablePropertiesValues *)self insideVerticalBorder];
    [(WDTablePropertiesValues *)v4 setInsideVerticalBorder:v12];

    [(WDTablePropertiesValues *)v4 setJustification:[(WDTablePropertiesValues *)self justification]];
    [(WDTablePropertiesValues *)v4 setAlignment:[(WDTablePropertiesValues *)self alignment]];
    [(WDTablePropertiesValues *)v4 setWidth:[(WDTablePropertiesValues *)self width]];
    [(WDTablePropertiesValues *)v4 setWidthType:[(WDTablePropertiesValues *)self widthType]];
    [(WDTablePropertiesValues *)v4 setIndent:[(WDTablePropertiesValues *)self indent]];
    [(WDTablePropertiesValues *)v4 setIndentType:[(WDTablePropertiesValues *)self indentType]];
    [(WDTablePropertiesValues *)v4 setCellSpacing:[(WDTablePropertiesValues *)self cellSpacing]];
    [(WDTablePropertiesValues *)v4 setCellSpacingType:[(WDTablePropertiesValues *)self cellSpacingType]];
    [(WDTablePropertiesValues *)v4 setVerticalAnchor:[(WDTablePropertiesValues *)self verticalAnchor]];
    [(WDTablePropertiesValues *)v4 setHorizontalAnchor:[(WDTablePropertiesValues *)self horizontalAnchor]];
    [(WDTablePropertiesValues *)v4 setVerticalPosition:[(WDTablePropertiesValues *)self verticalPosition]];
    [(WDTablePropertiesValues *)v4 setHorizontalPosition:[(WDTablePropertiesValues *)self horizontalPosition]];
    [(WDTablePropertiesValues *)v4 setLeftDistanceFromText:[(WDTablePropertiesValues *)self leftDistanceFromText]];
    [(WDTablePropertiesValues *)v4 setTopDistanceFromText:[(WDTablePropertiesValues *)self topDistanceFromText]];
    [(WDTablePropertiesValues *)v4 setRightDistanceFromText:[(WDTablePropertiesValues *)self rightDistanceFromText]];
    [(WDTablePropertiesValues *)v4 setBottomDistanceFromText:[(WDTablePropertiesValues *)self bottomDistanceFromText]];
    [(WDTablePropertiesValues *)v4 setDeleted:[(WDTablePropertiesValues *)self deleted]];
    [(WDTablePropertiesValues *)v4 setEdited:[(WDTablePropertiesValues *)self edited]];
    [(WDTablePropertiesValues *)v4 setFormattingChanged:[(WDTablePropertiesValues *)self formattingChanged]];
    [(WDTablePropertiesValues *)v4 setBiDirectional:[(WDTablePropertiesValues *)self biDirectional]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfDeletion:[(WDTablePropertiesValues *)self indexToAuthorIDOfDeletion]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfEdit:[(WDTablePropertiesValues *)self indexToAuthorIDOfEdit]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfFormattingChange:[(WDTablePropertiesValues *)self indexToAuthorIDOfFormattingChange]];
    v13 = [(WDTablePropertiesValues *)self deletionDate];
    [(WDTablePropertiesValues *)v4 setDeletionDate:v13];

    v14 = [(WDTablePropertiesValues *)self editDate];
    [(WDTablePropertiesValues *)v4 setEditDate:v14];

    v15 = [(WDTablePropertiesValues *)self formattingChangeDate];
    [(WDTablePropertiesValues *)v4 setFormattingChangeDate:v15];

    [(WDTablePropertiesValues *)v4 setBaseStyleOverridden:[(WDTablePropertiesValues *)self baseStyleOverridden]];
    [(WDTablePropertiesValues *)v4 setLookOverridden:[(WDTablePropertiesValues *)self lookOverridden]];
    [(WDTablePropertiesValues *)v4 setShadingOverridden:[(WDTablePropertiesValues *)self shadingOverridden]];
    [(WDTablePropertiesValues *)v4 setTopBorderOverridden:[(WDTablePropertiesValues *)self topBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setLeftBorderOverridden:[(WDTablePropertiesValues *)self leftBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setBottomBorderOverridden:[(WDTablePropertiesValues *)self bottomBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setRightBorderOverridden:[(WDTablePropertiesValues *)self rightBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setInsideHorizontalBorderOverridden:[(WDTablePropertiesValues *)self insideHorizontalBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setInsideVerticalBorderOverridden:[(WDTablePropertiesValues *)self insideVerticalBorderOverridden]];
    [(WDTablePropertiesValues *)v4 setJustificationOverridden:[(WDTablePropertiesValues *)self justificationOverridden]];
    [(WDTablePropertiesValues *)v4 setAlignmentOverridden:[(WDTablePropertiesValues *)self alignmentOverridden]];
    [(WDTablePropertiesValues *)v4 setWidthOverridden:[(WDTablePropertiesValues *)self widthOverridden]];
    [(WDTablePropertiesValues *)v4 setWidthTypeOverridden:[(WDTablePropertiesValues *)self widthTypeOverridden]];
    [(WDTablePropertiesValues *)v4 setIndentOverridden:[(WDTablePropertiesValues *)self indentOverridden]];
    [(WDTablePropertiesValues *)v4 setIndentTypeOverridden:[(WDTablePropertiesValues *)self indentTypeOverridden]];
    [(WDTablePropertiesValues *)v4 setCellSpacingOverridden:[(WDTablePropertiesValues *)self cellSpacingOverridden]];
    [(WDTablePropertiesValues *)v4 setCellSpacingTypeOverridden:[(WDTablePropertiesValues *)self cellSpacingTypeOverridden]];
    [(WDTablePropertiesValues *)v4 setVerticalAnchorOverridden:[(WDTablePropertiesValues *)self verticalAnchorOverridden]];
    [(WDTablePropertiesValues *)v4 setHorizontalAnchorOverridden:[(WDTablePropertiesValues *)self horizontalAnchorOverridden]];
    [(WDTablePropertiesValues *)v4 setVerticalPositionOverridden:[(WDTablePropertiesValues *)self verticalPositionOverridden]];
    [(WDTablePropertiesValues *)v4 setHorizontalPositionOverridden:[(WDTablePropertiesValues *)self horizontalPositionOverridden]];
    [(WDTablePropertiesValues *)v4 setLeftDistanceFromTextOverridden:[(WDTablePropertiesValues *)self leftDistanceFromTextOverridden]];
    [(WDTablePropertiesValues *)v4 setTopDistanceFromTextOverridden:[(WDTablePropertiesValues *)self topDistanceFromTextOverridden]];
    [(WDTablePropertiesValues *)v4 setRightDistanceFromTextOverridden:[(WDTablePropertiesValues *)self rightDistanceFromTextOverridden]];
    [(WDTablePropertiesValues *)v4 setBottomDistanceFromTextOverridden:[(WDTablePropertiesValues *)self bottomDistanceFromTextOverridden]];
    [(WDTablePropertiesValues *)v4 setDeletedOverridden:[(WDTablePropertiesValues *)self deletedOverridden]];
    [(WDTablePropertiesValues *)v4 setEditedOverridden:[(WDTablePropertiesValues *)self editedOverridden]];
    [(WDTablePropertiesValues *)v4 setFormattingChangedOverridden:[(WDTablePropertiesValues *)self formattingChangedOverridden]];
    [(WDTablePropertiesValues *)v4 setBiDirectionalOverridden:[(WDTablePropertiesValues *)self biDirectionalOverridden]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfDeletionOverridden:[(WDTablePropertiesValues *)self indexToAuthorIDOfDeletionOverridden]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfEditOverridden:[(WDTablePropertiesValues *)self indexToAuthorIDOfEditOverridden]];
    [(WDTablePropertiesValues *)v4 setIndexToAuthorIDOfFormattingChangeOverridden:[(WDTablePropertiesValues *)self indexToAuthorIDOfFormattingChangeOverridden]];
    [(WDTablePropertiesValues *)v4 setDeletionDateOverridden:[(WDTablePropertiesValues *)self deletionDateOverridden]];
    [(WDTablePropertiesValues *)v4 setEditDateOverridden:[(WDTablePropertiesValues *)self editDateOverridden]];
    [(WDTablePropertiesValues *)v4 setFormattingChangeDateOverridden:[(WDTablePropertiesValues *)self formattingChangeDateOverridden]];
  }

  return v4;
}

- (void)setLookOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setShadingOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setTopBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setLeftBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setBottomBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (void)setRightBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xBF | v3;
}

- (void)setInsideHorizontalBorderOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (void)setJustificationOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFD | v3;
}

- (void)setAlignmentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFB | v3;
}

- (void)setWidthOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xF7 | v3;
}

- (void)setWidthTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xEF | v3;
}

- (void)setIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xDF | v3;
}

- (void)setIndentTypeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xBF | v3;
}

- (void)setCellSpacingOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = v3 & 0x80 | *(self + 9) & 0x7F;
}

- (void)setVerticalAnchorOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFD | v3;
}

- (void)setHorizontalAnchorOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFB | v3;
}

- (void)setVerticalPositionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xF7 | v3;
}

- (void)setHorizontalPositionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xEF | v3;
}

- (void)setLeftDistanceFromTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xDF | v3;
}

- (void)setTopDistanceFromTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xBF | v3;
}

- (void)setRightDistanceFromTextOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = v3 & 0x80 | *(self + 10) & 0x7F;
}

- (void)setDeletedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFD | v3;
}

- (void)setEditedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFB | v3;
}

- (void)setFormattingChangedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xF7 | v3;
}

- (void)setBiDirectionalOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xEF | v3;
}

- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xDF | v3;
}

- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xBF | v3;
}

- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = v3 & 0x80 | *(self + 11) & 0x7F;
}

- (void)setEditDateOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFD | v3;
}

- (void)setFormattingChangeDateOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFB | v3;
}

- (WDStyle)baseStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_baseStyle);

  return WeakRetained;
}

@end