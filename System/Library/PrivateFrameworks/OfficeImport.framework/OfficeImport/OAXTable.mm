@interface OAXTable
+ (id)readCellBorderStyle:(_xmlNode *)style drawingState:(id)state;
+ (id)readCellPropertiesFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readCellStyle:(_xmlNode *)style drawingState:(id)state;
+ (id)readDefaultTableStyleWithDrawingState:(id)state;
+ (id)readFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readPartStyle:(_xmlNode *)style drawingState:(id)state;
+ (id)readTableStyle:(_xmlNode *)style drawingState:(id)state;
+ (id)readTextStyle:(_xmlNode *)style drawingState:(id)state;
+ (id)readThemableEffectsFromParent:(_xmlNode *)parent drawingState:(id)state;
+ (id)readThemableFillFromParent:(_xmlNode *)parent drawingState:(id)state;
+ (id)readThemableStrokeFromParent:(_xmlNode *)parent drawingState:(id)state;
+ (int)readOnOffFlag:(id)flag;
+ (void)cacheTableStylesInPart:(id)part cache:(id)cache drawingState:(id)state;
+ (void)readCellFromXmlNode:(_xmlNode *)node toCell:(id)cell drawingState:(id)state;
+ (void)readGridFromXmlNode:(_xmlNode *)node toGrid:(id)grid drawingState:(id)state;
+ (void)readPropertiesFromXmlNode:(_xmlNode *)node toProperties:(id)properties drawingState:(id)state;
+ (void)readRowFromXmlNode:(_xmlNode *)node toRow:(id)row drawingState:(id)state;
+ (void)readRowsFromTableXmlNode:(_xmlNode *)node toTable:(id)table drawingState:(id)state;
@end

@implementation OAXTable

+ (id)readTableStyle:(_xmlNode *)style drawingState:(id)state
{
  stateCopy = state;
  if (style)
  {
    v7 = CXRequiredStringAttribute(style, CXNoNamespace, "styleId");
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    v9 = [oAXMainNamespace containsNode:style];

    if (v9)
    {
      v10 = objc_alloc_init(OADTableStyle);
      [(OADTableStyle *)v10 setId:v7];
      v11 = CXRequiredStringAttribute(style, CXNoNamespace, "styleName");
      [(OADTableStyle *)v10 setName:v11];
      oAXMainNamespace2 = [stateCopy OAXMainNamespace];
      v13 = OCXFindChild(style, oAXMainNamespace2, "tblBg");

      if (v13)
      {
        v14 = objc_alloc_init(OADTableBackground);
        v15 = [self readThemableFillFromParent:v13 drawingState:stateCopy];
        if (v15)
        {
          [(OADTableBackground *)v14 setFill:v15];
        }

        v16 = [self readThemableEffectsFromParent:v13 drawingState:stateCopy];
        if (v16)
        {
          [(OADTableBackground *)v14 setEffects:v16];
        }

        [(OADTableStyle *)v10 setBackground:v14];
      }

      for (i = OCXFirstChild(style); i; i = OCXNextSibling(i))
      {
        v18 = [self readPartStyle:i drawingState:stateCopy];
        if (xmlStrEqual(i->name, "wholeTbl"))
        {
          [(OADTableStyle *)v10 setWholeTableStyle:v18];
        }

        else if (xmlStrEqual(i->name, "band1H"))
        {
          [(OADTableStyle *)v10 setBand1HorzStyle:v18];
        }

        else if (xmlStrEqual(i->name, "band2H"))
        {
          [(OADTableStyle *)v10 setBand2HorzStyle:v18];
        }

        else if (xmlStrEqual(i->name, "band1V"))
        {
          [(OADTableStyle *)v10 setBand1VertStyle:v18];
        }

        else if (xmlStrEqual(i->name, "band2V"))
        {
          [(OADTableStyle *)v10 setBand2VertStyle:v18];
        }

        else if (xmlStrEqual(i->name, "firstRow"))
        {
          [(OADTableStyle *)v10 setFirstRowStyle:v18];
        }

        else if (xmlStrEqual(i->name, "lastRow"))
        {
          [(OADTableStyle *)v10 setLastRowStyle:v18];
        }

        else if (xmlStrEqual(i->name, "firstCol"))
        {
          [(OADTableStyle *)v10 setFirstColumnStyle:v18];
        }

        else if (xmlStrEqual(i->name, "lastCol"))
        {
          [(OADTableStyle *)v10 setLastColumnStyle:v18];
        }

        else if (xmlStrEqual(i->name, "neCell"))
        {
          [(OADTableStyle *)v10 setNorthEastStyle:v18];
        }

        else if (xmlStrEqual(i->name, "nwCell"))
        {
          [(OADTableStyle *)v10 setNorthWestStyle:v18];
        }

        else if (xmlStrEqual(i->name, "seCell"))
        {
          [(OADTableStyle *)v10 setSouthEastStyle:v18];
        }

        else if (xmlStrEqual(i->name, "swCell"))
        {
          [(OADTableStyle *)v10 setSouthWestStyle:v18];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)readFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTable);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(node, oAXMainNamespace, "tblPr");

  if (v9)
  {
    tableProperties = [(OADTable *)v7 tableProperties];
    [self readPropertiesFromXmlNode:v9 toProperties:tableProperties drawingState:stateCopy];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(node, oAXMainNamespace2, "tblGrid");

  if (!v12)
  {
    [TCMessageException raise:OABadFormat];
  }

  grid = [(OADTable *)v7 grid];
  [self readGridFromXmlNode:v12 toGrid:grid drawingState:stateCopy];

  [self readRowsFromTableXmlNode:node toTable:v7 drawingState:stateCopy];

  return v7;
}

+ (void)cacheTableStylesInPart:(id)part cache:(id)cache drawingState:(id)state
{
  partCopy = part;
  cacheCopy = cache;
  stateCopy = state;
  if (partCopy)
  {
    v9 = OCXGetRootElement([partCopy xmlDocument]);
    v10 = v9;
    if (!v9 || !xmlStrEqual(v9->name, "tblStyleLst"))
    {
      [TCMessageException raise:OABadFormat];
    }

    [cacheCopy setStylesPart:partCopy];
    v11 = CXDefaultStringAttribute(v10, CXNoNamespace, "def", 0);
    [cacheCopy setDefaultStyleId:v11];
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    Child = OCXFindChild(v10, oAXMainNamespace, "tblStyle");

    while (Child)
    {
      v14 = CXDefaultStringAttribute(Child, CXNoNamespace, "styleId", 0);
      [cacheCopy setStyleNode:Child forId:v14];
      oAXMainNamespace2 = [stateCopy OAXMainNamespace];
      Child = OCXFindNextChild(Child, oAXMainNamespace2, "tblStyle");
    }
  }
}

+ (id)readDefaultTableStyleWithDrawingState:(id)state
{
  stateCopy = state;
  tableStyleCache = [stateCopy tableStyleCache];
  v6 = [self readTableStyle:objc_msgSend(tableStyleCache drawingState:{"defaultStyleNode"), stateCopy}];

  return v6;
}

+ (id)readThemableStrokeFromParent:(_xmlNode *)parent drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v7 = OCXFindChild(parent, oAXMainNamespace, "ln");

  if (v7)
  {
    packagePart = [stateCopy packagePart];
    v9 = [OAXStroke readStrokeFromXmlNode:v7 packagePart:packagePart drawingState:stateCopy];
  }

  else
  {
    styleMatrix = [stateCopy styleMatrix];
    v17 = 0;
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v16 = 0;
    [OAXStyleMatrix readReferenceFromParentNode:parent name:"lnRef" inNamespace:oAXMainNamespace2 color:&v16 index:&v17];
    v12 = v16;

    v13 = [styleMatrix strokeAtIndex:v17];
    v14 = v13;
    if (v13)
    {
      v9 = [v13 copy];

      if (v12)
      {
        [v9 setStyleColor:v12];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)readThemableFillFromParent:(_xmlNode *)parent drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v7 = OCXFindChild(parent, oAXMainNamespace, "fill");

  if (v7)
  {
    for (i = OCXFirstChild(v7); i; i = OCXNextSibling(i))
    {
      packagePart = [stateCopy packagePart];
      v10 = [OAXFill readFillFromXmlNode:i packagePart:packagePart drawingState:stateCopy];

      if (v10)
      {
        goto LABEL_12;
      }
    }

    v10 = 0;
  }

  else
  {
    styleMatrix = [stateCopy styleMatrix];
    v18 = 0;
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v17 = 0;
    [OAXStyleMatrix readReferenceFromParentNode:parent name:"fillRef" inNamespace:oAXMainNamespace2 color:&v17 index:&v18];
    v13 = v17;

    v14 = [styleMatrix fillAtIndex:v18];
    v15 = v14;
    if (v14)
    {
      v10 = [v14 copy];

      if (v13)
      {
        [v10 setStyleColor:v13];
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_12:

  return v10;
}

+ (id)readThemableEffectsFromParent:(_xmlNode *)parent drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v7 = OCXFindChild(parent, oAXMainNamespace, "effect");

  if (v7)
  {
    packagePart = [stateCopy packagePart];
    v9 = [OAXEffect readEffectsFromXmlNode:v7 packagePart:packagePart drawingState:stateCopy];
  }

  else
  {
    styleMatrix = [stateCopy styleMatrix];
    v16 = 0;
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v15 = 0;
    [OAXStyleMatrix readReferenceFromParentNode:parent name:"effectRef" inNamespace:oAXMainNamespace2 color:&v15 index:&v16];
    v12 = v15;

    v13 = [styleMatrix effectsAtIndex:v16];
    if (v13)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13 copyItems:1];

      if (v12)
      {
        [v9 makeObjectsPerformSelector:sel_setStyleColor_ withObject:v12];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)readCellBorderStyle:(_xmlNode *)style drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTableCellBorderStyle);
  for (i = OCXFirstChild(style); i; i = OCXNextSibling(i))
  {
    v9 = [self readThemableStrokeFromParent:i drawingState:stateCopy];
    if (xmlStrEqual(i->name, "left"))
    {
      [(OADTableCellBorderStyle *)v7 setLeftStroke:v9];
    }

    else if (xmlStrEqual(i->name, "right"))
    {
      [(OADTableCellBorderStyle *)v7 setRightStroke:v9];
    }

    else if (xmlStrEqual(i->name, "top"))
    {
      [(OADTableCellBorderStyle *)v7 setTopStroke:v9];
    }

    else if (xmlStrEqual(i->name, "bottom"))
    {
      [(OADTableCellBorderStyle *)v7 setBottomStroke:v9];
    }

    else if (xmlStrEqual(i->name, "insideH"))
    {
      [(OADTableCellBorderStyle *)v7 setHorzInsideStroke:v9];
    }

    else if (xmlStrEqual(i->name, "insideV"))
    {
      [(OADTableCellBorderStyle *)v7 setVertInsideStroke:v9];
    }

    else if (xmlStrEqual(i->name, "tl2br"))
    {
      [(OADTableCellBorderStyle *)v7 setTopLeftToBottomRightStroke:v9];
    }

    else if (xmlStrEqual(i->name, "tr2bl"))
    {
      [(OADTableCellBorderStyle *)v7 setBottomLeftToTopRightStroke:v9];
    }
  }

  return v7;
}

+ (id)readCellStyle:(_xmlNode *)style drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTableCellStyle);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(style, oAXMainNamespace, "tcBdr");

  if (v9)
  {
    v10 = [self readCellBorderStyle:v9 drawingState:stateCopy];
    [(OADTableCellStyle *)v7 setBorderStyle:v10];
  }

  v11 = [self readThemableFillFromParent:style drawingState:stateCopy];
  if (v11)
  {
    [(OADTableCellStyle *)v7 setFill:v11];
  }

  return v7;
}

+ (int)readOnOffFlag:(id)flag
{
  flagCopy = flag;
  if ([flagCopy isEqualToString:@"on"])
  {
    v4 = 0;
  }

  else if ([flagCopy isEqualToString:@"off"])
  {
    v4 = 1;
  }

  else
  {
    [flagCopy isEqualToString:@"def"];
    v4 = 2;
  }

  return v4;
}

+ (id)readTextStyle:(_xmlNode *)style drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTableTextStyle);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(style, oAXMainNamespace, "fontRef");

  if (v9)
  {
    v10 = objc_alloc_init(OADFontReference);
    [(OADTableTextStyle *)v7 setFontReference:v10];
    [OAXFontReference readFromNode:v9 fontReference:v10];
  }

  v11 = [OAXColor readColorFromParentXmlNode:style];
  if (v11)
  {
    [(OADTableTextStyle *)v7 setColor:v11];
  }

  v18 = 0;
  v12 = CXOptionalStringAttribute(style, CXNoNamespace, "b", &v18);
  v13 = v18;
  if (v12)
  {
    -[OADTableTextStyle setBold:](v7, "setBold:", [self readOnOffFlag:v13]);
  }

  v17 = 0;
  v14 = CXOptionalStringAttribute(style, CXNoNamespace, "i", &v17);
  v15 = v17;
  if (v14)
  {
    -[OADTableTextStyle setItalic:](v7, "setItalic:", [self readOnOffFlag:v15]);
  }

  return v7;
}

+ (id)readPartStyle:(_xmlNode *)style drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTablePartStyle);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(style, oAXMainNamespace, "tcStyle");

  if (v9)
  {
    v10 = [self readCellStyle:v9 drawingState:stateCopy];
    [(OADTablePartStyle *)v7 setCellStyle:v10];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(style, oAXMainNamespace2, "tcTxStyle");

  if (v12)
  {
    v13 = [self readTextStyle:v12 drawingState:stateCopy];
    [(OADTablePartStyle *)v7 setTextStyle:v13];
  }

  return v7;
}

+ (void)readPropertiesFromXmlNode:(_xmlNode *)node toProperties:(id)properties drawingState:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  [propertiesCopy setFirstColumn:{CXDefaultBoolAttribute(node, CXNoNamespace, "firstCol", 0)}];
  [propertiesCopy setFirstRow:{CXDefaultBoolAttribute(node, CXNoNamespace, "firstRow", 0)}];
  [propertiesCopy setLastColumn:{CXDefaultBoolAttribute(node, CXNoNamespace, "lastCol", 0)}];
  [propertiesCopy setLastRow:{CXDefaultBoolAttribute(node, CXNoNamespace, "lastRow", 0)}];
  [propertiesCopy setBandColumn:{CXDefaultBoolAttribute(node, CXNoNamespace, "bandCol", 0)}];
  [propertiesCopy setBandRow:{CXDefaultBoolAttribute(node, CXNoNamespace, "bandRow", 0)}];
  [propertiesCopy setRightToLeft:{CXDefaultBoolAttribute(node, CXNoNamespace, "rtl", 0)}];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "effectLst");

  if (v10)
  {
    packagePart = [stateCopy packagePart];
    v12 = [OAXEffect readEffectsFromXmlNode:v10 packagePart:packagePart drawingState:stateCopy];
  }

  else
  {
    v12 = 0;
  }

  [propertiesCopy setEffects:v12];
  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v14 = OCXFindChild(node, oAXMainNamespace2, "tableStyle");

  if (v14)
  {
    goto LABEL_5;
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v17 = OCXFindChild(node, oAXMainNamespace3, "tableStyleId");

  if (v17)
  {
    v18 = *(v17 + 24);
    if (v18)
    {
      if (*(v18 + 8) == 3)
      {
        v17 = *(v17 + 24);
      }

      else
      {
        [TCMessageException raise:OABadFormat];
        v17 = v18;
      }
    }

    if (*(v17 + 80))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      tableStyleCache = [stateCopy tableStyleCache];
      v14 = [tableStyleCache styleNodeForId:v15];

      if (!v14)
      {
        [TCMessageException raise:OABadFormat];
        goto LABEL_6;
      }

LABEL_5:
      v15 = [self readTableStyle:v14 drawingState:stateCopy];
      [propertiesCopy setStyle:v15];
LABEL_6:
    }
  }
}

+ (void)readGridFromXmlNode:(_xmlNode *)node toGrid:(id)grid drawingState:(id)state
{
  gridCopy = grid;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  Child = OCXFindChild(node, oAXMainNamespace, "gridCol");

  while (Child)
  {
    addColumn = [gridCopy addColumn];
    [OAXBaseTypes readRequiredLengthFromXmlNode:Child name:"w"];
    [addColumn setWidth:?];
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindNextChild(Child, oAXMainNamespace2, "gridCol");
  }
}

+ (id)readCellPropertiesFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(OADTableCellProperties);
  packagePart = [stateCopy packagePart];
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    if (xmlStrEqual(i->name, "lnL"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setLeftStroke:v9];
LABEL_16:

      continue;
    }

    if (xmlStrEqual(i->name, "lnR"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setRightStroke:v9];
      goto LABEL_16;
    }

    if (xmlStrEqual(i->name, "lnT"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setTopStroke:v9];
      goto LABEL_16;
    }

    if (xmlStrEqual(i->name, "lnB"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setBottomStroke:v9];
      goto LABEL_16;
    }

    if (xmlStrEqual(i->name, "lnTlToBr"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setTopLeftToBottomRightStroke:v9];
      goto LABEL_16;
    }

    if (xmlStrEqual(i->name, "lnBlToTr"))
    {
      v9 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      [(OADTableCellProperties *)v6 setBottomLeftToTopRightStroke:v9];
      goto LABEL_16;
    }

    if (!xmlStrEqual(i->name, "cell3D") && !xmlStrEqual(i->name, "ext") && !xmlStrEqual(i->name, "headers"))
    {
      v9 = [OAXFill readFillFromXmlNode:i packagePart:packagePart drawingState:stateCopy];
      if (v9)
      {
        [(OADTableCellProperties *)v6 setFill:v9];
      }

      goto LABEL_16;
    }
  }

  v28 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "marL", &v28, 12))
  {
    v10 = v28 / 12700.0;
    *&v10 = v10;
    [(OADTableCellProperties *)v6 setLeftMargin:v10];
  }

  v27 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "marR", &v27, 12))
  {
    v11 = v27 / 12700.0;
    *&v11 = v11;
    [(OADTableCellProperties *)v6 setRightMargin:v11];
  }

  v26 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "marT", &v26, 12))
  {
    v12 = v26 / 12700.0;
    *&v12 = v12;
    [(OADTableCellProperties *)v6 setTopMargin:v12];
  }

  v25 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "marB", &v25, 12))
  {
    v13 = v25 / 12700.0;
    *&v13 = v13;
    [(OADTableCellProperties *)v6 setBottomMargin:v13];
  }

  v24 = 0;
  v14 = CXOptionalStringAttribute(node, CXNoNamespace, "vert", &v24);
  v15 = v24;
  if (v14)
  {
    [(OADTableCellProperties *)v6 setTextFlow:[OAXTextBody readFlowType:v15]];
  }

  v23 = 0;
  v16 = CXOptionalStringAttribute(node, CXNoNamespace, "anchor", &v23);
  v17 = v23;
  if (v16)
  {
    [(OADTableCellProperties *)v6 setTextAnchor:[OAXTextBody readAnchorType:v17]];
  }

  v22 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "anchorCtr", &v22))
  {
    [(OADTableCellProperties *)v6 setTextAnchorCenter:v22];
  }

  v21 = 0;
  v18 = CXOptionalStringAttribute(node, CXNoNamespace, "horzOverflow", &v21);
  v19 = v21;
  if (v18)
  {
    [(OADTableCellProperties *)v6 setTextHorizontalOverflow:[OAXTextBody readHorizontalOverflowType:v19]];
  }

  return v6;
}

+ (void)readCellFromXmlNode:(_xmlNode *)node toCell:(id)cell drawingState:(id)state
{
  cellCopy = cell;
  stateCopy = state;
  [cellCopy setRowSpan:{CXDefaultLongAttribute(node, CXNoNamespace, "rowSpan", 1)}];
  [cellCopy setGridSpan:{CXDefaultLongAttribute(node, CXNoNamespace, "gridSpan", 1)}];
  [cellCopy setHorzMerge:{CXDefaultBoolAttribute(node, CXNoNamespace, "hMerge", 0)}];
  [cellCopy setVertMerge:{CXDefaultBoolAttribute(node, CXNoNamespace, "vMerge", 0)}];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "txBody");

  if (v10)
  {
    v11 = objc_alloc_init(OADTextBody);
    [cellCopy setTextBody:v11];
    [OAXTextBody readTextBodyFromXmlNode:v10 textBody:v11 drawingState:stateCopy];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace2, "tcPr");

  if (v13)
  {
    v14 = [self readCellPropertiesFromXmlNode:v13 drawingState:stateCopy];
    [cellCopy setProperties:v14];
  }
}

+ (void)readRowFromXmlNode:(_xmlNode *)node toRow:(id)row drawingState:(id)state
{
  rowCopy = row;
  stateCopy = state;
  [OAXBaseTypes readRequiredLengthFromXmlNode:node name:"h"];
  [rowCopy setHeight:?];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  Child = OCXFindChild(node, oAXMainNamespace, "tc");

  while (Child)
  {
    addCell = [rowCopy addCell];
    [self readCellFromXmlNode:Child toCell:addCell drawingState:stateCopy];

    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindNextChild(Child, oAXMainNamespace2, "tc");
  }
}

+ (void)readRowsFromTableXmlNode:(_xmlNode *)node toTable:(id)table drawingState:(id)state
{
  tableCopy = table;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  Child = OCXFindChild(node, oAXMainNamespace, "tr");

  while (Child)
  {
    addRow = [tableCopy addRow];
    [self readRowFromXmlNode:Child toRow:addRow drawingState:stateCopy];

    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindNextChild(Child, oAXMainNamespace2, "tr");
  }
}

@end