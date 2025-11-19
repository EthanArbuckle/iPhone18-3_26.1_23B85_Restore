@interface EBAlignmentInfo
+ (XlDXfAlign)xlDXfAlignFromEDAlignmentInfo:(id)a3;
+ (id)edAlignmentInfoFromXlDXfAlign:(XlDXfAlign *)a3;
+ (id)edAlignmentInfoFromXlGraphicsInfo:(void *)a3;
+ (id)edAlignmentInfoFromXlXf:(XlXf *)a3;
+ (int)convertEDHorizontalAlignmentEnumToXl:(int)a3;
+ (int)convertEDVerticalAlignmentEnumToXl:(int)a3;
+ (int)convertXlHorizAlignEnumToED:(int)a3;
+ (int)convertXlVertAlignEnumToED:(int)a3;
+ (void)writeAlignmentInfo:(id)a3 toXlGraphicsInfo:(void *)a4;
+ (void)writeAlignmentInfo:(id)a3 toXlXf:(XlXf *)a4;
@end

@implementation EBAlignmentInfo

+ (id)edAlignmentInfoFromXlXf:(XlXf *)a3
{
  if (a3)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(a1, "convertXlHorizAlignEnumToED:", a3->var5)}];
    [v5 setVerticalAlignment:{objc_msgSend(a1, "convertXlVertAlignEnumToED:", a3->var6)}];
    [v5 setIndent:a3->var8];
    [v5 setTextWrapped:a3->var28];
    [v5 setTextRotation:a3->var7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edAlignmentInfoFromXlDXfAlign:(XlDXfAlign *)a3
{
  if (a3)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(a1, "convertXlHorizAlignEnumToED:", a3->var0)}];
    [v5 setVerticalAlignment:{objc_msgSend(a1, "convertXlVertAlignEnumToED:", a3->var1)}];
    [v5 setIndent:a3->var2];
    [v5 setTextWrapped:a3->var4];
    [v5 setTextRotation:a3->var3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edAlignmentInfoFromXlGraphicsInfo:(void *)a3
{
  if (a3)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(a1, "convertXlHorizAlignEnumToED:", *(a3 + 18))}];
    [v5 setVerticalAlignment:{objc_msgSend(a1, "convertXlVertAlignEnumToED:", *(a3 + 17))}];
    [v5 setTextRotation:*(a3 + 16)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)writeAlignmentInfo:(id)a3 toXlXf:(XlXf *)a4
{
  v6 = a3;
  if (a4)
  {
    a4->var34 = 0;
    if (v6)
    {
      v8 = v6;
      if ([v6 isHorizontalAlignOverridden])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v8 isVerticalAlignOverridden];
      }

      a4->var34 = v7;
      a4->var5 = [a1 convertEDHorizontalAlignmentEnumToXl:{objc_msgSend(v8, "horizontalAlignment")}];
      a4->var6 = [a1 convertEDVerticalAlignmentEnumToXl:{objc_msgSend(v8, "verticalAlignment")}];
      a4->var8 = [v8 indent];
      a4->var28 = [v8 isTextWrapped];
      a4->var7 = [v8 textRotation];
      v6 = v8;
    }
  }
}

+ (XlDXfAlign)xlDXfAlignFromEDAlignmentInfo:(id)a3
{
  if (a3)
  {
    operator new();
  }

  return 0;
}

+ (void)writeAlignmentInfo:(id)a3 toXlGraphicsInfo:(void *)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v7 = v6;
    *(a4 + 18) = [a1 convertEDHorizontalAlignmentEnumToXl:{objc_msgSend(v6, "horizontalAlignment")}];
    *(a4 + 17) = [a1 convertEDVerticalAlignmentEnumToXl:{objc_msgSend(v7, "verticalAlignment")}];
    v6 = v7;
  }
}

+ (int)convertXlHorizAlignEnumToED:(int)a3
{
  if ((a3 - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertXlVertAlignEnumToED:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertEDHorizontalAlignmentEnumToXl:(int)a3
{
  if ((a3 - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertEDVerticalAlignmentEnumToXl:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end