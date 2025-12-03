@interface OAVDrawable
+ (CGRect)readCoordBounds:(_xmlNode *)bounds;
+ (_xmlDoc)vmlDocumentFromPart:(id)part;
+ (id)readDrawableFromNode:(_xmlNode *)node inNamespace:(id)namespace state:(id)state;
+ (id)readDrawablesFromParent:(_xmlNode *)parent inNamespace:(id)namespace state:(id)state;
+ (void)readFromDrawable:(_xmlNode *)drawable toDrawable:(id)toDrawable state:(id)state;
@end

@implementation OAVDrawable

+ (_xmlDoc)vmlDocumentFromPart:(id)part
{
  data = [part data];
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithData:data encoding:4];
  if ([v4 rangeOfString:@"<br/>"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 replaceOccurrencesOfString:@"<br>" withString:@"<br/>" options:2 range:{0, objc_msgSend(v4, "length")}];
  }

  Doc = xmlReadDoc([v4 tc_xmlString], 0, 0, 97);

  return Doc;
}

+ (id)readDrawableFromNode:(_xmlNode *)node inNamespace:(id)namespace state:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  if (xmlStrEqual(node->name, "shape") || xmlStrEqual(node->name, "line") || xmlStrEqual(node->name, "polyline") || xmlStrEqual(node->name, "rect") || xmlStrEqual(node->name, "roundrect") || xmlStrEqual(node->name, "oval"))
  {
    v9 = [OAVShape readFromShape:node inNamespace:namespaceCopy state:stateCopy];
LABEL_8:
    v10 = v9;
    goto LABEL_9;
  }

  if (xmlStrEqual(node->name, "shapetype"))
  {
    v9 = [OAVShapeType readFromShapeType:node state:stateCopy];
    goto LABEL_8;
  }

  if (xmlStrEqual(node->name, "group"))
  {
    v9 = [OAVGroup readFromGroup:node inNamespace:namespaceCopy state:stateCopy];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)readDrawablesFromParent:(_xmlNode *)parent inNamespace:(id)namespace state:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  for (i = OCXFirstChild(parent); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v12 = [self readDrawableFromNode:i inNamespace:namespaceCopy state:stateCopy];
      if (v12)
      {
        [v10 addObject:v12];
      }
    }
  }

  return v10;
}

+ (void)readFromDrawable:(_xmlNode *)drawable toDrawable:(id)toDrawable state:(id)state
{
  toDrawableCopy = toDrawable;
  stateCopy = state;
  v9 = CXDefaultStringAttribute(drawable, CXNoNamespace, "id", 0);
  v10 = CXDefaultStringAttribute(drawable, OAVOfficeDrawingNamespace, "spid", 0);
  v42 = v10;
  if ([v9 length])
  {
    [stateCopy setDrawable:toDrawableCopy forVmlShapeId:v9];
    [toDrawableCopy setId:{objc_msgSend(stateCopy, "officeArtShapeIdWithVmlShapeId:", v9)}];
  }

  if ([v10 length])
  {
    [stateCopy setDrawable:toDrawableCopy forVmlShapeId:v10];
    if (![v9 length])
    {
      [toDrawableCopy setId:{objc_msgSend(stateCopy, "officeArtShapeIdWithVmlShapeId:", v10)}];
    }
  }

  if (![v9 length])
  {
    [v10 length];
  }

  v41 = CXRequiredStringAttribute(drawable, CXNoNamespace, "style");
  v11 = OAVReadComposite(v41);
  v12 = objc_alloc_init(OADOrientedBounds);
  drawableProperties = [toDrawableCopy drawableProperties];
  [drawableProperties setOrientedBounds:v12];

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
    [toDrawableCopy setHidden:1];
  }

  v18 = xmlStrEqual(drawable->parent->name, "group");
  name = drawable->name;
  if (v18)
  {
    if (xmlStrEqual(name, "line"))
    {
      v44 = 0;
      v20 = CXRequiredStringAttribute(drawable, CXNoNamespace, "from");
      OAVReadIntPair(v20, &v44 + 1, &v44);
      v43 = 0;
      v21 = CXRequiredStringAttribute(drawable, CXNoNamespace, "to");
      OAVReadIntPair(v21, &v43 + 1, &v43);
      [(OADOrientedBounds *)v12 setBounds:SHIDWORD(v44), v44, (HIDWORD(v43) - HIDWORD(v44)), (v43 - v44)];
LABEL_23:

      goto LABEL_24;
    }

    if (!xmlStrEqual(drawable->name, "polyline"))
    {
      v24 = [v11 objectForKey:@"left"];
      intValue = [v24 intValue];

      v25 = [v11 objectForKey:@"top"];
      intValue2 = [v25 intValue];

      v26 = [v11 objectForKey:@"width"];
      intValue3 = [v26 intValue];

      v27 = [v11 objectForKey:@"height"];
      LODWORD(v25) = [v27 intValue];

      [(OADOrientedBounds *)v12 setBounds:intValue, intValue2, intValue3, v25];
    }
  }

  else
  {
    if (xmlStrEqual(name, "line"))
    {
      v44 = 0;
      v20 = CXRequiredStringAttribute(drawable, CXNoNamespace, "from");
      OAVReadLengthPair(v20, &v44 + 1, &v44);
      v43 = 0;
      v21 = CXRequiredStringAttribute(drawable, CXNoNamespace, "to");
      OAVReadLengthPair(v21, &v43 + 1, &v43);
      [(OADOrientedBounds *)v12 setBounds:*(&v44 + 1), *&v44, (*(&v43 + 1) - *(&v44 + 1)), (*&v43 - *&v44)];
      goto LABEL_23;
    }

    if (!xmlStrEqual(drawable->name, "polyline"))
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
  v22 = [OAVHyperlink readFromDrawable:drawable state:stateCopy];
  drawableProperties2 = [toDrawableCopy drawableProperties];
  [drawableProperties2 setClickHyperlink:v22];
}

+ (CGRect)readCoordBounds:(_xmlNode *)bounds
{
  *v16 = 0;
  v4 = CXDefaultStringAttribute(bounds, CXNoNamespace, "coordorigin", 0);
  OAVReadIntPair(v4, &v16[1], v16);
  v14 = 1000;
  v15 = 1000;
  v5 = CXRequiredStringAttribute(bounds, CXNoNamespace, "coordsize");
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