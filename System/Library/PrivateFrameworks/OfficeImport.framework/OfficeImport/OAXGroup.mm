@interface OAXGroup
+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (void)applyGroupFill:(id)fill toChildrenOfGroup:(id)group;
+ (void)readPropertiesFromXmlNode:(_xmlNode *)node properties:(id)properties drawingState:(id)state;
@end

@implementation OAXGroup

+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v10 = objc_alloc_init(OADGroup);
  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:node inNamespace:namespaceCopy visualNodeName:"nvGrpSpPr" toDrawable:v10 drawingState:stateCopy];
  v11 = OCXFindChild(node, namespaceCopy, "grpSpPr");
  [OAXTransform2D readFromParentXmlNode:v11 inNamespace:namespaceCopy toDrawable:v10 drawingState:stateCopy];
  [OAXTransform2D readChildrenBoundsFromParentXmlNode:v11 inNamespace:namespaceCopy drawingState:stateCopy];
  [(OADGroup *)v10 setLogicalBounds:?];
  groupProperties = [(OADGroup *)v10 groupProperties];
  [self readPropertiesFromXmlNode:v11 properties:groupProperties drawingState:stateCopy];

  [stateCopy pushGroup:v10];
  v13 = [OAXDrawable readDrawablesFromXmlNode:node inNamespace:namespaceCopy drawingState:stateCopy];
  popGroup = [stateCopy popGroup];
  [(OADGroup *)v10 addChildren:v13];
  client = [stateCopy client];
  [client readClientDataFromGroupNode:node toGroup:v10 state:stateCopy];

  groupProperties2 = [(OADGroup *)v10 groupProperties];
  fill = [groupProperties2 fill];

  if (fill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [self applyGroupFill:fill toChildrenOfGroup:v10];
    }
  }

  return v10;
}

+ (void)readPropertiesFromXmlNode:(_xmlNode *)node properties:(id)properties drawingState:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    packagePart = [stateCopy packagePart];
    v10 = [OAXFill readFillFromXmlNode:i packagePart:packagePart drawingState:stateCopy];

    if (v10)
    {
      [propertiesCopy setFill:v10];
    }

    if (xmlStrEqual(i->name, "effectLst"))
    {
      packagePart2 = [stateCopy packagePart];
      v12 = [OAXEffect readEffectsFromXmlNode:i packagePart:packagePart2 drawingState:stateCopy];

      [propertiesCopy setEffects:v12];
    }
  }
}

+ (void)applyGroupFill:(id)fill toChildrenOfGroup:(id)group
{
  fillCopy = fill;
  groupCopy = group;
  for (i = 0; i < [groupCopy childCount]; ++i)
  {
    v8 = [groupCopy childAtIndex:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      groupProperties = [v9 groupProperties];
      fill = [groupProperties fill];

      if (!fill || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [self applyGroupFill:fillCopy toChildrenOfGroup:v9];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      fill = [v8 shapeProperties];
      v11Fill = [fill fill];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [fill setFill:fillCopy];
      }
    }

LABEL_11:
  }
}

@end