@interface CHXMarker
+ (id)chdMarkerFromXmlMarkerElement:(_xmlNode *)a3 state:(id)a4;
+ (id)stringFromMarkerStyle:(int)a3;
+ (int)chdMarkerStyleFromXmlMarkerStyleElement:(_xmlNode *)a3;
@end

@implementation CHXMarker

+ (id)chdMarkerFromXmlMarkerElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(CHDMarker);
  v8 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v8 element:a3 state:v6];
  [(CHDMarker *)v7 setGraphicProperties:v8];
  if (!a3)
  {
    goto LABEL_16;
  }

  v9 = [v6 drawingState];
  v10 = [v9 OAXChartNamespace];
  v11 = OCXFindChild(a3, v10, "symbol");

  if (v11)
  {
    v12 = [a1 chdMarkerStyleFromXmlMarkerStyleElement:v11];
  }

  else
  {
    v12 = 2;
  }

  if ([(OADGraphicProperties *)v8 hasFill])
  {
    v13 = [(OADGraphicProperties *)v8 fill];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(OADGraphicProperties *)v8 hasStroke])
    {
      v14 = [(OADGraphicProperties *)v8 stroke];
      if ([v14 isFillOverridden])
      {
        v15 = [(OADGraphicProperties *)v8 stroke];
        v16 = [v15 fill];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = 0;
        }

        else
        {
          v12 = v12;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_14:
  [(CHDMarker *)v7 setStyle:v12];
  v18 = [v6 drawingState];
  v19 = [v18 OAXChartNamespace];
  v20 = OCXFindChild(a3, v19, "size");

  if (v20)
  {
    [(CHDMarker *)v7 setSize:CXRequiredUnsignedLongAttribute(v20, CXNoNamespace, "val")];
  }

LABEL_16:

  return v7;
}

+ (int)chdMarkerStyleFromXmlMarkerStyleElement:(_xmlNode *)a3
{
  v3 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
  if ([v3 isEqualToString:@"circle"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"dash"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"diamond"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"dot"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"none"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"plus"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"square"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"star"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"triangle"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"x"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromMarkerStyle:(int)a3
{
  if ((a3 + 1) > 0xB)
  {
    return @"dot";
  }

  else
  {
    return off_2799CD2E8[a3 + 1];
  }
}

@end