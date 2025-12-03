@interface EBFont
+ (id)edFontFromXlDXfFont:(XlDXfFont *)font edResources:(id)resources;
+ (id)edFontFromXlFont:(XlFont *)font edResources:(id)resources;
+ (int)convertEDScriptEnumToXl:(int)xl;
+ (int)convertEDUnderlineEnumToXl:(int)xl;
+ (int)convertXlScriptEnumToED:(int)d;
+ (int)convertXlUnderlineEnumToED:(int)d;
@end

@implementation EBFont

+ (id)edFontFromXlFont:(XlFont *)font edResources:(id)resources
{
  resourcesCopy = resources;
  if (font)
  {
    v7 = [[EDFont alloc] initWithResources:resourcesCopy];
    var2 = font->var2;
    if (var2)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithOcText:var2 + 8];
      [(EDFont *)v7 setName:v9];
    }

    [(EDFont *)v7 setHeight:font->var3];
    [(EDFont *)v7 setWeight:font->var5];
    [(EDFont *)v7 setCharSet:font->var15];
    [(EDFont *)v7 setFamily:font->var14];
    v10 = [EBColorReference edColorReferenceFromXlColorIndex:font->var4 edResources:resourcesCopy];
    [(EDFont *)v7 setColorReference:v10];

    v11 = font->var7 || font->var5 > 400;
    [(EDFont *)v7 setBold:v11];
    [(EDFont *)v7 setItalic:font->var8];
    [(EDFont *)v7 setStrike:font->var10];
    [(EDFont *)v7 setShadow:font->var12];
    [(EDFont *)v7 setOutline:font->var11];
    -[EDFont setScript:](v7, "setScript:", [self convertXlScriptEnumToED:font->var6]);
    -[EDFont setUnderline:](v7, "setUnderline:", [self convertXlUnderlineEnumToED:font->var13]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)edFontFromXlDXfFont:(XlDXfFont *)font edResources:(id)resources
{
  resourcesCopy = resources;
  if (font)
  {
    v7 = [[EDFont alloc] initWithResources:resourcesCopy];
    var9 = font->var9;
    if (var9 != -1)
    {
      v9 = [EBColorReference edColorReferenceFromXlColorIndex:var9 edResources:resourcesCopy];
      [(EDFont *)v7 setColorReference:v9];
    }

    if (!font->var14)
    {
      v10 = (font->var3 & 1) != 0 || font->var4 == 700;
      [(EDFont *)v7 setBold:v10];
      [(EDFont *)v7 setWeight:font->var4];
      [(EDFont *)v7 setItalic:(font->var3 >> 1) & 1];
    }

    if ((font->var11 & 0x80) == 0)
    {
      [(EDFont *)v7 setStrike:(font->var3 >> 7) & 1];
    }

    if (!font->var13)
    {
      -[EDFont setUnderline:](v7, "setUnderline:", [self convertXlUnderlineEnumToED:font->var6]);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)convertXlScriptEnumToED:(int)d
{
  if (d == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (d == 2);
  }
}

+ (int)convertXlUnderlineEnumToED:(int)d
{
  if (d == 33)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (d == 34)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (d >= 3)
  {
    return v4;
  }

  else
  {
    return d;
  }
}

+ (int)convertEDScriptEnumToXl:(int)xl
{
  if (xl == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (xl == 2);
  }
}

+ (int)convertEDUnderlineEnumToXl:(int)xl
{
  if ((xl - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE9A0[xl - 1];
  }
}

@end