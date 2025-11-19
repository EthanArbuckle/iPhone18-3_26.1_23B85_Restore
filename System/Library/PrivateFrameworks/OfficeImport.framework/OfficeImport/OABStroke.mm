@interface OABStroke
+ (char)readPresetDashStyle:(int)a3;
+ (id)readLineEndWithType:(int)a3 width:(int)a4 length:(int)a5;
+ (id)readStrokeFromShapeBaseManager:(id)a3 state:(id)a4;
+ (int)writeCapStyle:(unsigned __int8)a3;
+ (int)writeCompoundType:(unsigned __int8)a3;
+ (int)writeLineEndLength:(unsigned __int8)a3;
+ (int)writeLineEndType:(unsigned __int8)a3;
+ (int)writeLineEndWidth:(unsigned __int8)a3;
+ (int)writePresetDashStyle:(char)a3;
+ (unsigned)readCapStyle:(int)a3;
+ (unsigned)readCompoundType:(int)a3;
+ (unsigned)readLineEndLength:(int)a3;
+ (unsigned)readLineEndType:(int)a3;
+ (unsigned)readLineEndWidth:(int)a3;
+ (void)writePresetDashStyleForCustomDash:(id)a3 toStroke:(EshStroke *)a4 state:(id)a5;
@end

@implementation OABStroke

+ (id)readStrokeFromShapeBaseManager:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39 = v7;
  v8 = objc_alloc_init(OADStroke);
  if (v6)
  {
    [v6 strokeFgColor];
  }

  else
  {
    v44 = 0;
  }

  v9 = EshFixedPointUtil::toFloat([v6 strokeFgAlpha]);
  EshColor::EshColor(&v43, &v44);
  *&v10 = v9;
  v40 = [OABShapeProperties targetColorWithSourceColor:&v43 alpha:v6 colorPropertiesManager:v7 state:v10];
  [(OADStroke *)v8 setColor:v40];
  v11 = [v6 isStroked];
  v12 = [v6 strokeFillType];
  if (v11)
  {
    if (v12 == 1)
    {
      v14 = [v6 strokeFillBlipID];
      v15 = [v6 strokeFillBlipName];
      v16 = +[OABFill patternFromBlipId:blipName:blipDataReference:state:](OABFill, "patternFromBlipId:blipName:blipDataReference:state:", v14, v15, [v6 strokeFillBlipDataReference], v7);
      if (v16)
      {
        if (v6)
        {
          [v6 strokeBgColor];
        }

        else
        {
          v42 = 0;
        }

        EshColor::EshColor(&v41, &v42);
        *&v17 = v9;
        v18 = [OABShapeProperties targetColorWithSourceColor:&v41 alpha:v6 colorPropertiesManager:v7 state:v17];
        v13 = objc_alloc_init(OADPatternFill);
        [(OADPatternFill *)v13 setFgColor:v40];
        [(OADPatternFill *)v13 setBgColor:v18];
        [(OADPatternFill *)v13 setPattern:v16];
      }

      else
      {
        v13 = +[OADNullFill nullFill];
      }
    }

    else if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = objc_alloc_init(OADSolidFill);
      [(OADPatternFill *)v13 setColor:v40];
    }
  }

  else
  {
    v13 = +[OADNullFill nullFill];
  }

  [(OADStroke *)v8 setFill:v13];
  v38 = v13;
  v19 = [v6 strokeCustomDash];
  if (v19)
  {
    v20 = objc_alloc_init(OADCustomDash);
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:((*(v19 + 16) - *(v19 + 8)) >> 3) & 0x7FFFFFFFLL];
    if (((*(v19 + 16) - *(v19 + 8)) & 0x3FFFFFFF8) != 0)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = *EshBasicTablePropVal<int>::operator[](v19, v23 - 1);
        v25 = EshBasicTablePropVal<int>::operator[](v19, v23);
        *&v26 = v24;
        *&v27 = *v25;
        [OADDashStop addStopWithDash:v21 space:v26 toArray:v27];
        ++v22;
        v23 += 2;
      }

      while (v22 < (((*(v19 + 16) - *(v19 + 8)) >> 3) & 0x7FFFFFFF));
    }

    [(OADCustomDash *)v20 setStops:v21];
  }

  else
  {
    v28 = [a1 readPresetDashStyle:{objc_msgSend(v6, "strokePresetDash")}];
    v20 = objc_alloc_init(OADPresetDash);
    [(OADCustomDash *)v20 setType:v28];
  }

  [(OADStroke *)v8 setDash:v20];
  v29 = [v6 strokeJoinStyle];
  switch(v29)
  {
    case 0:
      v30 = off_2799C5718;
      goto LABEL_29;
    case 1:
      v31 = EshFixedPointUtil::toFloat([v6 strokeMiterLimit]);
      v32 = objc_alloc_init(OADMiterLineJoin);
      *&v33 = v31;
      [(OADMiterLineJoin *)v32 setLimit:v33];
      goto LABEL_31;
    case 2:
      v30 = off_2799C5750;
LABEL_29:
      v32 = objc_alloc_init(*v30);
      goto LABEL_31;
  }

  v32 = 0;
LABEL_31:
  [(OADStroke *)v8 setJoin:v32];
  v34 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [a1 readLineEndType:{objc_msgSend(v6, "strokeStartArrowType")}], objc_msgSend(a1, "readLineEndWidth:", objc_msgSend(v6, "strokeStartArrowWidth")), objc_msgSend(a1, "readLineEndLength:", objc_msgSend(v6, "strokeStartArrowLength")));
  [(OADStroke *)v8 setTail:v34];
  v35 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [a1 readLineEndType:{objc_msgSend(v6, "strokeEndArrowType")}], objc_msgSend(a1, "readLineEndWidth:", objc_msgSend(v6, "strokeEndArrowWidth")), objc_msgSend(a1, "readLineEndLength:", objc_msgSend(v6, "strokeEndArrowLength")));
  [(OADStroke *)v8 setHead:v35];
  *&v36 = [v6 strokeWidth] / 12700.0;
  [(OADStroke *)v8 setWidth:v36];
  -[OADStroke setCap:](v8, "setCap:", [a1 readCapStyle:{objc_msgSend(v6, "strokeCapStyle")}]);
  -[OADStroke setCompoundType:](v8, "setCompoundType:", [a1 readCompoundType:{objc_msgSend(v6, "strokeCompoundType")}]);

  return v8;
}

+ (id)readLineEndWithType:(int)a3 width:(int)a4 length:(int)a5
{
  v5 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [a1 readLineEndType:*&a3], objc_msgSend(a1, "readLineEndWidth:", *&a4), objc_msgSend(a1, "readLineEndLength:", *&a5));

  return v5;
}

+ (unsigned)readCompoundType:(int)a3
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (char)readPresetDashStyle:(int)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_25D6FB972[a3 - 1];
  }
}

+ (unsigned)readLineEndType:(int)a3
{
  if (a3 >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)readLineEndWidth:(int)a3
{
  if (a3 >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)readLineEndLength:(int)a3
{
  if (a3 >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)readCapStyle:(int)a3
{
  if (a3 >= 3)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (int)writeCompoundType:(unsigned __int8)a3
{
  if (((a3 - 1) & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return (a3 - 1) + 1;
  }
}

+ (int)writePresetDashStyle:(char)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB97C[(a3 - 1)];
  }
}

+ (int)writeLineEndType:(unsigned __int8)a3
{
  if ((a3 - 1) < 5)
  {
    return (a3 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)writeLineEndWidth:(unsigned __int8)a3
{
  if (a3 >= 3u)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (int)writeLineEndLength:(unsigned __int8)a3
{
  if (a3 >= 3u)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (int)writeCapStyle:(unsigned __int8)a3
{
  if (a3 >= 2u)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (void)writePresetDashStyleForCustomDash:(id)a3 toStroke:(EshStroke *)a4 state:(id)a5
{
  v14 = [a3 stops];
  v6 = [v14 count];
  v7 = [v14 objectAtIndexedSubscript:0];
  [v7 dash];
  if (v8 >= 2.0)
  {
    [v7 dash];
    if (v6 == 2)
    {
      v12 = 9;
    }

    else
    {
      v12 = 10;
    }

    if (v6 == 1)
    {
      v12 = 7;
    }

    if (v6 == 2)
    {
      v13 = 8;
    }

    else
    {
      v13 = 10;
    }

    if (v6 == 1)
    {
      v13 = 6;
    }

    if (v11 < 4.0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    if (v6 == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    if (v6 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }
  }

  EshStroke::setPredefDashStyle(a4, v10);
}

@end