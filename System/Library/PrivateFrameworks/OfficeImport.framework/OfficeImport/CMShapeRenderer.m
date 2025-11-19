@interface CMShapeRenderer
+ (CGColor)_copyCGColorFromOADColor:(id)a3 andState:(id)a4;
+ (CGColor)_copyCGColorFromOADFill:(id)a3 andState:(id)a4;
+ (CGImage)copyImageFromOADImageFill:(id)a3 withContext:(id)a4;
+ (CGImage)copyImageFromOADImageFill:(id)a3 withMapper:(id)a4;
+ (void)_renderCGPath:(CGPath *)a3 stroke:(id)a4 fill:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8;
+ (void)_setupDrawingStyleInDrawingContext:(id)a3 dash:(id)a4 state:(id)a5;
+ (void)_setupDrawingStyleInDrawingContext:(id)a3 fill:(id)a4 stroke:(id)a5 state:(id)a6;
+ (void)_setupDrawingStyleInDrawingContext:(id)a3 stroke:(id)a4 state:(id)a5;
+ (void)renderCanonicalShape:(int)a3 fill:(id)a4 stroke:(id)a5 adjustValues:(id)a6 orientedBounds:(id)a7 state:(id)a8 drawingContext:(id)a9;
+ (void)renderDiagramPath:(id)a3 fill:(id)a4 stroke:(id)a5 state:(id)a6 drawingContext:(id)a7;
+ (void)renderFreeForm:(id)a3 fill:(id)a4 stroke:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8;
+ (void)renderLine:(int)a3 stroke:(id)a4 adjustValues:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8;
@end

@implementation CMShapeRenderer

+ (void)renderFreeForm:(id)a3 fill:(id)a4 stroke:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8
{
  v29 = a1;
  v13 = a3;
  v30 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v13 pathCount];
  if (v18)
  {
    for (i = 0; v18 != i; ++i)
    {
      v20 = [v13 pathAtIndex:{i, v29}];
      if (v13)
      {
        [v13 geometryCoordSpace];
        v21 = v35;
        v22 = SHIDWORD(v35);
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v22 = 0.0;
        v21 = 0.0;
      }

      [v15 bounds];
      v25 = v24;
      if (v24 == 0.0 || (v26 = v23, v23 == 0.0))
      {

        break;
      }

      v27 = objc_alloc_init(CMFreeFormShapeBuilder);
      [(CMShapeBuilder *)v27 setOrientedBounds:v15];
      [(CMFreeFormShapeBuilder *)v27 setPath:v20];
      [(CMLineShapeBuilder *)v27 setStroke:v14];
      -[CMShapeBuilder setFileFormat:](v27, "setFileFormat:", [v16 sourceFormat]);
      [(CMFreeFormShapeBuilder *)v27 setSpace:v21 / v25, v22 / v26];
      memset(&v33, 0, sizeof(v33));
      if (v27)
      {
        [(CMFreeFormShapeBuilder *)v27 affineTransform];
        if (!v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
        if (!v17)
        {
LABEL_12:
          memset(&t2, 0, sizeof(t2));
          goto LABEL_13;
        }
      }

      [v17 currentTransform];
LABEL_13:
      CGAffineTransformConcat(&v33, &t1, &t2);
      t1 = v33;
      v28 = [(CMFreeFormShapeBuilder *)v27 copyShapeWithTransform:&t1];
      if (v28)
      {
        [v29 _renderCGPath:v28 stroke:v14 fill:v30 orientedBounds:v15 state:v16 drawingContext:v17];
        CGPathRelease(v28);
      }
    }
  }
}

+ (void)renderDiagramPath:(id)a3 fill:(id)a4 stroke:(id)a5 state:(id)a6 drawingContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(CMFreeFormShapeBuilder);
  [(CMFreeFormShapeBuilder *)v17 setPath:v12];
  [(CMLineShapeBuilder *)v17 setStroke:v14];
  -[CMShapeBuilder setFileFormat:](v17, "setFileFormat:", [v15 sourceFormat]);
  [(CMFreeFormShapeBuilder *)v17 setSpace:1.0, 1.0];
  if (v16)
  {
    [v16 currentTransform];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18 = [(CMFreeFormShapeBuilder *)v17 copyShapeWithTransform:v19];
  if (v18)
  {
    [a1 _renderCGPath:v18 stroke:v14 fill:v13 orientedBounds:0 state:v15 drawingContext:v16];
    CGPathRelease(v18);
  }
}

+ (void)renderLine:(int)a3 stroke:(id)a4 adjustValues:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8
{
  v12 = *&a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_alloc_init(CMLineShapeBuilder);
  [(CMShapeBuilder *)v19 setOrientedBounds:v16];
  [(CMShapeBuilder *)v19 setShapeType:v12];
  [(CMLineShapeBuilder *)v19 setStroke:v14];
  [(CMShapeBuilder *)v19 setAdjustValues:v15];
  -[CMShapeBuilder setFileFormat:](v19, "setFileFormat:", [v17 sourceFormat]);
  memset(&v23, 0, sizeof(v23));
  if (v19)
  {
    [(CMShapeBuilder *)v19 affineTransform];
    if (v18)
    {
LABEL_3:
      [v18 currentTransform];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (v18)
    {
      goto LABEL_3;
    }
  }

  memset(&v21, 0, sizeof(v21));
LABEL_6:
  CGAffineTransformConcat(&v23, &t1, &v21);
  t1 = v23;
  v20 = [(CMLineShapeBuilder *)v19 copyShapeWithTransform:&t1];
  if (v20)
  {
    [a1 _renderCGPath:v20 stroke:v14 fill:0 orientedBounds:v16 state:v17 drawingContext:v18];
    CGPathRelease(v20);
  }
}

+ (void)renderCanonicalShape:(int)a3 fill:(id)a4 stroke:(id)a5 adjustValues:(id)a6 orientedBounds:(id)a7 state:(id)a8 drawingContext:(id)a9
{
  v13 = *&a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = objc_alloc_init(CMCanonicalShapeBuilder);
  [(CMShapeBuilder *)v21 setOrientedBounds:v18];
  [(CMShapeBuilder *)v21 setShapeType:v13];
  [(CMShapeBuilder *)v21 setAdjustValues:v17];
  -[CMShapeBuilder setFileFormat:](v21, "setFileFormat:", [v19 sourceFormat]);
  memset(&v25, 0, sizeof(v25));
  if (v21)
  {
    [(CMCanonicalShapeBuilder *)v21 affineTransform];
    if (v20)
    {
LABEL_3:
      [v20 currentTransform];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (v20)
    {
      goto LABEL_3;
    }
  }

  memset(&v23, 0, sizeof(v23));
LABEL_6:
  CGAffineTransformConcat(&v25, &t1, &v23);
  t1 = v25;
  v22 = [(CMCanonicalShapeBuilder *)v21 copyShapeWithTransform:&t1];
  if (v22)
  {
    [a1 _renderCGPath:v22 stroke:v16 fill:v15 orientedBounds:v18 state:v19 drawingContext:v20];
    CGPathRelease(v22);
  }
}

+ (void)_renderCGPath:(CGPath *)a3 stroke:(id)a4 fill:(id)a5 orientedBounds:(id)a6 state:(id)a7 drawingContext:(id)a8
{
  v17 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [a1 copyImageFromOADImageFill:v13 withContext:v15];
    if (v16)
    {
      [v15 setFillImage:v16];
      CGImageRelease(v16);
    }

    [a1 _setupDrawingStyleInDrawingContext:v15 fill:v13 stroke:v17 state:v14];
    [v15 addPath:a3];
    [v15 setFillImage:0];
  }

  else
  {
    [a1 _setupDrawingStyleInDrawingContext:v15 fill:v13 stroke:v17 state:v14];
    [v15 addPath:a3];
  }
}

+ (CGColor)_copyCGColorFromOADColor:(id)a3 andState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [CMColorProperty nsColorFromOADColor:v5 state:v6];
    [v7 redComponent];
    v9 = v8;
    [v7 greenComponent];
    v11 = v10;
    [v7 blueComponent];
    v13 = v12;
    [v7 alphaComponent];
    v14 = v9;
    v15 = v11;
    v16 = v13;
    v18 = v17;
    GenericRGBA = CMShapeRendererCreateGenericRGBA(v14, v15, v16, v18);
  }

  else
  {
    GenericRGBA = CMShapeRendererCreateGenericRGBA(1.0, 1.0, 1.0, 1.0);
  }

  return GenericRGBA;
}

+ (CGColor)_copyCGColorFromOADFill:(id)a3 andState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [CMColorProperty nsColorFromOADFill:v5 state:v6];
    [v8 redComponent];
    v10 = v9;
    [v8 greenComponent];
    v12 = v11;
    [v8 blueComponent];
    v14 = v13;
    [v8 alphaComponent];
    v15 = v10;
    v16 = v12;
    v17 = v14;
    v19 = v18;
    GenericRGBA = CMShapeRendererCreateGenericRGBA(v15, v16, v17, v19);
  }

  else
  {
    GenericRGBA = CMShapeRendererCreateGenericRGBA(1.0, 1.0, 1.0, 0.0);
  }

  return GenericRGBA;
}

+ (CGImage)copyImageFromOADImageFill:(id)a3 withMapper:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 isBlipRefOverridden])
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [v5 blipRef];
  v8 = [v7 blip];
  if (v8)
  {

LABEL_4:
    v9 = [v8 mainSubBlip];
    v10 = [v9 load];

    if (v10)
    {
      v11 = [v8 mainSubBlip];
      v7 = [v11 data];

      if (v7)
      {
        v12 = CGImageSourceCreateWithData(v7, 0);
        v13 = v12;
        if (v12)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, 0);
          CFRelease(v13);
LABEL_15:

          goto LABEL_16;
        }
      }

LABEL_14:
      ImageAtIndex = 0;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v15 = [v7 index];
  if (v15 < 1)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v8 = [v6 blipAtIndex:v15];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_9:
  ImageAtIndex = 0;
LABEL_16:

  return ImageAtIndex;
}

+ (CGImage)copyImageFromOADImageFill:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = [a4 mapper];
  v8 = [a1 copyImageFromOADImageFill:v6 withMapper:v7];

  return v8;
}

+ (void)_setupDrawingStyleInDrawingContext:(id)a3 fill:(id)a4 stroke:(id)a5 state:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  [a1 _setupDrawingStyleInDrawingContext:v13 stroke:a5 state:v11];
  if (!v10 || (GenericRGBA = [a1 _copyCGColorFromOADFill:v10 andState:v11]) == 0)
  {
    GenericRGBA = CMShapeRendererCreateGenericRGBA(0.0, 0.0, 0.0, 0.0);
  }

  [v13 setFillColor:GenericRGBA];
  CGColorRelease(GenericRGBA);
}

+ (void)_setupDrawingStyleInDrawingContext:(id)a3 stroke:(id)a4 state:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (![v8 isFillOverridden] || (objc_msgSend(v8, "fill"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      GenericRGBA = CMShapeRendererCreateGenericRGBA(0.0, 0.0, 0.0, 0.0);
      [v17 setStrokeColor:GenericRGBA];
      [v17 setFillColor:GenericRGBA];
      CGColorRelease(GenericRGBA);
      goto LABEL_16;
    }

    v12 = [v8 color];
    if (!v12)
    {
      v12 = [v8 fill];
      if (!v12)
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_15:

        goto LABEL_16;
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = [v12 color];
      }

      else
      {
LABEL_10:
        v13 = 0;
      }

      v12 = v13;
    }

    v15 = [a1 _copyCGColorFromOADColor:v12 andState:v9];
    if (v15)
    {
      [v17 setStrokeColor:v15];
      [v17 setFillColor:v15];
      CGColorRelease(v15);
    }

    [v8 width];
    [v17 setLineWidth:?];
    v16 = [v8 dash];
    [a1 _setupDrawingStyleInDrawingContext:v17 dash:v16 state:v9];

    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_setupDrawingStyleInDrawingContext:(id)a3 dash:(id)a4 state:(id)a5
{
  v28 = a3;
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    if ([v7 type])
    {
      v9 = [v7 equivalentCustomDash];

      v7 = v9;
LABEL_5:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_opt_new();
        v11 = MEMORY[0x277CCABB0];
        [v7 dash];
        v12 = [v11 numberWithFloat:?];
        [v10 addObject:v12];

        v13 = MEMORY[0x277CCABB0];
        [v7 space];
        v14 = [v13 numberWithFloat:?];
        [v10 addObject:v14];

        v15 = v10;
      }

      else
      {
        v15 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v7 stops];
        v17 = [v16 count];
        v18 = v17;
        if (v17 >= 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = v17;
        }

        v20 = objc_opt_new();

        if (v18)
        {
          v21 = 0;
          do
          {
            v22 = MEMORY[0x277CCABB0];
            v23 = [v16 objectAtIndexedSubscript:v21];
            [v23 dash];
            v24 = [v22 numberWithFloat:?];
            [v20 addObject:v24];

            v25 = MEMORY[0x277CCABB0];
            v26 = [v16 objectAtIndexedSubscript:v21];
            [v26 space];
            v27 = [v25 numberWithFloat:?];
            [v20 addObject:v27];

            ++v21;
          }

          while (v19 != v21);
        }

        if (!v20)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v15;
        if (!v15)
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      [v28 setLineDash:v20];
      goto LABEL_19;
    }

    [v28 setLineDash:0];
  }

LABEL_20:
}

@end