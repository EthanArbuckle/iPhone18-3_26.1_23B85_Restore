@interface OADTableStyleFlattener
- (void)applyCellPropertiesToTextBodyPropertiesInCell:(id)cell;
- (void)applyResolvedPartStyle:(id)style leftStroke:(id)stroke rightStroke:(id)rightStroke topStroke:(id)topStroke bottomStroke:(id)bottomStroke toCell:(id)cell;
- (void)applyTextStyle:(id)style toParagraph:(id)paragraph;
@end

@implementation OADTableStyleFlattener

- (void)applyCellPropertiesToTextBodyPropertiesInCell:(id)cell
{
  cellCopy = cell;
  properties = [cellCopy properties];
  textBody = [cellCopy textBody];
  properties2 = [textBody properties];

  parent = [properties2 parent];
  [properties2 setParent:0];
  if ([properties isLeftMarginOverridden] && (objc_msgSend(properties2, "hasLeftInset") & 1) == 0)
  {
    [properties leftMargin];
    [properties2 setLeftInset:?];
  }

  if ([properties isRightMarginOverridden] && (objc_msgSend(properties2, "hasRightInset") & 1) == 0)
  {
    [properties rightMargin];
    [properties2 setRightInset:?];
  }

  if ([properties isTopMarginOverridden] && (objc_msgSend(properties2, "hasTopInset") & 1) == 0)
  {
    [properties topMargin];
    [properties2 setTopInset:?];
  }

  if ([properties isBottomMarginOverridden] && (objc_msgSend(properties2, "hasBottomInset") & 1) == 0)
  {
    [properties bottomMargin];
    [properties2 setBottomInset:?];
  }

  if ([properties isTextFlowOverridden] && (objc_msgSend(properties2, "hasFlowType") & 1) == 0)
  {
    [properties2 setFlowType:{objc_msgSend(properties, "textFlow")}];
  }

  if ([properties isTextAnchorOverridden] && (objc_msgSend(properties2, "hasTextAnchorType") & 1) == 0)
  {
    [properties2 setTextAnchorType:{objc_msgSend(properties, "textAnchor")}];
  }

  if ([properties isTextAnchorCenterOverridden] && (objc_msgSend(properties2, "hasIsAnchorCenter") & 1) == 0)
  {
    [properties2 setIsAnchorCenter:{objc_msgSend(properties, "textAnchorCenter")}];
  }

  if ([properties isTextHorizontalOverflowOverridden] && (objc_msgSend(properties2, "hasHorizontalOverflowType") & 1) == 0)
  {
    [properties2 setHorizontalOverflowType:{objc_msgSend(properties, "textHorizontalOverflow")}];
  }

  if ([properties isTextAnchorCenterOverridden] && (objc_msgSend(properties2, "hasIsAnchorCenter") & 1) == 0)
  {
    [properties2 setIsAnchorCenter:{objc_msgSend(properties, "textAnchorCenter")}];
  }

  [properties2 setParent:parent];
}

- (void)applyResolvedPartStyle:(id)style leftStroke:(id)stroke rightStroke:(id)rightStroke topStroke:(id)topStroke bottomStroke:(id)bottomStroke toCell:(id)cell
{
  styleCopy = style;
  strokeCopy = stroke;
  rightStrokeCopy = rightStroke;
  topStrokeCopy = topStroke;
  bottomStrokeCopy = bottomStroke;
  cellCopy = cell;
  properties = [cellCopy properties];
  [(OADTableStyleFlattener *)self applyCellPropertiesToTextBodyPropertiesInCell:cellCopy];
  textStyle = [styleCopy textStyle];
  [(OADTableStyleResolver *)self applyTextStyle:textStyle toCell:cellCopy];

  fill = [properties fill];

  if (!fill)
  {
    cellStyle = [styleCopy cellStyle];
    fill2 = [cellStyle fill];
    [properties setFill:fill2];
  }

  leftStroke = [properties leftStroke];

  if (!leftStroke)
  {
    [properties setLeftStroke:strokeCopy];
  }

  rightStroke = [properties rightStroke];

  if (!rightStroke)
  {
    [properties setRightStroke:rightStrokeCopy];
  }

  topStroke = [properties topStroke];

  if (!topStroke)
  {
    [properties setTopStroke:topStrokeCopy];
  }

  bottomStroke = [properties bottomStroke];

  if (!bottomStroke)
  {
    [properties setBottomStroke:bottomStrokeCopy];
  }
}

- (void)applyTextStyle:(id)style toParagraph:(id)paragraph
{
  styleCopy = style;
  properties = [paragraph properties];
  [OADTable applyTextStyle:styleCopy toParagraphProperties:properties];
}

@end