@interface CHXLegend
+ (id)chdLegendEntryFromXmlLegendEntryElement:(_xmlNode *)a3 defaultFont:(id)a4 state:(id)a5;
+ (id)chdLegendFromXmlLegendElement:(_xmlNode *)a3 state:(id)a4;
+ (int)chdLegendPositionFromXmlLegendPositionElement:(_xmlNode *)a3;
+ (void)setDefaultLegendBounds:(id)a3 legendPosition:(int)a4;
@end

@implementation CHXLegend

+ (id)chdLegendFromXmlLegendElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [CHDLegend alloc];
  v8 = [v6 resources];
  v9 = [(CHDLegend *)v7 initWithResources:v8];

  v10 = objc_alloc_init(OADGraphicProperties);
  [CHXGraphicProperties setGraphicPropertiesFromXmlElementWithGraphicProperties:v10 element:a3 state:v6];
  v11 = [v6 autoStyling];
  [v11 resolveLegendGraphicProperties:v10];

  [(CHDLegend *)v9 setGraphicProperties:v10];
  v12 = [v6 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = OCXFindChild(a3, v13, "overlay");

  if (v14)
  {
    [(CHDLegend *)v9 setIsOverlay:CXRequiredBoolAttribute(v14, CXNoNamespace, "val")];
  }

  v15 = [v6 drawingState];
  v16 = [v15 OAXChartNamespace];
  v17 = OCXFindChild(a3, v16, "legendPos");

  -[CHDLegend setLegendPosition:](v9, "setLegendPosition:", [a1 chdLegendPositionFromXmlLegendPositionElement:v17]);
  v18 = [v6 drawingState];
  v19 = [v18 OAXChartNamespace];
  v20 = OCXFindChild(a3, v19, "txPr");

  if (v20)
  {
    v21 = objc_alloc_init(OADTextBody);
    v22 = [v6 drawingState];
    [OAXTextBody readTextBodyFromXmlNode:v20 textBody:v21 drawingState:v22];

    v23 = [CHXFont edFontWithOadTextBody:v21 state:v6];
    [(CHDLegend *)v9 setFont:v23];
    if ([(OADTextBody *)v21 paragraphCount])
    {
      v24 = [(OADTextBody *)v21 firstParagraphEffects];
      v25 = [OAXEffect updateIncomingEffects:v24];

      [(CHDLegend *)v9 setLabelEffects:v25];
    }
  }

  else
  {
    v23 = 0;
  }

  for (i = OCXFirstChildNamed(a3, "legendEntry"); i; i = OCXNextSiblingNamed(i, "legendEntry"))
  {
    v27 = [(CHDLegend *)v9 legendEntries];
    v28 = [a1 chdLegendEntryFromXmlLegendEntryElement:i defaultFont:v23 state:v6];
    [v27 addObject:v28];
  }

  return v9;
}

+ (void)setDefaultLegendBounds:(id)a3 legendPosition:(int)a4
{
  v10 = a3;
  v5 = MEMORY[0x277CBF3A0];
  v6 = (MEMORY[0x277CBF3A0] + 16);
  v7 = (MEMORY[0x277CBF3A0] + 8);
  v8 = (&unk_25D6FE7F0 + 8 * (a4 - 1));
  if ((a4 - 1) > 4)
  {
    v8 = (MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v5 = (&unk_25D6FE778 + 8 * (a4 - 1));
    v7 = (&unk_25D6FE7A0 + 8 * (a4 - 1));
    v6 = (&unk_25D6FE7C8 + 8 * (a4 - 1));
  }

  v9 = [OADOrientedBounds orientedBoundsWithBounds:*v5 / 4000.0, *v7 / 4000.0, *v6 / 4000.0, *v8 / 4000.0];
  [v10 setOrientedBounds:v9];
}

+ (id)chdLegendEntryFromXmlLegendEntryElement:(_xmlNode *)a3 defaultFont:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [CHDLegendEntry alloc];
  v10 = [v8 resources];
  v11 = [(CHDLegendEntry *)v9 initWithResources:v10];

  v12 = [v8 drawingState];
  v13 = [v12 OAXChartNamespace];
  v14 = OCXFindRequiredChild(a3, v13, "idx");

  [(CHDLegendEntry *)v11 setEntryIndex:CXRequiredUnsignedLongAttribute(v14, CXNoNamespace, "val")];
  v15 = [v8 drawingState];
  v16 = [v15 OAXChartNamespace];
  v17 = OCXFindChild(a3, v16, "txPr");

  if (v17 && ([CHXFont edFontFromXmlTextPropertiesElement:v17 state:v8], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(CHDLegendEntry *)v11 setFont:v18];
  }

  else
  {
    if (v7)
    {
      [(CHDLegendEntry *)v11 setFont:v7];
    }

    v18 = 0;
  }

  return v11;
}

+ (int)chdLegendPositionFromXmlLegendPositionElement:(_xmlNode *)a3
{
  if (a3)
  {
    v3 = CXRequiredStringAttribute(a3, CXNoNamespace, "val");
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