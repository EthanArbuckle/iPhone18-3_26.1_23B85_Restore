@interface OABStroke
+ (char)readPresetDashStyle:(int)style;
+ (id)readLineEndWithType:(int)type width:(int)width length:(int)length;
+ (id)readStrokeFromShapeBaseManager:(id)manager state:(id)state;
+ (int)writeCapStyle:(unsigned __int8)style;
+ (int)writeCompoundType:(unsigned __int8)type;
+ (int)writeLineEndLength:(unsigned __int8)length;
+ (int)writeLineEndType:(unsigned __int8)type;
+ (int)writeLineEndWidth:(unsigned __int8)width;
+ (int)writePresetDashStyle:(char)style;
+ (unsigned)readCapStyle:(int)style;
+ (unsigned)readCompoundType:(int)type;
+ (unsigned)readLineEndLength:(int)length;
+ (unsigned)readLineEndType:(int)type;
+ (unsigned)readLineEndWidth:(int)width;
+ (void)writePresetDashStyleForCustomDash:(id)dash toStroke:(EshStroke *)stroke state:(id)state;
@end

@implementation OABStroke

+ (id)readStrokeFromShapeBaseManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  v39 = stateCopy;
  v8 = objc_alloc_init(OADStroke);
  if (managerCopy)
  {
    [managerCopy strokeFgColor];
  }

  else
  {
    v44 = 0;
  }

  v9 = EshFixedPointUtil::toFloat([managerCopy strokeFgAlpha]);
  EshColor::EshColor(&v43, &v44);
  *&v10 = v9;
  v40 = [OABShapeProperties targetColorWithSourceColor:&v43 alpha:managerCopy colorPropertiesManager:stateCopy state:v10];
  [(OADStroke *)v8 setColor:v40];
  isStroked = [managerCopy isStroked];
  strokeFillType = [managerCopy strokeFillType];
  if (isStroked)
  {
    if (strokeFillType == 1)
    {
      strokeFillBlipID = [managerCopy strokeFillBlipID];
      strokeFillBlipName = [managerCopy strokeFillBlipName];
      v16 = +[OABFill patternFromBlipId:blipName:blipDataReference:state:](OABFill, "patternFromBlipId:blipName:blipDataReference:state:", strokeFillBlipID, strokeFillBlipName, [managerCopy strokeFillBlipDataReference], stateCopy);
      if (v16)
      {
        if (managerCopy)
        {
          [managerCopy strokeBgColor];
        }

        else
        {
          v42 = 0;
        }

        EshColor::EshColor(&v41, &v42);
        *&v17 = v9;
        v18 = [OABShapeProperties targetColorWithSourceColor:&v41 alpha:managerCopy colorPropertiesManager:stateCopy state:v17];
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

    else if (strokeFillType)
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
  strokeCustomDash = [managerCopy strokeCustomDash];
  if (strokeCustomDash)
  {
    v20 = objc_alloc_init(OADCustomDash);
    0x7FFFFFFFLL = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:((*(strokeCustomDash + 16) - *(strokeCustomDash + 8)) >> 3) & 0x7FFFFFFFLL];
    if (((*(strokeCustomDash + 16) - *(strokeCustomDash + 8)) & 0x3FFFFFFF8) != 0)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = *EshBasicTablePropVal<int>::operator[](strokeCustomDash, v23 - 1);
        v25 = EshBasicTablePropVal<int>::operator[](strokeCustomDash, v23);
        *&v26 = v24;
        *&v27 = *v25;
        [OADDashStop addStopWithDash:0x7FFFFFFFLL space:v26 toArray:v27];
        ++v22;
        v23 += 2;
      }

      while (v22 < (((*(strokeCustomDash + 16) - *(strokeCustomDash + 8)) >> 3) & 0x7FFFFFFF));
    }

    [(OADCustomDash *)v20 setStops:0x7FFFFFFFLL];
  }

  else
  {
    v28 = [self readPresetDashStyle:{objc_msgSend(managerCopy, "strokePresetDash")}];
    v20 = objc_alloc_init(OADPresetDash);
    [(OADCustomDash *)v20 setType:v28];
  }

  [(OADStroke *)v8 setDash:v20];
  strokeJoinStyle = [managerCopy strokeJoinStyle];
  switch(strokeJoinStyle)
  {
    case 0:
      v30 = off_2799C5718;
      goto LABEL_29;
    case 1:
      v31 = EshFixedPointUtil::toFloat([managerCopy strokeMiterLimit]);
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
  v34 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [self readLineEndType:{objc_msgSend(managerCopy, "strokeStartArrowType")}], objc_msgSend(self, "readLineEndWidth:", objc_msgSend(managerCopy, "strokeStartArrowWidth")), objc_msgSend(self, "readLineEndLength:", objc_msgSend(managerCopy, "strokeStartArrowLength")));
  [(OADStroke *)v8 setTail:v34];
  v35 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [self readLineEndType:{objc_msgSend(managerCopy, "strokeEndArrowType")}], objc_msgSend(self, "readLineEndWidth:", objc_msgSend(managerCopy, "strokeEndArrowWidth")), objc_msgSend(self, "readLineEndLength:", objc_msgSend(managerCopy, "strokeEndArrowLength")));
  [(OADStroke *)v8 setHead:v35];
  *&v36 = [managerCopy strokeWidth] / 12700.0;
  [(OADStroke *)v8 setWidth:v36];
  -[OADStroke setCap:](v8, "setCap:", [self readCapStyle:{objc_msgSend(managerCopy, "strokeCapStyle")}]);
  -[OADStroke setCompoundType:](v8, "setCompoundType:", [self readCompoundType:{objc_msgSend(managerCopy, "strokeCompoundType")}]);

  return v8;
}

+ (id)readLineEndWithType:(int)type width:(int)width length:(int)length
{
  v5 = -[OADLineEnd initWithType:width:length:]([OADLineEnd alloc], "initWithType:width:length:", [self readLineEndType:*&type], objc_msgSend(self, "readLineEndWidth:", *&width), objc_msgSend(self, "readLineEndLength:", *&length));

  return v5;
}

+ (unsigned)readCompoundType:(int)type
{
  if (type >= 5)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (char)readPresetDashStyle:(int)style
{
  if ((style - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_25D6FB972[style - 1];
  }
}

+ (unsigned)readLineEndType:(int)type
{
  if (type >= 6)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (unsigned)readLineEndWidth:(int)width
{
  if (width >= 3)
  {
    return 1;
  }

  else
  {
    return width;
  }
}

+ (unsigned)readLineEndLength:(int)length
{
  if (length >= 3)
  {
    return 1;
  }

  else
  {
    return length;
  }
}

+ (unsigned)readCapStyle:(int)style
{
  if (style >= 3)
  {
    return 2;
  }

  else
  {
    return style;
  }
}

+ (int)writeCompoundType:(unsigned __int8)type
{
  if (((type - 1) & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return (type - 1) + 1;
  }
}

+ (int)writePresetDashStyle:(char)style
{
  if ((style - 1) > 9)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB97C[(style - 1)];
  }
}

+ (int)writeLineEndType:(unsigned __int8)type
{
  if ((type - 1) < 5)
  {
    return (type - 1) + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)writeLineEndWidth:(unsigned __int8)width
{
  if (width >= 3u)
  {
    return 1;
  }

  else
  {
    return width;
  }
}

+ (int)writeLineEndLength:(unsigned __int8)length
{
  if (length >= 3u)
  {
    return 1;
  }

  else
  {
    return length;
  }
}

+ (int)writeCapStyle:(unsigned __int8)style
{
  if (style >= 2u)
  {
    return 2;
  }

  else
  {
    return style;
  }
}

+ (void)writePresetDashStyleForCustomDash:(id)dash toStroke:(EshStroke *)stroke state:(id)state
{
  stops = [dash stops];
  v6 = [stops count];
  v7 = [stops objectAtIndexedSubscript:0];
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

  EshStroke::setPredefDashStyle(stroke, v10);
}

@end