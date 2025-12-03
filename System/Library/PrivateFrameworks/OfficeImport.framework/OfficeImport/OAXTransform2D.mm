@interface OAXTransform2D
+ (CGRect)readChildrenBoundsFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (id)readOrientedBoundsFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace relative:(BOOL)relative drawingState:(id)state;
+ (void)readFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace toDrawable:(id)drawable drawingState:(id)state;
@end

@implementation OAXTransform2D

+ (void)readFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace toDrawable:(id)drawable drawingState:(id)state
{
  namespaceCopy = namespace;
  drawableCopy = drawable;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "xfrm");

  if (v13 || (v13 = OCXFindChild(node, namespaceCopy, "xfrm")) != 0)
  {
    drawableProperties = [drawableCopy drawableProperties];

    if (drawableProperties)
    {
      v15 = [self readOrientedBoundsFromXmlNode:v13 inNamespace:namespaceCopy relative:objc_msgSend(stateCopy drawingState:{"isInsideGroup"), stateCopy}];
      drawableProperties2 = [drawableCopy drawableProperties];
      [drawableProperties2 setOrientedBounds:v15];
    }
  }
}

+ (id)readOrientedBoundsFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace relative:(BOOL)relative drawingState:(id)state
{
  relativeCopy = relative;
  stateCopy = state;
  v9 = objc_alloc_init(OADOrientedBounds);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(node, oAXMainNamespace, "off");

  if (v15)
  {
    if (relativeCopy)
    {
      v10 = [OAXBaseTypes readRequiredLongFromXmlNode:v15 name:"x"];
      v11 = [OAXBaseTypes readRequiredLongFromXmlNode:v15 name:"y"];
    }

    else
    {
      [OAXBaseTypes readPoint2DFromXmlNode:v15];
      v10 = v16;
      v11 = v17;
    }
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v19 = OCXFindChild(node, oAXMainNamespace2, "ext");

  if (v19)
  {
    if (relativeCopy)
    {
      v12 = [OAXBaseTypes readRequiredLongFromXmlNode:v19 name:"cx"];
      v13 = [OAXBaseTypes readRequiredLongFromXmlNode:v19 name:"cy"];
    }

    else
    {
      [OAXBaseTypes readSize2DFromXmlNode:v19];
      v12 = v20;
      v13 = v21;
    }
  }

  [(OADOrientedBounds *)v9 setBounds:v10, v11, v12, v13];
  [OAXBaseTypes readOptionalAngleFromXmlNode:node name:"rot"];
  v23 = v22;
  *&v22 = v23;
  [(OADOrientedBounds *)v9 setRotation:v22];
  [(OADOrientedBounds *)v9 setFlipX:CXDefaultBoolAttribute(node, CXNoNamespace, "flipH", 0)];
  [(OADOrientedBounds *)v9 setFlipY:CXDefaultBoolAttribute(node, CXNoNamespace, "flipV", 0)];
  flipX = [(OADOrientedBounds *)v9 flipX];
  flipY = [(OADOrientedBounds *)v9 flipY];
  if (v23 != 0.0 && flipX != flipY)
  {
    *&v26 = 360.0 - v23;
    [(OADOrientedBounds *)v9 setRotation:v26];
  }

  return v9;
}

+ (CGRect)readChildrenBoundsFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v8 = OCXFindChild(node, oAXMainNamespace, "xfrm");

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(v8, oAXMainNamespace2, "chOff");

  if (!v10)
  {
    oAXMainNamespace3 = [stateCopy OAXMainNamespace];
    v10 = OCXFindChild(v8, oAXMainNamespace3, "off");

    if (!v10)
    {
      [TCMessageException raise:OABadFormat];
      v10 = 0;
    }
  }

  v12 = [OAXBaseTypes readRequiredLongFromXmlNode:v10 name:"x"];
  v13 = [OAXBaseTypes readRequiredLongFromXmlNode:v10 name:"y"];
  oAXMainNamespace4 = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(v8, oAXMainNamespace4, "chExt");

  if (!v15)
  {
    oAXMainNamespace5 = [stateCopy OAXMainNamespace];
    v15 = OCXFindChild(v8, oAXMainNamespace5, "ext");

    if (!v15)
    {
      [TCMessageException raise:OABadFormat];
      v15 = 0;
    }
  }

  v17 = [OAXBaseTypes readRequiredLongFromXmlNode:v15 name:"cx"];
  v18 = [OAXBaseTypes readRequiredLongFromXmlNode:v15 name:"cy"];

  v19 = v12;
  v20 = v13;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end