@interface HKGraphRenderView
- (CGRect)_tightBoundingRectForText:(id)text inTextRect:(CGRect)rect axisRect:(CGRect)axisRect;
- (CGRect)axisRect;
- (CGSize)drawAttributedText:(id)text atPoint:(CGPoint)point axisRect:(CGRect)rect horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment exclusion:(id)exclusion;
- (CGSize)drawText:(id)text atPoint:(CGPoint)point spaceAvailable:(id)available horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment hyphenationFactor:(id)factor textColor:(id)color font:(id)self0 clipToAxis:(BOOL)self1 exclusion:(id)self2 isSystemSymbol:(BOOL)self3 isTallText:(BOOL)self4;
- (HKGraphRenderDelegate)renderDelegate;
- (HKGraphRenderView)initWithFrame:(CGRect)frame;
- (double)_verticalPosition:(double)position withTopMargin:(double)margin bottomMargin:(double)bottomMargin boundedByAxisRect:(CGRect)rect;
- (void)drawPath:(id)path strokeColor:(id)color fillColor:(id)fillColor markerImage:(id)image useGradientFill:(BOOL)fill blendMode:(int)mode clipToAxes:(BOOL)axes;
- (void)drawRect:(CGRect)rect;
- (void)fillRect:(CGRect)rect withFillStyle:(id)style axisRect:(CGRect)axisRect alpha:(double)alpha;
@end

@implementation HKGraphRenderView

- (HKGraphRenderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = HKGraphRenderView;
  v3 = [(HKGraphRenderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v3->_axisRect.origin = *MEMORY[0x1E695F050];
    v3->_axisRect.size = v5;
    layer = [(HKGraphRenderView *)v3 layer];
    [layer setDrawsAsynchronously:1];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(HKGraphRenderView *)v4 setBackgroundColor:clearColor];
  }

  return v4;
}

- (void)drawPath:(id)path strokeColor:(id)color fillColor:(id)fillColor markerImage:(id)image useGradientFill:(BOOL)fill blendMode:(int)mode clipToAxes:(BOOL)axes
{
  fillCopy = fill;
  v47[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  colorCopy = color;
  fillColorCopy = fillColor;
  imageCopy = image;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(v44[3]);
  if (axes && !CGRectEqualToRect(self->_axisRect, *MEMORY[0x1E695F050]))
  {
    CGContextClipToRect(v44[3], self->_axisRect);
  }

  if (mode)
  {
    CGContextSetBlendMode(v44[3], mode);
  }

  if (colorCopy)
  {
    [colorCopy setStroke];
    [pathCopy stroke];
  }

  if (fillColorCopy)
  {
    [pathCopy addClip];
    if (fillCopy)
    {
      space = CGColorSpaceCreateDeviceRGB();
      v19 = [fillColorCopy colorWithAlphaComponent:0.5];
      v20 = v19;
      v47[0] = [v19 CGColor];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v22 = [blackColor colorWithAlphaComponent:0.5];
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
      [fillColorCopy setFill];
      [pathCopy fill];
    }
  }

  if (imageCopy)
  {
    [imageCopy size];
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
    v38 = imageCopy;
    [pathCopy hk_applyBlock:v37];
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

- (void)fillRect:(CGRect)rect withFillStyle:(id)style axisRect:(CGRect)axisRect alpha:(double)alpha
{
  height = axisRect.size.height;
  width = axisRect.size.width;
  y = axisRect.origin.y;
  x = axisRect.origin.x;
  v9 = rect.size.height;
  v10 = rect.size.width;
  v11 = rect.origin.y;
  v12 = rect.origin.x;
  styleCopy = style;
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v12, v11, v10, v9}];
  v15 = v17;
  [styleCopy renderPath:objc_msgSend(v17 context:"CGPath") axisRect:CurrentContext alpha:{x, y, width, height, alpha}];
}

- (CGSize)drawText:(id)text atPoint:(CGPoint)point spaceAvailable:(id)available horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment hyphenationFactor:(id)factor textColor:(id)color font:(id)self0 clipToAxis:(BOOL)self1 exclusion:(id)self2 isSystemSymbol:(BOOL)self3 isTallText:(BOOL)self4
{
  y = point.y;
  x = point.x;
  v54[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  availableCopy = available;
  factorCopy = factor;
  colorCopy = color;
  fontCopy = font;
  exclusionCopy = exclusion;
  v25 = objc_opt_new();
  [v25 setAlignment:alignment];
  if (factorCopy)
  {
    [factorCopy floatValue];
    [v25 setHyphenationFactor:?];
  }

  v50 = colorCopy;
  v51 = factorCopy;
  v49 = fontCopy;
  if (symbol)
  {
    v26 = [MEMORY[0x1E69DCAD8] configurationWithFont:fontCopy scale:-1];
    v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:textCopy withConfiguration:v26];
    v28 = [v27 imageWithTintColor:colorCopy];

    v29 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v29 setImage:v28];
    [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v29];
    v31 = v30 = textCopy;
    v32 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F42FFBE0];
    [v32 appendAttributedString:v31];
    v33 = [v32 copy];

    textCopy = v30;
  }

  else
  {
    v34 = *MEMORY[0x1E69DB650];
    v53[0] = *MEMORY[0x1E69DB648];
    v53[1] = v34;
    v54[0] = fontCopy;
    v54[1] = colorCopy;
    v53[2] = *MEMORY[0x1E69DB688];
    v54[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v33 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy attributes:v26];
  }

  if (availableCopy)
  {
    [availableCopy doubleValue];
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

  if (alignment == 1)
  {
    x = x + v36 * -0.5;
  }

  else if (alignment == 2)
  {
    x = x - v36;
  }

  if (verticalAlignment == 3)
  {
    v42 = 0.0;
    if (tallText)
    {
      v42 = 2.0;
    }

    y = y - (v42 + v39);
    if (!exclusionCopy)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (verticalAlignment == 2)
    {
      y = y + v39 * -0.5;
    }

    if (!exclusionCopy)
    {
      goto LABEL_28;
    }
  }

  if ([exclusionCopy excludeRect:{x, y, v36, v39}])
  {
    v36 = *MEMORY[0x1E695F060];
    v39 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_31;
  }

LABEL_28:
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (axis)
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

- (CGSize)drawAttributedText:(id)text atPoint:(CGPoint)point axisRect:(CGRect)rect horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment exclusion:(id)exclusion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = point.y;
  v16 = point.x;
  textCopy = text;
  exclusionCopy = exclusion;
  [textCopy size];
  v21 = v20;
  v23 = v22;
  v24 = v16 + v20 * -0.5;
  v25 = v16 - v21;
  if (alignment != 2)
  {
    v25 = v16;
  }

  if (alignment == 1)
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
  if (verticalAlignment == 2)
  {
    v30 = 0.0;
  }

  else
  {
    v29 = v15;
    v30 = v23 * 0.5;
  }

  if (verticalAlignment == 2)
  {
    v31 = v27 + v27;
  }

  else
  {
    v31 = v23 * 0.5;
  }

  if (verticalAlignment == 3)
  {
    v32 = v15 - (v27 + v27);
  }

  else
  {
    v32 = v29;
  }

  if (verticalAlignment == 3)
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
  [(HKGraphRenderView *)self _tightBoundingRectForText:textCopy inTextRect:v26 axisRect:v34, v21, v23, x, y, width, height];
  if (exclusionCopy && [exclusionCopy excludeRect:?])
  {
    v21 = *MEMORY[0x1E695F060];
    v23 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    [textCopy drawInRect:{v26, v35, v21, v23}];
    CGContextRestoreGState(CurrentContext);
  }

  v37 = v21;
  v38 = v23;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  renderDelegate = [(HKGraphRenderView *)self renderDelegate];
  [renderDelegate graphRenderer:self shouldRenderSceneWithContext:CurrentContext chartRect:{x, y, width, height}];

  CGContextRestoreGState(CurrentContext);
}

- (double)_verticalPosition:(double)position withTopMargin:(double)margin bottomMargin:(double)bottomMargin boundedByAxisRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsNull(rect))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = margin - position - CGRectGetMinY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MaxY = CGRectGetMaxY(v18);
    if (v13 <= 0.0)
    {
      v15 = bottomMargin - MaxY - position;
      if (v15 > 0.0)
      {
        return position - v15;
      }
    }

    else
    {
      return v13 + position;
    }
  }

  return position;
}

- (CGRect)_tightBoundingRectForText:(id)text inTextRect:(CGRect)rect axisRect:(CGRect)axisRect
{
  height = axisRect.size.height;
  width = axisRect.size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  v30 = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  v31.width = width;
  v31.height = height;
  UIGraphicsBeginImageContextWithOptions(v31, 1, 0.0);
  v12 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v12 setWantsMultilineDeviceMetrics:1];
  [textCopy drawWithRect:9 options:v12 context:{x, y, v8, v7}];

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