@interface OAXGroup
+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
+ (void)applyGroupFill:(id)a3 toChildrenOfGroup:(id)a4;
+ (void)readPropertiesFromXmlNode:(_xmlNode *)a3 properties:(id)a4 drawingState:(id)a5;
@end

@implementation OAXGroup

+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(OADGroup);
  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:a3 inNamespace:v8 visualNodeName:"nvGrpSpPr" toDrawable:v10 drawingState:v9];
  v11 = OCXFindChild(a3, v8, "grpSpPr");
  [OAXTransform2D readFromParentXmlNode:v11 inNamespace:v8 toDrawable:v10 drawingState:v9];
  [OAXTransform2D readChildrenBoundsFromParentXmlNode:v11 inNamespace:v8 drawingState:v9];
  [(OADGroup *)v10 setLogicalBounds:?];
  v12 = [(OADGroup *)v10 groupProperties];
  [a1 readPropertiesFromXmlNode:v11 properties:v12 drawingState:v9];

  [v9 pushGroup:v10];
  v13 = [OAXDrawable readDrawablesFromXmlNode:a3 inNamespace:v8 drawingState:v9];
  v14 = [v9 popGroup];
  [(OADGroup *)v10 addChildren:v13];
  v15 = [v9 client];
  [v15 readClientDataFromGroupNode:a3 toGroup:v10 state:v9];

  v16 = [(OADGroup *)v10 groupProperties];
  v17 = [v16 fill];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [a1 applyGroupFill:v17 toChildrenOfGroup:v10];
    }
  }

  return v10;
}

+ (void)readPropertiesFromXmlNode:(_xmlNode *)a3 properties:(id)a4 drawingState:(id)a5
{
  v13 = a4;
  v7 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    v9 = [v7 packagePart];
    v10 = [OAXFill readFillFromXmlNode:i packagePart:v9 drawingState:v7];

    if (v10)
    {
      [v13 setFill:v10];
    }

    if (xmlStrEqual(i->name, "effectLst"))
    {
      v11 = [v7 packagePart];
      v12 = [OAXEffect readEffectsFromXmlNode:i packagePart:v11 drawingState:v7];

      [v13 setEffects:v12];
    }
  }
}

+ (void)applyGroupFill:(id)a3 toChildrenOfGroup:(id)a4
{
  v14 = a3;
  v6 = a4;
  for (i = 0; i < [v6 childCount]; ++i)
  {
    v8 = [v6 childAtIndex:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [v9 groupProperties];
      v11 = [v10 fill];

      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [a1 applyGroupFill:v14 toChildrenOfGroup:v9];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v11 = [v8 shapeProperties];
      v12 = [v11 fill];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v11 setFill:v14];
      }
    }

LABEL_11:
  }
}

@end