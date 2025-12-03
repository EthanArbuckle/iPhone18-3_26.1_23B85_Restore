@interface WDTablePropertiesValues
- (WDStyle)baseStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlignmentOverridden:(BOOL)overridden;
- (void)setBiDirectionalOverridden:(BOOL)overridden;
- (void)setBottomBorderOverridden:(BOOL)overridden;
- (void)setCellSpacingOverridden:(BOOL)overridden;
- (void)setDeletedOverridden:(BOOL)overridden;
- (void)setEditDateOverridden:(BOOL)overridden;
- (void)setEditedOverridden:(BOOL)overridden;
- (void)setFormattingChangeDateOverridden:(BOOL)overridden;
- (void)setFormattingChangedOverridden:(BOOL)overridden;
- (void)setHorizontalAnchorOverridden:(BOOL)overridden;
- (void)setHorizontalPositionOverridden:(BOOL)overridden;
- (void)setIndentOverridden:(BOOL)overridden;
- (void)setIndentTypeOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)overridden;
- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)overridden;
- (void)setInsideHorizontalBorderOverridden:(BOOL)overridden;
- (void)setJustificationOverridden:(BOOL)overridden;
- (void)setLeftBorderOverridden:(BOOL)overridden;
- (void)setLeftDistanceFromTextOverridden:(BOOL)overridden;
- (void)setLookOverridden:(BOOL)overridden;
- (void)setRightBorderOverridden:(BOOL)overridden;
- (void)setRightDistanceFromTextOverridden:(BOOL)overridden;
- (void)setShadingOverridden:(BOOL)overridden;
- (void)setTopBorderOverridden:(BOOL)overridden;
- (void)setTopDistanceFromTextOverridden:(BOOL)overridden;
- (void)setVerticalAnchorOverridden:(BOOL)overridden;
- (void)setVerticalPositionOverridden:(BOOL)overridden;
- (void)setWidthOverridden:(BOOL)overridden;
- (void)setWidthTypeOverridden:(BOOL)overridden;
@end

@implementation WDTablePropertiesValues

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDTablePropertiesValues allocWithZone:?]];
  if (v4)
  {
    baseStyle = [(WDTablePropertiesValues *)self baseStyle];
    [(WDTablePropertiesValues *)v4 setBaseStyle:baseStyle];

    [(WDTablePropertiesValues *)v4 setLook:[(WDTablePropertiesValues *)self look]];
    shading = [(WDTablePropertiesValues *)self shading];
    [(WDTablePropertiesValues *)v4 setShading:shading];

    topBorder = [(WDTablePropertiesValues *)self topBorder];
    [(WDTablePropertiesValues *)v4 setTopBorder:topBorder];

    leftBorder = [(WDTablePropertiesValues *)self leftBorder];
    [(WDTablePropertiesValues *)v4 setLeftBorder:leftBorder];

    bottomBorder = [(WDTablePropertiesValues *)self bottomBorder];
    [(WDTablePropertiesValues *)v4 setBottomBorder:bottomBorder];

    rightBorder = [(WDTablePropertiesValues *)self rightBorder];
    [(WDTablePropertiesValues *)v4 setRightBorder:rightBorder];

    insideHorizontalBorder = [(WDTablePropertiesValues *)self insideHorizontalBorder];
    [(WDTablePropertiesValues *)v4 setInsideHorizontalBorder:insideHorizontalBorder];

    insideVerticalBorder = [(WDTablePropertiesValues *)self insideVerticalBorder];
    [(WDTablePropertiesValues *)v4 setInsideVerticalBorder:insideVerticalBorder];

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
    deletionDate = [(WDTablePropertiesValues *)self deletionDate];
    [(WDTablePropertiesValues *)v4 setDeletionDate:deletionDate];

    editDate = [(WDTablePropertiesValues *)self editDate];
    [(WDTablePropertiesValues *)v4 setEditDate:editDate];

    formattingChangeDate = [(WDTablePropertiesValues *)self formattingChangeDate];
    [(WDTablePropertiesValues *)v4 setFormattingChangeDate:formattingChangeDate];

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

- (void)setLookOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setShadingOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setTopBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setLeftBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setBottomBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (void)setRightBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xBF | v3;
}

- (void)setInsideHorizontalBorderOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (void)setJustificationOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFD | v3;
}

- (void)setAlignmentOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xFB | v3;
}

- (void)setWidthOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xF7 | v3;
}

- (void)setWidthTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xEF | v3;
}

- (void)setIndentOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xDF | v3;
}

- (void)setIndentTypeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = *(self + 9) & 0xBF | v3;
}

- (void)setCellSpacingOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 9) = v3 & 0x80 | *(self + 9) & 0x7F;
}

- (void)setVerticalAnchorOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFD | v3;
}

- (void)setHorizontalAnchorOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xFB | v3;
}

- (void)setVerticalPositionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xF7 | v3;
}

- (void)setHorizontalPositionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xEF | v3;
}

- (void)setLeftDistanceFromTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xDF | v3;
}

- (void)setTopDistanceFromTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = *(self + 10) & 0xBF | v3;
}

- (void)setRightDistanceFromTextOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 10) = v3 & 0x80 | *(self + 10) & 0x7F;
}

- (void)setDeletedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFD | v3;
}

- (void)setEditedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xFB | v3;
}

- (void)setFormattingChangedOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xF7 | v3;
}

- (void)setBiDirectionalOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xEF | v3;
}

- (void)setIndexToAuthorIDOfDeletionOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xDF | v3;
}

- (void)setIndexToAuthorIDOfEditOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = *(self + 11) & 0xBF | v3;
}

- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 11) = v3 & 0x80 | *(self + 11) & 0x7F;
}

- (void)setEditDateOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xFD | v3;
}

- (void)setFormattingChangeDateOverridden:(BOOL)overridden
{
  if (overridden)
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