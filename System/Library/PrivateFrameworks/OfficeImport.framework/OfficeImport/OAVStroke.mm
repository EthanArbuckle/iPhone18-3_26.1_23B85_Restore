@interface OAVStroke
+ (char)readPresetDashStyle:(id)style;
+ (id)readFromManager:(id)manager;
+ (id)readLineEndWithType:(id)type width:(id)width length:(id)length;
+ (id)targetFgColorWithManager:(id)manager;
+ (void)initialize;
+ (void)readDashStyleFromManager:(id)manager toStroke:(id)stroke;
+ (void)readFillStyleFromManager:(id)manager toStroke:(id)stroke;
+ (void)readJoinStyleFromManager:(id)manager toStroke:(id)stroke;
@end

@implementation OAVStroke

+ (void)initialize
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (id)readFromManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(OADStroke);
  v6 = [self targetFgColorWithManager:managerCopy];
  [(OADStroke *)v5 setColor:v6];

  [self readFillStyleFromManager:managerCopy toStroke:v5];
  [self readDashStyleFromManager:managerCopy toStroke:v5];
  [self readJoinStyleFromManager:managerCopy toStroke:v5];
  strokeStartArrowType = [managerCopy strokeStartArrowType];
  strokeStartArrowWidth = [managerCopy strokeStartArrowWidth];
  strokeStartArrowLength = [managerCopy strokeStartArrowLength];
  v10 = [self readLineEndWithType:strokeStartArrowType width:strokeStartArrowWidth length:strokeStartArrowLength];
  [(OADStroke *)v5 setTail:v10];

  strokeEndArrowType = [managerCopy strokeEndArrowType];
  strokeEndArrowWidth = [managerCopy strokeEndArrowWidth];
  strokeEndArrowLength = [managerCopy strokeEndArrowLength];
  v14 = [self readLineEndWithType:strokeEndArrowType width:strokeEndArrowWidth length:strokeEndArrowLength];
  [(OADStroke *)v5 setHead:v14];

  [managerCopy strokeWidth];
  [(OADStroke *)v5 setWidth:?];
  strokeCapStyle = [managerCopy strokeCapStyle];
  -[OADStroke setCap:](v5, "setCap:", [self readCapStyle:strokeCapStyle]);
  strokeCompoundType = [managerCopy strokeCompoundType];
  -[OADStroke setCompoundType:](v5, "setCompoundType:", [self readCompoundType:strokeCompoundType]);

  return v5;
}

+ (char)readPresetDashStyle:(id)style
{
  v3 = [presetDashStyleEnumMap valueForString:style];
  if (v3 == 126)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

+ (id)readLineEndWithType:(id)type width:(id)width length:(id)length
{
  typeCopy = type;
  widthCopy = width;
  lengthCopy = length;
  v11 = objc_alloc_init(OADLineEnd);
  v12 = [self readLineEndType:typeCopy];
  v13 = [self readLineEndWidth:widthCopy];
  v14 = [self readLineEndLength:lengthCopy];
  [(OADLineEnd *)v11 setType:v12];
  [(OADLineEnd *)v11 setWidth:v13];
  [(OADLineEnd *)v11 setLength:v14];

  return v11;
}

+ (void)readDashStyleFromManager:(id)manager toStroke:(id)stroke
{
  strokeCopy = stroke;
  strokeDashStyle = [manager strokeDashStyle];
  v7 = [self readPresetDashStyle:strokeDashStyle];
  if (v7 == -1)
  {
    v9 = [strokeDashStyle componentsSeparatedByString:@" "];
    v10 = [v9 count];
    v8 = objc_alloc_init(OADCustomDash);
    v11 = v10 >> 1;
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10 >> 1];
    if (v10 >= 2)
    {
      v13 = 1;
      do
      {
        v14 = [v9 objectAtIndex:v13 - 1];
        v15 = OAVReadFraction(v14);

        v16 = [v9 objectAtIndex:v13];
        v17 = OAVReadFraction(v16);

        *&v18 = v15;
        *&v19 = v17;
        [OADDashStop addStopWithDash:v12 space:v18 toArray:v19];
        v13 += 2;
        --v11;
      }

      while (v11);
    }

    [(OADCustomDash *)v8 setStops:v12];
  }

  else
  {
    v8 = objc_alloc_init(OADPresetDash);
    [(OADCustomDash *)v8 setType:v7];
  }

  [strokeCopy setDash:v8];
}

+ (void)readJoinStyleFromManager:(id)manager toStroke:(id)stroke
{
  managerCopy = manager;
  strokeCopy = stroke;
  strokeJoinStyle = [managerCopy strokeJoinStyle];
  if ([strokeJoinStyle isEqualToString:@"bevel"])
  {
    v7 = off_2799C5718;
LABEL_3:
    v8 = objc_alloc_init(*v7);
    goto LABEL_9;
  }

  if ([strokeJoinStyle isEqualToString:@"miter"])
  {
    v9 = objc_alloc_init(OADMiterLineJoin);
    [managerCopy strokeMiterLimit];
    v8 = v9;
    [(OADMiterLineJoin *)v9 setLimit:?];
  }

  else
  {
    if ([strokeJoinStyle isEqualToString:@"round"])
    {
      v7 = off_2799C5750;
      goto LABEL_3;
    }

    v8 = 0;
  }

LABEL_9:
  [strokeCopy setJoin:v8];
}

+ (id)targetFgColorWithManager:(id)manager
{
  managerCopy = manager;
  strokeFgColor = [managerCopy strokeFgColor];
  [managerCopy strokeFgAlpha];
  v5 = [OAVColor readColorFromAttribute:strokeFgColor alpha:managerCopy manager:?];

  return v5;
}

+ (void)readFillStyleFromManager:(id)manager toStroke:(id)stroke
{
  managerCopy = manager;
  strokeCopy = stroke;
  isStroked = [managerCopy isStroked];
  strokeFillType = [managerCopy strokeFillType];
  v9 = strokeFillType;
  if (isStroked)
  {
    if ([strokeFillType isEqualToString:@"solid"])
    {
      v10 = objc_alloc_init(OADSolidFill);
      v11 = [self targetFgColorWithManager:managerCopy];
      [(OADSolidFill *)v10 setColor:v11];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = +[OADNullFill nullFill];
  }

  [strokeCopy setFill:v10];
}

@end