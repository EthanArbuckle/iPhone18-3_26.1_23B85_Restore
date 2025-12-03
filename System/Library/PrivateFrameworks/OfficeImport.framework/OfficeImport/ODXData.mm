@interface ODXData
+ (id)readModelIdentifierFromNode:(_xmlNode *)node attributeName:(const char *)name;
+ (id)readPointFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state;
+ (id)readPointListFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state;
+ (int)readConnectionTypeFromNode:(_xmlNode *)node;
+ (int)readPointTypeFromNode:(_xmlNode *)node;
+ (void)associatePresentationsInIdMap:(id)map;
+ (void)readConnectionFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state;
+ (void)readConnectionListFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state;
+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state;
@end

@implementation ODXData

+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state
{
  diagramCopy = diagram;
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(node, oDXDiagramNamespace, "dataModel");

  if (!HasName)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Not a diagram data node"];
  }

  v11 = objc_alloc_init(OITSUNoCopyDictionary);
  oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
  v13 = OCXFirstChild(node, oDXDiagramNamespace2, "ptLst");

  v14 = [self readPointListFromNode:v13 pointIdMap:v11 state:stateCopy];
  [diagramCopy setDocumentPoint:v14];
  v15 = OCXNextSibling(v13);
  oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
  v17 = CXNodeHasName(v15, oDXDiagramNamespace3, "cxnLst");

  if (v17)
  {
    [self readConnectionListFromNode:v15 pointIdMap:v11 state:stateCopy];
  }

  [self associatePresentationsInIdMap:v11];
}

+ (id)readModelIdentifierFromNode:(_xmlNode *)node attributeName:(const char *)name
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:node ns:0 attributeName:name];
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

+ (id)readPointListFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state
{
  mapCopy = map;
  stateCopy = state;
  v10 = OCXFirstChild(node);
  v11 = 0;
  while (v10)
  {
    if (v10->type == XML_ELEMENT_NODE)
    {
      oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
      HasName = CXNodeHasName(v10, oDXDiagramNamespace, "pt");

      if (HasName)
      {
        if (v11)
        {
          v14 = [self readPointFromNode:v10 pointIdMap:mapCopy state:stateCopy];
        }

        else
        {
          v11 = [self readPointFromNode:v10 pointIdMap:mapCopy state:stateCopy];
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

+ (id)readPointFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state
{
  mapCopy = map;
  stateCopy = state;
  v9 = [self readPointTypeFromNode:node];
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
  officeArtState = [stateCopy officeArtState];
  shapeProperties = [(ODDPoint *)v13 shapeProperties];
  v16 = OCXFirstChild(node);
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(v16, oDXDiagramNamespace, "prSet");

  if (HasName)
  {
    propertySet = [(ODDPoint *)v13 propertySet];
    [ODXPointPropertySet readNode:v16 toSet:propertySet];

    v16 = OCXNextSibling(v16);
  }

  oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
  v21 = CXNodeHasName(v16, oDXDiagramNamespace2, "spPr");

  if (v21)
  {
    [OAXGraphic readPropertiesFromXmlNode:v16 graphicProperties:v34 drawingState:officeArtState];
    v16 = OCXNextSibling(v16);
  }

  oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
  v23 = CXNodeHasName(v16, oDXDiagramNamespace3, "style");

  if (v23)
  {
    v24 = objc_alloc_init(OADShapeStyle);
    [OAXShapeStyle readFromNode:v16 shapeStyle:v24 drawingState:officeArtState];
    styleMatrix = [officeArtState styleMatrix];
    [(OADShapeStyle *)v24 applyToGraphicProperties:v34 styleMatrix:styleMatrix];

    v16 = OCXNextSibling(v16);
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  oDXDiagramNamespace4 = [stateCopy ODXDiagramNamespace];
  v28 = CXNodeHasName(v16, oDXDiagramNamespace4, "t");

  if (v28)
  {
    v29 = objc_alloc_init(OADTextBody);
    [(ODDPoint *)v13 setText:v29];
    [OAXTextBody readTextBodyFromXmlNode:v16 textBody:v29 drawingState:officeArtState];
    if (v26)
    {
      [(OADShapeStyle *)v26 applyToTextBody:v29];
    }
  }

  v30 = [self readModelIdentifierFromNode:node attributeName:"modelId"];
  if (!v30)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Didn't find required model identifier"];
  }

  v31 = [mapCopy objectForKey:v30];

  if (v31)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Already a point for the identifier"];
  }

  [mapCopy setObject:v13 forUncopiedKey:v30];

  return v12;
}

+ (int)readPointTypeFromNode:(_xmlNode *)node
{
  NoNsProp = xmlGetNoNsProp(node, "type");
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

+ (void)readConnectionListFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state
{
  mapCopy = map;
  stateCopy = state;
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
      HasName = CXNodeHasName(i, oDXDiagramNamespace, "cxn");

      if (HasName)
      {
        [self readConnectionFromNode:i pointIdMap:mapCopy state:stateCopy];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Found non-connection node"];
      }
    }
  }
}

+ (void)readConnectionFromNode:(_xmlNode *)node pointIdMap:(id)map state:(id)state
{
  mapCopy = map;
  v7 = [self readModelIdentifierFromNode:node attributeName:"srcId"];
  v8 = [mapCopy objectForKey:v7];
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection source"];
  }

  v9 = [self readModelIdentifierFromNode:node attributeName:"destId"];
  v10 = [mapCopy objectForKey:v9];
  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection destination"];
  }

  v11 = CXRequiredUnsignedLongAttribute(node, CXNoNamespace, "srcOrd");
  CXRequiredUnsignedLongAttribute(node, CXNoNamespace, "destOrd");
  v12 = [self readConnectionTypeFromNode:node];
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
    v14 = [self readModelIdentifierFromNode:node attributeName:"parTransId"];
    if (v14)
    {
      v15 = [mapCopy objectForKey:v14];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v13 setParentTransition:v15];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing connection parent transition"];
      }
    }

    v16 = [self readModelIdentifierFromNode:node attributeName:"sibTransId"];
    if (v16)
    {
      v17 = [mapCopy objectForKey:v16];
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

+ (int)readConnectionTypeFromNode:(_xmlNode *)node
{
  NoNsProp = xmlGetNoNsProp(node, "type");
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

+ (void)associatePresentationsInIdMap:(id)map
{
  mapCopy = map;
  objectEnumerator = [mapCopy objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    v5 = nextObject;
    if (!nextObject)
    {
      break;
    }

    if ([nextObject type] == 4)
    {
      propertySet = [v5 propertySet];
      presentationAssociatedId = [propertySet presentationAssociatedId];

      if (presentationAssociatedId)
      {
        v8 = [mapCopy objectForKey:presentationAssociatedId];
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