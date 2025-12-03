@interface CHXLegend
+ (id)chdLegendEntryFromXmlLegendEntryElement:(_xmlNode *)element defaultFont:(id)font state:(id)state;
+ (id)chdLegendFromXmlLegendElement:(_xmlNode *)element state:(id)state;
+ (int)chdLegendPositionFromXmlLegendPositionElement:(_xmlNode *)element;
+ (void)setDefaultLegendBounds:(id)bounds legendPosition:(int)position;
@end

@implementation CHXLegend

+ (id)chdLegendFromXmlLegendElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = [CHDLegend alloc];
  resources = [stateCopy resources];
  v9 = [(CHDLegend *)v7 initWithResources:resources];

  v10 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v10 element:element state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolveLegendGraphicProperties:v10];

  [(CHDLegend *)v9 setGraphicProperties:v10];
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v14 = OCXFindChild(element, oAXChartNamespace, "overlay");

  if (v14)
  {
    [(CHDLegend *)v9 setIsOverlay:CXRequiredBoolAttribute(v14, CXNoNamespace, "val")];
  }

  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v17 = OCXFindChild(element, oAXChartNamespace2, "legendPos");

  -[CHDLegend setLegendPosition:](v9, "setLegendPosition:", [self chdLegendPositionFromXmlLegendPositionElement:v17]);
  drawingState3 = [stateCopy drawingState];
  oAXChartNamespace3 = [drawingState3 OAXChartNamespace];
  v20 = OCXFindChild(element, oAXChartNamespace3, "txPr");

  if (v20)
  {
    v21 = objc_alloc_init(OADTextBody);
    drawingState4 = [stateCopy drawingState];
    [OAXTextBody readTextBodyFromXmlNode:v20 textBody:v21 drawingState:drawingState4];

    v23 = [CHXFont edFontWithOadTextBody:v21 state:stateCopy];
    [(CHDLegend *)v9 setFont:v23];
    if ([(OADTextBody *)v21 paragraphCount])
    {
      firstParagraphEffects = [(OADTextBody *)v21 firstParagraphEffects];
      v25 = [OAXEffect updateIncomingEffects:firstParagraphEffects];

      [(CHDLegend *)v9 setLabelEffects:v25];
    }
  }

  else
  {
    v23 = 0;
  }

  for (i = OCXFirstChildNamed(element, "legendEntry"); i; i = OCXNextSiblingNamed(i, "legendEntry"))
  {
    legendEntries = [(CHDLegend *)v9 legendEntries];
    v28 = [self chdLegendEntryFromXmlLegendEntryElement:i defaultFont:v23 state:stateCopy];
    [legendEntries addObject:v28];
  }

  return v9;
}

+ (void)setDefaultLegendBounds:(id)bounds legendPosition:(int)position
{
  boundsCopy = bounds;
  v5 = MEMORY[0x277CBF3A0];
  v6 = (MEMORY[0x277CBF3A0] + 16);
  v7 = (MEMORY[0x277CBF3A0] + 8);
  v8 = (&unk_25D6FE7F0 + 8 * (position - 1));
  if ((position - 1) > 4)
  {
    v8 = (MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v5 = (&unk_25D6FE778 + 8 * (position - 1));
    v7 = (&unk_25D6FE7A0 + 8 * (position - 1));
    v6 = (&unk_25D6FE7C8 + 8 * (position - 1));
  }

  v9 = [OADOrientedBounds orientedBoundsWithBounds:*v5 / 4000.0, *v7 / 4000.0, *v6 / 4000.0, *v8 / 4000.0];
  [boundsCopy setOrientedBounds:v9];
}

+ (id)chdLegendEntryFromXmlLegendEntryElement:(_xmlNode *)element defaultFont:(id)font state:(id)state
{
  fontCopy = font;
  stateCopy = state;
  v9 = [CHDLegendEntry alloc];
  resources = [stateCopy resources];
  v11 = [(CHDLegendEntry *)v9 initWithResources:resources];

  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v14 = OCXFindRequiredChild(element, oAXChartNamespace, "idx");

  [(CHDLegendEntry *)v11 setEntryIndex:CXRequiredUnsignedLongAttribute(v14, CXNoNamespace, "val")];
  drawingState2 = [stateCopy drawingState];
  oAXChartNamespace2 = [drawingState2 OAXChartNamespace];
  v17 = OCXFindChild(element, oAXChartNamespace2, "txPr");

  if (v17 && ([CHXFont edFontFromXmlTextPropertiesElement:v17 state:stateCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(CHDLegendEntry *)v11 setFont:v18];
  }

  else
  {
    if (fontCopy)
    {
      [(CHDLegendEntry *)v11 setFont:fontCopy];
    }

    v18 = 0;
  }

  return v11;
}

+ (int)chdLegendPositionFromXmlLegendPositionElement:(_xmlNode *)element
{
  if (element)
  {
    v3 = CXRequiredStringAttribute(element, CXNoNamespace, "val");
    if ([v3 isEqualToString:@"b"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"tr"])
    {
      v4 = 5;
    }

    else
    {
      if (([v3 isEqualToString:@"l"] & 1) == 0)
      {
        if (([v3 isEqualToString:@"r"] & 1) == 0)
        {
          if ([v3 isEqualToString:@"t"])
          {
            v4 = 4;
            goto LABEL_14;
          }

          [TCMessageException raise:TCInvalidFileFormatMessage];
        }

        v4 = 3;
        goto LABEL_14;
      }

      v4 = 2;
    }

LABEL_14:

    return v4;
  }

  return 3;
}

@end