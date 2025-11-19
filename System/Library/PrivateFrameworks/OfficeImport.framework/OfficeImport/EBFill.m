@interface EBFill
+ (BOOL)extractFromEDFill:(id)a3 foreColorReference:(id *)a4 backColorReference:(id *)a5 fillPatternEnum:(int *)a6;
+ (id)edFillFromXlDXf:(XlDXf *)a3 edResources:(id)a4;
+ (id)edFillFromXlXf:(XlXf *)a3 edResources:(id)a4;
+ (int)convertEDPatternFillEnumToXl:(int)a3;
+ (int)convertXlFillPatternEnumToED:(int)a3;
@end

@implementation EBFill

+ (id)edFillFromXlXf:(XlXf *)a3 edResources:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(EDFill *)EDPatternFill fillWithResources:v6];
    [v7 setType:{objc_msgSend(a1, "convertXlFillPatternEnumToED:", a3->var11)}];
    v8 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var22 edResources:v6];
    [v7 setForeColorReference:v8];

    v9 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var23 edResources:v6];
    [v7 setBackColorReference:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)edFillFromXlDXf:(XlDXf *)a3 edResources:(id)a4
{
  v6 = a4;
  var10 = a3->var10;
  if (var10)
  {
    v8 = [(EDFill *)EDPatternFill fillWithResources:v6];
    var2 = a3->var2;
    if ((var2 & 1) == 0)
    {
      [v8 setType:{objc_msgSend(a1, "convertXlFillPatternEnumToED:", *var10)}];
      var2 = a3->var2;
    }

    if ((var2 & 2) == 0)
    {
      v10 = [EBColorReference edColorReferenceFromXlColorIndex:*(var10 + 2) edResources:v6];
      [v8 setForeColorReference:v10];

      var2 = a3->var2;
    }

    if ((var2 & 4) == 0)
    {
      v11 = [EBColorReference edColorReferenceFromXlColorIndex:*(var10 + 3) edResources:v6];
      [v8 setBackColorReference:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)extractFromEDFill:(id)a3 foreColorReference:(id *)a4 backColorReference:(id *)a5 fillPatternEnum:(int *)a6
{
  v10 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = v10;
    *a4 = [v12 foreColorReference];
    *a5 = [v12 backColorReference];
    *a6 = [a1 convertEDPatternFillEnumToXl:{objc_msgSend(v12, "type")}];
  }

  return isKindOfClass & 1;
}

+ (int)convertXlFillPatternEnumToED:(int)a3
{
  if ((a3 - 1) >= 0x12)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertEDPatternFillEnumToXl:(int)a3
{
  if ((a3 - 1) >= 0x12)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end