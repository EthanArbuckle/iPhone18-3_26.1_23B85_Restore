@interface CUIThemeGradient
- (CGFunctionRef)_newColorShaderForDistance:(CGFunctionRef)result;
- (CGFunctionRef)colorShader;
- (CGImage)_createRadialGradientImageWithWidth:(double)width height:(double)height;
- (CUIColor)_colorFromPSDGradientColor:(CGFloat)color;
- (CUIThemeGradient)initWithColors:(id)colors colorlocations:(id)colorlocations colorMidpoints:(id)midpoints opacities:(id)opacities opacityLocations:(id)locations opacityMidpoints:(id)opacityMidpoints smoothingCoefficient:(double)coefficient fillColor:(id)self0 colorSpace:(CGColorSpace *)self1 dither:(BOOL)self2;
- (NSMutableArray)_psdGradientColorStopsWithColors:(void *)colors locations:(uint64_t)locations colorSpace:;
- (NSMutableArray)_psdGradientOpacityStopsWithOpacities:(void *)opacities locations:;
- (const)_psdGradientColorWithColor:(uint64_t)color colorSpace:;
- (id)_initWithGradientEvaluator:(id)evaluator colorSpace:(CGColorSpace *)space;
- (id)colorLocations;
- (id)colorStops;
- (id)fillColor;
- (id)gradientByApplyingEffects:(id)effects;
- (id)interpolatedColorAtLocation:(double)location;
- (id)opacityLocations;
- (id)opacityStops;
- (void)_tintColorStopsWithEffects:(uint64_t)effects;
- (void)dealloc;
- (void)drawAngleGradientInRect:(CGRect)rect relativeCenterPosition:(CGPoint)position withContext:(CGContext *)context;
- (void)drawFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint options:(unint64_t)options withContext:(CGContext *)context;
- (void)drawInRect:(CGRect)rect angle:(double)angle options:(unint64_t)options withContext:(CGContext *)context;
@end

@implementation CUIThemeGradient

- (id)_initWithGradientEvaluator:(id)evaluator colorSpace:(CGColorSpace *)space
{
  v8.receiver = self;
  v8.super_class = CUIThemeGradient;
  v6 = [(CUIThemeGradient *)&v8 init];
  if (v6)
  {
    v6->gradientEvaluator = evaluator;
    v6->colorSpace = CGColorSpaceRetain(space);
  }

  return v6;
}

- (CUIThemeGradient)initWithColors:(id)colors colorlocations:(id)colorlocations colorMidpoints:(id)midpoints opacities:(id)opacities opacityLocations:(id)locations opacityMidpoints:(id)opacityMidpoints smoothingCoefficient:(double)coefficient fillColor:(id)self0 colorSpace:(CGColorSpace *)self1 dither:(BOOL)self2
{
  if ([colors count])
  {
    v23 = [colors count];
    if (v23 != [colorlocations count])
    {
      [CUIThemeGradient initWithColors:a2 colorlocations:self colorMidpoints:? opacities:? opacityLocations:? opacityMidpoints:? smoothingCoefficient:? fillColor:? colorSpace:? dither:?];
    }

    v24 = [opacities count];
    if (v24 != [locations count])
    {
      [CUIThemeGradient initWithColors:a2 colorlocations:self colorMidpoints:? opacities:? opacityLocations:? opacityMidpoints:? smoothingCoefficient:? fillColor:? colorSpace:? dither:?];
    }

    [(CUIThemeGradient *)self _psdGradientColorWithColor:color colorSpace:space];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [CUIPSDGradientEvaluator alloc];
    v34 = [(CUIThemeGradient *)self _psdGradientColorStopsWithColors:colors locations:colorlocations colorSpace:space];
    v35 = [(CUIPSDGradientEvaluator *)v33 initWithColorStops:v34 colorMidpoints:midpoints opacityStops:[(CUIThemeGradient *)self _psdGradientOpacityStopsWithOpacities:opacities locations:locations] opacityMidpoints:opacityMidpoints smoothingCoefficient:dither fillColor:coefficient dither:v26, v28, v30, v32];
    v36 = [(CUIThemeGradient *)self _initWithGradientEvaluator:v35 colorSpace:space];

    return v36;
  }

  else
  {
    selfCopy = self;
    return 0;
  }
}

- (id)gradientByApplyingEffects:(id)effects
{
  selfCopy = self;
  if (effects)
  {
    v6 = [self->gradientEvaluator copy];
    selfCopy = [[CUIThemeGradient alloc] _initWithGradientEvaluator:v6 colorSpace:selfCopy->colorSpace];
    [(CUIThemeGradient *)selfCopy _tintColorStopsWithEffects:effects];
  }

  return selfCopy;
}

- (id)colorStops
{
  colorStops = [self->gradientEvaluator colorStops];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [colorStops count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [colorStops countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(colorStops);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        isDoubleStop = [v9 isDoubleStop];
        v11 = 1;
        do
        {
          if ([v9 isDoubleStop])
          {
            if (v11)
            {
              [v9 leadInColor];
            }

            else
            {
              [v9 leadOutColor];
            }
          }

          else
          {
            [v9 gradientColor];
          }

          [(NSMutableArray *)v4 addObject:[(CUIThemeGradient *)self _colorFromPSDGradientColor:v12, v13, v14, v15]];
          v16 = isDoubleStop & v11;
          v11 = 0;
        }

        while ((v16 & 1) != 0);
      }

      v6 = [colorStops countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)colorLocations
{
  colorStops = [self->gradientEvaluator colorStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [colorStops count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [colorStops countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(colorStops);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        isDoubleStop = [v8 isDoubleStop];
        [v8 location];
        [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:?]];
        if (isDoubleStop)
        {
          [v8 location];
          [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:v10 + 0.01]];
        }
      }

      v5 = [colorStops countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)opacityStops
{
  opacityStops = [self->gradientEvaluator opacityStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [opacityStops count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [opacityStops countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(opacityStops);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        isDoubleStop = [v8 isDoubleStop];
        v10 = 1;
        do
        {
          if ([v8 isDoubleStop])
          {
            if (v10)
            {
              [v8 leadInOpacity];
            }

            else
            {
              [v8 leadOutOpacity];
            }
          }

          else
          {
            [v8 opacity];
          }

          [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:?]];
          v11 = isDoubleStop & v10;
          v10 = 0;
        }

        while ((v11 & 1) != 0);
      }

      v5 = [opacityStops countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)opacityLocations
{
  opacityStops = [self->gradientEvaluator opacityStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [opacityStops count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [opacityStops countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(opacityStops);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        isDoubleStop = [v8 isDoubleStop];
        [v8 location];
        if (isDoubleStop)
        {
          [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:v10 + -0.01]];
          [v8 location];
        }

        [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:?]];
      }

      v5 = [opacityStops countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->colorSpace);
  colorShader = self->colorShader;
  if (colorShader)
  {
    CGFunctionRelease(colorShader);
  }

  gradientImage = self->_gradientImage;
  if (gradientImage)
  {
    CGImageRelease(gradientImage);
  }

  v5.receiver = self;
  v5.super_class = CUIThemeGradient;
  [(CUIThemeGradient *)&v5 dealloc];
}

- (void)drawInRect:(CGRect)rect angle:(double)angle options:(unint64_t)options withContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  FrameIntersectionWithAxis(&v15, &v13, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, angle);
  CGContextSaveGState(context);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGContextClipToRect(context, v18);
  [(CUIThemeGradient *)self drawFromPoint:options toPoint:context options:v15 withContext:v16, v13, v14];

  CGContextRestoreGState(context);
}

- (void)drawAngleGradientInRect:(CGRect)rect relativeCenterPosition:(CGPoint)position withContext:(CGContext *)context
{
  y = position.y;
  x = position.x;
  height = rect.size.height;
  width = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  gradientImage = self->_gradientImage;
  if (!gradientImage)
  {
    gradientImage = [(CUIThemeGradient *)self _createRadialGradientImageWithWidth:256.0 height:256.0];
    self->_gradientImage = gradientImage;
  }

  v14 = v11 + width * 0.5;
  v15 = v10 + height * 0.5;
  v16 = v15 - y;
  if (v14 - x <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v11 - (v14 - x);
  }

  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10 - v16;
  }

  v19 = width + vabdd_f64(v14, x);
  v20 = height + vabdd_f64(v15, y);

  CGContextDrawImage(context, *&v17, gradientImage);
}

- (void)drawFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint options:(unint64_t)options withContext:(CGContext *)context
{
  optionsCopy = options;
  y = toPoint.y;
  x = toPoint.x;
  v10 = point.y;
  v11 = point.x;
  v13 = point.x == toPoint.x || point.y == toPoint.y;
  if (v13 && [self->gradientEvaluator hasEdgePixel])
  {
    v14 = vabdd_f64(x, v11);
    v15 = vabdd_f64(y, v10);
    if (v14 <= v15)
    {
      v14 = v15;
    }

    colorShader = [(CUIThemeGradient *)self _newColorShaderForDistance:v14];
    v17 = 1;
  }

  else
  {
    colorShader = [(CUIThemeGradient *)self colorShader];
    v17 = 0;
  }

  v20.x = v11;
  v20.y = v10;
  v21.x = x;
  v21.y = y;
  Axial = CGShadingCreateAxial(self->colorSpace, v20, v21, colorShader, optionsCopy & 1, (optionsCopy & 2) != 0);
  CGContextDrawShading(context, Axial);
  CGShadingRelease(Axial);
  if (v17)
  {

    CGFunctionRelease(colorShader);
  }
}

- (id)interpolatedColorAtLocation:(double)location
{
  [self->gradientEvaluator _smoothedGradientColorAtLocation:location];
  components[0] = v4;
  components[1] = v5;
  components[2] = v6;
  components[3] = v7;
  v8 = CGColorCreate(self->colorSpace, components);
  v9 = [CUIColor colorWithCGColor:v8];
  CGColorRelease(v8);
  return v9;
}

- (CGImage)_createRadialGradientImageWithWidth:(double)width height:(double)height
{
  result = CreateARGBBitmapContext(width, height, 1.0);
  if (result)
  {
    v8 = result;
    Data = CGBitmapContextGetData(result);
    SRGB = _CUIColorSpaceGetSRGB();
    if (height > 0.0)
    {
      v11 = SRGB;
      v12 = 0;
      v13 = 0.0;
      v23 = vdupq_n_s64(0x406FE00000000000uLL);
      do
      {
        if (width > 0.0)
        {
          v14 = v13 - height * 0.5;
          v15 = 0.0;
          v16 = 1;
          do
          {
            v17 = atan2(v14, v15 - width * 0.5);
            if (v14 < 0.0)
            {
              v17 = v17 + 6.28318531;
            }

            v18 = [(CUIThemeGradient *)self interpolatedColorAtLocation:v17 / 6.28318531, *&v23];
            cGColor = [v18 CGColor];
            if (CGColorGetColorSpace(cGColor) != v11)
            {
              cGColor = [objc_msgSend(v18 colorUsingCGColorSpace:{v11), "CGColor"}];
            }

            Components = CGColorGetComponents(cGColor);
            v21 = vshl_u32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(Components + 1), v23))), 0x800000010);
            *Data++ = v21.i32[0] | ((*Components * 255.0) << 24) | (Components[3] * 255.0) | v21.i32[1];
            v15 = v16++;
          }

          while (v15 < width);
        }

        v13 = ++v12;
      }

      while (v12 < height);
    }

    Image = CGBitmapContextCreateImage(v8);
    CGContextRelease(v8);
    return Image;
  }

  return result;
}

- (NSMutableArray)_psdGradientOpacityStopsWithOpacities:(void *)opacities locations:
{
  if (!self)
  {
    return 0;
  }

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a2 count]);
  v13 = OUTLINED_FUNCTION_4_2(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v42);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v36;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(a2);
        }

        v19 = *(v35 + 8 * v17);
        v20 = [CUIPSDGradientOpacityStop alloc];
        v15 = v18 + 1;
        [objc_msgSend(opacities objectAtIndex:{v18), "doubleValue"}];
        v22 = v21;
        [v19 doubleValue];
        v24 = [(CUIPSDGradientOpacityStop *)v20 initWithLocation:v22 opacity:v23];
        [(NSMutableArray *)v5 addObject:v24];

        v17 = v17 + 1;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v43);
    }

    while (v14);
  }

  return v5;
}

- (const)_psdGradientColorWithColor:(uint64_t)color colorSpace:
{
  if (result)
  {
    v4 = result;
    v5 = [a2 colorUsingCGColorSpace:?];
    NumberOfComponents = CGColorGetNumberOfComponents([v5 CGColor]);
    result = CGColorGetComponents([v5 CGColor]);
    if (NumberOfComponents != 4 && NumberOfComponents != 2)
    {
      return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__psdGradientColorWithColor_colorSpace_ file:v4 lineNumber:@"CUIThemeGradient.m" description:129, @"CUIThemeGradient can't initialize with unsupported color space: %@", color];
    }
  }

  return result;
}

- (NSMutableArray)_psdGradientColorStopsWithColors:(void *)colors locations:(uint64_t)locations colorSpace:
{
  if (!self)
  {
    return 0;
  }

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a2 count]);
  v8 = [a2 countByEnumeratingWithState:OUTLINED_FUNCTION_2_1() objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(a2);
        }

        [(CUIThemeGradient *)self _psdGradientColorWithColor:locations colorSpace:?];
        v14 = [CUIPSDGradientColorStop alloc];
        v10 = v13 + 1;
        [objc_msgSend(colors objectAtIndex:{v13), "doubleValue"}];
        OUTLINED_FUNCTION_3_2();
        v16 = [v15 initWithLocation:? gradientColor:?];
        [(NSMutableArray *)v7 addObject:v16];

        v12 = v12 + 1;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [a2 countByEnumeratingWithState:v19 objects:v22 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)_tintColorStopsWithEffects:(uint64_t)effects
{
  if (effects)
  {
    v18 = *(effects + 8);
    colorStops = [v18 colorStops];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(colorStops, "count")}];
    obj = colorStops;
    v6 = [colorStops countByEnumeratingWithState:OUTLINED_FUNCTION_2_1() objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(v21 + 8 * i);
          [v10 gradientColor];
          components[0] = v11;
          components[1] = v12;
          components[2] = v13;
          components[3] = v14;
          v15 = CGColorCreate(*(effects + 24), components);
          v16 = [a2 newColorByProcessingColor:v15];
          CGColorGetComponents(v16);
          [v10 location];
          OUTLINED_FUNCTION_3_2();
          [v5 addObject:{objc_msgSend(v17, "colorStopWithLocation:gradientColor:")}];
          CGColorRelease(v15);
          CGColorRelease(v16);
        }

        v7 = [obj countByEnumeratingWithState:v20 objects:v23 count:16];
      }

      while (v7);
    }

    if (v5)
    {
      [v18 setColorStops:v5 midpoints:{objc_msgSend(v18, "colorMidpointLocations")}];
    }
  }
}

- (CUIColor)_colorFromPSDGradientColor:(CGFloat)color
{
  if (!self)
  {
    return 0;
  }

  components[0] = a2;
  components[1] = color;
  components[2] = a4;
  components[3] = a5;
  v5 = CGColorCreate(*(self + 24), components);
  v6 = [CUIColor colorWithCGColor:v5];
  CGColorRelease(v5);
  return v6;
}

- (id)fillColor
{
  [self->gradientEvaluator fillColor];

  return [(CUIThemeGradient *)self _colorFromPSDGradientColor:v3, v4, v5, v6];
}

- (CGFunctionRef)_newColorShaderForDistance:(CGFunctionRef)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_3();
    callbacks.releaseInfo = GradientEvaluatorRelease;
    v4 = [*(v3 + 8) copy];
    [v4 customizeForDistance:a2];
    CFRetain(v4);

    *domain = xmmword_18E021E70;
    OUTLINED_FUNCTION_1_3();
    return CGFunctionCreate(v4, 1uLL, domain, 4uLL, range, &callbacks);
  }

  return result;
}

- (CGFunctionRef)colorShader
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (!result)
    {
      OUTLINED_FUNCTION_0_3();
      callbacks.releaseInfo = GradientEvaluatorRelease;
      *domain = xmmword_18E021E70;
      OUTLINED_FUNCTION_1_3();
      result = CGFunctionCreate(*(v1 + 1), 1uLL, domain, 4uLL, range, &callbacks);
      *(v1 + 2) = result;
    }
  }

  return result;
}

- (id)initWithColors:(uint64_t)a1 colorlocations:(uint64_t)a2 colorMidpoints:opacities:opacityLocations:opacityMidpoints:smoothingCoefficient:fillColor:colorSpace:dither:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUIThemeGradient.m" lineNumber:172 description:@"CUIThemeGradient needs the same number of colors as there are of color locations for initialization"];
}

- (id)initWithColors:(uint64_t)a1 colorlocations:(uint64_t)a2 colorMidpoints:opacities:opacityLocations:opacityMidpoints:smoothingCoefficient:fillColor:colorSpace:dither:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUIThemeGradient.m" lineNumber:173 description:@"CUIThemeGradient needs the same number of opacities as there are of opacity locations for initialization"];
}

@end