@interface EXDrawing
+ (EDCellAnchorMarker)readAnchorMarkerFromNode:(_xmlNode *)a3 state:(id)a4;
+ (id)readAbsoluteAnchorNode:(_xmlNode *)a3 state:(id)a4;
+ (id)readAnchorNode:(_xmlNode *)a3 state:(id)a4;
+ (id)readDrawableNode:(_xmlNode *)a3 anchor:(id)a4 state:(id)a5;
+ (id)readOneCellAnchorNode:(_xmlNode *)a3 state:(id)a4;
+ (id)readTwoCellAnchorNode:(_xmlNode *)a3 state:(id)a4;
+ (void)initialize;
+ (void)readFromPart:(id)a3 state:(id)a4;
@end

@implementation EXDrawing

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    objc_opt_class();
  }
}

+ (id)readAnchorNode:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3->type == XML_ELEMENT_NODE)
  {
    v8 = [v6 EXSpreadsheetDrawingNamespace];
    v9 = [v8 containsNode:a3];

    if (v9)
    {
      if (xmlStrEqual(a3->name, "twoCellAnchor"))
      {
        v10 = [a1 readTwoCellAnchorNode:a3 state:v7];
LABEL_9:
        v11 = v10;
        goto LABEL_11;
      }

      if (xmlStrEqual(a3->name, "oneCellAnchor"))
      {
        v10 = [a1 readOneCellAnchorNode:a3 state:v7];
        goto LABEL_9;
      }

      if (xmlStrEqual(a3->name, "absoluteAnchor"))
      {
        v10 = [a1 readAbsoluteAnchorNode:a3 state:v7];
        goto LABEL_9;
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (void)readFromPart:(id)a3 state:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = [v6 officeArtState];
    [v7 setPackagePart:v13];

    v8 = OCXGetRootElement([v13 xmlDocument]);
    if (v8)
    {
      v9 = [v6 EXSpreadsheetDrawingNamespace];
      if ([v9 containsNode:v8])
      {
        v10 = xmlStrEqual(v8->name, "wsDr");

        if (v10)
        {
          for (i = OCXFirstChild(v8); i; i = OCXNextSibling(i))
          {
            v12 = [a1 readAnchorNode:i state:v6];
          }
        }
      }

      else
      {
      }
    }
  }
}

+ (EDCellAnchorMarker)readAnchorMarkerFromNode:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 EXSpreadsheetDrawingNamespace];
  v7 = CXRequiredLongChild(a3, v6, "col");

  v8 = [v5 EXSpreadsheetDrawingNamespace];
  v9 = CXRequiredLongChild(a3, v8, "colOff", 12);

  v10 = [v5 EXSpreadsheetDrawingNamespace];
  LODWORD(v8) = CXRequiredLongChild(a3, v10, "row");

  v11 = [v5 EXSpreadsheetDrawingNamespace];
  *&v12 = CXRequiredLongChild(a3, v11, "rowOff", 12) / 12700.0;

  v13 = v7 | (COERCE_UNSIGNED_INT(v9 / 12700.0) << 32);
  v14 = v8 | (v12 << 32);
  result.rowIndex = v14;
  result.rowAdjustment = *(&v14 + 1);
  result.columnIndex = v13;
  result.columnAdjustment = *(&v13 + 1);
  return result;
}

+ (id)readTwoCellAnchorNode:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(EDTwoCellAnchor);
  [(EDTwoCellAnchor *)v7 setRelative:0];
  v8 = [v6 EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(a3, v8, "from");

  v10 = [a1 readAnchorMarkerFromNode:v9 state:v6];
  [(EDTwoCellAnchor *)v7 setFrom:v10, v11];
  v12 = [v6 EXSpreadsheetDrawingNamespace];
  v13 = OCXNextSibling(v9, v12, "to");

  v14 = [a1 readAnchorMarkerFromNode:v13 state:v6];
  [(EDTwoCellAnchor *)v7 setTo:v14, v15];
  v16 = CXDefaultStringAttribute(a3, CXNoNamespace, "editAs", 0);
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
  v18 = [a1 readDrawableNode:OCXNextSibling(v13) anchor:v7 state:v6];

  return v18;
}

+ (id)readOneCellAnchorNode:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(EDOneCellAnchor);
  [(EDOneCellAnchor *)v7 setRelative:0];
  v8 = [v6 EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(a3, v8, "from");

  v10 = [a1 readAnchorMarkerFromNode:v9 state:v6];
  [(EDOneCellAnchor *)v7 setFrom:v10, v11];
  v12 = [v6 EXSpreadsheetDrawingNamespace];
  v13 = OCXNextSibling(v9, v12, "ext");

  [OAXBaseTypes readSize2DFromXmlNode:v13];
  [(EDOneCellAnchor *)v7 setSize:?];
  v14 = [a1 readDrawableNode:OCXNextSibling(v13) anchor:v7 state:v6];

  return v14;
}

+ (id)readAbsoluteAnchorNode:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(EDAbsoluteAnchor);
  v8 = [v6 EXSpreadsheetDrawingNamespace];
  v9 = OCXFirstChild(a3, v8, "pos");

  [OAXBaseTypes readPoint2DFromXmlNode:v9];
  [(EDAbsoluteAnchor *)v7 setPosition:?];
  v10 = [v6 EXSpreadsheetDrawingNamespace];
  v11 = OCXNextSibling(v9, v10, "ext");

  [OAXBaseTypes readSize2DFromXmlNode:v11];
  [(EDAbsoluteAnchor *)v7 setSize:?];
  v12 = [a1 readDrawableNode:OCXNextSibling(v11) anchor:v7 state:v6];

  return v12;
}

+ (id)readDrawableNode:(_xmlNode *)a3 anchor:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 EXSpreadsheetDrawingNamespace];
  v10 = [v8 officeArtState];
  v11 = [OAXDrawable readDrawableFromXmlNode:a3 inNamespace:v9 drawingState:v10];

  if (v11)
  {
    v12 = [v11 clientData];
    if (!v12)
    {
      v13 = objc_alloc_init(EDOfficeArtClient);
      v14 = [v8 currentSheet];
      [(EDOfficeArtClient *)v13 setSheet:v14];

      v12 = v13;
      [v11 setClientData:v13];
    }

    [v12 setAnchor:v7];
    v15 = [v8 currentSheet];
    [v15 addDrawable:v11];
  }

  return v11;
}

@end