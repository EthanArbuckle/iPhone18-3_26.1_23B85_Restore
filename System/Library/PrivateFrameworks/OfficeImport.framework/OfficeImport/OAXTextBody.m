@interface OAXTextBody
+ (id)stringWithTextAnchorType:(unsigned __int8)a3;
+ (id)stringWithTextBodyFlowType:(unsigned __int8)a3;
+ (id)stringWithTextBodyHorizontalOverflowType:(unsigned __int8)a3;
+ (id)stringWithTextBodyVerticalOverflowType:(unsigned __int8)a3;
+ (id)stringWithTextBodyWrapType:(unsigned __int8)a3;
+ (unsigned)readAnchorType:(id)a3;
+ (unsigned)readFlowType:(id)a3;
+ (unsigned)readHorizontalOverflowType:(id)a3;
+ (void)readFlowType:(id)a3 textBodyProperties:(id)a4;
+ (void)readHorizontalOverflowType:(id)a3 textBodyProperties:(id)a4;
+ (void)readTextBodyFromXmlNode:(_xmlNode *)a3 textBody:(id)a4 drawingState:(id)a5;
+ (void)readTextBodyProperties:(_xmlNode *)a3 textBodyProperties:(id)a4 drawingState:(id)a5;
+ (void)readVerticalOverflowType:(id)a3 textBodyProperties:(id)a4;
+ (void)readWrapType:(id)a3 textBodyProperties:(id)a4;
+ (void)writeTextBodyAutoFit:(id)a3 to:(id)a4;
@end

@implementation OAXTextBody

+ (void)readTextBodyFromXmlNode:(_xmlNode *)a3 textBody:(id)a4 drawingState:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = [v8 OAXMainNamespace];
  v10 = OCXFindChild(a3, v9, "bodyPr");

  if (!v10)
  {
    [TCMessageException raise:OABadFormat];
  }

  v11 = [v19 properties];
  [a1 readTextBodyProperties:v10 textBodyProperties:v11 drawingState:v8];

  v12 = [v8 OAXMainNamespace];
  Child = OCXFindChild(a3, v12, "p");

  while (Child)
  {
    v14 = [v19 addParagraph];
    [OAXParagraph readParagraph:Child paragraph:v14 drawingState:v8];

    v15 = [v8 OAXMainNamespace];
    Child = OCXFindNextChild(Child, v15, "p");
  }

  v16 = [v8 OAXMainNamespace];
  v17 = OCXFindChild(a3, v16, "lstStyle");

  if (v17 && *(v17 + 24))
  {
    v18 = [v19 overrideTextListStyle];
    [OAXTextListStyle readNode:v17 textListStyle:v18 state:v8];
  }
}

+ (void)readTextBodyProperties:(_xmlNode *)a3 textBodyProperties:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v45 = 0;
  v44 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "lIns", &v45, 12))
  {
    v8 = v45 / 12700.0;
    *&v8 = v8;
    [v7 setLeftInset:v8];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "tIns", &v45, 12))
  {
    v9 = v45 / 12700.0;
    *&v9 = v9;
    [v7 setTopInset:v9];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "rIns", &v45, 12))
  {
    v10 = v45 / 12700.0;
    *&v10 = v10;
    [v7 setRightInset:v10];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "bIns", &v45, 12))
  {
    v11 = v45 / 12700.0;
    *&v11 = v11;
    [v7 setBottomInset:v11];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "numCol", &v45))
  {
    [v7 setColumnCount:v45];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "spcCol", &v45))
  {
    v12 = v45 / 12700.0;
    *&v12 = v12;
    [v7 setColumnSpacing:v12];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rtlCol", &v44))
  {
    [v7 setIsLeftToRightColumns:v44];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "spcFirstLastPara", &v44))
  {
    [v7 setRespectLastFirstLineSpacing:v44];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "anchorCtr", &v44))
  {
    [v7 setIsAnchorCenter:v44];
  }

  v43 = 0;
  v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "anchor", &v43);
  v14 = v43;
  if (v13)
  {
    [v7 setTextAnchorType:{objc_msgSend(a1, "readAnchorType:", v14)}];
  }

  v42 = 0;
  v15 = CXOptionalStringAttribute(a3, CXNoNamespace, "vert", &v42);
  v16 = v42;
  if (v15)
  {
    [a1 readFlowType:v16 textBodyProperties:v7];
  }

  [OAXBaseTypes readOptionalAngleFromXmlNode:a3 name:"rot"];
  *&v17 = v17;
  [v7 setRotation:v17];
  v41 = 0;
  v18 = CXOptionalStringAttribute(a3, CXNoNamespace, "wrap", &v41);
  v19 = v41;
  if (v18)
  {
    [a1 readWrapType:v19 textBodyProperties:v7];
  }

  v40 = 0;
  v20 = CXOptionalStringAttribute(a3, CXNoNamespace, "vertOverflow", &v40);
  v21 = v40;
  if (v20)
  {
    [a1 readVerticalOverflowType:v21 textBodyProperties:v7];
  }

  v39 = 0;
  v36 = v19;
  v22 = CXOptionalStringAttribute(a3, CXNoNamespace, "horzOverflow", &v39);
  v23 = v39;
  if (v22)
  {
    [a1 readHorizontalOverflowType:v23 textBodyProperties:v7];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "upright", &v44))
  {
    [v7 setIsUpright:v44];
  }

  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "noAutofit"))
    {
      v25 = [[OADTextBodyAutoFit alloc] initWithType:0];
      [v7 setAutoFit:v25];
LABEL_43:

      continue;
    }

    if (xmlStrEqual(i->name, "normAutofit"))
    {
      v38 = 0.0;
      v26 = CXOptionalFractionAttribute(i, CXNoNamespace, "fontScale", &v38);
      v27 = v38 * 100.0;
      if (!v26)
      {
        v27 = 100.0;
      }

      v38 = v27;
      v37 = 0.0;
      v28 = CXOptionalFractionAttribute(i, CXNoNamespace, "lnSpcReduction", &v37);
      v29 = v37 * 100.0;
      if (!v28)
      {
        v29 = 0.0;
      }

      v37 = v29;
      v30 = [OADNormalTextBodyAutoFit alloc];
      HIDWORD(v32) = HIDWORD(v37);
      HIDWORD(v31) = HIDWORD(v38);
      *&v31 = v38;
      *&v32 = v37;
      v25 = [(OADNormalTextBodyAutoFit *)v30 initWithFontScalePercent:v31 lineSpacingReductionPercent:v32];
      [v7 setAutoFit:v25];
      goto LABEL_43;
    }

    if (xmlStrEqual(i->name, "spAutoFit"))
    {
      v25 = [[OADTextBodyAutoFit alloc] initWithType:1];
      [v7 setAutoFit:v25];
      goto LABEL_43;
    }

    if (xmlStrEqual(i->name, "prstTxWarp"))
    {
      v33 = CXDefaultStringAttribute(i, CXNoNamespace, "prst", 0);
      v25 = v33;
      if (v33 && ([(OADTextBodyAutoFit *)v33 isEqualToString:@"textNoShape"]& 1) == 0)
      {
        v35 = v14;
        v34 = objc_alloc_init(OADPresetTextWarp);
        [(OADPresetTextWarp *)v34 setPresetTextWarpType:29];
        [v7 setTextWarp:v34];

        v14 = v35;
      }

      goto LABEL_43;
    }
  }
}

+ (unsigned)readFlowType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"horz"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"vert"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"vert270"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"wordArtVert"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"eaVert"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"mongolianVert"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"wordArtVertRtl"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)readAnchorType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"t"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ctr"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"b"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"just"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"dist"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)readHorizontalOverflowType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"overflow"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"clip"];
  }

  return v4;
}

+ (id)stringWithTextBodyVerticalOverflowType:(unsigned __int8)a3
{
  v3 = @"clip";
  if (a3 == 1)
  {
    v3 = @"ellipsis";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"overflow";
  }
}

+ (id)stringWithTextBodyHorizontalOverflowType:(unsigned __int8)a3
{
  if (a3)
  {
    return @"clip";
  }

  else
  {
    return @"overflow";
  }
}

+ (id)stringWithTextBodyFlowType:(unsigned __int8)a3
{
  if (a3 > 7u)
  {
    return @"horz";
  }

  else
  {
    return off_2799C7BC0[a3];
  }
}

+ (id)stringWithTextBodyWrapType:(unsigned __int8)a3
{
  v3 = &stru_286EE1130;
  if (a3 == 1)
  {
    v3 = @"square";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"none";
  }
}

+ (id)stringWithTextAnchorType:(unsigned __int8)a3
{
  if (a3 > 4u)
  {
    return @"b";
  }

  else
  {
    return off_2799C7C00[a3];
  }
}

+ (void)readFlowType:(id)a3 textBodyProperties:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v6 setFlowType:{objc_msgSend(a1, "readFlowType:", v7)}];
}

+ (void)readWrapType:(id)a3 textBodyProperties:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 isEqualToString:@"none"])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v7 isEqualToString:@"square"];
  }

  [v5 setWrapType:v6];
}

+ (void)readVerticalOverflowType:(id)a3 textBodyProperties:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 isEqualToString:@"overflow"])
  {
    v6 = 0;
  }

  else if ([v7 isEqualToString:@"ellipsis"])
  {
    v6 = 1;
  }

  else if ([v7 isEqualToString:@"clip"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v5 setVerticalOverflowType:v6];
}

+ (void)readHorizontalOverflowType:(id)a3 textBodyProperties:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v6 setHorizontalOverflowType:{objc_msgSend(a1, "readHorizontalOverflowType:", v7)}];
}

+ (void)writeTextBodyAutoFit:(id)a3 to:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
      [v5 startOAElement:@"normAutofit"];
      [v6 fontScalePercent];
      [v5 writeOAAttribute:@"fontScale" intContent:(v7 * 100000.0 / 100.0)];
      [v6 lineSpacingReductionPercent];
      [v5 writeOAAttribute:@"lnSpcReduction" intContent:(v8 * 100000.0 / 100.0)];
      [v5 endElement];

      goto LABEL_9;
    }

    v9 = [v11 type];
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_9;
      }

      v10 = @"spAutoFit";
    }

    else
    {
      v10 = @"noAutofit";
    }

    [v5 startOAElement:v10];
    [v5 endElement];
  }

LABEL_9:
}

@end