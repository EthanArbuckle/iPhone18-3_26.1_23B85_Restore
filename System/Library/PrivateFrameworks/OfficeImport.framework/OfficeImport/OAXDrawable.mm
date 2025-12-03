@interface OAXDrawable
+ (id)readDrawableFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (id)readDrawablesFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (void)readNonVisualPropertiesFromDrawableXmlNode:(_xmlNode *)node inNamespace:(id)namespace visualNodeName:(const char *)name toDrawable:(id)drawable drawingState:(id)state;
@end

@implementation OAXDrawable

+ (void)readNonVisualPropertiesFromDrawableXmlNode:(_xmlNode *)node inNamespace:(id)namespace visualNodeName:(const char *)name toDrawable:(id)drawable drawingState:(id)state
{
  namespaceCopy = namespace;
  drawableCopy = drawable;
  stateCopy = state;
  v43 = drawableCopy;
  v14 = OCXFindChild(node, namespaceCopy, name);
  if (v14)
  {
    v15 = OCXFindChild(v14, namespaceCopy, "cNvPr");
  }

  else
  {
    client = [stateCopy client];
    v15 = [client genericNonVisualPropertiesNodeForDrawableNode:node inNamespace:namespaceCopy state:stateCopy];
  }

  [drawableCopy setHidden:{CXDefaultBoolAttribute(v15, CXNoNamespace, "hidden", 0)}];
  v45 = 0;
  v17 = CXOptionalStringAttribute(v15, CXNoNamespace, "title", &v45);
  v18 = v45;
  v42 = v18;
  if (v17)
  {
    v19 = v18;
    drawableProperties = [drawableCopy drawableProperties];
    [drawableProperties setAltTitle:v19];
  }

  v44 = 0;
  v21 = CXOptionalStringAttribute(v15, CXNoNamespace, "name", &v44);
  v22 = v44;
  v41 = v22;
  if (v21)
  {
    v23 = v22;
    drawableProperties2 = [drawableCopy drawableProperties];
    [drawableProperties2 setAltDescription:v23];
  }

  v25 = CXRequiredUnsignedLongAttribute(v15, CXNoNamespace, "id");
  v26 = [stateCopy drawableForShapeId:v25];

  if (v26)
  {
    v25 = [OADDrawable generateOADDrawableId:drawableCopy];
  }

  [drawableCopy setId:v25];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v28 = OCXFindChild(v15, oAXMainNamespace, "hlinkClick");

  if (v28)
  {
    v29 = [OAXHyperlink readHyperlink:v28 state:stateCopy];
    drawableProperties3 = [drawableCopy drawableProperties];
    [drawableProperties3 setClickHyperlink:v29];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v32 = OCXFindChild(v15, oAXMainNamespace2, "hlinkHover");

  if (v32)
  {
    v33 = [OAXHyperlink readHyperlink:v32 state:stateCopy];
    drawableProperties4 = [drawableCopy drawableProperties];
    [drawableProperties4 setHoverHyperlink:v33];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v36 = OCXFindChild(v15, oAXMainNamespace3, "extLst");

  if (v36)
  {
    v37 = OCXFirstChildNamed(v36, "ext");
    while (v37)
    {
      v38 = CXDefaultStringAttribute(v37, CXNoNamespace, "uri", 0);
      if ([v38 isEqualToString:@"{63B3BB69-23CF-44E3-9099-C40C66FF867C}"])
      {
        v39 = OCXFirstChildNamed(v37, "compatExt");
        if (v39)
        {
          v40 = CXDefaultStringAttribute(v39, CXNoNamespace, "spid", 0);
          if ([v40 length])
          {
            [stateCopy setVmlShapeId:v40 forDrawableId:v25];

            break;
          }
        }
      }

      v37 = OCXNextSiblingNamed(v36, "ext");
    }
  }
}

+ (id)readDrawableFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  if (![namespaceCopy containsNode:node])
  {
    goto LABEL_13;
  }

  if (xmlStrEqual(node->name, "sp"))
  {
    v9 = off_2799C5788;
    goto LABEL_12;
  }

  if (xmlStrEqual(node->name, "cxnSp"))
  {
    v9 = off_2799C5768;
    goto LABEL_12;
  }

  if (xmlStrEqual(node->name, "pic"))
  {
    v9 = off_2799C5780;
    goto LABEL_12;
  }

  if (xmlStrEqual(node->name, "graphicFrame"))
  {
    v9 = off_2799C5770;
    goto LABEL_12;
  }

  if (!xmlStrEqual(node->name, "grpSp"))
  {
    if (xmlStrEqual(node->name, "contentPart"))
    {
      packagePart = [stateCopy packagePart];
      v30 = [stateCopy OCXReadRequiredRelationshipForNode:node packagePart:packagePart];
      targetLocation = [v30 targetLocation];
      relativeString = [targetLocation relativeString];

      [TCMessageContext reportWarning:OAUnsupportedMediaType, relativeString];
    }

LABEL_13:
    client = [stateCopy client];
    v10 = [client readClientDrawableFromXmlNode:node state:stateCopy];

    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v9 = off_2799C5778;
LABEL_12:
  v10 = [(__objc2_class *)*v9 readFromXmlNode:node inNamespace:namespaceCopy drawingState:stateCopy];
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = [v10 id];
  v13 = [stateCopy vmlShapeIdForDrawableId:v12];
  if (v13)
  {
    oavState = [stateCopy oavState];
    v15 = [oavState drawableForVmlShapeId:v13];

    if (v15)
    {
      oavState2 = [stateCopy oavState];
      [oavState2 addDualDrawable:v15];

      [v15 setId:v12];
      drawableProperties = [v10 drawableProperties];
      orientedBounds = [drawableProperties orientedBounds];
      drawableProperties2 = [v15 drawableProperties];
      [drawableProperties2 setOrientedBounds:orientedBounds];

      drawableProperties3 = [v10 drawableProperties];
      clickHyperlink = [drawableProperties3 clickHyperlink];
      drawableProperties4 = [v15 drawableProperties];
      [drawableProperties4 setClickHyperlink:clickHyperlink];

      drawableProperties5 = [v10 drawableProperties];
      hoverHyperlink = [drawableProperties5 hoverHyperlink];
      drawableProperties6 = [v15 drawableProperties];
      [drawableProperties6 setHoverHyperlink:hoverHyperlink];

      clientData = [v10 clientData];
      [v15 setClientData:clientData];

      v27 = v15;
      v10 = v27;
    }
  }

  [stateCopy setDrawable:v10 forShapeId:v12];

LABEL_19:

  return v10;
}

+ (id)readDrawablesFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  array = [MEMORY[0x277CBEB18] array];
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    v12 = [self readDrawableFromXmlNode:i inNamespace:namespaceCopy drawingState:stateCopy];
    if (!v12)
    {
      v13 = OCXReplaceChoiceWithFallback(i);
      if (!v13)
      {
        v12 = 0;
        goto LABEL_6;
      }

      [self readDrawableFromXmlNode:v13 inNamespace:namespaceCopy drawingState:stateCopy];
      v12 = i = v13;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    [array addObject:v12];
LABEL_6:
  }

  return array;
}

@end