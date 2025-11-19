@interface OAVDrawable
+ (CGRect)readCoordBounds:(_xmlNode *)a3;
+ (_xmlDoc)vmlDocumentFromPart:(id)a3;
+ (id)readDrawableFromNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5;
+ (id)readDrawablesFromParent:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5;
+ (void)readFromDrawable:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5;
@end

@implementation OAVDrawable

+ (_xmlDoc)vmlDocumentFromPart:(id)a3
{
  v3 = [a3 data];
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithData:v3 encoding:4];
  if ([v4 rangeOfString:@"<br/>"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 replaceOccurrencesOfString:@"<br>" withString:@"<br/>" options:2 range:{0, objc_msgSend(v4, "length")}];
  }

  Doc = xmlReadDoc([v4 tc_xmlString], 0, 0, 97);

  return Doc;
}

+ (id)readDrawableFromNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (xmlStrEqual(a3->name, "shape") || xmlStrEqual(a3->name, "line") || xmlStrEqual(a3->name, "polyline") || xmlStrEqual(a3->name, "rect") || xmlStrEqual(a3->name, "roundrect") || xmlStrEqual(a3->name, "oval"))
  {
    v9 = [OAVShape readFromShape:a3 inNamespace:v7 state:v8];
LABEL_8:
    v10 = v9;
    goto LABEL_9;
  }

  if (xmlStrEqual(a3->name, "shapetype"))
  {
    v9 = [OAVShapeType readFromShapeType:a3 state:v8];
    goto LABEL_8;
  }

  if (xmlStrEqual(a3->name, "group"))
  {
    v9 = [OAVGroup readFromGroup:a3 inNamespace:v7 state:v8];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)readDrawablesFromParent:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v12 = [a1 readDrawableFromNode:i inNamespace:v8 state:v9];
      if (v12)
      {
        [v10 addObject:v12];
      }
    }
  }

  return v10;
}

+ (void)readFromDrawable:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = CXDefaultStringAttribute(a3, CXNoNamespace, "id", 0);
  v10 = CXDefaultStringAttribute(a3, OAVOfficeDrawingNamespace, "spid", 0);
  v42 = v10;
  if ([v9 length])
  {
    [v8 setDrawable:v7 forVmlShapeId:v9];
    [v7 setId:{objc_msgSend(v8, "officeArtShapeIdWithVmlShapeId:", v9)}];
  }

  if ([v10 length])
  {
    [v8 setDrawable:v7 forVmlShapeId:v10];
    if (![v9 length])
    {
      [v7 setId:{objc_msgSend(v8, "officeArtShapeIdWithVmlShapeId:", v10)}];
    }
  }

  if (![v9 length])
  {
    [v10 length];
  }

  v41 = CXRequiredStringAttribute(a3, CXNoNamespace, "style");
  v11 = OAVReadComposite(v41);
  v12 = objc_alloc_init(OADOrientedBounds);
  v13 = [v7 drawableProperties];
  [v13 setOrientedBounds:v12];

  v14 = [v11 objectForKey:@"rotation"];
  v15 = v14;
  if (v14)
  {
    *&v16 = OAVReadAngle(v14);
    [(OADOrientedBounds *)v12 setRotation:v16];
  }

  v17 = [v11 objectForKey:@"flip"];
  if ([v17 isEqualToString:@"x"])
  {
    [(OADOrientedBounds *)v12 setFlipX:1];
    goto LABEL_16;
  }

  if (([v17 isEqualToString:@"y"] & 1) == 0)
  {
    if (![v17 isEqualToString:@"x y"])
    {
      goto LABEL_16;
    }

    [(OADOrientedBounds *)v12 setFlipX:1];
  }

  [(OADOrientedBounds *)v12 setFlipY:1];
LABEL_16:
  v40 = [v11 objectForKey:@"visibility"];
  if ([v40 isEqualToString:@"hidden"])
  {
    [v7 setHidden:1];
  }

  v18 = xmlStrEqual(a3->parent->name, "group");
  name = a3->name;
  if (v18)
  {
    if (xmlStrEqual(name, "line"))
    {
      v44 = 0;
      v20 = CXRequiredStringAttribute(a3, CXNoNamespace, "from");
      OAVReadIntPair(v20, &v44 + 1, &v44);
      v43 = 0;
      v21 = CXRequiredStringAttribute(a3, CXNoNamespace, "to");
      OAVReadIntPair(v21, &v43 + 1, &v43);
      [(OADOrientedBounds *)v12 setBounds:SHIDWORD(v44), v44, (HIDWORD(v43) - HIDWORD(v44)), (v43 - v44)];
LABEL_23:

      goto LABEL_24;
    }

    if (!xmlStrEqual(a3->name, "polyline"))
    {
      v24 = [v11 objectForKey:@"left"];
      v38 = [v24 intValue];

      v25 = [v11 objectForKey:@"top"];
      v37 = [v25 intValue];

      v26 = [v11 objectForKey:@"width"];
      v36 = [v26 intValue];

      v27 = [v11 objectForKey:@"height"];
      LODWORD(v25) = [v27 intValue];

      [(OADOrientedBounds *)v12 setBounds:v38, v37, v36, v25];
    }
  }

  else
  {
    if (xmlStrEqual(name, "line"))
    {
      v44 = 0;
      v20 = CXRequiredStringAttribute(a3, CXNoNamespace, "from");
      OAVReadLengthPair(v20, &v44 + 1, &v44);
      v43 = 0;
      v21 = CXRequiredStringAttribute(a3, CXNoNamespace, "to");
      OAVReadLengthPair(v21, &v43 + 1, &v43);
      [(OADOrientedBounds *)v12 setBounds:*(&v44 + 1), *&v44, (*(&v43 + 1) - *(&v44 + 1)), (*&v43 - *&v44)];
      goto LABEL_23;
    }

    if (!xmlStrEqual(a3->name, "polyline"))
    {
      v28 = [v11 objectForKey:@"margin-left"];
      if (!v28)
      {
        v28 = [v11 objectForKey:@"left"];
      }

      v29 = OAVReadLength(v28);
      v30 = [v11 objectForKey:@"margin-top"];
      if (!v30)
      {
        v30 = [v11 objectForKey:@"top"];
      }

      v39 = v30;
      v31 = OAVReadLength(v30);
      v32 = [v11 objectForKey:@"width"];
      v33 = OAVReadLength(v32);

      v34 = [v11 objectForKey:@"height"];
      v35 = OAVReadLength(v34);

      [(OADOrientedBounds *)v12 setBounds:v29, v31, v33, v35];
    }
  }

LABEL_24:
  v22 = [OAVHyperlink readFromDrawable:a3 state:v8];
  v23 = [v7 drawableProperties];
  [v23 setClickHyperlink:v22];
}

+ (CGRect)readCoordBounds:(_xmlNode *)a3
{
  *v16 = 0;
  v4 = CXDefaultStringAttribute(a3, CXNoNamespace, "coordorigin", 0);
  OAVReadIntPair(v4, &v16[1], v16);
  v14 = 1000;
  v15 = 1000;
  v5 = CXRequiredStringAttribute(a3, CXNoNamespace, "coordsize");
  OAVReadIntPair(v5, &v15, &v14);
  v6 = v16[1];
  v7 = v16[0];
  v8 = v15;
  v9 = v14;

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

@end