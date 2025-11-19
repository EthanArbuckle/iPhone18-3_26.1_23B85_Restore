@interface OAXGeometry
+ (OADAdjustCoord)readAdjustCoordFromXmlNode:(_xmlNode *)a3 name:(const char *)a4 formulaNameToIndexMap:(id)a5;
+ (id)formulaKeywordEnumMap;
+ (id)formulaTypeEnumMap;
+ (id)pathFillModeEnumMap;
+ (id)readCustomGeometryFromXmlNode:(_xmlNode *)a3 hasImplicitFormulas:(BOOL)a4 drawingState:(id)a5;
+ (id)readFromParentXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readPresetGeometryFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)shapeTypeEnumMap;
+ (id)stringForShapeType:(int)a3;
+ (id)stringWritingShapeType:(int)a3;
+ (int)adjustValueWithGuideXmlNode:(_xmlNode *)a3;
+ (int)shapeTypeForString:(id)a3;
+ (void)addFormulasFromFile:(id)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6;
+ (void)readAdjustValuesFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 adjustValueNameToIndexMap:(id)a5 drawingState:(id)a6;
+ (void)readFormulasFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 adjustValueNameToIndexMap:(id)a5 formulaNameToIndexMap:(id)a6 drawingState:(id)a7;
+ (void)readPathsFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6;
+ (void)readTextRectFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6;
+ (void)write:(id)a3 to:(id)a4;
+ (void)writePath:(id)a3 coordSpace:(CsRect<int>)a4 to:(id)a5;
+ (void)writeShapePathPoint:(OADAdjustPoint)a3 origin:(CsPoint<int>)a4 to:(id)a5;
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

+ (id)readFromParentXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = [v6 OAXMainNamespace];
  v8 = OCXFindChild(a3, v7, "prstGeom");

  if (v8)
  {
    v9 = [a1 readPresetGeometryFromXmlNode:v8 drawingState:v6];
LABEL_5:
    v12 = v9;
    goto LABEL_6;
  }

  v10 = [v6 OAXMainNamespace];
  v11 = OCXFindChild(a3, v10, "custGeom");

  if (v11)
  {
    v9 = [a1 readCustomGeometryFromXmlNode:v11 hasImplicitFormulas:0 drawingState:v6];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

+ (id)readCustomGeometryFromXmlNode:(_xmlNode *)a3 hasImplicitFormulas:(BOOL)a4 drawingState:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = objc_alloc_init(OADCustomShapeGeometry);
  [(OADShapeGeometry *)v9 setIsEscher:0];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [a1 readAdjustValuesFromCustomGeometryXmlNode:a3 toCustomGeometry:v9 adjustValueNameToIndexMap:v10 drawingState:v8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [a1 addFormulasFromFile:@"_KeywordFormulas" toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:v8];
  if (v5)
  {
    [a1 addFormulasFromFile:@"_ImplicitFormulas" toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:v8];
  }

  [a1 readFormulasFromCustomGeometryXmlNode:a3 toCustomGeometry:v9 adjustValueNameToIndexMap:v10 formulaNameToIndexMap:v11 drawingState:v8];
  [a1 readTextRectFromCustomGeometryXmlNode:a3 toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:v8];
  [a1 readPathsFromCustomGeometryXmlNode:a3 toCustomGeometry:v9 formulaNameToIndexMap:v11 drawingState:v8];

  return v9;
}

+ (int)shapeTypeForString:(id)a3
{
  v4 = a3;
  v5 = [a1 shapeTypeEnumMap];
  v6 = [v5 valueForString:v4];

  return v6;
}

+ (id)stringForShapeType:(int)a3
{
  if (a3)
  {
    v3 = *&a3;
    v4 = [a1 shapeTypeEnumMap];
    v5 = [v4 stringForValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)write:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    v28 = a1;
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v8 = v6;
      [v8 geometryCoordSpace];
      [v7 startOAElement:@"custGeom"];
      [v7 startOAElement:@"avLst"];
      [v7 endElement];
      [v7 startOAElement:@"gdLst"];
      [v7 endElement];
      [v7 startOAElement:@"ahLst"];
      [v7 endElement];
      [v7 startOAElement:@"cxnLst"];
      v9 = 0;
      v10 = 4;
      do
      {
        [v7 startOAElement:@"cxn"];
        [v7 writeOAAttribute:@"ang" intContent:v9];
        [v7 startOAElement:@"pos"];
        [v7 writeOAAttribute:@"x" content:@"wd2"];
        [v7 writeOAAttribute:@"y" content:@"hd2"];
        [v7 endElement];
        [v7 endElement];
        v9 += 5400000;
        --v10;
      }

      while (v10);
      [v7 endElement];
      [v7 startOAElement:@"rect"];
      [v7 writeOAAttribute:@"l" intContent:0];
      [v7 writeOAAttribute:@"t" intContent:0];
      [v7 writeOAAttribute:@"r" content:@"r"];
      [v7 writeOAAttribute:@"b" content:@"b"];
      [v7 endElement];
      [v7 startOAElement:@"pathLst"];
      for (i = 0; i < [v8 pathCount]; ++i)
      {
        v12 = [v8 pathAtIndex:i];
        v29[0] = v29[1];
        [a1 writePath:v12 coordSpace:v29 to:v7];
      }

      [v7 endElement];
      [v7 endElement];
LABEL_21:

      v6 = v27;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v8 = v6;
      [v7 startOAElement:@"prstGeom"];
      v26 = [a1 stringWritingShapeType:{objc_msgSend(v8, "type")}];
      [v7 writeOAAttribute:@"prst" content:v26];
      [v7 startOAElement:@"avLst"];
      if ([v8 adjustValueCount])
      {
        v25 = +[TCBundleResourceManager instance];
        v13 = [v25 xmlDocumentForResource:v26 ofType:@"xml" inPackage:@"OAShapeTypes"];
        if (v13)
        {
          v14 = [[OAXDrawingState alloc] initWithClient:0];
          v15 = OCXGetRootElement(v13);
          v16 = [(OAXDrawingState *)v14 OAXMainNamespace];
          v17 = OCXFindChild(v15, v16, "avLst");

          if (v17)
          {
            v18 = [(OAXDrawingState *)v14 OAXMainNamespace];
            Child = OCXFindChild(v17, v18, "gd");

            if (Child)
            {
              v20 = 0;
              do
              {
                v21 = [a1 adjustValueWithGuideXmlNode:Child];
                if ([v8 hasAdjustValueAtIndex:v20])
                {
                  v21 = [v8 adjustValueAtIndex:v20];
                }

                v22 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
                [v7 startOAElement:@"gd"];
                [v7 writeOAAttribute:@"name" content:v22];
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"val %ld", v21];
                [v7 writeOAAttribute:@"fmla" content:v23];

                [v7 endElement];
                v24 = [(OAXDrawingState *)v14 OAXMainNamespace];
                Child = OCXFindNextChild(Child, v24, "gd");

                v20 = (v20 + 1);
                a1 = v28;
              }

              while (Child);
            }
          }
        }
      }

      [v7 endElement];
      [v7 endElement];

      goto LABEL_21;
    }
  }

LABEL_22:
}

+ (id)stringWritingShapeType:(int)a3
{
  if (a3 == 202)
  {
    v5 = @"rect";
  }

  else
  {
    v5 = [OAXGeometry stringForShapeType:v3];
  }

  return v5;
}

+ (int)adjustValueWithGuideXmlNode:(_xmlNode *)a3
{
  v3 = CXRequiredStringAttribute(a3, CXNoNamespace, "fmla");
  v4 = [v3 tc_componentsSeparatedByWhitespace];
  if ([v4 count] != 2)
  {
    [TCMessageException raise:OABadFormat];
  }

  v5 = [v4 objectAtIndex:0];
  v6 = [v5 isEqualToString:@"val"];

  if ((v6 & 1) == 0)
  {
    [TCMessageException raise:OABadFormat];
  }

  v7 = [v4 objectAtIndex:1];
  v8 = [v7 intValue];

  return v8;
}

+ (id)readPresetGeometryFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = CXRequiredStringAttribute(a3, CXNoNamespace, "prst");
  if (v7)
  {
    v8 = objc_alloc_init(OADPresetShapeGeometry);
    -[OADPresetShapeGeometry setType:](v8, "setType:", [a1 shapeTypeForString:v7]);
    v9 = [v6 OAXMainNamespace];
    v10 = OCXFindChild(a3, v9, "avLst");

    if (v10)
    {
      v11 = [v6 OAXMainNamespace];
      Child = OCXFindChild(v10, v11, "gd");

      if (Child)
      {
        v13 = 0;
        do
        {
          -[OADShapeGeometry setAdjustValue:atIndex:](v8, "setAdjustValue:atIndex:", [a1 adjustValueWithGuideXmlNode:Child], v13);
          v14 = [v6 OAXMainNamespace];
          Child = OCXFindNextChild(Child, v14, "gd");

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

+ (void)readAdjustValuesFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 adjustValueNameToIndexMap:(id)a5 drawingState:(id)a6
{
  v20 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v11 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "avLst");

  if (v13)
  {
    v14 = [v11 OAXMainNamespace];
    Child = OCXFindChild(v13, v14, "gd");

    if (Child)
    {
      v16 = 0;
      do
      {
        [v20 setAdjustValue:objc_msgSend(a1 atIndex:{"adjustValueWithGuideXmlNode:", Child), v16}];
        v17 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
        [v10 setObject:v18 forKey:v17];

        v19 = [v11 OAXMainNamespace];
        Child = OCXFindNextChild(Child, v19, "gd");

        v16 = (v16 + 1);
      }

      while (Child);
    }
  }
}

+ (void)readFormulasFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 adjustValueNameToIndexMap:(id)a5 formulaNameToIndexMap:(id)a6 drawingState:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = a4;
  v47 = a5;
  v11 = a6;
  v41 = a7;
  v12 = [v41 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "gdLst");

  if (v13)
  {
    v45 = [v11 count];
    v14 = [v41 OAXMainNamespace];
    Child = OCXFindChild(v13, v14, "gd");

    if (Child)
    {
      while (1)
      {
        v43 = Child;
        v42 = CXRequiredStringAttribute(Child, CXNoNamespace, "fmla");
        v16 = [v42 tc_componentsSeparatedByWhitespace];
        v17 = [v16 count];
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

        v44 = [v16 firstObject];
        if (!v44)
        {
          [TCMessageException raise:OABadFormat];
        }

        v20 = [a1 formulaTypeEnumMap];
        v21 = [v20 valueForString:v44];

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
        [v40 addFormula:v36];
        v37 = CXRequiredStringAttribute(v43, CXNoNamespace, "name");
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
        [v11 setObject:v38 forKey:v37];

        [(OADFormula *)v36 setName:v37];
        v39 = [v41 OAXMainNamespace];
        Child = OCXFindNextChild(v43, v39, "gd");
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
        v24 = [v16 objectAtIndex:v23];
        v25 = [v24 characterAtIndex:0];
        v26 = [v11 objectForKey:v24];

        if (v26)
        {
          break;
        }

        v30 = [v47 objectForKey:v24];

        if (v30)
        {
          v31 = [v47 objectForKey:v24];
          v28 = [v31 unsignedLongValue];

          v29 = 2;
          goto LABEL_29;
        }

        v32 = [a1 formulaKeywordEnumMap];
        v33 = [v32 valueForString:v24];

        if (v33 != -130883970)
        {
          v34 = [a1 formulaKeywordEnumMap];
          v28 = [v34 valueForString:v24];

          v29 = 4;
          goto LABEL_29;
        }

        if (v25 <= 0xFF && ((*(MEMORY[0x277D85DE0] + 4 * v25 + 60) >> 10) & 1) != 0 || v25 == 45)
        {
          v28 = [v24 intValue];
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

      v27 = [v11 objectForKey:v24];
      v28 = [v27 unsignedLongValue];

      v29 = 3;
LABEL_29:
      *v22 = v29 | (v28 << 32);
      goto LABEL_30;
    }
  }

LABEL_32:
}

+ (void)addFormulasFromFile:(id)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[TCBundleResourceManager instance];
  v14 = [v13 xmlDocumentForResource:v15 ofType:@"xml" inPackage:@"OAShapeTypes"];
  if (!v14)
  {
    [TCMessageException raise:OABadFormat];
    v14 = 0;
  }

  [a1 readFormulasFromCustomGeometryXmlNode:OCXGetRootElement(v14) toCustomGeometry:v10 adjustValueNameToIndexMap:0 formulaNameToIndexMap:v11 drawingState:v12];
}

+ (OADAdjustCoord)readAdjustCoordFromXmlNode:(_xmlNode *)a3 name:(const char *)a4 formulaNameToIndexMap:(id)a5
{
  v7 = a5;
  v8 = CXRequiredStringAttribute(a3, CXNoNamespace, a4);
  v9 = [v7 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntValue];
  }

  else
  {
    v11 = CXRequiredLongAttribute(a3, CXNoNamespace, a4, 12);
  }

  v12 = ((v10 != 0) | (v11 << 32));

  return v12;
}

+ (void)readTextRectFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6
{
  v14 = a4;
  v10 = a5;
  v11 = [a6 OAXMainNamespace];
  v12 = OCXFindChild(a3, v11, "rect");

  if (v12)
  {
    v13 = -[OADAdjustRect initWithLeft:top:right:bottom:]([OADAdjustRect alloc], "initWithLeft:top:right:bottom:", [a1 readAdjustCoordFromXmlNode:v12 name:"l" formulaNameToIndexMap:v10], objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "t", v10), objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "r", v10), objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", v12, "b", v10));
    [v14 addTextBodyRect:v13];
  }
}

+ (void)readPathsFromCustomGeometryXmlNode:(_xmlNode *)a3 toCustomGeometry:(id)a4 formulaNameToIndexMap:(id)a5 drawingState:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v35 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v11 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "pathLst");

  if (v13)
  {
    v14 = [v11 OAXMainNamespace];
    v15 = OCXFindChild(v13, v14, "path");

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
          v17 = [a1 pathFillModeEnumMap];
          v18 = [v17 valueForString:v36];

          [(OADPath *)v38 setFillMode:v18];
        }

        [(OADPath *)v38 setStroked:CXDefaultBoolAttribute(v37, CXNoNamespace, "stroke", 1)];
        for (i = OCXFirstChild(v37); i; i = OCXNextSibling(i))
        {
          if (i->type != XML_ELEMENT_NODE)
          {
            continue;
          }

          v20 = [v11 OAXMainNamespace];
          Child = OCXFindChild(i, v20, "pt");

          if (Child)
          {
            v22 = 0;
            v23 = &v40;
            do
            {
              *(v23 - 1) = [a1 readAdjustCoordFromXmlNode:Child name:"x" formulaNameToIndexMap:{v10, v35}];
              *v23 = [a1 readAdjustCoordFromXmlNode:Child name:"y" formulaNameToIndexMap:v10];
              v24 = [v11 OAXMainNamespace];
              Child = OCXFindNextChild(Child, v24, "pt");

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

            v27 = -[OADArcToPathElement initWithSemiaxes:startAngle:angleLength:]([OADArcToPathElement alloc], "initWithSemiaxes:startAngle:angleLength:", [a1 readAdjustCoordFromXmlNode:i name:"wR" formulaNameToIndexMap:{v10, v35}], objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "hR", v10), objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "stAng", v10), objc_msgSend(a1, "readAdjustCoordFromXmlNode:name:formulaNameToIndexMap:", i, "swAng", v10));
          }

LABEL_28:
          v30 = v27;
LABEL_29:
          [(OADPath *)v38 addElement:v30, v35];
        }

        [v35 addPath:v38];
        v33 = [v11 OAXMainNamespace];
        v34 = OCXFindNextChild(v37, v33, "path");

        v37 = v34;
      }

      while (v34);
    }
  }
}

+ (void)writePath:(id)a3 coordSpace:(CsRect<int>)a4 to:(id)a5
{
  v5 = *&a4.var0[2];
  v6 = *a4.var0;
  v8 = a3;
  v9 = v5;
  [v9 startOAElement:@"path"];
  v10 = v6[1];
  v11 = *v6;
  [v9 writeOAAttribute:@"w" intContent:v6[2] - v11];
  [v9 writeOAAttribute:@"h" intContent:v6[3] - v6[1]];
  v12 = [v8 fillMode];
  v13 = [a1 pathFillModeEnumMap];
  [v9 writeOAAttribute:@"fill" enumContent:v12 map:v13];

  [v9 writeOAAttribute:@"stroke" BOOLContent:{objc_msgSend(v8, "stroked")}];
  [v9 writeOAAttribute:@"extrusionOk" BOOLContent:0];
  v14 = [v8 elementCount];
  if (v14)
  {
    for (i = 0; v14 != i; ++i)
    {
      v16 = [v8 elementAtIndex:i];
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
          v18 = [v17 controlPoint1];
          v34[0] = v11;
          v34[1] = v10;
          [a1 writeShapePathPoint:v18 origin:v19 to:{v34, v9}];
          v20 = [v17 controlPoint2];
          v33[0] = v11;
          v33[1] = v10;
          [a1 writeShapePathPoint:v20 origin:v21 to:{v33, v9}];
          v22 = [v17 toPoint];
          v32[0] = v11;
          v32[1] = v10;
          [a1 writeShapePathPoint:v22 origin:v23 to:{v32, v9}];
          [v9 endElement];
LABEL_11:

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v16;
          [v9 startOAElement:@"lnTo"];
          v25 = [v24 toPoint];
          v31[0] = v11;
          v31[1] = v10;
          [a1 writeShapePathPoint:v25 origin:v26 to:{v31, v9}];
          [v9 endElement];
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v16;
          [v9 startOAElement:@"moveTo"];
          v28 = [v27 toPoint];
          v30[0] = v11;
          v30[1] = v10;
          [a1 writeShapePathPoint:v28 origin:v29 to:{v30, v9}];
          [v9 endElement];
          goto LABEL_11;
        }
      }

LABEL_12:
    }
  }

  [v9 endElement];
}

+ (void)writeShapePathPoint:(OADAdjustPoint)a3 origin:(CsPoint<int>)a4 to:(id)a5
{
  value = a3.y.value;
  x = a3.x;
  v8 = a5;
  [v8 startOAElement:@"pt"];
  [v8 writeOAAttribute:@"x" intContent:(*&x >> 32) - *a4.var0[0]];
  [v8 writeOAAttribute:@"y" intContent:value - *(*&a4 + 4)];
  [v8 endElement];
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