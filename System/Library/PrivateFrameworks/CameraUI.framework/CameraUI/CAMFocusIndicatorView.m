@interface CAMFocusIndicatorView
- (CAMFocusIndicatorView)initWithStyle:(int64_t)a3;
- (CAMFocusIndicatorViewDelegate)delegate;
- (CGRect)boundsIncludingExposureBiasSlider;
- (CGSize)intrinsicContentSize;
- (void)_commonCAMFocusIndicatorViewInitialization;
- (void)_createExposureBiasSlider;
- (void)_createRectViewAndUpdateBounds;
- (void)_layoutExposureBiasSlider;
- (void)_layoutRectView:(id)a3;
- (void)_updateTintColor;
- (void)layoutSubviews;
- (void)setCenter:(CGPoint)a3;
- (void)setExposureBiasMaximum:(float)a3;
- (void)setExposureBiasMinimum:(float)a3;
- (void)setExposureBiasSide:(int)a3 animated:(BOOL)a4;
- (void)setExposureBiasValue:(float)a3;
- (void)setInactive:(BOOL)a3;
- (void)setShowExposureBias:(BOOL)a3;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5;
@end

@implementation CAMFocusIndicatorView

- (void)_commonCAMFocusIndicatorViewInitialization
{
  [(CAMFocusIndicatorView *)self _createRectViewAndUpdateBounds];

  [(CAMFocusIndicatorView *)self _updateTintColor];
}

- (void)_createRectViewAndUpdateBounds
{
  v3 = [(CAMFocusIndicatorView *)self isInactive];
  v4 = [[CAMFocusIndicatorRectView alloc] initWithStyle:self->_style];
  rectView = self->__rectView;
  self->__rectView = v4;

  [(CAMFocusIndicatorRectView *)self->__rectView setInactive:v3];
  [(CAMFocusIndicatorView *)self addSubview:self->__rectView];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  [(CAMFocusIndicatorRectView *)self->__rectView intrinsicContentSize];

  [(CAMFocusIndicatorView *)self setBounds:v6, v7, v8, v9];
}

- (void)_updateTintColor
{
  if ([(CAMFocusIndicatorView *)self isInactive])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }
  v3 = ;
  [(CAMFocusIndicatorView *)self setTintColor:v3];
}

- (CGSize)intrinsicContentSize
{
  [(CAMFocusIndicatorRectView *)self->__rectView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMFocusIndicatorView;
  [(CAMFocusIndicatorView *)&v4 layoutSubviews];
  [(CAMFocusIndicatorView *)self _layoutRectView:self->__rectView];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CAMFocusIndicatorView_layoutSubviews__block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

- (void)_layoutExposureBiasSlider
{
  if (self->__exposureBiasSlider)
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    [(CAMFocusIndicatorView *)self intrinsicContentSize];
    v6 = v5;
    v8 = v7;
    [(CAMExposureBiasSlider *)self->__exposureBiasSlider sizeThatFits:1.79769313e308, 1.79769313e308];
    v61 = v9;
    v11 = v10;
    v67.origin.x = v3;
    v67.origin.y = v4;
    v67.size.width = v6;
    v67.size.height = v8;
    v12 = CGRectGetMaxX(v67) + 17.0;
    v13 = round((v8 - v11) * 0.5);
    v59 = *(MEMORY[0x1E695EFD0] + 16);
    v60 = *MEMORY[0x1E695EFD0];
    *&v66.a = *MEMORY[0x1E695EFD0];
    *&v66.c = v59;
    v58 = *(MEMORY[0x1E695EFD0] + 32);
    *&v66.tx = v58;
    exposureBiasSide = self->__exposureBiasSide;
    switch(exposureBiasSide)
    {
      case 1:
        v15 = 3.14159265;
        break;
      case 2:
        v15 = -1.57079633;
        break;
      case 3:
        v15 = 1.57079633;
        break;
      default:
        goto LABEL_9;
    }

    CGAffineTransformMakeRotation(&v66, v15);
    v64 = v66;
    UIIntegralTransform();
    v66 = v65;
LABEL_9:
    v68.origin.x = v3;
    v68.origin.y = v4;
    v68.size.width = v6;
    v68.size.height = v8;
    MidX = CGRectGetMidX(v68);
    v56 = v3;
    v57 = v4;
    v69.origin.x = v3;
    v69.origin.y = v4;
    v55 = v6;
    v69.size.width = v6;
    v69.size.height = v8;
    MidY = CGRectGetMidY(v69);
    v70.origin.x = v12;
    v70.origin.y = v13;
    v70.size.width = v61;
    v70.size.height = v11;
    v18 = CGRectGetMidX(v70);
    v71.origin.x = v12;
    v71.origin.y = v13;
    v71.size.width = v61;
    v71.size.height = v11;
    v19 = MidX - v18;
    v20 = MidY - CGRectGetMidY(v71);
    memset(&v65, 0, sizeof(v65));
    CGAffineTransformMakeTranslation(&v65, v19, v20);
    t1 = v66;
    t2 = v65;
    CGAffineTransformConcat(&v64, &t1, &t2);
    v65 = v64;
    t1 = v64;
    CGAffineTransformTranslate(&v64, &t1, -v19, -v20);
    v65 = v64;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      rect = v11;
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = [v23 focusIndicatorViewBoundingViewForClippingFocusIndicatorView:self];

      v25 = v13;
      v26 = v12;
      if (!v24)
      {
LABEL_21:

        goto LABEL_26;
      }

      [(CAMFocusIndicatorView *)self convertRect:v24 toView:v56];
      v51.origin.x = v27;
      v51.origin.y = v28;
      v51.size.width = v29;
      v51.size.height = v30;
      [v24 bounds];
      v52.origin.x = v31;
      v52.origin.y = v32;
      v52.size.width = v33;
      v52.size.height = v34;
      v72.origin.x = v12;
      v53 = v13;
      v72.origin.y = v13;
      v72.size.width = v61;
      v72.size.height = v11;
      MaxX = CGRectGetMaxX(v72);
      v73.origin.x = v56;
      v73.origin.y = v57;
      v73.size.width = v55;
      v73.size.height = v8;
      v36 = MaxX - CGRectGetMaxY(v73);
      [(CAMExposureBiasSlider *)self->__exposureBiasSlider thumbMaxExtension];
      v38 = v36 + v37;
      v39 = self->__exposureBiasSide;
      if (v39 > 1)
      {
        if (v39 != 3)
        {
          v40 = v57;
          v25 = v53;
          if (v39 == 2)
          {
            v41 = CGRectGetMinY(v51) - v38;
            MinY = CGRectGetMinY(v52);
LABEL_19:
            v43 = MinY;

            v44 = v41 < v43;
            v11 = rect;
            if (!v44)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          goto LABEL_21;
        }

        v45 = v38 + CGRectGetMaxY(v51);
        MaxY = CGRectGetMaxY(v52);
      }

      else
      {
        if (v39)
        {
          v40 = v57;
          v25 = v53;
          if (v39 == 1)
          {
            v41 = CGRectGetMinX(v51) - v38;
            MinY = CGRectGetMinX(v52);
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        v45 = v38 + CGRectGetMaxX(v51);
        MaxY = CGRectGetMaxX(v52);
      }

      v47 = MaxY;

      v48 = v45 <= v47;
      v40 = v57;
      v25 = v53;
      v11 = rect;
      if (!v48)
      {
LABEL_25:
        v74.size.width = v55;
        v74.origin.x = v56;
        v74.origin.y = v40;
        v74.size.height = v8;
        v26 = CGRectGetMinX(v74) + -17.0 - v61;
        CGAffineTransformMakeTranslation(&v64, -v19, v20);
        v65 = v64;
        t1 = v66;
        t2 = v64;
        CGAffineTransformConcat(&v64, &t1, &t2);
        v65 = v64;
        t1 = v64;
        CGAffineTransformTranslate(&v64, &t1, v19, -v20);
        v65 = v64;
      }
    }

    else
    {
      v25 = v13;
      v26 = v12;
    }

LABEL_26:
    exposureBiasSlider = self->__exposureBiasSlider;
    *&v64.a = v60;
    *&v64.c = v59;
    *&v64.tx = v58;
    [(CAMExposureBiasSlider *)exposureBiasSlider setTransform:&v64];
    [(CAMExposureBiasSlider *)self->__exposureBiasSlider setFrame:v26, v25, v61, v11];
    v50 = self->__exposureBiasSlider;
    v64 = v65;
    [(CAMExposureBiasSlider *)v50 setTransform:&v64];
  }
}

- (CAMFocusIndicatorView)initWithStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMFocusIndicatorView;
  v4 = [(CAMFocusIndicatorView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    [(CAMFocusIndicatorView *)v4 _commonCAMFocusIndicatorViewInitialization];
    v6 = v5;
  }

  return v5;
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  style = self->_style;
  if (style != a3)
  {
    v10 = style == 4;
    v11 = style == 5;
    if (a3 != 4)
    {
      v11 = 0;
    }

    if (a3 == 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    self->_style = a3;
    v13 = self->__rectView;
    [(CAMFocusIndicatorRectView *)v13 setPulsing:0];
    v14 = MEMORY[0x1E69DD250];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke;
    v39[3] = &unk_1E76FBB80;
    v39[4] = self;
    v41 = a4;
    v15 = v13;
    v40 = v15;
    [v14 performWithoutAnimation:v39];
    if (a4)
    {
      if (v12)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_9;
        v29[3] = &unk_1E76F77B0;
        v29[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v29];
        v16 = MEMORY[0x1E69DD250];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_10;
        v27[3] = &unk_1E76F7960;
        v27[4] = self;
        v28 = v15;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_11;
        v23[3] = &unk_1E76FBBA8;
        v25 = v8;
        v23[4] = self;
        v24 = v28;
        v26 = 0x3FF0000000000000;
        [v16 animateWithDuration:6 delay:v27 options:v23 animations:0.25 completion:0.0];

        v17 = v28;
      }

      else
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_2;
        v38[3] = &unk_1E76F77B0;
        v38[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v38];
        [(CAMFocusIndicatorRectView *)v15 intrinsicContentSize];
        v19 = v18;
        [(CAMFocusIndicatorRectView *)self->__rectView intrinsicContentSize];
        v21 = v20 / v19;
        memset(&v37.c, 0, 32);
        if (v19 <= 0.0)
        {
          v21 = 1.0;
        }

        *&v37.a = 0uLL;
        CGAffineTransformMakeScale(&v37, v21, v21);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_3;
        v34[3] = &unk_1E76FA5A8;
        v22 = v15;
        v36 = v37;
        v35 = v22;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_4;
        v30[3] = &unk_1E76FBBA8;
        v30[4] = self;
        v32 = v8;
        v33 = 0x3FF0000000000000;
        v31 = v22;
        [CAMView animateIfNeededWithDuration:6 usingSpringWithDamping:v34 initialSpringVelocity:v30 options:0.25 animations:1.0 completion:1.0];

        v17 = v35;
      }
    }

    else
    {
      [(CAMFocusIndicatorRectView *)v15 removeFromSuperview];
      if (v8)
      {
        v8[2](v8);
      }
    }
  }
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createRectViewAndUpdateBounds];
  [*(a1 + 32) setNeedsLayout];
  result = [*(a1 + 32) layoutIfNeeded];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _layoutRectView:v4];
  }

  return result;
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_5;
  v11[3] = &unk_1E76F77B0;
  v11[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
  v3 = *(a1 + 56) * 0.1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_6;
  v10[3] = &unk_1E76F77B0;
  v10[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v10 options:0 animations:v3 completion:0.0];
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 56) * 0.3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_7;
  v8[3] = &unk_1E76F77B0;
  v9 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_8;
  v6[3] = &unk_1E76F7988;
  v7 = *(a1 + 40);
  [v4 animateWithDuration:6 delay:v8 options:v6 animations:v5 completion:0.0];
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 456);

  return [v2 setAlpha:0.0];
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 456);

  return [v2 setAlpha:1.0];
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_10(uint64_t a1)
{
  [*(*(a1 + 32) + 448) bounds];
  [*(a1 + 40) setBounds:?];
  [*(a1 + 40) setNeedsLayout];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_12;
  v7[3] = &unk_1E76F7960;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  [v3 performWithoutAnimation:v7];
  v5 = *(a1 + 56) * 0.1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_13;
  v6[3] = &unk_1E76F77B0;
  v6[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 options:0 animations:v5 completion:0.0];
}

uint64_t __54__CAMFocusIndicatorView_setStyle_animated_completion___block_invoke_12(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(*(a1 + 32) + 456);

  return [v2 setAlpha:0.0];
}

- (CGRect)boundsIncludingExposureBiasSlider
{
  [(CAMFocusIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMFocusIndicatorView *)self _exposureBiasSlider];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;

  return CGRectUnion(*&v20, *&v24);
}

- (void)_layoutRectView:(id)a3
{
  v14 = a3;
  [(CAMFocusIndicatorView *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  [v14 intrinsicContentSize];
  [v14 setBounds:{v10, v11, v12, v13}];
  [v14 setCenter:{MidX, MidY}];
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = CAMFocusIndicatorView;
  [(CAMFocusIndicatorView *)&v4 setCenter:a3.x, a3.y];
  if (self->__exposureBiasSlider)
  {
    [(CAMFocusIndicatorView *)self _layoutExposureBiasSlider];
  }
}

- (void)setInactive:(BOOL)a3
{
  if (self->_inactive != a3)
  {
    v4 = a3;
    self->_inactive = a3;
    v6 = [(CAMFocusIndicatorView *)self _rectView];
    [v6 setInactive:v4];
    [(CAMFocusIndicatorView *)self _updateTintColor];
  }
}

- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v9 = [(CAMFocusIndicatorView *)self layer];
  v10 = [v9 animationForKey:@"scaleAnimation"];

  if (!v10)
  {
    [(CAMFocusIndicatorView *)self bounds];
    v12 = 1.0;
    if (v11 > 0.0)
    {
      v12 = (v11 + a3 * 2.0) / v11;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v22[0] = v13;
    v22[1] = &unk_1F16C8C18;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    v21[0] = v15;
    v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    v21[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

    v18 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
    [v18 setValues:v14];
    [v18 setTimingFunctions:v17];
    [v18 setKeyTimes:&unk_1F16C9770];
    [v18 setCalculationMode:*MEMORY[0x1E69795A8]];
    *&v19 = a5;
    [v18 setRepeatCount:v19];
    UIAnimationDragCoefficient();
    [v18 setDuration:v20 * a4];
    [v9 addAnimation:v18 forKey:@"scaleAnimation"];
  }
}

- (void)setShowExposureBias:(BOOL)a3
{
  if (self->_showExposureBias != a3)
  {
    self->_showExposureBias = a3;
    if (a3)
    {

      [(CAMFocusIndicatorView *)self _createExposureBiasSlider];
    }

    else
    {
      [(CAMExposureBiasSlider *)self->__exposureBiasSlider removeFromSuperview];
      exposureBiasSlider = self->__exposureBiasSlider;
      self->__exposureBiasSlider = 0;
    }
  }
}

- (void)_createExposureBiasSlider
{
  v3 = [CAMExposureBiasSlider alloc];
  v4 = [(CAMExposureBiasSlider *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  exposureBiasSlider = self->__exposureBiasSlider;
  self->__exposureBiasSlider = v4;

  *&v6 = self->_exposureBiasMinimum;
  [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasMin:v6];
  *&v7 = self->_exposureBiasMaximum;
  [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasMax:v7];
  *&v8 = self->_exposureBiasValue;
  [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasValue:v8];
  [(CAMExposureBiasSlider *)self->__exposureBiasSlider forceTrackDimmed];
  [(CAMFocusIndicatorView *)self addSubview:self->__exposureBiasSlider];

  [(CAMFocusIndicatorView *)self _layoutExposureBiasSlider];
}

- (void)setExposureBiasMaximum:(float)a3
{
  if (self->_exposureBiasMaximum != a3)
  {
    self->_exposureBiasMaximum = a3;
    [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasMax:?];
  }
}

- (void)setExposureBiasMinimum:(float)a3
{
  if (self->_exposureBiasMinimum != a3)
  {
    self->_exposureBiasMinimum = a3;
    [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasMin:?];
  }
}

- (void)setExposureBiasValue:(float)a3
{
  if (self->_exposureBiasValue != a3)
  {
    self->_exposureBiasValue = a3;
    [(CAMExposureBiasSlider *)self->__exposureBiasSlider setExposureBiasValue:?];
  }
}

- (void)setExposureBiasSide:(int)a3 animated:(BOOL)a4
{
  exposureBiasSide = self->__exposureBiasSide;
  self->__exposureBiasSide = a3;
  [(CAMExposureBiasSlider *)self->__exposureBiasSlider alpha];
  v10 = v8 > 0.0 && exposureBiasSide != a3;
  exposureBiasSlider = self->__exposureBiasSlider;
  if (exposureBiasSlider)
  {
    if (a4)
    {
      v12 = exposureBiasSlider;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(CAMFocusIndicatorView *)self _createExposureBiasSlider];
      [(CAMExposureBiasSlider *)self->__exposureBiasSlider setAlpha:0.0];
      v13 = self->__exposureBiasSlider;
      [(CAMExposureBiasSlider *)v12 alpha];
      [(CAMExposureBiasSlider *)v13 setAlpha:?];
      [MEMORY[0x1E6979518] commit];
      v14 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__CAMFocusIndicatorView_setExposureBiasSide_animated___block_invoke;
      v21[3] = &unk_1E76F77B0;
      v22 = v12;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__CAMFocusIndicatorView_setExposureBiasSide_animated___block_invoke_2;
      v19[3] = &unk_1E76F7988;
      v15 = v22;
      v20 = v15;
      [v14 animateWithDuration:2 delay:v21 options:v19 animations:0.2 completion:0.0];
      if (v10)
      {
        [(CAMExposureBiasSlider *)self->__exposureBiasSlider setAlpha:0.0];
        v17[4] = self;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __54__CAMFocusIndicatorView_setExposureBiasSide_animated___block_invoke_3;
        v18[3] = &unk_1E76F77B0;
        v18[4] = self;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __54__CAMFocusIndicatorView_setExposureBiasSide_animated___block_invoke_4;
        v17[3] = &unk_1E76F7988;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v18 options:v17 animations:0.5 completion:0.0];
      }
    }

    else
    {
      [(CAMFocusIndicatorView *)self _layoutExposureBiasSlider];
      if (v10)
      {
        v16 = self->__exposureBiasSlider;

        [(CAMExposureBiasSlider *)v16 updateLastInteractionTime];
      }
    }
  }
}

uint64_t __54__CAMFocusIndicatorView_setExposureBiasSide_animated___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 456) updateLastInteractionTime];
  [*(*(a1 + 32) + 456) setSuspendTrackFadeOut:1];
  v2 = *(*(a1 + 32) + 456);

  return [v2 setAlpha:1.0];
}

- (CAMFocusIndicatorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end