@interface WXVmlReadClient
+ (double)wrapDistanceBottom:(id)bottom;
+ (double)wrapDistanceLeft:(id)left;
+ (double)wrapDistanceRight:(id)right;
+ (double)wrapDistanceTop:(id)top;
+ (int)horizontalPosition:(id)position;
+ (int)relativeHorizontalPosition:(id)position;
+ (int)relativeVerticalPosition:(id)position;
+ (int)verticalPosition:(id)position;
+ (void)copyFromDrawable:(id)drawable toContent:(id)content;
+ (void)initialize;
+ (void)readClientDataFromGroup:(_xmlNode *)group toGroup:(id)toGroup state:(id)state;
+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state;
+ (void)readFromDrawable:(_xmlNode *)drawable toContent:(id)content;
+ (void)readTextWrappingFromParent:(_xmlNode *)parent toAnchor:(id)anchor;
@end

@implementation WXVmlReadClient

+ (void)initialize
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)copyFromDrawable:(id)drawable toContent:(id)content
{
  contentCopy = content;
  drawableProperties = [drawable drawableProperties];
  orientedBounds = [drawableProperties orientedBounds];

  anchor = [contentCopy anchor];
  [orientedBounds bounds];
  [anchor setBounds:?];
}

+ (int)horizontalPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    v4 = [sHorizontalPositionEnumMap valueForString:positionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)relativeHorizontalPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    v4 = [sRelativeHorizontalPositionEnumMap valueForString:positionCopy];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (int)verticalPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    v4 = [sVerticalPositionEnumMap valueForString:positionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)relativeVerticalPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    v4 = [sRelativeVerticalPositionEnumMap valueForString:positionCopy];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (double)wrapDistanceLeft:(id)left
{
  leftCopy = left;
  v4 = leftCopy;
  if (leftCopy)
  {
    v5 = OAVReadLength(leftCopy);
  }

  else
  {
    v5 = 9.0;
  }

  return v5;
}

+ (double)wrapDistanceTop:(id)top
{
  topCopy = top;
  v4 = topCopy;
  if (topCopy)
  {
    v5 = OAVReadLength(topCopy);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (double)wrapDistanceRight:(id)right
{
  rightCopy = right;
  v4 = rightCopy;
  if (rightCopy)
  {
    v5 = OAVReadLength(rightCopy);
  }

  else
  {
    v5 = 9.0;
  }

  return v5;
}

+ (double)wrapDistanceBottom:(id)bottom
{
  bottomCopy = bottom;
  v4 = bottomCopy;
  if (bottomCopy)
  {
    v5 = OAVReadLength(bottomCopy);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (void)readFromDrawable:(_xmlNode *)drawable toContent:(id)content
{
  contentCopy = content;
  v6 = CXDefaultStringAttribute(drawable, CXNoNamespace, "style", 0);
  v7 = OAVReadComposite(v6);
  v8 = [v7 objectForKey:@"position"];
  v9 = [self floating:v8];

  if (v9)
  {
    createAnchor = [contentCopy createAnchor];
    v11 = [v7 objectForKey:@"mso-position-horizontal"];
    [createAnchor setHorizontalPosition:{objc_msgSend(self, "horizontalPosition:", v11)}];

    v12 = [v7 objectForKey:@"mso-position-horizontal-relative"];
    [createAnchor setRelativeHorizontalPosition:{objc_msgSend(self, "relativeHorizontalPosition:", v12)}];

    v13 = [v7 objectForKey:@"mso-position-vertical"];
    [createAnchor setVerticalPosition:{objc_msgSend(self, "verticalPosition:", v13)}];

    v14 = [v7 objectForKey:@"mso-position-vertical-relative"];
    [createAnchor setRelativeVerticalPosition:{objc_msgSend(self, "relativeVerticalPosition:", v14)}];

    v15 = [v7 objectForKey:@"mso-wrap-distance-left"];
    [self wrapDistanceLeft:v15];
    [createAnchor setWrapDistanceLeft:?];

    v16 = [v7 objectForKey:@"mso-wrap-distance-top"];
    [self wrapDistanceTop:v16];
    [createAnchor setWrapDistanceTop:?];

    v17 = [v7 objectForKey:@"mso-wrap-distance-right"];
    [self wrapDistanceRight:v17];
    [createAnchor setWrapDistanceRight:?];

    v18 = [v7 objectForKey:@"mso-wrap-distance-bottom"];
    [self wrapDistanceBottom:v18];
    [createAnchor setWrapDistanceBottom:?];

    drawable = [contentCopy drawable];
    drawableProperties = [drawable drawableProperties];
    orientedBounds = [drawableProperties orientedBounds];
    [orientedBounds bounds];
    [createAnchor setBounds:?];

    v22 = [v7 objectForKey:@"z-index"];
    [createAnchor setZIndex:{objc_msgSend(self, "zIndex:", v22)}];

    [self readTextWrappingFromParent:drawable toAnchor:createAnchor];
  }
}

+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state
{
  graphicCopy = graphic;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textBody = [graphicCopy textBody];
    properties = [textBody properties];

    if ([properties hasTextWarp])
    {
      textWarp = [properties textWarp];
      v12 = textWarp == 0;
    }

    else
    {
      v12 = 1;
    }

    [properties setIsUpright:v12];
  }

  v13 = objc_alloc_init(WDAContent);
  [(WDAContent *)v13 setDrawable:graphicCopy];
  [graphicCopy setClientData:v13];
  wxReadState = [stateCopy wxReadState];
  -[WDAContent setTextType:](v13, "setTextType:", [wxReadState currentOfficeArtTextType]);

  if (CXDefaultBoolAttribute(shape, OAVOfficeDrawingNamespace, "hr", 0))
  {
    v15 = CXDefaultLongAttribute(shape, OAVOfficeDrawingNamespace, "hrpct", 1000) / 1000.0;
    if (v15 != 0.0)
    {
      graphicProperties = [graphicCopy graphicProperties];
      orientedBounds = [graphicProperties orientedBounds];
      [orientedBounds bounds];
      v19 = v18;
      wxReadState2 = [stateCopy wxReadState];
      document = [wxReadState2 document];
      lastSection = [document lastSection];

      if ([lastSection isPageWidthOverridden])
      {
        v23 = [lastSection pageWidth] / 20.0;
      }

      else
      {
        v23 = 612.0;
      }

      if ([lastSection isLeftMarginOverridden])
      {
        v24 = [lastSection leftMargin] / 20.0;
      }

      else
      {
        v24 = 72.0;
      }

      if ([lastSection isRightMarginOverridden])
      {
        v25 = [lastSection rightMargin] / 20.0;
      }

      else
      {
        v25 = 72.0;
      }

      if ([lastSection isColumnCountOverridden])
      {
        columnCount = [lastSection columnCount];
      }

      else
      {
        columnCount = 1;
      }

      isColumnSpaceOverridden = [lastSection isColumnSpaceOverridden];
      v28 = 0.0;
      if (isColumnSpaceOverridden)
      {
        v28 = [lastSection columnSpace] / 20.0;
      }

      v29 = v19;
      v30 = [OADOrientedBounds orientedBoundsWithBounds:0.0, 0.0, ((((v23 - (v24 + v25)) - ((columnCount - 1) * v28)) / columnCount) * v15), v29];

      [graphicProperties setOrientedBounds:v30];
    }
  }

  [self readFromDrawable:shape toContent:v13];
  v31 = OCXFindChild(shape, OAVOfficeMainNamespace, "textbox");
  if (v31)
  {
    v32 = [WXTextBox readFrom:v31 parent:v13 state:stateCopy];
    wxReadState3 = [stateCopy wxReadState];
    document2 = [wxReadState3 document];
    [(WDAContent *)v13 setTextBox:v32 document:document2];

    nextTextBoxId = [v32 nextTextBoxId];
    if (nextTextBoxId == [graphicCopy id])
    {
      [v32 setNextTextBoxId:0];
    }
  }
}

+ (void)readClientDataFromGroup:(_xmlNode *)group toGroup:(id)toGroup state:(id)state
{
  toGroupCopy = toGroup;
  stateCopy = state;
  v9 = objc_alloc_init(WDAContent);
  [(WDAContent *)v9 setDrawable:toGroupCopy];
  [toGroupCopy setClientData:v9];
  wxReadState = [stateCopy wxReadState];
  -[WDAContent setTextType:](v9, "setTextType:", [wxReadState currentOfficeArtTextType]);

  [self readFromDrawable:group toContent:v9];
}

+ (void)readTextWrappingFromParent:(_xmlNode *)parent toAnchor:(id)anchor
{
  anchorCopy = anchor;
  v6 = OCXFindChild(parent, WXVmlNamespace, "wrap");
  v7 = v6;
  v8 = 0;
  v9 = 3;
  if (v6)
  {
    readEnumProperty<WDATextWrappingMode>(v6, "type", sTextWrappingModeEnumMap, &v9);
    readEnumProperty<WDATextWrappingModeType>(v7, "side", sTextWrappingSideEnumMap, &v8);
  }

  [anchorCopy setTextWrappingMode:?];
  [anchorCopy setTextWrappingModeType:v8];
}

@end