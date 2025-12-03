@interface ODIDrawable
+ (CGSize)sizeOfDiagram:(id)diagram;
+ (id)addShapeWithBounds:(CGRect)bounds rotation:(float)rotation geometry:(id)geometry state:(id)state;
+ (id)presentationWithName:(id)name point:(id)point;
+ (id)shapeGeometryForBezierPath:(id)path gSpace:(CGRect)space;
+ (id)shapeGeometryForDoubleArrowWithControlPoint:(CGPoint)point;
+ (id)shapeGeometryForEllipse;
+ (id)shapeGeometryForRectangle;
+ (id)shapeGeometryForRightArrowWithControlPoint:(CGPoint)point;
+ (id)shapeGeometryForRoundedRectangleWithRadius:(float)radius;
+ (id)shapeGeometryWithShapeType:(int)type adjustValues:(const int *)values;
+ (id)styleForLabelName:(id)name styleCount:(int)count styleIndex:(int)index state:(id)state;
+ (id)styleForPresentation:(id)presentation point:(id)point state:(id)state;
+ (void)addArrowHeadToShapeProperties:(id)properties;
+ (void)map1dArrowStyleFromPoint:(id)point shape:(id)shape state:(id)state;
+ (void)map1dArrowStyleToShape:(id)shape state:(id)state;
+ (void)mapShapeProperties:(id)properties shape:(id)shape state:(id)state;
+ (void)mapShapeProperties:(id)properties shapeStyle:(id)style shape:(id)shape state:(id)state;
+ (void)mapStyleAndTextFromPoint:(id)point shape:(id)shape state:(id)state;
+ (void)mapStyleForLabelName:(id)name point:(id)point shape:(id)shape state:(id)state;
+ (void)mapStyleForLabelName:(id)name shape:(id)shape state:(id)state;
+ (void)mapStyleForPresentationName:(id)name point:(id)point shape:(id)shape state:(id)state;
+ (void)mapStyleFromPoint:(id)point shape:(id)shape state:(id)state;
@end

@implementation ODIDrawable

+ (id)shapeGeometryForRectangle
{
  v2 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v2 setType:1];

  return v2;
}

+ (id)shapeGeometryForEllipse
{
  v2 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v2 setType:3];

  return v2;
}

+ (id)shapeGeometryForRoundedRectangleWithRadius:(float)radius
{
  v4 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v4 setType:2];
  [(OADShapeGeometry *)v4 setIsEscher:1];
  [(OADShapeGeometry *)v4 setAdjustValue:(radius * 21600.0) atIndex:0];

  return v4;
}

+ (id)shapeGeometryForRightArrowWithControlPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v5 setType:13];
  [(OADShapeGeometry *)v5 setIsEscher:1];
  [(OADShapeGeometry *)v5 setAdjustValue:((1.0 - x) * 21600.0) atIndex:0];
  [(OADShapeGeometry *)v5 setAdjustValue:(y * 21600.0) atIndex:1];

  return v5;
}

+ (id)shapeGeometryForDoubleArrowWithControlPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v5 setType:69];
  [(OADShapeGeometry *)v5 setIsEscher:1];
  [(OADShapeGeometry *)v5 setAdjustValue:(x * 21600.0) atIndex:0];
  [(OADShapeGeometry *)v5 setAdjustValue:(y * 21600.0) atIndex:1];

  return v5;
}

+ (id)shapeGeometryWithShapeType:(int)type adjustValues:(const int *)values
{
  v5 = *&type;
  v6 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v6 setType:v5];
  if (values)
  {
    for (i = 0; ; ++i)
    {
      v8 = values[i];
      if (v8 != -559038738)
      {
        if (v8 == -559038737)
        {
          break;
        }

        [(OADShapeGeometry *)v6 setAdjustValue:v8 atIndex:i];
      }
    }
  }

  return v6;
}

+ (id)shapeGeometryForBezierPath:(id)path gSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (width >= height)
  {
    v9 = width;
  }

  else
  {
    v9 = height;
  }

  v10 = objc_alloc_init(OADCustomShapeGeometry);
  v11 = height * (21600.0 / v9);
  v12 = width * (21600.0 / v9);
  v13 = y * (21600.0 / v9);
  v30 = 21600.0 / v9;
  v14 = x * (21600.0 / v9);
  v37.origin.x = v14;
  v37.origin.y = v13;
  v37.size.width = v12;
  v37.size.height = v11;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v14;
  v38.origin.y = v13;
  v38.size.width = v12;
  v38.size.height = v11;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = v14;
  v39.origin.y = v13;
  v39.size.width = v12;
  v39.size.height = v11;
  MaxX = CGRectGetMaxX(v39);
  v40.origin.x = v14;
  v40.origin.y = v13;
  v40.size.width = v12;
  v40.size.height = v11;
  v31[0] = MinX;
  v31[1] = MinY;
  v31[2] = MaxX;
  v31[3] = CGRectGetMaxY(v40);
  [(OADCustomShapeGeometry *)v10 setGeometryCoordSpace:v31];
  [(OADShapeGeometry *)v10 setIsEscher:1];
  v18 = 0;
  elementCount = [pathCopy elementCount];
  if (elementCount)
  {
    v20 = 0;
    while (1)
    {
      if (!v18)
      {
        v18 = objc_alloc_init(OADPath);
        [(OADCustomShapeGeometry *)v10 addPath:v18];
      }

      v21 = [pathCopy elementAtIndex:v20 associatedPoints:{&v32, *&v28, *&v29}];
      v22 = 0;
      v23 = vshlq_n_s64(vcvtq_s64_f64(vmulq_n_f64(v32, v30)), 0x20uLL);
      if (v21 > 1)
      {
        break;
      }

      if (!v21)
      {
        v24 = off_2799C5738;
LABEL_16:
        v26 = [objc_alloc(*v24) initWithToPoint:*&v23];
LABEL_18:
        v22 = v26;
        if (v26)
        {
          [(OADPath *)v18 addElement:v26];
        }

        goto LABEL_20;
      }

      if (v21 == 1)
      {
        v24 = off_2799C5730;
        goto LABEL_16;
      }

LABEL_20:

      if (elementCount == ++v20)
      {
        goto LABEL_21;
      }
    }

    if (v21 != 2)
    {
      if (v21 == 3)
      {
        v25 = objc_alloc_init(OADClosePathElement);
        [(OADPath *)v18 addElement:v25];

        v18 = 0;
        v22 = 0;
      }

      goto LABEL_20;
    }

    v28 = v33;
    v29 = v34;
    v26 = [[OADCubicBezierToPathElement alloc] initWithControlPoint1:*&v23 controlPoint2:vshlq_n_s64(vcvtq_s64_f64(vmulq_n_f64(v33 toPoint:v30)), 0x20uLL), vshlq_n_s64(vcvtq_s64_f64(vmulq_n_f64(v34, v30)), 0x20uLL)];
    goto LABEL_18;
  }

LABEL_21:

  return v10;
}

+ (CGSize)sizeOfDiagram:(id)diagram
{
  v3 = [OAITOrientedBounds relativeOrientedBoundsOfDrawable:diagram];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)addShapeWithBounds:(CGRect)bounds rotation:(float)rotation geometry:(id)geometry state:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  geometryCopy = geometry;
  stateCopy = state;
  v14 = objc_alloc_init(OADShape);
  group = [stateCopy group];
  [group addChild:v14];

  [stateCopy scale];
  v17 = v16;
  v18 = [OADOrientedBounds alloc];
  *&v19 = rotation;
  v20 = [(OADOrientedBounds *)v18 initWithBounds:0 rotation:0 flipX:x * v17 flipY:y * v17, width * v17, height * v17, v19];
  drawableProperties = [(OADDrawable *)v14 drawableProperties];
  [drawableProperties setOrientedBounds:v20];

  [(OADShape *)v14 setGeometry:geometryCopy];

  return v14;
}

+ (void)mapStyleFromPoint:(id)point shape:(id)shape state:(id)state
{
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  v10 = [stateCopy presentationNameForPointType:{objc_msgSend(pointCopy, "type")}];
  v11 = [self presentationWithName:v10 point:pointCopy];
  v12 = [self styleForPresentation:v11 point:pointCopy state:stateCopy];
  [stateCopy setTextStyle:v12];
  shapeProperties = [pointCopy shapeProperties];
  drawingTheme = [stateCopy drawingTheme];
  styleMatrix = [drawingTheme styleMatrix];

  if (v11)
  {
    shapeProperties2 = [v11 shapeProperties];
    [v12 applyToGraphicProperties:shapeProperties2 styleMatrix:styleMatrix];
    [shapeProperties setParent:shapeProperties2];
  }

  else
  {
    [v12 applyToGraphicProperties:shapeProperties styleMatrix:styleMatrix];
  }

  [self mapShapeProperties:shapeProperties shape:shapeCopy state:stateCopy];
}

+ (void)mapStyleForPresentationName:(id)name point:(id)point shape:(id)shape state:(id)state
{
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  v12 = [self presentationWithName:name point:pointCopy];
  v13 = [self styleForPresentation:v12 point:pointCopy state:stateCopy];
  if (v12)
  {
    shapeProperties = [v12 shapeProperties];
  }

  else
  {
    shapeProperties = objc_alloc_init(OADShapeProperties);
  }

  v15 = shapeProperties;
  [self mapShapeProperties:shapeProperties shapeStyle:v13 shape:shapeCopy state:stateCopy];
}

+ (void)mapStyleForLabelName:(id)name shape:(id)shape state:(id)state
{
  nameCopy = name;
  shapeCopy = shape;
  stateCopy = state;
  v10 = objc_alloc_init(OADShapeProperties);
  v11 = [self styleForLabelName:nameCopy styleCount:objc_msgSend(stateCopy styleIndex:"pointCount") state:{objc_msgSend(stateCopy, "pointIndex"), stateCopy}];
  [self mapShapeProperties:v10 shapeStyle:v11 shape:shapeCopy state:stateCopy];
}

+ (void)mapStyleForLabelName:(id)name point:(id)point shape:(id)shape state:(id)state
{
  nameCopy = name;
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  v13 = [self styleForLabelName:nameCopy styleCount:objc_msgSend(stateCopy styleIndex:"pointCount") state:{objc_msgSend(stateCopy, "pointIndex"), stateCopy}];
  [stateCopy setTextStyle:v13];
  shapeProperties = [pointCopy shapeProperties];
  [self mapShapeProperties:shapeProperties shapeStyle:v13 shape:shapeCopy state:stateCopy];
}

+ (void)map1dArrowStyleFromPoint:(id)point shape:(id)shape state:(id)state
{
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  v10 = [stateCopy presentationNameForPointType:{objc_msgSend(pointCopy, "type")}];
  v11 = [self presentationWithName:v10 point:pointCopy];
  v12 = [self styleForPresentation:v11 point:pointCopy state:stateCopy];
  shapeProperties = [pointCopy shapeProperties];
  drawingTheme = [stateCopy drawingTheme];
  styleMatrix = [drawingTheme styleMatrix];
  [v12 applyToGraphicProperties:shapeProperties styleMatrix:styleMatrix];

  [self addArrowHeadToShapeProperties:shapeProperties];
  [stateCopy setTextStyle:v12];
  [self mapShapeProperties:shapeProperties shape:shapeCopy state:stateCopy];
}

+ (void)map1dArrowStyleToShape:(id)shape state:(id)state
{
  shapeCopy = shape;
  stateCopy = state;
  v7 = objc_alloc_init(OADShapeProperties);
  v8 = [self styleForLabelName:@"sibTrans1D1" styleCount:objc_msgSend(stateCopy styleIndex:"pointCount") state:{objc_msgSend(stateCopy, "pointIndex"), stateCopy}];
  drawingTheme = [stateCopy drawingTheme];
  styleMatrix = [drawingTheme styleMatrix];
  [v8 applyToGraphicProperties:v7 styleMatrix:styleMatrix];

  [self addArrowHeadToShapeProperties:v7];
  [self mapShapeProperties:v7 shape:shapeCopy state:stateCopy];
}

+ (void)mapStyleAndTextFromPoint:(id)point shape:(id)shape state:(id)state
{
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  [self mapStyleFromPoint:pointCopy shape:shapeCopy state:stateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [pointCopy text];

    if (text)
    {
      [ODIText mapTextFromPoint:pointCopy toShape:shapeCopy isCentered:1 includeChildren:1 state:stateCopy];
    }
  }
}

+ (id)presentationWithName:(id)name point:(id)point
{
  nameCopy = name;
  pointCopy = point;
  presentations = [pointCopy presentations];
  v8 = presentations;
  if (nameCopy)
  {
    objectEnumerator = [presentations objectEnumerator];
    while (1)
    {
      nextObject = [objectEnumerator nextObject];
      v11 = nextObject;
      if (!nextObject)
      {

        goto LABEL_7;
      }

      propertySet = [nextObject propertySet];
      presentationName = [propertySet presentationName];
      v14 = [nameCopy isEqualToString:presentationName];

      if (v14)
      {
        break;
      }
    }
  }

  else
  {
LABEL_7:
    if ([v8 count])
    {
      v11 = [v8 objectAtIndex:0];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)styleForPresentation:(id)presentation point:(id)point state:(id)state
{
  presentationCopy = presentation;
  pointCopy = point;
  stateCopy = state;
  if (!presentationCopy || ([presentationCopy propertySet], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "presentationStyleLabel"), v12 = objc_claimAutoreleasedReturnValue(), pointCount = objc_msgSend(v11, "presentationStyleCount"), pointIndex = objc_msgSend(v11, "presentationStyleIndex"), v11, !v12))
  {
    v15 = [stateCopy defaultStyleLabelNameForPointType:{objc_msgSend(pointCopy, "type")}];
    pointCount = [stateCopy pointCount];
    pointIndex = [stateCopy pointIndex];
    v12 = v15;
  }

  v16 = [self styleForLabelName:v12 styleCount:pointCount styleIndex:pointIndex state:stateCopy];

  return v16;
}

+ (id)styleForLabelName:(id)name styleCount:(int)count styleIndex:(int)index state:(id)state
{
  v7 = *&index;
  v8 = *&count;
  nameCopy = name;
  stateCopy = state;
  diagram = [stateCopy diagram];
  styleDefinition = [diagram styleDefinition];
  v13 = [styleDefinition labelForName:nameCopy];
  shapeStyle = [v13 shapeStyle];

  if (shapeStyle)
  {
    colorTransform = [diagram colorTransform];
    v16 = [colorTransform labelForName:nameCopy];

    if (v16)
    {
      v17 = [shapeStyle copy];

      shapeStyle = v17;
      [v16 applyToShapeStyle:v17 index:v7 count:v8 state:stateCopy];
    }
  }

  return shapeStyle;
}

+ (void)mapShapeProperties:(id)properties shapeStyle:(id)style shape:(id)shape state:(id)state
{
  propertiesCopy = properties;
  styleCopy = style;
  shapeCopy = shape;
  stateCopy = state;
  drawingTheme = [stateCopy drawingTheme];
  styleMatrix = [drawingTheme styleMatrix];
  [styleCopy applyToGraphicProperties:propertiesCopy styleMatrix:styleMatrix];

  [self mapShapeProperties:propertiesCopy shape:shapeCopy state:stateCopy];
}

+ (void)mapShapeProperties:(id)properties shape:(id)shape state:(id)state
{
  propertiesCopy = properties;
  shapeProperties = [shape shapeProperties];
  if (shapeProperties != propertiesCopy)
  {
    fill = [propertiesCopy fill];
    [shapeProperties setFill:fill];

    stroke = [propertiesCopy stroke];
    [shapeProperties setStroke:stroke];

    effects = [propertiesCopy effects];
    [shapeProperties setEffects:effects];
  }
}

+ (void)addArrowHeadToShapeProperties:(id)properties
{
  propertiesCopy = properties;
  stroke = [propertiesCopy stroke];
  v4 = [stroke copy];

  [propertiesCopy setStroke:v4];
  v5 = [[OADLineEnd alloc] initWithType:1 width:1 length:1];
  [v4 setHead:v5];
}

@end