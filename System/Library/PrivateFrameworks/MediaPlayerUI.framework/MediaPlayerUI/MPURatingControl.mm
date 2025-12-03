@interface MPURatingControl
+ (id)ratingDotImage;
+ (id)ratingStarImage;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPURatingControl)initWithFrame:(CGRect)frame;
- (MPURatingControlDelegate)delegate;
- (UIEdgeInsets)hitTestEdgeInsets;
- (double)ratingValueForLocationInView:(CGPoint)view;
- (void)_handlePanGesture:(id)gesture;
- (void)_handleTapGesture:(id)gesture;
- (void)_updateImageViewsForRatingAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setRating:(double)rating animated:(BOOL)animated;
- (void)viewDidMoveToSuperview;
@end

@implementation MPURatingControl

+ (id)ratingStarImage
{
  v2 = MEMORY[0x277D755B8];
  mediaPlayerUIBundle = [MEMORY[0x277CCA8D8] mediaPlayerUIBundle];
  v4 = [v2 imageNamed:@"rating-star" inBundle:mediaPlayerUIBundle];

  return v4;
}

+ (id)ratingDotImage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__MPURatingControl_ratingDotImage__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = [MPUTheme cachedObjectWithKey:@"MPURatingControl_ratingDot" block:v4];

  return v2;
}

id __34__MPURatingControl_ratingDotImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ratingStarImage];
  [v1 size];
  v3 = v2;
  v5 = v4;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__MPURatingControl_ratingDotImage__block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  *&v8[4] = v3;
  *&v8[5] = v5;
  v6 = [MEMORY[0x277D755B8] imageWithSize:0 opaque:v8 fromBlock:{v3, v5}];

  return v6;
}

void __34__MPURatingControl_ratingDotImage__block_invoke_2()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
  [v0 setFill];

  UIRectCenteredIntegralRectScale();
  v1 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0 cornerRadius:?];
  [v1 fill];
}

- (MPURatingControl)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = MPURatingControl;
  v3 = [(MPURatingControl *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handleTapGesture_];
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v4;

    v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v3 action:sel__handlePanGesture_];
    panGestureRecognizer = v3->_panGestureRecognizer;
    v3->_panGestureRecognizer = v6;

    [(MPURatingControl *)v3 addGestureRecognizer:v3->_tapGestureRecognizer];
    [(MPURatingControl *)v3 addGestureRecognizer:v3->_panGestureRecognizer];
    [(MPURatingControl *)v3 setClipsToBounds:1];
    [MEMORY[0x277CD5D68] easyTouchDefaultHitRectInsets];
    [(MPURatingControl *)v3 setHitTestEdgeInsets:?];
    v8 = 5;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    imageViews = v3->_imageViews;
    v3->_imageViews = v9;

    ratingStarImage = [objc_opt_class() ratingStarImage];
    [ratingStarImage size];
    v13 = v12;
    v15 = v14;

    do
    {
      v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, v13, v15}];
      [v16 setContentMode:4];
      [(NSMutableArray *)v3->_imageViews addObject:v16];
      [(MPURatingControl *)v3 addSubview:v16];

      --v8;
    }

    while (v8);
    [(MPURatingControl *)v3 _updateImageViewsForRatingAnimated:0];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MPURatingControl *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(MPURatingControl *)self hitTestEdgeInsets];
  v16 = v10 + v15;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v8 + v17;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (void)layoutSubviews
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = MPURatingControl;
  [(MPURatingControl *)&v16 layoutSubviews];
  [(MPURatingControl *)self bounds];
  Width = CGRectGetWidth(v19);
  [(MPURatingControl *)self bounds];
  Height = CGRectGetHeight(v20);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_imageViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = Height * 0.5;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setCenter:{Width / 6.0 * (-[NSMutableArray indexOfObject:](self->_imageViews, "indexOfObject:", v11, v12) + 1), v8}];
        [v11 bounds];
        [v11 center];
        UIRectCenteredAboutPointScale();
        [v11 setFrame:?];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (double)ratingValueForLocationInView:(CGPoint)view
{
  x = view.x;
  v23 = *MEMORY[0x277D85DE8];
  firstObject = [(NSMutableArray *)self->_imageViews firstObject];
  [firstObject frame];
  MinX = CGRectGetMinX(v24);

  result = 0.0;
  if (x >= MinX)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_imageViews;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = -1;
      v13 = 1.79769313e308;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          [v15 center];
          UIDistanceBetweenPoints();
          if (v16 < v13)
          {
            v17 = v16;
            v12 = [(NSMutableArray *)self->_imageViews indexOfObject:v15];
            v13 = v17;
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = -1;
    }

    return ((v12 & ~(v12 >> 63)) + 1) / [(NSMutableArray *)self->_imageViews count];
  }

  return result;
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    [gestureCopy locationInView:self];
    [(MPURatingControl *)self ratingValueForLocationInView:?];
    [(MPURatingControl *)self setRating:1 animated:?];
    delegate = [(MPURatingControl *)self delegate];
    [delegate ratingDidChangeForRatingControl:self];
  }
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 2)
  {
    [gestureCopy locationInView:self];
    [(MPURatingControl *)self ratingValueForLocationInView:?];
    [(MPURatingControl *)self setRating:1 animated:?];
  }

  if ([gestureCopy state] == 3)
  {
    delegate = [(MPURatingControl *)self delegate];
    [delegate ratingDidChangeForRatingControl:self];
  }
}

- (void)setRating:(double)rating animated:(BOOL)animated
{
  if (self->_rating != rating)
  {
    self->_rating = rating;
    [(MPURatingControl *)self _updateImageViewsForRatingAnimated:animated];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  ratingStarImage = [objc_opt_class() ratingStarImage];
  [ratingStarImage size];
  v5 = v4;
  v7 = v6;

  v8 = (v5 + 16.0) * 5.0;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)viewDidMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MPURatingControl;
  [(MPURatingControl *)&v3 viewDidMoveToSuperview];
  [(MPURatingControl *)self _updateImageViewsForRatingAnimated:0];
}

- (void)_updateImageViewsForRatingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = 0;
  v6 = llround(self->_rating * 5.0);
  do
  {
    v7 = [(NSMutableArray *)self->_imageViews objectAtIndex:v5];
    _animatesContents = [v7 _animatesContents];
    [v7 _setAnimatesContents:animatedCopy];
    v9 = objc_opt_class();
    if (v5 >= v6)
    {
      ratingDotImage = [v9 ratingDotImage];
      selfCopy2 = self;
      v12 = v7;
      v13 = ratingDotImage;
      v14 = 0;
    }

    else
    {
      ratingDotImage = [v9 ratingStarImage];
      selfCopy2 = self;
      v12 = v7;
      v13 = ratingDotImage;
      v14 = 1;
    }

    [(MPURatingControl *)selfCopy2 _updateImageView:v12 proposedImage:v13 filled:v14];

    [v7 _setAnimatesContents:_animatesContents];
    ++v5;
  }

  while (v5 != 5);
}

- (MPURatingControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end