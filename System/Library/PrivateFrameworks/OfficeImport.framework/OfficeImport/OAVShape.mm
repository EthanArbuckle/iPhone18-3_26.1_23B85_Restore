@interface OAVShape
+ (id)managerWithShape:(_xmlNode *)shape state:(id)state;
+ (id)readFromShape:(_xmlNode *)shape inNamespace:(id)namespace state:(id)state;
+ (unsigned)typeWithShape:(_xmlNode *)shape state:(id)state;
+ (void)readBoundsAndGeometryOfPolylineFromManager:(id)manager toShape:(id)shape state:(id)state;
@end

@implementation OAVShape

+ (unsigned)typeWithShape:(_xmlNode *)shape state:(id)state
{
  stateCopy = state;
  if (xmlStrEqual(shape->name, "shape"))
  {
    v6 = CXDefaultStringAttribute(shape, CXNoNamespace, "type", 0);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 substringFromIndex:1];

      v9 = [stateCopy shapeTypeForId:v8];
      intValue = v9;
      if (!v9)
      {
        if ([v8 hasPrefix:@"_x0000_t"])
        {
          v11 = [v8 substringFromIndex:{objc_msgSend(@"_x0000_t", "length")}];
          intValue = [v11 intValue];
        }

        else
        {
          intValue = 0;
        }
      }
    }

    else
    {
      intValue = 0;
      v8 = 0;
    }
  }

  else if (xmlStrEqual(shape->name, "line"))
  {
    intValue = 20;
  }

  else if (xmlStrEqual(shape->name, "polyline"))
  {
    intValue = 0;
  }

  else if (xmlStrEqual(shape->name, "rect"))
  {
    intValue = 1;
  }

  else if (xmlStrEqual(shape->name, "roundrect"))
  {
    intValue = 2;
  }

  else if (xmlStrEqual(shape->name, "oval"))
  {
    intValue = 3;
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (id)managerWithShape:(_xmlNode *)shape state:(id)state
{
  stateCopy = state;
  v7 = [self typeWithShape:shape state:stateCopy];
  v8 = [OAVShapeManager alloc];
  packagePart = [stateCopy packagePart];
  v10 = [(OAVShapeManager *)v8 initWithShape:shape type:v7 packagePart:packagePart state:stateCopy];

  return v10;
}

+ (void)readBoundsAndGeometryOfPolylineFromManager:(id)manager toShape:(id)shape state:(id)state
{
  managerCopy = manager;
  shapeCopy = shape;
  if (xmlStrEqual(*(*([managerCopy shape] + 40) + 16), "group"))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 20.0;
  }

  points = [managerCopy points];
  v10 = OAVReadLengthArray(points);
  v11 = [v10 count];
  if (v11 >= 2)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v16 = objc_alloc_init(OADCustomShapeGeometry);
    [shapeCopy setGeometry:v16];
    [(OADShapeGeometry *)v16 setIsEscher:1];
    v17 = objc_alloc_init(OADPath);
    [(OADCustomShapeGeometry *)v16 addPath:v17];
    v30 = points;
    v31 = shapeCopy;
    v18 = 0;
    v19 = v11 >> 1;
    v20 = 1;
    do
    {
      v21 = [v10 objectAtIndexedSubscript:{v20 - 1, v30, v31}];
      [v21 doubleValue];
      v23 = v22;

      v24 = [v10 objectAtIndexedSubscript:v20];
      [v24 doubleValue];
      v26 = v25;

      v36.size.width = 0.0;
      v36.size.height = 0.0;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v36.origin.x = v23;
      v36.origin.y = v26;
      v34 = CGRectUnion(v33, v36);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v27 = [objc_alloc(objc_opt_class()) initWithToPoint:{(v8 * v23) << 32, (v8 * v26) << 32}];
      [(OADPath *)v17 addElement:v27];

      ++v18;
      v20 += 2;
    }

    while (v19 != v18);
    v35.origin.x = TSUMultiplyRectScalar(x, y, width, height, v8);
    points = v30;
    shapeCopy = v31;
    OCChRectI4WithCGRect(v35, v32);
    [(OADCustomShapeGeometry *)v16 setGeometryCoordSpace:v32];
    drawableProperties = [v31 drawableProperties];
    orientedBounds = [drawableProperties orientedBounds];
    [orientedBounds setBounds:{x, y, width, height}];
  }
}

+ (id)readFromShape:(_xmlNode *)shape inNamespace:(id)namespace state:(id)state
{
  stateCopy = state;
  v8 = [self managerWithShape:shape state:stateCopy];
  if ([v8 isImage])
  {
    v9 = objc_alloc_init(OADImage);
    v10 = 0;
    v21 = v9;
  }

  else
  {
    v9 = objc_alloc_init(OADShape);
    v21 = 0;
    v10 = v9;
  }

  v11 = v9;
  isPolyline = [v8 isPolyline];
  [OAVDrawable readFromDrawable:shape toDrawable:v11 state:stateCopy];
  graphicProperties = [(OADGraphic *)v11 graphicProperties];
  isWordArt = [v8 isWordArt];
  v15 = [OAVFill readFromManager:v8 state:stateCopy];
  [graphicProperties setFill:v15];

  if (isWordArt)
  {
    [OAVWordArt readFromManager:v8 toShape:v10 state:stateCopy];
  }

  else
  {
    if (v10)
    {
      if (isPolyline)
      {
        [self readBoundsAndGeometryOfPolylineFromManager:v8 toShape:v10 state:stateCopy];
      }

      else
      {
        v16 = [OAVShapeGeometry readFromManager:v8];
        [(OADImage *)v10 setGeometry:v16];
      }

      [OAVTextBodyProperties readFromManager:v8 toShape:v10 state:stateCopy];
    }

    v17 = [OAVStroke readFromManager:v8];
    [graphicProperties setStroke:v17];

    v18 = [OAVShadow readFromManager:v8];
    [graphicProperties setEffects:v18];

    if (v21)
    {
      [OAVImage readFromManager:v8 toImage:v21 state:stateCopy];
    }
  }

  [objc_msgSend(stateCopy "client")];
  v19 = v11;

  return v11;
}

@end