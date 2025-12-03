@interface CAMImageWell
- (CAMImageWell)initWithCoder:(id)coder;
- (CAMImageWell)initWithFrame:(CGRect)frame;
- (CAMImageWell)initWithLayoutStyle:(int64_t)style;
- (CAMImageWellPresentationDelegate)presentationDelegate;
- (CGAffineTransform)_affineTransformForImageOrientation:(SEL)orientation;
- (CGRect)alignmentRectForFrame:(CGRect)frame scaledForInteraction:(BOOL)interaction;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)tappableEdgeInsets;
- (double)_cornerRadiusForLayoutStyle:(int64_t)style;
- (id)_placeholderImageForLayoutStyle:(int64_t)style;
- (void)_commonCAMImageWellInitializationWithLayoutStyle:(int64_t)style;
- (void)_performEmitAnimationWithImage:(id)image orientation:(int64_t)orientation withCompletionBlock:(id)block;
- (void)_removeFirstDimmingView;
- (void)_updateForLayoutStyle;
- (void)_updatePresentationStyleAndImageViewAnimated:(BOOL)animated;
- (void)_updateThumbnailImageAnimated:(BOOL)animated;
- (void)_updateThumbnailTransformFromCameraOrientation;
- (void)layoutSubviews;
- (void)prepareForThumbnailUpdateFromCapture;
- (void)recoverFromFailedThumbnailUpdate;
- (void)setCameraOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setLayoutStyle:(int64_t)style;
- (void)setScaledForInteraction:(BOOL)interaction animated:(BOOL)animated;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
- (void)setThumbnailImage:(id)image uuid:(id)uuid animated:(BOOL)animated;
- (void)setThumbnailImageHidden:(BOOL)hidden;
@end

@implementation CAMImageWell

- (void)_updateForLayoutStyle
{
  layoutStyle = [(CAMImageWell *)self layoutStyle];
  v8 = [(CAMImageWell *)self _placeholderImageForLayoutStyle:layoutStyle];
  [(CAMImageWell *)self _cornerRadiusForLayoutStyle:layoutStyle];
  v5 = v4;
  [(CAMImageWell *)self _setPlaceholderImage:v8];
  _containerView = [(CAMImageWell *)self _containerView];
  layer = [_containerView layer];
  [layer setCornerRadius:v5];
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
  _placeholderImage = [(CAMImageWell *)self _placeholderImage];
  [_placeholderImage size];
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
  _containerView = [(CAMImageWell *)self _containerView];
  CAMViewSetBoundsAndCenterForFrame(_containerView, v4, v6, v8, v10);
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [v5 setBackgroundColor:blackColor];

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
    layer = [v5 layer];
    LODWORD(v15) = 1.0;
    [layer setOpacity:v15];
    layer2 = [v5 layer];
    [layer2 addAnimation:v12 forKey:@"opacityAnimation"];

    [(NSMutableArray *)self->__dimmingViewQueue addObject:v5];
  }
}

- (void)_removeFirstDimmingView
{
  firstObject = [(NSMutableArray *)self->__dimmingViewQueue firstObject];
  [firstObject removeFromSuperview];
  [(NSMutableArray *)self->__dimmingViewQueue removeObject:firstObject];
}

- (void)_commonCAMImageWellInitializationWithLayoutStyle:(int64_t)style
{
  self->_layoutStyle = style;
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  containerView = self->__containerView;
  self->__containerView = v9;

  [(UIView *)self->__containerView setUserInteractionEnabled:0];
  layer = [(UIView *)self->__containerView layer];
  [layer setMasksToBounds:1];

  v12 = *MEMORY[0x1E69796E8];
  layer2 = [(UIView *)self->__containerView layer];
  [layer2 setCornerCurve:v12];

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

- (CAMImageWell)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMImageWell;
  v4 = [(CAMImageWell *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMImageWell *)v4 _commonCAMImageWellInitializationWithLayoutStyle:style];
    v6 = v5;
  }

  return v5;
}

- (CAMImageWell)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMImageWell *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMImageWell)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMImageWell *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CAMImageWell *)self intrinsicContentSize:fits.width];
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

- (void)setScaledForInteraction:(BOOL)interaction animated:(BOOL)animated
{
  if (self->_scaledForInteraction != interaction)
  {
    v24 = v7;
    v25 = v6;
    v26 = v4;
    v27 = v5;
    animatedCopy = animated;
    self->_scaledForInteraction = interaction;
    if (interaction)
    {
      v9 = *&CAMImageWellInteractionScale;
    }

    else
    {
      v9 = 1.0;
    }

    _containerView = [(CAMImageWell *)self _containerView];
    layer = [_containerView layer];

    if (animatedCopy)
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

      presentationLayer = [layer presentationLayer];
      v20 = [presentationLayer valueForKeyPath:@"transform.scale.xy"];
      [v14 setFromValue:v20];

      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      [v14 setToValue:v21];

      [layer addAnimation:v14 forKey:@"highlightScaleAnimation"];
    }

    else
    {
      [layer removeAnimationForKey:@"highlightScaleAnimation"];
    }

    memset(&v23, 0, sizeof(v23));
    CATransform3DMakeScale(&v23, v9, v9, 1.0);
    v22 = v23;
    [layer setTransform:&v22];
  }
}

- (CGRect)alignmentRectForFrame:(CGRect)frame scaledForInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  [(CAMImageWell *)self alignmentRectForFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (interactionCopy)
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

- (void)setCameraOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_cameraOrientation != orientation)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    animatedCopy = animated;
    self->_cameraOrientation = orientation;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CAMImageWell_setCameraOrientation_animated___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CAMImageWell *)self setNeedsLayout];
  }
}

- (void)setThumbnailImage:(id)image uuid:(id)uuid animated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  imageCopy = image;
  _uuid = [(CAMImageWell *)self _uuid];
  if (animatedCopy)
  {
    if ([uuidCopy isEqualToString:_uuid] && (-[CAMImageWell thumbnailImage](self, "thumbnailImage"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = os_log_create("com.apple.camera", "ImageWell");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = uuidCopy;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: not animating since UUID not changing", &v13, 0xCu);
      }

      animatedCopy = 0;
    }

    else
    {
      animatedCopy = 1;
    }
  }

  [(CAMImageWell *)self _updatePresentationStyleAndImageViewAnimated:animatedCopy];
  [(CAMImageWell *)self _setThumbnailImage:imageCopy];

  [(CAMImageWell *)self _setUuid:uuidCopy];
  [(CAMImageWell *)self _updateThumbnailImageAnimated:animatedCopy];
}

- (void)setThumbnailImageHidden:(BOOL)hidden
{
  if (self->_thumbnailImageHidden != hidden)
  {
    self->_thumbnailImageHidden = hidden;
    [(CAMImageWell *)self _updateThumbnailImageAnimated:0];
  }
}

- (void)recoverFromFailedThumbnailUpdate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _uuid = [(CAMImageWell *)self _uuid];
    v5 = 138543362;
    v6 = _uuid;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: recoverFromFailedThumbnailUpdate", &v5, 0xCu);
  }

  [(CAMImageWell *)self _removeFirstDimmingView];
}

- (void)_updateThumbnailImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CAMImageWell *)self isThumbnailImageHidden]|| ([(CAMImageWell *)self _thumbnailImage], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _placeholderImage = [(CAMImageWell *)self _placeholderImage];
    if (animatedCopy)
    {
      [(CAMImageWell *)self _removeFirstDimmingView];
      animatedCopy = 0;
    }
  }

  else
  {
    _placeholderImage = v5;
  }

  _uuid = [(CAMImageWell *)self _uuid];
  v8 = [(CAMImageWell *)self _thumbnailUpdateID]+ 1;
  [(CAMImageWell *)self _setThumbnailUpdateID:v8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __46__CAMImageWell__updateThumbnailImageAnimated___block_invoke;
  v18 = &unk_1E76FA240;
  v22 = v8;
  selfCopy = self;
  v9 = _placeholderImage;
  v20 = v9;
  v10 = _uuid;
  v21 = v10;
  v11 = _Block_copy(&v15);
  if (animatedCopy)
  {
    imageOrientation = [v9 imageOrientation];
    v13 = v9;
    if ([v13 imageOrientation])
    {
      v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v13, "CGImage")}];

      v13 = v14;
    }

    [(CAMImageWell *)self _performEmitAnimationWithImage:v13 orientation:imageOrientation withCompletionBlock:v11];
  }

  else
  {
    [(UIImageView *)self->__thumbnailImageView _removeAllAnimations:0, v15, v16, v17, v18, selfCopy, v20];
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

- (CGAffineTransform)_affineTransformForImageOrientation:(SEL)orientation
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

- (void)_performEmitAnimationWithImage:(id)image orientation:(int64_t)orientation withCompletionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  blockCopy = block;
  v10 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _uuid = [(CAMImageWell *)self _uuid];
    LODWORD(buf.a) = 138543618;
    *(&buf.a + 4) = _uuid;
    WORD2(buf.b) = 2114;
    *(&buf.b + 6) = imageCopy;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: _performEmitAnimationWithImage: %{public}@", &buf, 0x16u);
  }

  memset(&buf, 0, sizeof(buf));
  [(CAMImageWell *)self _affineTransformForImageOrientation:orientation];
  v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
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
  selfCopy = self;
  v28 = blockCopy;
  v22 = blockCopy;
  v23 = v12;
  [(CAMAnimationDelegate *)v21 setCompletion:v25];
  [v16 setDelegate:v21];
  layer = [v23 layer];
  [layer addAnimation:v16 forKey:@"emitAnimation"];
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

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMImageWell *)self _updateForLayoutStyle];
  }
}

- (id)_placeholderImageForLayoutStyle:(int64_t)style
{
  switch(style)
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

- (double)_cornerRadiusForLayoutStyle:(int64_t)style
{
  v5 = CAMPixelWidthForView(self) + 3.0;
  if (!style)
  {
    traitCollection = [(CAMImageWell *)self traitCollection];
    [traitCollection displayScale];
    v8 = v7;

    if (v8 == 2.0)
    {
      return 3.0;
    }
  }

  return v5;
}

- (void)_updatePresentationStyleAndImageViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentationDelegate = [(CAMImageWell *)self presentationDelegate];

  if (presentationDelegate)
  {
    presentationDelegate2 = [(CAMImageWell *)self presentationDelegate];
    presentationDelegate = [presentationDelegate2 presentationStyleForAppearingThumbnailImage];
  }

  [(CAMImageWell *)self _setCurrentPresentationStyle:presentationDelegate];
  if ([(CAMImageWell *)self _currentPresentationStyle]== 1 && animatedCopy)
  {
    _thumbnailImageView = [(CAMImageWell *)self _thumbnailImageView];
    [_thumbnailImageView setImage:0];
  }
}

- (CAMImageWellPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end