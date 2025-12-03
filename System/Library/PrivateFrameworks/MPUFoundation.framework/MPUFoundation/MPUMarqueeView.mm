@interface MPUMarqueeView
- (CAGradientLayer)gradientLayer;
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (MPUMarqueeView)initWithFrame:(CGRect)frame;
- (MPUMarqueeViewDelegate)delegate;
- (NSArray)coordinatedMarqueeViews;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (double)_duration;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_applyMarqueeFade;
- (void)_createMarqueeAnimationIfNeeded;
- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)duration beginTime:(double)time;
- (void)_tearDownMarqueeAnimation;
- (void)addCoordinatedMarqueeView:(id)view;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)resetMarqueePosition;
- (void)sceneDidEnterBackgroundNotification:(id)notification;
- (void)sceneWillEnterForegroundNotification:(id)notification;
- (void)setAnimationDirection:(int64_t)direction;
- (void)setAnimationReferenceView:(id)view;
- (void)setBounds:(CGRect)bounds;
- (void)setContentGap:(double)gap;
- (void)setContentSize:(CGSize)size;
- (void)setFrame:(CGRect)frame;
- (void)setMarqueeDelay:(double)delay;
- (void)setMarqueeEnabled:(BOOL)enabled withOptions:(int64_t)options;
- (void)setMarqueeScrollRate:(double)rate;
- (void)setViewForContentSize:(id)size;
@end

@implementation MPUMarqueeView

- (void)_tearDownMarqueeAnimation
{
  layer = [(UIView *)self->_contentView layer];
  [layer removeAnimationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
}

- (void)_createMarqueeAnimationIfNeeded
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v23 _createMarqueeAnimationIfNeeded];
  }

  else
  {
    superview = [(MPUMarqueeView *)self superview];

    if (superview && self->_marqueeEnabled)
    {
      [(MPUMarqueeView *)self _duration];
      v6 = v5;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = self->_coordinatedMarqueeViews;
      v8 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v28 + 1) + 8 * i) _duration];
            if (v6 < v12)
            {
              v6 = v12;
            }
          }

          v9 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }

      layer = [(UIView *)self->_contentView layer];
      v14 = [layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
      v15 = v14;
      if (v14)
      {
        [v14 beginTime];
      }

      else
      {
        v16 = CACurrentMediaTime();
      }

      v17 = v16;
      [(MPUMarqueeView *)self _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v16];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = self->_coordinatedMarqueeViews;
      v19 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * j) _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v17];
          }

          v20 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = MPUMarqueeView;
  [(MPUMarqueeView *)&v4 invalidateIntrinsicContentSize];
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize intrinsicContentSize];
    [(MPUMarqueeView *)self setContentSize:?];
  }
}

- (CGSize)intrinsicContentSize
{
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize intrinsicContentSize];
  }

  else
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  v6 = width + self->_fadeEdgeInsets.left + self->_fadeEdgeInsets.right;
  result.height = height;
  result.width = v6;
  return result;
}

- (id)viewForLastBaselineLayout
{
  subviews = [(UIView *)self->_contentView subviews];
  lastObject = [subviews lastObject];
  viewForLastBaselineLayout = [lastObject viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = MPUMarqueeView;
  [(MPUMarqueeView *)&v20 layoutSubviews];
  if ([(MPUMarqueeView *)self animationDirection])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(UIView *)self->_contentView setSemanticContentAttribute:v3];
  [(MPUMarqueeView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layer = [(UIView *)self->_contentView layer];
  animationDirection = self->_animationDirection;
  v14 = self->_contentSize.width + self->_contentGap;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  Width = CGRectGetWidth(v21);
  if (v14 >= Width)
  {
    Width = v14;
  }

  if (animationDirection == 1)
  {
    Width = -Width;
  }

  CATransform3DMakeTranslation(&v19, Width, 0.0, 0.0);
  [layer setInstanceTransform:&v19];
  [layer setInstanceCount:2];
  contentView = self->_contentView;
  UIRectCenteredYInRectScale();
  [(UIView *)contentView setFrame:0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fadeEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_fadeEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
  {
    gradientLayer = [(MPUMarqueeView *)self gradientLayer];

    if (gradientLayer)
    {
      gradientLayer2 = [(MPUMarqueeView *)self gradientLayer];
      [gradientLayer2 removeFromSuperlayer];
    }
  }

  else
  {
    [(MPUMarqueeView *)self _applyMarqueeFade];
  }
}

- (void)_applyMarqueeFade
{
  v23[4] = *MEMORY[0x277D85DE8];
  if ([(MPUMarqueeView *)self _contentFits])
  {
    gradientLayer = [(MPUMarqueeView *)self gradientLayer];
    [gradientLayer removeFromSuperlayer];
  }

  else
  {
    disableActions = [MEMORY[0x277CD9FF0] disableActions];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    layer = [(MPUMarqueeView *)self layer];
    gradientLayer2 = [(MPUMarqueeView *)self gradientLayer];
    if (!gradientLayer2)
    {
      gradientLayer2 = [MEMORY[0x277CD9EB0] layer];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      cGColor = [whiteColor CGColor];

      clearColor = [MEMORY[0x277D75348] clearColor];
      cGColor2 = [clearColor CGColor];

      v23[0] = cGColor;
      v23[1] = cGColor2;
      v23[2] = cGColor2;
      v23[3] = cGColor;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
      [gradientLayer2 setColors:v10];

      [gradientLayer2 setCompositingFilter:*MEMORY[0x277CDA310]];
      [layer addSublayer:gradientLayer2];
    }

    [(MPUMarqueeView *)self bounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v15 = CGRectGetWidth(v25);
    v22[0] = &unk_2868EA2D0;
    p_fadeEdgeInsets = &self->_fadeEdgeInsets;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeEdgeInsets.left / v15];
    v22[1] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:(v15 - p_fadeEdgeInsets->right) / v15];
    v22[2] = v18;
    v22[3] = &unk_2868EA2E0;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [gradientLayer2 setLocations:v19];

    [gradientLayer2 setBounds:{x, y, width, height}];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidX = CGRectGetMidX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    [gradientLayer2 setPosition:{MidX, CGRectGetMidY(v27)}];
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    [gradientLayer2 setStartPoint:{0.0, CGRectGetMidY(v28)}];
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    [gradientLayer2 setEndPoint:{1.0, CGRectGetMidY(v29)}];
    [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
  }
}

- (CAGradientLayer)gradientLayer
{
  layer = [(MPUMarqueeView *)self layer];
  sublayers = [layer sublayers];
  lastObject = [sublayers lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = lastObject;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MPUMarqueeView;
  [(MPUMarqueeView *)&v4 didMoveToWindow];
  window = [(MPUMarqueeView *)self window];

  if (window)
  {
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }

  else
  {
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
  }
}

- (double)_duration
{
  marqueeDelay = 0.0;
  if ((self->_options & 2) == 0)
  {
    marqueeDelay = self->_marqueeDelay;
  }

  return marqueeDelay + 1.0 / self->_marqueeScrollRate * (self->_contentSize.width + self->_contentGap);
}

- (MPUMarqueeView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = MPUMarqueeView;
  v3 = [(MPUMarqueeView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_marqueeDelay = 3.0;
    v3->_marqueeScrollRate = 30.0;
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_fadeEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v3->_fadeEdgeInsets.bottom = v5;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    coordinatedMarqueeViews = v4->_coordinatedMarqueeViews;
    v4->_coordinatedMarqueeViews = weakObjectsPointerArray;

    [(MPUMarqueeView *)v4 setClipsToBounds:1];
    v8 = [_MPUMarqueeContentView alloc];
    [(MPUMarqueeView *)v4 bounds];
    v9 = [(_MPUMarqueeContentView *)v8 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = v9;

    [(MPUMarqueeView *)v4 addSubview:v4->_contentView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_sceneDidEnterBackgroundNotification_ name:*MEMORY[0x277D76E58] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_sceneWillEnterForegroundNotification_ name:*MEMORY[0x277D76E80] object:0];
  }

  return v4;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MPUMarqueeView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MPUMarqueeView;
  [(MPUMarqueeView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    [(MPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MPUMarqueeView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MPUMarqueeView;
  [(MPUMarqueeView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (id)viewForFirstBaselineLayout
{
  subviews = [(UIView *)self->_contentView subviews];
  firstObject = [subviews firstObject];
  viewForFirstBaselineLayout = [firstObject viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v6 = [stop valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  v7 = [v6 isEqual:self->_currentAnimationID];

  if (v7)
  {
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 marqueeViewDidEndMarqueeIteration:self finished:finishedCopy];
    }

    if (finishedCopy)
    {
      options = self->_options;
      if ((options & 2) != 0)
      {
        self->_options = options & 0xFFFFFFFFFFFFFFFDLL;
      }

      [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    }
  }
}

- (void)setContentGap:(double)gap
{
  if (self->_contentGap != gap)
  {
    self->_contentGap = gap;
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setMarqueeDelay:(double)delay
{
  if (self->_marqueeDelay != delay)
  {
    self->_marqueeDelay = delay;
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setAnimationReferenceView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_animationReferenceView, obj);
    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    v5 = obj;
  }
}

- (void)setMarqueeEnabled:(BOOL)enabled withOptions:(int64_t)options
{
  optionsCopy = options;
  if (self->_options != options)
  {
    self->_options = options;
    p_marqueeEnabled = &self->_marqueeEnabled;
    if (self->_marqueeEnabled == enabled)
    {
LABEL_13:
      [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded:v15];
      return;
    }

LABEL_5:
    *p_marqueeEnabled = enabled;
    layer = [(UIView *)self->_contentView layer];
    v8 = layer;
    if ((optionsCopy & 1) == 0 || ([layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && ((v10 = v9, objc_msgSend(v8, "presentationLayer"), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (v16 = 0u, v17 = 0u, v15 = 0u, v13 = 0.0) : (objc_msgSend(v11, "affineTransform"), v13 = *&v17), v14 = fabs(v13), v12, v10, v14 < 2.22044605e-16))
    {
      [(MPUMarqueeView *)self _tearDownMarqueeAnimation:v15];
    }

    goto LABEL_13;
  }

  p_marqueeEnabled = &self->_marqueeEnabled;
  if (self->_marqueeEnabled != enabled)
  {
    goto LABEL_5;
  }
}

- (void)setMarqueeScrollRate:(double)rate
{
  if (self->_marqueeScrollRate != rate)
  {
    self->_marqueeScrollRate = rate;
    [(MPUMarqueeView *)self _tearDownMarqueeAnimation];

    [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setViewForContentSize:(id)size
{
  sizeCopy = size;
  if (self->_viewForContentSize != sizeCopy)
  {
    v6 = sizeCopy;
    objc_storeStrong(&self->_viewForContentSize, size);
    [(MPUMarqueeView *)self invalidateIntrinsicContentSize];
    sizeCopy = v6;
  }
}

- (void)setAnimationDirection:(int64_t)direction
{
  if (self->_animationDirection != direction)
  {
    self->_animationDirection = direction;
    [(MPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)addCoordinatedMarqueeView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v5 addCoordinatedMarqueeView:viewCopy];

    v6 = v5;
  }

  else
  {
    objc_storeWeak(viewCopy + 54, self);
    [(NSPointerArray *)self->_coordinatedMarqueeViews addPointer:viewCopy];
    v6 = viewCopy;
  }
}

- (NSArray)coordinatedMarqueeViews
{
  [(NSPointerArray *)self->_coordinatedMarqueeViews compact];
  coordinatedMarqueeViews = self->_coordinatedMarqueeViews;

  return [(NSPointerArray *)coordinatedMarqueeViews allObjects];
}

- (void)resetMarqueePosition
{
  [(MPUMarqueeView *)self _tearDownMarqueeAnimation];

  [(MPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
}

- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)duration beginTime:(double)time
{
  v26[4] = *MEMORY[0x277D85DE8];
  layer = [(UIView *)self->_contentView layer];
  v8 = [layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
  if (!v8 && ![(MPUMarqueeView *)self _contentFits])
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
    currentAnimationID = self->_currentAnimationID;
    self->_currentAnimationID = v9;

    WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);
    [WeakRetained bounds];
    v12 = CGRectGetWidth(v27) - self->_fadeEdgeInsets.left - self->_fadeEdgeInsets.right - self->_contentSize.width;

    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.translation.x"];
    v14 = -self->_contentSize.width - self->_contentGap - v12;
    animationDirection = [(MPUMarqueeView *)self animationDirection];
    v16 = -v14;
    if (animationDirection != 1)
    {
      v16 = v14;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [(MPUMarqueeView *)self _duration];
    v19 = v18;
    v26[0] = &unk_2868EA2D0;
    v26[1] = &unk_2868EA2D0;
    v26[2] = v17;
    v26[3] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v13 setValues:v20];

    v25[0] = &unk_2868EA2D0;
    duration = [MEMORY[0x277CCABB0] numberWithDouble:self->_marqueeDelay / duration];
    v25[1] = duration;
    duration2 = [MEMORY[0x277CCABB0] numberWithDouble:v19 / duration];
    v25[2] = duration2;
    v25[3] = &unk_2868EA2E0;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v13 setKeyTimes:v23];

    [v13 setDuration:duration];
    [v13 setBeginTime:time];
    v24 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v13 setTimingFunction:v24];

    [v13 setDelegate:self];
    [v13 setValue:self->_currentAnimationID forKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
    [v13 setFrameInterval:0.016];
    [layer addAnimation:v13 forKey:@"_MPUMarqueeViewLayerAnimationKey"];
  }
}

- (void)sceneDidEnterBackgroundNotification:(id)notification
{
  object = [notification object];
  window = [(MPUMarqueeView *)self window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {

    [(MPUMarqueeView *)self setMarqueeEnabled:0];
  }
}

- (void)sceneWillEnterForegroundNotification:(id)notification
{
  object = [notification object];
  window = [(MPUMarqueeView *)self window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {

    [(MPUMarqueeView *)self setMarqueeEnabled:1];
  }
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIView)animationReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  return WeakRetained;
}

- (UIEdgeInsets)fadeEdgeInsets
{
  top = self->_fadeEdgeInsets.top;
  left = self->_fadeEdgeInsets.left;
  bottom = self->_fadeEdgeInsets.bottom;
  right = self->_fadeEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MPUMarqueeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end