@interface CUIThemeGradient
- (CGFunctionRef)_newColorShaderForDistance:(CGFunctionRef)result;
- (CGFunctionRef)colorShader;
- (CGImage)_createRadialGradientImageWithWidth:(double)a3 height:(double)a4;
- (CUIColor)_colorFromPSDGradientColor:(CGFloat)a3;
- (CUIThemeGradient)initWithColors:(id)a3 colorlocations:(id)a4 colorMidpoints:(id)a5 opacities:(id)a6 opacityLocations:(id)a7 opacityMidpoints:(id)a8 smoothingCoefficient:(double)a9 fillColor:(id)a10 colorSpace:(CGColorSpace *)a11 dither:(BOOL)a12;
- (NSMutableArray)_psdGradientColorStopsWithColors:(void *)a3 locations:(uint64_t)a4 colorSpace:;
- (NSMutableArray)_psdGradientOpacityStopsWithOpacities:(void *)a3 locations:;
- (const)_psdGradientColorWithColor:(uint64_t)a3 colorSpace:;
- (id)_initWithGradientEvaluator:(id)a3 colorSpace:(CGColorSpace *)a4;
- (id)colorLocations;
- (id)colorStops;
- (id)fillColor;
- (id)gradientByApplyingEffects:(id)a3;
- (id)interpolatedColorAtLocation:(double)a3;
- (id)opacityLocations;
- (id)opacityStops;
- (void)_tintColorStopsWithEffects:(uint64_t)a1;
- (void)dealloc;
- (void)drawAngleGradientInRect:(CGRect)a3 relativeCenterPosition:(CGPoint)a4 withContext:(CGContext *)a5;
- (void)drawFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 options:(unint64_t)a5 withContext:(CGContext *)a6;
- (void)drawInRect:(CGRect)a3 angle:(double)a4 options:(unint64_t)a5 withContext:(CGContext *)a6;
@end

@implementation CUIThemeGradient

- (id)_initWithGradientEvaluator:(id)a3 colorSpace:(CGColorSpace *)a4
{
  v8.receiver = self;
  v8.super_class = CUIThemeGradient;
  v6 = [(CUIThemeGradient *)&v8 init];
  if (v6)
  {
    v6->gradientEvaluator = a3;
    v6->colorSpace = CGColorSpaceRetain(a4);
  }

  return v6;
}

- (CUIThemeGradient)initWithColors:(id)a3 colorlocations:(id)a4 colorMidpoints:(id)a5 opacities:(id)a6 opacityLocations:(id)a7 opacityMidpoints:(id)a8 smoothingCoefficient:(double)a9 fillColor:(id)a10 colorSpace:(CGColorSpace *)a11 dither:(BOOL)a12
{
  if ([a3 count])
  {
    v23 = [a3 count];
    if (v23 != [a4 count])
    {
      [CUIThemeGradient initWithColors:a2 colorlocations:self colorMidpoints:? opacities:? opacityLocations:? opacityMidpoints:? smoothingCoefficient:? fillColor:? colorSpace:? dither:?];
    }

    v24 = [a6 count];
    if (v24 != [a7 count])
    {
      [CUIThemeGradient initWithColors:a2 colorlocations:self colorMidpoints:? opacities:? opacityLocations:? opacityMidpoints:? smoothingCoefficient:? fillColor:? colorSpace:? dither:?];
    }

    [(CUIThemeGradient *)self _psdGradientColorWithColor:a10 colorSpace:a11];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [CUIPSDGradientEvaluator alloc];
    v34 = [(CUIThemeGradient *)self _psdGradientColorStopsWithColors:a3 locations:a4 colorSpace:a11];
    v35 = [(CUIPSDGradientEvaluator *)v33 initWithColorStops:v34 colorMidpoints:a5 opacityStops:[(CUIThemeGradient *)self _psdGradientOpacityStopsWithOpacities:a6 locations:a7] opacityMidpoints:a8 smoothingCoefficient:a12 fillColor:a9 dither:v26, v28, v30, v32];
    v36 = [(CUIThemeGradient *)self _initWithGradientEvaluator:v35 colorSpace:a11];

    return v36;
  }

  else
  {
    v21 = self;
    return 0;
  }
}

- (id)gradientByApplyingEffects:(id)a3
{
  v3 = self;
  if (a3)
  {
    v6 = [self->gradientEvaluator copy];
    v3 = [[CUIThemeGradient alloc] _initWithGradientEvaluator:v6 colorSpace:v3->colorSpace];
    [(CUIThemeGradient *)v3 _tintColorStopsWithEffects:a3];
  }

  return v3;
}

- (id)colorStops
{
  v3 = [self->gradientEvaluator colorStops];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 isDoubleStop];
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
          v16 = v10 & v11;
          v11 = 0;
        }

        while ((v16 & 1) != 0);
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)colorLocations
{
  v2 = [self->gradientEvaluator colorStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 isDoubleStop];
        [v8 location];
        [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:?]];
        if (v9)
        {
          [v8 location];
          [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:v10 + 0.01]];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)opacityStops
{
  v2 = [self->gradientEvaluator opacityStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 isDoubleStop];
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
          v11 = v9 & v10;
          v10 = 0;
        }

        while ((v11 & 1) != 0);
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)opacityLocations
{
  v2 = [self->gradientEvaluator opacityStops];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 isDoubleStop];
        [v8 location];
        if (v9)
        {
          [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:v10 + -0.01]];
          [v8 location];
        }

        [(NSMutableArray *)v3 addObject:[NSNumber numberWithDouble:?]];
      }

      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)drawInRect:(CGRect)a3 angle:(double)a4 options:(unint64_t)a5 withContext:(CGContext *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  FrameIntersectionWithAxis(&v15, &v13, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4);
  CGContextSaveGState(a6);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGContextClipToRect(a6, v18);
  [(CUIThemeGradient *)self drawFromPoint:a5 toPoint:a6 options:v15 withContext:v16, v13, v14];

  CGContextRestoreGState(a6);
}

- (void)drawAngleGradientInRect:(CGRect)a3 relativeCenterPosition:(CGPoint)a4 withContext:(CGContext *)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
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

  CGContextDrawImage(a5, *&v17, gradientImage);
}

- (void)drawFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 options:(unint64_t)a5 withContext:(CGContext *)a6
{
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v13 = a3.x == a4.x || a3.y == a4.y;
  if (v13 && [self->gradientEvaluator hasEdgePixel])
  {
    v14 = vabdd_f64(x, v11);
    v15 = vabdd_f64(y, v10);
    if (v14 <= v15)
    {
      v14 = v15;
    }

    v16 = [(CUIThemeGradient *)self _newColorShaderForDistance:v14];
    v17 = 1;
  }

  else
  {
    v16 = [(CUIThemeGradient *)self colorShader];
    v17 = 0;
  }

  v20.x = v11;
  v20.y = v10;
  v21.x = x;
  v21.y = y;
  Axial = CGShadingCreateAxial(self->colorSpace, v20, v21, v16, v7 & 1, (v7 & 2) != 0);
  CGContextDrawShading(a6, Axial);
  CGShadingRelease(Axial);
  if (v17)
  {

    CGFunctionRelease(v16);
  }
}

- (id)interpolatedColorAtLocation:(double)a3
{
  [self->gradientEvaluator _smoothedGradientColorAtLocation:a3];
  components[0] = v4;
  components[1] = v5;
  components[2] = v6;
  components[3] = v7;
  v8 = CGColorCreate(self->colorSpace, components);
  v9 = [CUIColor colorWithCGColor:v8];
  CGColorRelease(v8);
  return v9;
}

- (CGImage)_createRadialGradientImageWithWidth:(double)a3 height:(double)a4
{
  result = CreateARGBBitmapContext(a3, a4, 1.0);
  if (result)
  {
    v8 = result;
    Data = CGBitmapContextGetData(result);
    SRGB = _CUIColorSpaceGetSRGB();
    if (a4 > 0.0)
    {
      v11 = SRGB;
      v12 = 0;
      v13 = 0.0;
      v23 = vdupq_n_s64(0x406FE00000000000uLL);
      do
      {
        if (a3 > 0.0)
        {
          v14 = v13 - a4 * 0.5;
          v15 = 0.0;
          v16 = 1;
          do
          {
            v17 = atan2(v14, v15 - a3 * 0.5);
            if (v14 < 0.0)
            {
              v17 = v17 + 6.28318531;
            }

            v18 = [(CUIThemeGradient *)self interpolatedColorAtLocation:v17 / 6.28318531, *&v23];
            v19 = [v18 CGColor];
            if (CGColorGetColorSpace(v19) != v11)
            {
              v19 = [objc_msgSend(v18 colorUsingCGColorSpace:{v11), "CGColor"}];
            }

            Components = CGColorGetComponents(v19);
            v21 = vshl_u32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(Components + 1), v23))), 0x800000010);
            *Data++ = v21.i32[0] | ((*Components * 255.0) << 24) | (Components[3] * 255.0) | v21.i32[1];
            v15 = v16++;
          }

          while (v15 < a3);
        }

        v13 = ++v12;
      }

      while (v12 < a4);
    }

    Image = CGBitmapContextCreateImage(v8);
    CGContextRelease(v8);
    return Image;
  }

  return result;
}

- (NSMutableArray)_psdGradientOpacityStopsWithOpacities:(void *)a3 locations:
{
  if (!a1)
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
        [objc_msgSend(a3 objectAtIndex:{v18), "doubleValue"}];
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

- (const)_psdGradientColorWithColor:(uint64_t)a3 colorSpace:
{
  if (result)
  {
    v4 = result;
    v5 = [a2 colorUsingCGColorSpace:?];
    NumberOfComponents = CGColorGetNumberOfComponents([v5 CGColor]);
    result = CGColorGetComponents([v5 CGColor]);
    if (NumberOfComponents != 4 && NumberOfComponents != 2)
    {
      return [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__psdGradientColorWithColor_colorSpace_ file:v4 lineNumber:@"CUIThemeGradient.m" description:129, @"CUIThemeGradient can't initialize with unsupported color space: %@", a3];
    }
  }

  return result;
}

- (NSMutableArray)_psdGradientColorStopsWithColors:(void *)a3 locations:(uint64_t)a4 colorSpace:
{
  if (!a1)
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

        [(CUIThemeGradient *)a1 _psdGradientColorWithColor:a4 colorSpace:?];
        v14 = [CUIPSDGradientColorStop alloc];
        v10 = v13 + 1;
        [objc_msgSend(a3 objectAtIndex:{v13), "doubleValue"}];
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

- (void)_tintColorStopsWithEffects:(uint64_t)a1
{
  if (a1)
  {
    v18 = *(a1 + 8);
    v4 = [v18 colorStops];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    obj = v4;
    v6 = [v4 countByEnumeratingWithState:OUTLINED_FUNCTION_2_1() objects:? count:?];
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
          v15 = CGColorCreate(*(a1 + 24), components);
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

- (CUIColor)_colorFromPSDGradientColor:(CGFloat)a3
{
  if (!a1)
  {
    return 0;
  }

  components[0] = a2;
  components[1] = a3;
  components[2] = a4;
  components[3] = a5;
  v5 = CGColorCreate(*(a1 + 24), components);
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