@interface OAXGraphicalObject
+ (id)readFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
@end

@implementation OAXGraphicalObject

+ (id)readFromParentXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v8 = OCXFindChild(node, oAXMainNamespace, "graphic");

  if (!v8 || ([stateCopy OAXMainNamespace], v9 = objc_claimAutoreleasedReturnValue(), v10 = OCXFindChild(v8, v9, "graphicData"), v9, !v10))
  {
    v16 = 0;
    goto LABEL_10;
  }

  v11 = CXRequiredStringAttribute(v10, CXNoNamespace, "uri");
  v12 = [[ODXState alloc] initWithOfficeArtState:stateCopy];
  tc_xmlString = [v11 tc_xmlString];
  oDXDiagramNamespace = [(ODXState *)v12 ODXDiagramNamespace];
  LODWORD(tc_xmlString) = CXXmlStrEqualToNsUriOrFallbackNsUri(tc_xmlString, oDXDiagramNamespace);

  if (!tc_xmlString)
  {
    tc_xmlString2 = [v11 tc_xmlString];
    oAXChartNamespace = [stateCopy OAXChartNamespace];
    LODWORD(tc_xmlString2) = CXXmlStrEqualToNsUriOrFallbackNsUri(tc_xmlString2, oAXChartNamespace);

    if (tc_xmlString2)
    {
      v15 = [CHXReader readFromParentNode:v10 drawingState:stateCopy];
      goto LABEL_8;
    }

    if ([v11 hasSuffix:@"/picture"])
    {
      oAXPictureNamespace = [stateCopy OAXPictureNamespace];
      v21 = OCXFindChild(v10, oAXPictureNamespace, "pic");

      if (!v21)
      {
        [TCMessageException raise:OABadFormat];
      }

      oAXPictureNamespace2 = [stateCopy OAXPictureNamespace];
      v23 = [OAXPicture readFromXmlNode:v21 inNamespace:oAXPictureNamespace2 drawingState:stateCopy];
    }

    else
    {
      if ([v11 hasSuffix:@"/table"])
      {
        oAXMainNamespace2 = [stateCopy OAXMainNamespace];
        v25 = OCXFindChild(v10, oAXMainNamespace2, "tbl");

        if (!v25)
        {
          [TCMessageException raise:OABadFormat];
        }

        v15 = [OAXTable readFromXmlNode:v25 drawingState:stateCopy];
        goto LABEL_8;
      }

      if (([v11 hasSuffix:@"/ole"] & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @"/oleObject"))
      {
        oAXPictureNamespace2 = [stateCopy client];
        v23 = [oAXPictureNamespace2 readOle:v10 state:stateCopy];
      }

      else if ([v11 hasSuffix:@"/lockedCanvas"])
      {
        oAXLockedCanvasNamespace = [stateCopy OAXLockedCanvasNamespace];
        v27 = OCXFindChild(v10, oAXLockedCanvasNamespace, "lockedCanvas");

        if (!v27)
        {
          [TCMessageException raise:OABadFormat];
        }

        oAXPictureNamespace2 = [stateCopy OAXMainNamespace];
        v23 = [OAXGroup readFromXmlNode:v27 inNamespace:oAXPictureNamespace2 drawingState:stateCopy];
      }

      else
      {
        if ([v11 hasSuffix:@"/compatibility"])
        {
          oAXCompatNamespace = [stateCopy OAXCompatNamespace];
          v29 = OCXFindChild(v10, oAXCompatNamespace, "legacyDrawing");

          if (!v29)
          {
            [TCMessageException raise:OABadFormat];
          }

          oAXPictureNamespace2 = CXRequiredStringAttribute(v29, CXNoNamespace, "spid");
          oavState = [stateCopy oavState];
          v16 = [oavState drawableForVmlShapeId:oAXPictureNamespace2];

          oavState2 = [stateCopy oavState];
          [oavState2 addDualDrawable:v16];

          goto LABEL_25;
        }

        oAXPictureNamespace2 = [stateCopy client];
        v23 = [oAXPictureNamespace2 readGraphicData:v10 state:stateCopy];
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