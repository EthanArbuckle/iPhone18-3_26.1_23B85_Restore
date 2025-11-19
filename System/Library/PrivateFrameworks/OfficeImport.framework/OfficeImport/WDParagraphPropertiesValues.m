@interface WDParagraphPropertiesValues
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAnchorLock:(BOOL)a3;
- (void)setAnchorLockOverridden:(BOOL)a3;
- (void)setBarBorderOverridden:(BOOL)a3;
- (void)setBetweenBorderOverridden:(BOOL)a3;
- (void)setBiDi:(BOOL)a3;
- (void)setBiDiOverridden:(BOOL)a3;
- (void)setBottomBorderOverridden:(BOOL)a3;
- (void)setCachedRtl:(BOOL)a3;
- (void)setContextualSpacing:(BOOL)a3;
- (void)setContextualSpacingOverridden:(BOOL)a3;
- (void)setDropCapOverridden:(BOOL)a3;
- (void)setFirstLineIndentCharsOverridden:(BOOL)a3;
- (void)setFirstLineIndentOverridden:(BOOL)a3;
- (void)setFollowingIndentOverridden:(BOOL)a3;
- (void)setFormattingChangedOverridden:(BOOL)a3;
- (void)setHeightOverridden:(BOOL)a3;
- (void)setHeightRuleOverridden:(BOOL)a3;
- (void)setHorizontalAnchorOverridden:(BOOL)a3;
- (void)setHorizontalPositionOverridden:(BOOL)a3;
- (void)setHorizontalSpaceOverridden:(BOOL)a3;
- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3;
- (void)setJustificationOverridden:(BOOL)a3;
- (void)setKeepLinesTogetherOverridden:(BOOL)a3;
- (void)setKeepNextParagraphTogether:(BOOL)a3;
- (void)setKeepNextParagraphTogetherOverridden:(BOOL)a3;
- (void)setKinsokuOffOverridden:(BOOL)a3;
- (void)setLeadingIndentOverridden:(BOOL)a3;
- (void)setLeftBorderOverridden:(BOOL)a3;
- (void)setLeftIndentOverridden:(BOOL)a3;
- (void)setLineSpacingOverridden:(BOOL)a3;
- (void)setLineSpacingRuleOverridden:(BOOL)a3;
- (void)setListIndexOverridden:(BOOL)a3;
- (void)setListLevelOverridden:(BOOL)a3;
- (void)setOutlineLevelOverridden:(BOOL)a3;
- (void)setPageBreakBefore:(BOOL)a3;
- (void)setPageBreakBeforeOverridden:(BOOL)a3;
- (void)setPhysicalJustificationOverridden:(BOOL)a3;
- (void)setRightIndentCharsOverridden:(BOOL)a3;
- (void)setRightIndentOverridden:(BOOL)a3;
- (void)setShadingOverridden:(BOOL)a3;
- (void)setSpaceAfterAuto:(BOOL)a3;
- (void)setSpaceAfterOverridden:(BOOL)a3;
- (void)setSpaceBeforeAuto:(BOOL)a3;
- (void)setSpaceBeforeAutoOverridden:(BOOL)a3;
- (void)setSpaceBeforeOverridden:(BOOL)a3;
- (void)setSuppressAutoHyphens:(BOOL)a3;
- (void)setSuppressAutoHyphensOverridden:(BOOL)a3;
- (void)setSuppressLineNumbers:(BOOL)a3;
- (void)setSuppressLineNumbersOverridden:(BOOL)a3;
- (void)setTabStopAddedCountOverridden:(BOOL)a3;
- (void)setTabStopDeletedCountOverridden:(BOOL)a3;
- (void)setTopBorderOverridden:(BOOL)a3;
- (void)setVerticalAnchorOverridden:(BOOL)a3;
- (void)setVerticalPositionOverridden:(BOOL)a3;
- (void)setWidowControl:(BOOL)a3;
- (void)setWidowControlOverridden:(BOOL)a3;
- (void)setWidthOverridden:(BOOL)a3;
- (void)setWrap:(BOOL)a3;
- (void)setWrapOverridden:(BOOL)a3;
@end

@implementation WDParagraphPropertiesValues

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDParagraphPropertiesValues allocWithZone:?]];
  if (v4)
  {
    v5 = [(WDParagraphPropertiesValues *)self baseStyle];
    [(WDParagraphPropertiesValues *)v4 setBaseStyle:v5];

    v6 = [(WDParagraphPropertiesValues *)self topBorder];
    [(WDParagraphPropertiesValues *)v4 setTopBorder:v6];

    v7 = [(WDParagraphPropertiesValues *)self leftBorder];
    [(WDParagraphPropertiesValues *)v4 setLeftBorder:v7];

    v8 = [(WDParagraphPropertiesValues *)self bottomBorder];
    [(WDParagraphPropertiesValues *)v4 setBottomBorder:v8];

    v9 = [(WDParagraphPropertiesValues *)self rightBorder];
    [(WDParagraphPropertiesValues *)v4 setRightBorder:v9];

    v10 = [(WDParagraphPropertiesValues *)self betweenBorder];
    [(WDParagraphPropertiesValues *)v4 setBetweenBorder:v10];

    v11 = [(WDParagraphPropertiesValues *)self barBorder];
    [(WDParagraphPropertiesValues *)v4 setBarBorder:v11];

    v12 = [(WDParagraphPropertiesValues *)self shading];
    [(WDParagraphPropertiesValues *)v4 setShading:v12];

    [(WDParagraphPropertiesValues *)v4 setDropCap:[(WDParagraphPropertiesValues *)self dropCap]];
    v13 = [(WDParagraphPropertiesValues *)self tabStopAddedTable];
    [(WDParagraphPropertiesValues *)v4 setTabStopAddedTable:v13];

    v14 = [(WDParagraphPropertiesValues *)self tabStopDeletedTable];
    [(WDParagraphPropertiesValues *)v4 setTabStopDeletedTable:v14];

    [(WDParagraphPropertiesValues *)v4 setListIndex:[(WDParagraphPropertiesValues *)self listIndex]];
    [(WDParagraphPropertiesValues *)v4 setTabStopAddedCount:[(WDParagraphPropertiesValues *)self tabStopAddedCount]];
    [(WDParagraphPropertiesValues *)v4 setTabStopDeletedCount:[(WDParagraphPropertiesValues *)self tabStopDeletedCount]];
    [(WDParagraphPropertiesValues *)v4 setWidth:[(WDParagraphPropertiesValues *)self width]];
    [(WDParagraphPropertiesValues *)v4 setVerticalSpace:[(WDParagraphPropertiesValues *)self verticalSpace]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalSpace:[(WDParagraphPropertiesValues *)self horizontalSpace]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalPosition:[(WDParagraphPropertiesValues *)self horizontalPosition]];
    [(WDParagraphPropertiesValues *)v4 setVerticalPosition:[(WDParagraphPropertiesValues *)self verticalPosition]];
    [(WDParagraphPropertiesValues *)v4 setLineSpacing:[(WDParagraphPropertiesValues *)self lineSpacing]];
    [(WDParagraphPropertiesValues *)v4 setLeftIndent:[(WDParagraphPropertiesValues *)self leftIndent]];
    [(WDParagraphPropertiesValues *)v4 setRightIndent:[(WDParagraphPropertiesValues *)self rightIndent]];
    [(WDParagraphPropertiesValues *)v4 setLeadingIndent:[(WDParagraphPropertiesValues *)self leadingIndent]];
    [(WDParagraphPropertiesValues *)v4 setFollowingIndent:[(WDParagraphPropertiesValues *)self followingIndent]];
    [(WDParagraphPropertiesValues *)v4 setFirstLineIndent:[(WDParagraphPropertiesValues *)self firstLineIndent]];
    [(WDParagraphPropertiesValues *)v4 setLeftIndentChars:[(WDParagraphPropertiesValues *)self leftIndentChars]];
    [(WDParagraphPropertiesValues *)v4 setRightIndentChars:[(WDParagraphPropertiesValues *)self rightIndentChars]];
    [(WDParagraphPropertiesValues *)v4 setFirstLineIndentChars:[(WDParagraphPropertiesValues *)self firstLineIndentChars]];
    [(WDParagraphPropertiesValues *)v4 setSpaceBefore:[(WDParagraphPropertiesValues *)self spaceBefore]];
    [(WDParagraphPropertiesValues *)v4 setSpaceAfter:[(WDParagraphPropertiesValues *)self spaceAfter]];
    [(WDParagraphPropertiesValues *)v4 setHeight:[(WDParagraphPropertiesValues *)self height]];
    [(WDParagraphPropertiesValues *)v4 setOutlineLevel:[(WDParagraphPropertiesValues *)self outlineLevel]];
    [(WDParagraphPropertiesValues *)v4 setIndexToAuthorIDOfFormattingChange:[(WDParagraphPropertiesValues *)self indexToAuthorIDOfFormattingChange]];
    [(WDParagraphPropertiesValues *)v4 setWrapCode:[(WDParagraphPropertiesValues *)self wrapCode]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalAnchor:[(WDParagraphPropertiesValues *)self horizontalAnchor]];
    [(WDParagraphPropertiesValues *)v4 setVerticalAnchor:[(WDParagraphPropertiesValues *)self verticalAnchor]];
    [(WDParagraphPropertiesValues *)v4 setLineSpacingRule:[(WDParagraphPropertiesValues *)self lineSpacingRule]];
    [(WDParagraphPropertiesValues *)v4 setHeightRule:[(WDParagraphPropertiesValues *)self heightRule]];
    [(WDParagraphPropertiesValues *)v4 setListLevel:[(WDParagraphPropertiesValues *)self listLevel]];
    [(WDParagraphPropertiesValues *)v4 setJustification:[(WDParagraphPropertiesValues *)self justification]];
    [(WDParagraphPropertiesValues *)v4 setPhysicalJustification:[(WDParagraphPropertiesValues *)self physicalJustification]];
    [(WDParagraphPropertiesValues *)v4 setFormattingChanged:[(WDParagraphPropertiesValues *)self formattingChanged]];
    [(WDParagraphPropertiesValues *)v4 setBaseStyleOverridden:[(WDParagraphPropertiesValues *)self baseStyleOverridden]];
    [(WDParagraphPropertiesValues *)v4 setPageBreakBefore:[(WDParagraphPropertiesValues *)self pageBreakBefore]];
    [(WDParagraphPropertiesValues *)v4 setPageBreakBeforeOverridden:[(WDParagraphPropertiesValues *)self pageBreakBeforeOverridden]];
    [(WDParagraphPropertiesValues *)v4 setListLevelOverridden:[(WDParagraphPropertiesValues *)self listLevelOverridden]];
    [(WDParagraphPropertiesValues *)v4 setListIndexOverridden:[(WDParagraphPropertiesValues *)self listIndexOverridden]];
    [(WDParagraphPropertiesValues *)v4 setTopBorderOverridden:[(WDParagraphPropertiesValues *)self topBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLeftBorderOverridden:[(WDParagraphPropertiesValues *)self leftBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setBottomBorderOverridden:[(WDParagraphPropertiesValues *)self bottomBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setRightBorderOverridden:[(WDParagraphPropertiesValues *)self rightBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setBetweenBorderOverridden:[(WDParagraphPropertiesValues *)self betweenBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setBarBorderOverridden:[(WDParagraphPropertiesValues *)self barBorderOverridden]];
    [(WDParagraphPropertiesValues *)v4 setShadingOverridden:[(WDParagraphPropertiesValues *)self shadingOverridden]];
    [(WDParagraphPropertiesValues *)v4 setDropCapOverridden:[(WDParagraphPropertiesValues *)self dropCapOverridden]];
    [(WDParagraphPropertiesValues *)v4 setWidthOverridden:[(WDParagraphPropertiesValues *)self widthOverridden]];
    [(WDParagraphPropertiesValues *)v4 setHeightOverridden:[(WDParagraphPropertiesValues *)self heightOverridden]];
    [(WDParagraphPropertiesValues *)v4 setHeightRuleOverridden:[(WDParagraphPropertiesValues *)self heightRuleOverridden]];
    [(WDParagraphPropertiesValues *)v4 setVerticalSpaceOverridden:[(WDParagraphPropertiesValues *)self verticalSpaceOverridden]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalSpaceOverridden:[(WDParagraphPropertiesValues *)self horizontalSpaceOverridden]];
    [(WDParagraphPropertiesValues *)v4 setWrap:[(WDParagraphPropertiesValues *)self wrap]];
    [(WDParagraphPropertiesValues *)v4 setWrapOverridden:[(WDParagraphPropertiesValues *)self wrapOverridden]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalAnchorOverridden:[(WDParagraphPropertiesValues *)self horizontalAnchorOverridden]];
    [(WDParagraphPropertiesValues *)v4 setVerticalAnchorOverridden:[(WDParagraphPropertiesValues *)self verticalAnchorOverridden]];
    [(WDParagraphPropertiesValues *)v4 setHorizontalPositionOverridden:[(WDParagraphPropertiesValues *)self horizontalPositionOverridden]];
    [(WDParagraphPropertiesValues *)v4 setVerticalPositionOverridden:[(WDParagraphPropertiesValues *)self verticalPositionOverridden]];
    [(WDParagraphPropertiesValues *)v4 setWrapCodeOverridden:[(WDParagraphPropertiesValues *)self wrapCodeOverridden]];
    [(WDParagraphPropertiesValues *)v4 setAnchorLock:[(WDParagraphPropertiesValues *)self anchorLock]];
    [(WDParagraphPropertiesValues *)v4 setAnchorLockOverridden:[(WDParagraphPropertiesValues *)self anchorLockOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSpaceBeforeOverridden:[(WDParagraphPropertiesValues *)self spaceBeforeOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSpaceBeforeAuto:[(WDParagraphPropertiesValues *)self spaceBeforeAuto]];
    [(WDParagraphPropertiesValues *)v4 setSpaceBeforeAutoOverridden:[(WDParagraphPropertiesValues *)self spaceBeforeAutoOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSpaceAfterOverridden:[(WDParagraphPropertiesValues *)self spaceAfterOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSpaceAfterAuto:[(WDParagraphPropertiesValues *)self spaceAfterAuto]];
    [(WDParagraphPropertiesValues *)v4 setSpaceAfterAutoOverridden:[(WDParagraphPropertiesValues *)self spaceAfterAutoOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLineSpacingOverridden:[(WDParagraphPropertiesValues *)self lineSpacingOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLineSpacingRuleOverridden:[(WDParagraphPropertiesValues *)self lineSpacingRuleOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLeftIndentOverridden:[(WDParagraphPropertiesValues *)self leftIndentOverridden]];
    [(WDParagraphPropertiesValues *)v4 setRightIndentOverridden:[(WDParagraphPropertiesValues *)self rightIndentOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLeadingIndentOverridden:[(WDParagraphPropertiesValues *)self leadingIndentOverridden]];
    [(WDParagraphPropertiesValues *)v4 setFollowingIndentOverridden:[(WDParagraphPropertiesValues *)self followingIndentOverridden]];
    [(WDParagraphPropertiesValues *)v4 setFirstLineIndentOverridden:[(WDParagraphPropertiesValues *)self firstLineIndentOverridden]];
    [(WDParagraphPropertiesValues *)v4 setLeftIndentCharsOverridden:[(WDParagraphPropertiesValues *)self leftIndentCharsOverridden]];
    [(WDParagraphPropertiesValues *)v4 setRightIndentCharsOverridden:[(WDParagraphPropertiesValues *)self rightIndentCharsOverridden]];
    [(WDParagraphPropertiesValues *)v4 setFirstLineIndentCharsOverridden:[(WDParagraphPropertiesValues *)self firstLineIndentCharsOverridden]];
    [(WDParagraphPropertiesValues *)v4 setJustificationOverridden:[(WDParagraphPropertiesValues *)self justificationOverridden]];
    [(WDParagraphPropertiesValues *)v4 setPhysicalJustificationOverridden:[(WDParagraphPropertiesValues *)self physicalJustificationOverridden]];
    [(WDParagraphPropertiesValues *)v4 setOutlineLevelOverridden:[(WDParagraphPropertiesValues *)self outlineLevelOverridden]];
    [(WDParagraphPropertiesValues *)v4 setKeepNextParagraphTogether:[(WDParagraphPropertiesValues *)self keepNextParagraphTogether]];
    [(WDParagraphPropertiesValues *)v4 setKeepNextParagraphTogetherOverridden:[(WDParagraphPropertiesValues *)self keepNextParagraphTogetherOverridden]];
    [(WDParagraphPropertiesValues *)v4 setKeepLinesTogether:[(WDParagraphPropertiesValues *)self keepLinesTogether]];
    [(WDParagraphPropertiesValues *)v4 setKeepLinesTogetherOverridden:[(WDParagraphPropertiesValues *)self keepLinesTogetherOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSuppressAutoHyphens:[(WDParagraphPropertiesValues *)self suppressAutoHyphens]];
    [(WDParagraphPropertiesValues *)v4 setSuppressAutoHyphensOverridden:[(WDParagraphPropertiesValues *)self suppressAutoHyphensOverridden]];
    [(WDParagraphPropertiesValues *)v4 setSuppressLineNumbers:[(WDParagraphPropertiesValues *)self suppressLineNumbers]];
    [(WDParagraphPropertiesValues *)v4 setSuppressLineNumbersOverridden:[(WDParagraphPropertiesValues *)self suppressLineNumbersOverridden]];
    [(WDParagraphPropertiesValues *)v4 setWidowControl:[(WDParagraphPropertiesValues *)self widowControl]];
    [(WDParagraphPropertiesValues *)v4 setWidowControlOverridden:[(WDParagraphPropertiesValues *)self widowControlOverridden]];
    [(WDParagraphPropertiesValues *)v4 setKinsokuOff:[(WDParagraphPropertiesValues *)self kinsokuOff]];
    [(WDParagraphPropertiesValues *)v4 setKinsokuOffOverridden:[(WDParagraphPropertiesValues *)self kinsokuOffOverridden]];
    [(WDParagraphPropertiesValues *)v4 setTabStopAddedCountOverridden:[(WDParagraphPropertiesValues *)self tabStopAddedCountOverridden]];
    [(WDParagraphPropertiesValues *)v4 setTabStopDeletedCountOverridden:[(WDParagraphPropertiesValues *)self tabStopDeletedCountOverridden]];
    [(WDParagraphPropertiesValues *)v4 setFormattingChangedOverridden:[(WDParagraphPropertiesValues *)self formattingChangedOverridden]];
    [(WDParagraphPropertiesValues *)v4 setBiDi:[(WDParagraphPropertiesValues *)self biDi]];
    [(WDParagraphPropertiesValues *)v4 setBiDiOverridden:[(WDParagraphPropertiesValues *)self biDiOverridden]];
    [(WDParagraphPropertiesValues *)v4 setCachedRtl:[(WDParagraphPropertiesValues *)self cachedRtl]];
    [(WDParagraphPropertiesValues *)v4 setCachedRtlOverridden:[(WDParagraphPropertiesValues *)self cachedRtlOverridden]];
    [(WDParagraphPropertiesValues *)v4 setIndexToAuthorIDOfFormattingChangeOverridden:[(WDParagraphPropertiesValues *)self indexToAuthorIDOfFormattingChangeOverridden]];
    [(WDParagraphPropertiesValues *)v4 setContextualSpacing:[(WDParagraphPropertiesValues *)self contextualSpacing]];
    [(WDParagraphPropertiesValues *)v4 setContextualSpacingOverridden:[(WDParagraphPropertiesValues *)self contextualSpacingOverridden]];
  }

  return v4;
}

- (void)setPageBreakBefore:(BOOL)a3
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

- (void)setPageBreakBeforeOverridden:(BOOL)a3
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

- (void)setListLevelOverridden:(BOOL)a3
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

- (void)setListIndexOverridden:(BOOL)a3
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

- (void)setTopBorderOverridden:(BOOL)a3
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

- (void)setLeftBorderOverridden:(BOOL)a3
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

- (void)setBottomBorderOverridden:(BOOL)a3
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

- (void)setBetweenBorderOverridden:(BOOL)a3
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

- (void)setBarBorderOverridden:(BOOL)a3
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

- (void)setShadingOverridden:(BOOL)a3
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

- (void)setDropCapOverridden:(BOOL)a3
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

- (void)setWidthOverridden:(BOOL)a3
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

- (void)setHeightOverridden:(BOOL)a3
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

- (void)setHeightRuleOverridden:(BOOL)a3
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

- (void)setHorizontalSpaceOverridden:(BOOL)a3
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

- (void)setWrap:(BOOL)a3
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

- (void)setWrapOverridden:(BOOL)a3
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

- (void)setHorizontalAnchorOverridden:(BOOL)a3
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

- (void)setVerticalAnchorOverridden:(BOOL)a3
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

- (void)setHorizontalPositionOverridden:(BOOL)a3
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

- (void)setVerticalPositionOverridden:(BOOL)a3
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

- (void)setAnchorLock:(BOOL)a3
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

- (void)setAnchorLockOverridden:(BOOL)a3
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

- (void)setSpaceBeforeOverridden:(BOOL)a3
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

- (void)setSpaceBeforeAuto:(BOOL)a3
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

- (void)setSpaceBeforeAutoOverridden:(BOOL)a3
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

- (void)setSpaceAfterOverridden:(BOOL)a3
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

- (void)setSpaceAfterAuto:(BOOL)a3
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

- (void)setLineSpacingOverridden:(BOOL)a3
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

- (void)setLineSpacingRuleOverridden:(BOOL)a3
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

- (void)setLeftIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xF7 | v3;
}

- (void)setRightIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xEF | v3;
}

- (void)setLeadingIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xDF | v3;
}

- (void)setFollowingIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = *(self + 12) & 0xBF | v3;
}

- (void)setFirstLineIndentOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 12) = v3 & 0x80 | *(self + 12) & 0x7F;
}

- (void)setRightIndentCharsOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFD | v3;
}

- (void)setFirstLineIndentCharsOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xFB | v3;
}

- (void)setJustificationOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xF7 | v3;
}

- (void)setPhysicalJustificationOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xEF | v3;
}

- (void)setOutlineLevelOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xDF | v3;
}

- (void)setKeepNextParagraphTogether:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = *(self + 13) & 0xBF | v3;
}

- (void)setKeepNextParagraphTogetherOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 13) = v3 & 0x80 | *(self + 13) & 0x7F;
}

- (void)setKeepLinesTogetherOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFD | v3;
}

- (void)setSuppressAutoHyphens:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xFB | v3;
}

- (void)setSuppressAutoHyphensOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xF7 | v3;
}

- (void)setSuppressLineNumbers:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xEF | v3;
}

- (void)setSuppressLineNumbersOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xDF | v3;
}

- (void)setWidowControl:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = *(self + 14) & 0xBF | v3;
}

- (void)setWidowControlOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 14) = v3 & 0x80 | *(self + 14) & 0x7F;
}

- (void)setKinsokuOffOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFD | v3;
}

- (void)setTabStopAddedCountOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xFB | v3;
}

- (void)setTabStopDeletedCountOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xF7 | v3;
}

- (void)setFormattingChangedOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xEF | v3;
}

- (void)setBiDi:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xDF | v3;
}

- (void)setBiDiOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = *(self + 15) & 0xBF | v3;
}

- (void)setCachedRtl:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 15) = v3 & 0x80 | *(self + 15) & 0x7F;
}

- (void)setIndexToAuthorIDOfFormattingChangeOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setContextualSpacing:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setContextualSpacingOverridden:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

@end