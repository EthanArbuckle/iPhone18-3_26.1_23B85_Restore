@interface OADTableUnnecessaryOverrideRemover
- (OADTableUnnecessaryOverrideRemover)initWithTable:(id)table parentTextListStyle:(id)style;
- (void)applyResolvedPartStyle:(id)style leftStroke:(id)stroke rightStroke:(id)rightStroke topStroke:(id)topStroke bottomStroke:(id)bottomStroke toCell:(id)cell;
- (void)applyTextBodyPropertiesToCellPropertiesInCell:(id)cell;
- (void)applyTextStyle:(id)style toParagraph:(id)paragraph;
- (void)fixFill:(id)fill;
- (void)removeUnnecessaryOverridesInCellProperties:(id)properties strokeType:(int)type resolvedStroke:(id)stroke;
@end

@implementation OADTableUnnecessaryOverrideRemover

- (OADTableUnnecessaryOverrideRemover)initWithTable:(id)table parentTextListStyle:(id)style
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = OADTableUnnecessaryOverrideRemover;
  v8 = [(OADTableStyleResolver *)&v11 initWithTable:table];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentTextListStyle, style);
  }

  return v9;
}

- (void)applyTextBodyPropertiesToCellPropertiesInCell:(id)cell
{
  cellCopy = cell;
  properties = [cellCopy properties];
  textBody = [cellCopy textBody];
  properties2 = [textBody properties];

  if ([properties2 hasLeftInset] && (objc_msgSend(properties, "isLeftMarginOverridden") & 1) == 0)
  {
    [properties2 leftInset];
    [properties setLeftMargin:?];
  }

  if ([properties2 hasRightInset] && (objc_msgSend(properties, "isRightMarginOverridden") & 1) == 0)
  {
    [properties2 rightInset];
    [properties setRightMargin:?];
  }

  if ([properties2 hasTopInset] && (objc_msgSend(properties, "isTopMarginOverridden") & 1) == 0)
  {
    [properties2 topInset];
    [properties setTopMargin:?];
  }

  if ([properties2 hasBottomInset] && (objc_msgSend(properties, "isBottomMarginOverridden") & 1) == 0)
  {
    [properties2 bottomInset];
    [properties setBottomMargin:?];
  }

  if ([properties2 hasFlowType] && (objc_msgSend(properties, "isTextFlowOverridden") & 1) == 0)
  {
    [properties setTextFlow:{objc_msgSend(properties2, "flowType")}];
  }

  if ([properties2 hasTextAnchorType] && (objc_msgSend(properties, "isTextAnchorOverridden") & 1) == 0)
  {
    [properties setTextAnchor:{objc_msgSend(properties2, "textAnchorType")}];
  }

  if ([properties2 hasIsAnchorCenter] && (objc_msgSend(properties, "isTextAnchorCenterOverridden") & 1) == 0)
  {
    [properties setTextAnchorCenter:{objc_msgSend(properties2, "isAnchorCenter")}];
  }

  if ([properties2 hasHorizontalOverflowType] && (objc_msgSend(properties, "isTextHorizontalOverflowOverridden") & 1) == 0)
  {
    [properties setTextHorizontalOverflow:{objc_msgSend(properties2, "horizontalOverflowType")}];
  }

  if ([properties2 hasIsAnchorCenter] && (objc_msgSend(properties, "isTextAnchorCenterOverridden") & 1) == 0)
  {
    [properties setTextAnchorCenter:{objc_msgSend(properties2, "isAnchorCenter")}];
  }
}

- (void)fixFill:(id)fill
{
  fillCopy = fill;
  isMergedWithParent = [fillCopy isMergedWithParent];
  [fillCopy setMergedWithParent:0];
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, fillCopy);
  v6 = v5;
  if (v5 && ([v5 isColorOverridden] & 1) == 0)
  {
    v7 = +[OADRgbColor black];
    [v6 setColor:v7];
  }

  [fillCopy setMergedWithParent:isMergedWithParent];
}

- (void)removeUnnecessaryOverridesInCellProperties:(id)properties strokeType:(int)type resolvedStroke:(id)stroke
{
  v6 = *&type;
  propertiesCopy = properties;
  strokeCopy = stroke;
  v9 = [propertiesCopy stroke:v6];
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setParent:v9];
    [v10 changeParentPreservingEffectiveValues:strokeCopy];
    if ([v10 isAnythingOverridden])
    {
      v11 = +[OADStroke defaultProperties];
      [v9 changeParentPreservingEffectiveValues:v11];

      fill = [v9 fill];
      [(OADTableUnnecessaryOverrideRemover *)self fixFill:fill];
    }

    else
    {
      [propertiesCopy setStrokeOfType:v6 toValue:0];
    }
  }
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
  [(OADTableUnnecessaryOverrideRemover *)self applyTextBodyPropertiesToCellPropertiesInCell:cellCopy];
  textStyle = [styleCopy textStyle];
  [(OADTableStyleResolver *)self applyTextStyle:textStyle toCell:cellCopy];

  fill = [properties fill];
  v20 = objc_opt_class();
  cellStyle = [styleCopy cellStyle];
  fill2 = [cellStyle fill];
  v23 = objc_opt_class();

  if (v20 == v23)
  {
    fill3 = [properties fill];
    v25 = objc_alloc_init(objc_opt_class());

    fill4 = [properties fill];
    [v25 setParent:fill4];

    cellStyle2 = [styleCopy cellStyle];
    fill5 = [cellStyle2 fill];
    [v25 changeParentPreservingEffectiveValues:fill5];

    if ([v25 isAnythingOverridden])
    {
      fill6 = [properties fill];
      fill7 = [properties fill];
      defaultProperties = [objc_opt_class() defaultProperties];
      [fill6 changeParentPreservingEffectiveValues:defaultProperties];

      fill8 = [properties fill];
      [(OADTableUnnecessaryOverrideRemover *)self fixFill:fill8];
    }

    else
    {
      [properties setFill:0];
    }
  }

  [(OADTableUnnecessaryOverrideRemover *)self removeUnnecessaryOverridesInCellProperties:properties strokeType:1 resolvedStroke:strokeCopy];
  [(OADTableUnnecessaryOverrideRemover *)self removeUnnecessaryOverridesInCellProperties:properties strokeType:2 resolvedStroke:rightStrokeCopy];
  [(OADTableUnnecessaryOverrideRemover *)self removeUnnecessaryOverridesInCellProperties:properties strokeType:3 resolvedStroke:topStrokeCopy];
  [(OADTableUnnecessaryOverrideRemover *)self removeUnnecessaryOverridesInCellProperties:properties strokeType:4 resolvedStroke:bottomStrokeCopy];
}

- (void)applyTextStyle:(id)style toParagraph:(id)paragraph
{
  styleCopy = style;
  paragraphCopy = paragraph;
  v7 = objc_opt_new();
  [v7 setParent:0];
  if ([styleCopy bold] != 2)
  {
    [v7 setIsBold:{objc_msgSend(styleCopy, "bold") == 0}];
  }

  if ([styleCopy italic] != 2)
  {
    [v7 setIsItalic:{objc_msgSend(styleCopy, "italic") == 0}];
  }

  color = [styleCopy color];

  if (color)
  {
    v9 = objc_alloc_init(OADSolidFill);
    color2 = [styleCopy color];
    [(OADSolidFill *)v9 setColor:color2];

    [v7 setFill:v9];
  }

  v11 = objc_opt_class();
  fontReference = [styleCopy fontReference];
  v13 = TSUDynamicCast(v11, fontReference);

  if (v13)
  {
    latinFont = [v13 latinFont];
    [v7 setLatinFont:latinFont];

    eastAsianFont = [v13 eastAsianFont];
    [v7 setEastAsianFont:eastAsianFont];

    complexScriptFont = [v13 complexScriptFont];
    [v7 setBidiFont:complexScriptFont];
    goto LABEL_9;
  }

  v20 = objc_opt_class();
  fontReference2 = [styleCopy fontReference];
  complexScriptFont = TSUDynamicCast(v20, fontReference2);

  if (complexScriptFont)
  {
    index = [complexScriptFont index];
    if (index)
    {
      if (index != 1)
      {
        goto LABEL_9;
      }

      [v7 setLatinFont:@"+mn-lt"];
      [v7 setEastAsianFont:@"+mn-ea"];
      v23 = @"+mn-cs";
    }

    else
    {
      [v7 setLatinFont:@"+mj-lt"];
      [v7 setEastAsianFont:@"+mj-ea"];
      v23 = @"+mj-cs";
    }

    [v7 setBidiFont:v23];
  }

LABEL_9:

  parentTextListStyle = [(OADTableUnnecessaryOverrideRemover *)self parentTextListStyle];
  properties = [paragraphCopy properties];
  v19 = [parentTextListStyle propertiesForListLevel:{objc_msgSend(properties, "level")}];
  [v7 setParent:v19];

  [paragraphCopy changeParentParagraphPropertiesPreservingEffectiveValues:v7];
}

@end