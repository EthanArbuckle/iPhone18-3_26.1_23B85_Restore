@interface CEKSubjectIndicatorView
+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)a3 withScale:(double)a4;
+ (CGSize)fixedSizeWithScale:(double)a3;
- (BOOL)isPulsing;
- (CEKSubjectIndicatorView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setInactive:(BOOL)a3;
- (void)setPulsing:(BOOL)a3;
- (void)setShape:(int64_t)a3 animated:(BOOL)a4;
- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5 timingFunction:(id)a6;
- (void)stopScalingWithDuration:(double)a3;
@end

@implementation CEKSubjectIndicatorView

- (CEKSubjectIndicatorView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = CEKSubjectIndicatorView;
  v3 = [(CEKSubjectIndicatorView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v3->__containerView;
    v3->__containerView = v4;

    [(CEKSubjectIndicatorView *)v3 addSubview:v3->__containerView];
    v6 = MEMORY[0x1E69DCAB8];
    v7 = CEKFrameworkBundle();
    v8 = [v6 imageNamed:@"CEKSubjectIndicatorCornerInactive" inBundle:v7];

    v9 = MEMORY[0x1E69DCAB8];
    v10 = CEKFrameworkBundle();
    v11 = [v9 imageNamed:@"CEKSubjectIndicatorCornerActiveThick" inBundle:v10];

    [v8 size];
    v13 = v12 + -1.0;
    v14 = [v8 resizableImageWithCapInsets:1 resizingMode:{v13, v13, 0.0, 0.0}];

    v15 = [v11 resizableImageWithCapInsets:1 resizingMode:{v13, v13, 0.0, 0.0}];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15 highlightedImage:v14];
    topLeftCornerView = v3->__topLeftCornerView;
    v3->__topLeftCornerView = v16;

    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15 highlightedImage:v14];
    topRightCornerView = v3->__topRightCornerView;
    v3->__topRightCornerView = v18;

    v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15 highlightedImage:v14];
    bottomLeftCornerView = v3->__bottomLeftCornerView;
    v3->__bottomLeftCornerView = v20;

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15 highlightedImage:v14];
    bottomRightCornerView = v3->__bottomRightCornerView;
    v3->__bottomRightCornerView = v22;

    [(UIView *)v3->__containerView addSubview:v3->__topLeftCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__topRightCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__bottomLeftCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__bottomRightCornerView];
    v24 = MEMORY[0x1E69DCAB8];
    v25 = CEKFrameworkBundle();
    v26 = [v24 imageNamed:@"CEKSubjectIndicatorRect" inBundle:v25];
    v27 = [v26 imageWithRenderingMode:2];

    v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v27];
    fullSizeIndicatorView = v3->__fullSizeIndicatorView;
    v3->__fullSizeIndicatorView = v28;

    [(UIImageView *)v3->__fullSizeIndicatorView setContentMode:0];
    [(UIView *)v3->__containerView addSubview:v3->__fullSizeIndicatorView];
    v3->_shape = 1;
    v30 = v3;
  }

  return v3;
}

- (void)setInactive:(BOOL)a3
{
  if (self->_inactive != a3)
  {
    self->_inactive = a3;
    [(CEKSubjectIndicatorView *)self setNeedsLayout];
  }
}

- (void)setShape:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_shape != a3)
  {
    if (a4)
    {
      [(CEKSubjectIndicatorView *)self layoutIfNeeded];
      self->_shape = a3;
      [(CEKSubjectIndicatorView *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__CEKSubjectIndicatorView_setShape_animated___block_invoke;
      v6[3] = &unk_1E7CC6358;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v6 options:0 animations:0.4 completion:0.0];
    }

    else
    {
      self->_shape = a3;

      [(CEKSubjectIndicatorView *)self setNeedsLayout];
    }
  }
}

+ (CGSize)fixedSizeWithScale:(double)a3
{
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;

  [a1 _fixedSubjectIndicatorSizeForReferenceBounds:v7 withScale:{v9, a3}];
  v11 = v10 + -3.0 + -3.0;
  v13 = v12 + -3.0 + -3.0;
  result.height = v13;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CEKSubjectIndicatorView *)self window];
  v3 = [v2 screen];
  [v3 scale];
  v5 = v4;

  [CEKSubjectIndicatorView fixedSizeWithScale:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = CEKSubjectIndicatorView;
  [(CEKSubjectIndicatorView *)&v71 layoutSubviews];
  [(CEKSubjectIndicatorView *)self bounds];
  v4 = v3 + 6.0;
  v6 = v5 + 6.0;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  v13 = [(CEKSubjectIndicatorView *)self _containerView];
  [v13 setBounds:{v7, v8, v4, v6}];
  [v13 setCenter:{v10, v12}];
  v14 = [(CEKSubjectIndicatorView *)self _topLeftCornerView];
  v15 = [v14 image];
  [v15 size];
  v17 = v16;
  v19 = v18;

  v20 = [(CEKSubjectIndicatorView *)self shape];
  if ((v20 - 1) < 2)
  {
    if (v4 >= v6)
    {
      v29 = v6;
    }

    else
    {
      v29 = v4;
    }

    v30 = v29 * 0.4;
    if (v19 >= v30)
    {
      v19 = v30;
    }

    if (v17 >= v30)
    {
      v17 = v30;
    }

    v31 = [(CEKSubjectIndicatorView *)self shape];
    v32 = 1.0;
    if (v31 == 2)
    {
      v32 = 2.5;
    }

    v23 = v17 * v32;
    UIRoundToViewScale();
    v28 = v33;
    v26 = 0;
    v22 = v4 - v33;
    v21 = v6 - v19;
    v27 = 0.0;
    goto LABEL_15;
  }

  v22 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  if (v20 == 3)
  {
    v26 = 1;
  }

  else
  {
    if (!v20)
    {
      UIRoundToViewScale();
      v23 = v24;
      UIRoundToViewScale();
      v21 = v25;
      v26 = 0;
      v27 = 0.0;
      v22 = v23;
      v19 = v25;
      v28 = v23;
LABEL_15:
      v34 = 0.0;
      goto LABEL_19;
    }

    v26 = 0;
  }

  v28 = *(MEMORY[0x1E695F058] + 16);
  v27 = *(MEMORY[0x1E695F058] + 8);
  v34 = *MEMORY[0x1E695F058];
LABEL_19:
  v35 = [(CEKSubjectIndicatorView *)self _topLeftCornerView];
  [v35 setHidden:v26];

  v36 = [(CEKSubjectIndicatorView *)self _topRightCornerView];
  [v36 setHidden:v26];

  v37 = [(CEKSubjectIndicatorView *)self _bottomLeftCornerView];
  [v37 setHidden:v26];

  v38 = [(CEKSubjectIndicatorView *)self _bottomRightCornerView];
  [v38 setHidden:v26];

  v39 = [(CEKSubjectIndicatorView *)self _fullSizeIndicatorView];
  [v39 setHidden:v26 ^ 1];

  if (v26)
  {
    [v13 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [(CEKSubjectIndicatorView *)self _fullSizeIndicatorView];
    v49 = v48;
    v50 = v41;
    v51 = v43;
    v52 = v45;
    v53 = v47;
  }

  else
  {
    v54 = [(CEKSubjectIndicatorView *)self _topLeftCornerView];
    [v54 setFrame:{v34, v27, v28, v19}];

    v55 = [(CEKSubjectIndicatorView *)self _topRightCornerView];
    [v55 setFrame:{v22, v27, v23, v19}];

    v56 = [(CEKSubjectIndicatorView *)self _bottomLeftCornerView];
    [v56 setFrame:{v34, v21, v28, v19}];

    v48 = [(CEKSubjectIndicatorView *)self _bottomRightCornerView];
    v49 = v48;
    v50 = v22;
    v51 = v21;
    v52 = v28;
    v53 = v19;
  }

  [v48 setFrame:{v50, v51, v52, v53}];

  v57 = [(CEKSubjectIndicatorView *)self isInactive];
  v58 = [(CEKSubjectIndicatorView *)self _topLeftCornerView];
  [v58 setHighlighted:v57];

  v59 = [(CEKSubjectIndicatorView *)self _topRightCornerView];
  [v59 setHighlighted:v57];

  v60 = [(CEKSubjectIndicatorView *)self _bottomLeftCornerView];
  [v60 setHighlighted:v57];

  v61 = [(CEKSubjectIndicatorView *)self _bottomRightCornerView];
  [v61 setHighlighted:v57];

  if ([(CEKSubjectIndicatorView *)self isInactive])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }
  v62 = ;
  v63 = [(CEKSubjectIndicatorView *)self _fullSizeIndicatorView];
  [v63 setTintColor:v62];

  CGAffineTransformMakeScale(&v70, -1.0, 1.0);
  v64 = [(CEKSubjectIndicatorView *)self _topRightCornerView];
  v69 = v70;
  [v64 setTransform:&v69];

  CGAffineTransformMakeScale(&v68, 1.0, -1.0);
  v65 = [(CEKSubjectIndicatorView *)self _bottomLeftCornerView];
  v69 = v68;
  [v65 setTransform:&v69];

  CGAffineTransformMakeScale(&v67, -1.0, -1.0);
  v66 = [(CEKSubjectIndicatorView *)self _bottomRightCornerView];
  v69 = v67;
  [v66 setTransform:&v69];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(CEKSubjectIndicatorView *)self _containerView];
  v8 = [(CEKSubjectIndicatorView *)self layer];
  v9 = [v7 layer];
  v10 = [v8 animationForKey:@"opacity"];

  v11 = [v9 animationForKey:@"transform"];

  [(CEKSubjectIndicatorView *)self alpha];
  if (v5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (v5 && !a4)
  {
    [v8 removeAnimationForKey:@"opacity"];
    [v9 removeAnimationForKey:@"transform"];
LABEL_7:
    [(CEKSubjectIndicatorView *)self setAlpha:v13];
    goto LABEL_16;
  }

  if (v12 == v13)
  {
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v14 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__CEKSubjectIndicatorView_setHidden_animated___block_invoke;
    v24[3] = &unk_1E7CC6660;
    v24[4] = self;
    v24[5] = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__CEKSubjectIndicatorView_setHidden_animated___block_invoke_2;
    v22[3] = &unk_1E7CC6410;
    v22[4] = self;
    v23 = v9;
    [v14 animateWithDuration:6 delay:v24 options:v22 animations:0.25 completion:0.0];
    v15 = v23;
  }

  else
  {
    if (!(v11 | v10))
    {
      [(CEKSubjectIndicatorView *)self layoutIfNeeded];
      memset(&v21, 0, sizeof(v21));
      CGAffineTransformMakeScale(&v21, 1.22279793, 1.22279793);
      v20 = v21;
      [v7 setTransform:&v20];
    }

    v16 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__CEKSubjectIndicatorView_setHidden_animated___block_invoke_3;
    v17[3] = &unk_1E7CC6B38;
    v17[4] = self;
    v19 = (v11 | v10) == 0;
    v18 = v7;
    [v16 animateWithDuration:131078 delay:v17 options:0 animations:0.233333333 completion:0.0];
    v15 = v18;
  }

LABEL_16:
}

void __46__CEKSubjectIndicatorView_setHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = v2;
  v4 = [*(a1 + 40) animationForKey:@"transform"];

  if (v3 == 0.0 && v4 != 0)
  {
    v6 = *(a1 + 40);

    [v6 removeAnimationForKey:@"transform"];
  }
}

uint64_t __46__CEKSubjectIndicatorView_setHidden_animated___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v5[0] = *MEMORY[0x1E695EFD0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x1E695EFD0] + 32);
    return [v3 setTransform:v5];
  }

  return result;
}

- (void)startScalingWithExpansionWidth:(double)a3 duration:(double)a4 repeatCount:(unint64_t)a5 timingFunction:(id)a6
{
  v26[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [(CEKSubjectIndicatorView *)self _containerView];
  v12 = [v11 layer];
  v13 = [v12 animationForKey:@"transform"];

  if (v13)
  {
    v14 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      v15 = "Skipping attempt to scale a CEKSubjectIndicatorView since a transform animation is already in progress";
LABEL_7:
      _os_log_impl(&dword_1B7E93000, v14, OS_LOG_TYPE_DEFAULT, v15, v25, 2u);
    }
  }

  else
  {
    [(CEKSubjectIndicatorView *)self bounds];
    if (v16 == 0.0)
    {
      v14 = os_log_create("com.apple.camera", "CameraEditKit");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25[0]) = 0;
        v15 = "Attempting to scale a CEKSubjectIndicatorView without having a valid width yet";
        goto LABEL_7;
      }
    }

    else
    {
      v17 = v16;
      if (!v10)
      {
        v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
      }

      v14 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
      [v14 setTimingFunction:v10];
      [v14 setDuration:a4];
      v26[0] = &unk_1F2FDFE50;
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:(v17 + a3 * 2.0) / v17];
      v26[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      [v14 setValues:v19];

      *&v20 = a5;
      [v14 setRepeatCount:v20];
      [v14 setAutoreverses:1];
      [v12 addAnimation:v14 forKey:@"transform"];
      v21 = *(MEMORY[0x1E69792E8] + 80);
      v25[4] = *(MEMORY[0x1E69792E8] + 64);
      v25[5] = v21;
      v22 = *(MEMORY[0x1E69792E8] + 112);
      v25[6] = *(MEMORY[0x1E69792E8] + 96);
      v25[7] = v22;
      v23 = *(MEMORY[0x1E69792E8] + 16);
      v25[0] = *MEMORY[0x1E69792E8];
      v25[1] = v23;
      v24 = *(MEMORY[0x1E69792E8] + 48);
      v25[2] = *(MEMORY[0x1E69792E8] + 32);
      v25[3] = v24;
      [v12 setTransform:v25];
    }
  }
}

- (void)stopScalingWithDuration:(double)a3
{
  v4 = [(CEKSubjectIndicatorView *)self _containerView];
  v5 = [v4 layer];

  v6 = MEMORY[0x1E69792E8];
  if (a3 > 0.0)
  {
    v7 = [v5 presentationLayer];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (v10)
    {
      [v10 transform];
    }

    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v11 setDuration:a3];
    v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v11 setTimingFunction:v12];

    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v23];
    [v11 setFromValue:v13];

    v14 = v6[5];
    v27 = v6[4];
    v28 = v14;
    v15 = v6[7];
    v29 = v6[6];
    v30 = v15;
    v16 = v6[1];
    v23 = *v6;
    v24 = v16;
    v17 = v6[3];
    v25 = v6[2];
    v26 = v17;
    v18 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v23];
    [v11 setToValue:v18];

    [v5 addAnimation:v11 forKey:@"stopScalingAnimation"];
  }

  [v5 removeAnimationForKey:@"transform"];
  v19 = v6[5];
  v35 = v6[4];
  v36 = v19;
  v20 = v6[7];
  v37 = v6[6];
  v38 = v20;
  v21 = v6[1];
  v31 = *v6;
  v32 = v21;
  v22 = v6[3];
  v33 = v6[2];
  v34 = v22;
  [v5 setTransform:&v31];
}

- (BOOL)isPulsing
{
  v2 = [(CEKSubjectIndicatorView *)self _containerView];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"opacity"];
  v5 = v4 != 0;

  return v5;
}

- (void)setPulsing:(BOOL)a3
{
  v3 = a3;
  if ([(CEKSubjectIndicatorView *)self isPulsing]!= a3)
  {
    v5 = [(CEKSubjectIndicatorView *)self _containerView];
    v6 = [v5 layer];
    v7 = v6;
    if (v3)
    {
      [v5 setAlpha:1.0];
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__CEKSubjectIndicatorView_setPulsing___block_invoke;
      v9[3] = &unk_1E7CC6358;
      v10 = v5;
      [v8 animateWithDuration:30 delay:v9 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      [v6 removeAnimationForKey:@"opacity"];
      [v5 setAlpha:1.0];
    }
  }
}

+ (CGSize)_fixedSubjectIndicatorSizeForReferenceBounds:(CGSize)a3 withScale:(double)a4
{
  UIRoundToScale();
  v5 = v4;
  UIRoundToScale();
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

@end