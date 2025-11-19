@interface WXOfficeArtClient
- (_xmlNode)genericNonVisualPropertiesNodeForDrawableNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5;
- (id)readClientDrawableFromXmlNode:(_xmlNode *)a3 state:(id)a4;
- (id)readGraphicData:(_xmlNode *)a3 state:(id)a4;
- (void)readBlipExtWithURI:(id)a3 fromNode:(_xmlNode *)a4 toDrawable:(id)a5 state:(id)a6;
- (void)readClientDataFromNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5;
@end

@implementation WXOfficeArtClient

- (id)readClientDrawableFromXmlNode:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 documentState];
  if (xmlStrEqual(a3->name, "wsp"))
  {
    v7 = [v6 WXShapeNamespace];
    v8 = [v7 containsNode:a3];

    if (v8)
    {
      v9 = [v6 WXShapeNamespace];
      v10 = [OAXShape readFromXmlNode:a3 inNamespace:v9 drawingState:v5];
LABEL_10:
      v15 = v10;

      goto LABEL_12;
    }
  }

  if (xmlStrEqual(a3->name, "pic"))
  {
    v11 = [v5 OAXPictureNamespace];
    v12 = [v11 containsNode:a3];

    if (v12)
    {
      v9 = [v5 OAXPictureNamespace];
      v10 = [OAXPicture readFromXmlNode:a3 inNamespace:v9 drawingState:v5];
      goto LABEL_10;
    }
  }

  if (xmlStrEqual(a3->name, "grpSp"))
  {
    v13 = [v6 WXGroupNamespace];
    v14 = [v13 containsNode:a3];

    if (v14)
    {
      v9 = [v6 WXGroupNamespace];
      v10 = [OAXGroup readFromXmlNode:a3 inNamespace:v9 drawingState:v5];
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (_xmlNode)genericNonVisualPropertiesNodeForDrawableNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5
{
  v7 = a5;
  v8 = OCXFindChild(a3, a4, "cNvPr");
  if (!v8)
  {
    parent = a3->parent->parent->parent;
    v10 = [v7 documentState];
    v11 = [v10 WXDrawingNamespace];
    v8 = OCXFindChild(parent, v11, "docPr");
  }

  return v8;
}

- (void)readClientDataFromNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = [a5 oavState];
  v9 = [v8 wxReadState];
  v10 = objc_alloc_init(WDAContent);
  [v7 setClientData:v10];
  -[WDAContent setTextType:](v10, "setTextType:", [v9 currentOfficeArtTextType]);
  v11 = [v9 WXShapeNamespace];
  v12 = OCXFindChild(a3, v11, "txbx");

  if (v12)
  {
    v13 = [WXTextBox readFrom:v12 parent:v10 state:v8];
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = [v9 document];
    [(WDAContent *)v10 setTextBox:v13 document:v14];

    [(WDAContent *)v10 setDrawable:v7];
    v53 = -1;
    if (!CXOptionalLongAttribute(v12, CXNoNamespace, "id", &v53))
    {
      goto LABEL_21;
    }

    [(WDATextBox *)v13 setFlowSequence:&unk_286F6DD40];
    v15 = [MEMORY[0x277CCABB0] numberWithLong:v53];
    [(WDATextBox *)v13 setFlowId:v15];

    [(WDATextBox *)v13 setNextTextBoxId:0xFFFFFFFFLL];
    v16 = [(WDATextBox *)v13 flowId];
    [v9 setTextBox:v13 forFlowId:v16];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v17 = [v9 WXShapeNamespace];
  v18 = OCXFindChild(a3, v17, "linkedTxbx");

  if (v18)
  {
    v13 = objc_alloc_init(WDATextBox);
    [(WDATextBox *)v13 setParent:v10];
    [(WDAContent *)v10 setDrawable:v7];
    v19 = [v9 document];
    [(WDAContent *)v10 setTextBox:v13 document:v19];

    v52 = -1;
    v53 = -1;
    if (CXOptionalLongAttribute(v18, CXNoNamespace, "id", &v53) && CXOptionalLongAttribute(v18, CXNoNamespace, "seq", &v52))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithLong:v52];
      [(WDATextBox *)v13 setFlowSequence:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithLong:v53];
      [(WDATextBox *)v13 setFlowId:v21];
    }

    v22 = [(WDATextBox *)v13 flowId];
    v16 = [v9 textBoxForFlowId:v22];

    if (![(WDAContent *)v10 hasText])
    {
      v23 = [v9 drawingState];
      v24 = [v23 isInsideGroup];
      v25 = v16 ? v24 : 0;

      if (v25 == 1)
      {
        v26 = [v7 drawableProperties];
        v51 = [v26 orientedBounds];

        v27 = [v16 parent];
        v28 = [v27 drawable];
        v29 = [v28 drawableProperties];
        v30 = [v29 orientedBounds];

        objc_opt_class();
        v31 = [v9 drawingState];
        v32 = [v31 peekGroup];

        if (v30)
        {
          if (v51)
          {
            [v51 bounds];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            [v30 bounds];
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
            [v32 logicalBounds];
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = width;
            v58.size.height = height;
            if (CGRectContainsRect(v56, v58) && width * height < v44 * v46 + v38 * v40 + v44 * v46 + v38 * v40)
            {
              [v30 setBounds:{x, y, width, height}];
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (id)readGraphicData:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 documentState];
  v7 = CXRequiredStringAttribute(a3, CXNoNamespace, "uri");
  v8 = [v7 tc_xmlString];
  v9 = [v6 WXShapeNamespace];
  LODWORD(v8) = CXXmlStrEqualToNsUriOrFallbackNsUri(v8, v9);

  if (v8)
  {
    v10 = [v6 WXShapeNamespace];
    v11 = OCXFindChild(a3, v10, "wsp");

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [v6 WXShapeNamespace];
    v13 = [OAXShape readFromXmlNode:v11 inNamespace:v12 drawingState:v5];
LABEL_7:
    v11 = v13;

    goto LABEL_9;
  }

  v14 = [v7 tc_xmlString];
  v15 = [v6 WXGroupNamespace];
  LODWORD(v14) = CXXmlStrEqualToNsUriOrFallbackNsUri(v14, v15);

  if (v14)
  {
    v16 = [v6 WXGroupNamespace];
    v11 = OCXFindChild(a3, v16, "wgp");

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [v6 WXGroupNamespace];
    v13 = [OAXGroup readFromXmlNode:v11 inNamespace:v12 drawingState:v5];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)readBlipExtWithURI:(id)a3 fromNode:(_xmlNode *)a4 toDrawable:(id)a5 state:(id)a6
{
  v24 = a5;
  if ([a3 isEqualToString:@"{C809E66F-F1BF-436E-b5F7-EEA9579F0CBA}"])
  {
    v8 = OCXFindChild(a4, WXWord2012DrawingNamespace, "webVideoPr");
    v9 = objc_opt_class();
    v10 = TSUDynamicCast(v9, v24);
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