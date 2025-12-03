@interface OAXGeometry
+ (OADAdjustCoord)readAdjustCoordFromXmlNode:(_xmlNode *)node name:(const char *)name formulaNameToIndexMap:(id)map;
+ (id)formulaKeywordEnumMap;
+ (id)formulaTypeEnumMap;
+ (id)pathFillModeEnumMap;
+ (id)readCustomGeometryFromXmlNode:(_xmlNode *)node hasImplicitFormulas:(BOOL)formulas drawingState:(id)state;
+ (id)readFromParentXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readPresetGeometryFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)shapeTypeEnumMap;
+ (id)stringForShapeType:(int)type;
+ (id)stringWritingShapeType:(int)type;
+ (int)adjustValueWithGuideXmlNode:(_xmlNode *)node;
+ (int)shapeTypeForString:(id)string;
+ (void)addFormulasFromFile:(id)file toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state;
+ (void)readAdjustValuesFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry adjustValueNameToIndexMap:(id)map drawingState:(id)state;
+ (void)readFormulasFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry adjustValueNameToIndexMap:(id)map formulaNameToIndexMap:(id)indexMap drawingState:(id)state;
+ (void)readPathsFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state;
+ (void)readTextRectFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state;
+ (void)write:(id)write to:(id)to;
+ (void)writePath:(id)path coordSpace:(CsRect<int>)space to:(id)to;
+ (void)writeShapePathPoint:(OADAdjustPoint)point origin:(CsPoint<int>)origin to:(id)to;
@end

@implementation OAXGeometry

+ (id)shapeTypeEnumMap
{
  if (+[OAXGeometry(Private) shapeTypeEnumMap]::once != -1)
  {
    +[OAXGeometry(Private) shapeTypeEnumMap];
  }

  v3 = +[OAXGeometry(Private) shapeTypeEnumMap]::shapeTypeEnumMap;

  return v3;
}

+ (id)formulaTypeEnumMap
{
  if (+[OAXGeometry(Private) formulaTypeEnumMap]::once != -1)
  {
    +[OAXGeometry(Private) formulaTypeEnumMap];
  }

  v3 = +[OAXGeometry(Private) formulaTypeEnumMap]::formulaTypeEnumMap;

  return v3;
}

+ (id)formulaKeywordEnumMap
{
  if (+[OAXGeometry(Private) formulaKeywordEnumMap]::once != -1)
  {
    +[OAXGeometry(Private) formulaKeywordEnumMap];
  }

  v3 = +[OAXGeometry(Private) formulaKeywordEnumMap]::formulaKeywordEnumMap;

  return v3;
}

+ (id)pathFillModeEnumMap
{
  if (+[OAXGeometry(Private) pathFillModeEnumMap]::once != -1)
  {
    +[OAXGeometry(Private) pathFillModeEnumMap];
  }

  v3 = +[OAXGeometry(Private) pathFillModeEnumMap]::pathFillModeEnumMap;

  return v3;
}

+ (id)readFromParentXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v8 = OCXFindChild(node, oAXMainNamespace, "prstGeom");

  if (v8)
  {
    v9 = [self readPresetGeometryFromXmlNode:v8 drawingState:stateCopy];
LABEL_5:
    v12 = v9;
    goto LABEL_6;
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(node, oAXMainNamespace2, "custGeom");

  if (v11)
  {
    v9 = [self readCustomGeometryFromXmlNode:v11 hasImplicitFormulas:0 drawingState:stateCopy];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

+ (id)readCustomGeometryFromXmlNode:(_xmlNode *)node hasImplicitFormulas:(BOOL)formulas drawingState:(id)state
{
  formulasCopy = formulas;
  stateCopy = state;
  v9 = objc_alloc_init(OADCustomShapeGeometry);
  [(OADShapeGeometry *)v9 setIsEscher:0];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [self readAdjustValuesFromCustomGeometryXmlNode:node toCustomGeometry:v9 adjustValueNameToIndexMap:v10 drawingState:stateCopy];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [self addFormulasFromFile:@"_KeywordFormulas" toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:stateCopy];
  if (formulasCopy)
  {
    [self addFormulasFromFile:@"_ImplicitFormulas" toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:stateCopy];
  }

  [self readFormulasFromCustomGeometryXmlNode:node toCustomGeometry:v9 adjustValueNameToIndexMap:v10 formulaNameToIndexMap:v11 drawingState:stateCopy];
  [self readTextRectFromCustomGeometryXmlNode:node toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:stateCopy];
  [self readPathsFromCustomGeometryXmlNode:node toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:stateCopy];

  return v9;
}

+ (int)shapeTypeForString:(id)string
{
  stringCopy = string;
  shapeTypeEnumMap = [self shapeTypeEnumMap];
  v6 = [shapeTypeEnumMap valueForString:stringCopy];

  return v6;
}

+ (id)stringForShapeType:(int)type
{
  if (type)
  {
    v3 = *&type;
    shapeTypeEnumMap = [self shapeTypeEnumMap];
    v5 = [shapeTypeEnumMap stringForValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)write:(id)write to:(id)to
{
  writeCopy = write;
  toCopy = to;
  if (writeCopy)
  {
    objc_opt_class();
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      v27 = writeCopy;
      v8 = writeCopy;
      [v8 geometryCoordSpace];
      [toCopy startOAElement:@"custGeom"];
      [toCopy startOAElement:@"avLst"];
      [toCopy endElement];
      [toCopy startOAElement:@"gdLst"];
      [toCopy endElement];
      [toCopy startOAElement:@"ahLst"];
      [toCopy endElement];
      [toCopy startOAElement:@"cxnLst"];
      v9 = 0;
      v10 = 4;
      do
      {
        [toCopy startOAElement:@"cxn"];
        [toCopy writeOAAttribute:@"ang" intContent:v9];
        [toCopy startOAElement:@"pos"];
        [toCopy writeOAAttribute:@"x" content:@"wd2"];
        [toCopy writeOAAttribute:@"y" content:@"hd2"];
        [toCopy endElement];
        [toCopy endElement];
        v9 += 5400000;
        --v10;
      }

      while (v10);
      [toCopy endElement];
      [toCopy startOAElement:@"rect"];
      [toCopy writeOAAttribute:@"l" intContent:0];
      [toCopy writeOAAttribute:@"t" intContent:0];
      [toCopy writeOAAttribute:@"r" content:@"r"];
      [toCopy writeOAAttribute:@"b" content:@"b"];
      [toCopy endElement];
      [toCopy startOAElement:@"pathLst"];
      for (i = 0; i < [v8 pathCount]; ++i)
      {
        v12 = [v8 pathAtIndex:i];
        v29[0] = v29[1];
        [self writePath:v12 coordSpace:v29 to:toCopy];
      }

      [toCopy endElement];
      [toCopy endElement];
LABEL_21:

      writeCopy = v27;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = writeCopy;
      v8 = writeCopy;
      [toCopy startOAElement:@"prstGeom"];
      v26 = [self stringWritingShapeType:{objc_msgSend(v8, "type")}];
      [toCopy writeOAAttribute:@"prst" content:v26];
      [toCopy startOAElement:@"avLst"];
      if ([v8 adjustValueCount])
      {
        v25 = +[TCBundleResourceManager instance];
        v13 = [v25 xmlDocumentForResource:v26 ofType:@"xml" inPackage:@"OAShapeTypes"];
        if (v13)
        {
          v14 = [[OAXDrawingState alloc] initWithClient:0];
          v15 = OCXGetRootElement(v13);
          oAXMainNamespace = [(OAXDrawingState *)v14 OAXMainNamespace];
          v17 = OCXFindChild(v15, oAXMainNamespace, "avLst");

          if (v17)
          {
            oAXMainNamespace2 = [(OAXDrawingState *)v14 OAXMainNamespace];
            Child = OCXFindChild(v17, oAXMainNamespace2, "gd");

            if (Child)
            {
              v20 = 0;
              do
              {
                v21 = [self adjustValueWithGuideXmlNode:Child];
                if ([v8 hasAdjustValueAtIndex:v20])
                {
                  v21 = [v8 adjustValueAtIndex:v20];
                }

                v22 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
                [toCopy startOAElement:@"gd"];
                [toCopy writeOAAttribute:@"name" content:v22];
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"val %ld", v21];
                [toCopy writeOAAttribute:@"fmla" content:v23];

                [toCopy endElement];
                oAXMainNamespace3 = [(OAXDrawingState *)v14 OAXMainNamespace];
                Child = OCXFindNextChild(Child, oAXMainNamespace3, "gd");

                v20 = (v20 + 1);
                self = selfCopy;
              }

              while (Child);
            }
          }
        }
      }

      [toCopy endElement];
      [toCopy endElement];

      goto LABEL_21;
    }
  }

LABEL_22:
}

+ (id)stringWritingShapeType:(int)type
{
  if (type == 202)
  {
    v5 = @"rect";
  }

  else
  {
    v5 = [OAXGeometry stringForShapeType:v3];
  }

  return v5;
}

+ (int)adjustValueWithGuideXmlNode:(_xmlNode *)node
{
  v3 = CXRequiredStringAttribute(node, CXNoNamespace, "fmla");
  tc_componentsSeparatedByWhitespace = [v3 tc_componentsSeparatedByWhitespace];
  if ([tc_componentsSeparatedByWhitespace count] != 2)
  {
    [TCMessageException raise:OABadFormat];
  }

  v5 = [tc_componentsSeparatedByWhitespace objectAtIndex:0];
  v6 = [v5 isEqualToString:@"val"];

  if ((v6 & 1) == 0)
  {
    [TCMessageException raise:OABadFormat];
  }

  v7 = [tc_componentsSeparatedByWhitespace objectAtIndex:1];
  intValue = [v7 intValue];

  return intValue;
}

+ (id)readPresetGeometryFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = CXRequiredStringAttribute(node, CXNoNamespace, "prst");
  if (v7)
  {
    v8 = objc_alloc_init(OADPresetShapeGeometry);
    -[OADPresetShapeGeometry setType:](v8, "setType:", [self shapeTypeForString:v7]);
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    v10 = OCXFindChild(node, oAXMainNamespace, "avLst");

    if (v10)
    {
      oAXMainNamespace2 = [stateCopy OAXMainNamespace];
      Child = OCXFindChild(v10, oAXMainNamespace2, "gd");

      if (Child)
      {
        v13 = 0;
        do
        {
          -[OADShapeGeometry setAdjustValue:atIndex:](v8, "setAdjustValue:atIndex:", [self adjustValueWithGuideXmlNode:Child], v13);
          oAXMainNamespace3 = [stateCopy OAXMainNamespace];
          Child = OCXFindNextChild(Child, oAXMainNamespace3, "gd");

          v13 = (v13 + 1);
        }

        while (Child);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)readAdjustValuesFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry adjustValueNameToIndexMap:(id)map drawingState:(id)state
{
  geometryCopy = geometry;
  mapCopy = map;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "avLst");

  if (v13)
  {
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindChild(v13, oAXMainNamespace2, "gd");

    if (Child)
    {
      v16 = 0;
      do
      {
        [geometryCopy setAdjustValue:objc_msgSend(self atIndex:{"adjustValueWithGuideXmlNode:", Child), v16}];
        v17 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
        [mapCopy setObject:v18 forKey:v17];

        oAXMainNamespace3 = [stateCopy OAXMainNamespace];
        Child = OCXFindNextChild(Child, oAXMainNamespace3, "gd");

        v16 = (v16 + 1);
      }

      while (Child);
    }
  }
}

+ (void)readFormulasFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry adjustValueNameToIndexMap:(id)map formulaNameToIndexMap:(id)indexMap drawingState:(id)state
{
  v51 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  mapCopy = map;
  indexMapCopy = indexMap;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "gdLst");

  if (v13)
  {
    v45 = [indexMapCopy count];
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindChild(v13, oAXMainNamespace2, "gd");

    if (Child)
    {
      while (1)
      {
        v43 = Child;
        v42 = CXRequiredStringAttribute(Child, CXNoNamespace, "fmla");
        tc_componentsSeparatedByWhitespace = [v42 tc_componentsSeparatedByWhitespace];
        v17 = [tc_componentsSeparatedByWhitespace count];
        if (v17 - 1 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17 - 1;
        }

        if (v18 >= 3)
        {
          v18 = 3;
        }

        if ((v17 - 2) >= 3)
        {
          v19 = v18;
        }

        else
        {
          v19 = (v17 - 1);
        }

        firstObject = [tc_componentsSeparatedByWhitespace firstObject];
        if (!firstObject)
        {
          [TCMessageException raise:OABadFormat];
        }

        formulaTypeEnumMap = [self formulaTypeEnumMap];
        v21 = [formulaTypeEnumMap valueForString:firstObject];

        if (v21 == -130883970)
        {
          [TCMessageException raise:OABadFormat];
        }

        v48 = 0;
        v49 = 0;
        v50 = 0;
        if (v19 >= 1)
        {
          break;
        }

LABEL_31:
        v35 = [OADFormula alloc];
        v36 = [(OADFormula *)v35 initWithType:v21 arg0:v48 arg1:v49 arg2:v50];
        [geometryCopy addFormula:v36];
        v37 = CXRequiredStringAttribute(v43, CXNoNamespace, "name");
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
        [indexMapCopy setObject:v38 forKey:v37];

        [(OADFormula *)v36 setName:v37];
        oAXMainNamespace3 = [stateCopy OAXMainNamespace];
        Child = OCXFindNextChild(v43, oAXMainNamespace3, "gd");
        v45 = (v45 + 1);

        if (!Child)
        {
          goto LABEL_32;
        }
      }

      v22 = &v48;
      v23 = 1;
      while (1)
      {
        v24 = [tc_componentsSeparatedByWhitespace objectAtIndex:v23];
        v25 = [v24 characterAtIndex:0];
        v26 = [indexMapCopy objectForKey:v24];

        if (v26)
        {
          break;
        }

        v30 = [mapCopy objectForKey:v24];

        if (v30)
        {
          v31 = [mapCopy objectForKey:v24];
          unsignedLongValue = [v31 unsignedLongValue];

          v29 = 2;
          goto LABEL_29;
        }

        formulaKeywordEnumMap = [self formulaKeywordEnumMap];
        v33 = [formulaKeywordEnumMap valueForString:v24];

        if (v33 != -130883970)
        {
          formulaKeywordEnumMap2 = [self formulaKeywordEnumMap];
          unsignedLongValue = [formulaKeywordEnumMap2 valueForString:v24];

          v29 = 4;
          goto LABEL_29;
        }

        if (v25 <= 0xFF && ((*(MEMORY[0x277D85DE0] + 4 * v25 + 60) >> 10) & 1) != 0 || v25 == 45)
        {
          unsignedLongValue = [v24 intValue];
          v29 = 1;
          goto LABEL_29;
        }

        [TCMessageException raise:OABadFormat];
LABEL_30:

        ++v22;
        ++v23;
        if (!--v19)
        {
          goto LABEL_31;
        }
      }

      v27 = [indexMapCopy objectForKey:v24];
      unsignedLongValue = [v27 unsignedLongValue];

      v29 = 3;
LABEL_29:
      *v22 = v29 | (unsignedLongValue << 32);
      goto LABEL_30;
    }
  }

LABEL_32:
}

+ (void)addFormulasFromFile:(id)file toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state
{
  fileCopy = file;
  geometryCopy = geometry;
  mapCopy = map;
  stateCopy = state;
  v13 = +[TCBundleResourceManager instance];
  v14 = [v13 xmlDocumentForResource:fileCopy ofType:@"xml" inPackage:@"OAShapeTypes"];
  if (!v14)
  {
    [TCMessageException raise:OABadFormat];
    v14 = 0;
  }

  [self readFormulasFromCustomGeometryXmlNode:OCXGetRootElement(v14) toCustomGeometry:geometryCopy adjustValueNameToIndexMap:0 formulaNameToIndexMap:mapCopy drawingState:stateCopy];
}

+ (OADAdjustCoord)readAdjustCoordFromXmlNode:(_xmlNode *)node name:(const char *)name formulaNameToIndexMap:(id)map
{
  mapCopy = map;
  v8 = CXRequiredStringAttribute(node, CXNoNamespace, name);
  v9 = [mapCopy objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    unsignedIntValue = [v9 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = CXRequiredLongAttribute(node, CXNoNamespace, name, 12);
  }

  v12 = ((v10 != 0) | (unsignedIntValue << 32));

  return v12;
}

+ (void)readTextRectFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state
{
  geometryCopy = geometry;
  mapCopy = map;
  oAXMainNamespace = [state OAXMainNamespace];
  v12 = OCXFindChild(node, oAXMainNamespace, "rect");

  if (v12)
  {
    v13 = -[OADAdjustRect initWithLeft:top:right:bottom:]([OADAdjustRect alloc], "initWithLeft:top:right:bottom:", [self readAdjustCoordFromXmlNode:v12 name:"l" formulaNameToIndexMap:mapCopy], objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "t", mapCopy), objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "r", mapCopy), objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "b", mapCopy));
    [geometryCopy addTextBodyRect:v13];
  }
}

+ (void)readPathsFromCustomGeometryXmlNode:(_xmlNode *)node toCustomGeometry:(id)geometry formulaNameToIndexMap:(id)map drawingState:(id)state
{
  v45 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  mapCopy = map;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "pathLst");

  if (v13)
  {
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v15 = OCXFindChild(v13, oAXMainNamespace2, "path");

    v37 = v15;
    if (v15)
    {
      do
      {
        v38 = objc_alloc_init(OADPath);
        v16 = CXDefaultLongAttribute(v37, CXNoNamespace, "w", 0);
        [(OADPath *)v38 setSize:v16, CXDefaultLongAttribute(v37, CXNoNamespace, "h", 0)];
        v36 = CXDefaultStringAttribute(v37, CXNoNamespace, "fill", 0);
        if (v36)
        {
          pathFillModeEnumMap = [self pathFillModeEnumMap];
          v18 = [pathFillModeEnumMap valueForString:v36];

          [(OADPath *)v38 setFillMode:v18];
        }

        [(OADPath *)v38 setStroked:CXDefaultBoolAttribute(v37, CXNoNamespace, "stroke", 1)];
        for (i = OCXFirstChild(v37); i; i = OCXNextSibling(i))
        {
          if (i->type != XML_ELEMENT_NODE)
          {
            continue;
          }

          oAXMainNamespace3 = [stateCopy OAXMainNamespace];
          Child = OCXFindChild(i, oAXMainNamespace3, "pt");

          if (Child)
          {
            v22 = 0;
            v23 = &v40;
            do
            {
              *(v23 - 1) = [self readAdjustCoordFromXmlNode:Child name:"x" formulaNameToIndexMap:{mapCopy, geometryCopy}];
              *v23 = [self readAdjustCoordFromXmlNode:Child name:"y" formulaNameToIndexMap:mapCopy];
              oAXMainNamespace4 = [stateCopy OAXMainNamespace];
              Child = OCXFindNextChild(Child, oAXMainNamespace4, "pt");

              v25 = v22 + 1;
              if (!Child)
              {
                break;
              }

              v23 += 2;
            }

            while (v22++ < 2);
          }

          else
          {
            v25 = 0;
          }

          if (xmlStrEqual(i->name, "close"))
          {
            if (v25)
            {
              [TCMessageException raise:OABadFormat];
            }

            v27 = objc_alloc_init(OADClosePathElement);
            goto LABEL_28;
          }

          if (xmlStrEqual(i->name, "moveTo"))
          {
            if (v25 != 1)
            {
              [TCMessageException raise:OABadFormat];
            }

            v28 = off_2799C5738;
LABEL_27:
            v29 = objc_alloc(*v28);
            v27 = [v29 initWithToPoint:{v39, v40}];
            goto LABEL_28;
          }

          if (xmlStrEqual(i->name, "lnTo"))
          {
            if (v25 != 1)
            {
              [TCMessageException raise:OABadFormat];
            }

            v28 = off_2799C5730;
            goto LABEL_27;
          }

          if (xmlStrEqual(i->name, "cubicBezTo"))
          {
            if (v25 != 3)
            {
              [TCMessageException raise:OABadFormat];
            }

            v31 = [OADCubicBezierToPathElement alloc];
            v27 = [(OADCubicBezierToPathElement *)v31 initWithControlPoint1:v39 controlPoint2:v40 toPoint:v41, v42, v43, v44];
          }

          else if (xmlStrEqual(i->name, "quadBezTo"))
          {
            if (v25 != 2)
            {
              [TCMessageException raise:OABadFormat];
            }

            v32 = [OADQuadBezierToPathElement alloc];
            v27 = [(OADQuadBezierToPathElement *)v32 initWithControlPoint:v39 toPoint:v40, v41, v42];
          }

          else
          {
            if (!xmlStrEqual(i->name, "arcTo"))
            {
              v30 = 0;
              goto LABEL_29;
            }

            if (v25)
            {
              [TCMessageException raise:OABadFormat];
            }

            v27 = -[OADArcToPathElement initWithSemiaxes:startAngle:angleLength:]([OADArcToPathElement alloc], "initWithSemiaxes:startAngle:angleLength:", [self readAdjustCoordFromXmlNode:i name:"wR" formulaNameToIndexMap:{mapCopy, geometryCopy}], objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "hR", mapCopy), objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "stAng", mapCopy), objc_msgSend(self, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "swAng", mapCopy));
          }

LABEL_28:
          v30 = v27;
LABEL_29:
          [(OADPath *)v38 addElement:v30, geometryCopy];
        }

        [geometryCopy addPath:v38];
        oAXMainNamespace5 = [stateCopy OAXMainNamespace];
        v34 = OCXFindNextChild(v37, oAXMainNamespace5, "path");

        v37 = v34;
      }

      while (v34);
    }
  }
}

+ (void)writePath:(id)path coordSpace:(CsRect<int>)space to:(id)to
{
  v5 = *&space.var0[2];
  v6 = *space.var0;
  pathCopy = path;
  v9 = v5;
  [v9 startOAElement:@"path"];
  v10 = v6[1];
  v11 = *v6;
  [v9 writeOAAttribute:@"w" intContent:v6[2] - v11];
  [v9 writeOAAttribute:@"h" intContent:v6[3] - v6[1]];
  fillMode = [pathCopy fillMode];
  pathFillModeEnumMap = [self pathFillModeEnumMap];
  [v9 writeOAAttribute:@"fill" enumContent:fillMode map:pathFillModeEnumMap];

  [v9 writeOAAttribute:@"stroke" BOOLContent:{objc_msgSend(pathCopy, "stroked")}];
  [v9 writeOAAttribute:@"extrusionOk" BOOLContent:0];
  elementCount = [pathCopy elementCount];
  if (elementCount)
  {
    for (i = 0; elementCount != i; ++i)
    {
      v16 = [pathCopy elementAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 startOAElement:@"close"];
        [v9 endElement];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          [v9 startOAElement:@"cubicBezTo"];
          controlPoint1 = [v17 controlPoint1];
          v34[0] = v11;
          v34[1] = v10;
          [self writeShapePathPoint:controlPoint1 origin:v19 to:{v34, v9}];
          controlPoint2 = [v17 controlPoint2];
          v33[0] = v11;
          v33[1] = v10;
          [self writeShapePathPoint:controlPoint2 origin:v21 to:{v33, v9}];
          toPoint = [v17 toPoint];
          v32[0] = v11;
          v32[1] = v10;
          [self writeShapePathPoint:toPoint origin:v23 to:{v32, v9}];
          [v9 endElement];
LABEL_11:

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v16;
          [v9 startOAElement:@"lnTo"];
          toPoint2 = [v24 toPoint];
          v31[0] = v11;
          v31[1] = v10;
          [self writeShapePathPoint:toPoint2 origin:v26 to:{v31, v9}];
          [v9 endElement];
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v16;
          [v9 startOAElement:@"moveTo"];
          toPoint3 = [v27 toPoint];
          v30[0] = v11;
          v30[1] = v10;
          [self writeShapePathPoint:toPoint3 origin:v29 to:{v30, v9}];
          [v9 endElement];
          goto LABEL_11;
        }
      }

LABEL_12:
    }
  }

  [v9 endElement];
}

+ (void)writeShapePathPoint:(OADAdjustPoint)point origin:(CsPoint<int>)origin to:(id)to
{
  value = point.y.value;
  x = point.x;
  toCopy = to;
  [toCopy startOAElement:@"pt"];
  [toCopy writeOAAttribute:@"x" intContent:(*&x >> 32) - *origin.var0[0]];
  [toCopy writeOAAttribute:@"y" intContent:value - *(*&origin + 4)];
  [toCopy endElement];
}

void __40__OAXGeometry_Private__shapeTypeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ40__OAXGeometry_Private__shapeTypeEnumMap_EUb_E20shapeTypeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __40__OAXGeometry_Private__shapeTypeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ40__OAXGeometry_Private__shapeTypeEnumMap_EUb_E20shapeTypeEnumStructs count:187 caseSensitive:1];
  v1 = +[OAXGeometry(Private) shapeTypeEnumMap]::shapeTypeEnumMap;
  +[OAXGeometry(Private) shapeTypeEnumMap]::shapeTypeEnumMap = v0;
}

void __42__OAXGeometry_Private__formulaTypeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ42__OAXGeometry_Private__formulaTypeEnumMap_EUb0_E22formulaTypeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __42__OAXGeometry_Private__formulaTypeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ42__OAXGeometry_Private__formulaTypeEnumMap_EUb0_E22formulaTypeEnumStructs count:17 caseSensitive:1];
  v1 = +[OAXGeometry(Private) formulaTypeEnumMap]::formulaTypeEnumMap;
  +[OAXGeometry(Private) formulaTypeEnumMap]::formulaTypeEnumMap = v0;
}

void __45__OAXGeometry_Private__formulaKeywordEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ45__OAXGeometry_Private__formulaKeywordEnumMap_EUb1_E25formulaKeywordEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __45__OAXGeometry_Private__formulaKeywordEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ45__OAXGeometry_Private__formulaKeywordEnumMap_EUb1_E25formulaKeywordEnumStructs count:6 caseSensitive:1];
  v1 = +[OAXGeometry(Private) formulaKeywordEnumMap]::formulaKeywordEnumMap;
  +[OAXGeometry(Private) formulaKeywordEnumMap]::formulaKeywordEnumMap = v0;
}

void __43__OAXGeometry_Private__pathFillModeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ43__OAXGeometry_Private__pathFillModeEnumMap_EUb2_E23pathFillModeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __43__OAXGeometry_Private__pathFillModeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ43__OAXGeometry_Private__pathFillModeEnumMap_EUb2_E23pathFillModeEnumStructs count:6 caseSensitive:1];
  v1 = +[OAXGeometry(Private) pathFillModeEnumMap]::pathFillModeEnumMap;
  +[OAXGeometry(Private) pathFillModeEnumMap]::pathFillModeEnumMap = v0;
}

void __40__OAXGeometry_Private__shapeTypeEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ40__OAXGeometry_Private__shapeTypeEnumMap_EUb_E20shapeTypeEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ40__OAXGeometry_Private__shapeTypeEnumMap_EUb_E20shapeTypeEnumStructs);
  }
}

void __42__OAXGeometry_Private__formulaTypeEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ42__OAXGeometry_Private__formulaTypeEnumMap_EUb0_E22formulaTypeEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ42__OAXGeometry_Private__formulaTypeEnumMap_EUb0_E22formulaTypeEnumStructs);
  }
}

void __45__OAXGeometry_Private__formulaKeywordEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ45__OAXGeometry_Private__formulaKeywordEnumMap_EUb1_E25formulaKeywordEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ45__OAXGeometry_Private__formulaKeywordEnumMap_EUb1_E25formulaKeywordEnumStructs);
  }
}

void __43__OAXGeometry_Private__pathFillModeEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ43__OAXGeometry_Private__pathFillModeEnumMap_EUb2_E23pathFillModeEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ43__OAXGeometry_Private__pathFillModeEnumMap_EUb2_E23pathFillModeEnumStructs);
  }
}

@end