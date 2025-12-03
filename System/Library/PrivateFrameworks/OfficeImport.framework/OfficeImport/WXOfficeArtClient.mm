@interface WXOfficeArtClient
- (_xmlNode)genericNonVisualPropertiesNodeForDrawableNode:(_xmlNode *)node inNamespace:(id)namespace state:(id)state;
- (id)readClientDrawableFromXmlNode:(_xmlNode *)node state:(id)state;
- (id)readGraphicData:(_xmlNode *)data state:(id)state;
- (void)readBlipExtWithURI:(id)i fromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state;
- (void)readClientDataFromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state;
@end

@implementation WXOfficeArtClient

- (id)readClientDrawableFromXmlNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  objc_opt_class();
  documentState = [stateCopy documentState];
  if (xmlStrEqual(node->name, "wsp"))
  {
    wXShapeNamespace = [documentState WXShapeNamespace];
    v8 = [wXShapeNamespace containsNode:node];

    if (v8)
    {
      wXShapeNamespace2 = [documentState WXShapeNamespace];
      v10 = [OAXShape readFromXmlNode:node inNamespace:wXShapeNamespace2 drawingState:stateCopy];
LABEL_10:
      v15 = v10;

      goto LABEL_12;
    }
  }

  if (xmlStrEqual(node->name, "pic"))
  {
    oAXPictureNamespace = [stateCopy OAXPictureNamespace];
    v12 = [oAXPictureNamespace containsNode:node];

    if (v12)
    {
      wXShapeNamespace2 = [stateCopy OAXPictureNamespace];
      v10 = [OAXPicture readFromXmlNode:node inNamespace:wXShapeNamespace2 drawingState:stateCopy];
      goto LABEL_10;
    }
  }

  if (xmlStrEqual(node->name, "grpSp"))
  {
    wXGroupNamespace = [documentState WXGroupNamespace];
    v14 = [wXGroupNamespace containsNode:node];

    if (v14)
    {
      wXShapeNamespace2 = [documentState WXGroupNamespace];
      v10 = [OAXGroup readFromXmlNode:node inNamespace:wXShapeNamespace2 drawingState:stateCopy];
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (_xmlNode)genericNonVisualPropertiesNodeForDrawableNode:(_xmlNode *)node inNamespace:(id)namespace state:(id)state
{
  stateCopy = state;
  v8 = OCXFindChild(node, namespace, "cNvPr");
  if (!v8)
  {
    parent = node->parent->parent->parent;
    documentState = [stateCopy documentState];
    wXDrawingNamespace = [documentState WXDrawingNamespace];
    v8 = OCXFindChild(parent, wXDrawingNamespace, "docPr");
  }

  return v8;
}

- (void)readClientDataFromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  oavState = [state oavState];
  wxReadState = [oavState wxReadState];
  v10 = objc_alloc_init(WDAContent);
  [drawableCopy setClientData:v10];
  -[WDAContent setTextType:](v10, "setTextType:", [wxReadState currentOfficeArtTextType]);
  wXShapeNamespace = [wxReadState WXShapeNamespace];
  v12 = OCXFindChild(node, wXShapeNamespace, "txbx");

  if (v12)
  {
    v13 = [WXTextBox readFrom:v12 parent:v10 state:oavState];
    if (!v13)
    {
      goto LABEL_21;
    }

    document = [wxReadState document];
    [(WDAContent *)v10 setTextBox:v13 document:document];

    [(WDAContent *)v10 setDrawable:drawableCopy];
    v53 = -1;
    if (!CXOptionalLongAttribute(v12, CXNoNamespace, "id", &v53))
    {
      goto LABEL_21;
    }

    [(WDATextBox *)v13 setFlowSequence:&unk_286F6DD40];
    v15 = [MEMORY[0x277CCABB0] numberWithLong:v53];
    [(WDATextBox *)v13 setFlowId:v15];

    [(WDATextBox *)v13 setNextTextBoxId:0xFFFFFFFFLL];
    flowId = [(WDATextBox *)v13 flowId];
    [wxReadState setTextBox:v13 forFlowId:flowId];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  wXShapeNamespace2 = [wxReadState WXShapeNamespace];
  v18 = OCXFindChild(node, wXShapeNamespace2, "linkedTxbx");

  if (v18)
  {
    v13 = objc_alloc_init(WDATextBox);
    [(WDATextBox *)v13 setParent:v10];
    [(WDAContent *)v10 setDrawable:drawableCopy];
    document2 = [wxReadState document];
    [(WDAContent *)v10 setTextBox:v13 document:document2];

    v52 = -1;
    v53 = -1;
    if (CXOptionalLongAttribute(v18, CXNoNamespace, "id", &v53) && CXOptionalLongAttribute(v18, CXNoNamespace, "seq", &v52))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithLong:v52];
      [(WDATextBox *)v13 setFlowSequence:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithLong:v53];
      [(WDATextBox *)v13 setFlowId:v21];
    }

    flowId2 = [(WDATextBox *)v13 flowId];
    flowId = [wxReadState textBoxForFlowId:flowId2];

    if (![(WDAContent *)v10 hasText])
    {
      drawingState = [wxReadState drawingState];
      isInsideGroup = [drawingState isInsideGroup];
      v25 = flowId ? isInsideGroup : 0;

      if (v25 == 1)
      {
        drawableProperties = [drawableCopy drawableProperties];
        orientedBounds = [drawableProperties orientedBounds];

        parent = [flowId parent];
        drawable = [parent drawable];
        drawableProperties2 = [drawable drawableProperties];
        orientedBounds2 = [drawableProperties2 orientedBounds];

        objc_opt_class();
        drawingState2 = [wxReadState drawingState];
        peekGroup = [drawingState2 peekGroup];

        if (orientedBounds2)
        {
          if (orientedBounds)
          {
            [orientedBounds bounds];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            [orientedBounds2 bounds];
            v57.origin.x = v41;
            v57.origin.y = v42;
            v44 = v43;
            v46 = v45;
            v54.origin.x = v34;
            v54.origin.y = v36;
            v54.size.width = v38;
            v54.size.height = v40;
            v57.size.width = v44;
            v57.size.height = v46;
            v55 = CGRectUnion(v54, v57);
            x = v55.origin.x;
            y = v55.origin.y;
            width = v55.size.width;
            height = v55.size.height;
            [peekGroup logicalBounds];
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = width;
            v58.size.height = height;
            if (CGRectContainsRect(v56, v58) && width * height < v44 * v46 + v38 * v40 + v44 * v46 + v38 * v40)
            {
              [orientedBounds2 setBounds:{x, y, width, height}];
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (id)readGraphicData:(_xmlNode *)data state:(id)state
{
  stateCopy = state;
  objc_opt_class();
  documentState = [stateCopy documentState];
  v7 = CXRequiredStringAttribute(data, CXNoNamespace, "uri");
  tc_xmlString = [v7 tc_xmlString];
  wXShapeNamespace = [documentState WXShapeNamespace];
  LODWORD(tc_xmlString) = CXXmlStrEqualToNsUriOrFallbackNsUri(tc_xmlString, wXShapeNamespace);

  if (tc_xmlString)
  {
    wXShapeNamespace2 = [documentState WXShapeNamespace];
    v11 = OCXFindChild(data, wXShapeNamespace2, "wsp");

    if (!v11)
    {
      goto LABEL_9;
    }

    wXShapeNamespace3 = [documentState WXShapeNamespace];
    v13 = [OAXShape readFromXmlNode:v11 inNamespace:wXShapeNamespace3 drawingState:stateCopy];
LABEL_7:
    v11 = v13;

    goto LABEL_9;
  }

  tc_xmlString2 = [v7 tc_xmlString];
  wXGroupNamespace = [documentState WXGroupNamespace];
  LODWORD(tc_xmlString2) = CXXmlStrEqualToNsUriOrFallbackNsUri(tc_xmlString2, wXGroupNamespace);

  if (tc_xmlString2)
  {
    wXGroupNamespace2 = [documentState WXGroupNamespace];
    v11 = OCXFindChild(data, wXGroupNamespace2, "wgp");

    if (!v11)
    {
      goto LABEL_9;
    }

    wXShapeNamespace3 = [documentState WXGroupNamespace];
    v13 = [OAXGroup readFromXmlNode:v11 inNamespace:wXShapeNamespace3 drawingState:stateCopy];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)readBlipExtWithURI:(id)i fromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  if ([i isEqualToString:@"{C809E66F-F1BF-436E-b5F7-EEA9579F0CBA}"])
  {
    v8 = OCXFindChild(node, WXWord2012DrawingNamespace, "webVideoPr");
    v9 = objc_opt_class();
    v10 = TSUDynamicCast(v9, drawableCopy);
    v11 = v10;
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = CXDefaultStringAttribute(v8, CXNoNamespace, "embeddedHtml", 0);
      if ([v13 length])
      {
        v14 = [v13 stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;

        Doc = xmlReadDoc([v14 tc_xmlString], 0, 0, 1);
        v16 = CXGetRootElement(Doc);
        v17 = CXFirstChildNamed(v16, "embed");
        v18 = CXDefaultStringAttribute(v17, CXNoNamespace, "src", 0);
        v19 = CXDefaultStringAttribute(v17, CXNoNamespace, "flashVars", 0);
        v20 = v19;
        if (v18 && v19)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&amp%@", v18, v19];;

          v18 = v21;
        }

        xmlFreeDoc(Doc);
        if (v18)
        {
          v22 = [MEMORY[0x277CBEBC0] URLWithString:v18];
          v23 = objc_alloc_init(OADLinkedMediaFile);
          [(OADLinkedMediaFile *)v23 setUrl:v22];
          [(OADLinkedMediaFile *)v23 setIsExternal:1];
          [v11 setMovie:v23];
        }
      }

      else
      {
        v14 = v13;
      }
    }
  }
}

@end