@interface WXCharacterRun
+ (BOOL)isSpecialCharacter:(unsigned __int16)character;
+ (id)fontForRun:(id)run fontType:(int)type;
+ (void)readFrom:(_xmlNode *)from to:(id)to;
@end

@implementation WXCharacterRun

+ (void)readFrom:(_xmlNode *)from to:(id)to
{
  toCopy = to;
  if (xmlStrEqual(from->name, "t") || xmlStrEqual(from->name, "instrText") || xmlStrEqual(from->name, "delText"))
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:from];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (xmlStrEqual(from->name, "tab") || xmlStrEqual(from->name, "ptab"))
  {
    v5 = @"\t";
LABEL_5:
    [WXCharacterRun readFromString:v5 source:from to:toCopy];
    goto LABEL_6;
  }

  if (xmlStrEqual(from->name, "br"))
  {
    Prop = xmlGetProp(from, "type");
    if (xmlStrEqual(Prop, "page"))
    {
      v5 = @"\f";
    }

    else if (xmlStrEqual(Prop, "column"))
    {
      v5 = @"\x0E";
    }

    else
    {
      xmlStrEqual(Prop, "textWrapping");
      v5 = @"\v";
    }

    free(Prop);
    goto LABEL_5;
  }

  if (xmlStrEqual(from->name, "softHyphen"))
  {
    v5 = @"\x1F";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
}

+ (id)fontForRun:(id)run fontType:(int)type
{
  v4 = *&type;
  runCopy = run;
  properties = [runCopy properties];
  if ([properties isFontOverriddenForFontType:v4])
  {
    v7 = [properties fontForFontType:v4];
  }

  else
  {
    paragraph = [runCopy paragraph];
    properties2 = [paragraph properties];
    if ([properties2 isBaseStyleOverridden] && (objc_msgSend(properties2, "baseStyle"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      while (1)
      {
        characterProperties = [v10 characterProperties];

        if ([characterProperties isFontOverriddenForFontType:v4])
        {
          break;
        }

        baseStyle = [v10 baseStyle];

        v10 = baseStyle;
        properties = characterProperties;
        if (!baseStyle)
        {
          goto LABEL_9;
        }
      }

      v7 = [characterProperties fontForFontType:v4];
    }

    else
    {
      characterProperties = properties;
LABEL_9:
      document = [paragraph document];
      styleSheet = [document styleSheet];
      defaultCharacterProperties = [styleSheet defaultCharacterProperties];

      if ([defaultCharacterProperties isFontOverriddenForFontType:v4])
      {
        v7 = [defaultCharacterProperties fontForFontType:v4];
      }

      else
      {
        v7 = 0;
      }

      characterProperties = defaultCharacterProperties;
    }

    properties = characterProperties;
  }

  return v7;
}

+ (BOOL)isSpecialCharacter:(unsigned __int16)character
{
  if (character - 9) < 0x17 && ((0x40003Du >> (character - 9)))
  {
    return 1;
  }

  v4 = (character - 14) < 0x12u || (character + 4064) < 0xE0u;
  return character < 9u || v4;
}

@end