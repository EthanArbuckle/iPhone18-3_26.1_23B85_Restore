@interface WXCharacterRun
+ (BOOL)isSpecialCharacter:(unsigned __int16)a3;
+ (id)fontForRun:(id)a3 fontType:(int)a4;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4;
@end

@implementation WXCharacterRun

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4
{
  v7 = a4;
  if (xmlStrEqual(a3->name, "t") || xmlStrEqual(a3->name, "instrText") || xmlStrEqual(a3->name, "delText"))
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:a3];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (xmlStrEqual(a3->name, "tab") || xmlStrEqual(a3->name, "ptab"))
  {
    v5 = @"\t";
LABEL_5:
    [WXCharacterRun readFromString:v5 source:a3 to:v7];
    goto LABEL_6;
  }

  if (xmlStrEqual(a3->name, "br"))
  {
    Prop = xmlGetProp(a3, "type");
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

  if (xmlStrEqual(a3->name, "softHyphen"))
  {
    v5 = @"\x1F";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
}

+ (id)fontForRun:(id)a3 fontType:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [v5 properties];
  if ([v6 isFontOverriddenForFontType:v4])
  {
    v7 = [v6 fontForFontType:v4];
  }

  else
  {
    v8 = [v5 paragraph];
    v9 = [v8 properties];
    if ([v9 isBaseStyleOverridden] && (objc_msgSend(v9, "baseStyle"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      while (1)
      {
        v11 = [v10 characterProperties];

        if ([v11 isFontOverriddenForFontType:v4])
        {
          break;
        }

        v12 = [v10 baseStyle];

        v10 = v12;
        v6 = v11;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      v7 = [v11 fontForFontType:v4];
    }

    else
    {
      v11 = v6;
LABEL_9:
      v13 = [v8 document];
      v14 = [v13 styleSheet];
      v15 = [v14 defaultCharacterProperties];

      if ([v15 isFontOverriddenForFontType:v4])
      {
        v7 = [v15 fontForFontType:v4];
      }

      else
      {
        v7 = 0;
      }

      v11 = v15;
    }

    v6 = v11;
  }

  return v7;
}

+ (BOOL)isSpecialCharacter:(unsigned __int16)a3
{
  if (a3 - 9) < 0x17 && ((0x40003Du >> (a3 - 9)))
  {
    return 1;
  }

  v4 = (a3 - 14) < 0x12u || (a3 + 4064) < 0xE0u;
  return a3 < 9u || v4;
}

@end