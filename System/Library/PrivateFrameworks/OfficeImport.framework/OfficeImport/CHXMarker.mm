@interface CHXMarker
+ (id)chdMarkerFromXmlMarkerElement:(_xmlNode *)element state:(id)state;
+ (id)stringFromMarkerStyle:(int)style;
+ (int)chdMarkerStyleFromXmlMarkerStyleElement:(_xmlNode *)element;
@end

@implementation CHXMarker

+ (id)chdMarkerFromXmlMarkerElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(CHDMarker);
  v8 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v8 element:element state:stateCopy];
  [(CHDMarker *)v7 setGraphicProperties:v8];
  if (!element)
  {
    goto LABEL_16;
  }

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v11 = OCXFindChild(element, oAXChartNamespace, "symbol");

  if (v11)
  {
    v12 = [self chdMarkerStyleFromXmlMarkerStyleElement:v11];
  }

  else
  {
    v12 = 2;
  }

  if ([(OADGraphicProperties *)v8 hasFill])
  {
    fill = [(OADGraphicProperties *)v8 fill];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(OADGraphicProperties *)v8 hasStroke])
    {
      stroke = [(OADGraphicProperties *)v8 stroke];
      if ([stroke isFillOverridden])
      {
        stroke2 = [(OADGraphicProperties *)v8 stroke];
        fill2 = [stroke2 fill];
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
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v20 = OCXFindChild(element, oAXChartNamespace2, "size");

  if (v20)
  {
    [(CHDMarker *)v7 setSize:CXRequiredUnsignedLongAttribute(v20, CXNoNamespace, "val")];
  }

LABEL_16:

  return v7;
}

+ (int)chdMarkerStyleFromXmlMarkerStyleElement:(_xmlNode *)element
{
  v3 = CXRequiredStringAttribute(element, CXNoNamespace, "val");
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

+ (id)stringFromMarkerStyle:(int)style
{
  if ((style + 1) > 0xB)
  {
    return @"dot";
  }

  else
  {
    return off_2799CD2E8[style + 1];
  }
}

@end