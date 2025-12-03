@interface NURenderView
- (BOOL)hasTransitionAnimation;
- (CGRect)convertRectToImage:(CGRect)image;
- (NURenderView)initWithCoder:(id)coder;
- (NURenderView)initWithFrame:(CGRect)frame;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
- (void)renderFrameReachedTargetSize;
- (void)setGeometry:(id)geometry;
- (void)transitionToSize:(CGSize)size duration:(double)duration animationCurve:(id)curve completion:(id)completion;
- (void)transitionToSize:(CGSize)size offset:(CGPoint)offset duration:(double)duration animationCurve:(id)curve completion:(id)completion;
- (void)willMoveToWindow:(id)window;
@end

@implementation NURenderView

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v20 = *MEMORY[0x277D85DE8];
  geometryAnimationLayer = self->_geometryAnimationLayer;
  stopCopy = stop;
  v8 = [(CALayer *)geometryAnimationLayer animationForKey:@"NUTransitionAnimationKey"];
  v9 = [v8 isEqual:stopCopy];

  if (v9)
  {
    v10 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_650);
    }

    v11 = MEMORY[0x277D2D088];
    v12 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      shouldRemoveAnimation = self->_shouldRemoveAnimation;
      v17[0] = 67109376;
      v17[1] = finishedCopy;
      v18 = 1024;
      v19 = shouldRemoveAnimation;
      _os_log_debug_impl(&dword_25BD29000, v12, OS_LOG_TYPE_DEBUG, "[NURenderView animationDidStop:finished:] - finished: %d shouldRemoveAnimation: %d", v17, 0xEu);
    }

    self->_transitionAnimationInFlight = 0;
    if (self->_shouldRemoveAnimation && finishedCopy)
    {
      v14 = [(CALayer *)self->_geometryAnimationLayer animationForKey:@"NUTransitionAnimationKey"];

      if (v14)
      {
        if (*v10 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_650);
        }

        v15 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v17[0]) = 0;
          _os_log_debug_impl(&dword_25BD29000, v15, OS_LOG_TYPE_DEBUG, "[NURenderView animationDidStop:finished:] - removing transition", v17, 2u);
        }

        [(CALayer *)self->_geometryAnimationLayer removeAnimationForKey:@"NUTransitionAnimationKey"];
      }
    }
  }
}

- (void)animationDidStart:(id)start
{
  geometryAnimationLayer = self->_geometryAnimationLayer;
  startCopy = start;
  v6 = [(CALayer *)geometryAnimationLayer animationForKey:@"NUTransitionAnimationKey"];
  v7 = [v6 isEqual:startCopy];

  if (v7)
  {
    self->_transitionAnimationInFlight = 1;
    self->_shouldRemoveAnimation = 0;
  }
}

- (void)transitionToSize:(CGSize)size offset:(CGPoint)offset duration:(double)duration animationCurve:(id)curve completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  curveCopy = curve;
  completionCopy = completion;
  [(NURenderView *)self frame];
  NUPixelSizeFromCGSize();
  NUPixelSizeFromCGSize();
  v14 = *(MEMORY[0x277CD9DE8] + 80);
  *&v30.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v30.m33 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 112);
  *&v30.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v30.m43 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 16);
  *&v30.m11 = *MEMORY[0x277CD9DE8];
  *&v30.m13 = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 48);
  *&v30.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v30.m23 = v17;
  if ((NUPixelSizeIsEmpty() & 1) == 0 && (NUPixelSizeIsEmpty() & 1) == 0)
  {
    NUScaleToFitSizeInSize();
    NUScaleToDouble();
    v19 = v18;
    [(NURenderView *)self transform];
    v20 = 1.0;
    if (v29 != 0.0)
    {
      [(NURenderView *)self transform];
      v20 = v28;
    }

    CATransform3DMakeTranslation(&v30, x * (1.0 / v20), y * (1.0 / v20), 0.0);
    v26 = v30;
    CATransform3DScale(&v27, &v26, v19, v19, 1.0);
    v30 = v27;
  }

  if (duration <= 0.0)
  {
    [(CALayer *)self->_geometryAnimationLayer removeAllAnimations];
    v27 = v30;
    [(CALayer *)self->_geometryAnimationLayer setSublayerTransform:&v27];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"sublayerTransform"];
    [v21 setDuration:duration];
    [v21 setTimingFunction:curveCopy];
    v27 = v30;
    v22 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v27];
    [v21 setToValue:v22];

    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:*MEMORY[0x277CDA238]];
    [v21 setDelegate:self];
    [MEMORY[0x277CD9FF0] begin];
    v23 = MEMORY[0x277CD9FF0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__NURenderView_transitionToSize_offset_duration_animationCurve_completion___block_invoke;
    v24[3] = &unk_279974038;
    v25 = completionCopy;
    [v23 setCompletionBlock:v24];
    [(CALayer *)self->_geometryAnimationLayer addAnimation:v21 forKey:@"NUTransitionAnimationKey"];
    [MEMORY[0x277CD9FF0] commit];
  }
}

uint64_t __75__NURenderView_transitionToSize_offset_duration_animationCurve_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transitionToSize:(CGSize)size duration:(double)duration animationCurve:(id)curve completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  curveCopy = curve;
  [(NURenderView *)self frame];
  [(NURenderView *)self transitionToSize:curveCopy offset:completionCopy duration:width animationCurve:height completion:(v12 - width) * -0.5, (v13 - height) * -0.5, duration];
}

- (void)willMoveToWindow:(id)window
{
  screen = [window screen];
  v5 = screen;
  if (screen)
  {
    [screen scale];
    v7 = v6;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v7 = v9;
  }

  memset(&v12, 0, sizeof(v12));
  CATransform3DMakeScale(&v12, 1.0 / v7, 1.0 / v7, 1.0);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  containerLayer = self->_containerLayer;
  v11 = v12;
  [(_NUContainerLayer *)containerLayer setTransform:&v11];
  [MEMORY[0x277CD9FF0] commit];
}

- (CGRect)convertRectToImage:(CGRect)image
{
  height = image.size.height;
  width = image.size.width;
  y = image.origin.y;
  x = image.origin.x;
  layer = [(NURenderView *)self layer];
  [layer convertRect:self->_containerLayer toLayer:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)renderFrameReachedTargetSize
{
  v20 = *MEMORY[0x277D85DE8];
  [(NURenderView *)self frame];
  NUPixelSizeFromCGSize();
  geometryAnimationLayer = self->_geometryAnimationLayer;
  if (geometryAnimationLayer)
  {
    [(CALayer *)geometryAnimationLayer sublayerTransform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  v4 = CATransform3DIsIdentity(&v19);
  v5 = [(CALayer *)self->_geometryAnimationLayer animationForKey:@"NUTransitionAnimationKey"];

  v6 = MEMORY[0x277D2D078];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_650);
  }

  v7 = MEMORY[0x277D2D088];
  v8 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    transitionAnimationInFlight = self->_transitionAnimationInFlight;
    v10 = v8;
    v11 = NSStringFromNUPixelSize();
    LODWORD(v19.m11) = 67109890;
    HIDWORD(v19.m11) = transitionAnimationInFlight;
    LOWORD(v19.m12) = 1024;
    *(&v19.m12 + 2) = v5 != 0;
    HIWORD(v19.m12) = 1024;
    LODWORD(v19.m13) = !v4;
    WORD2(v19.m13) = 2112;
    *(&v19.m13 + 6) = v11;
    _os_log_debug_impl(&dword_25BD29000, v10, OS_LOG_TYPE_DEBUG, "[NURenderView renderFrameReachedTargetSize] - transitionInFlight: %d   has animation: %d   hasSublayerTransform: %d   currentSize: %@", &v19, 0x1Eu);

    if (v4)
    {
LABEL_8:
      if (!v5)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_650);
  }

  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19.m11) = 0;
    _os_log_debug_impl(&dword_25BD29000, v12, OS_LOG_TYPE_DEBUG, "[NURenderView renderFrameReachedTargetSize] - removing sublayer transform", &v19, 2u);
  }

  v13 = self->_geometryAnimationLayer;
  v14 = *(MEMORY[0x277CD9DE8] + 80);
  *&v19.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v19.m33 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 112);
  *&v19.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v19.m43 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 16);
  *&v19.m11 = *MEMORY[0x277CD9DE8];
  *&v19.m13 = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 48);
  *&v19.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v19.m23 = v17;
  [(CALayer *)v13 setSublayerTransform:&v19];
  if (v5)
  {
LABEL_16:
    if (self->_transitionAnimationInFlight)
    {
      self->_shouldRemoveAnimation = 1;
    }

    else
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_650);
      }

      v18 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19.m11) = 0;
        _os_log_debug_impl(&dword_25BD29000, v18, OS_LOG_TYPE_DEBUG, "[NURenderView renderFrameReachedTargetSize] - removing transition", &v19, 2u);
      }

      [(CALayer *)self->_geometryAnimationLayer removeAnimationForKey:@"NUTransitionAnimationKey"];
    }
  }
}

- (BOOL)hasTransitionAnimation
{
  v2 = [(CALayer *)self->_geometryAnimationLayer animationForKey:@"NUTransitionAnimationKey"];
  v3 = v2 != 0;

  return v3;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  geometry = [(NURenderView *)self geometry];
  [geometryCopy size];
  [geometry size];
  if ((NUPixelSizeEqualToSize() & 1) == 0)
  {
    [geometryCopy size];
    NUPixelSizeToCGSize();
    v7 = v6;
    v9 = v8;
    window = [(NURenderView *)self window];
    screen = [window screen];

    v12 = 1.0;
    if (screen)
    {
      [screen scale];
    }

    v13 = 1.0 / v12;
    v14 = v7 * v13;
    v15 = v9 * v13;
    [(NURenderView *)self setBounds:0.0, 0.0, v14, v15];
    memset(&v17[1], 0, sizeof(CGAffineTransform));
    [(NURenderView *)self transform];
    v17[0] = v17[1];
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v14;
    v18.size.height = v15;
    v19 = CGRectApplyAffineTransform(v18, v17);
    [(NURenderView *)self setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
  }

  geometry = self->_geometry;
  self->_geometry = geometryCopy;
}

- (void)layoutSubviews
{
  window = [(NURenderView *)self window];

  if (window)
  {
    [(NURenderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(_NUContainerLayer *)self->_containerLayer setFrame:v5, v7, v9, v11];
    v12 = MEMORY[0x277CD9FF0];

    [v12 commit];
  }
}

- (NURenderView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NURenderView;
  v3 = [(NURenderView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _NUViewCommonInit(v3);
  }

  return v4;
}

- (NURenderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NURenderView;
  v3 = [(NURenderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _NUViewCommonInit(v3);
  }

  return v4;
}

@end