@interface DKInkThumbnailRenderer
+ (BOOL)_drawDebugPatternInGLContext:(id)a3 inSize:(CGSize)a4;
+ (CGPath)_newStrokedInterpolatedPathWithDrawing:(id)a3 inSize:(CGSize)a4 displayScale:(double)a5;
+ (CGSize)sizeForDrawing:(id)a3 inSize:(CGSize)a4;
+ (double)scaleToFitDrawing:(id)a3 inSize:(CGSize)a4;
+ (id)_imageForDrawingUsingCG:(id)a3 fittingInSize:(CGSize)a4 displayScale:(double)a5 color:(id)a6;
+ (id)_imageForDrawingUsingGL:(id)a3 fittingInSize:(CGSize)a4 displayScale:(double)a5 color:(id)a6;
+ (id)imageForDrawing:(id)a3 fittingInSize:(CGSize)a4 backingScale:(double)a5 color:(id)a6 highFidelity:(BOOL)a7;
+ (id)imageForDrawing:(id)a3 fittingInSize:(CGSize)a4 color:(id)a5 highFidelity:(BOOL)a6;
+ (void)_drawPath:(id)a3 atScale:(double)a4 inRect:(CGRect)a5 inkColor:(id)a6 backgroundColor:(id)a7 inContext:(CGContext *)a8;
+ (void)_interpolateDrawing:(id)a3 inSize:(CGSize)a4 displayScale:(double)a5 ellipseHandler:(id)a6;
@end

@implementation DKInkThumbnailRenderer

+ (CGSize)sizeForDrawing:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  if (DKDrawingIsValid(v6))
  {
    [objc_opt_class() scaleToFitDrawing:v6 inSize:{width, height}];
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, v7, v7);
    [v6 strokesFrame];
    v16 = v17;
    v20 = CGRectApplyAffineTransform(v19, &v16);
    x = v20.origin.x;
    y = v20.origin.y;
    v10 = v20.size.width;
    v11 = v20.size.height;
    v12 = fmax(CGRectGetWidth(v20), 0.0);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = v10;
    v21.size.height = v11;
    v13 = fmax(CGRectGetHeight(v21), 0.0);
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (id)imageForDrawing:(id)a3 fittingInSize:(CGSize)a4 color:(id)a5 highFidelity:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v10 = a5;
  v11 = a3;
  v12 = [objc_opt_class() imageForDrawing:v11 fittingInSize:v10 backingScale:v6 color:width highFidelity:{height, 0.0}];

  return v12;
}

+ (id)imageForDrawing:(id)a3 fittingInSize:(CGSize)a4 backingScale:(double)a5 color:(id)a6 highFidelity:(BOOL)a7
{
  v7 = a7;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a6;
  if (a5 <= 0.0)
  {
    [DKInkView windowBackingScaleFactor:0];
    a5 = v14;
  }

  if (v7)
  {
    v15 = [MEMORY[0x277D75418] currentDevice];
    if ([v15 dk_deviceSupportsGL])
    {
      v16 = +[DKInkView gpuAvailable];

      if (v16)
      {
        v17 = [objc_opt_class() _imageForDrawingUsingGL:v12 fittingInSize:v13 displayScale:width color:{height, a5}];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v17 = [objc_opt_class() _imageForDrawingUsingCG:v12 fittingInSize:v13 displayScale:width color:{height, a5}];
LABEL_9:
  v18 = v17;

  return v18;
}

+ (double)scaleToFitDrawing:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 canvasBounds];
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  v10 = 1.0;
  if (v11 != *MEMORY[0x277CBF3A8] || v7 != v9)
  {
    [v6 strokesFrame];
    if (v14 != v8 || v13 != v9)
    {
      [v6 strokesFrame];
      x = v23.origin.x;
      y = v23.origin.y;
      v18 = v23.size.width;
      v19 = v23.size.height;
      v20 = height / CGRectGetHeight(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = v18;
      v24.size.height = v19;
      v21 = width / CGRectGetWidth(v24);
      if (v20 < v21)
      {
        v21 = v20;
      }

      v10 = fmin(v21, 2.0);
    }
  }

  return v10;
}

+ (id)_imageForDrawingUsingCG:(id)a3 fittingInSize:(CGSize)a4 displayScale:(double)a5 color:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a6;
  if (DKDrawingIsValid(v10))
  {
    [objc_opt_class() scaleToFitDrawing:v10 inSize:{width, height}];
    v13 = v12;
    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeScale(&v28, v12, v12);
    [v10 strokesFrame];
    v27 = v28;
    v32 = CGRectApplyAffineTransform(v31, &v27);
    x = v32.origin.x;
    y = v32.origin.y;
    v16 = v32.size.width;
    v17 = v32.size.height;
    v25 = height;
    v18 = ceil(CGRectGetWidth(v32));
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = v16;
    v33.size.height = v17;
    v19 = ceil(CGRectGetHeight(v33));
    v20 = [DKDrawing copyOfDrawing:v10 toFitInBounds:0.0, 0.0, v18, v19];
    v30.width = v18;
    v30.height = v19;
    UIGraphicsBeginImageContextWithOptions(v30, 0, a5);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);
    v22 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__DKInkThumbnailRenderer__imageForDrawingUsingCG_fittingInSize_displayScale_color___block_invoke;
    v26[3] = &__block_descriptor_56_e7_v24__08l;
    *&v26[4] = a5;
    *&v26[5] = v13;
    v26[6] = CurrentContext;
    [v22 _interpolateDrawing:v20 inSize:v26 displayScale:width ellipseHandler:{v25, a5}];
    v23 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __83__DKInkThumbnailRenderer__imageForDrawingUsingCG_fittingInSize_displayScale_color___block_invoke(uint64_t a1, float32x4_t a2)
{
  v11 = a2.i64[0];
  v3 = *(a1 + 32);
  v4 = DKRenderPointWidthForPoint(a2, v3);
  v5 = *(a1 + 40);
  if (v5 < 0.26)
  {
    v5 = 0.26;
  }

  v6 = ClampToMinWidthCG(v5 * v4, 0.75);
  v9 = *(a1 + 48);
  v10 = v6;

  v7 = *&v11 - v6 * 0.5;
  v8 = *(&v11 + 1) - v6 * 0.5;
  CGContextFillEllipseInRect(v9, *(&v6 - 2));
}

+ (void)_interpolateDrawing:(id)a3 inSize:(CGSize)a4 displayScale:(double)a5 ellipseHandler:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a6;
  if ([v7 totalPoints] >= 1)
  {
    [v7 strokes];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v58 = 0u;
    v39 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v39)
    {
      v38 = *v56;
      do
      {
        v9 = 0;
        do
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v9;
          v10 = [*(*(&v55 + 1) + 8 * v9) strokePoints];
          v11 = [v10 count];
          v12 = v11 - 2;
          if (v11 != 2)
          {
            v13 = 0;
            do
            {
              v14 = [v10 objectAtIndexedSubscript:v13];
              v15 = v13 + 2;
              v16 = [v10 objectAtIndexedSubscript:v13 + 2];
              v17 = [v10 objectAtIndexedSubscript:v13 + 1];
              [v14 location];
              v51 = v18;
              [v14 location];
              v48 = v19;
              [v14 velocity];
              v44 = v20;
              [v14 force];
              v21.f64[0] = v44;
              v21.f64[1] = v22;
              v23.f64[0] = v51;
              v23.f64[1] = v48;
              *&v52 = vcvt_hight_f32_f64(vcvt_f32_f64(v23), v21).u64[0];
              [v16 location];
              v49 = v24;
              [v16 location];
              v45 = v25;
              [v16 velocity];
              v42 = v26;
              [v16 force];
              v27.f64[0] = v42;
              v27.f64[1] = v28;
              v29.f64[0] = v49;
              v29.f64[1] = v45;
              *&v50 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v27).u64[0];
              [v17 location];
              v46 = v30;
              [v17 location];
              v43 = v31;
              [v17 velocity];
              v41 = v32;
              [v17 force];
              v33.f64[0] = v41;
              v33.f64[1] = v34;
              v35.f64[0] = v46;
              v35.f64[1] = v43;
              *&v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v33).u64[0];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __81__DKInkThumbnailRenderer__interpolateDrawing_inSize_displayScale_ellipseHandler___block_invoke;
              v53[3] = &unk_278FB7818;
              v54 = v8;
              LODWORD(v36) = 1059761370;
              [DKPointSmoothing _interpolateFromPoint:v53 toPoint:v52 withControlPoint:v50 atUnitScale:v47 emissionHandler:v36];

              v13 = v15;
            }

            while (v15 < v12);
          }

          ++v9;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v39);
    }
  }
}

uint64_t __81__DKInkThumbnailRenderer__interpolateDrawing_inSize_displayScale_ellipseHandler___block_invoke(uint64_t result, __n128 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      result = *(v5 + 32);
      if (result)
      {
        result = (*(result + 16))(*a2);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

+ (CGPath)_newStrokedInterpolatedPathWithDrawing:(id)a3 inSize:(CGSize)a4 displayScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  Mutable = CGPathCreateMutable();
  v10 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__DKInkThumbnailRenderer__newStrokedInterpolatedPathWithDrawing_inSize_displayScale___block_invoke;
  v12[3] = &__block_descriptor_48_e7_v24__08l;
  *&v12[4] = a5;
  v12[5] = Mutable;
  [v10 _interpolateDrawing:v8 inSize:v12 displayScale:width ellipseHandler:{height, a5}];

  return Mutable;
}

void __85__DKInkThumbnailRenderer__newStrokedInterpolatedPathWithDrawing_inSize_displayScale___block_invoke(uint64_t a1, float32x4_t a2)
{
  v10 = a2.i64[0];
  v3 = *(a1 + 32);
  v4 = DKRenderPointWidthForPoint(a2, v3);
  v5 = (*(&v10 + 1) - (v4 * 0.5));
  v6 = v4;
  v7 = *(a1 + 40);
  v8 = (*&v10 - (v4 * 0.5));
  v9 = v6;

  CGPathAddEllipseInRect(v7, 0, *&v8);
}

+ (void)_drawPath:(id)a3 atScale:(double)a4 inRect:(CGRect)a5 inkColor:(id)a6 backgroundColor:(id)a7 inContext:(CGContext *)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v20 = a7;
  v16 = a6;
  v17 = a3;
  CGContextSaveGState(a8);
  if (v20)
  {
    [v20 set];
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGContextFillRect(a8, v22);
  }

  [v17 bounds];
  v19 = v18;
  CGContextScaleCTM(a8, a4, a4);
  CGContextTranslateCTM(a8, -(v19 + -10.0), 0.0);
  [v16 set];

  [v17 fill];
  CGContextRestoreGState(a8);
}

+ (id)_imageForDrawingUsingGL:(id)a3 fittingInSize:(CGSize)a4 displayScale:(double)a5 color:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a6;
  if (+[DKGLUtilities gpuAvailable]&& DKDrawingIsValid(v10))
  {
    [objc_opt_class() scaleToFitDrawing:v10 inSize:{width, height}];
    v13 = v12;
    memset(&v32, 0, sizeof(v32));
    CGAffineTransformMakeScale(&v32, v12, v12);
    [v10 strokesFrame];
    v31 = v32;
    v35 = CGRectApplyAffineTransform(v34, &v31);
    x = v35.origin.x;
    y = v35.origin.y;
    v16 = v35.size.width;
    v17 = v35.size.height;
    v18 = ceil(CGRectGetWidth(v35));
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = v16;
    v36.size.height = v17;
    v19 = ceil(CGRectGetHeight(v36));
    v20 = [MEMORY[0x277CD9388] currentContext];
    v21 = +[DKGLUtilities createSharedGLContext];
    if (v21)
    {
      [DKGLUtilities setCurrentGLContext:v21];
    }

    v22 = [DKDrawing copyOfDrawing:v10 toFitInBounds:0.0, 0.0, v18, v19];
    v23 = [MEMORY[0x277CBEB18] array];
    v24 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__DKInkThumbnailRenderer__imageForDrawingUsingGL_fittingInSize_displayScale_color___block_invoke;
    v29[3] = &unk_278FB7860;
    v25 = v23;
    v30 = v25;
    [v24 _interpolateDrawing:v22 inSize:v29 displayScale:v18 ellipseHandler:{v19, a5}];

    if (+[DKGLUtilities gpuAvailable])
    {
      v26 = -[DKOpenGLRenderer initWithBounds:scale:bufferSize:sharedContext:]([DKOpenGLRenderer alloc], "initWithBounds:scale:bufferSize:sharedContext:", [v25 count], 1, 0.0, 0.0, v18, v19, a5);
      [(DKOpenGLRenderer *)v26 setLineWidthScale:v13];
      [(DKOpenGLRenderer *)v26 setInkColor:v11];
      [(DKOpenGLRenderer *)v26 setDrawingEnabled:0];
      [(DKOpenGLRenderer *)v26 addPoints:v25 withSegmentLength:25];
      [(DKOpenGLRenderer *)v26 setDrawingEnabled:1];
      [(DKOpenGLRenderer *)v26 redrawEntireDrawingImmediatelyWithLayeredBlending:0];
      v27 = [(DKOpenGLRenderer *)v26 snapshotImage];
    }

    else
    {
      v27 = 0;
    }

    [DKGLUtilities setCurrentGLContext:v20];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __83__DKInkThumbnailRenderer__imageForDrawingUsingGL_fittingInSize_displayScale_color___block_invoke(uint64_t a1, int8x16_t a2)
{
  v3 = fminf(*&a2.i32[2], 3.0) / 3.0;
  v6 = vcvtq_f64_f32(*a2.i8);
  v7 = 0;
  v4 = vextq_s8(a2, a2, 8uLL);
  *v4.i32 = v3;
  v8 = vcvtq_f64_f32(*v4.i8);
  v5 = [MEMORY[0x277CCAE60] dk_valueWithRenderPoint:&v6];
  [*(a1 + 32) addObject:v5];
}

+ (BOOL)_drawDebugPatternInGLContext:(id)a3 inSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  glViewport(0, 0, a4.width, a4.height);
  +[DKGLUtilities setCurrentClearColor];
  glClear(0x4000u);
  Program = glCreateProgram();
  glAttachShader(Program, [DKGLUtilities compileShader:@"color" ofType:@"vert"]);
  glAttachShader(Program, [DKGLUtilities compileShader:@"color" ofType:@"frag"]);
  glBindAttribLocation(Program, 0, "iPosition");
  glBindAttribLocation(Program, 1u, "iTexCoord");
  glLinkProgram(Program);
  params = 0;
  glGetProgramiv(Program, 0x8B82u, &params);
  v7 = params;
  if (params)
  {
    glUseProgram(Program);
    v36 = 0u;
    v37 = 0u;
    *value = 0u;
    v35 = 0u;
    *&v8 = width;
    v9 = height;
    *&v10 = v9;
    [DKGLUtilities setProjectionMatrixForWidth:1 height:value flipped:COERCE_DOUBLE(v8) matrix:v10];
    UniformLocation = glGetUniformLocation(Program, "uModelViewProjection");
    glUniformMatrix4fv(UniformLocation, 1, 0, value);
    *v = xmmword_249D9D940;
    v12 = glGetUniformLocation(Program, "uColor");
    glUniform4fv(v12, 1, v);
    *&v13 = *&v8 * 0.5;
    *&v14 = v9 * 0.5;
    [DKGLUtilities drawQuadAtX:0.0 Y:0.0 width:v13 height:v14];
    *v32 = xmmword_249D9D950;
    v15 = glGetUniformLocation(Program, "uColor");
    glUniform4fv(v15, 1, v32);
    *&v16 = *&v8 * 0.5;
    *&v17 = *&v8 * 0.5;
    *&v18 = v9 * 0.5;
    [DKGLUtilities drawQuadAtX:v16 Y:0.0 width:v17 height:v18];
    *v31 = xmmword_249D9D960;
    v19 = glGetUniformLocation(Program, "uColor");
    glUniform4fv(v19, 1, v31);
    *&v20 = v9 * 0.5;
    *&v21 = *&v8 * 0.5;
    *&v22 = v9 * 0.5;
    [DKGLUtilities drawQuadAtX:0.0 Y:v20 width:v21 height:v22];
    *v30 = xmmword_249D9D970;
    v23 = glGetUniformLocation(Program, "uColor");
    glUniform4fv(v23, 1, v30);
    *&v24 = *&v8 * 0.5;
    *&v25 = v9 * 0.5;
    *&v26 = *&v8 * 0.5;
    *&v27 = v9 * 0.5;
    [DKGLUtilities drawQuadAtX:v24 Y:v25 width:v26 height:v27];
  }

  else
  {
    NSLog(&cfstr_ErrorLinkingCo.isa);
    Error = glGetError();
    if (Error)
    {
      printf("glError: %04x caught at %s:%u\n", Error, "/Library/Caches/com.apple.xbs/Sources/DrawingKit/DrawingKit/Source/Shared/DKInkThumbnailRenderer.m", 449);
    }
  }

  return v7 != 0;
}

@end