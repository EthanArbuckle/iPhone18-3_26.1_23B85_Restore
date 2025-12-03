@interface CHXFont
+ (id)defaultEdRunCollectionForTitle:(id)title titleElement:(_xmlNode *)element state:(id)state;
+ (id)defaultEdRunCollectionWithState:(id)state;
+ (id)edFontFromXmlTextPropertiesElement:(_xmlNode *)element state:(id)state;
+ (id)edFontWithFullOadCharacterProperties:(id)properties state:(id)state;
+ (id)edFontWithOadCharacterProperties:(id)properties state:(id)state;
+ (id)edFontWithOadTextBody:(id)body state:(id)state;
+ (id)edRunCollectionFromXmlTextPropertiesElement:(_xmlNode *)element state:(id)state;
+ (id)readParagraphPropertiesFromXmlTextPropertiesParentElement:(_xmlNode *)element state:(id)state;
+ (void)mapFontProperties:(id)properties to:(id)to;
+ (void)mapFontProperties:(id)properties toTextProps:(id)props withEffects:(id)effects;
@end

@implementation CHXFont

+ (id)edFontFromXmlTextPropertiesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADTextBody);
  drawingState = [stateCopy drawingState];
  [OAXTextBody readTextBodyFromXmlNode:element textBody:v7 drawingState:drawingState];

  v9 = [self edFontWithOadTextBody:v7 state:stateCopy];

  return v9;
}

+ (id)edFontWithOadTextBody:(id)body state:(id)state
{
  bodyCopy = body;
  stateCopy = state;
  if (bodyCopy && [bodyCopy paragraphCount])
  {
    v8 = [bodyCopy paragraphAtIndex:0];
    properties = [v8 properties];
    v10 = [self edFontWithOadCharacterProperties:properties state:stateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)edFontWithFullOadCharacterProperties:(id)properties state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  v7 = [EDFont alloc];
  resources = [stateCopy resources];
  v9 = [(EDFont *)v7 initWithResources:resources];

  drawingState = [stateCopy drawingState];
  if ([propertiesCopy hasLatinFont])
  {
    latinFont = [propertiesCopy latinFont];
    v12 = [latinFont length];

    if (v12)
    {
      latinFont2 = [propertiesCopy latinFont];
      fontScheme = [drawingState fontScheme];
      v15 = OADAbsoluteFontNameWithPossiblyRelativeFontNameAndFontScheme(latinFont2, fontScheme);
      [(EDFont *)v9 setName:v15];
    }
  }

  fill = [propertiesCopy fill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [fill color];
    colorMap = [drawingState colorMap];
    colorScheme = [drawingState colorScheme];
    v20 = [OADColor tsuColorWithColor:color colorMap:colorMap colorScheme:colorScheme colorPalette:0];

    [(EDFont *)v9 setColor:v20];
  }

  [propertiesCopy size];
  [(EDFont *)v9 setHeight:(v21 * 20.0)];
  if ([propertiesCopy underlineType] == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = [propertiesCopy underlineType] != 0;
  }

  [(EDFont *)v9 setUnderline:v22];
  -[EDFont setBold:](v9, "setBold:", [propertiesCopy isBold]);
  -[EDFont setItalic:](v9, "setItalic:", [propertiesCopy isItalic]);
  if ([propertiesCopy strikeThroughType])
  {
    [(EDFont *)v9 setStrike:1];
  }

  resources2 = [stateCopy resources];
  fonts = [resources2 fonts];

  v25 = [fonts indexOfObject:v9];
  if (v25 == -1)
  {
    v25 = [fonts addObject:v9];
  }

  v26 = [fonts objectAtIndex:v25];

  return v26;
}

+ (id)edFontWithOadCharacterProperties:(id)properties state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  defaultTextProperties = [stateCopy defaultTextProperties];
  v9 = propertiesCopy;
  for (i = v9; ; i = parent)
  {
    parent = [i parent];
    if (!parent)
    {
      break;
    }

    v12 = +[OADParagraphProperties defaultProperties];
    v13 = [parent isEqual:v12];

    if (v13)
    {
      break;
    }

    v14 = defaultTextProperties;
    if (defaultTextProperties)
    {
      v15 = v14;
      while (v15 != parent)
      {
        parent2 = [v15 parent];

        v15 = parent2;
        if (!parent2)
        {
          goto LABEL_8;
        }
      }

      break;
    }

LABEL_8:
  }

  parent3 = [i parent];
  [i setParent:defaultTextProperties];
  v18 = [self edFontWithFullOadCharacterProperties:v9 state:stateCopy];
  [i setParent:parent3];

  return v18;
}

+ (id)edRunCollectionFromXmlTextPropertiesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = objc_alloc_init(OADTextBody);
    drawingState = [stateCopy drawingState];
    [OAXTextBody readTextBodyFromXmlNode:element textBody:v6 drawingState:drawingState];

    element = [CHXFont edFontWithOadTextBody:v6 state:stateCopy];
    if ([(OADTextBody *)v6 paragraphCount])
    {
      firstParagraphEffects = [(OADTextBody *)v6 firstParagraphEffects];
    }

    else
    {
      firstParagraphEffects = 0;
    }

    if (element)
    {
      v10 = [OAXEffect updateIncomingEffects:firstParagraphEffects];

      resources = [stateCopy resources];
      v12 = [EDRun runWithCharIndex:0 font:element effects:v10 resources:resources];

      v9 = +[(EDCollection *)EDRunsCollection];
      [v9 addObject:v12];

      firstParagraphEffects = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    firstParagraphEffects = 0;
  }

  return v9;
}

+ (id)defaultEdRunCollectionWithState:(id)state
{
  stateCopy = state;
  defaultTextProperties = [stateCopy defaultTextProperties];
  v5 = [CHXFont edFontWithFullOadCharacterProperties:defaultTextProperties state:stateCopy];

  v6 = +[(EDCollection *)EDRunsCollection];
  resources = [stateCopy resources];
  v8 = [EDRun runWithCharIndex:0 font:v5 effects:0 resources:resources];

  [v6 addObject:v8];

  return v6;
}

+ (id)defaultEdRunCollectionForTitle:(id)title titleElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  [stateCopy pushTitleTextProperties:1];
  v8 = objc_alloc_init(OADCharacterProperties);
  v9 = [self edFontWithOadCharacterProperties:v8 state:stateCopy];
  [stateCopy popTitleTextProperties];
  if (v9)
  {
    drawingState = [stateCopy drawingState];
    oAXChartNamespace = [drawingState OAXChartNamespace];
    firstParagraphEffects = OCXFindChild(element, oAXChartNamespace, "txPr");

    if (firstParagraphEffects)
    {
      v13 = objc_alloc_init(OADTextBody);
      drawingState2 = [stateCopy drawingState];
      [OAXTextBody readTextBodyFromXmlNode:firstParagraphEffects textBody:v13 drawingState:drawingState2];

      if ([(OADTextBody *)v13 paragraphCount])
      {
        firstParagraphEffects = [(OADTextBody *)v13 firstParagraphEffects];
      }

      else
      {
        firstParagraphEffects = 0;
      }
    }

    resources = [stateCopy resources];
    v17 = [EDRun runWithCharIndex:0 font:v9 effects:firstParagraphEffects resources:resources];

    v15 = +[(EDCollection *)EDRunsCollection];
    [v15 addObject:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)readParagraphPropertiesFromXmlTextPropertiesParentElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v8 = OCXFindChild(element, oAXChartNamespace, "txPr");

  if (v8)
  {
    v9 = objc_alloc_init(OADTextBody);
    drawingState2 = [stateCopy drawingState];
    [OAXTextBody readTextBodyFromXmlNode:v8 textBody:v9 drawingState:drawingState2];

    if ([(OADTextBody *)v9 paragraphCount])
    {
      v11 = [(OADTextBody *)v9 paragraphAtIndex:0];
      properties = [v11 properties];
    }

    else
    {
      properties = 0;
    }
  }

  else
  {
    properties = objc_alloc_init(OADParagraphProperties);
  }

  return properties;
}

+ (void)mapFontProperties:(id)properties to:(id)to
{
  propertiesCopy = properties;
  toCopy = to;
  name = [propertiesCopy name];
  [toCopy setLatinFont:name];

  [propertiesCopy height];
  v8 = v7 / 20.0;
  *&v8 = v8;
  [toCopy setSize:v8];
  [toCopy setIsBold:{objc_msgSend(propertiesCopy, "isBold")}];
  [toCopy setIsItalic:{objc_msgSend(propertiesCopy, "isItalic")}];
  color = [propertiesCopy color];
  [color redComponent];
  v11 = v10;
  [color greenComponent];
  v13 = v12;
  [color blueComponent];
  v14 = v11;
  *&v15 = v13;
  *&v17 = v16;
  *&v16 = v14;
  v18 = [OADRgbColor rgbColorWithRed:v16 green:v15 blue:v17];
  v19 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v19 setColor:v18];
  [toCopy setFill:v19];
  if ([propertiesCopy isUnderlineOverridden])
  {
    underline = [propertiesCopy underline];
    v21 = 0x302030200uLL >> (8 * underline);
    if (underline >= 5)
    {
      LOBYTE(v21) = 0;
    }

    [toCopy setUnderlineType:v21 & 3];
  }

  if ([propertiesCopy isStrikeOverridden])
  {
    [toCopy setStrikeThroughType:{objc_msgSend(propertiesCopy, "isStrike")}];
  }

  if ([propertiesCopy script])
  {
    script = [propertiesCopy script];
    [toCopy size];
    v24 = -0.06;
    if (script != 2)
    {
      v24 = 0.0;
    }

    if (script == 1)
    {
      v24 = 0.32;
    }

    *&v23 = v24 / *&v23;
    [toCopy setBaseline:v23];
  }

  [toCopy setFormatType:{objc_msgSend(propertiesCopy, "isOutline")}];
  if (([toCopy hasEffects] & 1) == 0)
  {
    array = [MEMORY[0x277CBEA60] array];
    [toCopy setEffects:array];
  }
}

+ (void)mapFontProperties:(id)properties toTextProps:(id)props withEffects:(id)effects
{
  propertiesCopy = properties;
  propsCopy = props;
  effectsCopy = effects;
  if (propertiesCopy && propsCopy)
  {
    addParagraph = [propsCopy addParagraph];
    properties = [addParagraph properties];
    v12 = properties;
    if (effectsCopy)
    {
      [properties setEffects:effectsCopy];
    }

    [self mapFontProperties:propertiesCopy to:v12];
  }
}

@end