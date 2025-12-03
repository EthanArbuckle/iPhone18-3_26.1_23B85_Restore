@interface OAXTextBody
+ (id)stringWithTextAnchorType:(unsigned __int8)type;
+ (id)stringWithTextBodyFlowType:(unsigned __int8)type;
+ (id)stringWithTextBodyHorizontalOverflowType:(unsigned __int8)type;
+ (id)stringWithTextBodyVerticalOverflowType:(unsigned __int8)type;
+ (id)stringWithTextBodyWrapType:(unsigned __int8)type;
+ (unsigned)readAnchorType:(id)type;
+ (unsigned)readFlowType:(id)type;
+ (unsigned)readHorizontalOverflowType:(id)type;
+ (void)readFlowType:(id)type textBodyProperties:(id)properties;
+ (void)readHorizontalOverflowType:(id)type textBodyProperties:(id)properties;
+ (void)readTextBodyFromXmlNode:(_xmlNode *)node textBody:(id)body drawingState:(id)state;
+ (void)readTextBodyProperties:(_xmlNode *)properties textBodyProperties:(id)bodyProperties drawingState:(id)state;
+ (void)readVerticalOverflowType:(id)type textBodyProperties:(id)properties;
+ (void)readWrapType:(id)type textBodyProperties:(id)properties;
+ (void)writeTextBodyAutoFit:(id)fit to:(id)to;
@end

@implementation OAXTextBody

+ (void)readTextBodyFromXmlNode:(_xmlNode *)node textBody:(id)body drawingState:(id)state
{
  bodyCopy = body;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "bodyPr");

  if (!v10)
  {
    [TCMessageException raise:OABadFormat];
  }

  properties = [bodyCopy properties];
  [self readTextBodyProperties:v10 textBodyProperties:properties drawingState:stateCopy];

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  Child = OCXFindChild(node, oAXMainNamespace2, "p");

  while (Child)
  {
    addParagraph = [bodyCopy addParagraph];
    [OAXParagraph readParagraph:Child paragraph:addParagraph drawingState:stateCopy];

    oAXMainNamespace3 = [stateCopy OAXMainNamespace];
    Child = OCXFindNextChild(Child, oAXMainNamespace3, "p");
  }

  oAXMainNamespace4 = [stateCopy OAXMainNamespace];
  v17 = OCXFindChild(node, oAXMainNamespace4, "lstStyle");

  if (v17 && *(v17 + 24))
  {
    overrideTextListStyle = [bodyCopy overrideTextListStyle];
    [OAXTextListStyle readNode:v17 textListStyle:overrideTextListStyle state:stateCopy];
  }
}

+ (void)readTextBodyProperties:(_xmlNode *)properties textBodyProperties:(id)bodyProperties drawingState:(id)state
{
  bodyPropertiesCopy = bodyProperties;
  v45 = 0;
  v44 = 0;
  if (CXOptionalLongAttribute(properties, CXNoNamespace, "lIns", &v45, 12))
  {
    v8 = v45 / 12700.0;
    *&v8 = v8;
    [bodyPropertiesCopy setLeftInset:v8];
  }

  if (CXOptionalLongAttribute(properties, CXNoNamespace, "tIns", &v45, 12))
  {
    v9 = v45 / 12700.0;
    *&v9 = v9;
    [bodyPropertiesCopy setTopInset:v9];
  }

  if (CXOptionalLongAttribute(properties, CXNoNamespace, "rIns", &v45, 12))
  {
    v10 = v45 / 12700.0;
    *&v10 = v10;
    [bodyPropertiesCopy setRightInset:v10];
  }

  if (CXOptionalLongAttribute(properties, CXNoNamespace, "bIns", &v45, 12))
  {
    v11 = v45 / 12700.0;
    *&v11 = v11;
    [bodyPropertiesCopy setBottomInset:v11];
  }

  if (CXOptionalLongAttribute(properties, CXNoNamespace, "numCol", &v45))
  {
    [bodyPropertiesCopy setColumnCount:v45];
  }

  if (CXOptionalLongAttribute(properties, CXNoNamespace, "spcCol", &v45))
  {
    v12 = v45 / 12700.0;
    *&v12 = v12;
    [bodyPropertiesCopy setColumnSpacing:v12];
  }

  if (CXOptionalBoolAttribute(properties, CXNoNamespace, "rtlCol", &v44))
  {
    [bodyPropertiesCopy setIsLeftToRightColumns:v44];
  }

  if (CXOptionalBoolAttribute(properties, CXNoNamespace, "spcFirstLastPara", &v44))
  {
    [bodyPropertiesCopy setRespectLastFirstLineSpacing:v44];
  }

  if (CXOptionalBoolAttribute(properties, CXNoNamespace, "anchorCtr", &v44))
  {
    [bodyPropertiesCopy setIsAnchorCenter:v44];
  }

  v43 = 0;
  v13 = CXOptionalStringAttribute(properties, CXNoNamespace, "anchor", &v43);
  v14 = v43;
  if (v13)
  {
    [bodyPropertiesCopy setTextAnchorType:{objc_msgSend(self, "readAnchorType:", v14)}];
  }

  v42 = 0;
  v15 = CXOptionalStringAttribute(properties, CXNoNamespace, "vert", &v42);
  v16 = v42;
  if (v15)
  {
    [self readFlowType:v16 textBodyProperties:bodyPropertiesCopy];
  }

  [OAXBaseTypes readOptionalAngleFromXmlNode:properties name:"rot"];
  *&v17 = v17;
  [bodyPropertiesCopy setRotation:v17];
  v41 = 0;
  v18 = CXOptionalStringAttribute(properties, CXNoNamespace, "wrap", &v41);
  v19 = v41;
  if (v18)
  {
    [self readWrapType:v19 textBodyProperties:bodyPropertiesCopy];
  }

  v40 = 0;
  v20 = CXOptionalStringAttribute(properties, CXNoNamespace, "vertOverflow", &v40);
  v21 = v40;
  if (v20)
  {
    [self readVerticalOverflowType:v21 textBodyProperties:bodyPropertiesCopy];
  }

  v39 = 0;
  v36 = v19;
  v22 = CXOptionalStringAttribute(properties, CXNoNamespace, "horzOverflow", &v39);
  v23 = v39;
  if (v22)
  {
    [self readHorizontalOverflowType:v23 textBodyProperties:bodyPropertiesCopy];
  }

  if (CXOptionalBoolAttribute(properties, CXNoNamespace, "upright", &v44))
  {
    [bodyPropertiesCopy setIsUpright:v44];
  }

  for (i = OCXFirstChild(properties); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "noAutofit"))
    {
      v25 = [[OADTextBodyAutoFit alloc] initWithType:0];
      [bodyPropertiesCopy setAutoFit:v25];
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
      [bodyPropertiesCopy setAutoFit:v25];
      goto LABEL_43;
    }

    if (xmlStrEqual(i->name, "spAutoFit"))
    {
      v25 = [[OADTextBodyAutoFit alloc] initWithType:1];
      [bodyPropertiesCopy setAutoFit:v25];
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
        [bodyPropertiesCopy setTextWarp:v34];

        v14 = v35;
      }

      goto LABEL_43;
    }
  }
}

+ (unsigned)readFlowType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"horz"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"vert"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"vert270"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"wordArtVert"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"eaVert"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"mongolianVert"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"wordArtVertRtl"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)readAnchorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"t"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ctr"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"b"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"just"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"dist"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)readHorizontalOverflowType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"overflow"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"clip"];
  }

  return v4;
}

+ (id)stringWithTextBodyVerticalOverflowType:(unsigned __int8)type
{
  v3 = @"clip";
  if (type == 1)
  {
    v3 = @"ellipsis";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"overflow";
  }
}

+ (id)stringWithTextBodyHorizontalOverflowType:(unsigned __int8)type
{
  if (type)
  {
    return @"clip";
  }

  else
  {
    return @"overflow";
  }
}

+ (id)stringWithTextBodyFlowType:(unsigned __int8)type
{
  if (type > 7u)
  {
    return @"horz";
  }

  else
  {
    return off_2799C7BC0[type];
  }
}

+ (id)stringWithTextBodyWrapType:(unsigned __int8)type
{
  v3 = &stru_286EE1130;
  if (type == 1)
  {
    v3 = @"square";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"none";
  }
}

+ (id)stringWithTextAnchorType:(unsigned __int8)type
{
  if (type > 4u)
  {
    return @"b";
  }

  else
  {
    return off_2799C7C00[type];
  }
}

+ (void)readFlowType:(id)type textBodyProperties:(id)properties
{
  typeCopy = type;
  propertiesCopy = properties;
  [propertiesCopy setFlowType:{objc_msgSend(self, "readFlowType:", typeCopy)}];
}

+ (void)readWrapType:(id)type textBodyProperties:(id)properties
{
  typeCopy = type;
  propertiesCopy = properties;
  if ([typeCopy isEqualToString:@"none"])
  {
    v6 = 0;
  }

  else
  {
    v6 = [typeCopy isEqualToString:@"square"];
  }

  [propertiesCopy setWrapType:v6];
}

+ (void)readVerticalOverflowType:(id)type textBodyProperties:(id)properties
{
  typeCopy = type;
  propertiesCopy = properties;
  if ([typeCopy isEqualToString:@"overflow"])
  {
    v6 = 0;
  }

  else if ([typeCopy isEqualToString:@"ellipsis"])
  {
    v6 = 1;
  }

  else if ([typeCopy isEqualToString:@"clip"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [propertiesCopy setVerticalOverflowType:v6];
}

+ (void)readHorizontalOverflowType:(id)type textBodyProperties:(id)properties
{
  typeCopy = type;
  propertiesCopy = properties;
  [propertiesCopy setHorizontalOverflowType:{objc_msgSend(self, "readHorizontalOverflowType:", typeCopy)}];
}

+ (void)writeTextBodyAutoFit:(id)fit to:(id)to
{
  fitCopy = fit;
  toCopy = to;
  if (fitCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = fitCopy;
      [toCopy startOAElement:@"normAutofit"];
      [v6 fontScalePercent];
      [toCopy writeOAAttribute:@"fontScale" intContent:(v7 * 100000.0 / 100.0)];
      [v6 lineSpacingReductionPercent];
      [toCopy writeOAAttribute:@"lnSpcReduction" intContent:(v8 * 100000.0 / 100.0)];
      [toCopy endElement];

      goto LABEL_9;
    }

    type = [fitCopy type];
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_9;
      }

      v10 = @"spAutoFit";
    }

    else
    {
      v10 = @"noAutofit";
    }

    [toCopy startOAElement:v10];
    [toCopy endElement];
  }

LABEL_9:
}

@end