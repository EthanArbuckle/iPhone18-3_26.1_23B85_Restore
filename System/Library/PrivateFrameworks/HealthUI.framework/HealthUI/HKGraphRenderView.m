@interface HKGraphRenderView
- (CGRect)_tightBoundingRectForText:(id)a3 inTextRect:(CGRect)a4 axisRect:(CGRect)a5;
- (CGRect)axisRect;
- (CGSize)drawAttributedText:(id)a3 atPoint:(CGPoint)a4 axisRect:(CGRect)a5 horizontalAlignment:(int64_t)a6 verticalAlignment:(int64_t)a7 exclusion:(id)a8;
- (CGSize)drawText:(id)a3 atPoint:(CGPoint)a4 spaceAvailable:(id)a5 horizontalAlignment:(int64_t)a6 verticalAlignment:(int64_t)a7 hyphenationFactor:(id)a8 textColor:(id)a9 font:(id)a10 clipToAxis:(BOOL)a11 exclusion:(id)a12 isSystemSymbol:(BOOL)a13 isTallText:(BOOL)a14;
- (HKGraphRenderDelegate)renderDelegate;
- (HKGraphRenderView)initWithFrame:(CGRect)a3;
- (double)_verticalPosition:(double)a3 withTopMargin:(double)a4 bottomMargin:(double)a5 boundedByAxisRect:(CGRect)a6;
- (void)drawPath:(id)a3 strokeColor:(id)a4 fillColor:(id)a5 markerImage:(id)a6 useGradientFill:(BOOL)a7 blendMode:(int)a8 clipToAxes:(BOOL)a9;
- (void)drawRect:(CGRect)a3;
- (void)fillRect:(CGRect)a3 withFillStyle:(id)a4 axisRect:(CGRect)a5 alpha:(double)a6;
@end

@implementation HKGraphRenderView

- (HKGraphRenderView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = HKGraphRenderView;
  v3 = [(HKGraphRenderView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v3->_axisRect.origin = *MEMORY[0x1E695F050];
    v3->_axisRect.size = v5;
    v6 = [(HKGraphRenderView *)v3 layer];
    [v6 setDrawsAsynchronously:1];

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(HKGraphRenderView *)v4 setBackgroundColor:v7];
  }

  return v4;
}

- (void)drawPath:(id)a3 strokeColor:(id)a4 fillColor:(id)a5 markerImage:(id)a6 useGradientFill:(BOOL)a7 blendMode:(int)a8 clipToAxes:(BOOL)a9
{
  v10 = a7;
  v47[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(v44[3]);
  if (a9 && !CGRectEqualToRect(self->_axisRect, *MEMORY[0x1E695F050]))
  {
    CGContextClipToRect(v44[3], self->_axisRect);
  }

  if (a8)
  {
    CGContextSetBlendMode(v44[3], a8);
  }

  if (v16)
  {
    [v16 setStroke];
    [v15 stroke];
  }

  if (v17)
  {
    [v15 addClip];
    if (v10)
    {
      space = CGColorSpaceCreateDeviceRGB();
      v19 = [v17 colorWithAlphaComponent:0.5];
      v20 = v19;
      v47[0] = [v19 CGColor];
      v21 = [MEMORY[0x1E69DC888] blackColor];
      v22 = [v21 colorWithAlphaComponent:0.5];
      v23 = v22;
      v47[1] = [v22 CGColor];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      v25 = CGGradientCreateWithColors(space, v24, 0);

      v26 = v44[3];
      [(HKGraphRenderView *)self bounds];
      v48.y = v27 * 0.5;
      v48.x = 0.0;
      CGContextDrawLinearGradient(v26, v25, v48, *MEMORY[0x1E695EFF8], 3u);
      CGColorSpaceRelease(space);
      CGGradientRelease(v25);
    }

    else
    {
      [v17 setFill];
      [v15 fill];
    }
  }

  if (v18)
  {
    [v18 size];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __101__HKGraphRenderView_drawPath_strokeColor_fillColor_markerImage_useGradientFill_blendMode_clipToAxes___block_invoke;
    v37[3] = &unk_1E81BB1D0;
    v29.f64[0] = v28;
    v29.f64[1] = v30;
    v39 = &v43;
    __asm { FMOV            V3.2D, #-0.5 }

    v40 = vmulq_f64(v29, _Q3);
    v41 = v28;
    v42 = v30;
    v38 = v18;
    [v15 hk_applyBlock:v37];
  }

  CGContextRestoreGState(v44[3]);
  _Block_object_dispose(&v43, 8);
}

void __101__HKGraphRenderView_drawPath_strokeColor_fillColor_markerImage_useGradientFill_blendMode_clipToAxes___block_invoke(uint64_t a1, int a2, CGFloat a3, CGFloat a4)
{
  if (a2 != 4)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v16 = CGRectOffset(*(a1 + 48), a3, a4);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    v11 = [*(a1 + 32) CGImage];
    v12 = x;
    v13 = y;
    v14 = width;
    v15 = height;

    CGContextDrawImage(v6, *&v12, v11);
  }
}

- (void)fillRect:(CGRect)a3 withFillStyle:(id)a4 axisRect:(CGRect)a5 alpha:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v13 = a4;
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v12, v11, v10, v9}];
  v15 = v17;
  [v13 renderPath:objc_msgSend(v17 context:"CGPath") axisRect:CurrentContext alpha:{x, y, width, height, a6}];
}

- (CGSize)drawText:(id)a3 atPoint:(CGPoint)a4 spaceAvailable:(id)a5 horizontalAlignment:(int64_t)a6 verticalAlignment:(int64_t)a7 hyphenationFactor:(id)a8 textColor:(id)a9 font:(id)a10 clipToAxis:(BOOL)a11 exclusion:(id)a12 isSystemSymbol:(BOOL)a13 isTallText:(BOOL)a14
{
  y = a4.y;
  x = a4.x;
  v54[3] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v52 = a5;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v25 = objc_opt_new();
  [v25 setAlignment:a6];
  if (v21)
  {
    [v21 floatValue];
    [v25 setHyphenationFactor:?];
  }

  v50 = v22;
  v51 = v21;
  v49 = v23;
  if (a13)
  {
    v26 = [MEMORY[0x1E69DCAD8] configurationWithFont:v23 scale:-1];
    v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v20 withConfiguration:v26];
    v28 = [v27 imageWithTintColor:v22];

    v29 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v29 setImage:v28];
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v29];
    v31 = v30 = v20;
    v32 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F42FFBE0];
    [v32 appendAttributedString:v31];
    v33 = [v32 copy];

    v20 = v30;
  }

  else
  {
    v34 = *MEMORY[0x1E69DB650];
    v53[0] = *MEMORY[0x1E69DB648];
    v53[1] = v34;
    v54[0] = v23;
    v54[1] = v22;
    v53[2] = *MEMORY[0x1E69DB688];
    v54[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v33 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v26];
  }

  if (v52)
  {
    [v52 doubleValue];
    v36 = v35;
  }

  else
  {
    v36 = 1.79769313e308;
  }

  [v33 size];
  v39 = v38;
  if (v37 <= v36)
  {
    v36 = v37;
  }

  else
  {
    v40 = v37 < floor(v36 + v36);
    v41 = 3.0;
    if (v40)
    {
      v41 = 2.0;
    }

    v39 = v38 * v41;
  }

  if (a6 == 1)
  {
    x = x + v36 * -0.5;
  }

  else if (a6 == 2)
  {
    x = x - v36;
  }

  if (a7 == 3)
  {
    v42 = 0.0;
    if (a14)
    {
      v42 = 2.0;
    }

    y = y - (v42 + v39);
    if (!v24)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (a7 == 2)
    {
      y = y + v39 * -0.5;
    }

    if (!v24)
    {
      goto LABEL_28;
    }
  }

  if ([v24 excludeRect:{x, y, v36, v39}])
  {
    v36 = *MEMORY[0x1E695F060];
    v39 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_31;
  }

LABEL_28:
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (a11)
  {
    CGContextAddRect(CurrentContext, v47[13]);
    CGContextClip(CurrentContext);
  }

  [v33 drawInRect:{x, y, v36, v39}];
  CGContextRestoreGState(CurrentContext);
LABEL_31:

  v44 = v36;
  v45 = v39;
  result.height = v45;
  result.width = v44;
  return result;
}

- (CGSize)drawAttributedText:(id)a3 atPoint:(CGPoint)a4 axisRect:(CGRect)a5 horizontalAlignment:(int64_t)a6 verticalAlignment:(int64_t)a7 exclusion:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4.y;
  v16 = a4.x;
  v18 = a3;
  v19 = a8;
  [v18 size];
  v21 = v20;
  v23 = v22;
  v24 = v16 + v20 * -0.5;
  v25 = v16 - v21;
  if (a6 != 2)
  {
    v25 = v16;
  }

  if (a6 == 1)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = v23 * 0.5;
  v28 = v27 + v27;
  v29 = v15 - v23 * 0.5;
  if (a7 == 2)
  {
    v30 = 0.0;
  }

  else
  {
    v29 = v15;
    v30 = v23 * 0.5;
  }

  if (a7 == 2)
  {
    v31 = v27 + v27;
  }

  else
  {
    v31 = v23 * 0.5;
  }

  if (a7 == 3)
  {
    v32 = v15 - (v27 + v27);
  }

  else
  {
    v32 = v29;
  }

  if (a7 == 3)
  {
    v33 = 0.0;
  }

  else
  {
    v28 = v30;
    v33 = v31;
  }

  [(HKGraphRenderView *)self _verticalPosition:v32 withTopMargin:v28 bottomMargin:v33 boundedByAxisRect:x, y, width, height];
  v35 = v34;
  [(HKGraphRenderView *)self _tightBoundingRectForText:v18 inTextRect:v26 axisRect:v34, v21, v23, x, y, width, height];
  if (v19 && [v19 excludeRect:?])
  {
    v21 = *MEMORY[0x1E695F060];
    v23 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    [v18 drawInRect:{v26, v35, v21, v23}];
    CGContextRestoreGState(CurrentContext);
  }

  v37 = v21;
  v38 = v23;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = [(HKGraphRenderView *)self renderDelegate];
  [v9 graphRenderer:self shouldRenderSceneWithContext:CurrentContext chartRect:{x, y, width, height}];

  CGContextRestoreGState(CurrentContext);
}

- (double)_verticalPosition:(double)a3 withTopMargin:(double)a4 bottomMargin:(double)a5 boundedByAxisRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  if (!CGRectIsNull(a6))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = a4 - a3 - CGRectGetMinY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MaxY = CGRectGetMaxY(v18);
    if (v13 <= 0.0)
    {
      v15 = a5 - MaxY - a3;
      if (v15 > 0.0)
      {
        return a3 - v15;
      }
    }

    else
    {
      return v13 + a3;
    }
  }

  return a3;
}

- (CGRect)_tightBoundingRectForText:(id)a3 inTextRect:(CGRect)a4 axisRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  v30 = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v31.width = width;
  v31.height = height;
  UIGraphicsBeginImageContextWithOptions(v31, 1, 0.0);
  v12 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v12 setWantsMultilineDeviceMetrics:1];
  [v11 drawWithRect:9 options:v12 context:{x, y, v8, v7}];

  [v12 multilineDeviceMetricsRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v32.origin.x = x;
  v32.origin.y = v30;
  v32.size.width = v8;
  v32.size.height = v7;
  v21 = v7;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v23 = MidX - CGRectGetWidth(v33) * 0.5;
  v34.origin.x = x;
  v34.origin.y = v30;
  v34.size.width = v8;
  v34.size.height = v21;
  MidY = CGRectGetMidY(v34);
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  v25 = MidY - CGRectGetHeight(v35) * 0.5;
  UIGraphicsEndImageContext();

  v26 = v23;
  v27 = v25;
  v28 = v18;
  v29 = v20;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (HKGraphRenderDelegate)renderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->renderDelegate);

  return WeakRetained;
}

- (CGRect)axisRect
{
  x = self->_axisRect.origin.x;
  y = self->_axisRect.origin.y;
  width = self->_axisRect.size.width;
  height = self->_axisRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end