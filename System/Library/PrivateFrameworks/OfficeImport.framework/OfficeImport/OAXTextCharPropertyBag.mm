@interface OAXTextCharPropertyBag
+ (id)oaxUnderlineMap;
+ (id)stringWithCapsType:(unsigned __int8)type;
+ (id)stringWithStrikeThroughType:(unsigned __int8)type;
+ (id)stringWithUnderlineType:(unsigned __int8)type;
+ (unsigned)readUnderlineType:(id)type;
+ (void)readCharacterProperties:(_xmlNode *)properties characterProperties:(id)characterProperties drawingState:(id)state;
+ (void)readFont:(_xmlNode *)font characterProperties:(id)properties;
+ (void)readFormatting:(_xmlNode *)formatting characterProperties:(id)properties drawingState:(id)state;
@end

@implementation OAXTextCharPropertyBag

+ (void)readCharacterProperties:(_xmlNode *)properties characterProperties:(id)characterProperties drawingState:(id)state
{
  characterPropertiesCopy = characterProperties;
  stateCopy = state;
  if (properties)
  {
    v36 = 0;
    v34 = 0.0;
    v35 = 0;
    if (CXOptionalBoolAttribute(properties, CXNoNamespace, "b", &v36))
    {
      [characterPropertiesCopy setIsBold:v36];
    }

    v10 = CXDefaultStringAttribute(properties, CXNoNamespace, "u", 0);
    v33 = v10;
    if (v10)
    {
      [characterPropertiesCopy setUnderlineType:{objc_msgSend(self, "readUnderlineType:", v10)}];
    }

    if (CXOptionalBoolAttribute(properties, CXNoNamespace, "i", &v36))
    {
      [characterPropertiesCopy setIsItalic:v36];
    }

    if (CXOptionalLongAttribute(properties, CXNoNamespace, "sz", &v35, 15))
    {
      *&v11 = (v35 / 100);
      [characterPropertiesCopy setSize:v11];
    }

    if (CXOptionalFractionAttribute(properties, CXNoNamespace, "baseline", &v34))
    {
      HIDWORD(v12) = HIDWORD(v34);
      *&v12 = v34;
      [characterPropertiesCopy setBaseline:v12];
    }

    if (CXOptionalLongAttribute(properties, CXNoNamespace, "spc", &v35, 16))
    {
      v13 = v35 / 100.0;
      *&v13 = v13;
      [characterPropertiesCopy setSpacing:v13];
    }

    if (CXOptionalBoolAttribute(properties, CXNoNamespace, "kumimoji", &v36))
    {
      [characterPropertiesCopy setIsVerticalText:v36];
    }

    if (CXOptionalBoolAttribute(properties, CXNoNamespace, "rtl", &v36))
    {
      [characterPropertiesCopy setIsRightToLeft:v36];
    }

    v14 = CXDefaultStringAttribute(properties, CXNoNamespace, "strike", 0);
    v15 = v14;
    v32 = v14;
    if (v14)
    {
      if ([v14 isEqualToString:@"noStrike"])
      {
        v16 = 0;
      }

      else if ([v15 isEqualToString:@"sngStrike"])
      {
        v16 = 1;
      }

      else if ([v15 isEqualToString:@"dblStrike"])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [characterPropertiesCopy setStrikeThroughType:v16];
    }

    v17 = CXDefaultStringAttribute(properties, CXNoNamespace, "cap", 0);
    v18 = v17;
    v31 = v17;
    if (v17)
    {
      if ([v17 isEqualToString:@"none"])
      {
        v19 = 0;
      }

      else if ([v18 isEqualToString:@"small"])
      {
        v19 = 1;
      }

      else if ([v18 isEqualToString:@"all"])
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      [characterPropertiesCopy setCaps:v19];
    }

    v20 = CXDefaultStringAttribute(properties, CXNoNamespace, "lang", 0);
    v30 = v20;
    if ([(NSString *)v20 length])
    {
      [characterPropertiesCopy setLanguage:OCDLanguageFromOfficeString(v20)];
    }

    selfCopy = self;
    for (i = OCXFirstChild(properties); ; i = OCXNextSibling(i))
    {
      if (!i)
      {

        goto LABEL_72;
      }

      if (xmlStrEqual(i->name, "ln"))
      {
        break;
      }

      if (xmlStrEqual(i->name, "uFill"))
      {
        v24 = CXFirstChild(i);
        packagePart = [stateCopy packagePart];
        packagePart3 = [OAXFill readFillFromXmlNode:v24 packagePart:packagePart drawingState:stateCopy];

        if (packagePart3)
        {
          [characterPropertiesCopy setUnderlineFill:packagePart3];
        }

        goto LABEL_46;
      }

      if (xmlStrEqual(i->name, "uFillTx"))
      {
        [characterPropertiesCopy setUnderlineFill:0];
      }

      else
      {
        if (xmlStrEqual(i->name, "uLn"))
        {
          packagePart2 = [stateCopy packagePart];
          packagePart3 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart2 drawingState:stateCopy];

          if (packagePart3)
          {
            [characterPropertiesCopy setUnderlineStroke:packagePart3];
          }

          goto LABEL_46;
        }

        if (xmlStrEqual(i->name, "uLnTx"))
        {
          [characterPropertiesCopy setUnderlineStroke:0];
        }

        else if (xmlStrEqual(i->name, "formatting"))
        {
          [selfCopy readFormatting:i characterProperties:characterPropertiesCopy drawingState:stateCopy];
        }

        else
        {
          if (!xmlStrEqual(i->name, "latin") && !xmlStrEqual(i->name, "ea") && !xmlStrEqual(i->name, "cs") && !xmlStrEqual(i->name, "hAnsi") && !xmlStrEqual(i->name, "sym"))
          {
            if (xmlStrEqual(i->name, "hlinkClick"))
            {
              packagePart3 = [OAXHyperlink readHyperlink:i state:stateCopy];
              [characterPropertiesCopy setClickHyperlink:packagePart3];
            }

            else if (xmlStrEqual(i->name, "hlinkMouseOver"))
            {
              packagePart3 = [OAXHyperlink readHyperlink:i state:stateCopy];
              [characterPropertiesCopy setHoverHyperlink:packagePart3];
            }

            else if (xmlStrEqual(i->name, "effectLst"))
            {
              packagePart3 = [stateCopy packagePart];
              v27 = [OAXEffect readEffectsFromXmlNode:i packagePart:packagePart3 drawingState:stateCopy];
              [characterPropertiesCopy setEffects:v27];
            }

            else
            {
              packagePart4 = [stateCopy packagePart];
              packagePart3 = [OAXFill readFillFromXmlNode:i packagePart:packagePart4 drawingState:stateCopy];

              if (packagePart3)
              {
                [characterPropertiesCopy setFill:packagePart3];
              }
            }

            goto LABEL_46;
          }

          [selfCopy readFont:i characterProperties:{characterPropertiesCopy, selfCopy}];
        }
      }

LABEL_47:
      ;
    }

    packagePart5 = [stateCopy packagePart];
    packagePart3 = [OAXStroke readStrokeFromXmlNode:i packagePart:packagePart5 drawingState:stateCopy];

    if (packagePart3)
    {
      [characterPropertiesCopy setStroke:packagePart3];
    }

LABEL_46:

    goto LABEL_47;
  }

LABEL_72:
}

+ (id)oaxUnderlineMap
{
  {
    +[OAXTextCharPropertyBag(Private) oaxUnderlineMap];
  }

  if (+[OAXTextCharPropertyBag(Private) oaxUnderlineMap]::once != -1)
  {
    +[OAXTextCharPropertyBag(Private) oaxUnderlineMap];
  }

  v2 = +[OAXTextCharPropertyBag(Private) oaxUnderlineMap]::enumerationMap;

  return v2;
}

void __50__OAXTextCharPropertyBag_Private__oaxUnderlineMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXTextCharPropertyBag(Private) oaxUnderlineMap]::oaxUnderlineMap count:20 caseSensitive:1];
  v1 = +[OAXTextCharPropertyBag(Private) oaxUnderlineMap]::enumerationMap;
  +[OAXTextCharPropertyBag(Private) oaxUnderlineMap]::enumerationMap = v0;
}

+ (unsigned)readUnderlineType:(id)type
{
  typeCopy = type;
  oaxUnderlineMap = [self oaxUnderlineMap];
  v6 = [oaxUnderlineMap valueForString:typeCopy];

  if (v6 == -130883970)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (void)readFormatting:(_xmlNode *)formatting characterProperties:(id)properties drawingState:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  v15 = 0;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(formatting, oAXMainNamespace, "outline");

  if (v10 && CXOptionalBoolAttribute(v10, CXNoNamespace, "val", &v15))
  {
    [propertiesCopy setFormatType:1];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(formatting, oAXMainNamespace2, "engrave");

  if (v12 && CXOptionalBoolAttribute(v12, CXNoNamespace, "val", &v15))
  {
    [propertiesCopy setFormatType:2];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v14 = OCXFindChild(formatting, oAXMainNamespace3, "emboss");

  if (v14 && CXOptionalBoolAttribute(v14, CXNoNamespace, "val", &v15))
  {
    [propertiesCopy setFormatType:3];
  }
}

+ (void)readFont:(_xmlNode *)font characterProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = CXRequiredStringAttribute(font, CXNoNamespace, "typeface");
  if (xmlStrEqual(font->name, "latin"))
  {
    [propertiesCopy setLatinFont:v5];
  }

  else if (xmlStrEqual(font->name, "ea"))
  {
    [propertiesCopy setEastAsianFont:v5];
  }

  else if (xmlStrEqual(font->name, "cs"))
  {
    [propertiesCopy setBidiFont:v5];
  }

  else if (xmlStrEqual(font->name, "hAnsi"))
  {
    [propertiesCopy setHAnsiFont:v5];
  }

  else if (xmlStrEqual(font->name, "sym"))
  {
    [propertiesCopy setSymbolFont:v5];
  }
}

+ (id)stringWithCapsType:(unsigned __int8)type
{
  if (type > 2u)
  {
    return @"none";
  }

  else
  {
    return off_2799C7C28[type];
  }
}

+ (id)stringWithStrikeThroughType:(unsigned __int8)type
{
  if (type > 2u)
  {
    return @"noStrike";
  }

  else
  {
    return off_2799C7C40[type];
  }
}

+ (id)stringWithUnderlineType:(unsigned __int8)type
{
  typeCopy = type;
  oaxUnderlineMap = [self oaxUnderlineMap];
  v5 = [oaxUnderlineMap stringForValue:typeCopy];

  return v5;
}

@end