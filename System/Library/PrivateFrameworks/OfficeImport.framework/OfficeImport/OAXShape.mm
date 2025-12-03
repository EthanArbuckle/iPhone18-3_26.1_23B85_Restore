@interface OAXShape
+ (BOOL)isWritable:(id)writable;
+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (void)readCoreFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace toShape:(id)shape drawingState:(id)state;
+ (void)readNonVisualShapeProperties:(_xmlNode *)properties nodeName:(const char *)name inNamespace:(id)namespace shapeProperties:(id)shapeProperties;
@end

@implementation OAXShape

+ (void)readCoreFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace toShape:(id)shape drawingState:(id)state
{
  namespaceCopy = namespace;
  shapeCopy = shape;
  stateCopy = state;
  shapeProperties = [shapeCopy shapeProperties];
  v12 = OCXFindChild(node, namespaceCopy, "style");
  if (v12)
  {
    v13 = objc_alloc_init(OADShapeStyle);
    [OAXShapeStyle readFromNode:"readFromNode:shapeStyle:drawingState:" shapeStyle:v12 drawingState:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = OCXFindChild(node, namespaceCopy, "spPr");
  if (!v14)
  {
    [TCMessageException raise:OABadFormat];
  }

  [OAXGraphic readPropertiesFromXmlNode:v14 graphicProperties:shapeProperties drawingState:stateCopy];
  if (v13)
  {
    styleMatrix = [stateCopy styleMatrix];
    [(OADShapeStyle *)v13 applyToGraphicProperties:shapeProperties styleMatrix:styleMatrix];
  }

  if (CXDefaultBoolAttribute(node, CXNoNamespace, "useBgFill", 0))
  {
    v16 = objc_alloc_init(OADBackgroundFill);
    [shapeProperties setFill:v16];
  }

  [OAXTransform2D readFromParentXmlNode:v14 inNamespace:namespaceCopy toDrawable:shapeCopy drawingState:stateCopy];
  v17 = [OAXGeometry readFromParentXmlNode:v14 drawingState:stateCopy];
  [shapeCopy setGeometry:v17];

  v18 = OCXFindChild(node, namespaceCopy, "txBody");
  if (v18 || ([stateCopy OAXMainNamespace], v20 = objc_claimAutoreleasedReturnValue(), v21 = OCXFindChild(node, v20, "txSp"), v20, v21) && (v18 = OCXFindChild(v21, namespaceCopy, "txBody")) != 0)
  {
    textBody = [shapeCopy textBody];
    [OAXTextBody readTextBodyFromXmlNode:v18 textBody:textBody drawingState:stateCopy];
    if (v13)
    {
      [(OADShapeStyle *)v13 applyToTextBody:textBody];
    }
  }

  else
  {
    v22 = OCXFindChild(node, namespaceCopy, "bodyPr");
    if (!v22)
    {
      goto LABEL_18;
    }

    textBody = [shapeCopy textBody];
    properties = [textBody properties];
    [OAXTextBody readTextBodyProperties:v22 textBodyProperties:properties drawingState:stateCopy];
  }

LABEL_18:
  v24 = OCXFindChild(node, namespaceCopy, "txXfrm");
  if (v24)
  {
    v25 = +[OAXTransform2D readOrientedBoundsFromXmlNode:inNamespace:relative:drawingState:](OAXTransform2D, "readOrientedBoundsFromXmlNode:inNamespace:relative:drawingState:", v24, namespaceCopy, [stateCopy isInsideGroup], stateCopy);
    [shapeCopy setTextOrientedBounds:v25];
  }

  v26 = OCXFindChild(node, namespaceCopy, "bodyPr");
  if (v26)
  {
    textBody2 = [shapeCopy textBody];
    properties2 = [textBody2 properties];
    [OAXTextBody readTextBodyProperties:v26 textBodyProperties:properties2 drawingState:stateCopy];
  }

  client = [stateCopy client];
  [client readClientDataFromShapeNode:node toShape:shapeCopy state:stateCopy];
}

+ (void)readNonVisualShapeProperties:(_xmlNode *)properties nodeName:(const char *)name inNamespace:(id)namespace shapeProperties:(id)shapeProperties
{
  shapePropertiesCopy = shapeProperties;
  v9 = OCXFindChild(properties, namespace, name);
  if (v9)
  {
    [shapePropertiesCopy setIsTextBox:{CXDefaultBoolAttribute(v9, CXNoNamespace, "txBox", 0)}];
  }
}

+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v10 = objc_alloc_init(OADShape);
  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:node inNamespace:namespaceCopy visualNodeName:"nvSpPr" toDrawable:v10 drawingState:stateCopy];
  shapeProperties = [(OADShape *)v10 shapeProperties];
  v12 = OCXFindChild(node, namespaceCopy, "nvSpPr");
  if (v12)
  {
    nodeCopy = v12;
  }

  else
  {
    nodeCopy = node;
  }

  [self readNonVisualShapeProperties:nodeCopy nodeName:"cNvSpPr" inNamespace:namespaceCopy shapeProperties:shapeProperties];
  [self readCoreFromXmlNode:node inNamespace:namespaceCopy toShape:v10 drawingState:stateCopy];

  return v10;
}

+ (BOOL)isWritable:(id)writable
{
  writableCopy = writable;
  v4 = +[OAXGeometry stringWritingShapeType:](OAXGeometry, "stringWritingShapeType:", [writableCopy type]);
  v5 = v4 != 0;

  return v5;
}

@end