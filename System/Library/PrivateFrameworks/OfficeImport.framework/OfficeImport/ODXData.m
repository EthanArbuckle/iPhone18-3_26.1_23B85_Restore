@interface ODXData
+ (id)readModelIdentifierFromNode:(_xmlNode *)a3 attributeName:(const char *)a4;
+ (id)readPointFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5;
+ (id)readPointListFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5;
+ (int)readConnectionTypeFromNode:(_xmlNode *)a3;
+ (int)readPointTypeFromNode:(_xmlNode *)a3;
+ (void)associatePresentationsInIdMap:(id)a3;
+ (void)readConnectionFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5;
+ (void)readConnectionListFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5;
+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5;
@end

@implementation ODXData

+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = [v8 ODXDiagramNamespace];
  HasName = CXNodeHasName(a3, v9, "dataModel");

  if (!HasName)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Not a diagram data node"];
  }

  v11 = objc_alloc_init(OITSUNoCopyDictionary);
  v12 = [v8 ODXDiagramNamespace];
  v13 = OCXFirstChild(a3, v12, "ptLst");

  v14 = [a1 readPointListFromNode:v13 pointIdMap:v11 state:v8];
  [v18 setDocumentPoint:v14];
  v15 = OCXNextSibling(v13);
  v16 = [v8 ODXDiagramNamespace];
  v17 = CXNodeHasName(v15, v16, "cxnLst");

  if (v17)
  {
    [a1 readConnectionListFromNode:v15 pointIdMap:v11 state:v8];
  }

  [a1 associatePresentationsInIdMap:v11];
}

+ (id)readModelIdentifierFromNode:(_xmlNode *)a3 attributeName:(const char *)a4
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:a3 ns:0 attributeName:a4];
  v5 = v4;
  if (v4)
  {
    if ([v4 length] == 38 && objc_msgSend(v5, "characterAtIndex:", 0) == 123 && objc_msgSend(v5, "characterAtIndex:", 37) == 125)
    {
      v6 = [v5 substringWithRange:{1, 36}];
      v7 = CFUUIDCreateFromString(0, v6);
      if (!v7)
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:{@"Couldn't parse uuid: %@", v5}];
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCAC80] scannerWithString:v5];
      v9 = 0;
      if ([(__CFString *)v6 scanInt:&v9]&& [(__CFString *)v6 isAtEnd])
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:{@"Couldn't parse int: %@", v5}];
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)readPointListFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = OCXFirstChild(a3);
  v11 = 0;
  while (v10)
  {
    if (v10->type == XML_ELEMENT_NODE)
    {
      v12 = [v9 ODXDiagramNamespace];
      HasName = CXNodeHasName(v10, v12, "pt");

      if (HasName)
      {
        if (v11)
        {
          v14 = [a1 readPointFromNode:v10 pointIdMap:v8 state:v9];
        }

        else
        {
          v11 = [a1 readPointFromNode:v10 pointIdMap:v8 state:v9];
        }
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Found non-point node"];
      }
    }

    v10 = OCXNextSibling(v10);
  }

  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"No document point"];
  }

  return v11;
}

+ (id)readPointFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5
{
  v35 = a4;
  v8 = a5;
  v9 = [a1 readPointTypeFromNode:a3];
  v10 = v9;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v11 = off_2799C5798;
        goto LABEL_13;
      }

      if (v9 != 5)
      {
LABEL_10:
        v12 = 0;
        v13 = 0;
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Unknown diagram node type"];
        goto LABEL_15;
      }
    }

    v11 = off_2799C57A0;
LABEL_13:
    v12 = 0;
    v14 = objc_alloc_init(*v11);
    goto LABEL_14;
  }

  v11 = off_2799C5790;
  if (!v9)
  {
    goto LABEL_13;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v14 = objc_alloc_init(ODDNodePoint);
  v12 = v14;
LABEL_14:
  v13 = v14;
LABEL_15:
  [(ODDNodePoint *)v13 setType:v10];
  v15 = [v8 officeArtState];
  v33 = [(ODDPoint *)v13 shapeProperties];
  v16 = OCXFirstChild(a3);
  v17 = [v8 ODXDiagramNamespace];
  HasName = CXNodeHasName(v16, v17, "prSet");

  if (HasName)
  {
    v19 = [(ODDPoint *)v13 propertySet];
    [ODXPointPropertySet readNode:v16 toSet:v19];

    v16 = OCXNextSibling(v16);
  }

  v20 = [v8 ODXDiagramNamespace];
  v21 = CXNodeHasName(v16, v20, "spPr");

  if (v21)
  {
    [OAXGraphic readPropertiesFromXmlNode:v16 graphicProperties:v34 drawingState:v15];
    v16 = OCXNextSibling(v16);
  }

  v22 = [v8 ODXDiagramNamespace];
  v23 = CXNodeHasName(v16, v22, "style");

  if (v23)
  {
    v24 = objc_alloc_init(OADShapeStyle);
    [OAXShapeStyle readFromNode:v16 shapeStyle:v24 drawingState:v15];
    v25 = [v15 styleMatrix];
    [(OADShapeStyle *)v24 applyToGraphicProperties:v34 styleMatrix:v25];

    v16 = OCXNextSibling(v16);
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v8 ODXDiagramNamespace];
  v28 = CXNodeHasName(v16, v27, "t");

  if (v28)
  {
    v29 = objc_alloc_init(OADTextBody);
    [(ODDPoint *)v13 setText:v29];
    [OAXTextBody readTextBodyFromXmlNode:v16 textBody:v29 drawingState:v15];
    if (v26)
    {
      [(OADShapeStyle *)v26 applyToTextBody:v29];
    }
  }

  v30 = [a1 readModelIdentifierFromNode:a3 attributeName:"modelId"];
  if (!v30)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Didn't find required model identifier"];
  }

  v31 = [v35 objectForKey:v30];

  if (v31)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Already a point for the identifier"];
  }

  [v35 setObject:v13 forUncopiedKey:v30];

  return v12;
}

+ (int)readPointTypeFromNode:(_xmlNode *)a3
{
  NoNsProp = xmlGetNoNsProp(a3, "type");
  if (!NoNsProp)
  {
    return 2;
  }

  v4 = NoNsProp;
  if (xmlStrEqual(NoNsProp, "node"))
  {
    v5 = 2;
  }

  else if (xmlStrEqual(v4, "asst"))
  {
    v5 = 0;
  }

  else if (xmlStrEqual(v4, "doc"))
  {
    v5 = 1;
  }

  else if (xmlStrEqual(v4, "pres"))
  {
    v5 = 4;
  }

  else if (xmlStrEqual(v4, "parTrans"))
  {
    v5 = 3;
  }

  else if (xmlStrEqual(v4, "sibTrans"))
  {
    v5 = 5;
  }

  else
  {
    if (!xmlStrEqual(v4, "unknown"))
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:{@"Unknown diagram node type: %s", v4}];
    }

    v5 = 6;
  }

  free(v4);
  return v5;
}

+ (void)readConnectionListFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5
{
  v12 = a4;
  v8 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v10 = [v8 ODXDiagramNamespace];
      HasName = CXNodeHasName(i, v10, "cxn");

      if (HasName)
      {
        [a1 readConnectionFromNode:i pointIdMap:v12 state:v8];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Found non-connection node"];
      }
    }
  }
}

+ (void)readConnectionFromNode:(_xmlNode *)a3 pointIdMap:(id)a4 state:(id)a5
{
  v18 = a4;
  v7 = [a1 readModelIdentifierFromNode:a3 attributeName:"srcId"];
  v8 = [v18 objectForKey:v7];
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection source"];
  }

  v9 = [a1 readModelIdentifierFromNode:a3 attributeName:"destId"];
  v10 = [v18 objectForKey:v9];
  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection destination"];
  }

  v11 = CXRequiredUnsignedLongAttribute(a3, CXNoNamespace, "srcOrd");
  CXRequiredUnsignedLongAttribute(a3, CXNoNamespace, "destOrd");
  v12 = [a1 readConnectionTypeFromNode:a3];
  if (v12)
  {
    if (v12 == 1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Bad classes for presentation-of connection"];
      }

      [v8 addPresentation:v10 order:v11];
    }

    else if (v12 == 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Bad classes for presentation-parent-of connection"];
      }

      [v8 addChild:v10 order:v11];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Bad classes for parent-of connection"];
    }

    v13 = v10;
    [v8 addChild:v13 order:v11];
    v14 = [a1 readModelIdentifierFromNode:a3 attributeName:"parTransId"];
    if (v14)
    {
      v15 = [v18 objectForKey:v14];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v13 setParentTransition:v15];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection parent transition"];
      }
    }

    v16 = [a1 readModelIdentifierFromNode:a3 attributeName:"sibTransId"];
    if (v16)
    {
      v17 = [v18 objectForKey:v16];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v13 setSiblingTransition:v17];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection sibling transition"];
      }
    }
  }
}

+ (int)readConnectionTypeFromNode:(_xmlNode *)a3
{
  NoNsProp = xmlGetNoNsProp(a3, "type");
  if (NoNsProp)
  {
    v4 = NoNsProp;
    if (!xmlStrEqual(NoNsProp, "parOf"))
    {
      if (xmlStrEqual(v4, "presOf"))
      {
        v5 = 1;
        goto LABEL_9;
      }

      if (xmlStrEqual(v4, "presParOf"))
      {
        v5 = 2;
        goto LABEL_9;
      }

      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:{@"Unknown diagram node type: %s", v4}];
    }

    v5 = 0;
LABEL_9:
    free(v4);
    return v5;
  }

  return 0;
}

+ (void)associatePresentationsInIdMap:(id)a3
{
  v10 = a3;
  v3 = [v10 objectEnumerator];
  while (1)
  {
    v4 = [v3 nextObject];
    v5 = v4;
    if (!v4)
    {
      break;
    }

    if ([v4 type] == 4)
    {
      v6 = [v5 propertySet];
      v7 = [v6 presentationAssociatedId];

      if (v7)
      {
        v8 = [v10 objectForKey:v7];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            v9 = v5;
            [v8 addAssociatedPresentation:v9];
          }
        }
      }
    }
  }
}

@end