@interface ODIDrawable
+ (CGSize)sizeOfDiagram:(id)a3;
+ (id)addShapeWithBounds:(CGRect)a3 rotation:(float)a4 geometry:(id)a5 state:(id)a6;
+ (id)presentationWithName:(id)a3 point:(id)a4;
+ (id)shapeGeometryForBezierPath:(id)a3 gSpace:(CGRect)a4;
+ (id)shapeGeometryForDoubleArrowWithControlPoint:(CGPoint)a3;
+ (id)shapeGeometryForEllipse;
+ (id)shapeGeometryForRectangle;
+ (id)shapeGeometryForRightArrowWithControlPoint:(CGPoint)a3;
+ (id)shapeGeometryForRoundedRectangleWithRadius:(float)a3;
+ (id)shapeGeometryWithShapeType:(int)a3 adjustValues:(const int *)a4;
+ (id)styleForLabelName:(id)a3 styleCount:(int)a4 styleIndex:(int)a5 state:(id)a6;
+ (id)styleForPresentation:(id)a3 point:(id)a4 state:(id)a5;
+ (void)addArrowHeadToShapeProperties:(id)a3;
+ (void)map1dArrowStyleFromPoint:(id)a3 shape:(id)a4 state:(id)a5;
+ (void)map1dArrowStyleToShape:(id)a3 state:(id)a4;
+ (void)mapShapeProperties:(id)a3 shape:(id)a4 state:(id)a5;
+ (void)mapShapeProperties:(id)a3 shapeStyle:(id)a4 shape:(id)a5 state:(id)a6;
+ (void)mapStyleAndTextFromPoint:(id)a3 shape:(id)a4 state:(id)a5;
+ (void)mapStyleForLabelName:(id)a3 point:(id)a4 shape:(id)a5 state:(id)a6;
+ (void)mapStyleForLabelName:(id)a3 shape:(id)a4 state:(id)a5;
+ (void)mapStyleForPresentationName:(id)a3 point:(id)a4 shape:(id)a5 state:(id)a6;
+ (void)mapStyleFromPoint:(id)a3 shape:(id)a4 state:(id)a5;
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

+ (id)shapeGeometryForRoundedRectangleWithRadius:(float)a3
{
  v4 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v4 setType:2];
  [(OADShapeGeometry *)v4 setIsEscher:1];
  [(OADShapeGeometry *)v4 setAdjustValue:(a3 * 21600.0) atIndex:0];

  return v4;
}

+ (id)shapeGeometryForRightArrowWithControlPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v5 setType:13];
  [(OADShapeGeometry *)v5 setIsEscher:1];
  [(OADShapeGeometry *)v5 setAdjustValue:((1.0 - x) * 21600.0) atIndex:0];
  [(OADShapeGeometry *)v5 setAdjustValue:(y * 21600.0) atIndex:1];

  return v5;
}

+ (id)shapeGeometryForDoubleArrowWithControlPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v5 setType:69];
  [(OADShapeGeometry *)v5 setIsEscher:1];
  [(OADShapeGeometry *)v5 setAdjustValue:(x * 21600.0) atIndex:0];
  [(OADShapeGeometry *)v5 setAdjustValue:(y * 21600.0) atIndex:1];

  return v5;
}

+ (id)shapeGeometryWithShapeType:(int)a3 adjustValues:(const int *)a4
{
  v5 = *&a3;
  v6 = objc_alloc_init(OADPresetShapeGeometry);
  [(OADPresetShapeGeometry *)v6 setType:v5];
  if (a4)
  {
    for (i = 0; ; ++i)
    {
      v8 = a4[i];
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

+ (id)shapeGeometryForBezierPath:(id)a3 gSpace:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
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
  v19 = [v8 elementCount];
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (!v18)
      {
        v18 = objc_alloc_init(OADPath);
        [(OADCustomShapeGeometry *)v10 addPath:v18];
      }

      v21 = [v8 elementAtIndex:v20 associatedPoints:{&v32, *&v28, *&v29}];
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

      if (v19 == ++v20)
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

+ (CGSize)sizeOfDiagram:(id)a3
{
  v3 = [OAITOrientedBounds relativeOrientedBoundsOfDrawable:a3];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)addShapeWithBounds:(CGRect)a3 rotation:(float)a4 geometry:(id)a5 state:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(OADShape);
  v15 = [v13 group];
  [v15 addChild:v14];

  [v13 scale];
  v17 = v16;
  v18 = [OADOrientedBounds alloc];
  *&v19 = a4;
  v20 = [(OADOrientedBounds *)v18 initWithBounds:0 rotation:0 flipX:x * v17 flipY:y * v17, width * v17, height * v17, v19];
  v21 = [(OADDrawable *)v14 drawableProperties];
  [v21 setOrientedBounds:v20];

  [(OADShape *)v14 setGeometry:v12];

  return v14;
}

+ (void)mapStyleFromPoint:(id)a3 shape:(id)a4 state:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 presentationNameForPointType:{objc_msgSend(v17, "type")}];
  v11 = [a1 presentationWithName:v10 point:v17];
  v12 = [a1 styleForPresentation:v11 point:v17 state:v9];
  [v9 setTextStyle:v12];
  v13 = [v17 shapeProperties];
  v14 = [v9 drawingTheme];
  v15 = [v14 styleMatrix];

  if (v11)
  {
    v16 = [v11 shapeProperties];
    [v12 applyToGraphicProperties:v16 styleMatrix:v15];
    [v13 setParent:v16];
  }

  else
  {
    [v12 applyToGraphicProperties:v13 styleMatrix:v15];
  }

  [a1 mapShapeProperties:v13 shape:v8 state:v9];
}

+ (void)mapStyleForPresentationName:(id)a3 point:(id)a4 shape:(id)a5 state:(id)a6
{
  v16 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [a1 presentationWithName:a3 point:v16];
  v13 = [a1 styleForPresentation:v12 point:v16 state:v11];
  if (v12)
  {
    v14 = [v12 shapeProperties];
  }

  else
  {
    v14 = objc_alloc_init(OADShapeProperties);
  }

  v15 = v14;
  [a1 mapShapeProperties:v14 shapeStyle:v13 shape:v10 state:v11];
}

+ (void)mapStyleForLabelName:(id)a3 shape:(id)a4 state:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(OADShapeProperties);
  v11 = [a1 styleForLabelName:v12 styleCount:objc_msgSend(v9 styleIndex:"pointCount") state:{objc_msgSend(v9, "pointIndex"), v9}];
  [a1 mapShapeProperties:v10 shapeStyle:v11 shape:v8 state:v9];
}

+ (void)mapStyleForLabelName:(id)a3 point:(id)a4 shape:(id)a5 state:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a1 styleForLabelName:v15 styleCount:objc_msgSend(v12 styleIndex:"pointCount") state:{objc_msgSend(v12, "pointIndex"), v12}];
  [v12 setTextStyle:v13];
  v14 = [v10 shapeProperties];
  [a1 mapShapeProperties:v14 shapeStyle:v13 shape:v11 state:v12];
}

+ (void)map1dArrowStyleFromPoint:(id)a3 shape:(id)a4 state:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 presentationNameForPointType:{objc_msgSend(v16, "type")}];
  v11 = [a1 presentationWithName:v10 point:v16];
  v12 = [a1 styleForPresentation:v11 point:v16 state:v9];
  v13 = [v16 shapeProperties];
  v14 = [v9 drawingTheme];
  v15 = [v14 styleMatrix];
  [v12 applyToGraphicProperties:v13 styleMatrix:v15];

  [a1 addArrowHeadToShapeProperties:v13];
  [v9 setTextStyle:v12];
  [a1 mapShapeProperties:v13 shape:v8 state:v9];
}

+ (void)map1dArrowStyleToShape:(id)a3 state:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_alloc_init(OADShapeProperties);
  v8 = [a1 styleForLabelName:@"sibTrans1D1" styleCount:objc_msgSend(v6 styleIndex:"pointCount") state:{objc_msgSend(v6, "pointIndex"), v6}];
  v9 = [v6 drawingTheme];
  v10 = [v9 styleMatrix];
  [v8 applyToGraphicProperties:v7 styleMatrix:v10];

  [a1 addArrowHeadToShapeProperties:v7];
  [a1 mapShapeProperties:v7 shape:v11 state:v6];
}

+ (void)mapStyleAndTextFromPoint:(id)a3 shape:(id)a4 state:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  [a1 mapStyleFromPoint:v11 shape:v8 state:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v11 text];

    if (v10)
    {
      [ODIText mapTextFromPoint:v11 toShape:v8 isCentered:1 includeChildren:1 state:v9];
    }
  }
}

+ (id)presentationWithName:(id)a3 point:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 presentations];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 objectEnumerator];
    while (1)
    {
      v10 = [v9 nextObject];
      v11 = v10;
      if (!v10)
      {

        goto LABEL_7;
      }

      v12 = [v10 propertySet];
      v13 = [v12 presentationName];
      v14 = [v5 isEqualToString:v13];

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

+ (id)styleForPresentation:(id)a3 point:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || ([v8 propertySet], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "presentationStyleLabel"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "presentationStyleCount"), v14 = objc_msgSend(v11, "presentationStyleIndex"), v11, !v12))
  {
    v15 = [v10 defaultStyleLabelNameForPointType:{objc_msgSend(v9, "type")}];
    v13 = [v10 pointCount];
    v14 = [v10 pointIndex];
    v12 = v15;
  }

  v16 = [a1 styleForLabelName:v12 styleCount:v13 styleIndex:v14 state:v10];

  return v16;
}

+ (id)styleForLabelName:(id)a3 styleCount:(int)a4 styleIndex:(int)a5 state:(id)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v9 = a3;
  v10 = a6;
  v11 = [v10 diagram];
  v12 = [v11 styleDefinition];
  v13 = [v12 labelForName:v9];
  v14 = [v13 shapeStyle];

  if (v14)
  {
    v15 = [v11 colorTransform];
    v16 = [v15 labelForName:v9];

    if (v16)
    {
      v17 = [v14 copy];

      v14 = v17;
      [v16 applyToShapeStyle:v17 index:v7 count:v8 state:v10];
    }
  }

  return v14;
}

+ (void)mapShapeProperties:(id)a3 shapeStyle:(id)a4 shape:(id)a5 state:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 drawingTheme];
  v14 = [v13 styleMatrix];
  [v10 applyToGraphicProperties:v15 styleMatrix:v14];

  [a1 mapShapeProperties:v15 shape:v11 state:v12];
}

+ (void)mapShapeProperties:(id)a3 shape:(id)a4 state:(id)a5
{
  v10 = a3;
  v6 = [a4 shapeProperties];
  if (v6 != v10)
  {
    v7 = [v10 fill];
    [v6 setFill:v7];

    v8 = [v10 stroke];
    [v6 setStroke:v8];

    v9 = [v10 effects];
    [v6 setEffects:v9];
  }
}

+ (void)addArrowHeadToShapeProperties:(id)a3
{
  v6 = a3;
  v3 = [v6 stroke];
  v4 = [v3 copy];

  [v6 setStroke:v4];
  v5 = [[OADLineEnd alloc] initWithType:1 width:1 length:1];
  [v4 setHead:v5];
}

@end