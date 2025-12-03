@interface EBAlignmentInfo
+ (XlDXfAlign)xlDXfAlignFromEDAlignmentInfo:(id)info;
+ (id)edAlignmentInfoFromXlDXfAlign:(XlDXfAlign *)align;
+ (id)edAlignmentInfoFromXlGraphicsInfo:(void *)info;
+ (id)edAlignmentInfoFromXlXf:(XlXf *)xf;
+ (int)convertEDHorizontalAlignmentEnumToXl:(int)xl;
+ (int)convertEDVerticalAlignmentEnumToXl:(int)xl;
+ (int)convertXlHorizAlignEnumToED:(int)d;
+ (int)convertXlVertAlignEnumToED:(int)d;
+ (void)writeAlignmentInfo:(id)info toXlGraphicsInfo:(void *)graphicsInfo;
+ (void)writeAlignmentInfo:(id)info toXlXf:(XlXf *)xf;
@end

@implementation EBAlignmentInfo

+ (id)edAlignmentInfoFromXlXf:(XlXf *)xf
{
  if (xf)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(self, "convertXlHorizAlignEnumToED:", xf->var5)}];
    [v5 setVerticalAlignment:{objc_msgSend(self, "convertXlVertAlignEnumToED:", xf->var6)}];
    [v5 setIndent:xf->var8];
    [v5 setTextWrapped:xf->var28];
    [v5 setTextRotation:xf->var7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edAlignmentInfoFromXlDXfAlign:(XlDXfAlign *)align
{
  if (align)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(self, "convertXlHorizAlignEnumToED:", align->var0)}];
    [v5 setVerticalAlignment:{objc_msgSend(self, "convertXlVertAlignEnumToED:", align->var1)}];
    [v5 setIndent:align->var2];
    [v5 setTextWrapped:align->var4];
    [v5 setTextRotation:align->var3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edAlignmentInfoFromXlGraphicsInfo:(void *)info
{
  if (info)
  {
    v5 = +[EDAlignmentInfo alignmentInfo];
    [v5 setHorizontalAlignment:{objc_msgSend(self, "convertXlHorizAlignEnumToED:", *(info + 18))}];
    [v5 setVerticalAlignment:{objc_msgSend(self, "convertXlVertAlignEnumToED:", *(info + 17))}];
    [v5 setTextRotation:*(info + 16)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)writeAlignmentInfo:(id)info toXlXf:(XlXf *)xf
{
  infoCopy = info;
  if (xf)
  {
    xf->var34 = 0;
    if (infoCopy)
    {
      v8 = infoCopy;
      if ([infoCopy isHorizontalAlignOverridden])
      {
        isVerticalAlignOverridden = 1;
      }

      else
      {
        isVerticalAlignOverridden = [v8 isVerticalAlignOverridden];
      }

      xf->var34 = isVerticalAlignOverridden;
      xf->var5 = [self convertEDHorizontalAlignmentEnumToXl:{objc_msgSend(v8, "horizontalAlignment")}];
      xf->var6 = [self convertEDVerticalAlignmentEnumToXl:{objc_msgSend(v8, "verticalAlignment")}];
      xf->var8 = [v8 indent];
      xf->var28 = [v8 isTextWrapped];
      xf->var7 = [v8 textRotation];
      infoCopy = v8;
    }
  }
}

+ (XlDXfAlign)xlDXfAlignFromEDAlignmentInfo:(id)info
{
  if (info)
  {
    operator new();
  }

  return 0;
}

+ (void)writeAlignmentInfo:(id)info toXlGraphicsInfo:(void *)graphicsInfo
{
  infoCopy = info;
  if (infoCopy && graphicsInfo)
  {
    v7 = infoCopy;
    *(graphicsInfo + 18) = [self convertEDHorizontalAlignmentEnumToXl:{objc_msgSend(infoCopy, "horizontalAlignment")}];
    *(graphicsInfo + 17) = [self convertEDVerticalAlignmentEnumToXl:{objc_msgSend(v7, "verticalAlignment")}];
    infoCopy = v7;
  }
}

+ (int)convertXlHorizAlignEnumToED:(int)d
{
  if ((d - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)convertXlVertAlignEnumToED:(int)d
{
  if ((d - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)convertEDHorizontalAlignmentEnumToXl:(int)xl
{
  if ((xl - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return xl;
  }
}

+ (int)convertEDVerticalAlignmentEnumToXl:(int)xl
{
  if ((xl - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return xl;
  }
}

@end