@interface OAXGraphic
+ (void)readPropertiesFromXmlNode:(_xmlNode *)node graphicProperties:(id)properties drawingState:(id)state;
@end

@implementation OAXGraphic

+ (void)readPropertiesFromXmlNode:(_xmlNode *)node graphicProperties:(id)properties drawingState:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  nodeCopy = node;
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

    if (xmlStrEqual(i->name, "scene3d"))
    {
      packagePart3 = [stateCopy packagePart];
      v14 = [OAXScene3D readScene3DFromXmlNode:i packagePart:packagePart3 drawingState:stateCopy];
      [propertiesCopy setScene3D:v14];
    }

    if (xmlStrEqual(i->name, "sp3d"))
    {
      packagePart4 = [stateCopy packagePart];
      v16 = [OAXShape3D readShape3DFromXmlNode:i packagePart:packagePart4 drawingState:stateCopy];
      [propertiesCopy setShape3D:v16];
    }
  }

  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v18 = OCXFindChild(nodeCopy, oAXMainNamespace, "ln");

  if (v18)
  {
    packagePart5 = [stateCopy packagePart];
    v20 = [OAXStroke readStrokeFromXmlNode:v18 packagePart:packagePart5 drawingState:stateCopy];

    [propertiesCopy setStroke:v20];
  }
}

@end