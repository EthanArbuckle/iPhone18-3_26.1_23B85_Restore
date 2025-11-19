@interface OAXGraphicalObject
+ (id)readFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
@end

@implementation OAXGraphicalObject

+ (id)readFromParentXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v6 = a5;
  v7 = [v6 OAXMainNamespace];
  v8 = OCXFindChild(a3, v7, "graphic");

  if (!v8 || ([v6 OAXMainNamespace], v9 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(v8, v9, "graphicData"), v9, !v10))
  {
    v16 = 0;
    goto LABEL_10;
  }

  v11 = CXRequiredStringAttribute(v10, CXNoNamespace, "uri");
  v12 = [[ODXState alloc] initWithOfficeArtState:v6];
  v13 = [v11 tc_xmlString];
  v14 = [(ODXState *)v12 ODXDiagramNamespace];
  LODWORD(v13) = CXXmlStrEqualToNsUriOrFallbackNsUri(v13, v14);

  if (!v13)
  {
    v17 = [v11 tc_xmlString];
    v18 = [v6 OAXChartNamespace];
    LODWORD(v17) = CXXmlStrEqualToNsUriOrFallbackNsUri(v17, v18);

    if (v17)
    {
      v15 = [CHXReader readFromParentNode:v10 drawingState:v6];
      goto LABEL_8;
    }

    if ([v11 hasSuffix:@"/picture"])
    {
      v20 = [v6 OAXPictureNamespace];
      v21 = OCXFindChild(v10, v20, "pic");

      if (!v21)
      {
        [TCMessageException raise:OABadFormat];
      }

      v22 = [v6 OAXPictureNamespace];
      v23 = [OAXPicture readFromXmlNode:v21 inNamespace:v22 drawingState:v6];
    }

    else
    {
      if ([v11 hasSuffix:@"/table"])
      {
        v24 = [v6 OAXMainNamespace];
        v25 = OCXFindChild(v10, v24, "tbl");

        if (!v25)
        {
          [TCMessageException raise:OABadFormat];
        }

        v15 = [OAXTable readFromXmlNode:v25 drawingState:v6];
        goto LABEL_8;
      }

      if (([v11 hasSuffix:@"/ole"] & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @"/oleObject"))
      {
        v22 = [v6 client];
        v23 = [v22 readOle:v10 state:v6];
      }

      else if ([v11 hasSuffix:@"/lockedCanvas"])
      {
        v26 = [v6 OAXLockedCanvasNamespace];
        v27 = OCXFindChild(v10, v26, "lockedCanvas");

        if (!v27)
        {
          [TCMessageException raise:OABadFormat];
        }

        v22 = [v6 OAXMainNamespace];
        v23 = [OAXGroup readFromXmlNode:v27 inNamespace:v22 drawingState:v6];
      }

      else
      {
        if ([v11 hasSuffix:@"/compatibility"])
        {
          v28 = [v6 OAXCompatNamespace];
          v29 = OCXFindChild(v10, v28, "legacyDrawing");

          if (!v29)
          {
            [TCMessageException raise:OABadFormat];
          }

          v22 = CXRequiredStringAttribute(v29, CXNoNamespace, "spid");
          v30 = [v6 oavState];
          v16 = [v30 drawableForVmlShapeId:v22];

          v31 = [v6 oavState];
          [v31 addDualDrawable:v16];

          goto LABEL_25;
        }

        v22 = [v6 client];
        v23 = [v22 readGraphicData:v10 state:v6];
      }
    }

    v16 = v23;
LABEL_25:

    goto LABEL_9;
  }

  v15 = [ODXDiagram readFromParentNode:v10 state:v12];
LABEL_8:
  v16 = v15;
LABEL_9:

LABEL_10:

  return v16;
}

@end