@interface OAVShapeGeometry
+ (OADAdjustCoord)readAdjustCoord:(id)coord;
+ (id)readFromManager:(id)manager;
+ (void)readAdjustValuesFromManager:(id)manager toGeometry:(id)geometry;
+ (void)readLimoFromManager:(id)manager toGeometry:(id)geometry;
+ (void)readTextBodyRectsFromManager:(id)manager toGeometry:(id)geometry;
@end

@implementation OAVShapeGeometry

+ (void)readAdjustValuesFromManager:(id)manager toGeometry:(id)geometry
{
  managerCopy = manager;
  geometryCopy = geometry;
  if ([managerCopy type] == 2)
  {
    shape = [managerCopy shape];
    v7 = CXDefaultStringAttribute(shape, CXNoNamespace, "arcsize", 0);
    v8 = v7;
    if (v7)
    {
      [geometryCopy setAdjustValue:(OAVReadFraction(v7) * 21600.0) atIndex:0];
    }
  }

  shape2 = [managerCopy shape];
  v10 = CXDefaultStringAttribute(shape2, CXNoNamespace, "adj", 0);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 componentsSeparatedByString:{@", "}];
    for (i = 0; [v12 count] > i; ++i)
    {
      v14 = [v12 objectAtIndex:i];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if ([v16 length])
      {
        [geometryCopy setAdjustValue:objc_msgSend(v16 atIndex:{"intValue"), i}];
      }
    }
  }
}

+ (void)readLimoFromManager:(id)manager toGeometry:(id)geometry
{
  managerCopy = manager;
  geometryCopy = geometry;
  v7 = 0x8000000080000000;
  v20 = 0x8000000080000000;
  limo = [managerCopy limo];
  v9 = limo;
  if (limo)
  {
    v18 = managerCopy;
    v10 = [limo componentsSeparatedByString:{@", "}];
    v11 = 0;
    v12 = &v20;
    v13 = 1;
    do
    {
      v14 = v13;
      if ([v10 count] > v11)
      {
        v15 = [v10 objectAtIndex:v11];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
    managerCopy = v18;
  }

  v19 = v7;
  [geometryCopy setLimo:&v19];
}

+ (OADAdjustCoord)readAdjustCoord:(id)coord
{
  coordCopy = coord;
  v4 = [coordCopy characterAtIndex:0];
  if (v4 == 64)
  {
    v5 = [coordCopy substringFromIndex:1];
    intValue = [v5 intValue];
  }

  else
  {
    intValue = [coordCopy intValue];
  }

  return ((v4 == 64) | (intValue << 32));
}

+ (void)readTextBodyRectsFromManager:(id)manager toGeometry:(id)geometry
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  geometryCopy = geometry;
  textBodyRects = [managerCopy textBodyRects];
  if (textBodyRects)
  {
    v18 = textBodyRects;
    v7 = [textBodyRects componentsSeparatedByString:@""];;
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
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        *(&v22 + v12) = [self readAdjustCoord:v15];
        ++v12;
      }

      while (v12 != 4);
      v16 = [OADAdjustRect alloc];
      v17 = [OADAdjustRect initWithLeft:v16 top:"initWithLeft:top:right:bottom:" right:v22 bottom:v23];

      [geometryCopy addTextBodyRect:v17];
      v8 = v9 + 1;
    }

    textBodyRects = v18;
  }
}

+ (id)readFromManager:(id)manager
{
  managerCopy = manager;
  path = [managerCopy path];
  if (path)
  {
    v6 = objc_alloc_init(OADCustomShapeGeometry);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    [self readAdjustValuesFromManager:managerCopy toGeometry:v6];
    +[OAVDrawable readCoordBounds:](OAVDrawable, "readCoordBounds:", [managerCopy shape]);
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
    [self readLimoFromManager:managerCopy toGeometry:v6];
    [self readTextBodyRectsFromManager:managerCopy toGeometry:v6];
    [OAVFormula readFormulasFromManager:managerCopy toGeometry:v6];
    [OAVPath readPath:path toGeometry:v6];
  }

  else
  {
    v6 = objc_alloc_init(OADPresetShapeGeometry);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    -[OADCustomShapeGeometry setType:](v6, "setType:", [managerCopy type]);
    [(OADShapeGeometry *)v6 setIsEscher:1];
    [self readAdjustValuesFromManager:managerCopy toGeometry:v6];
  }

  return v6;
}

@end