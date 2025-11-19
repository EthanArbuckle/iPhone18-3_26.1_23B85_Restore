@interface OAVStroke
+ (char)readPresetDashStyle:(id)a3;
+ (id)readFromManager:(id)a3;
+ (id)readLineEndWithType:(id)a3 width:(id)a4 length:(id)a5;
+ (id)targetFgColorWithManager:(id)a3;
+ (void)initialize;
+ (void)readDashStyleFromManager:(id)a3 toStroke:(id)a4;
+ (void)readFillStyleFromManager:(id)a3 toStroke:(id)a4;
+ (void)readJoinStyleFromManager:(id)a3 toStroke:(id)a4;
@end

@implementation OAVStroke

+ (void)initialize
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (id)readFromManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(OADStroke);
  v6 = [a1 targetFgColorWithManager:v4];
  [(OADStroke *)v5 setColor:v6];

  [a1 readFillStyleFromManager:v4 toStroke:v5];
  [a1 readDashStyleFromManager:v4 toStroke:v5];
  [a1 readJoinStyleFromManager:v4 toStroke:v5];
  v7 = [v4 strokeStartArrowType];
  v8 = [v4 strokeStartArrowWidth];
  v9 = [v4 strokeStartArrowLength];
  v10 = [a1 readLineEndWithType:v7 width:v8 length:v9];
  [(OADStroke *)v5 setTail:v10];

  v11 = [v4 strokeEndArrowType];
  v12 = [v4 strokeEndArrowWidth];
  v13 = [v4 strokeEndArrowLength];
  v14 = [a1 readLineEndWithType:v11 width:v12 length:v13];
  [(OADStroke *)v5 setHead:v14];

  [v4 strokeWidth];
  [(OADStroke *)v5 setWidth:?];
  v15 = [v4 strokeCapStyle];
  -[OADStroke setCap:](v5, "setCap:", [a1 readCapStyle:v15]);
  v16 = [v4 strokeCompoundType];
  -[OADStroke setCompoundType:](v5, "setCompoundType:", [a1 readCompoundType:v16]);

  return v5;
}

+ (char)readPresetDashStyle:(id)a3
{
  v3 = [presetDashStyleEnumMap valueForString:a3];
  if (v3 == 126)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

+ (id)readLineEndWithType:(id)a3 width:(id)a4 length:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(OADLineEnd);
  v12 = [a1 readLineEndType:v8];
  v13 = [a1 readLineEndWidth:v9];
  v14 = [a1 readLineEndLength:v10];
  [(OADLineEnd *)v11 setType:v12];
  [(OADLineEnd *)v11 setWidth:v13];
  [(OADLineEnd *)v11 setLength:v14];

  return v11;
}

+ (void)readDashStyleFromManager:(id)a3 toStroke:(id)a4
{
  v20 = a4;
  v6 = [a3 strokeDashStyle];
  v7 = [a1 readPresetDashStyle:v6];
  if (v7 == -1)
  {
    v9 = [v6 componentsSeparatedByString:@" "];
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

  [v20 setDash:v8];
}

+ (void)readJoinStyleFromManager:(id)a3 toStroke:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 strokeJoinStyle];
  if ([v6 isEqualToString:@"bevel"])
  {
    v7 = off_2799C5718;
LABEL_3:
    v8 = objc_alloc_init(*v7);
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"miter"])
  {
    v9 = objc_alloc_init(OADMiterLineJoin);
    [v10 strokeMiterLimit];
    v8 = v9;
    [(OADMiterLineJoin *)v9 setLimit:?];
  }

  else
  {
    if ([v6 isEqualToString:@"round"])
    {
      v7 = off_2799C5750;
      goto LABEL_3;
    }

    v8 = 0;
  }

LABEL_9:
  [v5 setJoin:v8];
}

+ (id)targetFgColorWithManager:(id)a3
{
  v3 = a3;
  v4 = [v3 strokeFgColor];
  [v3 strokeFgAlpha];
  v5 = [OAVColor readColorFromAttribute:v4 alpha:v3 manager:?];

  return v5;
}

+ (void)readFillStyleFromManager:(id)a3 toStroke:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 isStroked];
  v8 = [v12 strokeFillType];
  v9 = v8;
  if (v7)
  {
    if ([v8 isEqualToString:@"solid"])
    {
      v10 = objc_alloc_init(OADSolidFill);
      v11 = [a1 targetFgColorWithManager:v12];
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

  [v6 setFill:v10];
}

@end