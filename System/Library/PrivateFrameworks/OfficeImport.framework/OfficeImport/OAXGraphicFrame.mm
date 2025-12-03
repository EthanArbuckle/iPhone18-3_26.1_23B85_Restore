@interface OAXGraphicFrame
+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
@end

@implementation OAXGraphicFrame

+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v9 = [OAXGraphicalObject readFromParentXmlNode:node inNamespace:namespaceCopy drawingState:stateCopy];
  if (v9)
  {
    [OAXTransform2D readFromParentXmlNode:node inNamespace:namespaceCopy toDrawable:v9 drawingState:stateCopy];
    v10 = OCXFindChild(node, namespaceCopy, "nvGraphicFramePr");
    if (v10)
    {
      nodeCopy = v10;
    }

    else
    {
      nodeCopy = node;
    }

    [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:node inNamespace:namespaceCopy visualNodeName:"nvGraphicFramePr" toDrawable:v9 drawingState:stateCopy];
    client = [stateCopy client];
    [client readClientDataFromGraphicalFramePropertiesNode:nodeCopy toDrawable:v9 state:stateCopy];

    v13 = v9;
  }

  return v9;
}

@end