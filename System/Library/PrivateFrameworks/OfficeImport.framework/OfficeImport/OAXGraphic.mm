@interface OAXGraphic
+ (void)readPropertiesFromXmlNode:(_xmlNode *)a3 graphicProperties:(id)a4 drawingState:(id)a5;
@end

@implementation OAXGraphic

+ (void)readPropertiesFromXmlNode:(_xmlNode *)a3 graphicProperties:(id)a4 drawingState:(id)a5
{
  v22 = a4;
  v7 = a5;
  v21 = a3;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    v9 = [v7 packagePart];
    v10 = [OAXFill readFillFromXmlNode:i packagePart:v9 drawingState:v7];

    if (v10)
    {
      [v22 setFill:v10];
    }

    if (xmlStrEqual(i->name, "effectLst"))
    {
      v11 = [v7 packagePart];
      v12 = [OAXEffect readEffectsFromXmlNode:i packagePart:v11 drawingState:v7];

      [v22 setEffects:v12];
    }

    if (xmlStrEqual(i->name, "scene3d"))
    {
      v13 = [v7 packagePart];
      v14 = [OAXScene3D readScene3DFromXmlNode:i packagePart:v13 drawingState:v7];
      [v22 setScene3D:v14];
    }

    if (xmlStrEqual(i->name, "sp3d"))
    {
      v15 = [v7 packagePart];
      v16 = [OAXShape3D readShape3DFromXmlNode:i packagePart:v15 drawingState:v7];
      [v22 setShape3D:v16];
    }
  }

  v17 = [v7 OAXMainNamespace];
  v18 = OCXFindChild(v21, v17, "ln");

  if (v18)
  {
    v19 = [v7 packagePart];
    v20 = [OAXStroke readStrokeFromXmlNode:v18 packagePart:v19 drawingState:v7];

    [v22 setStroke:v20];
  }
}

@end