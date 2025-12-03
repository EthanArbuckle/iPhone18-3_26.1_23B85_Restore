@interface CMShapeRenderer
+ (CGColor)_copyCGColorFromOADColor:(id)color andState:(id)state;
+ (CGColor)_copyCGColorFromOADFill:(id)fill andState:(id)state;
+ (CGImage)copyImageFromOADImageFill:(id)fill withContext:(id)context;
+ (CGImage)copyImageFromOADImageFill:(id)fill withMapper:(id)mapper;
+ (void)_renderCGPath:(CGPath *)path stroke:(id)stroke fill:(id)fill orientedBounds:(id)bounds state:(id)state drawingContext:(id)context;
+ (void)_setupDrawingStyleInDrawingContext:(id)context dash:(id)dash state:(id)state;
+ (void)_setupDrawingStyleInDrawingContext:(id)context fill:(id)fill stroke:(id)stroke state:(id)state;
+ (void)_setupDrawingStyleInDrawingContext:(id)context stroke:(id)stroke state:(id)state;
+ (void)renderCanonicalShape:(int)shape fill:(id)fill stroke:(id)stroke adjustValues:(id)values orientedBounds:(id)bounds state:(id)state drawingContext:(id)context;
+ (void)renderDiagramPath:(id)path fill:(id)fill stroke:(id)stroke state:(id)state drawingContext:(id)context;
+ (void)renderFreeForm:(id)form fill:(id)fill stroke:(id)stroke orientedBounds:(id)bounds state:(id)state drawingContext:(id)context;
+ (void)renderLine:(int)line stroke:(id)stroke adjustValues:(id)values orientedBounds:(id)bounds state:(id)state drawingContext:(id)context;
@end

@implementation CMShapeRenderer

+ (void)renderFreeForm:(id)form fill:(id)fill stroke:(id)stroke orientedBounds:(id)bounds state:(id)state drawingContext:(id)context
{
  selfCopy = self;
  formCopy = form;
  fillCopy = fill;
  strokeCopy = stroke;
  boundsCopy = bounds;
  stateCopy = state;
  contextCopy = context;
  pathCount = [formCopy pathCount];
  if (pathCount)
  {
    for (i = 0; pathCount != i; ++i)
    {
      v20 = [formCopy pathAtIndex:{i, selfCopy}];
      if (formCopy)
      {
        [formCopy geometryCoordSpace];
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

      [boundsCopy bounds];
      v25 = v24;
      if (v24 == 0.0 || (v26 = v23, v23 == 0.0))
      {

        break;
      }

      v27 = objc_alloc_init(CMFreeFormShapeBuilder);
      [(CMShapeBuilder *)v27 setOrientedBounds:boundsCopy];
      [(CMFreeFormShapeBuilder *)v27 setPath:v20];
      [(CMLineShapeBuilder *)v27 setStroke:strokeCopy];
      -[CMShapeBuilder setFileFormat:](v27, "setFileFormat:", [stateCopy sourceFormat]);
      [(CMFreeFormShapeBuilder *)v27 setSpace:v21 / v25, v22 / v26];
      memset(&v33, 0, sizeof(v33));
      if (v27)
      {
        [(CMFreeFormShapeBuilder *)v27 affineTransform];
        if (!contextCopy)
        {
          goto LABEL_12;
        }
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
        if (!contextCopy)
        {
LABEL_12:
          memset(&t2, 0, sizeof(t2));
          goto LABEL_13;
        }
      }

      [contextCopy currentTransform];
LABEL_13:
      CGAffineTransformConcat(&v33, &t1, &t2);
      t1 = v33;
      v28 = [(CMFreeFormShapeBuilder *)v27 copyShapeWithTransform:&t1];
      if (v28)
      {
        [selfCopy _renderCGPath:v28 stroke:strokeCopy fill:fillCopy orientedBounds:boundsCopy state:stateCopy drawingContext:contextCopy];
        CGPathRelease(v28);
      }
    }
  }
}

+ (void)renderDiagramPath:(id)path fill:(id)fill stroke:(id)stroke state:(id)state drawingContext:(id)context
{
  pathCopy = path;
  fillCopy = fill;
  strokeCopy = stroke;
  stateCopy = state;
  contextCopy = context;
  v17 = objc_alloc_init(CMFreeFormShapeBuilder);
  [(CMFreeFormShapeBuilder *)v17 setPath:pathCopy];
  [(CMLineShapeBuilder *)v17 setStroke:strokeCopy];
  -[CMShapeBuilder setFileFormat:](v17, "setFileFormat:", [stateCopy sourceFormat]);
  [(CMFreeFormShapeBuilder *)v17 setSpace:1.0, 1.0];
  if (contextCopy)
  {
    [contextCopy currentTransform];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18 = [(CMFreeFormShapeBuilder *)v17 copyShapeWithTransform:v19];
  if (v18)
  {
    [self _renderCGPath:v18 stroke:strokeCopy fill:fillCopy orientedBounds:0 state:stateCopy drawingContext:contextCopy];
    CGPathRelease(v18);
  }
}

+ (void)renderLine:(int)line stroke:(id)stroke adjustValues:(id)values orientedBounds:(id)bounds state:(id)state drawingContext:(id)context
{
  v12 = *&line;
  strokeCopy = stroke;
  valuesCopy = values;
  boundsCopy = bounds;
  stateCopy = state;
  contextCopy = context;
  v19 = objc_alloc_init(CMLineShapeBuilder);
  [(CMShapeBuilder *)v19 setOrientedBounds:boundsCopy];
  [(CMShapeBuilder *)v19 setShapeType:v12];
  [(CMLineShapeBuilder *)v19 setStroke:strokeCopy];
  [(CMShapeBuilder *)v19 setAdjustValues:valuesCopy];
  -[CMShapeBuilder setFileFormat:](v19, "setFileFormat:", [stateCopy sourceFormat]);
  memset(&v23, 0, sizeof(v23));
  if (v19)
  {
    [(CMShapeBuilder *)v19 affineTransform];
    if (contextCopy)
    {
LABEL_3:
      [contextCopy currentTransform];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (contextCopy)
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
    [self _renderCGPath:v20 stroke:strokeCopy fill:0 orientedBounds:boundsCopy state:stateCopy drawingContext:contextCopy];
    CGPathRelease(v20);
  }
}

+ (void)renderCanonicalShape:(int)shape fill:(id)fill stroke:(id)stroke adjustValues:(id)values orientedBounds:(id)bounds state:(id)state drawingContext:(id)context
{
  v13 = *&shape;
  fillCopy = fill;
  strokeCopy = stroke;
  valuesCopy = values;
  boundsCopy = bounds;
  stateCopy = state;
  contextCopy = context;
  v21 = objc_alloc_init(CMCanonicalShapeBuilder);
  [(CMShapeBuilder *)v21 setOrientedBounds:boundsCopy];
  [(CMShapeBuilder *)v21 setShapeType:v13];
  [(CMShapeBuilder *)v21 setAdjustValues:valuesCopy];
  -[CMShapeBuilder setFileFormat:](v21, "setFileFormat:", [stateCopy sourceFormat]);
  memset(&v25, 0, sizeof(v25));
  if (v21)
  {
    [(CMCanonicalShapeBuilder *)v21 affineTransform];
    if (contextCopy)
    {
LABEL_3:
      [contextCopy currentTransform];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (contextCopy)
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
    [self _renderCGPath:v22 stroke:strokeCopy fill:fillCopy orientedBounds:boundsCopy state:stateCopy drawingContext:contextCopy];
    CGPathRelease(v22);
  }
}

+ (void)_renderCGPath:(CGPath *)path stroke:(id)stroke fill:(id)fill orientedBounds:(id)bounds state:(id)state drawingContext:(id)context
{
  strokeCopy = stroke;
  fillCopy = fill;
  stateCopy = state;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [self copyImageFromOADImageFill:fillCopy withContext:contextCopy];
    if (v16)
    {
      [contextCopy setFillImage:v16];
      CGImageRelease(v16);
    }

    [self _setupDrawingStyleInDrawingContext:contextCopy fill:fillCopy stroke:strokeCopy state:stateCopy];
    [contextCopy addPath:path];
    [contextCopy setFillImage:0];
  }

  else
  {
    [self _setupDrawingStyleInDrawingContext:contextCopy fill:fillCopy stroke:strokeCopy state:stateCopy];
    [contextCopy addPath:path];
  }
}

+ (CGColor)_copyCGColorFromOADColor:(id)color andState:(id)state
{
  colorCopy = color;
  stateCopy = state;
  if (colorCopy)
  {
    v7 = [CMColorProperty nsColorFromOADColor:colorCopy state:stateCopy];
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

+ (CGColor)_copyCGColorFromOADFill:(id)fill andState:(id)state
{
  fillCopy = fill;
  stateCopy = state;
  if (fillCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [CMColorProperty nsColorFromOADFill:fillCopy state:stateCopy];
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

+ (CGImage)copyImageFromOADImageFill:(id)fill withMapper:(id)mapper
{
  fillCopy = fill;
  mapperCopy = mapper;
  if (![fillCopy isBlipRefOverridden])
  {
    blip = 0;
    goto LABEL_9;
  }

  blipRef = [fillCopy blipRef];
  blip = [blipRef blip];
  if (blip)
  {

LABEL_4:
    mainSubBlip = [blip mainSubBlip];
    load = [mainSubBlip load];

    if (load)
    {
      mainSubBlip2 = [blip mainSubBlip];
      blipRef = [mainSubBlip2 data];

      if (blipRef)
      {
        v12 = CGImageSourceCreateWithData(blipRef, 0);
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

  index = [blipRef index];
  if (index < 1)
  {
    blip = 0;
    goto LABEL_14;
  }

  blip = [mapperCopy blipAtIndex:index];

  if (blip)
  {
    goto LABEL_4;
  }

LABEL_9:
  ImageAtIndex = 0;
LABEL_16:

  return ImageAtIndex;
}

+ (CGImage)copyImageFromOADImageFill:(id)fill withContext:(id)context
{
  fillCopy = fill;
  mapper = [context mapper];
  v8 = [self copyImageFromOADImageFill:fillCopy withMapper:mapper];

  return v8;
}

+ (void)_setupDrawingStyleInDrawingContext:(id)context fill:(id)fill stroke:(id)stroke state:(id)state
{
  contextCopy = context;
  fillCopy = fill;
  stateCopy = state;
  [self _setupDrawingStyleInDrawingContext:contextCopy stroke:stroke state:stateCopy];
  if (!fillCopy || (GenericRGBA = [self _copyCGColorFromOADFill:fillCopy andState:stateCopy]) == 0)
  {
    GenericRGBA = CMShapeRendererCreateGenericRGBA(0.0, 0.0, 0.0, 0.0);
  }

  [contextCopy setFillColor:GenericRGBA];
  CGColorRelease(GenericRGBA);
}

+ (void)_setupDrawingStyleInDrawingContext:(id)context stroke:(id)stroke state:(id)state
{
  contextCopy = context;
  strokeCopy = stroke;
  stateCopy = state;
  if (strokeCopy)
  {
    if (![strokeCopy isFillOverridden] || (objc_msgSend(strokeCopy, "fill"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0))
    {
      GenericRGBA = CMShapeRendererCreateGenericRGBA(0.0, 0.0, 0.0, 0.0);
      [contextCopy setStrokeColor:GenericRGBA];
      [contextCopy setFillColor:GenericRGBA];
      CGColorRelease(GenericRGBA);
      goto LABEL_16;
    }

    color = [strokeCopy color];
    if (!color)
    {
      color = [strokeCopy fill];
      if (!color)
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
        v12Color = [color color];
      }

      else
      {
LABEL_10:
        v12Color = 0;
      }

      color = v12Color;
    }

    v15 = [self _copyCGColorFromOADColor:color andState:stateCopy];
    if (v15)
    {
      [contextCopy setStrokeColor:v15];
      [contextCopy setFillColor:v15];
      CGColorRelease(v15);
    }

    [strokeCopy width];
    [contextCopy setLineWidth:?];
    dash = [strokeCopy dash];
    [self _setupDrawingStyleInDrawingContext:contextCopy dash:dash state:stateCopy];

    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_setupDrawingStyleInDrawingContext:(id)context dash:(id)dash state:(id)state
{
  contextCopy = context;
  dashCopy = dash;
  stateCopy = state;
  if (dashCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    if ([dashCopy type])
    {
      equivalentCustomDash = [dashCopy equivalentCustomDash];

      dashCopy = equivalentCustomDash;
LABEL_5:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_opt_new();
        v11 = MEMORY[0x277CCABB0];
        [dashCopy dash];
        v12 = [v11 numberWithFloat:?];
        [v10 addObject:v12];

        v13 = MEMORY[0x277CCABB0];
        [dashCopy space];
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
        stops = [dashCopy stops];
        v17 = [stops count];
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
            v23 = [stops objectAtIndexedSubscript:v21];
            [v23 dash];
            v24 = [v22 numberWithFloat:?];
            [v20 addObject:v24];

            v25 = MEMORY[0x277CCABB0];
            v26 = [stops objectAtIndexedSubscript:v21];
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

      [contextCopy setLineDash:v20];
      goto LABEL_19;
    }

    [contextCopy setLineDash:0];
  }

LABEL_20:
}

@end