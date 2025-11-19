@interface WXOfficeArt
+ (BOOL)writeWrapTightlyWith:(id)a3 toWriter:(id)a4;
+ (id)relativeHorizontalPositionEnumMap;
+ (id)relativeVerticalPositionEnumMap;
+ (id)textWrappingModeTypeEnumMap;
+ (void)readClientData:(_xmlNode *)a3 state:(id)a4 to:(id)a5;
+ (void)readFrom:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7;
+ (void)readOAX:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7;
+ (void)readPosition:(_xmlNode *)a3 state:(id)a4 to:(id)a5 isHorizontal:(BOOL)a6;
+ (void)readVml:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7;
+ (void)readWrap:(_xmlNode *)a3 state:(id)a4 to:(id)a5;
+ (void)readWrapDistance:(_xmlNode *)a3 parentElement:(_xmlNode *)a4 state:(id)a5 to:(id)a6;
+ (void)relativeHorizontalPositionEnumMap;
+ (void)relativeVerticalPositionEnumMap;
+ (void)textWrappingModeTypeEnumMap;
+ (void)writeWrapBottomDistance:(id)a3 to:(id)a4;
+ (void)writeWrapLeftDistance:(id)a3 to:(id)a4;
+ (void)writeWrapPolygonChildren:(id)a3 to:(id)a4;
+ (void)writeWrapRightDistance:(id)a3 to:(id)a4;
+ (void)writeWrapText:(id)a3 to:(id)a4;
+ (void)writeWrapTopDistance:(id)a3 to:(id)a4;
@end

@implementation WXOfficeArt

+ (id)relativeHorizontalPositionEnumMap
{
  {
    +[WXOfficeArt relativeHorizontalPositionEnumMap];
  }

  if (+[WXOfficeArt relativeHorizontalPositionEnumMap]::onceToken != -1)
  {
    +[WXOfficeArt relativeHorizontalPositionEnumMap];
  }

  v2 = +[WXOfficeArt relativeHorizontalPositionEnumMap]::sRelativeHorizontalPositionEnumMap;

  return v2;
}

void __48__WXOfficeArt_relativeHorizontalPositionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXOfficeArt relativeHorizontalPositionEnumMap]::sRelativeHorizontalPositionStructs count:9 caseSensitive:1];
  v1 = +[WXOfficeArt relativeHorizontalPositionEnumMap]::sRelativeHorizontalPositionEnumMap;
  +[WXOfficeArt relativeHorizontalPositionEnumMap]::sRelativeHorizontalPositionEnumMap = v0;
}

+ (id)relativeVerticalPositionEnumMap
{
  {
    +[WXOfficeArt relativeVerticalPositionEnumMap];
  }

  if (+[WXOfficeArt relativeVerticalPositionEnumMap]::onceToken != -1)
  {
    +[WXOfficeArt relativeVerticalPositionEnumMap];
  }

  v2 = +[WXOfficeArt relativeVerticalPositionEnumMap]::sRelativeVerticalPositionEnumMap;

  return v2;
}

void __46__WXOfficeArt_relativeVerticalPositionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXOfficeArt relativeVerticalPositionEnumMap]::sRelativeVerticalPositionStructs count:8 caseSensitive:1];
  v1 = +[WXOfficeArt relativeVerticalPositionEnumMap]::sRelativeVerticalPositionEnumMap;
  +[WXOfficeArt relativeVerticalPositionEnumMap]::sRelativeVerticalPositionEnumMap = v0;
}

+ (id)textWrappingModeTypeEnumMap
{
  {
    +[WXOfficeArt textWrappingModeTypeEnumMap];
  }

  if (+[WXOfficeArt textWrappingModeTypeEnumMap]::onceToken != -1)
  {
    +[WXOfficeArt textWrappingModeTypeEnumMap];
  }

  v2 = +[WXOfficeArt textWrappingModeTypeEnumMap]::sTextWrappingModeTypeEnumMap;

  return v2;
}

void __42__WXOfficeArt_textWrappingModeTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXOfficeArt textWrappingModeTypeEnumMap]::sTextWrappingModeTypeStructs count:4 caseSensitive:1];
  v1 = +[WXOfficeArt textWrappingModeTypeEnumMap]::sTextWrappingModeTypeEnumMap;
  +[WXOfficeArt textWrappingModeTypeEnumMap]::sTextWrappingModeTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7
{
  v45[3] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v12 text];
  [v13 setCurrentOfficeArtTextType:{objc_msgSend(v15, "textType")}];

  if (xmlStrEqual(a3->name, "drawing"))
  {
    [a1 readOAX:a3 parentRElement:a4 parentParagraph:v12 state:v13 to:v14];
  }

  else
  {
    [a1 readVml:a3 parentRElement:a4 parentParagraph:v12 state:v13 to:v14];
  }

  [v13 setCurrentOfficeArtTextType:0xFFFFFFFFLL];
  v16 = [v13 drawingState];
  v44 = [v16 targetBlipCollection];

  v17 = [v14 drawable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v17;
    objc_opt_class();
    v39 = v17;
    v18 = [v39 imageProperties];
    v45[0] = [v18 imageFill];
    v41 = v13;
    v42 = v12;
    v40 = v14;
    v43 = v18;
    v45[1] = [v18 fill];
    v19 = [v18 stroke];
    v45[2] = [v19 fill];

    v20 = 0;
    while (1)
    {
      v21 = v45[v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v21 pattern];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v23;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
LABEL_15:
            v24 = [v22 blipRef];
            v25 = [v24 index];
            if (v25)
            {
              v26 = [v44 blipAtIndex:v25];
              v27 = objc_alloc_init(OADBlip);
              v28 = [v26 mainSubBlip];
              [(OADBlip *)v27 setMainSubBlip:v28];

              v29 = [v26 altSubBlip];
              [(OADBlip *)v27 setAltSubBlip:v29];

              *[(OADBlip *)v27 referenceCount]= 1;
              v30 = [v26 referenceCount];
              --*v30;
              v31 = [v43 imageFill];
              v32 = [v31 blipRef];

              v33 = [v32 index];
              v34 = [v32 name];
              v35 = [[OADBlipRef alloc] initWithIndex:v33 name:v34 blip:v27];
              [v22 setBlipRef:v35];
              v36 = [v32 effects];
              [(OADBlipRef *)v35 setEffects:v36];
            }
          }
        }

        else
        {
          v22 = 0;
        }
      }

      if (++v20 == 3)
      {
        v37 = 2;
        v13 = v41;
        v12 = v42;
        v14 = v40;
        do
        {
        }

        while (v37 != -1);

        v17 = v38;
        break;
      }
    }
  }
}

+ (void)readOAX:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7
{
  v18 = a6;
  v10 = a7;
  v11 = [v18 WXDrawingNamespace];
  v12 = OCXFindChild(a3, v11, "anchor");

  if (!v12)
  {
    v13 = [v18 WXDrawingNamespace];
    v12 = OCXFindChild(a3, v13, "inline");
  }

  v14 = [v18 drawingState];
  v15 = [v18 WXDrawingNamespace];
  v16 = [OAXGraphicalObject readFromParentXmlNode:v12 inNamespace:v15 drawingState:v14];

  if (v16)
  {
    [v10 setDrawable:v16];
    v17 = [v16 clientData];
    [v17 setDrawable:v16];
    [a1 readClientData:v12 state:v18 to:v17];
    [v10 setFloating:{objc_msgSend(v17, "floating")}];
  }
}

+ (void)readClientData:(_xmlNode *)a3 state:(id)a4 to:(id)a5
{
  v60 = a4;
  v57 = a5;
  v7 = [v60 WXDrawingNamespace];
  v8 = OCXFindChild(a3, v7, "docPr");

  v9 = [v57 drawable];
  [v9 id];
  v10 = CXRequiredUnsignedLongAttribute(v8, CXNoNamespace, "id");
  v11 = [v60 drawingState];
  v12 = [v11 drawableForShapeId:v10];

  if (v12)
  {
    v10 = [OADDrawable generateOADDrawableId:v9];
  }

  [v9 setId:v10];
  v13 = [v60 drawingState];
  [v13 setDrawable:v9 forShapeId:v10];

  v62 = 0;
  LODWORD(v13) = CXOptionalStringAttribute(v8, CXNoNamespace, "title", &v62);
  v59 = v62;
  if (v13)
  {
    v14 = [v9 drawableProperties];
    [v14 setAltTitle:v59];
  }

  v61 = 0;
  v15 = CXOptionalStringAttribute(v8, CXNoNamespace, "descr", &v61);
  v58 = v61;
  if (v15)
  {
    v16 = [v9 drawableProperties];
    [v16 setAltDescription:v58];
  }

  v17 = [v60 WXDrawingNamespace];
  v18 = OCXFindChild(a3, v17, "extent");

  v19 = CXRequiredLongAttribute(v18, CXNoNamespace, "cx");
  v20 = CXRequiredLongAttribute(v18, CXNoNamespace, "cy");
  v21 = v57;
  v22 = [v57 drawable];
  v23 = [v22 drawableProperties];

  if (![v23 hasOrientedBounds] || (objc_msgSend(v23, "orientedBounds"), (v24 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = objc_alloc_init(OADOrientedBounds);
    [v23 setOrientedBounds:v24];
  }

  [(OADOrientedBounds *)v24 bounds];
  v27 = v19 / 12700.0;
  v28 = v20 / 12700.0;
  if (v25 > 0.0 && v26 > 0.0)
  {
    v29 = v27 / v25;
    if (v27 / v25 >= v28 / v26)
    {
      v29 = v28 / v26;
    }

    v30 = v29;
    v31 = v30;
    v27 = v25 * v31;
    v28 = v26 * v31;
  }

  if (xmlStrEqual(a3->name, "inline"))
  {
    [(OADOrientedBounds *)v24 setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v27, v28];
  }

  else if (xmlStrEqual(a3->name, "anchor"))
  {
    v32 = [v57 createAnchor];
    v55 = v32;
    v33 = CXRequiredBoolAttribute(a3, CXNoNamespace, "behindDoc");
    [v32 setZIndex:{CXRequiredLongAttribute(a3, CXNoNamespace, "relativeHeight")}];
    if (v33)
    {
      [v32 setZIndex:{objc_msgSend(v32, "zIndex") - 503316480}];
    }

    v34 = [v60 WXDrawingNamespace];
    v35 = OCXFindChild(a3, v34, "positionH");

    if (v35)
    {
      v36 = [a1 relativeHorizontalPositionEnumMap];
      v63 = 0;
      NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v35, "relativeFrom", &v63);
      v38 = v63;
      v39 = -130883970;
      if (NSStringAnyNsProp)
      {
        v39 = [v36 valueForString:v38];
      }

      v32 = v55;
      if (v39 != -130883970)
      {
        v40 = [v57 anchor];
        v41 = v40;
        if (v39 == 5)
        {
          v42 = 4;
        }

        else
        {
          v42 = v39;
        }

        [v40 setRelativeHorizontalPosition:v42];
      }

      [a1 readPosition:v35 state:v60 to:v55 isHorizontal:1];
    }

    v43 = [v60 WXDrawingNamespace];
    v44 = OCXFindChild(a3, v43, "positionV");

    if (v44)
    {
      v45 = [a1 relativeVerticalPositionEnumMap];
      v63 = 0;
      v46 = sfaxmlGetNSStringAnyNsProp(v44, "relativeFrom", &v63);
      v47 = v63;
      v48 = -130883970;
      if (v46)
      {
        v48 = [v45 valueForString:v47];
      }

      v32 = v55;
      if (v48 != -130883970)
      {
        v49 = [v57 anchor];
        [v49 setRelativeVerticalPosition:v48];
      }

      [a1 readPosition:v44 state:v60 to:v55 isHorizontal:0];
    }

    v21 = v57;
    v50 = [v57 anchor];
    [a1 readWrap:a3 state:v60 to:v50];

    [v32 bounds];
    v52 = v51;
    v54 = v53;
    [(OADOrientedBounds *)v24 setBounds:?];
    [v32 setBounds:{v52, v54, v27, v28}];
  }
}

+ (void)readPosition:(_xmlNode *)a3 state:(id)a4 to:(id)a5 isHorizontal:(BOOL)a6
{
  v6 = a6;
  v40 = a4;
  v9 = a5;
  v10 = [v40 WXDrawingNamespace];
  v11 = OCXFindChild(a3, v10, "align");

  v12 = [v40 WXDrawingNamespace];
  v13 = OCXFindChild(a3, v12, "offset");

  v14 = [v40 WXDrawingNamespace];
  v15 = OCXFindChild(a3, v14, "posOffset");

  if (v11)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v11];
    v17 = v16;
    if (v6)
    {
      if ([v16 isEqualToString:@"left"])
      {
        v18 = 1;
      }

      else if ([v17 isEqualToString:@"center"])
      {
        v18 = 2;
      }

      else if ([v17 isEqualToString:@"right"])
      {
        v18 = 3;
      }

      else if ([v17 isEqualToString:@"inside"])
      {
        v18 = 4;
      }

      else if ([v17 isEqualToString:@"outside"])
      {
        v18 = 5;
      }

      else
      {
        v18 = 1;
      }

      [v9 setHorizontalPosition:v18];
    }

    else
    {
      if ([v16 isEqualToString:@"top"])
      {
        v28 = 1;
      }

      else if ([v17 isEqualToString:@"center"])
      {
        v28 = 2;
      }

      else if ([v17 isEqualToString:@"bottom"])
      {
        v28 = 3;
      }

      else if ([v17 isEqualToString:@"inside"])
      {
        v28 = 4;
      }

      else if ([v17 isEqualToString:@"outside"])
      {
        v28 = 5;
      }

      else
      {
        v28 = 1;
      }

      [v9 setVerticalPosition:v28];
    }
  }

  else if (v13)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v13];
    [v9 bounds];
    v22 = v21;
    v24 = v23;
    if (v6)
    {
      v25 = v20;
      v26 = [v17 intValue];
      [v9 setHorizontalPosition:0];
      v27 = v26 / 12700.0;
    }

    else
    {
      v27 = v19;
      v38 = [v17 intValue];
      [v9 setVerticalPosition:0];
      v25 = v38 / 12700.0;
    }

    [v9 setBounds:{v27, v25, v22, v24}];
  }

  else if (v15)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v15];
    [v9 bounds];
    v32 = v31;
    v34 = v33;
    if (v6)
    {
      v35 = v30;
      [v17 doubleValue];
      v37 = v36 / 12700.0;
    }

    else
    {
      v37 = v29;
      [v17 doubleValue];
      v35 = v39 / 12700.0;
    }

    [v9 setBounds:{v37, v35, v32, v34}];
  }

  else
  {
    v17 = 0;
  }
}

+ (void)readWrap:(_xmlNode *)a3 state:(id)a4 to:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 WXDrawingNamespace];
  v11 = OCXFindChild(a3, v10, "wrapNone");

  if (v11)
  {
    [v9 setTextWrappingMode:3];
  }

  else
  {
    v12 = [v8 WXDrawingNamespace];
    v13 = OCXFindChild(a3, v12, "wrapSquare");

    if (v13)
    {
      [v9 setTextWrappingMode:2];
      [a1 readWrapDistance:v13 parentElement:a3 state:v8 to:v9];
      v28 = 0;
      v14 = [a1 textWrappingModeTypeEnumMap];
      v15 = readEnumProperty<WDATextWrappingModeType>(v13, "wrapText", v14, &v28);

      if (v15)
      {
        [v9 setTextWrappingModeType:v28];
      }
    }

    else
    {
      v16 = [v8 WXDrawingNamespace];
      v17 = OCXFindChild(a3, v16, "wrapThrough");

      if (v17)
      {
        [v9 setTextWrappingMode:5];
        [a1 readWrapDistance:v17 parentElement:a3 state:v8 to:v9];
        v27 = 0;
        v18 = [a1 textWrappingModeTypeEnumMap];
        v19 = readEnumProperty<WDATextWrappingModeType>(v17, "wrapText", v18, &v27);

        if (v19)
        {
          [v9 setTextWrappingModeType:v27];
        }
      }

      else
      {
        v20 = [v8 WXDrawingNamespace];
        v21 = OCXFindChild(a3, v20, "wrapTight");

        if (v21)
        {
          [v9 setTextWrappingMode:4];
          [a1 readWrapDistance:v21 parentElement:a3 state:v8 to:v9];
          v26 = 0;
          v22 = [a1 textWrappingModeTypeEnumMap];
          v23 = readEnumProperty<WDATextWrappingModeType>(v21, "wrapText", v22, &v26);

          if (v23)
          {
            [v9 setTextWrappingModeType:v26];
          }
        }

        else
        {
          v24 = [v8 WXDrawingNamespace];
          v25 = OCXFindChild(a3, v24, "wrapTopAndBottom");

          if (v25)
          {
            [v9 setTextWrappingMode:1];
            [a1 readWrapDistance:v25 parentElement:a3 state:v8 to:v9];
          }
        }
      }
    }
  }
}

+ (void)readWrapDistance:(_xmlNode *)a3 parentElement:(_xmlNode *)a4 state:(id)a5 to:(id)a6
{
  v9 = a5;
  v10 = a6;
  v17 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "distB", &v17) || CXOptionalLongAttribute(a4, CXNoNamespace, "distB", &v17))
  {
    [v10 setWrapDistanceBottom:v17 / 12700.0];
  }

  v11 = [v9 WXDrawingNamespace];
  v12 = CXOptionalLongAttribute(a3, v11, "distL", &v17);

  if (v12 || CXOptionalLongAttribute(a4, CXNoNamespace, "distL", &v17))
  {
    [v10 setWrapDistanceLeft:v17 / 12700.0];
  }

  v13 = [v9 WXDrawingNamespace];
  v14 = CXOptionalLongAttribute(a3, v13, "distR", &v17);

  if (v14 || CXOptionalLongAttribute(a4, CXNoNamespace, "distR", &v17))
  {
    [v10 setWrapDistanceRight:v17 / 12700.0];
  }

  v15 = [v9 WXDrawingNamespace];
  v16 = CXOptionalLongAttribute(a3, v15, "distT", &v17);

  if (v16 || CXOptionalLongAttribute(a4, CXNoNamespace, "distT", &v17))
  {
    [v10 setWrapDistanceTop:v17 / 12700.0];
  }
}

+ (void)writeWrapText:(id)a3 to:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7)
  {
    v6 = +[WDAAnchor stringForTextWrappingModeType:](WDAAnchor, "stringForTextWrappingModeType:", [v7 textWrappingModeType]);
    [v5 writeAttribute:@"wrapText" content:v6 prefix:0 ns:0];
  }
}

+ (void)writeWrapLeftDistance:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    [v8 wrapDistanceLeft];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [v5 writeAttribute:@"distL" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapRightDistance:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    [v8 wrapDistanceRight];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [v5 writeAttribute:@"distR" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapTopDistance:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    [v8 wrapDistanceTop];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [v5 writeAttribute:@"distT" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapBottomDistance:(id)a3 to:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    [v8 wrapDistanceBottom];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [v5 writeAttribute:@"distB" content:v7 prefix:0 ns:0];
  }
}

+ (void)readVml:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 parentParagraph:(id)a5 state:(id)a6 to:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  [v11 wxoavState];
  v46 = v48 = v11;
  [v46 setCurrentParagraph:v10];
  v13 = [OAVDrawable readDrawablesFromParent:a3 inNamespace:OAVOfficeDrawingNamespace state:v46];
  [v46 setCurrentParagraph:0];
  v14 = OCXFindChild(a3, OAVOfficeDrawingNamespace, "OLEObject");
  v15 = v14;
  if (!v14)
  {
    goto LABEL_23;
  }

  v16 = CXDefaultStringAttribute(v14, CXNoNamespace, "ProgID", 0);
  v45 = [v48 packagePart];
  v47 = [v48 OCXReadRelationshipForNode:v15 packagePart:v45];
  v17 = [OADOle isProgIDChart:v16];
  if (v47)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v24 = 0;
LABEL_14:
    v27 = objc_alloc_init(OADOle);
    v28 = v27;
    if (v24)
    {
      [(OADOle *)v27 setObject:v24];
    }

    v25 = v28;
    if (v16)
    {
      [(OADOle *)v28 setAnsiProgID:v16];
    }

    goto LABEL_18;
  }

  context = objc_autoreleasePoolPush();
  v44 = [v45 package];
  v19 = [v47 targetLocation];
  v20 = [v44 partForLocation:v19];

  v42 = v20;
  v43 = [v20 data];
  if ([v16 hasSuffix:@".12"])
  {
    v21 = [EXReader alloc];
    v22 = [v48 cancelDelegate];
    v23 = [(OCDReader *)v21 initWithCancelDelegate:v22];

    if ([(OCXReader *)v23 start])
    {
      [(OCDReader *)v23 setData:v43];
      v24 = [(EXReader *)v23 read];
    }

    else
    {
      v24 = 0;
    }

    v25 = 0;
  }

  else
  {
    v23 = [v48 cancelDelegate];
    v25 = [OABOle readFromData:v43 cancel:v23];
    v24 = 0;
  }

  v26 = [v47 targetLocation];
  [v44 resetPartForLocation:v26];

  objc_autoreleasePoolPop(context);
  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_18:
  v49 = 0;
  v29 = CXOptionalStringAttribute(v15, CXNoNamespace, "ShapeID", &v49);
  v30 = v49;
  if (v29)
  {
    v31 = [v46 drawableForVmlShapeId:v30];
    v32 = objc_opt_class();
    v33 = TSUDynamicCast(v32, v31);
    v34 = v33;
    if (v33)
    {
      [v33 setOle:v25];
    }
  }

LABEL_23:
  v35 = [v13 count];
  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = [v13 objectAtIndex:v36];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setDrawable:v37];
        v38 = [v37 clientData];
        [v38 setDrawable:v37];
        [v12 setFloating:{objc_msgSend(v38, "floating")}];
        v39 = [v38 textBox];
        if (v39)
        {
          v40 = [v10 document];
          [v39 setDocument:v40];
        }
      }

      ++v36;
    }

    while (v35 != v36);
  }
}

+ (BOOL)writeWrapTightlyWith:(id)a3 toWriter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 textWrapPoints];
  if ([v8 count] < 3)
  {

    goto LABEL_5;
  }

  if ([v6 textWrappingMode] != 4)
  {
    v10 = [v6 textWrappingMode];

    if (v10 == 5)
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_7:
  if ([v6 textWrappingMode] == 4)
  {
    v11 = @"wrapTight";
  }

  else
  {
    v11 = @"wrapThrough";
  }

  [v7 startElement:v11 prefix:@"wp" ns:0];
  [a1 writeWrapText:v6 to:v7];
  [a1 writeWrapLeftDistance:v6 to:v7];
  [a1 writeWrapRightDistance:v6 to:v7];
  [v7 startElement:@"wrapPolygon" prefix:@"wp" ns:0];
  [v7 writeAttribute:@"edited" BOOLContent:1 prefix:0 ns:0];
  v12 = [v6 textWrapPoints];
  [a1 writeWrapPolygonChildren:v12 to:v7];

  [v7 endElement];
  [v7 endElement];
  v9 = 1;
LABEL_11:

  return v9;
}

+ (void)writeWrapPolygonChildren:(id)a3 to:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v16 count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v16 objectAtIndexedSubscript:i];
      [v8 CGPointValue];
      v10 = v9;
      v12 = v11;

      v13 = -2.72730423e13;
      if (v10 >= -2.72730423e13)
      {
        v13 = v10;
        if (v10 > 2.72730423e13)
        {
          v13 = 2.72730423e13;
        }
      }

      v14 = -2.72730423e13;
      if (v12 >= -2.72730423e13)
      {
        v14 = v12;
        if (v12 > 2.72730423e13)
        {
          v14 = 2.72730423e13;
        }
      }

      if (i)
      {
        v15 = @"lineTo";
      }

      else
      {
        v15 = @"start";
      }

      [v5 startElement:v15 prefix:@"wp" ns:0];
      [v5 writeAttribute:@"x" intContent:v13 prefix:0 ns:0];
      [v5 writeAttribute:@"y" intContent:v14 prefix:0 ns:0];
      [v5 endElement];
    }
  }
}

+ (void)relativeHorizontalPositionEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_38, 0, &dword_25D297000);
  }
}

+ (void)relativeVerticalPositionEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_38_0, 0, &dword_25D297000);
  }
}

+ (void)textWrappingModeTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_53_0, 0, &dword_25D297000);
  }
}

@end