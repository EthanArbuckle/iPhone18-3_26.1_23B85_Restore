@interface CAMImageWell
- (CAMImageWell)initWithCoder:(id)a3;
- (CAMImageWell)initWithFrame:(CGRect)a3;
- (CAMImageWell)initWithLayoutStyle:(int64_t)a3;
- (CAMImageWellPresentationDelegate)presentationDelegate;
- (CGAffineTransform)_affineTransformForImageOrientation:(SEL)a3;
- (CGRect)alignmentRectForFrame:(CGRect)a3 scaledForInteraction:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)tappableEdgeInsets;
- (double)_cornerRadiusForLayoutStyle:(int64_t)a3;
- (id)_placeholderImageForLayoutStyle:(int64_t)a3;
- (void)_commonCAMImageWellInitializationWithLayoutStyle:(int64_t)a3;
- (void)_performEmitAnimationWithImage:(id)a3 orientation:(int64_t)a4 withCompletionBlock:(id)a5;
- (void)_removeFirstDimmingView;
- (void)_updateForLayoutStyle;
- (void)_updatePresentationStyleAndImageViewAnimated:(BOOL)a3;
- (void)_updateThumbnailImageAnimated:(BOOL)a3;
- (void)_updateThumbnailTransformFromCameraOrientation;
- (void)layoutSubviews;
- (void)prepareForThumbnailUpdateFromCapture;
- (void)recoverFromFailedThumbnailUpdate;
- (void)setCameraOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setScaledForInteraction:(BOOL)a3 animated:(BOOL)a4;
- (void)setTappableEdgeInsets:(UIEdgeInsets)a3;
- (void)setThumbnailImage:(id)a3 uuid:(id)a4 animated:(BOOL)a5;
- (void)setThumbnailImageHidden:(BOOL)a3;
@end

@implementation CAMImageWell

- (void)_updateForLayoutStyle
{
  v3 = [(CAMImageWell *)self layoutStyle];
  v8 = [(CAMImageWell *)self _placeholderImageForLayoutStyle:v3];
  [(CAMImageWell *)self _cornerRadiusForLayoutStyle:v3];
  v5 = v4;
  [(CAMImageWell *)self _setPlaceholderImage:v8];
  v6 = [(CAMImageWell *)self _containerView];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];
}

- (void)_updateThumbnailTransformFromCameraOrientation
{
  v3 = self->_cameraOrientation - 2;
  v4 = 0.0;
  if (v3 <= 2)
  {
    v4 = dbl_1A3A68660[v3];
  }

  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeRotation(&v7, v4);
  v5 = v7;
  UIIntegralTransform();
  v7 = v6;
  [(UIImageView *)self->__thumbnailImageView setTransform:&v6, *&v5.a, *&v5.c, *&v5.tx];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CAMImageWell *)self _placeholderImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CAMImageWell;
  [(CAMImageWell *)&v12 layoutSubviews];
  [(CAMImageWell *)self bounds];
  [(CAMImageWell *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMImageWell *)self _containerView];
  CAMViewSetBoundsAndCenterForFrame(v11, v4, v6, v8, v10);
  [(UIView *)self->__containerView bounds];
  [(UIImageView *)self->__thumbnailImageView setFrame:?];
}

- (void)prepareForThumbnailUpdateFromCapture
{
  v3 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ImageWell starting blackout animation", v17, 2u);
  }

  [(CAMImageWell *)self _updatePresentationStyleAndImageViewAnimated:1];
  if ([(CAMImageWell *)self _currentPresentationStyle]!= 1)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)self->__containerView bounds];
    v5 = [v4 initWithFrame:?];
    [v5 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [v5 setBackgroundColor:v6];

    [(UIView *)self->__containerView addSubview:v5];
    LODWORD(v7) = 1041812769;
    LODWORD(v8) = 1043018044;
    LODWORD(v9) = 1044413908;
    LODWORD(v10) = 1.0;
    v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :v8 :v9 :v10];
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v12 setFromValue:&unk_1F16C8A68];
    UIAnimationDragCoefficient();
    [v12 setDuration:v13 * 0.31];
    [v12 setFillMode:*MEMORY[0x1E69797E0]];
    [v12 setTimingFunction:v11];
    [CAMAnimationHelper configurePowerSensitiveAnimation:v12];
    v14 = [v5 layer];
    LODWORD(v15) = 1.0;
    [v14 setOpacity:v15];
    v16 = [v5 layer];
    [v16 addAnimation:v12 forKey:@"opacityAnimation"];

    [(NSMutableArray *)self->__dimmingViewQueue addObject:v5];
  }
}

- (void)_removeFirstDimmingView
{
  v3 = [(NSMutableArray *)self->__dimmingViewQueue firstObject];
  [v3 removeFromSuperview];
  [(NSMutableArray *)self->__dimmingViewQueue removeObject:v3];
}

- (void)_commonCAMImageWellInitializationWithLayoutStyle:(int64_t)a3
{
  self->_layoutStyle = a3;
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  containerView = self->__containerView;
  self->__containerView = v9;

  [(UIView *)self->__containerView setUserInteractionEnabled:0];
  v11 = [(UIView *)self->__containerView layer];
  [v11 setMasksToBounds:1];

  v12 = *MEMORY[0x1E69796E8];
  v13 = [(UIView *)self->__containerView layer];
  [v13 setCornerCurve:v12];

  [(CAMImageWell *)self addSubview:self->__containerView];
  v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
  thumbnailImageView = self->__thumbnailImageView;
  self->__thumbnailImageView = v14;

  [(UIImageView *)self->__thumbnailImageView setExclusiveTouch:1];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dimmingViewQueue = self->__dimmingViewQueue;
  self->__dimmingViewQueue = v16;

  [(UIView *)self->__containerView addSubview:self->__thumbnailImageView];

  [(CAMImageWell *)self _updateForLayoutStyle];
}

- (CAMImageWell)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMImageWell;
  v4 = [(CAMImageWell *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMImageWell *)v4 _commonCAMImageWellInitializationWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (CAMImageWell)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMImageWell *)self initWithLayoutStyle:v5];
}

- (CAMImageWell)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMImageWell *)self initWithLayoutStyle:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CAMImageWell *)self intrinsicContentSize:a3.width];
  v5 = v4;
  v7 = v6;
  [(CAMImageWell *)self contentEdgeInsets];
  v10 = v9 + v5 + v8;
  v13 = v12 + v7 + v11;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)setScaledForInteraction:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_scaledForInteraction != a3)
  {
    v24 = v7;
    v25 = v6;
    v26 = v4;
    v27 = v5;
    v8 = a4;
    self->_scaledForInteraction = a3;
    if (a3)
    {
      v9 = *&CAMImageWellInteractionScale;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = [(CAMImageWell *)self _containerView];
    v11 = [v10 layer];

    if (v8)
    {
      UIAnimationDragCoefficient();
      v13 = v12;
      v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
      [v14 setMass:0.8];
      [v14 setDamping:12.0 / v13];
      [v14 setStiffness:300.0 / (v13 * v13)];
      [v14 durationForEpsilon:0.01];
      [v14 setDuration:?];
      LODWORD(v15) = 1041865114;
      LODWORD(v16) = 0.5;
      LODWORD(v17) = 1.0;
      v18 = [MEMORY[0x1E69793D0] functionWithControlPoints:v15 :0.0 :v16 :v17];
      [v14 setTimingFunction:v18];

      v19 = [v11 presentationLayer];
      v20 = [v19 valueForKeyPath:@"transform.scale.xy"];
      [v14 setFromValue:v20];

      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      [v14 setToValue:v21];

      [v11 addAnimation:v14 forKey:@"highlightScaleAnimation"];
    }

    else
    {
      [v11 removeAnimationForKey:@"highlightScaleAnimation"];
    }

    memset(&v23, 0, sizeof(v23));
    CATransform3DMakeScale(&v23, v9, v9, 1.0);
    v22 = v23;
    [v11 setTransform:&v22];
  }
}

- (CGRect)alignmentRectForFrame:(CGRect)a3 scaledForInteraction:(BOOL)a4
{
  v4 = a4;
  [(CAMImageWell *)self alignmentRectForFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v4)
  {
    CGAffineTransformMakeScale(&v21, *&CAMImageWellInteractionScale, *&CAMImageWellInteractionScale);
    UIRectCenteredIntegralRectScale();
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setCameraOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_cameraOrientation != a3)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    v6 = a4;
    self->_cameraOrientation = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CAMImageWell_setCameraOrientation_animated___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v6)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = a3;
    [(CAMImageWell *)self setNeedsLayout];
  }
}

- (void)setThumbnailImage:(id)a3 uuid:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [(CAMImageWell *)self _uuid];
  if (v5)
  {
    if ([v8 isEqualToString:v10] && (-[CAMImageWell thumbnailImage](self, "thumbnailImage"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = os_log_create("com.apple.camera", "ImageWell");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: not animating since UUID not changing", &v13, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  [(CAMImageWell *)self _updatePresentationStyleAndImageViewAnimated:v5];
  [(CAMImageWell *)self _setThumbnailImage:v9];

  [(CAMImageWell *)self _setUuid:v8];
  [(CAMImageWell *)self _updateThumbnailImageAnimated:v5];
}

- (void)setThumbnailImageHidden:(BOOL)a3
{
  if (self->_thumbnailImageHidden != a3)
  {
    self->_thumbnailImageHidden = a3;
    [(CAMImageWell *)self _updateThumbnailImageAnimated:0];
  }
}

- (void)recoverFromFailedThumbnailUpdate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CAMImageWell *)self _uuid];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: recoverFromFailedThumbnailUpdate", &v5, 0xCu);
  }

  [(CAMImageWell *)self _removeFirstDimmingView];
}

- (void)_updateThumbnailImageAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CAMImageWell *)self isThumbnailImageHidden]|| ([(CAMImageWell *)self _thumbnailImage], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(CAMImageWell *)self _placeholderImage];
    if (v3)
    {
      [(CAMImageWell *)self _removeFirstDimmingView];
      v3 = 0;
    }
  }

  else
  {
    v6 = v5;
  }

  v7 = [(CAMImageWell *)self _uuid];
  v8 = [(CAMImageWell *)self _thumbnailUpdateID]+ 1;
  [(CAMImageWell *)self _setThumbnailUpdateID:v8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __46__CAMImageWell__updateThumbnailImageAnimated___block_invoke;
  v18 = &unk_1E76FA240;
  v22 = v8;
  v19 = self;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v11 = _Block_copy(&v15);
  if (v3)
  {
    v12 = [v9 imageOrientation];
    v13 = v9;
    if ([v13 imageOrientation])
    {
      v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v13, "CGImage")}];

      v13 = v14;
    }

    [(CAMImageWell *)self _performEmitAnimationWithImage:v13 orientation:v12 withCompletionBlock:v11];
  }

  else
  {
    [(UIImageView *)self->__thumbnailImageView _removeAllAnimations:0, v15, v16, v17, v18, v19, v20];
    v11[2](v11, 1);
  }
}

uint64_t __46__CAMImageWell__updateThumbnailImageAnimated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  result = [*(a1 + 32) _thumbnailUpdateID];
  if (v2 == result)
  {
    v4 = [*(*(a1 + 32) + 784) image];
    v5 = *(a1 + 40);

    v6 = os_log_create("com.apple.camera", "ImageWell");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4 == v5)
    {
      if (v7)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = 138543618;
        v14 = v11;
        v15 = 2114;
        v16 = v12;
        v10 = "ImageWell %{public}@: setImage (unchanged): %{public}@";
        goto LABEL_7;
      }
    }

    else if (v7)
    {
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v10 = "ImageWell %{public}@: setImage: %{public}@";
LABEL_7:
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
    }

    [*(*(a1 + 32) + 784) setImage:*(a1 + 40)];
    return [*(*(a1 + 32) + 784) setContentMode:2];
  }

  return result;
}

- (CGAffineTransform)_affineTransformForImageOrientation:(SEL)a3
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  v7 = a4 - 1;
  if (a4 - 1) <= 6 && ((0x77u >> v7))
  {
    CGAffineTransformMakeRotation(retstr, dbl_1A3A68678[v7]);
  }

  result = UIIntegralTransform();
  *&retstr->a = v9;
  *&retstr->c = v10;
  *&retstr->tx = v11;
  return result;
}

- (void)_performEmitAnimationWithImage:(id)a3 orientation:(int64_t)a4 withCompletionBlock:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CAMImageWell *)self _uuid];
    LODWORD(buf.a) = 138543618;
    *(&buf.a + 4) = v11;
    WORD2(buf.b) = 2114;
    *(&buf.b + 6) = v8;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: _performEmitAnimationWithImage: %{public}@", &buf, 0x16u);
  }

  memset(&buf, 0, sizeof(buf));
  [(CAMImageWell *)self _affineTransformForImageOrientation:a4];
  v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  [(UIView *)self->__containerView bounds];
  [v12 setFrame:?];
  [v12 setContentMode:2];
  thumbnailImageView = self->__thumbnailImageView;
  if (thumbnailImageView)
  {
    [(UIImageView *)thumbnailImageView transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = buf;
  CGAffineTransformConcat(&v31, &t1, &t2);
  [v12 setTransform:&v31];
  [(UIView *)self->__containerView addSubview:v12];
  LODWORD(v14) = 1.0;
  v15 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :0.0 :v14];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v17 = [MEMORY[0x1E696B098] valueWithCGRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v16 setFromValue:v17];

  v18 = MEMORY[0x1E696B098];
  [(UIView *)self->__containerView bounds];
  v19 = [v18 valueWithCGRect:?];
  [v16 setToValue:v19];

  UIAnimationDragCoefficient();
  [v16 setDuration:v20 * 0.2];
  [v16 setTimingFunction:v15];
  [v16 setFillMode:*MEMORY[0x1E69797E0]];
  [CAMAnimationHelper configurePowerSensitiveAnimation:v16];
  v21 = objc_alloc_init(CAMAnimationDelegate);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__CAMImageWell__performEmitAnimationWithImage_orientation_withCompletionBlock___block_invoke;
  v25[3] = &unk_1E76FA268;
  v26 = v12;
  v27 = self;
  v28 = v9;
  v22 = v9;
  v23 = v12;
  [(CAMAnimationDelegate *)v21 setCompletion:v25];
  [v16 setDelegate:v21];
  v24 = [v23 layer];
  [v24 addAnimation:v16 forKey:@"emitAnimation"];
}

uint64_t __79__CAMImageWell__performEmitAnimationWithImage_orientation_withCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) _removeFirstDimmingView];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMImageWell *)self _updateForLayoutStyle];
  }
}

- (id)_placeholderImageForLayoutStyle:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = @"CAMImageWellPlaceholder-d22";
      goto LABEL_7;
    case 1:
      v3 = @"CAMImageWellPlaceholderPad";
      goto LABEL_7;
    case 0:
      v3 = @"CAMImageWellPlaceholder";
LABEL_7:
      v4 = MEMORY[0x1E69DCAB8];
      v5 = CAMCameraUIFrameworkBundle();
      v6 = [v4 imageNamed:v3 inBundle:v5];

      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (double)_cornerRadiusForLayoutStyle:(int64_t)a3
{
  v5 = CAMPixelWidthForView(self) + 3.0;
  if (!a3)
  {
    v6 = [(CAMImageWell *)self traitCollection];
    [v6 displayScale];
    v8 = v7;

    if (v8 == 2.0)
    {
      return 3.0;
    }
  }

  return v5;
}

- (void)_updatePresentationStyleAndImageViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMImageWell *)self presentationDelegate];

  if (v5)
  {
    v6 = [(CAMImageWell *)self presentationDelegate];
    v5 = [v6 presentationStyleForAppearingThumbnailImage];
  }

  [(CAMImageWell *)self _setCurrentPresentationStyle:v5];
  if ([(CAMImageWell *)self _currentPresentationStyle]== 1 && v3)
  {
    v7 = [(CAMImageWell *)self _thumbnailImageView];
    [v7 setImage:0];
  }
}

- (CAMImageWellPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end