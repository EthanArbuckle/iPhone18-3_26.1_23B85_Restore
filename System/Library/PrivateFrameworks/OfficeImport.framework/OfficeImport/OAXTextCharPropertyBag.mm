@interface OAXTextCharPropertyBag
+ (id)oaxUnderlineMap;
+ (id)stringWithCapsType:(unsigned __int8)a3;
+ (id)stringWithStrikeThroughType:(unsigned __int8)a3;
+ (id)stringWithUnderlineType:(unsigned __int8)a3;
+ (unsigned)readUnderlineType:(id)a3;
+ (void)readCharacterProperties:(_xmlNode *)a3 characterProperties:(id)a4 drawingState:(id)a5;
+ (void)readFont:(_xmlNode *)a3 characterProperties:(id)a4;
+ (void)readFormatting:(_xmlNode *)a3 characterProperties:(id)a4 drawingState:(id)a5;
@end

@implementation OAXTextCharPropertyBag

+ (void)readCharacterProperties:(_xmlNode *)a3 characterProperties:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v36 = 0;
    v34 = 0.0;
    v35 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "b", &v36))
    {
      [v8 setIsBold:v36];
    }

    v10 = CXDefaultStringAttribute(a3, CXNoNamespace, "u", 0);
    v33 = v10;
    if (v10)
    {
      [v8 setUnderlineType:{objc_msgSend(a1, "readUnderlineType:", v10)}];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "i", &v36))
    {
      [v8 setIsItalic:v36];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "sz", &v35, 15))
    {
      *&v11 = (v35 / 100);
      [v8 setSize:v11];
    }

    if (CXOptionalFractionAttribute(a3, CXNoNamespace, "baseline", &v34))
    {
      HIDWORD(v12) = HIDWORD(v34);
      *&v12 = v34;
      [v8 setBaseline:v12];
    }

    if (CXOptionalLongAttribute(a3, CXNoNamespace, "spc", &v35, 16))
    {
      v13 = v35 / 100.0;
      *&v13 = v13;
      [v8 setSpacing:v13];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "kumimoji", &v36))
    {
      [v8 setIsVerticalText:v36];
    }

    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rtl", &v36))
    {
      [v8 setIsRightToLeft:v36];
    }

    v14 = CXDefaultStringAttribute(a3, CXNoNamespace, "strike", 0);
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

      [v8 setStrikeThroughType:v16];
    }

    v17 = CXDefaultStringAttribute(a3, CXNoNamespace, "cap", 0);
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

      [v8 setCaps:v19];
    }

    v20 = CXDefaultStringAttribute(a3, CXNoNamespace, "lang", 0);
    v30 = v20;
    if ([(NSString *)v20 length])
    {
      [v8 setLanguage:OCDLanguageFromOfficeString(v20)];
    }

    v29 = a1;
    for (i = OCXFirstChild(a3); ; i = OCXNextSibling(i))
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
        v25 = [v9 packagePart];
        v23 = [OAXFill readFillFromXmlNode:v24 packagePart:v25 drawingState:v9];

        if (v23)
        {
          [v8 setUnderlineFill:v23];
        }

        goto LABEL_46;
      }

      if (xmlStrEqual(i->name, "uFillTx"))
      {
        [v8 setUnderlineFill:0];
      }

      else
      {
        if (xmlStrEqual(i->name, "uLn"))
        {
          v26 = [v9 packagePart];
          v23 = [OAXStroke readStrokeFromXmlNode:i packagePart:v26 drawingState:v9];

          if (v23)
          {
            [v8 setUnderlineStroke:v23];
          }

          goto LABEL_46;
        }

        if (xmlStrEqual(i->name, "uLnTx"))
        {
          [v8 setUnderlineStroke:0];
        }

        else if (xmlStrEqual(i->name, "formatting"))
        {
          [v29 readFormatting:i characterProperties:v8 drawingState:v9];
        }

        else
        {
          if (!xmlStrEqual(i->name, "latin") && !xmlStrEqual(i->name, "ea") && !xmlStrEqual(i->name, "cs") && !xmlStrEqual(i->name, "hAnsi") && !xmlStrEqual(i->name, "sym"))
          {
            if (xmlStrEqual(i->name, "hlinkClick"))
            {
              v23 = [OAXHyperlink readHyperlink:i state:v9];
              [v8 setClickHyperlink:v23];
            }

            else if (xmlStrEqual(i->name, "hlinkMouseOver"))
            {
              v23 = [OAXHyperlink readHyperlink:i state:v9];
              [v8 setHoverHyperlink:v23];
            }

            else if (xmlStrEqual(i->name, "effectLst"))
            {
              v23 = [v9 packagePart];
              v27 = [OAXEffect readEffectsFromXmlNode:i packagePart:v23 drawingState:v9];
              [v8 setEffects:v27];
            }

            else
            {
              v28 = [v9 packagePart];
              v23 = [OAXFill readFillFromXmlNode:i packagePart:v28 drawingState:v9];

              if (v23)
              {
                [v8 setFill:v23];
              }
            }

            goto LABEL_46;
          }

          [v29 readFont:i characterProperties:{v8, v29}];
        }
      }

LABEL_47:
      ;
    }

    v22 = [v9 packagePart];
    v23 = [OAXStroke readStrokeFromXmlNode:i packagePart:v22 drawingState:v9];

    if (v23)
    {
      [v8 setStroke:v23];
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

+ (unsigned)readUnderlineType:(id)a3
{
  v4 = a3;
  v5 = [a1 oaxUnderlineMap];
  v6 = [v5 valueForString:v4];

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

+ (void)readFormatting:(_xmlNode *)a3 characterProperties:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v15 = 0;
  v9 = [v8 OAXMainNamespace];
  v10 = OCXFindChild(a3, v9, "outline");

  if (v10 && CXOptionalBoolAttribute(v10, CXNoNamespace, "val", &v15))
  {
    [v7 setFormatType:1];
  }

  v11 = [v8 OAXMainNamespace];
  v12 = OCXFindChild(a3, v11, "engrave");

  if (v12 && CXOptionalBoolAttribute(v12, CXNoNamespace, "val", &v15))
  {
    [v7 setFormatType:2];
  }

  v13 = [v8 OAXMainNamespace];
  v14 = OCXFindChild(a3, v13, "emboss");

  if (v14 && CXOptionalBoolAttribute(v14, CXNoNamespace, "val", &v15))
  {
    [v7 setFormatType:3];
  }
}

+ (void)readFont:(_xmlNode *)a3 characterProperties:(id)a4
{
  v6 = a4;
  v5 = CXRequiredStringAttribute(a3, CXNoNamespace, "typeface");
  if (xmlStrEqual(a3->name, "latin"))
  {
    [v6 setLatinFont:v5];
  }

  else if (xmlStrEqual(a3->name, "ea"))
  {
    [v6 setEastAsianFont:v5];
  }

  else if (xmlStrEqual(a3->name, "cs"))
  {
    [v6 setBidiFont:v5];
  }

  else if (xmlStrEqual(a3->name, "hAnsi"))
  {
    [v6 setHAnsiFont:v5];
  }

  else if (xmlStrEqual(a3->name, "sym"))
  {
    [v6 setSymbolFont:v5];
  }
}

+ (id)stringWithCapsType:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"none";
  }

  else
  {
    return off_2799C7C28[a3];
  }
}

+ (id)stringWithStrikeThroughType:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"noStrike";
  }

  else
  {
    return off_2799C7C40[a3];
  }
}

+ (id)stringWithUnderlineType:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [a1 oaxUnderlineMap];
  v5 = [v4 stringForValue:v3];

  return v5;
}

@end