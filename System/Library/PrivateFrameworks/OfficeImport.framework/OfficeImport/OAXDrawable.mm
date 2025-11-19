@interface OAXDrawable
+ (id)readDrawableFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
+ (id)readDrawablesFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
+ (void)readNonVisualPropertiesFromDrawableXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 visualNodeName:(const char *)a5 toDrawable:(id)a6 drawingState:(id)a7;
@end

@implementation OAXDrawable

+ (void)readNonVisualPropertiesFromDrawableXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 visualNodeName:(const char *)a5 toDrawable:(id)a6 drawingState:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v43 = v12;
  v14 = OCXFindChild(a3, v11, a5);
  if (v14)
  {
    v15 = OCXFindChild(v14, v11, "cNvPr");
  }

  else
  {
    v16 = [v13 client];
    v15 = [v16 genericNonVisualPropertiesNodeForDrawableNode:a3 inNamespace:v11 state:v13];
  }

  [v12 setHidden:{CXDefaultBoolAttribute(v15, CXNoNamespace, "hidden", 0)}];
  v45 = 0;
  v17 = CXOptionalStringAttribute(v15, CXNoNamespace, "title", &v45);
  v18 = v45;
  v42 = v18;
  if (v17)
  {
    v19 = v18;
    v20 = [v12 drawableProperties];
    [v20 setAltTitle:v19];
  }

  v44 = 0;
  v21 = CXOptionalStringAttribute(v15, CXNoNamespace, "name", &v44);
  v22 = v44;
  v41 = v22;
  if (v21)
  {
    v23 = v22;
    v24 = [v12 drawableProperties];
    [v24 setAltDescription:v23];
  }

  v25 = CXRequiredUnsignedLongAttribute(v15, CXNoNamespace, "id");
  v26 = [v13 drawableForShapeId:v25];

  if (v26)
  {
    v25 = [OADDrawable generateOADDrawableId:v12];
  }

  [v12 setId:v25];
  v27 = [v13 OAXMainNamespace];
  v28 = OCXFindChild(v15, v27, "hlinkClick");

  if (v28)
  {
    v29 = [OAXHyperlink readHyperlink:v28 state:v13];
    v30 = [v12 drawableProperties];
    [v30 setClickHyperlink:v29];
  }

  v31 = [v13 OAXMainNamespace];
  v32 = OCXFindChild(v15, v31, "hlinkHover");

  if (v32)
  {
    v33 = [OAXHyperlink readHyperlink:v32 state:v13];
    v34 = [v12 drawableProperties];
    [v34 setHoverHyperlink:v33];
  }

  v35 = [v13 OAXMainNamespace];
  v36 = OCXFindChild(v15, v35, "extLst");

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
            [v13 setVmlShapeId:v40 forDrawableId:v25];

            break;
          }
        }
      }

      v37 = OCXNextSiblingNamed(v36, "ext");
    }
  }
}

+ (id)readDrawableFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![v7 containsNode:a3])
  {
    goto LABEL_13;
  }

  if (xmlStrEqual(a3->name, "sp"))
  {
    v9 = off_2799C5788;
    goto LABEL_12;
  }

  if (xmlStrEqual(a3->name, "cxnSp"))
  {
    v9 = off_2799C5768;
    goto LABEL_12;
  }

  if (xmlStrEqual(a3->name, "pic"))
  {
    v9 = off_2799C5780;
    goto LABEL_12;
  }

  if (xmlStrEqual(a3->name, "graphicFrame"))
  {
    v9 = off_2799C5770;
    goto LABEL_12;
  }

  if (!xmlStrEqual(a3->name, "grpSp"))
  {
    if (xmlStrEqual(a3->name, "contentPart"))
    {
      v29 = [v8 packagePart];
      v30 = [v8 OCXReadRequiredRelationshipForNode:a3 packagePart:v29];
      v31 = [v30 targetLocation];
      v32 = [v31 relativeString];

      [TCMessageContext reportWarning:OAUnsupportedMediaType, v32];
    }

LABEL_13:
    v11 = [v8 client];
    v10 = [v11 readClientDrawableFromXmlNode:a3 state:v8];

    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v9 = off_2799C5778;
LABEL_12:
  v10 = [(__objc2_class *)*v9 readFromXmlNode:a3 inNamespace:v7 drawingState:v8];
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = [v10 id];
  v13 = [v8 vmlShapeIdForDrawableId:v12];
  if (v13)
  {
    v14 = [v8 oavState];
    v15 = [v14 drawableForVmlShapeId:v13];

    if (v15)
    {
      v16 = [v8 oavState];
      [v16 addDualDrawable:v15];

      [v15 setId:v12];
      v17 = [v10 drawableProperties];
      v18 = [v17 orientedBounds];
      v19 = [v15 drawableProperties];
      [v19 setOrientedBounds:v18];

      v20 = [v10 drawableProperties];
      v21 = [v20 clickHyperlink];
      v22 = [v15 drawableProperties];
      [v22 setClickHyperlink:v21];

      v23 = [v10 drawableProperties];
      v24 = [v23 hoverHyperlink];
      v25 = [v15 drawableProperties];
      [v25 setHoverHyperlink:v24];

      v26 = [v10 clientData];
      [v15 setClientData:v26];

      v27 = v15;
      v10 = v27;
    }
  }

  [v8 setDrawable:v10 forShapeId:v12];

LABEL_19:

  return v10;
}

+ (id)readDrawablesFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    v12 = [a1 readDrawableFromXmlNode:i inNamespace:v8 drawingState:v9];
    if (!v12)
    {
      v13 = OCXReplaceChoiceWithFallback(i);
      if (!v13)
      {
        v12 = 0;
        goto LABEL_6;
      }

      [a1 readDrawableFromXmlNode:v13 inNamespace:v8 drawingState:v9];
      v12 = i = v13;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    [v10 addObject:v12];
LABEL_6:
  }

  return v10;
}

@end