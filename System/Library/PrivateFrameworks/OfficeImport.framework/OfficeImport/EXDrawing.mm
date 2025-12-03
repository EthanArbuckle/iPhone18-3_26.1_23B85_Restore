@interface EXDrawing
+ (EDCellAnchorMarker)readAnchorMarkerFromNode:(_xmlNode *)node state:(id)state;
+ (id)readAbsoluteAnchorNode:(_xmlNode *)node state:(id)state;
+ (id)readAnchorNode:(_xmlNode *)node state:(id)state;
+ (id)readDrawableNode:(_xmlNode *)node anchor:(id)anchor state:(id)state;
+ (id)readOneCellAnchorNode:(_xmlNode *)node state:(id)state;
+ (id)readTwoCellAnchorNode:(_xmlNode *)node state:(id)state;
+ (void)initialize;
+ (void)readFromPart:(id)part state:(id)state;
@end

@implementation EXDrawing

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    objc_opt_class();
  }
}

+ (id)readAnchorNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (node->type == XML_ELEMENT_NODE)
  {
    eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
    v9 = [eXSpreadsheetDrawingNamespace containsNode:node];

    if (v9)
    {
      if (xmlStrEqual(node->name, "twoCellAnchor"))
      {
        v10 = [self readTwoCellAnchorNode:node state:v7];
LABEL_9:
        v11 = v10;
        goto LABEL_11;
      }

      if (xmlStrEqual(node->name, "oneCellAnchor"))
      {
        v10 = [self readOneCellAnchorNode:node state:v7];
        goto LABEL_9;
      }

      if (xmlStrEqual(node->name, "absoluteAnchor"))
      {
        v10 = [self readAbsoluteAnchorNode:node state:v7];
        goto LABEL_9;
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (void)readFromPart:(id)part state:(id)state
{
  partCopy = part;
  stateCopy = state;
  if (partCopy)
  {
    officeArtState = [stateCopy officeArtState];
    [officeArtState setPackagePart:partCopy];

    v8 = OCXGetRootElement([partCopy xmlDocument]);
    if (v8)
    {
      eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
      if ([eXSpreadsheetDrawingNamespace containsNode:v8])
      {
        v10 = xmlStrEqual(v8->name, "wsDr");

        if (v10)
        {
          for (i = OCXFirstChild(v8); i; i = OCXNextSibling(i))
          {
            v12 = [self readAnchorNode:i state:stateCopy];
          }
        }
      }

      else
      {
      }
    }
  }
}

+ (EDCellAnchorMarker)readAnchorMarkerFromNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
  v7 = CXRequiredLongChild(node, eXSpreadsheetDrawingNamespace, "col");

  eXSpreadsheetDrawingNamespace2 = [stateCopy EXSpreadsheetDrawingNamespace];
  v9 = CXRequiredLongChild(node, eXSpreadsheetDrawingNamespace2, "colOff", 12);

  eXSpreadsheetDrawingNamespace3 = [stateCopy EXSpreadsheetDrawingNamespace];
  LODWORD(eXSpreadsheetDrawingNamespace2) = CXRequiredLongChild(node, eXSpreadsheetDrawingNamespace3, "row");

  eXSpreadsheetDrawingNamespace4 = [stateCopy EXSpreadsheetDrawingNamespace];
  *&v12 = CXRequiredLongChild(node, eXSpreadsheetDrawingNamespace4, "rowOff", 12) / 12700.0;

  v13 = v7 | (COERCE_UNSIGNED_INT(v9 / 12700.0) << 32);
  v14 = eXSpreadsheetDrawingNamespace2 | (v12 << 32);
  result.rowIndex = v14;
  result.rowAdjustment = *(&v14 + 1);
  result.columnIndex = v13;
  result.columnAdjustment = *(&v13 + 1);
  return result;
}

+ (id)readTwoCellAnchorNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(EDTwoCellAnchor);
  [(EDTwoCellAnchor *)v7 setRelative:0];
  eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(node, eXSpreadsheetDrawingNamespace, "from");

  v10 = [self readAnchorMarkerFromNode:v9 state:stateCopy];
  [(EDTwoCellAnchor *)v7 setFrom:v10, v11];
  eXSpreadsheetDrawingNamespace2 = [stateCopy EXSpreadsheetDrawingNamespace];
  v13 = OCXNextSibling(v9, eXSpreadsheetDrawingNamespace2, "to");

  v14 = [self readAnchorMarkerFromNode:v13 state:stateCopy];
  [(EDTwoCellAnchor *)v7 setTo:v14, v15];
  v16 = CXDefaultStringAttribute(node, CXNoNamespace, "editAs", 0);
  if ([v16 isEqualToString:@"twoCell"])
  {
    v17 = 0;
  }

  else if ([v16 isEqualToString:@"oneCell"])
  {
    v17 = 1;
  }

  else if ([v16 isEqualToString:@"absolute"])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  [(EDTwoCellAnchor *)v7 setEditAs:v17];
  v18 = [self readDrawableNode:OCXNextSibling(v13) anchor:v7 state:stateCopy];

  return v18;
}

+ (id)readOneCellAnchorNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(EDOneCellAnchor);
  [(EDOneCellAnchor *)v7 setRelative:0];
  eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(node, eXSpreadsheetDrawingNamespace, "from");

  v10 = [self readAnchorMarkerFromNode:v9 state:stateCopy];
  [(EDOneCellAnchor *)v7 setFrom:v10, v11];
  eXSpreadsheetDrawingNamespace2 = [stateCopy EXSpreadsheetDrawingNamespace];
  v13 = OCXNextSibling(v9, eXSpreadsheetDrawingNamespace2, "ext");

  [OAXBaseTypes readSize2DFromXmlNode:v13];
  [(EDOneCellAnchor *)v7 setSize:?];
  v14 = [self readDrawableNode:OCXNextSibling(v13) anchor:v7 state:stateCopy];

  return v14;
}

+ (id)readAbsoluteAnchorNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(EDAbsoluteAnchor);
  eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(node, eXSpreadsheetDrawingNamespace, "pos");

  [OAXBaseTypes readPoint2DFromXmlNode:v9];
  [(EDAbsoluteAnchor *)v7 setPosition:?];
  eXSpreadsheetDrawingNamespace2 = [stateCopy EXSpreadsheetDrawingNamespace];
  v11 = OCXNextSibling(v9, eXSpreadsheetDrawingNamespace2, "ext");

  [OAXBaseTypes readSize2DFromXmlNode:v11];
  [(EDAbsoluteAnchor *)v7 setSize:?];
  v12 = [self readDrawableNode:OCXNextSibling(v11) anchor:v7 state:stateCopy];

  return v12;
}

+ (id)readDrawableNode:(_xmlNode *)node anchor:(id)anchor state:(id)state
{
  anchorCopy = anchor;
  stateCopy = state;
  eXSpreadsheetDrawingNamespace = [stateCopy EXSpreadsheetDrawingNamespace];
  officeArtState = [stateCopy officeArtState];
  v11 = [OAXDrawable readDrawableFromXmlNode:node inNamespace:eXSpreadsheetDrawingNamespace drawingState:officeArtState];

  if (v11)
  {
    clientData = [v11 clientData];
    if (!clientData)
    {
      v13 = objc_alloc_init(EDOfficeArtClient);
      currentSheet = [stateCopy currentSheet];
      [(EDOfficeArtClient *)v13 setSheet:currentSheet];

      clientData = v13;
      [v11 setClientData:v13];
    }

    [clientData setAnchor:anchorCopy];
    currentSheet2 = [stateCopy currentSheet];
    [currentSheet2 addDrawable:v11];
  }

  return v11;
}

@end