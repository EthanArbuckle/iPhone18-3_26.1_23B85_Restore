@interface WXOfficeArt
+ (BOOL)writeWrapTightlyWith:(id)with toWriter:(id)writer;
+ (id)relativeHorizontalPositionEnumMap;
+ (id)relativeVerticalPositionEnumMap;
+ (id)textWrappingModeTypeEnumMap;
+ (void)readClientData:(_xmlNode *)data state:(id)state to:(id)to;
+ (void)readFrom:(_xmlNode *)from parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to;
+ (void)readOAX:(_xmlNode *)x parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to;
+ (void)readPosition:(_xmlNode *)position state:(id)state to:(id)to isHorizontal:(BOOL)horizontal;
+ (void)readVml:(_xmlNode *)vml parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to;
+ (void)readWrap:(_xmlNode *)wrap state:(id)state to:(id)to;
+ (void)readWrapDistance:(_xmlNode *)distance parentElement:(_xmlNode *)element state:(id)state to:(id)to;
+ (void)relativeHorizontalPositionEnumMap;
+ (void)relativeVerticalPositionEnumMap;
+ (void)textWrappingModeTypeEnumMap;
+ (void)writeWrapBottomDistance:(id)distance to:(id)to;
+ (void)writeWrapLeftDistance:(id)distance to:(id)to;
+ (void)writeWrapPolygonChildren:(id)children to:(id)to;
+ (void)writeWrapRightDistance:(id)distance to:(id)to;
+ (void)writeWrapText:(id)text to:(id)to;
+ (void)writeWrapTopDistance:(id)distance to:(id)to;
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

+ (void)readFrom:(_xmlNode *)from parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to
{
  v45[3] = *MEMORY[0x277D85DE8];
  paragraphCopy = paragraph;
  stateCopy = state;
  toCopy = to;
  text = [paragraphCopy text];
  [stateCopy setCurrentOfficeArtTextType:{objc_msgSend(text, "textType")}];

  if (xmlStrEqual(from->name, "drawing"))
  {
    [self readOAX:from parentRElement:element parentParagraph:paragraphCopy state:stateCopy to:toCopy];
  }

  else
  {
    [self readVml:from parentRElement:element parentParagraph:paragraphCopy state:stateCopy to:toCopy];
  }

  [stateCopy setCurrentOfficeArtTextType:0xFFFFFFFFLL];
  drawingState = [stateCopy drawingState];
  targetBlipCollection = [drawingState targetBlipCollection];

  drawable = [toCopy drawable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = drawable;
    objc_opt_class();
    v39 = drawable;
    imageProperties = [v39 imageProperties];
    v45[0] = [imageProperties imageFill];
    v41 = stateCopy;
    v42 = paragraphCopy;
    v40 = toCopy;
    v43 = imageProperties;
    v45[1] = [imageProperties fill];
    stroke = [imageProperties stroke];
    v45[2] = [stroke fill];

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
          pattern = [v21 pattern];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = pattern;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
LABEL_15:
            blipRef = [v22 blipRef];
            index = [blipRef index];
            if (index)
            {
              v26 = [targetBlipCollection blipAtIndex:index];
              v27 = objc_alloc_init(OADBlip);
              mainSubBlip = [v26 mainSubBlip];
              [(OADBlip *)v27 setMainSubBlip:mainSubBlip];

              altSubBlip = [v26 altSubBlip];
              [(OADBlip *)v27 setAltSubBlip:altSubBlip];

              *[(OADBlip *)v27 referenceCount]= 1;
              referenceCount = [v26 referenceCount];
              --*referenceCount;
              imageFill = [v43 imageFill];
              blipRef2 = [imageFill blipRef];

              index2 = [blipRef2 index];
              name = [blipRef2 name];
              v35 = [[OADBlipRef alloc] initWithIndex:index2 name:name blip:v27];
              [v22 setBlipRef:v35];
              effects = [blipRef2 effects];
              [(OADBlipRef *)v35 setEffects:effects];
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
        stateCopy = v41;
        paragraphCopy = v42;
        toCopy = v40;
        do
        {
        }

        while (v37 != -1);

        drawable = v38;
        break;
      }
    }
  }
}

+ (void)readOAX:(_xmlNode *)x parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to
{
  stateCopy = state;
  toCopy = to;
  wXDrawingNamespace = [stateCopy WXDrawingNamespace];
  v12 = OCXFindChild(x, wXDrawingNamespace, "anchor");

  if (!v12)
  {
    wXDrawingNamespace2 = [stateCopy WXDrawingNamespace];
    v12 = OCXFindChild(x, wXDrawingNamespace2, "inline");
  }

  drawingState = [stateCopy drawingState];
  wXDrawingNamespace3 = [stateCopy WXDrawingNamespace];
  v16 = [OAXGraphicalObject readFromParentXmlNode:v12 inNamespace:wXDrawingNamespace3 drawingState:drawingState];

  if (v16)
  {
    [toCopy setDrawable:v16];
    clientData = [v16 clientData];
    [clientData setDrawable:v16];
    [self readClientData:v12 state:stateCopy to:clientData];
    [toCopy setFloating:{objc_msgSend(clientData, "floating")}];
  }
}

+ (void)readClientData:(_xmlNode *)data state:(id)state to:(id)to
{
  stateCopy = state;
  toCopy = to;
  wXDrawingNamespace = [stateCopy WXDrawingNamespace];
  v8 = OCXFindChild(data, wXDrawingNamespace, "docPr");

  drawable = [toCopy drawable];
  [drawable id];
  v10 = CXRequiredUnsignedLongAttribute(v8, CXNoNamespace, "id");
  drawingState = [stateCopy drawingState];
  v12 = [drawingState drawableForShapeId:v10];

  if (v12)
  {
    v10 = [OADDrawable generateOADDrawableId:drawable];
  }

  [drawable setId:v10];
  drawingState2 = [stateCopy drawingState];
  [drawingState2 setDrawable:drawable forShapeId:v10];

  v62 = 0;
  LODWORD(drawingState2) = CXOptionalStringAttribute(v8, CXNoNamespace, "title", &v62);
  v59 = v62;
  if (drawingState2)
  {
    drawableProperties = [drawable drawableProperties];
    [drawableProperties setAltTitle:v59];
  }

  v61 = 0;
  v15 = CXOptionalStringAttribute(v8, CXNoNamespace, "descr", &v61);
  v58 = v61;
  if (v15)
  {
    drawableProperties2 = [drawable drawableProperties];
    [drawableProperties2 setAltDescription:v58];
  }

  wXDrawingNamespace2 = [stateCopy WXDrawingNamespace];
  v18 = OCXFindChild(data, wXDrawingNamespace2, "extent");

  v19 = CXRequiredLongAttribute(v18, CXNoNamespace, "cx");
  v20 = CXRequiredLongAttribute(v18, CXNoNamespace, "cy");
  v21 = toCopy;
  drawable2 = [toCopy drawable];
  drawableProperties3 = [drawable2 drawableProperties];

  if (![drawableProperties3 hasOrientedBounds] || (objc_msgSend(drawableProperties3, "orientedBounds"), (v24 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = objc_alloc_init(OADOrientedBounds);
    [drawableProperties3 setOrientedBounds:v24];
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

  if (xmlStrEqual(data->name, "inline"))
  {
    [(OADOrientedBounds *)v24 setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v27, v28];
  }

  else if (xmlStrEqual(data->name, "anchor"))
  {
    createAnchor = [toCopy createAnchor];
    v55 = createAnchor;
    v33 = CXRequiredBoolAttribute(data, CXNoNamespace, "behindDoc");
    [createAnchor setZIndex:{CXRequiredLongAttribute(data, CXNoNamespace, "relativeHeight")}];
    if (v33)
    {
      [createAnchor setZIndex:{objc_msgSend(createAnchor, "zIndex") - 503316480}];
    }

    wXDrawingNamespace3 = [stateCopy WXDrawingNamespace];
    v35 = OCXFindChild(data, wXDrawingNamespace3, "positionH");

    if (v35)
    {
      relativeHorizontalPositionEnumMap = [self relativeHorizontalPositionEnumMap];
      v63 = 0;
      NSStringAnyNsProp = sfaxmlGetNSStringAnyNsProp(v35, "relativeFrom", &v63);
      v38 = v63;
      v39 = -130883970;
      if (NSStringAnyNsProp)
      {
        v39 = [relativeHorizontalPositionEnumMap valueForString:v38];
      }

      createAnchor = v55;
      if (v39 != -130883970)
      {
        anchor = [toCopy anchor];
        v41 = anchor;
        if (v39 == 5)
        {
          v42 = 4;
        }

        else
        {
          v42 = v39;
        }

        [anchor setRelativeHorizontalPosition:v42];
      }

      [self readPosition:v35 state:stateCopy to:v55 isHorizontal:1];
    }

    wXDrawingNamespace4 = [stateCopy WXDrawingNamespace];
    v44 = OCXFindChild(data, wXDrawingNamespace4, "positionV");

    if (v44)
    {
      relativeVerticalPositionEnumMap = [self relativeVerticalPositionEnumMap];
      v63 = 0;
      v46 = sfaxmlGetNSStringAnyNsProp(v44, "relativeFrom", &v63);
      v47 = v63;
      v48 = -130883970;
      if (v46)
      {
        v48 = [relativeVerticalPositionEnumMap valueForString:v47];
      }

      createAnchor = v55;
      if (v48 != -130883970)
      {
        anchor2 = [toCopy anchor];
        [anchor2 setRelativeVerticalPosition:v48];
      }

      [self readPosition:v44 state:stateCopy to:v55 isHorizontal:0];
    }

    v21 = toCopy;
    anchor3 = [toCopy anchor];
    [self readWrap:data state:stateCopy to:anchor3];

    [createAnchor bounds];
    v52 = v51;
    v54 = v53;
    [(OADOrientedBounds *)v24 setBounds:?];
    [createAnchor setBounds:{v52, v54, v27, v28}];
  }
}

+ (void)readPosition:(_xmlNode *)position state:(id)state to:(id)to isHorizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  stateCopy = state;
  toCopy = to;
  wXDrawingNamespace = [stateCopy WXDrawingNamespace];
  v11 = OCXFindChild(position, wXDrawingNamespace, "align");

  wXDrawingNamespace2 = [stateCopy WXDrawingNamespace];
  v13 = OCXFindChild(position, wXDrawingNamespace2, "offset");

  wXDrawingNamespace3 = [stateCopy WXDrawingNamespace];
  v15 = OCXFindChild(position, wXDrawingNamespace3, "posOffset");

  if (v11)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v11];
    v17 = v16;
    if (horizontalCopy)
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

      [toCopy setHorizontalPosition:v18];
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

      [toCopy setVerticalPosition:v28];
    }
  }

  else if (v13)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v13];
    [toCopy bounds];
    v22 = v21;
    v24 = v23;
    if (horizontalCopy)
    {
      v25 = v20;
      intValue = [v17 intValue];
      [toCopy setHorizontalPosition:0];
      v27 = intValue / 12700.0;
    }

    else
    {
      v27 = v19;
      intValue2 = [v17 intValue];
      [toCopy setVerticalPosition:0];
      v25 = intValue2 / 12700.0;
    }

    [toCopy setBounds:{v27, v25, v22, v24}];
  }

  else if (v15)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v15];
    [toCopy bounds];
    v32 = v31;
    v34 = v33;
    if (horizontalCopy)
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

    [toCopy setBounds:{v37, v35, v32, v34}];
  }

  else
  {
    v17 = 0;
  }
}

+ (void)readWrap:(_xmlNode *)wrap state:(id)state to:(id)to
{
  stateCopy = state;
  toCopy = to;
  wXDrawingNamespace = [stateCopy WXDrawingNamespace];
  v11 = OCXFindChild(wrap, wXDrawingNamespace, "wrapNone");

  if (v11)
  {
    [toCopy setTextWrappingMode:3];
  }

  else
  {
    wXDrawingNamespace2 = [stateCopy WXDrawingNamespace];
    v13 = OCXFindChild(wrap, wXDrawingNamespace2, "wrapSquare");

    if (v13)
    {
      [toCopy setTextWrappingMode:2];
      [self readWrapDistance:v13 parentElement:wrap state:stateCopy to:toCopy];
      v28 = 0;
      textWrappingModeTypeEnumMap = [self textWrappingModeTypeEnumMap];
      v15 = readEnumProperty<WDATextWrappingModeType>(v13, "wrapText", textWrappingModeTypeEnumMap, &v28);

      if (v15)
      {
        [toCopy setTextWrappingModeType:v28];
      }
    }

    else
    {
      wXDrawingNamespace3 = [stateCopy WXDrawingNamespace];
      v17 = OCXFindChild(wrap, wXDrawingNamespace3, "wrapThrough");

      if (v17)
      {
        [toCopy setTextWrappingMode:5];
        [self readWrapDistance:v17 parentElement:wrap state:stateCopy to:toCopy];
        v27 = 0;
        textWrappingModeTypeEnumMap2 = [self textWrappingModeTypeEnumMap];
        v19 = readEnumProperty<WDATextWrappingModeType>(v17, "wrapText", textWrappingModeTypeEnumMap2, &v27);

        if (v19)
        {
          [toCopy setTextWrappingModeType:v27];
        }
      }

      else
      {
        wXDrawingNamespace4 = [stateCopy WXDrawingNamespace];
        v21 = OCXFindChild(wrap, wXDrawingNamespace4, "wrapTight");

        if (v21)
        {
          [toCopy setTextWrappingMode:4];
          [self readWrapDistance:v21 parentElement:wrap state:stateCopy to:toCopy];
          v26 = 0;
          textWrappingModeTypeEnumMap3 = [self textWrappingModeTypeEnumMap];
          v23 = readEnumProperty<WDATextWrappingModeType>(v21, "wrapText", textWrappingModeTypeEnumMap3, &v26);

          if (v23)
          {
            [toCopy setTextWrappingModeType:v26];
          }
        }

        else
        {
          wXDrawingNamespace5 = [stateCopy WXDrawingNamespace];
          v25 = OCXFindChild(wrap, wXDrawingNamespace5, "wrapTopAndBottom");

          if (v25)
          {
            [toCopy setTextWrappingMode:1];
            [self readWrapDistance:v25 parentElement:wrap state:stateCopy to:toCopy];
          }
        }
      }
    }
  }
}

+ (void)readWrapDistance:(_xmlNode *)distance parentElement:(_xmlNode *)element state:(id)state to:(id)to
{
  stateCopy = state;
  toCopy = to;
  v17 = 0;
  if (CXOptionalLongAttribute(distance, CXNoNamespace, "distB", &v17) || CXOptionalLongAttribute(element, CXNoNamespace, "distB", &v17))
  {
    [toCopy setWrapDistanceBottom:v17 / 12700.0];
  }

  wXDrawingNamespace = [stateCopy WXDrawingNamespace];
  v12 = CXOptionalLongAttribute(distance, wXDrawingNamespace, "distL", &v17);

  if (v12 || CXOptionalLongAttribute(element, CXNoNamespace, "distL", &v17))
  {
    [toCopy setWrapDistanceLeft:v17 / 12700.0];
  }

  wXDrawingNamespace2 = [stateCopy WXDrawingNamespace];
  v14 = CXOptionalLongAttribute(distance, wXDrawingNamespace2, "distR", &v17);

  if (v14 || CXOptionalLongAttribute(element, CXNoNamespace, "distR", &v17))
  {
    [toCopy setWrapDistanceRight:v17 / 12700.0];
  }

  wXDrawingNamespace3 = [stateCopy WXDrawingNamespace];
  v16 = CXOptionalLongAttribute(distance, wXDrawingNamespace3, "distT", &v17);

  if (v16 || CXOptionalLongAttribute(element, CXNoNamespace, "distT", &v17))
  {
    [toCopy setWrapDistanceTop:v17 / 12700.0];
  }
}

+ (void)writeWrapText:(id)text to:(id)to
{
  textCopy = text;
  toCopy = to;
  if (textCopy)
  {
    v6 = +[WDAAnchor stringForTextWrappingModeType:](WDAAnchor, "stringForTextWrappingModeType:", [textCopy textWrappingModeType]);
    [toCopy writeAttribute:@"wrapText" content:v6 prefix:0 ns:0];
  }
}

+ (void)writeWrapLeftDistance:(id)distance to:(id)to
{
  distanceCopy = distance;
  toCopy = to;
  if (distanceCopy)
  {
    [distanceCopy wrapDistanceLeft];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [toCopy writeAttribute:@"distL" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapRightDistance:(id)distance to:(id)to
{
  distanceCopy = distance;
  toCopy = to;
  if (distanceCopy)
  {
    [distanceCopy wrapDistanceRight];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [toCopy writeAttribute:@"distR" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapTopDistance:(id)distance to:(id)to
{
  distanceCopy = distance;
  toCopy = to;
  if (distanceCopy)
  {
    [distanceCopy wrapDistanceTop];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [toCopy writeAttribute:@"distT" content:v7 prefix:0 ns:0];
  }
}

+ (void)writeWrapBottomDistance:(id)distance to:(id)to
{
  distanceCopy = distance;
  toCopy = to;
  if (distanceCopy)
  {
    [distanceCopy wrapDistanceBottom];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (v6 * 12700.0)];
    [toCopy writeAttribute:@"distB" content:v7 prefix:0 ns:0];
  }
}

+ (void)readVml:(_xmlNode *)vml parentRElement:(_xmlNode *)element parentParagraph:(id)paragraph state:(id)state to:(id)to
{
  paragraphCopy = paragraph;
  stateCopy = state;
  toCopy = to;
  [stateCopy wxoavState];
  v46 = v48 = stateCopy;
  [v46 setCurrentParagraph:paragraphCopy];
  v13 = [OAVDrawable readDrawablesFromParent:vml inNamespace:OAVOfficeDrawingNamespace state:v46];
  [v46 setCurrentParagraph:0];
  v14 = OCXFindChild(vml, OAVOfficeDrawingNamespace, "OLEObject");
  v15 = v14;
  if (!v14)
  {
    goto LABEL_23;
  }

  v16 = CXDefaultStringAttribute(v14, CXNoNamespace, "ProgID", 0);
  packagePart = [v48 packagePart];
  v47 = [v48 OCXReadRelationshipForNode:v15 packagePart:packagePart];
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
    read = 0;
LABEL_14:
    v27 = objc_alloc_init(OADOle);
    v28 = v27;
    if (read)
    {
      [(OADOle *)v27 setObject:read];
    }

    v25 = v28;
    if (v16)
    {
      [(OADOle *)v28 setAnsiProgID:v16];
    }

    goto LABEL_18;
  }

  context = objc_autoreleasePoolPush();
  package = [packagePart package];
  targetLocation = [v47 targetLocation];
  v20 = [package partForLocation:targetLocation];

  v42 = v20;
  data = [v20 data];
  if ([v16 hasSuffix:@".12"])
  {
    v21 = [EXReader alloc];
    cancelDelegate = [v48 cancelDelegate];
    cancelDelegate2 = [(OCDReader *)v21 initWithCancelDelegate:cancelDelegate];

    if ([(OCXReader *)cancelDelegate2 start])
    {
      [(OCDReader *)cancelDelegate2 setData:data];
      read = [(EXReader *)cancelDelegate2 read];
    }

    else
    {
      read = 0;
    }

    v25 = 0;
  }

  else
  {
    cancelDelegate2 = [v48 cancelDelegate];
    v25 = [OABOle readFromData:data cancel:cancelDelegate2];
    read = 0;
  }

  targetLocation2 = [v47 targetLocation];
  [package resetPartForLocation:targetLocation2];

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
        [toCopy setDrawable:v37];
        clientData = [v37 clientData];
        [clientData setDrawable:v37];
        [toCopy setFloating:{objc_msgSend(clientData, "floating")}];
        textBox = [clientData textBox];
        if (textBox)
        {
          document = [paragraphCopy document];
          [textBox setDocument:document];
        }
      }

      ++v36;
    }

    while (v35 != v36);
  }
}

+ (BOOL)writeWrapTightlyWith:(id)with toWriter:(id)writer
{
  withCopy = with;
  writerCopy = writer;
  textWrapPoints = [withCopy textWrapPoints];
  if ([textWrapPoints count] < 3)
  {

    goto LABEL_5;
  }

  if ([withCopy textWrappingMode] != 4)
  {
    textWrappingMode = [withCopy textWrappingMode];

    if (textWrappingMode == 5)
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_7:
  if ([withCopy textWrappingMode] == 4)
  {
    v11 = @"wrapTight";
  }

  else
  {
    v11 = @"wrapThrough";
  }

  [writerCopy startElement:v11 prefix:@"wp" ns:0];
  [self writeWrapText:withCopy to:writerCopy];
  [self writeWrapLeftDistance:withCopy to:writerCopy];
  [self writeWrapRightDistance:withCopy to:writerCopy];
  [writerCopy startElement:@"wrapPolygon" prefix:@"wp" ns:0];
  [writerCopy writeAttribute:@"edited" BOOLContent:1 prefix:0 ns:0];
  textWrapPoints2 = [withCopy textWrapPoints];
  [self writeWrapPolygonChildren:textWrapPoints2 to:writerCopy];

  [writerCopy endElement];
  [writerCopy endElement];
  v9 = 1;
LABEL_11:

  return v9;
}

+ (void)writeWrapPolygonChildren:(id)children to:(id)to
{
  childrenCopy = children;
  toCopy = to;
  v6 = [childrenCopy count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [childrenCopy objectAtIndexedSubscript:i];
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

      [toCopy startElement:v15 prefix:@"wp" ns:0];
      [toCopy writeAttribute:@"x" intContent:v13 prefix:0 ns:0];
      [toCopy writeAttribute:@"y" intContent:v14 prefix:0 ns:0];
      [toCopy endElement];
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