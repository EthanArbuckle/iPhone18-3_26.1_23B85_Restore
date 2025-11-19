@interface OADTableStyleFlattener
- (void)applyCellPropertiesToTextBodyPropertiesInCell:(id)a3;
- (void)applyResolvedPartStyle:(id)a3 leftStroke:(id)a4 rightStroke:(id)a5 topStroke:(id)a6 bottomStroke:(id)a7 toCell:(id)a8;
- (void)applyTextStyle:(id)a3 toParagraph:(id)a4;
@end

@implementation OADTableStyleFlattener

- (void)applyCellPropertiesToTextBodyPropertiesInCell:(id)a3
{
  v7 = a3;
  v3 = [v7 properties];
  v4 = [v7 textBody];
  v5 = [v4 properties];

  v6 = [v5 parent];
  [v5 setParent:0];
  if ([v3 isLeftMarginOverridden] && (objc_msgSend(v5, "hasLeftInset") & 1) == 0)
  {
    [v3 leftMargin];
    [v5 setLeftInset:?];
  }

  if ([v3 isRightMarginOverridden] && (objc_msgSend(v5, "hasRightInset") & 1) == 0)
  {
    [v3 rightMargin];
    [v5 setRightInset:?];
  }

  if ([v3 isTopMarginOverridden] && (objc_msgSend(v5, "hasTopInset") & 1) == 0)
  {
    [v3 topMargin];
    [v5 setTopInset:?];
  }

  if ([v3 isBottomMarginOverridden] && (objc_msgSend(v5, "hasBottomInset") & 1) == 0)
  {
    [v3 bottomMargin];
    [v5 setBottomInset:?];
  }

  if ([v3 isTextFlowOverridden] && (objc_msgSend(v5, "hasFlowType") & 1) == 0)
  {
    [v5 setFlowType:{objc_msgSend(v3, "textFlow")}];
  }

  if ([v3 isTextAnchorOverridden] && (objc_msgSend(v5, "hasTextAnchorType") & 1) == 0)
  {
    [v5 setTextAnchorType:{objc_msgSend(v3, "textAnchor")}];
  }

  if ([v3 isTextAnchorCenterOverridden] && (objc_msgSend(v5, "hasIsAnchorCenter") & 1) == 0)
  {
    [v5 setIsAnchorCenter:{objc_msgSend(v3, "textAnchorCenter")}];
  }

  if ([v3 isTextHorizontalOverflowOverridden] && (objc_msgSend(v5, "hasHorizontalOverflowType") & 1) == 0)
  {
    [v5 setHorizontalOverflowType:{objc_msgSend(v3, "textHorizontalOverflow")}];
  }

  if ([v3 isTextAnchorCenterOverridden] && (objc_msgSend(v5, "hasIsAnchorCenter") & 1) == 0)
  {
    [v5 setIsAnchorCenter:{objc_msgSend(v3, "textAnchorCenter")}];
  }

  [v5 setParent:v6];
}

- (void)applyResolvedPartStyle:(id)a3 leftStroke:(id)a4 rightStroke:(id)a5 topStroke:(id)a6 bottomStroke:(id)a7 toCell:(id)a8
{
  v28 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v18 properties];
  [(OADTableStyleFlattener *)self applyCellPropertiesToTextBodyPropertiesInCell:v18];
  v20 = [v28 textStyle];
  [(OADTableStyleResolver *)self applyTextStyle:v20 toCell:v18];

  v21 = [v19 fill];

  if (!v21)
  {
    v22 = [v28 cellStyle];
    v23 = [v22 fill];
    [v19 setFill:v23];
  }

  v24 = [v19 leftStroke];

  if (!v24)
  {
    [v19 setLeftStroke:v14];
  }

  v25 = [v19 rightStroke];

  if (!v25)
  {
    [v19 setRightStroke:v15];
  }

  v26 = [v19 topStroke];

  if (!v26)
  {
    [v19 setTopStroke:v16];
  }

  v27 = [v19 bottomStroke];

  if (!v27)
  {
    [v19 setBottomStroke:v17];
  }
}

- (void)applyTextStyle:(id)a3 toParagraph:(id)a4
{
  v6 = a3;
  v5 = [a4 properties];
  [OADTable applyTextStyle:v6 toParagraphProperties:v5];
}

@end