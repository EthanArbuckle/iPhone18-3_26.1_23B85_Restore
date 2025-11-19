@interface OAVShapeGeometry
+ (OADAdjustCoord)readAdjustCoord:(id)a3;
+ (id)readFromManager:(id)a3;
+ (void)readAdjustValuesFromManager:(id)a3 toGeometry:(id)a4;
+ (void)readLimoFromManager:(id)a3 toGeometry:(id)a4;
+ (void)readTextBodyRectsFromManager:(id)a3 toGeometry:(id)a4;
@end

@implementation OAVShapeGeometry

+ (void)readAdjustValuesFromManager:(id)a3 toGeometry:(id)a4
{
  v17 = a3;
  v5 = a4;
  if ([v17 type] == 2)
  {
    v6 = [v17 shape];
    v7 = CXDefaultStringAttribute(v6, CXNoNamespace, "arcsize", 0);
    v8 = v7;
    if (v7)
    {
      [v5 setAdjustValue:(OAVReadFraction(v7) * 21600.0) atIndex:0];
    }
  }

  v9 = [v17 shape];
  v10 = CXDefaultStringAttribute(v9, CXNoNamespace, "adj", 0);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 componentsSeparatedByString:{@", "}];
    for (i = 0; [v12 count] > i; ++i)
    {
      v14 = [v12 objectAtIndex:i];
      v15 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:v15];

      if ([v16 length])
      {
        [v5 setAdjustValue:objc_msgSend(v16 atIndex:{"intValue"), i}];
      }
    }
  }
}

+ (void)readLimoFromManager:(id)a3 toGeometry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0x8000000080000000;
  v20 = 0x8000000080000000;
  v8 = [v5 limo];
  v9 = v8;
  if (v8)
  {
    v18 = v5;
    v10 = [v8 componentsSeparatedByString:{@", "}];
    v11 = 0;
    v12 = &v20;
    v13 = 1;
    do
    {
      v14 = v13;
      if ([v10 count] > v11)
      {
        v15 = [v10 objectAtIndex:v11];
        v16 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:v16];

        if ([v17 length])
        {
          *v12 = [v17 intValue];
        }
      }

      v13 = 0;
      v12 = (&v20 + 4);
      v11 = 1;
    }

    while ((v14 & 1) != 0);

    v7 = v20;
    v5 = v18;
  }

  v19 = v7;
  [v6 setLimo:&v19];
}

+ (OADAdjustCoord)readAdjustCoord:(id)a3
{
  v3 = a3;
  v4 = [v3 characterAtIndex:0];
  if (v4 == 64)
  {
    v5 = [v3 substringFromIndex:1];
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [v3 intValue];
  }

  return ((v4 == 64) | (v6 << 32));
}

+ (void)readTextBodyRectsFromManager:(id)a3 toGeometry:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v21 = a4;
  v6 = [v19 textBodyRects];
  if (v6)
  {
    v18 = v6;
    v7 = [v6 componentsSeparatedByString:@""];;
    v8 = 0;
    for (i = v7; ; v7 = i)
    {
      v9 = v8;
      if ([v7 count] <= v8)
      {
        break;
      }

      v10 = [v7 objectAtIndex:v8];
      v11 = [v10 componentsSeparatedByString:{@", "}];
      v12 = 0;
      v22 = 0u;
      v23 = 0u;
      do
      {
        v13 = [v11 objectAtIndex:v12];
        v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:v14];

        *(&v22 + v12) = [a1 readAdjustCoord:v15];
        ++v12;
      }

      while (v12 != 4);
      v16 = [OADAdjustRect alloc];
      v17 = [OADAdjustRect initWithLeft:v16 top:"initWithLeft:top:right:bottom:" right:v22 bottom:v23];

      [v21 addTextBodyRect:v17];
      v8 = v9 + 1;
    }

    v6 = v18;
  }
}

+ (id)readFromManager:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  if (v5)
  {
    v6 = objc_alloc_init(OADCustomShapeGeometry);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    [a1 readAdjustValuesFromManager:v4 toGeometry:v6];
    +[OAVDrawable readCoordBounds:](OAVDrawable, "readCoordBounds:", [v4 shape]);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    MinX = CGRectGetMinX(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15[0] = MinX;
    v15[1] = MinY;
    v15[2] = MaxX;
    v15[3] = CGRectGetMaxY(v20);
    [(OADCustomShapeGeometry *)v6 setGeometryCoordSpace:v15];
    [a1 readLimoFromManager:v4 toGeometry:v6];
    [a1 readTextBodyRectsFromManager:v4 toGeometry:v6];
    [OAVFormula readFormulasFromManager:v4 toGeometry:v6];
    [OAVPath readPath:v5 toGeometry:v6];
  }

  else
  {
    v6 = objc_alloc_init(OADPresetShapeGeometry);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    -[OADCustomShapeGeometry setType:](v6, "setType:", [v4 type]);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    [a1 readAdjustValuesFromManager:v4 toGeometry:v6];
  }

  return v6;
}

@end