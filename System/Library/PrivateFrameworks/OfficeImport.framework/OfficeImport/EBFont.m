@interface EBFont
+ (id)edFontFromXlDXfFont:(XlDXfFont *)a3 edResources:(id)a4;
+ (id)edFontFromXlFont:(XlFont *)a3 edResources:(id)a4;
+ (int)convertEDScriptEnumToXl:(int)a3;
+ (int)convertEDUnderlineEnumToXl:(int)a3;
+ (int)convertXlScriptEnumToED:(int)a3;
+ (int)convertXlUnderlineEnumToED:(int)a3;
@end

@implementation EBFont

+ (id)edFontFromXlFont:(XlFont *)a3 edResources:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [[EDFont alloc] initWithResources:v6];
    var2 = a3->var2;
    if (var2)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithOcText:var2 + 8];
      [(EDFont *)v7 setName:v9];
    }

    [(EDFont *)v7 setHeight:a3->var3];
    [(EDFont *)v7 setWeight:a3->var5];
    [(EDFont *)v7 setCharSet:a3->var15];
    [(EDFont *)v7 setFamily:a3->var14];
    v10 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var4 edResources:v6];
    [(EDFont *)v7 setColorReference:v10];

    v11 = a3->var7 || a3->var5 > 400;
    [(EDFont *)v7 setBold:v11];
    [(EDFont *)v7 setItalic:a3->var8];
    [(EDFont *)v7 setStrike:a3->var10];
    [(EDFont *)v7 setShadow:a3->var12];
    [(EDFont *)v7 setOutline:a3->var11];
    -[EDFont setScript:](v7, "setScript:", [a1 convertXlScriptEnumToED:a3->var6]);
    -[EDFont setUnderline:](v7, "setUnderline:", [a1 convertXlUnderlineEnumToED:a3->var13]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)edFontFromXlDXfFont:(XlDXfFont *)a3 edResources:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [[EDFont alloc] initWithResources:v6];
    var9 = a3->var9;
    if (var9 != -1)
    {
      v9 = [EBColorReference edColorReferenceFromXlColorIndex:var9 edResources:v6];
      [(EDFont *)v7 setColorReference:v9];
    }

    if (!a3->var14)
    {
      v10 = (a3->var3 & 1) != 0 || a3->var4 == 700;
      [(EDFont *)v7 setBold:v10];
      [(EDFont *)v7 setWeight:a3->var4];
      [(EDFont *)v7 setItalic:(a3->var3 >> 1) & 1];
    }

    if ((a3->var11 & 0x80) == 0)
    {
      [(EDFont *)v7 setStrike:(a3->var3 >> 7) & 1];
    }

    if (!a3->var13)
    {
      -[EDFont setUnderline:](v7, "setUnderline:", [a1 convertXlUnderlineEnumToED:a3->var6]);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)convertXlScriptEnumToED:(int)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (int)convertXlUnderlineEnumToED:(int)a3
{
  if (a3 == 33)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 34)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 3)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

+ (int)convertEDScriptEnumToXl:(int)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (int)convertEDUnderlineEnumToXl:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE9A0[a3 - 1];
  }
}

@end