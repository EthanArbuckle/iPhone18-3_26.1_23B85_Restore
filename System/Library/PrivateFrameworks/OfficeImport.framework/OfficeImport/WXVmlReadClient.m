@interface WXVmlReadClient
+ (double)wrapDistanceBottom:(id)a3;
+ (double)wrapDistanceLeft:(id)a3;
+ (double)wrapDistanceRight:(id)a3;
+ (double)wrapDistanceTop:(id)a3;
+ (int)horizontalPosition:(id)a3;
+ (int)relativeHorizontalPosition:(id)a3;
+ (int)relativeVerticalPosition:(id)a3;
+ (int)verticalPosition:(id)a3;
+ (void)copyFromDrawable:(id)a3 toContent:(id)a4;
+ (void)initialize;
+ (void)readClientDataFromGroup:(_xmlNode *)a3 toGroup:(id)a4 state:(id)a5;
+ (void)readClientDataFromShape:(_xmlNode *)a3 toGraphic:(id)a4 state:(id)a5;
+ (void)readFromDrawable:(_xmlNode *)a3 toContent:(id)a4;
+ (void)readTextWrappingFromParent:(_xmlNode *)a3 toAnchor:(id)a4;
@end

@implementation WXVmlReadClient

+ (void)initialize
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)copyFromDrawable:(id)a3 toContent:(id)a4
{
  v8 = a4;
  v5 = [a3 drawableProperties];
  v6 = [v5 orientedBounds];

  v7 = [v8 anchor];
  [v6 bounds];
  [v7 setBounds:?];
}

+ (int)horizontalPosition:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [sHorizontalPositionEnumMap valueForString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)relativeHorizontalPosition:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [sRelativeHorizontalPositionEnumMap valueForString:v3];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (int)verticalPosition:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [sVerticalPositionEnumMap valueForString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)relativeVerticalPosition:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [sRelativeVerticalPositionEnumMap valueForString:v3];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (double)wrapDistanceLeft:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = OAVReadLength(v3);
  }

  else
  {
    v5 = 9.0;
  }

  return v5;
}

+ (double)wrapDistanceTop:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = OAVReadLength(v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (double)wrapDistanceRight:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = OAVReadLength(v3);
  }

  else
  {
    v5 = 9.0;
  }

  return v5;
}

+ (double)wrapDistanceBottom:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = OAVReadLength(v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (void)readFromDrawable:(_xmlNode *)a3 toContent:(id)a4
{
  v23 = a4;
  v6 = CXDefaultStringAttribute(a3, CXNoNamespace, "style", 0);
  v7 = OAVReadComposite(v6);
  v8 = [v7 objectForKey:@"position"];
  v9 = [a1 floating:v8];

  if (v9)
  {
    v10 = [v23 createAnchor];
    v11 = [v7 objectForKey:@"mso-position-horizontal"];
    [v10 setHorizontalPosition:{objc_msgSend(a1, "horizontalPosition:", v11)}];

    v12 = [v7 objectForKey:@"mso-position-horizontal-relative"];
    [v10 setRelativeHorizontalPosition:{objc_msgSend(a1, "relativeHorizontalPosition:", v12)}];

    v13 = [v7 objectForKey:@"mso-position-vertical"];
    [v10 setVerticalPosition:{objc_msgSend(a1, "verticalPosition:", v13)}];

    v14 = [v7 objectForKey:@"mso-position-vertical-relative"];
    [v10 setRelativeVerticalPosition:{objc_msgSend(a1, "relativeVerticalPosition:", v14)}];

    v15 = [v7 objectForKey:@"mso-wrap-distance-left"];
    [a1 wrapDistanceLeft:v15];
    [v10 setWrapDistanceLeft:?];

    v16 = [v7 objectForKey:@"mso-wrap-distance-top"];
    [a1 wrapDistanceTop:v16];
    [v10 setWrapDistanceTop:?];

    v17 = [v7 objectForKey:@"mso-wrap-distance-right"];
    [a1 wrapDistanceRight:v17];
    [v10 setWrapDistanceRight:?];

    v18 = [v7 objectForKey:@"mso-wrap-distance-bottom"];
    [a1 wrapDistanceBottom:v18];
    [v10 setWrapDistanceBottom:?];

    v19 = [v23 drawable];
    v20 = [v19 drawableProperties];
    v21 = [v20 orientedBounds];
    [v21 bounds];
    [v10 setBounds:?];

    v22 = [v7 objectForKey:@"z-index"];
    [v10 setZIndex:{objc_msgSend(a1, "zIndex:", v22)}];

    [a1 readTextWrappingFromParent:a3 toAnchor:v10];
  }
}

+ (void)readClientDataFromShape:(_xmlNode *)a3 toGraphic:(id)a4 state:(id)a5
{
  v36 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v36 textBody];
    v10 = [v9 properties];

    if ([v10 hasTextWarp])
    {
      v11 = [v10 textWarp];
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    [v10 setIsUpright:v12];
  }

  v13 = objc_alloc_init(WDAContent);
  [(WDAContent *)v13 setDrawable:v36];
  [v36 setClientData:v13];
  v14 = [v8 wxReadState];
  -[WDAContent setTextType:](v13, "setTextType:", [v14 currentOfficeArtTextType]);

  if (CXDefaultBoolAttribute(a3, OAVOfficeDrawingNamespace, "hr", 0))
  {
    v15 = CXDefaultLongAttribute(a3, OAVOfficeDrawingNamespace, "hrpct", 1000) / 1000.0;
    if (v15 != 0.0)
    {
      v16 = [v36 graphicProperties];
      v17 = [v16 orientedBounds];
      [v17 bounds];
      v19 = v18;
      v20 = [v8 wxReadState];
      v21 = [v20 document];
      v22 = [v21 lastSection];

      if ([v22 isPageWidthOverridden])
      {
        v23 = [v22 pageWidth] / 20.0;
      }

      else
      {
        v23 = 612.0;
      }

      if ([v22 isLeftMarginOverridden])
      {
        v24 = [v22 leftMargin] / 20.0;
      }

      else
      {
        v24 = 72.0;
      }

      if ([v22 isRightMarginOverridden])
      {
        v25 = [v22 rightMargin] / 20.0;
      }

      else
      {
        v25 = 72.0;
      }

      if ([v22 isColumnCountOverridden])
      {
        v26 = [v22 columnCount];
      }

      else
      {
        v26 = 1;
      }

      v27 = [v22 isColumnSpaceOverridden];
      v28 = 0.0;
      if (v27)
      {
        v28 = [v22 columnSpace] / 20.0;
      }

      v29 = v19;
      v30 = [OADOrientedBounds orientedBoundsWithBounds:0.0, 0.0, ((((v23 - (v24 + v25)) - ((v26 - 1) * v28)) / v26) * v15), v29];

      [v16 setOrientedBounds:v30];
    }
  }

  [a1 readFromDrawable:a3 toContent:v13];
  v31 = OCXFindChild(a3, OAVOfficeMainNamespace, "textbox");
  if (v31)
  {
    v32 = [WXTextBox readFrom:v31 parent:v13 state:v8];
    v33 = [v8 wxReadState];
    v34 = [v33 document];
    [(WDAContent *)v13 setTextBox:v32 document:v34];

    v35 = [v32 nextTextBoxId];
    if (v35 == [v36 id])
    {
      [v32 setNextTextBoxId:0];
    }
  }
}

+ (void)readClientDataFromGroup:(_xmlNode *)a3 toGroup:(id)a4 state:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = objc_alloc_init(WDAContent);
  [(WDAContent *)v9 setDrawable:v11];
  [v11 setClientData:v9];
  v10 = [v8 wxReadState];
  -[WDAContent setTextType:](v9, "setTextType:", [v10 currentOfficeArtTextType]);

  [a1 readFromDrawable:a3 toContent:v9];
}

+ (void)readTextWrappingFromParent:(_xmlNode *)a3 toAnchor:(id)a4
{
  v5 = a4;
  v6 = OCXFindChild(a3, WXVmlNamespace, "wrap");
  v7 = v6;
  v8 = 0;
  v9 = 3;
  if (v6)
  {
    readEnumProperty<WDATextWrappingMode>(v6, "type", sTextWrappingModeEnumMap, &v9);
    readEnumProperty<WDATextWrappingModeType>(v7, "side", sTextWrappingSideEnumMap, &v8);
  }

  [v5 setTextWrappingMode:?];
  [v5 setTextWrappingModeType:v8];
}

@end