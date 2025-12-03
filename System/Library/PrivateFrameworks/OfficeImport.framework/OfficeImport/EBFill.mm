@interface EBFill
+ (BOOL)extractFromEDFill:(id)fill foreColorReference:(id *)reference backColorReference:(id *)colorReference fillPatternEnum:(int *)enum;
+ (id)edFillFromXlDXf:(XlDXf *)xf edResources:(id)resources;
+ (id)edFillFromXlXf:(XlXf *)xf edResources:(id)resources;
+ (int)convertEDPatternFillEnumToXl:(int)xl;
+ (int)convertXlFillPatternEnumToED:(int)d;
@end

@implementation EBFill

+ (id)edFillFromXlXf:(XlXf *)xf edResources:(id)resources
{
  resourcesCopy = resources;
  if (xf)
  {
    v7 = [(EDFill *)EDPatternFill fillWithResources:resourcesCopy];
    [v7 setType:{objc_msgSend(self, "convertXlFillPatternEnumToED:", xf->var11)}];
    v8 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var22 edResources:resourcesCopy];
    [v7 setForeColorReference:v8];

    v9 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var23 edResources:resourcesCopy];
    [v7 setBackColorReference:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)edFillFromXlDXf:(XlDXf *)xf edResources:(id)resources
{
  resourcesCopy = resources;
  var10 = xf->var10;
  if (var10)
  {
    v8 = [(EDFill *)EDPatternFill fillWithResources:resourcesCopy];
    var2 = xf->var2;
    if ((var2 & 1) == 0)
    {
      [v8 setType:{objc_msgSend(self, "convertXlFillPatternEnumToED:", *var10)}];
      var2 = xf->var2;
    }

    if ((var2 & 2) == 0)
    {
      v10 = [EBColorReference edColorReferenceFromXlColorIndex:*(var10 + 2) edResources:resourcesCopy];
      [v8 setForeColorReference:v10];

      var2 = xf->var2;
    }

    if ((var2 & 4) == 0)
    {
      v11 = [EBColorReference edColorReferenceFromXlColorIndex:*(var10 + 3) edResources:resourcesCopy];
      [v8 setBackColorReference:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)extractFromEDFill:(id)fill foreColorReference:(id *)reference backColorReference:(id *)colorReference fillPatternEnum:(int *)enum
{
  fillCopy = fill;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = fillCopy;
    *reference = [v12 foreColorReference];
    *colorReference = [v12 backColorReference];
    *enum = [self convertEDPatternFillEnumToXl:{objc_msgSend(v12, "type")}];
  }

  return isKindOfClass & 1;
}

+ (int)convertXlFillPatternEnumToED:(int)d
{
  if ((d - 1) >= 0x12)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)convertEDPatternFillEnumToXl:(int)xl
{
  if ((xl - 1) >= 0x12)
  {
    return 0;
  }

  else
  {
    return xl;
  }
}

@end