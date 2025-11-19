@interface OAXTransform2D
+ (CGRect)readChildrenBoundsFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
+ (id)readOrientedBoundsFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 relative:(BOOL)a5 drawingState:(id)a6;
+ (void)readFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 toDrawable:(id)a5 drawingState:(id)a6;
@end

@implementation OAXTransform2D

+ (void)readFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 toDrawable:(id)a5 drawingState:(id)a6
{
  v17 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v11 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "xfrm");

  if (v13 || (v13 = OCXFindChild(a3, v17, "xfrm")) != 0)
  {
    v14 = [v10 drawableProperties];

    if (v14)
    {
      v15 = [a1 readOrientedBoundsFromXmlNode:v13 inNamespace:v17 relative:objc_msgSend(v11 drawingState:{"isInsideGroup"), v11}];
      v16 = [v10 drawableProperties];
      [v16 setOrientedBounds:v15];
    }
  }
}

+ (id)readOrientedBoundsFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 relative:(BOOL)a5 drawingState:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = objc_alloc_init(OADOrientedBounds);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v8 OAXMainNamespace];
  v15 = OCXFindChild(a3, v14, "off");

  if (v15)
  {
    if (v6)
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

  v18 = [v8 OAXMainNamespace];
  v19 = OCXFindChild(a3, v18, "ext");

  if (v19)
  {
    if (v6)
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
  [OAXBaseTypes readOptionalAngleFromXmlNode:a3 name:"rot"];
  v23 = v22;
  *&v22 = v23;
  [(OADOrientedBounds *)v9 setRotation:v22];
  [(OADOrientedBounds *)v9 setFlipX:CXDefaultBoolAttribute(a3, CXNoNamespace, "flipH", 0)];
  [(OADOrientedBounds *)v9 setFlipY:CXDefaultBoolAttribute(a3, CXNoNamespace, "flipV", 0)];
  v24 = [(OADOrientedBounds *)v9 flipX];
  v25 = [(OADOrientedBounds *)v9 flipY];
  if (v23 != 0.0 && v24 != v25)
  {
    *&v26 = 360.0 - v23;
    [(OADOrientedBounds *)v9 setRotation:v26];
  }

  return v9;
}

+ (CGRect)readChildrenBoundsFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v6 = a5;
  v7 = [v6 OAXMainNamespace];
  v8 = OCXFindChild(a3, v7, "xfrm");

  v9 = [v6 OAXMainNamespace];
  v10 = OCXFindChild(v8, v9, "chOff");

  if (!v10)
  {
    v11 = [v6 OAXMainNamespace];
    v10 = OCXFindChild(v8, v11, "off");

    if (!v10)
    {
      [TCMessageException raise:OABadFormat];
      v10 = 0;
    }
  }

  v12 = [OAXBaseTypes readRequiredLongFromXmlNode:v10 name:"x"];
  v13 = [OAXBaseTypes readRequiredLongFromXmlNode:v10 name:"y"];
  v14 = [v6 OAXMainNamespace];
  v15 = OCXFindChild(v8, v14, "chExt");

  if (!v15)
  {
    v16 = [v6 OAXMainNamespace];
    v15 = OCXFindChild(v8, v16, "ext");

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