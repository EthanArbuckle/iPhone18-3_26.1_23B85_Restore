@interface OAXGraphicFrame
+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
@end

@implementation OAXGraphicFrame

+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [OAXGraphicalObject readFromParentXmlNode:a3 inNamespace:v7 drawingState:v8];
  if (v9)
  {
    [OAXTransform2D readFromParentXmlNode:a3 inNamespace:v7 toDrawable:v9 drawingState:v8];
    v10 = OCXFindChild(a3, v7, "nvGraphicFramePr");
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a3;
    }

    [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:a3 inNamespace:v7 visualNodeName:"nvGraphicFramePr" toDrawable:v9 drawingState:v8];
    v12 = [v8 client];
    [v12 readClientDataFromGraphicalFramePropertiesNode:v11 toDrawable:v9 state:v8];

    v13 = v9;
  }

  return v9;
}

@end